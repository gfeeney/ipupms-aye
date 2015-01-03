* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  int     persons         22-24    ///
  float   wthh            25-32    ///
  byte    subsamp         33-34    ///
  byte    gq              35-36    ///
  byte    unrel           37-37    ///
  byte    urban           38-38    ///
  byte    regionw         39-40    ///
  long    geolev1         41-46    ///
  long    do10a_dwnum     47-53    ///
  byte    do10a_hhnum     54-54    ///
  byte    do10a_hhn       55-55    ///
  byte    do10a_pernd     56-57    ///
  byte    do10a_fbig      58-58    ///
  byte    do10a_region    59-60    ///
  byte    do10a_province  61-62    ///
  byte    do10a_urban     63-63    ///
  byte    do10a_dwtype    64-65    ///
  byte    do10a_occup     66-66    ///
  byte    do10a_walls     67-67    ///
  byte    do10a_roof      68-68    ///
  byte    do10a_floor     69-69    ///
  byte    do10a_kitchen   70-70    ///
  byte    do10a_rooms     71-72    ///
  byte    do10a_hhs       73-73    ///
  byte    do10a_qualstr   74-74    ///
  byte    do10a_access    75-75    ///
  byte    do10a_accessc   76-76    ///
  byte    do10a_transp    77-77    ///
  byte    do10a_tranbus   78-78    ///
  byte    do10a_trantruc  79-79    ///
  byte    do10a_trancar   80-80    ///
  byte    do10a_tranmoto  81-81    ///
  byte    do10a_trananim  82-82    ///
  byte    do10a_tranoth   83-83    ///
  byte    do10a_hazlands  84-84    ///
  byte    do10a_hazsinkh  85-85    ///
  byte    do10a_hazrocks  86-86    ///
  byte    do10a_hazffire  87-87    ///
  byte    do10a_polstagw  88-88    ///
  byte    do10a_polwaste  89-89    ///
  byte    do10a_polfarm   90-90    ///
  byte    do10a_polsmoke  91-91    ///
  byte    do10a_polfwast  92-92    ///
  byte    do10a_polgasp   93-93    ///
  byte    do10a_polfuel   94-94    ///
  byte    do10a_polchemp  95-95    ///
  byte    do10a_polvnois  96-96    ///
  byte    do10a_polfnois  97-97    ///
  byte    do10a_polpwrp   98-98    ///
  byte    do10a_polmusic  99-99    ///
  byte    do10a_poloth    100-100  ///
  byte    do10a_dlriver   101-101  ///
  byte    do10a_dlcanal   102-102  ///
  byte    do10a_dlmount   103-103  ///
  byte    do10a_dlhills   104-104  ///
  byte    do10a_dlseaf    105-105  ///
  byte    do10a_dlbeach   106-106  ///
  byte    do10a_dllake    107-107  ///
  byte    do10a_dlmine    108-108  ///
  byte    do10a_dlrisk    109-109  ///
  byte    do10a_nathurr   110-110  ///
  byte    do10a_nattordo  111-111  ///
  byte    do10a_natstorm  112-112  ///
  byte    do10a_natflood  113-113  ///
  byte    do10a_nattorn   114-114  ///
  byte    do10a_nattorn   115-115  ///
  byte    do10a_natxcold  116-116  ///
  byte    do10a_natxheat  117-117  ///
  byte    do10a_nattsun   118-118  ///
  byte    do10a_natdrght  119-119  ///
  byte    do10a_natlands  120-120  ///
  byte    do10a_natsinkh  121-121  ///
  byte    do10a_natfire   122-122  ///
  byte    do10a_nateartq  123-123  ///
  byte    do10a_natoth    124-124  ///
  byte    do10a_cdsschl   125-125  ///
  byte    do10a_cdschrch  126-126  ///
  byte    do10a_cdscomhl  127-127  ///
  byte    do10a_cdssport  128-128  ///
  byte    do10a_cdsoth    129-129  ///
  byte    do10a_disthosp  130-131  ///
  byte    do10a_distclnc  132-133  ///
  byte    do10a_distpsch  134-135  ///
  byte    do10a_disthsch  136-137  ///
  byte    do10a_distphrm  138-139  ///
  byte    do10a_distmrkt  140-141  ///
  byte    do10a_stove     142-142  ///
  byte    do10a_stove     143-143  ///
  byte    do10a_refrig    144-144  ///
  byte    do10a_washer    145-145  ///
  byte    do10a_tv        146-146  ///
  byte    do10a_radio     147-147  ///
  byte    do10a_cistern   148-148  ///
  byte    do10a_computer  149-149  ///
  byte    do10a_convert   150-150  ///
  byte    do10a_genertr   151-151  ///
  byte    do10a_phone     152-152  ///
  byte    do10a_cellph    153-153  ///
  byte    do10a_aircon    154-154  ///
  byte    do10a_motor     155-155  ///
  byte    do10a_auto      156-156  ///
  byte    do10a_tenancy   157-157  ///
  byte    do10a_bedrooms  158-159  ///
  byte    do10a_toilet    160-160  ///
  byte    do10a_toilshar  161-161  ///
  byte    do10a_waste     162-162  ///
  byte    do10a_fuelck    163-163  ///
  byte    do10a_light     164-164  ///
  byte    do10a_death09   165-165  ///
  byte    do10a_ag12mo    166-166  ///
  byte    do10a_animals   167-167  ///
  byte    do10a_nbnotinc  168-168  ///
  byte    do10a_absent    169-169  ///
  byte    do10a_typehh    170-170  ///
  byte    do10a_overcrwd  171-171  ///
  byte    do10a_sanitg    172-172  ///
  byte    do10a_segrp     173-173  ///
  byte    do10a_sexhd     174-174  ///
  int     do10a_agehd     175-177  ///
  byte    do10a_yrschhd   178-179  ///
  byte    do10a_landplnt  180-180  ///
  byte    do10a_landharv  181-181  ///
  byte    do10a_cattle    182-182  ///
  byte    do10a_sheepgt   183-183  ///
  byte    do10a_ducks     184-184  ///
  byte    do10a_chickens  185-185  ///
  byte    do10a_swine     186-186  ///
  byte    do10a_bees      187-187  ///
  int     pernum          188-190  ///
  float   wtper           191-198  ///
  byte    do10a_pernum    199-200  ///
  byte    do10a_relate    201-202  ///
  byte    do10a_sex       203-203  ///
  byte    do10a_birthmo   204-205  ///
  int     do10a_birthyr   206-209  ///
  int     do10a_age       210-212  ///
  byte    do10a_bplloc    213-213  ///
  byte    do10a_bplprov   214-215  ///
  int     do10a_bplmuni   216-219  ///
  int     do10a_bplctry   220-222  ///
  int     do10a_arryr     223-226  ///
  byte    do10a_blind     227-227  ///
  byte    do10a_deaf      228-228  ///
  byte    do10a_dismob    229-229  ///
  byte    do10a_disarms   230-230  ///
  byte    do10a_dislegs   231-231  ///
  byte    do10a_disconc   232-232  ///
  byte    do10a_disspk    233-233  ///
  byte    do10a_mute      234-234  ///
  byte    do10a_dismntl   235-235  ///
  byte    do10a_amplegs   236-236  ///
  byte    do10a_amparms   237-237  ///
  byte    do10a_lit       238-238  ///
  byte    do10a_school    239-239  ///
  byte    do10a_edlevel   240-240  ///
  byte    do10a_edyear    241-241  ///
  byte    do10a_edattan   242-243  ///
  long    do10a_field5    244-248  ///
  byte    do10a_grad      249-249  ///
  byte    do10a_univyrs   250-251  ///
  byte    do10a_res5yr    252-252  ///
  byte    do10a_res5yr    253-253  ///
  byte    do10a_prov5yr   254-255  ///
  int     do10a_muni5yr   256-259  ///
  int     do10a_ctry5yr   260-262  ///
  byte    do10a_paidlwk   263-263  ///
  byte    do10a_hrpdlw    264-264  ///
  byte    do10a_unpdlw    265-265  ///
  byte    do10a_activity  266-266  ///
  byte    do10a_canwork   267-267  ///
  byte    do10a_occ       268-269  ///
  byte    do10a_classwk   270-270  ///
  int     do10a_ind       271-273  ///
  byte    do10a_marst     274-274  ///
  byte    do10a_chbornf   275-276  ///
  byte    do10a_chbornm   277-278  ///
  byte    do10a_nobirth   279-279  ///
  byte    do10a_chsurvf   280-281  ///
  byte    do10a_chsurvm   282-283  ///
  byte    do10a_nochsurv  284-284  ///
  byte    do10a_lchmo     285-286  ///
  int     do10a_lchyr     287-290  ///
  byte    do10a_lcsurv    291-291  ///
  byte    do10a_lchaged   292-293  ///
  byte    do10a_age5yr    294-295  ///
  byte    do10a_age5alt   296-297  ///
  byte    do10a_age10     298-299  ///
  byte    do10a_agegrp    300-300  ///
  byte    do10a_yrstudyc  301-302  ///
  int     do10a_field     303-305  ///
  byte    do10a_occ1      306-307  ///
  byte    do10a_ind1      308-309  ///
  byte    do10a_empstat   310-311  ///
  byte    do10a_chborn    312-313  ///
  byte    do10a_chsurv    314-315  ///
  byte    do10a_univfld   316-317  ///
  using `"ipumsi_00066.dat"'

replace wthh           = wthh           / 100
replace wtper          = wtper          / 100

format serial         %10.0f
format wthh           %8.2f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var persons        `"Number of person records in the household"'
label var wthh           `"Household weight"'
label var subsamp        `"Subsample number"'
label var gq             `"Group quarters status"'
label var unrel          `"Number of unrelated persons"'
label var urban          `"Urban-rural status"'
label var regionw        `"Continent and region of country"'
label var geolev1        `"1st subnational geographic level, world [consistent boundaries over time]"'
label var do10a_dwnum    `"Dwelling number"'
label var do10a_hhnum    `"Household number (within dwelling)"'
label var do10a_hhn      `"Number of households in dwelling"'
label var do10a_pernd    `"Number of persons in dwelling"'
label var do10a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var do10a_region   `"Region"'
label var do10a_province `"Province"'
label var do10a_urban    `"Urban or rural area of residence"'
label var do10a_dwtype   `"Dwelling type"'
label var do10a_occup    `"Occupancy status"'
label var do10a_walls    `"Wall material"'
label var do10a_roof     `"Roof material"'
label var do10a_floor    `"Floor material"'
label var do10a_kitchen  `"Kitchen in dwelling"'
label var do10a_rooms    `"Number of rooms in dwelling"'
label var do10a_hhs      `"Number households in dwelling"'
label var do10a_qualstr  `"Structural quality of dwelling (calculated)"'
label var do10a_access   `"Dwelling access"'
label var do10a_accessc  `"Condition of access to housing segment"'
label var do10a_transp   `"Main mode of transport"'
label var do10a_tranbus  `"Modes of transport: bus"'
label var do10a_trantruc `"Modes of transport: truck"'
label var do10a_trancar  `"Modes of transport: car"'
label var do10a_tranmoto `"Modes of transport: motorcycle taxi"'
label var do10a_trananim `"Modes of transport: donkey/horse/mule"'
label var do10a_tranoth  `"Modes of transport: other"'
label var do10a_hazlands `"Natural hazards: landslides"'
label var do10a_hazsinkh `"Natural hazards: sinkhole"'
label var do10a_hazrocks `"Natural hazards: rock slides"'
label var do10a_hazffire `"Forest fires"'
label var do10a_polstagw `"Pollution: stagnant water"'
label var do10a_polwaste `"Pollution: waste"'
label var do10a_polfarm  `"Pollution: sty"'
label var do10a_polsmoke `"Pollution: smoke or gas from factory"'
label var do10a_polfwast `"Pollution: factory waste"'
label var do10a_polgasp  `"Pollution: gas plant"'
label var do10a_polfuel  `"Pollution: fuel pump"'
label var do10a_polchemp `"Pollution: chemical plant"'
label var do10a_polvnois `"Pollution: vehicle noise"'
label var do10a_polfnois `"Pollution: factory noise"'
label var do10a_polpwrp  `"Pollution: power plant"'
label var do10a_polmusic `"Pollution: loud music"'
label var do10a_poloth   `"Pollution: other"'
label var do10a_dlriver  `"Dwelling location: river or stream"'
label var do10a_dlcanal  `"Dwelling location: canal"'
label var do10a_dlmount  `"Dwelling location: mountainside"'
label var do10a_dlhills  `"Dwelling location: hillside"'
label var do10a_dlseaf   `"Dwelling location: seafront"'
label var do10a_dlbeach  `"Dwelling location: beach"'
label var do10a_dllake   `"Dwelling location: lake or reservoir"'
label var do10a_dlmine   `"Dwelling location: near mine"'
label var do10a_dlrisk   `"Dwelling location: other location of risk"'
label var do10a_nathurr  `"Natural disasters: hurricane"'
label var do10a_nattordo `"Natural disasters: tornado"'
label var do10a_natstorm `"Natural disasters: storm"'
label var do10a_natflood `"Natural disasters: floods"'
label var do10a_nattorn  `"Natural disasters: torrential rains"'
label var do10a_nattorn  `"Natural disasters: torrential rains"'
label var do10a_natxcold `"Natural disasters: extreme cold"'
label var do10a_natxheat `"Natural disasters: extreme heat"'
label var do10a_nattsun  `"Natural disasters: tsunami"'
label var do10a_natdrght `"Natural disasters: drought"'
label var do10a_natlands `"Natural disasters: landslide"'
label var do10a_natsinkh `"Natural disasters: sinkhole"'
label var do10a_natfire  `"Natural disasters: fire"'
label var do10a_nateartq `"Natural disasters: earthquake"'
label var do10a_natoth   `"Natural disasters: other"'
label var do10a_cdsschl  `"Civil defense shelters: school"'
label var do10a_cdschrch `"Civil defense shelters: church"'
label var do10a_cdscomhl `"Civil defense shelters: community hall"'
label var do10a_cdssport `"Civil defense shelters: sports center"'
label var do10a_cdsoth   `"Civil defense shelter: other"'
label var do10a_disthosp `"Distance: nearest hospital"'
label var do10a_distclnc `"Distance: nearest clinic"'
label var do10a_distpsch `"Distance: nearest primary school"'
label var do10a_disthsch `"Distance: nearest high school"'
label var do10a_distphrm `"Distance: nearest pharmacy"'
label var do10a_distmrkt `"Distance: nearest supermarket"'
label var do10a_stove    `"Stove"'
label var do10a_stove    `"Stove"'
label var do10a_refrig   `"Refrigerator"'
label var do10a_washer   `"Washing machine"'
label var do10a_tv       `"Television"'
label var do10a_radio    `"Radio/stereo"'
label var do10a_cistern  `"Cistern"'
label var do10a_computer `"Computer"'
label var do10a_convert  `"Converter"'
label var do10a_genertr  `"Generator"'
label var do10a_phone    `"Landline"'
label var do10a_cellph   `"Cellphone"'
label var do10a_aircon   `"Air conditioning"'
label var do10a_motor    `"Motorcycle"'
label var do10a_auto     `"Car"'
label var do10a_tenancy  `"Tenancy"'
label var do10a_bedrooms `"Number bedrooms in household"'
label var do10a_toilet   `"Toilet facility"'
label var do10a_toilshar `"Shared toilet"'
label var do10a_waste    `"Waste removal"'
label var do10a_fuelck   `"Cooking fuel"'
label var do10a_light    `"Type of lighting"'
label var do10a_death09  `"Death of household member in 2009"'
label var do10a_ag12mo   `"Sown land or harvest in last 12 months"'
label var do10a_animals  `"Animals for household consumption or sale"'
label var do10a_nbnotinc `"Newborn or child not included"'
label var do10a_absent   `"Absent resident"'
label var do10a_typehh   `"Type of household"'
label var do10a_overcrwd `"Overcrowding"'
label var do10a_sanitg   `"Household sanitation grade"'
label var do10a_segrp    `"Socioeconomic group"'
label var do10a_sexhd    `"Sex of head of household"'
label var do10a_agehd    `"Age of head of household"'
label var do10a_yrschhd  `"Years of school of head of household"'
label var do10a_landplnt `"Planted land"'
label var do10a_landharv `"Harvested land"'
label var do10a_cattle   `"Cattle"'
label var do10a_sheepgt  `"Sheep and goats"'
label var do10a_ducks    `"Ducks, turkey, geese"'
label var do10a_chickens `"Chickens"'
label var do10a_swine    `"Swine"'
label var do10a_bees     `"Beehives"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var do10a_pernum   `"Person number (within household)"'
label var do10a_relate   `"Relationship to head of household"'
label var do10a_sex      `"Sex"'
label var do10a_birthmo  `"Month of birth"'
label var do10a_birthyr  `"Year of birth"'
label var do10a_age      `"Age"'
label var do10a_bplloc   `"Place of birth"'
label var do10a_bplprov  `"Province of birth"'
label var do10a_bplmuni  `"Municipality of birth"'
label var do10a_bplctry  `"Country of birth"'
label var do10a_arryr    `"Year of arrival in country"'
label var do10a_blind    `"Permanent difficulty seeing"'
label var do10a_deaf     `"Permanent difficulty hearing"'
label var do10a_dismob   `"Permanent difficulty walking or climbing stairs"'
label var do10a_disarms  `"Permanent difficulty moving one or both arms"'
label var do10a_dislegs  `"Permanent difficulty moving one or both legs"'
label var do10a_disconc  `"Permanent difficulty remembering or concentrating"'
label var do10a_disspk   `"Permanent difficulty speaking"'
label var do10a_mute     `"Mute"'
label var do10a_dismntl  `"Mental problems"'
label var do10a_amplegs  `"Missing one or both legs"'
label var do10a_amparms  `"Missing one or both arms"'
label var do10a_lit      `"Can read and write"'
label var do10a_school   `"Attended/attending school"'
label var do10a_edlevel  `"Highest level of school attended"'
label var do10a_edyear   `"Last year of primary or secondary school completed"'
label var do10a_edattan  `"Highest level and year of schooling completed"'
label var do10a_field5   `"Field of study"'
label var do10a_grad     `"Graduated from university course"'
label var do10a_univyrs  `"Total number of years of university study"'
label var do10a_res5yr   `"Place of residence 5 years ago"'
label var do10a_res5yr   `"Place of residence 5 years ago"'
label var do10a_prov5yr  `"Province of residence 5 years ago"'
label var do10a_muni5yr  `"Municipality of residence 5 years ago"'
label var do10a_ctry5yr  `"Country of residence 5 years ago"'
label var do10a_paidlwk  `"Any paid work past week"'
label var do10a_hrpdlw   `"Any activity done for at least one hour for which received payment or profit pas"'
label var do10a_unpdlw   `"Helped a relative or a non-relative without payment or profit"'
label var do10a_activity `"Main activity of person not in work"'
label var do10a_canwork  `"Available for work during previous week"'
label var do10a_occ      `"Occupation"'
label var do10a_classwk  `"Professional status"'
label var do10a_ind      `"Main activity of business"'
label var do10a_marst    `"Marital status"'
label var do10a_chbornf  `"Female children ever born"'
label var do10a_chbornm  `"Male children ever born"'
label var do10a_nobirth  `"No live births"'
label var do10a_chsurvf  `"Female children surviving"'
label var do10a_chsurvm  `"Male children surviving"'
label var do10a_nochsurv `"No children surviving"'
label var do10a_lchmo    `"Month of birth of last child born alive"'
label var do10a_lchyr    `"Year of birth of last child born alive"'
label var do10a_lcsurv   `"Survival of last child born"'
label var do10a_lchaged  `"Age at death of last child born"'
label var do10a_age5yr   `"Five-year age groups"'
label var do10a_age5alt  `"Five-year age groups (0 is a unique group)"'
label var do10a_age10    `"Age deciles"'
label var do10a_agegrp   `"Large age groups"'
label var do10a_yrstudyc `"Calculated years of study"'
label var do10a_field    `"Field of study, 3 digits"'
label var do10a_occ1     `"Occupation, 1 digit"'
label var do10a_ind1     `"Industry, 1 digit"'
label var do10a_empstat  `"Economic activity of individual"'
label var do10a_chborn   `"Children ever born"'
label var do10a_chsurv   `"Children surviving"'
label var do10a_univfld  `"Field of study, 2 digits"'

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

label define subsamp_lbl 00 `"1st 1% subsample"'
label define subsamp_lbl 01 `"2nd 1% subsample"', add
label define subsamp_lbl 02 `"3rd 1% subsample"', add
label define subsamp_lbl 03 `"4th 1% subsample"', add
label define subsamp_lbl 04 `"5th 1% subsample"', add
label define subsamp_lbl 05 `"6th 1% subsample"', add
label define subsamp_lbl 06 `"7th 1% subsample"', add
label define subsamp_lbl 07 `"8th 1% subsample"', add
label define subsamp_lbl 08 `"9th 1% subsample"', add
label define subsamp_lbl 09 `"10th 1% subsample"', add
label define subsamp_lbl 10 `"11th 1% subsample"', add
label define subsamp_lbl 11 `"12th 1% subsample"', add
label define subsamp_lbl 12 `"13th 1% subsample"', add
label define subsamp_lbl 13 `"14th 1% subsample"', add
label define subsamp_lbl 14 `"15th 1% subsample"', add
label define subsamp_lbl 15 `"16th 1% subsample"', add
label define subsamp_lbl 16 `"17th 1% subsample"', add
label define subsamp_lbl 17 `"18th 1% subsample"', add
label define subsamp_lbl 18 `"19th 1% subsample"', add
label define subsamp_lbl 19 `"20th 1% subsample"', add
label define subsamp_lbl 20 `"21st 1% subsample"', add
label define subsamp_lbl 21 `"22nd 1% subsample"', add
label define subsamp_lbl 22 `"23rd 1% subsample"', add
label define subsamp_lbl 23 `"24th 1% subsample"', add
label define subsamp_lbl 24 `"25th 1% subsample"', add
label define subsamp_lbl 25 `"26th 1% subsample"', add
label define subsamp_lbl 26 `"27th 1% subsample"', add
label define subsamp_lbl 27 `"28th 1% subsample"', add
label define subsamp_lbl 28 `"29th 1% subsample"', add
label define subsamp_lbl 29 `"30th 1% subsample"', add
label define subsamp_lbl 30 `"31st 1% subsample"', add
label define subsamp_lbl 31 `"32nd 1% subsample"', add
label define subsamp_lbl 32 `"33rd 1% subsample"', add
label define subsamp_lbl 33 `"34th 1% subsample"', add
label define subsamp_lbl 34 `"35th 1% subsample"', add
label define subsamp_lbl 35 `"36th 1% subsample"', add
label define subsamp_lbl 36 `"37th 1% subsample"', add
label define subsamp_lbl 37 `"38th 1% subsample"', add
label define subsamp_lbl 38 `"39th 1% subsample"', add
label define subsamp_lbl 39 `"40th 1% subsample"', add
label define subsamp_lbl 40 `"41st 1% subsample"', add
label define subsamp_lbl 41 `"42nd 1% subsample"', add
label define subsamp_lbl 42 `"43rd 1% subsample"', add
label define subsamp_lbl 43 `"44th 1% subsample"', add
label define subsamp_lbl 44 `"45th 1% subsample"', add
label define subsamp_lbl 45 `"46th 1% subsample"', add
label define subsamp_lbl 46 `"47th 1% subsample"', add
label define subsamp_lbl 47 `"48th 1% subsample"', add
label define subsamp_lbl 48 `"49th 1% subsample"', add
label define subsamp_lbl 49 `"50th 1% subsample"', add
label define subsamp_lbl 50 `"51st 1% subsample"', add
label define subsamp_lbl 51 `"52nd 1% subsample"', add
label define subsamp_lbl 52 `"53rd 1% subsample"', add
label define subsamp_lbl 53 `"54th 1% subsample"', add
label define subsamp_lbl 54 `"55th 1% subsample"', add
label define subsamp_lbl 55 `"56th 1% subsample"', add
label define subsamp_lbl 56 `"57th 1% subsample"', add
label define subsamp_lbl 57 `"58th 1% subsample"', add
label define subsamp_lbl 58 `"59th 1% subsample"', add
label define subsamp_lbl 59 `"60th 1% subsample"', add
label define subsamp_lbl 60 `"61st 1% subsample"', add
label define subsamp_lbl 61 `"62nd 1% subsample"', add
label define subsamp_lbl 62 `"63rd 1% subsample"', add
label define subsamp_lbl 63 `"64th 1% subsample"', add
label define subsamp_lbl 64 `"65th 1% subsample"', add
label define subsamp_lbl 65 `"66th 1% subsample"', add
label define subsamp_lbl 66 `"67th 1% subsample"', add
label define subsamp_lbl 67 `"68th 1% subsample"', add
label define subsamp_lbl 68 `"69th 1% subsample"', add
label define subsamp_lbl 69 `"70th 1% subsample"', add
label define subsamp_lbl 70 `"71st 1% subsample"', add
label define subsamp_lbl 71 `"72nd 1% subsample"', add
label define subsamp_lbl 72 `"73rd 1% subsample"', add
label define subsamp_lbl 73 `"74th 1% subsample"', add
label define subsamp_lbl 74 `"75th 1% subsample"', add
label define subsamp_lbl 75 `"76th 1% subsample"', add
label define subsamp_lbl 76 `"77th 1% subsample"', add
label define subsamp_lbl 77 `"78th 1% subsample"', add
label define subsamp_lbl 78 `"79th 1% subsample"', add
label define subsamp_lbl 79 `"80th 1% subsample"', add
label define subsamp_lbl 80 `"81st 1% subsample"', add
label define subsamp_lbl 81 `"82nd 1% subsample"', add
label define subsamp_lbl 82 `"83rd 1% subsample"', add
label define subsamp_lbl 83 `"84th 1% subsample"', add
label define subsamp_lbl 84 `"85th 1% subsample"', add
label define subsamp_lbl 85 `"86th 1% subsample"', add
label define subsamp_lbl 86 `"87th 1% subsample"', add
label define subsamp_lbl 87 `"88th 1% subsample"', add
label define subsamp_lbl 88 `"89th 1% subsample"', add
label define subsamp_lbl 89 `"90th 1% subsample"', add
label define subsamp_lbl 90 `"91st 1% subsample"', add
label define subsamp_lbl 91 `"92nd 1% subsample"', add
label define subsamp_lbl 92 `"93rd 1% subsample"', add
label define subsamp_lbl 93 `"94th 1% subsample"', add
label define subsamp_lbl 94 `"95th 1% subsample"', add
label define subsamp_lbl 95 `"96th 1% subsample"', add
label define subsamp_lbl 96 `"97th 1% subsample"', add
label define subsamp_lbl 97 `"98th 1% subsample"', add
label define subsamp_lbl 98 `"99th 1% subsample"', add
label define subsamp_lbl 99 `"100th 1% subsample"', add
label values subsamp subsamp_lbl

label define gq_lbl 00 `"Vacant"'
label define gq_lbl 10 `"Households"', add
label define gq_lbl 20 `"Group quarters, n.s."', add
label define gq_lbl 21 `"Institutions"', add
label define gq_lbl 22 `"Other group quarters"', add
label define gq_lbl 29 `"1-person unit created by splitting large household"', add
label define gq_lbl 99 `"Unknown/group quarters not identified"', add
label values gq gq_lbl

label define unrel_lbl 0 `"0"'
label define unrel_lbl 1 `"1"', add
label define unrel_lbl 2 `"2"', add
label define unrel_lbl 3 `"3"', add
label define unrel_lbl 4 `"4"', add
label define unrel_lbl 5 `"5"', add
label define unrel_lbl 6 `"6"', add
label define unrel_lbl 7 `"7"', add
label define unrel_lbl 8 `"8"', add
label define unrel_lbl 9 `"9+"', add
label values unrel unrel_lbl

label define urban_lbl 0 `"NIU (not in universe)"'
label define urban_lbl 1 `"Rural"', add
label define urban_lbl 2 `"Urban"', add
label define urban_lbl 9 `"Unknown"', add
label values urban urban_lbl

label define regionw_lbl 11 `"Eastern Africa"'
label define regionw_lbl 12 `"Middle Africa"', add
label define regionw_lbl 13 `"Northern Africa"', add
label define regionw_lbl 14 `"Southern Africa"', add
label define regionw_lbl 15 `"Western Africa"', add
label define regionw_lbl 21 `"Caribbean"', add
label define regionw_lbl 22 `"Central America"', add
label define regionw_lbl 23 `"North America"', add
label define regionw_lbl 24 `"South America"', add
label define regionw_lbl 31 `"Central Asia"', add
label define regionw_lbl 32 `"Eastern Asia"', add
label define regionw_lbl 33 `"Southern Asia"', add
label define regionw_lbl 34 `"South-Eastern Asia"', add
label define regionw_lbl 35 `"Western Asia"', add
label define regionw_lbl 41 `"Eastern Europe"', add
label define regionw_lbl 42 `"Northern Europe"', add
label define regionw_lbl 43 `"Southern Europe"', add
label define regionw_lbl 44 `"Western Europe"', add
label define regionw_lbl 51 `"Australia and New Zealand"', add
label define regionw_lbl 52 `"Melanesia"', add
label define regionw_lbl 53 `"Micronesia"', add
label define regionw_lbl 54 `"Polynesia"', add
label values regionw regionw_lbl

label define geolev1_lbl 032002 `"City of Buenos Aires [Province: Argentina]"'
label define geolev1_lbl 032006 `"Buenos Aires province [Province: Argentina]"', add
label define geolev1_lbl 032010 `"Catamarca [Province: Argentina]"', add
label define geolev1_lbl 032014 `"Córdoba [Province: Argentina]"', add
label define geolev1_lbl 032018 `"Corrientes [Province: Argentina]"', add
label define geolev1_lbl 032022 `"Chaco [Province: Argentina]"', add
label define geolev1_lbl 032026 `"Chubut [Province: Argentina]"', add
label define geolev1_lbl 032030 `"Entre Ríos [Province: Argentina]"', add
label define geolev1_lbl 032034 `"Formosa [Province: Argentina]"', add
label define geolev1_lbl 032038 `"Jujuy [Province: Argentina]"', add
label define geolev1_lbl 032042 `"La Pampa [Province: Argentina]"', add
label define geolev1_lbl 032046 `"La Rioja [Province: Argentina]"', add
label define geolev1_lbl 032050 `"Mendoza [Province: Argentina]"', add
label define geolev1_lbl 032054 `"Misiones [Province: Argentina]"', add
label define geolev1_lbl 032058 `"Neuquén [Province: Argentina]"', add
label define geolev1_lbl 032062 `"Río Negro [Province: Argentina]"', add
label define geolev1_lbl 032066 `"Salta [Province: Argentina]"', add
label define geolev1_lbl 032070 `"San Juan [Province: Argentina]"', add
label define geolev1_lbl 032074 `"San Luis [Province: Argentina]"', add
label define geolev1_lbl 032078 `"Santa Cruz [Province: Argentina]"', add
label define geolev1_lbl 032082 `"Santa Fe [Province: Argentina]"', add
label define geolev1_lbl 032086 `"Santiago del Estero [Province: Argentina]"', add
label define geolev1_lbl 032090 `"Tucumán [Province: Argentina]"', add
label define geolev1_lbl 032094 `"Tierra del Fuego [Province: Argentina]"', add
label define geolev1_lbl 032099 `"Unknown [Province: Argentina]"', add
label define geolev1_lbl 051011 `"Yerevan [Province: Armenia]"', add
label define geolev1_lbl 051001 `"Aragatsotn [Province: Armenia]"', add
label define geolev1_lbl 051002 `"Ararat [Province: Armenia]"', add
label define geolev1_lbl 051003 `"Armavir [Province: Armenia]"', add
label define geolev1_lbl 051004 `"Gegharkunik [Province: Armenia]"', add
label define geolev1_lbl 051006 `"Lori [Province: Armenia]"', add
label define geolev1_lbl 051005 `"Kotayk [Province: Armenia]"', add
label define geolev1_lbl 051007 `"Shirak [Province: Armenia]"', add
label define geolev1_lbl 051008 `"Syunik [Province: Armenia]"', add
label define geolev1_lbl 051010 `"Yoyots Dzor [Province: Armenia]"', add
label define geolev1_lbl 051009 `"Tavush [Province: Armenia]"', add
label define geolev1_lbl 040011 `"Burgenland [State: Austria]"', add
label define geolev1_lbl 040012 `"Niederösterreich [State: Austria]"', add
label define geolev1_lbl 040013 `"Wien [State: Austria]"', add
label define geolev1_lbl 040021 `"Kärnten [State: Austria]"', add
label define geolev1_lbl 040022 `"Steiermark [State: Austria]"', add
label define geolev1_lbl 040031 `"Oberösterreich [State: Austria]"', add
label define geolev1_lbl 040032 `"Salzburg [State: Austria]"', add
label define geolev1_lbl 040033 `"Tirol [State: Austria]"', add
label define geolev1_lbl 040034 `"Vorarlberg [State: Austria]"', add
label define geolev1_lbl 050010 `"Barisal [Division, Bangladesh]"', add
label define geolev1_lbl 050020 `"Chittagong [Division, Bangladesh]"', add
label define geolev1_lbl 050030 `"Dhaka [Division, Bangladesh]"', add
label define geolev1_lbl 050040 `"Khulna [Division, Bangladesh]"', add
label define geolev1_lbl 050050 `"Rajshahi and Rangpur [Division, Bangladesh]"', add
label define geolev1_lbl 050060 `"Sylhet [Division, Bangladesh]"', add
label define geolev1_lbl 112001 `"Brest [Region: Belarus]"', add
label define geolev1_lbl 112002 `"Vitebsk [Region: Belarus]"', add
label define geolev1_lbl 112003 `"Gomel [Region: Belarus]"', add
label define geolev1_lbl 112004 `"Grodno [Region: Belarus]"', add
label define geolev1_lbl 112006 `"Minsk [Region: Belarus]"', add
label define geolev1_lbl 112007 `"Mogilev [Region: Belarus]"', add
label define geolev1_lbl 068001 `"Chuquisaca [Department: Bolivia]"', add
label define geolev1_lbl 068002 `"La Paz [Department: Bolivia]"', add
label define geolev1_lbl 068003 `"Cochabamba [Department: Bolivia]"', add
label define geolev1_lbl 068004 `"Oruro [Department: Bolivia]"', add
label define geolev1_lbl 068005 `"Potosí [Department: Bolivia]"', add
label define geolev1_lbl 068006 `"Tarija [Department: Bolivia]"', add
label define geolev1_lbl 068007 `"Santa Cruz [Department: Bolivia]"', add
label define geolev1_lbl 068008 `"Beni [Department: Bolivia]"', add
label define geolev1_lbl 068009 `"Pando [Department: Bolivia]"', add
label define geolev1_lbl 076011 `"Rondônia [State: Brazil]"', add
label define geolev1_lbl 076012 `"Acre [State: Brazil]"', add
label define geolev1_lbl 076013 `"Amazonas [State: Brazil]"', add
label define geolev1_lbl 076014 `"Roraima [State: Brazil]"', add
label define geolev1_lbl 076015 `"Pará [State: Brazil]"', add
label define geolev1_lbl 076016 `"Amapá [State: Brazil]"', add
label define geolev1_lbl 076021 `"Maranhão [State: Brazil]"', add
label define geolev1_lbl 076022 `"Piauí [State: Brazil]"', add
label define geolev1_lbl 076023 `"Ceará [State: Brazil]"', add
label define geolev1_lbl 076024 `"Rio Grande do Norte [State: Brazil]"', add
label define geolev1_lbl 076025 `"Paraíba [State: Brazil]"', add
label define geolev1_lbl 076026 `"Pernambuco [State: Brazil]"', add
label define geolev1_lbl 076027 `"Alagoas [State: Brazil]"', add
label define geolev1_lbl 076028 `"Sergipe [State: Brazil]"', add
label define geolev1_lbl 076029 `"Bahia [State: Brazil]"', add
label define geolev1_lbl 076031 `"Minas Gerais [State: Brazil]"', add
label define geolev1_lbl 076032 `"Espírito Santo [State: Brazil]"', add
label define geolev1_lbl 076033 `"Rio de Janeiro [State: Brazil]"', add
label define geolev1_lbl 076035 `"São Paulo [State: Brazil]"', add
label define geolev1_lbl 076041 `"Paraná [State: Brazil]"', add
label define geolev1_lbl 076042 `"Santa Catarina [State: Brazil]"', add
label define geolev1_lbl 076043 `"Rio Grande do Sul [State: Brazil]"', add
label define geolev1_lbl 076051 `"Mato Grosso and Mato Grosso do Sul [State: Brazil]"', add
label define geolev1_lbl 076052 `"Goiás and Tocantins  [State: Brazil]"', add
label define geolev1_lbl 076053 `"Distrito Federal [State: Brazil]"', add
label define geolev1_lbl 854003 `"Boucle du Mouhoun, Cascades, Centre, Centre-Ouest, Centre-Sud, Hauts-Bassins, Plateau Central, Sud-Ouest, Centre-Est, Centre-Nord, Est [Region: Burkina Faso]"', add
label define geolev1_lbl 854010 `"Nord [Region: Burkina Faso]"', add
label define geolev1_lbl 854012 `"Sahel [Region: Burkina Faso]"', add
label define geolev1_lbl 116001 `"Banteay Mean Chey [Province: Cambodia]"', add
label define geolev1_lbl 116002 `"Bat Dambang [Province: Cambodia]"', add
label define geolev1_lbl 116003 `"Kampong Cham [Province: Cambodia]"', add
label define geolev1_lbl 116004 `"Kampong Chhnang [Province: Cambodia]"', add
label define geolev1_lbl 116005 `"Kampong Spueu [Province: Cambodia]"', add
label define geolev1_lbl 116006 `"Kampong Thum [Province: Cambodia]"', add
label define geolev1_lbl 116007 `"Kampot [Province: Cambodia]"', add
label define geolev1_lbl 116008 `"Kandal [Province: Cambodia]"', add
label define geolev1_lbl 116009 `"Kaoh Kong [Province: Cambodia]"', add
label define geolev1_lbl 116010 `"Kracheh [Province: Cambodia]"', add
label define geolev1_lbl 116011 `"Mondol Kiri [Province: Cambodia]"', add
label define geolev1_lbl 116012 `"Phnom Penh [Province: Cambodia]"', add
label define geolev1_lbl 116013 `"Preah Vihear [Province: Cambodia]"', add
label define geolev1_lbl 116014 `"Prey Veaeng [Province: Cambodia]"', add
label define geolev1_lbl 116015 `"Pousat [Province: Cambodia]"', add
label define geolev1_lbl 116016 `"Rotanak Kiri [Province: Cambodia]"', add
label define geolev1_lbl 116017 `"Siem Reab [Province: Cambodia]"', add
label define geolev1_lbl 116018 `"Krong Preah Sihanouk [Province: Cambodia]"', add
label define geolev1_lbl 116019 `"Stueng Traeng [Province: Cambodia]"', add
label define geolev1_lbl 116020 `"Svay Rieng [Province: Cambodia]"', add
label define geolev1_lbl 116021 `"Takaev [Province: Cambodia]"', add
label define geolev1_lbl 116022 `"Otdar Mean Chey [Province: Cambodia]"', add
label define geolev1_lbl 116023 `"Krong Kaeb [Province: Cambodia]"', add
label define geolev1_lbl 116024 `"Krong Pailin [Province: Cambodia]"', add
label define geolev1_lbl 120002 `"Centre and Sud [Province: Cameroon]"', add
label define geolev1_lbl 120003 `"Est [Province: Cameroon]"', add
label define geolev1_lbl 120004 `"Nord,  Adamoua , and Extrème Nord [Province: Cameroon]"', add
label define geolev1_lbl 120005 `"Littoral [Province: Cameroon]"', add
label define geolev1_lbl 120007 `"Nord Ouest [Province: Cameroon]"', add
label define geolev1_lbl 120008 `"Ouest [Province: Cameroon]"', add
label define geolev1_lbl 120010 `"Sud Ouest [Province: Cameroon]"', add
label define geolev1_lbl 124010 `"Newfoundland and Labrador [Province: Canada]"', add
label define geolev1_lbl 124011 `"Prince Edward Island, Yukon, Northwest Territories, and Nunavut [Province: Canada]"', add
label define geolev1_lbl 124012 `"Nova Scotia [Province: Canada]"', add
label define geolev1_lbl 124013 `"New Brunswick [Province: Canada]"', add
label define geolev1_lbl 124024 `"Quebec [Province: Canada]"', add
label define geolev1_lbl 124035 `"Ontario [Province: Canada]"', add
label define geolev1_lbl 124046 `"Manitoba [Province: Canada]"', add
label define geolev1_lbl 124047 `"Saskatchewan [Province: Canada]"', add
label define geolev1_lbl 124048 `"Alberta [Province: Canada]"', add
label define geolev1_lbl 124059 `"British Columbia [Province: Canada]"', add
label define geolev1_lbl 152002 `"Antofagasta and Tarapacá [Region: Chile]"', add
label define geolev1_lbl 152004 `"Atacama and Coquimbo [Region: Chile]"', add
label define geolev1_lbl 152007 `"Del Maule  [Region: Chile]"', add
label define geolev1_lbl 152008 `"Del Biobio [Region: Chile]"', add
label define geolev1_lbl 152009 `"La Araucanía [Region: Chile]"', add
label define geolev1_lbl 152010 `"Aysen del Gral Carlos Ibáñez del Campo and Los Lagos [Region: Chile]"', add
label define geolev1_lbl 152012 `"Magallanes and La Antártica Chilena [Region: Chile]"', add
label define geolev1_lbl 152013 `"Libertador General Bernardo O"Higgins (La Alameda), Metropolitana de Santiago, and Valparaiso  [Region: Chile]"', add
label define geolev1_lbl 152099 `"Unknown  [Region: Chile]"', add
label define geolev1_lbl 156011 `"Beijing (municipality) [Province: China]"', add
label define geolev1_lbl 156012 `"Tianjin (municipality) [Province: China]"', add
label define geolev1_lbl 156013 `"Hebei [Province: China]"', add
label define geolev1_lbl 156014 `"Shanxi [Province: China]"', add
label define geolev1_lbl 156015 `"Inner Mongolia [Province: China]"', add
label define geolev1_lbl 156021 `"Liaoning [Province: China]"', add
label define geolev1_lbl 156022 `"Jilin [Province: China]"', add
label define geolev1_lbl 156023 `"Heilongjiang [Province: China]"', add
label define geolev1_lbl 156031 `"Shanghai (municipality) [Province: China]"', add
label define geolev1_lbl 156032 `"Jiangsu [Province: China]"', add
label define geolev1_lbl 156033 `"Zhejiang [Province: China]"', add
label define geolev1_lbl 156034 `"Anhui [Province: China]"', add
label define geolev1_lbl 156035 `"Fujian [Province: China]"', add
label define geolev1_lbl 156036 `"Jiangxi [Province: China]"', add
label define geolev1_lbl 156037 `"Shangdong [Province: China]"', add
label define geolev1_lbl 156041 `"Henan [Province: China]"', add
label define geolev1_lbl 156042 `"Hubei [Province: China]"', add
label define geolev1_lbl 156043 `"Hunan [Province: China]"', add
label define geolev1_lbl 156044 `"Guangdong and Hainan [Province: China]"', add
label define geolev1_lbl 156045 `"Guangxi [Province: China]"', add
label define geolev1_lbl 156051 `"Sichuan [Province: China]"', add
label define geolev1_lbl 156052 `"Guizhou [Province: China]"', add
label define geolev1_lbl 156053 `"Yunnan [Province: China]"', add
label define geolev1_lbl 156054 `"Tibet [Province: China]"', add
label define geolev1_lbl 156061 `"Shaanxi [Province: China]"', add
label define geolev1_lbl 156062 `"Gansu [Province: China]"', add
label define geolev1_lbl 156063 `"Qinghai [Province: China]"', add
label define geolev1_lbl 156064 `"Ningxia [Province: China]"', add
label define geolev1_lbl 156065 `"Xinjiang [Province: China]"', add
label define geolev1_lbl 170005 `"Antioquia [Department: Colombia]"', add
label define geolev1_lbl 170008 `"Atlántico [Department: Colombia]"', add
label define geolev1_lbl 170011 `"Bogotá [Department: Colombia]"', add
label define geolev1_lbl 170013 `"Bolivar and Sucre [Department: Colombia]"', add
label define geolev1_lbl 170015 `"Boyacá and Casanare [Department: Colombia]"', add
label define geolev1_lbl 170018 `"Caquetá [Department: Colombia]"', add
label define geolev1_lbl 170019 `"Cauca [Department: Colombia]"', add
label define geolev1_lbl 170023 `"Cordoba [Department: Colombia]"', add
label define geolev1_lbl 170025 `"Cundinamarca [Department: Colombia]"', add
label define geolev1_lbl 170027 `"Chocó [Department: Colombia]"', add
label define geolev1_lbl 170041 `"Huila [Department: Colombia]"', add
label define geolev1_lbl 170044 `"La Guajira [Department: Colombia]"', add
label define geolev1_lbl 170047 `"Cesar and Magdalena  [Department: Colombia]"', add
label define geolev1_lbl 170050 `"Meta and Vichada [Department: Colombia]"', add
label define geolev1_lbl 170052 `"Nariño [Department: Colombia]"', add
label define geolev1_lbl 170054 `"Norte Santander [Department: Colombia]"', add
label define geolev1_lbl 170066 `"Caldas, Quindio, and Risaralda [Department: Colombia]"', add
label define geolev1_lbl 170068 `"Santander [Department: Colombia]"', add
label define geolev1_lbl 170073 `"Tolima [Department: Colombia]"', add
label define geolev1_lbl 170076 `"Valle [Department: Colombia]"', add
label define geolev1_lbl 170081 `"Arauca [Department: Colombia]"', add
label define geolev1_lbl 170086 `"Putumayo [Department: Colombia]"', add
label define geolev1_lbl 170088 `"San Andrés [Department: Colombia]"', add
label define geolev1_lbl 170091 `"Amazonas [Department: Colombia]"', add
label define geolev1_lbl 170095 `"Guaviare, Vaupes, and Guaina [Department: Colombia]"', add
label define geolev1_lbl 188001 `"San José [Province: Costa Rica]"', add
label define geolev1_lbl 188002 `"Alajuela [Province: Costa Rica]"', add
label define geolev1_lbl 188003 `"Cartago [Province: Costa Rica]"', add
label define geolev1_lbl 188004 `"Heredia [Province: Costa Rica]"', add
label define geolev1_lbl 188005 `"Guanacaste [Province: Costa Rica]"', add
label define geolev1_lbl 188006 `"Puntarenas [Province: Costa Rica]"', add
label define geolev1_lbl 188007 `"Limón [Province: Costa Rica]"', add
label define geolev1_lbl 192001 `"Pinar del Rio [Province: Cuba]"', add
label define geolev1_lbl 192002 `"La Habana [Province: Cuba]"', add
label define geolev1_lbl 192003 `"Ciudad de la Habana [Province: Cuba]"', add
label define geolev1_lbl 192004 `"Matanzas [Province: Cuba]"', add
label define geolev1_lbl 192005 `"Villa Clara [Province: Cuba]"', add
label define geolev1_lbl 192006 `"Cienfuegos [Province: Cuba]"', add
label define geolev1_lbl 192007 `"Sancti Spiritus [Province: Cuba]"', add
label define geolev1_lbl 192008 `"Ciego de Avila [Province: Cuba]"', add
label define geolev1_lbl 192009 `"Camaguey [Province: Cuba]"', add
label define geolev1_lbl 192010 `"Las Tunas [Province: Cuba]"', add
label define geolev1_lbl 192011 `"Holguin [Province: Cuba]"', add
label define geolev1_lbl 192012 `"Granma [Province: Cuba]"', add
label define geolev1_lbl 192013 `"Santiago de Cuba [Province: Cuba]"', add
label define geolev1_lbl 192014 `"Guantanamo [Province: Cuba]"', add
label define geolev1_lbl 192099 `"Isla de la Juventud [Province: Cuba]"', add
label define geolev1_lbl 214001 `"Federal district and Santo Domingo [Province: Dominican Republic]"', add
label define geolev1_lbl 214002 `"Azua [Province: Dominican Republic]"', add
label define geolev1_lbl 214003 `"Baoruco [Province: Dominican Republic]"', add
label define geolev1_lbl 214004 `"Barahona [Province: Dominican Republic]"', add
label define geolev1_lbl 214005 `"Dajabón [Province: Dominican Republic]"', add
label define geolev1_lbl 214006 `"Duarte [Province: Dominican Republic]"', add
label define geolev1_lbl 214007 `"Elías Piña [Province: Dominican Republic]"', add
label define geolev1_lbl 214008 `"El Seibo and Hato Mayor [Province: Dominican Republic]"', add
label define geolev1_lbl 214009 `"Espaillat [Province: Dominican Republic]"', add
label define geolev1_lbl 214010 `"Independencia [Province: Dominican Republic]"', add
label define geolev1_lbl 214011 `"La Altagracia and La Romana [Province: Dominican Republic]"', add
label define geolev1_lbl 214013 `"La Vega and Monseñor Nouel [Province: Dominican Republic]"', add
label define geolev1_lbl 214014 `"María Trinidad Sánchez and Samaná [Province: Dominican Republic]"', add
label define geolev1_lbl 214015 `"Monte Cristi [Province: Dominican Republic]"', add
label define geolev1_lbl 214016 `"Pedernales [Province: Dominican Republic]"', add
label define geolev1_lbl 214017 `"Peravia and San José de Ocoa [Province: Dominican Republic]"', add
label define geolev1_lbl 214018 `"Puerto Plata [Province: Dominican Republic]"', add
label define geolev1_lbl 214019 `"Hermanas Mirabal [Province: Dominican Republic]"', add
label define geolev1_lbl 214021 `"San Cristóbal and Monte Plata [Province: Dominican Republic]"', add
label define geolev1_lbl 214022 `"San Juan [Province: Dominican Republic]"', add
label define geolev1_lbl 214023 `"San Pedro de Macorís [Province: Dominican Republic]"', add
label define geolev1_lbl 214024 `"Sánchez Ramírez [Province: Dominican Republic]"', add
label define geolev1_lbl 214025 `"Santiago [Province: Dominican Republic]"', add
label define geolev1_lbl 214026 `"Santiago Rodríguez [Province: Dominican Republic]"', add
label define geolev1_lbl 214027 `"Valverde [Province: Dominican Republic]"', add
label define geolev1_lbl 218001 `"Azuay [Province: Ecuador]"', add
label define geolev1_lbl 218002 `"Bolivar [Province: Ecuador]"', add
label define geolev1_lbl 218003 `"Cañar [Province: Ecuador]"', add
label define geolev1_lbl 218004 `"Carchi [Province: Ecuador]"', add
label define geolev1_lbl 218005 `"Cotopaxi [Province: Ecuador]"', add
label define geolev1_lbl 218006 `"Chimborazo [Province: Ecuador]"', add
label define geolev1_lbl 218007 `"El Oro [Province: Ecuador]"', add
label define geolev1_lbl 218008 `"Esmeraldas [Province: Ecuador]"', add
label define geolev1_lbl 218009 `"Guayas, Santa Elena, and Galapagos [Province: Ecuador]"', add
label define geolev1_lbl 218010 `"Imbabura [Province: Ecuador]"', add
label define geolev1_lbl 218011 `"Loja [Province: Ecuador]"', add
label define geolev1_lbl 218012 `"Los Ríos [Province: Ecuador]"', add
label define geolev1_lbl 218013 `"Manabí [Province: Ecuador]"', add
label define geolev1_lbl 218014 `"Morona Santiago [Province: Ecuador]"', add
label define geolev1_lbl 218016 `"Pastaza [Province: Ecuador]"', add
label define geolev1_lbl 218017 `"Pichincha and Santo Domingo de los Tsáchilas [Province: Ecuador]"', add
label define geolev1_lbl 218018 `"Tungurahua [Province: Ecuador]"', add
label define geolev1_lbl 218019 `"Zamora Chinchipe [Province: Ecuador]"', add
label define geolev1_lbl 218021 `"Napo, Orellana, and Sucumbios [Province: Ecuador]"', add
label define geolev1_lbl 218023 `"Disputed Zones [Province: Ecuador]"', add
label define geolev1_lbl 218099 `"Unknown [Province: Ecuador]"', add
label define geolev1_lbl 818001 `"Cairo [Governorate: Egypt]"', add
label define geolev1_lbl 818002 `"Alexandria [Governorate: Egypt]"', add
label define geolev1_lbl 818003 `"Port Said [Governorate: Egypt]"', add
label define geolev1_lbl 818004 `"Suez [Governorate: Egypt]"', add
label define geolev1_lbl 818011 `"Damietta [Governorate: Egypt]"', add
label define geolev1_lbl 818012 `"Dakahlia [Governorate: Egypt]"', add
label define geolev1_lbl 818013 `"Sharkia [Governorate: Egypt]"', add
label define geolev1_lbl 818014 `"Kaliobia [Governorate: Egypt]"', add
label define geolev1_lbl 818015 `"Kafr Sheikh [Governorate: Egypt]"', add
label define geolev1_lbl 818016 `"Gharbia [Governorate: Egypt]"', add
label define geolev1_lbl 818017 `"Menoufia [Governorate: Egypt]"', add
label define geolev1_lbl 818018 `"Behera [Governorate: Egypt]"', add
label define geolev1_lbl 818019 `"Ismailia [Governorate: Egypt]"', add
label define geolev1_lbl 818021 `"Giza [Governorate: Egypt]"', add
label define geolev1_lbl 818022 `"Bani Swif [Governorate: Egypt]"', add
label define geolev1_lbl 818023 `"Fayoum [Governorate: Egypt]"', add
label define geolev1_lbl 818024 `"Menia [Governorate: Egypt]"', add
label define geolev1_lbl 818025 `"Asiut [Governorate: Egypt]"', add
label define geolev1_lbl 818026 `"Sohag [Governorate: Egypt]"', add
label define geolev1_lbl 818027 `"Qena [Governorate: Egypt]"', add
label define geolev1_lbl 818028 `"Aswan [Governorate: Egypt]"', add
label define geolev1_lbl 818029 `"Luxor [Governorate: Egypt]"', add
label define geolev1_lbl 818031 `"Red Sea [Governorate: Egypt]"', add
label define geolev1_lbl 818032 `"New Valley [Governorate: Egypt]"', add
label define geolev1_lbl 818033 `"Marsa Matroh [Governorate: Egypt]"', add
label define geolev1_lbl 818034 `"North Sinai [Governorate: Egypt]"', add
label define geolev1_lbl 818035 `"South Sinai [Governorate: Egypt]"', add
label define geolev1_lbl 222001 `"Ahuachapán [Department: El Salvador]"', add
label define geolev1_lbl 222002 `"Santa Ana [Department: El Salvador]"', add
label define geolev1_lbl 222003 `"Sonsonate [Department: El Salvador]"', add
label define geolev1_lbl 222004 `"Chalatenango [Department: El Salvador]"', add
label define geolev1_lbl 222005 `"La Libertad [Department: El Salvador]"', add
label define geolev1_lbl 222006 `"San Salvador [Department: El Salvador]"', add
label define geolev1_lbl 222007 `"Cuscatlán [Department: El Salvador]"', add
label define geolev1_lbl 222008 `"La Paz [Department: El Salvador]"', add
label define geolev1_lbl 222009 `"Cabañas [Department: El Salvador]"', add
label define geolev1_lbl 222010 `"San Vicente [Department: El Salvador]"', add
label define geolev1_lbl 222011 `"Usulután [Department: El Salvador]"', add
label define geolev1_lbl 222012 `"San Miguel [Department: El Salvador]"', add
label define geolev1_lbl 222013 `"Morazán [Department: El Salvador]"', add
label define geolev1_lbl 222014 `"La Unión [Department: El Salvador]"', add
label define geolev1_lbl 242001 `"Ba [Province: Fiji]"', add
label define geolev1_lbl 242003 `"Bua and Cakaudrove [Province: Fiji]"', add
label define geolev1_lbl 242006 `"Kadavu, Lau, Lomaiviti, and Rotuma [Province: Fiji]"', add
label define geolev1_lbl 242007 `"Macuata [Province: Fiji]"', add
label define geolev1_lbl 242008 `"Nadroha [Province: Fiji]"', add
label define geolev1_lbl 242009 `"Naitasiri [Province: Fiji]"', add
label define geolev1_lbl 242011 `"Ra [Province: Fiji]"', add
label define geolev1_lbl 242012 `"Rewa [Province: Fiji]"', add
label define geolev1_lbl 242014 `"Serua and Namosi [Province: Fiji]"', add
label define geolev1_lbl 242015 `"Tailevu [Province: Fiji]"', add
label define geolev1_lbl 242099 `"Ships and unknown [Province: Fiji]"', add
label define geolev1_lbl 250001 `"Guadeloupe [Oversea Department, France]"', add
label define geolev1_lbl 250002 `"Martinique [Oversea Department, France]"', add
label define geolev1_lbl 250003 `"Guyane [Oversea Department, France]"', add
label define geolev1_lbl 250004 `"La Réunion [Oversea Department, France]"', add
label define geolev1_lbl 250011 `"Region d'Île de France [Region: France]"', add
label define geolev1_lbl 250021 `"Champagne-Ardenne [Region: France]"', add
label define geolev1_lbl 250022 `"Picardie [Region: France]"', add
label define geolev1_lbl 250023 `"Haute-Normandie [Region: France]"', add
label define geolev1_lbl 250024 `"Centre [Region: France]"', add
label define geolev1_lbl 250025 `"Basse-Normandie [Region: France]"', add
label define geolev1_lbl 250026 `"Bourgogne [Region: France]"', add
label define geolev1_lbl 250031 `"Nord-Pas-de-Calais [Region: France]"', add
label define geolev1_lbl 250041 `"Lorraine [Region: France]"', add
label define geolev1_lbl 250042 `"Alsace [Region: France]"', add
label define geolev1_lbl 250043 `"Franche-Comté [Region: France]"', add
label define geolev1_lbl 250052 `"Pays de la Loire [Region: France]"', add
label define geolev1_lbl 250053 `"Bretagne [Region: France]"', add
label define geolev1_lbl 250054 `"Poitou-Charentes [Region: France]"', add
label define geolev1_lbl 250072 `"Aquitaine [Region: France]"', add
label define geolev1_lbl 250073 `"Midi-Pyrénées [Region: France]"', add
label define geolev1_lbl 250074 `"Limousin [Region: France]"', add
label define geolev1_lbl 250082 `"Rhône-Alpes [Region: France]"', add
label define geolev1_lbl 250083 `"Auvergne [Region: France]"', add
label define geolev1_lbl 250091 `"Lanquedoc-Roussillon [Region: France]"', add
label define geolev1_lbl 250093 `"Provence-Alpes-Côte d'Azur [Region: France]"', add
label define geolev1_lbl 250094 `"Corse [Region: France]"', add
label define geolev1_lbl 276001 `"Schleswig-Holstein [State: Germany]"', add
label define geolev1_lbl 276002 `"Hamburg [State: Germany]"', add
label define geolev1_lbl 276003 `"Niedersachsen [State: Germany]"', add
label define geolev1_lbl 276004 `"Bremen [State: Germany]"', add
label define geolev1_lbl 276005 `"Nordrhein-Westfalen [State: Germany]"', add
label define geolev1_lbl 276006 `"Hessen [State: Germany]"', add
label define geolev1_lbl 276007 `"Rheinland-Pfalz [State: Germany]"', add
label define geolev1_lbl 276008 `"Baden-Württemberg [State: Germany]"', add
label define geolev1_lbl 276009 `"Bayern [State: Germany]"', add
label define geolev1_lbl 276010 `"Saarland [State: Germany]"', add
label define geolev1_lbl 276012 `"Brandenburg [State: Germany]"', add
label define geolev1_lbl 276013 `"Mecklenburg-West Pomerania [State: Germany]"', add
label define geolev1_lbl 276014 `"Saxony [State: Germany]"', add
label define geolev1_lbl 276015 `"Saxony-Anhalt [State: Germany]"', add
label define geolev1_lbl 276016 `"Thuringia [State: Germany]"', add
label define geolev1_lbl 276017 `"East Berlin [State: Germany]"', add
label define geolev1_lbl 276018 `"West Berlin [State: Germany]"', add
label define geolev1_lbl 276099 `"NIU (Not in universe) [State: Germany]"', add
label define geolev1_lbl 288001 `"Western [Region: Ghana]"', add
label define geolev1_lbl 288002 `"Central [Region: Ghana]"', add
label define geolev1_lbl 288003 `"Greater Accra [Region: Ghana]"', add
label define geolev1_lbl 288004 `"Volta [Region: Ghana]"', add
label define geolev1_lbl 288005 `"Eastern [Region: Ghana]"', add
label define geolev1_lbl 288006 `"Ashanti [Region: Ghana]"', add
label define geolev1_lbl 288007 `"Brong Ahafo [Region: Ghana]"', add
label define geolev1_lbl 288008 `"Northern [Region: Ghana]"', add
label define geolev1_lbl 288009 `"Upper East [Region: Ghana]"', add
label define geolev1_lbl 288010 `"Upper West [Region: Ghana]"', add
label define geolev1_lbl 300001 `"Etolia and Akarnania [Department: Greece]"', add
label define geolev1_lbl 300003 `"Viotia [Department: Greece]"', add
label define geolev1_lbl 300004 `"Evia [Department: Greece]"', add
label define geolev1_lbl 300005 `"Evrytania [Department: Greece]"', add
label define geolev1_lbl 300006 `"Fthiotida [Department: Greece]"', add
label define geolev1_lbl 300007 `"Fokida [Department: Greece]"', add
label define geolev1_lbl 300011 `"Argolida [Department: Greece]"', add
label define geolev1_lbl 300012 `"Arkadia [Department: Greece]"', add
label define geolev1_lbl 300013 `"Achaia [Department: Greece]"', add
label define geolev1_lbl 300014 `"Ilia [Department: Greece]"', add
label define geolev1_lbl 300015 `"Korinthia [Department: Greece]"', add
label define geolev1_lbl 300016 `"Lakonia [Department: Greece]"', add
label define geolev1_lbl 300017 `"Messinia [Department: Greece]"', add
label define geolev1_lbl 300021 `"Zakynthos [Department: Greece]"', add
label define geolev1_lbl 300022 `"Kerkyra [Department: Greece]"', add
label define geolev1_lbl 300023 `"Kefallinia [Department: Greece]"', add
label define geolev1_lbl 300024 `"Lefkada [Department: Greece]"', add
label define geolev1_lbl 300031 `"Arta [Department: Greece]"', add
label define geolev1_lbl 300032 `"Thesprotia [Department: Greece]"', add
label define geolev1_lbl 300033 `"Ioannina [Department: Greece]"', add
label define geolev1_lbl 300034 `"Preveza [Department: Greece]"', add
label define geolev1_lbl 300041 `"Karditsa [Department: Greece]"', add
label define geolev1_lbl 300042 `"Larissa [Department: Greece]"', add
label define geolev1_lbl 300043 `"Magnissia [Department: Greece]"', add
label define geolev1_lbl 300044 `"Trikala [Department: Greece]"', add
label define geolev1_lbl 300051 `"Grevena [Department: Greece]"', add
label define geolev1_lbl 300052 `"Drama [Department: Greece]"', add
label define geolev1_lbl 300053 `"Imathia [Department: Greece]"', add
label define geolev1_lbl 300054 `"Thessaloniki [Department: Greece]"', add
label define geolev1_lbl 300055 `"Kavala [Department: Greece]"', add
label define geolev1_lbl 300056 `"Kastoria [Department: Greece]"', add
label define geolev1_lbl 300057 `"Kilkis [Department: Greece]"', add
label define geolev1_lbl 300058 `"Kozani [Department: Greece]"', add
label define geolev1_lbl 300059 `"Pella [Department: Greece]"', add
label define geolev1_lbl 300061 `"Pieria [Department: Greece]"', add
label define geolev1_lbl 300062 `"Serres [Department: Greece]"', add
label define geolev1_lbl 300063 `"Florina [Department: Greece]"', add
label define geolev1_lbl 300064 `"Chalkidiki and Aghion Oros [Department: Greece]"', add
label define geolev1_lbl 300071 `"Evros [Department: Greece]"', add
label define geolev1_lbl 300072 `"Xanthi [Department: Greece]"', add
label define geolev1_lbl 300073 `"Rodopi [Department: Greece]"', add
label define geolev1_lbl 300081 `"Dodekanissos [Department: Greece]"', add
label define geolev1_lbl 300082 `"Kyklades [Department: Greece]"', add
label define geolev1_lbl 300083 `"Lesvos [Department: Greece]"', add
label define geolev1_lbl 300084 `"Samos [Department: Greece]"', add
label define geolev1_lbl 300085 `"Chios [Department: Greece]"', add
label define geolev1_lbl 300091 `"Iraklio [Department: Greece]"', add
label define geolev1_lbl 300092 `"Lassithi [Department: Greece]"', add
label define geolev1_lbl 300093 `"Rethymno [Department: Greece]"', add
label define geolev1_lbl 300094 `"Chania [Department: Greece]"', add
label define geolev1_lbl 300101 `"Prefecture of Athens [Department: Greece]"', add
label define geolev1_lbl 300102 `"Prefecture of East Attiki [Department: Greece]"', add
label define geolev1_lbl 300103 `"Prefecture of West Attiki [Department: Greece]"', add
label define geolev1_lbl 300104 `"Prefecture of Pireas [Department: Greece]"', add
label define geolev1_lbl 324001 `"Boké [Region: Guinea]"', add
label define geolev1_lbl 324002 `"Faranah [Region: Guinea]"', add
label define geolev1_lbl 324003 `"Kankan [Region: Guinea]"', add
label define geolev1_lbl 324004 `"Kindia, Labe, and Mamzu [Region: Guinea]"', add
label define geolev1_lbl 324007 `"N'zerekore [Region: Guinea]"', add
label define geolev1_lbl 324008 `"Conakry [Region: Guinea]"', add
label define geolev1_lbl 332001 `"Ouest (West)  [Department: Haiti]"', add
label define geolev1_lbl 332002 `"Sud'Est (South East)  [Department: Haiti]"', add
label define geolev1_lbl 332003 `"Nord (North)  [Department: Haiti]"', add
label define geolev1_lbl 332004 `"Nord'est (North East)  [Department: Haiti]"', add
label define geolev1_lbl 332005 `"Artibonite  [Department: Haiti]"', add
label define geolev1_lbl 332006 `"Centre  [Department: Haiti]"', add
label define geolev1_lbl 332007 `"Sud (South)  [Department: Haiti]"', add
label define geolev1_lbl 332008 `"Grand'Anse and Nippes  [Department: Haiti]"', add
label define geolev1_lbl 332009 `"Nord'Ouest (North West)  [Department: Haiti]"', add
label define geolev1_lbl 356001 `"Jammu and Kashmir [State: India]"', add
label define geolev1_lbl 356002 `"Himachal Pradesh [State: India]"', add
label define geolev1_lbl 356003 `"Punjab [State: India]"', add
label define geolev1_lbl 356004 `"Chandigarh [State: India]"', add
label define geolev1_lbl 356006 `"Haryana [State: India]"', add
label define geolev1_lbl 356007 `"Delhi [State: India]"', add
label define geolev1_lbl 356008 `"Rajasthan [State: India]"', add
label define geolev1_lbl 356009 `"Uttar Pradesh and Uttaranchal [State: India]"', add
label define geolev1_lbl 356010 `"Bihar and Jharkhand [State: India]"', add
label define geolev1_lbl 356011 `"Sikkim [State: India]"', add
label define geolev1_lbl 356012 `"Arunachal Pradesh [State: India]"', add
label define geolev1_lbl 356013 `"Nagaland [State: India]"', add
label define geolev1_lbl 356014 `"Manipur [State: India]"', add
label define geolev1_lbl 356015 `"Mizoram [State: India]"', add
label define geolev1_lbl 356016 `"Tripura [State: India]"', add
label define geolev1_lbl 356017 `"Meghalaya [State: India]"', add
label define geolev1_lbl 356018 `"Assam [State: India]"', add
label define geolev1_lbl 356019 `"West Bengal [State: India]"', add
label define geolev1_lbl 356021 `"Orissa [State: India]"', add
label define geolev1_lbl 356023 `"Chhattisgarh and Madhya Pradesh [State: India]"', add
label define geolev1_lbl 356024 `"Gujarat [State: India]"', add
label define geolev1_lbl 356026 `"Dadra and Nagar Haveli [State: India]"', add
label define geolev1_lbl 356027 `"Maharashtra [State: India]"', add
label define geolev1_lbl 356028 `"Andhra Pradesh [State: India]"', add
label define geolev1_lbl 356029 `"Karnataka [State: India]"', add
label define geolev1_lbl 356030 `"Daman and Diu and Goa [State: India]"', add
label define geolev1_lbl 356031 `"Lakshadweep [State: India]"', add
label define geolev1_lbl 356032 `"Kerala [State: India]"', add
label define geolev1_lbl 356033 `"Tamil Nadu [State: India]"', add
label define geolev1_lbl 356034 `"Pondicherry [State: India]"', add
label define geolev1_lbl 356035 `"Andaman and Nicobar Islands [State: India]"', add
label define geolev1_lbl 360011 `"Nanggroe Aceh Darussalam [Province: Indonesia]"', add
label define geolev1_lbl 360012 `"Sumatera Utara [Province: Indonesia]"', add
label define geolev1_lbl 360013 `"Sumatera Barat [Province: Indonesia]"', add
label define geolev1_lbl 360014 `"Riau and Kepulauan Riau [Province: Indonesia]"', add
label define geolev1_lbl 360015 `"Jambi [Province: Indonesia]"', add
label define geolev1_lbl 360016 `"Sumatera Selatan and Bangka Belitung [Province: Indonesia]"', add
label define geolev1_lbl 360017 `"Bengkulu [Province: Indonesia]"', add
label define geolev1_lbl 360018 `"Lampung [Province: Indonesia]"', add
label define geolev1_lbl 360031 `"DKI Jakarta [Province: Indonesia]"', add
label define geolev1_lbl 360032 `"West Java and Banten [Province: Indonesia]"', add
label define geolev1_lbl 360033 `"Jawa Tengah  [Province: Indonesia]"', add
label define geolev1_lbl 360034 `"DI Yogyakarta  [Province: Indonesia]"', add
label define geolev1_lbl 360035 `"Jawa Timur [Province: Indonesia]"', add
label define geolev1_lbl 360051 `"Bali [Province: Indonesia]"', add
label define geolev1_lbl 360052 `"Nusa Tenggara Barat [Province: Indonesia]"', add
label define geolev1_lbl 360053 `"East Nusa Tenggara and East Timur [Province: Indonesia]"', add
label define geolev1_lbl 360061 `"Kalimantan Barat  [Province: Indonesia]"', add
label define geolev1_lbl 360062 `"Kalimantan Tengah [Province: Indonesia]"', add
label define geolev1_lbl 360063 `"Kalimantan Selatan [Province: Indonesia]"', add
label define geolev1_lbl 360064 `"Kalimantan Timur [Province: Indonesia]"', add
label define geolev1_lbl 360071 `"Sulawesi Utara  and Gorontalo [Province: Indonesia]"', add
label define geolev1_lbl 360072 `"Sulawesi Tengah [Province: Indonesia]"', add
label define geolev1_lbl 360073 `"Sulawesi Selatan, Sulawesi Tenggara and Sulawesi Barat [Province: Indonesia]"', add
label define geolev1_lbl 360081 `"Maluku and North Maluku [Province: Indonesia]"', add
label define geolev1_lbl 360094 `"Papua and Papua Barat [Province: Indonesia]"', add
label define geolev1_lbl 364000 `"Markazi [Province: Iran]"', add
label define geolev1_lbl 364001 `"Gilan [Province: Iran]"', add
label define geolev1_lbl 364002 `"Mazandaran [Province: Iran]"', add
label define geolev1_lbl 364003 `"East Azarbayejan [Province: Iran]"', add
label define geolev1_lbl 364004 `"West Azarbayejan [Province: Iran]"', add
label define geolev1_lbl 364005 `"Kermanshah [Province: Iran]"', add
label define geolev1_lbl 364006 `"Khuzestan [Province: Iran]"', add
label define geolev1_lbl 364007 `"Fars [Province: Iran]"', add
label define geolev1_lbl 364008 `"Kerman [Province: Iran]"', add
label define geolev1_lbl 364009 `"Khorasan-e- Razavi [Province: Iran]"', add
label define geolev1_lbl 364010 `"Esfahan [Province: Iran]"', add
label define geolev1_lbl 364011 `"Sistan and Baluchestan [Province: Iran]"', add
label define geolev1_lbl 364012 `"Kordestan [Province: Iran]"', add
label define geolev1_lbl 364013 `"Hamedan [Province: Iran]"', add
label define geolev1_lbl 364014 `"Chaharmahal and Bakhtiyari [Province: Iran]"', add
label define geolev1_lbl 364015 `"Lorestan [Province: Iran]"', add
label define geolev1_lbl 364016 `"Ilam [Province: Iran]"', add
label define geolev1_lbl 364017 `"Kohgiluyeh and Boyerahmad [Province: Iran]"', add
label define geolev1_lbl 364018 `"Bushehr [Province: Iran]"', add
label define geolev1_lbl 364019 `"Zanjan [Province: Iran]"', add
label define geolev1_lbl 364020 `"Semnan [Province: Iran]"', add
label define geolev1_lbl 364021 `"Yazd [Province: Iran]"', add
label define geolev1_lbl 364022 `"Hormozgan [Province: Iran]"', add
label define geolev1_lbl 364023 `"Tehran [Province: Iran]"', add
label define geolev1_lbl 364024 `"Ardebil [Province: Iran]"', add
label define geolev1_lbl 364025 `"Qom [Province: Iran]"', add
label define geolev1_lbl 364026 `"Qazvin [Province: Iran]"', add
label define geolev1_lbl 364027 `"Golestan [Province: Iran]"', add
label define geolev1_lbl 364028 `"North Khorasan [Province: Iran]"', add
label define geolev1_lbl 364029 `"South Khorasan [Province: Iran]"', add
label define geolev1_lbl 368011 `"Dhok [Governorate: Iraq]"', add
label define geolev1_lbl 368012 `"Nineveh [Governorate: Iraq]"', add
label define geolev1_lbl 368013 `"Al-Sulaimaniya [Governorate: Iraq]"', add
label define geolev1_lbl 368014 `"Al-Tameem [Governorate: Iraq]"', add
label define geolev1_lbl 368015 `"Arbil [Governorate: Iraq]"', add
label define geolev1_lbl 368021 `"Diala [Governorate: Iraq]"', add
label define geolev1_lbl 368022 `"Al-Anbar [Governorate: Iraq]"', add
label define geolev1_lbl 368023 `"Baghdad [Governorate: Iraq]"', add
label define geolev1_lbl 368024 `"Babylon [Governorate: Iraq]"', add
label define geolev1_lbl 368025 `"Kerbela [Governorate: Iraq]"', add
label define geolev1_lbl 368026 `"Wasit [Governorate: Iraq]"', add
label define geolev1_lbl 368027 `"Salah Al-Deen [Governorate: Iraq]"', add
label define geolev1_lbl 368028 `"Al-Najaf [Governorate: Iraq]"', add
label define geolev1_lbl 368031 `"Al-Qadisiya [Governorate: Iraq]"', add
label define geolev1_lbl 368032 `"Al-Muthanna [Governorate: Iraq]"', add
label define geolev1_lbl 368033 `"Thi-Qar [Governorate: Iraq]"', add
label define geolev1_lbl 368034 `"Maysan [Governorate: Iraq]"', add
label define geolev1_lbl 368035 `"Al-Basrah [Governorate: Iraq]"', add
label define geolev1_lbl 372001 `"Border [Region: Ireland]"', add
label define geolev1_lbl 372002 `"Dublin [Region: Ireland]"', add
label define geolev1_lbl 372003 `"Mid-East [Region: Ireland]"', add
label define geolev1_lbl 372004 `"Midlands [Region: Ireland]"', add
label define geolev1_lbl 372005 `"Mid-West [Region: Ireland]"', add
label define geolev1_lbl 372006 `"South-East [Region: Ireland]"', add
label define geolev1_lbl 372007 `"South-West [Region: Ireland]"', add
label define geolev1_lbl 372008 `"West [Region: Ireland]"', add
label define geolev1_lbl 376001 `"Jerusalem [District: Israel]"', add
label define geolev1_lbl 376002 `"Northern [District: Israel]"', add
label define geolev1_lbl 376003 `"Haifa [District: Israel]"', add
label define geolev1_lbl 376004 `"Central [District: Israel]"', add
label define geolev1_lbl 376005 `"Tel-Aviv [District: Israel]"', add
label define geolev1_lbl 376006 `"Southern [District: Israel]"', add
label define geolev1_lbl 376009 `"Judea, Samaria, and Gaza areas [District: Israel]"', add
label define geolev1_lbl 380001 `"Piemonte-Valle d'Aosta [Region: Italy]"', add
label define geolev1_lbl 380003 `"Lombardia [Region: Italy]"', add
label define geolev1_lbl 380004 `"Trentino-Alto Adige [Region: Italy]"', add
label define geolev1_lbl 380005 `"Veneto [Region: Italy]"', add
label define geolev1_lbl 380006 `"Friuli-Venezia Giulia [Region: Italy]"', add
label define geolev1_lbl 380007 `"Liguria [Region: Italy]"', add
label define geolev1_lbl 380008 `"Emilia-Romagna [Region: Italy]"', add
label define geolev1_lbl 380009 `"Toscana [Region: Italy]"', add
label define geolev1_lbl 380010 `"Umbria [Region: Italy]"', add
label define geolev1_lbl 380011 `"Marche [Region: Italy]"', add
label define geolev1_lbl 380012 `"Lazio [Region: Italy]"', add
label define geolev1_lbl 380013 `"Abruzzo [Region: Italy]"', add
label define geolev1_lbl 380014 `"Molise [Region: Italy]"', add
label define geolev1_lbl 380015 `"Campania [Region: Italy]"', add
label define geolev1_lbl 380016 `"Puglia [Region: Italy]"', add
label define geolev1_lbl 380017 `"Basilicata [Region: Italy]"', add
label define geolev1_lbl 380018 `"Calabria [Region: Italy]"', add
label define geolev1_lbl 380019 `"Sicilia [Region: Italy]"', add
label define geolev1_lbl 380020 `"Sardegna [Region: Italy]"', add
label define geolev1_lbl 388001 `"Kingston [Parish: Jamaica]"', add
label define geolev1_lbl 388002 `"Saint Andrew [Parish: Jamaica]"', add
label define geolev1_lbl 388003 `"Saint Thomas [Parish: Jamaica]"', add
label define geolev1_lbl 388004 `"Portland [Parish: Jamaica]"', add
label define geolev1_lbl 388005 `"Saint Mary [Parish: Jamaica]"', add
label define geolev1_lbl 388006 `"Saint Ann [Parish: Jamaica]"', add
label define geolev1_lbl 388007 `"Trelawny [Parish: Jamaica]"', add
label define geolev1_lbl 388008 `"Saint James [Parish: Jamaica]"', add
label define geolev1_lbl 388009 `"Hanover [Parish: Jamaica]"', add
label define geolev1_lbl 388010 `"Westmoreland [Parish: Jamaica]"', add
label define geolev1_lbl 388011 `"Saint Elizabeth [Parish: Jamaica]"', add
label define geolev1_lbl 388012 `"Manchester [Parish: Jamaica]"', add
label define geolev1_lbl 388013 `"Clarendon [Parish: Jamaica]"', add
label define geolev1_lbl 388014 `"Saint Catherine [Parish: Jamaica]"', add
label define geolev1_lbl 400011 `"Amman [Governorate: Jordan]"', add
label define geolev1_lbl 400012 `"Balqa [Governorate: Jordan]"', add
label define geolev1_lbl 400013 `"Zarqa [Governorate: Jordan]"', add
label define geolev1_lbl 400014 `"Madaba [Governorate: Jordan]"', add
label define geolev1_lbl 400021 `"Irbid [Governorate: Jordan]"', add
label define geolev1_lbl 400022 `"Mafraq [Governorate: Jordan]"', add
label define geolev1_lbl 400023 `"Jarash [Governorate: Jordan]"', add
label define geolev1_lbl 400024 `"Ajloun [Governorate: Jordan]"', add
label define geolev1_lbl 400031 `"Karak [Governorate: Jordan]"', add
label define geolev1_lbl 400032 `"Tafileh [Governorate: Jordan]"', add
label define geolev1_lbl 400033 `"Ma'an [Governorate: Jordan]"', add
label define geolev1_lbl 400034 `"Aqaba [Governorate: Jordan]"', add
label define geolev1_lbl 404001 `"Nairobi [Province: Kenya]"', add
label define geolev1_lbl 404002 `"Central Province [Province: Kenya]"', add
label define geolev1_lbl 404003 `"Coast Province [Province: Kenya]"', add
label define geolev1_lbl 404004 `"Eastern Province [Province: Kenya]"', add
label define geolev1_lbl 404005 `"North-Eastern Province [Province: Kenya]"', add
label define geolev1_lbl 404006 `"Nyanza Province [Province: Kenya]"', add
label define geolev1_lbl 404007 `"Rift Valley Province [Province: Kenya]"', add
label define geolev1_lbl 404008 `"Western Province [Province: Kenya]"', add
label define geolev1_lbl 417001 `"Gorkenesh Bishkek [Region: Kyrgyz Republic]"', add
label define geolev1_lbl 417002 `"Issyk-Kul [Region: Kyrgyz Republic]"', add
label define geolev1_lbl 417003 `"Dzhalal-Abad [Region: Kyrgyz Republic]"', add
label define geolev1_lbl 417004 `"Naryn [Region: Kyrgyz Republic]"', add
label define geolev1_lbl 417005 `"Batken [Region: Kyrgyz Republic]"', add
label define geolev1_lbl 417006 `"Oshskaya [Region: Kyrgyz Republic]"', add
label define geolev1_lbl 417007 `"Talasskaya [Region: Kyrgyz Republic]"', add
label define geolev1_lbl 417008 `"Chuya [Region: Kyrgyz Republic]"', add
label define geolev1_lbl 430006 `"Bong [County: Liberia]"', add
label define geolev1_lbl 430009 `"Grand Bassa and Rivercess [County: Liberia]"', add
label define geolev1_lbl 430012 `"Grand Cape Mount [County: Liberia]"', add
label define geolev1_lbl 430015 `"Grand Gedeh and River Gee [County: Liberia]"', add
label define geolev1_lbl 430021 `"Lofa and Gbarpolu [County: Liberia]"', add
label define geolev1_lbl 430027 `"Maryland and Grand Kru [County: Liberia]"', add
label define geolev1_lbl 430030 `"Montserrado, Bomi, and Margibi [County: Liberia]"', add
label define geolev1_lbl 430033 `"Nimba [County: Liberia]"', add
label define geolev1_lbl 430039 `"Sinoe [County: Liberia]"', add
label define geolev1_lbl 454101 `"Chitipa [District: Malawi]"', add
label define geolev1_lbl 454102 `"Karonga [District: Malawi]"', add
label define geolev1_lbl 454103 `"Nkhata Bay and Likoma [District: Malawi]"', add
label define geolev1_lbl 454104 `"Rumphi [District: Malawi]"', add
label define geolev1_lbl 454105 `"Mzimba and Mzuzu city [District: Malawi]"', add
label define geolev1_lbl 454201 `"Kasungu [District: Malawi]"', add
label define geolev1_lbl 454202 `"Nkhota Kota [District: Malawi]"', add
label define geolev1_lbl 454203 `"Ntchisi [District: Malawi]"', add
label define geolev1_lbl 454204 `"Dowa [District: Malawi]"', add
label define geolev1_lbl 454205 `"Salima [District: Malawi]"', add
label define geolev1_lbl 454206 `"Lilongwe [District: Malawi]"', add
label define geolev1_lbl 454207 `"Mchinji [District: Malawi]"', add
label define geolev1_lbl 454208 `"Dedza [District: Malawi]"', add
label define geolev1_lbl 454209 `"Ntcheu [District: Malawi]"', add
label define geolev1_lbl 454301 `"Mangochi [District: Malawi]"', add
label define geolev1_lbl 454302 `"Machinga and Balaka [District: Malawi]"', add
label define geolev1_lbl 454303 `"Zomba [District: Malawi]"', add
label define geolev1_lbl 454304 `"Chiradzulu [District: Malawi]"', add
label define geolev1_lbl 454305 `"Blantyre [District: Malawi]"', add
label define geolev1_lbl 454307 `"Thyolo [District: Malawi]"', add
label define geolev1_lbl 454308 `"Mulanje and Phalombe [District: Malawi]"', add
label define geolev1_lbl 454310 `"Chikwawa [District: Malawi]"', add
label define geolev1_lbl 454311 `"Nsanje [District: Malawi]"', add
label define geolev1_lbl 454313 `"Mwanza and Neno [District: Malawi]"', add
label define geolev1_lbl 458001 `"Johor [State: Malaysia]"', add
label define geolev1_lbl 458002 `"Kedah [State: Malaysia]"', add
label define geolev1_lbl 458003 `"Kelantan [State: Malaysia]"', add
label define geolev1_lbl 458004 `"Melaka [State: Malaysia]"', add
label define geolev1_lbl 458005 `"Negeri Sembilan [State: Malaysia]"', add
label define geolev1_lbl 458006 `"Pahang [State: Malaysia]"', add
label define geolev1_lbl 458007 `"Pulau Pinang [State: Malaysia]"', add
label define geolev1_lbl 458008 `"Perak [State: Malaysia]"', add
label define geolev1_lbl 458009 `"Perlis [State: Malaysia]"', add
label define geolev1_lbl 458010 `"Selangor and Kuala Lumpur Federal Territory [State: Malaysia]"', add
label define geolev1_lbl 458011 `"Terengganu [State: Malaysia]"', add
label define geolev1_lbl 458012 `"Sabah and Labuan Federal Territory [State: Malaysia]"', add
label define geolev1_lbl 458013 `"Sarawak [State: Malaysia]"', add
label define geolev1_lbl 466001 `"Kayes [Region: Mali]"', add
label define geolev1_lbl 466002 `"Koulikoro [Region: Mali]"', add
label define geolev1_lbl 466003 `"Sikasso [Region: Mali]"', add
label define geolev1_lbl 466004 `"Ségou [Region: Mali]"', add
label define geolev1_lbl 466005 `"Mopti [Region: Mali]"', add
label define geolev1_lbl 466006 `"Tombouctou [Region: Mali]"', add
label define geolev1_lbl 466007 `"Gao and Kidal [Region: Mali]"', add
label define geolev1_lbl 466009 `"Bamako [Region: Mali]"', add
label define geolev1_lbl 466099 `"Unknown [Region: Mali]"', add
label define geolev1_lbl 484001 `"Aguascalientes [State: Mexico]"', add
label define geolev1_lbl 484002 `"Baja California [State: Mexico]"', add
label define geolev1_lbl 484003 `"Baja California Sur [State: Mexico]"', add
label define geolev1_lbl 484004 `"Campeche [State: Mexico]"', add
label define geolev1_lbl 484005 `"Coahuila [State: Mexico]"', add
label define geolev1_lbl 484006 `"Colima [State: Mexico]"', add
label define geolev1_lbl 484007 `"Chiapas [State: Mexico]"', add
label define geolev1_lbl 484008 `"Chihuahua [State: Mexico]"', add
label define geolev1_lbl 484009 `"Distrito Federal [State: Mexico]"', add
label define geolev1_lbl 484010 `"Durango [State: Mexico]"', add
label define geolev1_lbl 484011 `"Guanajuato [State: Mexico]"', add
label define geolev1_lbl 484012 `"Guerrero [State: Mexico]"', add
label define geolev1_lbl 484013 `"Hidalgo [State: Mexico]"', add
label define geolev1_lbl 484014 `"Jalisco [State: Mexico]"', add
label define geolev1_lbl 484015 `"México [State: Mexico]"', add
label define geolev1_lbl 484016 `"Michoacán [State: Mexico]"', add
label define geolev1_lbl 484017 `"Morelos [State: Mexico]"', add
label define geolev1_lbl 484018 `"Nayarit [State: Mexico]"', add
label define geolev1_lbl 484019 `"Nuevo León [State: Mexico]"', add
label define geolev1_lbl 484020 `"Oaxaca [State: Mexico]"', add
label define geolev1_lbl 484021 `"Puebla [State: Mexico]"', add
label define geolev1_lbl 484022 `"Querétaro [State: Mexico]"', add
label define geolev1_lbl 484023 `"Quintana Roo [State: Mexico]"', add
label define geolev1_lbl 484024 `"San Luis Potosí [State: Mexico]"', add
label define geolev1_lbl 484025 `"Sinaloa [State: Mexico]"', add
label define geolev1_lbl 484026 `"Sonora [State: Mexico]"', add
label define geolev1_lbl 484027 `"Tabasco [State: Mexico]"', add
label define geolev1_lbl 484028 `"Tamaulipas [State: Mexico]"', add
label define geolev1_lbl 484029 `"Tlaxcala [State: Mexico]"', add
label define geolev1_lbl 484030 `"Veracruz [State: Mexico]"', add
label define geolev1_lbl 484031 `"Yucatán [State: Mexico]"', add
label define geolev1_lbl 484032 `"Zacatecas [State: Mexico]"', add
label define geolev1_lbl 496001 `"Arkhangai [Province: Mongolia]"', add
label define geolev1_lbl 496002 `"Bayan-Ölgii [Province: Mongolia]"', add
label define geolev1_lbl 496003 `"Bayankhongor [Province: Mongolia]"', add
label define geolev1_lbl 496004 `"Bulgan [Province: Mongolia]"', add
label define geolev1_lbl 496005 `"Govi-Altai [Province: Mongolia]"', add
label define geolev1_lbl 496006 `"Dornogovi [Province: Mongolia]"', add
label define geolev1_lbl 496007 `"Dornod [Province: Mongolia]"', add
label define geolev1_lbl 496008 `"Dundgovi and Govisumber [Province: Mongolia]"', add
label define geolev1_lbl 496009 `"Zavkhan [Province: Mongolia]"', add
label define geolev1_lbl 496010 `"Övörkhangai [Province: Mongolia]"', add
label define geolev1_lbl 496011 `"Ömnögovi [Province: Mongolia]"', add
label define geolev1_lbl 496012 `"Sükhbaatar [Province: Mongolia]"', add
label define geolev1_lbl 496013 `"Selenge [Province: Mongolia]"', add
label define geolev1_lbl 496014 `"Töv [Province: Mongolia]"', add
label define geolev1_lbl 496015 `"Uvs [Province: Mongolia]"', add
label define geolev1_lbl 496016 `"Khovd [Province: Mongolia]"', add
label define geolev1_lbl 496017 `"Khövsgöl [Province: Mongolia]"', add
label define geolev1_lbl 496018 `"Khentii [Province: Mongolia]"', add
label define geolev1_lbl 496019 `"Darkhan-Uul [Province: Mongolia]"', add
label define geolev1_lbl 496020 `"Ulaanbaatar [Province: Mongolia]"', add
label define geolev1_lbl 496021 `"Orkhon [Province: Mongolia]"', add
label define geolev1_lbl 504001 `"Oued-Ed-Dahab-Lagouira [Region: Morocco]"', add
label define geolev1_lbl 504002 `"Laayoune-Boujdour-Sakia El Hamra [Region: Morocco]"', add
label define geolev1_lbl 504003 `"Guelmin-Es-Samara [Region: Morocco]"', add
label define geolev1_lbl 504004 `"Souss-Massa-Draa [Region: Morocco]"', add
label define geolev1_lbl 504005 `"Charb-Chrarda-Beni Hssen [Region: Morocco]"', add
label define geolev1_lbl 504006 `"Chaouia-Ouardigha [Region: Morocco]"', add
label define geolev1_lbl 504007 `"Marrakech-Tensift-Al Haouz [Region: Morocco]"', add
label define geolev1_lbl 504008 `"Oriental [Region: Morocco]"', add
label define geolev1_lbl 504009 `"Grand-Casablanca [Region: Morocco]"', add
label define geolev1_lbl 504010 `"Rabat-Salé-Zemmour-Zaer [Region: Morocco]"', add
label define geolev1_lbl 504011 `"Doukala Abda [Region: Morocco]"', add
label define geolev1_lbl 504012 `"Tadla Azilal [Region: Morocco]"', add
label define geolev1_lbl 504013 `"Meknes-Tafilalet [Region: Morocco]"', add
label define geolev1_lbl 504014 `"Fès-Boulemane [Region: Morocco]"', add
label define geolev1_lbl 504015 `"Taza-Al Heiceima-Taounate [Region: Morocco]"', add
label define geolev1_lbl 504016 `"Tanger-Tétouan [Region: Morocco]"', add
label define geolev1_lbl 524001 `"Mechi [Administrative zone: Nepal]"', add
label define geolev1_lbl 524002 `"Koshi [Administrative zone: Nepal]"', add
label define geolev1_lbl 524003 `"Sagarmatha [Administrative zone: Nepal]"', add
label define geolev1_lbl 524004 `"Janakpur [Administrative zone: Nepal]"', add
label define geolev1_lbl 524005 `"Bagmati [Administrative zone: Nepal]"', add
label define geolev1_lbl 524006 `"Narayani [Administrative zone: Nepal]"', add
label define geolev1_lbl 524007 `"Gandaki [Administrative zone: Nepal]"', add
label define geolev1_lbl 524008 `"Dhawalagiri [Administrative zone: Nepal]"', add
label define geolev1_lbl 524009 `"Lumbini [Administrative zone: Nepal]"', add
label define geolev1_lbl 524010 `"Rapti [Administrative zone: Nepal]"', add
label define geolev1_lbl 524011 `"Bheri [Administrative zone: Nepal]"', add
label define geolev1_lbl 524012 `"Karnali [Administrative zone: Nepal]"', add
label define geolev1_lbl 524013 `"Seti [Administrative zone: Nepal]"', add
label define geolev1_lbl 524014 `"Mahakali [Administrative zone: Nepal]"', add
label define geolev1_lbl 558005 `"Nueva Segovia [Department: Nicaragua]"', add
label define geolev1_lbl 558010 `"Jinotega [Department: Nicaragua]"', add
label define geolev1_lbl 558020 `"Madríz [Department: Nicaragua]"', add
label define geolev1_lbl 558030 `"Chinandega [Department: Nicaragua]"', add
label define geolev1_lbl 558035 `"Leon and Esteli [Department: Nicaragua]"', add
label define geolev1_lbl 558040 `"Matagalpa [Department: Nicaragua]"', add
label define geolev1_lbl 558050 `"Boaco [Department: Nicaragua]"', add
label define geolev1_lbl 558055 `"Managua [Department: Nicaragua]"', add
label define geolev1_lbl 558060 `"Masaya [Department: Nicaragua]"', add
label define geolev1_lbl 558065 `"Chontales [Department: Nicaragua]"', add
label define geolev1_lbl 558070 `"Granada [Department: Nicaragua]"', add
label define geolev1_lbl 558075 `"Carazo [Department: Nicaragua]"', add
label define geolev1_lbl 558080 `"Rivas [Department: Nicaragua]"', add
label define geolev1_lbl 558085 `"Río San Juan [Department: Nicaragua]"', add
label define geolev1_lbl 558093 `"Zelaya, Atlántico Norte and Atlántico Sur [Department: Nicaragua]"', add
label define geolev1_lbl 558099 `"Unknown [Department: Nicaragua]"', add
label define geolev1_lbl 566001 `"Abia [State: Nigeria]"', add
label define geolev1_lbl 566002 `"Adamawa [State: Nigeria]"', add
label define geolev1_lbl 566003 `"Akwa Ibom [State: Nigeria]"', add
label define geolev1_lbl 566004 `"Anambra [State: Nigeria]"', add
label define geolev1_lbl 566005 `"Bauchi [State: Nigeria]"', add
label define geolev1_lbl 566006 `"Bayelsa [State: Nigeria]"', add
label define geolev1_lbl 566007 `"Benue [State: Nigeria]"', add
label define geolev1_lbl 566008 `"Borno [State: Nigeria]"', add
label define geolev1_lbl 566009 `"Cross River [State: Nigeria]"', add
label define geolev1_lbl 566010 `"Delta [State: Nigeria]"', add
label define geolev1_lbl 566011 `"Ebonyi [State: Nigeria]"', add
label define geolev1_lbl 566012 `"Edo [State: Nigeria]"', add
label define geolev1_lbl 566013 `"Ekiti [State: Nigeria]"', add
label define geolev1_lbl 566014 `"Enugu [State: Nigeria]"', add
label define geolev1_lbl 566015 `"Gombe [State: Nigeria]"', add
label define geolev1_lbl 566016 `"Imo [State: Nigeria]"', add
label define geolev1_lbl 566017 `"Jigawa [State: Nigeria]"', add
label define geolev1_lbl 566018 `"Kaduna [State: Nigeria]"', add
label define geolev1_lbl 566019 `"Kano [State: Nigeria]"', add
label define geolev1_lbl 566020 `"Katsina [State: Nigeria]"', add
label define geolev1_lbl 566021 `"Kebbi [State: Nigeria]"', add
label define geolev1_lbl 566022 `"Kogi [State: Nigeria]"', add
label define geolev1_lbl 566023 `"Kwara [State: Nigeria]"', add
label define geolev1_lbl 566024 `"Lagos [State: Nigeria]"', add
label define geolev1_lbl 566025 `"Nasarawa [State: Nigeria]"', add
label define geolev1_lbl 566026 `"Niger [State: Nigeria]"', add
label define geolev1_lbl 566027 `"Ogun [State: Nigeria]"', add
label define geolev1_lbl 566028 `"Ondo [State: Nigeria]"', add
label define geolev1_lbl 566029 `"Osun [State: Nigeria]"', add
label define geolev1_lbl 566030 `"Oyo [State: Nigeria]"', add
label define geolev1_lbl 566031 `"Plateau [State: Nigeria]"', add
label define geolev1_lbl 566032 `"Rivers [State: Nigeria]"', add
label define geolev1_lbl 566033 `"Sokoto [State: Nigeria]"', add
label define geolev1_lbl 566034 `"Taraba [State: Nigeria]"', add
label define geolev1_lbl 566035 `"Yobe [State: Nigeria]"', add
label define geolev1_lbl 566036 `"Zamfara [State: Nigeria]"', add
label define geolev1_lbl 566037 `"FCT Abuja [State: Nigeria]"', add
label define geolev1_lbl 566099 `"Unknown [State: Nigeria]"', add
label define geolev1_lbl 586001 `"North-West Frontier Province  [Province: Pakistan]"', add
label define geolev1_lbl 586003 `"Punjab [Province: Pakistan]"', add
label define geolev1_lbl 586004 `"Sindh [Province: Pakistan]"', add
label define geolev1_lbl 586005 `"Balochistan [Province: Pakistan]"', add
label define geolev1_lbl 586006 `"Islamabad [Province: Pakistan]"', add
label define geolev1_lbl 275001 `"Jenin [Governorate: Palestine]"', add
label define geolev1_lbl 275005 `"Tubas [Governorate: Palestine]"', add
label define geolev1_lbl 275010 `"Tulkarm [Governorate: Palestine]"', add
label define geolev1_lbl 275015 `"Nablus [Governorate: Palestine]"', add
label define geolev1_lbl 275020 `"Qalqiliya [Governorate: Palestine]"', add
label define geolev1_lbl 275025 `"Salfit [Governorate: Palestine]"', add
label define geolev1_lbl 275030 `"Ramallah and Al-Bireh [Governorate: Palestine]"', add
label define geolev1_lbl 275035 `"Jericho [Governorate: Palestine]"', add
label define geolev1_lbl 275040 `"Jerusalem [Governorate: Palestine]"', add
label define geolev1_lbl 275045 `"Bethlehem [Governorate: Palestine]"', add
label define geolev1_lbl 275050 `"Hebron [Governorate: Palestine]"', add
label define geolev1_lbl 275055 `"North Gaza [Governorate: Palestine]"', add
label define geolev1_lbl 275060 `"Gaza [Governorate: Palestine]"', add
label define geolev1_lbl 275065 `"Deir Al-Balah [Governorate: Palestine]"', add
label define geolev1_lbl 275070 `"Khan Yunis [Governorate: Palestine]"', add
label define geolev1_lbl 275075 `"Rafah [Governorate: Palestine]"', add
label define geolev1_lbl 591002 `"Coclé [Province: Panama]"', add
label define geolev1_lbl 591003 `"Colón  [Province: Panama]"', add
label define geolev1_lbl 591004 `"Bocas del Toro, Chiriquí, Veraguas, and Comarca Ngöbe-Buglé [Province: Panama]"', add
label define geolev1_lbl 591006 `"Herrera [Province: Panama]"', add
label define geolev1_lbl 591007 `"Los Santos [Province: Panama]"', add
label define geolev1_lbl 591008 `"Darién, Embera, and Panamá [Province: Panama]"', add
label define geolev1_lbl 591010 `"Comarca Kuna Yala  (San Blas) [Province: Panama]"', add
label define geolev1_lbl 604001 `"Amazonas [Region: Peru]"', add
label define geolev1_lbl 604002 `"Ancash [Region: Peru]"', add
label define geolev1_lbl 604003 `"Apurimac [Region: Peru]"', add
label define geolev1_lbl 604004 `"Arequipa [Region: Peru]"', add
label define geolev1_lbl 604005 `"Ayacucho [Region: Peru]"', add
label define geolev1_lbl 604006 `"Cajamarca [Region: Peru]"', add
label define geolev1_lbl 604007 `"Callao [Region: Peru]"', add
label define geolev1_lbl 604008 `"Cusco [Region: Peru]"', add
label define geolev1_lbl 604009 `"Huancavelica [Region: Peru]"', add
label define geolev1_lbl 604010 `"Huanuco [Region: Peru]"', add
label define geolev1_lbl 604011 `"Ica [Region: Peru]"', add
label define geolev1_lbl 604012 `"Junin [Region: Peru]"', add
label define geolev1_lbl 604013 `"La Libertad [Region: Peru]"', add
label define geolev1_lbl 604014 `"Lambayeque [Region: Peru]"', add
label define geolev1_lbl 604015 `"Lima [Region: Peru]"', add
label define geolev1_lbl 604016 `"Loreto [Region: Peru]"', add
label define geolev1_lbl 604017 `"Madre de Dios [Region: Peru]"', add
label define geolev1_lbl 604018 `"Moquegua [Region: Peru]"', add
label define geolev1_lbl 604019 `"Pasco [Region: Peru]"', add
label define geolev1_lbl 604020 `"Piura [Region: Peru]"', add
label define geolev1_lbl 604021 `"Puno [Region: Peru]"', add
label define geolev1_lbl 604022 `"San Martin [Region: Peru]"', add
label define geolev1_lbl 604023 `"Tacna [Region: Peru]"', add
label define geolev1_lbl 604024 `"Tumbes [Region: Peru]"', add
label define geolev1_lbl 604025 `"Ucayali [Region: Peru]"', add
label define geolev1_lbl 608001 `"Ilocos [Region: Philippines]"', add
label define geolev1_lbl 608002 `"Cagayan Valley [Region: Philippines]"', add
label define geolev1_lbl 608003 `"Central Luzon [Region: Philippines]"', add
label define geolev1_lbl 608004 `"Southern Tagalog [Region: Philippines]"', add
label define geolev1_lbl 608005 `"Bicol [Region: Philippines]"', add
label define geolev1_lbl 608006 `"Western Visayas [Region: Philippines]"', add
label define geolev1_lbl 608007 `"Central Visayas [Region: Philippines]"', add
label define geolev1_lbl 608008 `"Eastern Visayas [Region: Philippines]"', add
label define geolev1_lbl 608009 `"Western Mindanao [Region: Philippines]"', add
label define geolev1_lbl 608011 `"Northern Mindanao, Southern Mindanao, and Caraga [Region: Philippines]"', add
label define geolev1_lbl 608012 `"Central Mindanao and Autonomous Region of Muslim Mindanao [Region: Philippines]"', add
label define geolev1_lbl 608013 `"National Capital Region [Region: Philippines]"', add
label define geolev1_lbl 608014 `"Cordillera Administrative Region [Region: Philippines]"', add
label define geolev1_lbl 620111 `"Minho-Lima [Subregion: Portugal]"', add
label define geolev1_lbl 620112 `"Cávado [Subregion: Portugal]"', add
label define geolev1_lbl 620113 `"Ave [Subregion: Portugal]"', add
label define geolev1_lbl 620114 `"Grande Porto [Subregion: Portugal]"', add
label define geolev1_lbl 620115 `"Tâmega [Subregion: Portugal]"', add
label define geolev1_lbl 620116 `"Entre Douro e Vouga [Subregion: Portugal]"', add
label define geolev1_lbl 620117 `"Douro [Subregion: Portugal]"', add
label define geolev1_lbl 620118 `"Alto Trás-os-Montes [Subregion: Portugal]"', add
label define geolev1_lbl 620150 `"Algarve [Subregion: Portugal]"', add
label define geolev1_lbl 620161 `"Baixo Vouga [Subregion: Portugal]"', add
label define geolev1_lbl 620162 `"Baixo Mondego [Subregion: Portugal]"', add
label define geolev1_lbl 620163 `"Pinhal Litoral [Subregion: Portugal]"', add
label define geolev1_lbl 620165 `"Dão-Lafões [Subregion: Portugal]"', add
label define geolev1_lbl 620166 `"Oeste [Subregion: Portugal]"', add
label define geolev1_lbl 620167 `"Médio Tejo [Subregion: Portugal]"', add
label define geolev1_lbl 620169 `"Other Center [Subregion: Portugal]"', add
label define geolev1_lbl 620171 `"Grande Lisboa [Subregion: Portugal]"', add
label define geolev1_lbl 620172 `"Península de Setúbal [Subregion: Portugal]"', add
label define geolev1_lbl 620185 `"Lezíria do Tejo [Subregion: Portugal]"', add
label define geolev1_lbl 620189 `"Other Alentejo [Subregion: Portugal]"', add
label define geolev1_lbl 620200 `"Autonomous Azores Region [Subregion: Portugal]"', add
label define geolev1_lbl 620300 `"Autonomous Madeira Region [Subregion: Portugal]"', add
label define geolev1_lbl 642001 `"Alba [County: Romania]"', add
label define geolev1_lbl 642002 `"Arad [County: Romania]"', add
label define geolev1_lbl 642003 `"Arges [County: Romania]"', add
label define geolev1_lbl 642004 `"Bacau [County: Romania]"', add
label define geolev1_lbl 642005 `"Bihor [County: Romania]"', add
label define geolev1_lbl 642006 `"Bistrita Nasaud [County: Romania]"', add
label define geolev1_lbl 642007 `"Botosani [County: Romania]"', add
label define geolev1_lbl 642008 `"Brasov [County: Romania]"', add
label define geolev1_lbl 642009 `"Braila [County: Romania]"', add
label define geolev1_lbl 642010 `"Buzau [County: Romania]"', add
label define geolev1_lbl 642011 `"Caras Severin [County: Romania]"', add
label define geolev1_lbl 642012 `"Cluj [County: Romania]"', add
label define geolev1_lbl 642013 `"Constanta [County: Romania]"', add
label define geolev1_lbl 642014 `"Covasna [County: Romania]"', add
label define geolev1_lbl 642015 `"Dambovita [County: Romania]"', add
label define geolev1_lbl 642016 `"Dolj [County: Romania]"', add
label define geolev1_lbl 642017 `"Galati [County: Romania]"', add
label define geolev1_lbl 642018 `"Gorj [County: Romania]"', add
label define geolev1_lbl 642019 `"Harghita [County: Romania]"', add
label define geolev1_lbl 642020 `"Hunedoara [County: Romania]"', add
label define geolev1_lbl 642021 `"Ialomita [County: Romania]"', add
label define geolev1_lbl 642022 `"Iasi [County: Romania]"', add
label define geolev1_lbl 642024 `"Maramures [County: Romania]"', add
label define geolev1_lbl 642025 `"Mehedinti [County: Romania]"', add
label define geolev1_lbl 642026 `"Mures [County: Romania]"', add
label define geolev1_lbl 642027 `"Neamt [County: Romania]"', add
label define geolev1_lbl 642028 `"Olt [County: Romania]"', add
label define geolev1_lbl 642029 `"Prahova [County: Romania]"', add
label define geolev1_lbl 642030 `"Satu Mare [County: Romania]"', add
label define geolev1_lbl 642031 `"Salaj [County: Romania]"', add
label define geolev1_lbl 642032 `"Sibiu [County: Romania]"', add
label define geolev1_lbl 642033 `"Suceava [County: Romania]"', add
label define geolev1_lbl 642034 `"Teleorman [County: Romania]"', add
label define geolev1_lbl 642035 `"Timis [County: Romania]"', add
label define geolev1_lbl 642036 `"Tulcea [County: Romania]"', add
label define geolev1_lbl 642037 `"Vaslui [County: Romania]"', add
label define geolev1_lbl 642038 `"Valcea [County: Romania]"', add
label define geolev1_lbl 642039 `"Vrancea [County: Romania]"', add
label define geolev1_lbl 642040 `"Bucharest Municipality, Ilfov, Calarasi, and Giurgiu [County: Romania]"', add
label define geolev1_lbl 646001 `"Kigali City [Province: Rwanda]"', add
label define geolev1_lbl 646002 `"Kigali Ngali [Province: Rwanda]"', add
label define geolev1_lbl 646004 `"Gitarama [Province: Rwanda]"', add
label define geolev1_lbl 646005 `"Butare [Province: Rwanda]"', add
label define geolev1_lbl 646006 `"Gikongoro [Province: Rwanda]"', add
label define geolev1_lbl 646007 `"Cyangugu [Province: Rwanda]"', add
label define geolev1_lbl 646008 `"Kibuye [Province: Rwanda]"', add
label define geolev1_lbl 646009 `"Gisenyi [Province: Rwanda]"', add
label define geolev1_lbl 646010 `"Ruhengeri [Province: Rwanda]"', add
label define geolev1_lbl 646012 `"Byumba, Kibungo and Umutara [Province: Rwanda]"', add
label define geolev1_lbl 686001 `"Dakar [Region: Senegal]"', add
label define geolev1_lbl 686002 `"Diourbel [Region: Senegal]"', add
label define geolev1_lbl 686003 `"Fatick [Region: Senegal]"', add
label define geolev1_lbl 686004 `"Kaolack [Region: Senegal]"', add
label define geolev1_lbl 686005 `"Kolda [Region: Senegal]"', add
label define geolev1_lbl 686006 `"Louga [Region: Senegal]"', add
label define geolev1_lbl 686008 `"Saint Louis and Matam [Region: Senegal]"', add
label define geolev1_lbl 686009 `"Tambacounda [Region: Senegal]"', add
label define geolev1_lbl 686010 `"Thies [Region: Senegal]"', add
label define geolev1_lbl 686011 `"Ziguinchor [Region: Senegal]"', add
label define geolev1_lbl 694011 `"Kailahun [District: Sierra Leone]"', add
label define geolev1_lbl 694012 `"Kenema [District: Sierra Leone]"', add
label define geolev1_lbl 694013 `"Kono [District: Sierra Leone]"', add
label define geolev1_lbl 694021 `"Bombali [District: Sierra Leone]"', add
label define geolev1_lbl 694022 `"Kambia [District: Sierra Leone]"', add
label define geolev1_lbl 694023 `"Koinadugu [District: Sierra Leone]"', add
label define geolev1_lbl 694024 `"Port Loko [District: Sierra Leone]"', add
label define geolev1_lbl 694025 `"Tonkolili [District: Sierra Leone]"', add
label define geolev1_lbl 694031 `"Bo [District: Sierra Leone]"', add
label define geolev1_lbl 694032 `"Bonthe [District: Sierra Leone]"', add
label define geolev1_lbl 694033 `"Moyamba [District: Sierra Leone]"', add
label define geolev1_lbl 694034 `"Pujehun [District: Sierra Leone]"', add
label define geolev1_lbl 694041 `"Western - rural [District: Sierra Leone]"', add
label define geolev1_lbl 694042 `"Western - urban [District: Sierra Leone]"', add
label define geolev1_lbl 705001 `"Pomurska [Region: Slovenia]"', add
label define geolev1_lbl 705002 `"Podravska [Region: Slovenia]"', add
label define geolev1_lbl 705003 `"Koroka [Region: Slovenia]"', add
label define geolev1_lbl 705004 `"Savinjska [Region: Slovenia]"', add
label define geolev1_lbl 705005 `"Zasavska [Region: Slovenia]"', add
label define geolev1_lbl 705006 `"Spodnjeposavska [Region: Slovenia]"', add
label define geolev1_lbl 705007 `"Jugovzhodna Slovenija [Region: Slovenia]"', add
label define geolev1_lbl 705008 `"Osrednjeslovenska [Region: Slovenia]"', add
label define geolev1_lbl 705009 `"Gorenjska [Region: Slovenia]"', add
label define geolev1_lbl 705010 `"Notranjsko-kraka [Region: Slovenia]"', add
label define geolev1_lbl 705011 `"Gorika [Region: Slovenia]"', add
label define geolev1_lbl 705012 `"Obalno-kraka [Region: Slovenia]"', add
label define geolev1_lbl 705099 `"Unknown [Region: Slovenia]"', add
label define geolev1_lbl 710001 `"Western Cape [Province: South Africa]"', add
label define geolev1_lbl 710002 `"Eastern Cape [Province: South Africa]"', add
label define geolev1_lbl 710003 `"Northern Cape [Province: South Africa]"', add
label define geolev1_lbl 710004 `"Free State [Province: South Africa]"', add
label define geolev1_lbl 710005 `"KwaZulu-Natal [Province: South Africa]"', add
label define geolev1_lbl 710006 `"North West [Province: South Africa]"', add
label define geolev1_lbl 710007 `"Gauteng [Province: South Africa]"', add
label define geolev1_lbl 710008 `"Mpumalanga [Province: South Africa]"', add
label define geolev1_lbl 710009 `"Limpopo [Province: South Africa]"', add
label define geolev1_lbl 710099 `"Unknown [Province: South Africa]"', add
label define geolev1_lbl 728071 `"Upper Nile [State: South Sudan]"', add
label define geolev1_lbl 728072 `"Jonglei [State: South Sudan]"', add
label define geolev1_lbl 728073 `"Unity [State: South Sudan]"', add
label define geolev1_lbl 728081 `"Warrap [State: South Sudan]"', add
label define geolev1_lbl 728082 `"Northern Bahr El Ghazal [State: South Sudan]"', add
label define geolev1_lbl 728083 `"Western Bahr El Ghazal [State: South Sudan]"', add
label define geolev1_lbl 728084 `"Lakes [State: South Sudan]"', add
label define geolev1_lbl 728091 `"Western Equatoria [State: South Sudan]"', add
label define geolev1_lbl 728092 `"Central Equatoria [State: South Sudan]"', add
label define geolev1_lbl 728093 `"Eastern Equatoria [State: South Sudan]"', add
label define geolev1_lbl 724011 `"Galicia [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724012 `"Principado de Asturias [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724013 `"Cantabria [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724021 `"País Vasco [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724022 `"Comunidad Foral de Navarra [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724023 `"La Rioja [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724024 `"Aragón [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724030 `"Comunidad de Madrid [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724041 `"Castilla y León [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724042 `"Castilla-La Mancha [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724043 `"Extremadura [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724051 `"Cataluña [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724052 `"Comunidad Valenciana [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724053 `"Illes Balears [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724061 `"Andalucía [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724062 `"Región de Murcia [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724063 `"Ciudad Autónoma de Ceuta [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724064 `"Ciudad Autónoma de Melilla [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724070 `"Canarias [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724099 `"Unknown [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 729011 `"Northern [State: Sudan]"', add
label define geolev1_lbl 729012 `"Nahr El Nil [State: Sudan]"', add
label define geolev1_lbl 729021 `"Red Sea [State: Sudan]"', add
label define geolev1_lbl 729022 `"Kassala [State: Sudan]"', add
label define geolev1_lbl 729023 `"Al Gedarif [State: Sudan]"', add
label define geolev1_lbl 729031 `"Khartoum [State: Sudan]"', add
label define geolev1_lbl 729041 `"Al Gezira [State: Sudan]"', add
label define geolev1_lbl 729042 `"White Nile [State: Sudan]"', add
label define geolev1_lbl 729043 `"Sinnar [State: Sudan]"', add
label define geolev1_lbl 729044 `"Blue Nile [State: Sudan]"', add
label define geolev1_lbl 729051 `"North Kordofan [State: Sudan]"', add
label define geolev1_lbl 729052 `"South Kordofan [State: Sudan]"', add
label define geolev1_lbl 729061 `"North Darfur [State: Sudan]"', add
label define geolev1_lbl 729062 `"West Darfur [State: Sudan]"', add
label define geolev1_lbl 729063 `"South Darfur [State: Sudan]"', add
label define geolev1_lbl 756001 `"Zurich [Canton: Switzerland]"', add
label define geolev1_lbl 756002 `"Bern [Canton: Switzerland]"', add
label define geolev1_lbl 756003 `"Luzern (Lucerne) [Canton: Switzerland]"', add
label define geolev1_lbl 756004 `"Uri [Canton: Switzerland]"', add
label define geolev1_lbl 756005 `"Schwyz [Canton: Switzerland]"', add
label define geolev1_lbl 756006 `"Obwalden (Obwald) [Canton: Switzerland]"', add
label define geolev1_lbl 756007 `"Nidwalden (Nidwald) [Canton: Switzerland]"', add
label define geolev1_lbl 756008 `"Glarus [Canton: Switzerland]"', add
label define geolev1_lbl 756009 `"Zug [Canton: Switzerland]"', add
label define geolev1_lbl 756010 `"Fribourg [Canton: Switzerland]"', add
label define geolev1_lbl 756011 `"Solothurn [Canton: Switzerland]"', add
label define geolev1_lbl 756012 `"Basel-Stadt (Basel-City) [Canton: Switzerland]"', add
label define geolev1_lbl 756013 `"Basel-Landschaft (Basel-Country) [Canton: Switzerland]"', add
label define geolev1_lbl 756014 `"Schaffhausen [Canton: Switzerland]"', add
label define geolev1_lbl 756015 `"Outer and Inner Rhodes [Canton: Switzerland]"', add
label define geolev1_lbl 756017 `"St. Gallen (St. Gall) [Canton: Switzerland]"', add
label define geolev1_lbl 756018 `"Graubundun (Grisons) [Canton: Switzerland]"', add
label define geolev1_lbl 756019 `"Aargau (Argovia) [Canton: Switzerland]"', add
label define geolev1_lbl 756020 `"Thurgau (Thurgovia) [Canton: Switzerland]"', add
label define geolev1_lbl 756021 `"Ticino [Canton: Switzerland]"', add
label define geolev1_lbl 756022 `"Vaud [Canton: Switzerland]"', add
label define geolev1_lbl 756023 `"Valais [Canton: Switzerland]"', add
label define geolev1_lbl 756024 `"Neuchatel [Canton: Switzerland]"', add
label define geolev1_lbl 756025 `"Geneva [Canton: Switzerland]"', add
label define geolev1_lbl 756026 `"Jura [Canton: Switzerland]"', add
label define geolev1_lbl 834001 `"Dodoma [Region: Tanzania]"', add
label define geolev1_lbl 834003 `"Kilimanjaro [Region: Tanzania]"', add
label define geolev1_lbl 834004 `"Tanga [Region: Tanzania]"', add
label define geolev1_lbl 834005 `"Morogoro [Region: Tanzania]"', add
label define geolev1_lbl 834006 `"Pwani [Region: Tanzania]"', add
label define geolev1_lbl 834007 `"Dar es Salaam [Region: Tanzania]"', add
label define geolev1_lbl 834008 `"Lindi [Region: Tanzania]"', add
label define geolev1_lbl 834009 `"Mtwara [Region: Tanzania]"', add
label define geolev1_lbl 834010 `"Ruvumba [Region: Tanzania]"', add
label define geolev1_lbl 834011 `"Iringa [Region: Tanzania]"', add
label define geolev1_lbl 834012 `"Mbeya [Region: Tanzania]"', add
label define geolev1_lbl 834013 `"Singida [Region: Tanzania]"', add
label define geolev1_lbl 834014 `"Tabora [Region: Tanzania]"', add
label define geolev1_lbl 834015 `"Rukwa [Region: Tanzania]"', add
label define geolev1_lbl 834016 `"Kigoma [Region: Tanzania]"', add
label define geolev1_lbl 834017 `"Shinyanga [Region: Tanzania]"', add
label define geolev1_lbl 834018 `"Kagera [Region: Tanzania]"', add
label define geolev1_lbl 834019 `"Mwanza [Region: Tanzania]"', add
label define geolev1_lbl 834020 `"Mara [Region: Tanzania]"', add
label define geolev1_lbl 834021 `"Arusha and Manyara [Region: Tanzania]"', add
label define geolev1_lbl 834051 `"Zanzibar North [Region: Tanzania]"', add
label define geolev1_lbl 834052 `"Zanzibar South [Region: Tanzania]"', add
label define geolev1_lbl 834053 `"Zanzibar Town/West [Region: Tanzania]"', add
label define geolev1_lbl 834054 `"Pemba North [Region: Tanzania]"', add
label define geolev1_lbl 834055 `"Pemba South [Region: Tanzania]"', add
label define geolev1_lbl 764010 `"Bangkok [Province: Thailand]"', add
label define geolev1_lbl 764011 `"Samut Prakan [Province: Thailand]"', add
label define geolev1_lbl 764012 `"Nonthaburi [Province: Thailand]"', add
label define geolev1_lbl 764013 `"Pathum Thani [Province: Thailand]"', add
label define geolev1_lbl 764014 `"Phra Nakhon si Ayutthaya [Province: Thailand]"', add
label define geolev1_lbl 764015 `"Ang Thong [Province: Thailand]"', add
label define geolev1_lbl 764016 `"Lop Buri [Province: Thailand]"', add
label define geolev1_lbl 764017 `"Sing Buri [Province: Thailand]"', add
label define geolev1_lbl 764018 `"Chai Nat [Province: Thailand]"', add
label define geolev1_lbl 764019 `"Prachin Buri and Sa Kaeo [Province: Thailand]"', add
label define geolev1_lbl 764020 `"Chon buri [Province: Thailand]"', add
label define geolev1_lbl 764021 `"Rayong [Province: Thailand]"', add
label define geolev1_lbl 764022 `"Chanthaburi [Province: Thailand]"', add
label define geolev1_lbl 764023 `"Trat [Province: Thailand]"', add
label define geolev1_lbl 764024 `"Chachoengsao [Province: Thailand]"', add
label define geolev1_lbl 764026 `"Nakhon Nayok [Province: Thailand]"', add
label define geolev1_lbl 764027 `"Saraburi [Province: Thailand]"', add
label define geolev1_lbl 764070 `"Ratchaburi [Province: Thailand]"', add
label define geolev1_lbl 764071 `"Kanchanaburi [Province: Thailand]"', add
label define geolev1_lbl 764072 `"Suphanburi [Province: Thailand]"', add
label define geolev1_lbl 764073 `"Nakhon Pathom [Province: Thailand]"', add
label define geolev1_lbl 764074 `"Samut Sakhon [Province: Thailand]"', add
label define geolev1_lbl 764075 `"Samut Songkhram [Province: Thailand]"', add
label define geolev1_lbl 764076 `"Phetchaburi [Province: Thailand]"', add
label define geolev1_lbl 764077 `"Prachuap Khiri Khan [Province: Thailand]"', add
label define geolev1_lbl 764030 `"Nakhon Ratchasima [Province: Thailand]"', add
label define geolev1_lbl 764031 `"Buri Ram [Province: Thailand]"', add
label define geolev1_lbl 764032 `"Surin [Province: Thailand]"', add
label define geolev1_lbl 764033 `"Si Sa Ket [Province: Thailand]"', add
label define geolev1_lbl 764034 `"Ubon Ratchathani, Yasothon and Amnat Charoen [Province: Thailand]"', add
label define geolev1_lbl 764036 `"Chaiyaphum [Province: Thailand]"', add
label define geolev1_lbl 764040 `"Khon Kaen [Province: Thailand]"', add
label define geolev1_lbl 764041 `"Udon Thani and Nong Bua Lam Phu [Province: Thailand]"', add
label define geolev1_lbl 764042 `"Loei [Province: Thailand]"', add
label define geolev1_lbl 764043 `"Nong Khai [Province: Thailand]"', add
label define geolev1_lbl 764044 `"Maha Sarakham [Province: Thailand]"', add
label define geolev1_lbl 764045 `"Roi Et [Province: Thailand]"', add
label define geolev1_lbl 764046 `"Kalasin [Province: Thailand]"', add
label define geolev1_lbl 764047 `"Sakon Nakhon [Province: Thailand]"', add
label define geolev1_lbl 764048 `"Nakhon Phanom and Mukdahan [Province: Thailand]"', add
label define geolev1_lbl 764050 `"Chiang Mai [Province: Thailand]"', add
label define geolev1_lbl 764051 `"Lamphun [Province: Thailand]"', add
label define geolev1_lbl 764052 `"Lampang [Province: Thailand]"', add
label define geolev1_lbl 764053 `"Uttaradit [Province: Thailand]"', add
label define geolev1_lbl 764054 `"Phrae [Province: Thailand]"', add
label define geolev1_lbl 764055 `"Nan [Province: Thailand]"', add
label define geolev1_lbl 764057 `"Chiang Rai and Phayao [Province: Thailand]"', add
label define geolev1_lbl 764058 `"Mae Hong Son [Province: Thailand]"', add
label define geolev1_lbl 764060 `"Nakhon Sawan [Province: Thailand]"', add
label define geolev1_lbl 764061 `"Uthai Thani [Province: Thailand]"', add
label define geolev1_lbl 764062 `"Kamphaeng Phet [Province: Thailand]"', add
label define geolev1_lbl 764063 `"Tak [Province: Thailand]"', add
label define geolev1_lbl 764064 `"Sukhothai [Province: Thailand]"', add
label define geolev1_lbl 764065 `"Phitsanulok [Province: Thailand]"', add
label define geolev1_lbl 764066 `"Phichit [Province: Thailand]"', add
label define geolev1_lbl 764067 `"Phetchabun [Province: Thailand]"', add
label define geolev1_lbl 764080 `"Nakhon Si Thammarat [Province: Thailand]"', add
label define geolev1_lbl 764081 `"Krabi [Province: Thailand]"', add
label define geolev1_lbl 764082 `"Phangnga [Province: Thailand]"', add
label define geolev1_lbl 764083 `"Phuket [Province: Thailand]"', add
label define geolev1_lbl 764084 `"Surat Thani [Province: Thailand]"', add
label define geolev1_lbl 764085 `"Ranong [Province: Thailand]"', add
label define geolev1_lbl 764086 `"Chumphon [Province: Thailand]"', add
label define geolev1_lbl 764090 `"Songkhla [Province: Thailand]"', add
label define geolev1_lbl 764091 `"Satun [Province: Thailand]"', add
label define geolev1_lbl 764092 `"Trang [Province: Thailand]"', add
label define geolev1_lbl 764093 `"Phatthalung [Province: Thailand]"', add
label define geolev1_lbl 764094 `"Pattani [Province: Thailand]"', add
label define geolev1_lbl 764095 `"Yala [Province: Thailand]"', add
label define geolev1_lbl 764096 `"Narathiwat [Province: Thailand]"', add
label define geolev1_lbl 792001 `"Adana, Gaziantep, Osmaniye and Kilis [Province: Turkey]"', add
label define geolev1_lbl 792002 `"Adiyaman [Province: Turkey]"', add
label define geolev1_lbl 792003 `"Afyon [Province: Turkey]"', add
label define geolev1_lbl 792004 `"Agri [Province: Turkey]"', add
label define geolev1_lbl 792005 `"Amasya [Province: Turkey]"', add
label define geolev1_lbl 792006 `"Ankara and Kirikkale [Province: Turkey]"', add
label define geolev1_lbl 792007 `"Antalya [Province: Turkey]"', add
label define geolev1_lbl 792008 `"Artvin [Province: Turkey]"', add
label define geolev1_lbl 792009 `"Aydin [Province: Turkey]"', add
label define geolev1_lbl 792010 `"Balikesir [Province: Turkey]"', add
label define geolev1_lbl 792011 `"Bilecik [Province: Turkey]"', add
label define geolev1_lbl 792012 `"Bingöl [Province: Turkey]"', add
label define geolev1_lbl 792013 `"Bitlis [Province: Turkey]"', add
label define geolev1_lbl 792014 `"Bolu and Düzce [Province: Turkey]"', add
label define geolev1_lbl 792015 `"Burdur [Province: Turkey]"', add
label define geolev1_lbl 792017 `"Çanakkale [Province: Turkey]"', add
label define geolev1_lbl 792019 `"Çorum [Province: Turkey]"', add
label define geolev1_lbl 792020 `"Denizli [Province: Turkey]"', add
label define geolev1_lbl 792021 `"Diyarbakir [Province: Turkey]"', add
label define geolev1_lbl 792022 `"Edirne [Province: Turkey]"', add
label define geolev1_lbl 792023 `"Elazig [Province: Turkey]"', add
label define geolev1_lbl 792024 `"Erzincan [Province: Turkey]"', add
label define geolev1_lbl 792025 `"Erzurum [Province: Turkey]"', add
label define geolev1_lbl 792026 `"Eskisehir [Province: Turkey]"', add
label define geolev1_lbl 792028 `"Giresun [Province: Turkey]"', add
label define geolev1_lbl 792029 `"Gümüshane and Bayburt [Province: Turkey]"', add
label define geolev1_lbl 792031 `"Hatay [Province: Turkey]"', add
label define geolev1_lbl 792032 `"Isparta [Province: Turkey]"', add
label define geolev1_lbl 792033 `"Mersin (içel) [Province: Turkey]"', add
label define geolev1_lbl 792034 `"Istanbul, Bursa, Kocaeli and Yalova [Province: Turkey]"', add
label define geolev1_lbl 792035 `"Izmir [Province: Turkey]"', add
label define geolev1_lbl 792036 `"Kars, Ardahan and Igdir [Province: Turkey]"', add
label define geolev1_lbl 792037 `"Kastamonu [Province: Turkey]"', add
label define geolev1_lbl 792038 `"Kayseri [Province: Turkey]"', add
label define geolev1_lbl 792039 `"Kirklareli [Province: Turkey]"', add
label define geolev1_lbl 792040 `"Kirsehir [Province: Turkey]"', add
label define geolev1_lbl 792042 `"Konya and Karaman [Province: Turkey]"', add
label define geolev1_lbl 792043 `"Kütahya [Province: Turkey]"', add
label define geolev1_lbl 792044 `"Malatya [Province: Turkey]"', add
label define geolev1_lbl 792045 `"Manisa [Province: Turkey]"', add
label define geolev1_lbl 792046 `"Kahramanmaras [Province: Turkey]"', add
label define geolev1_lbl 792047 `"Mardin, Hakkari, Siirt, Batman and Sirnak [Province: Turkey]"', add
label define geolev1_lbl 792048 `"Mugla [Province: Turkey]"', add
label define geolev1_lbl 792049 `"Mus [Province: Turkey]"', add
label define geolev1_lbl 792050 `"Nevsehir [Province: Turkey]"', add
label define geolev1_lbl 792051 `"Nigde and Aksaray [Province: Turkey]"', add
label define geolev1_lbl 792052 `"Ordu [Province: Turkey]"', add
label define geolev1_lbl 792053 `"Rize [Province: Turkey]"', add
label define geolev1_lbl 792054 `"Sakarya [Province: Turkey]"', add
label define geolev1_lbl 792055 `"Samsun [Province: Turkey]"', add
label define geolev1_lbl 792057 `"Sinop [Province: Turkey]"', add
label define geolev1_lbl 792058 `"Sivas [Province: Turkey]"', add
label define geolev1_lbl 792059 `"Tekirdag [Province: Turkey]"', add
label define geolev1_lbl 792060 `"Tokat [Province: Turkey]"', add
label define geolev1_lbl 792061 `"Trabzon [Province: Turkey]"', add
label define geolev1_lbl 792062 `"Tunceli [Province: Turkey]"', add
label define geolev1_lbl 792063 `"Sanliurfa [Province: Turkey]"', add
label define geolev1_lbl 792064 `"Usak [Province: Turkey]"', add
label define geolev1_lbl 792065 `"Van [Province: Turkey]"', add
label define geolev1_lbl 792066 `"Yozgat [Province: Turkey]"', add
label define geolev1_lbl 804001 `"The Autonomous Republic of Crimea [Region: Ukraine]"', add
label define geolev1_lbl 804005 `"Vinnytska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804007 `"Volynska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804012 `"Dnipropetrovska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804014 `"Donetska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804018 `"Zhytomyrska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804021 `"Zakarpatska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804023 `"Zaporizka oblast [Region: Ukraine]"', add
label define geolev1_lbl 804026 `"Ivano-Frankivska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804032 `"Kyivska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804035 `"Kirovohradska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804044 `"Luhanska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804046 `"Lvivska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804048 `"Mykolaivska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804051 `"Odeska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804053 `"Poltavska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804056 `"Rivnenska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804059 `"Sumska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804061 `"Ternopilska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804063 `"Kharkivska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804065 `"Khersonska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804068 `"Khmelnytska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804071 `"Cherkaska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804073 `"Chernivetska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804074 `"Chernihivska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804080 `"Kyiv  [Region: Ukraine]"', add
label define geolev1_lbl 804085 `"Sevastopol  [Region: Ukraine]"', add
label define geolev1_lbl 792067 `"Zonguldak, Çankiri, Karabuk and Bartin [Province: Turkey]"', add
label define geolev1_lbl 800101 `"Kalangala [District: Uganda]"', add
label define geolev1_lbl 800102 `"Kampala [District: Uganda]"', add
label define geolev1_lbl 800103 `"Kiboga [District: Uganda]"', add
label define geolev1_lbl 800104 `"Luwero and Nakasongola [District: Uganda]"', add
label define geolev1_lbl 800105 `"Masaka and Sembabule [District: Uganda]"', add
label define geolev1_lbl 800107 `"Mubende [District: Uganda]"', add
label define geolev1_lbl 800108 `"Mukono and Kayunga [District: Uganda]"', add
label define geolev1_lbl 800110 `"Rakai [District: Uganda]"', add
label define geolev1_lbl 800113 `"Mpigi and Wakiso [District: Uganda]"', add
label define geolev1_lbl 800203 `"Iganga, Buguri, and Mayuge [District: Uganda]"', add
label define geolev1_lbl 800204 `"Jinja [District: Uganda]"', add
label define geolev1_lbl 800205 `"Kamuli [District: Uganda]"', add
label define geolev1_lbl 800206 `"Kapchorwa [District: Uganda]"', add
label define geolev1_lbl 800208 `"Kumi [District: Uganda]"', add
label define geolev1_lbl 800209 `"Mbale and Sironko [District: Uganda]"', add
label define geolev1_lbl 800210 `"Pallisa [District: Uganda]"', add
label define geolev1_lbl 800211 `"Soroti, Katakwi, and Kaberamaido [District: Uganda]"', add
label define geolev1_lbl 800212 `"Busia and Troro [District: Uganda]"', add
label define geolev1_lbl 800301 `"Moyo and Adjumani [District: Uganda]"', add
label define geolev1_lbl 800302 `"Apac [District: Uganda]"', add
label define geolev1_lbl 800303 `"Arua and Yumbe [District: Uganda]"', add
label define geolev1_lbl 800304 `"Gulu [District: Uganda]"', add
label define geolev1_lbl 800306 `"Kotido [District: Uganda]"', add
label define geolev1_lbl 800307 `"Lira [District: Uganda]"', add
label define geolev1_lbl 800308 `"Moroto and Nakapiripirit [District: Uganda]"', add
label define geolev1_lbl 800310 `"Nebbi [District: Uganda]"', add
label define geolev1_lbl 800312 `"Kitgum and Pader [District: Uganda]"', add
label define geolev1_lbl 800401 `"Bundibugyo [District: Uganda]"', add
label define geolev1_lbl 800403 `"Hoima [District: Uganda]"', add
label define geolev1_lbl 800404 `"Kabale [District: Uganda]"', add
label define geolev1_lbl 800405 `"Kabarole, Kamwenge, and Kyenjojo [District: Uganda]"', add
label define geolev1_lbl 800406 `"Kasese [District: Uganda]"', add
label define geolev1_lbl 800407 `"Kibaale [District: Uganda]"', add
label define geolev1_lbl 800408 `"Kisoro [District: Uganda]"', add
label define geolev1_lbl 800409 `"Masindi [District: Uganda]"', add
label define geolev1_lbl 800410 `"Bushenyi, Mbarara, and Ntungamo [District: Uganda]"', add
label define geolev1_lbl 800412 `"Rukungiri and Kanungu [District: Uganda]"', add
label define geolev1_lbl 800999 `"Unknown [District: Uganda]"', add
label define geolev1_lbl 826011 `"North East [Region: United Kingdom]"', add
label define geolev1_lbl 826013 `"North West [Region: United Kingdom]"', add
label define geolev1_lbl 826014 `"Yorkshire and the Humber [Region: United Kingdom]"', add
label define geolev1_lbl 826021 `"East Midlands [Region: United Kingdom]"', add
label define geolev1_lbl 826022 `"West Midlands [Region: United Kingdom]"', add
label define geolev1_lbl 826031 `"East of England [Region: United Kingdom]"', add
label define geolev1_lbl 826032 `"South East and London [Region: United Kingdom]"', add
label define geolev1_lbl 826040 `"South West [Region: United Kingdom]"', add
label define geolev1_lbl 826060 `"Scotland [Region: United Kingdom]"', add
label define geolev1_lbl 826070 `"Wales [Region: United Kingdom]"', add
label define geolev1_lbl 826080 `"Northern Ireland [Region: United Kingdom]"', add
label define geolev1_lbl 840001 `"Alabama [State: U.S.]"', add
label define geolev1_lbl 840002 `"Alaska [State: U.S.]"', add
label define geolev1_lbl 840004 `"Arizona [State: U.S.]"', add
label define geolev1_lbl 840005 `"Arkansas [State: U.S.]"', add
label define geolev1_lbl 840006 `"California [State: U.S.]"', add
label define geolev1_lbl 840008 `"Colorado [State: U.S.]"', add
label define geolev1_lbl 840009 `"Connecticut [State: U.S.]"', add
label define geolev1_lbl 840010 `"Delaware [State: U.S.]"', add
label define geolev1_lbl 840011 `"District of Columbia [State: U.S.]"', add
label define geolev1_lbl 840012 `"Florida [State: U.S.]"', add
label define geolev1_lbl 840013 `"Georgia [State: U.S.]"', add
label define geolev1_lbl 840015 `"Hawaii [State: U.S.]"', add
label define geolev1_lbl 840016 `"Idaho [State: U.S.]"', add
label define geolev1_lbl 840017 `"Illinois [State: U.S.]"', add
label define geolev1_lbl 840018 `"Indiana [State: U.S.]"', add
label define geolev1_lbl 840019 `"Iowa [State: U.S.]"', add
label define geolev1_lbl 840020 `"Kansas [State: U.S.]"', add
label define geolev1_lbl 840021 `"Kentucky [State: U.S.]"', add
label define geolev1_lbl 840022 `"Louisiana [State: U.S.]"', add
label define geolev1_lbl 840023 `"Maine [State: U.S.]"', add
label define geolev1_lbl 840024 `"Maryland [State: U.S.]"', add
label define geolev1_lbl 840025 `"Massachusetts [State: U.S.]"', add
label define geolev1_lbl 840026 `"Michigan [State: U.S.]"', add
label define geolev1_lbl 840027 `"Minnesota [State: U.S.]"', add
label define geolev1_lbl 840028 `"Mississippi [State: U.S.]"', add
label define geolev1_lbl 840029 `"Missouri [State: U.S.]"', add
label define geolev1_lbl 840030 `"Montana [State: U.S.]"', add
label define geolev1_lbl 840031 `"Nebraska [State: U.S.]"', add
label define geolev1_lbl 840032 `"Nevada [State: U.S.]"', add
label define geolev1_lbl 840033 `"New Hampshire [State: U.S.]"', add
label define geolev1_lbl 840034 `"New Jersey [State: U.S.]"', add
label define geolev1_lbl 840035 `"New Mexico [State: U.S.]"', add
label define geolev1_lbl 840036 `"New York [State: U.S.]"', add
label define geolev1_lbl 840037 `"North Carolina [State: U.S.]"', add
label define geolev1_lbl 840038 `"North Dakota [State: U.S.]"', add
label define geolev1_lbl 840039 `"Ohio [State: U.S.]"', add
label define geolev1_lbl 840040 `"Oklahoma [State: U.S.]"', add
label define geolev1_lbl 840041 `"Oregon [State: U.S.]"', add
label define geolev1_lbl 840042 `"Pennsylvania [State: U.S.]"', add
label define geolev1_lbl 840044 `"Rhode Island [State: U.S.]"', add
label define geolev1_lbl 840045 `"South Carolina [State: U.S.]"', add
label define geolev1_lbl 840046 `"South Dakota [State: U.S.]"', add
label define geolev1_lbl 840047 `"Tennessee [State: U.S.]"', add
label define geolev1_lbl 840048 `"Texas [State: U.S.]"', add
label define geolev1_lbl 840049 `"Utah [State: U.S.]"', add
label define geolev1_lbl 840050 `"Vermont [State: U.S.]"', add
label define geolev1_lbl 840051 `"Virginia [State: U.S.]"', add
label define geolev1_lbl 840053 `"Washington [State: U.S.]"', add
label define geolev1_lbl 840054 `"West Virginia [State: U.S.]"', add
label define geolev1_lbl 840055 `"Wisconsin [State: U.S.]"', add
label define geolev1_lbl 840056 `"Wyoming [State: U.S.]"', add
label define geolev1_lbl 840099 `"State not identified [State: U.S.]"', add
label define geolev1_lbl 858001 `"Montevideo [Department: Uruguay]"', add
label define geolev1_lbl 858002 `"Artigas [Department: Uruguay]"', add
label define geolev1_lbl 858003 `"Canelones [Department: Uruguay]"', add
label define geolev1_lbl 858004 `"Cerro Largo [Department: Uruguay]"', add
label define geolev1_lbl 858005 `"Colonia [Department: Uruguay]"', add
label define geolev1_lbl 858006 `"Durazno [Department: Uruguay]"', add
label define geolev1_lbl 858007 `"Flores [Department: Uruguay]"', add
label define geolev1_lbl 858008 `"Florida [Department: Uruguay]"', add
label define geolev1_lbl 858009 `"Lavalleja [Department: Uruguay]"', add
label define geolev1_lbl 858010 `"Maldonado [Department: Uruguay]"', add
label define geolev1_lbl 858011 `"Paysandu [Department: Uruguay]"', add
label define geolev1_lbl 858012 `"Rio Negro [Department: Uruguay]"', add
label define geolev1_lbl 858013 `"Rivera [Department: Uruguay]"', add
label define geolev1_lbl 858014 `"Rocha [Department: Uruguay]"', add
label define geolev1_lbl 858015 `"Salto [Department: Uruguay]"', add
label define geolev1_lbl 858016 `"San Jose [Department: Uruguay]"', add
label define geolev1_lbl 858017 `"Soriano [Department: Uruguay]"', add
label define geolev1_lbl 858018 `"Tacuarembo [Department: Uruguay]"', add
label define geolev1_lbl 858019 `"Treinta y Tres [Department: Uruguay]"', add
label define geolev1_lbl 862001 `"Federal District and Vargas  [State: Venezuela]"', add
label define geolev1_lbl 862002 `"Amazonas Federal Territory [State: Venezuela]"', add
label define geolev1_lbl 862003 `"Anzóategui  [State: Venezuela]"', add
label define geolev1_lbl 862004 `"Apure  [State: Venezuela]"', add
label define geolev1_lbl 862005 `"Aragua [State: Venezuela]"', add
label define geolev1_lbl 862006 `"Barinas [State: Venezuela]"', add
label define geolev1_lbl 862007 `"Bolívar [State: Venezuela]"', add
label define geolev1_lbl 862008 `"Carabobo [State: Venezuela]"', add
label define geolev1_lbl 862009 `"Cojedes  [State: Venezuela]"', add
label define geolev1_lbl 862010 `"Amacuros Delta Federal Territory [State: Venezuela]"', add
label define geolev1_lbl 862011 `"Falcón  [State: Venezuela]"', add
label define geolev1_lbl 862012 `"Guárico [State: Venezuela]"', add
label define geolev1_lbl 862013 `"Lara  [State: Venezuela]"', add
label define geolev1_lbl 862014 `"Mérida [State: Venezuela]"', add
label define geolev1_lbl 862015 `"Miranda [State: Venezuela]"', add
label define geolev1_lbl 862016 `"Monagas [State: Venezuela]"', add
label define geolev1_lbl 862017 `"Nueva Esparta and Federal Dependencies [State: Venezuela]"', add
label define geolev1_lbl 862018 `"Portuguesa [State: Venezuela]"', add
label define geolev1_lbl 862019 `"Sucre [State: Venezuela]"', add
label define geolev1_lbl 862020 `"Táchira [State: Venezuela]"', add
label define geolev1_lbl 862021 `"Trujillo [State: Venezuela]"', add
label define geolev1_lbl 862022 `"Yaracuy [State: Venezuela]"', add
label define geolev1_lbl 862023 `"Zulia [State: Venezuela]"', add
label define geolev1_lbl 704001 `"Ninh Binh, Hoa Binh, Ha Noi, Phu Tho, Vinh Phuc, Ha Nam, and Nam Dinh [Province: Vietnam]"', add
label define geolev1_lbl 704002 `"Ha Giang, and Tuyen Quang [Province: Vietnam]"', add
label define geolev1_lbl 704004 `"Cao Bang [Province: Vietnam]"', add
label define geolev1_lbl 704014 `"Son La [Province: Vietnam]"', add
label define geolev1_lbl 704015 `"Lai Chau, Dien Bien, Lao Cai, and Yen Bai [Province: Vietnam]"', add
label define geolev1_lbl 704019 `"Bac Kan, and Thai Nguyen [Province: Vietnam]"', add
label define geolev1_lbl 704020 `"Lang Son [Province: Vietnam]"', add
label define geolev1_lbl 704022 `"Quang Ninh [Province: Vietnam]"', add
label define geolev1_lbl 704024 `"Bac Giang, and Bac Ninh [Province: Vietnam]"', add
label define geolev1_lbl 704030 `"Hai Duong, and Hung Yen [Province: Vietnam]"', add
label define geolev1_lbl 704031 `"Hai Phong [Province: Vietnam]"', add
label define geolev1_lbl 704034 `"Thai Binh [Province: Vietnam]"', add
label define geolev1_lbl 704038 `"Thanh Hoa [Province: Vietnam]"', add
label define geolev1_lbl 704040 `"Nghe An, and  Ha Tinh [Province: Vietnam]"', add
label define geolev1_lbl 704046 `"Quang Binh, Quang Tri, and Thua Thien - Hue [Province: Vietnam]"', add
label define geolev1_lbl 704049 `"Da Nang, and Quang Nam [Province: Vietnam]"', add
label define geolev1_lbl 704051 `"Binh Dinh and Quang Ngai [Province: Vietnam]"', add
label define geolev1_lbl 704054 `"Phu Yen and Khanh Hoa [Province: Vietnam]"', add
label define geolev1_lbl 704060 `"Thuan Hai, Ninh Thuan, and Binh Thuan [Province: Vietnam]"', add
label define geolev1_lbl 704062 `"Gia Lai, and Kon Tum [Province: Vietnam]"', add
label define geolev1_lbl 704066 `"Dak Lak and Dak Nong [Province: Vietnam]"', add
label define geolev1_lbl 704068 `"Lam Dong [Province: Vietnam]"', add
label define geolev1_lbl 704072 `"Tay Ninh [Province: Vietnam]"', add
label define geolev1_lbl 704074 `"Binh Duong, and Binh Phuoc [Province: Vietnam]"', add
label define geolev1_lbl 704075 `"Dong Nai and Ba Ria - Vung Tau [Province: Vietnam]"', add
label define geolev1_lbl 704079 `"Ho Chi Minh City [Province: Vietnam]"', add
label define geolev1_lbl 704080 `"Long An [Province: Vietnam]"', add
label define geolev1_lbl 704082 `"Tien Giang [Province: Vietnam]"', add
label define geolev1_lbl 704083 `"Ben Tre [Province: Vietnam]"', add
label define geolev1_lbl 704086 `"Vinh Long, and Tra Vinh [Province: Vietnam]"', add
label define geolev1_lbl 704087 `"Dong Thap [Province: Vietnam]"', add
label define geolev1_lbl 704089 `"An Giang [Province: Vietnam]"', add
label define geolev1_lbl 704091 `"Kien Giang [Province: Vietnam]"', add
label define geolev1_lbl 704094 `"Hau Giang, Can Tho city, and Soc Trang [Province: Vietnam]"', add
label define geolev1_lbl 704096 `"Bac Lieu, and Ca Mau [Province: Vietnam]"', add
label define geolev1_lbl 894001 `"Central [Province: Zambia]"', add
label define geolev1_lbl 894002 `"Copperbelt [Province: Zambia]"', add
label define geolev1_lbl 894003 `"Eastern, Muchinga, and Northern [Province: Zambia]"', add
label define geolev1_lbl 894004 `"Luapula [Province: Zambia]"', add
label define geolev1_lbl 894005 `"Lusaka [Province: Zambia]"', add
label define geolev1_lbl 894008 `"North Western [Province: Zambia]"', add
label define geolev1_lbl 894009 `"Southern [Province: Zambia]"', add
label define geolev1_lbl 894010 `"Western [Province: Zambia]"', add
label values geolev1 geolev1_lbl

label define do10a_hhnum_lbl 1 `"1"'
label define do10a_hhnum_lbl 2 `"2"', add
label define do10a_hhnum_lbl 3 `"3"', add
label define do10a_hhnum_lbl 4 `"4"', add
label define do10a_hhnum_lbl 5 `"5"', add
label define do10a_hhnum_lbl 6 `"6"', add
label define do10a_hhnum_lbl 7 `"7"', add
label values do10a_hhnum do10a_hhnum_lbl

label define do10a_hhn_lbl 1 `"1"'
label define do10a_hhn_lbl 2 `"2"', add
label define do10a_hhn_lbl 3 `"3"', add
label define do10a_hhn_lbl 4 `"4"', add
label define do10a_hhn_lbl 5 `"5"', add
label define do10a_hhn_lbl 6 `"6"', add
label define do10a_hhn_lbl 7 `"7"', add
label define do10a_hhn_lbl 8 `"8"', add
label define do10a_hhn_lbl 9 `"9"', add
label values do10a_hhn do10a_hhn_lbl

label define do10a_pernd_lbl 00 `"0"'
label define do10a_pernd_lbl 01 `"1"', add
label define do10a_pernd_lbl 02 `"2"', add
label define do10a_pernd_lbl 03 `"3"', add
label define do10a_pernd_lbl 04 `"4"', add
label define do10a_pernd_lbl 05 `"5"', add
label define do10a_pernd_lbl 06 `"6"', add
label define do10a_pernd_lbl 07 `"7"', add
label define do10a_pernd_lbl 08 `"8"', add
label define do10a_pernd_lbl 09 `"9"', add
label define do10a_pernd_lbl 10 `"10"', add
label define do10a_pernd_lbl 11 `"11"', add
label define do10a_pernd_lbl 12 `"12"', add
label define do10a_pernd_lbl 13 `"13"', add
label define do10a_pernd_lbl 14 `"14"', add
label define do10a_pernd_lbl 15 `"15"', add
label define do10a_pernd_lbl 16 `"16"', add
label define do10a_pernd_lbl 17 `"17"', add
label define do10a_pernd_lbl 18 `"18"', add
label define do10a_pernd_lbl 19 `"19"', add
label define do10a_pernd_lbl 20 `"20"', add
label define do10a_pernd_lbl 21 `"21"', add
label define do10a_pernd_lbl 22 `"22"', add
label define do10a_pernd_lbl 23 `"23"', add
label define do10a_pernd_lbl 24 `"24"', add
label define do10a_pernd_lbl 25 `"25"', add
label define do10a_pernd_lbl 26 `"26"', add
label define do10a_pernd_lbl 27 `"27"', add
label define do10a_pernd_lbl 28 `"28"', add
label define do10a_pernd_lbl 29 `"29"', add
label define do10a_pernd_lbl 30 `"30"', add
label values do10a_pernd do10a_pernd_lbl

label define do10a_fbig_lbl 0 `"No problem"'
label define do10a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define do10a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values do10a_fbig do10a_fbig_lbl

label define do10a_region_lbl 01 `"Cibao Norte"'
label define do10a_region_lbl 02 `"Cibao Sur"', add
label define do10a_region_lbl 03 `"Cibao Nordeste"', add
label define do10a_region_lbl 04 `"Cibao Noroeste"', add
label define do10a_region_lbl 05 `"Valdesia"', add
label define do10a_region_lbl 06 `"Enriquillo"', add
label define do10a_region_lbl 07 `"El Valle"', add
label define do10a_region_lbl 08 `"Yuma"', add
label define do10a_region_lbl 09 `"Higuamo"', add
label define do10a_region_lbl 10 `"Ozama"', add
label values do10a_region do10a_region_lbl

label define do10a_province_lbl 01 `"Federal district"'
label define do10a_province_lbl 02 `"Azua"', add
label define do10a_province_lbl 03 `"Baoruco"', add
label define do10a_province_lbl 04 `"Barahona"', add
label define do10a_province_lbl 05 `"Dajabón"', add
label define do10a_province_lbl 06 `"Duarte"', add
label define do10a_province_lbl 07 `"Elías Piña"', add
label define do10a_province_lbl 08 `"El Seibo"', add
label define do10a_province_lbl 09 `"Espaillat"', add
label define do10a_province_lbl 10 `"Independencia"', add
label define do10a_province_lbl 11 `"La Altagracia"', add
label define do10a_province_lbl 12 `"La Romana"', add
label define do10a_province_lbl 13 `"La Vega"', add
label define do10a_province_lbl 14 `"María Trinidad Sánchez"', add
label define do10a_province_lbl 15 `"Monte Cristi"', add
label define do10a_province_lbl 16 `"Pedernales"', add
label define do10a_province_lbl 17 `"Peravia"', add
label define do10a_province_lbl 18 `"Puerto Plata"', add
label define do10a_province_lbl 19 `"Hermanas Mirabal"', add
label define do10a_province_lbl 20 `"Samaná"', add
label define do10a_province_lbl 21 `"San Cristóbal"', add
label define do10a_province_lbl 22 `"San Juan"', add
label define do10a_province_lbl 23 `"San Pedro de Macorís"', add
label define do10a_province_lbl 24 `"Sánchez Ramírez"', add
label define do10a_province_lbl 25 `"Santiago"', add
label define do10a_province_lbl 26 `"Santiago Rodríguez"', add
label define do10a_province_lbl 27 `"Valverde"', add
label define do10a_province_lbl 28 `"Monseñor Nouel"', add
label define do10a_province_lbl 29 `"Monte Plata"', add
label define do10a_province_lbl 30 `"Hato Mayor"', add
label define do10a_province_lbl 31 `"San José de Ocoa"', add
label define do10a_province_lbl 32 `"Santo Domingo"', add
label values do10a_province do10a_province_lbl

label define do10a_urban_lbl 1 `"Urban"'
label define do10a_urban_lbl 2 `"Rural"', add
label values do10a_urban do10a_urban_lbl

label define do10a_dwtype_lbl 01 `"Independent House"'
label define do10a_dwtype_lbl 02 `"Apartment"', add
label define do10a_dwtype_lbl 03 `"Room in bunkhouse or in rear of premises"', add
label define do10a_dwtype_lbl 04 `"Room in barracon"', add
label define do10a_dwtype_lbl 05 `"Housing shared as business"', add
label define do10a_dwtype_lbl 06 `"Premises not intended for habitation"', add
label define do10a_dwtype_lbl 07 `"Other type of private dwelling"', add
label define do10a_dwtype_lbl 08 `"Hotel, pension or guesthouse"', add
label define do10a_dwtype_lbl 09 `"Military quarters"', add
label define do10a_dwtype_lbl 10 `"Prison"', add
label define do10a_dwtype_lbl 12 `"Religious institution or boarding school"', add
label define do10a_dwtype_lbl 13 `"Other type of collective dwelling or homeless"', add
label values do10a_dwtype do10a_dwtype_lbl

label define do10a_occup_lbl 1 `"Occupied with present residents"'
label define do10a_occup_lbl 2 `"Vacant"', add
label define do10a_occup_lbl 9 `"NIU (not in universe)"', add
label values do10a_occup do10a_occup_lbl

label define do10a_walls_lbl 1 `"Concrete or concrete block"'
label define do10a_walls_lbl 2 `"Wood"', add
label define do10a_walls_lbl 3 `"Palm planks"', add
label define do10a_walls_lbl 4 `"Wood planks"', add
label define do10a_walls_lbl 5 `"Palm leaves"', add
label define do10a_walls_lbl 6 `"Other"', add
label define do10a_walls_lbl 9 `"NIU (not in universe)"', add
label values do10a_walls do10a_walls_lbl

label define do10a_roof_lbl 1 `"Concrete"'
label define do10a_roof_lbl 2 `"Tin"', add
label define do10a_roof_lbl 3 `"Asbestos cement"', add
label define do10a_roof_lbl 4 `"Reeds"', add
label define do10a_roof_lbl 5 `"Palm leaves"', add
label define do10a_roof_lbl 6 `"Other"', add
label define do10a_roof_lbl 9 `"NIU (not in universe)"', add
label values do10a_roof do10a_roof_lbl

label define do10a_floor_lbl 1 `"Tile"'
label define do10a_floor_lbl 2 `"Cement"', add
label define do10a_floor_lbl 3 `"Granite"', add
label define do10a_floor_lbl 4 `"Marble"', add
label define do10a_floor_lbl 5 `"Ceramic"', add
label define do10a_floor_lbl 6 `"Wood"', add
label define do10a_floor_lbl 7 `"Dirt"', add
label define do10a_floor_lbl 8 `"Other"', add
label define do10a_floor_lbl 9 `"NIU (not in universe)"', add
label values do10a_floor do10a_floor_lbl

label define do10a_kitchen_lbl 1 `"Yes, inside the dwelling"'
label define do10a_kitchen_lbl 2 `"Yes, outside the dwelling"', add
label define do10a_kitchen_lbl 3 `"No"', add
label define do10a_kitchen_lbl 9 `"NIU (not in universe)"', add
label values do10a_kitchen do10a_kitchen_lbl

label define do10a_rooms_lbl 01 `"1"'
label define do10a_rooms_lbl 02 `"2"', add
label define do10a_rooms_lbl 03 `"3"', add
label define do10a_rooms_lbl 04 `"4"', add
label define do10a_rooms_lbl 05 `"5"', add
label define do10a_rooms_lbl 06 `"6"', add
label define do10a_rooms_lbl 07 `"7"', add
label define do10a_rooms_lbl 08 `"8"', add
label define do10a_rooms_lbl 09 `"9"', add
label define do10a_rooms_lbl 10 `"10"', add
label define do10a_rooms_lbl 11 `"11"', add
label define do10a_rooms_lbl 12 `"12"', add
label define do10a_rooms_lbl 13 `"13"', add
label define do10a_rooms_lbl 14 `"14+"', add
label define do10a_rooms_lbl 99 `"NIU (not in universe)"', add
label values do10a_rooms do10a_rooms_lbl

label define do10a_hhs_lbl 1 `"1"'
label define do10a_hhs_lbl 2 `"2"', add
label define do10a_hhs_lbl 3 `"3"', add
label define do10a_hhs_lbl 4 `"4"', add
label define do10a_hhs_lbl 5 `"5+"', add
label define do10a_hhs_lbl 9 `"NIU (not in universe)"', add
label values do10a_hhs do10a_hhs_lbl

label define do10a_qualstr_lbl 1 `"High"'
label define do10a_qualstr_lbl 2 `"Average"', add
label define do10a_qualstr_lbl 3 `"Poor"', add
label define do10a_qualstr_lbl 9 `"NIU (not in universe)"', add
label values do10a_qualstr do10a_qualstr_lbl

label define do10a_access_lbl 1 `"Paved street"'
label define do10a_access_lbl 2 `"Paved road"', add
label define do10a_access_lbl 3 `"Unpaved street"', add
label define do10a_access_lbl 4 `"Unpaved road"', add
label define do10a_access_lbl 5 `"Alley"', add
label define do10a_access_lbl 6 `"Path or trail"', add
label define do10a_access_lbl 7 `"Other"', add
label define do10a_access_lbl 9 `"Unknown"', add
label values do10a_access do10a_access_lbl

label define do10a_accessc_lbl 1 `"Good"'
label define do10a_accessc_lbl 2 `"With some damage"', add
label define do10a_accessc_lbl 3 `"Very deteriorated"', add
label define do10a_accessc_lbl 4 `"Impassable"', add
label define do10a_accessc_lbl 9 `"Unknown"', add
label values do10a_accessc do10a_accessc_lbl

label define do10a_transp_lbl 1 `"Public transport bus"'
label define do10a_transp_lbl 2 `"Pubic transport truck"', add
label define do10a_transp_lbl 3 `"Public transport car"', add
label define do10a_transp_lbl 4 `"Private vehicle"', add
label define do10a_transp_lbl 5 `"Motorcycle taxi"', add
label define do10a_transp_lbl 6 `"Donkey, horse or mule"', add
label define do10a_transp_lbl 7 `"On foot"', add
label define do10a_transp_lbl 8 `"Other"', add
label define do10a_transp_lbl 9 `"Unknown"', add
label values do10a_transp do10a_transp_lbl

label define do10a_tranbus_lbl 1 `"Yes"'
label define do10a_tranbus_lbl 2 `"No"', add
label define do10a_tranbus_lbl 9 `"Unknown"', add
label values do10a_tranbus do10a_tranbus_lbl

label define do10a_trantruc_lbl 1 `"Yes"'
label define do10a_trantruc_lbl 2 `"No"', add
label define do10a_trantruc_lbl 9 `"Unknown"', add
label values do10a_trantruc do10a_trantruc_lbl

label define do10a_trancar_lbl 1 `"Yes"'
label define do10a_trancar_lbl 2 `"No"', add
label define do10a_trancar_lbl 9 `"Unknown"', add
label values do10a_trancar do10a_trancar_lbl

label define do10a_tranmoto_lbl 1 `"Yes"'
label define do10a_tranmoto_lbl 2 `"No"', add
label define do10a_tranmoto_lbl 9 `"Unknown"', add
label values do10a_tranmoto do10a_tranmoto_lbl

label define do10a_trananim_lbl 1 `"Yes"'
label define do10a_trananim_lbl 2 `"No"', add
label define do10a_trananim_lbl 9 `"Unknown"', add
label values do10a_trananim do10a_trananim_lbl

label define do10a_tranoth_lbl 1 `"Yes"'
label define do10a_tranoth_lbl 2 `"No"', add
label define do10a_tranoth_lbl 9 `"Unknown"', add
label values do10a_tranoth do10a_tranoth_lbl

label define do10a_hazlands_lbl 1 `"Yes"'
label define do10a_hazlands_lbl 2 `"No"', add
label define do10a_hazlands_lbl 9 `"Unknown"', add
label values do10a_hazlands do10a_hazlands_lbl

label define do10a_hazsinkh_lbl 1 `"Yes"'
label define do10a_hazsinkh_lbl 2 `"No"', add
label define do10a_hazsinkh_lbl 9 `"Unknown"', add
label values do10a_hazsinkh do10a_hazsinkh_lbl

label define do10a_hazrocks_lbl 1 `"Yes"'
label define do10a_hazrocks_lbl 2 `"No"', add
label define do10a_hazrocks_lbl 9 `"Unknown"', add
label values do10a_hazrocks do10a_hazrocks_lbl

label define do10a_hazffire_lbl 1 `"Yes"'
label define do10a_hazffire_lbl 2 `"No"', add
label define do10a_hazffire_lbl 9 `"Unknown"', add
label values do10a_hazffire do10a_hazffire_lbl

label define do10a_polstagw_lbl 1 `"Yes"'
label define do10a_polstagw_lbl 2 `"No"', add
label define do10a_polstagw_lbl 9 `"Unknown"', add
label values do10a_polstagw do10a_polstagw_lbl

label define do10a_polwaste_lbl 1 `"Yes"'
label define do10a_polwaste_lbl 2 `"No"', add
label define do10a_polwaste_lbl 9 `"Unknown"', add
label values do10a_polwaste do10a_polwaste_lbl

label define do10a_polfarm_lbl 1 `"Yes"'
label define do10a_polfarm_lbl 2 `"No"', add
label define do10a_polfarm_lbl 9 `"Unknown"', add
label values do10a_polfarm do10a_polfarm_lbl

label define do10a_polsmoke_lbl 1 `"Yes"'
label define do10a_polsmoke_lbl 2 `"No"', add
label define do10a_polsmoke_lbl 9 `"Unknown"', add
label values do10a_polsmoke do10a_polsmoke_lbl

label define do10a_polfwast_lbl 1 `"Yes"'
label define do10a_polfwast_lbl 2 `"No"', add
label define do10a_polfwast_lbl 9 `"Unknown"', add
label values do10a_polfwast do10a_polfwast_lbl

label define do10a_polgasp_lbl 1 `"Yes"'
label define do10a_polgasp_lbl 2 `"No"', add
label define do10a_polgasp_lbl 9 `"Unknown"', add
label values do10a_polgasp do10a_polgasp_lbl

label define do10a_polfuel_lbl 1 `"Yes"'
label define do10a_polfuel_lbl 2 `"No"', add
label define do10a_polfuel_lbl 9 `"Unknown"', add
label values do10a_polfuel do10a_polfuel_lbl

label define do10a_polchemp_lbl 1 `"Yes"'
label define do10a_polchemp_lbl 2 `"No"', add
label define do10a_polchemp_lbl 9 `"Unknown"', add
label values do10a_polchemp do10a_polchemp_lbl

label define do10a_polvnois_lbl 1 `"Yes"'
label define do10a_polvnois_lbl 2 `"No"', add
label define do10a_polvnois_lbl 9 `"Unknown"', add
label values do10a_polvnois do10a_polvnois_lbl

label define do10a_polfnois_lbl 1 `"Yes"'
label define do10a_polfnois_lbl 2 `"No"', add
label define do10a_polfnois_lbl 9 `"Unknown"', add
label values do10a_polfnois do10a_polfnois_lbl

label define do10a_polpwrp_lbl 1 `"Yes"'
label define do10a_polpwrp_lbl 2 `"No"', add
label define do10a_polpwrp_lbl 9 `"Unknown"', add
label values do10a_polpwrp do10a_polpwrp_lbl

label define do10a_polmusic_lbl 1 `"Yes"'
label define do10a_polmusic_lbl 2 `"No"', add
label define do10a_polmusic_lbl 9 `"Unknown"', add
label values do10a_polmusic do10a_polmusic_lbl

label define do10a_poloth_lbl 1 `"Yes"'
label define do10a_poloth_lbl 2 `"No"', add
label define do10a_poloth_lbl 9 `"Unknown"', add
label values do10a_poloth do10a_poloth_lbl

label define do10a_dlriver_lbl 1 `"Yes"'
label define do10a_dlriver_lbl 2 `"No"', add
label define do10a_dlriver_lbl 9 `"Unknown"', add
label values do10a_dlriver do10a_dlriver_lbl

label define do10a_dlcanal_lbl 1 `"Yes"'
label define do10a_dlcanal_lbl 2 `"No"', add
label define do10a_dlcanal_lbl 9 `"Unknown"', add
label values do10a_dlcanal do10a_dlcanal_lbl

label define do10a_dlmount_lbl 1 `"Yes"'
label define do10a_dlmount_lbl 2 `"No"', add
label define do10a_dlmount_lbl 9 `"Unknown"', add
label values do10a_dlmount do10a_dlmount_lbl

label define do10a_dlhills_lbl 1 `"Yes"'
label define do10a_dlhills_lbl 2 `"No"', add
label define do10a_dlhills_lbl 9 `"Unknown"', add
label values do10a_dlhills do10a_dlhills_lbl

label define do10a_dlseaf_lbl 1 `"Yes"'
label define do10a_dlseaf_lbl 2 `"No"', add
label define do10a_dlseaf_lbl 9 `"Unknown"', add
label values do10a_dlseaf do10a_dlseaf_lbl

label define do10a_dlbeach_lbl 1 `"Yes"'
label define do10a_dlbeach_lbl 2 `"No"', add
label define do10a_dlbeach_lbl 9 `"Unknown"', add
label values do10a_dlbeach do10a_dlbeach_lbl

label define do10a_dllake_lbl 1 `"Yes"'
label define do10a_dllake_lbl 2 `"No"', add
label define do10a_dllake_lbl 9 `"Unknown"', add
label values do10a_dllake do10a_dllake_lbl

label define do10a_dlmine_lbl 1 `"Yes"'
label define do10a_dlmine_lbl 2 `"No"', add
label define do10a_dlmine_lbl 9 `"Unknown"', add
label values do10a_dlmine do10a_dlmine_lbl

label define do10a_dlrisk_lbl 1 `"Yes"'
label define do10a_dlrisk_lbl 2 `"No"', add
label define do10a_dlrisk_lbl 9 `"Unknown"', add
label values do10a_dlrisk do10a_dlrisk_lbl

label define do10a_nathurr_lbl 1 `"Yes"'
label define do10a_nathurr_lbl 2 `"No"', add
label define do10a_nathurr_lbl 9 `"Unknown"', add
label values do10a_nathurr do10a_nathurr_lbl

label define do10a_nattordo_lbl 1 `"Yes"'
label define do10a_nattordo_lbl 2 `"No"', add
label define do10a_nattordo_lbl 9 `"Unknown"', add
label values do10a_nattordo do10a_nattordo_lbl

label define do10a_natstorm_lbl 1 `"Yes"'
label define do10a_natstorm_lbl 2 `"No"', add
label define do10a_natstorm_lbl 9 `"Unknown"', add
label values do10a_natstorm do10a_natstorm_lbl

label define do10a_natflood_lbl 1 `"Yes"'
label define do10a_natflood_lbl 2 `"No"', add
label define do10a_natflood_lbl 9 `"Unknown"', add
label values do10a_natflood do10a_natflood_lbl

label define do10a_nattorn_lbl 1 `"Yes"'
label define do10a_nattorn_lbl 2 `"No"', add
label define do10a_nattorn_lbl 9 `"Unknown"', add
label values do10a_nattorn do10a_nattorn_lbl

label define do10a_nattorn_lbl 1 `"Yes"'
label define do10a_nattorn_lbl 2 `"No"', add
label define do10a_nattorn_lbl 9 `"Unknown"', add
label values do10a_nattorn do10a_nattorn_lbl

label define do10a_natxcold_lbl 1 `"Yes"'
label define do10a_natxcold_lbl 2 `"No"', add
label define do10a_natxcold_lbl 9 `"Unknown"', add
label values do10a_natxcold do10a_natxcold_lbl

label define do10a_natxheat_lbl 1 `"Yes"'
label define do10a_natxheat_lbl 2 `"No"', add
label define do10a_natxheat_lbl 9 `"Unknown"', add
label values do10a_natxheat do10a_natxheat_lbl

label define do10a_nattsun_lbl 1 `"Yes"'
label define do10a_nattsun_lbl 2 `"No"', add
label define do10a_nattsun_lbl 9 `"Unknown"', add
label values do10a_nattsun do10a_nattsun_lbl

label define do10a_natdrght_lbl 1 `"Yes"'
label define do10a_natdrght_lbl 2 `"No"', add
label define do10a_natdrght_lbl 9 `"Unknown"', add
label values do10a_natdrght do10a_natdrght_lbl

label define do10a_natlands_lbl 1 `"Yes"'
label define do10a_natlands_lbl 2 `"No"', add
label define do10a_natlands_lbl 9 `"Unknown"', add
label values do10a_natlands do10a_natlands_lbl

label define do10a_natsinkh_lbl 1 `"Yes"'
label define do10a_natsinkh_lbl 2 `"No"', add
label define do10a_natsinkh_lbl 9 `"Unknown"', add
label values do10a_natsinkh do10a_natsinkh_lbl

label define do10a_natfire_lbl 1 `"Yes"'
label define do10a_natfire_lbl 2 `"No"', add
label define do10a_natfire_lbl 9 `"Unknown"', add
label values do10a_natfire do10a_natfire_lbl

label define do10a_nateartq_lbl 1 `"Yes"'
label define do10a_nateartq_lbl 2 `"No"', add
label define do10a_nateartq_lbl 9 `"Unknown"', add
label values do10a_nateartq do10a_nateartq_lbl

label define do10a_natoth_lbl 1 `"Yes"'
label define do10a_natoth_lbl 2 `"No"', add
label define do10a_natoth_lbl 9 `"Unknown"', add
label values do10a_natoth do10a_natoth_lbl

label define do10a_cdsschl_lbl 1 `"Yes"'
label define do10a_cdsschl_lbl 2 `"No"', add
label define do10a_cdsschl_lbl 9 `"Unknown"', add
label values do10a_cdsschl do10a_cdsschl_lbl

label define do10a_cdschrch_lbl 1 `"Yes"'
label define do10a_cdschrch_lbl 2 `"No"', add
label define do10a_cdschrch_lbl 9 `"Unknown"', add
label values do10a_cdschrch do10a_cdschrch_lbl

label define do10a_cdscomhl_lbl 1 `"Yes"'
label define do10a_cdscomhl_lbl 2 `"No"', add
label define do10a_cdscomhl_lbl 9 `"Unknown"', add
label values do10a_cdscomhl do10a_cdscomhl_lbl

label define do10a_cdssport_lbl 1 `"Yes"'
label define do10a_cdssport_lbl 2 `"No"', add
label define do10a_cdssport_lbl 9 `"Unknown"', add
label values do10a_cdssport do10a_cdssport_lbl

label define do10a_cdsoth_lbl 1 `"Yes"'
label define do10a_cdsoth_lbl 2 `"No"', add
label define do10a_cdsoth_lbl 9 `"Unknown"', add
label values do10a_cdsoth do10a_cdsoth_lbl

label define do10a_disthosp_lbl 00 `"0"'
label define do10a_disthosp_lbl 01 `"1"', add
label define do10a_disthosp_lbl 02 `"2"', add
label define do10a_disthosp_lbl 03 `"3"', add
label define do10a_disthosp_lbl 04 `"4"', add
label define do10a_disthosp_lbl 05 `"5"', add
label define do10a_disthosp_lbl 06 `"6"', add
label define do10a_disthosp_lbl 07 `"7"', add
label define do10a_disthosp_lbl 08 `"8"', add
label define do10a_disthosp_lbl 09 `"9"', add
label define do10a_disthosp_lbl 10 `"10"', add
label define do10a_disthosp_lbl 11 `"11"', add
label define do10a_disthosp_lbl 12 `"12"', add
label define do10a_disthosp_lbl 13 `"13"', add
label define do10a_disthosp_lbl 14 `"14"', add
label define do10a_disthosp_lbl 15 `"15"', add
label define do10a_disthosp_lbl 16 `"16"', add
label define do10a_disthosp_lbl 17 `"17"', add
label define do10a_disthosp_lbl 18 `"18"', add
label define do10a_disthosp_lbl 19 `"19"', add
label define do10a_disthosp_lbl 20 `"20"', add
label define do10a_disthosp_lbl 21 `"21"', add
label define do10a_disthosp_lbl 22 `"22"', add
label define do10a_disthosp_lbl 23 `"23"', add
label define do10a_disthosp_lbl 24 `"24"', add
label define do10a_disthosp_lbl 25 `"25"', add
label define do10a_disthosp_lbl 26 `"26"', add
label define do10a_disthosp_lbl 27 `"27"', add
label define do10a_disthosp_lbl 28 `"28"', add
label define do10a_disthosp_lbl 29 `"29"', add
label define do10a_disthosp_lbl 30 `"30"', add
label define do10a_disthosp_lbl 31 `"31"', add
label define do10a_disthosp_lbl 32 `"32"', add
label define do10a_disthosp_lbl 33 `"33"', add
label define do10a_disthosp_lbl 34 `"34"', add
label define do10a_disthosp_lbl 35 `"35"', add
label define do10a_disthosp_lbl 36 `"36"', add
label define do10a_disthosp_lbl 37 `"37"', add
label define do10a_disthosp_lbl 38 `"38"', add
label define do10a_disthosp_lbl 39 `"39"', add
label define do10a_disthosp_lbl 40 `"40"', add
label define do10a_disthosp_lbl 41 `"41"', add
label define do10a_disthosp_lbl 42 `"42"', add
label define do10a_disthosp_lbl 43 `"43"', add
label define do10a_disthosp_lbl 44 `"44"', add
label define do10a_disthosp_lbl 45 `"45"', add
label define do10a_disthosp_lbl 46 `"46"', add
label define do10a_disthosp_lbl 47 `"47"', add
label define do10a_disthosp_lbl 48 `"48"', add
label define do10a_disthosp_lbl 50 `"50"', add
label define do10a_disthosp_lbl 52 `"52"', add
label define do10a_disthosp_lbl 53 `"53"', add
label define do10a_disthosp_lbl 54 `"54"', add
label define do10a_disthosp_lbl 55 `"55"', add
label define do10a_disthosp_lbl 56 `"56"', add
label define do10a_disthosp_lbl 57 `"57"', add
label define do10a_disthosp_lbl 58 `"58"', add
label define do10a_disthosp_lbl 60 `"60+"', add
label define do10a_disthosp_lbl 99 `"Unknown"', add
label values do10a_disthosp do10a_disthosp_lbl

label define do10a_distclnc_lbl 00 `"0"'
label define do10a_distclnc_lbl 01 `"1"', add
label define do10a_distclnc_lbl 02 `"2"', add
label define do10a_distclnc_lbl 03 `"3"', add
label define do10a_distclnc_lbl 04 `"4"', add
label define do10a_distclnc_lbl 05 `"5"', add
label define do10a_distclnc_lbl 06 `"6"', add
label define do10a_distclnc_lbl 07 `"7"', add
label define do10a_distclnc_lbl 08 `"8"', add
label define do10a_distclnc_lbl 09 `"9"', add
label define do10a_distclnc_lbl 10 `"10"', add
label define do10a_distclnc_lbl 11 `"11"', add
label define do10a_distclnc_lbl 12 `"12"', add
label define do10a_distclnc_lbl 13 `"13"', add
label define do10a_distclnc_lbl 14 `"14"', add
label define do10a_distclnc_lbl 15 `"15"', add
label define do10a_distclnc_lbl 16 `"16"', add
label define do10a_distclnc_lbl 17 `"17"', add
label define do10a_distclnc_lbl 18 `"18"', add
label define do10a_distclnc_lbl 19 `"19"', add
label define do10a_distclnc_lbl 20 `"20"', add
label define do10a_distclnc_lbl 21 `"21"', add
label define do10a_distclnc_lbl 22 `"22"', add
label define do10a_distclnc_lbl 23 `"23"', add
label define do10a_distclnc_lbl 24 `"24"', add
label define do10a_distclnc_lbl 25 `"25"', add
label define do10a_distclnc_lbl 26 `"26"', add
label define do10a_distclnc_lbl 27 `"27"', add
label define do10a_distclnc_lbl 28 `"28"', add
label define do10a_distclnc_lbl 29 `"29"', add
label define do10a_distclnc_lbl 30 `"30"', add
label define do10a_distclnc_lbl 31 `"31"', add
label define do10a_distclnc_lbl 32 `"32"', add
label define do10a_distclnc_lbl 33 `"33"', add
label define do10a_distclnc_lbl 34 `"34"', add
label define do10a_distclnc_lbl 35 `"35"', add
label define do10a_distclnc_lbl 36 `"36"', add
label define do10a_distclnc_lbl 37 `"37"', add
label define do10a_distclnc_lbl 39 `"39"', add
label define do10a_distclnc_lbl 40 `"40+"', add
label define do10a_distclnc_lbl 99 `"Unknown"', add
label values do10a_distclnc do10a_distclnc_lbl

label define do10a_distpsch_lbl 00 `"0"'
label define do10a_distpsch_lbl 01 `"1"', add
label define do10a_distpsch_lbl 02 `"2"', add
label define do10a_distpsch_lbl 03 `"3"', add
label define do10a_distpsch_lbl 04 `"4"', add
label define do10a_distpsch_lbl 05 `"5"', add
label define do10a_distpsch_lbl 06 `"6"', add
label define do10a_distpsch_lbl 07 `"7"', add
label define do10a_distpsch_lbl 08 `"8"', add
label define do10a_distpsch_lbl 09 `"9"', add
label define do10a_distpsch_lbl 10 `"10"', add
label define do10a_distpsch_lbl 11 `"11"', add
label define do10a_distpsch_lbl 12 `"12"', add
label define do10a_distpsch_lbl 13 `"13"', add
label define do10a_distpsch_lbl 14 `"14"', add
label define do10a_distpsch_lbl 15 `"15"', add
label define do10a_distpsch_lbl 16 `"16"', add
label define do10a_distpsch_lbl 17 `"17"', add
label define do10a_distpsch_lbl 18 `"18"', add
label define do10a_distpsch_lbl 19 `"19"', add
label define do10a_distpsch_lbl 20 `"20+"', add
label define do10a_distpsch_lbl 99 `"Unknown"', add
label values do10a_distpsch do10a_distpsch_lbl

label define do10a_disthsch_lbl 00 `"0"'
label define do10a_disthsch_lbl 01 `"1"', add
label define do10a_disthsch_lbl 02 `"2"', add
label define do10a_disthsch_lbl 03 `"3"', add
label define do10a_disthsch_lbl 04 `"4"', add
label define do10a_disthsch_lbl 05 `"5"', add
label define do10a_disthsch_lbl 06 `"6"', add
label define do10a_disthsch_lbl 07 `"7"', add
label define do10a_disthsch_lbl 08 `"8"', add
label define do10a_disthsch_lbl 09 `"9"', add
label define do10a_disthsch_lbl 10 `"10"', add
label define do10a_disthsch_lbl 11 `"11"', add
label define do10a_disthsch_lbl 12 `"12"', add
label define do10a_disthsch_lbl 13 `"13"', add
label define do10a_disthsch_lbl 14 `"14"', add
label define do10a_disthsch_lbl 15 `"15"', add
label define do10a_disthsch_lbl 16 `"16"', add
label define do10a_disthsch_lbl 17 `"17"', add
label define do10a_disthsch_lbl 18 `"18"', add
label define do10a_disthsch_lbl 19 `"19"', add
label define do10a_disthsch_lbl 20 `"20"', add
label define do10a_disthsch_lbl 21 `"21"', add
label define do10a_disthsch_lbl 22 `"22"', add
label define do10a_disthsch_lbl 23 `"23"', add
label define do10a_disthsch_lbl 24 `"24"', add
label define do10a_disthsch_lbl 25 `"25"', add
label define do10a_disthsch_lbl 26 `"26"', add
label define do10a_disthsch_lbl 27 `"27"', add
label define do10a_disthsch_lbl 28 `"28"', add
label define do10a_disthsch_lbl 29 `"29"', add
label define do10a_disthsch_lbl 30 `"30"', add
label define do10a_disthsch_lbl 31 `"31"', add
label define do10a_disthsch_lbl 32 `"32"', add
label define do10a_disthsch_lbl 33 `"33"', add
label define do10a_disthsch_lbl 34 `"34"', add
label define do10a_disthsch_lbl 35 `"35"', add
label define do10a_disthsch_lbl 36 `"36"', add
label define do10a_disthsch_lbl 38 `"38"', add
label define do10a_disthsch_lbl 40 `"40"', add
label define do10a_disthsch_lbl 41 `"41"', add
label define do10a_disthsch_lbl 42 `"42"', add
label define do10a_disthsch_lbl 45 `"45"', add
label define do10a_disthsch_lbl 50 `"50+"', add
label define do10a_disthsch_lbl 99 `"Unknown"', add
label values do10a_disthsch do10a_disthsch_lbl

label define do10a_distphrm_lbl 00 `"0"'
label define do10a_distphrm_lbl 01 `"1"', add
label define do10a_distphrm_lbl 02 `"2"', add
label define do10a_distphrm_lbl 03 `"3"', add
label define do10a_distphrm_lbl 04 `"4"', add
label define do10a_distphrm_lbl 05 `"5"', add
label define do10a_distphrm_lbl 06 `"6"', add
label define do10a_distphrm_lbl 07 `"7"', add
label define do10a_distphrm_lbl 08 `"8"', add
label define do10a_distphrm_lbl 09 `"9"', add
label define do10a_distphrm_lbl 10 `"10"', add
label define do10a_distphrm_lbl 11 `"11"', add
label define do10a_distphrm_lbl 12 `"12"', add
label define do10a_distphrm_lbl 13 `"13"', add
label define do10a_distphrm_lbl 14 `"14"', add
label define do10a_distphrm_lbl 15 `"15"', add
label define do10a_distphrm_lbl 16 `"16"', add
label define do10a_distphrm_lbl 17 `"17"', add
label define do10a_distphrm_lbl 18 `"18"', add
label define do10a_distphrm_lbl 19 `"19"', add
label define do10a_distphrm_lbl 20 `"20"', add
label define do10a_distphrm_lbl 21 `"21"', add
label define do10a_distphrm_lbl 22 `"22"', add
label define do10a_distphrm_lbl 23 `"23"', add
label define do10a_distphrm_lbl 24 `"24"', add
label define do10a_distphrm_lbl 25 `"25"', add
label define do10a_distphrm_lbl 26 `"26"', add
label define do10a_distphrm_lbl 27 `"27"', add
label define do10a_distphrm_lbl 28 `"28"', add
label define do10a_distphrm_lbl 29 `"29"', add
label define do10a_distphrm_lbl 30 `"30"', add
label define do10a_distphrm_lbl 31 `"31"', add
label define do10a_distphrm_lbl 32 `"32"', add
label define do10a_distphrm_lbl 33 `"33"', add
label define do10a_distphrm_lbl 34 `"34"', add
label define do10a_distphrm_lbl 35 `"35"', add
label define do10a_distphrm_lbl 36 `"36"', add
label define do10a_distphrm_lbl 37 `"37"', add
label define do10a_distphrm_lbl 38 `"38"', add
label define do10a_distphrm_lbl 39 `"39"', add
label define do10a_distphrm_lbl 40 `"40"', add
label define do10a_distphrm_lbl 41 `"41"', add
label define do10a_distphrm_lbl 42 `"42"', add
label define do10a_distphrm_lbl 43 `"43"', add
label define do10a_distphrm_lbl 45 `"45"', add
label define do10a_distphrm_lbl 50 `"50"', add
label define do10a_distphrm_lbl 55 `"55"', add
label define do10a_distphrm_lbl 56 `"56"', add
label define do10a_distphrm_lbl 57 `"57"', add
label define do10a_distphrm_lbl 60 `"60+"', add
label define do10a_distphrm_lbl 99 `"Unknown"', add
label values do10a_distphrm do10a_distphrm_lbl

label define do10a_distmrkt_lbl 00 `"0"'
label define do10a_distmrkt_lbl 01 `"1"', add
label define do10a_distmrkt_lbl 02 `"2"', add
label define do10a_distmrkt_lbl 03 `"3"', add
label define do10a_distmrkt_lbl 04 `"4"', add
label define do10a_distmrkt_lbl 05 `"5"', add
label define do10a_distmrkt_lbl 06 `"6"', add
label define do10a_distmrkt_lbl 07 `"7"', add
label define do10a_distmrkt_lbl 08 `"8"', add
label define do10a_distmrkt_lbl 09 `"9"', add
label define do10a_distmrkt_lbl 10 `"10"', add
label define do10a_distmrkt_lbl 11 `"11"', add
label define do10a_distmrkt_lbl 12 `"12"', add
label define do10a_distmrkt_lbl 13 `"13"', add
label define do10a_distmrkt_lbl 14 `"14"', add
label define do10a_distmrkt_lbl 15 `"15"', add
label define do10a_distmrkt_lbl 16 `"16"', add
label define do10a_distmrkt_lbl 17 `"17"', add
label define do10a_distmrkt_lbl 18 `"18"', add
label define do10a_distmrkt_lbl 19 `"19"', add
label define do10a_distmrkt_lbl 20 `"20"', add
label define do10a_distmrkt_lbl 22 `"22"', add
label define do10a_distmrkt_lbl 23 `"23"', add
label define do10a_distmrkt_lbl 24 `"24"', add
label define do10a_distmrkt_lbl 25 `"25"', add
label define do10a_distmrkt_lbl 28 `"28"', add
label define do10a_distmrkt_lbl 29 `"29"', add
label define do10a_distmrkt_lbl 30 `"30"', add
label define do10a_distmrkt_lbl 32 `"32"', add
label define do10a_distmrkt_lbl 35 `"35"', add
label define do10a_distmrkt_lbl 40 `"40"', add
label define do10a_distmrkt_lbl 50 `"50+"', add
label define do10a_distmrkt_lbl 99 `"Unknown"', add
label values do10a_distmrkt do10a_distmrkt_lbl

label define do10a_stove_lbl 1 `"Yes"'
label define do10a_stove_lbl 2 `"No"', add
label define do10a_stove_lbl 8 `"Unknown"', add
label define do10a_stove_lbl 9 `"NIU (not in universe)"', add
label values do10a_stove do10a_stove_lbl

label define do10a_stove_lbl 1 `"Yes"'
label define do10a_stove_lbl 2 `"No"', add
label define do10a_stove_lbl 8 `"Unknown"', add
label define do10a_stove_lbl 9 `"NIU (not in universe)"', add
label values do10a_stove do10a_stove_lbl

label define do10a_refrig_lbl 1 `"Yes"'
label define do10a_refrig_lbl 2 `"No"', add
label define do10a_refrig_lbl 8 `"Unknown"', add
label define do10a_refrig_lbl 9 `"NIU (not in universe)"', add
label values do10a_refrig do10a_refrig_lbl

label define do10a_washer_lbl 1 `"Yes"'
label define do10a_washer_lbl 2 `"No"', add
label define do10a_washer_lbl 8 `"Unknown"', add
label define do10a_washer_lbl 9 `"NIU (not in universe)"', add
label values do10a_washer do10a_washer_lbl

label define do10a_tv_lbl 1 `"Yes"'
label define do10a_tv_lbl 2 `"No"', add
label define do10a_tv_lbl 8 `"Unknown"', add
label define do10a_tv_lbl 9 `"NIU (not in universe)"', add
label values do10a_tv do10a_tv_lbl

label define do10a_radio_lbl 1 `"Yes"'
label define do10a_radio_lbl 2 `"No"', add
label define do10a_radio_lbl 8 `"Unknown"', add
label define do10a_radio_lbl 9 `"NIU (not in universe)"', add
label values do10a_radio do10a_radio_lbl

label define do10a_cistern_lbl 1 `"Yes"'
label define do10a_cistern_lbl 2 `"No"', add
label define do10a_cistern_lbl 8 `"Unknown"', add
label define do10a_cistern_lbl 9 `"NIU (not in universe)"', add
label values do10a_cistern do10a_cistern_lbl

label define do10a_computer_lbl 1 `"Yes"'
label define do10a_computer_lbl 2 `"No"', add
label define do10a_computer_lbl 8 `"Unknown"', add
label define do10a_computer_lbl 9 `"NIU (not in universe)"', add
label values do10a_computer do10a_computer_lbl

label define do10a_convert_lbl 1 `"Yes"'
label define do10a_convert_lbl 2 `"No"', add
label define do10a_convert_lbl 8 `"Unknown"', add
label define do10a_convert_lbl 9 `"NIU (not in universe)"', add
label values do10a_convert do10a_convert_lbl

label define do10a_genertr_lbl 1 `"Yes"'
label define do10a_genertr_lbl 2 `"No"', add
label define do10a_genertr_lbl 8 `"Unknown"', add
label define do10a_genertr_lbl 9 `"NIU (not in universe)"', add
label values do10a_genertr do10a_genertr_lbl

label define do10a_phone_lbl 1 `"Yes"'
label define do10a_phone_lbl 2 `"No"', add
label define do10a_phone_lbl 8 `"Unknown"', add
label define do10a_phone_lbl 9 `"NIU (not in universe)"', add
label values do10a_phone do10a_phone_lbl

label define do10a_cellph_lbl 1 `"Yes"'
label define do10a_cellph_lbl 2 `"No"', add
label define do10a_cellph_lbl 8 `"Unknown"', add
label define do10a_cellph_lbl 9 `"NIU (not in universe)"', add
label values do10a_cellph do10a_cellph_lbl

label define do10a_aircon_lbl 1 `"Yes"'
label define do10a_aircon_lbl 2 `"No"', add
label define do10a_aircon_lbl 8 `"Unknown"', add
label define do10a_aircon_lbl 9 `"NIU (not in universe)"', add
label values do10a_aircon do10a_aircon_lbl

label define do10a_motor_lbl 1 `"Yes"'
label define do10a_motor_lbl 2 `"No"', add
label define do10a_motor_lbl 8 `"Unknown"', add
label define do10a_motor_lbl 9 `"NIU (not in universe)"', add
label values do10a_motor do10a_motor_lbl

label define do10a_auto_lbl 1 `"Yes"'
label define do10a_auto_lbl 2 `"No"', add
label define do10a_auto_lbl 8 `"Unknown"', add
label define do10a_auto_lbl 9 `"NIU (not in universe)"', add
label values do10a_auto do10a_auto_lbl

label define do10a_tenancy_lbl 1 `"Owned, paid off"'
label define do10a_tenancy_lbl 2 `"Owned paying mortgage"', add
label define do10a_tenancy_lbl 3 `"Rented"', add
label define do10a_tenancy_lbl 4 `"Given or lent"', add
label define do10a_tenancy_lbl 5 `"Other"', add
label define do10a_tenancy_lbl 9 `"NIU (not in universe)"', add
label values do10a_tenancy do10a_tenancy_lbl

label define do10a_bedrooms_lbl 00 `"0"'
label define do10a_bedrooms_lbl 01 `"1"', add
label define do10a_bedrooms_lbl 02 `"2"', add
label define do10a_bedrooms_lbl 03 `"3"', add
label define do10a_bedrooms_lbl 04 `"4"', add
label define do10a_bedrooms_lbl 05 `"5"', add
label define do10a_bedrooms_lbl 06 `"6"', add
label define do10a_bedrooms_lbl 07 `"7"', add
label define do10a_bedrooms_lbl 08 `"8"', add
label define do10a_bedrooms_lbl 09 `"9+"', add
label define do10a_bedrooms_lbl 99 `"NIU (not in universe)"', add
label values do10a_bedrooms do10a_bedrooms_lbl

label define do10a_toilet_lbl 1 `"Toilet"'
label define do10a_toilet_lbl 2 `"Latrine"', add
label define do10a_toilet_lbl 3 `"None"', add
label define do10a_toilet_lbl 9 `"NIU (not in universe)"', add
label values do10a_toilet do10a_toilet_lbl

label define do10a_toilshar_lbl 1 `"Toilet used only by household members"'
label define do10a_toilshar_lbl 2 `"Toilet is shared with other households"', add
label define do10a_toilshar_lbl 9 `"NIU (not in universe)"', add
label values do10a_toilshar do10a_toilshar_lbl

label define do10a_waste_lbl 1 `"Collected by public sanitation service"'
label define do10a_waste_lbl 2 `"Collected by private sanitation service"', add
label define do10a_waste_lbl 3 `"Burned"', add
label define do10a_waste_lbl 4 `"Thrown in yard or lot"', add
label define do10a_waste_lbl 5 `"Put in garbage dump"', add
label define do10a_waste_lbl 6 `"Thrown in river or canal"', add
label define do10a_waste_lbl 7 `"Other"', add
label define do10a_waste_lbl 9 `"NIU (not in universe)"', add
label values do10a_waste do10a_waste_lbl

label define do10a_fuelck_lbl 1 `"Propane"'
label define do10a_fuelck_lbl 2 `"Coal"', add
label define do10a_fuelck_lbl 3 `"Wood"', add
label define do10a_fuelck_lbl 4 `"Electricity"', add
label define do10a_fuelck_lbl 5 `"Other"', add
label define do10a_fuelck_lbl 6 `"Does not cook"', add
label define do10a_fuelck_lbl 9 `"NIU (not in universe)"', add
label values do10a_fuelck do10a_fuelck_lbl

label define do10a_light_lbl 1 `"Public electricity"'
label define do10a_light_lbl 2 `"Propane lamp"', add
label define do10a_light_lbl 3 `"Kerosene lamp"', add
label define do10a_light_lbl 4 `"Electricity from own generator"', add
label define do10a_light_lbl 5 `"Other"', add
label define do10a_light_lbl 9 `"NIU (not in universe)"', add
label values do10a_light do10a_light_lbl

label define do10a_death09_lbl 1 `"Yes"'
label define do10a_death09_lbl 2 `"No"', add
label define do10a_death09_lbl 8 `"Unknown"', add
label define do10a_death09_lbl 9 `"NIU (not in universe)"', add
label values do10a_death09 do10a_death09_lbl

label define do10a_ag12mo_lbl 1 `"Yes"'
label define do10a_ag12mo_lbl 2 `"No"', add
label define do10a_ag12mo_lbl 8 `"Unknown"', add
label define do10a_ag12mo_lbl 9 `"NIU (not in universe)"', add
label values do10a_ag12mo do10a_ag12mo_lbl

label define do10a_animals_lbl 1 `"Yes"'
label define do10a_animals_lbl 2 `"No"', add
label define do10a_animals_lbl 8 `"Unknown"', add
label define do10a_animals_lbl 9 `"NIU (not in universe)"', add
label values do10a_animals do10a_animals_lbl

label define do10a_nbnotinc_lbl 1 `"Yes"'
label define do10a_nbnotinc_lbl 2 `"No"', add
label define do10a_nbnotinc_lbl 8 `"Unknown"', add
label define do10a_nbnotinc_lbl 9 `"NIU (not in universe)"', add
label values do10a_nbnotinc do10a_nbnotinc_lbl

label define do10a_absent_lbl 1 `"Yes"'
label define do10a_absent_lbl 2 `"No"', add
label define do10a_absent_lbl 8 `"Unknown"', add
label define do10a_absent_lbl 9 `"NIU (not in universe)"', add
label values do10a_absent do10a_absent_lbl

label define do10a_typehh_lbl 1 `"Single person"'
label define do10a_typehh_lbl 2 `"Nuclear"', add
label define do10a_typehh_lbl 3 `"Extended"', add
label define do10a_typehh_lbl 4 `"Compound"', add
label define do10a_typehh_lbl 5 `"No household"', add
label define do10a_typehh_lbl 9 `"NIU (not in universe)"', add
label values do10a_typehh do10a_typehh_lbl

label define do10a_overcrwd_lbl 1 `"No overcrowding"'
label define do10a_overcrwd_lbl 2 `"Overcrowding"', add
label define do10a_overcrwd_lbl 3 `"Extreme overcrowding"', add
label define do10a_overcrwd_lbl 4 `"No bedrooms"', add
label define do10a_overcrwd_lbl 9 `"NIU (not in universe)"', add
label values do10a_overcrwd do10a_overcrwd_lbl

label define do10a_sanitg_lbl 1 `"High sanitation"'
label define do10a_sanitg_lbl 2 `"Average/poor sanitation"', add
label define do10a_sanitg_lbl 9 `"NIU (not in universe)"', add
label values do10a_sanitg do10a_sanitg_lbl

label define do10a_segrp_lbl 1 `"Very low"'
label define do10a_segrp_lbl 2 `"Low"', add
label define do10a_segrp_lbl 3 `"Medium low"', add
label define do10a_segrp_lbl 4 `"Medium"', add
label define do10a_segrp_lbl 5 `"Medium high or high"', add
label define do10a_segrp_lbl 9 `"NIU (not in universe)"', add
label values do10a_segrp do10a_segrp_lbl

label define do10a_sexhd_lbl 1 `"Male"'
label define do10a_sexhd_lbl 2 `"Female"', add
label define do10a_sexhd_lbl 9 `"NIU (not in universe)"', add
label values do10a_sexhd do10a_sexhd_lbl

label define do10a_agehd_lbl 012 `"12"'
label define do10a_agehd_lbl 013 `"13"', add
label define do10a_agehd_lbl 014 `"14"', add
label define do10a_agehd_lbl 015 `"15"', add
label define do10a_agehd_lbl 016 `"16"', add
label define do10a_agehd_lbl 017 `"17"', add
label define do10a_agehd_lbl 018 `"18"', add
label define do10a_agehd_lbl 019 `"19"', add
label define do10a_agehd_lbl 020 `"20"', add
label define do10a_agehd_lbl 021 `"21"', add
label define do10a_agehd_lbl 022 `"22"', add
label define do10a_agehd_lbl 023 `"23"', add
label define do10a_agehd_lbl 024 `"24"', add
label define do10a_agehd_lbl 025 `"25"', add
label define do10a_agehd_lbl 026 `"26"', add
label define do10a_agehd_lbl 027 `"27"', add
label define do10a_agehd_lbl 028 `"28"', add
label define do10a_agehd_lbl 029 `"29"', add
label define do10a_agehd_lbl 030 `"30"', add
label define do10a_agehd_lbl 031 `"31"', add
label define do10a_agehd_lbl 032 `"32"', add
label define do10a_agehd_lbl 033 `"33"', add
label define do10a_agehd_lbl 034 `"34"', add
label define do10a_agehd_lbl 035 `"35"', add
label define do10a_agehd_lbl 036 `"36"', add
label define do10a_agehd_lbl 037 `"37"', add
label define do10a_agehd_lbl 038 `"38"', add
label define do10a_agehd_lbl 039 `"39"', add
label define do10a_agehd_lbl 040 `"40"', add
label define do10a_agehd_lbl 041 `"41"', add
label define do10a_agehd_lbl 042 `"42"', add
label define do10a_agehd_lbl 043 `"43"', add
label define do10a_agehd_lbl 044 `"44"', add
label define do10a_agehd_lbl 045 `"45"', add
label define do10a_agehd_lbl 046 `"46"', add
label define do10a_agehd_lbl 047 `"47"', add
label define do10a_agehd_lbl 048 `"48"', add
label define do10a_agehd_lbl 049 `"49"', add
label define do10a_agehd_lbl 050 `"50"', add
label define do10a_agehd_lbl 051 `"51"', add
label define do10a_agehd_lbl 052 `"52"', add
label define do10a_agehd_lbl 053 `"53"', add
label define do10a_agehd_lbl 054 `"54"', add
label define do10a_agehd_lbl 055 `"55"', add
label define do10a_agehd_lbl 056 `"56"', add
label define do10a_agehd_lbl 057 `"57"', add
label define do10a_agehd_lbl 058 `"58"', add
label define do10a_agehd_lbl 059 `"59"', add
label define do10a_agehd_lbl 060 `"60"', add
label define do10a_agehd_lbl 061 `"61"', add
label define do10a_agehd_lbl 062 `"62"', add
label define do10a_agehd_lbl 063 `"63"', add
label define do10a_agehd_lbl 064 `"64"', add
label define do10a_agehd_lbl 065 `"65"', add
label define do10a_agehd_lbl 066 `"66"', add
label define do10a_agehd_lbl 067 `"67"', add
label define do10a_agehd_lbl 068 `"68"', add
label define do10a_agehd_lbl 069 `"69"', add
label define do10a_agehd_lbl 070 `"70"', add
label define do10a_agehd_lbl 071 `"71"', add
label define do10a_agehd_lbl 072 `"72"', add
label define do10a_agehd_lbl 073 `"73"', add
label define do10a_agehd_lbl 074 `"74"', add
label define do10a_agehd_lbl 075 `"75"', add
label define do10a_agehd_lbl 076 `"76"', add
label define do10a_agehd_lbl 077 `"77"', add
label define do10a_agehd_lbl 078 `"78"', add
label define do10a_agehd_lbl 079 `"79"', add
label define do10a_agehd_lbl 080 `"80"', add
label define do10a_agehd_lbl 081 `"81"', add
label define do10a_agehd_lbl 082 `"82"', add
label define do10a_agehd_lbl 083 `"83"', add
label define do10a_agehd_lbl 084 `"84"', add
label define do10a_agehd_lbl 085 `"85"', add
label define do10a_agehd_lbl 086 `"86"', add
label define do10a_agehd_lbl 087 `"87"', add
label define do10a_agehd_lbl 088 `"88"', add
label define do10a_agehd_lbl 089 `"89"', add
label define do10a_agehd_lbl 090 `"90"', add
label define do10a_agehd_lbl 091 `"91"', add
label define do10a_agehd_lbl 092 `"92"', add
label define do10a_agehd_lbl 093 `"93"', add
label define do10a_agehd_lbl 094 `"94"', add
label define do10a_agehd_lbl 095 `"95"', add
label define do10a_agehd_lbl 096 `"96"', add
label define do10a_agehd_lbl 097 `"97"', add
label define do10a_agehd_lbl 098 `"98"', add
label define do10a_agehd_lbl 099 `"99"', add
label define do10a_agehd_lbl 100 `"100+"', add
label define do10a_agehd_lbl 999 `"NIU (not in universe)"', add
label values do10a_agehd do10a_agehd_lbl

label define do10a_yrschhd_lbl 00 `"0"'
label define do10a_yrschhd_lbl 01 `"1"', add
label define do10a_yrschhd_lbl 02 `"2"', add
label define do10a_yrschhd_lbl 03 `"3"', add
label define do10a_yrschhd_lbl 04 `"4"', add
label define do10a_yrschhd_lbl 05 `"5"', add
label define do10a_yrschhd_lbl 06 `"6"', add
label define do10a_yrschhd_lbl 07 `"7"', add
label define do10a_yrschhd_lbl 08 `"8"', add
label define do10a_yrschhd_lbl 09 `"9"', add
label define do10a_yrschhd_lbl 10 `"10"', add
label define do10a_yrschhd_lbl 11 `"11"', add
label define do10a_yrschhd_lbl 12 `"12"', add
label define do10a_yrschhd_lbl 13 `"13"', add
label define do10a_yrschhd_lbl 14 `"14"', add
label define do10a_yrschhd_lbl 15 `"15"', add
label define do10a_yrschhd_lbl 16 `"16"', add
label define do10a_yrschhd_lbl 17 `"17"', add
label define do10a_yrschhd_lbl 18 `"18"', add
label define do10a_yrschhd_lbl 19 `"19"', add
label define do10a_yrschhd_lbl 20 `"20"', add
label define do10a_yrschhd_lbl 21 `"21"', add
label define do10a_yrschhd_lbl 22 `"22"', add
label define do10a_yrschhd_lbl 23 `"23"', add
label define do10a_yrschhd_lbl 24 `"24"', add
label define do10a_yrschhd_lbl 25 `"25"', add
label define do10a_yrschhd_lbl 26 `"26"', add
label define do10a_yrschhd_lbl 27 `"27"', add
label define do10a_yrschhd_lbl 28 `"28"', add
label define do10a_yrschhd_lbl 29 `"29"', add
label define do10a_yrschhd_lbl 30 `"30+"', add
label define do10a_yrschhd_lbl 98 `"Unknown"', add
label define do10a_yrschhd_lbl 99 `"NIU (not in universe)"', add
label values do10a_yrschhd do10a_yrschhd_lbl

label define do10a_landplnt_lbl 1 `"Has planted land"'
label define do10a_landplnt_lbl 2 `"Does not have planted land"', add
label define do10a_landplnt_lbl 8 `"Unknown"', add
label define do10a_landplnt_lbl 9 `"NIU (not in universe)"', add
label values do10a_landplnt do10a_landplnt_lbl

label define do10a_landharv_lbl 1 `"Harvested in last 12 months"'
label define do10a_landharv_lbl 2 `"Has not harvested in last 12 months"', add
label define do10a_landharv_lbl 8 `"Unknown"', add
label define do10a_landharv_lbl 9 `"NIU (not in universe)"', add
label values do10a_landharv do10a_landharv_lbl

label define do10a_cattle_lbl 1 `"Has cows, calves, bulls or oxen"'
label define do10a_cattle_lbl 2 `"Does not have cows, calves, bulls or oxen"', add
label define do10a_cattle_lbl 8 `"Unknown"', add
label define do10a_cattle_lbl 9 `"NIU (not in universe)"', add
label values do10a_cattle do10a_cattle_lbl

label define do10a_sheepgt_lbl 1 `"Has sheep and goats"'
label define do10a_sheepgt_lbl 2 `"Does not have sheep and goats"', add
label define do10a_sheepgt_lbl 8 `"Unknown"', add
label define do10a_sheepgt_lbl 9 `"NIU (not in universe)"', add
label values do10a_sheepgt do10a_sheepgt_lbl

label define do10a_ducks_lbl 1 `"Has ducks, turkeys and geese"'
label define do10a_ducks_lbl 2 `"Does not have ducks, turkeys and geese"', add
label define do10a_ducks_lbl 8 `"Unknown"', add
label define do10a_ducks_lbl 9 `"NIU (not in universe)"', add
label values do10a_ducks do10a_ducks_lbl

label define do10a_chickens_lbl 1 `"Has hens or chickens and roosters"'
label define do10a_chickens_lbl 2 `"Does not have hens or chickens and guineas"', add
label define do10a_chickens_lbl 8 `"Unknown"', add
label define do10a_chickens_lbl 9 `"NIU (not in universe)"', add
label values do10a_chickens do10a_chickens_lbl

label define do10a_swine_lbl 1 `"Has swine"'
label define do10a_swine_lbl 2 `"Does not have swine"', add
label define do10a_swine_lbl 8 `"Unknown"', add
label define do10a_swine_lbl 9 `"NIU (not in universe)"', add
label values do10a_swine do10a_swine_lbl

label define do10a_bees_lbl 1 `"Has beehives"'
label define do10a_bees_lbl 2 `"Does not have beehives"', add
label define do10a_bees_lbl 8 `"Unknown"', add
label define do10a_bees_lbl 9 `"NIU (not in universe)"', add
label values do10a_bees do10a_bees_lbl

label define do10a_pernum_lbl 00 `"Household record"'
label define do10a_pernum_lbl 01 `"1"', add
label define do10a_pernum_lbl 02 `"2"', add
label define do10a_pernum_lbl 03 `"3"', add
label define do10a_pernum_lbl 04 `"4"', add
label define do10a_pernum_lbl 05 `"5"', add
label define do10a_pernum_lbl 06 `"6"', add
label define do10a_pernum_lbl 07 `"7"', add
label define do10a_pernum_lbl 08 `"8"', add
label define do10a_pernum_lbl 09 `"9"', add
label define do10a_pernum_lbl 10 `"10"', add
label define do10a_pernum_lbl 11 `"11"', add
label define do10a_pernum_lbl 12 `"12"', add
label define do10a_pernum_lbl 13 `"13"', add
label define do10a_pernum_lbl 14 `"14"', add
label define do10a_pernum_lbl 15 `"15"', add
label define do10a_pernum_lbl 16 `"16"', add
label define do10a_pernum_lbl 17 `"17"', add
label define do10a_pernum_lbl 18 `"18"', add
label define do10a_pernum_lbl 19 `"19"', add
label define do10a_pernum_lbl 20 `"20"', add
label define do10a_pernum_lbl 21 `"21"', add
label define do10a_pernum_lbl 22 `"22"', add
label define do10a_pernum_lbl 23 `"23"', add
label define do10a_pernum_lbl 24 `"24"', add
label define do10a_pernum_lbl 25 `"25"', add
label define do10a_pernum_lbl 26 `"26"', add
label define do10a_pernum_lbl 27 `"27"', add
label define do10a_pernum_lbl 28 `"28"', add
label define do10a_pernum_lbl 29 `"29"', add
label define do10a_pernum_lbl 30 `"30"', add
label values do10a_pernum do10a_pernum_lbl

label define do10a_relate_lbl 01 `"Head of household"'
label define do10a_relate_lbl 02 `"Spouse or partner"', add
label define do10a_relate_lbl 03 `"Child"', add
label define do10a_relate_lbl 04 `"Stepchild or foster child"', add
label define do10a_relate_lbl 05 `"Parent"', add
label define do10a_relate_lbl 06 `"Grandchild"', add
label define do10a_relate_lbl 07 `"Parent in law"', add
label define do10a_relate_lbl 08 `"Grandparent"', add
label define do10a_relate_lbl 09 `"Sibling"', add
label define do10a_relate_lbl 10 `"Maid or household worker"', add
label define do10a_relate_lbl 11 `"Other relative"', add
label define do10a_relate_lbl 12 `"Child in law"', add
label define do10a_relate_lbl 13 `"Not related"', add
label define do10a_relate_lbl 14 `"Member of collective household"', add
label values do10a_relate do10a_relate_lbl

label define do10a_sex_lbl 1 `"Male"'
label define do10a_sex_lbl 2 `"Female"', add
label values do10a_sex do10a_sex_lbl

label define do10a_birthmo_lbl 01 `"January"'
label define do10a_birthmo_lbl 02 `"February"', add
label define do10a_birthmo_lbl 03 `"March"', add
label define do10a_birthmo_lbl 04 `"April"', add
label define do10a_birthmo_lbl 05 `"May"', add
label define do10a_birthmo_lbl 06 `"June"', add
label define do10a_birthmo_lbl 07 `"July"', add
label define do10a_birthmo_lbl 08 `"August"', add
label define do10a_birthmo_lbl 09 `"September"', add
label define do10a_birthmo_lbl 10 `"October"', add
label define do10a_birthmo_lbl 11 `"November"', add
label define do10a_birthmo_lbl 12 `"December"', add
label values do10a_birthmo do10a_birthmo_lbl

label define do10a_birthyr_lbl 1900 `"1900"'
label define do10a_birthyr_lbl 1901 `"1901"', add
label define do10a_birthyr_lbl 1902 `"1902"', add
label define do10a_birthyr_lbl 1903 `"1903"', add
label define do10a_birthyr_lbl 1904 `"1904"', add
label define do10a_birthyr_lbl 1905 `"1905"', add
label define do10a_birthyr_lbl 1906 `"1906"', add
label define do10a_birthyr_lbl 1907 `"1907"', add
label define do10a_birthyr_lbl 1908 `"1908"', add
label define do10a_birthyr_lbl 1909 `"1909"', add
label define do10a_birthyr_lbl 1910 `"1910"', add
label define do10a_birthyr_lbl 1911 `"1911"', add
label define do10a_birthyr_lbl 1912 `"1912"', add
label define do10a_birthyr_lbl 1913 `"1913"', add
label define do10a_birthyr_lbl 1914 `"1914"', add
label define do10a_birthyr_lbl 1915 `"1915"', add
label define do10a_birthyr_lbl 1916 `"1916"', add
label define do10a_birthyr_lbl 1917 `"1917"', add
label define do10a_birthyr_lbl 1918 `"1918"', add
label define do10a_birthyr_lbl 1919 `"1919"', add
label define do10a_birthyr_lbl 1920 `"1920"', add
label define do10a_birthyr_lbl 1921 `"1921"', add
label define do10a_birthyr_lbl 1922 `"1922"', add
label define do10a_birthyr_lbl 1923 `"1923"', add
label define do10a_birthyr_lbl 1924 `"1924"', add
label define do10a_birthyr_lbl 1925 `"1925"', add
label define do10a_birthyr_lbl 1926 `"1926"', add
label define do10a_birthyr_lbl 1927 `"1927"', add
label define do10a_birthyr_lbl 1928 `"1928"', add
label define do10a_birthyr_lbl 1929 `"1929"', add
label define do10a_birthyr_lbl 1930 `"1930"', add
label define do10a_birthyr_lbl 1931 `"1931"', add
label define do10a_birthyr_lbl 1932 `"1932"', add
label define do10a_birthyr_lbl 1933 `"1933"', add
label define do10a_birthyr_lbl 1934 `"1934"', add
label define do10a_birthyr_lbl 1935 `"1935"', add
label define do10a_birthyr_lbl 1936 `"1936"', add
label define do10a_birthyr_lbl 1937 `"1937"', add
label define do10a_birthyr_lbl 1938 `"1938"', add
label define do10a_birthyr_lbl 1939 `"1939"', add
label define do10a_birthyr_lbl 1940 `"1940"', add
label define do10a_birthyr_lbl 1941 `"1941"', add
label define do10a_birthyr_lbl 1942 `"1942"', add
label define do10a_birthyr_lbl 1943 `"1943"', add
label define do10a_birthyr_lbl 1944 `"1944"', add
label define do10a_birthyr_lbl 1945 `"1945"', add
label define do10a_birthyr_lbl 1946 `"1946"', add
label define do10a_birthyr_lbl 1947 `"1947"', add
label define do10a_birthyr_lbl 1948 `"1948"', add
label define do10a_birthyr_lbl 1949 `"1949"', add
label define do10a_birthyr_lbl 1950 `"1950"', add
label define do10a_birthyr_lbl 1951 `"1951"', add
label define do10a_birthyr_lbl 1952 `"1952"', add
label define do10a_birthyr_lbl 1953 `"1953"', add
label define do10a_birthyr_lbl 1954 `"1954"', add
label define do10a_birthyr_lbl 1955 `"1955"', add
label define do10a_birthyr_lbl 1956 `"1956"', add
label define do10a_birthyr_lbl 1957 `"1957"', add
label define do10a_birthyr_lbl 1958 `"1958"', add
label define do10a_birthyr_lbl 1959 `"1959"', add
label define do10a_birthyr_lbl 1960 `"1960"', add
label define do10a_birthyr_lbl 1961 `"1961"', add
label define do10a_birthyr_lbl 1962 `"1962"', add
label define do10a_birthyr_lbl 1963 `"1963"', add
label define do10a_birthyr_lbl 1964 `"1964"', add
label define do10a_birthyr_lbl 1965 `"1965"', add
label define do10a_birthyr_lbl 1966 `"1966"', add
label define do10a_birthyr_lbl 1967 `"1967"', add
label define do10a_birthyr_lbl 1968 `"1968"', add
label define do10a_birthyr_lbl 1969 `"1969"', add
label define do10a_birthyr_lbl 1970 `"1970"', add
label define do10a_birthyr_lbl 1971 `"1971"', add
label define do10a_birthyr_lbl 1972 `"1972"', add
label define do10a_birthyr_lbl 1973 `"1973"', add
label define do10a_birthyr_lbl 1974 `"1974"', add
label define do10a_birthyr_lbl 1975 `"1975"', add
label define do10a_birthyr_lbl 1976 `"1976"', add
label define do10a_birthyr_lbl 1977 `"1977"', add
label define do10a_birthyr_lbl 1978 `"1978"', add
label define do10a_birthyr_lbl 1979 `"1979"', add
label define do10a_birthyr_lbl 1980 `"1980"', add
label define do10a_birthyr_lbl 1981 `"1981"', add
label define do10a_birthyr_lbl 1982 `"1982"', add
label define do10a_birthyr_lbl 1983 `"1983"', add
label define do10a_birthyr_lbl 1984 `"1984"', add
label define do10a_birthyr_lbl 1985 `"1985"', add
label define do10a_birthyr_lbl 1986 `"1986"', add
label define do10a_birthyr_lbl 1987 `"1987"', add
label define do10a_birthyr_lbl 1988 `"1988"', add
label define do10a_birthyr_lbl 1989 `"1989"', add
label define do10a_birthyr_lbl 1990 `"1990"', add
label define do10a_birthyr_lbl 1991 `"1991"', add
label define do10a_birthyr_lbl 1992 `"1992"', add
label define do10a_birthyr_lbl 1993 `"1993"', add
label define do10a_birthyr_lbl 1994 `"1994"', add
label define do10a_birthyr_lbl 1995 `"1995"', add
label define do10a_birthyr_lbl 1996 `"1996"', add
label define do10a_birthyr_lbl 1997 `"1997"', add
label define do10a_birthyr_lbl 1998 `"1998"', add
label define do10a_birthyr_lbl 1999 `"1999"', add
label define do10a_birthyr_lbl 2000 `"2000"', add
label define do10a_birthyr_lbl 2001 `"2001"', add
label define do10a_birthyr_lbl 2002 `"2002"', add
label define do10a_birthyr_lbl 2003 `"2003"', add
label define do10a_birthyr_lbl 2004 `"2004"', add
label define do10a_birthyr_lbl 2005 `"2005"', add
label define do10a_birthyr_lbl 2006 `"2006"', add
label define do10a_birthyr_lbl 2007 `"2007"', add
label define do10a_birthyr_lbl 2008 `"2008"', add
label define do10a_birthyr_lbl 2009 `"2009"', add
label define do10a_birthyr_lbl 2010 `"2010"', add
label values do10a_birthyr do10a_birthyr_lbl

label define do10a_age_lbl 000 `"0"'
label define do10a_age_lbl 001 `"1"', add
label define do10a_age_lbl 002 `"2"', add
label define do10a_age_lbl 003 `"3"', add
label define do10a_age_lbl 004 `"4"', add
label define do10a_age_lbl 005 `"5"', add
label define do10a_age_lbl 006 `"6"', add
label define do10a_age_lbl 007 `"7"', add
label define do10a_age_lbl 008 `"8"', add
label define do10a_age_lbl 009 `"9"', add
label define do10a_age_lbl 010 `"10"', add
label define do10a_age_lbl 011 `"11"', add
label define do10a_age_lbl 012 `"12"', add
label define do10a_age_lbl 013 `"13"', add
label define do10a_age_lbl 014 `"14"', add
label define do10a_age_lbl 015 `"15"', add
label define do10a_age_lbl 016 `"16"', add
label define do10a_age_lbl 017 `"17"', add
label define do10a_age_lbl 018 `"18"', add
label define do10a_age_lbl 019 `"19"', add
label define do10a_age_lbl 020 `"20"', add
label define do10a_age_lbl 021 `"21"', add
label define do10a_age_lbl 022 `"22"', add
label define do10a_age_lbl 023 `"23"', add
label define do10a_age_lbl 024 `"24"', add
label define do10a_age_lbl 025 `"25"', add
label define do10a_age_lbl 026 `"26"', add
label define do10a_age_lbl 027 `"27"', add
label define do10a_age_lbl 028 `"28"', add
label define do10a_age_lbl 029 `"29"', add
label define do10a_age_lbl 030 `"30"', add
label define do10a_age_lbl 031 `"31"', add
label define do10a_age_lbl 032 `"32"', add
label define do10a_age_lbl 033 `"33"', add
label define do10a_age_lbl 034 `"34"', add
label define do10a_age_lbl 035 `"35"', add
label define do10a_age_lbl 036 `"36"', add
label define do10a_age_lbl 037 `"37"', add
label define do10a_age_lbl 038 `"38"', add
label define do10a_age_lbl 039 `"39"', add
label define do10a_age_lbl 040 `"40"', add
label define do10a_age_lbl 041 `"41"', add
label define do10a_age_lbl 042 `"42"', add
label define do10a_age_lbl 043 `"43"', add
label define do10a_age_lbl 044 `"44"', add
label define do10a_age_lbl 045 `"45"', add
label define do10a_age_lbl 046 `"46"', add
label define do10a_age_lbl 047 `"47"', add
label define do10a_age_lbl 048 `"48"', add
label define do10a_age_lbl 049 `"49"', add
label define do10a_age_lbl 050 `"50"', add
label define do10a_age_lbl 051 `"51"', add
label define do10a_age_lbl 052 `"52"', add
label define do10a_age_lbl 053 `"53"', add
label define do10a_age_lbl 054 `"54"', add
label define do10a_age_lbl 055 `"55"', add
label define do10a_age_lbl 056 `"56"', add
label define do10a_age_lbl 057 `"57"', add
label define do10a_age_lbl 058 `"58"', add
label define do10a_age_lbl 059 `"59"', add
label define do10a_age_lbl 060 `"60"', add
label define do10a_age_lbl 061 `"61"', add
label define do10a_age_lbl 062 `"62"', add
label define do10a_age_lbl 063 `"63"', add
label define do10a_age_lbl 064 `"64"', add
label define do10a_age_lbl 065 `"65"', add
label define do10a_age_lbl 066 `"66"', add
label define do10a_age_lbl 067 `"67"', add
label define do10a_age_lbl 068 `"68"', add
label define do10a_age_lbl 069 `"69"', add
label define do10a_age_lbl 070 `"70"', add
label define do10a_age_lbl 071 `"71"', add
label define do10a_age_lbl 072 `"72"', add
label define do10a_age_lbl 073 `"73"', add
label define do10a_age_lbl 074 `"74"', add
label define do10a_age_lbl 075 `"75"', add
label define do10a_age_lbl 076 `"76"', add
label define do10a_age_lbl 077 `"77"', add
label define do10a_age_lbl 078 `"78"', add
label define do10a_age_lbl 079 `"79"', add
label define do10a_age_lbl 080 `"80"', add
label define do10a_age_lbl 081 `"81"', add
label define do10a_age_lbl 082 `"82"', add
label define do10a_age_lbl 083 `"83"', add
label define do10a_age_lbl 084 `"84"', add
label define do10a_age_lbl 085 `"85"', add
label define do10a_age_lbl 086 `"86"', add
label define do10a_age_lbl 087 `"87"', add
label define do10a_age_lbl 088 `"88"', add
label define do10a_age_lbl 089 `"89"', add
label define do10a_age_lbl 090 `"90"', add
label define do10a_age_lbl 091 `"91"', add
label define do10a_age_lbl 092 `"92"', add
label define do10a_age_lbl 093 `"93"', add
label define do10a_age_lbl 094 `"94"', add
label define do10a_age_lbl 095 `"95"', add
label define do10a_age_lbl 096 `"96"', add
label define do10a_age_lbl 097 `"97"', add
label define do10a_age_lbl 098 `"98"', add
label define do10a_age_lbl 099 `"99"', add
label define do10a_age_lbl 100 `"100+"', add
label values do10a_age do10a_age_lbl

label define do10a_bplloc_lbl 1 `"Municipality of current residence"'
label define do10a_bplloc_lbl 2 `"Other municipality"', add
label define do10a_bplloc_lbl 3 `"Abroad"', add
label values do10a_bplloc do10a_bplloc_lbl

label define do10a_bplprov_lbl 01 `"Federal District"'
label define do10a_bplprov_lbl 02 `"Azua"', add
label define do10a_bplprov_lbl 03 `"Baoruco"', add
label define do10a_bplprov_lbl 04 `"Barahona"', add
label define do10a_bplprov_lbl 05 `"Dajabón"', add
label define do10a_bplprov_lbl 06 `"Duarte"', add
label define do10a_bplprov_lbl 07 `"Elías Piña"', add
label define do10a_bplprov_lbl 08 `"El Seibo"', add
label define do10a_bplprov_lbl 09 `"Espaillat"', add
label define do10a_bplprov_lbl 10 `"Independencia"', add
label define do10a_bplprov_lbl 11 `"La Altagracia"', add
label define do10a_bplprov_lbl 12 `"La Romana"', add
label define do10a_bplprov_lbl 13 `"La Vega"', add
label define do10a_bplprov_lbl 14 `"María Trinidad Sánchez"', add
label define do10a_bplprov_lbl 15 `"Monte Cristi"', add
label define do10a_bplprov_lbl 16 `"Pedernales"', add
label define do10a_bplprov_lbl 17 `"Peravia"', add
label define do10a_bplprov_lbl 18 `"Puerto Plata"', add
label define do10a_bplprov_lbl 19 `"Hermanas Mirabal"', add
label define do10a_bplprov_lbl 20 `"Samaná"', add
label define do10a_bplprov_lbl 21 `"San Cristóbal"', add
label define do10a_bplprov_lbl 22 `"San Juan"', add
label define do10a_bplprov_lbl 23 `"San Pedro de Macorís"', add
label define do10a_bplprov_lbl 24 `"Sánchez Ramírez"', add
label define do10a_bplprov_lbl 25 `"Santiago"', add
label define do10a_bplprov_lbl 26 `"Santiago Rodríguez"', add
label define do10a_bplprov_lbl 27 `"Valverde"', add
label define do10a_bplprov_lbl 28 `"Monseñor Nouel"', add
label define do10a_bplprov_lbl 29 `"Monte Plata"', add
label define do10a_bplprov_lbl 30 `"Hato Mayor"', add
label define do10a_bplprov_lbl 31 `"San José de Ocoa"', add
label define do10a_bplprov_lbl 32 `"Santo Domingo"', add
label define do10a_bplprov_lbl 98 `"Foreign born"', add
label define do10a_bplprov_lbl 99 `"Unknown"', add
label values do10a_bplprov do10a_bplprov_lbl

label define do10a_bplmuni_lbl 0101 `"Santo Domingo de Guzman"'
label define do10a_bplmuni_lbl 0201 `"Azua"', add
label define do10a_bplmuni_lbl 0202 `"Las Charcas"', add
label define do10a_bplmuni_lbl 0203 `"Las Yayas de Viajama"', add
label define do10a_bplmuni_lbl 0204 `"Padre las Casas"', add
label define do10a_bplmuni_lbl 0205 `"Peralta"', add
label define do10a_bplmuni_lbl 0206 `"Sabana Yegua"', add
label define do10a_bplmuni_lbl 0207 `"Pueblo Viejo"', add
label define do10a_bplmuni_lbl 0208 `"Tábara Arriba"', add
label define do10a_bplmuni_lbl 0209 `"Guayabal"', add
label define do10a_bplmuni_lbl 0210 `"Estebanía"', add
label define do10a_bplmuni_lbl 0301 `"Neiba"', add
label define do10a_bplmuni_lbl 0302 `"Galvan"', add
label define do10a_bplmuni_lbl 0303 `"Tamayo"', add
label define do10a_bplmuni_lbl 0304 `"Villa Jaragua"', add
label define do10a_bplmuni_lbl 0305 `"Los Ríos"', add
label define do10a_bplmuni_lbl 0401 `"Barahona"', add
label define do10a_bplmuni_lbl 0402 `"Cabral"', add
label define do10a_bplmuni_lbl 0403 `"Enriquillo"', add
label define do10a_bplmuni_lbl 0404 `"Paraiso"', add
label define do10a_bplmuni_lbl 0405 `"Vicente Noble"', add
label define do10a_bplmuni_lbl 0406 `"El Peñon"', add
label define do10a_bplmuni_lbl 0407 `"La Cienaga"', add
label define do10a_bplmuni_lbl 0408 `"Fundación"', add
label define do10a_bplmuni_lbl 0409 `"Las Salinas"', add
label define do10a_bplmuni_lbl 0410 `"Polo"', add
label define do10a_bplmuni_lbl 0411 `"Jaquimeyes"', add
label define do10a_bplmuni_lbl 0501 `"Dajabón"', add
label define do10a_bplmuni_lbl 0502 `"Loma de Cabrera"', add
label define do10a_bplmuni_lbl 0503 `"Partido"', add
label define do10a_bplmuni_lbl 0504 `"Restauración"', add
label define do10a_bplmuni_lbl 0505 `"El Pino"', add
label define do10a_bplmuni_lbl 0601 `"San Francisco de Macorís"', add
label define do10a_bplmuni_lbl 0602 `"Arenoso"', add
label define do10a_bplmuni_lbl 0603 `"Castillo"', add
label define do10a_bplmuni_lbl 0604 `"Pimentel"', add
label define do10a_bplmuni_lbl 0605 `"Villa Riva"', add
label define do10a_bplmuni_lbl 0606 `"Las Guaranas"', add
label define do10a_bplmuni_lbl 0607 `"Eugenio Maria de Hostos"', add
label define do10a_bplmuni_lbl 0701 `"Comendador"', add
label define do10a_bplmuni_lbl 0702 `"Banica"', add
label define do10a_bplmuni_lbl 0703 `"El Llano"', add
label define do10a_bplmuni_lbl 0704 `"Hondo Valle"', add
label define do10a_bplmuni_lbl 0705 `"Pedro Santana"', add
label define do10a_bplmuni_lbl 0706 `"Juan Santiago"', add
label define do10a_bplmuni_lbl 0801 `"El Seibo"', add
label define do10a_bplmuni_lbl 0802 `"Miches"', add
label define do10a_bplmuni_lbl 0901 `"Moca"', add
label define do10a_bplmuni_lbl 0902 `"Cayetano Germosén"', add
label define do10a_bplmuni_lbl 0903 `"Gaspar Hernández"', add
label define do10a_bplmuni_lbl 0904 `"Jamao al Norte"', add
label define do10a_bplmuni_lbl 1001 `"Jimaní"', add
label define do10a_bplmuni_lbl 1002 `"Duvergé"', add
label define do10a_bplmuni_lbl 1003 `"La Descubierta"', add
label define do10a_bplmuni_lbl 1004 `"Postrer Río"', add
label define do10a_bplmuni_lbl 1005 `"Cristóbal"', add
label define do10a_bplmuni_lbl 1006 `"Mella"', add
label define do10a_bplmuni_lbl 1101 `"Higüey"', add
label define do10a_bplmuni_lbl 1102 `"San Rafael del Yuma"', add
label define do10a_bplmuni_lbl 1201 `"La Romana"', add
label define do10a_bplmuni_lbl 1202 `"Guaymate"', add
label define do10a_bplmuni_lbl 1203 `"Villa Hermosa"', add
label define do10a_bplmuni_lbl 1301 `"La Vega"', add
label define do10a_bplmuni_lbl 1302 `"Constanza"', add
label define do10a_bplmuni_lbl 1303 `"Jarabacoa"', add
label define do10a_bplmuni_lbl 1304 `"Jima Abajo"', add
label define do10a_bplmuni_lbl 1401 `"Nagua"', add
label define do10a_bplmuni_lbl 1402 `"Cabrera"', add
label define do10a_bplmuni_lbl 1403 `"El Factor"', add
label define do10a_bplmuni_lbl 1404 `"Río San Juan"', add
label define do10a_bplmuni_lbl 1501 `"Monte Cristi"', add
label define do10a_bplmuni_lbl 1502 `"Castañuelas"', add
label define do10a_bplmuni_lbl 1503 `"Guayubín"', add
label define do10a_bplmuni_lbl 1504 `"Las Matas de Santa Cruz"', add
label define do10a_bplmuni_lbl 1505 `"Pepillo Salcedo"', add
label define do10a_bplmuni_lbl 1506 `"Villa Vásquez"', add
label define do10a_bplmuni_lbl 1601 `"Pedernales"', add
label define do10a_bplmuni_lbl 1602 `"Oviedo"', add
label define do10a_bplmuni_lbl 1701 `"Baní"', add
label define do10a_bplmuni_lbl 1702 `"Nizao"', add
label define do10a_bplmuni_lbl 1801 `"Puerto Plata"', add
label define do10a_bplmuni_lbl 1802 `"Altamira"', add
label define do10a_bplmuni_lbl 1803 `"Guananico"', add
label define do10a_bplmuni_lbl 1804 `"Imbert"', add
label define do10a_bplmuni_lbl 1805 `"Los Hidalgos"', add
label define do10a_bplmuni_lbl 1806 `"Luperón"', add
label define do10a_bplmuni_lbl 1807 `"Sosúa"', add
label define do10a_bplmuni_lbl 1808 `"Villa Isabela"', add
label define do10a_bplmuni_lbl 1809 `"Villa Montellano"', add
label define do10a_bplmuni_lbl 1901 `"Salcedo"', add
label define do10a_bplmuni_lbl 1902 `"Tenares"', add
label define do10a_bplmuni_lbl 1903 `"Villa Tapia"', add
label define do10a_bplmuni_lbl 2001 `"Samaná"', add
label define do10a_bplmuni_lbl 2002 `"Sánchez"', add
label define do10a_bplmuni_lbl 2003 `"Las Terrenas"', add
label define do10a_bplmuni_lbl 2101 `"San Cristóbal"', add
label define do10a_bplmuni_lbl 2102 `"Sabana Grande de Palenque"', add
label define do10a_bplmuni_lbl 2103 `"Bajos de Haina"', add
label define do10a_bplmuni_lbl 2104 `"Cambita Garabitos"', add
label define do10a_bplmuni_lbl 2105 `"Villa Altagracia"', add
label define do10a_bplmuni_lbl 2106 `"Yaguate"', add
label define do10a_bplmuni_lbl 2107 `"San Gregorio de Nigua"', add
label define do10a_bplmuni_lbl 2108 `"Los Cacaos"', add
label define do10a_bplmuni_lbl 2201 `"San Juan"', add
label define do10a_bplmuni_lbl 2202 `"Bohechío"', add
label define do10a_bplmuni_lbl 2203 `"El Cercado"', add
label define do10a_bplmuni_lbl 2204 `"Juan de Herrera"', add
label define do10a_bplmuni_lbl 2205 `"Las Matas de Farfán"', add
label define do10a_bplmuni_lbl 2206 `"Vallejuelo"', add
label define do10a_bplmuni_lbl 2301 `"San Pedro de Macorís"', add
label define do10a_bplmuni_lbl 2302 `"Los Llanos"', add
label define do10a_bplmuni_lbl 2303 `"Ramón Santana"', add
label define do10a_bplmuni_lbl 2304 `"Consuelo"', add
label define do10a_bplmuni_lbl 2305 `"Quisqueya"', add
label define do10a_bplmuni_lbl 2306 `"Guayacanes"', add
label define do10a_bplmuni_lbl 2401 `"Cotuí"', add
label define do10a_bplmuni_lbl 2402 `"Cevicos"', add
label define do10a_bplmuni_lbl 2403 `"Fantino"', add
label define do10a_bplmuni_lbl 2404 `"La Mata"', add
label define do10a_bplmuni_lbl 2501 `"Santiago"', add
label define do10a_bplmuni_lbl 2502 `"Bisonó"', add
label define do10a_bplmuni_lbl 2503 `"Jánico"', add
label define do10a_bplmuni_lbl 2504 `"Licey Al Medio"', add
label define do10a_bplmuni_lbl 2505 `"San José de las Matas"', add
label define do10a_bplmuni_lbl 2506 `"Tamboril"', add
label define do10a_bplmuni_lbl 2507 `"Villa González"', add
label define do10a_bplmuni_lbl 2508 `"Puñal"', add
label define do10a_bplmuni_lbl 2509 `"Sabana Iglesia"', add
label define do10a_bplmuni_lbl 2601 `"San Ignacio de Sabaneta"', add
label define do10a_bplmuni_lbl 2602 `"Villa los Almácigos"', add
label define do10a_bplmuni_lbl 2603 `"Monción"', add
label define do10a_bplmuni_lbl 2701 `"Mao"', add
label define do10a_bplmuni_lbl 2702 `"Esperanza"', add
label define do10a_bplmuni_lbl 2703 `"Laguna Salada"', add
label define do10a_bplmuni_lbl 2801 `"Bonao"', add
label define do10a_bplmuni_lbl 2802 `"Maimón"', add
label define do10a_bplmuni_lbl 2803 `"Piedra Blanca"', add
label define do10a_bplmuni_lbl 2901 `"Monte Plata"', add
label define do10a_bplmuni_lbl 2902 `"Bayaguana"', add
label define do10a_bplmuni_lbl 2903 `"Sabana Grande de Boya"', add
label define do10a_bplmuni_lbl 2904 `"Yamasá"', add
label define do10a_bplmuni_lbl 2905 `"Peralvillo"', add
label define do10a_bplmuni_lbl 3001 `"Hato Mayor"', add
label define do10a_bplmuni_lbl 3002 `"Sabana de la Mar"', add
label define do10a_bplmuni_lbl 3003 `"El Valle"', add
label define do10a_bplmuni_lbl 3101 `"San José de Ocoa"', add
label define do10a_bplmuni_lbl 3102 `"Sabana Larga"', add
label define do10a_bplmuni_lbl 3103 `"Rancho Arriba"', add
label define do10a_bplmuni_lbl 3201 `"Santo Domingo Este"', add
label define do10a_bplmuni_lbl 3202 `"Santo Domingo Oeste"', add
label define do10a_bplmuni_lbl 3203 `"Santo Domingo Norte"', add
label define do10a_bplmuni_lbl 3204 `"Boca Chica"', add
label define do10a_bplmuni_lbl 3205 `"San Antonio de Guerra"', add
label define do10a_bplmuni_lbl 3206 `"Los Alcarrizos"', add
label define do10a_bplmuni_lbl 3207 `"Pedro Brand"', add
label define do10a_bplmuni_lbl 5000 `"Foreign born"', add
label define do10a_bplmuni_lbl 9999 `"Unknown"', add
label values do10a_bplmuni do10a_bplmuni_lbl

label define do10a_bplctry_lbl 032 `"Argentina"'
label define do10a_bplctry_lbl 076 `"Brazil"', add
label define do10a_bplctry_lbl 124 `"Canada"', add
label define do10a_bplctry_lbl 152 `"Chile"', add
label define do10a_bplctry_lbl 156 `"China"', add
label define do10a_bplctry_lbl 170 `"Colombia"', add
label define do10a_bplctry_lbl 188 `"Costa Rica"', add
label define do10a_bplctry_lbl 192 `"Cuba"', add
label define do10a_bplctry_lbl 214 `"Dominican Republic"', add
label define do10a_bplctry_lbl 218 `"Ecuador"', add
label define do10a_bplctry_lbl 222 `"El Salvador"', add
label define do10a_bplctry_lbl 250 `"France"', add
label define do10a_bplctry_lbl 276 `"Germany"', add
label define do10a_bplctry_lbl 320 `"Guatemala"', add
label define do10a_bplctry_lbl 332 `"Haiti"', add
label define do10a_bplctry_lbl 340 `"Honduras"', add
label define do10a_bplctry_lbl 380 `"Italy"', add
label define do10a_bplctry_lbl 392 `"Japan"', add
label define do10a_bplctry_lbl 484 `"Mexico"', add
label define do10a_bplctry_lbl 528 `"Netherlands"', add
label define do10a_bplctry_lbl 530 `"Netherlands Antilles"', add
label define do10a_bplctry_lbl 534 `"Curacao"', add
label define do10a_bplctry_lbl 535 `"Sint Maarten"', add
label define do10a_bplctry_lbl 558 `"Nicaragua"', add
label define do10a_bplctry_lbl 591 `"Panama"', add
label define do10a_bplctry_lbl 604 `"Peru"', add
label define do10a_bplctry_lbl 630 `"Puerto Rico"', add
label define do10a_bplctry_lbl 643 `"Russia/USSR"', add
label define do10a_bplctry_lbl 724 `"Spain"', add
label define do10a_bplctry_lbl 756 `"Switzerland"', add
label define do10a_bplctry_lbl 826 `"United Kingdom"', add
label define do10a_bplctry_lbl 840 `"United States"', add
label define do10a_bplctry_lbl 862 `"Venezuela"', add
label define do10a_bplctry_lbl 900 `"Other Caribbean"', add
label define do10a_bplctry_lbl 902 `"Other South America"', add
label define do10a_bplctry_lbl 903 `"Other Europe"', add
label define do10a_bplctry_lbl 904 `"Other Africa"', add
label define do10a_bplctry_lbl 905 `"Other Asia"', add
label define do10a_bplctry_lbl 910 `"Other foreign country"', add
label values do10a_bplctry do10a_bplctry_lbl

label define do10a_arryr_lbl 0000 `"Born in the Dominican Republic"'
label define do10a_arryr_lbl 1954 `"Prior to 1955"', add
label define do10a_arryr_lbl 1955 `"1955"', add
label define do10a_arryr_lbl 1956 `"1956"', add
label define do10a_arryr_lbl 1957 `"1957"', add
label define do10a_arryr_lbl 1958 `"1958"', add
label define do10a_arryr_lbl 1959 `"1959"', add
label define do10a_arryr_lbl 1960 `"1960"', add
label define do10a_arryr_lbl 1961 `"1961"', add
label define do10a_arryr_lbl 1962 `"1962"', add
label define do10a_arryr_lbl 1963 `"1963"', add
label define do10a_arryr_lbl 1964 `"1964"', add
label define do10a_arryr_lbl 1965 `"1965"', add
label define do10a_arryr_lbl 1966 `"1966"', add
label define do10a_arryr_lbl 1967 `"1967"', add
label define do10a_arryr_lbl 1968 `"1968"', add
label define do10a_arryr_lbl 1969 `"1969"', add
label define do10a_arryr_lbl 1970 `"1970"', add
label define do10a_arryr_lbl 1971 `"1971"', add
label define do10a_arryr_lbl 1972 `"1972"', add
label define do10a_arryr_lbl 1973 `"1973"', add
label define do10a_arryr_lbl 1974 `"1974"', add
label define do10a_arryr_lbl 1975 `"1975"', add
label define do10a_arryr_lbl 1976 `"1976"', add
label define do10a_arryr_lbl 1977 `"1977"', add
label define do10a_arryr_lbl 1978 `"1978"', add
label define do10a_arryr_lbl 1979 `"1979"', add
label define do10a_arryr_lbl 1980 `"1980"', add
label define do10a_arryr_lbl 1981 `"1981"', add
label define do10a_arryr_lbl 1982 `"1982"', add
label define do10a_arryr_lbl 1983 `"1983"', add
label define do10a_arryr_lbl 1984 `"1984"', add
label define do10a_arryr_lbl 1985 `"1985"', add
label define do10a_arryr_lbl 1986 `"1986"', add
label define do10a_arryr_lbl 1987 `"1987"', add
label define do10a_arryr_lbl 1988 `"1988"', add
label define do10a_arryr_lbl 1989 `"1989"', add
label define do10a_arryr_lbl 1990 `"1990"', add
label define do10a_arryr_lbl 1991 `"1991"', add
label define do10a_arryr_lbl 1992 `"1992"', add
label define do10a_arryr_lbl 1993 `"1993"', add
label define do10a_arryr_lbl 1994 `"1994"', add
label define do10a_arryr_lbl 1995 `"1995"', add
label define do10a_arryr_lbl 1996 `"1996"', add
label define do10a_arryr_lbl 1997 `"1997"', add
label define do10a_arryr_lbl 1998 `"1998"', add
label define do10a_arryr_lbl 1999 `"1999"', add
label define do10a_arryr_lbl 2000 `"2000"', add
label define do10a_arryr_lbl 2001 `"2001"', add
label define do10a_arryr_lbl 2002 `"2002"', add
label define do10a_arryr_lbl 2003 `"2003"', add
label define do10a_arryr_lbl 2004 `"2004"', add
label define do10a_arryr_lbl 2005 `"2005"', add
label define do10a_arryr_lbl 2006 `"2006"', add
label define do10a_arryr_lbl 2007 `"2007"', add
label define do10a_arryr_lbl 2008 `"2008"', add
label define do10a_arryr_lbl 2009 `"2009"', add
label define do10a_arryr_lbl 2010 `"2010"', add
label define do10a_arryr_lbl 9999 `"Unknown"', add
label values do10a_arryr do10a_arryr_lbl

label define do10a_blind_lbl 1 `"Yes"'
label define do10a_blind_lbl 2 `"No"', add
label define do10a_blind_lbl 9 `"Unknown"', add
label values do10a_blind do10a_blind_lbl

label define do10a_deaf_lbl 1 `"Yes"'
label define do10a_deaf_lbl 2 `"No"', add
label define do10a_deaf_lbl 9 `"Unknown"', add
label values do10a_deaf do10a_deaf_lbl

label define do10a_dismob_lbl 1 `"Yes"'
label define do10a_dismob_lbl 2 `"No"', add
label define do10a_dismob_lbl 9 `"Unknown"', add
label values do10a_dismob do10a_dismob_lbl

label define do10a_disarms_lbl 1 `"Yes"'
label define do10a_disarms_lbl 2 `"No"', add
label define do10a_disarms_lbl 9 `"Unknown"', add
label values do10a_disarms do10a_disarms_lbl

label define do10a_dislegs_lbl 1 `"Yes"'
label define do10a_dislegs_lbl 2 `"No"', add
label define do10a_dislegs_lbl 9 `"Unknown"', add
label values do10a_dislegs do10a_dislegs_lbl

label define do10a_disconc_lbl 1 `"Yes"'
label define do10a_disconc_lbl 2 `"No"', add
label define do10a_disconc_lbl 9 `"Unknown"', add
label values do10a_disconc do10a_disconc_lbl

label define do10a_disspk_lbl 1 `"Yes"'
label define do10a_disspk_lbl 2 `"No"', add
label define do10a_disspk_lbl 9 `"Unknown"', add
label values do10a_disspk do10a_disspk_lbl

label define do10a_mute_lbl 1 `"Yes"'
label define do10a_mute_lbl 2 `"No"', add
label define do10a_mute_lbl 9 `"Unknown"', add
label values do10a_mute do10a_mute_lbl

label define do10a_dismntl_lbl 1 `"Yes"'
label define do10a_dismntl_lbl 2 `"No"', add
label define do10a_dismntl_lbl 9 `"Unknown"', add
label values do10a_dismntl do10a_dismntl_lbl

label define do10a_amplegs_lbl 1 `"Yes"'
label define do10a_amplegs_lbl 2 `"No"', add
label define do10a_amplegs_lbl 9 `"Unknown"', add
label values do10a_amplegs do10a_amplegs_lbl

label define do10a_amparms_lbl 1 `"Yes"'
label define do10a_amparms_lbl 2 `"No"', add
label define do10a_amparms_lbl 9 `"Unknown"', add
label values do10a_amparms do10a_amparms_lbl

label define do10a_lit_lbl 1 `"Can read and write"'
label define do10a_lit_lbl 2 `"Cannot read or write"', add
label define do10a_lit_lbl 9 `"NIU (not in universe)"', add
label values do10a_lit do10a_lit_lbl

label define do10a_school_lbl 1 `"Currently attends"'
label define do10a_school_lbl 2 `"Not currently attending but has attended"', add
label define do10a_school_lbl 3 `"Never attended"', add
label define do10a_school_lbl 9 `"NIU (not in universe)"', add
label values do10a_school do10a_school_lbl

label define do10a_edlevel_lbl 1 `"Preschool"'
label define do10a_edlevel_lbl 2 `"Primary or elementary"', add
label define do10a_edlevel_lbl 3 `"Secondary or high school"', add
label define do10a_edlevel_lbl 4 `"University or higher"', add
label define do10a_edlevel_lbl 9 `"NIU (not in universe)"', add
label values do10a_edlevel do10a_edlevel_lbl

label define do10a_edyear_lbl 0 `"Level not completed"'
label define do10a_edyear_lbl 1 `"1"', add
label define do10a_edyear_lbl 2 `"2"', add
label define do10a_edyear_lbl 3 `"3"', add
label define do10a_edyear_lbl 4 `"4"', add
label define do10a_edyear_lbl 5 `"5"', add
label define do10a_edyear_lbl 6 `"6"', add
label define do10a_edyear_lbl 7 `"7"', add
label define do10a_edyear_lbl 8 `"8"', add
label define do10a_edyear_lbl 9 `"NIU (not in universe)"', add
label values do10a_edyear do10a_edyear_lbl

label define do10a_edattan_lbl 10 `"Preschool"'
label define do10a_edattan_lbl 20 `"Primary, level not completed"', add
label define do10a_edattan_lbl 21 `"Primary, 1 year"', add
label define do10a_edattan_lbl 22 `"Primary, 2 years"', add
label define do10a_edattan_lbl 23 `"Primary, 3 years"', add
label define do10a_edattan_lbl 24 `"Primary, 4 years"', add
label define do10a_edattan_lbl 25 `"Primary, 5 years"', add
label define do10a_edattan_lbl 26 `"Primary, 6 years"', add
label define do10a_edattan_lbl 27 `"Primary, 7 years"', add
label define do10a_edattan_lbl 28 `"Primary, 8 years"', add
label define do10a_edattan_lbl 30 `"Secondary, level not completed"', add
label define do10a_edattan_lbl 31 `"Secondary, 1 year"', add
label define do10a_edattan_lbl 32 `"Secondary, 2 years"', add
label define do10a_edattan_lbl 33 `"Secondary, 3 years"', add
label define do10a_edattan_lbl 34 `"Secondary, 4 years"', add
label define do10a_edattan_lbl 40 `"University or higher"', add
label define do10a_edattan_lbl 99 `"NIU (not in universe)"', add
label values do10a_edattan do10a_edattan_lbl

label define do10a_field5_lbl 61400 `"Teacher training"'
label define do10a_field5_lbl 61401 `"Teacher training, preschool"', add
label define do10a_field5_lbl 61402 `"Teacher training, primary school"', add
label define do10a_field5_lbl 61403 `"Teacher training, secondary school"', add
label define do10a_field5_lbl 61404 `"Teacher training, professional course"', add
label define do10a_field5_lbl 61405 `"Bachelor of physical education"', add
label define do10a_field5_lbl 61406 `"Bachelor of education, social studies"', add
label define do10a_field5_lbl 61408 `"Bachelor or education, letters"', add
label define do10a_field5_lbl 61409 `"Bachelor of education, mathematics"', add
label define do10a_field5_lbl 61410 `"Bachelor of education, guidance"', add
label define do10a_field5_lbl 61414 `"Bachelor of education, languages"', add
label define do10a_field5_lbl 61417 `"Bachelor of education, biology and chemistry"', add
label define do10a_field5_lbl 61418 `"Teacher training, adult education"', add
label define do10a_field5_lbl 61419 `"Curriculum development, professional and non professional materials"', add
label define do10a_field5_lbl 61421 `"Other teacher training and education"', add
label define do10a_field5_lbl 62100 `"Fine arts"', add
label define do10a_field5_lbl 62101 `"Graphic and media arts"', add
label define do10a_field5_lbl 62102 `"Entertainment arts"', add
label define do10a_field5_lbl 62104 `"Material arts"', add
label define do10a_field5_lbl 62106 `"Graphic and media arts, photography"', add
label define do10a_field5_lbl 62107 `"Graphic and media arts, cinematography"', add
label define do10a_field5_lbl 62110 `"Design"', add
label define do10a_field5_lbl 62112 `"Advertising"', add
label define do10a_field5_lbl 62115 `"Industrial arts, fashion"', add
label define do10a_field5_lbl 62120 `"Decoration"', add
label define do10a_field5_lbl 62132 `"Other arts"', add
label define do10a_field5_lbl 62201 `"Religion and theology"', add
label define do10a_field5_lbl 62202 `"Languages and foreign cultures"', add
label define do10a_field5_lbl 62203 `"Humanities, history"', add
label define do10a_field5_lbl 62205 `"Humanities, linguistics"', add
label define do10a_field5_lbl 62207 `"Humanities, philosophy"', add
label define do10a_field5_lbl 62208 `"Bachelor of letters"', add
label define do10a_field5_lbl 62209 `"Bachelor of philosophy and letters"', add
label define do10a_field5_lbl 62210 `"Literature and linguistics"', add
label define do10a_field5_lbl 62215 `"Other humanities"', add
label define do10a_field5_lbl 63101 `"Political science"', add
label define do10a_field5_lbl 63110 `"International relations"', add
label define do10a_field5_lbl 63111 `"Economics"', add
label define do10a_field5_lbl 63117 `"Geography (except physical geography)"', add
label define do10a_field5_lbl 63130 `"Bachelor of psychology, general"', add
label define do10a_field5_lbl 63131 `"Bachelor of clinical psychology"', add
label define do10a_field5_lbl 63133 `"Bachelor of educational psychology"', add
label define do10a_field5_lbl 63134 `"Bachelor of industrial psychology"', add
label define do10a_field5_lbl 63135 `"Other industrial and organizational psychology"', add
label define do10a_field5_lbl 63147 `"Other social psychology"', add
label define do10a_field5_lbl 63150 `"Sociology"', add
label define do10a_field5_lbl 63152 `"Social sciences"', add
label define do10a_field5_lbl 63153 `"Bachelor of child psychology"', add
label define do10a_field5_lbl 63200 `"Bachelor of communications"', add
label define do10a_field5_lbl 63201 `"Social communications"', add
label define do10a_field5_lbl 63210 `"Other journalism and information"', add
label define do10a_field5_lbl 63400 `"Administration"', add
label define do10a_field5_lbl 63402 `"Bank administration"', add
label define do10a_field5_lbl 63408 `"School administration"', add
label define do10a_field5_lbl 63410 `"Bachelor of business administration"', add
label define do10a_field5_lbl 63411 `"Tourism"', add
label define do10a_field5_lbl 63422 `"Finanical management"', add
label define do10a_field5_lbl 63423 `"Hospitality"', add
label define do10a_field5_lbl 63429 `"Bachelor of accounting"', add
label define do10a_field5_lbl 63433 `"Educational supervision and administration"', add
label define do10a_field5_lbl 63441 `"Banking and finance"', add
label define do10a_field5_lbl 63443 `"International trade"', add
label define do10a_field5_lbl 63444 `"Secretarial and office work"', add
label define do10a_field5_lbl 63445 `"Commerical sciences"', add
label define do10a_field5_lbl 63450 `"Accounting technician"', add
label define do10a_field5_lbl 63455 `"Finance"', add
label define do10a_field5_lbl 63456 `"Management"', add
label define do10a_field5_lbl 63459 `"Trade"', add
label define do10a_field5_lbl 63460 `"Public relations"', add
label define do10a_field5_lbl 63462 `"Secretarial science"', add
label define do10a_field5_lbl 63473 `"Other accounting, auditing, and bookkeeping"', add
label define do10a_field5_lbl 63474 `"Other business and administration"', add
label define do10a_field5_lbl 63800 `"Legal science"', add
label define do10a_field5_lbl 63801 `"Doctorate of law (JD)"', add
label define do10a_field5_lbl 63819 `"Other law"', add
label define do10a_field5_lbl 64203 `"Biology"', add
label define do10a_field5_lbl 64204 `"Other life sciences"', add
label define do10a_field5_lbl 64206 `"Biochemistry"', add
label define do10a_field5_lbl 64216 `"Natural sciences, biochemistry"', add
label define do10a_field5_lbl 64403 `"Physics and related courses"', add
label define do10a_field5_lbl 64412 `"Chemistry and related courses"', add
label define do10a_field5_lbl 64418 `"Other physical sciences"', add
label define do10a_field5_lbl 64600 `"Mathematics"', add
label define do10a_field5_lbl 64601 `"Mathematics and physics"', add
label define do10a_field5_lbl 64603 `"Statistics and related sectors"', add
label define do10a_field5_lbl 64801 `"Computer science"', add
label define do10a_field5_lbl 64802 `"Computer science, software design"', add
label define do10a_field5_lbl 64803 `"Computer programming"', add
label define do10a_field5_lbl 64806 `"Computer science, networks"', add
label define do10a_field5_lbl 64808 `"Computer engineering"', add
label define do10a_field5_lbl 64809 `"System engineering"', add
label define do10a_field5_lbl 65200 `"Engineering and engineering trades"', add
label define do10a_field5_lbl 65202 `"Mechanical engineering"', add
label define do10a_field5_lbl 65203 `"Electrical engineering"', add
label define do10a_field5_lbl 65205 `"Electronics"', add
label define do10a_field5_lbl 65206 `"Telecommunications"', add
label define do10a_field5_lbl 65207 `"Chemical engineering"', add
label define do10a_field5_lbl 65208 `"Car maintenance"', add
label define do10a_field5_lbl 65209 `"Information and communications technology"', add
label define do10a_field5_lbl 65212 `"Electromechanical engineering"', add
label define do10a_field5_lbl 65402 `"Industrial engineering"', add
label define do10a_field5_lbl 65405 `"Food and beverage"', add
label define do10a_field5_lbl 65407 `"Other manufacturing and processing"', add
label define do10a_field5_lbl 65801 `"Architecture and building"', add
label define do10a_field5_lbl 65805 `"Surveying"', add
label define do10a_field5_lbl 65807 `"Construction"', add
label define do10a_field5_lbl 65808 `"Civil engineering"', add
label define do10a_field5_lbl 65809 `"Interior design"', add
label define do10a_field5_lbl 66201 `"Agriculture"', add
label define do10a_field5_lbl 66202 `"Agronomy"', add
label define do10a_field5_lbl 66203 `"Forestry and forest techniques"', add
label define do10a_field5_lbl 66400 `"Veterinary"', add
label define do10a_field5_lbl 66401 `"Veterinary doctor"', add
label define do10a_field5_lbl 67200 `"Medicine, anatomy"', add
label define do10a_field5_lbl 67201 `"Medicine, anesthesiology"', add
label define do10a_field5_lbl 67203 `"Bachelor of bioanalysis"', add
label define do10a_field5_lbl 67206 `"Medicine, surgery"', add
label define do10a_field5_lbl 67212 `"Bachelor of nursing"', add
label define do10a_field5_lbl 67214 `"Medicine, epidemiology"', add
label define do10a_field5_lbl 67215 `"Medicine, stomatology"', add
label define do10a_field5_lbl 67216 `"Medical services, pharmacology"', add
label define do10a_field5_lbl 67221 `"Medicine, physiatry"', add
label define do10a_field5_lbl 67222 `"Medicine, physiology"', add
label define do10a_field5_lbl 67224 `"Medicine, obstetrics and gynecology"', add
label define do10a_field5_lbl 67229 `"Bachelor of medical imaging"', add
label define do10a_field5_lbl 67238 `"Medicine, internal medicine"', add
label define do10a_field5_lbl 67241 `"Pneumology"', add
label define do10a_field5_lbl 67244 `"Dental services, denistry"', add
label define do10a_field5_lbl 67246 `"Medicine, ophthalmology"', add
label define do10a_field5_lbl 67247 `"Oncology"', add
label define do10a_field5_lbl 67249 `"Orthopedics"', add
label define do10a_field5_lbl 67252 `"Medical services"', add
label define do10a_field5_lbl 67253 `"Medicine, pathology"', add
label define do10a_field5_lbl 67254 `"Medicine, pediatrics"', add
label define do10a_field5_lbl 67258 `"Medicine, psychiatry"', add
label define do10a_field5_lbl 67259 `"Medicine, radiology"', add
label define do10a_field5_lbl 67260 `"Bachelor of laboratory"', add
label define do10a_field5_lbl 67261 `"Biomedics"', add
label define do10a_field5_lbl 67262 `"Medicine, cardiology"', add
label define do10a_field5_lbl 67263 `"Cosmiatry"', add
label define do10a_field5_lbl 67269 `"Laboratory technician"', add
label define do10a_field5_lbl 67279 `"Surgical technician"', add
label define do10a_field5_lbl 67281 `"Health system technician"', add
label define do10a_field5_lbl 67286 `"Public health technician"', add
label define do10a_field5_lbl 67290 `"Medical technology"', add
label define do10a_field5_lbl 67291 `"Medicine, therapy"', add
label define do10a_field5_lbl 67294 `"Medicine, other"', add
label define do10a_field5_lbl 67606 `"Social work, counseling and therapy"', add
label define do10a_field5_lbl 67616 `"Social work"', add
label define do10a_field5_lbl 67620 `"Physical therapy"', add
label define do10a_field5_lbl 67621 `"Other social services"', add
label define do10a_field5_lbl 68100 `"Travel, tourism, hospitality and recreation"', add
label define do10a_field5_lbl 68104 `"Bachelor of culinary arts"', add
label define do10a_field5_lbl 68107 `"Hairdressing and cosmetic services"', add
label define do10a_field5_lbl 68108 `"Other personal services"', add
label define do10a_field5_lbl 68409 `"Aircraft crew"', add
label define do10a_field5_lbl 68411 `"Other transport services"', add
label define do10a_field5_lbl 68500 `"Environmental protecion"', add
label define do10a_field5_lbl 68600 `"Security services"', add
label define do10a_field5_lbl 68608 `"Military sciences"', add
label define do10a_field5_lbl 99998 `"Unknown"', add
label define do10a_field5_lbl 99999 `"NIU (not in universe)"', add
label values do10a_field5 do10a_field5_lbl

label define do10a_grad_lbl 1 `"Yes"'
label define do10a_grad_lbl 2 `"No"', add
label define do10a_grad_lbl 8 `"Unknown"', add
label define do10a_grad_lbl 9 `"NIU (not in universe)"', add
label values do10a_grad do10a_grad_lbl

label define do10a_univyrs_lbl 00 `"Less than 1 year"'
label define do10a_univyrs_lbl 01 `"1"', add
label define do10a_univyrs_lbl 02 `"2"', add
label define do10a_univyrs_lbl 03 `"3"', add
label define do10a_univyrs_lbl 04 `"4"', add
label define do10a_univyrs_lbl 05 `"5"', add
label define do10a_univyrs_lbl 06 `"6"', add
label define do10a_univyrs_lbl 07 `"7"', add
label define do10a_univyrs_lbl 08 `"8"', add
label define do10a_univyrs_lbl 09 `"9"', add
label define do10a_univyrs_lbl 10 `"10"', add
label define do10a_univyrs_lbl 11 `"11"', add
label define do10a_univyrs_lbl 12 `"12"', add
label define do10a_univyrs_lbl 13 `"13"', add
label define do10a_univyrs_lbl 14 `"14"', add
label define do10a_univyrs_lbl 15 `"15"', add
label define do10a_univyrs_lbl 16 `"16"', add
label define do10a_univyrs_lbl 17 `"17"', add
label define do10a_univyrs_lbl 18 `"18"', add
label define do10a_univyrs_lbl 19 `"19"', add
label define do10a_univyrs_lbl 20 `"20"', add
label define do10a_univyrs_lbl 98 `"Unknown"', add
label define do10a_univyrs_lbl 99 `"NIU (not in universe)"', add
label values do10a_univyrs do10a_univyrs_lbl

label define do10a_res5yr_lbl 1 `"Municipality of current residence"'
label define do10a_res5yr_lbl 2 `"Other municipality"', add
label define do10a_res5yr_lbl 3 `"Abroad"', add
label define do10a_res5yr_lbl 9 `"NIU (not in universe)"', add
label values do10a_res5yr do10a_res5yr_lbl

label define do10a_res5yr_lbl 1 `"Municipality of current residence"'
label define do10a_res5yr_lbl 2 `"Other municipality"', add
label define do10a_res5yr_lbl 3 `"Abroad"', add
label define do10a_res5yr_lbl 9 `"NIU (not in universe)"', add
label values do10a_res5yr do10a_res5yr_lbl

label define do10a_prov5yr_lbl 01 `"Federal district"'
label define do10a_prov5yr_lbl 02 `"Azua"', add
label define do10a_prov5yr_lbl 03 `"Baoruco"', add
label define do10a_prov5yr_lbl 04 `"Barahona"', add
label define do10a_prov5yr_lbl 05 `"Dajabón"', add
label define do10a_prov5yr_lbl 06 `"Duarte"', add
label define do10a_prov5yr_lbl 07 `"Elías Piña"', add
label define do10a_prov5yr_lbl 08 `"El Seibo"', add
label define do10a_prov5yr_lbl 09 `"Espaillat"', add
label define do10a_prov5yr_lbl 10 `"Independencia"', add
label define do10a_prov5yr_lbl 11 `"La Altagracia"', add
label define do10a_prov5yr_lbl 12 `"La Romana"', add
label define do10a_prov5yr_lbl 13 `"La Vega"', add
label define do10a_prov5yr_lbl 14 `"María Trinidad Sánchez"', add
label define do10a_prov5yr_lbl 15 `"Monte Cristi"', add
label define do10a_prov5yr_lbl 16 `"Pedernales"', add
label define do10a_prov5yr_lbl 17 `"Peravia"', add
label define do10a_prov5yr_lbl 18 `"Puerto Plata"', add
label define do10a_prov5yr_lbl 19 `"Hermanas Mirabal"', add
label define do10a_prov5yr_lbl 20 `"Samaná"', add
label define do10a_prov5yr_lbl 21 `"San Cristóbal"', add
label define do10a_prov5yr_lbl 22 `"San Juan"', add
label define do10a_prov5yr_lbl 23 `"San Pedro de Macorís"', add
label define do10a_prov5yr_lbl 24 `"Sánchez Ramírez"', add
label define do10a_prov5yr_lbl 25 `"Santiago"', add
label define do10a_prov5yr_lbl 26 `"Santiago Rodríguez"', add
label define do10a_prov5yr_lbl 27 `"Valverde"', add
label define do10a_prov5yr_lbl 28 `"Monseñor Nouel"', add
label define do10a_prov5yr_lbl 29 `"Monte Plata"', add
label define do10a_prov5yr_lbl 30 `"Hato Mayor"', add
label define do10a_prov5yr_lbl 31 `"San José de Ocoa"', add
label define do10a_prov5yr_lbl 32 `"Santo Domingo"', add
label define do10a_prov5yr_lbl 50 `"Abroad"', add
label define do10a_prov5yr_lbl 98 `"Unknown"', add
label define do10a_prov5yr_lbl 99 `"NIU (not in universe)"', add
label values do10a_prov5yr do10a_prov5yr_lbl

label define do10a_muni5yr_lbl 0101 `"Santo Domingo de Guzman"'
label define do10a_muni5yr_lbl 0201 `"Azua"', add
label define do10a_muni5yr_lbl 0202 `"Las Charcas"', add
label define do10a_muni5yr_lbl 0203 `"Las Yayas de Viajama"', add
label define do10a_muni5yr_lbl 0204 `"Padre las Casas"', add
label define do10a_muni5yr_lbl 0205 `"Peralta"', add
label define do10a_muni5yr_lbl 0206 `"Sabana Yegua"', add
label define do10a_muni5yr_lbl 0207 `"Pueblo Viejo"', add
label define do10a_muni5yr_lbl 0208 `"Tabara Arriba"', add
label define do10a_muni5yr_lbl 0209 `"Guayabal"', add
label define do10a_muni5yr_lbl 0210 `"Estebanía"', add
label define do10a_muni5yr_lbl 0301 `"Neiba"', add
label define do10a_muni5yr_lbl 0302 `"Galvan"', add
label define do10a_muni5yr_lbl 0303 `"Tamayo"', add
label define do10a_muni5yr_lbl 0304 `"Villa Jaragua"', add
label define do10a_muni5yr_lbl 0305 `"Los Ríos"', add
label define do10a_muni5yr_lbl 0401 `"Barahona"', add
label define do10a_muni5yr_lbl 0402 `"Cabral"', add
label define do10a_muni5yr_lbl 0403 `"Enriquillo"', add
label define do10a_muni5yr_lbl 0404 `"Paraiso"', add
label define do10a_muni5yr_lbl 0405 `"Vicente Noble"', add
label define do10a_muni5yr_lbl 0406 `"El Peñon"', add
label define do10a_muni5yr_lbl 0407 `"La Cienaga"', add
label define do10a_muni5yr_lbl 0408 `"Fundación"', add
label define do10a_muni5yr_lbl 0409 `"Las Salinas"', add
label define do10a_muni5yr_lbl 0410 `"Polo"', add
label define do10a_muni5yr_lbl 0411 `"Jaquimeyes"', add
label define do10a_muni5yr_lbl 0501 `"Dajabón"', add
label define do10a_muni5yr_lbl 0502 `"Loma de Cabrera"', add
label define do10a_muni5yr_lbl 0503 `"Partido"', add
label define do10a_muni5yr_lbl 0504 `"Restauración"', add
label define do10a_muni5yr_lbl 0505 `"El Pino"', add
label define do10a_muni5yr_lbl 0601 `"San Francisco de Macorís"', add
label define do10a_muni5yr_lbl 0602 `"Arenoso"', add
label define do10a_muni5yr_lbl 0603 `"Castillo"', add
label define do10a_muni5yr_lbl 0604 `"Pimentel"', add
label define do10a_muni5yr_lbl 0605 `"Villa Riva"', add
label define do10a_muni5yr_lbl 0606 `"Las Guáranas"', add
label define do10a_muni5yr_lbl 0607 `"Eugenio Maria de Hostos"', add
label define do10a_muni5yr_lbl 0701 `"Comendador"', add
label define do10a_muni5yr_lbl 0702 `"Banica"', add
label define do10a_muni5yr_lbl 0703 `"El Llano"', add
label define do10a_muni5yr_lbl 0704 `"Hondo Valle"', add
label define do10a_muni5yr_lbl 0705 `"Pedro Santana"', add
label define do10a_muni5yr_lbl 0706 `"Juan Santiago"', add
label define do10a_muni5yr_lbl 0801 `"El Seibo"', add
label define do10a_muni5yr_lbl 0802 `"Miches"', add
label define do10a_muni5yr_lbl 0901 `"Moca"', add
label define do10a_muni5yr_lbl 0902 `"Cayetano Germosén"', add
label define do10a_muni5yr_lbl 0903 `"Gaspar Hernández"', add
label define do10a_muni5yr_lbl 0904 `"Jamao al Norte"', add
label define do10a_muni5yr_lbl 1001 `"Jimaní"', add
label define do10a_muni5yr_lbl 1002 `"Duvergé"', add
label define do10a_muni5yr_lbl 1003 `"La Descubierta"', add
label define do10a_muni5yr_lbl 1004 `"Postrer Río"', add
label define do10a_muni5yr_lbl 1005 `"Cristóbal"', add
label define do10a_muni5yr_lbl 1006 `"Mella"', add
label define do10a_muni5yr_lbl 1101 `"Higüey"', add
label define do10a_muni5yr_lbl 1102 `"San Rafael del Yuma"', add
label define do10a_muni5yr_lbl 1201 `"La Romana"', add
label define do10a_muni5yr_lbl 1202 `"Guaymate"', add
label define do10a_muni5yr_lbl 1203 `"Villa Hermosa"', add
label define do10a_muni5yr_lbl 1301 `"La Vega"', add
label define do10a_muni5yr_lbl 1302 `"Constanza"', add
label define do10a_muni5yr_lbl 1303 `"Jarabacoa"', add
label define do10a_muni5yr_lbl 1304 `"Jima Abajo"', add
label define do10a_muni5yr_lbl 1401 `"Nagua"', add
label define do10a_muni5yr_lbl 1402 `"Cabrera"', add
label define do10a_muni5yr_lbl 1403 `"El Factor"', add
label define do10a_muni5yr_lbl 1404 `"Río San Juan"', add
label define do10a_muni5yr_lbl 1501 `"Monte Cristi"', add
label define do10a_muni5yr_lbl 1502 `"Castañuelas"', add
label define do10a_muni5yr_lbl 1503 `"Guayubín"', add
label define do10a_muni5yr_lbl 1504 `"Las Matas de Santa Cruz"', add
label define do10a_muni5yr_lbl 1505 `"Pepillo Salcedo"', add
label define do10a_muni5yr_lbl 1506 `"Villa Vásquez"', add
label define do10a_muni5yr_lbl 1601 `"Pedernales"', add
label define do10a_muni5yr_lbl 1602 `"Oviedo"', add
label define do10a_muni5yr_lbl 1701 `"Baní"', add
label define do10a_muni5yr_lbl 1702 `"Nizao"', add
label define do10a_muni5yr_lbl 1801 `"Puerto Plata"', add
label define do10a_muni5yr_lbl 1802 `"Altamira"', add
label define do10a_muni5yr_lbl 1803 `"Guananico"', add
label define do10a_muni5yr_lbl 1804 `"Imbert"', add
label define do10a_muni5yr_lbl 1805 `"Los Hidalgos"', add
label define do10a_muni5yr_lbl 1806 `"Luperón"', add
label define do10a_muni5yr_lbl 1807 `"Sosúa"', add
label define do10a_muni5yr_lbl 1808 `"Villa Isabela"', add
label define do10a_muni5yr_lbl 1809 `"Villa Montellano"', add
label define do10a_muni5yr_lbl 1901 `"Salcedo"', add
label define do10a_muni5yr_lbl 1902 `"Tenares"', add
label define do10a_muni5yr_lbl 1903 `"Villa Tapia"', add
label define do10a_muni5yr_lbl 2001 `"Samaná"', add
label define do10a_muni5yr_lbl 2002 `"Sánchez"', add
label define do10a_muni5yr_lbl 2003 `"Las Terrenas"', add
label define do10a_muni5yr_lbl 2101 `"San Cristóbal"', add
label define do10a_muni5yr_lbl 2102 `"Sabana Grande de Palenque"', add
label define do10a_muni5yr_lbl 2103 `"Bajos de Haina"', add
label define do10a_muni5yr_lbl 2104 `"Cambita Garabitos"', add
label define do10a_muni5yr_lbl 2105 `"Villa Altagracia"', add
label define do10a_muni5yr_lbl 2106 `"Yaguate"', add
label define do10a_muni5yr_lbl 2107 `"San Gregorio de Nigua"', add
label define do10a_muni5yr_lbl 2108 `"Los Cacaos"', add
label define do10a_muni5yr_lbl 2201 `"San Juan"', add
label define do10a_muni5yr_lbl 2202 `"Bohechio"', add
label define do10a_muni5yr_lbl 2203 `"El Cercado"', add
label define do10a_muni5yr_lbl 2204 `"Juan de Herrera"', add
label define do10a_muni5yr_lbl 2205 `"Las Matas de Farfán"', add
label define do10a_muni5yr_lbl 2206 `"Vallejuelo"', add
label define do10a_muni5yr_lbl 2301 `"San Pedro de Macorís"', add
label define do10a_muni5yr_lbl 2302 `"Los Llanos"', add
label define do10a_muni5yr_lbl 2303 `"Ramón Santana"', add
label define do10a_muni5yr_lbl 2304 `"Consuelo"', add
label define do10a_muni5yr_lbl 2305 `"Quisqueya"', add
label define do10a_muni5yr_lbl 2306 `"Guayacanes"', add
label define do10a_muni5yr_lbl 2401 `"Cotuí"', add
label define do10a_muni5yr_lbl 2402 `"Cevicos"', add
label define do10a_muni5yr_lbl 2403 `"Fantino"', add
label define do10a_muni5yr_lbl 2404 `"La Mata"', add
label define do10a_muni5yr_lbl 2501 `"Santiago"', add
label define do10a_muni5yr_lbl 2502 `"Bisonó"', add
label define do10a_muni5yr_lbl 2503 `"Jánico"', add
label define do10a_muni5yr_lbl 2504 `"Licey Al Medio"', add
label define do10a_muni5yr_lbl 2505 `"San José de las Matas"', add
label define do10a_muni5yr_lbl 2506 `"Tamboril"', add
label define do10a_muni5yr_lbl 2507 `"Villa González"', add
label define do10a_muni5yr_lbl 2508 `"Punal"', add
label define do10a_muni5yr_lbl 2509 `"Sabana Iglesia"', add
label define do10a_muni5yr_lbl 2601 `"San Ignacio de Sabaneta"', add
label define do10a_muni5yr_lbl 2602 `"Villa los Almácigos"', add
label define do10a_muni5yr_lbl 2603 `"Monción"', add
label define do10a_muni5yr_lbl 2701 `"Mao"', add
label define do10a_muni5yr_lbl 2702 `"Esperanza"', add
label define do10a_muni5yr_lbl 2703 `"Laguna Salada"', add
label define do10a_muni5yr_lbl 2801 `"Bonao"', add
label define do10a_muni5yr_lbl 2802 `"Maimón"', add
label define do10a_muni5yr_lbl 2803 `"Piedra Blanca"', add
label define do10a_muni5yr_lbl 2901 `"Monte Plata"', add
label define do10a_muni5yr_lbl 2902 `"Bayaguana"', add
label define do10a_muni5yr_lbl 2903 `"Sabana Grande de Boya"', add
label define do10a_muni5yr_lbl 2904 `"Yamasá"', add
label define do10a_muni5yr_lbl 2905 `"Peralvillo"', add
label define do10a_muni5yr_lbl 3001 `"Hato Mayor"', add
label define do10a_muni5yr_lbl 3002 `"Sabana de la Mar"', add
label define do10a_muni5yr_lbl 3003 `"El Valle"', add
label define do10a_muni5yr_lbl 3101 `"San José de Ocoa"', add
label define do10a_muni5yr_lbl 3102 `"Sabana Larga"', add
label define do10a_muni5yr_lbl 3103 `"Rancho Arriba"', add
label define do10a_muni5yr_lbl 3201 `"Santo Domingo Este"', add
label define do10a_muni5yr_lbl 3202 `"Santo Domingo oeste"', add
label define do10a_muni5yr_lbl 3203 `"Santo Domingo Norte"', add
label define do10a_muni5yr_lbl 3204 `"Boca Chica"', add
label define do10a_muni5yr_lbl 3205 `"San Antonio de Guerra"', add
label define do10a_muni5yr_lbl 3206 `"Los Alcarrizos"', add
label define do10a_muni5yr_lbl 3207 `"Pedro Brand"', add
label define do10a_muni5yr_lbl 5000 `"Foreign country"', add
label define do10a_muni5yr_lbl 9998 `"Unknown"', add
label define do10a_muni5yr_lbl 9999 `"NIU (not in universe)"', add
label values do10a_muni5yr do10a_muni5yr_lbl

label define do10a_ctry5yr_lbl 032 `"Argentina"'
label define do10a_ctry5yr_lbl 076 `"Brazil"', add
label define do10a_ctry5yr_lbl 124 `"Canada"', add
label define do10a_ctry5yr_lbl 152 `"Chile"', add
label define do10a_ctry5yr_lbl 156 `"China"', add
label define do10a_ctry5yr_lbl 170 `"Colombia"', add
label define do10a_ctry5yr_lbl 192 `"Cuba"', add
label define do10a_ctry5yr_lbl 214 `"Dominican Republic"', add
label define do10a_ctry5yr_lbl 218 `"Ecuador"', add
label define do10a_ctry5yr_lbl 250 `"France"', add
label define do10a_ctry5yr_lbl 276 `"Germany"', add
label define do10a_ctry5yr_lbl 320 `"Guatemala"', add
label define do10a_ctry5yr_lbl 332 `"Haiti"', add
label define do10a_ctry5yr_lbl 380 `"Italy"', add
label define do10a_ctry5yr_lbl 484 `"Mexico"', add
label define do10a_ctry5yr_lbl 528 `"Netherlands"', add
label define do10a_ctry5yr_lbl 534 `"Curacao"', add
label define do10a_ctry5yr_lbl 535 `"Sint Maarten"', add
label define do10a_ctry5yr_lbl 591 `"Panama"', add
label define do10a_ctry5yr_lbl 604 `"Peru"', add
label define do10a_ctry5yr_lbl 630 `"Puerto Rico"', add
label define do10a_ctry5yr_lbl 643 `"Russia/USSR"', add
label define do10a_ctry5yr_lbl 724 `"Spain"', add
label define do10a_ctry5yr_lbl 756 `"Switzerland"', add
label define do10a_ctry5yr_lbl 826 `"United Kingdom"', add
label define do10a_ctry5yr_lbl 840 `"United States"', add
label define do10a_ctry5yr_lbl 862 `"Venezuela"', add
label define do10a_ctry5yr_lbl 900 `"Other Caribbean"', add
label define do10a_ctry5yr_lbl 901 `"Other Central America"', add
label define do10a_ctry5yr_lbl 902 `"Other South America"', add
label define do10a_ctry5yr_lbl 903 `"Other Europe"', add
label define do10a_ctry5yr_lbl 904 `"Other Africa"', add
label define do10a_ctry5yr_lbl 905 `"Other Asia"', add
label define do10a_ctry5yr_lbl 910 `"Other foreign country"', add
label define do10a_ctry5yr_lbl 999 `"NIU (not in universe)"', add
label values do10a_ctry5yr do10a_ctry5yr_lbl

label define do10a_paidlwk_lbl 1 `"Yes"'
label define do10a_paidlwk_lbl 2 `"No"', add
label define do10a_paidlwk_lbl 8 `"Unknown"', add
label define do10a_paidlwk_lbl 9 `"NIU (not in universe)"', add
label values do10a_paidlwk do10a_paidlwk_lbl

label define do10a_hrpdlw_lbl 1 `"Yes"'
label define do10a_hrpdlw_lbl 2 `"No"', add
label define do10a_hrpdlw_lbl 8 `"Unknown"', add
label define do10a_hrpdlw_lbl 9 `"NIU (not in universe)"', add
label values do10a_hrpdlw do10a_hrpdlw_lbl

label define do10a_unpdlw_lbl 1 `"Yes"'
label define do10a_unpdlw_lbl 2 `"No"', add
label define do10a_unpdlw_lbl 8 `"Unknown"', add
label define do10a_unpdlw_lbl 9 `"NIU (not in universe)"', add
label values do10a_unpdlw do10a_unpdlw_lbl

label define do10a_activity_lbl 1 `"Household chores"'
label define do10a_activity_lbl 2 `"Studies"', add
label define do10a_activity_lbl 3 `"Rentier"', add
label define do10a_activity_lbl 4 `"Retired or receiving pension"', add
label define do10a_activity_lbl 5 `"Not working due to disability"', add
label define do10a_activity_lbl 6 `"Not working due to old age"', add
label define do10a_activity_lbl 7 `"Other"', add
label define do10a_activity_lbl 8 `"No activity"', add
label define do10a_activity_lbl 9 `"NIU (not in universe)"', add
label values do10a_activity do10a_activity_lbl

label define do10a_canwork_lbl 1 `"Yes"'
label define do10a_canwork_lbl 2 `"No"', add
label define do10a_canwork_lbl 8 `"Unknown"', add
label define do10a_canwork_lbl 9 `"NIU (not in universe)"', add
label values do10a_canwork do10a_canwork_lbl

label define do10a_occ_lbl 01 `"Armed forces, officer"'
label define do10a_occ_lbl 02 `"Armed forces, subofficer"', add
label define do10a_occ_lbl 03 `"Armed forces, other"', add
label define do10a_occ_lbl 11 `"Public administration directors"', add
label define do10a_occ_lbl 12 `"General managers of restaurants and hotels"', add
label define do10a_occ_lbl 13 `"Production and operations managers"', add
label define do10a_occ_lbl 14 `"General managers of restaurants and hotels"', add
label define do10a_occ_lbl 21 `"Science and engineering professionals"', add
label define do10a_occ_lbl 22 `"Health professionals"', add
label define do10a_occ_lbl 23 `"Teaching professionals"', add
label define do10a_occ_lbl 24 `"Public administration professionals"', add
label define do10a_occ_lbl 25 `"Communications and technology professionals"', add
label define do10a_occ_lbl 26 `"Social sciences professionals"', add
label define do10a_occ_lbl 31 `"Associate professionals, science and engineering"', add
label define do10a_occ_lbl 32 `"Associate professionals, health"', add
label define do10a_occ_lbl 33 `"Associate professionals, finance and management"', add
label define do10a_occ_lbl 34 `"Associate professionals, social services"', add
label define do10a_occ_lbl 35 `"Communications and technology technicians"', add
label define do10a_occ_lbl 36 `"Teaching technicians"', add
label define do10a_occ_lbl 37 `"Social sciences technicians"', add
label define do10a_occ_lbl 41 `"Office clerks"', add
label define do10a_occ_lbl 42 `"Customer service clerks"', add
label define do10a_occ_lbl 43 `"Cashiers, tellers and related clerks"', add
label define do10a_occ_lbl 44 `"Other clerks"', add
label define do10a_occ_lbl 51 `"Personal services and related workers"', add
label define do10a_occ_lbl 52 `"Shop salespersons"', add
label define do10a_occ_lbl 53 `"Personal care and related workers"', add
label define do10a_occ_lbl 54 `"Protective services workers"', add
label define do10a_occ_lbl 61 `"Skilled agricultural workers"', add
label define do10a_occ_lbl 62 `"Skilled fishery and forestry workers and hunters and trappers"', add
label define do10a_occ_lbl 63 `"Subsistence agricultural and fishery workers"', add
label define do10a_occ_lbl 71 `"Construction and building trades workers"', add
label define do10a_occ_lbl 72 `"Metal, machinery and related trades workers"', add
label define do10a_occ_lbl 73 `"Printing and related trades workers"', add
label define do10a_occ_lbl 74 `"Electrical and electronic equipment mechanics and fitters"', add
label define do10a_occ_lbl 75 `"Other craft and related trades workers"', add
label define do10a_occ_lbl 81 `"Stationary plant and related operators"', add
label define do10a_occ_lbl 82 `"Machine operators and assemblers"', add
label define do10a_occ_lbl 83 `"Drivers and mobile plant operators"', add
label define do10a_occ_lbl 91 `"Domestic and  related helpers, cleaners and launderers"', add
label define do10a_occ_lbl 92 `"Agricultural, fishery and related labourers"', add
label define do10a_occ_lbl 93 `"Labourers in mining, construction, manufacturing and transport"', add
label define do10a_occ_lbl 94 `"Kitchen helpers"', add
label define do10a_occ_lbl 95 `"Street vendors and related service workers"', add
label define do10a_occ_lbl 96 `"Garbage collectors and other elementary occupations"', add
label define do10a_occ_lbl 98 `"Unknown"', add
label define do10a_occ_lbl 99 `"NIU (not in universe)"', add
label values do10a_occ do10a_occ_lbl

label define do10a_classwk_lbl 1 `"Paid employee"'
label define do10a_classwk_lbl 2 `"Employer/owner"', add
label define do10a_classwk_lbl 3 `"Family worker or unpaid worker"', add
label define do10a_classwk_lbl 4 `"Self employed"', add
label define do10a_classwk_lbl 5 `"Other"', add
label define do10a_classwk_lbl 8 `"Unknown"', add
label define do10a_classwk_lbl 9 `"NIU (not in universe)"', add
label values do10a_classwk do10a_classwk_lbl

label define do10a_ind_lbl 001 `"Agriculture, hunting and related service activities"'
label define do10a_ind_lbl 002 `"Forestry, logging and related service activities"', add
label define do10a_ind_lbl 005 `"Fishing, agriculture and service activities incidental to fishing"', add
label define do10a_ind_lbl 012 `"Mining of uranium and thorium ores"', add
label define do10a_ind_lbl 013 `"Mining of metal ores"', add
label define do10a_ind_lbl 014 `"Other mining and quarrying"', add
label define do10a_ind_lbl 015 `"Manufacture of food products and beverages"', add
label define do10a_ind_lbl 016 `"Manufacture of tobacco products"', add
label define do10a_ind_lbl 017 `"Manufacture of textiles"', add
label define do10a_ind_lbl 018 `"Manufacture of wearing apparel; dressing and dyeing of fur"', add
label define do10a_ind_lbl 019 `"Tanning and dressing of leather; manufacture of luggage, handbags, saddlery, harness and footwear"', add
label define do10a_ind_lbl 020 `"Manufacture of wood and of products of wood and cork, except furniture; manufacture of articles of straw and plaiting materials"', add
label define do10a_ind_lbl 021 `"Manufacture of paper and paper products"', add
label define do10a_ind_lbl 022 `"Publishing, printing and reproduction of recorded media"', add
label define do10a_ind_lbl 023 `"Manufacture of coke, refined petroleum products and nuclear fuel"', add
label define do10a_ind_lbl 024 `"Manufacture of chemicals and chemical products"', add
label define do10a_ind_lbl 025 `"Manufacture of rubber and plastics products"', add
label define do10a_ind_lbl 026 `"Manufacture of other non metallic mineral products"', add
label define do10a_ind_lbl 027 `"Manufacture of basic metals"', add
label define do10a_ind_lbl 028 `"Manufacture of fabricated metal products, except machinery and equipment"', add
label define do10a_ind_lbl 029 `"Manufacture of machinery and equipment n.e.c."', add
label define do10a_ind_lbl 030 `"Manufacture of office, accounting and computing machinery"', add
label define do10a_ind_lbl 031 `"Manufacture of electrical machinery and apparatus n.e.c."', add
label define do10a_ind_lbl 032 `"Manufacture of radio, television and communication equipment and apparatus"', add
label define do10a_ind_lbl 033 `"Manufacture of medical, precision and optical instruments, watches and clocks"', add
label define do10a_ind_lbl 034 `"Manufacture of motor vehicles, trailers and semi trailers"', add
label define do10a_ind_lbl 035 `"Manufacture of other transport equipment"', add
label define do10a_ind_lbl 036 `"Manufacture of furniture; manufacturing n.e.c."', add
label define do10a_ind_lbl 037 `"Recycling"', add
label define do10a_ind_lbl 040 `"Electricity, gas, steam and hot water supply"', add
label define do10a_ind_lbl 041 `"Collection, purification and distribution of water"', add
label define do10a_ind_lbl 045 `"Construction"', add
label define do10a_ind_lbl 050 `"Sale, maintenance and repair of motor vehicles and motorcycles; retail sale of automotive fuel"', add
label define do10a_ind_lbl 051 `"Wholesale trade and commission trade, except of motor vehicles and motorcycles"', add
label define do10a_ind_lbl 052 `"Retail trade, except of motor vehicles and motorcycles; repair of personal and household goods"', add
label define do10a_ind_lbl 055 `"Hotels and restaurants"', add
label define do10a_ind_lbl 060 `"Land transport; transport via pipelines"', add
label define do10a_ind_lbl 061 `"Water transport"', add
label define do10a_ind_lbl 062 `"Air transport"', add
label define do10a_ind_lbl 063 `"Supporting and auxiliary transport activities; activities of travel agencies"', add
label define do10a_ind_lbl 064 `"Post and telecommunications"', add
label define do10a_ind_lbl 065 `"Financial intermediation, except insurance and pension funding"', add
label define do10a_ind_lbl 066 `"Insurance and pension funding, except compulsory social security"', add
label define do10a_ind_lbl 067 `"Activities auxiliary to financial intermediation"', add
label define do10a_ind_lbl 070 `"Real estate activities"', add
label define do10a_ind_lbl 071 `"Renting of machinery and equipment without operator and of personal and household goods"', add
label define do10a_ind_lbl 072 `"Computer and related activities"', add
label define do10a_ind_lbl 073 `"Research and development"', add
label define do10a_ind_lbl 074 `"Other business activities"', add
label define do10a_ind_lbl 075 `"Public administration and defence; compulsory social security"', add
label define do10a_ind_lbl 080 `"Education"', add
label define do10a_ind_lbl 085 `"Health and social work"', add
label define do10a_ind_lbl 090 `"Sewage and refuse disposal, sanitation and similar activities"', add
label define do10a_ind_lbl 091 `"Activities of membership organizations n.e.c."', add
label define do10a_ind_lbl 092 `"Recreational, cultural and sporting activities"', add
label define do10a_ind_lbl 093 `"Other service activities"', add
label define do10a_ind_lbl 095 `"Activities of private households as employers of domestic staff"', add
label define do10a_ind_lbl 099 `"Extraterritorial organizations and bodies"', add
label define do10a_ind_lbl 998 `"Unknown"', add
label define do10a_ind_lbl 999 `"NIU (not in universe)"', add
label values do10a_ind do10a_ind_lbl

label define do10a_marst_lbl 1 `"Separated (marriage)"'
label define do10a_marst_lbl 2 `"Divorced"', add
label define do10a_marst_lbl 3 `"Widow/widower"', add
label define do10a_marst_lbl 4 `"Separated (cohabitation)"', add
label define do10a_marst_lbl 5 `"Married"', add
label define do10a_marst_lbl 6 `"Cohabiting"', add
label define do10a_marst_lbl 7 `"Single/never married"', add
label define do10a_marst_lbl 8 `"Unknown"', add
label define do10a_marst_lbl 9 `"NIU (not in universe)"', add
label values do10a_marst do10a_marst_lbl

label define do10a_chbornf_lbl 00 `"0"'
label define do10a_chbornf_lbl 01 `"1"', add
label define do10a_chbornf_lbl 02 `"2"', add
label define do10a_chbornf_lbl 03 `"3"', add
label define do10a_chbornf_lbl 04 `"4"', add
label define do10a_chbornf_lbl 05 `"5"', add
label define do10a_chbornf_lbl 06 `"6"', add
label define do10a_chbornf_lbl 07 `"7"', add
label define do10a_chbornf_lbl 08 `"8"', add
label define do10a_chbornf_lbl 09 `"9"', add
label define do10a_chbornf_lbl 10 `"10"', add
label define do10a_chbornf_lbl 11 `"11"', add
label define do10a_chbornf_lbl 12 `"12+"', add
label define do10a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values do10a_chbornf do10a_chbornf_lbl

label define do10a_chbornm_lbl 00 `"0"'
label define do10a_chbornm_lbl 01 `"1"', add
label define do10a_chbornm_lbl 02 `"2"', add
label define do10a_chbornm_lbl 03 `"3"', add
label define do10a_chbornm_lbl 04 `"4"', add
label define do10a_chbornm_lbl 05 `"5"', add
label define do10a_chbornm_lbl 06 `"6"', add
label define do10a_chbornm_lbl 07 `"7"', add
label define do10a_chbornm_lbl 08 `"8"', add
label define do10a_chbornm_lbl 09 `"9"', add
label define do10a_chbornm_lbl 10 `"10"', add
label define do10a_chbornm_lbl 11 `"11"', add
label define do10a_chbornm_lbl 12 `"12+"', add
label define do10a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values do10a_chbornm do10a_chbornm_lbl

label define do10a_nobirth_lbl 1 `"Yes"'
label define do10a_nobirth_lbl 2 `"No"', add
label define do10a_nobirth_lbl 9 `"NIU (not in universe)"', add
label values do10a_nobirth do10a_nobirth_lbl

label define do10a_chsurvf_lbl 00 `"0"'
label define do10a_chsurvf_lbl 01 `"1"', add
label define do10a_chsurvf_lbl 02 `"2"', add
label define do10a_chsurvf_lbl 03 `"3"', add
label define do10a_chsurvf_lbl 04 `"4"', add
label define do10a_chsurvf_lbl 05 `"5"', add
label define do10a_chsurvf_lbl 06 `"6"', add
label define do10a_chsurvf_lbl 07 `"7"', add
label define do10a_chsurvf_lbl 08 `"8"', add
label define do10a_chsurvf_lbl 09 `"9"', add
label define do10a_chsurvf_lbl 10 `"10+"', add
label define do10a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values do10a_chsurvf do10a_chsurvf_lbl

label define do10a_chsurvm_lbl 00 `"0"'
label define do10a_chsurvm_lbl 01 `"1"', add
label define do10a_chsurvm_lbl 02 `"2"', add
label define do10a_chsurvm_lbl 03 `"3"', add
label define do10a_chsurvm_lbl 04 `"4"', add
label define do10a_chsurvm_lbl 05 `"5"', add
label define do10a_chsurvm_lbl 06 `"6"', add
label define do10a_chsurvm_lbl 07 `"7"', add
label define do10a_chsurvm_lbl 08 `"8"', add
label define do10a_chsurvm_lbl 09 `"9"', add
label define do10a_chsurvm_lbl 10 `"10+"', add
label define do10a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values do10a_chsurvm do10a_chsurvm_lbl

label define do10a_nochsurv_lbl 1 `"Yes"'
label define do10a_nochsurv_lbl 2 `"No"', add
label define do10a_nochsurv_lbl 9 `"NIU (not in universe)"', add
label values do10a_nochsurv do10a_nochsurv_lbl

label define do10a_lchmo_lbl 01 `"January"'
label define do10a_lchmo_lbl 02 `"February"', add
label define do10a_lchmo_lbl 03 `"March"', add
label define do10a_lchmo_lbl 04 `"April"', add
label define do10a_lchmo_lbl 05 `"May"', add
label define do10a_lchmo_lbl 06 `"June"', add
label define do10a_lchmo_lbl 07 `"July"', add
label define do10a_lchmo_lbl 08 `"August"', add
label define do10a_lchmo_lbl 09 `"September"', add
label define do10a_lchmo_lbl 10 `"October"', add
label define do10a_lchmo_lbl 11 `"November"', add
label define do10a_lchmo_lbl 12 `"December"', add
label define do10a_lchmo_lbl 99 `"NIU (not in universe)"', add
label values do10a_lchmo do10a_lchmo_lbl

label define do10a_lchyr_lbl 1939 `"Prior to 1940"'
label define do10a_lchyr_lbl 1940 `"1940"', add
label define do10a_lchyr_lbl 1941 `"1941"', add
label define do10a_lchyr_lbl 1942 `"1942"', add
label define do10a_lchyr_lbl 1943 `"1943"', add
label define do10a_lchyr_lbl 1944 `"1944"', add
label define do10a_lchyr_lbl 1945 `"1945"', add
label define do10a_lchyr_lbl 1946 `"1946"', add
label define do10a_lchyr_lbl 1947 `"1947"', add
label define do10a_lchyr_lbl 1948 `"1948"', add
label define do10a_lchyr_lbl 1949 `"1949"', add
label define do10a_lchyr_lbl 1950 `"1950"', add
label define do10a_lchyr_lbl 1951 `"1951"', add
label define do10a_lchyr_lbl 1952 `"1952"', add
label define do10a_lchyr_lbl 1953 `"1953"', add
label define do10a_lchyr_lbl 1954 `"1954"', add
label define do10a_lchyr_lbl 1955 `"1955"', add
label define do10a_lchyr_lbl 1956 `"1956"', add
label define do10a_lchyr_lbl 1957 `"1957"', add
label define do10a_lchyr_lbl 1958 `"1958"', add
label define do10a_lchyr_lbl 1959 `"1959"', add
label define do10a_lchyr_lbl 1960 `"1960"', add
label define do10a_lchyr_lbl 1961 `"1961"', add
label define do10a_lchyr_lbl 1962 `"1962"', add
label define do10a_lchyr_lbl 1963 `"1963"', add
label define do10a_lchyr_lbl 1964 `"1964"', add
label define do10a_lchyr_lbl 1965 `"1965"', add
label define do10a_lchyr_lbl 1966 `"1966"', add
label define do10a_lchyr_lbl 1967 `"1967"', add
label define do10a_lchyr_lbl 1968 `"1968"', add
label define do10a_lchyr_lbl 1969 `"1969"', add
label define do10a_lchyr_lbl 1970 `"1970"', add
label define do10a_lchyr_lbl 1971 `"1971"', add
label define do10a_lchyr_lbl 1972 `"1972"', add
label define do10a_lchyr_lbl 1973 `"1973"', add
label define do10a_lchyr_lbl 1974 `"1974"', add
label define do10a_lchyr_lbl 1975 `"1975"', add
label define do10a_lchyr_lbl 1976 `"1976"', add
label define do10a_lchyr_lbl 1977 `"1977"', add
label define do10a_lchyr_lbl 1978 `"1978"', add
label define do10a_lchyr_lbl 1979 `"1979"', add
label define do10a_lchyr_lbl 1980 `"1980"', add
label define do10a_lchyr_lbl 1981 `"1981"', add
label define do10a_lchyr_lbl 1982 `"1982"', add
label define do10a_lchyr_lbl 1983 `"1983"', add
label define do10a_lchyr_lbl 1984 `"1984"', add
label define do10a_lchyr_lbl 1985 `"1985"', add
label define do10a_lchyr_lbl 1986 `"1986"', add
label define do10a_lchyr_lbl 1987 `"1987"', add
label define do10a_lchyr_lbl 1988 `"1988"', add
label define do10a_lchyr_lbl 1989 `"1989"', add
label define do10a_lchyr_lbl 1990 `"1990"', add
label define do10a_lchyr_lbl 1991 `"1991"', add
label define do10a_lchyr_lbl 1992 `"1992"', add
label define do10a_lchyr_lbl 1993 `"1993"', add
label define do10a_lchyr_lbl 1994 `"1994"', add
label define do10a_lchyr_lbl 1995 `"1995"', add
label define do10a_lchyr_lbl 1996 `"1996"', add
label define do10a_lchyr_lbl 1997 `"1997"', add
label define do10a_lchyr_lbl 1998 `"1998"', add
label define do10a_lchyr_lbl 1999 `"1999"', add
label define do10a_lchyr_lbl 2000 `"2000"', add
label define do10a_lchyr_lbl 2001 `"2001"', add
label define do10a_lchyr_lbl 2002 `"2002"', add
label define do10a_lchyr_lbl 2003 `"2003"', add
label define do10a_lchyr_lbl 2004 `"2004"', add
label define do10a_lchyr_lbl 2005 `"2005"', add
label define do10a_lchyr_lbl 2006 `"2006"', add
label define do10a_lchyr_lbl 2007 `"2007"', add
label define do10a_lchyr_lbl 2008 `"2008"', add
label define do10a_lchyr_lbl 2009 `"2009"', add
label define do10a_lchyr_lbl 2010 `"2010"', add
label define do10a_lchyr_lbl 9999 `"NIU (not in universe)"', add
label values do10a_lchyr do10a_lchyr_lbl

label define do10a_lcsurv_lbl 1 `"Yes"'
label define do10a_lcsurv_lbl 2 `"No"', add
label define do10a_lcsurv_lbl 9 `"NIU (not in universe)"', add
label values do10a_lcsurv do10a_lcsurv_lbl

label define do10a_lchaged_lbl 00 `"Less than 1 year"'
label define do10a_lchaged_lbl 01 `"1"', add
label define do10a_lchaged_lbl 02 `"2"', add
label define do10a_lchaged_lbl 03 `"3"', add
label define do10a_lchaged_lbl 04 `"4"', add
label define do10a_lchaged_lbl 05 `"5"', add
label define do10a_lchaged_lbl 06 `"6"', add
label define do10a_lchaged_lbl 07 `"7"', add
label define do10a_lchaged_lbl 08 `"8"', add
label define do10a_lchaged_lbl 09 `"9"', add
label define do10a_lchaged_lbl 10 `"10"', add
label define do10a_lchaged_lbl 11 `"11"', add
label define do10a_lchaged_lbl 12 `"12"', add
label define do10a_lchaged_lbl 13 `"13"', add
label define do10a_lchaged_lbl 14 `"14"', add
label define do10a_lchaged_lbl 15 `"15"', add
label define do10a_lchaged_lbl 16 `"16"', add
label define do10a_lchaged_lbl 17 `"17"', add
label define do10a_lchaged_lbl 18 `"18"', add
label define do10a_lchaged_lbl 19 `"19"', add
label define do10a_lchaged_lbl 20 `"20"', add
label define do10a_lchaged_lbl 21 `"21"', add
label define do10a_lchaged_lbl 22 `"22"', add
label define do10a_lchaged_lbl 23 `"23"', add
label define do10a_lchaged_lbl 24 `"24"', add
label define do10a_lchaged_lbl 25 `"25"', add
label define do10a_lchaged_lbl 26 `"26"', add
label define do10a_lchaged_lbl 27 `"27"', add
label define do10a_lchaged_lbl 28 `"28"', add
label define do10a_lchaged_lbl 29 `"29"', add
label define do10a_lchaged_lbl 30 `"30"', add
label define do10a_lchaged_lbl 31 `"31"', add
label define do10a_lchaged_lbl 32 `"32"', add
label define do10a_lchaged_lbl 33 `"33"', add
label define do10a_lchaged_lbl 34 `"34"', add
label define do10a_lchaged_lbl 35 `"35"', add
label define do10a_lchaged_lbl 36 `"36"', add
label define do10a_lchaged_lbl 37 `"37"', add
label define do10a_lchaged_lbl 38 `"38"', add
label define do10a_lchaged_lbl 39 `"39"', add
label define do10a_lchaged_lbl 40 `"40+"', add
label define do10a_lchaged_lbl 99 `"NIU (not in universe)"', add
label values do10a_lchaged do10a_lchaged_lbl

label define do10a_age5yr_lbl 02 `"0 to 4"'
label define do10a_age5yr_lbl 03 `"5 to 9"', add
label define do10a_age5yr_lbl 04 `"10 to 14"', add
label define do10a_age5yr_lbl 05 `"15 to 19"', add
label define do10a_age5yr_lbl 06 `"20 to 24"', add
label define do10a_age5yr_lbl 07 `"25 to 29"', add
label define do10a_age5yr_lbl 08 `"30 to 34"', add
label define do10a_age5yr_lbl 09 `"35 to 39"', add
label define do10a_age5yr_lbl 10 `"40 to 44"', add
label define do10a_age5yr_lbl 11 `"45 to 49"', add
label define do10a_age5yr_lbl 12 `"50 to 54"', add
label define do10a_age5yr_lbl 13 `"55 to 59"', add
label define do10a_age5yr_lbl 14 `"60 to 64"', add
label define do10a_age5yr_lbl 15 `"65 to 69"', add
label define do10a_age5yr_lbl 16 `"70 to 74"', add
label define do10a_age5yr_lbl 17 `"75 to 79"', add
label define do10a_age5yr_lbl 18 `"80 to 84"', add
label define do10a_age5yr_lbl 19 `"85 to 89"', add
label define do10a_age5yr_lbl 20 `"90 to 94"', add
label define do10a_age5yr_lbl 21 `"95 to 99"', add
label define do10a_age5yr_lbl 22 `"100 years or more"', add
label values do10a_age5yr do10a_age5yr_lbl

label define do10a_age5alt_lbl 01 `"0"'
label define do10a_age5alt_lbl 02 `"1 to 4"', add
label define do10a_age5alt_lbl 03 `"5 to 9"', add
label define do10a_age5alt_lbl 04 `"10 to 14"', add
label define do10a_age5alt_lbl 05 `"15 to 19"', add
label define do10a_age5alt_lbl 06 `"20 to 24"', add
label define do10a_age5alt_lbl 07 `"25 to 29"', add
label define do10a_age5alt_lbl 08 `"30 to 34"', add
label define do10a_age5alt_lbl 09 `"35 to 39"', add
label define do10a_age5alt_lbl 10 `"40 to 44"', add
label define do10a_age5alt_lbl 11 `"45 to 49"', add
label define do10a_age5alt_lbl 12 `"50 to 54"', add
label define do10a_age5alt_lbl 13 `"55 to 59"', add
label define do10a_age5alt_lbl 14 `"60 to 64"', add
label define do10a_age5alt_lbl 15 `"65 to 69"', add
label define do10a_age5alt_lbl 16 `"70 to 74"', add
label define do10a_age5alt_lbl 17 `"75 to 79"', add
label define do10a_age5alt_lbl 18 `"80 to 84"', add
label define do10a_age5alt_lbl 19 `"85 to 89"', add
label define do10a_age5alt_lbl 20 `"90 to 94"', add
label define do10a_age5alt_lbl 21 `"95 to 99"', add
label define do10a_age5alt_lbl 22 `"100 years or more"', add
label values do10a_age5alt do10a_age5alt_lbl

label define do10a_age10_lbl 01 `"0 to 9"'
label define do10a_age10_lbl 02 `"10 to 19"', add
label define do10a_age10_lbl 03 `"20 to 29"', add
label define do10a_age10_lbl 04 `"30 to 39"', add
label define do10a_age10_lbl 05 `"40 to 49"', add
label define do10a_age10_lbl 06 `"50 to 59"', add
label define do10a_age10_lbl 07 `"60 to 69"', add
label define do10a_age10_lbl 08 `"70 to 79"', add
label define do10a_age10_lbl 09 `"80 to 89"', add
label define do10a_age10_lbl 10 `"90 to 99"', add
label define do10a_age10_lbl 11 `"100 years or more"', add
label values do10a_age10 do10a_age10_lbl

label define do10a_agegrp_lbl 1 `"0 to 14"'
label define do10a_agegrp_lbl 2 `"15 to 64"', add
label define do10a_agegrp_lbl 3 `"65 years or more"', add
label values do10a_agegrp do10a_agegrp_lbl

label define do10a_yrstudyc_lbl 00 `"Less than 1 year"'
label define do10a_yrstudyc_lbl 01 `"1"', add
label define do10a_yrstudyc_lbl 02 `"2"', add
label define do10a_yrstudyc_lbl 03 `"3"', add
label define do10a_yrstudyc_lbl 04 `"4"', add
label define do10a_yrstudyc_lbl 05 `"5"', add
label define do10a_yrstudyc_lbl 06 `"6"', add
label define do10a_yrstudyc_lbl 07 `"7"', add
label define do10a_yrstudyc_lbl 08 `"8"', add
label define do10a_yrstudyc_lbl 09 `"9"', add
label define do10a_yrstudyc_lbl 10 `"10"', add
label define do10a_yrstudyc_lbl 11 `"11"', add
label define do10a_yrstudyc_lbl 12 `"12"', add
label define do10a_yrstudyc_lbl 13 `"13"', add
label define do10a_yrstudyc_lbl 14 `"14"', add
label define do10a_yrstudyc_lbl 15 `"15"', add
label define do10a_yrstudyc_lbl 16 `"16"', add
label define do10a_yrstudyc_lbl 17 `"17"', add
label define do10a_yrstudyc_lbl 18 `"18"', add
label define do10a_yrstudyc_lbl 19 `"19"', add
label define do10a_yrstudyc_lbl 20 `"20"', add
label define do10a_yrstudyc_lbl 21 `"21"', add
label define do10a_yrstudyc_lbl 22 `"22"', add
label define do10a_yrstudyc_lbl 23 `"23"', add
label define do10a_yrstudyc_lbl 24 `"24"', add
label define do10a_yrstudyc_lbl 25 `"25"', add
label define do10a_yrstudyc_lbl 26 `"26"', add
label define do10a_yrstudyc_lbl 27 `"27"', add
label define do10a_yrstudyc_lbl 28 `"28"', add
label define do10a_yrstudyc_lbl 29 `"29"', add
label define do10a_yrstudyc_lbl 30 `"30"', add
label define do10a_yrstudyc_lbl 31 `"31"', add
label define do10a_yrstudyc_lbl 32 `"32"', add
label define do10a_yrstudyc_lbl 98 `"Unknown"', add
label define do10a_yrstudyc_lbl 99 `"NIU (not in universe)"', add
label values do10a_yrstudyc do10a_yrstudyc_lbl

label define do10a_field_lbl 614 `"Teacher training and education science"'
label define do10a_field_lbl 621 `"Arts"', add
label define do10a_field_lbl 622 `"Humanities"', add
label define do10a_field_lbl 631 `"Social and behavorial science"', add
label define do10a_field_lbl 632 `"Journalism and information"', add
label define do10a_field_lbl 634 `"Business and administration"', add
label define do10a_field_lbl 638 `"Law"', add
label define do10a_field_lbl 642 `"Life sciences"', add
label define do10a_field_lbl 644 `"Physical sciences"', add
label define do10a_field_lbl 646 `"Mathematics and statistics"', add
label define do10a_field_lbl 648 `"Computing"', add
label define do10a_field_lbl 652 `"Engineering and engineering trades"', add
label define do10a_field_lbl 654 `"Manufacturing and processing"', add
label define do10a_field_lbl 658 `"Architecture and construction"', add
label define do10a_field_lbl 662 `"Agriculture, forestry and fishery"', add
label define do10a_field_lbl 664 `"Veterinary"', add
label define do10a_field_lbl 672 `"Medicine"', add
label define do10a_field_lbl 676 `"Social services"', add
label define do10a_field_lbl 681 `"Personal services"', add
label define do10a_field_lbl 684 `"Transport services"', add
label define do10a_field_lbl 685 `"Environmental protecion"', add
label define do10a_field_lbl 686 `"Security services"', add
label define do10a_field_lbl 998 `"Unknown"', add
label define do10a_field_lbl 999 `"NIU (not in universe)"', add
label values do10a_field do10a_field_lbl

label define do10a_occ1_lbl 00 `"Armed forces occupations"'
label define do10a_occ1_lbl 01 `"Managers"', add
label define do10a_occ1_lbl 02 `"Professionals"', add
label define do10a_occ1_lbl 03 `"Technicians and associate professionals"', add
label define do10a_occ1_lbl 04 `"Clerical support workers"', add
label define do10a_occ1_lbl 05 `"Service and sales workers"', add
label define do10a_occ1_lbl 06 `"Skilled agricultural, forestry and fishery workers"', add
label define do10a_occ1_lbl 07 `"Craft and related trades workers"', add
label define do10a_occ1_lbl 08 `"Plant and machine operators and assemblers"', add
label define do10a_occ1_lbl 09 `"Elementary occupations"', add
label define do10a_occ1_lbl 98 `"Unknown"', add
label define do10a_occ1_lbl 99 `"NIU (not in universe)"', add
label values do10a_occ1 do10a_occ1_lbl

label define do10a_ind1_lbl 01 `"Agriculture, hunting and forestry"'
label define do10a_ind1_lbl 02 `"Fishing"', add
label define do10a_ind1_lbl 03 `"Mining and quarrying"', add
label define do10a_ind1_lbl 04 `"Manufacturing"', add
label define do10a_ind1_lbl 05 `"Electricity, gas and water supply"', add
label define do10a_ind1_lbl 06 `"Construction"', add
label define do10a_ind1_lbl 07 `"Wholesale and retail trade; repair of motor vehicles, motorcycles and personal and household goods"', add
label define do10a_ind1_lbl 08 `"Hotels and restaurants"', add
label define do10a_ind1_lbl 09 `"Transport, storage and communications"', add
label define do10a_ind1_lbl 10 `"Financial intermediation"', add
label define do10a_ind1_lbl 11 `"Real estate, renting and business activities"', add
label define do10a_ind1_lbl 12 `"Public administration and defense; compulsory social security"', add
label define do10a_ind1_lbl 13 `"Education"', add
label define do10a_ind1_lbl 14 `"Health and social work"', add
label define do10a_ind1_lbl 15 `"Other community, social and personal services"', add
label define do10a_ind1_lbl 16 `"Activities of private households as employers"', add
label define do10a_ind1_lbl 17 `"Extraterritorial organizations and bodies"', add
label define do10a_ind1_lbl 98 `"Unknown"', add
label define do10a_ind1_lbl 99 `"NIU (not in universe)"', add
label values do10a_ind1 do10a_ind1_lbl

label define do10a_empstat_lbl 01 `"Employed"'
label define do10a_empstat_lbl 02 `"Unemployed"', add
label define do10a_empstat_lbl 03 `"Seeking first job"', add
label define do10a_empstat_lbl 04 `"Discouraged worker"', add
label define do10a_empstat_lbl 05 `"Household chores"', add
label define do10a_empstat_lbl 06 `"Student"', add
label define do10a_empstat_lbl 07 `"Rentier"', add
label define do10a_empstat_lbl 08 `"Retired/pensioner"', add
label define do10a_empstat_lbl 09 `"Disabled"', add
label define do10a_empstat_lbl 10 `"Senior citizen"', add
label define do10a_empstat_lbl 11 `"Other activity"', add
label define do10a_empstat_lbl 12 `"No activity"', add
label define do10a_empstat_lbl 98 `"Unknown"', add
label define do10a_empstat_lbl 99 `"NIU (not in universe)"', add
label values do10a_empstat do10a_empstat_lbl

label define do10a_chborn_lbl 00 `"0"'
label define do10a_chborn_lbl 01 `"1"', add
label define do10a_chborn_lbl 02 `"2"', add
label define do10a_chborn_lbl 03 `"3"', add
label define do10a_chborn_lbl 04 `"4"', add
label define do10a_chborn_lbl 05 `"5"', add
label define do10a_chborn_lbl 06 `"6"', add
label define do10a_chborn_lbl 07 `"7"', add
label define do10a_chborn_lbl 08 `"8"', add
label define do10a_chborn_lbl 09 `"9"', add
label define do10a_chborn_lbl 10 `"10"', add
label define do10a_chborn_lbl 11 `"11"', add
label define do10a_chborn_lbl 12 `"12"', add
label define do10a_chborn_lbl 13 `"13"', add
label define do10a_chborn_lbl 14 `"14"', add
label define do10a_chborn_lbl 15 `"15"', add
label define do10a_chborn_lbl 16 `"16"', add
label define do10a_chborn_lbl 17 `"17"', add
label define do10a_chborn_lbl 18 `"18"', add
label define do10a_chborn_lbl 19 `"19"', add
label define do10a_chborn_lbl 20 `"20"', add
label define do10a_chborn_lbl 99 `"NIU (not in universe)"', add
label values do10a_chborn do10a_chborn_lbl

label define do10a_chsurv_lbl 00 `"0"'
label define do10a_chsurv_lbl 01 `"1"', add
label define do10a_chsurv_lbl 02 `"2"', add
label define do10a_chsurv_lbl 03 `"3"', add
label define do10a_chsurv_lbl 04 `"4"', add
label define do10a_chsurv_lbl 05 `"5"', add
label define do10a_chsurv_lbl 06 `"6"', add
label define do10a_chsurv_lbl 07 `"7"', add
label define do10a_chsurv_lbl 08 `"8"', add
label define do10a_chsurv_lbl 09 `"9"', add
label define do10a_chsurv_lbl 10 `"10"', add
label define do10a_chsurv_lbl 11 `"11"', add
label define do10a_chsurv_lbl 12 `"12"', add
label define do10a_chsurv_lbl 13 `"13"', add
label define do10a_chsurv_lbl 14 `"14"', add
label define do10a_chsurv_lbl 15 `"15+"', add
label define do10a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values do10a_chsurv do10a_chsurv_lbl

label define do10a_univfld_lbl 01 `"Education"'
label define do10a_univfld_lbl 02 `"Arts and humanities"', add
label define do10a_univfld_lbl 03 `"Social sciences, business and law"', add
label define do10a_univfld_lbl 04 `"Sciences"', add
label define do10a_univfld_lbl 05 `"Engineering, industry and construction"', add
label define do10a_univfld_lbl 06 `"Agriculture"', add
label define do10a_univfld_lbl 07 `"Health and social services"', add
label define do10a_univfld_lbl 08 `"Services"', add
label define do10a_univfld_lbl 98 `"Unknown"', add
label define do10a_univfld_lbl 99 `"NIU (not in universe)"', add
label values do10a_univfld do10a_univfld_lbl


