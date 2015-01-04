* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                         ///
  int     cntry              1-3      ///
  int     year               4-7      ///
  int     sample             8-11     ///
  double  serial             12-21    ///
  long    zm10a_dwnum        22-28    ///
  byte    zm10a_pern         29-30    ///
  byte    zm10a_prov         31-32    ///
  int     zm10a_dist         33-36    ///
  long    zm10a_const        37-43    ///
  byte    zm10a_hhtype       44-45    ///
  byte    zm10a_roof         46-47    ///
  byte    zm10a_wall         48-49    ///
  byte    zm10a_floor        50-50    ///
  byte    zm10a_occup        51-51    ///
  byte    zm10a_nohh         52-52    ///
  byte    zm10a_watsup       53-54    ///
  byte    zm10a_drinkwsup    55-56    ///
  byte    zm10a_rooms        57-58    ///
  byte    zm10a_bedrms       59-60    ///
  byte    zm10a_persleep     61-62    ///
  byte    zm10a_kitchen      63-63    ///
  byte    zm10a_electrc      64-65    ///
  byte    zm10a_fuelck       66-67    ///
  byte    zm10a_fuelh        68-69    ///
  byte    zm10a_radio        70-70    ///
  byte    zm10a_tv           71-71    ///
  byte    zm10a_refrig       72-72    ///
  byte    zm10a_phone        73-73    ///
  byte    zm10a_bike         74-74    ///
  byte    zm10a_autos        75-75    ///
  byte    zm10a_internet     76-76    ///
  byte    zm10a_computr      77-77    ///
  byte    zm10a_motorc       78-78    ///
  byte    zm10a_plough       79-79    ///
  byte    zm10a_boat         80-80    ///
  byte    zm10a_scart        81-81    ///
  byte    zm10a_donkey       82-82    ///
  byte    zm10a_mobile       83-83    ///
  byte    zm10a_oxen         84-84    ///
  byte    zm10a_wheelb       85-85    ///
  byte    zm10a_waste        86-86    ///
  byte    zm10a_toilet       87-87    ///
  byte    zm10a_toiletins    88-88    ///
  byte    zm10a_toiletexc    89-89    ///
  byte    zm10a_ownshp       90-90    ///
  byte    zm10a_ownmeth      91-91    ///
  byte    zm10a_freehous     92-92    ///
  byte    zm10a_renthous     93-93    ///
  byte    zm10a_emplrenth    94-94    ///
  byte    zm10a_orgrenth     95-95    ///
  byte    zm10a_agricact     96-96    ///
  byte    zm10a_corn         97-97    ///
  byte    zm10a_sorghum      98-98    ///
  byte    zm10a_millet       99-99    ///
  byte    zm10a_rice         100-100  ///
  byte    zm10a_cassava      101-101  ///
  byte    zm10a_sweetpot     102-102  ///
  byte    zm10a_irishpot     103-103  ///
  byte    zm10a_grnuts       104-104  ///
  byte    zm10a_mixbeans     105-105  ///
  byte    zm10a_cowpeas      106-106  ///
  byte    zm10a_wheat        107-107  ///
  byte    zm10a_cotton       108-108  ///
  byte    zm10a_burlytob     109-109  ///
  byte    zm10a_virginatob   110-110  ///
  byte    zm10a_sunflow      111-111  ///
  byte    zm10a_soybeans     112-112  ///
  byte    zm10a_paprika      113-113  ///
  byte    zm10a_sugarcane    114-114  ///
  byte    zm10a_cashew       115-115  ///
  byte    zm10a_vegetab      116-116  ///
  byte    zm10a_orchards     117-117  ///
  byte    zm10a_coffee       118-118  ///
  byte    zm10a_velvbean     119-119  ///
  byte    zm10a_bambnut      120-120  ///
  byte    zm10a_pineapple    121-121  ///
  byte    zm10a_othcrops     122-122  ///
  byte    zm10a_cattle       123-123  ///
  byte    zm10a_goat         124-124  ///
  byte    zm10a_pig          125-125  ///
  byte    zm10a_sheep        126-126  ///
  byte    zm10a_donkeyr      127-127  ///
  byte    zm10a_chicken      128-128  ///
  byte    zm10a_othpoultry   129-129  ///
  byte    zm10a_othlivst     130-130  ///
  byte    zm10a_fishfarm     131-131  ///
  byte    zm10a_gamranch     132-132  ///
  byte    zm10a_nummort      133-133  ///
  int     pernum             134-136  ///
  float   wtper              137-144  ///
  byte    resident           145-145  ///
  byte    zm10a_pernum       146-147  ///
  byte    zm10a_mbstat       148-148  ///
  byte    zm10a_relate       149-150  ///
  byte    zm10a_sex          151-151  ///
  byte    zm10a_age          152-153  ///
  int     zm10a_bplctry      154-157  ///
  byte    zm10a_bplprov      158-159  ///
  byte    zm10a_bplregion    160-160  ///
  byte    zm10a_nation       161-161  ///
  byte    zm10a_nation2      162-163  ///
  byte    zm10a_stayp        164-164  ///
  byte    zm10a_relig        165-165  ///
  byte    zm10a_ethn         166-167  ///
  byte    zm10a_lang         168-169  ///
  byte    zm10a_migprov      170-171  ///
  int     zm10a_mig          172-175  ///
  byte    zm10a_durres       176-177  ///
  byte    zm10a_disable      178-178  ///
  byte    zm10a_distype      179-180  ///
  byte    zm10a_mothaliv     181-181  ///
  byte    zm10a_mothlivhh    182-182  ///
  byte    zm10a_fathaliv     183-183  ///
  byte    zm10a_fathlivhh    184-184  ///
  byte    zm10a_brthcert     185-185  ///
  byte    zm10a_lit          186-186  ///
  byte    zm10a_everattend   187-187  ///
  byte    zm10a_currattend   188-188  ///
  byte    zm10a_higheduc     189-190  ///
  byte    zm10a_highvoc      191-191  ///
  byte    zm10a_fieldstudy   192-193  ///
  byte    zm10a_activ7days   194-195  ///
  byte    zm10a_activ12mths  196-197  ///
  byte    zm10a_classwk      198-198  ///
  int     zm10a_occ2         199-201  ///
  int     zm10a_ind2         202-204  ///
  byte    zm10a_marst        205-205  ///
  byte    zm10a_agemarr      206-207  ///
  byte    zm10a_chborn       208-208  ///
  byte    zm10a_maleshh      209-210  ///
  byte    zm10a_femshh       211-212  ///
  byte    zm10a_maleselse    213-214  ///
  byte    zm10a_femselse     215-216  ///
  byte    zm10a_malesdead    217-218  ///
  byte    zm10a_femsdead     219-220  ///
  byte    zm10a_brths12mths  221-221  ///
  byte    zm10a_males12liv   222-222  ///
  byte    zm10a_fems12liv    223-223  ///
  byte    zm10a_males12else  224-224  ///
  byte    zm10a_fem12else    225-225  ///
  byte    zm10a_males12dead  226-226  ///
  byte    zm10a_fem12dead    227-227  ///
  byte    zm10a_nidcard      228-228  ///
  byte    zm10a_voter        229-229  ///
  using `"ipumsi_00048.dat"'

replace wtper             = wtper             / 100

format serial            %10.0f
format wtper             %8.2f

label var cntry             `"Country"'
label var year              `"Year"'
label var sample            `"IPUMS sample identifier"'
label var serial            `"Household serial number"'
label var zm10a_dwnum       `"Dwelling number"'
label var zm10a_pern        `"Number of persons in household"'
label var zm10a_prov        `"Province"'
label var zm10a_dist        `"District"'
label var zm10a_const       `"Constituency"'
label var zm10a_hhtype      `"Type of housing"'
label var zm10a_roof        `"Main roof material"'
label var zm10a_wall        `"Main wall material"'
label var zm10a_floor       `"Main floor material"'
label var zm10a_occup       `"Occupancy status"'
label var zm10a_nohh        `"Number of households"'
label var zm10a_watsup      `"Source of water for household use"'
label var zm10a_drinkwsup   `"Source of drinking water"'
label var zm10a_rooms       `"Number of living rooms"'
label var zm10a_bedrms      `"Number of bedrooms"'
label var zm10a_persleep    `"Number of persons sleeping in housing unit"'
label var zm10a_kitchen     `"Housing unit has a kitchen"'
label var zm10a_electrc     `"Main source of energy for lighting"'
label var zm10a_fuelck      `"Main source of energy for cooking"'
label var zm10a_fuelh       `"Main source of energy for heating"'
label var zm10a_radio       `"Any radio in household"'
label var zm10a_tv          `"Any television in household"'
label var zm10a_refrig      `"Any refrigerator or freezer in household"'
label var zm10a_phone       `"Any telephone in household"'
label var zm10a_bike        `"Any bicycle in household"'
label var zm10a_autos       `"Any motor vehicle in household"'
label var zm10a_internet    `"Internet facility in household"'
label var zm10a_computr     `"Any computer or laptop in household"'
label var zm10a_motorc      `"Any motorcycle in household"'
label var zm10a_plough      `"Any plough in household"'
label var zm10a_boat        `"Any boat or canoe in household"'
label var zm10a_scart       `"Any scotch cart in household"'
label var zm10a_donkey      `"Any donkey in household"'
label var zm10a_mobile      `"Any mobile phone in household"'
label var zm10a_oxen        `"Any oxen in household"'
label var zm10a_wheelb      `"Any wheelbarrow in household"'
label var zm10a_waste       `"Refuse disposal method"'
label var zm10a_toilet      `"Type of toilet"'
label var zm10a_toiletins   `"Toilet inside housing unit"'
label var zm10a_toiletexc   `"Toilet exclusively used by members"'
label var zm10a_ownshp      `"Housing unit owned by any household member"'
label var zm10a_ownmeth     `"Method of acquiring housing"'
label var zm10a_freehous    `"Housing provided free"'
label var zm10a_renthous    `"Housing unit rented from employer of any household member"'
label var zm10a_emplrenth   `"Type of employer providing for free or renting the housing unit"'
label var zm10a_orgrenth    `"Type of organization renting housing unit"'
label var zm10a_agricact    `"Household engaged in agriculture since October 2009"'
label var zm10a_corn        `"Any maize crops in household"'
label var zm10a_sorghum     `"Any sorghum crops in household"'
label var zm10a_millet      `"Any millet crops in household"'
label var zm10a_rice        `"Any rice crops in household"'
label var zm10a_cassava     `"Any cassava crops in household"'
label var zm10a_sweetpot    `"Any sweet potatoes crops in household"'
label var zm10a_irishpot    `"Any Irish potato crops in household"'
label var zm10a_grnuts      `"Any groundnuts crops in household"'
label var zm10a_mixbeans    `"Any mixed beans crops in household"'
label var zm10a_cowpeas     `"Any cow peas crops in household"'
label var zm10a_wheat       `"Any wheat crops in household"'
label var zm10a_cotton      `"Any cotton crops in household"'
label var zm10a_burlytob    `"Any Burly tobacco crops in household"'
label var zm10a_virginatob  `"Any Virgina tobacco crops in household"'
label var zm10a_sunflow     `"Any sunflower crops in household"'
label var zm10a_soybeans    `"Any soya beans crops in household"'
label var zm10a_paprika     `"Any paprika crops in household"'
label var zm10a_sugarcane   `"Any sugar cane crops in household"'
label var zm10a_cashew      `"Any cashew nuts crops in household"'
label var zm10a_vegetab     `"Any vegetables crops in household"'
label var zm10a_orchards    `"Any orchards crops in household"'
label var zm10a_coffee      `"Any coffee crops in household"'
label var zm10a_velvbean    `"Any velvet beans crops in household"'
label var zm10a_bambnut     `"Any bambara nuts crops in household"'
label var zm10a_pineapple   `"Any pineapple crops in household"'
label var zm10a_othcrops    `"Other crops in household"'
label var zm10a_cattle      `"Raising cattle in household"'
label var zm10a_goat        `"Raising goats in household"'
label var zm10a_pig         `"Raising pigs in household"'
label var zm10a_sheep       `"Raising sheep in household"'
label var zm10a_donkeyr     `"Raising donkeys in household"'
label var zm10a_chicken     `"Raising chickens in household"'
label var zm10a_othpoultry  `"Raising other poultry in household"'
label var zm10a_othlivst    `"Raising other livestock in household"'
label var zm10a_fishfarm    `"Agricultural enterprise include fish farming since October, 2009"'
label var zm10a_gamranch    `"Agricultural enterprise include game ranching since October, 2009"'
label var zm10a_nummort     `"Number of mortality records"'
label var pernum            `"Person number"'
label var wtper             `"Person weight"'
label var resident          `"Residence status: de facto, de jure"'
label var zm10a_pernum      `"Person number (within household)"'
label var zm10a_mbstat      `"Household membership status"'
label var zm10a_relate      `"Relationship to head of household"'
label var zm10a_sex         `"Sex"'
label var zm10a_age         `"Age in years"'
label var zm10a_bplctry     `"Country or district of birth"'
label var zm10a_bplprov     `"Province of birth"'
label var zm10a_bplregion   `"Urban or rural region at the time of birth"'
label var zm10a_nation      `"Nationality"'
label var zm10a_nation2     `"Foreign Nationality"'
label var zm10a_stayp       `"Purpose of stay in Zambia"'
label var zm10a_relig       `"Religion"'
label var zm10a_ethn        `"Ethnicity"'
label var zm10a_lang        `"Main language spoken"'
label var zm10a_migprov     `"Province of residence 1 year ago"'
label var zm10a_mig         `"Country or district of residence 1 year ago"'
label var zm10a_durres      `"Years living continuously in current place of residence"'
label var zm10a_disable     `"Any disability"'
label var zm10a_distype     `"Type of disability"'
label var zm10a_mothaliv    `"Mother alive"'
label var zm10a_mothlivhh   `"Mother lives in this household"'
label var zm10a_fathaliv    `"Father alive"'
label var zm10a_fathlivhh   `"Father lives inthis household"'
label var zm10a_brthcert    `"Has a birth certificate"'
label var zm10a_lit         `"Literacy"'
label var zm10a_everattend  `"Ever attended school"'
label var zm10a_currattend  `"Currently attending school"'
label var zm10a_higheduc    `"Highest level of education completed"'
label var zm10a_highvoc     `"Highest professional or vocational qualification completed"'
label var zm10a_fieldstudy  `"Field of study for highest professional or vocational qualification completed"'
label var zm10a_activ7days  `"Activity in last seven days"'
label var zm10a_activ12mths `"Activity in last twelve months"'
label var zm10a_classwk     `"Status in employment"'
label var zm10a_occ2        `"Main occupation last 12 months, 3 digits"'
label var zm10a_ind2        `"Industry, 3 digits"'
label var zm10a_marst       `"Marital Status"'
label var zm10a_agemarr     `"Age at first marriage"'
label var zm10a_chborn      `"Ever had a live birth"'
label var zm10a_maleshh     `"Number of male live births still living with you"'
label var zm10a_femshh      `"Number of female live births still living with you"'
label var zm10a_maleselse   `"Number of male live births living elsewhere"'
label var zm10a_femselse    `"Number of female live births living elsewhere"'
label var zm10a_malesdead   `"Number of male live births now dead"'
label var zm10a_femsdead    `"Number of female live births now dead"'
label var zm10a_brths12mths `"Any live births in last 12 months"'
label var zm10a_males12liv  `"Number of male live births in past year still living with you"'
label var zm10a_fems12liv   `"Number of female live births in past year still living with you"'
label var zm10a_males12else `"Number of male live births in past year living elsewhere"'
label var zm10a_fem12else   `"Number of female live births in past year living elsewhere"'
label var zm10a_males12dead `"Number of male live births in past year now dead"'
label var zm10a_fem12dead   `"Number of female live births in past year now dead"'
label var zm10a_nidcard     `"Has Zambian Green National Registration Card"'
label var zm10a_voter       `"Registered voter"'

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

label define zm10a_pern_lbl 01 `"1"'
label define zm10a_pern_lbl 02 `"2"', add
label define zm10a_pern_lbl 03 `"3"', add
label define zm10a_pern_lbl 04 `"4"', add
label define zm10a_pern_lbl 05 `"5"', add
label define zm10a_pern_lbl 06 `"6"', add
label define zm10a_pern_lbl 07 `"7"', add
label define zm10a_pern_lbl 08 `"8"', add
label define zm10a_pern_lbl 09 `"9"', add
label define zm10a_pern_lbl 10 `"10"', add
label define zm10a_pern_lbl 11 `"11"', add
label define zm10a_pern_lbl 12 `"12"', add
label define zm10a_pern_lbl 13 `"13"', add
label define zm10a_pern_lbl 14 `"14"', add
label define zm10a_pern_lbl 15 `"15"', add
label define zm10a_pern_lbl 16 `"16"', add
label define zm10a_pern_lbl 17 `"17"', add
label define zm10a_pern_lbl 18 `"18"', add
label define zm10a_pern_lbl 19 `"19"', add
label define zm10a_pern_lbl 20 `"20"', add
label define zm10a_pern_lbl 21 `"21"', add
label define zm10a_pern_lbl 22 `"22"', add
label define zm10a_pern_lbl 23 `"23"', add
label define zm10a_pern_lbl 24 `"24"', add
label define zm10a_pern_lbl 25 `"25"', add
label define zm10a_pern_lbl 26 `"26"', add
label define zm10a_pern_lbl 27 `"27"', add
label define zm10a_pern_lbl 28 `"28"', add
label define zm10a_pern_lbl 29 `"29"', add
label define zm10a_pern_lbl 30 `"30"', add
label define zm10a_pern_lbl 31 `"31"', add
label define zm10a_pern_lbl 32 `"32"', add
label define zm10a_pern_lbl 33 `"33"', add
label define zm10a_pern_lbl 36 `"36"', add
label define zm10a_pern_lbl 39 `"39"', add
label define zm10a_pern_lbl 42 `"42"', add
label values zm10a_pern zm10a_pern_lbl

label define zm10a_prov_lbl 01 `"Central"'
label define zm10a_prov_lbl 02 `"Copperbelt"', add
label define zm10a_prov_lbl 03 `"Eastern"', add
label define zm10a_prov_lbl 04 `"Luapula"', add
label define zm10a_prov_lbl 05 `"Lusaka"', add
label define zm10a_prov_lbl 06 `"Muchinga"', add
label define zm10a_prov_lbl 07 `"Northern"', add
label define zm10a_prov_lbl 08 `"North Western"', add
label define zm10a_prov_lbl 09 `"Southern"', add
label define zm10a_prov_lbl 10 `"Western"', add
label values zm10a_prov zm10a_prov_lbl

label define zm10a_dist_lbl 0101 `"Chibombo"'
label define zm10a_dist_lbl 0102 `"Kabwe"', add
label define zm10a_dist_lbl 0103 `"Kapiri Mposhi"', add
label define zm10a_dist_lbl 0104 `"Mkushi"', add
label define zm10a_dist_lbl 0105 `"Mumbwa"', add
label define zm10a_dist_lbl 0106 `"Serenje"', add
label define zm10a_dist_lbl 0201 `"Chililabombwe"', add
label define zm10a_dist_lbl 0202 `"Chingola"', add
label define zm10a_dist_lbl 0203 `"Kalulushi"', add
label define zm10a_dist_lbl 0204 `"Kitwe"', add
label define zm10a_dist_lbl 0205 `"Luanshya"', add
label define zm10a_dist_lbl 0206 `"Lufwanyama"', add
label define zm10a_dist_lbl 0207 `"Masaiti"', add
label define zm10a_dist_lbl 0208 `"Mpongwe"', add
label define zm10a_dist_lbl 0209 `"Mufulira"', add
label define zm10a_dist_lbl 0210 `"Ndola"', add
label define zm10a_dist_lbl 0301 `"Chadiza"', add
label define zm10a_dist_lbl 0302 `"Chipata"', add
label define zm10a_dist_lbl 0303 `"Katete"', add
label define zm10a_dist_lbl 0304 `"Lundazi"', add
label define zm10a_dist_lbl 0305 `"Mambwe"', add
label define zm10a_dist_lbl 0306 `"Nyimba"', add
label define zm10a_dist_lbl 0307 `"Petauke"', add
label define zm10a_dist_lbl 0401 `"Chienge"', add
label define zm10a_dist_lbl 0402 `"Kawambwa"', add
label define zm10a_dist_lbl 0403 `"Mansa"', add
label define zm10a_dist_lbl 0404 `"Milenge"', add
label define zm10a_dist_lbl 0405 `"Mwense"', add
label define zm10a_dist_lbl 0406 `"Nchelenge"', add
label define zm10a_dist_lbl 0407 `"Samfya"', add
label define zm10a_dist_lbl 0501 `"Chongwe"', add
label define zm10a_dist_lbl 0502 `"Kafue"', add
label define zm10a_dist_lbl 0503 `"Luangwa"', add
label define zm10a_dist_lbl 0504 `"Lusaka"', add
label define zm10a_dist_lbl 0601 `"Chama"', add
label define zm10a_dist_lbl 0602 `"Chinsali"', add
label define zm10a_dist_lbl 0603 `"Isoka"', add
label define zm10a_dist_lbl 0604 `"Mafinga"', add
label define zm10a_dist_lbl 0605 `"Mpika"', add
label define zm10a_dist_lbl 0606 `"Nakonde"', add
label define zm10a_dist_lbl 0701 `"Chilubi"', add
label define zm10a_dist_lbl 0702 `"Kaputa"', add
label define zm10a_dist_lbl 0703 `"Kasama"', add
label define zm10a_dist_lbl 0704 `"Luwingu"', add
label define zm10a_dist_lbl 0705 `"Mbala"', add
label define zm10a_dist_lbl 0706 `"Mporokoso"', add
label define zm10a_dist_lbl 0707 `"Mpulungu"', add
label define zm10a_dist_lbl 0708 `"Mungwi"', add
label define zm10a_dist_lbl 0801 `"Chavuma"', add
label define zm10a_dist_lbl 0802 `"Ikelenge"', add
label define zm10a_dist_lbl 0803 `"Kabompo"', add
label define zm10a_dist_lbl 0804 `"Kasempa"', add
label define zm10a_dist_lbl 0805 `"Mufumbwe (Chizera)"', add
label define zm10a_dist_lbl 0806 `"Mwinilunga"', add
label define zm10a_dist_lbl 0807 `"Solwezi"', add
label define zm10a_dist_lbl 0808 `"Zambezi"', add
label define zm10a_dist_lbl 0901 `"Choma"', add
label define zm10a_dist_lbl 0902 `"Gwembe"', add
label define zm10a_dist_lbl 0903 `"Itezhi Tezhi"', add
label define zm10a_dist_lbl 0904 `"Kalomo"', add
label define zm10a_dist_lbl 0905 `"Kazungula"', add
label define zm10a_dist_lbl 0906 `"Livingstone"', add
label define zm10a_dist_lbl 0907 `"Mazabuka"', add
label define zm10a_dist_lbl 0908 `"Monze"', add
label define zm10a_dist_lbl 0909 `"Namwala"', add
label define zm10a_dist_lbl 0910 `"Siavonga"', add
label define zm10a_dist_lbl 0911 `"Sinazongwe"', add
label define zm10a_dist_lbl 1001 `"Kalabo"', add
label define zm10a_dist_lbl 1002 `"Kaoma"', add
label define zm10a_dist_lbl 1003 `"Lukulu"', add
label define zm10a_dist_lbl 1004 `"Mongu"', add
label define zm10a_dist_lbl 1005 `"Senanga"', add
label define zm10a_dist_lbl 1006 `"Sesheke"', add
label define zm10a_dist_lbl 1007 `"Shang'ombo"', add
label values zm10a_dist zm10a_dist_lbl

label define zm10a_const_lbl 0101001 `"Chisamba"'
label define zm10a_const_lbl 0101002 `"Katuba"', add
label define zm10a_const_lbl 0101003 `"Keembe"', add
label define zm10a_const_lbl 0102004 `"Bwacha"', add
label define zm10a_const_lbl 0102005 `"Kabwe Central"', add
label define zm10a_const_lbl 0103006 `"Kapiri Mposhi"', add
label define zm10a_const_lbl 0104007 `"Mkushi North"', add
label define zm10a_const_lbl 0104008 `"Mkushi South"', add
label define zm10a_const_lbl 0105009 `"Mwembezhi"', add
label define zm10a_const_lbl 0105010 `"Mumbwa"', add
label define zm10a_const_lbl 0105011 `"Nangoma"', add
label define zm10a_const_lbl 0106012 `"Chitambo"', add
label define zm10a_const_lbl 0106013 `"Muchinga"', add
label define zm10a_const_lbl 0106014 `"Serenje"', add
label define zm10a_const_lbl 0201015 `"Chililabombwe"', add
label define zm10a_const_lbl 0202016 `"Chingola"', add
label define zm10a_const_lbl 0202017 `"Nchanga"', add
label define zm10a_const_lbl 0203018 `"Kalulushi"', add
label define zm10a_const_lbl 0204019 `"Chimwemwe"', add
label define zm10a_const_lbl 0204020 `"Kamfinsa"', add
label define zm10a_const_lbl 0204021 `"Kwacha"', add
label define zm10a_const_lbl 0204022 `"Nkana"', add
label define zm10a_const_lbl 0204023 `"Wusakile"', add
label define zm10a_const_lbl 0205024 `"Luanshya"', add
label define zm10a_const_lbl 0205025 `"Roan"', add
label define zm10a_const_lbl 0209026 `"Kankoyo"', add
label define zm10a_const_lbl 0209027 `"Kantanshi"', add
label define zm10a_const_lbl 0209028 `"Mufurila"', add
label define zm10a_const_lbl 0207029 `"Kafulafuta"', add
label define zm10a_const_lbl 0206030 `"Lufwanyama"', add
label define zm10a_const_lbl 0207031 `"Masaiti"', add
label define zm10a_const_lbl 0208032 `"Mpongwe"', add
label define zm10a_const_lbl 0210033 `"Bwana Mkubwa"', add
label define zm10a_const_lbl 0210034 `"Chifubu"', add
label define zm10a_const_lbl 0210035 `"Kabushi"', add
label define zm10a_const_lbl 0210036 `"Ndola"', add
label define zm10a_const_lbl 0301037 `"Chadiza"', add
label define zm10a_const_lbl 0301038 `"Vubwi"', add
label define zm10a_const_lbl 0302041 `"Chipangali"', add
label define zm10a_const_lbl 0302042 `"Chipata Central"', add
label define zm10a_const_lbl 0302043 `"Kasenengwa"', add
label define zm10a_const_lbl 0302044 `"Luangeni"', add
label define zm10a_const_lbl 0303045 `"Milanzi"', add
label define zm10a_const_lbl 0303046 `"Mkaika"', add
label define zm10a_const_lbl 0303047 `"Sinda"', add
label define zm10a_const_lbl 0304048 `"Chasefu"', add
label define zm10a_const_lbl 0304049 `"Lumezi"', add
label define zm10a_const_lbl 0304050 `"Lundazi"', add
label define zm10a_const_lbl 0305051 `"Malambo"', add
label define zm10a_const_lbl 0306052 `"Nyimba"', add
label define zm10a_const_lbl 0307053 `"Kapoche"', add
label define zm10a_const_lbl 0307054 `"Msanzala"', add
label define zm10a_const_lbl 0307055 `"Petauke"', add
label define zm10a_const_lbl 0402056 `"Kawambwa"', add
label define zm10a_const_lbl 0402057 `"Mwansabombwe"', add
label define zm10a_const_lbl 0402058 `"Pambashe"', add
label define zm10a_const_lbl 0403059 `"Bahati"', add
label define zm10a_const_lbl 0404060 `"Chembe"', add
label define zm10a_const_lbl 0403061 `"Mansa"', add
label define zm10a_const_lbl 0405062 `"Chipili"', add
label define zm10a_const_lbl 0405063 `"Mambilima"', add
label define zm10a_const_lbl 0405064 `"Mwense"', add
label define zm10a_const_lbl 0401065 `"Chienge"', add
label define zm10a_const_lbl 0406066 `"Nchelenge"', add
label define zm10a_const_lbl 0407067 `"Bangweulu"', add
label define zm10a_const_lbl 0407068 `"Chifunabuli"', add
label define zm10a_const_lbl 0407069 `"Luapula"', add
label define zm10a_const_lbl 0502070 `"Kafue"', add
label define zm10a_const_lbl 0503071 `"Feira"', add
label define zm10a_const_lbl 0502072 `"Chilanga"', add
label define zm10a_const_lbl 0501073 `"Chongwe"', add
label define zm10a_const_lbl 0501074 `"Rufunsa"', add
label define zm10a_const_lbl 0504075 `"Chawama"', add
label define zm10a_const_lbl 0504076 `"Kabwata"', add
label define zm10a_const_lbl 0504077 `"Kanyama"', add
label define zm10a_const_lbl 0504078 `"Lusaka Central"', add
label define zm10a_const_lbl 0504079 `"Mandevu"', add
label define zm10a_const_lbl 0504080 `"Matero"', add
label define zm10a_const_lbl 0504081 `"Munali"', add
label define zm10a_const_lbl 0601039 `"Chama North"', add
label define zm10a_const_lbl 0601040 `"Chama South"', add
label define zm10a_const_lbl 0602083 `"Chinsali"', add
label define zm10a_const_lbl 0602084 `"Shiwa-Ng'andu"', add
label define zm10a_const_lbl 0604085 `"Mafinga"', add
label define zm10a_const_lbl 0603086 `"Isoka"', add
label define zm10a_const_lbl 0606087 `"Nakonde"', add
label define zm10a_const_lbl 0701082 `"Chilubi"', add
label define zm10a_const_lbl 0702088 `"Chimbamilonga"', add
label define zm10a_const_lbl 0702089 `"Kaputa"', add
label define zm10a_const_lbl 0703090 `"Kasama Central"', add
label define zm10a_const_lbl 0703091 `"Lukasha"', add
label define zm10a_const_lbl 0708092 `"Malole"', add
label define zm10a_const_lbl 0704093 `"Lubansenshi"', add
label define zm10a_const_lbl 0704094 `"Lupososhi"', add
label define zm10a_const_lbl 0705095 `"Mbala"', add
label define zm10a_const_lbl 0707096 `"Mpulungu"', add
label define zm10a_const_lbl 0705097 `"Senga Hill"', add
label define zm10a_const_lbl 0605098 `"Kanchibiya"', add
label define zm10a_const_lbl 0605099 `"Mfuwe"', add
label define zm10a_const_lbl 0605100 `"Mpika"', add
label define zm10a_const_lbl 0706101 `"Lunte"', add
label define zm10a_const_lbl 0706102 `"Mporokoso"', add
label define zm10a_const_lbl 0801103 `"Chavuma"', add
label define zm10a_const_lbl 0803104 `"Kabompo East"', add
label define zm10a_const_lbl 0803105 `"Kabompo West"', add
label define zm10a_const_lbl 0804106 `"Kasempa"', add
label define zm10a_const_lbl 0805107 `"Mufumbwe"', add
label define zm10a_const_lbl 0806108 `"Mwinilunga"', add
label define zm10a_const_lbl 0802109 `"Ikelenge"', add
label define zm10a_const_lbl 0807110 `"Solwezi Central"', add
label define zm10a_const_lbl 0807111 `"Solwezi East"', add
label define zm10a_const_lbl 0807112 `"Solwezi West"', add
label define zm10a_const_lbl 0808113 `"Zambezi East"', add
label define zm10a_const_lbl 0808114 `"Zambezi West"', add
label define zm10a_const_lbl 0901115 `"Choma"', add
label define zm10a_const_lbl 0901116 `"Mbabala"', add
label define zm10a_const_lbl 0901117 `"Pemba"', add
label define zm10a_const_lbl 0902118 `"Gwembe"', add
label define zm10a_const_lbl 0904119 `"Dundumwenze"', add
label define zm10a_const_lbl 0904120 `"Kalomo Central"', add
label define zm10a_const_lbl 0905121 `"Katombola"', add
label define zm10a_const_lbl 0904122 `"Mapatizya"', add
label define zm10a_const_lbl 0906123 `"Livingstone"', add
label define zm10a_const_lbl 0907124 `"Chikankanta"', add
label define zm10a_const_lbl 0907125 `"Magoye"', add
label define zm10a_const_lbl 0907126 `"Mazabuka Central"', add
label define zm10a_const_lbl 0908127 `"Bweenga"', add
label define zm10a_const_lbl 0908128 `"Monze Central"', add
label define zm10a_const_lbl 0908129 `"Moomba"', add
label define zm10a_const_lbl 0903130 `"Itezhi Tezhi"', add
label define zm10a_const_lbl 0909131 `"Namwala"', add
label define zm10a_const_lbl 0910132 `"Siavonga"', add
label define zm10a_const_lbl 0911133 `"Sinazongwe"', add
label define zm10a_const_lbl 1001134 `"Kalabo Central"', add
label define zm10a_const_lbl 1001135 `"Liuwa"', add
label define zm10a_const_lbl 1001136 `"Sikongo"', add
label define zm10a_const_lbl 1002137 `"Kaoma Central"', add
label define zm10a_const_lbl 1002138 `"Luampa"', add
label define zm10a_const_lbl 1002139 `"Mangango"', add
label define zm10a_const_lbl 1003140 `"Lukulu East"', add
label define zm10a_const_lbl 1003141 `"Lukulu West"', add
label define zm10a_const_lbl 1004142 `"Luena"', add
label define zm10a_const_lbl 1004143 `"Mongu Central"', add
label define zm10a_const_lbl 1004144 `"Nalikwanda"', add
label define zm10a_const_lbl 1005145 `"Nalolo"', add
label define zm10a_const_lbl 1005146 `"Senanga"', add
label define zm10a_const_lbl 1006148 `"Mulobezi"', add
label define zm10a_const_lbl 1006149 `"Mwandi"', add
label define zm10a_const_lbl 1006150 `"Sesheke"', add
label define zm10a_const_lbl 1007147 `"Sinjembela"', add
label values zm10a_const zm10a_const_lbl

label define zm10a_hhtype_lbl 01 `"Traditional"'
label define zm10a_hhtype_lbl 02 `"Improved traditional"', add
label define zm10a_hhtype_lbl 03 `"Mixed"', add
label define zm10a_hhtype_lbl 04 `"Conventional flat"', add
label define zm10a_hhtype_lbl 05 `"Conventional house"', add
label define zm10a_hhtype_lbl 06 `"Mobile"', add
label define zm10a_hhtype_lbl 07 `"Part of commercial building"', add
label define zm10a_hhtype_lbl 08 `"Improvised or makeshift"', add
label define zm10a_hhtype_lbl 09 `"Collective or institutional quarters"', add
label define zm10a_hhtype_lbl 10 `"Unintended living quarters"', add
label define zm10a_hhtype_lbl 11 `"Other"', add
label values zm10a_hhtype zm10a_hhtype_lbl

label define zm10a_roof_lbl 01 `"Thatch or palm leaf"'
label define zm10a_roof_lbl 02 `"Rustic mat"', add
label define zm10a_roof_lbl 03 `"Palm or bamboo"', add
label define zm10a_roof_lbl 04 `"Wood planks"', add
label define zm10a_roof_lbl 05 `"Cardboard"', add
label define zm10a_roof_lbl 06 `"Metal or iron sheets"', add
label define zm10a_roof_lbl 07 `"Wood"', add
label define zm10a_roof_lbl 08 `"Asbestos"', add
label define zm10a_roof_lbl 09 `"Ceramic tiles or harvey tile"', add
label define zm10a_roof_lbl 10 `"Cement"', add
label define zm10a_roof_lbl 11 `"Roofing shingles"', add
label define zm10a_roof_lbl 13 `"Other"', add
label values zm10a_roof zm10a_roof_lbl

label define zm10a_wall_lbl 01 `"Burnt bricks"'
label define zm10a_wall_lbl 02 `"Mud bricks"', add
label define zm10a_wall_lbl 03 `"Compressed mud"', add
label define zm10a_wall_lbl 04 `"Compressed cement or bricks"', add
label define zm10a_wall_lbl 05 `"Concrete blocks or slab"', add
label define zm10a_wall_lbl 06 `"Cement blocks"', add
label define zm10a_wall_lbl 07 `"Stone"', add
label define zm10a_wall_lbl 08 `"Iron sheets"', add
label define zm10a_wall_lbl 09 `"Asbestos, hardboard or wood"', add
label define zm10a_wall_lbl 10 `"Pole and dagga or mud"', add
label define zm10a_wall_lbl 11 `"Grass"', add
label define zm10a_wall_lbl 12 `"Other"', add
label values zm10a_wall zm10a_wall_lbl

label define zm10a_floor_lbl 1 `"Concrete"'
label define zm10a_floor_lbl 2 `"Cement"', add
label define zm10a_floor_lbl 3 `"Brick"', add
label define zm10a_floor_lbl 4 `"Tiles"', add
label define zm10a_floor_lbl 5 `"Mud"', add
label define zm10a_floor_lbl 6 `"Wood (not wooden tiles)"', add
label define zm10a_floor_lbl 7 `"Marble"', add
label define zm10a_floor_lbl 8 `"Terrazzo"', add
label define zm10a_floor_lbl 9 `"Other"', add
label values zm10a_floor zm10a_floor_lbl

label define zm10a_occup_lbl 1 `"Single household"'
label define zm10a_occup_lbl 2 `"One household in several housing units"', add
label define zm10a_occup_lbl 3 `"Shared"', add
label define zm10a_occup_lbl 4 `"Vacant"', add
label define zm10a_occup_lbl 5 `"Non-contact"', add
label define zm10a_occup_lbl 6 `"Non-residential"', add
label values zm10a_occup zm10a_occup_lbl

label define zm10a_nohh_lbl 1 `"1"'
label define zm10a_nohh_lbl 2 `"2"', add
label define zm10a_nohh_lbl 3 `"3"', add
label define zm10a_nohh_lbl 4 `"4"', add
label define zm10a_nohh_lbl 5 `"5"', add
label define zm10a_nohh_lbl 6 `"6+"', add
label values zm10a_nohh zm10a_nohh_lbl

label define zm10a_watsup_lbl 01 `"Piped water inside the housing unit"'
label define zm10a_watsup_lbl 02 `"Piped water outside housing unit within stand or plot"', add
label define zm10a_watsup_lbl 03 `"Communal tap"', add
label define zm10a_watsup_lbl 04 `"Protected well"', add
label define zm10a_watsup_lbl 05 `"Protected borehole"', add
label define zm10a_watsup_lbl 06 `"Unprotected well"', add
label define zm10a_watsup_lbl 07 `"Unprotected borehole"', add
label define zm10a_watsup_lbl 08 `"River or dam or stream"', add
label define zm10a_watsup_lbl 09 `"Rain water tank"', add
label define zm10a_watsup_lbl 10 `"Other tap"', add
label define zm10a_watsup_lbl 11 `"Water kiosk"', add
label define zm10a_watsup_lbl 12 `"Water vendor"', add
label define zm10a_watsup_lbl 14 `"Other"', add
label values zm10a_watsup zm10a_watsup_lbl

label define zm10a_drinkwsup_lbl 01 `"Piped water inside the housing unit"'
label define zm10a_drinkwsup_lbl 02 `"Piped water outside housing unit within stand or plot"', add
label define zm10a_drinkwsup_lbl 03 `"Communal tap"', add
label define zm10a_drinkwsup_lbl 04 `"Protected well"', add
label define zm10a_drinkwsup_lbl 05 `"Protected borehole"', add
label define zm10a_drinkwsup_lbl 06 `"Unprotected well"', add
label define zm10a_drinkwsup_lbl 07 `"Unprotected borehole"', add
label define zm10a_drinkwsup_lbl 08 `"River or dam or stream"', add
label define zm10a_drinkwsup_lbl 09 `"Rain water tank"', add
label define zm10a_drinkwsup_lbl 10 `"Other tap"', add
label define zm10a_drinkwsup_lbl 11 `"Water kiosk"', add
label define zm10a_drinkwsup_lbl 12 `"Water vendor"', add
label define zm10a_drinkwsup_lbl 13 `"Mineral or bottled water"', add
label define zm10a_drinkwsup_lbl 14 `"Other"', add
label values zm10a_drinkwsup zm10a_drinkwsup_lbl

label define zm10a_rooms_lbl 00 `"0"'
label define zm10a_rooms_lbl 01 `"1"', add
label define zm10a_rooms_lbl 02 `"2"', add
label define zm10a_rooms_lbl 03 `"3"', add
label define zm10a_rooms_lbl 04 `"4"', add
label define zm10a_rooms_lbl 05 `"5"', add
label define zm10a_rooms_lbl 06 `"6"', add
label define zm10a_rooms_lbl 07 `"7"', add
label define zm10a_rooms_lbl 08 `"8"', add
label define zm10a_rooms_lbl 09 `"9"', add
label define zm10a_rooms_lbl 10 `"10"', add
label define zm10a_rooms_lbl 11 `"11"', add
label define zm10a_rooms_lbl 12 `"12+"', add
label values zm10a_rooms zm10a_rooms_lbl

label define zm10a_bedrms_lbl 01 `"1"'
label define zm10a_bedrms_lbl 02 `"2"', add
label define zm10a_bedrms_lbl 03 `"3"', add
label define zm10a_bedrms_lbl 04 `"4"', add
label define zm10a_bedrms_lbl 05 `"5"', add
label define zm10a_bedrms_lbl 06 `"6"', add
label define zm10a_bedrms_lbl 07 `"7"', add
label define zm10a_bedrms_lbl 08 `"8"', add
label define zm10a_bedrms_lbl 09 `"9"', add
label define zm10a_bedrms_lbl 10 `"10"', add
label define zm10a_bedrms_lbl 11 `"11"', add
label define zm10a_bedrms_lbl 12 `"12+"', add
label values zm10a_bedrms zm10a_bedrms_lbl

label define zm10a_persleep_lbl 01 `"1"'
label define zm10a_persleep_lbl 02 `"2"', add
label define zm10a_persleep_lbl 03 `"3"', add
label define zm10a_persleep_lbl 04 `"4"', add
label define zm10a_persleep_lbl 05 `"5"', add
label define zm10a_persleep_lbl 06 `"6"', add
label define zm10a_persleep_lbl 07 `"7"', add
label define zm10a_persleep_lbl 08 `"8"', add
label define zm10a_persleep_lbl 09 `"9"', add
label define zm10a_persleep_lbl 10 `"10"', add
label define zm10a_persleep_lbl 11 `"11"', add
label define zm10a_persleep_lbl 12 `"12"', add
label define zm10a_persleep_lbl 13 `"13"', add
label define zm10a_persleep_lbl 14 `"14"', add
label define zm10a_persleep_lbl 15 `"15"', add
label define zm10a_persleep_lbl 16 `"16"', add
label define zm10a_persleep_lbl 17 `"17"', add
label define zm10a_persleep_lbl 18 `"18"', add
label define zm10a_persleep_lbl 19 `"19"', add
label define zm10a_persleep_lbl 20 `"20"', add
label define zm10a_persleep_lbl 21 `"21"', add
label define zm10a_persleep_lbl 22 `"22"', add
label define zm10a_persleep_lbl 23 `"23"', add
label define zm10a_persleep_lbl 24 `"24"', add
label define zm10a_persleep_lbl 25 `"25+"', add
label values zm10a_persleep zm10a_persleep_lbl

label define zm10a_kitchen_lbl 1 `"Yes"'
label define zm10a_kitchen_lbl 2 `"No"', add
label values zm10a_kitchen zm10a_kitchen_lbl

label define zm10a_electrc_lbl 01 `"Electricity"'
label define zm10a_electrc_lbl 02 `"Gas"', add
label define zm10a_electrc_lbl 03 `"Wood"', add
label define zm10a_electrc_lbl 04 `"Candle"', add
label define zm10a_electrc_lbl 05 `"Paraffin"', add
label define zm10a_electrc_lbl 06 `"Cow dung"', add
label define zm10a_electrc_lbl 07 `"Charcoal"', add
label define zm10a_electrc_lbl 08 `"Coal"', add
label define zm10a_electrc_lbl 09 `"Solar"', add
label define zm10a_electrc_lbl 10 `"Bio fuel"', add
label define zm10a_electrc_lbl 11 `"Diesel"', add
label define zm10a_electrc_lbl 12 `"None"', add
label define zm10a_electrc_lbl 13 `"Other"', add
label values zm10a_electrc zm10a_electrc_lbl

label define zm10a_fuelck_lbl 01 `"Electricity"'
label define zm10a_fuelck_lbl 02 `"Gas"', add
label define zm10a_fuelck_lbl 03 `"Wood"', add
label define zm10a_fuelck_lbl 04 `"Candle"', add
label define zm10a_fuelck_lbl 05 `"Paraffin"', add
label define zm10a_fuelck_lbl 06 `"Cow dung"', add
label define zm10a_fuelck_lbl 07 `"Charcoal"', add
label define zm10a_fuelck_lbl 08 `"Coal"', add
label define zm10a_fuelck_lbl 09 `"Solar"', add
label define zm10a_fuelck_lbl 10 `"Bio fuel"', add
label define zm10a_fuelck_lbl 12 `"None"', add
label define zm10a_fuelck_lbl 13 `"Other"', add
label values zm10a_fuelck zm10a_fuelck_lbl

label define zm10a_fuelh_lbl 01 `"Electricity"'
label define zm10a_fuelh_lbl 02 `"Gas"', add
label define zm10a_fuelh_lbl 03 `"Wood"', add
label define zm10a_fuelh_lbl 04 `"Candle"', add
label define zm10a_fuelh_lbl 05 `"Paraffin"', add
label define zm10a_fuelh_lbl 06 `"Cow dung"', add
label define zm10a_fuelh_lbl 07 `"Charcoal"', add
label define zm10a_fuelh_lbl 08 `"Coal"', add
label define zm10a_fuelh_lbl 09 `"Solar"', add
label define zm10a_fuelh_lbl 10 `"Bio fuel"', add
label define zm10a_fuelh_lbl 11 `"Diesel"', add
label define zm10a_fuelh_lbl 12 `"None"', add
label define zm10a_fuelh_lbl 13 `"Other"', add
label values zm10a_fuelh zm10a_fuelh_lbl

label define zm10a_radio_lbl 1 `"Yes"'
label define zm10a_radio_lbl 2 `"No"', add
label values zm10a_radio zm10a_radio_lbl

label define zm10a_tv_lbl 1 `"Yes"'
label define zm10a_tv_lbl 2 `"No"', add
label values zm10a_tv zm10a_tv_lbl

label define zm10a_refrig_lbl 1 `"Yes"'
label define zm10a_refrig_lbl 2 `"No"', add
label values zm10a_refrig zm10a_refrig_lbl

label define zm10a_phone_lbl 1 `"Yes"'
label define zm10a_phone_lbl 2 `"No"', add
label values zm10a_phone zm10a_phone_lbl

label define zm10a_bike_lbl 1 `"Yes"'
label define zm10a_bike_lbl 2 `"No"', add
label values zm10a_bike zm10a_bike_lbl

label define zm10a_autos_lbl 1 `"Yes"'
label define zm10a_autos_lbl 2 `"No"', add
label values zm10a_autos zm10a_autos_lbl

label define zm10a_internet_lbl 1 `"Yes"'
label define zm10a_internet_lbl 2 `"No"', add
label values zm10a_internet zm10a_internet_lbl

label define zm10a_computr_lbl 1 `"Yes"'
label define zm10a_computr_lbl 2 `"No"', add
label values zm10a_computr zm10a_computr_lbl

label define zm10a_motorc_lbl 1 `"Yes"'
label define zm10a_motorc_lbl 2 `"No"', add
label values zm10a_motorc zm10a_motorc_lbl

label define zm10a_plough_lbl 1 `"Yes"'
label define zm10a_plough_lbl 2 `"No"', add
label values zm10a_plough zm10a_plough_lbl

label define zm10a_boat_lbl 1 `"Yes"'
label define zm10a_boat_lbl 2 `"No"', add
label values zm10a_boat zm10a_boat_lbl

label define zm10a_scart_lbl 1 `"Yes"'
label define zm10a_scart_lbl 2 `"No"', add
label values zm10a_scart zm10a_scart_lbl

label define zm10a_donkey_lbl 1 `"Yes"'
label define zm10a_donkey_lbl 2 `"No"', add
label values zm10a_donkey zm10a_donkey_lbl

label define zm10a_mobile_lbl 1 `"Yes"'
label define zm10a_mobile_lbl 2 `"No"', add
label values zm10a_mobile zm10a_mobile_lbl

label define zm10a_oxen_lbl 1 `"Yes"'
label define zm10a_oxen_lbl 2 `"No"', add
label values zm10a_oxen zm10a_oxen_lbl

label define zm10a_wheelb_lbl 1 `"Yes"'
label define zm10a_wheelb_lbl 2 `"No"', add
label values zm10a_wheelb zm10a_wheelb_lbl

label define zm10a_waste_lbl 1 `"Regular collected"'
label define zm10a_waste_lbl 2 `"Irregularly collected"', add
label define zm10a_waste_lbl 3 `"Burnt"', add
label define zm10a_waste_lbl 4 `"Roadside dumping"', add
label define zm10a_waste_lbl 5 `"Other dumping"', add
label define zm10a_waste_lbl 6 `"Burying or pit"', add
label define zm10a_waste_lbl 7 `"Other"', add
label values zm10a_waste zm10a_waste_lbl

label define zm10a_toilet_lbl 1 `"Flush private connected to water sewer system"'
label define zm10a_toilet_lbl 2 `"Flush private connected to stand-alone soak away"', add
label define zm10a_toilet_lbl 3 `"Flush communal"', add
label define zm10a_toilet_lbl 4 `"Pit latrine"', add
label define zm10a_toilet_lbl 5 `"Ventilated improved pit (VIP)"', add
label define zm10a_toilet_lbl 6 `"Bucket"', add
label define zm10a_toilet_lbl 7 `"Other"', add
label define zm10a_toilet_lbl 8 `"No toilet"', add
label values zm10a_toilet zm10a_toilet_lbl

label define zm10a_toiletins_lbl 1 `"Inside"'
label define zm10a_toiletins_lbl 2 `"Outside"', add
label define zm10a_toiletins_lbl 9 `"NIU (not in universe)"', add
label values zm10a_toiletins zm10a_toiletins_lbl

label define zm10a_toiletexc_lbl 1 `"Yes"'
label define zm10a_toiletexc_lbl 2 `"No"', add
label define zm10a_toiletexc_lbl 9 `"NIU (not in universe)"', add
label values zm10a_toiletexc zm10a_toiletexc_lbl

label define zm10a_ownshp_lbl 1 `"Yes"'
label define zm10a_ownshp_lbl 2 `"No"', add
label values zm10a_ownshp zm10a_ownshp_lbl

label define zm10a_ownmeth_lbl 1 `"Purchased"'
label define zm10a_ownmeth_lbl 2 `"Mortgage"', add
label define zm10a_ownmeth_lbl 3 `"Freely"', add
label define zm10a_ownmeth_lbl 4 `"Inherited"', add
label define zm10a_ownmeth_lbl 5 `"Self-built"', add
label define zm10a_ownmeth_lbl 6 `"Other"', add
label define zm10a_ownmeth_lbl 9 `"NIU (not in universe)"', add
label values zm10a_ownmeth zm10a_ownmeth_lbl

label define zm10a_freehous_lbl 1 `"Yes, by employer of a household member"'
label define zm10a_freehous_lbl 2 `"Yes, by friend or relative of a household member"', add
label define zm10a_freehous_lbl 3 `"No"', add
label define zm10a_freehous_lbl 9 `"NIU (not in universe)"', add
label values zm10a_freehous zm10a_freehous_lbl

label define zm10a_renthous_lbl 1 `"Yes"'
label define zm10a_renthous_lbl 2 `"No"', add
label define zm10a_renthous_lbl 9 `"NIU (not in universe)"', add
label values zm10a_renthous zm10a_renthous_lbl

label define zm10a_emplrenth_lbl 1 `"The central government"'
label define zm10a_emplrenth_lbl 2 `"Local government"', add
label define zm10a_emplrenth_lbl 3 `"Parastatal"', add
label define zm10a_emplrenth_lbl 4 `"A private organisation"', add
label define zm10a_emplrenth_lbl 5 `"An individual"', add
label define zm10a_emplrenth_lbl 9 `"NIU (not in universe)"', add
label values zm10a_emplrenth zm10a_emplrenth_lbl

label define zm10a_orgrenth_lbl 1 `"The central government"'
label define zm10a_orgrenth_lbl 2 `"Local government"', add
label define zm10a_orgrenth_lbl 3 `"Parastatal"', add
label define zm10a_orgrenth_lbl 4 `"A private organisation"', add
label define zm10a_orgrenth_lbl 5 `"An individual"', add
label define zm10a_orgrenth_lbl 9 `"NIU (not in universe)"', add
label values zm10a_orgrenth zm10a_orgrenth_lbl

label define zm10a_agricact_lbl 1 `"Yes"'
label define zm10a_agricact_lbl 2 `"No"', add
label values zm10a_agricact zm10a_agricact_lbl

label define zm10a_corn_lbl 1 `"Yes"'
label define zm10a_corn_lbl 2 `"No"', add
label define zm10a_corn_lbl 9 `"NIU (not in universe)"', add
label values zm10a_corn zm10a_corn_lbl

label define zm10a_sorghum_lbl 1 `"Yes"'
label define zm10a_sorghum_lbl 2 `"No"', add
label define zm10a_sorghum_lbl 9 `"NIU (not in universe)"', add
label values zm10a_sorghum zm10a_sorghum_lbl

label define zm10a_millet_lbl 1 `"Yes"'
label define zm10a_millet_lbl 2 `"No"', add
label define zm10a_millet_lbl 9 `"NIU (not in universe)"', add
label values zm10a_millet zm10a_millet_lbl

label define zm10a_rice_lbl 1 `"Yes"'
label define zm10a_rice_lbl 2 `"No"', add
label define zm10a_rice_lbl 9 `"NIU (not in universe)"', add
label values zm10a_rice zm10a_rice_lbl

label define zm10a_cassava_lbl 1 `"Yes"'
label define zm10a_cassava_lbl 2 `"No"', add
label define zm10a_cassava_lbl 9 `"NIU (not in universe)"', add
label values zm10a_cassava zm10a_cassava_lbl

label define zm10a_sweetpot_lbl 1 `"Yes"'
label define zm10a_sweetpot_lbl 2 `"No"', add
label define zm10a_sweetpot_lbl 9 `"NIU (not in universe)"', add
label values zm10a_sweetpot zm10a_sweetpot_lbl

label define zm10a_irishpot_lbl 1 `"Yes"'
label define zm10a_irishpot_lbl 2 `"No"', add
label define zm10a_irishpot_lbl 9 `"NIU (not in universe)"', add
label values zm10a_irishpot zm10a_irishpot_lbl

label define zm10a_grnuts_lbl 1 `"Yes"'
label define zm10a_grnuts_lbl 2 `"No"', add
label define zm10a_grnuts_lbl 9 `"NIU (not in universe)"', add
label values zm10a_grnuts zm10a_grnuts_lbl

label define zm10a_mixbeans_lbl 1 `"Yes"'
label define zm10a_mixbeans_lbl 2 `"No"', add
label define zm10a_mixbeans_lbl 9 `"NIU (not in universe)"', add
label values zm10a_mixbeans zm10a_mixbeans_lbl

label define zm10a_cowpeas_lbl 1 `"Yes"'
label define zm10a_cowpeas_lbl 2 `"No"', add
label define zm10a_cowpeas_lbl 9 `"NIU (not in universe)"', add
label values zm10a_cowpeas zm10a_cowpeas_lbl

label define zm10a_wheat_lbl 1 `"Yes"'
label define zm10a_wheat_lbl 2 `"No"', add
label define zm10a_wheat_lbl 9 `"NIU (not in universe)"', add
label values zm10a_wheat zm10a_wheat_lbl

label define zm10a_cotton_lbl 1 `"Yes"'
label define zm10a_cotton_lbl 2 `"No"', add
label define zm10a_cotton_lbl 9 `"NIU (not in universe)"', add
label values zm10a_cotton zm10a_cotton_lbl

label define zm10a_burlytob_lbl 1 `"Yes"'
label define zm10a_burlytob_lbl 2 `"No"', add
label define zm10a_burlytob_lbl 9 `"NIU (not in universe)"', add
label values zm10a_burlytob zm10a_burlytob_lbl

label define zm10a_virginatob_lbl 1 `"Yes"'
label define zm10a_virginatob_lbl 2 `"No"', add
label define zm10a_virginatob_lbl 9 `"NIU (not in universe)"', add
label values zm10a_virginatob zm10a_virginatob_lbl

label define zm10a_sunflow_lbl 1 `"Yes"'
label define zm10a_sunflow_lbl 2 `"No"', add
label define zm10a_sunflow_lbl 9 `"NIU (not in universe)"', add
label values zm10a_sunflow zm10a_sunflow_lbl

label define zm10a_soybeans_lbl 1 `"Yes"'
label define zm10a_soybeans_lbl 2 `"No"', add
label define zm10a_soybeans_lbl 9 `"NIU (not in universe)"', add
label values zm10a_soybeans zm10a_soybeans_lbl

label define zm10a_paprika_lbl 1 `"Yes"'
label define zm10a_paprika_lbl 2 `"No"', add
label define zm10a_paprika_lbl 9 `"NIU (not in universe)"', add
label values zm10a_paprika zm10a_paprika_lbl

label define zm10a_sugarcane_lbl 1 `"Yes"'
label define zm10a_sugarcane_lbl 2 `"No"', add
label define zm10a_sugarcane_lbl 9 `"NIU (not in universe)"', add
label values zm10a_sugarcane zm10a_sugarcane_lbl

label define zm10a_cashew_lbl 1 `"Yes"'
label define zm10a_cashew_lbl 2 `"No"', add
label define zm10a_cashew_lbl 9 `"NIU (not in universe)"', add
label values zm10a_cashew zm10a_cashew_lbl

label define zm10a_vegetab_lbl 1 `"Yes"'
label define zm10a_vegetab_lbl 2 `"No"', add
label define zm10a_vegetab_lbl 9 `"NIU (not in universe)"', add
label values zm10a_vegetab zm10a_vegetab_lbl

label define zm10a_orchards_lbl 1 `"Yes"'
label define zm10a_orchards_lbl 2 `"No"', add
label define zm10a_orchards_lbl 9 `"NIU (not in universe)"', add
label values zm10a_orchards zm10a_orchards_lbl

label define zm10a_coffee_lbl 1 `"Yes"'
label define zm10a_coffee_lbl 2 `"No"', add
label define zm10a_coffee_lbl 9 `"NIU (not in universe)"', add
label values zm10a_coffee zm10a_coffee_lbl

label define zm10a_velvbean_lbl 1 `"Yes"'
label define zm10a_velvbean_lbl 2 `"No"', add
label define zm10a_velvbean_lbl 9 `"NIU (not in universe)"', add
label values zm10a_velvbean zm10a_velvbean_lbl

label define zm10a_bambnut_lbl 1 `"Yes"'
label define zm10a_bambnut_lbl 2 `"No"', add
label define zm10a_bambnut_lbl 9 `"NIU (not in universe)"', add
label values zm10a_bambnut zm10a_bambnut_lbl

label define zm10a_pineapple_lbl 1 `"Yes"'
label define zm10a_pineapple_lbl 2 `"No"', add
label define zm10a_pineapple_lbl 9 `"NIU (not in universe)"', add
label values zm10a_pineapple zm10a_pineapple_lbl

label define zm10a_othcrops_lbl 1 `"Yes"'
label define zm10a_othcrops_lbl 2 `"No"', add
label define zm10a_othcrops_lbl 9 `"NIU (not in universe)"', add
label values zm10a_othcrops zm10a_othcrops_lbl

label define zm10a_cattle_lbl 1 `"Yes"'
label define zm10a_cattle_lbl 2 `"No"', add
label define zm10a_cattle_lbl 9 `"NIU (not in universe)"', add
label values zm10a_cattle zm10a_cattle_lbl

label define zm10a_goat_lbl 1 `"Yes"'
label define zm10a_goat_lbl 2 `"No"', add
label define zm10a_goat_lbl 9 `"NIU (not in universe)"', add
label values zm10a_goat zm10a_goat_lbl

label define zm10a_pig_lbl 1 `"Yes"'
label define zm10a_pig_lbl 2 `"No"', add
label define zm10a_pig_lbl 9 `"NIU (not in universe)"', add
label values zm10a_pig zm10a_pig_lbl

label define zm10a_sheep_lbl 1 `"Yes"'
label define zm10a_sheep_lbl 2 `"No"', add
label define zm10a_sheep_lbl 9 `"NIU (not in universe)"', add
label values zm10a_sheep zm10a_sheep_lbl

label define zm10a_donkeyr_lbl 1 `"Yes"'
label define zm10a_donkeyr_lbl 2 `"No"', add
label define zm10a_donkeyr_lbl 9 `"NIU (not in universe)"', add
label values zm10a_donkeyr zm10a_donkeyr_lbl

label define zm10a_chicken_lbl 1 `"Yes"'
label define zm10a_chicken_lbl 2 `"No"', add
label define zm10a_chicken_lbl 9 `"NIU (not in universe)"', add
label values zm10a_chicken zm10a_chicken_lbl

label define zm10a_othpoultry_lbl 1 `"Yes"'
label define zm10a_othpoultry_lbl 2 `"No"', add
label define zm10a_othpoultry_lbl 9 `"NIU (not in universe)"', add
label values zm10a_othpoultry zm10a_othpoultry_lbl

label define zm10a_othlivst_lbl 1 `"Yes"'
label define zm10a_othlivst_lbl 2 `"No"', add
label define zm10a_othlivst_lbl 9 `"NIU (not in universe)"', add
label values zm10a_othlivst zm10a_othlivst_lbl

label define zm10a_fishfarm_lbl 1 `"Yes"'
label define zm10a_fishfarm_lbl 2 `"No"', add
label define zm10a_fishfarm_lbl 9 `"NIU (not in universe)"', add
label values zm10a_fishfarm zm10a_fishfarm_lbl

label define zm10a_gamranch_lbl 1 `"Yes"'
label define zm10a_gamranch_lbl 2 `"No"', add
label define zm10a_gamranch_lbl 9 `"NIU (not in universe)"', add
label values zm10a_gamranch zm10a_gamranch_lbl

label define zm10a_nummort_lbl 0 `"0"'
label define zm10a_nummort_lbl 1 `"1"', add
label define zm10a_nummort_lbl 2 `"2"', add
label define zm10a_nummort_lbl 3 `"3"', add
label define zm10a_nummort_lbl 4 `"4+"', add
label values zm10a_nummort zm10a_nummort_lbl

label define resident_lbl 1 `"Present resident"'
label define resident_lbl 2 `"Absent resident"', add
label define resident_lbl 3 `"Visitor/non-resident"', add
label define resident_lbl 4 `"De facto population (present persons)"', add
label define resident_lbl 9 `"Unknown/missing"', add
label values resident resident_lbl

label define zm10a_pernum_lbl 00 `"Household record"'
label define zm10a_pernum_lbl 01 `"1"', add
label define zm10a_pernum_lbl 02 `"2"', add
label define zm10a_pernum_lbl 03 `"3"', add
label define zm10a_pernum_lbl 04 `"4"', add
label define zm10a_pernum_lbl 05 `"5"', add
label define zm10a_pernum_lbl 06 `"6"', add
label define zm10a_pernum_lbl 07 `"7"', add
label define zm10a_pernum_lbl 08 `"8"', add
label define zm10a_pernum_lbl 09 `"9"', add
label define zm10a_pernum_lbl 10 `"10"', add
label define zm10a_pernum_lbl 11 `"11"', add
label define zm10a_pernum_lbl 12 `"12"', add
label define zm10a_pernum_lbl 13 `"13"', add
label define zm10a_pernum_lbl 14 `"14"', add
label define zm10a_pernum_lbl 15 `"15"', add
label define zm10a_pernum_lbl 16 `"16"', add
label define zm10a_pernum_lbl 17 `"17"', add
label define zm10a_pernum_lbl 18 `"18"', add
label define zm10a_pernum_lbl 19 `"19"', add
label define zm10a_pernum_lbl 20 `"20"', add
label define zm10a_pernum_lbl 21 `"21"', add
label define zm10a_pernum_lbl 22 `"22"', add
label define zm10a_pernum_lbl 23 `"23"', add
label define zm10a_pernum_lbl 24 `"24"', add
label define zm10a_pernum_lbl 25 `"25"', add
label define zm10a_pernum_lbl 26 `"26"', add
label define zm10a_pernum_lbl 27 `"27"', add
label define zm10a_pernum_lbl 28 `"28"', add
label define zm10a_pernum_lbl 29 `"29"', add
label define zm10a_pernum_lbl 30 `"30"', add
label define zm10a_pernum_lbl 31 `"31"', add
label define zm10a_pernum_lbl 32 `"32"', add
label define zm10a_pernum_lbl 33 `"33"', add
label define zm10a_pernum_lbl 34 `"34"', add
label define zm10a_pernum_lbl 35 `"35"', add
label define zm10a_pernum_lbl 36 `"36"', add
label define zm10a_pernum_lbl 37 `"37"', add
label define zm10a_pernum_lbl 38 `"38"', add
label define zm10a_pernum_lbl 39 `"39"', add
label define zm10a_pernum_lbl 40 `"40"', add
label define zm10a_pernum_lbl 41 `"41"', add
label define zm10a_pernum_lbl 42 `"42"', add
label values zm10a_pernum zm10a_pernum_lbl

label define zm10a_mbstat_lbl 1 `"Usual member present"'
label define zm10a_mbstat_lbl 2 `"Usual member absent"', add
label define zm10a_mbstat_lbl 3 `"Visitor"', add
label values zm10a_mbstat zm10a_mbstat_lbl

label define zm10a_relate_lbl 01 `"Head"'
label define zm10a_relate_lbl 02 `"Spouse"', add
label define zm10a_relate_lbl 03 `"Own son or daughter"', add
label define zm10a_relate_lbl 04 `"Step son or daughter"', add
label define zm10a_relate_lbl 05 `"Parent"', add
label define zm10a_relate_lbl 06 `"Brother or sister"', add
label define zm10a_relate_lbl 07 `"Nephew or niece"', add
label define zm10a_relate_lbl 08 `"Son- or daughter-in-law"', add
label define zm10a_relate_lbl 09 `"Grandchild"', add
label define zm10a_relate_lbl 10 `"Parent-in-law"', add
label define zm10a_relate_lbl 11 `"Cousin"', add
label define zm10a_relate_lbl 12 `"Other relative"', add
label define zm10a_relate_lbl 13 `"Non-related"', add
label values zm10a_relate zm10a_relate_lbl

label define zm10a_sex_lbl 1 `"Male"'
label define zm10a_sex_lbl 2 `"Female"', add
label values zm10a_sex zm10a_sex_lbl

label define zm10a_age_lbl 00 `"Less than 1 year old"'
label define zm10a_age_lbl 01 `"1"', add
label define zm10a_age_lbl 02 `"2"', add
label define zm10a_age_lbl 03 `"3"', add
label define zm10a_age_lbl 04 `"4"', add
label define zm10a_age_lbl 05 `"5"', add
label define zm10a_age_lbl 06 `"6"', add
label define zm10a_age_lbl 07 `"7"', add
label define zm10a_age_lbl 08 `"8"', add
label define zm10a_age_lbl 09 `"9"', add
label define zm10a_age_lbl 10 `"10"', add
label define zm10a_age_lbl 11 `"11"', add
label define zm10a_age_lbl 12 `"12"', add
label define zm10a_age_lbl 13 `"13"', add
label define zm10a_age_lbl 14 `"14"', add
label define zm10a_age_lbl 15 `"15"', add
label define zm10a_age_lbl 16 `"16"', add
label define zm10a_age_lbl 17 `"17"', add
label define zm10a_age_lbl 18 `"18"', add
label define zm10a_age_lbl 19 `"19"', add
label define zm10a_age_lbl 20 `"20"', add
label define zm10a_age_lbl 21 `"21"', add
label define zm10a_age_lbl 22 `"22"', add
label define zm10a_age_lbl 23 `"23"', add
label define zm10a_age_lbl 24 `"24"', add
label define zm10a_age_lbl 25 `"25"', add
label define zm10a_age_lbl 26 `"26"', add
label define zm10a_age_lbl 27 `"27"', add
label define zm10a_age_lbl 28 `"28"', add
label define zm10a_age_lbl 29 `"29"', add
label define zm10a_age_lbl 30 `"30"', add
label define zm10a_age_lbl 31 `"31"', add
label define zm10a_age_lbl 32 `"32"', add
label define zm10a_age_lbl 33 `"33"', add
label define zm10a_age_lbl 34 `"34"', add
label define zm10a_age_lbl 35 `"35"', add
label define zm10a_age_lbl 36 `"36"', add
label define zm10a_age_lbl 37 `"37"', add
label define zm10a_age_lbl 38 `"38"', add
label define zm10a_age_lbl 39 `"39"', add
label define zm10a_age_lbl 40 `"40"', add
label define zm10a_age_lbl 41 `"41"', add
label define zm10a_age_lbl 42 `"42"', add
label define zm10a_age_lbl 43 `"43"', add
label define zm10a_age_lbl 44 `"44"', add
label define zm10a_age_lbl 45 `"45"', add
label define zm10a_age_lbl 46 `"46"', add
label define zm10a_age_lbl 47 `"47"', add
label define zm10a_age_lbl 48 `"48"', add
label define zm10a_age_lbl 49 `"49"', add
label define zm10a_age_lbl 50 `"50"', add
label define zm10a_age_lbl 51 `"51"', add
label define zm10a_age_lbl 52 `"52"', add
label define zm10a_age_lbl 53 `"53"', add
label define zm10a_age_lbl 54 `"54"', add
label define zm10a_age_lbl 55 `"55"', add
label define zm10a_age_lbl 56 `"56"', add
label define zm10a_age_lbl 57 `"57"', add
label define zm10a_age_lbl 58 `"58"', add
label define zm10a_age_lbl 59 `"59"', add
label define zm10a_age_lbl 60 `"60"', add
label define zm10a_age_lbl 61 `"61"', add
label define zm10a_age_lbl 62 `"62"', add
label define zm10a_age_lbl 63 `"63"', add
label define zm10a_age_lbl 64 `"64"', add
label define zm10a_age_lbl 65 `"65"', add
label define zm10a_age_lbl 66 `"66"', add
label define zm10a_age_lbl 67 `"67"', add
label define zm10a_age_lbl 68 `"68"', add
label define zm10a_age_lbl 69 `"69"', add
label define zm10a_age_lbl 70 `"70"', add
label define zm10a_age_lbl 71 `"71"', add
label define zm10a_age_lbl 72 `"72"', add
label define zm10a_age_lbl 73 `"73"', add
label define zm10a_age_lbl 74 `"74"', add
label define zm10a_age_lbl 75 `"75"', add
label define zm10a_age_lbl 76 `"76"', add
label define zm10a_age_lbl 77 `"77"', add
label define zm10a_age_lbl 78 `"78"', add
label define zm10a_age_lbl 79 `"79"', add
label define zm10a_age_lbl 80 `"80+"', add
label values zm10a_age zm10a_age_lbl

label define zm10a_bplctry_lbl 0001 `"Afghanistan"'
label define zm10a_bplctry_lbl 0004 `"Bangladesh"', add
label define zm10a_bplctry_lbl 0006 `"Burma"', add
label define zm10a_bplctry_lbl 0007 `"China"', add
label define zm10a_bplctry_lbl 0008 `"Fiji"', add
label define zm10a_bplctry_lbl 0009 `"Hong Kong"', add
label define zm10a_bplctry_lbl 0010 `"India"', add
label define zm10a_bplctry_lbl 0013 `"Iraq"', add
label define zm10a_bplctry_lbl 0019 `"Other Asia or Oceania"', add
label define zm10a_bplctry_lbl 0020 `"Algeria"', add
label define zm10a_bplctry_lbl 0021 `"Angola"', add
label define zm10a_bplctry_lbl 0022 `"Benin"', add
label define zm10a_bplctry_lbl 0023 `"Botswana"', add
label define zm10a_bplctry_lbl 0024 `"Burundi"', add
label define zm10a_bplctry_lbl 0025 `"Cameroon"', add
label define zm10a_bplctry_lbl 0026 `"Cape Verde"', add
label define zm10a_bplctry_lbl 0027 `"Congo"', add
label define zm10a_bplctry_lbl 0028 `"Equatorial Guinea"', add
label define zm10a_bplctry_lbl 0029 `"Kenya"', add
label define zm10a_bplctry_lbl 0030 `"Malawi"', add
label define zm10a_bplctry_lbl 0031 `"Mali"', add
label define zm10a_bplctry_lbl 0032 `"Mauritania"', add
label define zm10a_bplctry_lbl 0033 `"Mozambique"', add
label define zm10a_bplctry_lbl 0034 `"Nigeria"', add
label define zm10a_bplctry_lbl 0035 `"Rwanda"', add
label define zm10a_bplctry_lbl 0036 `"Somalia"', add
label define zm10a_bplctry_lbl 0037 `"South Africa"', add
label define zm10a_bplctry_lbl 0038 `"Namibia"', add
label define zm10a_bplctry_lbl 0039 `"Tanzania"', add
label define zm10a_bplctry_lbl 0040 `"Tunisia"', add
label define zm10a_bplctry_lbl 0041 `"Uganda"', add
label define zm10a_bplctry_lbl 0042 `"Congo DR"', add
label define zm10a_bplctry_lbl 0043 `"Zimbabwe"', add
label define zm10a_bplctry_lbl 0049 `"Other Africa"', add
label define zm10a_bplctry_lbl 0051 `"United States"', add
label define zm10a_bplctry_lbl 0059 `"Other Americas"', add
label define zm10a_bplctry_lbl 0061 `"United Kingdom"', add
label define zm10a_bplctry_lbl 0069 `"Other Europe"', add
label define zm10a_bplctry_lbl 0099 `"Abroad, country unknown"', add
label define zm10a_bplctry_lbl 0101 `"Chibombo"', add
label define zm10a_bplctry_lbl 0102 `"Kabwe"', add
label define zm10a_bplctry_lbl 0103 `"Kapiri-posh"', add
label define zm10a_bplctry_lbl 0104 `"Mkushi"', add
label define zm10a_bplctry_lbl 0105 `"Mumbwa"', add
label define zm10a_bplctry_lbl 0106 `"Serenje"', add
label define zm10a_bplctry_lbl 0199 `"Unknown district in Central province"', add
label define zm10a_bplctry_lbl 0201 `"Chililabombwe"', add
label define zm10a_bplctry_lbl 0202 `"Chingola"', add
label define zm10a_bplctry_lbl 0203 `"Kalulushi"', add
label define zm10a_bplctry_lbl 0204 `"Kitwe"', add
label define zm10a_bplctry_lbl 0205 `"Luanshya"', add
label define zm10a_bplctry_lbl 0206 `"Lufwanyama"', add
label define zm10a_bplctry_lbl 0207 `"Masaiti"', add
label define zm10a_bplctry_lbl 0208 `"Mpongwe"', add
label define zm10a_bplctry_lbl 0209 `"Mufulira"', add
label define zm10a_bplctry_lbl 0210 `"Ndola"', add
label define zm10a_bplctry_lbl 0299 `"Unknown district in Copperbelt province"', add
label define zm10a_bplctry_lbl 0301 `"Chadiza"', add
label define zm10a_bplctry_lbl 0303 `"Chipata"', add
label define zm10a_bplctry_lbl 0304 `"Katete"', add
label define zm10a_bplctry_lbl 0305 `"Lundazi"', add
label define zm10a_bplctry_lbl 0306 `"Mambwe"', add
label define zm10a_bplctry_lbl 0307 `"Nyimba"', add
label define zm10a_bplctry_lbl 0308 `"Petauke"', add
label define zm10a_bplctry_lbl 0399 `"Unknown district in Eastern province"', add
label define zm10a_bplctry_lbl 0401 `"Chienge"', add
label define zm10a_bplctry_lbl 0402 `"Kawambwa"', add
label define zm10a_bplctry_lbl 0403 `"Mansa"', add
label define zm10a_bplctry_lbl 0404 `"Milenge"', add
label define zm10a_bplctry_lbl 0405 `"Mwense"', add
label define zm10a_bplctry_lbl 0406 `"Nchelenge"', add
label define zm10a_bplctry_lbl 0407 `"Samfya"', add
label define zm10a_bplctry_lbl 0499 `"Unknown district in Luapala province"', add
label define zm10a_bplctry_lbl 0501 `"Chongwe"', add
label define zm10a_bplctry_lbl 0502 `"Kafue"', add
label define zm10a_bplctry_lbl 0503 `"Luangwa"', add
label define zm10a_bplctry_lbl 0504 `"Lusaka"', add
label define zm10a_bplctry_lbl 0599 `"Unknown district in Lusaka province"', add
label define zm10a_bplctry_lbl 0601 `"Chama"', add
label define zm10a_bplctry_lbl 0602 `"Chinsali"', add
label define zm10a_bplctry_lbl 0603 `"Isoka"', add
label define zm10a_bplctry_lbl 0608 `"Mpika"', add
label define zm10a_bplctry_lbl 0612 `"Nakonde"', add
label define zm10a_bplctry_lbl 0701 `"Chilubi"', add
label define zm10a_bplctry_lbl 0704 `"Kaputa"', add
label define zm10a_bplctry_lbl 0705 `"Kasama"', add
label define zm10a_bplctry_lbl 0706 `"Luwingu"', add
label define zm10a_bplctry_lbl 0707 `"Mbala"', add
label define zm10a_bplctry_lbl 0709 `"Mporokoso"', add
label define zm10a_bplctry_lbl 0710 `"Mpulungu"', add
label define zm10a_bplctry_lbl 0711 `"Mungwi"', add
label define zm10a_bplctry_lbl 0799 `"Unknown district in Northern province"', add
label define zm10a_bplctry_lbl 0801 `"Chavuma"', add
label define zm10a_bplctry_lbl 0802 `"Kabompo"', add
label define zm10a_bplctry_lbl 0803 `"Kasempa"', add
label define zm10a_bplctry_lbl 0804 `"Mufumbwe"', add
label define zm10a_bplctry_lbl 0805 `"Mwinilunga"', add
label define zm10a_bplctry_lbl 0806 `"Solwezi"', add
label define zm10a_bplctry_lbl 0807 `"Zambezi"', add
label define zm10a_bplctry_lbl 0899 `"Unknown district in North-Western province"', add
label define zm10a_bplctry_lbl 0901 `"Choma"', add
label define zm10a_bplctry_lbl 0908 `"Gwembe"', add
label define zm10a_bplctry_lbl 0903 `"Itezhi-tezhi"', add
label define zm10a_bplctry_lbl 0904 `"Kalomo"', add
label define zm10a_bplctry_lbl 0905 `"Kazungula"', add
label define zm10a_bplctry_lbl 0906 `"Livingstone"', add
label define zm10a_bplctry_lbl 0907 `"Mazabuka"', add
label define zm10a_bplctry_lbl 0909 `"Namwala"', add
label define zm10a_bplctry_lbl 0910 `"Siavonga"', add
label define zm10a_bplctry_lbl 0911 `"Sinazongwe"', add
label define zm10a_bplctry_lbl 0999 `"Unknown district in Southern province"', add
label define zm10a_bplctry_lbl 1001 `"Kalabo"', add
label define zm10a_bplctry_lbl 1002 `"Kaoma"', add
label define zm10a_bplctry_lbl 1003 `"Lukulu"', add
label define zm10a_bplctry_lbl 1004 `"Mongu"', add
label define zm10a_bplctry_lbl 1005 `"Senanga"', add
label define zm10a_bplctry_lbl 1006 `"Sesheke"', add
label define zm10a_bplctry_lbl 1007 `"Shang'ombo"', add
label define zm10a_bplctry_lbl 1999 `"Unknown district in Western province"', add
label define zm10a_bplctry_lbl 9998 `"Unknown"', add
label define zm10a_bplctry_lbl 9999 `"NIU (not in universe)"', add
label values zm10a_bplctry zm10a_bplctry_lbl

label define zm10a_bplprov_lbl 01 `"Central"'
label define zm10a_bplprov_lbl 02 `"Copperbelt"', add
label define zm10a_bplprov_lbl 03 `"Eastern"', add
label define zm10a_bplprov_lbl 04 `"Luapula"', add
label define zm10a_bplprov_lbl 05 `"Lusaka"', add
label define zm10a_bplprov_lbl 06 `"Muchinga"', add
label define zm10a_bplprov_lbl 07 `"Northern"', add
label define zm10a_bplprov_lbl 08 `"North-Western"', add
label define zm10a_bplprov_lbl 09 `"Southern"', add
label define zm10a_bplprov_lbl 10 `"Western"', add
label define zm10a_bplprov_lbl 90 `"Abroad"', add
label define zm10a_bplprov_lbl 98 `"Unknown"', add
label define zm10a_bplprov_lbl 99 `"NIU (not in universe)"', add
label values zm10a_bplprov zm10a_bplprov_lbl

label define zm10a_bplregion_lbl 1 `"Rural Zambia"'
label define zm10a_bplregion_lbl 2 `"Urban Zambia"', add
label define zm10a_bplregion_lbl 3 `"Outside Zambia"', add
label define zm10a_bplregion_lbl 9 `"NIU (not in universe)"', add
label values zm10a_bplregion zm10a_bplregion_lbl

label define zm10a_nation_lbl 1 `"Zambian"'
label define zm10a_nation_lbl 2 `"Foreign"', add
label define zm10a_nation_lbl 9 `"NIU (not in universe)"', add
label values zm10a_nation zm10a_nation_lbl

label define zm10a_nation2_lbl 01 `"China"'
label define zm10a_nation2_lbl 02 `"India"', add
label define zm10a_nation2_lbl 03 `"Iraq"', add
label define zm10a_nation2_lbl 04 `"Other Asia or Oceania"', add
label define zm10a_nation2_lbl 05 `"Angola"', add
label define zm10a_nation2_lbl 06 `"Burundi"', add
label define zm10a_nation2_lbl 07 `"Congo"', add
label define zm10a_nation2_lbl 08 `"Equatorial Guinea"', add
label define zm10a_nation2_lbl 09 `"Kenya"', add
label define zm10a_nation2_lbl 10 `"Malawi"', add
label define zm10a_nation2_lbl 11 `"Rwanda"', add
label define zm10a_nation2_lbl 12 `"Somalia"', add
label define zm10a_nation2_lbl 13 `"South Africa"', add
label define zm10a_nation2_lbl 14 `"Tanzania"', add
label define zm10a_nation2_lbl 15 `"Uganda"', add
label define zm10a_nation2_lbl 16 `"Congo DR"', add
label define zm10a_nation2_lbl 17 `"Zimbabwe"', add
label define zm10a_nation2_lbl 18 `"Other Africa"', add
label define zm10a_nation2_lbl 19 `"United States"', add
label define zm10a_nation2_lbl 20 `"Other Americas"', add
label define zm10a_nation2_lbl 21 `"United Kingdom"', add
label define zm10a_nation2_lbl 22 `"Other Europe"', add
label define zm10a_nation2_lbl 98 `"Unknown"', add
label define zm10a_nation2_lbl 99 `"NIU (not in universe)"', add
label values zm10a_nation2 zm10a_nation2_lbl

label define zm10a_stayp_lbl 1 `"Employment"'
label define zm10a_stayp_lbl 2 `"Familly reunification or formation"', add
label define zm10a_stayp_lbl 3 `"Education or training"', add
label define zm10a_stayp_lbl 4 `"Settlement"', add
label define zm10a_stayp_lbl 5 `"Refuge or asylum"', add
label define zm10a_stayp_lbl 6 `"Investor"', add
label define zm10a_stayp_lbl 7 `"Tourist"', add
label define zm10a_stayp_lbl 8 `"Other"', add
label define zm10a_stayp_lbl 9 `"NIU (not in universe)"', add
label values zm10a_stayp zm10a_stayp_lbl

label define zm10a_relig_lbl 1 `"Catholic"'
label define zm10a_relig_lbl 2 `"Protestant"', add
label define zm10a_relig_lbl 3 `"Muslim"', add
label define zm10a_relig_lbl 4 `"Hindu"', add
label define zm10a_relig_lbl 5 `"Buddist"', add
label define zm10a_relig_lbl 6 `"Bahai faith"', add
label define zm10a_relig_lbl 7 `"Other"', add
label define zm10a_relig_lbl 8 `"None"', add
label define zm10a_relig_lbl 9 `"NIU (not in universe)"', add
label values zm10a_relig zm10a_relig_lbl

label define zm10a_ethn_lbl 01 `"Bemba"'
label define zm10a_ethn_lbl 02 `"Lunda (Luapula)"', add
label define zm10a_ethn_lbl 03 `"Lala"', add
label define zm10a_ethn_lbl 04 `"Bisa"', add
label define zm10a_ethn_lbl 05 `"Ushi"', add
label define zm10a_ethn_lbl 06 `"Chishinga"', add
label define zm10a_ethn_lbl 07 `"Ngumbo"', add
label define zm10a_ethn_lbl 08 `"Lamba"', add
label define zm10a_ethn_lbl 09 `"Kabende"', add
label define zm10a_ethn_lbl 10 `"Tabwa"', add
label define zm10a_ethn_lbl 11 `"Swaka"', add
label define zm10a_ethn_lbl 12 `"Mukulu"', add
label define zm10a_ethn_lbl 13 `"Ambo"', add
label define zm10a_ethn_lbl 14 `"Lima"', add
label define zm10a_ethn_lbl 15 `"Shila"', add
label define zm10a_ethn_lbl 16 `"Unga"', add
label define zm10a_ethn_lbl 17 `"Bwile"', add
label define zm10a_ethn_lbl 18 `"Luano"', add
label define zm10a_ethn_lbl 19 `"Tonga"', add
label define zm10a_ethn_lbl 20 `"Lenje"', add
label define zm10a_ethn_lbl 21 `"Soli"', add
label define zm10a_ethn_lbl 22 `"Ila"', add
label define zm10a_ethn_lbl 23 `"Toka-Leya"', add
label define zm10a_ethn_lbl 24 `"Sala"', add
label define zm10a_ethn_lbl 25 `"Gowa"', add
label define zm10a_ethn_lbl 26 `"Luvale"', add
label define zm10a_ethn_lbl 27 `"Lunda (Northwestern)"', add
label define zm10a_ethn_lbl 28 `"Mbunda"', add
label define zm10a_ethn_lbl 29 `"Luchazi"', add
label define zm10a_ethn_lbl 30 `"Ndembu"', add
label define zm10a_ethn_lbl 31 `"Mbowe"', add
label define zm10a_ethn_lbl 32 `"Chokwe"', add
label define zm10a_ethn_lbl 33 `"Kaonde"', add
label define zm10a_ethn_lbl 34 `"Luyana"', add
label define zm10a_ethn_lbl 35 `"Kwangwa"', add
label define zm10a_ethn_lbl 36 `"Kwandi"', add
label define zm10a_ethn_lbl 37 `"Koma"', add
label define zm10a_ethn_lbl 38 `"Nyengo"', add
label define zm10a_ethn_lbl 39 `"Simaa"', add
label define zm10a_ethn_lbl 40 `"Mwenyi"', add
label define zm10a_ethn_lbl 41 `"Imilangu"', add
label define zm10a_ethn_lbl 42 `"Mashi"', add
label define zm10a_ethn_lbl 43 `"Lozi"', add
label define zm10a_ethn_lbl 44 `"Totela"', add
label define zm10a_ethn_lbl 45 `"Subiya"', add
label define zm10a_ethn_lbl 46 `"Nkoya"', add
label define zm10a_ethn_lbl 47 `"Mashasha"', add
label define zm10a_ethn_lbl 48 `"Chewa"', add
label define zm10a_ethn_lbl 49 `"Nsenga"', add
label define zm10a_ethn_lbl 50 `"Ngonji"', add
label define zm10a_ethn_lbl 51 `"Nyanja"', add
label define zm10a_ethn_lbl 52 `"Kunda"', add
label define zm10a_ethn_lbl 53 `"Chikunda"', add
label define zm10a_ethn_lbl 54 `"Lungu"', add
label define zm10a_ethn_lbl 55 `"Mambwe"', add
label define zm10a_ethn_lbl 56 `"Namwanga"', add
label define zm10a_ethn_lbl 57 `"Wina"', add
label define zm10a_ethn_lbl 58 `"Tambo"', add
label define zm10a_ethn_lbl 59 `"Tumbuka"', add
label define zm10a_ethn_lbl 60 `"Senga"', add
label define zm10a_ethn_lbl 61 `"Yombe"', add
label define zm10a_ethn_lbl 62 `"English"', add
label define zm10a_ethn_lbl 63 `"Other"', add
label define zm10a_ethn_lbl 64 `"Other African"', add
label define zm10a_ethn_lbl 65 `"American"', add
label define zm10a_ethn_lbl 66 `"Asian"', add
label define zm10a_ethn_lbl 67 `"European"', add
label define zm10a_ethn_lbl 99 `"Unknown"', add
label values zm10a_ethn zm10a_ethn_lbl

label define zm10a_lang_lbl 01 `"Bemba"'
label define zm10a_lang_lbl 02 `"Lunda (Luapula)"', add
label define zm10a_lang_lbl 03 `"Lala"', add
label define zm10a_lang_lbl 04 `"Bisa"', add
label define zm10a_lang_lbl 05 `"Ushi"', add
label define zm10a_lang_lbl 06 `"Chishinga"', add
label define zm10a_lang_lbl 07 `"Ngumbo"', add
label define zm10a_lang_lbl 08 `"Lamba"', add
label define zm10a_lang_lbl 09 `"Kabende"', add
label define zm10a_lang_lbl 10 `"Tabwa"', add
label define zm10a_lang_lbl 11 `"Swaka"', add
label define zm10a_lang_lbl 12 `"Mukulu"', add
label define zm10a_lang_lbl 13 `"Ambo"', add
label define zm10a_lang_lbl 14 `"Lima"', add
label define zm10a_lang_lbl 15 `"Shila"', add
label define zm10a_lang_lbl 16 `"Unga"', add
label define zm10a_lang_lbl 17 `"Bwile"', add
label define zm10a_lang_lbl 18 `"Luano"', add
label define zm10a_lang_lbl 19 `"Tonga"', add
label define zm10a_lang_lbl 20 `"Lenje"', add
label define zm10a_lang_lbl 21 `"Soli"', add
label define zm10a_lang_lbl 22 `"Ila"', add
label define zm10a_lang_lbl 23 `"Toka-Leya"', add
label define zm10a_lang_lbl 24 `"Sala"', add
label define zm10a_lang_lbl 25 `"Gowa"', add
label define zm10a_lang_lbl 26 `"Luvale"', add
label define zm10a_lang_lbl 27 `"Lunda (Northwestern)"', add
label define zm10a_lang_lbl 28 `"Mbunda"', add
label define zm10a_lang_lbl 29 `"Luchazi"', add
label define zm10a_lang_lbl 30 `"Ndembu"', add
label define zm10a_lang_lbl 31 `"Mbowe"', add
label define zm10a_lang_lbl 32 `"Chokwe"', add
label define zm10a_lang_lbl 33 `"Kaonde"', add
label define zm10a_lang_lbl 34 `"Luyana"', add
label define zm10a_lang_lbl 35 `"Kwangwa"', add
label define zm10a_lang_lbl 36 `"Kwandi"', add
label define zm10a_lang_lbl 37 `"Koma"', add
label define zm10a_lang_lbl 38 `"Nyengo"', add
label define zm10a_lang_lbl 39 `"Simaa"', add
label define zm10a_lang_lbl 40 `"Mwenyi"', add
label define zm10a_lang_lbl 41 `"Imilangu"', add
label define zm10a_lang_lbl 42 `"Mashi"', add
label define zm10a_lang_lbl 43 `"Lozi"', add
label define zm10a_lang_lbl 44 `"Totela"', add
label define zm10a_lang_lbl 45 `"Subiya"', add
label define zm10a_lang_lbl 46 `"Nkoya"', add
label define zm10a_lang_lbl 47 `"Mashasha"', add
label define zm10a_lang_lbl 48 `"Chewa"', add
label define zm10a_lang_lbl 49 `"Nsenga"', add
label define zm10a_lang_lbl 50 `"Ngonji"', add
label define zm10a_lang_lbl 51 `"Nyanja"', add
label define zm10a_lang_lbl 52 `"Kunda"', add
label define zm10a_lang_lbl 53 `"Chikunda"', add
label define zm10a_lang_lbl 54 `"Lungu"', add
label define zm10a_lang_lbl 55 `"Mambwe"', add
label define zm10a_lang_lbl 56 `"Namwanga"', add
label define zm10a_lang_lbl 57 `"Wina"', add
label define zm10a_lang_lbl 58 `"Tambo"', add
label define zm10a_lang_lbl 59 `"Tumbuka"', add
label define zm10a_lang_lbl 60 `"Senga"', add
label define zm10a_lang_lbl 61 `"Yombe"', add
label define zm10a_lang_lbl 62 `"English"', add
label define zm10a_lang_lbl 63 `"Other"', add
label define zm10a_lang_lbl 64 `"Other African language"', add
label define zm10a_lang_lbl 65 `"Language of the Americas other than English"', add
label define zm10a_lang_lbl 66 `"Asian language"', add
label define zm10a_lang_lbl 67 `"European language"', add
label define zm10a_lang_lbl 98 `"Unknown"', add
label define zm10a_lang_lbl 99 `"NIU (not in universe)"', add
label values zm10a_lang zm10a_lang_lbl

label define zm10a_migprov_lbl 01 `"Central"'
label define zm10a_migprov_lbl 02 `"Copperbelt"', add
label define zm10a_migprov_lbl 03 `"Eastern"', add
label define zm10a_migprov_lbl 04 `"Luapula"', add
label define zm10a_migprov_lbl 05 `"Lusaka"', add
label define zm10a_migprov_lbl 06 `"Muchinga"', add
label define zm10a_migprov_lbl 07 `"Northern"', add
label define zm10a_migprov_lbl 08 `"North Western"', add
label define zm10a_migprov_lbl 09 `"Southern"', add
label define zm10a_migprov_lbl 10 `"Western"', add
label define zm10a_migprov_lbl 90 `"Other country"', add
label define zm10a_migprov_lbl 98 `"Unknown"', add
label define zm10a_migprov_lbl 99 `"NIU (not in universe)"', add
label values zm10a_migprov zm10a_migprov_lbl

label define zm10a_mig_lbl 0001 `"India"'
label define zm10a_mig_lbl 0002 `"Other Asia or Oceania"', add
label define zm10a_mig_lbl 0003 `"Angola"', add
label define zm10a_mig_lbl 0004 `"Botswana"', add
label define zm10a_mig_lbl 0005 `"Congo"', add
label define zm10a_mig_lbl 0006 `"Equatorial Guinea"', add
label define zm10a_mig_lbl 0007 `"Malawi"', add
label define zm10a_mig_lbl 0008 `"Mauritania"', add
label define zm10a_mig_lbl 0009 `"South Africa"', add
label define zm10a_mig_lbl 0010 `"Namibia"', add
label define zm10a_mig_lbl 0011 `"Tanzania"', add
label define zm10a_mig_lbl 0012 `"Congo DR"', add
label define zm10a_mig_lbl 0013 `"Zimbabwe"', add
label define zm10a_mig_lbl 0014 `"Other Africa"', add
label define zm10a_mig_lbl 0015 `"United States"', add
label define zm10a_mig_lbl 0016 `"Other Americas"', add
label define zm10a_mig_lbl 0017 `"United Kingdom"', add
label define zm10a_mig_lbl 0018 `"Other Europe"', add
label define zm10a_mig_lbl 0101 `"Chibombo"', add
label define zm10a_mig_lbl 0102 `"Kabwe"', add
label define zm10a_mig_lbl 0103 `"Kapiri-posh"', add
label define zm10a_mig_lbl 0104 `"Mkushi"', add
label define zm10a_mig_lbl 0105 `"Mumbwa"', add
label define zm10a_mig_lbl 0106 `"Serenje"', add
label define zm10a_mig_lbl 0201 `"Chililabombwe"', add
label define zm10a_mig_lbl 0202 `"Chingola"', add
label define zm10a_mig_lbl 0203 `"Kalulushi"', add
label define zm10a_mig_lbl 0204 `"Kitwe"', add
label define zm10a_mig_lbl 0205 `"Luanshya"', add
label define zm10a_mig_lbl 0206 `"Lufwanyama"', add
label define zm10a_mig_lbl 0207 `"Masaiti"', add
label define zm10a_mig_lbl 0208 `"Mpongwe"', add
label define zm10a_mig_lbl 0209 `"Mufulira"', add
label define zm10a_mig_lbl 0210 `"Ndola"', add
label define zm10a_mig_lbl 0301 `"Chadiza"', add
label define zm10a_mig_lbl 0302 `"Chama"', add
label define zm10a_mig_lbl 0303 `"Chipata"', add
label define zm10a_mig_lbl 0304 `"Katete"', add
label define zm10a_mig_lbl 0305 `"Lundazi"', add
label define zm10a_mig_lbl 0306 `"Mambwe"', add
label define zm10a_mig_lbl 0307 `"Nyimba"', add
label define zm10a_mig_lbl 0308 `"Petauke"', add
label define zm10a_mig_lbl 0401 `"Chiengi"', add
label define zm10a_mig_lbl 0402 `"Kawambwa"', add
label define zm10a_mig_lbl 0403 `"Mansa"', add
label define zm10a_mig_lbl 0404 `"Milengi"', add
label define zm10a_mig_lbl 0405 `"Mwense"', add
label define zm10a_mig_lbl 0406 `"Nchelenge"', add
label define zm10a_mig_lbl 0407 `"Samfya"', add
label define zm10a_mig_lbl 0501 `"Chongwe"', add
label define zm10a_mig_lbl 0502 `"Kafue"', add
label define zm10a_mig_lbl 0503 `"Luangwa"', add
label define zm10a_mig_lbl 0504 `"Lusaka"', add
label define zm10a_mig_lbl 0602 `"Chinsali"', add
label define zm10a_mig_lbl 0603 `"Isoka"', add
label define zm10a_mig_lbl 0605 `"Mpika"', add
label define zm10a_mig_lbl 0606 `"Nakonde"', add
label define zm10a_mig_lbl 0701 `"Chilubi"', add
label define zm10a_mig_lbl 0702 `"Kaputa"', add
label define zm10a_mig_lbl 0703 `"Kasama"', add
label define zm10a_mig_lbl 0704 `"Luwingu"', add
label define zm10a_mig_lbl 0705 `"Mbala"', add
label define zm10a_mig_lbl 0706 `"Mporokoso"', add
label define zm10a_mig_lbl 0707 `"Mpulungu"', add
label define zm10a_mig_lbl 0708 `"Mungwi"', add
label define zm10a_mig_lbl 0801 `"Chavuma"', add
label define zm10a_mig_lbl 0803 `"Kabompo"', add
label define zm10a_mig_lbl 0804 `"Kasempa"', add
label define zm10a_mig_lbl 0805 `"Mufumbwe"', add
label define zm10a_mig_lbl 0806 `"Mwinilunga"', add
label define zm10a_mig_lbl 0807 `"Solwezi"', add
label define zm10a_mig_lbl 0808 `"Zambezi"', add
label define zm10a_mig_lbl 0901 `"Choma"', add
label define zm10a_mig_lbl 0902 `"Gwembe"', add
label define zm10a_mig_lbl 0903 `"Itezhi Tezhi"', add
label define zm10a_mig_lbl 0904 `"Kalomo"', add
label define zm10a_mig_lbl 0905 `"Kazungula"', add
label define zm10a_mig_lbl 0906 `"Livingstone"', add
label define zm10a_mig_lbl 0907 `"Mazabuka"', add
label define zm10a_mig_lbl 0908 `"Monze"', add
label define zm10a_mig_lbl 0909 `"Namwala"', add
label define zm10a_mig_lbl 0910 `"Siavonga"', add
label define zm10a_mig_lbl 0911 `"Sinazongwe"', add
label define zm10a_mig_lbl 1001 `"Kalabo"', add
label define zm10a_mig_lbl 1002 `"Kaoma"', add
label define zm10a_mig_lbl 1003 `"Lukulu"', add
label define zm10a_mig_lbl 1004 `"Mongu"', add
label define zm10a_mig_lbl 1005 `"Senanga"', add
label define zm10a_mig_lbl 1006 `"Sesheke"', add
label define zm10a_mig_lbl 1007 `"Shang'ombo"', add
label define zm10a_mig_lbl 9998 `"Unknown"', add
label define zm10a_mig_lbl 9999 `"NIU (not in universe)"', add
label values zm10a_mig zm10a_mig_lbl

label define zm10a_durres_lbl 00 `"Less than one year"'
label define zm10a_durres_lbl 01 `"1"', add
label define zm10a_durres_lbl 02 `"2"', add
label define zm10a_durres_lbl 03 `"3"', add
label define zm10a_durres_lbl 04 `"4"', add
label define zm10a_durres_lbl 05 `"5"', add
label define zm10a_durres_lbl 06 `"6"', add
label define zm10a_durres_lbl 07 `"7"', add
label define zm10a_durres_lbl 08 `"8"', add
label define zm10a_durres_lbl 09 `"9"', add
label define zm10a_durres_lbl 10 `"10"', add
label define zm10a_durres_lbl 11 `"11"', add
label define zm10a_durres_lbl 12 `"12"', add
label define zm10a_durres_lbl 13 `"13"', add
label define zm10a_durres_lbl 14 `"14"', add
label define zm10a_durres_lbl 15 `"15"', add
label define zm10a_durres_lbl 16 `"16"', add
label define zm10a_durres_lbl 17 `"17"', add
label define zm10a_durres_lbl 18 `"18"', add
label define zm10a_durres_lbl 19 `"19"', add
label define zm10a_durres_lbl 20 `"20"', add
label define zm10a_durres_lbl 21 `"21"', add
label define zm10a_durres_lbl 22 `"22"', add
label define zm10a_durres_lbl 23 `"23"', add
label define zm10a_durres_lbl 24 `"24"', add
label define zm10a_durres_lbl 25 `"25"', add
label define zm10a_durres_lbl 26 `"26"', add
label define zm10a_durres_lbl 27 `"27"', add
label define zm10a_durres_lbl 28 `"28"', add
label define zm10a_durres_lbl 29 `"29"', add
label define zm10a_durres_lbl 30 `"30"', add
label define zm10a_durres_lbl 31 `"31"', add
label define zm10a_durres_lbl 32 `"32"', add
label define zm10a_durres_lbl 33 `"33"', add
label define zm10a_durres_lbl 34 `"34"', add
label define zm10a_durres_lbl 35 `"35"', add
label define zm10a_durres_lbl 36 `"36"', add
label define zm10a_durres_lbl 37 `"37"', add
label define zm10a_durres_lbl 38 `"38"', add
label define zm10a_durres_lbl 39 `"39"', add
label define zm10a_durres_lbl 40 `"40"', add
label define zm10a_durres_lbl 41 `"41"', add
label define zm10a_durres_lbl 42 `"42"', add
label define zm10a_durres_lbl 43 `"43"', add
label define zm10a_durres_lbl 44 `"44"', add
label define zm10a_durres_lbl 45 `"45"', add
label define zm10a_durres_lbl 46 `"46"', add
label define zm10a_durres_lbl 47 `"47"', add
label define zm10a_durres_lbl 48 `"48"', add
label define zm10a_durres_lbl 49 `"49"', add
label define zm10a_durres_lbl 50 `"50"', add
label define zm10a_durres_lbl 51 `"51"', add
label define zm10a_durres_lbl 52 `"52"', add
label define zm10a_durres_lbl 53 `"53"', add
label define zm10a_durres_lbl 54 `"54"', add
label define zm10a_durres_lbl 55 `"55"', add
label define zm10a_durres_lbl 56 `"56"', add
label define zm10a_durres_lbl 57 `"57"', add
label define zm10a_durres_lbl 58 `"58"', add
label define zm10a_durres_lbl 59 `"59"', add
label define zm10a_durres_lbl 60 `"60"', add
label define zm10a_durres_lbl 61 `"61"', add
label define zm10a_durres_lbl 62 `"62"', add
label define zm10a_durres_lbl 63 `"63"', add
label define zm10a_durres_lbl 64 `"64"', add
label define zm10a_durres_lbl 65 `"65"', add
label define zm10a_durres_lbl 66 `"66"', add
label define zm10a_durres_lbl 67 `"67"', add
label define zm10a_durres_lbl 68 `"68"', add
label define zm10a_durres_lbl 69 `"69"', add
label define zm10a_durres_lbl 70 `"70"', add
label define zm10a_durres_lbl 71 `"71"', add
label define zm10a_durres_lbl 72 `"72"', add
label define zm10a_durres_lbl 73 `"73"', add
label define zm10a_durres_lbl 74 `"74"', add
label define zm10a_durres_lbl 75 `"75"', add
label define zm10a_durres_lbl 76 `"76"', add
label define zm10a_durres_lbl 77 `"77"', add
label define zm10a_durres_lbl 78 `"78"', add
label define zm10a_durres_lbl 79 `"79"', add
label define zm10a_durres_lbl 80 `"80+"', add
label define zm10a_durres_lbl 99 `"NIU (not in universe)"', add
label values zm10a_durres zm10a_durres_lbl

label define zm10a_disable_lbl 1 `"Yes"'
label define zm10a_disable_lbl 2 `"No"', add
label define zm10a_disable_lbl 9 `"NIU (not in universe)"', add
label values zm10a_disable zm10a_disable_lbl

label define zm10a_distype_lbl 01 `"Only blind"'
label define zm10a_distype_lbl 02 `"Only partially sighted"', add
label define zm10a_distype_lbl 03 `"Only deaf and dumb"', add
label define zm10a_distype_lbl 04 `"Only deaf"', add
label define zm10a_distype_lbl 05 `"Only hard of hearing"', add
label define zm10a_distype_lbl 06 `"Only dumb"', add
label define zm10a_distype_lbl 07 `"Only mental illness"', add
label define zm10a_distype_lbl 08 `"Only intellectual disability"', add
label define zm10a_distype_lbl 09 `"Only speech impaired"', add
label define zm10a_distype_lbl 10 `"Only physically disabled"', add
label define zm10a_distype_lbl 11 `"Only mentally retarded"', add
label define zm10a_distype_lbl 19 `"Multiple disabilities"', add
label define zm10a_distype_lbl 20 `"Other disability not elsewhere classified"', add
label define zm10a_distype_lbl 99 `"NIU (not in universe)"', add
label values zm10a_distype zm10a_distype_lbl

label define zm10a_mothaliv_lbl 1 `"Yes"'
label define zm10a_mothaliv_lbl 2 `"No"', add
label define zm10a_mothaliv_lbl 8 `"Unknown"', add
label define zm10a_mothaliv_lbl 9 `"NIU (not in universe)"', add
label values zm10a_mothaliv zm10a_mothaliv_lbl

label define zm10a_mothlivhh_lbl 1 `"Yes"'
label define zm10a_mothlivhh_lbl 2 `"No"', add
label define zm10a_mothlivhh_lbl 9 `"NIU (not in universe)"', add
label values zm10a_mothlivhh zm10a_mothlivhh_lbl

label define zm10a_fathaliv_lbl 1 `"Yes"'
label define zm10a_fathaliv_lbl 2 `"No"', add
label define zm10a_fathaliv_lbl 8 `"Unknown"', add
label define zm10a_fathaliv_lbl 9 `"NIU (not in universe)"', add
label values zm10a_fathaliv zm10a_fathaliv_lbl

label define zm10a_fathlivhh_lbl 1 `"Yes"'
label define zm10a_fathlivhh_lbl 2 `"No"', add
label define zm10a_fathlivhh_lbl 9 `"NIU (not in universe)"', add
label values zm10a_fathlivhh zm10a_fathlivhh_lbl

label define zm10a_brthcert_lbl 1 `"Yes, seen by interviewer"'
label define zm10a_brthcert_lbl 2 `"Yes, but not seen by interviewer"', add
label define zm10a_brthcert_lbl 3 `"No"', add
label define zm10a_brthcert_lbl 8 `"Unknown"', add
label define zm10a_brthcert_lbl 9 `"NIU (not in universe)"', add
label values zm10a_brthcert zm10a_brthcert_lbl

label define zm10a_lit_lbl 1 `"Yes"'
label define zm10a_lit_lbl 2 `"No"', add
label define zm10a_lit_lbl 9 `"NIU (not in universe)"', add
label values zm10a_lit zm10a_lit_lbl

label define zm10a_everattend_lbl 1 `"Yes"'
label define zm10a_everattend_lbl 2 `"No"', add
label define zm10a_everattend_lbl 9 `"NIU (not in universe)"', add
label values zm10a_everattend zm10a_everattend_lbl

label define zm10a_currattend_lbl 1 `"Yes"'
label define zm10a_currattend_lbl 2 `"No"', add
label define zm10a_currattend_lbl 9 `"NIU (not in universe)"', add
label values zm10a_currattend zm10a_currattend_lbl

label define zm10a_higheduc_lbl 00 `"Nursery school or grade 1"'
label define zm10a_higheduc_lbl 01 `"Grade 1"', add
label define zm10a_higheduc_lbl 02 `"Grade 2"', add
label define zm10a_higheduc_lbl 03 `"Grade 3"', add
label define zm10a_higheduc_lbl 04 `"Grade 4"', add
label define zm10a_higheduc_lbl 05 `"Grade 5"', add
label define zm10a_higheduc_lbl 06 `"Grade 6"', add
label define zm10a_higheduc_lbl 07 `"Grade 7"', add
label define zm10a_higheduc_lbl 08 `"Grade 8"', add
label define zm10a_higheduc_lbl 09 `"Grade 9"', add
label define zm10a_higheduc_lbl 10 `"Grade 10"', add
label define zm10a_higheduc_lbl 11 `"Grade 11"', add
label define zm10a_higheduc_lbl 12 `"Grade 12 or General Certificate of Education (GCE) Ordinary"', add
label define zm10a_higheduc_lbl 13 `"General Certificate of Education (GCE) Advanced or undergraduate"', add
label define zm10a_higheduc_lbl 14 `"Certificate or diploma"', add
label define zm10a_higheduc_lbl 15 `"Bachelor's degree"', add
label define zm10a_higheduc_lbl 16 `"Master's degree and above"', add
label define zm10a_higheduc_lbl 99 `"NIU (not in universe)"', add
label values zm10a_higheduc zm10a_higheduc_lbl

label define zm10a_highvoc_lbl 1 `"None"'
label define zm10a_highvoc_lbl 2 `"Certificate"', add
label define zm10a_highvoc_lbl 3 `"Diploma"', add
label define zm10a_highvoc_lbl 4 `"Bachelor's degree"', add
label define zm10a_highvoc_lbl 5 `"Master's degree"', add
label define zm10a_highvoc_lbl 6 `"PhD"', add
label define zm10a_highvoc_lbl 9 `"NIU (not in universe)"', add
label values zm10a_highvoc zm10a_highvoc_lbl

label define zm10a_fieldstudy_lbl 01 `"Natural science"'
label define zm10a_fieldstudy_lbl 02 `"Civil engineering"', add
label define zm10a_fieldstudy_lbl 03 `"Electrical and electronics engineering"', add
label define zm10a_fieldstudy_lbl 04 `"Mechanical engineering"', add
label define zm10a_fieldstudy_lbl 05 `"Chemical engineering"', add
label define zm10a_fieldstudy_lbl 06 `"Mining engineering"', add
label define zm10a_fieldstudy_lbl 07 `"Industrial engineering"', add
label define zm10a_fieldstudy_lbl 08 `"Metallurgical engineering"', add
label define zm10a_fieldstudy_lbl 09 `"Architectural and town planning engineering"', add
label define zm10a_fieldstudy_lbl 10 `"Other engineering"', add
label define zm10a_fieldstudy_lbl 11 `"Medicine and surgery"', add
label define zm10a_fieldstudy_lbl 12 `"Pharmacy"', add
label define zm10a_fieldstudy_lbl 13 `"Dentistry"', add
label define zm10a_fieldstudy_lbl 14 `"Nursing"', add
label define zm10a_fieldstudy_lbl 15 `"Medical technology"', add
label define zm10a_fieldstudy_lbl 16 `"X-ray technology"', add
label define zm10a_fieldstudy_lbl 17 `"Veterinary"', add
label define zm10a_fieldstudy_lbl 18 `"Statistics"', add
label define zm10a_fieldstudy_lbl 19 `"Mathematics"', add
label define zm10a_fieldstudy_lbl 20 `"Computer science"', add
label define zm10a_fieldstudy_lbl 21 `"Economics"', add
label define zm10a_fieldstudy_lbl 22 `"Accountancy"', add
label define zm10a_fieldstudy_lbl 23 `"Teacher training"', add
label define zm10a_fieldstudy_lbl 24 `"Law and jurisprudence (includes magistrates and judges)"', add
label define zm10a_fieldstudy_lbl 25 `"Journalism"', add
label define zm10a_fieldstudy_lbl 26 `"Fine arts"', add
label define zm10a_fieldstudy_lbl 27 `"Physical education"', add
label define zm10a_fieldstudy_lbl 28 `"Library science"', add
label define zm10a_fieldstudy_lbl 29 `"Social welfare"', add
label define zm10a_fieldstudy_lbl 30 `"Criminology"', add
label define zm10a_fieldstudy_lbl 31 `"Business administration and related programmes"', add
label define zm10a_fieldstudy_lbl 32 `"Secretarial training"', add
label define zm10a_fieldstudy_lbl 33 `"Shorthand typing"', add
label define zm10a_fieldstudy_lbl 34 `"Clerical typing"', add
label define zm10a_fieldstudy_lbl 35 `"Operating of office machines"', add
label define zm10a_fieldstudy_lbl 36 `"Service trade (e.g. cooking, tourist trade, etc.)"', add
label define zm10a_fieldstudy_lbl 37 `"Radio and television broadcasting"', add
label define zm10a_fieldstudy_lbl 38 `"Fire protection and fire fighting"', add
label define zm10a_fieldstudy_lbl 39 `"Agriculture, forestry and fishery"', add
label define zm10a_fieldstudy_lbl 40 `"Food and drinks processing trades programmes"', add
label define zm10a_fieldstudy_lbl 41 `"Wood working"', add
label define zm10a_fieldstudy_lbl 42 `"Textile trades"', add
label define zm10a_fieldstudy_lbl 43 `"Leather trades"', add
label define zm10a_fieldstudy_lbl 44 `"Other programmes"', add
label define zm10a_fieldstudy_lbl 98 `"Unknown"', add
label define zm10a_fieldstudy_lbl 99 `"NIU (not in universe)"', add
label values zm10a_fieldstudy zm10a_fieldstudy_lbl

label define zm10a_activ7days_lbl 01 `"Worked, paid non-seasonal"'
label define zm10a_activ7days_lbl 02 `"Worked, unpaid non-seasonal"', add
label define zm10a_activ7days_lbl 03 `"Worked, paid seasonal"', add
label define zm10a_activ7days_lbl 04 `"Worked, unpaid seasonal"', add
label define zm10a_activ7days_lbl 05 `"On leave"', add
label define zm10a_activ7days_lbl 06 `"Unpaid work on household holding or business"', add
label define zm10a_activ7days_lbl 07 `"Unemployed and seeking work"', add
label define zm10a_activ7days_lbl 08 `"Not seeking work but availabe for work"', add
label define zm10a_activ7days_lbl 09 `"Full time housewife or homemaker"', add
label define zm10a_activ7days_lbl 10 `"Full time student"', add
label define zm10a_activ7days_lbl 11 `"Not available for work for other reasons"', add
label define zm10a_activ7days_lbl 99 `"NIU (not in universe)"', add
label values zm10a_activ7days zm10a_activ7days_lbl

label define zm10a_activ12mths_lbl 01 `"Worked, paid non seasonal"'
label define zm10a_activ12mths_lbl 02 `"Worked, unpaid non seasonal"', add
label define zm10a_activ12mths_lbl 03 `"Worked, paid seasonal"', add
label define zm10a_activ12mths_lbl 04 `"Worked, unpaid seasonal"', add
label define zm10a_activ12mths_lbl 05 `"On leave"', add
label define zm10a_activ12mths_lbl 06 `"Unpaid work on household holding or business"', add
label define zm10a_activ12mths_lbl 07 `"Unemployed and seeking work"', add
label define zm10a_activ12mths_lbl 08 `"Not seeking work but availabe for work"', add
label define zm10a_activ12mths_lbl 09 `"Full time housewife or homemaker"', add
label define zm10a_activ12mths_lbl 10 `"Full time student"', add
label define zm10a_activ12mths_lbl 11 `"Not available for work for other reasons"', add
label define zm10a_activ12mths_lbl 99 `"NIU (not in universe)"', add
label values zm10a_activ12mths zm10a_activ12mths_lbl

label define zm10a_classwk_lbl 1 `"Employer"'
label define zm10a_classwk_lbl 2 `"Employee"', add
label define zm10a_classwk_lbl 3 `"Self-employed"', add
label define zm10a_classwk_lbl 4 `"Unpaid family worker"', add
label define zm10a_classwk_lbl 9 `"NIU (not in universe)"', add
label values zm10a_classwk zm10a_classwk_lbl

label define zm10a_occ2_lbl 011 `"Armed forces"'
label define zm10a_occ2_lbl 111 `"Legislators"', add
label define zm10a_occ2_lbl 112 `"Senior government officials"', add
label define zm10a_occ2_lbl 113 `"Traditional chiefs and heads of villages"', add
label define zm10a_occ2_lbl 114 `"Senior officials of special-interest organisations"', add
label define zm10a_occ2_lbl 121 `"Directors and chief executives"', add
label define zm10a_occ2_lbl 122 `"Production and operations department managers"', add
label define zm10a_occ2_lbl 123 `"Other department managers"', add
label define zm10a_occ2_lbl 131 `"General managers"', add
label define zm10a_occ2_lbl 211 `"Physicists, chemists and related professionals"', add
label define zm10a_occ2_lbl 212 `"Mathematicians, statisticians and related professionals"', add
label define zm10a_occ2_lbl 213 `"Computing professionals"', add
label define zm10a_occ2_lbl 214 `"Architects, engineers and related professionals"', add
label define zm10a_occ2_lbl 221 `"Life science professionals"', add
label define zm10a_occ2_lbl 222 `"Health professionals (except nursing)"', add
label define zm10a_occ2_lbl 223 `"Nursing and midwifery professionals"', add
label define zm10a_occ2_lbl 231 `"College, university and higher education teaching professionals"', add
label define zm10a_occ2_lbl 232 `"Secondary education teaching professionals"', add
label define zm10a_occ2_lbl 233 `"Primary and pre-primary education teaching professionals"', add
label define zm10a_occ2_lbl 234 `"Special education teaching professional"', add
label define zm10a_occ2_lbl 235 `"Other teaching professionals"', add
label define zm10a_occ2_lbl 241 `"Business professionals"', add
label define zm10a_occ2_lbl 242 `"Legal professionals"', add
label define zm10a_occ2_lbl 243 `"Archivists, librarians and related information professionals"', add
label define zm10a_occ2_lbl 244 `"Social science and related professionals"', add
label define zm10a_occ2_lbl 245 `"Writers and creative or performing artists"', add
label define zm10a_occ2_lbl 246 `"Religious professionals"', add
label define zm10a_occ2_lbl 311 `"Physical and engineering science technicians"', add
label define zm10a_occ2_lbl 312 `"Computer associate professionals"', add
label define zm10a_occ2_lbl 313 `"Optical and electronic equipment operators"', add
label define zm10a_occ2_lbl 314 `"Ship and aircraft controllers and technicians"', add
label define zm10a_occ2_lbl 315 `"Safety and quality inspectors"', add
label define zm10a_occ2_lbl 321 `"Life science technicians and related associate professionals"', add
label define zm10a_occ2_lbl 322 `"Modern health associate professionals (except nursing)"', add
label define zm10a_occ2_lbl 323 `"Nursing and midwifery associate professionals"', add
label define zm10a_occ2_lbl 324 `"Traditional medicine practitioner and faith healers"', add
label define zm10a_occ2_lbl 331 `"Primary education teaching associate professionals"', add
label define zm10a_occ2_lbl 332 `"Pre-primary education teaching associate professionals"', add
label define zm10a_occ2_lbl 333 `"Special education teaching associate professionals"', add
label define zm10a_occ2_lbl 334 `"Other teaching associate professionals"', add
label define zm10a_occ2_lbl 341 `"Finance and sales associate professionals"', add
label define zm10a_occ2_lbl 342 `"Business services agents and trade brokers"', add
label define zm10a_occ2_lbl 343 `"Administrative associate professionals"', add
label define zm10a_occ2_lbl 344 `"Customs, tax and related goverment associate professionals"', add
label define zm10a_occ2_lbl 345 `"Police inspectors and detectives"', add
label define zm10a_occ2_lbl 346 `"Social work associate professionals"', add
label define zm10a_occ2_lbl 347 `"Artistic, entertainment and sports associate professionals"', add
label define zm10a_occ2_lbl 348 `"Religious associate professionals"', add
label define zm10a_occ2_lbl 411 `"Secretaries and keyboard operating clerks"', add
label define zm10a_occ2_lbl 412 `"Numerical clerks"', add
label define zm10a_occ2_lbl 413 `"Material recording and transport clerks"', add
label define zm10a_occ2_lbl 414 `"Library, mail and related clerks"', add
label define zm10a_occ2_lbl 419 `"Other office clerks"', add
label define zm10a_occ2_lbl 421 `"Cashiers, tellers and related clerks"', add
label define zm10a_occ2_lbl 422 `"Client information clerks"', add
label define zm10a_occ2_lbl 511 `"Travel attendants and related workers"', add
label define zm10a_occ2_lbl 512 `"Housekeeping and restaurant services workers"', add
label define zm10a_occ2_lbl 513 `"Personal care and related workers"', add
label define zm10a_occ2_lbl 514 `"Other personal services workers"', add
label define zm10a_occ2_lbl 515 `"Astrologers, fortune tellers and related workers"', add
label define zm10a_occ2_lbl 516 `"Protective services workers"', add
label define zm10a_occ2_lbl 521 `"Fashion and other models"', add
label define zm10a_occ2_lbl 522 `"Shop salespersons and demonstrators"', add
label define zm10a_occ2_lbl 523 `"Stall and market salespersons"', add
label define zm10a_occ2_lbl 611 `"Market gardeners and crop growers"', add
label define zm10a_occ2_lbl 612 `"Market oriented animal producers and related workers"', add
label define zm10a_occ2_lbl 613 `"Market oriented crop and animal producers"', add
label define zm10a_occ2_lbl 614 `"Forestry and related workers"', add
label define zm10a_occ2_lbl 615 `"Fishery workers, hunters and trappers"', add
label define zm10a_occ2_lbl 621 `"Subsistence agricultural and fishery workers"', add
label define zm10a_occ2_lbl 711 `"Miners, shotfirers, stone cutters and carvers"', add
label define zm10a_occ2_lbl 712 `"Building frame and related trades workers"', add
label define zm10a_occ2_lbl 713 `"Building finishers and related trades workers"', add
label define zm10a_occ2_lbl 714 `"Painters and building structure cleaners and related trades workers"', add
label define zm10a_occ2_lbl 721 `"Metal moulders, welders, sheet metal workers, structural metal  preparers, and related trades workers"', add
label define zm10a_occ2_lbl 722 `"Blacksmiths, toolmakers and related trades workers"', add
label define zm10a_occ2_lbl 723 `"Machinery mechanics and fitters"', add
label define zm10a_occ2_lbl 724 `"Electrical and electronic equipment mechanics and fitters"', add
label define zm10a_occ2_lbl 731 `"Precision workers in metal and related materials"', add
label define zm10a_occ2_lbl 732 `"Potters, glassmakers and related trades workers"', add
label define zm10a_occ2_lbl 733 `"Handicraft workers in wood, textile, leather and related materials"', add
label define zm10a_occ2_lbl 734 `"Printing and related trades workers"', add
label define zm10a_occ2_lbl 741 `"Food processing and related trades workers"', add
label define zm10a_occ2_lbl 742 `"Wood treaters, cabinet-makers and related trades workers"', add
label define zm10a_occ2_lbl 743 `"Textile, garment and related trades workers"', add
label define zm10a_occ2_lbl 744 `"Pelt, leather and shoemaking trades workers"', add
label define zm10a_occ2_lbl 811 `"Mining and mineral processing plant operators"', add
label define zm10a_occ2_lbl 812 `"Metal processing plant operators"', add
label define zm10a_occ2_lbl 814 `"Wood processing and papermaking plant operators"', add
label define zm10a_occ2_lbl 815 `"Chemical processing plant operators"', add
label define zm10a_occ2_lbl 816 `"Power production and related plant operators"', add
label define zm10a_occ2_lbl 817 `"Automated assembly line and industrial robot operators"', add
label define zm10a_occ2_lbl 821 `"Metal and mineral products machine operators"', add
label define zm10a_occ2_lbl 822 `"Chemical products machine operators"', add
label define zm10a_occ2_lbl 823 `"Rubber and plastic products machine operators"', add
label define zm10a_occ2_lbl 824 `"Wood products machine operators"', add
label define zm10a_occ2_lbl 825 `"Printing, binding and paper product machine operators"', add
label define zm10a_occ2_lbl 826 `"Textile, fur and leather products machine operators"', add
label define zm10a_occ2_lbl 827 `"Food and related products machine operators"', add
label define zm10a_occ2_lbl 828 `"Assemblers"', add
label define zm10a_occ2_lbl 829 `"Other machine operators and assemblers"', add
label define zm10a_occ2_lbl 831 `"Locomotive engine drivers and related workers"', add
label define zm10a_occ2_lbl 832 `"Motor vehicle drivers"', add
label define zm10a_occ2_lbl 833 `"Agricultural and other mobile plant operators"', add
label define zm10a_occ2_lbl 834 `"Ships' deck crews and related workers"', add
label define zm10a_occ2_lbl 911 `"Street vendors and related workers"', add
label define zm10a_occ2_lbl 912 `"Shoe cleaning and other street services elementary occupations"', add
label define zm10a_occ2_lbl 913 `"Domestic and related helpers, cleaners and launderers"', add
label define zm10a_occ2_lbl 914 `"Building caretakers, window and related cleaners"', add
label define zm10a_occ2_lbl 915 `"Messengers, porters, doorkeepers and related workers"', add
label define zm10a_occ2_lbl 916 `"Garbage collectors and related labourers"', add
label define zm10a_occ2_lbl 921 `"Agricultutral, fishery and related labourers"', add
label define zm10a_occ2_lbl 931 `"Mining and construction labourers"', add
label define zm10a_occ2_lbl 932 `"Manufacturing labourers"', add
label define zm10a_occ2_lbl 933 `"Transport labourers and freight handlers"', add
label define zm10a_occ2_lbl 998 `"Unknown"', add
label define zm10a_occ2_lbl 999 `"NIU (not in universe)"', add
label values zm10a_occ2 zm10a_occ2_lbl

label define zm10a_ind2_lbl 011 `"Growing of non-perennial crops"'
label define zm10a_ind2_lbl 012 `"Growing of perennial crops"', add
label define zm10a_ind2_lbl 013 `"Plant propagation"', add
label define zm10a_ind2_lbl 014 `"Animal production"', add
label define zm10a_ind2_lbl 015 `"Mixed farming"', add
label define zm10a_ind2_lbl 016 `"Support activities to agriculture and post-harvest crop activities"', add
label define zm10a_ind2_lbl 017 `"Hunting, trapping and related service activities"', add
label define zm10a_ind2_lbl 021 `"Silviculture and other forestry activities"', add
label define zm10a_ind2_lbl 022 `"Logging"', add
label define zm10a_ind2_lbl 023 `"Gathering of non-wood forest products"', add
label define zm10a_ind2_lbl 024 `"Support services to forestry"', add
label define zm10a_ind2_lbl 031 `"Fishing"', add
label define zm10a_ind2_lbl 032 `"Aquaculture"', add
label define zm10a_ind2_lbl 051 `"Mining of hard coal"', add
label define zm10a_ind2_lbl 061 `"Extraction of crude petroleum and natural gas"', add
label define zm10a_ind2_lbl 062 `"Extraction of natural gas"', add
label define zm10a_ind2_lbl 071 `"Mining of iron ores"', add
label define zm10a_ind2_lbl 072 `"Mining of non-ferrous metal ores"', add
label define zm10a_ind2_lbl 081 `"Quarrying of stone, sand and clay"', add
label define zm10a_ind2_lbl 089 `"Mining and quarrying not elsewhere classified"', add
label define zm10a_ind2_lbl 091 `"Support activities for petroleum and natural gas extraction"', add
label define zm10a_ind2_lbl 099 `"Support activities for other mining and quarrying"', add
label define zm10a_ind2_lbl 101 `"Processing and preserving of meat"', add
label define zm10a_ind2_lbl 102 `"Processing and preserving of fish, crustaceans and molluscs"', add
label define zm10a_ind2_lbl 103 `"Processing and preserving of fruit and vegetables"', add
label define zm10a_ind2_lbl 104 `"Manufacture of vegetable and animal oils and fats"', add
label define zm10a_ind2_lbl 105 `"Manufacture of dairy products"', add
label define zm10a_ind2_lbl 106 `"Manufacture of grain mill products, starches and starch products"', add
label define zm10a_ind2_lbl 107 `"Manufacture of other food products"', add
label define zm10a_ind2_lbl 108 `"Manufacture of prepared animal feeds"', add
label define zm10a_ind2_lbl 110 `"Manufacture of beverages"', add
label define zm10a_ind2_lbl 120 `"Manufacture of tobacco products"', add
label define zm10a_ind2_lbl 131 `"Spinning, weaving and finishing of textiles"', add
label define zm10a_ind2_lbl 139 `"Manufacture of other textiles"', add
label define zm10a_ind2_lbl 140 `"Manufacturing of wearing apparel"', add
label define zm10a_ind2_lbl 143 `"Manufacture of knitted and crocheted apparel"', add
label define zm10a_ind2_lbl 151 `"Tanning and dressing of leather, manufacture of luggage, handbags, saddlery and harness, dressing and dyeing of fur"', add
label define zm10a_ind2_lbl 152 `"Manufacture of footwear"', add
label define zm10a_ind2_lbl 161 `"Sawmilling and planning of wood"', add
label define zm10a_ind2_lbl 162 `"Manufacture of products of wood, cork, straw and plaiting materials"', add
label define zm10a_ind2_lbl 170 `"Manufacture of paper and paper products"', add
label define zm10a_ind2_lbl 180 `"Printing and reproduction of recorded media"', add
label define zm10a_ind2_lbl 190 `"Manufacture of coke and refined petroleum products"', add
label define zm10a_ind2_lbl 201 `"Manufacture of basic chemicals, fertilizers and nitrogen compounds, plastics and synthetic rubber in primary forms"', add
label define zm10a_ind2_lbl 202 `"Manufacture of other chemical products"', add
label define zm10a_ind2_lbl 209 `"Manufacture of chemicals and chemical products not elsewhere classified"', add
label define zm10a_ind2_lbl 210 `"Manufacture of pharmaceuticals, medicinal chemical and botanic products"', add
label define zm10a_ind2_lbl 221 `"Manufacture of rubber products"', add
label define zm10a_ind2_lbl 222 `"Manufacture of plastic products"', add
label define zm10a_ind2_lbl 231 `"Manufacture of glass and glass products"', add
label define zm10a_ind2_lbl 239 `"Manufacture of non-metallic mineral products not elsewhere classified"', add
label define zm10a_ind2_lbl 241 `"Manufacture of basic iron and steel"', add
label define zm10a_ind2_lbl 249 `"Manufacture of other basic metals not elsewhere classified"', add
label define zm10a_ind2_lbl 243 `"Casting of metals"', add
label define zm10a_ind2_lbl 251 `"Manufacture of structural metal products, tanks, reservoirs and steam generators"', add
label define zm10a_ind2_lbl 252 `"Manufacture of weapons and ammunition"', add
label define zm10a_ind2_lbl 259 `"Manufacture of other fabricated metal products; metalworking service activities"', add
label define zm10a_ind2_lbl 260 `"Manufacture of computer, electronic and optical products"', add
label define zm10a_ind2_lbl 271 `"Manufacture of electric motors, generators, transformers and electricity distribution and control apparatus"', add
label define zm10a_ind2_lbl 273 `"Manufacture of wiring and wiring devises"', add
label define zm10a_ind2_lbl 274 `"Manufacture of electric lighting equipment"', add
label define zm10a_ind2_lbl 275 `"Manufacture of domestic appliances"', add
label define zm10a_ind2_lbl 279 `"Manufacture of other electrical equipment"', add
label define zm10a_ind2_lbl 280 `"Manufacture of machinery"', add
label define zm10a_ind2_lbl 291 `"Manufacture of motor vehicles"', add
label define zm10a_ind2_lbl 293 `"Manufacture of parts and accessories for motor vehicles"', add
label define zm10a_ind2_lbl 300 `"Manufacture of transport equipment"', add
label define zm10a_ind2_lbl 310 `"Manufacture of furniture"', add
label define zm10a_ind2_lbl 321 `"Manufacture of jewellery, bijouterie and related articles"', add
label define zm10a_ind2_lbl 329 `"Other manufacturing not elsewhere classified"', add
label define zm10a_ind2_lbl 331 `"Repair of fabricated metal products, machinery and equipment"', add
label define zm10a_ind2_lbl 332 `"Installation of industrial machinery and equipment"', add
label define zm10a_ind2_lbl 351 `"Electric power generation, transmission and distribution"', add
label define zm10a_ind2_lbl 352 `"Manufacture of gas; distribution of gaseous fuels through mains"', add
label define zm10a_ind2_lbl 353 `"Steam and air conditioning supply"', add
label define zm10a_ind2_lbl 360 `"Water collection, treatment and supply"', add
label define zm10a_ind2_lbl 370 `"Sewerage"', add
label define zm10a_ind2_lbl 381 `"Waste collection"', add
label define zm10a_ind2_lbl 382 `"Waste treatment and disposal"', add
label define zm10a_ind2_lbl 389 `"Waste collection, treatment and disposal activities and materials recovery not elsewhere classified"', add
label define zm10a_ind2_lbl 390 `"Remediation activities and other waste management services"', add
label define zm10a_ind2_lbl 410 `"Construction of buildings"', add
label define zm10a_ind2_lbl 421 `"Construction of roads and railways"', add
label define zm10a_ind2_lbl 422 `"Construction of utility projects"', add
label define zm10a_ind2_lbl 429 `"Construction of other civil engineering projects"', add
label define zm10a_ind2_lbl 431 `"Demolition and site preparation"', add
label define zm10a_ind2_lbl 432 `"Electrical, plumbing and other construction installation activities"', add
label define zm10a_ind2_lbl 433 `"Buildind completion and finishing"', add
label define zm10a_ind2_lbl 439 `"Other specialised construction activities"', add
label define zm10a_ind2_lbl 451 `"Sale of motor vehicles"', add
label define zm10a_ind2_lbl 452 `"Maintenance and repair of motor vehicles"', add
label define zm10a_ind2_lbl 453 `"Sale of motor vehicle parts and accessories"', add
label define zm10a_ind2_lbl 454 `"Sale, maintenance and repair of motorcycles and related parts and accessories"', add
label define zm10a_ind2_lbl 461 `"Wholesale on a fee or contract basis"', add
label define zm10a_ind2_lbl 462 `"Wholesale of agricultural raw materials and live animals"', add
label define zm10a_ind2_lbl 463 `"Wholesale of food, beverages and tobacco"', add
label define zm10a_ind2_lbl 464 `"Wholesale of household goods"', add
label define zm10a_ind2_lbl 465 `"Wholesale of machinery, equipment and supplies"', add
label define zm10a_ind2_lbl 466 `"Other specialised wholesale"', add
label define zm10a_ind2_lbl 469 `"Non-specialised wholesale trade"', add
label define zm10a_ind2_lbl 471 `"Retail sale in non-specialised stores"', add
label define zm10a_ind2_lbl 472 `"Retail sale of food, beverages and tobacco in specialised stores"', add
label define zm10a_ind2_lbl 473 `"Retail sale of automotive fuel in specialised stores"', add
label define zm10a_ind2_lbl 474 `"Retail sale of information and communications equipment in specialised stores"', add
label define zm10a_ind2_lbl 475 `"Retail sale other household equipment in specialised stores"', add
label define zm10a_ind2_lbl 476 `"Retail sale of cultural and recreation goods in specialised stores"', add
label define zm10a_ind2_lbl 477 `"Retail sale of other goods in specialised stores"', add
label define zm10a_ind2_lbl 478 `"Retail sale via stalls and markets"', add
label define zm10a_ind2_lbl 479 `"Retail trade not in stores, stalls or markets"', add
label define zm10a_ind2_lbl 491 `"Transport via railways"', add
label define zm10a_ind2_lbl 492 `"Other land transport"', add
label define zm10a_ind2_lbl 500 `"Water transport"', add
label define zm10a_ind2_lbl 511 `"Passenger  air transport"', add
label define zm10a_ind2_lbl 512 `"Freight air transport"', add
label define zm10a_ind2_lbl 521 `"Warehousing and storage"', add
label define zm10a_ind2_lbl 522 `"Support activities for transportation"', add
label define zm10a_ind2_lbl 531 `"Postal activities"', add
label define zm10a_ind2_lbl 532 `"Courier activities"', add
label define zm10a_ind2_lbl 551 `"Short term accommodation activities"', add
label define zm10a_ind2_lbl 552 `"Camping grounds, recreational vehicle parks and trailer parks"', add
label define zm10a_ind2_lbl 559 `"Other accommodation"', add
label define zm10a_ind2_lbl 561 `"Restaurants and mobile food service activities"', add
label define zm10a_ind2_lbl 562 `"Event catering and other food service activities"', add
label define zm10a_ind2_lbl 563 `"Beverage serving activities"', add
label define zm10a_ind2_lbl 581 `"Publishing of books, periodicals and other publishing activities"', add
label define zm10a_ind2_lbl 582 `"Software publishing"', add
label define zm10a_ind2_lbl 591 `"Motion picture, video and television programme activities"', add
label define zm10a_ind2_lbl 592 `"Sound recording and music publishing activities"', add
label define zm10a_ind2_lbl 601 `"Radio broadcasting"', add
label define zm10a_ind2_lbl 602 `"Television programming and broadcasting activities"', add
label define zm10a_ind2_lbl 611 `"Wired telecommunications activities"', add
label define zm10a_ind2_lbl 612 `"Wireless telecommunications activities"', add
label define zm10a_ind2_lbl 613 `"Satellite telecommunications activities"', add
label define zm10a_ind2_lbl 619 `"Other telecommunications activities"', add
label define zm10a_ind2_lbl 631 `"Data processing, hosting and related activities; web portals"', add
label define zm10a_ind2_lbl 639 `"Other information service activities"', add
label define zm10a_ind2_lbl 641 `"Monetary intermediation"', add
label define zm10a_ind2_lbl 642 `"Activities of holding companies"', add
label define zm10a_ind2_lbl 643 `"Trusts, funds and similar financial entities"', add
label define zm10a_ind2_lbl 649 `"Other financial service activities, except insurance and pension funding activities"', add
label define zm10a_ind2_lbl 651 `"Insurance"', add
label define zm10a_ind2_lbl 653 `"Pension funding"', add
label define zm10a_ind2_lbl 660 `"Activities auxiliary to financial service and insurance activities"', add
label define zm10a_ind2_lbl 663 `"Fund management activities"', add
label define zm10a_ind2_lbl 681 `"Real estate activities with own leased property"', add
label define zm10a_ind2_lbl 682 `"Real estate activities on a fee or contract basis"', add
label define zm10a_ind2_lbl 691 `"Legal activities"', add
label define zm10a_ind2_lbl 692 `"Accounting, bookkeeping and auditing activities; tax consultancy"', add
label define zm10a_ind2_lbl 701 `"Activities of head offices"', add
label define zm10a_ind2_lbl 702 `"Management consultancy activities"', add
label define zm10a_ind2_lbl 711 `"Architectural and engineering activities and related technical consultancy"', add
label define zm10a_ind2_lbl 712 `"Technical testing and analysis"', add
label define zm10a_ind2_lbl 721 `"Research and experimental development on natural sciences and engineering"', add
label define zm10a_ind2_lbl 722 `"Research and experimental development on social sciences and humanities"', add
label define zm10a_ind2_lbl 731 `"Advertising"', add
label define zm10a_ind2_lbl 732 `"Marketing research and public opinion polling"', add
label define zm10a_ind2_lbl 741 `"Specialized design activities"', add
label define zm10a_ind2_lbl 742 `"Photographic activities"', add
label define zm10a_ind2_lbl 749 `"Other professional, scientific and technical activities n.e.c"', add
label define zm10a_ind2_lbl 750 `"Veterinary activities"', add
label define zm10a_ind2_lbl 770 `"Renting and leasing activities"', add
label define zm10a_ind2_lbl 781 `"Activities of employment placement agencies"', add
label define zm10a_ind2_lbl 782 `"Temporary employment agency activities"', add
label define zm10a_ind2_lbl 783 `"Other human resources provision"', add
label define zm10a_ind2_lbl 791 `"Travel agency and tour operator activities"', add
label define zm10a_ind2_lbl 799 `"Other reservation service and related activities"', add
label define zm10a_ind2_lbl 801 `"Private security activities"', add
label define zm10a_ind2_lbl 802 `"Security systems service activities"', add
label define zm10a_ind2_lbl 803 `"Investigation activities"', add
label define zm10a_ind2_lbl 811 `"Combined facilities support activities"', add
label define zm10a_ind2_lbl 812 `"Cleaning activities"', add
label define zm10a_ind2_lbl 813 `"Landscape care and maintenance service activities"', add
label define zm10a_ind2_lbl 821 `"Office administrative and support activities"', add
label define zm10a_ind2_lbl 822 `"Activities of call centres"', add
label define zm10a_ind2_lbl 823 `"Organization of conventions and trade shows"', add
label define zm10a_ind2_lbl 829 `"Business support service activities n.e.c"', add
label define zm10a_ind2_lbl 841 `"Administration of the state and the economic and social policy of the community"', add
label define zm10a_ind2_lbl 842 `"Provision of services to the community as a whole"', add
label define zm10a_ind2_lbl 843 `"Compulsory social security activities"', add
label define zm10a_ind2_lbl 851 `"Pre-primary and primary education"', add
label define zm10a_ind2_lbl 852 `"Secondary education"', add
label define zm10a_ind2_lbl 853 `"Higher education"', add
label define zm10a_ind2_lbl 854 `"Other education"', add
label define zm10a_ind2_lbl 855 `"Educational support activities"', add
label define zm10a_ind2_lbl 861 `"Hospital activities"', add
label define zm10a_ind2_lbl 862 `"Medical and dental practice activities"', add
label define zm10a_ind2_lbl 869 `"Other human health activities"', add
label define zm10a_ind2_lbl 871 `"Residential nursing care facilities"', add
label define zm10a_ind2_lbl 872 `"Residential care activities for mental retardation, mental health and substance abuse"', add
label define zm10a_ind2_lbl 873 `"Residential care activities for the elderly and disabled"', add
label define zm10a_ind2_lbl 879 `"Other residential care activities"', add
label define zm10a_ind2_lbl 881 `"Social work activities without accommodation for the elderly and disabled"', add
label define zm10a_ind2_lbl 889 `"Other social activities without accommodation"', add
label define zm10a_ind2_lbl 900 `"Creative, arts and entertainment activities"', add
label define zm10a_ind2_lbl 920 `"Gambling and betting activities"', add
label define zm10a_ind2_lbl 931 `"Sports activities"', add
label define zm10a_ind2_lbl 932 `"Other amusement and recreation activities"', add
label define zm10a_ind2_lbl 941 `"Activities of business, employers and professional membership organizations"', add
label define zm10a_ind2_lbl 942 `"Activities of trade unions"', add
label define zm10a_ind2_lbl 949 `"Activities of other membership organisations"', add
label define zm10a_ind2_lbl 951 `"Repair of computers and communication equipment"', add
label define zm10a_ind2_lbl 952 `"Repair of personal and household goods"', add
label define zm10a_ind2_lbl 970 `"Activities of households as employers of domestic personnel"', add
label define zm10a_ind2_lbl 981 `"Undifferentiated goods-producing activities of private households for own use"', add
label define zm10a_ind2_lbl 982 `"Undifferentiated service-producing activities of private households for own use"', add
label define zm10a_ind2_lbl 990 `"Activities of extraterritorial organisations and bodies"', add
label define zm10a_ind2_lbl 998 `"Unknown"', add
label define zm10a_ind2_lbl 999 `"NIU (not in universe)"', add
label values zm10a_ind2 zm10a_ind2_lbl

label define zm10a_marst_lbl 1 `"Never married"'
label define zm10a_marst_lbl 2 `"Married"', add
label define zm10a_marst_lbl 3 `"Divorced"', add
label define zm10a_marst_lbl 4 `"Separated"', add
label define zm10a_marst_lbl 5 `"Widowed"', add
label define zm10a_marst_lbl 6 `"Cohabiting"', add
label define zm10a_marst_lbl 9 `"NIU (not in universe)"', add
label values zm10a_marst zm10a_marst_lbl

label define zm10a_agemarr_lbl 12 `"12"'
label define zm10a_agemarr_lbl 13 `"13"', add
label define zm10a_agemarr_lbl 14 `"14"', add
label define zm10a_agemarr_lbl 15 `"15"', add
label define zm10a_agemarr_lbl 16 `"16"', add
label define zm10a_agemarr_lbl 17 `"17"', add
label define zm10a_agemarr_lbl 18 `"18"', add
label define zm10a_agemarr_lbl 19 `"19"', add
label define zm10a_agemarr_lbl 20 `"20"', add
label define zm10a_agemarr_lbl 21 `"21"', add
label define zm10a_agemarr_lbl 22 `"22"', add
label define zm10a_agemarr_lbl 23 `"23"', add
label define zm10a_agemarr_lbl 24 `"24"', add
label define zm10a_agemarr_lbl 25 `"25"', add
label define zm10a_agemarr_lbl 26 `"26"', add
label define zm10a_agemarr_lbl 27 `"27"', add
label define zm10a_agemarr_lbl 28 `"28"', add
label define zm10a_agemarr_lbl 29 `"29"', add
label define zm10a_agemarr_lbl 30 `"30"', add
label define zm10a_agemarr_lbl 31 `"31"', add
label define zm10a_agemarr_lbl 32 `"32"', add
label define zm10a_agemarr_lbl 33 `"33"', add
label define zm10a_agemarr_lbl 34 `"34"', add
label define zm10a_agemarr_lbl 35 `"35"', add
label define zm10a_agemarr_lbl 36 `"36"', add
label define zm10a_agemarr_lbl 37 `"37"', add
label define zm10a_agemarr_lbl 38 `"38"', add
label define zm10a_agemarr_lbl 39 `"39"', add
label define zm10a_agemarr_lbl 40 `"40"', add
label define zm10a_agemarr_lbl 41 `"41"', add
label define zm10a_agemarr_lbl 42 `"42"', add
label define zm10a_agemarr_lbl 43 `"43"', add
label define zm10a_agemarr_lbl 44 `"44"', add
label define zm10a_agemarr_lbl 45 `"45"', add
label define zm10a_agemarr_lbl 46 `"46"', add
label define zm10a_agemarr_lbl 47 `"47"', add
label define zm10a_agemarr_lbl 48 `"48"', add
label define zm10a_agemarr_lbl 49 `"49"', add
label define zm10a_agemarr_lbl 50 `"50"', add
label define zm10a_agemarr_lbl 51 `"51"', add
label define zm10a_agemarr_lbl 52 `"52"', add
label define zm10a_agemarr_lbl 53 `"53"', add
label define zm10a_agemarr_lbl 54 `"54"', add
label define zm10a_agemarr_lbl 55 `"55"', add
label define zm10a_agemarr_lbl 56 `"56"', add
label define zm10a_agemarr_lbl 57 `"57"', add
label define zm10a_agemarr_lbl 58 `"58"', add
label define zm10a_agemarr_lbl 59 `"59"', add
label define zm10a_agemarr_lbl 60 `"60"', add
label define zm10a_agemarr_lbl 61 `"61"', add
label define zm10a_agemarr_lbl 62 `"62"', add
label define zm10a_agemarr_lbl 63 `"63"', add
label define zm10a_agemarr_lbl 64 `"64"', add
label define zm10a_agemarr_lbl 65 `"65+"', add
label define zm10a_agemarr_lbl 99 `"NIU (not in universe)"', add
label values zm10a_agemarr zm10a_agemarr_lbl

label define zm10a_chborn_lbl 1 `"Yes"'
label define zm10a_chborn_lbl 2 `"No"', add
label define zm10a_chborn_lbl 9 `"NIU (not in universe)"', add
label values zm10a_chborn zm10a_chborn_lbl

label define zm10a_maleshh_lbl 00 `"0"'
label define zm10a_maleshh_lbl 01 `"1"', add
label define zm10a_maleshh_lbl 02 `"2"', add
label define zm10a_maleshh_lbl 03 `"3"', add
label define zm10a_maleshh_lbl 04 `"4"', add
label define zm10a_maleshh_lbl 05 `"5"', add
label define zm10a_maleshh_lbl 06 `"6"', add
label define zm10a_maleshh_lbl 07 `"7"', add
label define zm10a_maleshh_lbl 08 `"8"', add
label define zm10a_maleshh_lbl 09 `"9"', add
label define zm10a_maleshh_lbl 10 `"10+"', add
label define zm10a_maleshh_lbl 99 `"NIU (not in universe)"', add
label values zm10a_maleshh zm10a_maleshh_lbl

label define zm10a_femshh_lbl 00 `"0"'
label define zm10a_femshh_lbl 01 `"1"', add
label define zm10a_femshh_lbl 02 `"2"', add
label define zm10a_femshh_lbl 03 `"3"', add
label define zm10a_femshh_lbl 04 `"4"', add
label define zm10a_femshh_lbl 05 `"5"', add
label define zm10a_femshh_lbl 06 `"6"', add
label define zm10a_femshh_lbl 07 `"7"', add
label define zm10a_femshh_lbl 08 `"8"', add
label define zm10a_femshh_lbl 09 `"9"', add
label define zm10a_femshh_lbl 10 `"10+"', add
label define zm10a_femshh_lbl 99 `"NIU (not in universe)"', add
label values zm10a_femshh zm10a_femshh_lbl

label define zm10a_maleselse_lbl 00 `"0"'
label define zm10a_maleselse_lbl 01 `"1"', add
label define zm10a_maleselse_lbl 02 `"2"', add
label define zm10a_maleselse_lbl 03 `"3"', add
label define zm10a_maleselse_lbl 04 `"4"', add
label define zm10a_maleselse_lbl 05 `"5"', add
label define zm10a_maleselse_lbl 06 `"6"', add
label define zm10a_maleselse_lbl 07 `"7"', add
label define zm10a_maleselse_lbl 08 `"8"', add
label define zm10a_maleselse_lbl 09 `"9"', add
label define zm10a_maleselse_lbl 10 `"10+"', add
label define zm10a_maleselse_lbl 99 `"NIU (not in universe)"', add
label values zm10a_maleselse zm10a_maleselse_lbl

label define zm10a_femselse_lbl 00 `"0"'
label define zm10a_femselse_lbl 01 `"1"', add
label define zm10a_femselse_lbl 02 `"2"', add
label define zm10a_femselse_lbl 03 `"3"', add
label define zm10a_femselse_lbl 04 `"4"', add
label define zm10a_femselse_lbl 05 `"5"', add
label define zm10a_femselse_lbl 06 `"6"', add
label define zm10a_femselse_lbl 07 `"7"', add
label define zm10a_femselse_lbl 08 `"8"', add
label define zm10a_femselse_lbl 09 `"9"', add
label define zm10a_femselse_lbl 10 `"10+"', add
label define zm10a_femselse_lbl 99 `"NIU (not in universe)"', add
label values zm10a_femselse zm10a_femselse_lbl

label define zm10a_malesdead_lbl 00 `"0"'
label define zm10a_malesdead_lbl 01 `"1"', add
label define zm10a_malesdead_lbl 02 `"2"', add
label define zm10a_malesdead_lbl 03 `"3"', add
label define zm10a_malesdead_lbl 04 `"4"', add
label define zm10a_malesdead_lbl 05 `"5"', add
label define zm10a_malesdead_lbl 06 `"6"', add
label define zm10a_malesdead_lbl 07 `"7"', add
label define zm10a_malesdead_lbl 08 `"8"', add
label define zm10a_malesdead_lbl 09 `"9"', add
label define zm10a_malesdead_lbl 10 `"10+"', add
label define zm10a_malesdead_lbl 99 `"NIU (not in universe)"', add
label values zm10a_malesdead zm10a_malesdead_lbl

label define zm10a_femsdead_lbl 00 `"0"'
label define zm10a_femsdead_lbl 01 `"1"', add
label define zm10a_femsdead_lbl 02 `"2"', add
label define zm10a_femsdead_lbl 03 `"3"', add
label define zm10a_femsdead_lbl 04 `"4"', add
label define zm10a_femsdead_lbl 05 `"5"', add
label define zm10a_femsdead_lbl 06 `"6"', add
label define zm10a_femsdead_lbl 07 `"7"', add
label define zm10a_femsdead_lbl 08 `"8"', add
label define zm10a_femsdead_lbl 09 `"9"', add
label define zm10a_femsdead_lbl 10 `"10+"', add
label define zm10a_femsdead_lbl 99 `"NIU (not in universe)"', add
label values zm10a_femsdead zm10a_femsdead_lbl

label define zm10a_brths12mths_lbl 1 `"Yes"'
label define zm10a_brths12mths_lbl 2 `"No"', add
label define zm10a_brths12mths_lbl 9 `"NIU (not in universe)"', add
label values zm10a_brths12mths zm10a_brths12mths_lbl

label define zm10a_males12liv_lbl 0 `"0"'
label define zm10a_males12liv_lbl 1 `"1"', add
label define zm10a_males12liv_lbl 2 `"2+"', add
label define zm10a_males12liv_lbl 9 `"NIU (not in universe)"', add
label values zm10a_males12liv zm10a_males12liv_lbl

label define zm10a_fems12liv_lbl 0 `"0"'
label define zm10a_fems12liv_lbl 1 `"1"', add
label define zm10a_fems12liv_lbl 2 `"2+"', add
label define zm10a_fems12liv_lbl 9 `"NIU (not in universe)"', add
label values zm10a_fems12liv zm10a_fems12liv_lbl

label define zm10a_males12else_lbl 0 `"0"'
label define zm10a_males12else_lbl 1 `"1"', add
label define zm10a_males12else_lbl 2 `"2+"', add
label define zm10a_males12else_lbl 9 `"NIU (not in universe)"', add
label values zm10a_males12else zm10a_males12else_lbl

label define zm10a_fem12else_lbl 0 `"0"'
label define zm10a_fem12else_lbl 1 `"1"', add
label define zm10a_fem12else_lbl 2 `"2+"', add
label define zm10a_fem12else_lbl 9 `"NIU (not in universe)"', add
label values zm10a_fem12else zm10a_fem12else_lbl

label define zm10a_males12dead_lbl 0 `"0"'
label define zm10a_males12dead_lbl 1 `"1"', add
label define zm10a_males12dead_lbl 2 `"2+"', add
label define zm10a_males12dead_lbl 9 `"NIU (not in universe)"', add
label values zm10a_males12dead zm10a_males12dead_lbl

label define zm10a_fem12dead_lbl 0 `"0"'
label define zm10a_fem12dead_lbl 1 `"1"', add
label define zm10a_fem12dead_lbl 2 `"2+"', add
label define zm10a_fem12dead_lbl 9 `"NIU (not in universe)"', add
label values zm10a_fem12dead zm10a_fem12dead_lbl

label define zm10a_nidcard_lbl 1 `"Yes"'
label define zm10a_nidcard_lbl 2 `"No"', add
label define zm10a_nidcard_lbl 8 `"Unknown"', add
label define zm10a_nidcard_lbl 9 `"NIU (not in universe)"', add
label values zm10a_nidcard zm10a_nidcard_lbl

label define zm10a_voter_lbl 1 `"Yes"'
label define zm10a_voter_lbl 2 `"No"', add
label define zm10a_voter_lbl 8 `"Unknown"', add
label define zm10a_voter_lbl 9 `"NIU (not in universe)"', add
label values zm10a_voter zm10a_voter_lbl


