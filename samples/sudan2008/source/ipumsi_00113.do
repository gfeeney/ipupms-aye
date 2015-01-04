* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    sd08a_dwnum     22-28    ///
  byte    sd08a_pern      29-30    ///
  byte    sd08a_fbig      31-31    ///
  byte    sd08a_region    32-32    ///
  byte    sd08a_state     33-34    ///
  int     sd08a_county    35-38    ///
  byte    sd08a_urban     39-39    ///
  byte    sd08a_hhtype    40-40    ///
  byte    sd08a_dwtype    41-42    ///
  byte    sd08a_bedrms    43-44    ///
  byte    sd08a_ownrshp   45-45    ///
  byte    sd08a_watsrc    46-47    ///
  byte    sd08a_lighting  48-49    ///
  byte    sd08a_fuelcook  50-50    ///
  byte    sd08a_toilet    51-51    ///
  byte    sd08a_vehicle   52-52    ///
  byte    sd08a_motocyc   53-53    ///
  byte    sd08a_bicycle   54-54    ///
  byte    sd08a_boat      55-55    ///
  byte    sd08a_animtran  56-56    ///
  byte    sd08a_tractor   57-57    ///
  byte    sd08a_notrans   58-58    ///
  byte    sd08a_tv        59-59    ///
  byte    sd08a_radio     60-60    ///
  byte    sd08a_mobile    61-61    ///
  byte    sd08a_phone     62-62    ///
  byte    sd08a_computer  63-63    ///
  byte    sd08a_refridge  64-64    ///
  byte    sd08a_satell    65-65    ///
  byte    sd08a_fan       66-66    ///
  byte    sd08a_aircon    67-67    ///
  byte    sd08a_noamen    68-68    ///
  byte    sd08a_livehood  69-69    ///
  byte    sd08a_cultiv    70-70    ///
  int     sd08a_areacult  71-73    ///
  byte    sd08a_cereal    74-74    ///
  byte    sd08a_veg       75-75    ///
  byte    sd08a_fruit     76-76    ///
  byte    sd08a_oilseed   77-77    ///
  byte    sd08a_root      78-78    ///
  byte    sd08a_spice     79-79    ///
  byte    sd08a_legum     80-80    ///
  byte    sd08a_sugar     81-81    ///
  byte    sd08a_cotton    82-82    ///
  byte    sd08a_coffee    83-83    ///
  byte    sd08a_tea       84-84    ///
  byte    sd08a_othcrop   85-85    ///
  byte    sd08a_landown   86-86    ///
  byte    sd08a_fishery   87-87    ///
  int     sd08a_cattle    88-90    ///
  int     sd08a_camels    91-93    ///
  int     sd08a_sheep     94-96    ///
  int     sd08a_goats     97-99    ///
  int     sd08a_horses    100-102  ///
  int     sd08a_donkeys   103-105  ///
  int     sd08a_pigs      106-108  ///
  int     sd08a_poultry   109-111  ///
  byte    sd08a_deaths    112-112  ///
  byte    sd08a_qhhtype   113-113  ///
  byte    sd08a_qdwtype   114-114  ///
  byte    sd08a_qrooms    115-115  ///
  byte    sd08a_qownrshp  116-116  ///
  byte    sd08a_qwatsrc   117-117  ///
  byte    sd08a_qlightng  118-118  ///
  byte    sd08a_qfuelck   119-119  ///
  byte    sd08a_qtoilet   120-120  ///
  byte    sd08a_qvehicle  121-121  ///
  byte    sd08a_qmotocyc  122-122  ///
  byte    sd08a_qbicycle  123-123  ///
  byte    sd08a_qboat     124-124  ///
  byte    sd08a_qanitran  125-125  ///
  byte    sd08a_qtractor  126-126  ///
  byte    sd08a_qnotrans  127-127  ///
  byte    sd08a_qtv       128-128  ///
  byte    sd08a_qradio    129-129  ///
  byte    sd08a_qmobile   130-130  ///
  byte    sd08a_qphone    131-131  ///
  byte    sd08a_qcomputr  132-132  ///
  byte    sd08a_qrefridg  133-133  ///
  byte    sd08a_qsatell   134-134  ///
  byte    sd08a_qfan      135-135  ///
  byte    sd08a_qaircon   136-136  ///
  byte    sd08a_qnoamen   137-137  ///
  byte    sd08a_qlivehod  138-138  ///
  byte    sd08a_qcultiv   139-139  ///
  byte    sd08a_qareacul  140-140  ///
  byte    sd08a_qcereal   141-141  ///
  byte    sd08a_qveg      142-142  ///
  byte    sd08a_qfruit    143-143  ///
  byte    sd08a_qoilseed  144-144  ///
  byte    sd08a_qroot     145-145  ///
  byte    sd08a_qspice    146-146  ///
  byte    sd08a_qlegum    147-147  ///
  byte    sd08a_qsugar    148-148  ///
  byte    sd08a_qcotton   149-149  ///
  byte    sd08a_qcoffee   150-150  ///
  byte    sd08a_qtea      151-151  ///
  byte    sd08a_qothcrop  152-152  ///
  byte    sd08a_qlandown  153-153  ///
  byte    sd08a_qfishery  154-154  ///
  byte    sd08a_qcattle   155-155  ///
  byte    sd08a_qcamels   156-156  ///
  byte    sd08a_qsheep    157-157  ///
  byte    sd08a_qgoats    158-158  ///
  byte    sd08a_qhorses   159-159  ///
  byte    sd08a_qpigs     160-160  ///
  byte    sd08a_qpoultry  161-161  ///
  byte    sd08a_qdeaths   162-162  ///
  float   sd08a_hhwt      163-168  ///
  byte    sd08a_ndeaths   169-169  ///
  int     pernum          170-172  ///
  float   wtper           173-180  ///
  byte    sd08a_pernum    181-182  ///
  byte    sd08a_relate    183-184  ///
  byte    sd08a_sex       185-185  ///
  byte    sd08a_age       186-187  ///
  byte    sd08a_nation    188-189  ///
  byte    sd08a_reggroup  190-190  ///
  byte    sd08a_orregion  191-192  ///
  byte    sd08a_bplstate  193-194  ///
  byte    sd08a_ustate    195-196  ///
  byte    sd08a_durres    197-198  ///
  byte    sd08a_migstate  199-200  ///
  byte    sd08a_fathlive  201-201  ///
  byte    sd08a_limleg    202-202  ///
  byte    sd08a_limarm    203-203  ///
  byte    sd08a_lossarm   204-204  ///
  byte    sd08a_diffhear  205-205  ///
  byte    sd08a_deaf      206-206  ///
  byte    sd08a_diffsee   207-207  ///
  byte    sd08a_blind     208-208  ///
  byte    sd08a_diffspk   209-209  ///
  byte    sd08a_mute      210-210  ///
  byte    sd08a_diffment  211-211  ///
  byte    sd08a_disab     212-212  ///
  byte    sd08a_school    213-213  ///
  byte    sd08a_attend    214-215  ///
  byte    sd08a_edattain  216-217  ///
  byte    sd08a_empstat   218-218  ///
  byte    sd08a_reason    219-219  ///
  byte    sd08a_occ       220-221  ///
  byte    sd08a_marst     222-222  ///
  byte    sd08a_chbornf   223-224  ///
  byte    sd08a_homemal   225-226  ///
  byte    sd08a_homefem   227-228  ///
  byte    sd08a_awaymal   229-230  ///
  byte    sd08a_awayfem   231-232  ///
  byte    sd08a_deadmal   233-234  ///
  byte    sd08a_deadfem   235-236  ///
  byte    sd08a_births    237-237  ///
  byte    sd08a_birthsm   238-238  ///
  byte    sd08a_birthsf   239-239  ///
  byte    sd08a_livbthm   240-240  ///
  byte    sd08a_livbthf   241-241  ///
  byte    sd08a_qage      242-242  ///
  byte    sd08a_qreggrp   243-243  ///
  byte    sd08a_qorreg    244-244  ///
  byte    sd08a_qbplstat  245-245  ///
  byte    sd08a_qustate   246-246  ///
  byte    sd08a_qdurres   247-247  ///
  byte    sd08a_qmigstat  248-248  ///
  byte    sd08a_qmothliv  249-249  ///
  byte    sd08a_qfathliv  250-250  ///
  byte    sd08a_qlossleg  251-251  ///
  byte    sd08a_qlossarm  252-252  ///
  byte    sd08a_qdeaf     253-253  ///
  byte    sd08a_qblind    254-254  ///
  byte    sd08a_qmute     255-255  ///
  byte    sd08a_qlit      256-256  ///
  byte    sd08a_qattend   257-257  ///
  byte    sd08a_qedattan  258-258  ///
  byte    sd08a_qempstat  259-259  ///
  byte    sd08a_qreason   260-260  ///
  byte    sd08a_qocc      261-261  ///
  byte    sd08a_qind      262-262  ///
  byte    sd08a_qclasswk  263-263  ///
  byte    sd08a_qmarst    264-264  ///
  byte    sd08a_qagemarr  265-265  ///
  byte    sd08a_qchbornm  266-266  ///
  byte    sd08a_qchbornf  267-267  ///
  byte    sd08a_qhomemal  268-268  ///
  byte    sd08a_qawaymal  269-269  ///
  byte    sd08a_qawayfem  270-270  ///
  byte    sd08a_qdeadmal  271-271  ///
  byte    sd08a_qdeadfem  272-272  ///
  byte    sd08a_qbirths   273-273  ///
  byte    sd08a_qbirthsm  274-274  ///
  byte    sd08a_qbirthsf  275-275  ///
  byte    sd08a_qlivbthm  276-276  ///
  byte    sd08a_qlivbthf  277-277  ///
  float   sd08a_perwt     278-283  ///
  byte    sd08a_chhome    284-285  ///
  byte    sd08a_chaway    286-287  ///
  byte    sd08a_chdead    288-289  ///
  byte    sd08a_chborn    290-291  ///
  byte    sd08a_chsurv    292-293  ///
  byte    sd08a_chsurvm   294-295  ///
  byte    sd08a_chsurvf   296-297  ///
  byte    sd08a_bthlstyr  298-298  ///
  byte    sd08a_srvlstyr  299-299  ///
  byte    sd08a_parlive   300-300  ///
  using `"ipumsi_00113.dat"'

replace sd08a_hhwt     = sd08a_hhwt     / 10000
replace wtper          = wtper          / 100
replace sd08a_perwt    = sd08a_perwt    / 10000

format serial         %10.0f
format sd08a_hhwt     %6.4f
format wtper          %8.2f
format sd08a_perwt    %6.4f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var sd08a_dwnum    `"Dwelling number"'
label var sd08a_pern     `"Number of persons in household"'
label var sd08a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var sd08a_region   `"Region"'
label var sd08a_state    `"State"'
label var sd08a_county   `"County"'
label var sd08a_urban    `"Urban/rural/nomad"'
label var sd08a_hhtype   `"Type of household"'
label var sd08a_dwtype   `"Type of dwelling"'
label var sd08a_bedrms   `"Number of sleeping rooms"'
label var sd08a_ownrshp  `"Tenure status"'
label var sd08a_watsrc   `"Source of drinking water"'
label var sd08a_lighting `"Source of lighting"'
label var sd08a_fuelcook `"Cooking fuel"'
label var sd08a_toilet   `"Toilet facilities"'
label var sd08a_vehicle  `"Motor vehicle"'
label var sd08a_motocyc  `"Motorcycle"'
label var sd08a_bicycle  `"Bicycle"'
label var sd08a_boat     `"Canoe/boat"'
label var sd08a_animtran `"Animal transport"'
label var sd08a_tractor  `"Tractor"'
label var sd08a_notrans  `"No transport"'
label var sd08a_tv       `"Television"'
label var sd08a_radio    `"Radio"'
label var sd08a_mobile   `"Mobile phone"'
label var sd08a_phone    `"Fixed phone"'
label var sd08a_computer `"Computer"'
label var sd08a_refridge `"Refrigerator"'
label var sd08a_satell   `"Satellite dish"'
label var sd08a_fan      `"Fan"'
label var sd08a_aircon   `"Air cooler/AC"'
label var sd08a_noamen   `"No household amenities"'
label var sd08a_livehood `"Source of livelihood"'
label var sd08a_cultiv   `"Any cultivation/plantation"'
label var sd08a_areacult `"Area of cultivation/plantation"'
label var sd08a_cereal   `"Cereals"'
label var sd08a_veg      `"Vegetables and melons"'
label var sd08a_fruit    `"Fruits and nuts"'
label var sd08a_oilseed  `"Oilseed crops"'
label var sd08a_root     `"Root and tuber crops"'
label var sd08a_spice    `"Beverage and spice crops"'
label var sd08a_legum    `"Leguminous crops"'
label var sd08a_sugar    `"Sugar crops"'
label var sd08a_cotton   `"Cotton"'
label var sd08a_coffee   `"Coffee"'
label var sd08a_tea      `"Tea"'
label var sd08a_othcrop  `"Other crop"'
label var sd08a_landown  `"Tenure status of land"'
label var sd08a_fishery  `"Fishery"'
label var sd08a_cattle   `"Cattle"'
label var sd08a_camels   `"Camels"'
label var sd08a_sheep    `"Sheep"'
label var sd08a_goats    `"Goats"'
label var sd08a_horses   `"Horses"'
label var sd08a_donkeys  `"Donkeys"'
label var sd08a_pigs     `"Pigs"'
label var sd08a_poultry  `"Poultry"'
label var sd08a_deaths   `"Deaths in last 12 months"'
label var sd08a_qhhtype  `"Flag: type of household"'
label var sd08a_qdwtype  `"Flag: type of dwelling"'
label var sd08a_qrooms   `"Flag: number of rooms"'
label var sd08a_qownrshp `"Flag: tenure"'
label var sd08a_qwatsrc  `"Flag: source of drinking water"'
label var sd08a_qlightng `"Flag: source of lighting"'
label var sd08a_qfuelck  `"Flag: cooking fuel"'
label var sd08a_qtoilet  `"Flag: toilet facilities"'
label var sd08a_qvehicle `"Flag: motor vehicle"'
label var sd08a_qmotocyc `"Flag: motorcycle"'
label var sd08a_qbicycle `"Flag: bicycle"'
label var sd08a_qboat    `"Flag: canoe/boat"'
label var sd08a_qanitran `"Flag: animal transport"'
label var sd08a_qtractor `"Flag: tractor"'
label var sd08a_qnotrans `"Flag: no transport"'
label var sd08a_qtv      `"Flag: television"'
label var sd08a_qradio   `"Flag: radio"'
label var sd08a_qmobile  `"Flag: mobile phone"'
label var sd08a_qphone   `"Flag: fixed phone"'
label var sd08a_qcomputr `"Flag: computer"'
label var sd08a_qrefridg `"Flag: refrigerator"'
label var sd08a_qsatell  `"Flag: satellite dish"'
label var sd08a_qfan     `"Flag: fan"'
label var sd08a_qaircon  `"Flag: air cooler/ac"'
label var sd08a_qnoamen  `"Flag: no household amenities"'
label var sd08a_qlivehod `"Flag: source of livelihood"'
label var sd08a_qcultiv  `"Flag: any cultivation/plantation"'
label var sd08a_qareacul `"Flag: area of cultivation/plantation"'
label var sd08a_qcereal  `"Flag: cereals"'
label var sd08a_qveg     `"Flag: vegetables"'
label var sd08a_qfruit   `"Flag: fruits and nuts"'
label var sd08a_qoilseed `"Flag: oil seed"'
label var sd08a_qroot    `"Flag: root and tuber crops"'
label var sd08a_qspice   `"Flag: beverage/spice"'
label var sd08a_qlegum   `"Flag: leguminous crops"'
label var sd08a_qsugar   `"Flag: sugar"'
label var sd08a_qcotton  `"Flag: cotton"'
label var sd08a_qcoffee  `"Flag: coffee"'
label var sd08a_qtea     `"Flag: tea"'
label var sd08a_qothcrop `"Flag: other crop"'
label var sd08a_qlandown `"Flag: tenure status of land"'
label var sd08a_qfishery `"Flag: fishery"'
label var sd08a_qcattle  `"Flag: cattle"'
label var sd08a_qcamels  `"Flag: camels"'
label var sd08a_qsheep   `"Flag: sheep"'
label var sd08a_qgoats   `"Flag: goats"'
label var sd08a_qhorses  `"Flag: horses"'
label var sd08a_qpigs    `"Flag: pigs"'
label var sd08a_qpoultry `"Flag: poultry"'
label var sd08a_qdeaths  `"Flag: deaths in last 12 months"'
label var sd08a_hhwt     `"Housing weight"'
label var sd08a_ndeaths  `"Number of death records"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var sd08a_pernum   `"Person number (within household)"'
label var sd08a_relate   `"Relationship"'
label var sd08a_sex      `"Sex"'
label var sd08a_age      `"Age"'
label var sd08a_nation   `"Nationality"'
label var sd08a_reggroup `"Regional group"'
label var sd08a_orregion `"Region of origin"'
label var sd08a_bplstate `"State of birth"'
label var sd08a_ustate   `"State of usual residence"'
label var sd08a_durres   `"Duration of residence"'
label var sd08a_migstate `"Previous residence 1 year ago"'
label var sd08a_fathlive `"Father's survival"'
label var sd08a_limleg   `"Limited use of leg(s)"'
label var sd08a_limarm   `"Limited use of arm(s)"'
label var sd08a_lossarm  `"Loss of arm(s)"'
label var sd08a_diffhear `"Difficulty in hearing"'
label var sd08a_deaf     `"Deaf"'
label var sd08a_diffsee  `"Difficulty seeing"'
label var sd08a_blind    `"Blind"'
label var sd08a_diffspk  `"Difficulty in speaking"'
label var sd08a_mute     `"Mute"'
label var sd08a_diffment `"Mental difficulty"'
label var sd08a_disab    `"Have disability"'
label var sd08a_school   `"School attendence"'
label var sd08a_attend   `"School level attending"'
label var sd08a_edattain `"Education attainment"'
label var sd08a_empstat  `"Activity status"'
label var sd08a_reason   `"Reason for economic inactivity"'
label var sd08a_occ      `"Occupation"'
label var sd08a_marst    `"Marital status"'
label var sd08a_chbornf  `"Females ever born"'
label var sd08a_homemal  `"Male children at home"'
label var sd08a_homefem  `"Female children at home"'
label var sd08a_awaymal  `"Male children living elsewhere"'
label var sd08a_awayfem  `"Female children living elsewhere"'
label var sd08a_deadmal  `"Male children deceased"'
label var sd08a_deadfem  `"Female children deceased"'
label var sd08a_births   `"Any births last 12 months"'
label var sd08a_birthsm  `"Males born last 12 months"'
label var sd08a_birthsf  `"Females born last 12 months"'
label var sd08a_livbthm  `"Males born last 12 months surviving"'
label var sd08a_livbthf  `"Females born last 12 months surviving"'
label var sd08a_qage     `"Flag: Age"'
label var sd08a_qreggrp  `"Flag: Regional group"'
label var sd08a_qorreg   `"Flag: Region of origin"'
label var sd08a_qbplstat `"Flag: State of birth"'
label var sd08a_qustate  `"Flag: State of usual residence"'
label var sd08a_qdurres  `"Flag: Duration of residence"'
label var sd08a_qmigstat `"Flag: State of previous residence"'
label var sd08a_qmothliv `"Flag: Mother's survival"'
label var sd08a_qfathliv `"Flag: Father's survival"'
label var sd08a_qlossleg `"Flag: Loss of leg(s)"'
label var sd08a_qlossarm `"Flag: Loss of arm(s)"'
label var sd08a_qdeaf    `"Flag: Deaf"'
label var sd08a_qblind   `"Flag: Blind"'
label var sd08a_qmute    `"Flag: Mute"'
label var sd08a_qlit     `"Flag: Literacy"'
label var sd08a_qattend  `"Flag: School level currently attending"'
label var sd08a_qedattan `"Flag: Education attainment"'
label var sd08a_qempstat `"Flag: Activity status"'
label var sd08a_qreason  `"Flag: Reason for economic inactivity"'
label var sd08a_qocc     `"Flag: Occupation"'
label var sd08a_qind     `"Flag: Economic sector"'
label var sd08a_qclasswk `"Flag: Employment status"'
label var sd08a_qmarst   `"Flag: Marital status"'
label var sd08a_qagemarr `"Flag: Age at first marriage"'
label var sd08a_qchbornm `"Flag: Males ever born"'
label var sd08a_qchbornf `"Flag: Females ever born"'
label var sd08a_qhomemal `"Flag: Male children at home"'
label var sd08a_qawaymal `"Flag: Male children living elsewhere"'
label var sd08a_qawayfem `"Flag: Female children living elsewhere"'
label var sd08a_qdeadmal `"Flag: Male children deceased"'
label var sd08a_qdeadfem `"Flag: Female children deceased"'
label var sd08a_qbirths  `"Flag: Any births last 12 months"'
label var sd08a_qbirthsm `"Flag: Males born last 12 months"'
label var sd08a_qbirthsf `"Flag: Females born last 12 months"'
label var sd08a_qlivbthm `"Flag: Males born last 12 months (alive)"'
label var sd08a_qlivbthf `"Flag: Females born last 12 months (alive)"'
label var sd08a_perwt    `"Person weight"'
label var sd08a_chhome   `"Children living in household"'
label var sd08a_chaway   `"Children living elsewhere"'
label var sd08a_chdead   `"Children who have died"'
label var sd08a_chborn   `"Children ever born"'
label var sd08a_chsurv   `"Children surviving"'
label var sd08a_chsurvm  `"Male children surviving"'
label var sd08a_chsurvf  `"Female children surviving"'
label var sd08a_bthlstyr `"Children born last year"'
label var sd08a_srvlstyr `"Children born last year surviving"'
label var sd08a_parlive  `"Parents mortality status"'

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

label define sd08a_pern_lbl 01 `"1"'
label define sd08a_pern_lbl 02 `"2"', add
label define sd08a_pern_lbl 03 `"3"', add
label define sd08a_pern_lbl 04 `"4"', add
label define sd08a_pern_lbl 05 `"5"', add
label define sd08a_pern_lbl 06 `"6"', add
label define sd08a_pern_lbl 07 `"7"', add
label define sd08a_pern_lbl 08 `"8"', add
label define sd08a_pern_lbl 09 `"9"', add
label define sd08a_pern_lbl 10 `"10"', add
label define sd08a_pern_lbl 11 `"11"', add
label define sd08a_pern_lbl 12 `"12"', add
label define sd08a_pern_lbl 13 `"13"', add
label define sd08a_pern_lbl 14 `"14"', add
label define sd08a_pern_lbl 15 `"15"', add
label define sd08a_pern_lbl 16 `"16"', add
label define sd08a_pern_lbl 17 `"17"', add
label define sd08a_pern_lbl 18 `"18"', add
label define sd08a_pern_lbl 19 `"19"', add
label define sd08a_pern_lbl 20 `"20"', add
label define sd08a_pern_lbl 21 `"21"', add
label define sd08a_pern_lbl 22 `"22"', add
label define sd08a_pern_lbl 23 `"23"', add
label define sd08a_pern_lbl 24 `"24"', add
label define sd08a_pern_lbl 25 `"25"', add
label define sd08a_pern_lbl 26 `"26"', add
label define sd08a_pern_lbl 27 `"27"', add
label define sd08a_pern_lbl 28 `"28"', add
label define sd08a_pern_lbl 29 `"29"', add
label define sd08a_pern_lbl 30 `"30"', add
label define sd08a_pern_lbl 31 `"31"', add
label define sd08a_pern_lbl 32 `"32"', add
label define sd08a_pern_lbl 33 `"33"', add
label define sd08a_pern_lbl 34 `"34"', add
label define sd08a_pern_lbl 35 `"35"', add
label define sd08a_pern_lbl 36 `"36"', add
label define sd08a_pern_lbl 37 `"37"', add
label define sd08a_pern_lbl 38 `"38"', add
label define sd08a_pern_lbl 39 `"39"', add
label define sd08a_pern_lbl 40 `"40"', add
label define sd08a_pern_lbl 41 `"41"', add
label define sd08a_pern_lbl 42 `"42"', add
label define sd08a_pern_lbl 43 `"43"', add
label define sd08a_pern_lbl 44 `"44"', add
label define sd08a_pern_lbl 45 `"45"', add
label define sd08a_pern_lbl 46 `"46"', add
label define sd08a_pern_lbl 47 `"47"', add
label define sd08a_pern_lbl 48 `"48"', add
label define sd08a_pern_lbl 49 `"49"', add
label define sd08a_pern_lbl 50 `"50"', add
label values sd08a_pern sd08a_pern_lbl

label define sd08a_fbig_lbl 0 `"No problem"'
label define sd08a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define sd08a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values sd08a_fbig sd08a_fbig_lbl

label define sd08a_region_lbl 1 `"Northern"'
label define sd08a_region_lbl 2 `"Eastern"', add
label define sd08a_region_lbl 3 `"Khartoum"', add
label define sd08a_region_lbl 4 `"Central"', add
label define sd08a_region_lbl 5 `"Kordofan"', add
label define sd08a_region_lbl 6 `"Darfur"', add
label values sd08a_region sd08a_region_lbl

label define sd08a_state_lbl 11 `"Northern"'
label define sd08a_state_lbl 12 `"Nahr El Nil"', add
label define sd08a_state_lbl 21 `"Red Sea"', add
label define sd08a_state_lbl 22 `"Kassala"', add
label define sd08a_state_lbl 23 `"Al Gedarif"', add
label define sd08a_state_lbl 31 `"Khartoum"', add
label define sd08a_state_lbl 41 `"Al Gezira"', add
label define sd08a_state_lbl 42 `"White Nile"', add
label define sd08a_state_lbl 43 `"Sinnar"', add
label define sd08a_state_lbl 44 `"Blue Nile"', add
label define sd08a_state_lbl 51 `"North Kordofan"', add
label define sd08a_state_lbl 52 `"South Kordofan"', add
label define sd08a_state_lbl 61 `"North Darfur"', add
label define sd08a_state_lbl 62 `"West Darfur"', add
label define sd08a_state_lbl 63 `"South Darfur"', add
label values sd08a_state sd08a_state_lbl

label define sd08a_county_lbl 1101 `"Halfa"'
label define sd08a_county_lbl 1102 `"Dalgo"', add
label define sd08a_county_lbl 1103 `"Alborgaig"', add
label define sd08a_county_lbl 1104 `"Dongola"', add
label define sd08a_county_lbl 1105 `"Algolid"', add
label define sd08a_county_lbl 1106 `"Aldaba"', add
label define sd08a_county_lbl 1107 `"Marwai"', add
label define sd08a_county_lbl 1201 `"Abu Hamed"', add
label define sd08a_county_lbl 1202 `"Berber"', add
label define sd08a_county_lbl 1203 `"Atbara"', add
label define sd08a_county_lbl 1204 `"El Damar"', add
label define sd08a_county_lbl 1205 `"Shendi"', add
label define sd08a_county_lbl 1206 `"El Matama"', add
label define sd08a_county_lbl 2101 `"Halayib"', add
label define sd08a_county_lbl 2102 `"Elgunab"', add
label define sd08a_county_lbl 2103 `"Port Sudan"', add
label define sd08a_county_lbl 2104 `"Sawakin"', add
label define sd08a_county_lbl 2105 `"Senkat"', add
label define sd08a_county_lbl 2106 `"Haya"', add
label define sd08a_county_lbl 2107 `"Toker"', add
label define sd08a_county_lbl 2108 `"Agieg"', add
label define sd08a_county_lbl 2201 `"North Aldalta"', add
label define sd08a_county_lbl 2202 `"Hamashkoreeb"', add
label define sd08a_county_lbl 2203 `"Talkook"', add
label define sd08a_county_lbl 2204 `"Aroma rural"', add
label define sd08a_county_lbl 2205 `"West Kassala"', add
label define sd08a_county_lbl 2206 `"Kassala city"', add
label define sd08a_county_lbl 2207 `"Kassala rural"', add
label define sd08a_county_lbl 2208 `"Halfa Al Gedida"', add
label define sd08a_county_lbl 2209 `"Nahr Atbara"', add
label define sd08a_county_lbl 2210 `"Setit"', add
label define sd08a_county_lbl 2211 `"Wad El Hilaiw"', add
label define sd08a_county_lbl 2301 `"El Botana"', add
label define sd08a_county_lbl 2302 `"El Fashaga"', add
label define sd08a_county_lbl 2303 `"Central Al Gedarif"', add
label define sd08a_county_lbl 2304 `"Al Gedarif city"', add
label define sd08a_county_lbl 2305 `"Al Fau"', add
label define sd08a_county_lbl 2306 `"El Rahad"', add
label define sd08a_county_lbl 2307 `"Qala'a El Nahal"', add
label define sd08a_county_lbl 2308 `"Al Galabat Al Garbia"', add
label define sd08a_county_lbl 2309 `"El Ghoreisha"', add
label define sd08a_county_lbl 2310 `"El Galabat Sharquia"', add
label define sd08a_county_lbl 3101 `"Karrari"', add
label define sd08a_county_lbl 3102 `"Om Bada"', add
label define sd08a_county_lbl 3103 `"Om Durman"', add
label define sd08a_county_lbl 3104 `"Bahri"', add
label define sd08a_county_lbl 3105 `"Sharg Alneel"', add
label define sd08a_county_lbl 3106 `"Khartoum"', add
label define sd08a_county_lbl 3107 `"Jabel Awliya"', add
label define sd08a_county_lbl 4101 `"El Gezira East"', add
label define sd08a_county_lbl 4102 `"El Kamlin"', add
label define sd08a_county_lbl 4103 `"El Hasaheisa"', add
label define sd08a_county_lbl 4104 `"Um Algora"', add
label define sd08a_county_lbl 4105 `"Wad Madni Alkobra"', add
label define sd08a_county_lbl 4106 `"South Aljazeera"', add
label define sd08a_county_lbl 4107 `"El Managil"', add
label define sd08a_county_lbl 4201 `"El Geteina"', add
label define sd08a_county_lbl 4202 `"Um Rimta"', add
label define sd08a_county_lbl 4203 `"Eldiwiem"', add
label define sd08a_county_lbl 4204 `"Rabak"', add
label define sd08a_county_lbl 4205 `"El Jebelein"', add
label define sd08a_county_lbl 4206 `"Kosti"', add
label define sd08a_county_lbl 4207 `"Al Salam"', add
label define sd08a_county_lbl 4208 `"Tandalti"', add
label define sd08a_county_lbl 4301 `"East Sinnar"', add
label define sd08a_county_lbl 4302 `"Sinnar"', add
label define sd08a_county_lbl 4303 `"Eldindir"', add
label define sd08a_county_lbl 4304 `"Alsoki"', add
label define sd08a_county_lbl 4305 `"Sinja"', add
label define sd08a_county_lbl 4306 `"Abu Hugar"', add
label define sd08a_county_lbl 4307 `"Eldali"', add
label define sd08a_county_lbl 4401 `"Elrosieris"', add
label define sd08a_county_lbl 4402 `"Eldamazin"', add
label define sd08a_county_lbl 4403 `"Al Tdamon"', add
label define sd08a_county_lbl 4404 `"Bau"', add
label define sd08a_county_lbl 4405 `"Giesan"', add
label define sd08a_county_lbl 4406 `"Elkurmuk"', add
label define sd08a_county_lbl 5101 `"Gabrat Elshiekh"', add
label define sd08a_county_lbl 5102 `"Sodari"', add
label define sd08a_county_lbl 5103 `"Bara"', add
label define sd08a_county_lbl 5104 `"Um Rwaba"', add
label define sd08a_county_lbl 5105 `"El Nohook"', add
label define sd08a_county_lbl 5106 `"Shekan"', add
label define sd08a_county_lbl 5107 `"Abu Zabad"', add
label define sd08a_county_lbl 5108 `"Wad Banda"', add
label define sd08a_county_lbl 5109 `"Gebieash"', add
label define sd08a_county_lbl 5201 `"Alrashad"', add
label define sd08a_county_lbl 5202 `"Abu Jibieha"', add
label define sd08a_county_lbl 5203 `"El Dalanj"', add
label define sd08a_county_lbl 5204 `"Kadogli"', add
label define sd08a_county_lbl 5205 `"El Salam"', add
label define sd08a_county_lbl 5206 `"Talody"', add
label define sd08a_county_lbl 5207 `"Lagawa"', add
label define sd08a_county_lbl 5208 `"Kielak"', add
label define sd08a_county_lbl 5209 `"Ab Yei"', add
label define sd08a_county_lbl 6101 `"El Malha"', add
label define sd08a_county_lbl 6102 `"Mellit"', add
label define sd08a_county_lbl 6104 `"Sarf Omra"', add
label define sd08a_county_lbl 6105 `"Alseraf"', add
label define sd08a_county_lbl 6106 `"Kebkabiya"', add
label define sd08a_county_lbl 6107 `"Kutum"', add
label define sd08a_county_lbl 6108 `"Alkoma"', add
label define sd08a_county_lbl 6109 `"El Fasher"', add
label define sd08a_county_lbl 6110 `"Um Kedada"', add
label define sd08a_county_lbl 6111 `"Kalmando"', add
label define sd08a_county_lbl 6112 `"Altewash/Alleet"', add
label define sd08a_county_lbl 6114 `"Alwaha"', add
label define sd08a_county_lbl 6201 `"Kulbus"', add
label define sd08a_county_lbl 6202 `"Sirba"', add
label define sd08a_county_lbl 6203 `"Kirienik"', add
label define sd08a_county_lbl 6204 `"El Geneina"', add
label define sd08a_county_lbl 6205 `"Bayda"', add
label define sd08a_county_lbl 6206 `"Habiela"', add
label define sd08a_county_lbl 6207 `"Azoom"', add
label define sd08a_county_lbl 6208 `"Zalingei"', add
label define sd08a_county_lbl 6209 `"Nertiti"', add
label define sd08a_county_lbl 6211 `"Wadi Salih"', add
label define sd08a_county_lbl 6212 `"Mukjar"', add
label define sd08a_county_lbl 6213 `"Um Dukhun"', add
label define sd08a_county_lbl 6301 `"Sheiria"', add
label define sd08a_county_lbl 6302 `"Nyala"', add
label define sd08a_county_lbl 6303 `"East Jabal Mara"', add
label define sd08a_county_lbl 6304 `"Kass"', add
label define sd08a_county_lbl 6305 `"Ed Al Fursan"', add
label define sd08a_county_lbl 6306 `"Alsalam"', add
label define sd08a_county_lbl 6307 `"Ed Da'ein"', add
label define sd08a_county_lbl 6308 `"Adiela"', add
label define sd08a_county_lbl 6309 `"Tullus"', add
label define sd08a_county_lbl 6310 `"Rihied El Birdi"', add
label define sd08a_county_lbl 6311 `"Buram"', add
label define sd08a_county_lbl 6312 `"Bahr Alarab"', add
label values sd08a_county sd08a_county_lbl

label define sd08a_urban_lbl 1 `"Urban"'
label define sd08a_urban_lbl 2 `"Rural"', add
label define sd08a_urban_lbl 3 `"Nomad"', add
label values sd08a_urban sd08a_urban_lbl

label define sd08a_hhtype_lbl 1 `"Private household"'
label define sd08a_hhtype_lbl 2 `"Nomads"', add
label define sd08a_hhtype_lbl 3 `"Internally displaced"', add
label define sd08a_hhtype_lbl 6 `"Refugees"', add
label values sd08a_hhtype sd08a_hhtype_lbl

label define sd08a_dwtype_lbl 01 `"Tent"'
label define sd08a_dwtype_lbl 02 `"Dwelling of straw mats"', add
label define sd08a_dwtype_lbl 03 `"Tukul /gottiya of mud"', add
label define sd08a_dwtype_lbl 04 `"Tukul /gottiya of sticks"', add
label define sd08a_dwtype_lbl 05 `"Flat or apartment"', add
label define sd08a_dwtype_lbl 06 `"Villa"', add
label define sd08a_dwtype_lbl 07 `"House of one floor, mud"', add
label define sd08a_dwtype_lbl 08 `"House of one floor, brick/concrete"', add
label define sd08a_dwtype_lbl 09 `"House constructed of wood"', add
label define sd08a_dwtype_lbl 10 `"Multi-story house"', add
label define sd08a_dwtype_lbl 11 `"Incomplete"', add
label values sd08a_dwtype sd08a_dwtype_lbl

label define sd08a_bedrms_lbl 01 `"1"'
label define sd08a_bedrms_lbl 02 `"2"', add
label define sd08a_bedrms_lbl 03 `"3"', add
label define sd08a_bedrms_lbl 04 `"4"', add
label define sd08a_bedrms_lbl 05 `"5"', add
label define sd08a_bedrms_lbl 06 `"6"', add
label define sd08a_bedrms_lbl 07 `"7"', add
label define sd08a_bedrms_lbl 08 `"8"', add
label define sd08a_bedrms_lbl 09 `"9"', add
label define sd08a_bedrms_lbl 10 `"10+"', add
label values sd08a_bedrms sd08a_bedrms_lbl

label define sd08a_ownrshp_lbl 1 `"Owned"'
label define sd08a_ownrshp_lbl 2 `"Rented"', add
label define sd08a_ownrshp_lbl 3 `"Housing provided by job"', add
label define sd08a_ownrshp_lbl 4 `"Free"', add
label values sd08a_ownrshp sd08a_ownrshp_lbl

label define sd08a_watsrc_lbl 01 `"Water filtering station with common network"'
label define sd08a_watsrc_lbl 02 `"Mechanical boreholes with common network"', add
label define sd08a_watsrc_lbl 03 `"Deep borehole (donkey) with network"', add
label define sd08a_watsrc_lbl 04 `"Deep borehole (donkey) without network"', add
label define sd08a_watsrc_lbl 05 `"Hand pump"', add
label define sd08a_watsrc_lbl 06 `"Sand filter with common network"', add
label define sd08a_watsrc_lbl 07 `"Shallow well (dug well)"', add
label define sd08a_watsrc_lbl 08 `"Hafeer/Dam without filter (still open water)"', add
label define sd08a_watsrc_lbl 09 `"Hafeer/Dam with filter (still open water)"', add
label define sd08a_watsrc_lbl 10 `"Seasonal river (fula)"', add
label define sd08a_watsrc_lbl 11 `"River, stream (turaa)"', add
label define sd08a_watsrc_lbl 12 `"Water vendor (from deep borehole)"', add
label define sd08a_watsrc_lbl 13 `"Water vendor (from shallow well, pond, river, spring)"', add
label values sd08a_watsrc sd08a_watsrc_lbl

label define sd08a_lighting_lbl 01 `"No lighting"'
label define sd08a_lighting_lbl 02 `"Public electricity"', add
label define sd08a_lighting_lbl 03 `"Private electricity (generator)"', add
label define sd08a_lighting_lbl 04 `"Gas"', add
label define sd08a_lighting_lbl 05 `"Paraffin lantern"', add
label define sd08a_lighting_lbl 06 `"Paraffin lamp"', add
label define sd08a_lighting_lbl 07 `"Firewood"', add
label define sd08a_lighting_lbl 08 `"Grass"', add
label define sd08a_lighting_lbl 09 `"Candle wax"', add
label define sd08a_lighting_lbl 10 `"Solar power"', add
label define sd08a_lighting_lbl 11 `"Biogas"', add
label values sd08a_lighting sd08a_lighting_lbl

label define sd08a_fuelcook_lbl 1 `"Firewood"'
label define sd08a_fuelcook_lbl 2 `"Charcoal"', add
label define sd08a_fuelcook_lbl 3 `"Gas"', add
label define sd08a_fuelcook_lbl 4 `"Electricity"', add
label define sd08a_fuelcook_lbl 5 `"Paraffin"', add
label define sd08a_fuelcook_lbl 6 `"Cow dung"', add
label define sd08a_fuelcook_lbl 7 `"Grass"', add
label define sd08a_fuelcook_lbl 8 `"Biogas"', add
label define sd08a_fuelcook_lbl 9 `"No cooking"', add
label values sd08a_fuelcook sd08a_fuelcook_lbl

label define sd08a_toilet_lbl 1 `"Pit latrine private"'
label define sd08a_toilet_lbl 2 `"Pit latrine shared"', add
label define sd08a_toilet_lbl 3 `"Flush toilet private"', add
label define sd08a_toilet_lbl 4 `"Flush toilet shared"', add
label define sd08a_toilet_lbl 5 `"Bucket toilet"', add
label define sd08a_toilet_lbl 6 `"No toilet facility"', add
label values sd08a_toilet sd08a_toilet_lbl

label define sd08a_vehicle_lbl 1 `"Yes"'
label define sd08a_vehicle_lbl 2 `"No"', add
label values sd08a_vehicle sd08a_vehicle_lbl

label define sd08a_motocyc_lbl 1 `"Yes"'
label define sd08a_motocyc_lbl 2 `"No"', add
label values sd08a_motocyc sd08a_motocyc_lbl

label define sd08a_bicycle_lbl 1 `"Yes"'
label define sd08a_bicycle_lbl 2 `"No"', add
label values sd08a_bicycle sd08a_bicycle_lbl

label define sd08a_boat_lbl 1 `"Yes"'
label define sd08a_boat_lbl 2 `"No"', add
label values sd08a_boat sd08a_boat_lbl

label define sd08a_animtran_lbl 1 `"Yes"'
label define sd08a_animtran_lbl 2 `"No"', add
label values sd08a_animtran sd08a_animtran_lbl

label define sd08a_tractor_lbl 1 `"Yes"'
label define sd08a_tractor_lbl 2 `"No"', add
label values sd08a_tractor sd08a_tractor_lbl

label define sd08a_notrans_lbl 1 `"Yes"'
label define sd08a_notrans_lbl 2 `"No"', add
label values sd08a_notrans sd08a_notrans_lbl

label define sd08a_tv_lbl 1 `"Yes"'
label define sd08a_tv_lbl 2 `"No"', add
label values sd08a_tv sd08a_tv_lbl

label define sd08a_radio_lbl 1 `"Yes"'
label define sd08a_radio_lbl 2 `"No"', add
label values sd08a_radio sd08a_radio_lbl

label define sd08a_mobile_lbl 1 `"Yes"'
label define sd08a_mobile_lbl 2 `"No"', add
label values sd08a_mobile sd08a_mobile_lbl

label define sd08a_phone_lbl 1 `"Yes"'
label define sd08a_phone_lbl 2 `"No"', add
label values sd08a_phone sd08a_phone_lbl

label define sd08a_computer_lbl 1 `"Yes"'
label define sd08a_computer_lbl 2 `"No"', add
label values sd08a_computer sd08a_computer_lbl

label define sd08a_refridge_lbl 1 `"Yes"'
label define sd08a_refridge_lbl 2 `"No"', add
label values sd08a_refridge sd08a_refridge_lbl

label define sd08a_satell_lbl 1 `"Yes"'
label define sd08a_satell_lbl 2 `"No"', add
label values sd08a_satell sd08a_satell_lbl

label define sd08a_fan_lbl 1 `"Yes"'
label define sd08a_fan_lbl 2 `"No"', add
label values sd08a_fan sd08a_fan_lbl

label define sd08a_aircon_lbl 1 `"Yes"'
label define sd08a_aircon_lbl 2 `"No"', add
label values sd08a_aircon sd08a_aircon_lbl

label define sd08a_noamen_lbl 1 `"Yes"'
label define sd08a_noamen_lbl 2 `"No"', add
label values sd08a_noamen sd08a_noamen_lbl

label define sd08a_livehood_lbl 1 `"Subsistence crop farming"'
label define sd08a_livehood_lbl 2 `"Subsistence animal husbandry"', add
label define sd08a_livehood_lbl 3 `"Wages and salaries"', add
label define sd08a_livehood_lbl 4 `"Owned business enterprise"', add
label define sd08a_livehood_lbl 5 `"Property income"', add
label define sd08a_livehood_lbl 6 `"Remittances"', add
label define sd08a_livehood_lbl 7 `"Pension"', add
label define sd08a_livehood_lbl 8 `"Humanitarian aid"', add
label values sd08a_livehood sd08a_livehood_lbl

label define sd08a_cultiv_lbl 1 `"Yes"'
label define sd08a_cultiv_lbl 2 `"No"', add
label values sd08a_cultiv sd08a_cultiv_lbl

label define sd08a_areacult_lbl 000 `"No cultivation/plantation"'
label define sd08a_areacult_lbl 001 `"1 feddan"', add
label define sd08a_areacult_lbl 002 `"2 feddans"', add
label define sd08a_areacult_lbl 003 `"3"', add
label define sd08a_areacult_lbl 004 `"4"', add
label define sd08a_areacult_lbl 005 `"5"', add
label define sd08a_areacult_lbl 006 `"6"', add
label define sd08a_areacult_lbl 007 `"7"', add
label define sd08a_areacult_lbl 008 `"8"', add
label define sd08a_areacult_lbl 009 `"9"', add
label define sd08a_areacult_lbl 010 `"10"', add
label define sd08a_areacult_lbl 011 `"11"', add
label define sd08a_areacult_lbl 012 `"12"', add
label define sd08a_areacult_lbl 013 `"13"', add
label define sd08a_areacult_lbl 014 `"14"', add
label define sd08a_areacult_lbl 015 `"15"', add
label define sd08a_areacult_lbl 016 `"16"', add
label define sd08a_areacult_lbl 017 `"17"', add
label define sd08a_areacult_lbl 018 `"18"', add
label define sd08a_areacult_lbl 019 `"19"', add
label define sd08a_areacult_lbl 020 `"20"', add
label define sd08a_areacult_lbl 021 `"21"', add
label define sd08a_areacult_lbl 022 `"22"', add
label define sd08a_areacult_lbl 023 `"23"', add
label define sd08a_areacult_lbl 024 `"24"', add
label define sd08a_areacult_lbl 025 `"25"', add
label define sd08a_areacult_lbl 026 `"26"', add
label define sd08a_areacult_lbl 027 `"27"', add
label define sd08a_areacult_lbl 028 `"28"', add
label define sd08a_areacult_lbl 029 `"29"', add
label define sd08a_areacult_lbl 030 `"30 to 34"', add
label define sd08a_areacult_lbl 035 `"35 to 39"', add
label define sd08a_areacult_lbl 040 `"40 to 44"', add
label define sd08a_areacult_lbl 045 `"45 to 49"', add
label define sd08a_areacult_lbl 050 `"50 to 54"', add
label define sd08a_areacult_lbl 055 `"55 to 59"', add
label define sd08a_areacult_lbl 060 `"60 to 64"', add
label define sd08a_areacult_lbl 065 `"65 to 69"', add
label define sd08a_areacult_lbl 070 `"70 to 74"', add
label define sd08a_areacult_lbl 075 `"75 to 79"', add
label define sd08a_areacult_lbl 080 `"80 to 84"', add
label define sd08a_areacult_lbl 085 `"85 to 89"', add
label define sd08a_areacult_lbl 090 `"90 to 94"', add
label define sd08a_areacult_lbl 095 `"95 to 99"', add
label define sd08a_areacult_lbl 100 `"100 to 109"', add
label define sd08a_areacult_lbl 110 `"110 to 119"', add
label define sd08a_areacult_lbl 120 `"120 to 129"', add
label define sd08a_areacult_lbl 130 `"130 to 139"', add
label define sd08a_areacult_lbl 140 `"140 to 149"', add
label define sd08a_areacult_lbl 150 `"150 to 159"', add
label define sd08a_areacult_lbl 160 `"160 to 169"', add
label define sd08a_areacult_lbl 170 `"170 to 179"', add
label define sd08a_areacult_lbl 180 `"180 to 189"', add
label define sd08a_areacult_lbl 190 `"190 to 199"', add
label define sd08a_areacult_lbl 200 `"200 to 219"', add
label define sd08a_areacult_lbl 220 `"220 to 239"', add
label define sd08a_areacult_lbl 240 `"240 to 259"', add
label define sd08a_areacult_lbl 260 `"260 to 279"', add
label define sd08a_areacult_lbl 280 `"280 to 299"', add
label define sd08a_areacult_lbl 300 `"300 to 319"', add
label define sd08a_areacult_lbl 320 `"320 to 339"', add
label define sd08a_areacult_lbl 340 `"340 to 359"', add
label define sd08a_areacult_lbl 360 `"360 to 379"', add
label define sd08a_areacult_lbl 380 `"380 to 399"', add
label define sd08a_areacult_lbl 400 `"400 to 419"', add
label define sd08a_areacult_lbl 420 `"420 to 439"', add
label define sd08a_areacult_lbl 440 `"440 to 459"', add
label define sd08a_areacult_lbl 460 `"460 to 479"', add
label define sd08a_areacult_lbl 480 `"480 to 499"', add
label define sd08a_areacult_lbl 500 `"500 to 519"', add
label define sd08a_areacult_lbl 520 `"520 to 539"', add
label define sd08a_areacult_lbl 540 `"540 to 559"', add
label define sd08a_areacult_lbl 560 `"560 to 579"', add
label define sd08a_areacult_lbl 580 `"580 to 599"', add
label define sd08a_areacult_lbl 600 `"600 to 619"', add
label define sd08a_areacult_lbl 620 `"620 to 639"', add
label define sd08a_areacult_lbl 640 `"640 to 659"', add
label define sd08a_areacult_lbl 660 `"660 to 679"', add
label define sd08a_areacult_lbl 680 `"680 to 699"', add
label define sd08a_areacult_lbl 700 `"700 to 719"', add
label define sd08a_areacult_lbl 720 `"720 to 739"', add
label define sd08a_areacult_lbl 740 `"740 to 759"', add
label define sd08a_areacult_lbl 760 `"760 to 779"', add
label define sd08a_areacult_lbl 780 `"780 to 799"', add
label define sd08a_areacult_lbl 800 `"800 to 819"', add
label define sd08a_areacult_lbl 820 `"820 to 839"', add
label define sd08a_areacult_lbl 840 `"840 to 859"', add
label define sd08a_areacult_lbl 860 `"860 to 879"', add
label define sd08a_areacult_lbl 880 `"880 to 899"', add
label define sd08a_areacult_lbl 900 `"900 to 919"', add
label define sd08a_areacult_lbl 920 `"920 to 939"', add
label define sd08a_areacult_lbl 940 `"940 to 959"', add
label define sd08a_areacult_lbl 960 `"960 to 979"', add
label define sd08a_areacult_lbl 980 `"980 to 998"', add
label define sd08a_areacult_lbl 999 `"999 or more feddans"', add
label values sd08a_areacult sd08a_areacult_lbl

label define sd08a_cereal_lbl 1 `"Yes"'
label define sd08a_cereal_lbl 2 `"No"', add
label define sd08a_cereal_lbl 9 `"NIU (not in universe)"', add
label values sd08a_cereal sd08a_cereal_lbl

label define sd08a_veg_lbl 1 `"Yes"'
label define sd08a_veg_lbl 2 `"No"', add
label define sd08a_veg_lbl 9 `"NIU (not in universe)"', add
label values sd08a_veg sd08a_veg_lbl

label define sd08a_fruit_lbl 1 `"Yes"'
label define sd08a_fruit_lbl 2 `"No"', add
label define sd08a_fruit_lbl 9 `"NIU (not in universe)"', add
label values sd08a_fruit sd08a_fruit_lbl

label define sd08a_oilseed_lbl 1 `"Yes"'
label define sd08a_oilseed_lbl 2 `"No"', add
label define sd08a_oilseed_lbl 9 `"NIU (not in universe)"', add
label values sd08a_oilseed sd08a_oilseed_lbl

label define sd08a_root_lbl 1 `"Yes"'
label define sd08a_root_lbl 2 `"No"', add
label define sd08a_root_lbl 9 `"NIU (not in universe)"', add
label values sd08a_root sd08a_root_lbl

label define sd08a_spice_lbl 1 `"Yes"'
label define sd08a_spice_lbl 2 `"No"', add
label define sd08a_spice_lbl 9 `"NIU (not in universe)"', add
label values sd08a_spice sd08a_spice_lbl

label define sd08a_legum_lbl 1 `"Yes"'
label define sd08a_legum_lbl 2 `"No"', add
label define sd08a_legum_lbl 9 `"NIU (not in universe)"', add
label values sd08a_legum sd08a_legum_lbl

label define sd08a_sugar_lbl 1 `"Yes"'
label define sd08a_sugar_lbl 2 `"No"', add
label define sd08a_sugar_lbl 9 `"NIU (not in universe)"', add
label values sd08a_sugar sd08a_sugar_lbl

label define sd08a_cotton_lbl 1 `"Yes"'
label define sd08a_cotton_lbl 2 `"No"', add
label define sd08a_cotton_lbl 9 `"NIU (not in universe)"', add
label values sd08a_cotton sd08a_cotton_lbl

label define sd08a_coffee_lbl 1 `"Yes"'
label define sd08a_coffee_lbl 2 `"No"', add
label define sd08a_coffee_lbl 9 `"NIU (not in universe)"', add
label values sd08a_coffee sd08a_coffee_lbl

label define sd08a_tea_lbl 1 `"Yes"'
label define sd08a_tea_lbl 2 `"No"', add
label define sd08a_tea_lbl 9 `"NIU (not in universe)"', add
label values sd08a_tea sd08a_tea_lbl

label define sd08a_othcrop_lbl 1 `"Yes"'
label define sd08a_othcrop_lbl 2 `"No"', add
label define sd08a_othcrop_lbl 9 `"NIU (not in universe)"', add
label values sd08a_othcrop sd08a_othcrop_lbl

label define sd08a_landown_lbl 1 `"Owned"'
label define sd08a_landown_lbl 2 `"Rented"', add
label define sd08a_landown_lbl 3 `"Partially owned"', add
label define sd08a_landown_lbl 4 `"Communal"', add
label define sd08a_landown_lbl 9 `"NIU (not in universe)"', add
label values sd08a_landown sd08a_landown_lbl

label define sd08a_fishery_lbl 1 `"Yes"'
label define sd08a_fishery_lbl 2 `"No"', add
label values sd08a_fishery sd08a_fishery_lbl

label define sd08a_cattle_lbl 999 `"999 or more"'
label values sd08a_cattle sd08a_cattle_lbl

label define sd08a_camels_lbl 999 `"999 or more"'
label values sd08a_camels sd08a_camels_lbl

label define sd08a_sheep_lbl 999 `"999 or more"'
label values sd08a_sheep sd08a_sheep_lbl

label define sd08a_goats_lbl 999 `"999 or more"'
label values sd08a_goats sd08a_goats_lbl

label define sd08a_horses_lbl 000 `"0"'
label define sd08a_horses_lbl 001 `"1"', add
label define sd08a_horses_lbl 002 `"2"', add
label define sd08a_horses_lbl 003 `"3"', add
label define sd08a_horses_lbl 004 `"4"', add
label define sd08a_horses_lbl 005 `"5"', add
label define sd08a_horses_lbl 006 `"6"', add
label define sd08a_horses_lbl 007 `"7"', add
label define sd08a_horses_lbl 008 `"8"', add
label define sd08a_horses_lbl 009 `"9"', add
label define sd08a_horses_lbl 010 `"10"', add
label define sd08a_horses_lbl 011 `"11"', add
label define sd08a_horses_lbl 012 `"12"', add
label define sd08a_horses_lbl 013 `"13"', add
label define sd08a_horses_lbl 014 `"14"', add
label define sd08a_horses_lbl 015 `"15"', add
label define sd08a_horses_lbl 016 `"16"', add
label define sd08a_horses_lbl 017 `"17"', add
label define sd08a_horses_lbl 018 `"18"', add
label define sd08a_horses_lbl 019 `"19"', add
label define sd08a_horses_lbl 020 `"20"', add
label define sd08a_horses_lbl 021 `"21"', add
label define sd08a_horses_lbl 022 `"22"', add
label define sd08a_horses_lbl 023 `"23"', add
label define sd08a_horses_lbl 024 `"24"', add
label define sd08a_horses_lbl 025 `"25"', add
label define sd08a_horses_lbl 026 `"26"', add
label define sd08a_horses_lbl 027 `"27"', add
label define sd08a_horses_lbl 028 `"28"', add
label define sd08a_horses_lbl 029 `"29"', add
label define sd08a_horses_lbl 030 `"30"', add
label define sd08a_horses_lbl 031 `"31"', add
label define sd08a_horses_lbl 032 `"32"', add
label define sd08a_horses_lbl 033 `"33"', add
label define sd08a_horses_lbl 034 `"34"', add
label define sd08a_horses_lbl 035 `"35"', add
label define sd08a_horses_lbl 037 `"37"', add
label define sd08a_horses_lbl 039 `"39"', add
label define sd08a_horses_lbl 040 `"40"', add
label define sd08a_horses_lbl 041 `"41"', add
label define sd08a_horses_lbl 042 `"42"', add
label define sd08a_horses_lbl 043 `"43"', add
label define sd08a_horses_lbl 044 `"44"', add
label define sd08a_horses_lbl 045 `"45"', add
label define sd08a_horses_lbl 048 `"48"', add
label define sd08a_horses_lbl 050 `"50"', add
label define sd08a_horses_lbl 051 `"51"', add
label define sd08a_horses_lbl 052 `"52"', add
label define sd08a_horses_lbl 053 `"53"', add
label define sd08a_horses_lbl 054 `"54"', add
label define sd08a_horses_lbl 055 `"55"', add
label define sd08a_horses_lbl 056 `"56"', add
label define sd08a_horses_lbl 059 `"59"', add
label define sd08a_horses_lbl 060 `"60"', add
label define sd08a_horses_lbl 061 `"61"', add
label define sd08a_horses_lbl 063 `"63"', add
label define sd08a_horses_lbl 065 `"65"', add
label define sd08a_horses_lbl 066 `"66"', add
label define sd08a_horses_lbl 069 `"69"', add
label define sd08a_horses_lbl 070 `"70"', add
label define sd08a_horses_lbl 071 `"71"', add
label define sd08a_horses_lbl 072 `"72"', add
label define sd08a_horses_lbl 073 `"73"', add
label define sd08a_horses_lbl 074 `"74"', add
label define sd08a_horses_lbl 075 `"75"', add
label define sd08a_horses_lbl 077 `"77"', add
label define sd08a_horses_lbl 078 `"78"', add
label define sd08a_horses_lbl 080 `"80"', add
label define sd08a_horses_lbl 082 `"82"', add
label define sd08a_horses_lbl 083 `"83"', add
label define sd08a_horses_lbl 086 `"86"', add
label define sd08a_horses_lbl 087 `"87"', add
label define sd08a_horses_lbl 088 `"88"', add
label define sd08a_horses_lbl 090 `"90"', add
label define sd08a_horses_lbl 091 `"91"', add
label define sd08a_horses_lbl 092 `"92"', add
label define sd08a_horses_lbl 093 `"93"', add
label define sd08a_horses_lbl 094 `"94"', add
label define sd08a_horses_lbl 095 `"95"', add
label define sd08a_horses_lbl 097 `"97"', add
label define sd08a_horses_lbl 098 `"98"', add
label define sd08a_horses_lbl 099 `"99"', add
label define sd08a_horses_lbl 100 `"100+"', add
label values sd08a_horses sd08a_horses_lbl

label define sd08a_donkeys_lbl 000 `"0"'
label define sd08a_donkeys_lbl 001 `"1"', add
label define sd08a_donkeys_lbl 002 `"2"', add
label define sd08a_donkeys_lbl 003 `"3"', add
label define sd08a_donkeys_lbl 004 `"4"', add
label define sd08a_donkeys_lbl 005 `"5"', add
label define sd08a_donkeys_lbl 006 `"6"', add
label define sd08a_donkeys_lbl 007 `"7"', add
label define sd08a_donkeys_lbl 008 `"8"', add
label define sd08a_donkeys_lbl 009 `"9"', add
label define sd08a_donkeys_lbl 010 `"10"', add
label define sd08a_donkeys_lbl 011 `"11"', add
label define sd08a_donkeys_lbl 012 `"12"', add
label define sd08a_donkeys_lbl 013 `"13"', add
label define sd08a_donkeys_lbl 014 `"14"', add
label define sd08a_donkeys_lbl 015 `"15"', add
label define sd08a_donkeys_lbl 016 `"16"', add
label define sd08a_donkeys_lbl 017 `"17"', add
label define sd08a_donkeys_lbl 018 `"18"', add
label define sd08a_donkeys_lbl 019 `"19"', add
label define sd08a_donkeys_lbl 020 `"20"', add
label define sd08a_donkeys_lbl 021 `"21"', add
label define sd08a_donkeys_lbl 022 `"22"', add
label define sd08a_donkeys_lbl 023 `"23"', add
label define sd08a_donkeys_lbl 024 `"24"', add
label define sd08a_donkeys_lbl 025 `"25"', add
label define sd08a_donkeys_lbl 026 `"26"', add
label define sd08a_donkeys_lbl 027 `"27"', add
label define sd08a_donkeys_lbl 028 `"28"', add
label define sd08a_donkeys_lbl 029 `"29"', add
label define sd08a_donkeys_lbl 030 `"30"', add
label define sd08a_donkeys_lbl 031 `"31"', add
label define sd08a_donkeys_lbl 032 `"32"', add
label define sd08a_donkeys_lbl 033 `"33"', add
label define sd08a_donkeys_lbl 034 `"34"', add
label define sd08a_donkeys_lbl 035 `"35"', add
label define sd08a_donkeys_lbl 036 `"36"', add
label define sd08a_donkeys_lbl 037 `"37"', add
label define sd08a_donkeys_lbl 038 `"38"', add
label define sd08a_donkeys_lbl 040 `"40"', add
label define sd08a_donkeys_lbl 041 `"41"', add
label define sd08a_donkeys_lbl 042 `"42"', add
label define sd08a_donkeys_lbl 043 `"43"', add
label define sd08a_donkeys_lbl 044 `"44"', add
label define sd08a_donkeys_lbl 045 `"45"', add
label define sd08a_donkeys_lbl 046 `"46"', add
label define sd08a_donkeys_lbl 047 `"47"', add
label define sd08a_donkeys_lbl 048 `"48"', add
label define sd08a_donkeys_lbl 049 `"49"', add
label define sd08a_donkeys_lbl 050 `"50"', add
label define sd08a_donkeys_lbl 051 `"51"', add
label define sd08a_donkeys_lbl 052 `"52"', add
label define sd08a_donkeys_lbl 053 `"53"', add
label define sd08a_donkeys_lbl 054 `"54"', add
label define sd08a_donkeys_lbl 055 `"55"', add
label define sd08a_donkeys_lbl 056 `"56"', add
label define sd08a_donkeys_lbl 057 `"57"', add
label define sd08a_donkeys_lbl 058 `"58"', add
label define sd08a_donkeys_lbl 060 `"60"', add
label define sd08a_donkeys_lbl 061 `"61"', add
label define sd08a_donkeys_lbl 062 `"62"', add
label define sd08a_donkeys_lbl 063 `"63"', add
label define sd08a_donkeys_lbl 064 `"64"', add
label define sd08a_donkeys_lbl 065 `"65"', add
label define sd08a_donkeys_lbl 066 `"66"', add
label define sd08a_donkeys_lbl 067 `"67"', add
label define sd08a_donkeys_lbl 069 `"69"', add
label define sd08a_donkeys_lbl 070 `"70"', add
label define sd08a_donkeys_lbl 071 `"71"', add
label define sd08a_donkeys_lbl 072 `"72"', add
label define sd08a_donkeys_lbl 073 `"73"', add
label define sd08a_donkeys_lbl 074 `"74"', add
label define sd08a_donkeys_lbl 075 `"75"', add
label define sd08a_donkeys_lbl 076 `"76"', add
label define sd08a_donkeys_lbl 077 `"77"', add
label define sd08a_donkeys_lbl 080 `"80"', add
label define sd08a_donkeys_lbl 081 `"81"', add
label define sd08a_donkeys_lbl 082 `"82"', add
label define sd08a_donkeys_lbl 085 `"85"', add
label define sd08a_donkeys_lbl 086 `"86"', add
label define sd08a_donkeys_lbl 087 `"87"', add
label define sd08a_donkeys_lbl 088 `"88"', add
label define sd08a_donkeys_lbl 089 `"89"', add
label define sd08a_donkeys_lbl 090 `"90"', add
label define sd08a_donkeys_lbl 092 `"92"', add
label define sd08a_donkeys_lbl 093 `"93"', add
label define sd08a_donkeys_lbl 094 `"94"', add
label define sd08a_donkeys_lbl 095 `"95"', add
label define sd08a_donkeys_lbl 096 `"96"', add
label define sd08a_donkeys_lbl 097 `"97"', add
label define sd08a_donkeys_lbl 098 `"98"', add
label define sd08a_donkeys_lbl 099 `"99"', add
label define sd08a_donkeys_lbl 100 `"100+"', add
label values sd08a_donkeys sd08a_donkeys_lbl

label define sd08a_pigs_lbl 000 `"0"'
label define sd08a_pigs_lbl 001 `"1"', add
label define sd08a_pigs_lbl 002 `"2"', add
label define sd08a_pigs_lbl 003 `"3"', add
label define sd08a_pigs_lbl 004 `"4"', add
label define sd08a_pigs_lbl 005 `"5"', add
label define sd08a_pigs_lbl 006 `"6"', add
label define sd08a_pigs_lbl 007 `"7"', add
label define sd08a_pigs_lbl 008 `"8"', add
label define sd08a_pigs_lbl 009 `"9"', add
label define sd08a_pigs_lbl 010 `"10"', add
label define sd08a_pigs_lbl 011 `"11"', add
label define sd08a_pigs_lbl 012 `"12"', add
label define sd08a_pigs_lbl 013 `"13"', add
label define sd08a_pigs_lbl 014 `"14"', add
label define sd08a_pigs_lbl 015 `"15"', add
label define sd08a_pigs_lbl 016 `"16"', add
label define sd08a_pigs_lbl 017 `"17"', add
label define sd08a_pigs_lbl 018 `"18"', add
label define sd08a_pigs_lbl 019 `"19"', add
label define sd08a_pigs_lbl 020 `"20"', add
label define sd08a_pigs_lbl 021 `"21"', add
label define sd08a_pigs_lbl 022 `"22"', add
label define sd08a_pigs_lbl 023 `"23"', add
label define sd08a_pigs_lbl 024 `"24"', add
label define sd08a_pigs_lbl 025 `"25"', add
label define sd08a_pigs_lbl 026 `"26"', add
label define sd08a_pigs_lbl 027 `"27"', add
label define sd08a_pigs_lbl 028 `"28"', add
label define sd08a_pigs_lbl 029 `"29"', add
label define sd08a_pigs_lbl 030 `"30+"', add
label values sd08a_pigs sd08a_pigs_lbl

label define sd08a_poultry_lbl 999 `"999 or more"'
label values sd08a_poultry sd08a_poultry_lbl

label define sd08a_deaths_lbl 1 `"Yes"'
label define sd08a_deaths_lbl 2 `"No"', add
label define sd08a_deaths_lbl 9 `"Unknown"', add
label values sd08a_deaths sd08a_deaths_lbl

label define sd08a_qhhtype_lbl 0 `"No imputation"'
label define sd08a_qhhtype_lbl 1 `"Logical from blank"', add
label define sd08a_qhhtype_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qhhtype_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qhhtype_lbl 4 `"Imputation from blank"', add
label define sd08a_qhhtype_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qhhtype_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qhhtype sd08a_qhhtype_lbl

label define sd08a_qdwtype_lbl 0 `"No imputation"'
label define sd08a_qdwtype_lbl 1 `"Logical from blank"', add
label define sd08a_qdwtype_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qdwtype_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qdwtype_lbl 4 `"Imputation from blank"', add
label define sd08a_qdwtype_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qdwtype_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qdwtype sd08a_qdwtype_lbl

label define sd08a_qrooms_lbl 0 `"No imputation"'
label define sd08a_qrooms_lbl 1 `"Logical from blank"', add
label define sd08a_qrooms_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qrooms_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qrooms_lbl 4 `"Imputation from blank"', add
label define sd08a_qrooms_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qrooms_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qrooms sd08a_qrooms_lbl

label define sd08a_qownrshp_lbl 0 `"No imputation"'
label define sd08a_qownrshp_lbl 1 `"Logical from blank"', add
label define sd08a_qownrshp_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qownrshp_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qownrshp_lbl 4 `"Imputation from blank"', add
label define sd08a_qownrshp_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qownrshp_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qownrshp sd08a_qownrshp_lbl

label define sd08a_qwatsrc_lbl 0 `"No imputation"'
label define sd08a_qwatsrc_lbl 1 `"Logical from blank"', add
label define sd08a_qwatsrc_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qwatsrc_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qwatsrc_lbl 4 `"Imputation from blank"', add
label define sd08a_qwatsrc_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qwatsrc_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qwatsrc sd08a_qwatsrc_lbl

label define sd08a_qlightng_lbl 0 `"No imputation"'
label define sd08a_qlightng_lbl 1 `"Logical from blank"', add
label define sd08a_qlightng_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qlightng_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qlightng_lbl 4 `"Imputation from blank"', add
label define sd08a_qlightng_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qlightng_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qlightng sd08a_qlightng_lbl

label define sd08a_qfuelck_lbl 0 `"No imputation"'
label define sd08a_qfuelck_lbl 1 `"Logical from blank"', add
label define sd08a_qfuelck_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qfuelck_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qfuelck_lbl 4 `"Imputation from blank"', add
label define sd08a_qfuelck_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qfuelck_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qfuelck sd08a_qfuelck_lbl

label define sd08a_qtoilet_lbl 0 `"No imputation"'
label define sd08a_qtoilet_lbl 1 `"Logical from blank"', add
label define sd08a_qtoilet_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qtoilet_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qtoilet_lbl 4 `"Imputation from blank"', add
label define sd08a_qtoilet_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qtoilet_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qtoilet sd08a_qtoilet_lbl

label define sd08a_qvehicle_lbl 0 `"No imputation"'
label define sd08a_qvehicle_lbl 1 `"Logical from blank"', add
label define sd08a_qvehicle_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qvehicle_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qvehicle_lbl 4 `"Imputation from blank"', add
label define sd08a_qvehicle_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qvehicle_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qvehicle sd08a_qvehicle_lbl

label define sd08a_qmotocyc_lbl 0 `"No imputation"'
label define sd08a_qmotocyc_lbl 1 `"Logical from blank"', add
label define sd08a_qmotocyc_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qmotocyc_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qmotocyc_lbl 4 `"Imputation from blank"', add
label define sd08a_qmotocyc_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qmotocyc_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qmotocyc sd08a_qmotocyc_lbl

label define sd08a_qbicycle_lbl 0 `"No imputation"'
label define sd08a_qbicycle_lbl 1 `"Logical from blank"', add
label define sd08a_qbicycle_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qbicycle_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qbicycle_lbl 4 `"Imputation from blank"', add
label define sd08a_qbicycle_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qbicycle_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qbicycle sd08a_qbicycle_lbl

label define sd08a_qboat_lbl 0 `"No imputation"'
label define sd08a_qboat_lbl 1 `"Logical from blank"', add
label define sd08a_qboat_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qboat_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qboat_lbl 4 `"Imputation from blank"', add
label define sd08a_qboat_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qboat_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qboat sd08a_qboat_lbl

label define sd08a_qanitran_lbl 0 `"No imputation"'
label define sd08a_qanitran_lbl 1 `"Logical from blank"', add
label define sd08a_qanitran_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qanitran_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qanitran_lbl 4 `"Imputation from blank"', add
label define sd08a_qanitran_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qanitran_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qanitran sd08a_qanitran_lbl

label define sd08a_qtractor_lbl 0 `"No imputation"'
label define sd08a_qtractor_lbl 1 `"Logical from blank"', add
label define sd08a_qtractor_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qtractor_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qtractor_lbl 4 `"Imputation from blank"', add
label define sd08a_qtractor_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qtractor_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qtractor sd08a_qtractor_lbl

label define sd08a_qnotrans_lbl 0 `"No imputation"'
label define sd08a_qnotrans_lbl 1 `"Logical from blank"', add
label define sd08a_qnotrans_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qnotrans_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qnotrans_lbl 4 `"Imputation from blank"', add
label define sd08a_qnotrans_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qnotrans_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qnotrans sd08a_qnotrans_lbl

label define sd08a_qtv_lbl 0 `"No imputation"'
label define sd08a_qtv_lbl 1 `"Logical from blank"', add
label define sd08a_qtv_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qtv_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qtv_lbl 4 `"Imputation from blank"', add
label define sd08a_qtv_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qtv_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qtv sd08a_qtv_lbl

label define sd08a_qradio_lbl 0 `"No imputation"'
label define sd08a_qradio_lbl 1 `"Logical from blank"', add
label define sd08a_qradio_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qradio_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qradio_lbl 4 `"Imputation from blank"', add
label define sd08a_qradio_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qradio_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qradio sd08a_qradio_lbl

label define sd08a_qmobile_lbl 0 `"No imputation"'
label define sd08a_qmobile_lbl 1 `"Logical from blank"', add
label define sd08a_qmobile_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qmobile_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qmobile_lbl 4 `"Imputation from blank"', add
label define sd08a_qmobile_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qmobile_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qmobile sd08a_qmobile_lbl

label define sd08a_qphone_lbl 0 `"No imputation"'
label define sd08a_qphone_lbl 1 `"Logical from blank"', add
label define sd08a_qphone_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qphone_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qphone_lbl 4 `"Imputation from blank"', add
label define sd08a_qphone_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qphone_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qphone sd08a_qphone_lbl

label define sd08a_qcomputr_lbl 0 `"No imputation"'
label define sd08a_qcomputr_lbl 1 `"Logical from blank"', add
label define sd08a_qcomputr_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qcomputr_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qcomputr_lbl 4 `"Imputation from blank"', add
label define sd08a_qcomputr_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qcomputr_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qcomputr sd08a_qcomputr_lbl

label define sd08a_qrefridg_lbl 0 `"No imputation"'
label define sd08a_qrefridg_lbl 1 `"Logical from blank"', add
label define sd08a_qrefridg_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qrefridg_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qrefridg_lbl 4 `"Imputation from blank"', add
label define sd08a_qrefridg_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qrefridg_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qrefridg sd08a_qrefridg_lbl

label define sd08a_qsatell_lbl 0 `"No imputation"'
label define sd08a_qsatell_lbl 1 `"Logical from blank"', add
label define sd08a_qsatell_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qsatell_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qsatell_lbl 4 `"Imputation from blank"', add
label define sd08a_qsatell_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qsatell_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qsatell sd08a_qsatell_lbl

label define sd08a_qfan_lbl 0 `"No imputation"'
label define sd08a_qfan_lbl 1 `"Logical from blank"', add
label define sd08a_qfan_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qfan_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qfan_lbl 4 `"Imputation from blank"', add
label define sd08a_qfan_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qfan_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qfan sd08a_qfan_lbl

label define sd08a_qaircon_lbl 0 `"No imputation"'
label define sd08a_qaircon_lbl 1 `"Logical from blank"', add
label define sd08a_qaircon_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qaircon_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qaircon_lbl 4 `"Imputation from blank"', add
label define sd08a_qaircon_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qaircon_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qaircon sd08a_qaircon_lbl

label define sd08a_qnoamen_lbl 0 `"No imputation"'
label define sd08a_qnoamen_lbl 1 `"Logical from blank"', add
label define sd08a_qnoamen_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qnoamen_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qnoamen_lbl 4 `"Imputation from blank"', add
label define sd08a_qnoamen_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qnoamen_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qnoamen sd08a_qnoamen_lbl

label define sd08a_qlivehod_lbl 0 `"No imputation"'
label define sd08a_qlivehod_lbl 1 `"Logical from blank"', add
label define sd08a_qlivehod_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qlivehod_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qlivehod_lbl 4 `"Imputation from blank"', add
label define sd08a_qlivehod_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qlivehod_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qlivehod sd08a_qlivehod_lbl

label define sd08a_qcultiv_lbl 0 `"No imputation"'
label define sd08a_qcultiv_lbl 1 `"Logical from blank"', add
label define sd08a_qcultiv_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qcultiv_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qcultiv_lbl 4 `"Imputation from blank"', add
label define sd08a_qcultiv_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qcultiv_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qcultiv sd08a_qcultiv_lbl

label define sd08a_qareacul_lbl 0 `"No imputation"'
label define sd08a_qareacul_lbl 1 `"Logical from blank"', add
label define sd08a_qareacul_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qareacul_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qareacul_lbl 4 `"Imputation from blank"', add
label define sd08a_qareacul_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qareacul_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qareacul sd08a_qareacul_lbl

label define sd08a_qcereal_lbl 0 `"No imputation"'
label define sd08a_qcereal_lbl 1 `"Logical from blank"', add
label define sd08a_qcereal_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qcereal_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qcereal_lbl 4 `"Imputation from blank"', add
label define sd08a_qcereal_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qcereal_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qcereal sd08a_qcereal_lbl

label define sd08a_qveg_lbl 0 `"No imputation"'
label define sd08a_qveg_lbl 1 `"Logical from blank"', add
label define sd08a_qveg_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qveg_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qveg_lbl 4 `"Imputation from blank"', add
label define sd08a_qveg_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qveg_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qveg sd08a_qveg_lbl

label define sd08a_qfruit_lbl 0 `"No imputation"'
label define sd08a_qfruit_lbl 1 `"Logical from blank"', add
label define sd08a_qfruit_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qfruit_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qfruit_lbl 4 `"Imputation from blank"', add
label define sd08a_qfruit_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qfruit_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qfruit sd08a_qfruit_lbl

label define sd08a_qoilseed_lbl 0 `"No imputation"'
label define sd08a_qoilseed_lbl 1 `"Logical from blank"', add
label define sd08a_qoilseed_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qoilseed_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qoilseed_lbl 4 `"Imputation from blank"', add
label define sd08a_qoilseed_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qoilseed_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qoilseed sd08a_qoilseed_lbl

label define sd08a_qroot_lbl 0 `"No imputation"'
label define sd08a_qroot_lbl 1 `"Logical from blank"', add
label define sd08a_qroot_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qroot_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qroot_lbl 4 `"Imputation from blank"', add
label define sd08a_qroot_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qroot_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qroot sd08a_qroot_lbl

label define sd08a_qspice_lbl 0 `"No imputation"'
label define sd08a_qspice_lbl 1 `"Logical from blank"', add
label define sd08a_qspice_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qspice_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qspice_lbl 4 `"Imputation from blank"', add
label define sd08a_qspice_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qspice_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qspice sd08a_qspice_lbl

label define sd08a_qlegum_lbl 0 `"No imputation"'
label define sd08a_qlegum_lbl 1 `"Logical from blank"', add
label define sd08a_qlegum_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qlegum_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qlegum_lbl 4 `"Imputation from blank"', add
label define sd08a_qlegum_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qlegum_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qlegum sd08a_qlegum_lbl

label define sd08a_qsugar_lbl 0 `"No imputation"'
label define sd08a_qsugar_lbl 1 `"Logical from blank"', add
label define sd08a_qsugar_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qsugar_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qsugar_lbl 4 `"Imputation from blank"', add
label define sd08a_qsugar_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qsugar_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qsugar sd08a_qsugar_lbl

label define sd08a_qcotton_lbl 0 `"No imputation"'
label define sd08a_qcotton_lbl 1 `"Logical from blank"', add
label define sd08a_qcotton_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qcotton_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qcotton_lbl 4 `"Imputation from blank"', add
label define sd08a_qcotton_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qcotton_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qcotton sd08a_qcotton_lbl

label define sd08a_qcoffee_lbl 0 `"No imputation"'
label define sd08a_qcoffee_lbl 1 `"Logical from blank"', add
label define sd08a_qcoffee_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qcoffee_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qcoffee_lbl 4 `"Imputation from blank"', add
label define sd08a_qcoffee_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qcoffee_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qcoffee sd08a_qcoffee_lbl

label define sd08a_qtea_lbl 0 `"No imputation"'
label define sd08a_qtea_lbl 1 `"Logical from blank"', add
label define sd08a_qtea_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qtea_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qtea_lbl 4 `"Imputation from blank"', add
label define sd08a_qtea_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qtea_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qtea sd08a_qtea_lbl

label define sd08a_qothcrop_lbl 0 `"No imputation"'
label define sd08a_qothcrop_lbl 1 `"Logical from blank"', add
label define sd08a_qothcrop_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qothcrop_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qothcrop_lbl 4 `"Imputation from blank"', add
label define sd08a_qothcrop_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qothcrop_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qothcrop sd08a_qothcrop_lbl

label define sd08a_qlandown_lbl 0 `"No imputation"'
label define sd08a_qlandown_lbl 1 `"Logical from blank"', add
label define sd08a_qlandown_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qlandown_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qlandown_lbl 4 `"Imputation from blank"', add
label define sd08a_qlandown_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qlandown_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qlandown sd08a_qlandown_lbl

label define sd08a_qfishery_lbl 0 `"No imputation"'
label define sd08a_qfishery_lbl 1 `"Logical from blank"', add
label define sd08a_qfishery_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qfishery_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qfishery_lbl 4 `"Imputation from blank"', add
label define sd08a_qfishery_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qfishery_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qfishery sd08a_qfishery_lbl

label define sd08a_qcattle_lbl 0 `"No imputation"'
label define sd08a_qcattle_lbl 1 `"Logical from blank"', add
label define sd08a_qcattle_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qcattle_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qcattle_lbl 4 `"Imputation from blank"', add
label define sd08a_qcattle_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qcattle_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qcattle sd08a_qcattle_lbl

label define sd08a_qcamels_lbl 0 `"No imputation"'
label define sd08a_qcamels_lbl 1 `"Logical from blank"', add
label define sd08a_qcamels_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qcamels_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qcamels_lbl 4 `"Imputation from blank"', add
label define sd08a_qcamels_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qcamels_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qcamels sd08a_qcamels_lbl

label define sd08a_qsheep_lbl 0 `"No imputation"'
label define sd08a_qsheep_lbl 1 `"Logical from blank"', add
label define sd08a_qsheep_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qsheep_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qsheep_lbl 4 `"Imputation from blank"', add
label define sd08a_qsheep_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qsheep_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qsheep sd08a_qsheep_lbl

label define sd08a_qgoats_lbl 0 `"No imputation"'
label define sd08a_qgoats_lbl 1 `"Logical from blank"', add
label define sd08a_qgoats_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qgoats_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qgoats_lbl 4 `"Imputation from blank"', add
label define sd08a_qgoats_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qgoats_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qgoats sd08a_qgoats_lbl

label define sd08a_qhorses_lbl 0 `"No imputation"'
label define sd08a_qhorses_lbl 1 `"Logical from blank"', add
label define sd08a_qhorses_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qhorses_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qhorses_lbl 4 `"Imputation from blank"', add
label define sd08a_qhorses_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qhorses_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qhorses sd08a_qhorses_lbl

label define sd08a_qpigs_lbl 0 `"No imputation"'
label define sd08a_qpigs_lbl 1 `"Logical from blank"', add
label define sd08a_qpigs_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qpigs_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qpigs_lbl 4 `"Imputation from blank"', add
label define sd08a_qpigs_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qpigs_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qpigs sd08a_qpigs_lbl

label define sd08a_qpoultry_lbl 0 `"No imputation"'
label define sd08a_qpoultry_lbl 1 `"Logical from blank"', add
label define sd08a_qpoultry_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qpoultry_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qpoultry_lbl 4 `"Imputation from blank"', add
label define sd08a_qpoultry_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qpoultry_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qpoultry sd08a_qpoultry_lbl

label define sd08a_qdeaths_lbl 0 `"No imputation"'
label define sd08a_qdeaths_lbl 1 `"Logical from blank"', add
label define sd08a_qdeaths_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qdeaths_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qdeaths_lbl 4 `"Imputation from blank"', add
label define sd08a_qdeaths_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qdeaths_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qdeaths sd08a_qdeaths_lbl

label define sd08a_hhwt_lbl 010035 `"10035"'
label define sd08a_hhwt_lbl 010040 `"10040"', add
label define sd08a_hhwt_lbl 010056 `"10056"', add
label define sd08a_hhwt_lbl 010082 `"10082"', add
label define sd08a_hhwt_lbl 010093 `"10093"', add
label define sd08a_hhwt_lbl 010096 `"10096"', add
label define sd08a_hhwt_lbl 010150 `"10150"', add
label define sd08a_hhwt_lbl 010175 `"10175"', add
label define sd08a_hhwt_lbl 010186 `"10186"', add
label define sd08a_hhwt_lbl 010218 `"10218"', add
label define sd08a_hhwt_lbl 010223 `"10223"', add
label define sd08a_hhwt_lbl 010336 `"10336"', add
label define sd08a_hhwt_lbl 010400 `"10400"', add
label define sd08a_hhwt_lbl 048113 `"48113"', add
label define sd08a_hhwt_lbl 086388 `"86388"', add
label define sd08a_hhwt_lbl 096343 `"96343"', add
label define sd08a_hhwt_lbl 096774 `"96774"', add
label define sd08a_hhwt_lbl 097151 `"97151"', add
label define sd08a_hhwt_lbl 102072 `"102072"', add
label define sd08a_hhwt_lbl 102622 `"102622"', add
label define sd08a_hhwt_lbl 103453 `"103453"', add
label define sd08a_hhwt_lbl 103648 `"103648"', add
label define sd08a_hhwt_lbl 103874 `"103874"', add
label define sd08a_hhwt_lbl 104276 `"104276"', add
label define sd08a_hhwt_lbl 105259 `"105259"', add
label define sd08a_hhwt_lbl 106067 `"106067"', add
label define sd08a_hhwt_lbl 106491 `"106491"', add
label define sd08a_hhwt_lbl 106532 `"106532"', add
label define sd08a_hhwt_lbl 111205 `"111205"', add
label define sd08a_hhwt_lbl 112224 `"112224"', add
label define sd08a_hhwt_lbl 112292 `"112292"', add
label define sd08a_hhwt_lbl 115260 `"115260"', add
label define sd08a_hhwt_lbl 117254 `"117254"', add
label define sd08a_hhwt_lbl 117562 `"117562"', add
label define sd08a_hhwt_lbl 120003 `"120003"', add
label define sd08a_hhwt_lbl 121403 `"121403"', add
label define sd08a_hhwt_lbl 126326 `"126326"', add
label define sd08a_hhwt_lbl 127875 `"127875"', add
label define sd08a_hhwt_lbl 135093 `"135093"', add
label define sd08a_hhwt_lbl 156526 `"156526"', add
label define sd08a_hhwt_lbl 162625 `"162625"', add
label define sd08a_hhwt_lbl 162873 `"162873"', add
label define sd08a_hhwt_lbl 247198 `"247198"', add
label define sd08a_hhwt_lbl 297162 `"297162"', add
label values sd08a_hhwt sd08a_hhwt_lbl

label define sd08a_ndeaths_lbl 0 `"0"'
label define sd08a_ndeaths_lbl 1 `"1"', add
label define sd08a_ndeaths_lbl 2 `"2"', add
label define sd08a_ndeaths_lbl 3 `"3"', add
label define sd08a_ndeaths_lbl 4 `"4"', add
label define sd08a_ndeaths_lbl 5 `"5"', add
label define sd08a_ndeaths_lbl 6 `"6"', add
label define sd08a_ndeaths_lbl 7 `"7+"', add
label values sd08a_ndeaths sd08a_ndeaths_lbl

label define sd08a_pernum_lbl 00 `"Household record"'
label define sd08a_pernum_lbl 01 `"1"', add
label define sd08a_pernum_lbl 02 `"2"', add
label define sd08a_pernum_lbl 03 `"3"', add
label define sd08a_pernum_lbl 04 `"4"', add
label define sd08a_pernum_lbl 05 `"5"', add
label define sd08a_pernum_lbl 06 `"6"', add
label define sd08a_pernum_lbl 07 `"7"', add
label define sd08a_pernum_lbl 08 `"8"', add
label define sd08a_pernum_lbl 09 `"9"', add
label define sd08a_pernum_lbl 10 `"10"', add
label define sd08a_pernum_lbl 11 `"11"', add
label define sd08a_pernum_lbl 12 `"12"', add
label define sd08a_pernum_lbl 13 `"13"', add
label define sd08a_pernum_lbl 14 `"14"', add
label define sd08a_pernum_lbl 15 `"15"', add
label define sd08a_pernum_lbl 16 `"16"', add
label define sd08a_pernum_lbl 17 `"17"', add
label define sd08a_pernum_lbl 18 `"18"', add
label define sd08a_pernum_lbl 19 `"19"', add
label define sd08a_pernum_lbl 20 `"20"', add
label define sd08a_pernum_lbl 21 `"21"', add
label define sd08a_pernum_lbl 22 `"22"', add
label define sd08a_pernum_lbl 23 `"23"', add
label define sd08a_pernum_lbl 24 `"24"', add
label define sd08a_pernum_lbl 25 `"25"', add
label define sd08a_pernum_lbl 26 `"26"', add
label define sd08a_pernum_lbl 27 `"27"', add
label define sd08a_pernum_lbl 28 `"28"', add
label define sd08a_pernum_lbl 29 `"29"', add
label define sd08a_pernum_lbl 30 `"30"', add
label define sd08a_pernum_lbl 31 `"31"', add
label define sd08a_pernum_lbl 32 `"32"', add
label define sd08a_pernum_lbl 33 `"33"', add
label define sd08a_pernum_lbl 34 `"34"', add
label define sd08a_pernum_lbl 35 `"35"', add
label define sd08a_pernum_lbl 36 `"36"', add
label define sd08a_pernum_lbl 37 `"37"', add
label define sd08a_pernum_lbl 38 `"38"', add
label define sd08a_pernum_lbl 39 `"39"', add
label define sd08a_pernum_lbl 40 `"40"', add
label define sd08a_pernum_lbl 41 `"41"', add
label define sd08a_pernum_lbl 42 `"42"', add
label define sd08a_pernum_lbl 43 `"43"', add
label define sd08a_pernum_lbl 44 `"44"', add
label define sd08a_pernum_lbl 45 `"45"', add
label define sd08a_pernum_lbl 46 `"46"', add
label define sd08a_pernum_lbl 47 `"47"', add
label define sd08a_pernum_lbl 48 `"48"', add
label define sd08a_pernum_lbl 49 `"49"', add
label define sd08a_pernum_lbl 50 `"50"', add
label values sd08a_pernum sd08a_pernum_lbl

label define sd08a_relate_lbl 01 `"Head"'
label define sd08a_relate_lbl 02 `"Spouse"', add
label define sd08a_relate_lbl 03 `"Daughter/son"', add
label define sd08a_relate_lbl 04 `"Spouse of son/daughter"', add
label define sd08a_relate_lbl 05 `"Grandchild"', add
label define sd08a_relate_lbl 06 `"Niece/nephew"', add
label define sd08a_relate_lbl 07 `"Parent/parent in-law"', add
label define sd08a_relate_lbl 08 `"Sibling/sibling-in-law"', add
label define sd08a_relate_lbl 09 `"Other relative"', add
label define sd08a_relate_lbl 10 `"Non-relative"', add
label values sd08a_relate sd08a_relate_lbl

label define sd08a_sex_lbl 1 `"Male"'
label define sd08a_sex_lbl 2 `"Female"', add
label values sd08a_sex sd08a_sex_lbl

label define sd08a_age_lbl 00 `"Less than 1 years old"'
label define sd08a_age_lbl 01 `"1"', add
label define sd08a_age_lbl 02 `"2"', add
label define sd08a_age_lbl 03 `"3"', add
label define sd08a_age_lbl 04 `"4"', add
label define sd08a_age_lbl 05 `"5"', add
label define sd08a_age_lbl 06 `"6"', add
label define sd08a_age_lbl 07 `"7"', add
label define sd08a_age_lbl 08 `"8"', add
label define sd08a_age_lbl 09 `"9"', add
label define sd08a_age_lbl 10 `"10"', add
label define sd08a_age_lbl 11 `"11"', add
label define sd08a_age_lbl 12 `"12"', add
label define sd08a_age_lbl 13 `"13"', add
label define sd08a_age_lbl 14 `"14"', add
label define sd08a_age_lbl 15 `"15"', add
label define sd08a_age_lbl 16 `"16"', add
label define sd08a_age_lbl 17 `"17"', add
label define sd08a_age_lbl 18 `"18"', add
label define sd08a_age_lbl 19 `"19"', add
label define sd08a_age_lbl 20 `"20"', add
label define sd08a_age_lbl 21 `"21"', add
label define sd08a_age_lbl 22 `"22"', add
label define sd08a_age_lbl 23 `"23"', add
label define sd08a_age_lbl 24 `"24"', add
label define sd08a_age_lbl 25 `"25"', add
label define sd08a_age_lbl 26 `"26"', add
label define sd08a_age_lbl 27 `"27"', add
label define sd08a_age_lbl 28 `"28"', add
label define sd08a_age_lbl 29 `"29"', add
label define sd08a_age_lbl 30 `"30"', add
label define sd08a_age_lbl 31 `"31"', add
label define sd08a_age_lbl 32 `"32"', add
label define sd08a_age_lbl 33 `"33"', add
label define sd08a_age_lbl 34 `"34"', add
label define sd08a_age_lbl 35 `"35"', add
label define sd08a_age_lbl 36 `"36"', add
label define sd08a_age_lbl 37 `"37"', add
label define sd08a_age_lbl 38 `"38"', add
label define sd08a_age_lbl 39 `"39"', add
label define sd08a_age_lbl 40 `"40"', add
label define sd08a_age_lbl 41 `"41"', add
label define sd08a_age_lbl 42 `"42"', add
label define sd08a_age_lbl 43 `"43"', add
label define sd08a_age_lbl 44 `"44"', add
label define sd08a_age_lbl 45 `"45"', add
label define sd08a_age_lbl 46 `"46"', add
label define sd08a_age_lbl 47 `"47"', add
label define sd08a_age_lbl 48 `"48"', add
label define sd08a_age_lbl 49 `"49"', add
label define sd08a_age_lbl 50 `"50"', add
label define sd08a_age_lbl 51 `"51"', add
label define sd08a_age_lbl 52 `"52"', add
label define sd08a_age_lbl 53 `"53"', add
label define sd08a_age_lbl 54 `"54"', add
label define sd08a_age_lbl 55 `"55"', add
label define sd08a_age_lbl 56 `"56"', add
label define sd08a_age_lbl 57 `"57"', add
label define sd08a_age_lbl 58 `"58"', add
label define sd08a_age_lbl 59 `"59"', add
label define sd08a_age_lbl 60 `"60"', add
label define sd08a_age_lbl 61 `"61"', add
label define sd08a_age_lbl 62 `"62"', add
label define sd08a_age_lbl 63 `"63"', add
label define sd08a_age_lbl 64 `"64"', add
label define sd08a_age_lbl 65 `"65"', add
label define sd08a_age_lbl 66 `"66"', add
label define sd08a_age_lbl 67 `"67"', add
label define sd08a_age_lbl 68 `"68"', add
label define sd08a_age_lbl 69 `"69"', add
label define sd08a_age_lbl 70 `"70"', add
label define sd08a_age_lbl 71 `"71"', add
label define sd08a_age_lbl 72 `"72"', add
label define sd08a_age_lbl 73 `"73"', add
label define sd08a_age_lbl 74 `"74"', add
label define sd08a_age_lbl 75 `"75"', add
label define sd08a_age_lbl 76 `"76"', add
label define sd08a_age_lbl 77 `"77"', add
label define sd08a_age_lbl 78 `"78"', add
label define sd08a_age_lbl 79 `"79"', add
label define sd08a_age_lbl 80 `"80"', add
label define sd08a_age_lbl 81 `"81"', add
label define sd08a_age_lbl 82 `"82"', add
label define sd08a_age_lbl 83 `"83"', add
label define sd08a_age_lbl 84 `"84"', add
label define sd08a_age_lbl 85 `"85"', add
label define sd08a_age_lbl 86 `"86"', add
label define sd08a_age_lbl 87 `"87"', add
label define sd08a_age_lbl 88 `"88"', add
label define sd08a_age_lbl 89 `"89"', add
label define sd08a_age_lbl 90 `"90"', add
label define sd08a_age_lbl 91 `"91"', add
label define sd08a_age_lbl 92 `"92"', add
label define sd08a_age_lbl 93 `"93"', add
label define sd08a_age_lbl 94 `"94"', add
label define sd08a_age_lbl 95 `"95 years and above"', add
label values sd08a_age sd08a_age_lbl

label define sd08a_nation_lbl 01 `"Sudanese"'
label define sd08a_nation_lbl 02 `"Egyptian"', add
label define sd08a_nation_lbl 03 `"Libyan"', add
label define sd08a_nation_lbl 04 `"Eritrean"', add
label define sd08a_nation_lbl 05 `"Ethiopian"', add
label define sd08a_nation_lbl 06 `"Ugandan"', add
label define sd08a_nation_lbl 07 `"Kenyan"', add
label define sd08a_nation_lbl 08 `"Congolese - DRC"', add
label define sd08a_nation_lbl 09 `"Chadian"', add
label define sd08a_nation_lbl 10 `"Central African"', add
label define sd08a_nation_lbl 11 `"Nigerian"', add
label define sd08a_nation_lbl 12 `"Malian"', add
label define sd08a_nation_lbl 13 `"Chinese"', add
label define sd08a_nation_lbl 14 `"Indian"', add
label define sd08a_nation_lbl 15 `"Other countries"', add
label values sd08a_nation sd08a_nation_lbl

label define sd08a_reggroup_lbl 1 `"Northern Sudanese"'
label define sd08a_reggroup_lbl 2 `"Southern Sudanese"', add
label define sd08a_reggroup_lbl 3 `"Non-Sudanese"', add
label values sd08a_reggroup sd08a_reggroup_lbl

label define sd08a_orregion_lbl 01 `"Northern"'
label define sd08a_orregion_lbl 02 `"Eastern"', add
label define sd08a_orregion_lbl 03 `"Khartoum"', add
label define sd08a_orregion_lbl 04 `"Central"', add
label define sd08a_orregion_lbl 05 `"Kordofan"', add
label define sd08a_orregion_lbl 06 `"Darfur"', add
label define sd08a_orregion_lbl 07 `"Upper Nile"', add
label define sd08a_orregion_lbl 08 `"Bahr El Ghazal"', add
label define sd08a_orregion_lbl 09 `"Equatoria"', add
label define sd08a_orregion_lbl 10 `"Not Sudan"', add
label define sd08a_orregion_lbl 11 `"Unknown"', add
label values sd08a_orregion sd08a_orregion_lbl

label define sd08a_bplstate_lbl 11 `"Northern"'
label define sd08a_bplstate_lbl 12 `"Nahr El Nil"', add
label define sd08a_bplstate_lbl 21 `"Red Sea"', add
label define sd08a_bplstate_lbl 22 `"Kassala"', add
label define sd08a_bplstate_lbl 23 `"Al Gedarif"', add
label define sd08a_bplstate_lbl 31 `"Khartoum"', add
label define sd08a_bplstate_lbl 41 `"Al Gezira"', add
label define sd08a_bplstate_lbl 42 `"White Nile"', add
label define sd08a_bplstate_lbl 43 `"Sinnar"', add
label define sd08a_bplstate_lbl 44 `"Blue Nile"', add
label define sd08a_bplstate_lbl 51 `"North Kordofan"', add
label define sd08a_bplstate_lbl 52 `"South Kordofan"', add
label define sd08a_bplstate_lbl 61 `"North Darfur"', add
label define sd08a_bplstate_lbl 62 `"West Darfur"', add
label define sd08a_bplstate_lbl 63 `"South Darfur"', add
label define sd08a_bplstate_lbl 71 `"Upper Nile"', add
label define sd08a_bplstate_lbl 72 `"Jonglei"', add
label define sd08a_bplstate_lbl 73 `"Unity"', add
label define sd08a_bplstate_lbl 81 `"Warrap"', add
label define sd08a_bplstate_lbl 82 `"Northern Bahr El Ghazal"', add
label define sd08a_bplstate_lbl 83 `"Western Bahr El Ghazal"', add
label define sd08a_bplstate_lbl 84 `"Lakes"', add
label define sd08a_bplstate_lbl 91 `"Western Equatoria"', add
label define sd08a_bplstate_lbl 92 `"Central Equatoria"', add
label define sd08a_bplstate_lbl 93 `"Eastern Equatoria"', add
label define sd08a_bplstate_lbl 99 `"Abroad"', add
label values sd08a_bplstate sd08a_bplstate_lbl

label define sd08a_ustate_lbl 11 `"Northern"'
label define sd08a_ustate_lbl 12 `"Nahr El Nil"', add
label define sd08a_ustate_lbl 21 `"Red Sea"', add
label define sd08a_ustate_lbl 22 `"Kassala"', add
label define sd08a_ustate_lbl 23 `"Al Gedarif"', add
label define sd08a_ustate_lbl 31 `"Khartoum"', add
label define sd08a_ustate_lbl 41 `"Al Gezira"', add
label define sd08a_ustate_lbl 42 `"White Nile"', add
label define sd08a_ustate_lbl 43 `"Sinnar"', add
label define sd08a_ustate_lbl 44 `"Blue Nile"', add
label define sd08a_ustate_lbl 51 `"North Kordofan"', add
label define sd08a_ustate_lbl 52 `"South Kordofan"', add
label define sd08a_ustate_lbl 61 `"North Darfur"', add
label define sd08a_ustate_lbl 62 `"West Darfur"', add
label define sd08a_ustate_lbl 63 `"South Darfur"', add
label define sd08a_ustate_lbl 71 `"Upper Nile"', add
label define sd08a_ustate_lbl 72 `"Jonglei"', add
label define sd08a_ustate_lbl 73 `"Unity"', add
label define sd08a_ustate_lbl 81 `"Warrap"', add
label define sd08a_ustate_lbl 82 `"Northern Bahr El Ghazal"', add
label define sd08a_ustate_lbl 83 `"Western Bahr El Ghazal"', add
label define sd08a_ustate_lbl 84 `"Lakes"', add
label define sd08a_ustate_lbl 91 `"Western Equatoria"', add
label define sd08a_ustate_lbl 92 `"Central Equatoria"', add
label define sd08a_ustate_lbl 93 `"Eastern Equatoria"', add
label define sd08a_ustate_lbl 99 `"Abroad"', add
label values sd08a_ustate sd08a_ustate_lbl

label define sd08a_durres_lbl 00 `"0"'
label define sd08a_durres_lbl 01 `"1"', add
label define sd08a_durres_lbl 02 `"2"', add
label define sd08a_durres_lbl 03 `"3"', add
label define sd08a_durres_lbl 04 `"4"', add
label define sd08a_durres_lbl 05 `"5"', add
label define sd08a_durres_lbl 06 `"6"', add
label define sd08a_durres_lbl 07 `"7"', add
label define sd08a_durres_lbl 08 `"8"', add
label define sd08a_durres_lbl 09 `"9"', add
label define sd08a_durres_lbl 10 `"10"', add
label define sd08a_durres_lbl 11 `"11"', add
label define sd08a_durres_lbl 12 `"12"', add
label define sd08a_durres_lbl 13 `"13"', add
label define sd08a_durres_lbl 14 `"14"', add
label define sd08a_durres_lbl 15 `"15"', add
label define sd08a_durres_lbl 16 `"16"', add
label define sd08a_durres_lbl 17 `"17"', add
label define sd08a_durres_lbl 18 `"18"', add
label define sd08a_durres_lbl 19 `"19"', add
label define sd08a_durres_lbl 20 `"20"', add
label define sd08a_durres_lbl 21 `"21"', add
label define sd08a_durres_lbl 22 `"22"', add
label define sd08a_durres_lbl 23 `"23"', add
label define sd08a_durres_lbl 24 `"24"', add
label define sd08a_durres_lbl 25 `"25"', add
label define sd08a_durres_lbl 26 `"26"', add
label define sd08a_durres_lbl 27 `"27"', add
label define sd08a_durres_lbl 28 `"28"', add
label define sd08a_durres_lbl 29 `"29"', add
label define sd08a_durres_lbl 30 `"30"', add
label define sd08a_durres_lbl 31 `"31"', add
label define sd08a_durres_lbl 32 `"32"', add
label define sd08a_durres_lbl 33 `"33"', add
label define sd08a_durres_lbl 34 `"34"', add
label define sd08a_durres_lbl 35 `"35"', add
label define sd08a_durres_lbl 36 `"36"', add
label define sd08a_durres_lbl 37 `"37"', add
label define sd08a_durres_lbl 38 `"38"', add
label define sd08a_durres_lbl 39 `"39"', add
label define sd08a_durres_lbl 40 `"40"', add
label define sd08a_durres_lbl 41 `"41"', add
label define sd08a_durres_lbl 42 `"42"', add
label define sd08a_durres_lbl 43 `"43"', add
label define sd08a_durres_lbl 44 `"44"', add
label define sd08a_durres_lbl 45 `"45"', add
label define sd08a_durres_lbl 46 `"46"', add
label define sd08a_durres_lbl 47 `"47"', add
label define sd08a_durres_lbl 48 `"48"', add
label define sd08a_durres_lbl 49 `"49"', add
label define sd08a_durres_lbl 50 `"50"', add
label define sd08a_durres_lbl 51 `"51"', add
label define sd08a_durres_lbl 52 `"52"', add
label define sd08a_durres_lbl 53 `"53"', add
label define sd08a_durres_lbl 54 `"54"', add
label define sd08a_durres_lbl 55 `"55"', add
label define sd08a_durres_lbl 56 `"56"', add
label define sd08a_durres_lbl 57 `"57"', add
label define sd08a_durres_lbl 58 `"58"', add
label define sd08a_durres_lbl 59 `"59"', add
label define sd08a_durres_lbl 60 `"60"', add
label define sd08a_durres_lbl 61 `"61"', add
label define sd08a_durres_lbl 62 `"62"', add
label define sd08a_durres_lbl 63 `"63"', add
label define sd08a_durres_lbl 64 `"64"', add
label define sd08a_durres_lbl 65 `"65"', add
label define sd08a_durres_lbl 66 `"66"', add
label define sd08a_durres_lbl 67 `"67"', add
label define sd08a_durres_lbl 68 `"68"', add
label define sd08a_durres_lbl 69 `"69"', add
label define sd08a_durres_lbl 70 `"70"', add
label define sd08a_durres_lbl 71 `"71"', add
label define sd08a_durres_lbl 72 `"72"', add
label define sd08a_durres_lbl 73 `"73"', add
label define sd08a_durres_lbl 74 `"74"', add
label define sd08a_durres_lbl 75 `"75"', add
label define sd08a_durres_lbl 76 `"76"', add
label define sd08a_durres_lbl 77 `"77"', add
label define sd08a_durres_lbl 78 `"78"', add
label define sd08a_durres_lbl 79 `"79"', add
label define sd08a_durres_lbl 80 `"80"', add
label define sd08a_durres_lbl 81 `"81"', add
label define sd08a_durres_lbl 82 `"82"', add
label define sd08a_durres_lbl 83 `"83"', add
label define sd08a_durres_lbl 84 `"84"', add
label define sd08a_durres_lbl 85 `"85"', add
label define sd08a_durres_lbl 86 `"86"', add
label define sd08a_durres_lbl 87 `"87"', add
label define sd08a_durres_lbl 88 `"88"', add
label define sd08a_durres_lbl 89 `"89"', add
label define sd08a_durres_lbl 90 `"90"', add
label define sd08a_durres_lbl 91 `"91"', add
label define sd08a_durres_lbl 92 `"92"', add
label define sd08a_durres_lbl 93 `"93"', add
label define sd08a_durres_lbl 94 `"94"', add
label define sd08a_durres_lbl 95 `"95 years and beyond"', add
label define sd08a_durres_lbl 99 `"Unknown"', add
label values sd08a_durres sd08a_durres_lbl

label define sd08a_migstate_lbl 11 `"Northern"'
label define sd08a_migstate_lbl 12 `"Nahr El Nil"', add
label define sd08a_migstate_lbl 21 `"Red Sea"', add
label define sd08a_migstate_lbl 22 `"Kassala"', add
label define sd08a_migstate_lbl 23 `"Al Gedarif"', add
label define sd08a_migstate_lbl 31 `"Khartoum"', add
label define sd08a_migstate_lbl 41 `"Al Gezira"', add
label define sd08a_migstate_lbl 42 `"White Nile"', add
label define sd08a_migstate_lbl 43 `"Sinnar"', add
label define sd08a_migstate_lbl 44 `"Blue Nile"', add
label define sd08a_migstate_lbl 51 `"North Kordofan"', add
label define sd08a_migstate_lbl 52 `"South Kordofan"', add
label define sd08a_migstate_lbl 61 `"North Darfur"', add
label define sd08a_migstate_lbl 62 `"West Darfur"', add
label define sd08a_migstate_lbl 63 `"South Darfur"', add
label define sd08a_migstate_lbl 71 `"Upper Nile"', add
label define sd08a_migstate_lbl 72 `"Jonglei"', add
label define sd08a_migstate_lbl 73 `"Unity"', add
label define sd08a_migstate_lbl 81 `"Warrap"', add
label define sd08a_migstate_lbl 82 `"Northern Bahr El Ghazal"', add
label define sd08a_migstate_lbl 83 `"Western Bahr El Ghazal"', add
label define sd08a_migstate_lbl 84 `"Lakes"', add
label define sd08a_migstate_lbl 91 `"Western Equatoria"', add
label define sd08a_migstate_lbl 92 `"Central Equatoria"', add
label define sd08a_migstate_lbl 93 `"Eastern Equatoria"', add
label define sd08a_migstate_lbl 98 `"Abroad"', add
label values sd08a_migstate sd08a_migstate_lbl

label define sd08a_fathlive_lbl 1 `"Father alive"'
label define sd08a_fathlive_lbl 2 `"Father dead"', add
label values sd08a_fathlive sd08a_fathlive_lbl

label define sd08a_limleg_lbl 1 `"Yes"'
label define sd08a_limleg_lbl 2 `"No"', add
label values sd08a_limleg sd08a_limleg_lbl

label define sd08a_limarm_lbl 1 `"Yes"'
label define sd08a_limarm_lbl 2 `"No"', add
label values sd08a_limarm sd08a_limarm_lbl

label define sd08a_lossarm_lbl 1 `"Yes"'
label define sd08a_lossarm_lbl 2 `"No"', add
label values sd08a_lossarm sd08a_lossarm_lbl

label define sd08a_diffhear_lbl 1 `"Yes"'
label define sd08a_diffhear_lbl 2 `"No"', add
label values sd08a_diffhear sd08a_diffhear_lbl

label define sd08a_deaf_lbl 1 `"Yes"'
label define sd08a_deaf_lbl 2 `"No"', add
label values sd08a_deaf sd08a_deaf_lbl

label define sd08a_diffsee_lbl 1 `"Yes"'
label define sd08a_diffsee_lbl 2 `"No"', add
label values sd08a_diffsee sd08a_diffsee_lbl

label define sd08a_blind_lbl 1 `"Yes"'
label define sd08a_blind_lbl 2 `"No"', add
label values sd08a_blind sd08a_blind_lbl

label define sd08a_diffspk_lbl 1 `"Yes"'
label define sd08a_diffspk_lbl 2 `"No"', add
label values sd08a_diffspk sd08a_diffspk_lbl

label define sd08a_mute_lbl 1 `"Yes"'
label define sd08a_mute_lbl 2 `"No"', add
label values sd08a_mute sd08a_mute_lbl

label define sd08a_diffment_lbl 1 `"Yes"'
label define sd08a_diffment_lbl 2 `"No"', add
label values sd08a_diffment sd08a_diffment_lbl

label define sd08a_disab_lbl 1 `"No disability"'
label define sd08a_disab_lbl 2 `"Have disability"', add
label values sd08a_disab sd08a_disab_lbl

label define sd08a_school_lbl 1 `"Currently attending"'
label define sd08a_school_lbl 2 `"Previously attended"', add
label define sd08a_school_lbl 3 `"Never attended"', add
label define sd08a_school_lbl 9 `"NIU (not in universe)"', add
label values sd08a_school sd08a_school_lbl

label define sd08a_attend_lbl 01 `"P1"'
label define sd08a_attend_lbl 02 `"P2"', add
label define sd08a_attend_lbl 03 `"P3"', add
label define sd08a_attend_lbl 04 `"P4"', add
label define sd08a_attend_lbl 05 `"P5"', add
label define sd08a_attend_lbl 06 `"P6"', add
label define sd08a_attend_lbl 07 `"P7"', add
label define sd08a_attend_lbl 08 `"P8"', add
label define sd08a_attend_lbl 09 `"S1"', add
label define sd08a_attend_lbl 10 `"S2"', add
label define sd08a_attend_lbl 11 `"S3"', add
label define sd08a_attend_lbl 12 `"S4"', add
label define sd08a_attend_lbl 13 `"S5"', add
label define sd08a_attend_lbl 14 `"S6"', add
label define sd08a_attend_lbl 15 `"Post secondary/diploma program"', add
label define sd08a_attend_lbl 16 `"College"', add
label define sd08a_attend_lbl 17 `"University"', add
label define sd08a_attend_lbl 18 `"Masters program"', add
label define sd08a_attend_lbl 19 `"PhD program"', add
label define sd08a_attend_lbl 98 `"Unknown"', add
label define sd08a_attend_lbl 99 `"NIU (not in universe)"', add
label values sd08a_attend sd08a_attend_lbl

label define sd08a_edattain_lbl 01 `"No qualification"'
label define sd08a_edattain_lbl 02 `"Incomplete primary"', add
label define sd08a_edattain_lbl 03 `"Primary 4"', add
label define sd08a_edattain_lbl 04 `"Primary 6"', add
label define sd08a_edattain_lbl 05 `"Primary 8"', add
label define sd08a_edattain_lbl 06 `"Junior 3"', add
label define sd08a_edattain_lbl 07 `"Junior 4"', add
label define sd08a_edattain_lbl 08 `"Secondary 3"', add
label define sd08a_edattain_lbl 09 `"Secondary 4"', add
label define sd08a_edattain_lbl 10 `"Secondary 5"', add
label define sd08a_edattain_lbl 11 `"Secondary 6"', add
label define sd08a_edattain_lbl 12 `"Post-secondary diploma"', add
label define sd08a_edattain_lbl 13 `"University first degree"', add
label define sd08a_edattain_lbl 14 `"Post-graduate diploma"', add
label define sd08a_edattain_lbl 15 `"Masters degree"', add
label define sd08a_edattain_lbl 16 `"PhD degree"', add
label define sd08a_edattain_lbl 17 `"Khalwa"', add
label define sd08a_edattain_lbl 98 `"Unknown"', add
label define sd08a_edattain_lbl 99 `"NIU (not in universe)"', add
label values sd08a_edattain sd08a_edattain_lbl

label define sd08a_empstat_lbl 1 `"Worked last week"'
label define sd08a_empstat_lbl 2 `"Temporarily away from job"', add
label define sd08a_empstat_lbl 3 `"Worked before and seeking work"', add
label define sd08a_empstat_lbl 4 `"First time job seeker"', add
label define sd08a_empstat_lbl 5 `"Not working or seeking work"', add
label define sd08a_empstat_lbl 9 `"NIU (not in universe)"', add
label values sd08a_empstat sd08a_empstat_lbl

label define sd08a_reason_lbl 1 `"No hope to find job"'
label define sd08a_reason_lbl 2 `"Full-time student"', add
label define sd08a_reason_lbl 3 `"Income recipient"', add
label define sd08a_reason_lbl 4 `"Too old"', add
label define sd08a_reason_lbl 5 `"Disabled/too sick"', add
label define sd08a_reason_lbl 6 `"Full-time homemaker"', add
label define sd08a_reason_lbl 7 `"Pensioner/retired"', add
label define sd08a_reason_lbl 8 `"Unknown"', add
label define sd08a_reason_lbl 9 `"NIU (not in universe)"', add
label values sd08a_reason sd08a_reason_lbl

label define sd08a_occ_lbl 01 `"Commissioned armed forces officers"'
label define sd08a_occ_lbl 02 `"Non-commissioned armed forces officers"', add
label define sd08a_occ_lbl 03 `"Armed forces occupations, other ranks"', add
label define sd08a_occ_lbl 11 `"Chief executives senior officials and legislators"', add
label define sd08a_occ_lbl 12 `"Administrative and commercial managers"', add
label define sd08a_occ_lbl 13 `"Production and specialized services managers"', add
label define sd08a_occ_lbl 14 `"Hospitality, retail and other services managers"', add
label define sd08a_occ_lbl 21 `"Science and engineering professionals"', add
label define sd08a_occ_lbl 22 `"Health professionals"', add
label define sd08a_occ_lbl 23 `"Teaching professionals"', add
label define sd08a_occ_lbl 24 `"Business and administration professionals"', add
label define sd08a_occ_lbl 25 `"Information and communications technology (ICT) professionals"', add
label define sd08a_occ_lbl 26 `"Legal, social and cultural professionals"', add
label define sd08a_occ_lbl 31 `"Science and engineering associate professionals"', add
label define sd08a_occ_lbl 32 `"Health associate professionals"', add
label define sd08a_occ_lbl 33 `"Business and administration associate professionals"', add
label define sd08a_occ_lbl 34 `"Legal, social, cultural and related associate professionals"', add
label define sd08a_occ_lbl 35 `"Information and communications technicians (ICT)"', add
label define sd08a_occ_lbl 41 `"General and keyboard clerks"', add
label define sd08a_occ_lbl 42 `"Customer services clerks"', add
label define sd08a_occ_lbl 43 `"Numerical and material recording clerks"', add
label define sd08a_occ_lbl 44 `"Other clerical support workers"', add
label define sd08a_occ_lbl 51 `"Personal service workers"', add
label define sd08a_occ_lbl 52 `"Sales workers"', add
label define sd08a_occ_lbl 54 `"Protective services workers"', add
label define sd08a_occ_lbl 61 `"Market-oriented skilled agricultural workers"', add
label define sd08a_occ_lbl 62 `"Market-oriented skilled forestry, fishery and hunting workers"', add
label define sd08a_occ_lbl 63 `"Subsistence farmers, fishers, hunters and gatherers"', add
label define sd08a_occ_lbl 71 `"Building and related trades workers, excluding electricians"', add
label define sd08a_occ_lbl 72 `"Metal, machinery and related trades workers"', add
label define sd08a_occ_lbl 73 `"Handicraft and printing workers"', add
label define sd08a_occ_lbl 74 `"Electrical and electronic trades workers"', add
label define sd08a_occ_lbl 75 `"Food processing, wood working, garment and other craft and related trades workers"', add
label define sd08a_occ_lbl 81 `"Stationary plant and machine operators"', add
label define sd08a_occ_lbl 83 `"Drivers and mobile plant operators"', add
label define sd08a_occ_lbl 91 `"Cleaners and helpers"', add
label define sd08a_occ_lbl 92 `"Agricultural, forestry and fishery labourers"', add
label define sd08a_occ_lbl 93 `"Labourers in mining, construction, manufacturing and transport"', add
label define sd08a_occ_lbl 94 `"Food preparation assistants"', add
label define sd08a_occ_lbl 95 `"Street and related sales and service workers"', add
label define sd08a_occ_lbl 96 `"Refuse workers and other elementary workers"', add
label define sd08a_occ_lbl 90 `"Other occupation, response suppressed"', add
label define sd08a_occ_lbl 98 `"Unknown"', add
label define sd08a_occ_lbl 99 `"NIU (not in universe)"', add
label values sd08a_occ sd08a_occ_lbl

label define sd08a_marst_lbl 1 `"Never married"'
label define sd08a_marst_lbl 2 `"Married"', add
label define sd08a_marst_lbl 3 `"Widowed"', add
label define sd08a_marst_lbl 4 `"Divorced"', add
label define sd08a_marst_lbl 9 `"NIU (not in universe)"', add
label values sd08a_marst sd08a_marst_lbl

label define sd08a_chbornf_lbl 00 `"0"'
label define sd08a_chbornf_lbl 01 `"1"', add
label define sd08a_chbornf_lbl 02 `"2"', add
label define sd08a_chbornf_lbl 03 `"3"', add
label define sd08a_chbornf_lbl 04 `"4"', add
label define sd08a_chbornf_lbl 05 `"5"', add
label define sd08a_chbornf_lbl 06 `"6"', add
label define sd08a_chbornf_lbl 07 `"7"', add
label define sd08a_chbornf_lbl 08 `"8"', add
label define sd08a_chbornf_lbl 09 `"9"', add
label define sd08a_chbornf_lbl 10 `"10"', add
label define sd08a_chbornf_lbl 11 `"11"', add
label define sd08a_chbornf_lbl 12 `"12"', add
label define sd08a_chbornf_lbl 13 `"13"', add
label define sd08a_chbornf_lbl 14 `"14+"', add
label define sd08a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values sd08a_chbornf sd08a_chbornf_lbl

label define sd08a_homemal_lbl 00 `"0"'
label define sd08a_homemal_lbl 01 `"1"', add
label define sd08a_homemal_lbl 02 `"2"', add
label define sd08a_homemal_lbl 03 `"3"', add
label define sd08a_homemal_lbl 04 `"4"', add
label define sd08a_homemal_lbl 05 `"5"', add
label define sd08a_homemal_lbl 06 `"6"', add
label define sd08a_homemal_lbl 07 `"7"', add
label define sd08a_homemal_lbl 08 `"8"', add
label define sd08a_homemal_lbl 09 `"9"', add
label define sd08a_homemal_lbl 10 `"10"', add
label define sd08a_homemal_lbl 11 `"11"', add
label define sd08a_homemal_lbl 12 `"12+"', add
label define sd08a_homemal_lbl 99 `"NIU (not in universe)"', add
label values sd08a_homemal sd08a_homemal_lbl

label define sd08a_homefem_lbl 00 `"0"'
label define sd08a_homefem_lbl 01 `"1"', add
label define sd08a_homefem_lbl 02 `"2"', add
label define sd08a_homefem_lbl 03 `"3"', add
label define sd08a_homefem_lbl 04 `"4"', add
label define sd08a_homefem_lbl 05 `"5"', add
label define sd08a_homefem_lbl 06 `"6"', add
label define sd08a_homefem_lbl 07 `"7"', add
label define sd08a_homefem_lbl 08 `"8"', add
label define sd08a_homefem_lbl 09 `"9"', add
label define sd08a_homefem_lbl 10 `"10+"', add
label define sd08a_homefem_lbl 99 `"NIU (not in universe)"', add
label values sd08a_homefem sd08a_homefem_lbl

label define sd08a_awaymal_lbl 00 `"0"'
label define sd08a_awaymal_lbl 01 `"1"', add
label define sd08a_awaymal_lbl 02 `"2"', add
label define sd08a_awaymal_lbl 03 `"3"', add
label define sd08a_awaymal_lbl 04 `"4"', add
label define sd08a_awaymal_lbl 05 `"5"', add
label define sd08a_awaymal_lbl 06 `"6"', add
label define sd08a_awaymal_lbl 07 `"7"', add
label define sd08a_awaymal_lbl 08 `"8"', add
label define sd08a_awaymal_lbl 09 `"9"', add
label define sd08a_awaymal_lbl 10 `"10+"', add
label define sd08a_awaymal_lbl 99 `"NIU (not in universe)"', add
label values sd08a_awaymal sd08a_awaymal_lbl

label define sd08a_awayfem_lbl 00 `"0"'
label define sd08a_awayfem_lbl 01 `"1"', add
label define sd08a_awayfem_lbl 02 `"2"', add
label define sd08a_awayfem_lbl 03 `"3"', add
label define sd08a_awayfem_lbl 04 `"4"', add
label define sd08a_awayfem_lbl 05 `"5"', add
label define sd08a_awayfem_lbl 06 `"6"', add
label define sd08a_awayfem_lbl 07 `"7"', add
label define sd08a_awayfem_lbl 08 `"8"', add
label define sd08a_awayfem_lbl 09 `"9"', add
label define sd08a_awayfem_lbl 10 `"10+"', add
label define sd08a_awayfem_lbl 99 `"NIU (not in universe)"', add
label values sd08a_awayfem sd08a_awayfem_lbl

label define sd08a_deadmal_lbl 00 `"0"'
label define sd08a_deadmal_lbl 01 `"1"', add
label define sd08a_deadmal_lbl 02 `"2"', add
label define sd08a_deadmal_lbl 03 `"3"', add
label define sd08a_deadmal_lbl 04 `"4"', add
label define sd08a_deadmal_lbl 05 `"5"', add
label define sd08a_deadmal_lbl 06 `"6"', add
label define sd08a_deadmal_lbl 07 `"7"', add
label define sd08a_deadmal_lbl 08 `"8"', add
label define sd08a_deadmal_lbl 09 `"9"', add
label define sd08a_deadmal_lbl 10 `"10+"', add
label define sd08a_deadmal_lbl 99 `"NIU (not in universe)"', add
label values sd08a_deadmal sd08a_deadmal_lbl

label define sd08a_deadfem_lbl 00 `"0"'
label define sd08a_deadfem_lbl 01 `"1"', add
label define sd08a_deadfem_lbl 02 `"2"', add
label define sd08a_deadfem_lbl 03 `"3"', add
label define sd08a_deadfem_lbl 04 `"4"', add
label define sd08a_deadfem_lbl 05 `"5"', add
label define sd08a_deadfem_lbl 06 `"6"', add
label define sd08a_deadfem_lbl 07 `"7"', add
label define sd08a_deadfem_lbl 08 `"8"', add
label define sd08a_deadfem_lbl 09 `"9"', add
label define sd08a_deadfem_lbl 10 `"10+"', add
label define sd08a_deadfem_lbl 99 `"NIU (not in universe)"', add
label values sd08a_deadfem sd08a_deadfem_lbl

label define sd08a_births_lbl 1 `"Yes"'
label define sd08a_births_lbl 2 `"No"', add
label define sd08a_births_lbl 8 `"Unknown"', add
label define sd08a_births_lbl 9 `"NIU (not in universe)"', add
label values sd08a_births sd08a_births_lbl

label define sd08a_birthsm_lbl 0 `"0"'
label define sd08a_birthsm_lbl 1 `"1"', add
label define sd08a_birthsm_lbl 2 `"2"', add
label define sd08a_birthsm_lbl 8 `"Unknown"', add
label define sd08a_birthsm_lbl 9 `"NIU (not in universe)"', add
label values sd08a_birthsm sd08a_birthsm_lbl

label define sd08a_birthsf_lbl 0 `"0"'
label define sd08a_birthsf_lbl 1 `"1"', add
label define sd08a_birthsf_lbl 2 `"2"', add
label define sd08a_birthsf_lbl 8 `"Unknown"', add
label define sd08a_birthsf_lbl 9 `"NIU (not in universe)"', add
label values sd08a_birthsf sd08a_birthsf_lbl

label define sd08a_livbthm_lbl 0 `"0"'
label define sd08a_livbthm_lbl 1 `"1"', add
label define sd08a_livbthm_lbl 2 `"2"', add
label define sd08a_livbthm_lbl 8 `"Unknown"', add
label define sd08a_livbthm_lbl 9 `"NIU (not in universe)"', add
label values sd08a_livbthm sd08a_livbthm_lbl

label define sd08a_livbthf_lbl 0 `"0"'
label define sd08a_livbthf_lbl 1 `"1"', add
label define sd08a_livbthf_lbl 2 `"2"', add
label define sd08a_livbthf_lbl 8 `"Unknown"', add
label define sd08a_livbthf_lbl 9 `"NIU (not in universe)"', add
label values sd08a_livbthf sd08a_livbthf_lbl

label define sd08a_qage_lbl 0 `"No imputation"'
label define sd08a_qage_lbl 1 `"Logical from blank"', add
label define sd08a_qage_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qage_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qage_lbl 4 `"Imputation from blank"', add
label define sd08a_qage_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qage_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qage sd08a_qage_lbl

label define sd08a_qreggrp_lbl 0 `"No imputation"'
label define sd08a_qreggrp_lbl 1 `"Logical from blank"', add
label define sd08a_qreggrp_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qreggrp_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qreggrp_lbl 4 `"Imputation from blank"', add
label define sd08a_qreggrp_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qreggrp_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qreggrp sd08a_qreggrp_lbl

label define sd08a_qorreg_lbl 0 `"No imputation"'
label define sd08a_qorreg_lbl 1 `"Logical from blank"', add
label define sd08a_qorreg_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qorreg_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qorreg_lbl 4 `"Imputation from blank"', add
label define sd08a_qorreg_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qorreg_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qorreg sd08a_qorreg_lbl

label define sd08a_qbplstat_lbl 0 `"No imputation"'
label define sd08a_qbplstat_lbl 1 `"Logical from blank"', add
label define sd08a_qbplstat_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qbplstat_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qbplstat_lbl 4 `"Imputation from blank"', add
label define sd08a_qbplstat_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qbplstat_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qbplstat sd08a_qbplstat_lbl

label define sd08a_qustate_lbl 0 `"No imputation"'
label define sd08a_qustate_lbl 1 `"Logical from blank"', add
label define sd08a_qustate_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qustate_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qustate_lbl 4 `"Imputation from blank"', add
label define sd08a_qustate_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qustate_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qustate sd08a_qustate_lbl

label define sd08a_qdurres_lbl 0 `"No imputation"'
label define sd08a_qdurres_lbl 1 `"Logical from blank"', add
label define sd08a_qdurres_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qdurres_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qdurres_lbl 4 `"Imputation from blank"', add
label define sd08a_qdurres_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qdurres_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qdurres sd08a_qdurres_lbl

label define sd08a_qmigstat_lbl 0 `"No imputation"'
label define sd08a_qmigstat_lbl 1 `"Logical from blank"', add
label define sd08a_qmigstat_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qmigstat_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qmigstat_lbl 4 `"Imputation from blank"', add
label define sd08a_qmigstat_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qmigstat_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qmigstat sd08a_qmigstat_lbl

label define sd08a_qmothliv_lbl 0 `"No imputation"'
label define sd08a_qmothliv_lbl 1 `"Logical from blank"', add
label define sd08a_qmothliv_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qmothliv_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qmothliv_lbl 4 `"Imputation from blank"', add
label define sd08a_qmothliv_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qmothliv_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qmothliv sd08a_qmothliv_lbl

label define sd08a_qfathliv_lbl 0 `"No imputation"'
label define sd08a_qfathliv_lbl 1 `"Logical from blank"', add
label define sd08a_qfathliv_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qfathliv_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qfathliv_lbl 4 `"Imputation from blank"', add
label define sd08a_qfathliv_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qfathliv_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qfathliv sd08a_qfathliv_lbl

label define sd08a_qlossleg_lbl 0 `"No imputation"'
label define sd08a_qlossleg_lbl 1 `"Logical from blank"', add
label define sd08a_qlossleg_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qlossleg_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qlossleg_lbl 4 `"Imputation from blank"', add
label define sd08a_qlossleg_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qlossleg_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qlossleg sd08a_qlossleg_lbl

label define sd08a_qlossarm_lbl 0 `"No imputation"'
label define sd08a_qlossarm_lbl 1 `"Logical from blank"', add
label define sd08a_qlossarm_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qlossarm_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qlossarm_lbl 4 `"Imputation from blank"', add
label define sd08a_qlossarm_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qlossarm_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qlossarm sd08a_qlossarm_lbl

label define sd08a_qdeaf_lbl 0 `"No imputation"'
label define sd08a_qdeaf_lbl 1 `"Logical from blank"', add
label define sd08a_qdeaf_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qdeaf_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qdeaf_lbl 4 `"Imputation from blank"', add
label define sd08a_qdeaf_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qdeaf_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qdeaf sd08a_qdeaf_lbl

label define sd08a_qblind_lbl 0 `"No imputation"'
label define sd08a_qblind_lbl 1 `"Logical from blank"', add
label define sd08a_qblind_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qblind_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qblind_lbl 4 `"Imputation from blank"', add
label define sd08a_qblind_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qblind_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qblind sd08a_qblind_lbl

label define sd08a_qmute_lbl 0 `"No imputation"'
label define sd08a_qmute_lbl 1 `"Logical from blank"', add
label define sd08a_qmute_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qmute_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qmute_lbl 4 `"Imputation from blank"', add
label define sd08a_qmute_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qmute_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qmute sd08a_qmute_lbl

label define sd08a_qlit_lbl 0 `"No imputation"'
label define sd08a_qlit_lbl 1 `"Logical from blank"', add
label define sd08a_qlit_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qlit_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qlit_lbl 4 `"Imputation from blank"', add
label define sd08a_qlit_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qlit_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qlit sd08a_qlit_lbl

label define sd08a_qattend_lbl 0 `"No imputation"'
label define sd08a_qattend_lbl 1 `"Logical from blank"', add
label define sd08a_qattend_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qattend_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qattend_lbl 4 `"Imputation from blank"', add
label define sd08a_qattend_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qattend_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qattend sd08a_qattend_lbl

label define sd08a_qedattan_lbl 0 `"No imputation"'
label define sd08a_qedattan_lbl 1 `"Logical from blank"', add
label define sd08a_qedattan_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qedattan_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qedattan_lbl 4 `"Imputation from blank"', add
label define sd08a_qedattan_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qedattan_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qedattan sd08a_qedattan_lbl

label define sd08a_qempstat_lbl 0 `"No imputation"'
label define sd08a_qempstat_lbl 1 `"Logical from blank"', add
label define sd08a_qempstat_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qempstat_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qempstat_lbl 4 `"Imputation from blank"', add
label define sd08a_qempstat_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qempstat_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qempstat sd08a_qempstat_lbl

label define sd08a_qreason_lbl 0 `"No imputation"'
label define sd08a_qreason_lbl 1 `"Logical from blank"', add
label define sd08a_qreason_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qreason_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qreason_lbl 4 `"Imputation from blank"', add
label define sd08a_qreason_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qreason_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qreason sd08a_qreason_lbl

label define sd08a_qocc_lbl 0 `"No imputation"'
label define sd08a_qocc_lbl 1 `"Logical from blank"', add
label define sd08a_qocc_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qocc_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qocc_lbl 4 `"Imputation from blank"', add
label define sd08a_qocc_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qocc_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qocc sd08a_qocc_lbl

label define sd08a_qind_lbl 0 `"No imputation"'
label define sd08a_qind_lbl 1 `"Logical from blank"', add
label define sd08a_qind_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qind_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qind_lbl 4 `"Imputation from blank"', add
label define sd08a_qind_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qind_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qind sd08a_qind_lbl

label define sd08a_qclasswk_lbl 0 `"No imputation"'
label define sd08a_qclasswk_lbl 1 `"Logical from blank"', add
label define sd08a_qclasswk_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qclasswk_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qclasswk_lbl 4 `"Imputation from blank"', add
label define sd08a_qclasswk_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qclasswk_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qclasswk sd08a_qclasswk_lbl

label define sd08a_qmarst_lbl 0 `"No imputation"'
label define sd08a_qmarst_lbl 1 `"Logical from blank"', add
label define sd08a_qmarst_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qmarst_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qmarst_lbl 4 `"Imputation from blank"', add
label define sd08a_qmarst_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qmarst_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qmarst sd08a_qmarst_lbl

label define sd08a_qagemarr_lbl 0 `"No imputation"'
label define sd08a_qagemarr_lbl 1 `"Logical from blank"', add
label define sd08a_qagemarr_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qagemarr_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qagemarr_lbl 4 `"Imputation from blank"', add
label define sd08a_qagemarr_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qagemarr_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qagemarr sd08a_qagemarr_lbl

label define sd08a_qchbornm_lbl 0 `"No imputation"'
label define sd08a_qchbornm_lbl 1 `"Logical from blank"', add
label define sd08a_qchbornm_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qchbornm_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qchbornm_lbl 4 `"Imputation from blank"', add
label define sd08a_qchbornm_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qchbornm_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qchbornm sd08a_qchbornm_lbl

label define sd08a_qchbornf_lbl 0 `"No imputation"'
label define sd08a_qchbornf_lbl 1 `"Logical from blank"', add
label define sd08a_qchbornf_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qchbornf_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qchbornf_lbl 4 `"Imputation from blank"', add
label define sd08a_qchbornf_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qchbornf_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qchbornf sd08a_qchbornf_lbl

label define sd08a_qhomemal_lbl 0 `"No imputation"'
label define sd08a_qhomemal_lbl 1 `"Logical from blank"', add
label define sd08a_qhomemal_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qhomemal_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qhomemal_lbl 4 `"Imputation from blank"', add
label define sd08a_qhomemal_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qhomemal_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qhomemal sd08a_qhomemal_lbl

label define sd08a_qawaymal_lbl 0 `"No imputation"'
label define sd08a_qawaymal_lbl 1 `"Logical from blank"', add
label define sd08a_qawaymal_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qawaymal_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qawaymal_lbl 4 `"Imputation from blank"', add
label define sd08a_qawaymal_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qawaymal_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qawaymal sd08a_qawaymal_lbl

label define sd08a_qawayfem_lbl 0 `"No imputation"'
label define sd08a_qawayfem_lbl 1 `"Logical from blank"', add
label define sd08a_qawayfem_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qawayfem_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qawayfem_lbl 4 `"Imputation from blank"', add
label define sd08a_qawayfem_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qawayfem_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qawayfem sd08a_qawayfem_lbl

label define sd08a_qdeadmal_lbl 0 `"No imputation"'
label define sd08a_qdeadmal_lbl 1 `"Logical from blank"', add
label define sd08a_qdeadmal_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qdeadmal_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qdeadmal_lbl 4 `"Imputation from blank"', add
label define sd08a_qdeadmal_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qdeadmal_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qdeadmal sd08a_qdeadmal_lbl

label define sd08a_qdeadfem_lbl 0 `"No imputation"'
label define sd08a_qdeadfem_lbl 1 `"Logical from blank"', add
label define sd08a_qdeadfem_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qdeadfem_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qdeadfem_lbl 4 `"Imputation from blank"', add
label define sd08a_qdeadfem_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qdeadfem_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qdeadfem sd08a_qdeadfem_lbl

label define sd08a_qbirths_lbl 0 `"No imputation"'
label define sd08a_qbirths_lbl 1 `"Logical from blank"', add
label define sd08a_qbirths_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qbirths_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qbirths_lbl 4 `"Imputation from blank"', add
label define sd08a_qbirths_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qbirths_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qbirths sd08a_qbirths_lbl

label define sd08a_qbirthsm_lbl 0 `"No imputation"'
label define sd08a_qbirthsm_lbl 1 `"Logical from blank"', add
label define sd08a_qbirthsm_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qbirthsm_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qbirthsm_lbl 4 `"Imputation from blank"', add
label define sd08a_qbirthsm_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qbirthsm_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qbirthsm sd08a_qbirthsm_lbl

label define sd08a_qbirthsf_lbl 0 `"No imputation"'
label define sd08a_qbirthsf_lbl 1 `"Logical from blank"', add
label define sd08a_qbirthsf_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qbirthsf_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qbirthsf_lbl 4 `"Imputation from blank"', add
label define sd08a_qbirthsf_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qbirthsf_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qbirthsf sd08a_qbirthsf_lbl

label define sd08a_qlivbthm_lbl 0 `"No imputation"'
label define sd08a_qlivbthm_lbl 1 `"Logical from blank"', add
label define sd08a_qlivbthm_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qlivbthm_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qlivbthm_lbl 4 `"Imputation from blank"', add
label define sd08a_qlivbthm_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qlivbthm_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qlivbthm sd08a_qlivbthm_lbl

label define sd08a_qlivbthf_lbl 0 `"No imputation"'
label define sd08a_qlivbthf_lbl 1 `"Logical from blank"', add
label define sd08a_qlivbthf_lbl 2 `"Logical from valid non-blank"', add
label define sd08a_qlivbthf_lbl 3 `"Logical from invalid non-blank"', add
label define sd08a_qlivbthf_lbl 4 `"Imputation from blank"', add
label define sd08a_qlivbthf_lbl 5 `"Imputation from valid non-blank"', add
label define sd08a_qlivbthf_lbl 6 `"Imputation from invalid non-blank"', add
label values sd08a_qlivbthf sd08a_qlivbthf_lbl

label define sd08a_chhome_lbl 00 `"0"'
label define sd08a_chhome_lbl 01 `"1"', add
label define sd08a_chhome_lbl 02 `"2"', add
label define sd08a_chhome_lbl 03 `"3"', add
label define sd08a_chhome_lbl 04 `"4"', add
label define sd08a_chhome_lbl 05 `"5"', add
label define sd08a_chhome_lbl 06 `"6"', add
label define sd08a_chhome_lbl 07 `"7"', add
label define sd08a_chhome_lbl 08 `"8"', add
label define sd08a_chhome_lbl 09 `"9"', add
label define sd08a_chhome_lbl 10 `"10"', add
label define sd08a_chhome_lbl 11 `"11"', add
label define sd08a_chhome_lbl 12 `"12"', add
label define sd08a_chhome_lbl 13 `"13"', add
label define sd08a_chhome_lbl 14 `"14"', add
label define sd08a_chhome_lbl 15 `"15+"', add
label define sd08a_chhome_lbl 99 `"NIU (not in universe)"', add
label values sd08a_chhome sd08a_chhome_lbl

label define sd08a_chaway_lbl 00 `"0"'
label define sd08a_chaway_lbl 01 `"1"', add
label define sd08a_chaway_lbl 02 `"2"', add
label define sd08a_chaway_lbl 03 `"3"', add
label define sd08a_chaway_lbl 04 `"4"', add
label define sd08a_chaway_lbl 05 `"5"', add
label define sd08a_chaway_lbl 06 `"6"', add
label define sd08a_chaway_lbl 07 `"7"', add
label define sd08a_chaway_lbl 08 `"8"', add
label define sd08a_chaway_lbl 09 `"9"', add
label define sd08a_chaway_lbl 10 `"10"', add
label define sd08a_chaway_lbl 11 `"11"', add
label define sd08a_chaway_lbl 12 `"12"', add
label define sd08a_chaway_lbl 13 `"13+"', add
label define sd08a_chaway_lbl 99 `"NIU (not in universe)"', add
label values sd08a_chaway sd08a_chaway_lbl

label define sd08a_chdead_lbl 00 `"0"'
label define sd08a_chdead_lbl 01 `"1"', add
label define sd08a_chdead_lbl 02 `"2"', add
label define sd08a_chdead_lbl 03 `"3"', add
label define sd08a_chdead_lbl 04 `"4"', add
label define sd08a_chdead_lbl 05 `"5"', add
label define sd08a_chdead_lbl 06 `"6"', add
label define sd08a_chdead_lbl 07 `"7"', add
label define sd08a_chdead_lbl 08 `"8"', add
label define sd08a_chdead_lbl 09 `"9"', add
label define sd08a_chdead_lbl 10 `"10"', add
label define sd08a_chdead_lbl 11 `"11"', add
label define sd08a_chdead_lbl 12 `"12+"', add
label define sd08a_chdead_lbl 99 `"NIU (not in universe)"', add
label values sd08a_chdead sd08a_chdead_lbl

label define sd08a_chborn_lbl 00 `"0"'
label define sd08a_chborn_lbl 01 `"1"', add
label define sd08a_chborn_lbl 02 `"2"', add
label define sd08a_chborn_lbl 03 `"3"', add
label define sd08a_chborn_lbl 04 `"4"', add
label define sd08a_chborn_lbl 05 `"5"', add
label define sd08a_chborn_lbl 06 `"6"', add
label define sd08a_chborn_lbl 07 `"7"', add
label define sd08a_chborn_lbl 08 `"8"', add
label define sd08a_chborn_lbl 09 `"9"', add
label define sd08a_chborn_lbl 10 `"10"', add
label define sd08a_chborn_lbl 11 `"11"', add
label define sd08a_chborn_lbl 12 `"12"', add
label define sd08a_chborn_lbl 13 `"13"', add
label define sd08a_chborn_lbl 14 `"14"', add
label define sd08a_chborn_lbl 15 `"15"', add
label define sd08a_chborn_lbl 16 `"16"', add
label define sd08a_chborn_lbl 17 `"17"', add
label define sd08a_chborn_lbl 18 `"18"', add
label define sd08a_chborn_lbl 19 `"19"', add
label define sd08a_chborn_lbl 20 `"20"', add
label define sd08a_chborn_lbl 21 `"21"', add
label define sd08a_chborn_lbl 99 `"NIU (not in universe)"', add
label values sd08a_chborn sd08a_chborn_lbl

label define sd08a_chsurv_lbl 00 `"0"'
label define sd08a_chsurv_lbl 01 `"1"', add
label define sd08a_chsurv_lbl 02 `"2"', add
label define sd08a_chsurv_lbl 03 `"3"', add
label define sd08a_chsurv_lbl 04 `"4"', add
label define sd08a_chsurv_lbl 05 `"5"', add
label define sd08a_chsurv_lbl 06 `"6"', add
label define sd08a_chsurv_lbl 07 `"7"', add
label define sd08a_chsurv_lbl 08 `"8"', add
label define sd08a_chsurv_lbl 09 `"9"', add
label define sd08a_chsurv_lbl 10 `"10"', add
label define sd08a_chsurv_lbl 11 `"11"', add
label define sd08a_chsurv_lbl 12 `"12"', add
label define sd08a_chsurv_lbl 13 `"13"', add
label define sd08a_chsurv_lbl 14 `"14"', add
label define sd08a_chsurv_lbl 15 `"15"', add
label define sd08a_chsurv_lbl 16 `"16"', add
label define sd08a_chsurv_lbl 17 `"17"', add
label define sd08a_chsurv_lbl 18 `"18+"', add
label define sd08a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values sd08a_chsurv sd08a_chsurv_lbl

label define sd08a_chsurvm_lbl 00 `"0"'
label define sd08a_chsurvm_lbl 01 `"1"', add
label define sd08a_chsurvm_lbl 02 `"2"', add
label define sd08a_chsurvm_lbl 03 `"3"', add
label define sd08a_chsurvm_lbl 04 `"4"', add
label define sd08a_chsurvm_lbl 05 `"5"', add
label define sd08a_chsurvm_lbl 06 `"6"', add
label define sd08a_chsurvm_lbl 07 `"7"', add
label define sd08a_chsurvm_lbl 08 `"8"', add
label define sd08a_chsurvm_lbl 09 `"9"', add
label define sd08a_chsurvm_lbl 10 `"10"', add
label define sd08a_chsurvm_lbl 11 `"11"', add
label define sd08a_chsurvm_lbl 12 `"12"', add
label define sd08a_chsurvm_lbl 13 `"13"', add
label define sd08a_chsurvm_lbl 14 `"14+"', add
label define sd08a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values sd08a_chsurvm sd08a_chsurvm_lbl

label define sd08a_chsurvf_lbl 00 `"0"'
label define sd08a_chsurvf_lbl 01 `"1"', add
label define sd08a_chsurvf_lbl 02 `"2"', add
label define sd08a_chsurvf_lbl 03 `"3"', add
label define sd08a_chsurvf_lbl 04 `"4"', add
label define sd08a_chsurvf_lbl 05 `"5"', add
label define sd08a_chsurvf_lbl 06 `"6"', add
label define sd08a_chsurvf_lbl 07 `"7"', add
label define sd08a_chsurvf_lbl 08 `"8"', add
label define sd08a_chsurvf_lbl 09 `"9"', add
label define sd08a_chsurvf_lbl 10 `"10"', add
label define sd08a_chsurvf_lbl 11 `"11"', add
label define sd08a_chsurvf_lbl 12 `"12"', add
label define sd08a_chsurvf_lbl 13 `"13+"', add
label define sd08a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values sd08a_chsurvf sd08a_chsurvf_lbl

label define sd08a_bthlstyr_lbl 0 `"0"'
label define sd08a_bthlstyr_lbl 1 `"1"', add
label define sd08a_bthlstyr_lbl 2 `"2"', add
label define sd08a_bthlstyr_lbl 3 `"3"', add
label define sd08a_bthlstyr_lbl 4 `"4"', add
label define sd08a_bthlstyr_lbl 8 `"Unknown"', add
label define sd08a_bthlstyr_lbl 9 `"NIU (not in universe)"', add
label values sd08a_bthlstyr sd08a_bthlstyr_lbl

label define sd08a_srvlstyr_lbl 0 `"0"'
label define sd08a_srvlstyr_lbl 1 `"1"', add
label define sd08a_srvlstyr_lbl 2 `"2"', add
label define sd08a_srvlstyr_lbl 3 `"3"', add
label define sd08a_srvlstyr_lbl 4 `"4+"', add
label define sd08a_srvlstyr_lbl 8 `"Unknown"', add
label define sd08a_srvlstyr_lbl 9 `"NIU (not in universe)"', add
label values sd08a_srvlstyr sd08a_srvlstyr_lbl

label define sd08a_parlive_lbl 1 `"Father alive, mother alive"'
label define sd08a_parlive_lbl 2 `"Father alive, mother dead"', add
label define sd08a_parlive_lbl 3 `"Father dead, mother alive"', add
label define sd08a_parlive_lbl 4 `"Father dead, mother dead"', add
label values sd08a_parlive sd08a_parlive_lbl


