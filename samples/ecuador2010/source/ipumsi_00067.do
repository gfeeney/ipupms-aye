* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                       ///
  int     cntry            1-3      ///
  int     year             4-7      ///
  int     sample           8-11     ///
  double  serial           12-21    ///
  long    ec10a_dwnum      22-28    ///
  byte    ec10a_pern       29-30    ///
  byte    ec10a_prov       31-32    ///
  byte    ec10a_urban      33-33    ///
  byte    ec10a_dwtype     34-35    ///
  byte    ec10a_road       36-36    ///
  byte    ec10a_occup      37-37    ///
  byte    ec10a_roof       38-38    ///
  byte    ec10a_walls      39-39    ///
  byte    ec10a_floor      40-40    ///
  byte    ec10a_ceilcond   41-41    ///
  byte    ec10a_wallcond   42-42    ///
  byte    ec10a_floorcon   43-43    ///
  byte    ec10a_watsrc     44-44    ///
  byte    ec10a_watsup     45-45    ///
  byte    ec10a_sewer      46-46    ///
  byte    ec10a_light      47-47    ///
  byte    ec10a_elecmet    48-48    ///
  int     ec10a_savbulb    49-51    ///
  int     ec10a_regbulb    52-54    ///
  byte    ec10a_trash      55-55    ///
  byte    ec10a_rooms      56-57    ///
  byte    ec10a_morehh     58-58    ///
  byte    ec10a_numbhhs    59-59    ///
  byte    ec10a_bedrooms   60-61    ///
  byte    ec10a_emigdw     62-63    ///
  byte    ec10a_perroom    64-64    ///
  byte    ec10a_perbdrm    65-65    ///
  byte    ec10a_remitt     66-66    ///
  byte    ec10a_roomshh    67-68    ///
  byte    ec10a_cookspc    69-69    ///
  byte    ec10a_toilet     70-70    ///
  byte    ec10a_bath       71-71    ///
  byte    ec10a_fuelck     72-72    ///
  byte    ec10a_drinkwtr   73-73    ///
  byte    ec10a_phone      74-74    ///
  byte    ec10a_cellphon   75-75    ///
  byte    ec10a_internet   76-76    ///
  byte    ec10a_computer   77-77    ///
  byte    ec10a_cable      78-78    ///
  int     ec10a_payelect   79-82    ///
  byte    ec10a_electbil   83-83    ///
  byte    ec10a_movwork    84-84    ///
  byte    ec10a_nmvwork    85-85    ///
  byte    ec10a_movstudy   86-86    ///
  byte    ec10a_nstudy     87-88    ///
  byte    ec10a_ownershp   89-89    ///
  byte    ec10a_moneyrel   90-90    ///
  byte    ec10a_travel     91-91    ///
  byte    ec10a_ntravel    92-92    ///
  byte    ec10a_nmigs      93-93    ///
  int     pernum           94-96    ///
  float   wtper            97-104   ///
  byte    ec10a_pernum     105-106  ///
  byte    ec10a_resident   107-107  ///
  byte    ec10a_sex        108-108  ///
  byte    ec10a_relate     109-110  ///
  int     ec10a_age        111-113  ///
  byte    ec10a_birthmo    114-115  ///
  int     ec10a_birthyr    116-119  ///
  byte    ec10a_citcard    120-120  ///
  byte    ec10a_civreg     121-121  ///
  byte    ec10a_privinsr   122-122  ///
  byte    ec10a_disab      123-123  ///
  byte    ec10a_disintel   124-124  ///
  byte    ec10a_disphys    125-125  ///
  byte    ec10a_dissight   126-126  ///
  byte    ec10a_dishear    127-127  ///
  byte    ec10a_disment    128-128  ///
  byte    ec10a_diseduc    129-129  ///
  byte    ec10a_bpl        130-130  ///
  int     ec10a_immigyr    131-134  ///
  byte    ec10a_bplprov    135-136  ///
  long    ec10a_bplcntry   137-142  ///
  byte    ec10a_uresid     143-143  ///
  byte    ec10a_uprov      144-145  ///
  long    ec10a_ucntry     146-151  ///
  byte    ec10a_res5yr     152-152  ///
  byte    ec10a_prov5yr    153-154  ///
  long    ec10a_ctry5yr    155-160  ///
  byte    ec10a_langfind   161-161  ///
  byte    ec10a_langmind   162-162  ///
  byte    ec10a_langfsp    163-163  ///
  byte    ec10a_langmsp    164-164  ///
  byte    ec10a_langffor   165-165  ///
  byte    ec10a_langmfor   166-166  ///
  byte    ec10a_langfnon   167-167  ///
  byte    ec10a_langmnon   168-168  ///
  byte    ec10a_langind1   169-169  ///
  byte    ec10a_langind2   170-171  ///
  byte    ec10a_langsp     172-172  ///
  byte    ec10a_langfor    173-173  ///
  byte    ec10a_langnon    174-174  ///
  byte    ec10a_race       175-175  ///
  byte    ec10a_ethnic     176-177  ///
  byte    ec10a_chcare1    178-178  ///
  byte    ec10a_chcare2    179-179  ///
  byte    ec10a_chcare3    180-180  ///
  byte    ec10a_chcare4    181-181  ///
  byte    ec10a_chcare5    182-182  ///
  byte    ec10a_chcare6    183-183  ///
  byte    ec10a_chcare7    184-184  ///
  byte    ec10a_cell6mon   185-185  ///
  byte    ec10a_int6mon    186-186  ///
  byte    ec10a_cmpt6mon   187-187  ///
  byte    ec10a_school     188-188  ///
  byte    ec10a_schtype    189-189  ///
  byte    ec10a_edlev      190-191  ///
  byte    ec10a_edgrade    192-193  ///
  int     ec10a_edattan    194-197  ///
  byte    ec10a_higedtit   198-198  ///
  int     ec10a_edfield    199-201  ///
  byte    ec10a_empstat    202-202  ///
  byte    ec10a_unempstat  203-203  ///
  int     ec10a_ind3       204-206  ///
  int     ec10a_ind2       207-209  ///
  int     ec10a_occ3       210-212  ///
  byte    ec10a_occ2       213-214  ///
  byte    ec10a_classwk    215-215  ///
  int     ec10a_hrswork    216-218  ///
  byte    ec10a_wkloc      219-219  ///
  byte    ec10a_marst      220-220  ///
  byte    ec10a_socsec     221-221  ///
  byte    ec10a_chborn     222-223  ///
  byte    ec10a_chbornm    224-225  ///
  byte    ec10a_chbornf    226-227  ///
  byte    ec10a_chsurv     228-229  ///
  byte    ec10a_age1stb    230-231  ///
  int     ec10a_lstbyear   232-235  ///
  byte    ec10a_lstbmon    236-237  ///
  byte    ec10a_lstbsurv   238-238  ///
  byte    ec10a_empstat2   239-240  ///
  byte    ec10a_ind        241-242  ///
  byte    ec10a_occ        243-244  ///
  using `"ipumsi_00067.dat"'

replace wtper           = wtper           / 100

format serial          %10.0f
format wtper           %8.2f

label var cntry           `"Country"'
label var year            `"Year"'
label var sample          `"IPUMS sample identifier"'
label var serial          `"Household serial number"'
label var ec10a_dwnum     `"Dwelling number"'
label var ec10a_pern      `"Number of persons in household"'
label var ec10a_prov      `"Province"'
label var ec10a_urban     `"Urban-rural"'
label var ec10a_dwtype    `"Type of dwelling"'
label var ec10a_road      `"Road access to dwelling"'
label var ec10a_occup     `"Occupancy status"'
label var ec10a_roof      `"Predominant material of the roof"'
label var ec10a_walls     `"Predominant material of the outer walls"'
label var ec10a_floor     `"Predominant materials of the floor"'
label var ec10a_ceilcond  `"Condition of the ceiling"'
label var ec10a_wallcond  `"Condition of the walls"'
label var ec10a_floorcon  `"Condition of the floor"'
label var ec10a_watsrc    `"Primary source of water for the dwelling"'
label var ec10a_watsup    `"Type of water connection for the dwelling"'
label var ec10a_sewer     `"Type of sanitary service or toilet for the dwelling"'
label var ec10a_light     `"Primary source for electricity for the dwelling"'
label var ec10a_elecmet   `"Does the dwelling has an electrical meter"'
label var ec10a_savbulb   `"Number of energy saving light bulbs in the dwelling (fluorescent)"'
label var ec10a_regbulb   `"Number of conventional light bulbs in the dwelling (incandescent)"'
label var ec10a_trash     `"Primary method of trash disposal"'
label var ec10a_rooms     `"Number of rooms in the dwelling (excluding kitchen, bathrooms, and rooms for bus"'
label var ec10a_morehh    `"More than one household in the dwelling (people sleeping and cooking separately)"'
label var ec10a_numbhhs   `"Number of households in the dwelling"'
label var ec10a_bedrooms  `"Number of bedrooms in the dwelling"'
label var ec10a_emigdw    `"Number of emigrants in the dwelling"'
label var ec10a_perroom   `"Number of persons per room (dwelling)"'
label var ec10a_perbdrm   `"Number of persons per bedroom (dwelling)"'
label var ec10a_remitt    `"Household receives remittances"'
label var ec10a_roomshh   `"Number of bedrooms in the household"'
label var ec10a_cookspc   `"Room or space exclusively for cooking"'
label var ec10a_toilet    `"Type of sanitary service or toilet for the household"'
label var ec10a_bath      `"Facilities or shower for bathing for the household"'
label var ec10a_fuelck    `"Primary fuel or energy source for cooking"'
label var ec10a_drinkwtr  `"Primary type of drinking water"'
label var ec10a_phone     `"Regular phone service"'
label var ec10a_cellphon  `"Cell phone service"'
label var ec10a_internet  `"Internet service"'
label var ec10a_computer  `"Computer"'
label var ec10a_cable     `"Cable TV service"'
label var ec10a_payelect  `"Last payment made on the household electricity account (amount)"'
label var ec10a_electbil  `"Pays for electricity"'
label var ec10a_movwork   `"Any household member travels outside this city or rural parish to work"'
label var ec10a_nmvwork   `"Number of household members that travel outside this city or rural parish to wor"'
label var ec10a_movstudy  `"Any household member goes outside this city or rural parish to study"'
label var ec10a_nstudy    `"Number of household members that go outside this city or rural parish to study"'
label var ec10a_ownershp  `"Dwelling ownership"'
label var ec10a_moneyrel  `"Received money from relatives or friends living outside in 2010"'
label var ec10a_travel    `"Any household member traveled abroad and not returned since last census (2001)"'
label var ec10a_ntravel   `"Number of household members that traveled abroad since last census (2001)"'
label var ec10a_nmigs     `"Number of migration records"'
label var pernum          `"Person number"'
label var wtper           `"Person weight"'
label var ec10a_pernum    `"Person number (within household)"'
label var ec10a_resident  `"Person eats and sleeps in the household"'
label var ec10a_sex       `"Sex"'
label var ec10a_relate    `"Relationship to head of household"'
label var ec10a_age       `"Age"'
label var ec10a_birthmo   `"Month of birth"'
label var ec10a_birthyr   `"Year of birth"'
label var ec10a_citcard   `"Citizenship card"'
label var ec10a_civreg    `"Civil registration"'
label var ec10a_privinsr  `"Private health insurance"'
label var ec10a_disab     `"Permanent disability (more than one year)"'
label var ec10a_disintel  `"Intellectual disability"'
label var ec10a_disphys   `"Physical/motor disabilities"'
label var ec10a_dissight  `"Visual impairment"'
label var ec10a_dishear   `"Hearing impairment"'
label var ec10a_disment   `"Mental disability"'
label var ec10a_diseduc   `"Attending special education facility for people with disabilities"'
label var ec10a_bpl       `"Birthplace"'
label var ec10a_immigyr   `"Year of arrival to Ecuador"'
label var ec10a_bplprov   `"Province of birth"'
label var ec10a_bplcntry  `"Country of birth"'
label var ec10a_uresid    `"Place of usual residence"'
label var ec10a_uprov     `"Province of usual residence"'
label var ec10a_ucntry    `"Country of usual residence"'
label var ec10a_res5yr    `"Place of residence 5 years ago (November 2005)"'
label var ec10a_prov5yr   `"Province of residence 5 years ago (November 2005)"'
label var ec10a_ctry5yr   `"Country of residence 5 years ago (November 2005)"'
label var ec10a_langfind  `"Father speaks indigenous language"'
label var ec10a_langmind  `"Mother speaks indigenous language"'
label var ec10a_langfsp   `"Father speaks Castilian/Spanish"'
label var ec10a_langmsp   `"Mother speaks Castilian/Spanish"'
label var ec10a_langffor  `"Father speaks foreign language"'
label var ec10a_langmfor  `"Mother speaks foreign language"'
label var ec10a_langfnon  `"Father does not speak"'
label var ec10a_langmnon  `"Mother does not speak"'
label var ec10a_langind1  `"Speak indigenous language"'
label var ec10a_langind2  `"Indigenous language spoken"'
label var ec10a_langsp    `"Speaks Castilian/Spanish"'
label var ec10a_langfor   `"Speaks foreign language"'
label var ec10a_langnon   `"Does not speak any language"'
label var ec10a_race      `"Racial self-identification (culture and customs)"'
label var ec10a_ethnic    `"Indigenous ethnicity"'
label var ec10a_chcare1   `"Child participates in INFA program"'
label var ec10a_chcare2   `"Child participates in Ministry of Education program"'
label var ec10a_chcare3   `"Child participates in private childhood center program"'
label var ec10a_chcare4   `"Child participates in public childhood center program"'
label var ec10a_chcare5   `"Child participates in other program"'
label var ec10a_chcare6   `"Father, mother, or relatives take care of the child for free"'
label var ec10a_chcare7   `"Relatives or persons known to the family are paid to take care of the child"'
label var ec10a_cell6mon  `"Used a cell phone in the past six months"'
label var ec10a_int6mon   `"Used internet in the past six months"'
label var ec10a_cmpt6mon  `"Used a computer in the past six months"'
label var ec10a_school    `"Current attendance to education institution"'
label var ec10a_schtype   `"Type of education institution currently attending"'
label var ec10a_edlev     `"Highest educational level attended"'
label var ec10a_edgrade   `"Highest grade, course, or year attended"'
label var ec10a_edattan   `"Educational attainment"'
label var ec10a_higedtit  `"Higher or postgraduate diploma/title"'
label var ec10a_edfield   `"Field of diploma/title"'
label var ec10a_empstat   `"Activity performed last week"'
label var ec10a_unempstat `"Activity of the unemployed"'
label var ec10a_ind3      `"Industry (3 digits, ISIC rev 4)"'
label var ec10a_ind2      `"Industry (2 digits, ISIC rev 4)"'
label var ec10a_occ3      `"Occupation (3 digits, ISCO 08)"'
label var ec10a_occ2      `"Occupation (2 digits, ISCO 08)"'
label var ec10a_classwk   `"Class of worker"'
label var ec10a_hrswork   `"Hours of work last week the person worked"'
label var ec10a_wkloc     `"Location of workplace"'
label var ec10a_marst     `"Marital status"'
label var ec10a_socsec    `"Social security affiliation"'
label var ec10a_chborn    `"Number of children ever born"'
label var ec10a_chbornm   `"Number of male children ever born"'
label var ec10a_chbornf   `"Number of female children ever born"'
label var ec10a_chsurv    `"Number of children surviving"'
label var ec10a_age1stb   `"Age at first birth"'
label var ec10a_lstbyear  `"Year of last birth"'
label var ec10a_lstbmon   `"Month of last birth"'
label var ec10a_lstbsurv  `"Last birth still alive"'
label var ec10a_empstat2  `"Labor force status"'
label var ec10a_ind       `"Industry (ISIC rev 4)"'
label var ec10a_occ       `"Occupation (ISCO 08)"'

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

label define ec10a_pern_lbl 01 `"1"'
label define ec10a_pern_lbl 02 `"2"', add
label define ec10a_pern_lbl 03 `"3"', add
label define ec10a_pern_lbl 04 `"4"', add
label define ec10a_pern_lbl 05 `"5"', add
label define ec10a_pern_lbl 06 `"6"', add
label define ec10a_pern_lbl 07 `"7"', add
label define ec10a_pern_lbl 08 `"8"', add
label define ec10a_pern_lbl 09 `"9"', add
label define ec10a_pern_lbl 10 `"10"', add
label define ec10a_pern_lbl 11 `"11"', add
label define ec10a_pern_lbl 12 `"12"', add
label define ec10a_pern_lbl 13 `"13"', add
label define ec10a_pern_lbl 14 `"14"', add
label define ec10a_pern_lbl 15 `"15"', add
label define ec10a_pern_lbl 16 `"16"', add
label define ec10a_pern_lbl 17 `"17"', add
label define ec10a_pern_lbl 18 `"18"', add
label define ec10a_pern_lbl 19 `"19"', add
label define ec10a_pern_lbl 20 `"20"', add
label define ec10a_pern_lbl 21 `"21"', add
label define ec10a_pern_lbl 22 `"22"', add
label define ec10a_pern_lbl 23 `"23"', add
label define ec10a_pern_lbl 24 `"24"', add
label define ec10a_pern_lbl 25 `"25"', add
label define ec10a_pern_lbl 26 `"26"', add
label define ec10a_pern_lbl 27 `"27"', add
label define ec10a_pern_lbl 28 `"28"', add
label define ec10a_pern_lbl 29 `"29"', add
label define ec10a_pern_lbl 30 `"30"', add
label values ec10a_pern ec10a_pern_lbl

label define ec10a_prov_lbl 01 `"Azuay"'
label define ec10a_prov_lbl 02 `"Bolívar"', add
label define ec10a_prov_lbl 03 `"Cañar"', add
label define ec10a_prov_lbl 04 `"Carchi"', add
label define ec10a_prov_lbl 05 `"Cotopaxi"', add
label define ec10a_prov_lbl 06 `"Chimborazo"', add
label define ec10a_prov_lbl 07 `"El Oro"', add
label define ec10a_prov_lbl 08 `"Esmeraldas"', add
label define ec10a_prov_lbl 09 `"Guayas and Galápagos"', add
label define ec10a_prov_lbl 10 `"Imbabura"', add
label define ec10a_prov_lbl 11 `"Loja"', add
label define ec10a_prov_lbl 12 `"Los Ríos"', add
label define ec10a_prov_lbl 13 `"Manabí"', add
label define ec10a_prov_lbl 14 `"Morona Santiago"', add
label define ec10a_prov_lbl 15 `"Napo"', add
label define ec10a_prov_lbl 16 `"Pastaza"', add
label define ec10a_prov_lbl 17 `"Pichincha"', add
label define ec10a_prov_lbl 18 `"Tungurahua"', add
label define ec10a_prov_lbl 19 `"Zamora Chinchipe"', add
label define ec10a_prov_lbl 21 `"Sucumbios"', add
label define ec10a_prov_lbl 22 `"Orellana"', add
label define ec10a_prov_lbl 23 `"Santo Domingo de los Tsáchilas"', add
label define ec10a_prov_lbl 24 `"Santa Elena"', add
label define ec10a_prov_lbl 90 `"Non-delimited zones"', add
label values ec10a_prov ec10a_prov_lbl

label define ec10a_urban_lbl 1 `"Urban"'
label define ec10a_urban_lbl 2 `"Rural"', add
label values ec10a_urban ec10a_urban_lbl

label define ec10a_dwtype_lbl 01 `"House or villa"'
label define ec10a_dwtype_lbl 02 `"Apartment in a house or building"', add
label define ec10a_dwtype_lbl 03 `"Room in a boarding house"', add
label define ec10a_dwtype_lbl 04 `"Shack"', add
label define ec10a_dwtype_lbl 05 `"Small farmhouse"', add
label define ec10a_dwtype_lbl 06 `"Hovel"', add
label define ec10a_dwtype_lbl 07 `"Hut"', add
label define ec10a_dwtype_lbl 08 `"Other private dwelling"', add
label define ec10a_dwtype_lbl 09 `"Hotel, pension, residence, or hostel"', add
label define ec10a_dwtype_lbl 10 `"Military, police, or firemen's barracks"', add
label define ec10a_dwtype_lbl 11 `"Center for social rehabilitation or jail"', add
label define ec10a_dwtype_lbl 12 `"Shelter for boys, girls, Females, and indigent persons"', add
label define ec10a_dwtype_lbl 13 `"Hospital, clinic, or similar"', add
label define ec10a_dwtype_lbl 14 `"Convent or religious institution"', add
label define ec10a_dwtype_lbl 15 `"Elder home or orphanage"', add
label define ec10a_dwtype_lbl 16 `"Other collective dwelling"', add
label define ec10a_dwtype_lbl 17 `"Without a dwelling"', add
label values ec10a_dwtype ec10a_dwtype_lbl

label define ec10a_road_lbl 1 `"Concrete or paved street or highway"'
label define ec10a_road_lbl 2 `"Stone street or highway"', add
label define ec10a_road_lbl 3 `"Gravel or dirt street or highway"', add
label define ec10a_road_lbl 4 `"Path, footpath, or mule track"', add
label define ec10a_road_lbl 5 `"River, sea, or lake"', add
label define ec10a_road_lbl 6 `"Other"', add
label define ec10a_road_lbl 9 `"NIU (not in universe)"', add
label values ec10a_road ec10a_road_lbl

label define ec10a_occup_lbl 1 `"Occupied with people present"'
label define ec10a_occup_lbl 9 `"NIU (not in universe)"', add
label values ec10a_occup ec10a_occup_lbl

label define ec10a_roof_lbl 1 `"Reinforced concrete (concrete block or cement)"'
label define ec10a_roof_lbl 2 `"Asbestos (Eternit, Eurolit)"', add
label define ec10a_roof_lbl 3 `"Zinc"', add
label define ec10a_roof_lbl 4 `"Clay tile"', add
label define ec10a_roof_lbl 5 `"Palm, straw, or leaves"', add
label define ec10a_roof_lbl 6 `"Other materials"', add
label define ec10a_roof_lbl 9 `"NIU (not in universe)"', add
label values ec10a_roof ec10a_roof_lbl

label define ec10a_walls_lbl 1 `"Reinforced concrete"'
label define ec10a_walls_lbl 2 `"Brick or concrete block"', add
label define ec10a_walls_lbl 3 `"Adobe or mud wall"', add
label define ec10a_walls_lbl 4 `"Wood"', add
label define ec10a_walls_lbl 5 `"Coated cane or mud-and-branches"', add
label define ec10a_walls_lbl 6 `"Uncoated cane"', add
label define ec10a_walls_lbl 7 `"Other materials"', add
label define ec10a_walls_lbl 9 `"NIU (not in universe)"', add
label values ec10a_walls ec10a_walls_lbl

label define ec10a_floor_lbl 1 `"Fitted-groove wood, parquet, boards, or finished wood"'
label define ec10a_floor_lbl 2 `"Unfinished boards"', add
label define ec10a_floor_lbl 3 `"Ceramic, tile, vinyl, or marble"', add
label define ec10a_floor_lbl 4 `"Brick or cement"', add
label define ec10a_floor_lbl 5 `"Cane"', add
label define ec10a_floor_lbl 6 `"Dirt"', add
label define ec10a_floor_lbl 7 `"Other materials"', add
label define ec10a_floor_lbl 9 `"NIU (not in universe)"', add
label values ec10a_floor ec10a_floor_lbl

label define ec10a_ceilcond_lbl 1 `"Good"'
label define ec10a_ceilcond_lbl 2 `"Regular"', add
label define ec10a_ceilcond_lbl 3 `"Poor"', add
label define ec10a_ceilcond_lbl 9 `"NIU (not in universe)"', add
label values ec10a_ceilcond ec10a_ceilcond_lbl

label define ec10a_wallcond_lbl 1 `"Good"'
label define ec10a_wallcond_lbl 2 `"Regular"', add
label define ec10a_wallcond_lbl 3 `"Poor"', add
label define ec10a_wallcond_lbl 9 `"NIU (not in universe)"', add
label values ec10a_wallcond ec10a_wallcond_lbl

label define ec10a_floorcon_lbl 1 `"Good"'
label define ec10a_floorcon_lbl 2 `"Regular"', add
label define ec10a_floorcon_lbl 3 `"Poor"', add
label define ec10a_floorcon_lbl 9 `"NIU (not in universe)"', add
label values ec10a_floorcon ec10a_floorcon_lbl

label define ec10a_watsrc_lbl 1 `"Public network"'
label define ec10a_watsrc_lbl 2 `"Well"', add
label define ec10a_watsrc_lbl 3 `"River, creek, spring, or channel"', add
label define ec10a_watsrc_lbl 4 `"Delivery truck"', add
label define ec10a_watsrc_lbl 5 `"Other (rain water)"', add
label define ec10a_watsrc_lbl 9 `"NIU (not in universe)"', add
label values ec10a_watsrc ec10a_watsrc_lbl

label define ec10a_watsup_lbl 1 `"Piped inside the dwelling"'
label define ec10a_watsup_lbl 2 `"Piped outside the dwelling but within the building, lot, or land"', add
label define ec10a_watsup_lbl 3 `"Piped outside the building, lot, or land"', add
label define ec10a_watsup_lbl 4 `"Does not receive wather through pipes, but by other means"', add
label define ec10a_watsup_lbl 9 `"NIU (not in universe)"', add
label values ec10a_watsup ec10a_watsup_lbl

label define ec10a_sewer_lbl 1 `"Connected to the public sewage network"'
label define ec10a_sewer_lbl 2 `"Connected to a septic tank"', add
label define ec10a_sewer_lbl 3 `"Connected to a blind drain"', add
label define ec10a_sewer_lbl 4 `"With direct discharge to the sea, river, lake, or ditch"', add
label define ec10a_sewer_lbl 5 `"Latrine"', add
label define ec10a_sewer_lbl 6 `"Does not have"', add
label define ec10a_sewer_lbl 9 `"NIU (not in universe)"', add
label values ec10a_sewer ec10a_sewer_lbl

label define ec10a_light_lbl 1 `"Network of the public service electrical company"'
label define ec10a_light_lbl 2 `"Solar panel"', add
label define ec10a_light_lbl 3 `"Electric generator (electrical plant)"', add
label define ec10a_light_lbl 4 `"Other"', add
label define ec10a_light_lbl 5 `"Does not have"', add
label define ec10a_light_lbl 9 `"NIU (not in universe)"', add
label values ec10a_light ec10a_light_lbl

label define ec10a_elecmet_lbl 1 `"Exclusive use of the dwelling"'
label define ec10a_elecmet_lbl 2 `"Shared use by several dwellings"', add
label define ec10a_elecmet_lbl 3 `"Does not have an electrical meter"', add
label define ec10a_elecmet_lbl 9 `"NIU (not in universe)"', add
label values ec10a_elecmet ec10a_elecmet_lbl

label define ec10a_savbulb_lbl 000 `"0"'
label define ec10a_savbulb_lbl 001 `"1"', add
label define ec10a_savbulb_lbl 002 `"2"', add
label define ec10a_savbulb_lbl 003 `"3"', add
label define ec10a_savbulb_lbl 004 `"4"', add
label define ec10a_savbulb_lbl 005 `"5"', add
label define ec10a_savbulb_lbl 006 `"6"', add
label define ec10a_savbulb_lbl 007 `"7"', add
label define ec10a_savbulb_lbl 008 `"8"', add
label define ec10a_savbulb_lbl 009 `"9"', add
label define ec10a_savbulb_lbl 010 `"10"', add
label define ec10a_savbulb_lbl 011 `"11"', add
label define ec10a_savbulb_lbl 012 `"12"', add
label define ec10a_savbulb_lbl 013 `"13"', add
label define ec10a_savbulb_lbl 014 `"14"', add
label define ec10a_savbulb_lbl 015 `"15"', add
label define ec10a_savbulb_lbl 016 `"16"', add
label define ec10a_savbulb_lbl 017 `"17"', add
label define ec10a_savbulb_lbl 018 `"18"', add
label define ec10a_savbulb_lbl 019 `"19"', add
label define ec10a_savbulb_lbl 020 `"20"', add
label define ec10a_savbulb_lbl 021 `"21"', add
label define ec10a_savbulb_lbl 022 `"22"', add
label define ec10a_savbulb_lbl 023 `"23"', add
label define ec10a_savbulb_lbl 024 `"24"', add
label define ec10a_savbulb_lbl 025 `"25"', add
label define ec10a_savbulb_lbl 026 `"26"', add
label define ec10a_savbulb_lbl 027 `"27"', add
label define ec10a_savbulb_lbl 028 `"28"', add
label define ec10a_savbulb_lbl 029 `"29"', add
label define ec10a_savbulb_lbl 030 `"30"', add
label define ec10a_savbulb_lbl 031 `"31"', add
label define ec10a_savbulb_lbl 032 `"32"', add
label define ec10a_savbulb_lbl 033 `"33"', add
label define ec10a_savbulb_lbl 034 `"34"', add
label define ec10a_savbulb_lbl 035 `"35"', add
label define ec10a_savbulb_lbl 036 `"36"', add
label define ec10a_savbulb_lbl 037 `"37"', add
label define ec10a_savbulb_lbl 038 `"38"', add
label define ec10a_savbulb_lbl 039 `"39"', add
label define ec10a_savbulb_lbl 040 `"40+"', add
label define ec10a_savbulb_lbl 999 `"NIU (not in universe)"', add
label values ec10a_savbulb ec10a_savbulb_lbl

label define ec10a_regbulb_lbl 000 `"0"'
label define ec10a_regbulb_lbl 001 `"1"', add
label define ec10a_regbulb_lbl 002 `"2"', add
label define ec10a_regbulb_lbl 003 `"3"', add
label define ec10a_regbulb_lbl 004 `"4"', add
label define ec10a_regbulb_lbl 005 `"5"', add
label define ec10a_regbulb_lbl 006 `"6"', add
label define ec10a_regbulb_lbl 007 `"7"', add
label define ec10a_regbulb_lbl 008 `"8"', add
label define ec10a_regbulb_lbl 009 `"9"', add
label define ec10a_regbulb_lbl 010 `"10"', add
label define ec10a_regbulb_lbl 011 `"11"', add
label define ec10a_regbulb_lbl 012 `"12"', add
label define ec10a_regbulb_lbl 013 `"13"', add
label define ec10a_regbulb_lbl 014 `"14"', add
label define ec10a_regbulb_lbl 015 `"15"', add
label define ec10a_regbulb_lbl 016 `"16"', add
label define ec10a_regbulb_lbl 017 `"17"', add
label define ec10a_regbulb_lbl 018 `"18"', add
label define ec10a_regbulb_lbl 019 `"19"', add
label define ec10a_regbulb_lbl 020 `"20"', add
label define ec10a_regbulb_lbl 021 `"21"', add
label define ec10a_regbulb_lbl 022 `"22"', add
label define ec10a_regbulb_lbl 023 `"23"', add
label define ec10a_regbulb_lbl 024 `"24"', add
label define ec10a_regbulb_lbl 025 `"25"', add
label define ec10a_regbulb_lbl 026 `"26"', add
label define ec10a_regbulb_lbl 027 `"27"', add
label define ec10a_regbulb_lbl 028 `"28"', add
label define ec10a_regbulb_lbl 029 `"29"', add
label define ec10a_regbulb_lbl 030 `"30"', add
label define ec10a_regbulb_lbl 031 `"31"', add
label define ec10a_regbulb_lbl 032 `"32"', add
label define ec10a_regbulb_lbl 033 `"33"', add
label define ec10a_regbulb_lbl 034 `"34"', add
label define ec10a_regbulb_lbl 035 `"35"', add
label define ec10a_regbulb_lbl 036 `"36"', add
label define ec10a_regbulb_lbl 037 `"37"', add
label define ec10a_regbulb_lbl 038 `"38"', add
label define ec10a_regbulb_lbl 039 `"39"', add
label define ec10a_regbulb_lbl 040 `"40+"', add
label define ec10a_regbulb_lbl 999 `"NIU (not in universe)"', add
label values ec10a_regbulb ec10a_regbulb_lbl

label define ec10a_trash_lbl 1 `"Collection truck"'
label define ec10a_trash_lbl 2 `"Thrown into an empty lot or a ditch"', add
label define ec10a_trash_lbl 3 `"Burned"', add
label define ec10a_trash_lbl 4 `"Buried"', add
label define ec10a_trash_lbl 5 `"Thrown into a river, creek, or channel"', add
label define ec10a_trash_lbl 6 `"Other method"', add
label define ec10a_trash_lbl 9 `"NIU (not in universe)"', add
label values ec10a_trash ec10a_trash_lbl

label define ec10a_rooms_lbl 01 `"1"'
label define ec10a_rooms_lbl 02 `"2"', add
label define ec10a_rooms_lbl 03 `"3"', add
label define ec10a_rooms_lbl 04 `"4"', add
label define ec10a_rooms_lbl 05 `"5"', add
label define ec10a_rooms_lbl 06 `"6"', add
label define ec10a_rooms_lbl 07 `"7"', add
label define ec10a_rooms_lbl 08 `"8"', add
label define ec10a_rooms_lbl 09 `"9"', add
label define ec10a_rooms_lbl 10 `"10"', add
label define ec10a_rooms_lbl 11 `"11"', add
label define ec10a_rooms_lbl 12 `"12"', add
label define ec10a_rooms_lbl 13 `"13"', add
label define ec10a_rooms_lbl 14 `"14"', add
label define ec10a_rooms_lbl 15 `"15"', add
label define ec10a_rooms_lbl 16 `"16+"', add
label define ec10a_rooms_lbl 99 `"NIU (not in universe)"', add
label values ec10a_rooms ec10a_rooms_lbl

label define ec10a_morehh_lbl 1 `"Yes"'
label define ec10a_morehh_lbl 2 `"No"', add
label define ec10a_morehh_lbl 9 `"NIU (not in universe)"', add
label values ec10a_morehh ec10a_morehh_lbl

label define ec10a_numbhhs_lbl 1 `"1"'
label define ec10a_numbhhs_lbl 2 `"2"', add
label define ec10a_numbhhs_lbl 3 `"3"', add
label define ec10a_numbhhs_lbl 4 `"4"', add
label define ec10a_numbhhs_lbl 5 `"5"', add
label define ec10a_numbhhs_lbl 9 `"NIU (not in universe)"', add
label values ec10a_numbhhs ec10a_numbhhs_lbl

label define ec10a_bedrooms_lbl 00 `"No bedrooms"'
label define ec10a_bedrooms_lbl 01 `"1"', add
label define ec10a_bedrooms_lbl 02 `"2"', add
label define ec10a_bedrooms_lbl 03 `"3"', add
label define ec10a_bedrooms_lbl 04 `"4"', add
label define ec10a_bedrooms_lbl 05 `"5"', add
label define ec10a_bedrooms_lbl 06 `"6"', add
label define ec10a_bedrooms_lbl 07 `"7"', add
label define ec10a_bedrooms_lbl 08 `"8"', add
label define ec10a_bedrooms_lbl 09 `"9"', add
label define ec10a_bedrooms_lbl 10 `"10+"', add
label define ec10a_bedrooms_lbl 99 `"NIU (not in universe)"', add
label values ec10a_bedrooms ec10a_bedrooms_lbl

label define ec10a_emigdw_lbl 00 `"No emigrants"'
label define ec10a_emigdw_lbl 01 `"1"', add
label define ec10a_emigdw_lbl 02 `"2"', add
label define ec10a_emigdw_lbl 03 `"3"', add
label define ec10a_emigdw_lbl 04 `"4"', add
label define ec10a_emigdw_lbl 05 `"5"', add
label define ec10a_emigdw_lbl 06 `"6"', add
label define ec10a_emigdw_lbl 07 `"7+"', add
label define ec10a_emigdw_lbl 99 `"NIU (not in universe)"', add
label values ec10a_emigdw ec10a_emigdw_lbl

label define ec10a_perroom_lbl 1 `"Less than 2"'
label define ec10a_perroom_lbl 2 `"Between 2 and 3"', add
label define ec10a_perroom_lbl 3 `"Between 4 and 5"', add
label define ec10a_perroom_lbl 4 `"More than 5"', add
label define ec10a_perroom_lbl 9 `"NIU (not in universe)"', add
label values ec10a_perroom ec10a_perroom_lbl

label define ec10a_perbdrm_lbl 1 `"Dwelling without bedrooms"'
label define ec10a_perbdrm_lbl 2 `"Less than 2"', add
label define ec10a_perbdrm_lbl 3 `"Between 2 and 3"', add
label define ec10a_perbdrm_lbl 4 `"Between 4 and 5"', add
label define ec10a_perbdrm_lbl 5 `"More than 5"', add
label define ec10a_perbdrm_lbl 9 `"NIU (not in universe)"', add
label values ec10a_perbdrm ec10a_perbdrm_lbl

label define ec10a_remitt_lbl 1 `"Yes"'
label define ec10a_remitt_lbl 2 `"No"', add
label define ec10a_remitt_lbl 9 `"NIU (not in universe)"', add
label values ec10a_remitt ec10a_remitt_lbl

label define ec10a_roomshh_lbl 00 `"No bedrooms"'
label define ec10a_roomshh_lbl 01 `"1"', add
label define ec10a_roomshh_lbl 02 `"2"', add
label define ec10a_roomshh_lbl 03 `"3"', add
label define ec10a_roomshh_lbl 04 `"4"', add
label define ec10a_roomshh_lbl 05 `"5"', add
label define ec10a_roomshh_lbl 06 `"6"', add
label define ec10a_roomshh_lbl 07 `"7"', add
label define ec10a_roomshh_lbl 08 `"8"', add
label define ec10a_roomshh_lbl 09 `"9"', add
label define ec10a_roomshh_lbl 10 `"10+"', add
label define ec10a_roomshh_lbl 99 `"NIU (not in universe)"', add
label values ec10a_roomshh ec10a_roomshh_lbl

label define ec10a_cookspc_lbl 1 `"Yes"'
label define ec10a_cookspc_lbl 2 `"No"', add
label define ec10a_cookspc_lbl 9 `"NIU (not in universe)"', add
label values ec10a_cookspc ec10a_cookspc_lbl

label define ec10a_toilet_lbl 1 `"Exclusive use of the household"'
label define ec10a_toilet_lbl 2 `"Shared with other households"', add
label define ec10a_toilet_lbl 3 `"Does not have"', add
label define ec10a_toilet_lbl 9 `"NIU (not in universe)"', add
label values ec10a_toilet ec10a_toilet_lbl

label define ec10a_bath_lbl 1 `"Exclusive use of the household"'
label define ec10a_bath_lbl 2 `"Shared with other households"', add
label define ec10a_bath_lbl 3 `"Does not have"', add
label define ec10a_bath_lbl 9 `"NIU (not in universe)"', add
label values ec10a_bath ec10a_bath_lbl

label define ec10a_fuelck_lbl 1 `"Gas (tank or cylinder)"'
label define ec10a_fuelck_lbl 2 `"Centralized gas"', add
label define ec10a_fuelck_lbl 3 `"Electricity"', add
label define ec10a_fuelck_lbl 4 `"Firewood, charcoal"', add
label define ec10a_fuelck_lbl 5 `"Vegetable and/or animal residues"', add
label define ec10a_fuelck_lbl 6 `"Other (gasoline, kerosene, diesel, or other)"', add
label define ec10a_fuelck_lbl 7 `"Does not cook"', add
label define ec10a_fuelck_lbl 9 `"NIU (not in universe)"', add
label values ec10a_fuelck ec10a_fuelck_lbl

label define ec10a_drinkwtr_lbl 1 `"As it is suplied to the household"'
label define ec10a_drinkwtr_lbl 2 `"Boiled"', add
label define ec10a_drinkwtr_lbl 3 `"Adding bleach"', add
label define ec10a_drinkwtr_lbl 4 `"Filtered"', add
label define ec10a_drinkwtr_lbl 5 `"Buy purified water"', add
label define ec10a_drinkwtr_lbl 9 `"NIU (not in universe)"', add
label values ec10a_drinkwtr ec10a_drinkwtr_lbl

label define ec10a_phone_lbl 1 `"Yes"'
label define ec10a_phone_lbl 2 `"No"', add
label define ec10a_phone_lbl 9 `"NIU (not in universe)"', add
label values ec10a_phone ec10a_phone_lbl

label define ec10a_cellphon_lbl 1 `"Yes"'
label define ec10a_cellphon_lbl 2 `"No"', add
label define ec10a_cellphon_lbl 9 `"NIU (not in universe)"', add
label values ec10a_cellphon ec10a_cellphon_lbl

label define ec10a_internet_lbl 1 `"Yes"'
label define ec10a_internet_lbl 2 `"No"', add
label define ec10a_internet_lbl 9 `"NIU (not in universe)"', add
label values ec10a_internet ec10a_internet_lbl

label define ec10a_computer_lbl 1 `"Yes"'
label define ec10a_computer_lbl 2 `"No"', add
label define ec10a_computer_lbl 9 `"NIU (not in universe)"', add
label values ec10a_computer ec10a_computer_lbl

label define ec10a_cable_lbl 1 `"Yes"'
label define ec10a_cable_lbl 2 `"No"', add
label define ec10a_cable_lbl 9 `"NIU (not in universe)"', add
label values ec10a_cable ec10a_cable_lbl

label define ec10a_payelect_lbl 0001 `"1"'
label define ec10a_payelect_lbl 0002 `"2"', add
label define ec10a_payelect_lbl 0003 `"3"', add
label define ec10a_payelect_lbl 0004 `"4"', add
label define ec10a_payelect_lbl 0005 `"5"', add
label define ec10a_payelect_lbl 0006 `"6"', add
label define ec10a_payelect_lbl 0007 `"7"', add
label define ec10a_payelect_lbl 0008 `"8"', add
label define ec10a_payelect_lbl 0009 `"9"', add
label define ec10a_payelect_lbl 0010 `"10"', add
label define ec10a_payelect_lbl 0011 `"11"', add
label define ec10a_payelect_lbl 0012 `"12"', add
label define ec10a_payelect_lbl 0013 `"13"', add
label define ec10a_payelect_lbl 0014 `"14"', add
label define ec10a_payelect_lbl 0015 `"15"', add
label define ec10a_payelect_lbl 0016 `"16"', add
label define ec10a_payelect_lbl 0017 `"17"', add
label define ec10a_payelect_lbl 0018 `"18"', add
label define ec10a_payelect_lbl 0019 `"19"', add
label define ec10a_payelect_lbl 0020 `"20"', add
label define ec10a_payelect_lbl 0021 `"21"', add
label define ec10a_payelect_lbl 0022 `"22"', add
label define ec10a_payelect_lbl 0023 `"23"', add
label define ec10a_payelect_lbl 0024 `"24"', add
label define ec10a_payelect_lbl 0025 `"25"', add
label define ec10a_payelect_lbl 0026 `"26"', add
label define ec10a_payelect_lbl 0027 `"27"', add
label define ec10a_payelect_lbl 0028 `"28"', add
label define ec10a_payelect_lbl 0029 `"29"', add
label define ec10a_payelect_lbl 0030 `"30"', add
label define ec10a_payelect_lbl 0031 `"31"', add
label define ec10a_payelect_lbl 0032 `"32"', add
label define ec10a_payelect_lbl 0033 `"33"', add
label define ec10a_payelect_lbl 0034 `"34"', add
label define ec10a_payelect_lbl 0035 `"35"', add
label define ec10a_payelect_lbl 0036 `"36"', add
label define ec10a_payelect_lbl 0037 `"37"', add
label define ec10a_payelect_lbl 0038 `"38"', add
label define ec10a_payelect_lbl 0039 `"39"', add
label define ec10a_payelect_lbl 0040 `"40"', add
label define ec10a_payelect_lbl 0041 `"41"', add
label define ec10a_payelect_lbl 0042 `"42"', add
label define ec10a_payelect_lbl 0043 `"43"', add
label define ec10a_payelect_lbl 0044 `"44"', add
label define ec10a_payelect_lbl 0045 `"45"', add
label define ec10a_payelect_lbl 0046 `"46"', add
label define ec10a_payelect_lbl 0047 `"47"', add
label define ec10a_payelect_lbl 0048 `"48"', add
label define ec10a_payelect_lbl 0049 `"49"', add
label define ec10a_payelect_lbl 0050 `"50"', add
label define ec10a_payelect_lbl 0051 `"51"', add
label define ec10a_payelect_lbl 0052 `"52"', add
label define ec10a_payelect_lbl 0053 `"53"', add
label define ec10a_payelect_lbl 0054 `"54"', add
label define ec10a_payelect_lbl 0055 `"55"', add
label define ec10a_payelect_lbl 0056 `"56"', add
label define ec10a_payelect_lbl 0057 `"57"', add
label define ec10a_payelect_lbl 0058 `"58"', add
label define ec10a_payelect_lbl 0059 `"59"', add
label define ec10a_payelect_lbl 0060 `"60"', add
label define ec10a_payelect_lbl 0061 `"61"', add
label define ec10a_payelect_lbl 0062 `"62"', add
label define ec10a_payelect_lbl 0063 `"63"', add
label define ec10a_payelect_lbl 0064 `"64"', add
label define ec10a_payelect_lbl 0065 `"65"', add
label define ec10a_payelect_lbl 0066 `"66"', add
label define ec10a_payelect_lbl 0067 `"67"', add
label define ec10a_payelect_lbl 0068 `"68"', add
label define ec10a_payelect_lbl 0069 `"69"', add
label define ec10a_payelect_lbl 0070 `"70"', add
label define ec10a_payelect_lbl 0071 `"71"', add
label define ec10a_payelect_lbl 0072 `"72"', add
label define ec10a_payelect_lbl 0073 `"73"', add
label define ec10a_payelect_lbl 0074 `"74"', add
label define ec10a_payelect_lbl 0075 `"75"', add
label define ec10a_payelect_lbl 0076 `"76"', add
label define ec10a_payelect_lbl 0077 `"77"', add
label define ec10a_payelect_lbl 0078 `"78"', add
label define ec10a_payelect_lbl 0079 `"79"', add
label define ec10a_payelect_lbl 0080 `"80"', add
label define ec10a_payelect_lbl 0081 `"81"', add
label define ec10a_payelect_lbl 0082 `"82"', add
label define ec10a_payelect_lbl 0083 `"83"', add
label define ec10a_payelect_lbl 0084 `"84"', add
label define ec10a_payelect_lbl 0085 `"85"', add
label define ec10a_payelect_lbl 0086 `"86"', add
label define ec10a_payelect_lbl 0087 `"87"', add
label define ec10a_payelect_lbl 0088 `"88"', add
label define ec10a_payelect_lbl 0089 `"89"', add
label define ec10a_payelect_lbl 0090 `"90"', add
label define ec10a_payelect_lbl 0091 `"91"', add
label define ec10a_payelect_lbl 0092 `"92"', add
label define ec10a_payelect_lbl 0093 `"93"', add
label define ec10a_payelect_lbl 0094 `"94"', add
label define ec10a_payelect_lbl 0095 `"95"', add
label define ec10a_payelect_lbl 0096 `"96"', add
label define ec10a_payelect_lbl 0097 `"97"', add
label define ec10a_payelect_lbl 0098 `"98"', add
label define ec10a_payelect_lbl 0099 `"99"', add
label define ec10a_payelect_lbl 0100 `"100"', add
label define ec10a_payelect_lbl 0101 `"101"', add
label define ec10a_payelect_lbl 0102 `"102"', add
label define ec10a_payelect_lbl 0103 `"103"', add
label define ec10a_payelect_lbl 0104 `"104"', add
label define ec10a_payelect_lbl 0105 `"105"', add
label define ec10a_payelect_lbl 0106 `"106"', add
label define ec10a_payelect_lbl 0107 `"107"', add
label define ec10a_payelect_lbl 0108 `"108"', add
label define ec10a_payelect_lbl 0109 `"109"', add
label define ec10a_payelect_lbl 0110 `"110"', add
label define ec10a_payelect_lbl 0111 `"111"', add
label define ec10a_payelect_lbl 0112 `"112"', add
label define ec10a_payelect_lbl 0113 `"113"', add
label define ec10a_payelect_lbl 0114 `"114"', add
label define ec10a_payelect_lbl 0115 `"115"', add
label define ec10a_payelect_lbl 0116 `"116"', add
label define ec10a_payelect_lbl 0117 `"117"', add
label define ec10a_payelect_lbl 0118 `"118"', add
label define ec10a_payelect_lbl 0119 `"119"', add
label define ec10a_payelect_lbl 0120 `"120"', add
label define ec10a_payelect_lbl 0121 `"121"', add
label define ec10a_payelect_lbl 0122 `"122"', add
label define ec10a_payelect_lbl 0123 `"123"', add
label define ec10a_payelect_lbl 0124 `"124"', add
label define ec10a_payelect_lbl 0125 `"125"', add
label define ec10a_payelect_lbl 0126 `"126"', add
label define ec10a_payelect_lbl 0127 `"127"', add
label define ec10a_payelect_lbl 0128 `"128"', add
label define ec10a_payelect_lbl 0129 `"129"', add
label define ec10a_payelect_lbl 0130 `"130"', add
label define ec10a_payelect_lbl 0131 `"131"', add
label define ec10a_payelect_lbl 0132 `"132"', add
label define ec10a_payelect_lbl 0133 `"133"', add
label define ec10a_payelect_lbl 0134 `"134"', add
label define ec10a_payelect_lbl 0135 `"135"', add
label define ec10a_payelect_lbl 0136 `"136"', add
label define ec10a_payelect_lbl 0137 `"137"', add
label define ec10a_payelect_lbl 0138 `"138"', add
label define ec10a_payelect_lbl 0139 `"139"', add
label define ec10a_payelect_lbl 0140 `"140"', add
label define ec10a_payelect_lbl 0141 `"141"', add
label define ec10a_payelect_lbl 0142 `"142"', add
label define ec10a_payelect_lbl 0143 `"143"', add
label define ec10a_payelect_lbl 0144 `"144"', add
label define ec10a_payelect_lbl 0145 `"145"', add
label define ec10a_payelect_lbl 0146 `"146"', add
label define ec10a_payelect_lbl 0147 `"147"', add
label define ec10a_payelect_lbl 0148 `"148"', add
label define ec10a_payelect_lbl 0149 `"149"', add
label define ec10a_payelect_lbl 0150 `"150"', add
label define ec10a_payelect_lbl 0151 `"151"', add
label define ec10a_payelect_lbl 0152 `"152"', add
label define ec10a_payelect_lbl 0153 `"153"', add
label define ec10a_payelect_lbl 0154 `"154"', add
label define ec10a_payelect_lbl 0155 `"155"', add
label define ec10a_payelect_lbl 0156 `"156"', add
label define ec10a_payelect_lbl 0157 `"157"', add
label define ec10a_payelect_lbl 0159 `"159"', add
label define ec10a_payelect_lbl 0160 `"160"', add
label define ec10a_payelect_lbl 0162 `"162"', add
label define ec10a_payelect_lbl 0166 `"166"', add
label define ec10a_payelect_lbl 0167 `"167"', add
label define ec10a_payelect_lbl 0168 `"168"', add
label define ec10a_payelect_lbl 0170 `"170"', add
label define ec10a_payelect_lbl 0171 `"171"', add
label define ec10a_payelect_lbl 0172 `"172"', add
label define ec10a_payelect_lbl 0173 `"173"', add
label define ec10a_payelect_lbl 0175 `"175"', add
label define ec10a_payelect_lbl 0176 `"176"', add
label define ec10a_payelect_lbl 0180 `"180"', add
label define ec10a_payelect_lbl 0182 `"182"', add
label define ec10a_payelect_lbl 0183 `"183"', add
label define ec10a_payelect_lbl 0185 `"185"', add
label define ec10a_payelect_lbl 0186 `"186"', add
label define ec10a_payelect_lbl 0187 `"187"', add
label define ec10a_payelect_lbl 0188 `"188"', add
label define ec10a_payelect_lbl 0190 `"190"', add
label define ec10a_payelect_lbl 0191 `"191"', add
label define ec10a_payelect_lbl 0192 `"192"', add
label define ec10a_payelect_lbl 0193 `"193"', add
label define ec10a_payelect_lbl 0195 `"195"', add
label define ec10a_payelect_lbl 0196 `"196"', add
label define ec10a_payelect_lbl 0198 `"198"', add
label define ec10a_payelect_lbl 0199 `"199"', add
label define ec10a_payelect_lbl 0200 `"200+"', add
label define ec10a_payelect_lbl 9998 `"Unknown"', add
label define ec10a_payelect_lbl 9999 `"NIU (not in universe)"', add
label values ec10a_payelect ec10a_payelect_lbl

label define ec10a_electbil_lbl 1 `"No, included in the rent"'
label define ec10a_electbil_lbl 2 `"No, does not pay"', add
label define ec10a_electbil_lbl 3 `"Yes, pays for electricity"', add
label define ec10a_electbil_lbl 9 `"NIU (not in universe)"', add
label values ec10a_electbil ec10a_electbil_lbl

label define ec10a_movwork_lbl 1 `"Yes"'
label define ec10a_movwork_lbl 2 `"No"', add
label define ec10a_movwork_lbl 9 `"NIU (not in universe)"', add
label values ec10a_movwork ec10a_movwork_lbl

label define ec10a_nmvwork_lbl 1 `"1"'
label define ec10a_nmvwork_lbl 2 `"2"', add
label define ec10a_nmvwork_lbl 3 `"3"', add
label define ec10a_nmvwork_lbl 4 `"4"', add
label define ec10a_nmvwork_lbl 5 `"5"', add
label define ec10a_nmvwork_lbl 6 `"6+"', add
label define ec10a_nmvwork_lbl 9 `"NIU (not in universe)"', add
label values ec10a_nmvwork ec10a_nmvwork_lbl

label define ec10a_movstudy_lbl 1 `"Yes"'
label define ec10a_movstudy_lbl 2 `"No"', add
label define ec10a_movstudy_lbl 9 `"NIU (not in universe)"', add
label values ec10a_movstudy ec10a_movstudy_lbl

label define ec10a_nstudy_lbl 01 `"1"'
label define ec10a_nstudy_lbl 02 `"2"', add
label define ec10a_nstudy_lbl 03 `"3"', add
label define ec10a_nstudy_lbl 04 `"4"', add
label define ec10a_nstudy_lbl 05 `"5"', add
label define ec10a_nstudy_lbl 06 `"6+"', add
label define ec10a_nstudy_lbl 99 `"NIU (not in universe)"', add
label values ec10a_nstudy ec10a_nstudy_lbl

label define ec10a_ownershp_lbl 1 `"Own and fully paid"'
label define ec10a_ownershp_lbl 2 `"Own and being paid for"', add
label define ec10a_ownershp_lbl 3 `"Owned (gifted, donated, inherited, or through possession)"', add
label define ec10a_ownershp_lbl 4 `"Loaned or leased (do not pay)"', add
label define ec10a_ownershp_lbl 5 `"For services"', add
label define ec10a_ownershp_lbl 6 `"Rented"', add
label define ec10a_ownershp_lbl 7 `"Loan-backed habitation (antichresis)"', add
label define ec10a_ownershp_lbl 9 `"NIU (not in universe)"', add
label values ec10a_ownershp ec10a_ownershp_lbl

label define ec10a_moneyrel_lbl 1 `"Yes"'
label define ec10a_moneyrel_lbl 2 `"No"', add
label define ec10a_moneyrel_lbl 9 `"NIU (not in universe)"', add
label values ec10a_moneyrel ec10a_moneyrel_lbl

label define ec10a_travel_lbl 1 `"Yes"'
label define ec10a_travel_lbl 2 `"No"', add
label define ec10a_travel_lbl 9 `"NIU (not in universe)"', add
label values ec10a_travel ec10a_travel_lbl

label define ec10a_ntravel_lbl 1 `"1"'
label define ec10a_ntravel_lbl 2 `"2"', add
label define ec10a_ntravel_lbl 3 `"3"', add
label define ec10a_ntravel_lbl 4 `"4"', add
label define ec10a_ntravel_lbl 5 `"5"', add
label define ec10a_ntravel_lbl 6 `"6"', add
label define ec10a_ntravel_lbl 7 `"7"', add
label define ec10a_ntravel_lbl 9 `"NIU (not in universe)"', add
label values ec10a_ntravel ec10a_ntravel_lbl

label define ec10a_nmigs_lbl 0 `"0"'
label define ec10a_nmigs_lbl 1 `"1"', add
label define ec10a_nmigs_lbl 2 `"2"', add
label define ec10a_nmigs_lbl 3 `"3"', add
label define ec10a_nmigs_lbl 4 `"4"', add
label define ec10a_nmigs_lbl 5 `"5"', add
label define ec10a_nmigs_lbl 6 `"6"', add
label define ec10a_nmigs_lbl 7 `"7"', add
label values ec10a_nmigs ec10a_nmigs_lbl

label define ec10a_pernum_lbl 00 `"Household record"'
label define ec10a_pernum_lbl 01 `"1"', add
label define ec10a_pernum_lbl 02 `"2"', add
label define ec10a_pernum_lbl 03 `"3"', add
label define ec10a_pernum_lbl 04 `"4"', add
label define ec10a_pernum_lbl 05 `"5"', add
label define ec10a_pernum_lbl 06 `"6"', add
label define ec10a_pernum_lbl 07 `"7"', add
label define ec10a_pernum_lbl 08 `"8"', add
label define ec10a_pernum_lbl 09 `"9"', add
label define ec10a_pernum_lbl 10 `"10"', add
label define ec10a_pernum_lbl 11 `"11"', add
label define ec10a_pernum_lbl 12 `"12"', add
label define ec10a_pernum_lbl 13 `"13"', add
label define ec10a_pernum_lbl 14 `"14"', add
label define ec10a_pernum_lbl 15 `"15"', add
label define ec10a_pernum_lbl 16 `"16"', add
label define ec10a_pernum_lbl 17 `"17"', add
label define ec10a_pernum_lbl 18 `"18"', add
label define ec10a_pernum_lbl 19 `"19"', add
label define ec10a_pernum_lbl 20 `"20"', add
label define ec10a_pernum_lbl 21 `"21"', add
label define ec10a_pernum_lbl 22 `"22"', add
label define ec10a_pernum_lbl 23 `"23"', add
label define ec10a_pernum_lbl 24 `"24"', add
label define ec10a_pernum_lbl 25 `"25"', add
label define ec10a_pernum_lbl 26 `"26"', add
label define ec10a_pernum_lbl 27 `"27"', add
label define ec10a_pernum_lbl 28 `"28"', add
label define ec10a_pernum_lbl 29 `"29"', add
label define ec10a_pernum_lbl 30 `"30"', add
label values ec10a_pernum ec10a_pernum_lbl

label define ec10a_resident_lbl 1 `"Yes"'
label define ec10a_resident_lbl 2 `"No"', add
label define ec10a_resident_lbl 8 `"Unknown"', add
label define ec10a_resident_lbl 9 `"NIU (not in universe)"', add
label values ec10a_resident ec10a_resident_lbl

label define ec10a_sex_lbl 1 `"Male"'
label define ec10a_sex_lbl 2 `"Female"', add
label values ec10a_sex ec10a_sex_lbl

label define ec10a_relate_lbl 01 `"Head of household"'
label define ec10a_relate_lbl 02 `"Spouse or partner"', add
label define ec10a_relate_lbl 03 `"Son or daughter"', add
label define ec10a_relate_lbl 04 `"Son-in-law or daughter-in-law"', add
label define ec10a_relate_lbl 05 `"Grandson or granddaughter"', add
label define ec10a_relate_lbl 06 `"Parents or parents-in-law"', add
label define ec10a_relate_lbl 07 `"Other relative"', add
label define ec10a_relate_lbl 08 `"Other non-relative"', add
label define ec10a_relate_lbl 09 `"Household employee"', add
label define ec10a_relate_lbl 10 `"Member of collective household"', add
label define ec10a_relate_lbl 11 `"Without a dwelling"', add
label values ec10a_relate ec10a_relate_lbl

label define ec10a_age_lbl 000 `"Less than 1 year old"'
label define ec10a_age_lbl 001 `"1"', add
label define ec10a_age_lbl 002 `"2"', add
label define ec10a_age_lbl 003 `"3"', add
label define ec10a_age_lbl 004 `"4"', add
label define ec10a_age_lbl 005 `"5"', add
label define ec10a_age_lbl 006 `"6"', add
label define ec10a_age_lbl 007 `"7"', add
label define ec10a_age_lbl 008 `"8"', add
label define ec10a_age_lbl 009 `"9"', add
label define ec10a_age_lbl 010 `"10"', add
label define ec10a_age_lbl 011 `"11"', add
label define ec10a_age_lbl 012 `"12"', add
label define ec10a_age_lbl 013 `"13"', add
label define ec10a_age_lbl 014 `"14"', add
label define ec10a_age_lbl 015 `"15"', add
label define ec10a_age_lbl 016 `"16"', add
label define ec10a_age_lbl 017 `"17"', add
label define ec10a_age_lbl 018 `"18"', add
label define ec10a_age_lbl 019 `"19"', add
label define ec10a_age_lbl 020 `"20"', add
label define ec10a_age_lbl 021 `"21"', add
label define ec10a_age_lbl 022 `"22"', add
label define ec10a_age_lbl 023 `"23"', add
label define ec10a_age_lbl 024 `"24"', add
label define ec10a_age_lbl 025 `"25"', add
label define ec10a_age_lbl 026 `"26"', add
label define ec10a_age_lbl 027 `"27"', add
label define ec10a_age_lbl 028 `"28"', add
label define ec10a_age_lbl 029 `"29"', add
label define ec10a_age_lbl 030 `"30"', add
label define ec10a_age_lbl 031 `"31"', add
label define ec10a_age_lbl 032 `"32"', add
label define ec10a_age_lbl 033 `"33"', add
label define ec10a_age_lbl 034 `"34"', add
label define ec10a_age_lbl 035 `"35"', add
label define ec10a_age_lbl 036 `"36"', add
label define ec10a_age_lbl 037 `"37"', add
label define ec10a_age_lbl 038 `"38"', add
label define ec10a_age_lbl 039 `"39"', add
label define ec10a_age_lbl 040 `"40"', add
label define ec10a_age_lbl 041 `"41"', add
label define ec10a_age_lbl 042 `"42"', add
label define ec10a_age_lbl 043 `"43"', add
label define ec10a_age_lbl 044 `"44"', add
label define ec10a_age_lbl 045 `"45"', add
label define ec10a_age_lbl 046 `"46"', add
label define ec10a_age_lbl 047 `"47"', add
label define ec10a_age_lbl 048 `"48"', add
label define ec10a_age_lbl 049 `"49"', add
label define ec10a_age_lbl 050 `"50"', add
label define ec10a_age_lbl 051 `"51"', add
label define ec10a_age_lbl 052 `"52"', add
label define ec10a_age_lbl 053 `"53"', add
label define ec10a_age_lbl 054 `"54"', add
label define ec10a_age_lbl 055 `"55"', add
label define ec10a_age_lbl 056 `"56"', add
label define ec10a_age_lbl 057 `"57"', add
label define ec10a_age_lbl 058 `"58"', add
label define ec10a_age_lbl 059 `"59"', add
label define ec10a_age_lbl 060 `"60"', add
label define ec10a_age_lbl 061 `"61"', add
label define ec10a_age_lbl 062 `"62"', add
label define ec10a_age_lbl 063 `"63"', add
label define ec10a_age_lbl 064 `"64"', add
label define ec10a_age_lbl 065 `"65"', add
label define ec10a_age_lbl 066 `"66"', add
label define ec10a_age_lbl 067 `"67"', add
label define ec10a_age_lbl 068 `"68"', add
label define ec10a_age_lbl 069 `"69"', add
label define ec10a_age_lbl 070 `"70"', add
label define ec10a_age_lbl 071 `"71"', add
label define ec10a_age_lbl 072 `"72"', add
label define ec10a_age_lbl 073 `"73"', add
label define ec10a_age_lbl 074 `"74"', add
label define ec10a_age_lbl 075 `"75"', add
label define ec10a_age_lbl 076 `"76"', add
label define ec10a_age_lbl 077 `"77"', add
label define ec10a_age_lbl 078 `"78"', add
label define ec10a_age_lbl 079 `"79"', add
label define ec10a_age_lbl 080 `"80"', add
label define ec10a_age_lbl 081 `"81"', add
label define ec10a_age_lbl 082 `"82"', add
label define ec10a_age_lbl 083 `"83"', add
label define ec10a_age_lbl 084 `"84"', add
label define ec10a_age_lbl 085 `"85"', add
label define ec10a_age_lbl 086 `"86"', add
label define ec10a_age_lbl 087 `"87"', add
label define ec10a_age_lbl 088 `"88"', add
label define ec10a_age_lbl 089 `"89"', add
label define ec10a_age_lbl 090 `"90"', add
label define ec10a_age_lbl 091 `"91"', add
label define ec10a_age_lbl 092 `"92"', add
label define ec10a_age_lbl 093 `"93"', add
label define ec10a_age_lbl 094 `"94"', add
label define ec10a_age_lbl 095 `"95"', add
label define ec10a_age_lbl 096 `"96"', add
label define ec10a_age_lbl 097 `"97"', add
label define ec10a_age_lbl 098 `"98"', add
label define ec10a_age_lbl 099 `"99"', add
label define ec10a_age_lbl 100 `"100+"', add
label values ec10a_age ec10a_age_lbl

label define ec10a_birthmo_lbl 01 `"January"'
label define ec10a_birthmo_lbl 02 `"February"', add
label define ec10a_birthmo_lbl 03 `"March"', add
label define ec10a_birthmo_lbl 04 `"April"', add
label define ec10a_birthmo_lbl 05 `"May"', add
label define ec10a_birthmo_lbl 06 `"June"', add
label define ec10a_birthmo_lbl 07 `"July"', add
label define ec10a_birthmo_lbl 08 `"August"', add
label define ec10a_birthmo_lbl 09 `"September"', add
label define ec10a_birthmo_lbl 10 `"October"', add
label define ec10a_birthmo_lbl 11 `"November"', add
label define ec10a_birthmo_lbl 12 `"December"', add
label values ec10a_birthmo ec10a_birthmo_lbl

label define ec10a_birthyr_lbl 1910 `"1910 or earlier"'
label define ec10a_birthyr_lbl 1911 `"1911"', add
label define ec10a_birthyr_lbl 1912 `"1912"', add
label define ec10a_birthyr_lbl 1913 `"1913"', add
label define ec10a_birthyr_lbl 1914 `"1914"', add
label define ec10a_birthyr_lbl 1915 `"1915"', add
label define ec10a_birthyr_lbl 1916 `"1916"', add
label define ec10a_birthyr_lbl 1917 `"1917"', add
label define ec10a_birthyr_lbl 1918 `"1918"', add
label define ec10a_birthyr_lbl 1919 `"1919"', add
label define ec10a_birthyr_lbl 1920 `"1920"', add
label define ec10a_birthyr_lbl 1921 `"1921"', add
label define ec10a_birthyr_lbl 1922 `"1922"', add
label define ec10a_birthyr_lbl 1923 `"1923"', add
label define ec10a_birthyr_lbl 1924 `"1924"', add
label define ec10a_birthyr_lbl 1925 `"1925"', add
label define ec10a_birthyr_lbl 1926 `"1926"', add
label define ec10a_birthyr_lbl 1927 `"1927"', add
label define ec10a_birthyr_lbl 1928 `"1928"', add
label define ec10a_birthyr_lbl 1929 `"1929"', add
label define ec10a_birthyr_lbl 1930 `"1930"', add
label define ec10a_birthyr_lbl 1931 `"1931"', add
label define ec10a_birthyr_lbl 1932 `"1932"', add
label define ec10a_birthyr_lbl 1933 `"1933"', add
label define ec10a_birthyr_lbl 1934 `"1934"', add
label define ec10a_birthyr_lbl 1935 `"1935"', add
label define ec10a_birthyr_lbl 1936 `"1936"', add
label define ec10a_birthyr_lbl 1937 `"1937"', add
label define ec10a_birthyr_lbl 1938 `"1938"', add
label define ec10a_birthyr_lbl 1939 `"1939"', add
label define ec10a_birthyr_lbl 1940 `"1940"', add
label define ec10a_birthyr_lbl 1941 `"1941"', add
label define ec10a_birthyr_lbl 1942 `"1942"', add
label define ec10a_birthyr_lbl 1943 `"1943"', add
label define ec10a_birthyr_lbl 1944 `"1944"', add
label define ec10a_birthyr_lbl 1945 `"1945"', add
label define ec10a_birthyr_lbl 1946 `"1946"', add
label define ec10a_birthyr_lbl 1947 `"1947"', add
label define ec10a_birthyr_lbl 1948 `"1948"', add
label define ec10a_birthyr_lbl 1949 `"1949"', add
label define ec10a_birthyr_lbl 1950 `"1950"', add
label define ec10a_birthyr_lbl 1951 `"1951"', add
label define ec10a_birthyr_lbl 1952 `"1952"', add
label define ec10a_birthyr_lbl 1953 `"1953"', add
label define ec10a_birthyr_lbl 1954 `"1954"', add
label define ec10a_birthyr_lbl 1955 `"1955"', add
label define ec10a_birthyr_lbl 1956 `"1956"', add
label define ec10a_birthyr_lbl 1957 `"1957"', add
label define ec10a_birthyr_lbl 1958 `"1958"', add
label define ec10a_birthyr_lbl 1959 `"1959"', add
label define ec10a_birthyr_lbl 1960 `"1960"', add
label define ec10a_birthyr_lbl 1961 `"1961"', add
label define ec10a_birthyr_lbl 1962 `"1962"', add
label define ec10a_birthyr_lbl 1963 `"1963"', add
label define ec10a_birthyr_lbl 1964 `"1964"', add
label define ec10a_birthyr_lbl 1965 `"1965"', add
label define ec10a_birthyr_lbl 1966 `"1966"', add
label define ec10a_birthyr_lbl 1967 `"1967"', add
label define ec10a_birthyr_lbl 1968 `"1968"', add
label define ec10a_birthyr_lbl 1969 `"1969"', add
label define ec10a_birthyr_lbl 1970 `"1970"', add
label define ec10a_birthyr_lbl 1971 `"1971"', add
label define ec10a_birthyr_lbl 1972 `"1972"', add
label define ec10a_birthyr_lbl 1973 `"1973"', add
label define ec10a_birthyr_lbl 1974 `"1974"', add
label define ec10a_birthyr_lbl 1975 `"1975"', add
label define ec10a_birthyr_lbl 1976 `"1976"', add
label define ec10a_birthyr_lbl 1977 `"1977"', add
label define ec10a_birthyr_lbl 1978 `"1978"', add
label define ec10a_birthyr_lbl 1979 `"1979"', add
label define ec10a_birthyr_lbl 1980 `"1980"', add
label define ec10a_birthyr_lbl 1981 `"1981"', add
label define ec10a_birthyr_lbl 1982 `"1982"', add
label define ec10a_birthyr_lbl 1983 `"1983"', add
label define ec10a_birthyr_lbl 1984 `"1984"', add
label define ec10a_birthyr_lbl 1985 `"1985"', add
label define ec10a_birthyr_lbl 1986 `"1986"', add
label define ec10a_birthyr_lbl 1987 `"1987"', add
label define ec10a_birthyr_lbl 1988 `"1988"', add
label define ec10a_birthyr_lbl 1989 `"1989"', add
label define ec10a_birthyr_lbl 1990 `"1990"', add
label define ec10a_birthyr_lbl 1991 `"1991"', add
label define ec10a_birthyr_lbl 1992 `"1992"', add
label define ec10a_birthyr_lbl 1993 `"1993"', add
label define ec10a_birthyr_lbl 1994 `"1994"', add
label define ec10a_birthyr_lbl 1995 `"1995"', add
label define ec10a_birthyr_lbl 1996 `"1996"', add
label define ec10a_birthyr_lbl 1997 `"1997"', add
label define ec10a_birthyr_lbl 1998 `"1998"', add
label define ec10a_birthyr_lbl 1999 `"1999"', add
label define ec10a_birthyr_lbl 2000 `"2000"', add
label define ec10a_birthyr_lbl 2001 `"2001"', add
label define ec10a_birthyr_lbl 2002 `"2002"', add
label define ec10a_birthyr_lbl 2003 `"2003"', add
label define ec10a_birthyr_lbl 2004 `"2004"', add
label define ec10a_birthyr_lbl 2005 `"2005"', add
label define ec10a_birthyr_lbl 2006 `"2006"', add
label define ec10a_birthyr_lbl 2007 `"2007"', add
label define ec10a_birthyr_lbl 2008 `"2008"', add
label define ec10a_birthyr_lbl 2009 `"2009"', add
label define ec10a_birthyr_lbl 2010 `"2010"', add
label values ec10a_birthyr ec10a_birthyr_lbl

label define ec10a_citcard_lbl 1 `"Yes"'
label define ec10a_citcard_lbl 2 `"No"', add
label values ec10a_citcard ec10a_citcard_lbl

label define ec10a_civreg_lbl 1 `"Yes"'
label define ec10a_civreg_lbl 2 `"No"', add
label define ec10a_civreg_lbl 9 `"NIU (not in universe)"', add
label values ec10a_civreg ec10a_civreg_lbl

label define ec10a_privinsr_lbl 1 `"Yes"'
label define ec10a_privinsr_lbl 2 `"No"', add
label define ec10a_privinsr_lbl 9 `"Unknown"', add
label values ec10a_privinsr ec10a_privinsr_lbl

label define ec10a_disab_lbl 1 `"Yes"'
label define ec10a_disab_lbl 2 `"No"', add
label define ec10a_disab_lbl 9 `"Unknown"', add
label values ec10a_disab ec10a_disab_lbl

label define ec10a_disintel_lbl 1 `"Yes"'
label define ec10a_disintel_lbl 2 `"No"', add
label define ec10a_disintel_lbl 8 `"Unknown"', add
label values ec10a_disintel ec10a_disintel_lbl

label define ec10a_disphys_lbl 1 `"Yes"'
label define ec10a_disphys_lbl 2 `"No"', add
label define ec10a_disphys_lbl 8 `"Unknown"', add
label values ec10a_disphys ec10a_disphys_lbl

label define ec10a_dissight_lbl 1 `"Yes"'
label define ec10a_dissight_lbl 2 `"No"', add
label define ec10a_dissight_lbl 8 `"Unknown"', add
label values ec10a_dissight ec10a_dissight_lbl

label define ec10a_dishear_lbl 1 `"Yes"'
label define ec10a_dishear_lbl 2 `"No"', add
label define ec10a_dishear_lbl 8 `"Unknown"', add
label values ec10a_dishear ec10a_dishear_lbl

label define ec10a_disment_lbl 1 `"Yes"'
label define ec10a_disment_lbl 2 `"No"', add
label define ec10a_disment_lbl 8 `"Unknown"', add
label values ec10a_disment ec10a_disment_lbl

label define ec10a_diseduc_lbl 1 `"Yes"'
label define ec10a_diseduc_lbl 2 `"No"', add
label define ec10a_diseduc_lbl 8 `"Unknown"', add
label define ec10a_diseduc_lbl 9 `"NIU (not in universe)"', add
label values ec10a_diseduc ec10a_diseduc_lbl

label define ec10a_bpl_lbl 1 `"In this city or rural parish"'
label define ec10a_bpl_lbl 2 `"In another part of the country"', add
label define ec10a_bpl_lbl 3 `"In another country"', add
label values ec10a_bpl ec10a_bpl_lbl

label define ec10a_immigyr_lbl 1950 `"1950 or earlier"'
label define ec10a_immigyr_lbl 1951 `"1951"', add
label define ec10a_immigyr_lbl 1952 `"1952"', add
label define ec10a_immigyr_lbl 1953 `"1953"', add
label define ec10a_immigyr_lbl 1954 `"1954"', add
label define ec10a_immigyr_lbl 1955 `"1955"', add
label define ec10a_immigyr_lbl 1956 `"1956"', add
label define ec10a_immigyr_lbl 1957 `"1957"', add
label define ec10a_immigyr_lbl 1958 `"1958"', add
label define ec10a_immigyr_lbl 1959 `"1959"', add
label define ec10a_immigyr_lbl 1960 `"1960"', add
label define ec10a_immigyr_lbl 1961 `"1961"', add
label define ec10a_immigyr_lbl 1962 `"1962"', add
label define ec10a_immigyr_lbl 1963 `"1963"', add
label define ec10a_immigyr_lbl 1964 `"1964"', add
label define ec10a_immigyr_lbl 1965 `"1965"', add
label define ec10a_immigyr_lbl 1966 `"1966"', add
label define ec10a_immigyr_lbl 1967 `"1967"', add
label define ec10a_immigyr_lbl 1968 `"1968"', add
label define ec10a_immigyr_lbl 1969 `"1969"', add
label define ec10a_immigyr_lbl 1970 `"1970"', add
label define ec10a_immigyr_lbl 1971 `"1971"', add
label define ec10a_immigyr_lbl 1972 `"1972"', add
label define ec10a_immigyr_lbl 1973 `"1973"', add
label define ec10a_immigyr_lbl 1974 `"1974"', add
label define ec10a_immigyr_lbl 1975 `"1975"', add
label define ec10a_immigyr_lbl 1976 `"1976"', add
label define ec10a_immigyr_lbl 1977 `"1977"', add
label define ec10a_immigyr_lbl 1978 `"1978"', add
label define ec10a_immigyr_lbl 1979 `"1979"', add
label define ec10a_immigyr_lbl 1980 `"1980"', add
label define ec10a_immigyr_lbl 1981 `"1981"', add
label define ec10a_immigyr_lbl 1982 `"1982"', add
label define ec10a_immigyr_lbl 1983 `"1983"', add
label define ec10a_immigyr_lbl 1984 `"1984"', add
label define ec10a_immigyr_lbl 1985 `"1985"', add
label define ec10a_immigyr_lbl 1986 `"1986"', add
label define ec10a_immigyr_lbl 1987 `"1987"', add
label define ec10a_immigyr_lbl 1988 `"1988"', add
label define ec10a_immigyr_lbl 1989 `"1989"', add
label define ec10a_immigyr_lbl 1990 `"1990"', add
label define ec10a_immigyr_lbl 1991 `"1991"', add
label define ec10a_immigyr_lbl 1992 `"1992"', add
label define ec10a_immigyr_lbl 1993 `"1993"', add
label define ec10a_immigyr_lbl 1994 `"1994"', add
label define ec10a_immigyr_lbl 1995 `"1995"', add
label define ec10a_immigyr_lbl 1996 `"1996"', add
label define ec10a_immigyr_lbl 1997 `"1997"', add
label define ec10a_immigyr_lbl 1998 `"1998"', add
label define ec10a_immigyr_lbl 1999 `"1999"', add
label define ec10a_immigyr_lbl 2000 `"2000"', add
label define ec10a_immigyr_lbl 2001 `"2001"', add
label define ec10a_immigyr_lbl 2002 `"2002"', add
label define ec10a_immigyr_lbl 2003 `"2003"', add
label define ec10a_immigyr_lbl 2004 `"2004"', add
label define ec10a_immigyr_lbl 2005 `"2005"', add
label define ec10a_immigyr_lbl 2006 `"2006"', add
label define ec10a_immigyr_lbl 2007 `"2007"', add
label define ec10a_immigyr_lbl 2008 `"2008"', add
label define ec10a_immigyr_lbl 2009 `"2009"', add
label define ec10a_immigyr_lbl 2010 `"2010"', add
label define ec10a_immigyr_lbl 9998 `"Unknown"', add
label define ec10a_immigyr_lbl 9999 `"NIU (not in universe)"', add
label values ec10a_immigyr ec10a_immigyr_lbl

label define ec10a_bplprov_lbl 01 `"Azuay"'
label define ec10a_bplprov_lbl 02 `"Bolívar"', add
label define ec10a_bplprov_lbl 03 `"Cañar"', add
label define ec10a_bplprov_lbl 04 `"Carchi"', add
label define ec10a_bplprov_lbl 05 `"Cotopaxi"', add
label define ec10a_bplprov_lbl 06 `"Chimborazo"', add
label define ec10a_bplprov_lbl 07 `"El Oro"', add
label define ec10a_bplprov_lbl 08 `"Esmeraldas"', add
label define ec10a_bplprov_lbl 09 `"Guayas"', add
label define ec10a_bplprov_lbl 10 `"Imbabura"', add
label define ec10a_bplprov_lbl 11 `"Loja"', add
label define ec10a_bplprov_lbl 12 `"Los Ríos"', add
label define ec10a_bplprov_lbl 13 `"Manabí"', add
label define ec10a_bplprov_lbl 14 `"Morona Santiago"', add
label define ec10a_bplprov_lbl 15 `"Napo"', add
label define ec10a_bplprov_lbl 16 `"Pastaza"', add
label define ec10a_bplprov_lbl 17 `"Pichincha"', add
label define ec10a_bplprov_lbl 18 `"Tungurahua"', add
label define ec10a_bplprov_lbl 19 `"Zamora Chinchipe"', add
label define ec10a_bplprov_lbl 20 `"Galápagos"', add
label define ec10a_bplprov_lbl 21 `"Sucumbios"', add
label define ec10a_bplprov_lbl 22 `"Orellana"', add
label define ec10a_bplprov_lbl 23 `"Santo Domingo de los Tsáchilas"', add
label define ec10a_bplprov_lbl 24 `"Santa Elena"', add
label define ec10a_bplprov_lbl 88 `"Abroad"', add
label define ec10a_bplprov_lbl 90 `"Non-delimited zones"', add
label values ec10a_bplprov ec10a_bplprov_lbl

label define ec10a_bplcntry_lbl 888101 `"Argentina"'
label define ec10a_bplcntry_lbl 888102 `"Bolivia"', add
label define ec10a_bplcntry_lbl 888103 `"Brazil"', add
label define ec10a_bplcntry_lbl 888104 `"Canada"', add
label define ec10a_bplcntry_lbl 888105 `"Colombia"', add
label define ec10a_bplcntry_lbl 888106 `"Costa Rica"', add
label define ec10a_bplcntry_lbl 888107 `"Cuba"', add
label define ec10a_bplcntry_lbl 888108 `"Chile"', add
label define ec10a_bplcntry_lbl 888110 `"United States"', add
label define ec10a_bplcntry_lbl 888111 `"Guatemala"', add
label define ec10a_bplcntry_lbl 888112 `"Haiti"', add
label define ec10a_bplcntry_lbl 888116 `"Mexico"', add
label define ec10a_bplcntry_lbl 888117 `"Nicaragua"', add
label define ec10a_bplcntry_lbl 888118 `"Panama"', add
label define ec10a_bplcntry_lbl 888120 `"Peru"', add
label define ec10a_bplcntry_lbl 888122 `"Dominican Republic"', add
label define ec10a_bplcntry_lbl 888125 `"Uruguay"', add
label define ec10a_bplcntry_lbl 888126 `"Venezuela"', add
label define ec10a_bplcntry_lbl 888199 `"Other countries in America"', add
label define ec10a_bplcntry_lbl 888202 `"Germany"', add
label define ec10a_bplcntry_lbl 888204 `"Belgium"', add
label define ec10a_bplcntry_lbl 888209 `"Spain"', add
label define ec10a_bplcntry_lbl 888211 `"France"', add
label define ec10a_bplcntry_lbl 888213 `"United Kingdom"', add
label define ec10a_bplcntry_lbl 888215 `"Netherlands"', add
label define ec10a_bplcntry_lbl 888219 `"Italy"', add
label define ec10a_bplcntry_lbl 888227 `"Switzerland"', add
label define ec10a_bplcntry_lbl 888230 `"Russian Federation (Soviet Union)"', add
label define ec10a_bplcntry_lbl 888299 `"Other Europe"', add
label define ec10a_bplcntry_lbl 888307 `"Taiwan, province of China (Nationalist)"', add
label define ec10a_bplcntry_lbl 888331 `"Peoples Republic of China"', add
label define ec10a_bplcntry_lbl 888330 `"Republic of South Korea"', add
label define ec10a_bplcntry_lbl 888322 `"Pakistan"', add
label define ec10a_bplcntry_lbl 888309 `"India"', add
label define ec10a_bplcntry_lbl 888313 `"Israel"', add
label define ec10a_bplcntry_lbl 888399 `"Other Asia"', add
label define ec10a_bplcntry_lbl 888499 `"Africa"', add
label define ec10a_bplcntry_lbl 888501 `"Australia"', add
label define ec10a_bplcntry_lbl 888999 `"Other and not specified"', add
label define ec10a_bplcntry_lbl 999999 `"Not born abroad"', add
label values ec10a_bplcntry ec10a_bplcntry_lbl

label define ec10a_uresid_lbl 1 `"In this city or rural parish"'
label define ec10a_uresid_lbl 2 `"In another part of the country"', add
label define ec10a_uresid_lbl 3 `"In another country"', add
label values ec10a_uresid ec10a_uresid_lbl

label define ec10a_uprov_lbl 01 `"Azuay"'
label define ec10a_uprov_lbl 02 `"Bolívar"', add
label define ec10a_uprov_lbl 03 `"Cañar"', add
label define ec10a_uprov_lbl 04 `"Carchi"', add
label define ec10a_uprov_lbl 05 `"Cotopaxi"', add
label define ec10a_uprov_lbl 06 `"Chimborazo"', add
label define ec10a_uprov_lbl 07 `"El Oro"', add
label define ec10a_uprov_lbl 08 `"Esmeraldas"', add
label define ec10a_uprov_lbl 09 `"Guayas"', add
label define ec10a_uprov_lbl 10 `"Imbabura"', add
label define ec10a_uprov_lbl 11 `"Loja"', add
label define ec10a_uprov_lbl 12 `"Los Ríos"', add
label define ec10a_uprov_lbl 13 `"Manabí"', add
label define ec10a_uprov_lbl 14 `"Morona Santiago"', add
label define ec10a_uprov_lbl 15 `"Napo"', add
label define ec10a_uprov_lbl 16 `"Pastaza"', add
label define ec10a_uprov_lbl 17 `"Pichincha"', add
label define ec10a_uprov_lbl 18 `"Tungurahua"', add
label define ec10a_uprov_lbl 19 `"Zamora Chinchipe"', add
label define ec10a_uprov_lbl 20 `"Galápagos"', add
label define ec10a_uprov_lbl 21 `"Sucumbios"', add
label define ec10a_uprov_lbl 22 `"Orellana"', add
label define ec10a_uprov_lbl 23 `"Santo Domingo de los Tsáchilas"', add
label define ec10a_uprov_lbl 24 `"Santa Elena"', add
label define ec10a_uprov_lbl 88 `"Abroad"', add
label define ec10a_uprov_lbl 90 `"Non-delimited zones"', add
label values ec10a_uprov ec10a_uprov_lbl

label define ec10a_ucntry_lbl 888105 `"Colombia"'
label define ec10a_ucntry_lbl 888107 `"Cuba"', add
label define ec10a_ucntry_lbl 888108 `"Chile"', add
label define ec10a_ucntry_lbl 888110 `"United States"', add
label define ec10a_ucntry_lbl 888120 `"Peru"', add
label define ec10a_ucntry_lbl 888126 `"Venezuela"', add
label define ec10a_ucntry_lbl 888202 `"Germany"', add
label define ec10a_ucntry_lbl 888209 `"Spain"', add
label define ec10a_ucntry_lbl 888211 `"France"', add
label define ec10a_ucntry_lbl 888213 `"United Kingdom"', add
label define ec10a_ucntry_lbl 888219 `"Italy"', add
label define ec10a_ucntry_lbl 888600 `"Response suppressed"', add
label define ec10a_ucntry_lbl 888999 `"Not specified"', add
label define ec10a_ucntry_lbl 999999 `"Not residing abroad"', add
label values ec10a_ucntry ec10a_ucntry_lbl

label define ec10a_res5yr_lbl 1 `"In this city or rural parish"'
label define ec10a_res5yr_lbl 2 `"In another part of the country"', add
label define ec10a_res5yr_lbl 3 `"In another country"', add
label define ec10a_res5yr_lbl 9 `"NIU (not in universe)"', add
label values ec10a_res5yr ec10a_res5yr_lbl

label define ec10a_prov5yr_lbl 01 `"Azuay"'
label define ec10a_prov5yr_lbl 02 `"Bolívar"', add
label define ec10a_prov5yr_lbl 03 `"Cañar"', add
label define ec10a_prov5yr_lbl 04 `"Carchi"', add
label define ec10a_prov5yr_lbl 05 `"Cotopaxi"', add
label define ec10a_prov5yr_lbl 06 `"Chimborazo"', add
label define ec10a_prov5yr_lbl 07 `"El Oro"', add
label define ec10a_prov5yr_lbl 08 `"Esmeraldas"', add
label define ec10a_prov5yr_lbl 09 `"Guayas"', add
label define ec10a_prov5yr_lbl 10 `"Imbabura"', add
label define ec10a_prov5yr_lbl 11 `"Loja"', add
label define ec10a_prov5yr_lbl 12 `"Los Ríos"', add
label define ec10a_prov5yr_lbl 13 `"Manabí"', add
label define ec10a_prov5yr_lbl 14 `"Morona Santiago"', add
label define ec10a_prov5yr_lbl 15 `"Napo"', add
label define ec10a_prov5yr_lbl 16 `"Pastaza"', add
label define ec10a_prov5yr_lbl 17 `"Pichincha"', add
label define ec10a_prov5yr_lbl 18 `"Tungurahua"', add
label define ec10a_prov5yr_lbl 19 `"Zamora Chinchipe"', add
label define ec10a_prov5yr_lbl 20 `"Galápagos"', add
label define ec10a_prov5yr_lbl 21 `"Sucumbios"', add
label define ec10a_prov5yr_lbl 22 `"Orellana"', add
label define ec10a_prov5yr_lbl 23 `"Santo Domingo de los Tsáchilas"', add
label define ec10a_prov5yr_lbl 24 `"Santa Elena"', add
label define ec10a_prov5yr_lbl 88 `"Abroad"', add
label define ec10a_prov5yr_lbl 90 `"Non-delimited zones"', add
label define ec10a_prov5yr_lbl 99 `"NIU (not in universe)"', add
label values ec10a_prov5yr ec10a_prov5yr_lbl

label define ec10a_ctry5yr_lbl 888101 `"Argentina"'
label define ec10a_ctry5yr_lbl 888102 `"Bolivia"', add
label define ec10a_ctry5yr_lbl 888103 `"Brazil"', add
label define ec10a_ctry5yr_lbl 888104 `"Canada"', add
label define ec10a_ctry5yr_lbl 888105 `"Colombia"', add
label define ec10a_ctry5yr_lbl 888106 `"Costa Rica"', add
label define ec10a_ctry5yr_lbl 888107 `"Cuba"', add
label define ec10a_ctry5yr_lbl 888108 `"Chile"', add
label define ec10a_ctry5yr_lbl 888110 `"United States"', add
label define ec10a_ctry5yr_lbl 888112 `"Haiti"', add
label define ec10a_ctry5yr_lbl 888116 `"Mexico"', add
label define ec10a_ctry5yr_lbl 888118 `"Panama"', add
label define ec10a_ctry5yr_lbl 888120 `"Peru"', add
label define ec10a_ctry5yr_lbl 888122 `"Dominican Republic"', add
label define ec10a_ctry5yr_lbl 888126 `"Venezuela"', add
label define ec10a_ctry5yr_lbl 888199 `"Other countries in America"', add
label define ec10a_ctry5yr_lbl 888202 `"Germany"', add
label define ec10a_ctry5yr_lbl 888204 `"Belgium"', add
label define ec10a_ctry5yr_lbl 888209 `"Spain"', add
label define ec10a_ctry5yr_lbl 888211 `"France"', add
label define ec10a_ctry5yr_lbl 888213 `"United Kingdom"', add
label define ec10a_ctry5yr_lbl 888215 `"Netherlands"', add
label define ec10a_ctry5yr_lbl 888219 `"Italy"', add
label define ec10a_ctry5yr_lbl 888227 `"Switzerland"', add
label define ec10a_ctry5yr_lbl 888299 `"Other Europe"', add
label define ec10a_ctry5yr_lbl 888331 `"Peoples Republic of China"', add
label define ec10a_ctry5yr_lbl 888399 `"Other Asia"', add
label define ec10a_ctry5yr_lbl 888499 `"Africa"', add
label define ec10a_ctry5yr_lbl 888501 `"Australia"', add
label define ec10a_ctry5yr_lbl 888999 `"Other and not specified country"', add
label define ec10a_ctry5yr_lbl 999990 `"Not living abroad"', add
label define ec10a_ctry5yr_lbl 999999 `"NIU (not in universe)"', add
label values ec10a_ctry5yr ec10a_ctry5yr_lbl

label define ec10a_langfind_lbl 1 `"Yes"'
label define ec10a_langfind_lbl 2 `"No"', add
label values ec10a_langfind ec10a_langfind_lbl

label define ec10a_langmind_lbl 1 `"Yes"'
label define ec10a_langmind_lbl 2 `"No"', add
label values ec10a_langmind ec10a_langmind_lbl

label define ec10a_langfsp_lbl 1 `"Yes"'
label define ec10a_langfsp_lbl 2 `"No"', add
label values ec10a_langfsp ec10a_langfsp_lbl

label define ec10a_langmsp_lbl 1 `"Yes"'
label define ec10a_langmsp_lbl 2 `"No"', add
label values ec10a_langmsp ec10a_langmsp_lbl

label define ec10a_langffor_lbl 1 `"Yes"'
label define ec10a_langffor_lbl 2 `"No"', add
label values ec10a_langffor ec10a_langffor_lbl

label define ec10a_langmfor_lbl 1 `"Yes"'
label define ec10a_langmfor_lbl 2 `"No"', add
label values ec10a_langmfor ec10a_langmfor_lbl

label define ec10a_langfnon_lbl 1 `"Yes"'
label define ec10a_langfnon_lbl 2 `"No"', add
label values ec10a_langfnon ec10a_langfnon_lbl

label define ec10a_langmnon_lbl 1 `"Yes"'
label define ec10a_langmnon_lbl 2 `"No"', add
label values ec10a_langmnon ec10a_langmnon_lbl

label define ec10a_langind1_lbl 1 `"Yes"'
label define ec10a_langind1_lbl 2 `"No"', add
label values ec10a_langind1 ec10a_langind1_lbl

label define ec10a_langind2_lbl 01 `"Awapit"'
label define ec10a_langind2_lbl 02 `"Achuar chicham"', add
label define ec10a_langind2_lbl 03 `"Cha'palaa"', add
label define ec10a_langind2_lbl 04 `"A'ingae"', add
label define ec10a_langind2_lbl 05 `"Zia pedee"', add
label define ec10a_langind2_lbl 06 `"Paicoca"', add
label define ec10a_langind2_lbl 07 `"Shiwiar chicham"', add
label define ec10a_langind2_lbl 08 `"Shuar chicham"', add
label define ec10a_langind2_lbl 09 `"Tsa'fiqui"', add
label define ec10a_langind2_lbl 10 `"Waotededo"', add
label define ec10a_langind2_lbl 11 `"Zapara"', add
label define ec10a_langind2_lbl 12 `"Andoa"', add
label define ec10a_langind2_lbl 13 `"Kichwa"', add
label define ec10a_langind2_lbl 98 `"Others"', add
label define ec10a_langind2_lbl 99 `"NIU (not in universe)"', add
label values ec10a_langind2 ec10a_langind2_lbl

label define ec10a_langsp_lbl 1 `"Yes"'
label define ec10a_langsp_lbl 2 `"No"', add
label values ec10a_langsp ec10a_langsp_lbl

label define ec10a_langfor_lbl 1 `"Yes"'
label define ec10a_langfor_lbl 2 `"No"', add
label values ec10a_langfor ec10a_langfor_lbl

label define ec10a_langnon_lbl 1 `"Does not speak any language"'
label define ec10a_langnon_lbl 2 `"Speaks a language"', add
label values ec10a_langnon ec10a_langnon_lbl

label define ec10a_race_lbl 1 `"Indigenous"'
label define ec10a_race_lbl 2 `"Afro-Ecuadorian or African descent"', add
label define ec10a_race_lbl 3 `"Black"', add
label define ec10a_race_lbl 4 `"Mulatto"', add
label define ec10a_race_lbl 5 `"Montubio (coastal peasant)"', add
label define ec10a_race_lbl 6 `"Mestizo"', add
label define ec10a_race_lbl 7 `"White"', add
label define ec10a_race_lbl 8 `"Other"', add
label values ec10a_race ec10a_race_lbl

label define ec10a_ethnic_lbl 01 `"Awa"'
label define ec10a_ethnic_lbl 02 `"Achuar"', add
label define ec10a_ethnic_lbl 03 `"Chachi"', add
label define ec10a_ethnic_lbl 04 `"Cofan"', add
label define ec10a_ethnic_lbl 05 `"Epera"', add
label define ec10a_ethnic_lbl 06 `"Siona"', add
label define ec10a_ethnic_lbl 07 `"Secoya"', add
label define ec10a_ethnic_lbl 08 `"Shiwiar"', add
label define ec10a_ethnic_lbl 09 `"Shuar"', add
label define ec10a_ethnic_lbl 10 `"Tsachila"', add
label define ec10a_ethnic_lbl 11 `"Waorani"', add
label define ec10a_ethnic_lbl 12 `"Zapara"', add
label define ec10a_ethnic_lbl 13 `"Andoa"', add
label define ec10a_ethnic_lbl 14 `"Kichwa Amazonia"', add
label define ec10a_ethnic_lbl 15 `"Kichwa Sierra"', add
label define ec10a_ethnic_lbl 21 `"Pastos"', add
label define ec10a_ethnic_lbl 22 `"Natabuela"', add
label define ec10a_ethnic_lbl 23 `"Otavalo"', add
label define ec10a_ethnic_lbl 24 `"Karanki"', add
label define ec10a_ethnic_lbl 25 `"Kayambi"', add
label define ec10a_ethnic_lbl 26 `"Kitukara"', add
label define ec10a_ethnic_lbl 27 `"Panzaleo"', add
label define ec10a_ethnic_lbl 28 `"Chibuleo"', add
label define ec10a_ethnic_lbl 29 `"Salasaka"', add
label define ec10a_ethnic_lbl 30 `"Kisapincha"', add
label define ec10a_ethnic_lbl 31 `"Tomabela"', add
label define ec10a_ethnic_lbl 32 `"Waranka"', add
label define ec10a_ethnic_lbl 33 `"Puruha"', add
label define ec10a_ethnic_lbl 34 `"Kañari"', add
label define ec10a_ethnic_lbl 35 `"Saraguro"', add
label define ec10a_ethnic_lbl 36 `"Paltas"', add
label define ec10a_ethnic_lbl 37 `"Manta"', add
label define ec10a_ethnic_lbl 38 `"Huancavilca"', add
label define ec10a_ethnic_lbl 88 `"Other indigenous ethnicity"', add
label define ec10a_ethnic_lbl 98 `"Unknown"', add
label define ec10a_ethnic_lbl 99 `"NIU (not in universe)"', add
label values ec10a_ethnic ec10a_ethnic_lbl

label define ec10a_chcare1_lbl 1 `"Yes"'
label define ec10a_chcare1_lbl 2 `"No"', add
label define ec10a_chcare1_lbl 9 `"NIU (not in universe)"', add
label values ec10a_chcare1 ec10a_chcare1_lbl

label define ec10a_chcare2_lbl 1 `"Yes"'
label define ec10a_chcare2_lbl 2 `"No"', add
label define ec10a_chcare2_lbl 9 `"NIU (not in universe)"', add
label values ec10a_chcare2 ec10a_chcare2_lbl

label define ec10a_chcare3_lbl 1 `"Yes"'
label define ec10a_chcare3_lbl 2 `"No"', add
label define ec10a_chcare3_lbl 9 `"NIU (not in universe)"', add
label values ec10a_chcare3 ec10a_chcare3_lbl

label define ec10a_chcare4_lbl 1 `"Yes"'
label define ec10a_chcare4_lbl 2 `"No"', add
label define ec10a_chcare4_lbl 9 `"NIU (not in universe)"', add
label values ec10a_chcare4 ec10a_chcare4_lbl

label define ec10a_chcare5_lbl 1 `"Yes"'
label define ec10a_chcare5_lbl 2 `"No"', add
label define ec10a_chcare5_lbl 9 `"NIU (not in universe)"', add
label values ec10a_chcare5 ec10a_chcare5_lbl

label define ec10a_chcare6_lbl 1 `"Yes"'
label define ec10a_chcare6_lbl 2 `"No"', add
label define ec10a_chcare6_lbl 9 `"NIU (not in universe)"', add
label values ec10a_chcare6 ec10a_chcare6_lbl

label define ec10a_chcare7_lbl 1 `"Yes"'
label define ec10a_chcare7_lbl 2 `"No"', add
label define ec10a_chcare7_lbl 9 `"NIU (not in universe)"', add
label values ec10a_chcare7 ec10a_chcare7_lbl

label define ec10a_cell6mon_lbl 1 `"Yes"'
label define ec10a_cell6mon_lbl 2 `"No"', add
label define ec10a_cell6mon_lbl 8 `"Unknown"', add
label define ec10a_cell6mon_lbl 9 `"NIU (not in universe)"', add
label values ec10a_cell6mon ec10a_cell6mon_lbl

label define ec10a_int6mon_lbl 1 `"Yes"'
label define ec10a_int6mon_lbl 2 `"No"', add
label define ec10a_int6mon_lbl 8 `"Unknown"', add
label define ec10a_int6mon_lbl 9 `"NIU (not in universe)"', add
label values ec10a_int6mon ec10a_int6mon_lbl

label define ec10a_cmpt6mon_lbl 1 `"Yes"'
label define ec10a_cmpt6mon_lbl 2 `"No"', add
label define ec10a_cmpt6mon_lbl 8 `"Unknown"', add
label define ec10a_cmpt6mon_lbl 9 `"NIU (not in universe)"', add
label values ec10a_cmpt6mon ec10a_cmpt6mon_lbl

label define ec10a_school_lbl 1 `"Yes"'
label define ec10a_school_lbl 2 `"No"', add
label define ec10a_school_lbl 9 `"NIU (not in universe)"', add
label values ec10a_school ec10a_school_lbl

label define ec10a_schtype_lbl 1 `"Public"'
label define ec10a_schtype_lbl 2 `"Private"', add
label define ec10a_schtype_lbl 3 `"Commissioned"', add
label define ec10a_schtype_lbl 4 `"Municipal"', add
label define ec10a_schtype_lbl 9 `"NIU (not in universe)"', add
label values ec10a_schtype ec10a_schtype_lbl

label define ec10a_edlev_lbl 01 `"None"'
label define ec10a_edlev_lbl 02 `"Literacy centers"', add
label define ec10a_edlev_lbl 03 `"Pre-school"', add
label define ec10a_edlev_lbl 04 `"Primary"', add
label define ec10a_edlev_lbl 05 `"Secondary"', add
label define ec10a_edlev_lbl 06 `"Basic education"', add
label define ec10a_edlev_lbl 07 `"Baccalaureate-middle education"', add
label define ec10a_edlev_lbl 08 `"Post-baccalaureate cycle"', add
label define ec10a_edlev_lbl 09 `"Higher education"', add
label define ec10a_edlev_lbl 10 `"Postgraduate"', add
label define ec10a_edlev_lbl 98 `"Unknown"', add
label define ec10a_edlev_lbl 99 `"NIU (not in universe)"', add
label values ec10a_edlev ec10a_edlev_lbl

label define ec10a_edgrade_lbl 01 `"1"'
label define ec10a_edgrade_lbl 02 `"2"', add
label define ec10a_edgrade_lbl 03 `"3"', add
label define ec10a_edgrade_lbl 04 `"4"', add
label define ec10a_edgrade_lbl 05 `"5"', add
label define ec10a_edgrade_lbl 06 `"6"', add
label define ec10a_edgrade_lbl 07 `"7"', add
label define ec10a_edgrade_lbl 08 `"8"', add
label define ec10a_edgrade_lbl 09 `"9"', add
label define ec10a_edgrade_lbl 10 `"10"', add
label define ec10a_edgrade_lbl 98 `"Unknown"', add
label define ec10a_edgrade_lbl 99 `"NIU (not in universe)"', add
label values ec10a_edgrade ec10a_edgrade_lbl

label define ec10a_edattan_lbl 0100 `"None"'
label define ec10a_edattan_lbl 0201 `"Literacy center, year 1"', add
label define ec10a_edattan_lbl 0202 `"Literacy center, year 2"', add
label define ec10a_edattan_lbl 0203 `"LIteracy center, year 3"', add
label define ec10a_edattan_lbl 0301 `"Pre-school"', add
label define ec10a_edattan_lbl 0401 `"Primary, year 1"', add
label define ec10a_edattan_lbl 0402 `"Primary, year 2"', add
label define ec10a_edattan_lbl 0403 `"Primary, year 3"', add
label define ec10a_edattan_lbl 0404 `"Primary, year 4"', add
label define ec10a_edattan_lbl 0405 `"Primary, year 5"', add
label define ec10a_edattan_lbl 0406 `"Primary, year 6"', add
label define ec10a_edattan_lbl 0499 `"Primary, unknown year"', add
label define ec10a_edattan_lbl 0501 `"Secondary, year 1"', add
label define ec10a_edattan_lbl 0502 `"Secondary, year 2"', add
label define ec10a_edattan_lbl 0503 `"Secondary, year 3"', add
label define ec10a_edattan_lbl 0504 `"Secondary, year 4"', add
label define ec10a_edattan_lbl 0505 `"Secondary, year 5"', add
label define ec10a_edattan_lbl 0506 `"Secondary, year 6"', add
label define ec10a_edattan_lbl 0599 `"Secondary, unknown year"', add
label define ec10a_edattan_lbl 0601 `"Basic education, year 1"', add
label define ec10a_edattan_lbl 0602 `"Basic education, year 2"', add
label define ec10a_edattan_lbl 0603 `"Basic education, year 3"', add
label define ec10a_edattan_lbl 0604 `"Basic education, year 4"', add
label define ec10a_edattan_lbl 0605 `"Basic education, year 5"', add
label define ec10a_edattan_lbl 0606 `"Basic education, year 6"', add
label define ec10a_edattan_lbl 0607 `"Basic education, year 7"', add
label define ec10a_edattan_lbl 0608 `"Basic education, year 8"', add
label define ec10a_edattan_lbl 0609 `"Basic education, year 9"', add
label define ec10a_edattan_lbl 0610 `"Basic education, year 10"', add
label define ec10a_edattan_lbl 0699 `"Basic education, unknown year"', add
label define ec10a_edattan_lbl 0701 `"Baccalaureate-middle education, year 1"', add
label define ec10a_edattan_lbl 0702 `"Baccalaureate-middle education, year 2"', add
label define ec10a_edattan_lbl 0703 `"Baccalaureate-middle education, year 3"', add
label define ec10a_edattan_lbl 0799 `"Baccalaureate-middle education, unknown year"', add
label define ec10a_edattan_lbl 0801 `"Post-baccalaureate cycle, year 1"', add
label define ec10a_edattan_lbl 0802 `"Post-baccalaureate cycle, year 2"', add
label define ec10a_edattan_lbl 0803 `"Post-baccalaureate cycle, year 3"', add
label define ec10a_edattan_lbl 0899 `"Post-baccalaureate cycle, unknown year"', add
label define ec10a_edattan_lbl 0901 `"Higher education, year 1"', add
label define ec10a_edattan_lbl 0902 `"Higher education, year 2"', add
label define ec10a_edattan_lbl 0903 `"Higher education, year 3"', add
label define ec10a_edattan_lbl 0904 `"Higher education, year 4"', add
label define ec10a_edattan_lbl 0905 `"Higher education, year 5"', add
label define ec10a_edattan_lbl 0906 `"Higher education, year 6"', add
label define ec10a_edattan_lbl 0907 `"Higher education, year 7"', add
label define ec10a_edattan_lbl 0908 `"Higher education, year 8"', add
label define ec10a_edattan_lbl 0999 `"Higher education, unknown year"', add
label define ec10a_edattan_lbl 1001 `"Postgraduate, year 1"', add
label define ec10a_edattan_lbl 1002 `"Postgraduate, year 2"', add
label define ec10a_edattan_lbl 1003 `"Postgraduate, year 3"', add
label define ec10a_edattan_lbl 1004 `"Postgraduate, year 4"', add
label define ec10a_edattan_lbl 1005 `"Postgraduate, year 5"', add
label define ec10a_edattan_lbl 1006 `"Postgraduate, year 6"', add
label define ec10a_edattan_lbl 1099 `"Postgraduate, unknown year"', add
label define ec10a_edattan_lbl 9998 `"Unknown"', add
label define ec10a_edattan_lbl 9999 `"NIU (not in universe)"', add
label values ec10a_edattan ec10a_edattan_lbl

label define ec10a_higedtit_lbl 1 `"Yes, recognized by CONESUP"'
label define ec10a_higedtit_lbl 2 `"Yes, not recognized by CONESUP"', add
label define ec10a_higedtit_lbl 3 `"No, does not have"', add
label define ec10a_higedtit_lbl 8 `"Unknown"', add
label define ec10a_higedtit_lbl 9 `"NIU (not in universe)"', add
label values ec10a_higedtit ec10a_higedtit_lbl

label define ec10a_edfield_lbl 111 `"Physicists and astronomers"'
label define ec10a_edfield_lbl 112 `"Meteorologists"', add
label define ec10a_edfield_lbl 113 `"Chemists"', add
label define ec10a_edfield_lbl 114 `"Chemistry technicians"', add
label define ec10a_edfield_lbl 115 `"Geologists and geophysicists"', add
label define ec10a_edfield_lbl 121 `"Mathematicians, actuaries, and statisticians"', add
label define ec10a_edfield_lbl 122 `"Bachelor in mathematics and statistics"', add
label define ec10a_edfield_lbl 131 `"Biologists, botanists, zoologists, and related"', add
label define ec10a_edfield_lbl 132 `"Bachelor in biology"', add
label define ec10a_edfield_lbl 133 `"Agronomists and related"', add
label define ec10a_edfield_lbl 134 `"Technicians in agriculture and agroindustries"', add
label define ec10a_edfield_lbl 141 `"Industrial and production engineers"', add
label define ec10a_edfield_lbl 142 `"Civil engineer"', add
label define ec10a_edfield_lbl 143 `"Environmental engineers"', add
label define ec10a_edfield_lbl 144 `"Mechanical engineers"', add
label define ec10a_edfield_lbl 145 `"Chemical engineers"', add
label define ec10a_edfield_lbl 146 `"Mines, metallurgical, and related engineers"', add
label define ec10a_edfield_lbl 149 `"Engineers not elsewhere classified"', add
label define ec10a_edfield_lbl 151 `"Industrial technicians"', add
label define ec10a_edfield_lbl 152 `"Civil engineering technicians"', add
label define ec10a_edfield_lbl 153 `"Mechanical technicians"', add
label define ec10a_edfield_lbl 154 `"Mines, metallurgical, and related technicians"', add
label define ec10a_edfield_lbl 159 `"Technicians and bachelors not elsewhere classified"', add
label define ec10a_edfield_lbl 161 `"Electrical engineers"', add
label define ec10a_edfield_lbl 162 `"Electrical technicians"', add
label define ec10a_edfield_lbl 163 `"Electronic engineer"', add
label define ec10a_edfield_lbl 164 `"Electronic technicians"', add
label define ec10a_edfield_lbl 165 `"Telecommunications engineer"', add
label define ec10a_edfield_lbl 166 `"Telecommunications technician"', add
label define ec10a_edfield_lbl 171 `"Architects"', add
label define ec10a_edfield_lbl 172 `"Landscape architects"', add
label define ec10a_edfield_lbl 173 `"Products and clothing designers"', add
label define ec10a_edfield_lbl 174 `"Products design technicians"', add
label define ec10a_edfield_lbl 176 `"Cartographers and surveyors"', add
label define ec10a_edfield_lbl 177 `"Graphic and multimedia designers"', add
label define ec10a_edfield_lbl 178 `"Graphic technicians"', add
label define ec10a_edfield_lbl 179 `"Bachelors in graphic and multimedia design"', add
label define ec10a_edfield_lbl 211 `"Physician"', add
label define ec10a_edfield_lbl 212 `"Specialist doctor"', add
label define ec10a_edfield_lbl 221 `"Nursing professionals"', add
label define ec10a_edfield_lbl 222 `"Bachelor in nursing"', add
label define ec10a_edfield_lbl 250 `"Veterinarian"', add
label define ec10a_edfield_lbl 260 `"Dentist"', add
label define ec10a_edfield_lbl 261 `"Pharmacists"', add
label define ec10a_edfield_lbl 262 `"Physioterapist"', add
label define ec10a_edfield_lbl 263 `"Bachelor in physioterapy and related"', add
label define ec10a_edfield_lbl 264 `"Dieticians and nutritionists"', add
label define ec10a_edfield_lbl 266 `"Optometrists"', add
label define ec10a_edfield_lbl 268 `"Health technicians"', add
label define ec10a_edfield_lbl 269 `"Bachelor in medical laboratories"', add
label define ec10a_edfield_lbl 310 `"Doctorate in education"', add
label define ec10a_edfield_lbl 311 `"University and higher education professors, social sciences"', add
label define ec10a_edfield_lbl 320 `"Bachelor in education (social sciences)"', add
label define ec10a_edfield_lbl 321 `"Bachelor in education (natural and exact sciences)"', add
label define ec10a_edfield_lbl 322 `"Bachelor in education (accounting, banking, and finance)"', add
label define ec10a_edfield_lbl 323 `"Bachelor in education (information and communications technology)"', add
label define ec10a_edfield_lbl 324 `"Bachelor in education (human and religious sciences)"', add
label define ec10a_edfield_lbl 325 `"Bachelor in education (arts and related fields)"', add
label define ec10a_edfield_lbl 326 `"Bachelor in education (advertising, marketing, and merchandising)"', add
label define ec10a_edfield_lbl 328 `"Bachelor in education (health, psychology, and related fields)"', add
label define ec10a_edfield_lbl 329 `"Other bachelors in education"', add
label define ec10a_edfield_lbl 330 `"Professional training professors"', add
label define ec10a_edfield_lbl 340 `"Secondary education teachers"', add
label define ec10a_edfield_lbl 351 `"Primary education teachers"', add
label define ec10a_edfield_lbl 352 `"Pre-school teachers"', add
label define ec10a_edfield_lbl 361 `"Teaching methods specialists"', add
label define ec10a_edfield_lbl 362 `"Special education teachers"', add
label define ec10a_edfield_lbl 363 `"Other language teachers"', add
label define ec10a_edfield_lbl 364 `"Other music teachers"', add
label define ec10a_edfield_lbl 365 `"Other arts teachers"', add
label define ec10a_edfield_lbl 366 `"Technicians in education"', add
label define ec10a_edfield_lbl 367 `"Bachelor in education (education management)"', add
label define ec10a_edfield_lbl 411 `"Accountants"', add
label define ec10a_edfield_lbl 412 `"Technicians in accounting"', add
label define ec10a_edfield_lbl 413 `"Bachelors in accounting"', add
label define ec10a_edfield_lbl 414 `"Financial analists"', add
label define ec10a_edfield_lbl 421 `"Management and organizations analists"', add
label define ec10a_edfield_lbl 424 `"Bachelor in personnel policies and services and related"', add
label define ec10a_edfield_lbl 426 `"Management technicians"', add
label define ec10a_edfield_lbl 431 `"Advertising and merchandising professionals"', add
label define ec10a_edfield_lbl 432 `"Advertising and merchandising technicians"', add
label define ec10a_edfield_lbl 433 `"Bachelors in advertising and merchandising"', add
label define ec10a_edfield_lbl 435 `"Bachelors in public relations"', add
label define ec10a_edfield_lbl 510 `"Systems analist"', add
label define ec10a_edfield_lbl 511 `"Systems technicians"', add
label define ec10a_edfield_lbl 512 `"Bachelors in systems"', add
label define ec10a_edfield_lbl 513 `"Software developers"', add
label define ec10a_edfield_lbl 514 `"Web and multimedia developers"', add
label define ec10a_edfield_lbl 519 `"Computing technicians"', add
label define ec10a_edfield_lbl 523 `"Computer networks professionals"', add
label define ec10a_edfield_lbl 611 `"Lawyers"', add
label define ec10a_edfield_lbl 613 `"Law technicians"', add
label define ec10a_edfield_lbl 614 `"Bachelor in law"', add
label define ec10a_edfield_lbl 625 `"Administrative and executive secretaries"', add
label define ec10a_edfield_lbl 626 `"Secretary technicians"', add
label define ec10a_edfield_lbl 631 `"Economists"', add
label define ec10a_edfield_lbl 632 `"Sociologists, anthropologists, and related"', add
label define ec10a_edfield_lbl 633 `"Philosophers, historians, and political sciences specialists"', add
label define ec10a_edfield_lbl 634 `"Psicologists"', add
label define ec10a_edfield_lbl 635 `"Social work professionals"', add
label define ec10a_edfield_lbl 636 `"Religious professionals"', add
label define ec10a_edfield_lbl 642 `"Bachelors in economics"', add
label define ec10a_edfield_lbl 643 `"Bachelors in sociology"', add
label define ec10a_edfield_lbl 644 `"Bachelors in psychology"', add
label define ec10a_edfield_lbl 645 `"Bachelors in social work"', add
label define ec10a_edfield_lbl 651 `"Journalists"', add
label define ec10a_edfield_lbl 652 `"Communications technicians"', add
label define ec10a_edfield_lbl 653 `"Bachelors in journalism and communications"', add
label define ec10a_edfield_lbl 661 `"Artists"', add
label define ec10a_edfield_lbl 662 `"Art technicians"', add
label define ec10a_edfield_lbl 663 `"Musicians and composers"', add
label define ec10a_edfield_lbl 666 `"Directors of films, theather, and related"', add
label define ec10a_edfield_lbl 671 `"Tourism guides"', add
label define ec10a_edfield_lbl 672 `"Technicians in tourism and hotel management"', add
label define ec10a_edfield_lbl 673 `"Bachelors in tourism and related"', add
label define ec10a_edfield_lbl 700 `"Teacher, not specified"', add
label define ec10a_edfield_lbl 710 `"Manager, not specified"', add
label define ec10a_edfield_lbl 720 `"Doctorate, not specified"', add
label define ec10a_edfield_lbl 730 `"Diploma, not specified"', add
label define ec10a_edfield_lbl 740 `"Doctorate or masters, not specified"', add
label define ec10a_edfield_lbl 990 `"Response suppressed"', add
label define ec10a_edfield_lbl 995 `"Diploma/title not well specified"', add
label define ec10a_edfield_lbl 998 `"Unknown"', add
label define ec10a_edfield_lbl 999 `"NIU (not in universe)"', add
label values ec10a_edfield ec10a_edfield_lbl

label define ec10a_empstat_lbl 1 `"Worked at least one hour"'
label define ec10a_empstat_lbl 2 `"Did not work but has a job"', add
label define ec10a_empstat_lbl 3 `"Manufactured a product or provided a service at least one hour"', add
label define ec10a_empstat_lbl 4 `"Helped in a relative's business or work at least one hour"', add
label define ec10a_empstat_lbl 5 `"Did agricultural work or took care of animals at least one hour"', add
label define ec10a_empstat_lbl 6 `"Unemployed, looked for work having worked before and is available to work"', add
label define ec10a_empstat_lbl 7 `"Did not work"', add
label define ec10a_empstat_lbl 9 `"NIU (not in universe)"', add
label values ec10a_empstat ec10a_empstat_lbl

label define ec10a_unempstat_lbl 1 `"Looked for work for the first time and is available to work"'
label define ec10a_unempstat_lbl 2 `"Rentier"', add
label define ec10a_unempstat_lbl 3 `"Retired or pensioner"', add
label define ec10a_unempstat_lbl 4 `"Student"', add
label define ec10a_unempstat_lbl 5 `"Does household chores"', add
label define ec10a_unempstat_lbl 6 `"Prevented from work due to disability"', add
label define ec10a_unempstat_lbl 7 `"Other"', add
label define ec10a_unempstat_lbl 9 `"NIU (not in universe)"', add
label values ec10a_unempstat ec10a_unempstat_lbl

label define ec10a_ind3_lbl 011 `"Growing of non-perennial crops"'
label define ec10a_ind3_lbl 012 `"Growing of perennial crops"', add
label define ec10a_ind3_lbl 013 `"Plant propagation"', add
label define ec10a_ind3_lbl 014 `"Animal production"', add
label define ec10a_ind3_lbl 015 `"Mixed farming"', add
label define ec10a_ind3_lbl 016 `"Support activities to agriculture and post-harvest crop activities"', add
label define ec10a_ind3_lbl 021 `"Silviculture and other forestry activities"', add
label define ec10a_ind3_lbl 022 `"Logging"', add
label define ec10a_ind3_lbl 024 `"Support services to forestry"', add
label define ec10a_ind3_lbl 031 `"Fishing"', add
label define ec10a_ind3_lbl 032 `"Aquaculture"', add
label define ec10a_ind3_lbl 051 `"Mining of hard coal"', add
label define ec10a_ind3_lbl 061 `"Extraction of crude petroleum"', add
label define ec10a_ind3_lbl 062 `"Extraction of natural gas"', add
label define ec10a_ind3_lbl 072 `"Mining of non-ferrous metal ores"', add
label define ec10a_ind3_lbl 081 `"Quarrying of stone, sand, and clay"', add
label define ec10a_ind3_lbl 089 `"Mining and quarrying, not elsewhere classified"', add
label define ec10a_ind3_lbl 091 `"Support activites for petroleum and natural gas extraction"', add
label define ec10a_ind3_lbl 101 `"Processing and preserving of meat"', add
label define ec10a_ind3_lbl 102 `"Processing and preserving of fish, crustaceans, and molluscs"', add
label define ec10a_ind3_lbl 103 `"Processing and preserving of fruit and vegetables"', add
label define ec10a_ind3_lbl 104 `"Manufacture of vegetable and animal oils and fats"', add
label define ec10a_ind3_lbl 105 `"Manufacture of dairy products"', add
label define ec10a_ind3_lbl 106 `"Manufacture of grain mill products, starches, and starch products"', add
label define ec10a_ind3_lbl 107 `"Manufacture of other food products"', add
label define ec10a_ind3_lbl 108 `"Manufacture of prepared animal feeds"', add
label define ec10a_ind3_lbl 110 `"Manufacture of beverages"', add
label define ec10a_ind3_lbl 120 `"Manufacture of tobacco products"', add
label define ec10a_ind3_lbl 131 `"Spinning, weaving, and finishing of textiles"', add
label define ec10a_ind3_lbl 139 `"Manufacture of other textiles"', add
label define ec10a_ind3_lbl 141 `"Manufacture of wearing apparel, except fur apparel"', add
label define ec10a_ind3_lbl 142 `"Manufacture of articles of fur"', add
label define ec10a_ind3_lbl 143 `"Manufacture of knitted and crocheted apparel"', add
label define ec10a_ind3_lbl 151 `"Tanning and dressing of leather; manufacture of luggage, handbags, saddlery and harness; dressing and dyeing of fur"', add
label define ec10a_ind3_lbl 152 `"Manufacture of footwear"', add
label define ec10a_ind3_lbl 161 `"Sawmilling and planing of wood"', add
label define ec10a_ind3_lbl 162 `"Manufacture of products of wood, cork, straw and, plaiting materials"', add
label define ec10a_ind3_lbl 170 `"Manufacture of paper and paper products"', add
label define ec10a_ind3_lbl 181 `"Printing and service activities related to printing"', add
label define ec10a_ind3_lbl 192 `"Manufacture of refined petroleum products"', add
label define ec10a_ind3_lbl 201 `"Manufacture of basic chemicals, fertilizers and nitrogen compounds, plastics, and synthetic rubber in primary forms"', add
label define ec10a_ind3_lbl 202 `"Manufacture of other chemical products"', add
label define ec10a_ind3_lbl 203 `"Manufacture of man-made fibres"', add
label define ec10a_ind3_lbl 210 `"Manufacture of pharmaceuticals, medicinal chemical, and botanical products"', add
label define ec10a_ind3_lbl 221 `"Manufacture of rubber products"', add
label define ec10a_ind3_lbl 222 `"Manufacture of plastics products"', add
label define ec10a_ind3_lbl 231 `"Manufacture of glass and glass products"', add
label define ec10a_ind3_lbl 239 `"Manufacture of non-metallic mineral products not elsewhere classified"', add
label define ec10a_ind3_lbl 241 `"Manufacture of basic iron and steel"', add
label define ec10a_ind3_lbl 242 `"Manufacture of basic precious and other non-ferrous metals"', add
label define ec10a_ind3_lbl 243 `"Casting of metals"', add
label define ec10a_ind3_lbl 251 `"Manufacture of structural metal products, tanks, reservoirs, and steam generators"', add
label define ec10a_ind3_lbl 259 `"Manufacture of other fabricated metal products; metalworking service activities"', add
label define ec10a_ind3_lbl 261 `"Manufacture of electronic components and boards"', add
label define ec10a_ind3_lbl 267 `"Manufacture of optical instruments and photographic equipment"', add
label define ec10a_ind3_lbl 271 `"Manufacture of electric motors, generators, transformers and electricity distribution and control apparatus"', add
label define ec10a_ind3_lbl 272 `"Manufacture of batteries and accumulators"', add
label define ec10a_ind3_lbl 273 `"Manufacture of wiring and wiring devices"', add
label define ec10a_ind3_lbl 275 `"Manufacture of domestic appliances"', add
label define ec10a_ind3_lbl 281 `"Manufacture of engines and turbines, except aircraft, vehicle and cycle engines"', add
label define ec10a_ind3_lbl 282 `"Manufacture of special-purpose machinery"', add
label define ec10a_ind3_lbl 291 `"Manufacture of motor vehicles"', add
label define ec10a_ind3_lbl 292 `"Manufacture of bodies (coachwork) for motor vehicles; manufacture of trailers and semi-trailers"', add
label define ec10a_ind3_lbl 293 `"Manufacture of parts and accessories for motor vehicles"', add
label define ec10a_ind3_lbl 301 `"Building of ships and boats"', add
label define ec10a_ind3_lbl 310 `"Manufacture of furniture"', add
label define ec10a_ind3_lbl 321 `"Manufacture of jewellery, bijouterie and related articles"', add
label define ec10a_ind3_lbl 322 `"Manufacture of musical instruments"', add
label define ec10a_ind3_lbl 324 `"Manufacture of games and toys"', add
label define ec10a_ind3_lbl 325 `"Manufacture of medical and dental instruments and supplies"', add
label define ec10a_ind3_lbl 329 `"Other manufacturing not elsewhere classified"', add
label define ec10a_ind3_lbl 331 `"Repair of fabricated metal products, machinery, and equipment"', add
label define ec10a_ind3_lbl 332 `"Installation of industrial machinery and equipment"', add
label define ec10a_ind3_lbl 351 `"Electric power generation, transmission and distribution"', add
label define ec10a_ind3_lbl 352 `"Manufacture of gas; distribution of gaseous fuels through mains"', add
label define ec10a_ind3_lbl 353 `"Steam and air conditioning supply"', add
label define ec10a_ind3_lbl 360 `"Water collection, treatment, and supply"', add
label define ec10a_ind3_lbl 370 `"Sewerage"', add
label define ec10a_ind3_lbl 381 `"Waste collection"', add
label define ec10a_ind3_lbl 383 `"Materials recovery"', add
label define ec10a_ind3_lbl 410 `"Construction of buildings"', add
label define ec10a_ind3_lbl 421 `"Construction of roads and railways"', add
label define ec10a_ind3_lbl 422 `"Construction of utility projects"', add
label define ec10a_ind3_lbl 429 `"Construction of other civil engineering projects"', add
label define ec10a_ind3_lbl 431 `"Demolition and site preparation"', add
label define ec10a_ind3_lbl 432 `"Electrical, plumbing and other construction installation activities"', add
label define ec10a_ind3_lbl 433 `"Building completion and finishing"', add
label define ec10a_ind3_lbl 439 `"Other specialized construction activities"', add
label define ec10a_ind3_lbl 451 `"Sale of motor vehicles"', add
label define ec10a_ind3_lbl 452 `"Maintenance and repair of motor vehicles"', add
label define ec10a_ind3_lbl 453 `"Sale of motor vehicle parts and accessories"', add
label define ec10a_ind3_lbl 454 `"Sale, maintenance and repair of motorcycles and related parts and accessories"', add
label define ec10a_ind3_lbl 461 `"Wholesale on a fee or contract basis"', add
label define ec10a_ind3_lbl 462 `"Wholesale of agricultural raw materials and live animals"', add
label define ec10a_ind3_lbl 463 `"Wholesale of food, beverages and tobacco"', add
label define ec10a_ind3_lbl 464 `"Wholesale of household goods"', add
label define ec10a_ind3_lbl 465 `"Wholesale of machinery, equipment, and supplies"', add
label define ec10a_ind3_lbl 466 `"Other specialized wholesale"', add
label define ec10a_ind3_lbl 469 `"Non-specialized wholesale trade"', add
label define ec10a_ind3_lbl 471 `"Retail sale in non-specialized stores"', add
label define ec10a_ind3_lbl 472 `"Retail sale of food, beverages and tobacco in specialized stores"', add
label define ec10a_ind3_lbl 473 `"Retail sale of automotive fuel in specialized stores"', add
label define ec10a_ind3_lbl 474 `"Retail sale of information and communications equipment in specialized stores"', add
label define ec10a_ind3_lbl 475 `"Retail sale of other household equipment in specialized stores"', add
label define ec10a_ind3_lbl 476 `"Retail sale of cultural and recreation goods in specialized stores"', add
label define ec10a_ind3_lbl 477 `"Retail sale of other goods in specialized stores"', add
label define ec10a_ind3_lbl 478 `"Retail sale via stalls and markets"', add
label define ec10a_ind3_lbl 479 `"Retail trade not in stores, stalls or markets"', add
label define ec10a_ind3_lbl 491 `"Transport via railways"', add
label define ec10a_ind3_lbl 492 `"Other land transport"', add
label define ec10a_ind3_lbl 493 `"Transport via pipeline"', add
label define ec10a_ind3_lbl 501 `"Sea and coastal water transport"', add
label define ec10a_ind3_lbl 511 `"Passenger air transport"', add
label define ec10a_ind3_lbl 512 `"Freight air transport"', add
label define ec10a_ind3_lbl 521 `"Warehousing and storage"', add
label define ec10a_ind3_lbl 522 `"Support activities for transportation"', add
label define ec10a_ind3_lbl 531 `"Postal activities"', add
label define ec10a_ind3_lbl 532 `"Courier activities"', add
label define ec10a_ind3_lbl 551 `"Short term accommodation activities"', add
label define ec10a_ind3_lbl 561 `"Restaurants and mobile food service activities"', add
label define ec10a_ind3_lbl 562 `"Event catering and other food service activities"', add
label define ec10a_ind3_lbl 563 `"Beverage serving activities"', add
label define ec10a_ind3_lbl 581 `"Publishing of books, periodicals and other publishing activities"', add
label define ec10a_ind3_lbl 591 `"Motion picture, video, and television programme activities"', add
label define ec10a_ind3_lbl 592 `"Sound recording and music publishing activities"', add
label define ec10a_ind3_lbl 601 `"Radio broadcasting"', add
label define ec10a_ind3_lbl 602 `"Television programming and broadcasting activities"', add
label define ec10a_ind3_lbl 611 `"Wired telecommunications activities"', add
label define ec10a_ind3_lbl 612 `"Wireless telecommunications activities"', add
label define ec10a_ind3_lbl 613 `"Satellite telecommunications activities"', add
label define ec10a_ind3_lbl 619 `"Other telecommunications activities"', add
label define ec10a_ind3_lbl 620 `"Computer programming, consultancy and related activities"', add
label define ec10a_ind3_lbl 631 `"Data processing, hosting, and related activities; web portals"', add
label define ec10a_ind3_lbl 639 `"Other information service activities"', add
label define ec10a_ind3_lbl 641 `"Monetary intermediation"', add
label define ec10a_ind3_lbl 642 `"Activities of holding companies"', add
label define ec10a_ind3_lbl 643 `"Trusts, funds, and similar financial entities"', add
label define ec10a_ind3_lbl 649 `"Other financial service activities, except insurance and pension funding activities"', add
label define ec10a_ind3_lbl 651 `"Insurance"', add
label define ec10a_ind3_lbl 661 `"Activities auxiliary to financial service activities, except insurance and pension funding"', add
label define ec10a_ind3_lbl 662 `"Activities auxiliary to insurance and pension funding"', add
label define ec10a_ind3_lbl 681 `"Real estate activities with own or leased property"', add
label define ec10a_ind3_lbl 682 `"Real estate activities on a fee or contract basis"', add
label define ec10a_ind3_lbl 691 `"Legal activities"', add
label define ec10a_ind3_lbl 692 `"Accounting, bookkeeping, and auditing activities; tax consultancy"', add
label define ec10a_ind3_lbl 701 `"Activities of head offices"', add
label define ec10a_ind3_lbl 702 `"Management consultancy activities"', add
label define ec10a_ind3_lbl 711 `"Architectural and engineering activities and related technical consultancy"', add
label define ec10a_ind3_lbl 712 `"Technical testing and analysis"', add
label define ec10a_ind3_lbl 721 `"Research and experimental development on natural sciences and engineering"', add
label define ec10a_ind3_lbl 722 `"Research and experimental development on social sciences and humanities"', add
label define ec10a_ind3_lbl 731 `"Advertising"', add
label define ec10a_ind3_lbl 732 `"Market research and public opinion polling"', add
label define ec10a_ind3_lbl 741 `"Specialized design activities"', add
label define ec10a_ind3_lbl 742 `"Photographic activities"', add
label define ec10a_ind3_lbl 749 `"Other professional, scientific and technical activities not elsewhere classified"', add
label define ec10a_ind3_lbl 750 `"Veterinary activities"', add
label define ec10a_ind3_lbl 771 `"Renting and leasing of motor vehicles"', add
label define ec10a_ind3_lbl 772 `"Renting and leasing of personal and household goods"', add
label define ec10a_ind3_lbl 773 `"Renting and leasing of other machinery, equipment and tangible goods"', add
label define ec10a_ind3_lbl 781 `"Activities of employment placement agencies"', add
label define ec10a_ind3_lbl 783 `"Other human resources provision"', add
label define ec10a_ind3_lbl 791 `"Travel agency and tour operator activities"', add
label define ec10a_ind3_lbl 799 `"Other reservation service and related activities"', add
label define ec10a_ind3_lbl 801 `"Private security activities"', add
label define ec10a_ind3_lbl 802 `"Security systems service activities"', add
label define ec10a_ind3_lbl 803 `"Investigation activities"', add
label define ec10a_ind3_lbl 811 `"Combined facilities support activities"', add
label define ec10a_ind3_lbl 812 `"Cleaning activities"', add
label define ec10a_ind3_lbl 813 `"Landscape care and maintenance service activities"', add
label define ec10a_ind3_lbl 821 `"Office administrative and support activities"', add
label define ec10a_ind3_lbl 822 `"Activities of call centres"', add
label define ec10a_ind3_lbl 823 `"Organization of conventions and trade shows"', add
label define ec10a_ind3_lbl 829 `"Business support service activities not elsewhere classified"', add
label define ec10a_ind3_lbl 841 `"Administration of the State and the economic and social policy of the community"', add
label define ec10a_ind3_lbl 842 `"Provision of services to the community as a whole"', add
label define ec10a_ind3_lbl 843 `"Compulsory social security activities"', add
label define ec10a_ind3_lbl 851 `"Pre-primary and primary education"', add
label define ec10a_ind3_lbl 852 `"Secondary education"', add
label define ec10a_ind3_lbl 853 `"Higher education"', add
label define ec10a_ind3_lbl 854 `"Other education"', add
label define ec10a_ind3_lbl 855 `"Educational support activities"', add
label define ec10a_ind3_lbl 861 `"Hospital activities"', add
label define ec10a_ind3_lbl 862 `"Medical and dental practice activities"', add
label define ec10a_ind3_lbl 869 `"Other human health activities"', add
label define ec10a_ind3_lbl 871 `"Residential nursing care facilities"', add
label define ec10a_ind3_lbl 872 `"Residential care activities for mental retardation, mental health, and substance abuse"', add
label define ec10a_ind3_lbl 873 `"Residential care activities for the elderly and disabled"', add
label define ec10a_ind3_lbl 879 `"Other residential care activities"', add
label define ec10a_ind3_lbl 881 `"Social work activities without accommodation for the elderly and disabled"', add
label define ec10a_ind3_lbl 889 `"Other social work activities without accommodation"', add
label define ec10a_ind3_lbl 900 `"Creative, arts, and entertainment activities"', add
label define ec10a_ind3_lbl 910 `"Libraries, archives, museums, and other cultural activities"', add
label define ec10a_ind3_lbl 920 `"Gambling and betting activities"', add
label define ec10a_ind3_lbl 931 `"Sports activities"', add
label define ec10a_ind3_lbl 932 `"Other amusement and recreation activities"', add
label define ec10a_ind3_lbl 941 `"Activities of business, employers, and professional membership organizations"', add
label define ec10a_ind3_lbl 942 `"Activities of trade unions"', add
label define ec10a_ind3_lbl 949 `"Activities of other membership organizations"', add
label define ec10a_ind3_lbl 951 `"Repair of computers and communication equipment"', add
label define ec10a_ind3_lbl 952 `"Repair of personal and household goods"', add
label define ec10a_ind3_lbl 960 `"Other personal service activities"', add
label define ec10a_ind3_lbl 970 `"Activities of households as employers of domestic personnel"', add
label define ec10a_ind3_lbl 981 `"Undifferentiated goods-producing activities of private households for own use"', add
label define ec10a_ind3_lbl 990 `"Activities of extraterritorial organizations and bodies"', add
label define ec10a_ind3_lbl 995 `"Response suppressed"', add
label define ec10a_ind3_lbl 998 `"Unknown"', add
label define ec10a_ind3_lbl 999 `"NIU (not in universe)"', add
label values ec10a_ind3 ec10a_ind3_lbl

label define ec10a_ind2_lbl 001 `"Crop and animal production, hunting, and related service activities"'
label define ec10a_ind2_lbl 002 `"Forestry and logging"', add
label define ec10a_ind2_lbl 003 `"Fishing and aquaculture"', add
label define ec10a_ind2_lbl 005 `"Mining of coal and lignite"', add
label define ec10a_ind2_lbl 006 `"Extraction of crude petroleum and natural gas"', add
label define ec10a_ind2_lbl 007 `"Mining of metal ores"', add
label define ec10a_ind2_lbl 008 `"Other mining and quarrying"', add
label define ec10a_ind2_lbl 009 `"Mining support service activities"', add
label define ec10a_ind2_lbl 010 `"Manufacture of food products"', add
label define ec10a_ind2_lbl 011 `"Manufacture of beverages"', add
label define ec10a_ind2_lbl 012 `"Manufacture of tobacco products"', add
label define ec10a_ind2_lbl 013 `"Manufacture of textiles"', add
label define ec10a_ind2_lbl 014 `"Manufacture of wearing apparel"', add
label define ec10a_ind2_lbl 015 `"Manufacture of leather and related products"', add
label define ec10a_ind2_lbl 016 `"Manufacture of wood and of products of wood and cork, except furniture; manufacture of articles of straw and plaiting materials"', add
label define ec10a_ind2_lbl 017 `"Manufacture of paper and paper products"', add
label define ec10a_ind2_lbl 018 `"Printing and reproduction of recorded media"', add
label define ec10a_ind2_lbl 019 `"Manufacture of coke and refined petroleum products"', add
label define ec10a_ind2_lbl 020 `"Manufacture of chemicals and chemical products"', add
label define ec10a_ind2_lbl 021 `"Manufacture of basic pharmaceutical products and pharmaceutical preparations"', add
label define ec10a_ind2_lbl 022 `"Manufacture of rubber and plastics products"', add
label define ec10a_ind2_lbl 023 `"Manufacture of other non-metallic mineral products"', add
label define ec10a_ind2_lbl 024 `"Manufacture of basic metals"', add
label define ec10a_ind2_lbl 025 `"Manufacture of fabricated metal products, except machinery and equipment"', add
label define ec10a_ind2_lbl 026 `"Manufacture of computer, electronic, and optical products"', add
label define ec10a_ind2_lbl 027 `"Manufacture of electrical equipment"', add
label define ec10a_ind2_lbl 028 `"Manufacture of machinery and equipment not elsewhere classified"', add
label define ec10a_ind2_lbl 029 `"Manufacture of motor vehicles, trailers and semi-trailers"', add
label define ec10a_ind2_lbl 030 `"Manufacture of other transport equipment"', add
label define ec10a_ind2_lbl 031 `"Manufacture of furniture"', add
label define ec10a_ind2_lbl 032 `"Other manufacturing"', add
label define ec10a_ind2_lbl 033 `"Repair and installation of machinery and equipment"', add
label define ec10a_ind2_lbl 035 `"Electricity, gas, steam, and air conditioning supply"', add
label define ec10a_ind2_lbl 036 `"Water collection, treatment, and supply"', add
label define ec10a_ind2_lbl 037 `"Sewerage"', add
label define ec10a_ind2_lbl 038 `"Waste collection, treatment, and disposal activities; materials recovery"', add
label define ec10a_ind2_lbl 041 `"Construction of buildings"', add
label define ec10a_ind2_lbl 042 `"Civil engineering"', add
label define ec10a_ind2_lbl 043 `"Specialized construction activities"', add
label define ec10a_ind2_lbl 045 `"Wholesale and retail trade and repair of motor vehicles and motorcycles"', add
label define ec10a_ind2_lbl 046 `"Wholesale trade, except of motor vehicles and motorcycles"', add
label define ec10a_ind2_lbl 047 `"Retail trade, except of motor vehicles and motorcycles"', add
label define ec10a_ind2_lbl 049 `"Land transport and transport via pipelines"', add
label define ec10a_ind2_lbl 050 `"Water transport"', add
label define ec10a_ind2_lbl 051 `"Air transport"', add
label define ec10a_ind2_lbl 052 `"Warehousing and support activities for transportation"', add
label define ec10a_ind2_lbl 053 `"Postal and courier activities"', add
label define ec10a_ind2_lbl 055 `"Accommodation"', add
label define ec10a_ind2_lbl 056 `"Food and beverage service activities"', add
label define ec10a_ind2_lbl 058 `"Publishing activities"', add
label define ec10a_ind2_lbl 059 `"Motion picture, video, and television programme production, sound recording, and music publishing activities"', add
label define ec10a_ind2_lbl 060 `"Programming and broadcasting activities"', add
label define ec10a_ind2_lbl 061 `"Telecommunications"', add
label define ec10a_ind2_lbl 062 `"Computer programming, consultancy, and related activities"', add
label define ec10a_ind2_lbl 063 `"Information service activities"', add
label define ec10a_ind2_lbl 064 `"Financial service activities, except insurance and pension funding"', add
label define ec10a_ind2_lbl 065 `"Insurance, reinsurance, and pension funding, except compulsory social security"', add
label define ec10a_ind2_lbl 066 `"Activities auxiliary to financial service and insurance activities"', add
label define ec10a_ind2_lbl 068 `"Real estate activities"', add
label define ec10a_ind2_lbl 069 `"Legal and accounting activities"', add
label define ec10a_ind2_lbl 070 `"Activities of head offices; management consultancy activities"', add
label define ec10a_ind2_lbl 071 `"Architectural and engineering activities; technical testing and analysis"', add
label define ec10a_ind2_lbl 072 `"Scientific research and development"', add
label define ec10a_ind2_lbl 073 `"Advertising and market research"', add
label define ec10a_ind2_lbl 074 `"Other professional, scientific, and technical activities"', add
label define ec10a_ind2_lbl 075 `"Veterinary activities"', add
label define ec10a_ind2_lbl 077 `"Rental and leasing activities"', add
label define ec10a_ind2_lbl 078 `"Employment activities"', add
label define ec10a_ind2_lbl 079 `"Travel agency, tour operator, reservation service, and related activities"', add
label define ec10a_ind2_lbl 080 `"Security and investigation activities"', add
label define ec10a_ind2_lbl 081 `"Services to buildings and landscape activities"', add
label define ec10a_ind2_lbl 082 `"Office administrative, office support, and other business support activities"', add
label define ec10a_ind2_lbl 084 `"Public administration and defence; compulsory social security"', add
label define ec10a_ind2_lbl 085 `"Education"', add
label define ec10a_ind2_lbl 086 `"Human health activities"', add
label define ec10a_ind2_lbl 087 `"Residential care activities"', add
label define ec10a_ind2_lbl 088 `"Social work activities without accommodation"', add
label define ec10a_ind2_lbl 090 `"Creative, arts, and entertainment activities"', add
label define ec10a_ind2_lbl 091 `"Libraries, archives, museums, and other cultural activities"', add
label define ec10a_ind2_lbl 092 `"Gambling and betting activities"', add
label define ec10a_ind2_lbl 093 `"Sports activities and amusement and recreation activities"', add
label define ec10a_ind2_lbl 094 `"Activities of membership organizations"', add
label define ec10a_ind2_lbl 095 `"Repair of computers and personal and household goods"', add
label define ec10a_ind2_lbl 096 `"Other personal service activities"', add
label define ec10a_ind2_lbl 097 `"Activities of households as employers of domestic personnel"', add
label define ec10a_ind2_lbl 099 `"Activities of extraterritorial organizations and bodies"', add
label define ec10a_ind2_lbl 900 `"Response suppressed"', add
label define ec10a_ind2_lbl 998 `"Unknown"', add
label define ec10a_ind2_lbl 999 `"NIU (not in universe)"', add
label values ec10a_ind2 ec10a_ind2_lbl

label define ec10a_occ3_lbl 011 `"Commissioned armed forces officers"'
label define ec10a_occ3_lbl 021 `"Non-commissioned armed forces officers"', add
label define ec10a_occ3_lbl 031 `"Armed forces occupations, other ranks"', add
label define ec10a_occ3_lbl 111 `"Legislators and senior officials"', add
label define ec10a_occ3_lbl 112 `"Managing directors and chief executives"', add
label define ec10a_occ3_lbl 121 `"Business services and administration managers"', add
label define ec10a_occ3_lbl 122 `"Sales, marketing, and development managers"', add
label define ec10a_occ3_lbl 131 `"Production managers in agriculture, forestry, and fisheries"', add
label define ec10a_occ3_lbl 132 `"Manufacturing, mining, construction, and distribution managers"', add
label define ec10a_occ3_lbl 133 `"Information and communications technology service managers"', add
label define ec10a_occ3_lbl 134 `"Professional services managers"', add
label define ec10a_occ3_lbl 141 `"Hotel and restaurant managers"', add
label define ec10a_occ3_lbl 142 `"Retail and wholesale trade managers"', add
label define ec10a_occ3_lbl 143 `"Other services managers"', add
label define ec10a_occ3_lbl 211 `"Physical and earth science professionals"', add
label define ec10a_occ3_lbl 212 `"Mathematicians, actuaries, and statisticians"', add
label define ec10a_occ3_lbl 213 `"Life science professionals"', add
label define ec10a_occ3_lbl 214 `"Engineering professionals (excluding electrotechnology)"', add
label define ec10a_occ3_lbl 215 `"Electrotechnology engineers"', add
label define ec10a_occ3_lbl 216 `"Architects, planners, surveyors, and designers"', add
label define ec10a_occ3_lbl 221 `"Medical doctors"', add
label define ec10a_occ3_lbl 222 `"Nursing and midwifery professionals"', add
label define ec10a_occ3_lbl 223 `"Traditional and complementary medicine professionals"', add
label define ec10a_occ3_lbl 224 `"Paramedical practitioners"', add
label define ec10a_occ3_lbl 225 `"Veterinarians"', add
label define ec10a_occ3_lbl 226 `"Other health professionals"', add
label define ec10a_occ3_lbl 231 `"University and higher education teachers"', add
label define ec10a_occ3_lbl 232 `"Vocational education teachers"', add
label define ec10a_occ3_lbl 233 `"Secondary education teachers"', add
label define ec10a_occ3_lbl 234 `"Primary school and early childhood teachers"', add
label define ec10a_occ3_lbl 235 `"Other teaching professionals"', add
label define ec10a_occ3_lbl 241 `"Finance professionals"', add
label define ec10a_occ3_lbl 242 `"Administration professionals"', add
label define ec10a_occ3_lbl 243 `"Sales, marketing, and public relations professionals"', add
label define ec10a_occ3_lbl 251 `"Software and applications developers and analysts"', add
label define ec10a_occ3_lbl 252 `"Database and network professionals"', add
label define ec10a_occ3_lbl 261 `"Legal professionals"', add
label define ec10a_occ3_lbl 262 `"Librarians, archivists, and curators"', add
label define ec10a_occ3_lbl 263 `"Social and religious professionals"', add
label define ec10a_occ3_lbl 264 `"Authors, journalists, and linguists"', add
label define ec10a_occ3_lbl 265 `"Creative and performing artists"', add
label define ec10a_occ3_lbl 311 `"Physical and engineering science technicians"', add
label define ec10a_occ3_lbl 312 `"Mining, manufacturing, and construction supervisors"', add
label define ec10a_occ3_lbl 313 `"Process control technicians"', add
label define ec10a_occ3_lbl 314 `"Life science technicians and related associate professionals"', add
label define ec10a_occ3_lbl 315 `"Ship and aircraft controllers and technicians"', add
label define ec10a_occ3_lbl 321 `"Medical and pharmaceutical technicians"', add
label define ec10a_occ3_lbl 322 `"Nursing and midwifery associate professionals"', add
label define ec10a_occ3_lbl 323 `"Traditional and complementary medicine associate professionals"', add
label define ec10a_occ3_lbl 324 `"Veterinary technicians and assistants"', add
label define ec10a_occ3_lbl 325 `"Other health associate professionals"', add
label define ec10a_occ3_lbl 331 `"Financial and mathematical associate professionals"', add
label define ec10a_occ3_lbl 332 `"Sales and purchasing agents and brokers"', add
label define ec10a_occ3_lbl 333 `"Business services agents"', add
label define ec10a_occ3_lbl 334 `"Administrative and specialised secretaries"', add
label define ec10a_occ3_lbl 335 `"Regulatory government associate professionals"', add
label define ec10a_occ3_lbl 341 `"Legal, social, and religious associate professionals"', add
label define ec10a_occ3_lbl 342 `"Sports and fitness workers"', add
label define ec10a_occ3_lbl 343 `"Artistic, cultural, and culinary associate professionals"', add
label define ec10a_occ3_lbl 351 `"Information and communications technology operations and user support technicians"', add
label define ec10a_occ3_lbl 352 `"Telecommunications and broadcasting technicians"', add
label define ec10a_occ3_lbl 411 `"General office clerks"', add
label define ec10a_occ3_lbl 412 `"Secretaries (general)"', add
label define ec10a_occ3_lbl 413 `"Keyboard operators"', add
label define ec10a_occ3_lbl 421 `"Tellers, money collectors, and related clerks"', add
label define ec10a_occ3_lbl 422 `"Client information workers"', add
label define ec10a_occ3_lbl 431 `"Numerical clerks"', add
label define ec10a_occ3_lbl 432 `"Material-recording and transport clerks"', add
label define ec10a_occ3_lbl 441 `"Other clerical support workers"', add
label define ec10a_occ3_lbl 511 `"Travel attendants, conductors, and guides"', add
label define ec10a_occ3_lbl 512 `"Cooks"', add
label define ec10a_occ3_lbl 513 `"Waiters and bartenders"', add
label define ec10a_occ3_lbl 514 `"Hairdressers, beauticians, and related workers"', add
label define ec10a_occ3_lbl 515 `"Building and housekeeping supervisors"', add
label define ec10a_occ3_lbl 516 `"Other personal services workers"', add
label define ec10a_occ3_lbl 521 `"Street and market salespersons"', add
label define ec10a_occ3_lbl 522 `"Shop salespersons"', add
label define ec10a_occ3_lbl 523 `"Cashiers and ticket clerks"', add
label define ec10a_occ3_lbl 524 `"Other sales workers"', add
label define ec10a_occ3_lbl 531 `"Child care workers and teachers' aides"', add
label define ec10a_occ3_lbl 532 `"Personal care workers in health services"', add
label define ec10a_occ3_lbl 541 `"Protective services workers"', add
label define ec10a_occ3_lbl 611 `"Market gardeners and crop growers"', add
label define ec10a_occ3_lbl 612 `"Animal producers"', add
label define ec10a_occ3_lbl 613 `"Mixed crop and animal producers"', add
label define ec10a_occ3_lbl 621 `"Forestry and related workers"', add
label define ec10a_occ3_lbl 622 `"Fishery workers, hunters, and trappers"', add
label define ec10a_occ3_lbl 631 `"Subsistence crop farmers"', add
label define ec10a_occ3_lbl 633 `"Subsistence mixed crop and livestock farmers"', add
label define ec10a_occ3_lbl 634 `"Subsistence fishers, hunters, trappers, and gatherers"', add
label define ec10a_occ3_lbl 711 `"Building frame and related trades workers"', add
label define ec10a_occ3_lbl 712 `"Building finishers and related trades workers"', add
label define ec10a_occ3_lbl 713 `"Painters, building structure cleaners, and related trades workers"', add
label define ec10a_occ3_lbl 721 `"Sheet and structural metal workers, moulders, and welders, and related workers"', add
label define ec10a_occ3_lbl 722 `"Blacksmiths, toolmakers, and related trades workers"', add
label define ec10a_occ3_lbl 723 `"Machinery mechanics and repairers"', add
label define ec10a_occ3_lbl 731 `"Handicraft workers"', add
label define ec10a_occ3_lbl 732 `"Printing trades workers"', add
label define ec10a_occ3_lbl 741 `"Electrical equipment installers and repairers"', add
label define ec10a_occ3_lbl 742 `"Electronics and telecommunications installers and repairers"', add
label define ec10a_occ3_lbl 751 `"Food processing and related trades workers"', add
label define ec10a_occ3_lbl 752 `"Wood treaters, cabinet-makers, and related trades workers"', add
label define ec10a_occ3_lbl 753 `"Garment and related trades workers"', add
label define ec10a_occ3_lbl 754 `"Other craft and related workers"', add
label define ec10a_occ3_lbl 811 `"Mining and mineral processing plant operators"', add
label define ec10a_occ3_lbl 812 `"Metal processing and finishing plant operators"', add
label define ec10a_occ3_lbl 813 `"Chemical and photographic products plant and machine operators"', add
label define ec10a_occ3_lbl 814 `"Rubber, plastic, and paper products machine operators"', add
label define ec10a_occ3_lbl 815 `"Textile, fur, and leather products machine operators"', add
label define ec10a_occ3_lbl 816 `"Food and related products machine operators"', add
label define ec10a_occ3_lbl 817 `"Wood processing and papermaking plant operators"', add
label define ec10a_occ3_lbl 818 `"Other stationary plant and machine operators"', add
label define ec10a_occ3_lbl 821 `"Assemblers"', add
label define ec10a_occ3_lbl 831 `"Locomotive engine drivers and related workers"', add
label define ec10a_occ3_lbl 832 `"Car, van, and motorcycle drivers"', add
label define ec10a_occ3_lbl 833 `"Heavy truck and bus drivers"', add
label define ec10a_occ3_lbl 834 `"Mobile plant operators"', add
label define ec10a_occ3_lbl 835 `"Ships' deck crews and related workers"', add
label define ec10a_occ3_lbl 911 `"Domestic, hotel, and office cleaners and helpers"', add
label define ec10a_occ3_lbl 912 `"Vehicle, window, laundry, and other hand cleaning workers"', add
label define ec10a_occ3_lbl 921 `"Agricultural, forestry, and fishery labourers"', add
label define ec10a_occ3_lbl 931 `"Mining and construction labourers"', add
label define ec10a_occ3_lbl 932 `"Manufacturing labourers"', add
label define ec10a_occ3_lbl 933 `"Transport and storage labourers"', add
label define ec10a_occ3_lbl 941 `"Food preparation assistants"', add
label define ec10a_occ3_lbl 951 `"Street and related service workers"', add
label define ec10a_occ3_lbl 952 `"Street vendors (excluding food)"', add
label define ec10a_occ3_lbl 961 `"Refuse workers"', add
label define ec10a_occ3_lbl 962 `"Other elementary workers"', add
label define ec10a_occ3_lbl 998 `"Unknown"', add
label define ec10a_occ3_lbl 999 `"NIU (not in universe)"', add
label values ec10a_occ3 ec10a_occ3_lbl

label define ec10a_occ2_lbl 01 `"Commissioned armed forces officers"'
label define ec10a_occ2_lbl 02 `"Non-commissioned armed forces officers"', add
label define ec10a_occ2_lbl 03 `"Armed forces occupations, other ranks"', add
label define ec10a_occ2_lbl 11 `"Chief executives, senior officials, and legislators"', add
label define ec10a_occ2_lbl 12 `"Administrative and commercial managers"', add
label define ec10a_occ2_lbl 13 `"Production and specialised services managers"', add
label define ec10a_occ2_lbl 14 `"Hospitality, retail, and other services managers"', add
label define ec10a_occ2_lbl 21 `"Science and engineering professionals"', add
label define ec10a_occ2_lbl 22 `"Health professionals"', add
label define ec10a_occ2_lbl 23 `"Teaching professionals"', add
label define ec10a_occ2_lbl 24 `"Business and administration professionals"', add
label define ec10a_occ2_lbl 25 `"Information and communications technology professionals"', add
label define ec10a_occ2_lbl 26 `"Legal, social, and cultural professionals"', add
label define ec10a_occ2_lbl 31 `"Science and engineering associate professionals"', add
label define ec10a_occ2_lbl 32 `"Health associate professionals"', add
label define ec10a_occ2_lbl 33 `"Business and administration associate professionals"', add
label define ec10a_occ2_lbl 34 `"Legal, social, cultural, and related associate professionals"', add
label define ec10a_occ2_lbl 35 `"Information and communications technicians"', add
label define ec10a_occ2_lbl 41 `"General and keyboard clerks"', add
label define ec10a_occ2_lbl 42 `"Customer services clerks"', add
label define ec10a_occ2_lbl 43 `"Numerical and material recording clerks"', add
label define ec10a_occ2_lbl 44 `"Other clerical support workers"', add
label define ec10a_occ2_lbl 51 `"Personal service workers"', add
label define ec10a_occ2_lbl 52 `"Sales workers"', add
label define ec10a_occ2_lbl 53 `"Personal care workers"', add
label define ec10a_occ2_lbl 54 `"Protective services workers"', add
label define ec10a_occ2_lbl 61 `"Market-oriented skilled agricultural workers"', add
label define ec10a_occ2_lbl 62 `"Market-oriented skilled forestry, fishery, and hunting workers"', add
label define ec10a_occ2_lbl 63 `"Subsistence farmers, fishers, hunters, and gatherers"', add
label define ec10a_occ2_lbl 71 `"Building and related trades workers, excluding electricians"', add
label define ec10a_occ2_lbl 72 `"Metal, machinery, and related trades workers"', add
label define ec10a_occ2_lbl 73 `"Handicraft and printing workers"', add
label define ec10a_occ2_lbl 74 `"Electrical and electronic trades workers"', add
label define ec10a_occ2_lbl 75 `"Food processing, wood working, garment, and other craft and related trades workers"', add
label define ec10a_occ2_lbl 81 `"Stationary plant and machine operators"', add
label define ec10a_occ2_lbl 82 `"Assemblers"', add
label define ec10a_occ2_lbl 83 `"Drivers and mobile plant operators"', add
label define ec10a_occ2_lbl 91 `"Cleaners and helpers"', add
label define ec10a_occ2_lbl 92 `"Agricultural, forestry, and fishery labourers"', add
label define ec10a_occ2_lbl 93 `"Labourers in mining, construction, manufacturing, and transport"', add
label define ec10a_occ2_lbl 94 `"Food preparation assistants"', add
label define ec10a_occ2_lbl 95 `"Street and related sales and service workers"', add
label define ec10a_occ2_lbl 96 `"Refuse workers and other elementary workers"', add
label define ec10a_occ2_lbl 98 `"Unknown"', add
label define ec10a_occ2_lbl 99 `"NIU (not in universe)"', add
label values ec10a_occ2 ec10a_occ2_lbl

label define ec10a_classwk_lbl 0 `"NIU (not in universe)"'
label define ec10a_classwk_lbl 1 `"Public employee or worker"', add
label define ec10a_classwk_lbl 2 `"Private employee or worker"', add
label define ec10a_classwk_lbl 3 `"Day laborer or laborer"', add
label define ec10a_classwk_lbl 4 `"Patron/employer"', add
label define ec10a_classwk_lbl 5 `"Partner"', add
label define ec10a_classwk_lbl 6 `"Self-employed"', add
label define ec10a_classwk_lbl 7 `"Non-remunerated worker"', add
label define ec10a_classwk_lbl 8 `"Domestic worker"', add
label define ec10a_classwk_lbl 9 `"Unknown"', add
label values ec10a_classwk ec10a_classwk_lbl

label define ec10a_hrswork_lbl 001 `"1"'
label define ec10a_hrswork_lbl 002 `"2"', add
label define ec10a_hrswork_lbl 003 `"3"', add
label define ec10a_hrswork_lbl 004 `"4"', add
label define ec10a_hrswork_lbl 005 `"5"', add
label define ec10a_hrswork_lbl 006 `"6"', add
label define ec10a_hrswork_lbl 007 `"7"', add
label define ec10a_hrswork_lbl 008 `"8"', add
label define ec10a_hrswork_lbl 009 `"9"', add
label define ec10a_hrswork_lbl 010 `"10"', add
label define ec10a_hrswork_lbl 011 `"11"', add
label define ec10a_hrswork_lbl 012 `"12"', add
label define ec10a_hrswork_lbl 013 `"13"', add
label define ec10a_hrswork_lbl 014 `"14"', add
label define ec10a_hrswork_lbl 015 `"15"', add
label define ec10a_hrswork_lbl 016 `"16"', add
label define ec10a_hrswork_lbl 017 `"17"', add
label define ec10a_hrswork_lbl 018 `"18"', add
label define ec10a_hrswork_lbl 019 `"19"', add
label define ec10a_hrswork_lbl 020 `"20"', add
label define ec10a_hrswork_lbl 021 `"21"', add
label define ec10a_hrswork_lbl 022 `"22"', add
label define ec10a_hrswork_lbl 023 `"23"', add
label define ec10a_hrswork_lbl 024 `"24"', add
label define ec10a_hrswork_lbl 025 `"25"', add
label define ec10a_hrswork_lbl 026 `"26"', add
label define ec10a_hrswork_lbl 027 `"27"', add
label define ec10a_hrswork_lbl 028 `"28"', add
label define ec10a_hrswork_lbl 029 `"29"', add
label define ec10a_hrswork_lbl 030 `"30"', add
label define ec10a_hrswork_lbl 031 `"31"', add
label define ec10a_hrswork_lbl 032 `"32"', add
label define ec10a_hrswork_lbl 033 `"33"', add
label define ec10a_hrswork_lbl 034 `"34"', add
label define ec10a_hrswork_lbl 035 `"35"', add
label define ec10a_hrswork_lbl 036 `"36"', add
label define ec10a_hrswork_lbl 037 `"37"', add
label define ec10a_hrswork_lbl 038 `"38"', add
label define ec10a_hrswork_lbl 039 `"39"', add
label define ec10a_hrswork_lbl 040 `"40"', add
label define ec10a_hrswork_lbl 041 `"41"', add
label define ec10a_hrswork_lbl 042 `"42"', add
label define ec10a_hrswork_lbl 043 `"43"', add
label define ec10a_hrswork_lbl 044 `"44"', add
label define ec10a_hrswork_lbl 045 `"45"', add
label define ec10a_hrswork_lbl 046 `"46"', add
label define ec10a_hrswork_lbl 047 `"47"', add
label define ec10a_hrswork_lbl 048 `"48"', add
label define ec10a_hrswork_lbl 049 `"49"', add
label define ec10a_hrswork_lbl 050 `"50"', add
label define ec10a_hrswork_lbl 051 `"51"', add
label define ec10a_hrswork_lbl 052 `"52"', add
label define ec10a_hrswork_lbl 053 `"53"', add
label define ec10a_hrswork_lbl 054 `"54"', add
label define ec10a_hrswork_lbl 055 `"55"', add
label define ec10a_hrswork_lbl 056 `"56"', add
label define ec10a_hrswork_lbl 057 `"57"', add
label define ec10a_hrswork_lbl 058 `"58"', add
label define ec10a_hrswork_lbl 059 `"59"', add
label define ec10a_hrswork_lbl 060 `"60"', add
label define ec10a_hrswork_lbl 061 `"61"', add
label define ec10a_hrswork_lbl 062 `"62"', add
label define ec10a_hrswork_lbl 063 `"63"', add
label define ec10a_hrswork_lbl 064 `"64"', add
label define ec10a_hrswork_lbl 065 `"65"', add
label define ec10a_hrswork_lbl 066 `"66"', add
label define ec10a_hrswork_lbl 067 `"67"', add
label define ec10a_hrswork_lbl 068 `"68"', add
label define ec10a_hrswork_lbl 069 `"69"', add
label define ec10a_hrswork_lbl 070 `"70"', add
label define ec10a_hrswork_lbl 071 `"71"', add
label define ec10a_hrswork_lbl 072 `"72"', add
label define ec10a_hrswork_lbl 073 `"73"', add
label define ec10a_hrswork_lbl 074 `"74"', add
label define ec10a_hrswork_lbl 075 `"75"', add
label define ec10a_hrswork_lbl 076 `"76"', add
label define ec10a_hrswork_lbl 077 `"77"', add
label define ec10a_hrswork_lbl 078 `"78"', add
label define ec10a_hrswork_lbl 079 `"79"', add
label define ec10a_hrswork_lbl 080 `"80"', add
label define ec10a_hrswork_lbl 081 `"81"', add
label define ec10a_hrswork_lbl 082 `"82"', add
label define ec10a_hrswork_lbl 083 `"83"', add
label define ec10a_hrswork_lbl 084 `"84"', add
label define ec10a_hrswork_lbl 085 `"85"', add
label define ec10a_hrswork_lbl 086 `"86"', add
label define ec10a_hrswork_lbl 087 `"87"', add
label define ec10a_hrswork_lbl 088 `"88"', add
label define ec10a_hrswork_lbl 089 `"89"', add
label define ec10a_hrswork_lbl 090 `"90"', add
label define ec10a_hrswork_lbl 091 `"91"', add
label define ec10a_hrswork_lbl 092 `"92"', add
label define ec10a_hrswork_lbl 093 `"93"', add
label define ec10a_hrswork_lbl 094 `"94"', add
label define ec10a_hrswork_lbl 095 `"95"', add
label define ec10a_hrswork_lbl 096 `"96"', add
label define ec10a_hrswork_lbl 097 `"97"', add
label define ec10a_hrswork_lbl 098 `"98"', add
label define ec10a_hrswork_lbl 099 `"99"', add
label define ec10a_hrswork_lbl 100 `"100"', add
label define ec10a_hrswork_lbl 101 `"101"', add
label define ec10a_hrswork_lbl 102 `"102"', add
label define ec10a_hrswork_lbl 103 `"103"', add
label define ec10a_hrswork_lbl 104 `"104"', add
label define ec10a_hrswork_lbl 105 `"105"', add
label define ec10a_hrswork_lbl 106 `"106"', add
label define ec10a_hrswork_lbl 107 `"107"', add
label define ec10a_hrswork_lbl 108 `"108"', add
label define ec10a_hrswork_lbl 109 `"109"', add
label define ec10a_hrswork_lbl 110 `"110"', add
label define ec10a_hrswork_lbl 111 `"111"', add
label define ec10a_hrswork_lbl 112 `"112"', add
label define ec10a_hrswork_lbl 113 `"113"', add
label define ec10a_hrswork_lbl 114 `"114"', add
label define ec10a_hrswork_lbl 115 `"115"', add
label define ec10a_hrswork_lbl 116 `"116"', add
label define ec10a_hrswork_lbl 117 `"117"', add
label define ec10a_hrswork_lbl 118 `"118"', add
label define ec10a_hrswork_lbl 119 `"119"', add
label define ec10a_hrswork_lbl 120 `"120"', add
label define ec10a_hrswork_lbl 121 `"121"', add
label define ec10a_hrswork_lbl 122 `"122"', add
label define ec10a_hrswork_lbl 123 `"123"', add
label define ec10a_hrswork_lbl 124 `"124"', add
label define ec10a_hrswork_lbl 125 `"125"', add
label define ec10a_hrswork_lbl 126 `"126"', add
label define ec10a_hrswork_lbl 127 `"127"', add
label define ec10a_hrswork_lbl 128 `"128"', add
label define ec10a_hrswork_lbl 129 `"129"', add
label define ec10a_hrswork_lbl 130 `"130"', add
label define ec10a_hrswork_lbl 131 `"131"', add
label define ec10a_hrswork_lbl 132 `"132"', add
label define ec10a_hrswork_lbl 133 `"133"', add
label define ec10a_hrswork_lbl 134 `"134"', add
label define ec10a_hrswork_lbl 135 `"135"', add
label define ec10a_hrswork_lbl 136 `"136"', add
label define ec10a_hrswork_lbl 137 `"137"', add
label define ec10a_hrswork_lbl 138 `"138"', add
label define ec10a_hrswork_lbl 139 `"139"', add
label define ec10a_hrswork_lbl 140 `"140"', add
label define ec10a_hrswork_lbl 998 `"Unknown"', add
label define ec10a_hrswork_lbl 999 `"NIU (not in universe)"', add
label values ec10a_hrswork ec10a_hrswork_lbl

label define ec10a_wkloc_lbl 1 `"Inside the household"'
label define ec10a_wkloc_lbl 2 `"Outside the household"', add
label define ec10a_wkloc_lbl 8 `"Unknown"', add
label define ec10a_wkloc_lbl 9 `"NIU (not in universe)"', add
label values ec10a_wkloc ec10a_wkloc_lbl

label define ec10a_marst_lbl 1 `"Married"'
label define ec10a_marst_lbl 2 `"Consensual union"', add
label define ec10a_marst_lbl 3 `"Separated"', add
label define ec10a_marst_lbl 4 `"Divorced"', add
label define ec10a_marst_lbl 5 `"Widowed"', add
label define ec10a_marst_lbl 6 `"Single"', add
label define ec10a_marst_lbl 9 `"NIU (not in universe)"', add
label values ec10a_marst ec10a_marst_lbl

label define ec10a_socsec_lbl 1 `"ISSFA insurance"'
label define ec10a_socsec_lbl 2 `"ISSPOL insurance"', add
label define ec10a_socsec_lbl 3 `"General IESS insurance"', add
label define ec10a_socsec_lbl 4 `"Voluntary IESS insurance"', add
label define ec10a_socsec_lbl 5 `"Agricultural IESS insurance"', add
label define ec10a_socsec_lbl 6 `"Retiree of IESS/ISSFA/ISSPOL"', add
label define ec10a_socsec_lbl 7 `"Does not contribute"', add
label define ec10a_socsec_lbl 8 `"Unknown"', add
label define ec10a_socsec_lbl 9 `"NIU (not in universe)"', add
label values ec10a_socsec ec10a_socsec_lbl

label define ec10a_chborn_lbl 00 `"0"'
label define ec10a_chborn_lbl 01 `"1"', add
label define ec10a_chborn_lbl 02 `"2"', add
label define ec10a_chborn_lbl 03 `"3"', add
label define ec10a_chborn_lbl 04 `"4"', add
label define ec10a_chborn_lbl 05 `"5"', add
label define ec10a_chborn_lbl 06 `"6"', add
label define ec10a_chborn_lbl 07 `"7"', add
label define ec10a_chborn_lbl 08 `"8"', add
label define ec10a_chborn_lbl 09 `"9"', add
label define ec10a_chborn_lbl 10 `"10"', add
label define ec10a_chborn_lbl 11 `"11"', add
label define ec10a_chborn_lbl 12 `"12"', add
label define ec10a_chborn_lbl 13 `"13"', add
label define ec10a_chborn_lbl 14 `"14"', add
label define ec10a_chborn_lbl 15 `"15"', add
label define ec10a_chborn_lbl 16 `"16"', add
label define ec10a_chborn_lbl 17 `"17"', add
label define ec10a_chborn_lbl 18 `"18"', add
label define ec10a_chborn_lbl 19 `"19+"', add
label define ec10a_chborn_lbl 97 `"Not declared"', add
label define ec10a_chborn_lbl 98 `"Unknown"', add
label define ec10a_chborn_lbl 99 `"NIU (not in universe)"', add
label values ec10a_chborn ec10a_chborn_lbl

label define ec10a_chbornm_lbl 00 `"0"'
label define ec10a_chbornm_lbl 01 `"1"', add
label define ec10a_chbornm_lbl 02 `"2"', add
label define ec10a_chbornm_lbl 03 `"3"', add
label define ec10a_chbornm_lbl 04 `"4"', add
label define ec10a_chbornm_lbl 05 `"5"', add
label define ec10a_chbornm_lbl 06 `"6"', add
label define ec10a_chbornm_lbl 07 `"7"', add
label define ec10a_chbornm_lbl 08 `"8"', add
label define ec10a_chbornm_lbl 09 `"9"', add
label define ec10a_chbornm_lbl 10 `"10"', add
label define ec10a_chbornm_lbl 11 `"11"', add
label define ec10a_chbornm_lbl 12 `"12+"', add
label define ec10a_chbornm_lbl 97 `"Not declared"', add
label define ec10a_chbornm_lbl 98 `"Unknown"', add
label define ec10a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values ec10a_chbornm ec10a_chbornm_lbl

label define ec10a_chbornf_lbl 00 `"0"'
label define ec10a_chbornf_lbl 01 `"1"', add
label define ec10a_chbornf_lbl 02 `"2"', add
label define ec10a_chbornf_lbl 03 `"3"', add
label define ec10a_chbornf_lbl 04 `"4"', add
label define ec10a_chbornf_lbl 05 `"5"', add
label define ec10a_chbornf_lbl 06 `"6"', add
label define ec10a_chbornf_lbl 07 `"7"', add
label define ec10a_chbornf_lbl 08 `"8"', add
label define ec10a_chbornf_lbl 09 `"9"', add
label define ec10a_chbornf_lbl 10 `"10"', add
label define ec10a_chbornf_lbl 11 `"11"', add
label define ec10a_chbornf_lbl 12 `"12+"', add
label define ec10a_chbornf_lbl 97 `"Not declared"', add
label define ec10a_chbornf_lbl 98 `"Unknown"', add
label define ec10a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values ec10a_chbornf ec10a_chbornf_lbl

label define ec10a_chsurv_lbl 00 `"0"'
label define ec10a_chsurv_lbl 01 `"1"', add
label define ec10a_chsurv_lbl 02 `"2"', add
label define ec10a_chsurv_lbl 03 `"3"', add
label define ec10a_chsurv_lbl 04 `"4"', add
label define ec10a_chsurv_lbl 05 `"5"', add
label define ec10a_chsurv_lbl 06 `"6"', add
label define ec10a_chsurv_lbl 07 `"7"', add
label define ec10a_chsurv_lbl 08 `"8"', add
label define ec10a_chsurv_lbl 09 `"9"', add
label define ec10a_chsurv_lbl 10 `"10"', add
label define ec10a_chsurv_lbl 11 `"11"', add
label define ec10a_chsurv_lbl 12 `"12"', add
label define ec10a_chsurv_lbl 13 `"13"', add
label define ec10a_chsurv_lbl 14 `"14"', add
label define ec10a_chsurv_lbl 15 `"15"', add
label define ec10a_chsurv_lbl 16 `"16+"', add
label define ec10a_chsurv_lbl 98 `"Unknown"', add
label define ec10a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values ec10a_chsurv ec10a_chsurv_lbl

label define ec10a_age1stb_lbl 12 `"12"'
label define ec10a_age1stb_lbl 13 `"13"', add
label define ec10a_age1stb_lbl 14 `"14"', add
label define ec10a_age1stb_lbl 15 `"15"', add
label define ec10a_age1stb_lbl 16 `"16"', add
label define ec10a_age1stb_lbl 17 `"17"', add
label define ec10a_age1stb_lbl 18 `"18"', add
label define ec10a_age1stb_lbl 19 `"19"', add
label define ec10a_age1stb_lbl 20 `"20"', add
label define ec10a_age1stb_lbl 21 `"21"', add
label define ec10a_age1stb_lbl 22 `"22"', add
label define ec10a_age1stb_lbl 23 `"23"', add
label define ec10a_age1stb_lbl 24 `"24"', add
label define ec10a_age1stb_lbl 25 `"25"', add
label define ec10a_age1stb_lbl 26 `"26"', add
label define ec10a_age1stb_lbl 27 `"27"', add
label define ec10a_age1stb_lbl 28 `"28"', add
label define ec10a_age1stb_lbl 29 `"29"', add
label define ec10a_age1stb_lbl 30 `"30"', add
label define ec10a_age1stb_lbl 31 `"31"', add
label define ec10a_age1stb_lbl 32 `"32"', add
label define ec10a_age1stb_lbl 33 `"33"', add
label define ec10a_age1stb_lbl 34 `"34"', add
label define ec10a_age1stb_lbl 35 `"35"', add
label define ec10a_age1stb_lbl 36 `"36"', add
label define ec10a_age1stb_lbl 37 `"37"', add
label define ec10a_age1stb_lbl 38 `"38"', add
label define ec10a_age1stb_lbl 39 `"39"', add
label define ec10a_age1stb_lbl 40 `"40"', add
label define ec10a_age1stb_lbl 41 `"41"', add
label define ec10a_age1stb_lbl 42 `"42"', add
label define ec10a_age1stb_lbl 43 `"43"', add
label define ec10a_age1stb_lbl 44 `"44"', add
label define ec10a_age1stb_lbl 45 `"45"', add
label define ec10a_age1stb_lbl 46 `"46"', add
label define ec10a_age1stb_lbl 47 `"47"', add
label define ec10a_age1stb_lbl 48 `"48"', add
label define ec10a_age1stb_lbl 49 `"49"', add
label define ec10a_age1stb_lbl 50 `"50+"', add
label define ec10a_age1stb_lbl 97 `"Not declared"', add
label define ec10a_age1stb_lbl 98 `"Unknown"', add
label define ec10a_age1stb_lbl 99 `"NIU (not in universe)"', add
label values ec10a_age1stb ec10a_age1stb_lbl

label define ec10a_lstbyear_lbl 1940 `"1940 or earlier"'
label define ec10a_lstbyear_lbl 1941 `"1941"', add
label define ec10a_lstbyear_lbl 1942 `"1942"', add
label define ec10a_lstbyear_lbl 1943 `"1943"', add
label define ec10a_lstbyear_lbl 1944 `"1944"', add
label define ec10a_lstbyear_lbl 1945 `"1945"', add
label define ec10a_lstbyear_lbl 1946 `"1946"', add
label define ec10a_lstbyear_lbl 1947 `"1947"', add
label define ec10a_lstbyear_lbl 1948 `"1948"', add
label define ec10a_lstbyear_lbl 1949 `"1949"', add
label define ec10a_lstbyear_lbl 1950 `"1950"', add
label define ec10a_lstbyear_lbl 1951 `"1951"', add
label define ec10a_lstbyear_lbl 1952 `"1952"', add
label define ec10a_lstbyear_lbl 1953 `"1953"', add
label define ec10a_lstbyear_lbl 1954 `"1954"', add
label define ec10a_lstbyear_lbl 1955 `"1955"', add
label define ec10a_lstbyear_lbl 1956 `"1956"', add
label define ec10a_lstbyear_lbl 1957 `"1957"', add
label define ec10a_lstbyear_lbl 1958 `"1958"', add
label define ec10a_lstbyear_lbl 1959 `"1959"', add
label define ec10a_lstbyear_lbl 1960 `"1960"', add
label define ec10a_lstbyear_lbl 1961 `"1961"', add
label define ec10a_lstbyear_lbl 1962 `"1962"', add
label define ec10a_lstbyear_lbl 1963 `"1963"', add
label define ec10a_lstbyear_lbl 1964 `"1964"', add
label define ec10a_lstbyear_lbl 1965 `"1965"', add
label define ec10a_lstbyear_lbl 1966 `"1966"', add
label define ec10a_lstbyear_lbl 1967 `"1967"', add
label define ec10a_lstbyear_lbl 1968 `"1968"', add
label define ec10a_lstbyear_lbl 1969 `"1969"', add
label define ec10a_lstbyear_lbl 1970 `"1970"', add
label define ec10a_lstbyear_lbl 1971 `"1971"', add
label define ec10a_lstbyear_lbl 1972 `"1972"', add
label define ec10a_lstbyear_lbl 1973 `"1973"', add
label define ec10a_lstbyear_lbl 1974 `"1974"', add
label define ec10a_lstbyear_lbl 1975 `"1975"', add
label define ec10a_lstbyear_lbl 1976 `"1976"', add
label define ec10a_lstbyear_lbl 1977 `"1977"', add
label define ec10a_lstbyear_lbl 1978 `"1978"', add
label define ec10a_lstbyear_lbl 1979 `"1979"', add
label define ec10a_lstbyear_lbl 1980 `"1980"', add
label define ec10a_lstbyear_lbl 1981 `"1981"', add
label define ec10a_lstbyear_lbl 1982 `"1982"', add
label define ec10a_lstbyear_lbl 1983 `"1983"', add
label define ec10a_lstbyear_lbl 1984 `"1984"', add
label define ec10a_lstbyear_lbl 1985 `"1985"', add
label define ec10a_lstbyear_lbl 1986 `"1986"', add
label define ec10a_lstbyear_lbl 1987 `"1987"', add
label define ec10a_lstbyear_lbl 1988 `"1988"', add
label define ec10a_lstbyear_lbl 1989 `"1989"', add
label define ec10a_lstbyear_lbl 1990 `"1990"', add
label define ec10a_lstbyear_lbl 1991 `"1991"', add
label define ec10a_lstbyear_lbl 1992 `"1992"', add
label define ec10a_lstbyear_lbl 1993 `"1993"', add
label define ec10a_lstbyear_lbl 1994 `"1994"', add
label define ec10a_lstbyear_lbl 1995 `"1995"', add
label define ec10a_lstbyear_lbl 1996 `"1996"', add
label define ec10a_lstbyear_lbl 1997 `"1997"', add
label define ec10a_lstbyear_lbl 1998 `"1998"', add
label define ec10a_lstbyear_lbl 1999 `"1999"', add
label define ec10a_lstbyear_lbl 2000 `"2000"', add
label define ec10a_lstbyear_lbl 2001 `"2001"', add
label define ec10a_lstbyear_lbl 2002 `"2002"', add
label define ec10a_lstbyear_lbl 2003 `"2003"', add
label define ec10a_lstbyear_lbl 2004 `"2004"', add
label define ec10a_lstbyear_lbl 2005 `"2005"', add
label define ec10a_lstbyear_lbl 2006 `"2006"', add
label define ec10a_lstbyear_lbl 2007 `"2007"', add
label define ec10a_lstbyear_lbl 2008 `"2008"', add
label define ec10a_lstbyear_lbl 2009 `"2009"', add
label define ec10a_lstbyear_lbl 2010 `"2010"', add
label define ec10a_lstbyear_lbl 9997 `"Not declared"', add
label define ec10a_lstbyear_lbl 9998 `"Unknown"', add
label define ec10a_lstbyear_lbl 9999 `"NIU (not in universe)"', add
label values ec10a_lstbyear ec10a_lstbyear_lbl

label define ec10a_lstbmon_lbl 01 `"January"'
label define ec10a_lstbmon_lbl 02 `"February"', add
label define ec10a_lstbmon_lbl 03 `"March"', add
label define ec10a_lstbmon_lbl 04 `"April"', add
label define ec10a_lstbmon_lbl 05 `"May"', add
label define ec10a_lstbmon_lbl 06 `"June"', add
label define ec10a_lstbmon_lbl 07 `"July"', add
label define ec10a_lstbmon_lbl 08 `"August"', add
label define ec10a_lstbmon_lbl 09 `"September"', add
label define ec10a_lstbmon_lbl 10 `"October"', add
label define ec10a_lstbmon_lbl 11 `"November"', add
label define ec10a_lstbmon_lbl 12 `"December"', add
label define ec10a_lstbmon_lbl 97 `"Not declared"', add
label define ec10a_lstbmon_lbl 98 `"Unknown"', add
label define ec10a_lstbmon_lbl 99 `"NIU (not in universe)"', add
label values ec10a_lstbmon ec10a_lstbmon_lbl

label define ec10a_lstbsurv_lbl 1 `"Yes, child still alive"'
label define ec10a_lstbsurv_lbl 2 `"No, child not alive"', add
label define ec10a_lstbsurv_lbl 8 `"Unknown"', add
label define ec10a_lstbsurv_lbl 9 `"NIU (not in universe)"', add
label values ec10a_lstbsurv ec10a_lstbsurv_lbl

label define ec10a_empstat2_lbl 01 `"Worked at least one hour"'
label define ec10a_empstat2_lbl 02 `"Did not work but has a job"', add
label define ec10a_empstat2_lbl 03 `"Worked at least one hour manufacturing products or providing services"', add
label define ec10a_empstat2_lbl 04 `"Worked at least one hour in family business"', add
label define ec10a_empstat2_lbl 05 `"Worked at least one hour in agricultural activities"', add
label define ec10a_empstat2_lbl 06 `"Unemployed"', add
label define ec10a_empstat2_lbl 07 `"Looking for work for the first time"', add
label define ec10a_empstat2_lbl 08 `"Rentier"', add
label define ec10a_empstat2_lbl 09 `"Retired or pensioner"', add
label define ec10a_empstat2_lbl 10 `"Student"', add
label define ec10a_empstat2_lbl 11 `"Does household chores"', add
label define ec10a_empstat2_lbl 12 `"Disabled"', add
label define ec10a_empstat2_lbl 13 `"Other activity"', add
label define ec10a_empstat2_lbl 99 `"NIU (not in universe)"', add
label values ec10a_empstat2 ec10a_empstat2_lbl

label define ec10a_ind_lbl 01 `"Agriculture, forestry, and fishing"'
label define ec10a_ind_lbl 02 `"Mining and quarrying"', add
label define ec10a_ind_lbl 03 `"Manufacturing"', add
label define ec10a_ind_lbl 04 `"Electricity, gas, steam, and air conditioning supply"', add
label define ec10a_ind_lbl 05 `"Water supply; sewerage, waste management, and remediation activities"', add
label define ec10a_ind_lbl 06 `"Construction"', add
label define ec10a_ind_lbl 07 `"Wholesale and retail trade and repair of motor vehicles and motorcycles"', add
label define ec10a_ind_lbl 08 `"Transportation and storage"', add
label define ec10a_ind_lbl 09 `"Accommodation and food service activites"', add
label define ec10a_ind_lbl 10 `"Information and communication"', add
label define ec10a_ind_lbl 11 `"Financial and insurance activities"', add
label define ec10a_ind_lbl 12 `"Real state activities"', add
label define ec10a_ind_lbl 13 `"Professional, scientific, and technical activities"', add
label define ec10a_ind_lbl 14 `"Administrative and support service activities"', add
label define ec10a_ind_lbl 15 `"Public administration and defence"', add
label define ec10a_ind_lbl 16 `"Education"', add
label define ec10a_ind_lbl 17 `"Human health and social work activities"', add
label define ec10a_ind_lbl 18 `"Arts, entertainment, and recreation"', add
label define ec10a_ind_lbl 19 `"Other service activities"', add
label define ec10a_ind_lbl 20 `"Activities of households as employers; undifferentiated goods- and services-producing activities of households for own use"', add
label define ec10a_ind_lbl 21 `"Activities of extraterritorial organizations and bodies"', add
label define ec10a_ind_lbl 98 `"Not declared"', add
label define ec10a_ind_lbl 99 `"NIU (not in universe)"', add
label values ec10a_ind ec10a_ind_lbl

label define ec10a_occ_lbl 01 `"Managers"'
label define ec10a_occ_lbl 02 `"Professionals"', add
label define ec10a_occ_lbl 03 `"Technicians and associate professionals"', add
label define ec10a_occ_lbl 04 `"Clerical support workers"', add
label define ec10a_occ_lbl 05 `"Service and sales workers"', add
label define ec10a_occ_lbl 06 `"Skilled agricultural, forestry, and fishery workers"', add
label define ec10a_occ_lbl 07 `"Craft and related trades workers"', add
label define ec10a_occ_lbl 08 `"Plant and machine operators, and assemblers"', add
label define ec10a_occ_lbl 09 `"Elementary occupations"', add
label define ec10a_occ_lbl 10 `"Armed forces"', add
label define ec10a_occ_lbl 98 `"Not declared"', add
label define ec10a_occ_lbl 99 `"NIU (not in universe)"', add
label values ec10a_occ ec10a_occ_lbl


