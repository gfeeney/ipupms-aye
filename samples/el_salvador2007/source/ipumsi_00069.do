* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                       ///
  int     cntry            1-3      ///
  int     year             4-7      ///
  int     sample           8-11     ///
  double  serial           12-21    ///
  byte    sv07a_hhnum      22-22    ///
  byte    sv07a_hhn        23-24    ///
  byte    sv07a_pernd      25-26    ///
  byte    sv07a_pern       27-28    ///
  byte    sv07a_fbig       29-29    ///
  byte    sv07a_dept       30-31    ///
  int     sv07a_munic      32-35    ///
  byte    sv07a_urban      36-36    ///
  byte    sv07a_dwtype     37-38    ///
  byte    sv07a_walls      39-39    ///
  byte    sv07a_roof       40-40    ///
  byte    sv07a_occup      41-41    ///
  byte    sv07a_floor      42-42    ///
  byte    sv07a_foodexp    43-43    ///
  byte    sv07a_rooms      44-45    ///
  byte    sv07a_bedrooms   46-46    ///
  byte    sv07a_rmcook     47-47    ///
  byte    sv07a_ownrshp    48-48    ///
  byte    sv07a_sewer      49-49    ///
  byte    sv07a_toilet     50-50    ///
  byte    sv07a_wastewtr   51-51    ///
  byte    sv07a_watersrc   52-53    ///
  byte    sv07a_watdays    54-54    ///
  byte    sv07a_fuelck     55-56    ///
  byte    sv07a_light      57-57    ///
  byte    sv07a_waste      58-58    ///
  byte    sv07a_tv         59-59    ///
  byte    sv07a_phone      60-60    ///
  byte    sv07a_cellph     61-61    ///
  byte    sv07a_refrig     62-62    ///
  byte    sv07a_washer     63-63    ///
  byte    sv07a_vcr        64-64    ///
  byte    sv07a_soundsys   65-65    ///
  byte    sv07a_microw     66-66    ///
  byte    sv07a_computr    67-67    ///
  byte    sv07a_auto       68-68    ///
  byte    sv07a_motocyc    69-69    ///
  byte    sv07a_cable      70-70    ///
  byte    sv07a_internet   71-71    ///
  byte    sv07a_mkgoods    72-72    ///
  byte    sv07a_sellgds    73-73    ///
  byte    sv07a_services   74-74    ///
  byte    sv07a_pafarm     75-75    ///
  byte    sv07a_paanim     76-76    ///
  byte    sv07a_tenagr     77-77    ///
  byte    sv07a_deathtot   78-78    ///
  byte    sv07a_emighh     79-79    ///
  byte    sv07a_emigtot    80-80    ///
  byte    sv07a_nummort    81-81    ///
  byte    sv07a_nummig     82-82    ///
  int     pernum           83-85    ///
  float   wtper            86-93    ///
  byte    sv07a_pernum     94-95    ///
  byte    sv07a_relate     96-97    ///
  byte    sv07a_sex        98-98    ///
  byte    sv07a_age        99-100   ///
  byte    sv07a_idcard     101-101  ///
  byte    sv07a_birthmo    102-103  ///
  int     sv07a_birthyr    104-107  ///
  byte    sv07a_disuppr    108-108  ///
  byte    sv07a_disvis     109-109  ///
  byte    sv07a_dishear    110-110  ///
  byte    sv07a_dismute    111-111  ///
  byte    sv07a_dismntl    112-112  ///
  byte    sv07a_dislimit   113-113  ///
  byte    sv07a_disothr    114-114  ///
  byte    sv07a_race       115-115  ///
  byte    sv07a_ethnic     116-116  ///
  byte    sv07a_nativity   117-117  ///
  int     sv07a_immigyr    118-121  ///
  byte    sv07a_livehere   122-122  ///
  int     sv07a_arrivyr    123-126  ///
  byte    sv07a_lit        127-127  ///
  byte    sv07a_attschl    128-128  ///
  byte    sv07a_educ       129-130  ///
  byte    sv07a_educatt    131-132  ///
  byte    sv07a_lstgrade   133-134  ///
  byte    sv07a_edcomp     135-135  ///
  int     sv07a_major      136-139  ///
  byte    sv07a_othlang    140-140  ///
  byte    sv07a_lang       141-142  ///
  byte    sv07a_voc        143-143  ///
  byte    sv07a_marst      144-144  ///
  byte    sv07a_email      145-145  ///
  byte    sv07a_remit      146-146  ///
  byte    sv07a_remitsex   147-147  ///
  byte    sv07a_prevwk     148-148  ///
  byte    sv07a_workjust   149-149  ///
  byte    sv07a_othrwork   150-150  ///
  byte    sv07a_lookwrk    151-151  ///
  byte    sv07a_seekfrst   152-152  ///
  byte    sv07a_whynot     153-153  ///
  int     sv07a_ind3dig    154-156  ///
  int     sv07a_occ3dig    157-159  ///
  byte    sv07a_classwk    160-160  ///
  byte    sv07a_hrswork    161-162  ///
  byte    sv07a_workloc    163-163  ///
  byte    sv07a_livebth    164-164  ///
  byte    sv07a_chbornm    165-166  ///
  byte    sv07a_chbornf    167-168  ///
  byte    sv07a_chlvhome   169-170  ///
  byte    sv07a_chdead     171-172  ///
  byte    sv07a_lstbmo     173-174  ///
  int     sv07a_lstbyr     175-178  ///
  byte    sv07a_lstchliv   179-179  ///
  byte    sv07a_empstat    180-180  ///
  byte    sv07a_bthdept    181-182  ///
  byte    sv07a_bthplace   183-183  ///
  int     sv07a_bthmun     184-187  ///
  int     sv07a_bthctry    188-190  ///
  byte    sv07a_prevdept   191-192  ///
  byte    sv07a_resplace   193-193  ///
  int     sv07a_prevctry   194-196  ///
  byte    sv07a_workdept   197-198  ///
  byte    sv07a_workplace  199-199  ///
  using `"ipumsi_00069.dat"'

replace wtper           = wtper           / 100

format serial          %10.0f
format wtper           %8.2f

label var cntry           `"Country"'
label var year            `"Year"'
label var sample          `"IPUMS sample identifier"'
label var serial          `"Household serial number"'
label var sv07a_hhnum     `"Household number (within dwelling)"'
label var sv07a_hhn       `"Number of households in dwelling"'
label var sv07a_pernd     `"Number of persons in dwelling"'
label var sv07a_pern      `"Number of persons in household"'
label var sv07a_fbig      `"Dwelling created by splitting apart a large dwelling or household"'
label var sv07a_dept      `"Department"'
label var sv07a_munic     `"Municipality"'
label var sv07a_urban     `"Urban/rural status"'
label var sv07a_dwtype    `"Type of dwelling"'
label var sv07a_walls     `"Wall material"'
label var sv07a_roof      `"Roof material"'
label var sv07a_occup     `"Occupancy status"'
label var sv07a_floor     `"Floor material"'
label var sv07a_foodexp   `"Shared food expenses"'
label var sv07a_rooms     `"Total number of rooms"'
label var sv07a_bedrooms  `"Total number of bedrooms"'
label var sv07a_rmcook    `"Rooms used exclusively for cooking"'
label var sv07a_ownrshp   `"Tenancy of the household"'
label var sv07a_sewer     `"Type of toilet service"'
label var sv07a_toilet    `"Use of toilet service"'
label var sv07a_wastewtr  `"Disposal of wastewater"'
label var sv07a_watersrc  `"Source of water"'
label var sv07a_watdays   `"Frequency of receiving water"'
label var sv07a_fuelck    `"Main fuel for cooking"'
label var sv07a_light     `"Type of lighting"'
label var sv07a_waste     `"Trash disposal"'
label var sv07a_tv        `"Television"'
label var sv07a_phone     `"Telephone (landline)"'
label var sv07a_cellph    `"Cell phone"'
label var sv07a_refrig    `"Refrigerator"'
label var sv07a_washer    `"Washing machine"'
label var sv07a_vcr       `"VCR"'
label var sv07a_soundsys  `"Sound system"'
label var sv07a_microw    `"Microwave oven"'
label var sv07a_computr   `"Computer"'
label var sv07a_auto      `"Automobile"'
label var sv07a_motocyc   `"Motorcycle"'
label var sv07a_cable     `"Cable service"'
label var sv07a_internet  `"Internet service"'
label var sv07a_mkgoods   `"Make tortillas, clothing, furniture, etc."'
label var sv07a_sellgds   `"Sell products or items"'
label var sv07a_services  `"Offer services"'
label var sv07a_pafarm    `"Principal activity: farming"'
label var sv07a_paanim    `"Principal activity: raising animals"'
label var sv07a_tenagr    `"Tenancy of land used for farming or raising animals"'
label var sv07a_deathtot  `"Number of deaths in the last 12 months"'
label var sv07a_emighh    `"Any residents emigrated from the household"'
label var sv07a_emigtot   `"Number of residents emigrated"'
label var sv07a_nummort   `"Total number of mortality records"'
label var sv07a_nummig    `"Total number of migration records"'
label var pernum          `"Person number"'
label var wtper           `"Person weight"'
label var sv07a_pernum    `"Person number (within household)"'
label var sv07a_relate    `"Relationship to head of household"'
label var sv07a_sex       `"Sex"'
label var sv07a_age       `"Age (in years completed)"'
label var sv07a_idcard    `"Identity card"'
label var sv07a_birthmo   `"Month of birth"'
label var sv07a_birthyr   `"Year of birth"'
label var sv07a_disuppr   `"Limited movement of hands or arms"'
label var sv07a_disvis    `"Limited vision (even when using glasses)"'
label var sv07a_dishear   `"Limited hearing (even when using hearing aids)"'
label var sv07a_dismute   `"Limited speech"'
label var sv07a_dismntl   `"Mental disability"'
label var sv07a_dislimit  `"Limitations in self-care"'
label var sv07a_disothr   `"Other permanent limitation"'
label var sv07a_race      `"Race"'
label var sv07a_ethnic    `"Ethnic group"'
label var sv07a_nativity  `"Place of birth"'
label var sv07a_immigyr   `"Year of arrival in El Salvador"'
label var sv07a_livehere  `"Whether always lived in the current municipality"'
label var sv07a_arrivyr   `"Year of arrival to current municipality"'
label var sv07a_lit       `"Can read and write"'
label var sv07a_attschl   `"School attendance"'
label var sv07a_educ      `"Grade attending/attended"'
label var sv07a_educatt   `"Highest level of education passed"'
label var sv07a_lstgrade  `"Last grade or year passed in this level"'
label var sv07a_edcomp    `"Study completed"'
label var sv07a_major     `"Major/course of study"'
label var sv07a_othlang   `"Speaks another language (besides Spanish)"'
label var sv07a_lang      `"Language spoken"'
label var sv07a_voc       `"Attending/attended vocational educational center"'
label var sv07a_marst     `"Marital status"'
label var sv07a_email     `"Has an email account"'
label var sv07a_remit     `"Support from abroad (cash or in-kind)"'
label var sv07a_remitsex  `"Sex of the sender(s) of remittances"'
label var sv07a_prevwk    `"Worked the previous week"'
label var sv07a_workjust  `"Did not work for a justified reason (e.g. illness, strike, vacations, bad weathe"'
label var sv07a_othrwork  `"Other type of work"'
label var sv07a_lookwrk   `"Look for work and ever worked before"'
label var sv07a_seekfrst  `"Looked for work for the first time"'
label var sv07a_whynot    `"Reason did not work the previous week"'
label var sv07a_ind3dig   `"Industry (3-digit)"'
label var sv07a_occ3dig   `"Occupation (3-digit)"'
label var sv07a_classwk   `"Work situation in the previous week"'
label var sv07a_hrswork   `"Total hours worked in the previous week"'
label var sv07a_workloc   `"Location of the workplace"'
label var sv07a_livebth   `"Ever gave birth"'
label var sv07a_chbornm   `"Number of male children ever born"'
label var sv07a_chbornf   `"Number of female children ever born"'
label var sv07a_chlvhome  `"Number of children in the household"'
label var sv07a_chdead    `"Number of children that have died"'
label var sv07a_lstbmo    `"Month of birth of last born child"'
label var sv07a_lstbyr    `"Year of birth of last born child"'
label var sv07a_lstchliv  `"Last born child alive"'
label var sv07a_empstat   `"Status in economic activity"'
label var sv07a_bthdept   `"Department of birth"'
label var sv07a_bthplace  `"Place of birth"'
label var sv07a_bthmun    `"Municipality of birth"'
label var sv07a_bthctry   `"Country of birth"'
label var sv07a_prevdept  `"Department of previous residence"'
label var sv07a_resplace  `"Place of previous residence"'
label var sv07a_prevctry  `"Country of previous residence"'
label var sv07a_workdept  `"Department of work in previous week"'
label var sv07a_workplace `"Place of work in previous week"'

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

label define sv07a_hhnum_lbl 1 `"1"'
label define sv07a_hhnum_lbl 2 `"2"', add
label define sv07a_hhnum_lbl 3 `"3"', add
label define sv07a_hhnum_lbl 4 `"4"', add
label define sv07a_hhnum_lbl 5 `"5"', add
label define sv07a_hhnum_lbl 6 `"6"', add
label define sv07a_hhnum_lbl 7 `"7"', add
label values sv07a_hhnum sv07a_hhnum_lbl

label define sv07a_hhn_lbl 01 `"1"'
label define sv07a_hhn_lbl 02 `"2"', add
label define sv07a_hhn_lbl 03 `"3"', add
label define sv07a_hhn_lbl 04 `"4"', add
label define sv07a_hhn_lbl 05 `"5"', add
label define sv07a_hhn_lbl 06 `"6"', add
label define sv07a_hhn_lbl 07 `"7"', add
label define sv07a_hhn_lbl 08 `"8"', add
label define sv07a_hhn_lbl 10 `"10"', add
label values sv07a_hhn sv07a_hhn_lbl

label define sv07a_pernd_lbl 00 `"0"'
label define sv07a_pernd_lbl 01 `"1"', add
label define sv07a_pernd_lbl 02 `"2"', add
label define sv07a_pernd_lbl 03 `"3"', add
label define sv07a_pernd_lbl 04 `"4"', add
label define sv07a_pernd_lbl 05 `"5"', add
label define sv07a_pernd_lbl 06 `"6"', add
label define sv07a_pernd_lbl 07 `"7"', add
label define sv07a_pernd_lbl 08 `"8"', add
label define sv07a_pernd_lbl 09 `"9"', add
label define sv07a_pernd_lbl 10 `"10"', add
label define sv07a_pernd_lbl 11 `"11"', add
label define sv07a_pernd_lbl 12 `"12"', add
label define sv07a_pernd_lbl 13 `"13"', add
label define sv07a_pernd_lbl 14 `"14"', add
label define sv07a_pernd_lbl 15 `"15"', add
label define sv07a_pernd_lbl 16 `"16"', add
label define sv07a_pernd_lbl 17 `"17"', add
label define sv07a_pernd_lbl 18 `"18"', add
label define sv07a_pernd_lbl 19 `"19"', add
label define sv07a_pernd_lbl 20 `"20"', add
label define sv07a_pernd_lbl 21 `"21"', add
label define sv07a_pernd_lbl 22 `"22"', add
label define sv07a_pernd_lbl 23 `"23"', add
label define sv07a_pernd_lbl 24 `"24"', add
label define sv07a_pernd_lbl 25 `"25"', add
label define sv07a_pernd_lbl 26 `"26"', add
label define sv07a_pernd_lbl 27 `"27"', add
label define sv07a_pernd_lbl 28 `"28"', add
label define sv07a_pernd_lbl 29 `"29"', add
label define sv07a_pernd_lbl 30 `"30"', add
label values sv07a_pernd sv07a_pernd_lbl

label define sv07a_pern_lbl 00 `"0"'
label define sv07a_pern_lbl 01 `"1"', add
label define sv07a_pern_lbl 02 `"2"', add
label define sv07a_pern_lbl 03 `"3"', add
label define sv07a_pern_lbl 04 `"4"', add
label define sv07a_pern_lbl 05 `"5"', add
label define sv07a_pern_lbl 06 `"6"', add
label define sv07a_pern_lbl 07 `"7"', add
label define sv07a_pern_lbl 08 `"8"', add
label define sv07a_pern_lbl 09 `"9"', add
label define sv07a_pern_lbl 10 `"10"', add
label define sv07a_pern_lbl 11 `"11"', add
label define sv07a_pern_lbl 12 `"12"', add
label define sv07a_pern_lbl 13 `"13"', add
label define sv07a_pern_lbl 14 `"14"', add
label define sv07a_pern_lbl 15 `"15"', add
label define sv07a_pern_lbl 16 `"16"', add
label define sv07a_pern_lbl 17 `"17"', add
label define sv07a_pern_lbl 18 `"18"', add
label define sv07a_pern_lbl 19 `"19"', add
label define sv07a_pern_lbl 20 `"20"', add
label define sv07a_pern_lbl 21 `"21"', add
label define sv07a_pern_lbl 22 `"22"', add
label define sv07a_pern_lbl 23 `"23"', add
label define sv07a_pern_lbl 24 `"24"', add
label define sv07a_pern_lbl 25 `"25"', add
label define sv07a_pern_lbl 26 `"26"', add
label define sv07a_pern_lbl 27 `"27"', add
label define sv07a_pern_lbl 28 `"28"', add
label define sv07a_pern_lbl 29 `"29"', add
label define sv07a_pern_lbl 30 `"30"', add
label values sv07a_pern sv07a_pern_lbl

label define sv07a_fbig_lbl 0 `"No problem"'
label define sv07a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define sv07a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values sv07a_fbig sv07a_fbig_lbl

label define sv07a_dept_lbl 01 `"Ahuachapán"'
label define sv07a_dept_lbl 02 `"Santa Ana"', add
label define sv07a_dept_lbl 03 `"Sonsonate"', add
label define sv07a_dept_lbl 04 `"Chalatenango"', add
label define sv07a_dept_lbl 05 `"La Libertad"', add
label define sv07a_dept_lbl 06 `"San Salvador"', add
label define sv07a_dept_lbl 07 `"Cuscatlán"', add
label define sv07a_dept_lbl 08 `"La Paz"', add
label define sv07a_dept_lbl 09 `"Cabañas"', add
label define sv07a_dept_lbl 10 `"San Vicente"', add
label define sv07a_dept_lbl 11 `"Usulután"', add
label define sv07a_dept_lbl 12 `"San Miguel"', add
label define sv07a_dept_lbl 13 `"Morazán"', add
label define sv07a_dept_lbl 14 `"La Unión"', add
label values sv07a_dept sv07a_dept_lbl

label define sv07a_munic_lbl 0101 `"Ahuachapan"'
label define sv07a_munic_lbl 0103 `"Atiquizaya"', add
label define sv07a_munic_lbl 0107 `"Jujutla"', add
label define sv07a_munic_lbl 0108 `"San Francisco Menendez"', add
label define sv07a_munic_lbl 0111 `"Tacuba"', add
label define sv07a_munic_lbl 0199 `"Rest of Ahuachapán Department"', add
label define sv07a_munic_lbl 0201 `"Candelaria de la Frontera"', add
label define sv07a_munic_lbl 0202 `"Coatepeque"', add
label define sv07a_munic_lbl 0203 `"Chalchuapa"', add
label define sv07a_munic_lbl 0204 `"El Congo"', add
label define sv07a_munic_lbl 0207 `"Metapan"', add
label define sv07a_munic_lbl 0210 `"Santa Ana"', add
label define sv07a_munic_lbl 0299 `"Rest of Santa Ana Department"', add
label define sv07a_munic_lbl 0301 `"Acajutla"', add
label define sv07a_munic_lbl 0302 `"Armenia"', add
label define sv07a_munic_lbl 0306 `"Izalco"', add
label define sv07a_munic_lbl 0307 `"Juayua"', add
label define sv07a_munic_lbl 0308 `"Nahuizalco"', add
label define sv07a_munic_lbl 0311 `"San Antonio del Monte"', add
label define sv07a_munic_lbl 0315 `"Sonsonate"', add
label define sv07a_munic_lbl 0316 `"Sonzacate"', add
label define sv07a_munic_lbl 0399 `"Rest of Sonsonate Department"', add
label define sv07a_munic_lbl 0407 `"Chalatenango"', add
label define sv07a_munic_lbl 0416 `"Nueva Concepcion"', add
label define sv07a_munic_lbl 0499 `"Rest of Chalatenango Department"', add
label define sv07a_munic_lbl 0501 `"Antiguo Cuscatlan"', add
label define sv07a_munic_lbl 0502 `"Ciudad Arce"', add
label define sv07a_munic_lbl 0503 `"Colon"', add
label define sv07a_munic_lbl 0509 `"La Libertad"', add
label define sv07a_munic_lbl 0511 `"Santa Tecla"', add
label define sv07a_munic_lbl 0512 `"Quezaltepeque"', add
label define sv07a_munic_lbl 0515 `"San Juan Opico"', add
label define sv07a_munic_lbl 0517 `"San Pablo Tacachico"', add
label define sv07a_munic_lbl 0522 `"Zaragoza"', add
label define sv07a_munic_lbl 0599 `"Rest of La Libertad Department"', add
label define sv07a_munic_lbl 0601 `"Aguilares"', add
label define sv07a_munic_lbl 0602 `"Apopa"', add
label define sv07a_munic_lbl 0603 `"Ayutuxtepeque"', add
label define sv07a_munic_lbl 0604 `"Cuscatancingo"', add
label define sv07a_munic_lbl 0606 `"Guazapa"', add
label define sv07a_munic_lbl 0607 `"Ilopango"', add
label define sv07a_munic_lbl 0608 `"Mejicanos"', add
label define sv07a_munic_lbl 0609 `"Nejapa"', add
label define sv07a_munic_lbl 0610 `"Panchimalco"', add
label define sv07a_munic_lbl 0612 `"San Marcos"', add
label define sv07a_munic_lbl 0613 `"San Martin"', add
label define sv07a_munic_lbl 0614 `"San Salvador"', add
label define sv07a_munic_lbl 0616 `"Santo Tomas"', add
label define sv07a_munic_lbl 0617 `"Soyapango"', add
label define sv07a_munic_lbl 0618 `"Tonacatepeque"', add
label define sv07a_munic_lbl 0619 `"Ciudad Delgado"', add
label define sv07a_munic_lbl 0699 `"Rest of San Salvador Department"', add
label define sv07a_munic_lbl 0702 `"Cojutepeque"', add
label define sv07a_munic_lbl 0710 `"San Pedro Perulapan"', add
label define sv07a_munic_lbl 0715 `"Suchitoto"', add
label define sv07a_munic_lbl 0799 `"Rest of Cuscatlán Department"', add
label define sv07a_munic_lbl 0805 `"Olocuilta"', add
label define sv07a_munic_lbl 0813 `"San Luis Talpa"', add
label define sv07a_munic_lbl 0815 `"San Pedro Masahuat"', add
label define sv07a_munic_lbl 0819 `"Santiago Nonualco"', add
label define sv07a_munic_lbl 0821 `"Zacatecoluca"', add
label define sv07a_munic_lbl 0899 `"Rest of  La Paz Department"', add
label define sv07a_munic_lbl 0903 `"Ilobasco"', add
label define sv07a_munic_lbl 0906 `"Sensuntepeque"', add
label define sv07a_munic_lbl 0999 `"Rest of Cabañas Department"', add
label define sv07a_munic_lbl 1010 `"San Vicente"', add
label define sv07a_munic_lbl 1011 `"Tecoluca"', add
label define sv07a_munic_lbl 1099 `"Rest of San Vicente Department"', add
label define sv07a_munic_lbl 1108 `"Jiquilisco"', add
label define sv07a_munic_lbl 1123 `"Usulutan"', add
label define sv07a_munic_lbl 1199 `"Rest of Usulután Department"', add
label define sv07a_munic_lbl 1202 `"Ciudad Barrios"', add
label define sv07a_munic_lbl 1205 `"Chinameca"', add
label define sv07a_munic_lbl 1206 `"Chirilagua"', add
label define sv07a_munic_lbl 1209 `"Moncagua"', add
label define sv07a_munic_lbl 1217 `"San Miguel"', add
label define sv07a_munic_lbl 1299 `"Rest of San Miguel Department"', add
label define sv07a_munic_lbl 1319 `"San Francisco Gotera"', add
label define sv07a_munic_lbl 1399 `"Rest of Morazán Department"', add
label define sv07a_munic_lbl 1404 `"Conchagua"', add
label define sv07a_munic_lbl 1408 `"La Union"', add
label define sv07a_munic_lbl 1416 `"Santa Rosa de Lima"', add
label define sv07a_munic_lbl 1499 `"Rest of La Unión Department"', add
label values sv07a_munic sv07a_munic_lbl

label define sv07a_urban_lbl 1 `"Urban"'
label define sv07a_urban_lbl 2 `"Rural"', add
label values sv07a_urban sv07a_urban_lbl

label define sv07a_dwtype_lbl 01 `"Detached house"'
label define sv07a_dwtype_lbl 02 `"Apartment"', add
label define sv07a_dwtype_lbl 03 `"Room in a house"', add
label define sv07a_dwtype_lbl 04 `"Room in an inn"', add
label define sv07a_dwtype_lbl 05 `"Ranch or hut"', add
label define sv07a_dwtype_lbl 06 `"Improvised house"', add
label define sv07a_dwtype_lbl 07 `"Other, including not designed for human habitation"', add
label define sv07a_dwtype_lbl 09 `"Homeless"', add
label define sv07a_dwtype_lbl 10 `"Orphanage or home for children"', add
label define sv07a_dwtype_lbl 11 `"Asylum/home for the elderly"', add
label define sv07a_dwtype_lbl 12 `"Jail"', add
label define sv07a_dwtype_lbl 14 `"Juvenile rehabilitation center"', add
label define sv07a_dwtype_lbl 15 `"Convent or seminary"', add
label define sv07a_dwtype_lbl 16 `"Barracks"', add
label define sv07a_dwtype_lbl 17 `"Other"', add
label values sv07a_dwtype sv07a_dwtype_lbl

label define sv07a_walls_lbl 1 `"Concrete or mixed"'
label define sv07a_walls_lbl 2 `"Bahareque or mud"', add
label define sv07a_walls_lbl 3 `"Adobe"', add
label define sv07a_walls_lbl 4 `"Wood"', add
label define sv07a_walls_lbl 5 `"Metal sheets"', add
label define sv07a_walls_lbl 6 `"Straw, palm leaves or other vegetation"', add
label define sv07a_walls_lbl 7 `"Waste materials"', add
label define sv07a_walls_lbl 8 `"Other"', add
label define sv07a_walls_lbl 9 `"NIU (not in universe)"', add
label values sv07a_walls sv07a_walls_lbl

label define sv07a_roof_lbl 1 `"Concrete slabs"'
label define sv07a_roof_lbl 2 `"Asbestos sheet"', add
label define sv07a_roof_lbl 3 `"Fiber cement sheets"', add
label define sv07a_roof_lbl 4 `"Tiles"', add
label define sv07a_roof_lbl 5 `"Metal sheet"', add
label define sv07a_roof_lbl 6 `"Straw, palm leaves or other vegetation"', add
label define sv07a_roof_lbl 7 `"Waste materials"', add
label define sv07a_roof_lbl 8 `"Other"', add
label define sv07a_roof_lbl 9 `"NIU (not in universe)"', add
label values sv07a_roof sv07a_roof_lbl

label define sv07a_occup_lbl 1 `"Occupied with people present"'
label define sv07a_occup_lbl 2 `"Occupied with people absent"', add
label define sv07a_occup_lbl 3 `"Unoccupied, occasional used"', add
label define sv07a_occup_lbl 4 `"Unoccupied, for rent"', add
label define sv07a_occup_lbl 5 `"Unoccupied, for sale"', add
label define sv07a_occup_lbl 6 `"Unoccupied, under construction"', add
label define sv07a_occup_lbl 7 `"Unoccupied, for another reason"', add
label define sv07a_occup_lbl 9 `"NIU (not in universe)"', add
label values sv07a_occup sv07a_occup_lbl

label define sv07a_floor_lbl 1 `"Tile"'
label define sv07a_floor_lbl 2 `"Cement slabs"', add
label define sv07a_floor_lbl 3 `"Cement blocks"', add
label define sv07a_floor_lbl 4 `"Mud bricks"', add
label define sv07a_floor_lbl 5 `"Wood"', add
label define sv07a_floor_lbl 6 `"Dirt"', add
label define sv07a_floor_lbl 7 `"Other"', add
label define sv07a_floor_lbl 9 `"NIU (not in universe)"', add
label values sv07a_floor sv07a_floor_lbl

label define sv07a_foodexp_lbl 1 `"Yes"'
label define sv07a_foodexp_lbl 2 `"No"', add
label define sv07a_foodexp_lbl 9 `"NIU (not in universe)"', add
label values sv07a_foodexp sv07a_foodexp_lbl

label define sv07a_rooms_lbl 01 `"1"'
label define sv07a_rooms_lbl 02 `"2"', add
label define sv07a_rooms_lbl 03 `"3"', add
label define sv07a_rooms_lbl 04 `"4"', add
label define sv07a_rooms_lbl 05 `"5"', add
label define sv07a_rooms_lbl 06 `"6"', add
label define sv07a_rooms_lbl 07 `"7"', add
label define sv07a_rooms_lbl 08 `"8"', add
label define sv07a_rooms_lbl 09 `"9"', add
label define sv07a_rooms_lbl 10 `"10"', add
label define sv07a_rooms_lbl 11 `"11+"', add
label define sv07a_rooms_lbl 99 `"NIU (not in universe)"', add
label values sv07a_rooms sv07a_rooms_lbl

label define sv07a_bedrooms_lbl 0 `"0"'
label define sv07a_bedrooms_lbl 1 `"1"', add
label define sv07a_bedrooms_lbl 2 `"2"', add
label define sv07a_bedrooms_lbl 3 `"3"', add
label define sv07a_bedrooms_lbl 4 `"4"', add
label define sv07a_bedrooms_lbl 5 `"5"', add
label define sv07a_bedrooms_lbl 6 `"6"', add
label define sv07a_bedrooms_lbl 7 `"7+"', add
label define sv07a_bedrooms_lbl 9 `"NIU (not in universe)"', add
label values sv07a_bedrooms sv07a_bedrooms_lbl

label define sv07a_rmcook_lbl 1 `"Yes"'
label define sv07a_rmcook_lbl 2 `"No"', add
label define sv07a_rmcook_lbl 9 `"NIU (not in universe)"', add
label values sv07a_rmcook sv07a_rmcook_lbl

label define sv07a_ownrshp_lbl 1 `"Own"'
label define sv07a_ownrshp_lbl 2 `"Own, paying in installments to public institutions"', add
label define sv07a_ownrshp_lbl 3 `"Own, paying in installments to private institutions"', add
label define sv07a_ownrshp_lbl 4 `"Own, paying in installments to NGOs"', add
label define sv07a_ownrshp_lbl 5 `"Rented"', add
label define sv07a_ownrshp_lbl 6 `"Free occupancy"', add
label define sv07a_ownrshp_lbl 7 `"Other tenancy"', add
label define sv07a_ownrshp_lbl 9 `"NIU (not in universe)"', add
label values sv07a_ownrshp sv07a_ownrshp_lbl

label define sv07a_sewer_lbl 1 `"Toilet connected to sewer"'
label define sv07a_sewer_lbl 2 `"Toilet connected to septic tank"', add
label define sv07a_sewer_lbl 3 `"Latrine"', add
label define sv07a_sewer_lbl 4 `"Composting toilet"', add
label define sv07a_sewer_lbl 5 `"Does not have toilet service"', add
label define sv07a_sewer_lbl 9 `"NIU (not in universe)"', add
label values sv07a_sewer sv07a_sewer_lbl

label define sv07a_toilet_lbl 1 `"Used exclusively by the household"'
label define sv07a_toilet_lbl 2 `"Shared with other households"', add
label define sv07a_toilet_lbl 9 `"NIU (not in universe)"', add
label values sv07a_toilet sv07a_toilet_lbl

label define sv07a_wastewtr_lbl 1 `"Sewer"'
label define sv07a_wastewtr_lbl 2 `"Septic tank"', add
label define sv07a_wastewtr_lbl 3 `"Well or drain"', add
label define sv07a_wastewtr_lbl 4 `"River, lake or waterfall"', add
label define sv07a_wastewtr_lbl 5 `"A street or outdoors"', add
label define sv07a_wastewtr_lbl 6 `"Other"', add
label define sv07a_wastewtr_lbl 9 `"NIU (not in universe)"', add
label values sv07a_wastewtr sv07a_wastewtr_lbl

label define sv07a_watersrc_lbl 01 `"Piping inside the dwelling"'
label define sv07a_watersrc_lbl 02 `"Piping outside the dwelling but within the property"', add
label define sv07a_watersrc_lbl 03 `"Piping from a neighbor"', add
label define sv07a_watersrc_lbl 04 `"Public stream or trough"', add
label define sv07a_watersrc_lbl 05 `"Public well"', add
label define sv07a_watersrc_lbl 06 `"Private well"', add
label define sv07a_watersrc_lbl 07 `"Truck, cart or tank truck"', add
label define sv07a_watersrc_lbl 08 `"Water hole, river or waterfall"', add
label define sv07a_watersrc_lbl 09 `"Rainwater"', add
label define sv07a_watersrc_lbl 10 `"Other"', add
label define sv07a_watersrc_lbl 99 `"NIU (not in universe)"', add
label values sv07a_watersrc sv07a_watersrc_lbl

label define sv07a_watdays_lbl 1 `"Daily, more than four hours"'
label define sv07a_watdays_lbl 2 `"Daily, fewer than four hours"', add
label define sv07a_watdays_lbl 3 `"Every other day"', add
label define sv07a_watdays_lbl 4 `"Every third day"', add
label define sv07a_watdays_lbl 5 `"Once a week"', add
label define sv07a_watdays_lbl 6 `"Once in a while"', add
label define sv07a_watdays_lbl 9 `"NIU (not in universe)"', add
label values sv07a_watdays sv07a_watdays_lbl

label define sv07a_fuelck_lbl 01 `"Electricity"'
label define sv07a_fuelck_lbl 02 `"Propane gas"', add
label define sv07a_fuelck_lbl 03 `"Kerosene (gas)"', add
label define sv07a_fuelck_lbl 04 `"Firewood"', add
label define sv07a_fuelck_lbl 05 `"Charcoal"', add
label define sv07a_fuelck_lbl 06 `"Straw, palm leaf"', add
label define sv07a_fuelck_lbl 08 `"Other"', add
label define sv07a_fuelck_lbl 09 `"Do not cook"', add
label define sv07a_fuelck_lbl 99 `"NIU (not in universe)"', add
label values sv07a_fuelck sv07a_fuelck_lbl

label define sv07a_light_lbl 1 `"Electricity"'
label define sv07a_light_lbl 2 `"Propane gas"', add
label define sv07a_light_lbl 3 `"Candle"', add
label define sv07a_light_lbl 4 `"Solar panel"', add
label define sv07a_light_lbl 5 `"Car battery"', add
label define sv07a_light_lbl 6 `"Other"', add
label define sv07a_light_lbl 9 `"NIU (not in universe)"', add
label values sv07a_light sv07a_light_lbl

label define sv07a_waste_lbl 1 `"Municipal service"'
label define sv07a_waste_lbl 2 `"Private service"', add
label define sv07a_waste_lbl 3 `"Burning"', add
label define sv07a_waste_lbl 4 `"Burying"', add
label define sv07a_waste_lbl 5 `"Deposited in a container"', add
label define sv07a_waste_lbl 6 `"Thrown in the street, gully or vacant lot"', add
label define sv07a_waste_lbl 7 `"Thrown in the river, lake or sea"', add
label define sv07a_waste_lbl 8 `"Another form of disposal"', add
label define sv07a_waste_lbl 9 `"NIU (not in universe)"', add
label values sv07a_waste sv07a_waste_lbl

label define sv07a_tv_lbl 1 `"Yes"'
label define sv07a_tv_lbl 2 `"No"', add
label define sv07a_tv_lbl 8 `"Unknown"', add
label define sv07a_tv_lbl 9 `"NIU (not in universe)"', add
label values sv07a_tv sv07a_tv_lbl

label define sv07a_phone_lbl 1 `"Yes"'
label define sv07a_phone_lbl 2 `"No"', add
label define sv07a_phone_lbl 8 `"Unknown"', add
label define sv07a_phone_lbl 9 `"NIU (not in universe)"', add
label values sv07a_phone sv07a_phone_lbl

label define sv07a_cellph_lbl 1 `"Yes"'
label define sv07a_cellph_lbl 2 `"No"', add
label define sv07a_cellph_lbl 8 `"Unknown"', add
label define sv07a_cellph_lbl 9 `"NIU (not in universe)"', add
label values sv07a_cellph sv07a_cellph_lbl

label define sv07a_refrig_lbl 1 `"Yes"'
label define sv07a_refrig_lbl 2 `"No"', add
label define sv07a_refrig_lbl 8 `"Unknown"', add
label define sv07a_refrig_lbl 9 `"NIU (not in universe)"', add
label values sv07a_refrig sv07a_refrig_lbl

label define sv07a_washer_lbl 1 `"Yes"'
label define sv07a_washer_lbl 2 `"No"', add
label define sv07a_washer_lbl 8 `"Unknown"', add
label define sv07a_washer_lbl 9 `"NIU (not in universe)"', add
label values sv07a_washer sv07a_washer_lbl

label define sv07a_vcr_lbl 1 `"Yes"'
label define sv07a_vcr_lbl 2 `"No"', add
label define sv07a_vcr_lbl 8 `"Unknown"', add
label define sv07a_vcr_lbl 9 `"NIU (not in universe)"', add
label values sv07a_vcr sv07a_vcr_lbl

label define sv07a_soundsys_lbl 1 `"Yes"'
label define sv07a_soundsys_lbl 2 `"No"', add
label define sv07a_soundsys_lbl 8 `"Unknown"', add
label define sv07a_soundsys_lbl 9 `"NIU (not in universe)"', add
label values sv07a_soundsys sv07a_soundsys_lbl

label define sv07a_microw_lbl 1 `"Yes"'
label define sv07a_microw_lbl 2 `"No"', add
label define sv07a_microw_lbl 8 `"Unknown"', add
label define sv07a_microw_lbl 9 `"NIU (not in universe)"', add
label values sv07a_microw sv07a_microw_lbl

label define sv07a_computr_lbl 1 `"Yes"'
label define sv07a_computr_lbl 2 `"No"', add
label define sv07a_computr_lbl 8 `"Unknown"', add
label define sv07a_computr_lbl 9 `"NIU (not in universe)"', add
label values sv07a_computr sv07a_computr_lbl

label define sv07a_auto_lbl 1 `"Yes"'
label define sv07a_auto_lbl 2 `"No"', add
label define sv07a_auto_lbl 8 `"Unknown"', add
label define sv07a_auto_lbl 9 `"NIU (not in universe)"', add
label values sv07a_auto sv07a_auto_lbl

label define sv07a_motocyc_lbl 1 `"Yes"'
label define sv07a_motocyc_lbl 2 `"No"', add
label define sv07a_motocyc_lbl 8 `"Unknown"', add
label define sv07a_motocyc_lbl 9 `"NIU (not in universe)"', add
label values sv07a_motocyc sv07a_motocyc_lbl

label define sv07a_cable_lbl 1 `"Yes"'
label define sv07a_cable_lbl 2 `"No"', add
label define sv07a_cable_lbl 8 `"Unknown"', add
label define sv07a_cable_lbl 9 `"NIU (not in universe)"', add
label values sv07a_cable sv07a_cable_lbl

label define sv07a_internet_lbl 1 `"Yes"'
label define sv07a_internet_lbl 2 `"No"', add
label define sv07a_internet_lbl 8 `"Unknown"', add
label define sv07a_internet_lbl 9 `"NIU (not in universe)"', add
label values sv07a_internet sv07a_internet_lbl

label define sv07a_mkgoods_lbl 1 `"Yes"'
label define sv07a_mkgoods_lbl 2 `"No"', add
label define sv07a_mkgoods_lbl 8 `"Unknown"', add
label define sv07a_mkgoods_lbl 9 `"NIU (not in universe)"', add
label values sv07a_mkgoods sv07a_mkgoods_lbl

label define sv07a_sellgds_lbl 1 `"Yes"'
label define sv07a_sellgds_lbl 2 `"No"', add
label define sv07a_sellgds_lbl 8 `"Unknown"', add
label define sv07a_sellgds_lbl 9 `"NIU (not in universe)"', add
label values sv07a_sellgds sv07a_sellgds_lbl

label define sv07a_services_lbl 1 `"Yes"'
label define sv07a_services_lbl 2 `"No"', add
label define sv07a_services_lbl 8 `"Unknown"', add
label define sv07a_services_lbl 9 `"NIU (not in universe)"', add
label values sv07a_services sv07a_services_lbl

label define sv07a_pafarm_lbl 1 `"Yes"'
label define sv07a_pafarm_lbl 2 `"No"', add
label define sv07a_pafarm_lbl 8 `"Unknown"', add
label define sv07a_pafarm_lbl 9 `"NIU (not in universe)"', add
label values sv07a_pafarm sv07a_pafarm_lbl

label define sv07a_paanim_lbl 1 `"Yes"'
label define sv07a_paanim_lbl 2 `"No"', add
label define sv07a_paanim_lbl 8 `"Unknown"', add
label define sv07a_paanim_lbl 9 `"NIU (not in universe)"', add
label values sv07a_paanim sv07a_paanim_lbl

label define sv07a_tenagr_lbl 1 `"Own"'
label define sv07a_tenagr_lbl 2 `"Rented"', add
label define sv07a_tenagr_lbl 3 `"Other"', add
label define sv07a_tenagr_lbl 8 `"Unknown"', add
label define sv07a_tenagr_lbl 9 `"NIU (not in universe)"', add
label values sv07a_tenagr sv07a_tenagr_lbl

label define sv07a_deathtot_lbl 0 `"0"'
label define sv07a_deathtot_lbl 1 `"1"', add
label define sv07a_deathtot_lbl 2 `"2"', add
label define sv07a_deathtot_lbl 3 `"3+"', add
label define sv07a_deathtot_lbl 9 `"NIU (not in universe)"', add
label values sv07a_deathtot sv07a_deathtot_lbl

label define sv07a_emighh_lbl 1 `"Yes"'
label define sv07a_emighh_lbl 2 `"No"', add
label define sv07a_emighh_lbl 9 `"NIU (not in universe)"', add
label values sv07a_emighh sv07a_emighh_lbl

label define sv07a_emigtot_lbl 0 `"0"'
label define sv07a_emigtot_lbl 1 `"1"', add
label define sv07a_emigtot_lbl 2 `"2"', add
label define sv07a_emigtot_lbl 3 `"3"', add
label define sv07a_emigtot_lbl 4 `"4"', add
label define sv07a_emigtot_lbl 5 `"5"', add
label define sv07a_emigtot_lbl 6 `"6"', add
label define sv07a_emigtot_lbl 9 `"NIU (not in universe)"', add
label values sv07a_emigtot sv07a_emigtot_lbl

label define sv07a_nummort_lbl 0 `"0"'
label define sv07a_nummort_lbl 1 `"1"', add
label define sv07a_nummort_lbl 2 `"2"', add
label define sv07a_nummort_lbl 3 `"3+"', add
label values sv07a_nummort sv07a_nummort_lbl

label define sv07a_nummig_lbl 0 `"0"'
label define sv07a_nummig_lbl 1 `"1"', add
label define sv07a_nummig_lbl 2 `"2"', add
label define sv07a_nummig_lbl 3 `"3"', add
label define sv07a_nummig_lbl 4 `"4"', add
label define sv07a_nummig_lbl 5 `"5"', add
label define sv07a_nummig_lbl 6 `"6"', add
label values sv07a_nummig sv07a_nummig_lbl

label define sv07a_pernum_lbl 00 `"Household record"'
label define sv07a_pernum_lbl 01 `"1"', add
label define sv07a_pernum_lbl 02 `"2"', add
label define sv07a_pernum_lbl 03 `"3"', add
label define sv07a_pernum_lbl 04 `"4"', add
label define sv07a_pernum_lbl 05 `"5"', add
label define sv07a_pernum_lbl 06 `"6"', add
label define sv07a_pernum_lbl 07 `"7"', add
label define sv07a_pernum_lbl 08 `"8"', add
label define sv07a_pernum_lbl 09 `"9"', add
label define sv07a_pernum_lbl 10 `"10"', add
label define sv07a_pernum_lbl 11 `"11"', add
label define sv07a_pernum_lbl 12 `"12"', add
label define sv07a_pernum_lbl 13 `"13"', add
label define sv07a_pernum_lbl 14 `"14"', add
label define sv07a_pernum_lbl 15 `"15"', add
label define sv07a_pernum_lbl 16 `"16"', add
label define sv07a_pernum_lbl 17 `"17"', add
label define sv07a_pernum_lbl 18 `"18"', add
label define sv07a_pernum_lbl 19 `"19"', add
label define sv07a_pernum_lbl 20 `"20"', add
label define sv07a_pernum_lbl 21 `"21"', add
label define sv07a_pernum_lbl 22 `"22"', add
label define sv07a_pernum_lbl 23 `"23"', add
label define sv07a_pernum_lbl 24 `"24"', add
label define sv07a_pernum_lbl 25 `"25"', add
label define sv07a_pernum_lbl 26 `"26"', add
label define sv07a_pernum_lbl 27 `"27"', add
label define sv07a_pernum_lbl 28 `"28"', add
label define sv07a_pernum_lbl 29 `"29"', add
label define sv07a_pernum_lbl 30 `"30"', add
label values sv07a_pernum sv07a_pernum_lbl

label define sv07a_relate_lbl 01 `"Head"'
label define sv07a_relate_lbl 02 `"Spouse or partner"', add
label define sv07a_relate_lbl 03 `"Daughter or son"', add
label define sv07a_relate_lbl 04 `"Son/daughter-in-law"', add
label define sv07a_relate_lbl 05 `"Grandchild or great grandchild"', add
label define sv07a_relate_lbl 06 `"Brother or sister"', add
label define sv07a_relate_lbl 07 `"Nephew or niece"', add
label define sv07a_relate_lbl 08 `"Father or mother"', add
label define sv07a_relate_lbl 09 `"Father/mother-in-law"', add
label define sv07a_relate_lbl 10 `"Other relative"', add
label define sv07a_relate_lbl 11 `"Domestic employee"', add
label define sv07a_relate_lbl 12 `"Other non-relative"', add
label define sv07a_relate_lbl 13 `"Person in a collective household"', add
label define sv07a_relate_lbl 14 `"Homeless person"', add
label values sv07a_relate sv07a_relate_lbl

label define sv07a_sex_lbl 1 `"Male"'
label define sv07a_sex_lbl 2 `"Female"', add
label values sv07a_sex sv07a_sex_lbl

label define sv07a_age_lbl 00 `"0"'
label define sv07a_age_lbl 01 `"1"', add
label define sv07a_age_lbl 02 `"2"', add
label define sv07a_age_lbl 03 `"3"', add
label define sv07a_age_lbl 04 `"4"', add
label define sv07a_age_lbl 05 `"5"', add
label define sv07a_age_lbl 06 `"6"', add
label define sv07a_age_lbl 07 `"7"', add
label define sv07a_age_lbl 08 `"8"', add
label define sv07a_age_lbl 09 `"9"', add
label define sv07a_age_lbl 10 `"10"', add
label define sv07a_age_lbl 11 `"11"', add
label define sv07a_age_lbl 12 `"12"', add
label define sv07a_age_lbl 13 `"13"', add
label define sv07a_age_lbl 14 `"14"', add
label define sv07a_age_lbl 15 `"15"', add
label define sv07a_age_lbl 16 `"16"', add
label define sv07a_age_lbl 17 `"17"', add
label define sv07a_age_lbl 18 `"18"', add
label define sv07a_age_lbl 19 `"19"', add
label define sv07a_age_lbl 20 `"20"', add
label define sv07a_age_lbl 21 `"21"', add
label define sv07a_age_lbl 22 `"22"', add
label define sv07a_age_lbl 23 `"23"', add
label define sv07a_age_lbl 24 `"24"', add
label define sv07a_age_lbl 25 `"25"', add
label define sv07a_age_lbl 26 `"26"', add
label define sv07a_age_lbl 27 `"27"', add
label define sv07a_age_lbl 28 `"28"', add
label define sv07a_age_lbl 29 `"29"', add
label define sv07a_age_lbl 30 `"30"', add
label define sv07a_age_lbl 31 `"31"', add
label define sv07a_age_lbl 32 `"32"', add
label define sv07a_age_lbl 33 `"33"', add
label define sv07a_age_lbl 34 `"34"', add
label define sv07a_age_lbl 35 `"35"', add
label define sv07a_age_lbl 36 `"36"', add
label define sv07a_age_lbl 37 `"37"', add
label define sv07a_age_lbl 38 `"38"', add
label define sv07a_age_lbl 39 `"39"', add
label define sv07a_age_lbl 40 `"40"', add
label define sv07a_age_lbl 41 `"41"', add
label define sv07a_age_lbl 42 `"42"', add
label define sv07a_age_lbl 43 `"43"', add
label define sv07a_age_lbl 44 `"44"', add
label define sv07a_age_lbl 45 `"45"', add
label define sv07a_age_lbl 46 `"46"', add
label define sv07a_age_lbl 47 `"47"', add
label define sv07a_age_lbl 48 `"48"', add
label define sv07a_age_lbl 49 `"49"', add
label define sv07a_age_lbl 50 `"50"', add
label define sv07a_age_lbl 51 `"51"', add
label define sv07a_age_lbl 52 `"52"', add
label define sv07a_age_lbl 53 `"53"', add
label define sv07a_age_lbl 54 `"54"', add
label define sv07a_age_lbl 55 `"55"', add
label define sv07a_age_lbl 56 `"56"', add
label define sv07a_age_lbl 57 `"57"', add
label define sv07a_age_lbl 58 `"58"', add
label define sv07a_age_lbl 59 `"59"', add
label define sv07a_age_lbl 60 `"60"', add
label define sv07a_age_lbl 61 `"61"', add
label define sv07a_age_lbl 62 `"62"', add
label define sv07a_age_lbl 63 `"63"', add
label define sv07a_age_lbl 64 `"64"', add
label define sv07a_age_lbl 65 `"65"', add
label define sv07a_age_lbl 66 `"66"', add
label define sv07a_age_lbl 67 `"67"', add
label define sv07a_age_lbl 68 `"68"', add
label define sv07a_age_lbl 69 `"69"', add
label define sv07a_age_lbl 70 `"70"', add
label define sv07a_age_lbl 71 `"71"', add
label define sv07a_age_lbl 72 `"72"', add
label define sv07a_age_lbl 73 `"73"', add
label define sv07a_age_lbl 74 `"74"', add
label define sv07a_age_lbl 75 `"75"', add
label define sv07a_age_lbl 76 `"76"', add
label define sv07a_age_lbl 77 `"77"', add
label define sv07a_age_lbl 78 `"78"', add
label define sv07a_age_lbl 79 `"79"', add
label define sv07a_age_lbl 80 `"80"', add
label define sv07a_age_lbl 81 `"81"', add
label define sv07a_age_lbl 82 `"82"', add
label define sv07a_age_lbl 83 `"83"', add
label define sv07a_age_lbl 84 `"84"', add
label define sv07a_age_lbl 85 `"85"', add
label define sv07a_age_lbl 86 `"86"', add
label define sv07a_age_lbl 87 `"87"', add
label define sv07a_age_lbl 88 `"88"', add
label define sv07a_age_lbl 89 `"89"', add
label define sv07a_age_lbl 90 `"90"', add
label define sv07a_age_lbl 91 `"91"', add
label define sv07a_age_lbl 92 `"92"', add
label define sv07a_age_lbl 93 `"93"', add
label define sv07a_age_lbl 94 `"94"', add
label define sv07a_age_lbl 95 `"95"', add
label define sv07a_age_lbl 96 `"96"', add
label define sv07a_age_lbl 97 `"97"', add
label define sv07a_age_lbl 98 `"98"', add
label values sv07a_age sv07a_age_lbl

label define sv07a_idcard_lbl 1 `"Yes"'
label define sv07a_idcard_lbl 2 `"No"', add
label define sv07a_idcard_lbl 9 `"NIU (not in universe)"', add
label values sv07a_idcard sv07a_idcard_lbl

label define sv07a_birthmo_lbl 01 `"January"'
label define sv07a_birthmo_lbl 02 `"February"', add
label define sv07a_birthmo_lbl 03 `"March"', add
label define sv07a_birthmo_lbl 04 `"April"', add
label define sv07a_birthmo_lbl 05 `"May"', add
label define sv07a_birthmo_lbl 06 `"June"', add
label define sv07a_birthmo_lbl 07 `"July"', add
label define sv07a_birthmo_lbl 08 `"August"', add
label define sv07a_birthmo_lbl 09 `"September"', add
label define sv07a_birthmo_lbl 10 `"October"', add
label define sv07a_birthmo_lbl 11 `"November"', add
label define sv07a_birthmo_lbl 12 `"December"', add
label define sv07a_birthmo_lbl 99 `"Unknown"', add
label values sv07a_birthmo sv07a_birthmo_lbl

label define sv07a_birthyr_lbl 1908 `"1908"'
label define sv07a_birthyr_lbl 1909 `"1909"', add
label define sv07a_birthyr_lbl 1910 `"1910"', add
label define sv07a_birthyr_lbl 1911 `"1911"', add
label define sv07a_birthyr_lbl 1912 `"1912"', add
label define sv07a_birthyr_lbl 1913 `"1913"', add
label define sv07a_birthyr_lbl 1914 `"1914"', add
label define sv07a_birthyr_lbl 1915 `"1915"', add
label define sv07a_birthyr_lbl 1916 `"1916"', add
label define sv07a_birthyr_lbl 1917 `"1917"', add
label define sv07a_birthyr_lbl 1918 `"1918"', add
label define sv07a_birthyr_lbl 1919 `"1919"', add
label define sv07a_birthyr_lbl 1920 `"1920"', add
label define sv07a_birthyr_lbl 1921 `"1921"', add
label define sv07a_birthyr_lbl 1922 `"1922"', add
label define sv07a_birthyr_lbl 1923 `"1923"', add
label define sv07a_birthyr_lbl 1924 `"1924"', add
label define sv07a_birthyr_lbl 1925 `"1925"', add
label define sv07a_birthyr_lbl 1926 `"1926"', add
label define sv07a_birthyr_lbl 1927 `"1927"', add
label define sv07a_birthyr_lbl 1928 `"1928"', add
label define sv07a_birthyr_lbl 1929 `"1929"', add
label define sv07a_birthyr_lbl 1930 `"1930"', add
label define sv07a_birthyr_lbl 1931 `"1931"', add
label define sv07a_birthyr_lbl 1932 `"1932"', add
label define sv07a_birthyr_lbl 1933 `"1933"', add
label define sv07a_birthyr_lbl 1934 `"1934"', add
label define sv07a_birthyr_lbl 1935 `"1935"', add
label define sv07a_birthyr_lbl 1936 `"1936"', add
label define sv07a_birthyr_lbl 1937 `"1937"', add
label define sv07a_birthyr_lbl 1938 `"1938"', add
label define sv07a_birthyr_lbl 1939 `"1939"', add
label define sv07a_birthyr_lbl 1940 `"1940"', add
label define sv07a_birthyr_lbl 1941 `"1941"', add
label define sv07a_birthyr_lbl 1942 `"1942"', add
label define sv07a_birthyr_lbl 1943 `"1943"', add
label define sv07a_birthyr_lbl 1944 `"1944"', add
label define sv07a_birthyr_lbl 1945 `"1945"', add
label define sv07a_birthyr_lbl 1946 `"1946"', add
label define sv07a_birthyr_lbl 1947 `"1947"', add
label define sv07a_birthyr_lbl 1948 `"1948"', add
label define sv07a_birthyr_lbl 1949 `"1949"', add
label define sv07a_birthyr_lbl 1950 `"1950"', add
label define sv07a_birthyr_lbl 1951 `"1951"', add
label define sv07a_birthyr_lbl 1952 `"1952"', add
label define sv07a_birthyr_lbl 1953 `"1953"', add
label define sv07a_birthyr_lbl 1954 `"1954"', add
label define sv07a_birthyr_lbl 1955 `"1955"', add
label define sv07a_birthyr_lbl 1956 `"1956"', add
label define sv07a_birthyr_lbl 1957 `"1957"', add
label define sv07a_birthyr_lbl 1958 `"1958"', add
label define sv07a_birthyr_lbl 1959 `"1959"', add
label define sv07a_birthyr_lbl 1960 `"1960"', add
label define sv07a_birthyr_lbl 1961 `"1961"', add
label define sv07a_birthyr_lbl 1962 `"1962"', add
label define sv07a_birthyr_lbl 1963 `"1963"', add
label define sv07a_birthyr_lbl 1964 `"1964"', add
label define sv07a_birthyr_lbl 1965 `"1965"', add
label define sv07a_birthyr_lbl 1966 `"1966"', add
label define sv07a_birthyr_lbl 1967 `"1967"', add
label define sv07a_birthyr_lbl 1968 `"1968"', add
label define sv07a_birthyr_lbl 1969 `"1969"', add
label define sv07a_birthyr_lbl 1970 `"1970"', add
label define sv07a_birthyr_lbl 1971 `"1971"', add
label define sv07a_birthyr_lbl 1972 `"1972"', add
label define sv07a_birthyr_lbl 1973 `"1973"', add
label define sv07a_birthyr_lbl 1974 `"1974"', add
label define sv07a_birthyr_lbl 1975 `"1975"', add
label define sv07a_birthyr_lbl 1976 `"1976"', add
label define sv07a_birthyr_lbl 1977 `"1977"', add
label define sv07a_birthyr_lbl 1978 `"1978"', add
label define sv07a_birthyr_lbl 1979 `"1979"', add
label define sv07a_birthyr_lbl 1980 `"1980"', add
label define sv07a_birthyr_lbl 1981 `"1981"', add
label define sv07a_birthyr_lbl 1982 `"1982"', add
label define sv07a_birthyr_lbl 1983 `"1983"', add
label define sv07a_birthyr_lbl 1984 `"1984"', add
label define sv07a_birthyr_lbl 1985 `"1985"', add
label define sv07a_birthyr_lbl 1986 `"1986"', add
label define sv07a_birthyr_lbl 1987 `"1987"', add
label define sv07a_birthyr_lbl 1988 `"1988"', add
label define sv07a_birthyr_lbl 1989 `"1989"', add
label define sv07a_birthyr_lbl 1990 `"1990"', add
label define sv07a_birthyr_lbl 1991 `"1991"', add
label define sv07a_birthyr_lbl 1992 `"1992"', add
label define sv07a_birthyr_lbl 1993 `"1993"', add
label define sv07a_birthyr_lbl 1994 `"1994"', add
label define sv07a_birthyr_lbl 1995 `"1995"', add
label define sv07a_birthyr_lbl 1996 `"1996"', add
label define sv07a_birthyr_lbl 1997 `"1997"', add
label define sv07a_birthyr_lbl 1998 `"1998"', add
label define sv07a_birthyr_lbl 1999 `"1999"', add
label define sv07a_birthyr_lbl 2000 `"2000"', add
label define sv07a_birthyr_lbl 2001 `"2001"', add
label define sv07a_birthyr_lbl 2002 `"2002"', add
label define sv07a_birthyr_lbl 2003 `"2003"', add
label define sv07a_birthyr_lbl 2004 `"2004"', add
label define sv07a_birthyr_lbl 2005 `"2005"', add
label define sv07a_birthyr_lbl 2006 `"2006"', add
label define sv07a_birthyr_lbl 2007 `"2007"', add
label values sv07a_birthyr sv07a_birthyr_lbl

label define sv07a_disuppr_lbl 1 `"Yes"'
label define sv07a_disuppr_lbl 2 `"No"', add
label define sv07a_disuppr_lbl 8 `"Unknown"', add
label define sv07a_disuppr_lbl 9 `"NIU (not in universe)"', add
label values sv07a_disuppr sv07a_disuppr_lbl

label define sv07a_disvis_lbl 1 `"Yes"'
label define sv07a_disvis_lbl 2 `"No"', add
label define sv07a_disvis_lbl 8 `"Unknown"', add
label define sv07a_disvis_lbl 9 `"NIU (not in universe)"', add
label values sv07a_disvis sv07a_disvis_lbl

label define sv07a_dishear_lbl 1 `"Yes"'
label define sv07a_dishear_lbl 2 `"No"', add
label define sv07a_dishear_lbl 8 `"Unknown"', add
label define sv07a_dishear_lbl 9 `"NIU (not in universe)"', add
label values sv07a_dishear sv07a_dishear_lbl

label define sv07a_dismute_lbl 1 `"Yes"'
label define sv07a_dismute_lbl 2 `"No"', add
label define sv07a_dismute_lbl 8 `"Unknown"', add
label define sv07a_dismute_lbl 9 `"NIU (not in universe)"', add
label values sv07a_dismute sv07a_dismute_lbl

label define sv07a_dismntl_lbl 1 `"Yes"'
label define sv07a_dismntl_lbl 2 `"No"', add
label define sv07a_dismntl_lbl 8 `"Unknown"', add
label define sv07a_dismntl_lbl 9 `"NIU (not in universe)"', add
label values sv07a_dismntl sv07a_dismntl_lbl

label define sv07a_dislimit_lbl 1 `"Yes"'
label define sv07a_dislimit_lbl 2 `"No"', add
label define sv07a_dislimit_lbl 8 `"Unknown"', add
label define sv07a_dislimit_lbl 9 `"NIU (not in universe)"', add
label values sv07a_dislimit sv07a_dislimit_lbl

label define sv07a_disothr_lbl 1 `"Yes"'
label define sv07a_disothr_lbl 2 `"No"', add
label define sv07a_disothr_lbl 8 `"Unknown"', add
label define sv07a_disothr_lbl 9 `"NIU (not in universe)"', add
label values sv07a_disothr sv07a_disothr_lbl

label define sv07a_race_lbl 1 `"White"'
label define sv07a_race_lbl 2 `"Mestizo (mix of white and indigenous)"', add
label define sv07a_race_lbl 3 `"Indigenous"', add
label define sv07a_race_lbl 4 `"Black"', add
label define sv07a_race_lbl 5 `"Other"', add
label values sv07a_race sv07a_race_lbl

label define sv07a_ethnic_lbl 1 `"Lenca"'
label define sv07a_ethnic_lbl 2 `"Kakawira (Cacaopera)"', add
label define sv07a_ethnic_lbl 3 `"Nahua-Pipil"', add
label define sv07a_ethnic_lbl 4 `"Other"', add
label define sv07a_ethnic_lbl 9 `"NIU (not in universe)"', add
label values sv07a_ethnic sv07a_ethnic_lbl

label define sv07a_nativity_lbl 1 `"Somewhere else"'
label define sv07a_nativity_lbl 2 `"Here"', add
label values sv07a_nativity sv07a_nativity_lbl

label define sv07a_immigyr_lbl 1969 `"1969 or earlier"'
label define sv07a_immigyr_lbl 1970 `"1970"', add
label define sv07a_immigyr_lbl 1971 `"1971"', add
label define sv07a_immigyr_lbl 1972 `"1972"', add
label define sv07a_immigyr_lbl 1973 `"1973"', add
label define sv07a_immigyr_lbl 1974 `"1974"', add
label define sv07a_immigyr_lbl 1975 `"1975"', add
label define sv07a_immigyr_lbl 1976 `"1976"', add
label define sv07a_immigyr_lbl 1977 `"1977"', add
label define sv07a_immigyr_lbl 1978 `"1978"', add
label define sv07a_immigyr_lbl 1979 `"1979"', add
label define sv07a_immigyr_lbl 1980 `"1980"', add
label define sv07a_immigyr_lbl 1981 `"1981"', add
label define sv07a_immigyr_lbl 1982 `"1982"', add
label define sv07a_immigyr_lbl 1983 `"1983"', add
label define sv07a_immigyr_lbl 1984 `"1984"', add
label define sv07a_immigyr_lbl 1985 `"1985"', add
label define sv07a_immigyr_lbl 1986 `"1986"', add
label define sv07a_immigyr_lbl 1987 `"1987"', add
label define sv07a_immigyr_lbl 1988 `"1988"', add
label define sv07a_immigyr_lbl 1989 `"1989"', add
label define sv07a_immigyr_lbl 1990 `"1990"', add
label define sv07a_immigyr_lbl 1991 `"1991"', add
label define sv07a_immigyr_lbl 1992 `"1992"', add
label define sv07a_immigyr_lbl 1993 `"1993"', add
label define sv07a_immigyr_lbl 1994 `"1994"', add
label define sv07a_immigyr_lbl 1995 `"1995"', add
label define sv07a_immigyr_lbl 1996 `"1996"', add
label define sv07a_immigyr_lbl 1997 `"1997"', add
label define sv07a_immigyr_lbl 1998 `"1998"', add
label define sv07a_immigyr_lbl 1999 `"1999"', add
label define sv07a_immigyr_lbl 2000 `"2000"', add
label define sv07a_immigyr_lbl 2001 `"2001"', add
label define sv07a_immigyr_lbl 2002 `"2002"', add
label define sv07a_immigyr_lbl 2003 `"2003"', add
label define sv07a_immigyr_lbl 2004 `"2004"', add
label define sv07a_immigyr_lbl 2005 `"2005"', add
label define sv07a_immigyr_lbl 2006 `"2006"', add
label define sv07a_immigyr_lbl 2007 `"2007"', add
label define sv07a_immigyr_lbl 9998 `"Unknown"', add
label define sv07a_immigyr_lbl 9999 `"NIU (not in universe)"', add
label values sv07a_immigyr sv07a_immigyr_lbl

label define sv07a_livehere_lbl 1 `"No"'
label define sv07a_livehere_lbl 2 `"Yes"', add
label values sv07a_livehere sv07a_livehere_lbl

label define sv07a_arrivyr_lbl 1930 `"1930 or earlier"'
label define sv07a_arrivyr_lbl 1931 `"1931"', add
label define sv07a_arrivyr_lbl 1932 `"1932"', add
label define sv07a_arrivyr_lbl 1933 `"1933"', add
label define sv07a_arrivyr_lbl 1934 `"1934"', add
label define sv07a_arrivyr_lbl 1935 `"1935"', add
label define sv07a_arrivyr_lbl 1936 `"1936"', add
label define sv07a_arrivyr_lbl 1937 `"1937"', add
label define sv07a_arrivyr_lbl 1938 `"1938"', add
label define sv07a_arrivyr_lbl 1939 `"1939"', add
label define sv07a_arrivyr_lbl 1940 `"1940"', add
label define sv07a_arrivyr_lbl 1941 `"1941"', add
label define sv07a_arrivyr_lbl 1942 `"1942"', add
label define sv07a_arrivyr_lbl 1943 `"1943"', add
label define sv07a_arrivyr_lbl 1944 `"1944"', add
label define sv07a_arrivyr_lbl 1945 `"1945"', add
label define sv07a_arrivyr_lbl 1946 `"1946"', add
label define sv07a_arrivyr_lbl 1947 `"1947"', add
label define sv07a_arrivyr_lbl 1948 `"1948"', add
label define sv07a_arrivyr_lbl 1949 `"1949"', add
label define sv07a_arrivyr_lbl 1950 `"1950"', add
label define sv07a_arrivyr_lbl 1951 `"1951"', add
label define sv07a_arrivyr_lbl 1952 `"1952"', add
label define sv07a_arrivyr_lbl 1953 `"1953"', add
label define sv07a_arrivyr_lbl 1954 `"1954"', add
label define sv07a_arrivyr_lbl 1955 `"1955"', add
label define sv07a_arrivyr_lbl 1956 `"1956"', add
label define sv07a_arrivyr_lbl 1957 `"1957"', add
label define sv07a_arrivyr_lbl 1958 `"1958"', add
label define sv07a_arrivyr_lbl 1959 `"1959"', add
label define sv07a_arrivyr_lbl 1960 `"1960"', add
label define sv07a_arrivyr_lbl 1961 `"1961"', add
label define sv07a_arrivyr_lbl 1962 `"1962"', add
label define sv07a_arrivyr_lbl 1963 `"1963"', add
label define sv07a_arrivyr_lbl 1964 `"1964"', add
label define sv07a_arrivyr_lbl 1965 `"1965"', add
label define sv07a_arrivyr_lbl 1966 `"1966"', add
label define sv07a_arrivyr_lbl 1967 `"1967"', add
label define sv07a_arrivyr_lbl 1968 `"1968"', add
label define sv07a_arrivyr_lbl 1969 `"1969"', add
label define sv07a_arrivyr_lbl 1970 `"1970"', add
label define sv07a_arrivyr_lbl 1971 `"1971"', add
label define sv07a_arrivyr_lbl 1972 `"1972"', add
label define sv07a_arrivyr_lbl 1973 `"1973"', add
label define sv07a_arrivyr_lbl 1974 `"1974"', add
label define sv07a_arrivyr_lbl 1975 `"1975"', add
label define sv07a_arrivyr_lbl 1976 `"1976"', add
label define sv07a_arrivyr_lbl 1977 `"1977"', add
label define sv07a_arrivyr_lbl 1978 `"1978"', add
label define sv07a_arrivyr_lbl 1979 `"1979"', add
label define sv07a_arrivyr_lbl 1980 `"1980"', add
label define sv07a_arrivyr_lbl 1981 `"1981"', add
label define sv07a_arrivyr_lbl 1982 `"1982"', add
label define sv07a_arrivyr_lbl 1983 `"1983"', add
label define sv07a_arrivyr_lbl 1984 `"1984"', add
label define sv07a_arrivyr_lbl 1985 `"1985"', add
label define sv07a_arrivyr_lbl 1986 `"1986"', add
label define sv07a_arrivyr_lbl 1987 `"1987"', add
label define sv07a_arrivyr_lbl 1988 `"1988"', add
label define sv07a_arrivyr_lbl 1989 `"1989"', add
label define sv07a_arrivyr_lbl 1990 `"1990"', add
label define sv07a_arrivyr_lbl 1991 `"1991"', add
label define sv07a_arrivyr_lbl 1992 `"1992"', add
label define sv07a_arrivyr_lbl 1993 `"1993"', add
label define sv07a_arrivyr_lbl 1994 `"1994"', add
label define sv07a_arrivyr_lbl 1995 `"1995"', add
label define sv07a_arrivyr_lbl 1996 `"1996"', add
label define sv07a_arrivyr_lbl 1997 `"1997"', add
label define sv07a_arrivyr_lbl 1998 `"1998"', add
label define sv07a_arrivyr_lbl 1999 `"1999"', add
label define sv07a_arrivyr_lbl 2000 `"2000"', add
label define sv07a_arrivyr_lbl 2001 `"2001"', add
label define sv07a_arrivyr_lbl 2002 `"2002"', add
label define sv07a_arrivyr_lbl 2003 `"2003"', add
label define sv07a_arrivyr_lbl 2004 `"2004"', add
label define sv07a_arrivyr_lbl 2005 `"2005"', add
label define sv07a_arrivyr_lbl 2006 `"2006"', add
label define sv07a_arrivyr_lbl 2007 `"2007"', add
label define sv07a_arrivyr_lbl 9998 `"Unknown"', add
label define sv07a_arrivyr_lbl 9999 `"NIU (not in universe)"', add
label values sv07a_arrivyr sv07a_arrivyr_lbl

label define sv07a_lit_lbl 1 `"Yes"'
label define sv07a_lit_lbl 2 `"No"', add
label define sv07a_lit_lbl 9 `"NIU (not in universe)"', add
label values sv07a_lit sv07a_lit_lbl

label define sv07a_attschl_lbl 1 `"Currently attends"'
label define sv07a_attschl_lbl 2 `"Doesn't attend, but attended"', add
label define sv07a_attschl_lbl 3 `"Never attended"', add
label define sv07a_attschl_lbl 9 `"NIU (not in universe)"', add
label values sv07a_attschl sv07a_attschl_lbl

label define sv07a_educ_lbl 10 `"Preschool 0"'
label define sv07a_educ_lbl 11 `"Preschool 1"', add
label define sv07a_educ_lbl 12 `"Preschool 2"', add
label define sv07a_educ_lbl 13 `"Preschool 3"', add
label define sv07a_educ_lbl 20 `"Primary 0"', add
label define sv07a_educ_lbl 21 `"Primary 1"', add
label define sv07a_educ_lbl 22 `"Primary 2"', add
label define sv07a_educ_lbl 23 `"Primary 3"', add
label define sv07a_educ_lbl 24 `"Primary 4"', add
label define sv07a_educ_lbl 25 `"Primary 5"', add
label define sv07a_educ_lbl 26 `"Primary 6"', add
label define sv07a_educ_lbl 27 `"Primary 7"', add
label define sv07a_educ_lbl 28 `"Primary 8"', add
label define sv07a_educ_lbl 29 `"Primary 9"', add
label define sv07a_educ_lbl 31 `"Middle education 1 [middle school and early high school]"', add
label define sv07a_educ_lbl 32 `"Middle education 2 [middle school and early high school]"', add
label define sv07a_educ_lbl 33 `"Middle education 3 [middle school and early high school]"', add
label define sv07a_educ_lbl 34 `"Middle education 4 [middle school and early high school]"', add
label define sv07a_educ_lbl 41 `"Short course of study [after sixth grade] 1"', add
label define sv07a_educ_lbl 42 `"Short course of study [after sixth grade] 2"', add
label define sv07a_educ_lbl 43 `"Short course of Study [after sixth grade] 3"', add
label define sv07a_educ_lbl 51 `"Post-secondary non-university 1"', add
label define sv07a_educ_lbl 52 `"Post-secondary non-university 2"', add
label define sv07a_educ_lbl 53 `"Post-secondary non-university 3"', add
label define sv07a_educ_lbl 54 `"Post-secondary non-university 4"', add
label define sv07a_educ_lbl 55 `"Post-secondary non-university 5"', add
label define sv07a_educ_lbl 56 `"Post-secondary non-university 6"', add
label define sv07a_educ_lbl 57 `"Post-secondary non-university 7"', add
label define sv07a_educ_lbl 58 `"Post-secondary non-university 8"', add
label define sv07a_educ_lbl 59 `"Post-secondary non-university (not specified)"', add
label define sv07a_educ_lbl 61 `"Technical college 1"', add
label define sv07a_educ_lbl 62 `"Technical college 2"', add
label define sv07a_educ_lbl 63 `"Technical college 3"', add
label define sv07a_educ_lbl 71 `"University (undergraduate) 1"', add
label define sv07a_educ_lbl 72 `"University (undergraduate) 2"', add
label define sv07a_educ_lbl 73 `"University (undergraduate) 3"', add
label define sv07a_educ_lbl 74 `"University (undergraduate) 4"', add
label define sv07a_educ_lbl 75 `"University (undergraduate) 5"', add
label define sv07a_educ_lbl 76 `"University (undergraduate) 6"', add
label define sv07a_educ_lbl 77 `"University (undergraduate) 7"', add
label define sv07a_educ_lbl 78 `"University (undergraduate) 8"', add
label define sv07a_educ_lbl 79 `"University (undegraduate) (not specified)"', add
label define sv07a_educ_lbl 81 `"Masters 1"', add
label define sv07a_educ_lbl 82 `"Masters 2"', add
label define sv07a_educ_lbl 83 `"Masters 3"', add
label define sv07a_educ_lbl 91 `"Doctorate 1 to 5"', add
label define sv07a_educ_lbl 99 `"NIU (not in universe)"', add
label values sv07a_educ sv07a_educ_lbl

label define sv07a_educatt_lbl 01 `"Preschool"'
label define sv07a_educatt_lbl 02 `"Primary or basic education"', add
label define sv07a_educatt_lbl 03 `"Middle education [middle school and early high school]"', add
label define sv07a_educatt_lbl 04 `"Short course of study after sixth grade"', add
label define sv07a_educatt_lbl 05 `"Preparatory"', add
label define sv07a_educatt_lbl 06 `"Technical college"', add
label define sv07a_educatt_lbl 07 `"University (undergraduate)"', add
label define sv07a_educatt_lbl 08 `"Master"', add
label define sv07a_educatt_lbl 09 `"Doctorate"', add
label define sv07a_educatt_lbl 99 `"NIU (not in universe)"', add
label values sv07a_educatt sv07a_educatt_lbl

label define sv07a_lstgrade_lbl 00 `"0"'
label define sv07a_lstgrade_lbl 01 `"1"', add
label define sv07a_lstgrade_lbl 02 `"2"', add
label define sv07a_lstgrade_lbl 03 `"3"', add
label define sv07a_lstgrade_lbl 04 `"4"', add
label define sv07a_lstgrade_lbl 05 `"5"', add
label define sv07a_lstgrade_lbl 06 `"6"', add
label define sv07a_lstgrade_lbl 07 `"7"', add
label define sv07a_lstgrade_lbl 08 `"8"', add
label define sv07a_lstgrade_lbl 09 `"9"', add
label define sv07a_lstgrade_lbl 99 `"NIU (not in universe)"', add
label values sv07a_lstgrade sv07a_lstgrade_lbl

label define sv07a_edcomp_lbl 1 `"Yes"'
label define sv07a_edcomp_lbl 2 `"No"', add
label define sv07a_edcomp_lbl 9 `"NIU (not in universe)"', add
label values sv07a_edcomp sv07a_edcomp_lbl

label define sv07a_major_lbl 2310 `"Short course of study after sixth grade"'
label define sv07a_major_lbl 3110 `"General high school diploma"', add
label define sv07a_major_lbl 3121 `"Commercial vocational high school degree"', add
label define sv07a_major_lbl 3122 `"Industrial vocational high school degree"', add
label define sv07a_major_lbl 3123 `"Agricultural vocational high school degree"', add
label define sv07a_major_lbl 3124 `"Health vocational high school degree"', add
label define sv07a_major_lbl 3211 `"Academic high school degree"', add
label define sv07a_major_lbl 3212 `"Administration and commerce degree"', add
label define sv07a_major_lbl 3213 `"Agricultural degree"', add
label define sv07a_major_lbl 3214 `"Arts degree"', add
label define sv07a_major_lbl 3215 `"Industrial degree"', add
label define sv07a_major_lbl 3216 `"Health degree"', add
label define sv07a_major_lbl 3217 `"Vocational degree"', add
label define sv07a_major_lbl 3218 `"Educational degree"', add
label define sv07a_major_lbl 3222 `"Hotel and tourism degree"', add
label define sv07a_major_lbl 4110 `"Professorate"', add
label define sv07a_major_lbl 4121 `"Agricultural science"', add
label define sv07a_major_lbl 4122 `"Economic science and related studies"', add
label define sv07a_major_lbl 4123 `"Engineering and architecture"', add
label define sv07a_major_lbl 4124 `"Naturals sciences and mathematics"', add
label define sv07a_major_lbl 4125 `"Health sciences"', add
label define sv07a_major_lbl 4126 `"Mechanics"', add
label define sv07a_major_lbl 4127 `"Social sciences and humanities"', add
label define sv07a_major_lbl 4128 `"Environmental study and related"', add
label define sv07a_major_lbl 4129 `"Other technical studies"', add
label define sv07a_major_lbl 4130 `"Military studies"', add
label define sv07a_major_lbl 4131 `"Public safety"', add
label define sv07a_major_lbl 5111 `"Doctorate degree in science and health"', add
label define sv07a_major_lbl 5112 `"Degree in social sciences, humanities and arts"', add
label define sv07a_major_lbl 5113 `"Law degree"', add
label define sv07a_major_lbl 5114 `"Degree in economic sciences"', add
label define sv07a_major_lbl 5115 `"Natural sciences and mathematics degree"', add
label define sv07a_major_lbl 5116 `"Degree in chemistry and pharmacy"', add
label define sv07a_major_lbl 5117 `"Degree in agricultural science"', add
label define sv07a_major_lbl 5118 `"Degree in science education"', add
label define sv07a_major_lbl 5119 `"Other degrees"', add
label define sv07a_major_lbl 5121 `"General engineering"', add
label define sv07a_major_lbl 5122 `"Agricultural sciences degree"', add
label define sv07a_major_lbl 5123 `"Engineering of naturals science and mathematics"', add
label define sv07a_major_lbl 5129 `"Other engineering"', add
label define sv07a_major_lbl 5130 `"Architecture"', add
label define sv07a_major_lbl 5141 `"Master of health sciences"', add
label define sv07a_major_lbl 5142 `"Master of natural sciences and mathematics"', add
label define sv07a_major_lbl 5143 `"Master of social sciences and humanities"', add
label define sv07a_major_lbl 5144 `"Master of economic sciences"', add
label define sv07a_major_lbl 5145 `"Master in engineering and architecture"', add
label define sv07a_major_lbl 5149 `"Other masters degrees"', add
label define sv07a_major_lbl 5210 `"Master of education"', add
label define sv07a_major_lbl 5221 `"Economic sciences and related studies"', add
label define sv07a_major_lbl 5222 `"Engineering and architecture"', add
label define sv07a_major_lbl 5223 `"Natural sciences and math"', add
label define sv07a_major_lbl 5224 `"Health sciences"', add
label define sv07a_major_lbl 5225 `"Mechanics"', add
label define sv07a_major_lbl 5226 `"Social sciences and humanities"', add
label define sv07a_major_lbl 5227 `"Agronomic sciences"', add
label define sv07a_major_lbl 5229 `"Other technical studies"', add
label define sv07a_major_lbl 6110 `"Doctorates"', add
label define sv07a_major_lbl 7110 `"Other studies"', add
label define sv07a_major_lbl 9999 `"NIU (not in universe)"', add
label values sv07a_major sv07a_major_lbl

label define sv07a_othlang_lbl 1 `"Yes"'
label define sv07a_othlang_lbl 2 `"No"', add
label define sv07a_othlang_lbl 9 `"NIU (not in universe)"', add
label values sv07a_othlang sv07a_othlang_lbl

label define sv07a_lang_lbl 01 `"English"'
label define sv07a_lang_lbl 02 `"German"', add
label define sv07a_lang_lbl 03 `"French"', add
label define sv07a_lang_lbl 07 `"Portugese"', add
label define sv07a_lang_lbl 08 `"Italian"', add
label define sv07a_lang_lbl 98 `"Other"', add
label define sv07a_lang_lbl 99 `"NIU (not in universe)"', add
label values sv07a_lang sv07a_lang_lbl

label define sv07a_voc_lbl 1 `"Yes"'
label define sv07a_voc_lbl 2 `"No"', add
label define sv07a_voc_lbl 9 `"NIU (not in universe)"', add
label values sv07a_voc sv07a_voc_lbl

label define sv07a_marst_lbl 1 `"Partner"'
label define sv07a_marst_lbl 2 `"Married"', add
label define sv07a_marst_lbl 3 `"Widowed"', add
label define sv07a_marst_lbl 4 `"Separated"', add
label define sv07a_marst_lbl 5 `"Divorced"', add
label define sv07a_marst_lbl 6 `"Single"', add
label define sv07a_marst_lbl 8 `"Unknown"', add
label define sv07a_marst_lbl 9 `"NIU (not in universe)"', add
label values sv07a_marst sv07a_marst_lbl

label define sv07a_email_lbl 1 `"Yes"'
label define sv07a_email_lbl 2 `"No"', add
label define sv07a_email_lbl 8 `"Unknown"', add
label define sv07a_email_lbl 9 `"NIU (not in universe)"', add
label values sv07a_email sv07a_email_lbl

label define sv07a_remit_lbl 1 `"Yes"'
label define sv07a_remit_lbl 2 `"No"', add
label define sv07a_remit_lbl 9 `"NIU (not in universe)"', add
label values sv07a_remit sv07a_remit_lbl

label define sv07a_remitsex_lbl 1 `"Male"'
label define sv07a_remitsex_lbl 2 `"Female"', add
label define sv07a_remitsex_lbl 3 `"Both"', add
label define sv07a_remitsex_lbl 9 `"NIU (not in universe)"', add
label values sv07a_remitsex sv07a_remitsex_lbl

label define sv07a_prevwk_lbl 1 `"Yes"'
label define sv07a_prevwk_lbl 2 `"No"', add
label define sv07a_prevwk_lbl 9 `"NIU (not in universe)"', add
label values sv07a_prevwk sv07a_prevwk_lbl

label define sv07a_workjust_lbl 1 `"Yes"'
label define sv07a_workjust_lbl 2 `"No"', add
label define sv07a_workjust_lbl 9 `"NIU (not in universe)"', add
label values sv07a_workjust sv07a_workjust_lbl

label define sv07a_othrwork_lbl 1 `"Selling items such as: clothing, flowers, lottery tickets, food, handicrafts, newspapers, candy, etc."'
label define sv07a_othrwork_lbl 2 `"Shoemaking, plumbing, construction, car washing, etc."', add
label define sv07a_othrwork_lbl 3 `"Making bread, tortillas, food and other items for sale"', add
label define sv07a_othrwork_lbl 4 `"Washing, ironing, sewing and other domestic services"', add
label define sv07a_othrwork_lbl 5 `"Assist with agricultural activities"', add
label define sv07a_othrwork_lbl 6 `"Others"', add
label define sv07a_othrwork_lbl 7 `"No activity"', add
label define sv07a_othrwork_lbl 9 `"NIU (not in universe)"', add
label values sv07a_othrwork sv07a_othrwork_lbl

label define sv07a_lookwrk_lbl 1 `"Yes"'
label define sv07a_lookwrk_lbl 2 `"No"', add
label define sv07a_lookwrk_lbl 9 `"NIU (not in universe)"', add
label values sv07a_lookwrk sv07a_lookwrk_lbl

label define sv07a_seekfrst_lbl 1 `"Yes"'
label define sv07a_seekfrst_lbl 2 `"No"', add
label define sv07a_seekfrst_lbl 9 `"NIU (not in universe)"', add
label values sv07a_seekfrst sv07a_seekfrst_lbl

label define sv07a_whynot_lbl 1 `"Housework"'
label define sv07a_whynot_lbl 2 `"Full-time student"', add
label define sv07a_whynot_lbl 3 `"Retired, pensioned or rentier"', add
label define sv07a_whynot_lbl 4 `"In prison"', add
label define sv07a_whynot_lbl 5 `"Permanent disability that limits working"', add
label define sv07a_whynot_lbl 6 `"Other reason"', add
label define sv07a_whynot_lbl 9 `"NIU (not in universe)"', add
label values sv07a_whynot sv07a_whynot_lbl

label define sv07a_ind3dig_lbl 011 `"Growing of crops; market gardening; horticulture"'
label define sv07a_ind3dig_lbl 012 `"Farming of animals"', add
label define sv07a_ind3dig_lbl 013 `"Growing of crops combined with farming of animals (mixed farming)"', add
label define sv07a_ind3dig_lbl 014 `"Agricultural and animal husbandry service activities, except veterinary activities"', add
label define sv07a_ind3dig_lbl 020 `"Forestry, logging and related service activities"', add
label define sv07a_ind3dig_lbl 050 `"Fishing, aquaculture and service activities incidental to fishing"', add
label define sv07a_ind3dig_lbl 132 `"Mining of non-ferrous metal ores, except uranium and thorium ores"', add
label define sv07a_ind3dig_lbl 141 `"Quarrying of stone, sand and clay"', add
label define sv07a_ind3dig_lbl 142 `"Mining and quarrying nec"', add
label define sv07a_ind3dig_lbl 151 `"Production, processing and preservation of meat, fish, fruit, vegetables, oils and fats"', add
label define sv07a_ind3dig_lbl 152 `"Manufacture of dairy products"', add
label define sv07a_ind3dig_lbl 153 `"Manufacture of grain mill products, starches and starch products, and prepared animal feeds"', add
label define sv07a_ind3dig_lbl 154 `"Manufacture of other food products"', add
label define sv07a_ind3dig_lbl 155 `"Manufacture of beverages"', add
label define sv07a_ind3dig_lbl 160 `"Manufacture of tobacco products"', add
label define sv07a_ind3dig_lbl 171 `"Spinning, weaving and finishing of textiles"', add
label define sv07a_ind3dig_lbl 172 `"Manufacture of other textiles"', add
label define sv07a_ind3dig_lbl 173 `"Manufacture of knitted and crocheted fabrics and articles"', add
label define sv07a_ind3dig_lbl 181 `"Manufacture of wearing apparel, except fur apparel"', add
label define sv07a_ind3dig_lbl 182 `"Dressing and dyeing of fur; manufacture of articles of fur"', add
label define sv07a_ind3dig_lbl 191 `"Tanning and dressing of leather; manufacture of luggage, handbags, saddlery and harness"', add
label define sv07a_ind3dig_lbl 192 `"Manufacture of footwear"', add
label define sv07a_ind3dig_lbl 201 `"Sawmilling and planing of wood"', add
label define sv07a_ind3dig_lbl 202 `"Manufacture of products of wood, cork, straw and plaiting materials"', add
label define sv07a_ind3dig_lbl 210 `"Manufacture of paper and paper products"', add
label define sv07a_ind3dig_lbl 221 `"Publishing"', add
label define sv07a_ind3dig_lbl 222 `"Printing and service activities related to printing"', add
label define sv07a_ind3dig_lbl 223 `"Reproduction of recorded media"', add
label define sv07a_ind3dig_lbl 232 `"Manufacture of refined petroleum products"', add
label define sv07a_ind3dig_lbl 241 `"Manufacture of basic chemicals"', add
label define sv07a_ind3dig_lbl 242 `"Manufacture of other chemical products"', add
label define sv07a_ind3dig_lbl 251 `"Manufacture of rubber products"', add
label define sv07a_ind3dig_lbl 252 `"Manufacture of plastics products"', add
label define sv07a_ind3dig_lbl 261 `"Manufacture of glass and glass products"', add
label define sv07a_ind3dig_lbl 269 `"Manufacture of non-metallic mineral products nec"', add
label define sv07a_ind3dig_lbl 271 `"Manufacture of basic iron and steel"', add
label define sv07a_ind3dig_lbl 272 `"Manufacture of basic precious and non-ferrous metals"', add
label define sv07a_ind3dig_lbl 273 `"Casting of metals"', add
label define sv07a_ind3dig_lbl 281 `"Manufacture of structural metal products, tanks, reservoirs and steam generators"', add
label define sv07a_ind3dig_lbl 289 `"Manufacture of other fabricated metal products; metalworking service activities"', add
label define sv07a_ind3dig_lbl 291 `"Manufacture of general-purpose machinery"', add
label define sv07a_ind3dig_lbl 292 `"Manufacture of special-purpose machinery"', add
label define sv07a_ind3dig_lbl 293 `"Manufacture of domestic appliances nec"', add
label define sv07a_ind3dig_lbl 300 `"Manufacture of office, accounting and computing machinery"', add
label define sv07a_ind3dig_lbl 311 `"Manufacture of electric motors, generators and transformers"', add
label define sv07a_ind3dig_lbl 312 `"Manufacture of electricity distribution and control apparatus"', add
label define sv07a_ind3dig_lbl 313 `"Manufacture of insulated wire and cable"', add
label define sv07a_ind3dig_lbl 314 `"Manufacture of accumulators, primary cells and primary batteries"', add
label define sv07a_ind3dig_lbl 315 `"Manufacture of electric lamps and lighting equipment"', add
label define sv07a_ind3dig_lbl 319 `"Manufacture of other electrical equipment nec"', add
label define sv07a_ind3dig_lbl 321 `"Manufacture of electronic valves and tubes and other electronic components"', add
label define sv07a_ind3dig_lbl 322 `"Manufacture of television and radio transmitters and apparatus for telephones and line telegraphy"', add
label define sv07a_ind3dig_lbl 323 `"Manufacture of television and radio receivers, sound or video recording or reproducing apparatus, and associated goods"', add
label define sv07a_ind3dig_lbl 331 `"Manufacture of medical appliances and instruments and appliances for measuring, checking, testing, navigating and other purposes, except optical instruments"', add
label define sv07a_ind3dig_lbl 332 `"Manufacture of optical instruments and photographic equipment"', add
label define sv07a_ind3dig_lbl 341 `"Manufacture of motor vehicles"', add
label define sv07a_ind3dig_lbl 342 `"Manufacture of bodies (coachwork) for motor vehicles; manufacture of trailers and semi-trailers"', add
label define sv07a_ind3dig_lbl 343 `"Manufacture of parts and accessories for motor vehicles and their engines"', add
label define sv07a_ind3dig_lbl 351 `"Building and repairing of ships and boats"', add
label define sv07a_ind3dig_lbl 352 `"Manufacture of railway and tramway locomotives and rolling stock"', add
label define sv07a_ind3dig_lbl 353 `"Manufacture of aircraft and spacecraft"', add
label define sv07a_ind3dig_lbl 359 `"Manufacture of transport equipment nec"', add
label define sv07a_ind3dig_lbl 361 `"Manufacture of furniture"', add
label define sv07a_ind3dig_lbl 369 `"Manufacturing nec"', add
label define sv07a_ind3dig_lbl 371 `"Recycling of metal waste and scrap"', add
label define sv07a_ind3dig_lbl 372 `"Recycling of non-metal waste and scrap"', add
label define sv07a_ind3dig_lbl 401 `"Production, transmission and distribution of electricity"', add
label define sv07a_ind3dig_lbl 410 `"Collection, purification and distribution of water"', add
label define sv07a_ind3dig_lbl 451 `"Site preparation"', add
label define sv07a_ind3dig_lbl 452 `"Building of complete constructions or parts thereof; civil engineering"', add
label define sv07a_ind3dig_lbl 453 `"Building installation"', add
label define sv07a_ind3dig_lbl 454 `"Building completion"', add
label define sv07a_ind3dig_lbl 455 `"Renting of construction or demolition equipment with operator"', add
label define sv07a_ind3dig_lbl 501 `"Sale of motor vehicles"', add
label define sv07a_ind3dig_lbl 502 `"Maintenance and repair of motor vehicles"', add
label define sv07a_ind3dig_lbl 503 `"Sale of motor vehicle parts and accessories"', add
label define sv07a_ind3dig_lbl 504 `"Sale, maintenance and repair of motorcycles and related parts and accessories"', add
label define sv07a_ind3dig_lbl 505 `"Retail sale of automotive fuel"', add
label define sv07a_ind3dig_lbl 511 `"Wholesale on a fee or contract basis"', add
label define sv07a_ind3dig_lbl 512 `"Wholesale of agricultural raw materials, live animals, food, beverages and tobacco"', add
label define sv07a_ind3dig_lbl 513 `"Wholesale of household goods"', add
label define sv07a_ind3dig_lbl 514 `"Wholesale of non-agricultural intermediate products, waste and scrap"', add
label define sv07a_ind3dig_lbl 515 `"Wholesale of machinery, equipment and supplies"', add
label define sv07a_ind3dig_lbl 519 `"Other wholesale"', add
label define sv07a_ind3dig_lbl 521 `"Non-specialized retail trade in stores"', add
label define sv07a_ind3dig_lbl 522 `"Retail sale of food, beverages and tobacco in specialized stores"', add
label define sv07a_ind3dig_lbl 523 `"Other retail trade of new goods in specialized stores"', add
label define sv07a_ind3dig_lbl 524 `"Retail sale of second-hand goods in stores"', add
label define sv07a_ind3dig_lbl 525 `"Retail trade not in stores"', add
label define sv07a_ind3dig_lbl 526 `"Repair of personal and household goods"', add
label define sv07a_ind3dig_lbl 551 `"Hotels; camping sites and other provision of short-stay accommodation"', add
label define sv07a_ind3dig_lbl 552 `"Restaurants, bars and canteens"', add
label define sv07a_ind3dig_lbl 601 `"Transport via railways"', add
label define sv07a_ind3dig_lbl 602 `"Other land transport"', add
label define sv07a_ind3dig_lbl 611 `"Sea and coastal water transport"', add
label define sv07a_ind3dig_lbl 612 `"Inland water transport"', add
label define sv07a_ind3dig_lbl 621 `"Scheduled air transport"', add
label define sv07a_ind3dig_lbl 622 `"Non-scheduled air transport"', add
label define sv07a_ind3dig_lbl 630 `"Supporting and auxiliary transport activities; activities of travel agencies"', add
label define sv07a_ind3dig_lbl 641 `"Post and courier activities"', add
label define sv07a_ind3dig_lbl 642 `"Telecommunications"', add
label define sv07a_ind3dig_lbl 651 `"Monetary intermediation"', add
label define sv07a_ind3dig_lbl 659 `"Other financial intermediation"', add
label define sv07a_ind3dig_lbl 660 `"Insurance and pension funding, except compulsory social security"', add
label define sv07a_ind3dig_lbl 671 `"Activities auxiliary to financial intermediation, except insurance and pension funding"', add
label define sv07a_ind3dig_lbl 672 `"Activities auxiliary to insurance and pension funding"', add
label define sv07a_ind3dig_lbl 701 `"Real estate activities with own or leased property"', add
label define sv07a_ind3dig_lbl 702 `"Real estate activities on a fee or contract basis"', add
label define sv07a_ind3dig_lbl 711 `"Renting of transport equipment"', add
label define sv07a_ind3dig_lbl 712 `"Renting of other machinery and equipment"', add
label define sv07a_ind3dig_lbl 713 `"Renting of personal and household goods nec"', add
label define sv07a_ind3dig_lbl 721 `"Hardware consultancy"', add
label define sv07a_ind3dig_lbl 722 `"Software publishing, consultancy and supply"', add
label define sv07a_ind3dig_lbl 723 `"Data processing"', add
label define sv07a_ind3dig_lbl 724 `"Database activities and online distribution of electronic content"', add
label define sv07a_ind3dig_lbl 725 `"Maintenance and repair of office, accounting and computing machinery"', add
label define sv07a_ind3dig_lbl 729 `"Other computer-related activities"', add
label define sv07a_ind3dig_lbl 731 `"Research and experimental development on natural sciences and engineering (NSE)"', add
label define sv07a_ind3dig_lbl 732 `"Research and experimental development on social sciences and humanities (SSH)"', add
label define sv07a_ind3dig_lbl 741 `"Legal, accounting, bookkeeping and auditing activities; tax consultancy; market research and public opinion polling; business and management consultancy"', add
label define sv07a_ind3dig_lbl 742 `"Architectural, engineering and other technical activities"', add
label define sv07a_ind3dig_lbl 743 `"Advertising"', add
label define sv07a_ind3dig_lbl 749 `"Business activities nec"', add
label define sv07a_ind3dig_lbl 751 `"Administration of the State and the economic and social policy of the community"', add
label define sv07a_ind3dig_lbl 752 `"Provision of services to the community as a whole"', add
label define sv07a_ind3dig_lbl 753 `"Compulsory social security activities"', add
label define sv07a_ind3dig_lbl 801 `"Primary education"', add
label define sv07a_ind3dig_lbl 802 `"Secondary education"', add
label define sv07a_ind3dig_lbl 803 `"Higher education"', add
label define sv07a_ind3dig_lbl 809 `"Other education"', add
label define sv07a_ind3dig_lbl 851 `"Human health activities"', add
label define sv07a_ind3dig_lbl 852 `"Veterinary activities"', add
label define sv07a_ind3dig_lbl 853 `"Social work activities"', add
label define sv07a_ind3dig_lbl 900 `"Sewage and refuse disposal, sanitation and similar activities"', add
label define sv07a_ind3dig_lbl 911 `"Activities of business, employers and professional organizations"', add
label define sv07a_ind3dig_lbl 912 `"Activities of trade unions"', add
label define sv07a_ind3dig_lbl 919 `"Activities of other membership organizations"', add
label define sv07a_ind3dig_lbl 921 `"Motion picture, radio, television and other entertainment activities"', add
label define sv07a_ind3dig_lbl 922 `"News agency activities"', add
label define sv07a_ind3dig_lbl 923 `"Library, archives, museums and other cultural activities"', add
label define sv07a_ind3dig_lbl 924 `"Sporting and other recreational activities"', add
label define sv07a_ind3dig_lbl 930 `"Other service activities"', add
label define sv07a_ind3dig_lbl 950 `"Activities of private households as employers of domestic staff"', add
label define sv07a_ind3dig_lbl 990 `"Extraterritorial organizations and bodies"', add
label define sv07a_ind3dig_lbl 999 `"NIU (not in universe)"', add
label values sv07a_ind3dig sv07a_ind3dig_lbl

label define sv07a_occ3dig_lbl 011 `"Armed forces"'
label define sv07a_occ3dig_lbl 111 `"Legislators"', add
label define sv07a_occ3dig_lbl 112 `"Senior government officials"', add
label define sv07a_occ3dig_lbl 113 `"Traditional chiefs and heads of villages"', add
label define sv07a_occ3dig_lbl 121 `"Directors and chief executives"', add
label define sv07a_occ3dig_lbl 122 `"Production and operations department managers"', add
label define sv07a_occ3dig_lbl 123 `"Other department managers"', add
label define sv07a_occ3dig_lbl 131 `"General managers"', add
label define sv07a_occ3dig_lbl 211 `"Physicists, chemists and related professionals"', add
label define sv07a_occ3dig_lbl 212 `"Mathematicians, statisticians and related professionals"', add
label define sv07a_occ3dig_lbl 213 `"Computing professionals"', add
label define sv07a_occ3dig_lbl 214 `"Architects, engineers and related professionals"', add
label define sv07a_occ3dig_lbl 221 `"Life science professionals"', add
label define sv07a_occ3dig_lbl 222 `"Health professionals (except nursing)"', add
label define sv07a_occ3dig_lbl 223 `"Nursing and midwifery professionals"', add
label define sv07a_occ3dig_lbl 231 `"College, university and higher education teaching professionals"', add
label define sv07a_occ3dig_lbl 232 `"Secondary education teaching professionals"', add
label define sv07a_occ3dig_lbl 233 `"Primary and pre-primary education teaching professionals"', add
label define sv07a_occ3dig_lbl 234 `"Special education teaching professionals"', add
label define sv07a_occ3dig_lbl 235 `"Other teaching professionals"', add
label define sv07a_occ3dig_lbl 241 `"Business professionals"', add
label define sv07a_occ3dig_lbl 242 `"Legal professionals"', add
label define sv07a_occ3dig_lbl 243 `"Archivists, librarians and related information professionals"', add
label define sv07a_occ3dig_lbl 244 `"Social science and related professionals"', add
label define sv07a_occ3dig_lbl 245 `"Writers and creative or performing artists"', add
label define sv07a_occ3dig_lbl 246 `"Religious professionals"', add
label define sv07a_occ3dig_lbl 311 `"Physical and engineering science technicians"', add
label define sv07a_occ3dig_lbl 312 `"Computer associate professionals"', add
label define sv07a_occ3dig_lbl 313 `"Optical and electronic equipment operators"', add
label define sv07a_occ3dig_lbl 314 `"Ship and aircraft controllers and technicians"', add
label define sv07a_occ3dig_lbl 315 `"Safety and quality inspectors"', add
label define sv07a_occ3dig_lbl 321 `"Life science technicians and related associate professionals"', add
label define sv07a_occ3dig_lbl 322 `"Modern health associate professionals (except nursing)"', add
label define sv07a_occ3dig_lbl 323 `"Nursing and midwifery associate professionals"', add
label define sv07a_occ3dig_lbl 324 `"Traditional medicine practitioners and faith healers"', add
label define sv07a_occ3dig_lbl 331 `"Primary education teaching associate professionals"', add
label define sv07a_occ3dig_lbl 332 `"Pre-primary education teaching associate professionals"', add
label define sv07a_occ3dig_lbl 333 `"Special education teaching associate professionals"', add
label define sv07a_occ3dig_lbl 334 `"Other teaching associate professionals"', add
label define sv07a_occ3dig_lbl 341 `"Finance and sales associate professionals"', add
label define sv07a_occ3dig_lbl 342 `"Business services agents and trade brokers"', add
label define sv07a_occ3dig_lbl 343 `"Administrative associate professionals"', add
label define sv07a_occ3dig_lbl 344 `"Customs, tax and related government associate professionals"', add
label define sv07a_occ3dig_lbl 345 `"Police inspectors and detectives"', add
label define sv07a_occ3dig_lbl 346 `"Social work associate professionals"', add
label define sv07a_occ3dig_lbl 347 `"Artistic, entertainment and sports associate professionals"', add
label define sv07a_occ3dig_lbl 348 `"Religious associate professionals"', add
label define sv07a_occ3dig_lbl 411 `"Secretaries and keyboard-operating clerks"', add
label define sv07a_occ3dig_lbl 412 `"Numerical clerks"', add
label define sv07a_occ3dig_lbl 413 `"Material-recording and transport clerks"', add
label define sv07a_occ3dig_lbl 414 `"Library, mail and related clerks"', add
label define sv07a_occ3dig_lbl 419 `"Other office clerks"', add
label define sv07a_occ3dig_lbl 421 `"Cashiers, tellers and related clerks"', add
label define sv07a_occ3dig_lbl 422 `"Client information clerks"', add
label define sv07a_occ3dig_lbl 511 `"Travel attendants and related workers"', add
label define sv07a_occ3dig_lbl 512 `"Housekeeping and restaurant services workers"', add
label define sv07a_occ3dig_lbl 513 `"Personal care and related workers"', add
label define sv07a_occ3dig_lbl 514 `"Other personal services workers"', add
label define sv07a_occ3dig_lbl 516 `"Protective services workers"', add
label define sv07a_occ3dig_lbl 521 `"Fashion and other models"', add
label define sv07a_occ3dig_lbl 522 `"Shop salespersons and demonstrators"', add
label define sv07a_occ3dig_lbl 523 `"Stall and market salespersons"', add
label define sv07a_occ3dig_lbl 611 `"Market gardeners and crop growers"', add
label define sv07a_occ3dig_lbl 612 `"Market-oriented animal producers and related workers"', add
label define sv07a_occ3dig_lbl 613 `"Market-oriented crop and animal producers"', add
label define sv07a_occ3dig_lbl 614 `"Forestry and related workers"', add
label define sv07a_occ3dig_lbl 615 `"Fishery workers, hunters and trappers"', add
label define sv07a_occ3dig_lbl 621 `"Subsistence agricultural and fishery workers"', add
label define sv07a_occ3dig_lbl 711 `"Miners, shotfirers, stone cutters and carvers"', add
label define sv07a_occ3dig_lbl 712 `"Building frame and related trades workers"', add
label define sv07a_occ3dig_lbl 713 `"Building finishers and related trades workers"', add
label define sv07a_occ3dig_lbl 714 `"Painters, building structure cleaners and related trades workers"', add
label define sv07a_occ3dig_lbl 721 `"Metal moulders, welders, sheet-metal workers, structural- metal preparers, and related trades workers"', add
label define sv07a_occ3dig_lbl 722 `"Blacksmiths, tool-makers and related trades workers"', add
label define sv07a_occ3dig_lbl 723 `"Machinery mechanics and fitters"', add
label define sv07a_occ3dig_lbl 724 `"Electrical and electronic equipment mechanics and fitters"', add
label define sv07a_occ3dig_lbl 731 `"Precision workers in metal and related materials"', add
label define sv07a_occ3dig_lbl 732 `"Potters, glass-blowers, -moulders, -cutters, glass etchers, glass painters, ceramics painters, painters of other materials, and related workers"', add
label define sv07a_occ3dig_lbl 733 `"Handicraft workers in wood, textile, leather and related materials"', add
label define sv07a_occ3dig_lbl 734 `"Compositors, typesetters, stereotypists, electrotypists, printing engravers and etchers, photography operators, bookbinders, screen printers and related workers"', add
label define sv07a_occ3dig_lbl 741 `"Food processing and related trades workers"', add
label define sv07a_occ3dig_lbl 742 `"Wood treaters, cabinet-makers and related trades workers"', add
label define sv07a_occ3dig_lbl 743 `"Textile, garment and related trades workers"', add
label define sv07a_occ3dig_lbl 744 `"Pelt, leather and shoemaking trades workers"', add
label define sv07a_occ3dig_lbl 811 `"Mining- and mineral-processing-plant operators"', add
label define sv07a_occ3dig_lbl 812 `"Metal-processing-plant operators"', add
label define sv07a_occ3dig_lbl 813 `"Glass, ceramics and related plant operators"', add
label define sv07a_occ3dig_lbl 814 `"Wood-processing- and papermaking-plant operators"', add
label define sv07a_occ3dig_lbl 815 `"Chemical-processing-plant operators"', add
label define sv07a_occ3dig_lbl 816 `"Power-production and related plant operators"', add
label define sv07a_occ3dig_lbl 821 `"Metal- and mineral-products machine operators"', add
label define sv07a_occ3dig_lbl 822 `"Chemical-products machine operators"', add
label define sv07a_occ3dig_lbl 823 `"Rubber- and plastic-products machine operators"', add
label define sv07a_occ3dig_lbl 824 `"Wood-products machine operators"', add
label define sv07a_occ3dig_lbl 825 `"Printing-, binding- and paper-products machine operators"', add
label define sv07a_occ3dig_lbl 826 `"Textile-, fur- and leather-products machine operators"', add
label define sv07a_occ3dig_lbl 827 `"Food and related products machine operators"', add
label define sv07a_occ3dig_lbl 828 `"Assemblers"', add
label define sv07a_occ3dig_lbl 829 `"Other machine operators and assemblers"', add
label define sv07a_occ3dig_lbl 831 `"Railway engine machinists, brakers, and switch operators"', add
label define sv07a_occ3dig_lbl 832 `"Motor-vehicle drivers"', add
label define sv07a_occ3dig_lbl 833 `"Agricultural and other mobile-plant operators"', add
label define sv07a_occ3dig_lbl 834 `"Ships' deck crews and related workers"', add
label define sv07a_occ3dig_lbl 911 `"Street vendors and related workers"', add
label define sv07a_occ3dig_lbl 912 `"Shoe cleaning and other street services elementary occupations"', add
label define sv07a_occ3dig_lbl 913 `"Domestic and related helpers, cleaners and launderers"', add
label define sv07a_occ3dig_lbl 914 `"Building caretakers, window and related cleaners"', add
label define sv07a_occ3dig_lbl 915 `"Messengers, porters, doorkeepers and related workers"', add
label define sv07a_occ3dig_lbl 916 `"Garbage collectors and related labourers"', add
label define sv07a_occ3dig_lbl 921 `"Agricultural, fishery and related labourers"', add
label define sv07a_occ3dig_lbl 931 `"Mining and construction labourers"', add
label define sv07a_occ3dig_lbl 932 `"Manufacturing labourers"', add
label define sv07a_occ3dig_lbl 933 `"Transport labourers and freight handlers"', add
label define sv07a_occ3dig_lbl 999 `"NIU (not in universe)"', add
label values sv07a_occ3dig sv07a_occ3dig_lbl

label define sv07a_classwk_lbl 1 `"Employee or worker in the public sector"'
label define sv07a_classwk_lbl 2 `"Employee or worker in the private sector"', add
label define sv07a_classwk_lbl 3 `"Owner or employer"', add
label define sv07a_classwk_lbl 4 `"Family worker without pay"', add
label define sv07a_classwk_lbl 5 `"Non-family worker without pay"', add
label define sv07a_classwk_lbl 6 `"Self-employed worker"', add
label define sv07a_classwk_lbl 7 `"Domestic worker"', add
label define sv07a_classwk_lbl 9 `"NIU (not in universe)"', add
label values sv07a_classwk sv07a_classwk_lbl

label define sv07a_hrswork_lbl 01 `"1"'
label define sv07a_hrswork_lbl 02 `"2"', add
label define sv07a_hrswork_lbl 03 `"3"', add
label define sv07a_hrswork_lbl 04 `"4"', add
label define sv07a_hrswork_lbl 05 `"5"', add
label define sv07a_hrswork_lbl 06 `"6"', add
label define sv07a_hrswork_lbl 07 `"7"', add
label define sv07a_hrswork_lbl 08 `"8"', add
label define sv07a_hrswork_lbl 09 `"9"', add
label define sv07a_hrswork_lbl 10 `"10"', add
label define sv07a_hrswork_lbl 11 `"11"', add
label define sv07a_hrswork_lbl 12 `"12"', add
label define sv07a_hrswork_lbl 13 `"13"', add
label define sv07a_hrswork_lbl 14 `"14"', add
label define sv07a_hrswork_lbl 15 `"15"', add
label define sv07a_hrswork_lbl 16 `"16"', add
label define sv07a_hrswork_lbl 17 `"17"', add
label define sv07a_hrswork_lbl 18 `"18"', add
label define sv07a_hrswork_lbl 19 `"19"', add
label define sv07a_hrswork_lbl 20 `"20"', add
label define sv07a_hrswork_lbl 21 `"21"', add
label define sv07a_hrswork_lbl 22 `"22"', add
label define sv07a_hrswork_lbl 23 `"23"', add
label define sv07a_hrswork_lbl 24 `"24"', add
label define sv07a_hrswork_lbl 25 `"25"', add
label define sv07a_hrswork_lbl 26 `"26"', add
label define sv07a_hrswork_lbl 27 `"27"', add
label define sv07a_hrswork_lbl 28 `"28"', add
label define sv07a_hrswork_lbl 29 `"29"', add
label define sv07a_hrswork_lbl 30 `"30"', add
label define sv07a_hrswork_lbl 31 `"31"', add
label define sv07a_hrswork_lbl 32 `"32"', add
label define sv07a_hrswork_lbl 33 `"33"', add
label define sv07a_hrswork_lbl 34 `"34"', add
label define sv07a_hrswork_lbl 35 `"35"', add
label define sv07a_hrswork_lbl 36 `"36"', add
label define sv07a_hrswork_lbl 37 `"37"', add
label define sv07a_hrswork_lbl 38 `"38"', add
label define sv07a_hrswork_lbl 39 `"39"', add
label define sv07a_hrswork_lbl 40 `"40"', add
label define sv07a_hrswork_lbl 41 `"41"', add
label define sv07a_hrswork_lbl 42 `"42"', add
label define sv07a_hrswork_lbl 43 `"43"', add
label define sv07a_hrswork_lbl 44 `"44"', add
label define sv07a_hrswork_lbl 45 `"45"', add
label define sv07a_hrswork_lbl 46 `"46"', add
label define sv07a_hrswork_lbl 47 `"47"', add
label define sv07a_hrswork_lbl 48 `"48"', add
label define sv07a_hrswork_lbl 49 `"49"', add
label define sv07a_hrswork_lbl 50 `"50"', add
label define sv07a_hrswork_lbl 51 `"51"', add
label define sv07a_hrswork_lbl 52 `"52"', add
label define sv07a_hrswork_lbl 53 `"53"', add
label define sv07a_hrswork_lbl 54 `"54"', add
label define sv07a_hrswork_lbl 55 `"55"', add
label define sv07a_hrswork_lbl 56 `"56"', add
label define sv07a_hrswork_lbl 57 `"57"', add
label define sv07a_hrswork_lbl 58 `"58"', add
label define sv07a_hrswork_lbl 59 `"59"', add
label define sv07a_hrswork_lbl 60 `"60"', add
label define sv07a_hrswork_lbl 61 `"61"', add
label define sv07a_hrswork_lbl 62 `"62"', add
label define sv07a_hrswork_lbl 63 `"63"', add
label define sv07a_hrswork_lbl 64 `"64"', add
label define sv07a_hrswork_lbl 65 `"65"', add
label define sv07a_hrswork_lbl 66 `"66"', add
label define sv07a_hrswork_lbl 67 `"67"', add
label define sv07a_hrswork_lbl 68 `"68"', add
label define sv07a_hrswork_lbl 69 `"69"', add
label define sv07a_hrswork_lbl 70 `"70"', add
label define sv07a_hrswork_lbl 71 `"71"', add
label define sv07a_hrswork_lbl 72 `"72"', add
label define sv07a_hrswork_lbl 73 `"73"', add
label define sv07a_hrswork_lbl 74 `"74"', add
label define sv07a_hrswork_lbl 75 `"75"', add
label define sv07a_hrswork_lbl 76 `"76"', add
label define sv07a_hrswork_lbl 77 `"77"', add
label define sv07a_hrswork_lbl 78 `"78"', add
label define sv07a_hrswork_lbl 79 `"79"', add
label define sv07a_hrswork_lbl 80 `"80"', add
label define sv07a_hrswork_lbl 81 `"81"', add
label define sv07a_hrswork_lbl 82 `"82"', add
label define sv07a_hrswork_lbl 83 `"83"', add
label define sv07a_hrswork_lbl 84 `"84"', add
label define sv07a_hrswork_lbl 85 `"85"', add
label define sv07a_hrswork_lbl 86 `"86"', add
label define sv07a_hrswork_lbl 87 `"87"', add
label define sv07a_hrswork_lbl 88 `"88"', add
label define sv07a_hrswork_lbl 89 `"89"', add
label define sv07a_hrswork_lbl 90 `"90"', add
label define sv07a_hrswork_lbl 91 `"91"', add
label define sv07a_hrswork_lbl 92 `"92"', add
label define sv07a_hrswork_lbl 93 `"93"', add
label define sv07a_hrswork_lbl 94 `"94"', add
label define sv07a_hrswork_lbl 95 `"95"', add
label define sv07a_hrswork_lbl 96 `"96"', add
label define sv07a_hrswork_lbl 97 `"97"', add
label define sv07a_hrswork_lbl 98 `"98+"', add
label define sv07a_hrswork_lbl 99 `"NIU (not in universe)"', add
label values sv07a_hrswork sv07a_hrswork_lbl

label define sv07a_workloc_lbl 0 `"Somewhere else"'
label define sv07a_workloc_lbl 1 `"Here"', add
label define sv07a_workloc_lbl 9 `"NIU (not in universe)"', add
label values sv07a_workloc sv07a_workloc_lbl

label define sv07a_livebth_lbl 1 `"Yes"'
label define sv07a_livebth_lbl 2 `"No"', add
label define sv07a_livebth_lbl 9 `"NIU (not in universe)"', add
label values sv07a_livebth sv07a_livebth_lbl

label define sv07a_chbornm_lbl 00 `"0"'
label define sv07a_chbornm_lbl 01 `"1"', add
label define sv07a_chbornm_lbl 02 `"2"', add
label define sv07a_chbornm_lbl 03 `"3"', add
label define sv07a_chbornm_lbl 04 `"4"', add
label define sv07a_chbornm_lbl 05 `"5"', add
label define sv07a_chbornm_lbl 06 `"6"', add
label define sv07a_chbornm_lbl 07 `"7"', add
label define sv07a_chbornm_lbl 08 `"8"', add
label define sv07a_chbornm_lbl 09 `"9"', add
label define sv07a_chbornm_lbl 10 `"10"', add
label define sv07a_chbornm_lbl 11 `"11"', add
label define sv07a_chbornm_lbl 12 `"12+"', add
label define sv07a_chbornm_lbl 98 `"Unknown"', add
label define sv07a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values sv07a_chbornm sv07a_chbornm_lbl

label define sv07a_chbornf_lbl 00 `"0"'
label define sv07a_chbornf_lbl 01 `"1"', add
label define sv07a_chbornf_lbl 02 `"2"', add
label define sv07a_chbornf_lbl 03 `"3"', add
label define sv07a_chbornf_lbl 04 `"4"', add
label define sv07a_chbornf_lbl 05 `"5"', add
label define sv07a_chbornf_lbl 06 `"6"', add
label define sv07a_chbornf_lbl 07 `"7"', add
label define sv07a_chbornf_lbl 08 `"8"', add
label define sv07a_chbornf_lbl 09 `"9"', add
label define sv07a_chbornf_lbl 10 `"10"', add
label define sv07a_chbornf_lbl 11 `"11"', add
label define sv07a_chbornf_lbl 12 `"12+"', add
label define sv07a_chbornf_lbl 98 `"Unknown"', add
label define sv07a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values sv07a_chbornf sv07a_chbornf_lbl

label define sv07a_chlvhome_lbl 00 `"0"'
label define sv07a_chlvhome_lbl 01 `"1"', add
label define sv07a_chlvhome_lbl 02 `"2"', add
label define sv07a_chlvhome_lbl 03 `"3"', add
label define sv07a_chlvhome_lbl 04 `"4"', add
label define sv07a_chlvhome_lbl 05 `"5"', add
label define sv07a_chlvhome_lbl 06 `"6"', add
label define sv07a_chlvhome_lbl 07 `"7"', add
label define sv07a_chlvhome_lbl 08 `"8"', add
label define sv07a_chlvhome_lbl 09 `"9"', add
label define sv07a_chlvhome_lbl 10 `"10"', add
label define sv07a_chlvhome_lbl 11 `"11"', add
label define sv07a_chlvhome_lbl 12 `"12+"', add
label define sv07a_chlvhome_lbl 98 `"Unknown"', add
label define sv07a_chlvhome_lbl 99 `"NIU (not in universe)"', add
label values sv07a_chlvhome sv07a_chlvhome_lbl

label define sv07a_chdead_lbl 00 `"0"'
label define sv07a_chdead_lbl 01 `"1"', add
label define sv07a_chdead_lbl 02 `"2"', add
label define sv07a_chdead_lbl 03 `"3"', add
label define sv07a_chdead_lbl 04 `"4"', add
label define sv07a_chdead_lbl 05 `"5"', add
label define sv07a_chdead_lbl 06 `"6"', add
label define sv07a_chdead_lbl 07 `"7"', add
label define sv07a_chdead_lbl 08 `"8"', add
label define sv07a_chdead_lbl 09 `"9"', add
label define sv07a_chdead_lbl 10 `"10"', add
label define sv07a_chdead_lbl 11 `"11"', add
label define sv07a_chdead_lbl 12 `"12+"', add
label define sv07a_chdead_lbl 98 `"Unknown"', add
label define sv07a_chdead_lbl 99 `"NIU (not in universe)"', add
label values sv07a_chdead sv07a_chdead_lbl

label define sv07a_lstbmo_lbl 01 `"January"'
label define sv07a_lstbmo_lbl 02 `"February"', add
label define sv07a_lstbmo_lbl 03 `"March"', add
label define sv07a_lstbmo_lbl 04 `"April"', add
label define sv07a_lstbmo_lbl 05 `"May"', add
label define sv07a_lstbmo_lbl 06 `"June"', add
label define sv07a_lstbmo_lbl 07 `"July"', add
label define sv07a_lstbmo_lbl 08 `"August"', add
label define sv07a_lstbmo_lbl 09 `"September"', add
label define sv07a_lstbmo_lbl 10 `"October"', add
label define sv07a_lstbmo_lbl 11 `"November"', add
label define sv07a_lstbmo_lbl 12 `"December"', add
label define sv07a_lstbmo_lbl 98 `"Unknown"', add
label define sv07a_lstbmo_lbl 99 `"NIU (not in universe)"', add
label values sv07a_lstbmo sv07a_lstbmo_lbl

label define sv07a_lstbyr_lbl 1940 `"1940 or earlier"'
label define sv07a_lstbyr_lbl 1941 `"1941"', add
label define sv07a_lstbyr_lbl 1942 `"1942"', add
label define sv07a_lstbyr_lbl 1943 `"1943"', add
label define sv07a_lstbyr_lbl 1944 `"1944"', add
label define sv07a_lstbyr_lbl 1945 `"1945"', add
label define sv07a_lstbyr_lbl 1946 `"1946"', add
label define sv07a_lstbyr_lbl 1947 `"1947"', add
label define sv07a_lstbyr_lbl 1948 `"1948"', add
label define sv07a_lstbyr_lbl 1949 `"1949"', add
label define sv07a_lstbyr_lbl 1950 `"1950"', add
label define sv07a_lstbyr_lbl 1951 `"1951"', add
label define sv07a_lstbyr_lbl 1952 `"1952"', add
label define sv07a_lstbyr_lbl 1953 `"1953"', add
label define sv07a_lstbyr_lbl 1954 `"1954"', add
label define sv07a_lstbyr_lbl 1955 `"1955"', add
label define sv07a_lstbyr_lbl 1956 `"1956"', add
label define sv07a_lstbyr_lbl 1957 `"1957"', add
label define sv07a_lstbyr_lbl 1958 `"1958"', add
label define sv07a_lstbyr_lbl 1959 `"1959"', add
label define sv07a_lstbyr_lbl 1960 `"1960"', add
label define sv07a_lstbyr_lbl 1961 `"1961"', add
label define sv07a_lstbyr_lbl 1962 `"1962"', add
label define sv07a_lstbyr_lbl 1963 `"1963"', add
label define sv07a_lstbyr_lbl 1964 `"1964"', add
label define sv07a_lstbyr_lbl 1965 `"1965"', add
label define sv07a_lstbyr_lbl 1966 `"1966"', add
label define sv07a_lstbyr_lbl 1967 `"1967"', add
label define sv07a_lstbyr_lbl 1968 `"1968"', add
label define sv07a_lstbyr_lbl 1969 `"1969"', add
label define sv07a_lstbyr_lbl 1970 `"1970"', add
label define sv07a_lstbyr_lbl 1971 `"1971"', add
label define sv07a_lstbyr_lbl 1972 `"1972"', add
label define sv07a_lstbyr_lbl 1973 `"1973"', add
label define sv07a_lstbyr_lbl 1974 `"1974"', add
label define sv07a_lstbyr_lbl 1975 `"1975"', add
label define sv07a_lstbyr_lbl 1976 `"1976"', add
label define sv07a_lstbyr_lbl 1977 `"1977"', add
label define sv07a_lstbyr_lbl 1978 `"1978"', add
label define sv07a_lstbyr_lbl 1979 `"1979"', add
label define sv07a_lstbyr_lbl 1980 `"1980"', add
label define sv07a_lstbyr_lbl 1981 `"1981"', add
label define sv07a_lstbyr_lbl 1982 `"1982"', add
label define sv07a_lstbyr_lbl 1983 `"1983"', add
label define sv07a_lstbyr_lbl 1984 `"1984"', add
label define sv07a_lstbyr_lbl 1985 `"1985"', add
label define sv07a_lstbyr_lbl 1986 `"1986"', add
label define sv07a_lstbyr_lbl 1987 `"1987"', add
label define sv07a_lstbyr_lbl 1988 `"1988"', add
label define sv07a_lstbyr_lbl 1989 `"1989"', add
label define sv07a_lstbyr_lbl 1990 `"1990"', add
label define sv07a_lstbyr_lbl 1991 `"1991"', add
label define sv07a_lstbyr_lbl 1992 `"1992"', add
label define sv07a_lstbyr_lbl 1993 `"1993"', add
label define sv07a_lstbyr_lbl 1994 `"1994"', add
label define sv07a_lstbyr_lbl 1995 `"1995"', add
label define sv07a_lstbyr_lbl 1996 `"1996"', add
label define sv07a_lstbyr_lbl 1997 `"1997"', add
label define sv07a_lstbyr_lbl 1998 `"1998"', add
label define sv07a_lstbyr_lbl 1999 `"1999"', add
label define sv07a_lstbyr_lbl 2000 `"2000"', add
label define sv07a_lstbyr_lbl 2001 `"2001"', add
label define sv07a_lstbyr_lbl 2002 `"2002"', add
label define sv07a_lstbyr_lbl 2003 `"2003"', add
label define sv07a_lstbyr_lbl 2004 `"2004"', add
label define sv07a_lstbyr_lbl 2005 `"2005"', add
label define sv07a_lstbyr_lbl 2006 `"2006"', add
label define sv07a_lstbyr_lbl 2007 `"2007"', add
label define sv07a_lstbyr_lbl 9998 `"Unknown"', add
label define sv07a_lstbyr_lbl 9999 `"NIU (not in universe)"', add
label values sv07a_lstbyr sv07a_lstbyr_lbl

label define sv07a_lstchliv_lbl 1 `"Yes"'
label define sv07a_lstchliv_lbl 2 `"No"', add
label define sv07a_lstchliv_lbl 8 `"Unknown"', add
label define sv07a_lstchliv_lbl 9 `"NIU (not in universe)"', add
label values sv07a_lstchliv sv07a_lstchliv_lbl

label define sv07a_empstat_lbl 1 `"Employed"'
label define sv07a_empstat_lbl 2 `"Unemployed"', add
label define sv07a_empstat_lbl 3 `"Applying for work"', add
label define sv07a_empstat_lbl 4 `"Not active"', add
label define sv07a_empstat_lbl 9 `"NIU (not in universe)"', add
label values sv07a_empstat sv07a_empstat_lbl

label define sv07a_bthdept_lbl 01 `"Ahuachapán"'
label define sv07a_bthdept_lbl 02 `"Santa Ana"', add
label define sv07a_bthdept_lbl 03 `"Sonsonate"', add
label define sv07a_bthdept_lbl 04 `"Chalatenango"', add
label define sv07a_bthdept_lbl 05 `"La Libertad"', add
label define sv07a_bthdept_lbl 06 `"San Salvador"', add
label define sv07a_bthdept_lbl 07 `"Cuscatlán"', add
label define sv07a_bthdept_lbl 08 `"La Paz"', add
label define sv07a_bthdept_lbl 09 `"Cabañas"', add
label define sv07a_bthdept_lbl 10 `"San Vicente"', add
label define sv07a_bthdept_lbl 11 `"Usulután"', add
label define sv07a_bthdept_lbl 12 `"San Miguel"', add
label define sv07a_bthdept_lbl 13 `"Morazán"', add
label define sv07a_bthdept_lbl 14 `"La Unión"', add
label define sv07a_bthdept_lbl 99 `"NIU (not in universe)"', add
label values sv07a_bthdept sv07a_bthdept_lbl

label define sv07a_bthplace_lbl 1 `"In this municipality or town"'
label define sv07a_bthplace_lbl 2 `"In another place in this country"', add
label define sv07a_bthplace_lbl 3 `"In another country"', add
label values sv07a_bthplace sv07a_bthplace_lbl

label define sv07a_bthmun_lbl 0101 `"Ahuachapan"'
label define sv07a_bthmun_lbl 0102 `"Apaneca"', add
label define sv07a_bthmun_lbl 0103 `"Atiquizaya"', add
label define sv07a_bthmun_lbl 0104 `"Concepcion de Ataco"', add
label define sv07a_bthmun_lbl 0105 `"El Refugio"', add
label define sv07a_bthmun_lbl 0106 `"Guaymango"', add
label define sv07a_bthmun_lbl 0107 `"Jujutla"', add
label define sv07a_bthmun_lbl 0108 `"San Francisco Menendez"', add
label define sv07a_bthmun_lbl 0109 `"San Lorenzo"', add
label define sv07a_bthmun_lbl 0110 `"San Pedro Puxtla"', add
label define sv07a_bthmun_lbl 0111 `"Tacuba"', add
label define sv07a_bthmun_lbl 0112 `"Turin"', add
label define sv07a_bthmun_lbl 0201 `"Candelaria de la Frontera"', add
label define sv07a_bthmun_lbl 0202 `"Coatepeque"', add
label define sv07a_bthmun_lbl 0203 `"Chalchuapa"', add
label define sv07a_bthmun_lbl 0204 `"El Congo"', add
label define sv07a_bthmun_lbl 0205 `"El Porvenir"', add
label define sv07a_bthmun_lbl 0206 `"Masahuat"', add
label define sv07a_bthmun_lbl 0207 `"Metapan"', add
label define sv07a_bthmun_lbl 0208 `"San Antonio Pajonal"', add
label define sv07a_bthmun_lbl 0209 `"San Sebastian Salitrillo"', add
label define sv07a_bthmun_lbl 0210 `"Santa Ana"', add
label define sv07a_bthmun_lbl 0211 `"Santa Rosa Guachipilin"', add
label define sv07a_bthmun_lbl 0212 `"Santiago de la Frontera"', add
label define sv07a_bthmun_lbl 0213 `"Texistepeque"', add
label define sv07a_bthmun_lbl 0301 `"Acajutla"', add
label define sv07a_bthmun_lbl 0302 `"Armenia"', add
label define sv07a_bthmun_lbl 0303 `"Caluco"', add
label define sv07a_bthmun_lbl 0304 `"Cuisnahuat"', add
label define sv07a_bthmun_lbl 0305 `"Santa Isabel Ishuatan"', add
label define sv07a_bthmun_lbl 0306 `"Izalco"', add
label define sv07a_bthmun_lbl 0307 `"Juayua"', add
label define sv07a_bthmun_lbl 0308 `"Nahuizalco"', add
label define sv07a_bthmun_lbl 0309 `"Nahulingo"', add
label define sv07a_bthmun_lbl 0310 `"Salcoatitan"', add
label define sv07a_bthmun_lbl 0311 `"San Antonio del Monte"', add
label define sv07a_bthmun_lbl 0312 `"San Julian"', add
label define sv07a_bthmun_lbl 0313 `"Santa Catarina Masahuat"', add
label define sv07a_bthmun_lbl 0314 `"Santo Domingo de Guzman"', add
label define sv07a_bthmun_lbl 0315 `"Sonsonate"', add
label define sv07a_bthmun_lbl 0316 `"Sonzacate"', add
label define sv07a_bthmun_lbl 0401 `"Agua Caliente"', add
label define sv07a_bthmun_lbl 0402 `"Arcatao"', add
label define sv07a_bthmun_lbl 0403 `"Azacualpa"', add
label define sv07a_bthmun_lbl 0404 `"Citala"', add
label define sv07a_bthmun_lbl 0405 `"Comalapa"', add
label define sv07a_bthmun_lbl 0406 `"Concepcion Quezaltepeque"', add
label define sv07a_bthmun_lbl 0407 `"Chalatenango"', add
label define sv07a_bthmun_lbl 0408 `"Dulce Nombre de Maria"', add
label define sv07a_bthmun_lbl 0409 `"El Carrizal"', add
label define sv07a_bthmun_lbl 0410 `"El Paraiso"', add
label define sv07a_bthmun_lbl 0411 `"La Laguna"', add
label define sv07a_bthmun_lbl 0412 `"La Palma"', add
label define sv07a_bthmun_lbl 0413 `"La Reina"', add
label define sv07a_bthmun_lbl 0414 `"Las Vueltas"', add
label define sv07a_bthmun_lbl 0415 `"Nombre de Jesus"', add
label define sv07a_bthmun_lbl 0416 `"Nueva Concepcion"', add
label define sv07a_bthmun_lbl 0417 `"Nueva Trinidad"', add
label define sv07a_bthmun_lbl 0418 `"Ojos de Agua"', add
label define sv07a_bthmun_lbl 0419 `"Potonico"', add
label define sv07a_bthmun_lbl 0420 `"San Antonio de la Cruz"', add
label define sv07a_bthmun_lbl 0421 `"San Antonio los Ranchos"', add
label define sv07a_bthmun_lbl 0422 `"San Fernando"', add
label define sv07a_bthmun_lbl 0423 `"San Francisco Lempa"', add
label define sv07a_bthmun_lbl 0424 `"San Francisco Morazan"', add
label define sv07a_bthmun_lbl 0425 `"San Ignacio"', add
label define sv07a_bthmun_lbl 0426 `"San Isidro Labrador"', add
label define sv07a_bthmun_lbl 0427 `"Cancasque"', add
label define sv07a_bthmun_lbl 0428 `"Las Flores"', add
label define sv07a_bthmun_lbl 0429 `"San Luis del Carmen"', add
label define sv07a_bthmun_lbl 0430 `"San Miguel de Mercedes"', add
label define sv07a_bthmun_lbl 0431 `"San Rafael"', add
label define sv07a_bthmun_lbl 0432 `"Santa Rita"', add
label define sv07a_bthmun_lbl 0433 `"Tejutla"', add
label define sv07a_bthmun_lbl 0501 `"Antiguo Cuscatlan"', add
label define sv07a_bthmun_lbl 0502 `"Ciudad Arce"', add
label define sv07a_bthmun_lbl 0503 `"Colon"', add
label define sv07a_bthmun_lbl 0504 `"Comasagua"', add
label define sv07a_bthmun_lbl 0505 `"Chiltiupan"', add
label define sv07a_bthmun_lbl 0506 `"Huizucar"', add
label define sv07a_bthmun_lbl 0507 `"Jayaque"', add
label define sv07a_bthmun_lbl 0508 `"Jicalapa"', add
label define sv07a_bthmun_lbl 0509 `"La Libertad"', add
label define sv07a_bthmun_lbl 0510 `"Nuevo Cuscatlan"', add
label define sv07a_bthmun_lbl 0511 `"Santa Tecla"', add
label define sv07a_bthmun_lbl 0512 `"Quezaltepeque"', add
label define sv07a_bthmun_lbl 0513 `"Sacacoyo"', add
label define sv07a_bthmun_lbl 0514 `"San Jose Villanueva"', add
label define sv07a_bthmun_lbl 0515 `"San Juan Opico"', add
label define sv07a_bthmun_lbl 0516 `"San Matias"', add
label define sv07a_bthmun_lbl 0517 `"San Pablo Tacachico"', add
label define sv07a_bthmun_lbl 0518 `"Tamanique"', add
label define sv07a_bthmun_lbl 0519 `"Talnique"', add
label define sv07a_bthmun_lbl 0520 `"Teotepeque"', add
label define sv07a_bthmun_lbl 0521 `"Tepecoyo"', add
label define sv07a_bthmun_lbl 0522 `"Zaragoza"', add
label define sv07a_bthmun_lbl 0601 `"Aguilares"', add
label define sv07a_bthmun_lbl 0602 `"Apopa"', add
label define sv07a_bthmun_lbl 0603 `"Ayutuxtepeque"', add
label define sv07a_bthmun_lbl 0604 `"Cuscatancingo"', add
label define sv07a_bthmun_lbl 0605 `"El Paisnal"', add
label define sv07a_bthmun_lbl 0606 `"Guazapa"', add
label define sv07a_bthmun_lbl 0607 `"Ilopango"', add
label define sv07a_bthmun_lbl 0608 `"Mejicanos"', add
label define sv07a_bthmun_lbl 0609 `"Nejapa"', add
label define sv07a_bthmun_lbl 0610 `"Panchimalco"', add
label define sv07a_bthmun_lbl 0611 `"Rosario de Mora"', add
label define sv07a_bthmun_lbl 0612 `"San Marcos"', add
label define sv07a_bthmun_lbl 0613 `"San Martin"', add
label define sv07a_bthmun_lbl 0614 `"San Salvador"', add
label define sv07a_bthmun_lbl 0615 `"Santiago Texacuangos"', add
label define sv07a_bthmun_lbl 0616 `"Santo Tomas"', add
label define sv07a_bthmun_lbl 0617 `"Soyapango"', add
label define sv07a_bthmun_lbl 0618 `"Tonacatepeque"', add
label define sv07a_bthmun_lbl 0619 `"Ciudad Delgado"', add
label define sv07a_bthmun_lbl 0701 `"Candelaria"', add
label define sv07a_bthmun_lbl 0702 `"Cojutepeque"', add
label define sv07a_bthmun_lbl 0703 `"El Carmen"', add
label define sv07a_bthmun_lbl 0704 `"El Rosario"', add
label define sv07a_bthmun_lbl 0705 `"Monte San Juan"', add
label define sv07a_bthmun_lbl 0706 `"Oratorio de Concepcion"', add
label define sv07a_bthmun_lbl 0707 `"San Bartolome Perulapia"', add
label define sv07a_bthmun_lbl 0708 `"San Cristobal"', add
label define sv07a_bthmun_lbl 0709 `"San Jose Guayabal"', add
label define sv07a_bthmun_lbl 0710 `"San Pedro Perulapan"', add
label define sv07a_bthmun_lbl 0711 `"San Rafael Cedros"', add
label define sv07a_bthmun_lbl 0712 `"San Ramon"', add
label define sv07a_bthmun_lbl 0713 `"Santa Cruz Analquito"', add
label define sv07a_bthmun_lbl 0714 `"Santa Cruz Michapa"', add
label define sv07a_bthmun_lbl 0715 `"Suchitoto"', add
label define sv07a_bthmun_lbl 0716 `"Tenancingo"', add
label define sv07a_bthmun_lbl 0801 `"Cuyultitan"', add
label define sv07a_bthmun_lbl 0802 `"El Rosario"', add
label define sv07a_bthmun_lbl 0803 `"Jerusalen"', add
label define sv07a_bthmun_lbl 0804 `"Mercedes la Ceiba"', add
label define sv07a_bthmun_lbl 0805 `"Olocuilta"', add
label define sv07a_bthmun_lbl 0806 `"Paraiso de Osorio"', add
label define sv07a_bthmun_lbl 0807 `"San Antonio Masahuat"', add
label define sv07a_bthmun_lbl 0808 `"San Emigdio"', add
label define sv07a_bthmun_lbl 0809 `"San Francisco Chinameca"', add
label define sv07a_bthmun_lbl 0810 `"San Juan Nonualco"', add
label define sv07a_bthmun_lbl 0811 `"San Juan Talpa"', add
label define sv07a_bthmun_lbl 0812 `"San Juan Tepezontes"', add
label define sv07a_bthmun_lbl 0813 `"San Luis Talpa"', add
label define sv07a_bthmun_lbl 0814 `"San Miguel Tepezontes"', add
label define sv07a_bthmun_lbl 0815 `"San Pedro Masahuat"', add
label define sv07a_bthmun_lbl 0816 `"San Pedro Nonualco"', add
label define sv07a_bthmun_lbl 0817 `"San Rafael Obrajuelo"', add
label define sv07a_bthmun_lbl 0818 `"Santa Maria Ostuma"', add
label define sv07a_bthmun_lbl 0819 `"Santiago Nonualco"', add
label define sv07a_bthmun_lbl 0820 `"Tapalhuaca"', add
label define sv07a_bthmun_lbl 0821 `"Zacatecoluca"', add
label define sv07a_bthmun_lbl 0822 `"San Luis la Herradura"', add
label define sv07a_bthmun_lbl 0901 `"Cinquera"', add
label define sv07a_bthmun_lbl 0902 `"Guacotecti"', add
label define sv07a_bthmun_lbl 0903 `"Ilobasco"', add
label define sv07a_bthmun_lbl 0904 `"Jutiapa"', add
label define sv07a_bthmun_lbl 0905 `"San Isidro"', add
label define sv07a_bthmun_lbl 0906 `"Sensuntepeque"', add
label define sv07a_bthmun_lbl 0907 `"Tejutepeque"', add
label define sv07a_bthmun_lbl 0908 `"Victoria"', add
label define sv07a_bthmun_lbl 0909 `"Dolores"', add
label define sv07a_bthmun_lbl 1001 `"Apastepeque"', add
label define sv07a_bthmun_lbl 1002 `"Guadalupe"', add
label define sv07a_bthmun_lbl 1003 `"San Cayetano Istepeque"', add
label define sv07a_bthmun_lbl 1004 `"Santa Clara"', add
label define sv07a_bthmun_lbl 1005 `"Santo Domingo"', add
label define sv07a_bthmun_lbl 1006 `"San Esteban Catarina"', add
label define sv07a_bthmun_lbl 1007 `"San Ildefonso"', add
label define sv07a_bthmun_lbl 1008 `"San Lorenzo"', add
label define sv07a_bthmun_lbl 1009 `"San Sebastian"', add
label define sv07a_bthmun_lbl 1010 `"San Vicente"', add
label define sv07a_bthmun_lbl 1011 `"Tecoluca"', add
label define sv07a_bthmun_lbl 1012 `"Tepetitan"', add
label define sv07a_bthmun_lbl 1013 `"Verapaz"', add
label define sv07a_bthmun_lbl 1101 `"Alegria"', add
label define sv07a_bthmun_lbl 1102 `"Berlin"', add
label define sv07a_bthmun_lbl 1103 `"California"', add
label define sv07a_bthmun_lbl 1104 `"Concepcion Batres"', add
label define sv07a_bthmun_lbl 1105 `"El Triunfo"', add
label define sv07a_bthmun_lbl 1106 `"Ereguayquin"', add
label define sv07a_bthmun_lbl 1107 `"Estanzuelas"', add
label define sv07a_bthmun_lbl 1108 `"Jiquilisco"', add
label define sv07a_bthmun_lbl 1109 `"Jucuapa"', add
label define sv07a_bthmun_lbl 1110 `"Jucuaran"', add
label define sv07a_bthmun_lbl 1111 `"Mercedes Umaña"', add
label define sv07a_bthmun_lbl 1112 `"Nueva Granada"', add
label define sv07a_bthmun_lbl 1113 `"Ozatlan"', add
label define sv07a_bthmun_lbl 1114 `"Puerto el Triunfo"', add
label define sv07a_bthmun_lbl 1115 `"San Agustin"', add
label define sv07a_bthmun_lbl 1116 `"San Buena Ventura"', add
label define sv07a_bthmun_lbl 1117 `"San Dionisio"', add
label define sv07a_bthmun_lbl 1118 `"Santa Elena"', add
label define sv07a_bthmun_lbl 1119 `"San Francisco Javier"', add
label define sv07a_bthmun_lbl 1120 `"Santa Maria"', add
label define sv07a_bthmun_lbl 1121 `"Santiago de Maria"', add
label define sv07a_bthmun_lbl 1122 `"Tecapan"', add
label define sv07a_bthmun_lbl 1123 `"Usulutan"', add
label define sv07a_bthmun_lbl 1201 `"Carolina"', add
label define sv07a_bthmun_lbl 1202 `"Ciudad Barrios"', add
label define sv07a_bthmun_lbl 1203 `"Comacaran"', add
label define sv07a_bthmun_lbl 1204 `"Chapeltique"', add
label define sv07a_bthmun_lbl 1205 `"Chinameca"', add
label define sv07a_bthmun_lbl 1206 `"Chirilagua"', add
label define sv07a_bthmun_lbl 1207 `"El Transito"', add
label define sv07a_bthmun_lbl 1208 `"Lolotique"', add
label define sv07a_bthmun_lbl 1209 `"Moncagua"', add
label define sv07a_bthmun_lbl 1210 `"Nueva Guadalupe"', add
label define sv07a_bthmun_lbl 1211 `"Nuevo Eden de San Juan"', add
label define sv07a_bthmun_lbl 1212 `"Quelepa"', add
label define sv07a_bthmun_lbl 1213 `"San Antonio"', add
label define sv07a_bthmun_lbl 1214 `"San Gerardo"', add
label define sv07a_bthmun_lbl 1215 `"San Jorge"', add
label define sv07a_bthmun_lbl 1216 `"San Luis de la Reina"', add
label define sv07a_bthmun_lbl 1217 `"San Miguel"', add
label define sv07a_bthmun_lbl 1218 `"San Rafael Oriente"', add
label define sv07a_bthmun_lbl 1219 `"Sesori"', add
label define sv07a_bthmun_lbl 1220 `"Uluazapa"', add
label define sv07a_bthmun_lbl 1301 `"Arambala"', add
label define sv07a_bthmun_lbl 1302 `"Cacaopera"', add
label define sv07a_bthmun_lbl 1303 `"Corinto"', add
label define sv07a_bthmun_lbl 1304 `"Chilanga"', add
label define sv07a_bthmun_lbl 1305 `"Delicias de Concepcion"', add
label define sv07a_bthmun_lbl 1306 `"El Divisadero"', add
label define sv07a_bthmun_lbl 1307 `"El Rosario"', add
label define sv07a_bthmun_lbl 1308 `"Gualococti"', add
label define sv07a_bthmun_lbl 1309 `"Guatajiagua"', add
label define sv07a_bthmun_lbl 1310 `"Joateca"', add
label define sv07a_bthmun_lbl 1311 `"Jocoaitique"', add
label define sv07a_bthmun_lbl 1312 `"Jocoro"', add
label define sv07a_bthmun_lbl 1313 `"Lolotiquillo"', add
label define sv07a_bthmun_lbl 1314 `"Meanguera"', add
label define sv07a_bthmun_lbl 1315 `"Oscicala"', add
label define sv07a_bthmun_lbl 1316 `"Perquin"', add
label define sv07a_bthmun_lbl 1317 `"San Carlos"', add
label define sv07a_bthmun_lbl 1318 `"San Fernando"', add
label define sv07a_bthmun_lbl 1319 `"San Francisco Gotera"', add
label define sv07a_bthmun_lbl 1320 `"San Isidro"', add
label define sv07a_bthmun_lbl 1321 `"San Simon"', add
label define sv07a_bthmun_lbl 1322 `"Sensembra"', add
label define sv07a_bthmun_lbl 1323 `"Sociedad"', add
label define sv07a_bthmun_lbl 1324 `"Torola"', add
label define sv07a_bthmun_lbl 1325 `"Yamabal"', add
label define sv07a_bthmun_lbl 1326 `"Yoloaiquin"', add
label define sv07a_bthmun_lbl 1401 `"Anamoros"', add
label define sv07a_bthmun_lbl 1402 `"Bolivar"', add
label define sv07a_bthmun_lbl 1403 `"Concepcion de Oriente"', add
label define sv07a_bthmun_lbl 1404 `"Conchagua"', add
label define sv07a_bthmun_lbl 1405 `"El carmen"', add
label define sv07a_bthmun_lbl 1406 `"El Sauce"', add
label define sv07a_bthmun_lbl 1407 `"Intipuca"', add
label define sv07a_bthmun_lbl 1408 `"La Union"', add
label define sv07a_bthmun_lbl 1409 `"Lislique"', add
label define sv07a_bthmun_lbl 1410 `"Meanguera del Golfo"', add
label define sv07a_bthmun_lbl 1411 `"Nueva Esparta"', add
label define sv07a_bthmun_lbl 1412 `"Pasaquina"', add
label define sv07a_bthmun_lbl 1413 `"Poloros"', add
label define sv07a_bthmun_lbl 1414 `"San Alejo"', add
label define sv07a_bthmun_lbl 1415 `"San Jose"', add
label define sv07a_bthmun_lbl 1416 `"Santa Rosa de Lima"', add
label define sv07a_bthmun_lbl 1417 `"Yayantique"', add
label define sv07a_bthmun_lbl 1418 `"Yucuaiquin"', add
label define sv07a_bthmun_lbl 9999 `"NIU (not in universe)"', add
label values sv07a_bthmun sv07a_bthmun_lbl

label define sv07a_bthctry_lbl 076 `"Brazil"'
label define sv07a_bthctry_lbl 152 `"Chile"', add
label define sv07a_bthctry_lbl 156 `"China"', add
label define sv07a_bthctry_lbl 170 `"Colombia"', add
label define sv07a_bthctry_lbl 188 `"Costa rica"', add
label define sv07a_bthctry_lbl 320 `"Guatemala"', add
label define sv07a_bthctry_lbl 340 `"Honduras"', add
label define sv07a_bthctry_lbl 380 `"Italy"', add
label define sv07a_bthctry_lbl 484 `"Mexico"', add
label define sv07a_bthctry_lbl 558 `"Nicaragua"', add
label define sv07a_bthctry_lbl 591 `"Panama"', add
label define sv07a_bthctry_lbl 604 `"Peru"', add
label define sv07a_bthctry_lbl 724 `"Spain"', add
label define sv07a_bthctry_lbl 840 `"United states"', add
label define sv07a_bthctry_lbl 862 `"Venezuela"', add
label define sv07a_bthctry_lbl 990 `"Other country"', add
label define sv07a_bthctry_lbl 998 `"Unknown"', add
label define sv07a_bthctry_lbl 999 `"NIU (not in universe)"', add
label values sv07a_bthctry sv07a_bthctry_lbl

label define sv07a_prevdept_lbl 01 `"Ahuachapán"'
label define sv07a_prevdept_lbl 02 `"Santa Ana"', add
label define sv07a_prevdept_lbl 03 `"Sonsonate"', add
label define sv07a_prevdept_lbl 04 `"Chalatenango"', add
label define sv07a_prevdept_lbl 05 `"La Libertad"', add
label define sv07a_prevdept_lbl 06 `"San Salvador"', add
label define sv07a_prevdept_lbl 07 `"Cuscatlán"', add
label define sv07a_prevdept_lbl 08 `"La Paz"', add
label define sv07a_prevdept_lbl 09 `"Cabañas"', add
label define sv07a_prevdept_lbl 10 `"San Vicente"', add
label define sv07a_prevdept_lbl 11 `"Usulután"', add
label define sv07a_prevdept_lbl 12 `"San Miguel"', add
label define sv07a_prevdept_lbl 13 `"Morazán"', add
label define sv07a_prevdept_lbl 14 `"La Unión"', add
label define sv07a_prevdept_lbl 99 `"NIU (not in universe)"', add
label values sv07a_prevdept sv07a_prevdept_lbl

label define sv07a_resplace_lbl 1 `"In this municipality or town"'
label define sv07a_resplace_lbl 2 `"In another place in the country"', add
label define sv07a_resplace_lbl 3 `"In another country"', add
label values sv07a_resplace sv07a_resplace_lbl

label define sv07a_prevctry_lbl 084 `"Belize"'
label define sv07a_prevctry_lbl 124 `"Canada"', add
label define sv07a_prevctry_lbl 156 `"China"', add
label define sv07a_prevctry_lbl 170 `"Colombia"', add
label define sv07a_prevctry_lbl 188 `"Costa Rica"', add
label define sv07a_prevctry_lbl 320 `"Guatemala"', add
label define sv07a_prevctry_lbl 340 `"Honduras"', add
label define sv07a_prevctry_lbl 484 `"Mexico"', add
label define sv07a_prevctry_lbl 558 `"Nicaragua"', add
label define sv07a_prevctry_lbl 591 `"Panama"', add
label define sv07a_prevctry_lbl 724 `"Spain"', add
label define sv07a_prevctry_lbl 840 `"United States of America"', add
label define sv07a_prevctry_lbl 862 `"Venezuela"', add
label define sv07a_prevctry_lbl 900 `"Other country"', add
label define sv07a_prevctry_lbl 998 `"Unknown"', add
label define sv07a_prevctry_lbl 999 `"NIU (not in universe)"', add
label values sv07a_prevctry sv07a_prevctry_lbl

label define sv07a_workdept_lbl 01 `"Ahuachapán"'
label define sv07a_workdept_lbl 02 `"Santa Ana"', add
label define sv07a_workdept_lbl 03 `"Sonsonate"', add
label define sv07a_workdept_lbl 04 `"Chalatenango"', add
label define sv07a_workdept_lbl 05 `"La Libertad"', add
label define sv07a_workdept_lbl 06 `"San Salvador"', add
label define sv07a_workdept_lbl 07 `"Cuscatlán"', add
label define sv07a_workdept_lbl 08 `"La Paz"', add
label define sv07a_workdept_lbl 09 `"Cabañas"', add
label define sv07a_workdept_lbl 10 `"San Vicente"', add
label define sv07a_workdept_lbl 11 `"Usulután"', add
label define sv07a_workdept_lbl 12 `"San Miguel"', add
label define sv07a_workdept_lbl 13 `"Morazán"', add
label define sv07a_workdept_lbl 14 `"La Unión"', add
label define sv07a_workdept_lbl 99 `"NIU (not in universe)"', add
label values sv07a_workdept sv07a_workdept_lbl

label define sv07a_workplace_lbl 1 `"In this municipality or town"'
label define sv07a_workplace_lbl 2 `"In another place in the country"', add
label define sv07a_workplace_lbl 3 `"In another country"', add
label define sv07a_workplace_lbl 9 `"NIU (not in universe)"', add
label values sv07a_workplace sv07a_workplace_lbl


