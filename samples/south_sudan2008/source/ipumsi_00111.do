* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    ss08a_dwnum     22-28    ///
  byte    ss08a_pern      29-30    ///
  byte    ss08a_fbig      31-31    ///
  byte    ss08a_region    32-32    ///
  byte    ss08a_state     33-34    ///
  byte    ss08a_urban     35-35    ///
  byte    ss08a_hhtype    36-36    ///
  byte    ss08a_dwtype    37-38    ///
  byte    ss08a_bedrms    39-39    ///
  byte    ss08a_ownrshp   40-40    ///
  byte    ss08a_watsrc    41-42    ///
  byte    ss08a_lighting  43-44    ///
  byte    ss08a_fuelcook  45-45    ///
  byte    ss08a_toilet    46-46    ///
  byte    ss08a_vehicle   47-47    ///
  byte    ss08a_motocyc   48-48    ///
  byte    ss08a_bicycle   49-49    ///
  byte    ss08a_boat      50-50    ///
  byte    ss08a_animtran  51-51    ///
  byte    ss08a_tractor   52-52    ///
  byte    ss08a_notrans   53-53    ///
  byte    ss08a_tv        54-54    ///
  byte    ss08a_radio     55-55    ///
  byte    ss08a_mobile    56-56    ///
  byte    ss08a_phone     57-57    ///
  byte    ss08a_computer  58-58    ///
  byte    ss08a_refridge  59-59    ///
  byte    ss08a_satell    60-60    ///
  byte    ss08a_fan       61-61    ///
  byte    ss08a_aircon    62-62    ///
  byte    ss08a_noamen    63-63    ///
  byte    ss08a_livehood  64-64    ///
  byte    ss08a_cultiv    65-65    ///
  int     ss08a_areacult  66-68    ///
  byte    ss08a_cereal    69-69    ///
  byte    ss08a_veg       70-70    ///
  byte    ss08a_fruit     71-71    ///
  byte    ss08a_oilseed   72-72    ///
  byte    ss08a_root      73-73    ///
  byte    ss08a_spice     74-74    ///
  byte    ss08a_legum     75-75    ///
  byte    ss08a_sugar     76-76    ///
  byte    ss08a_cotton    77-77    ///
  byte    ss08a_coffee    78-78    ///
  byte    ss08a_tea       79-79    ///
  byte    ss08a_othcrop   80-80    ///
  byte    ss08a_landown   81-81    ///
  byte    ss08a_fishery   82-82    ///
  int     ss08a_cattle    83-85    ///
  int     ss08a_camels    86-88    ///
  int     ss08a_sheep     89-91    ///
  int     ss08a_goats     92-94    ///
  int     ss08a_horses    95-97    ///
  int     ss08a_donkeys   98-100   ///
  int     ss08a_pigs      101-103  ///
  int     ss08a_poultry   104-106  ///
  byte    ss08a_deaths    107-107  ///
  byte    ss08a_qhhtype   108-108  ///
  byte    ss08a_qdwtype   109-109  ///
  byte    ss08a_qrooms    110-110  ///
  byte    ss08a_qownrshp  111-111  ///
  byte    ss08a_qwatsrc   112-112  ///
  byte    ss08a_qlightng  113-113  ///
  byte    ss08a_qfuelck   114-114  ///
  byte    ss08a_qtoilet   115-115  ///
  byte    ss08a_qvehicle  116-116  ///
  byte    ss08a_qmotocyc  117-117  ///
  byte    ss08a_qbicycle  118-118  ///
  byte    ss08a_qboat     119-119  ///
  byte    ss08a_qanitran  120-120  ///
  byte    ss08a_qtractor  121-121  ///
  byte    ss08a_qnotrans  122-122  ///
  byte    ss08a_qtv       123-123  ///
  byte    ss08a_qradio    124-124  ///
  byte    ss08a_qmobile   125-125  ///
  byte    ss08a_qphone    126-126  ///
  byte    ss08a_qcomputr  127-127  ///
  byte    ss08a_qrefridg  128-128  ///
  byte    ss08a_qsatell   129-129  ///
  byte    ss08a_qfan      130-130  ///
  byte    ss08a_qaircon   131-131  ///
  byte    ss08a_qnoamen   132-132  ///
  byte    ss08a_qlivehod  133-133  ///
  byte    ss08a_qcultiv   134-134  ///
  byte    ss08a_qareacul  135-135  ///
  byte    ss08a_qcereal   136-136  ///
  byte    ss08a_qveg      137-137  ///
  byte    ss08a_qfruit    138-138  ///
  byte    ss08a_qoilseed  139-139  ///
  byte    ss08a_qroot     140-140  ///
  byte    ss08a_qspice    141-141  ///
  byte    ss08a_qlegum    142-142  ///
  byte    ss08a_qsugar    143-143  ///
  byte    ss08a_qcotton   144-144  ///
  byte    ss08a_qcoffee   145-145  ///
  byte    ss08a_qtea      146-146  ///
  byte    ss08a_qothcrop  147-147  ///
  byte    ss08a_qlandown  148-148  ///
  byte    ss08a_qfishery  149-149  ///
  byte    ss08a_qcattle   150-150  ///
  byte    ss08a_qcamels   151-151  ///
  byte    ss08a_qsheep    152-152  ///
  byte    ss08a_qgoats    153-153  ///
  byte    ss08a_qhorses   154-154  ///
  byte    ss08a_qdonkeys  155-155  ///
  byte    ss08a_qpigs     156-156  ///
  byte    ss08a_qpoultry  157-157  ///
  byte    ss08a_qdeaths   158-158  ///
  float   ss08a_hhwt      159-164  ///
  byte    ss08a_ndeaths   165-165  ///
  int     pernum          166-168  ///
  float   wtper           169-176  ///
  byte    ss08a_pernum    177-178  ///
  byte    ss08a_relate    179-180  ///
  byte    ss08a_sex       181-181  ///
  byte    ss08a_nation    182-182  ///
  byte    ss08a_reggroup  183-183  ///
  byte    ss08a_orregion  184-185  ///
  byte    ss08a_bplstate  186-187  ///
  byte    ss08a_ustate    188-189  ///
  byte    ss08a_durres    190-191  ///
  byte    ss08a_migstate  192-193  ///
  byte    ss08a_mothlive  194-194  ///
  byte    ss08a_fathlive  195-195  ///
  byte    ss08a_limleg    196-196  ///
  byte    ss08a_lossleg   197-197  ///
  byte    ss08a_limarm    198-198  ///
  byte    ss08a_lossarm   199-199  ///
  byte    ss08a_diffhear  200-200  ///
  byte    ss08a_deaf      201-201  ///
  byte    ss08a_diffsee   202-202  ///
  byte    ss08a_blind     203-203  ///
  byte    ss08a_diffspk   204-204  ///
  byte    ss08a_mute      205-205  ///
  byte    ss08a_diffment  206-206  ///
  byte    ss08a_disab     207-207  ///
  byte    ss08a_lit       208-208  ///
  byte    ss08a_school    209-209  ///
  byte    ss08a_attend    210-211  ///
  byte    ss08a_edattain  212-213  ///
  byte    ss08a_empstat   214-214  ///
  byte    ss08a_reason    215-215  ///
  byte    ss08a_occ       216-217  ///
  int     ss08a_ind       218-220  ///
  byte    ss08a_classwk   221-221  ///
  byte    ss08a_marst     222-222  ///
  byte    ss08a_agemarr   223-224  ///
  byte    ss08a_chbornm   225-226  ///
  byte    ss08a_chbornf   227-228  ///
  byte    ss08a_homemal   229-230  ///
  byte    ss08a_homefem   231-232  ///
  byte    ss08a_awaymal   233-234  ///
  byte    ss08a_awayfem   235-236  ///
  byte    ss08a_deadmal   237-238  ///
  byte    ss08a_deadfem   239-240  ///
  byte    ss08a_births    241-241  ///
  byte    ss08a_birthsm   242-242  ///
  byte    ss08a_birthsf   243-243  ///
  byte    ss08a_livbthm   244-244  ///
  byte    ss08a_qage      245-245  ///
  byte    ss08a_qnation   246-246  ///
  byte    ss08a_qreggrp   247-247  ///
  byte    ss08a_qorreg    248-248  ///
  byte    ss08a_qustate   249-249  ///
  byte    ss08a_qdurres   250-250  ///
  byte    ss08a_qmigstat  251-251  ///
  byte    ss08a_qmothliv  252-252  ///
  byte    ss08a_qfathliv  253-253  ///
  byte    ss08a_qlossleg  254-254  ///
  byte    ss08a_qlossarm  255-255  ///
  byte    ss08a_qdeaf     256-256  ///
  byte    ss08a_qblind    257-257  ///
  byte    ss08a_qmute     258-258  ///
  byte    ss08a_qschool   259-259  ///
  byte    ss08a_qattend   260-260  ///
  byte    ss08a_qedattan  261-261  ///
  byte    ss08a_qempstat  262-262  ///
  byte    ss08a_qreason   263-263  ///
  byte    ss08a_qocc      264-264  ///
  byte    ss08a_qind      265-265  ///
  byte    ss08a_qclasswk  266-266  ///
  byte    ss08a_qmarst    267-267  ///
  byte    ss08a_qagemarr  268-268  ///
  byte    ss08a_qchbornf  269-269  ///
  byte    ss08a_qhomemal  270-270  ///
  byte    ss08a_qhomefem  271-271  ///
  byte    ss08a_qawaymal  272-272  ///
  byte    ss08a_qawayfem  273-273  ///
  byte    ss08a_qdeadmal  274-274  ///
  byte    ss08a_qdeadfem  275-275  ///
  byte    ss08a_qbirths   276-276  ///
  byte    ss08a_qbirthsm  277-277  ///
  byte    ss08a_qbirthsf  278-278  ///
  byte    ss08a_qlivbthm  279-279  ///
  byte    ss08a_qlivbthf  280-280  ///
  float   ss08a_perwt     281-286  ///
  byte    ss08a_chhome    287-288  ///
  byte    ss08a_chaway    289-290  ///
  byte    ss08a_chdead    291-292  ///
  byte    ss08a_chborn    293-294  ///
  byte    ss08a_chsurv    295-296  ///
  byte    ss08a_chsurvm   297-298  ///
  byte    ss08a_chsurvf   299-300  ///
  byte    ss08a_bthlstyr  301-301  ///
  byte    ss08a_srvlstyr  302-302  ///
  byte    ss08a_parlive   303-303  ///
  using `"ipumsi_00111.dat"'

replace ss08a_hhwt     = ss08a_hhwt     / 10000
replace wtper          = wtper          / 100
replace ss08a_perwt    = ss08a_perwt    / 10000

format serial         %10.0f
format ss08a_hhwt     %6.4f
format wtper          %8.2f
format ss08a_perwt    %6.4f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var ss08a_dwnum    `"Dwelling number"'
label var ss08a_pern     `"Number of persons in household"'
label var ss08a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var ss08a_region   `"Region"'
label var ss08a_state    `"State"'
label var ss08a_urban    `"Urban/rural"'
label var ss08a_hhtype   `"Type of household"'
label var ss08a_dwtype   `"Type of dwelling"'
label var ss08a_bedrms   `"Number of sleeping rooms"'
label var ss08a_ownrshp  `"Tenure status"'
label var ss08a_watsrc   `"Source of drinking water"'
label var ss08a_lighting `"Source of lighting"'
label var ss08a_fuelcook `"Cooking fuel"'
label var ss08a_toilet   `"Toilet facilities"'
label var ss08a_vehicle  `"Motor vehicle"'
label var ss08a_motocyc  `"Motorcycle"'
label var ss08a_bicycle  `"Bicycle"'
label var ss08a_boat     `"Canoe/boat"'
label var ss08a_animtran `"Animal transport"'
label var ss08a_tractor  `"Tractor"'
label var ss08a_notrans  `"No transport"'
label var ss08a_tv       `"Television"'
label var ss08a_radio    `"Radio"'
label var ss08a_mobile   `"Mobile phone"'
label var ss08a_phone    `"Fixed phone"'
label var ss08a_computer `"Computer"'
label var ss08a_refridge `"Refrigerator"'
label var ss08a_satell   `"Satellite dish"'
label var ss08a_fan      `"Fan"'
label var ss08a_aircon   `"Air cooler/AC"'
label var ss08a_noamen   `"No household amenities"'
label var ss08a_livehood `"Source of livelihood"'
label var ss08a_cultiv   `"Any cultivation/plantation"'
label var ss08a_areacult `"Area of cultivation/plantation"'
label var ss08a_cereal   `"Cereals"'
label var ss08a_veg      `"Vegetables and melons"'
label var ss08a_fruit    `"Fruits and nuts"'
label var ss08a_oilseed  `"Oilseed crops"'
label var ss08a_root     `"Root and tuber crops"'
label var ss08a_spice    `"Beverage and spice crops"'
label var ss08a_legum    `"Leguminous crops"'
label var ss08a_sugar    `"Sugar crops"'
label var ss08a_cotton   `"Cotton"'
label var ss08a_coffee   `"Coffee"'
label var ss08a_tea      `"Tea"'
label var ss08a_othcrop  `"Other crop"'
label var ss08a_landown  `"Tenure status of land"'
label var ss08a_fishery  `"Fishery"'
label var ss08a_cattle   `"Cattle"'
label var ss08a_camels   `"Camels"'
label var ss08a_sheep    `"Sheep"'
label var ss08a_goats    `"Goats"'
label var ss08a_horses   `"Horses"'
label var ss08a_donkeys  `"Donkeys"'
label var ss08a_pigs     `"Pigs"'
label var ss08a_poultry  `"Poultry"'
label var ss08a_deaths   `"Deaths in last 12 months"'
label var ss08a_qhhtype  `"Flag: type of household"'
label var ss08a_qdwtype  `"Flag: type of dwelling"'
label var ss08a_qrooms   `"Flag: number of rooms"'
label var ss08a_qownrshp `"Flag: tenure"'
label var ss08a_qwatsrc  `"Flag: source of drinking water"'
label var ss08a_qlightng `"Flag: source of lighting"'
label var ss08a_qfuelck  `"Flag: cooking fuel"'
label var ss08a_qtoilet  `"Flag: toilet facilities"'
label var ss08a_qvehicle `"Flag: motor vehicle"'
label var ss08a_qmotocyc `"Flag: motorcycle"'
label var ss08a_qbicycle `"Flag: bicycle"'
label var ss08a_qboat    `"Flag: canoe/boat"'
label var ss08a_qanitran `"Flag: animal transport"'
label var ss08a_qtractor `"Flag: tractor"'
label var ss08a_qnotrans `"Flag: no transport"'
label var ss08a_qtv      `"Flag: television"'
label var ss08a_qradio   `"Flag: radio"'
label var ss08a_qmobile  `"Flag: mobile phone"'
label var ss08a_qphone   `"Flag: fixed phone"'
label var ss08a_qcomputr `"Flag: computer"'
label var ss08a_qrefridg `"Flag: refrigerator"'
label var ss08a_qsatell  `"Flag: satellite dish"'
label var ss08a_qfan     `"Flag: fan"'
label var ss08a_qaircon  `"Flag: air cooler/ac"'
label var ss08a_qnoamen  `"Flag: no household amenities"'
label var ss08a_qlivehod `"Flag: source of livelihood"'
label var ss08a_qcultiv  `"Flag: any cultivation/plantation"'
label var ss08a_qareacul `"Flag: area of cultivation/plantation"'
label var ss08a_qcereal  `"Flag: cereals"'
label var ss08a_qveg     `"Flag: vegetables"'
label var ss08a_qfruit   `"Flag: fruits and nuts"'
label var ss08a_qoilseed `"Flag: oil seed"'
label var ss08a_qroot    `"Flag: root and tuber crops"'
label var ss08a_qspice   `"Flag: beverage/spice"'
label var ss08a_qlegum   `"Flag: leguminous crops"'
label var ss08a_qsugar   `"Flag: sugar"'
label var ss08a_qcotton  `"Flag: cotton"'
label var ss08a_qcoffee  `"Flag: coffee"'
label var ss08a_qtea     `"Flag: tea"'
label var ss08a_qothcrop `"Flag: other crop"'
label var ss08a_qlandown `"Flag: tenure status of land"'
label var ss08a_qfishery `"Flag: fishery"'
label var ss08a_qcattle  `"Flag: cattle"'
label var ss08a_qcamels  `"Flag: camels"'
label var ss08a_qsheep   `"Flag: sheep"'
label var ss08a_qgoats   `"Flag: goats"'
label var ss08a_qhorses  `"Flag: horses"'
label var ss08a_qdonkeys `"Flag: donkeys"'
label var ss08a_qpigs    `"Flag: pigs"'
label var ss08a_qpoultry `"Flag: poultry"'
label var ss08a_qdeaths  `"Flag: deaths in last 12 months"'
label var ss08a_hhwt     `"Housing weight"'
label var ss08a_ndeaths  `"Number of death records"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var ss08a_pernum   `"Person number (within household)"'
label var ss08a_relate   `"Relationship"'
label var ss08a_sex      `"Sex"'
label var ss08a_nation   `"Nationality"'
label var ss08a_reggroup `"Regional group"'
label var ss08a_orregion `"Region of origin"'
label var ss08a_bplstate `"State of birth"'
label var ss08a_ustate   `"State of usual residence"'
label var ss08a_durres   `"Duration of residence"'
label var ss08a_migstate `"Previous residence 1 year ago"'
label var ss08a_mothlive `"Mother's survival"'
label var ss08a_fathlive `"Father's survival"'
label var ss08a_limleg   `"Limited use of leg(s)"'
label var ss08a_lossleg  `"Loss of leg(s)"'
label var ss08a_limarm   `"Limited use of arm(s)"'
label var ss08a_lossarm  `"Loss of arm(s)"'
label var ss08a_diffhear `"Difficulty in hearing"'
label var ss08a_deaf     `"Deaf"'
label var ss08a_diffsee  `"Difficulty seeing"'
label var ss08a_blind    `"Blind"'
label var ss08a_diffspk  `"Difficulty in speaking"'
label var ss08a_mute     `"Mute"'
label var ss08a_diffment `"Mental difficulty"'
label var ss08a_disab    `"Have disability"'
label var ss08a_lit      `"Literacy"'
label var ss08a_school   `"School attendence"'
label var ss08a_attend   `"School level attending"'
label var ss08a_edattain `"Education attainment"'
label var ss08a_empstat  `"Activity status"'
label var ss08a_reason   `"Reason for economic inactivity"'
label var ss08a_occ      `"Occupation"'
label var ss08a_ind      `"Industry"'
label var ss08a_classwk  `"Class of worker"'
label var ss08a_marst    `"Marital status"'
label var ss08a_agemarr  `"Age at first marriage"'
label var ss08a_chbornm  `"Males ever born"'
label var ss08a_chbornf  `"Females ever born"'
label var ss08a_homemal  `"Male children at home"'
label var ss08a_homefem  `"Female children at home"'
label var ss08a_awaymal  `"Male children living elsewhere"'
label var ss08a_awayfem  `"Female children living elsewhere"'
label var ss08a_deadmal  `"Male children deceased"'
label var ss08a_deadfem  `"Female children deceased"'
label var ss08a_births   `"Any births last 12 months"'
label var ss08a_birthsm  `"Males born last 12 months"'
label var ss08a_birthsf  `"Females born last 12 months"'
label var ss08a_livbthm  `"Males born last 12 months surviving"'
label var ss08a_qage     `"Flag: Age"'
label var ss08a_qnation  `"Flag: Nationality"'
label var ss08a_qreggrp  `"Flag: Regional group"'
label var ss08a_qorreg   `"Flag: Region of origin"'
label var ss08a_qustate  `"Flag: State of usual residence"'
label var ss08a_qdurres  `"Flag: Duration of residence"'
label var ss08a_qmigstat `"Flag: State of previous residence"'
label var ss08a_qmothliv `"Flag: Mother's survival"'
label var ss08a_qfathliv `"Flag: Father's survival"'
label var ss08a_qlossleg `"Flag: Loss of leg(s)"'
label var ss08a_qlossarm `"Flag: Loss of arm(s)"'
label var ss08a_qdeaf    `"Flag: Deaf"'
label var ss08a_qblind   `"Flag: Blind"'
label var ss08a_qmute    `"Flag: Mute"'
label var ss08a_qschool  `"Flag: School attendence"'
label var ss08a_qattend  `"Flag: School level currently attending"'
label var ss08a_qedattan `"Flag: Education attainment"'
label var ss08a_qempstat `"Flag: Activity status"'
label var ss08a_qreason  `"Flag: Reason for economic inactivity"'
label var ss08a_qocc     `"Flag: Occupation"'
label var ss08a_qind     `"Flag: Economic sector"'
label var ss08a_qclasswk `"Flag: Employment status"'
label var ss08a_qmarst   `"Flag: Marital status"'
label var ss08a_qagemarr `"Flag: Age at first marriage"'
label var ss08a_qchbornf `"Flag: Females ever born"'
label var ss08a_qhomemal `"Flag: Male children at home"'
label var ss08a_qhomefem `"Flag: Female children at home"'
label var ss08a_qawaymal `"Flag: Male children living elsewhere"'
label var ss08a_qawayfem `"Flag: Female children living elsewhere"'
label var ss08a_qdeadmal `"Flag: Male children deceased"'
label var ss08a_qdeadfem `"Flag: Female children deceased"'
label var ss08a_qbirths  `"Flag: Any births last 12 months"'
label var ss08a_qbirthsm `"Flag: Males born last 12 months"'
label var ss08a_qbirthsf `"Flag: Females born last 12 months"'
label var ss08a_qlivbthm `"Flag: Males born last 12 months (alive)"'
label var ss08a_qlivbthf `"Flag: Females born last 12 months (alive)"'
label var ss08a_perwt    `"Person weight"'
label var ss08a_chhome   `"Children living in household"'
label var ss08a_chaway   `"Children living elsewhere"'
label var ss08a_chdead   `"Children who have died"'
label var ss08a_chborn   `"Children ever born"'
label var ss08a_chsurv   `"Children surviving"'
label var ss08a_chsurvm  `"Male children surviving"'
label var ss08a_chsurvf  `"Female children surviving"'
label var ss08a_bthlstyr `"Children born last year"'
label var ss08a_srvlstyr `"Children born last year surviving"'
label var ss08a_parlive  `"Parents mortality status"'

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

label define ss08a_pern_lbl 01 `"1"'
label define ss08a_pern_lbl 02 `"2"', add
label define ss08a_pern_lbl 03 `"3"', add
label define ss08a_pern_lbl 04 `"4"', add
label define ss08a_pern_lbl 05 `"5"', add
label define ss08a_pern_lbl 06 `"6"', add
label define ss08a_pern_lbl 07 `"7"', add
label define ss08a_pern_lbl 08 `"8"', add
label define ss08a_pern_lbl 09 `"9"', add
label define ss08a_pern_lbl 10 `"10"', add
label define ss08a_pern_lbl 11 `"11"', add
label define ss08a_pern_lbl 12 `"12"', add
label define ss08a_pern_lbl 13 `"13"', add
label define ss08a_pern_lbl 14 `"14"', add
label define ss08a_pern_lbl 15 `"15"', add
label define ss08a_pern_lbl 16 `"16"', add
label define ss08a_pern_lbl 17 `"17"', add
label define ss08a_pern_lbl 18 `"18"', add
label define ss08a_pern_lbl 19 `"19"', add
label define ss08a_pern_lbl 20 `"20"', add
label define ss08a_pern_lbl 21 `"21"', add
label define ss08a_pern_lbl 22 `"22"', add
label define ss08a_pern_lbl 23 `"23"', add
label define ss08a_pern_lbl 24 `"24"', add
label define ss08a_pern_lbl 25 `"25"', add
label define ss08a_pern_lbl 26 `"26"', add
label define ss08a_pern_lbl 27 `"27"', add
label define ss08a_pern_lbl 28 `"28"', add
label define ss08a_pern_lbl 29 `"29"', add
label define ss08a_pern_lbl 30 `"30"', add
label define ss08a_pern_lbl 31 `"31"', add
label define ss08a_pern_lbl 32 `"32"', add
label define ss08a_pern_lbl 33 `"33"', add
label define ss08a_pern_lbl 34 `"34"', add
label define ss08a_pern_lbl 35 `"35"', add
label define ss08a_pern_lbl 36 `"36"', add
label define ss08a_pern_lbl 37 `"37"', add
label define ss08a_pern_lbl 38 `"38"', add
label define ss08a_pern_lbl 39 `"39"', add
label define ss08a_pern_lbl 40 `"40"', add
label define ss08a_pern_lbl 41 `"41"', add
label define ss08a_pern_lbl 42 `"42"', add
label define ss08a_pern_lbl 43 `"43"', add
label define ss08a_pern_lbl 44 `"44"', add
label define ss08a_pern_lbl 45 `"45"', add
label define ss08a_pern_lbl 46 `"46"', add
label define ss08a_pern_lbl 47 `"47"', add
label define ss08a_pern_lbl 48 `"48"', add
label define ss08a_pern_lbl 49 `"49"', add
label define ss08a_pern_lbl 50 `"50"', add
label values ss08a_pern ss08a_pern_lbl

label define ss08a_fbig_lbl 0 `"No problem"'
label define ss08a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define ss08a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values ss08a_fbig ss08a_fbig_lbl

label define ss08a_region_lbl 7 `"Upper Nile"'
label define ss08a_region_lbl 8 `"Bahr El Ghazal"', add
label define ss08a_region_lbl 9 `"Equatoria"', add
label values ss08a_region ss08a_region_lbl

label define ss08a_state_lbl 71 `"Upper Nile"'
label define ss08a_state_lbl 72 `"Jonglei"', add
label define ss08a_state_lbl 73 `"Unity"', add
label define ss08a_state_lbl 81 `"Warrap"', add
label define ss08a_state_lbl 82 `"Northern Bahr El Ghazal"', add
label define ss08a_state_lbl 83 `"Western Bahr El Ghazal"', add
label define ss08a_state_lbl 84 `"Lakes"', add
label define ss08a_state_lbl 91 `"Western Equatoria"', add
label define ss08a_state_lbl 92 `"Central Equatoria"', add
label define ss08a_state_lbl 93 `"Eastern Equatoria"', add
label values ss08a_state ss08a_state_lbl

label define ss08a_urban_lbl 1 `"Urban"'
label define ss08a_urban_lbl 2 `"Rural"', add
label values ss08a_urban ss08a_urban_lbl

label define ss08a_hhtype_lbl 1 `"Private household"'
label define ss08a_hhtype_lbl 2 `"Nomads"', add
label define ss08a_hhtype_lbl 3 `"Internally displaced"', add
label define ss08a_hhtype_lbl 6 `"Refugees"', add
label values ss08a_hhtype ss08a_hhtype_lbl

label define ss08a_dwtype_lbl 01 `"Tent"'
label define ss08a_dwtype_lbl 02 `"Dwelling of straw mats"', add
label define ss08a_dwtype_lbl 03 `"Tukul /gottiya of mud"', add
label define ss08a_dwtype_lbl 04 `"Tukul /gottiya of sticks"', add
label define ss08a_dwtype_lbl 05 `"Flat or apartment"', add
label define ss08a_dwtype_lbl 06 `"Villa"', add
label define ss08a_dwtype_lbl 07 `"House of one floor, mud"', add
label define ss08a_dwtype_lbl 08 `"House of one floor, brick/concrete"', add
label define ss08a_dwtype_lbl 09 `"House constructed of wood"', add
label define ss08a_dwtype_lbl 10 `"Multi-story house"', add
label define ss08a_dwtype_lbl 11 `"Incomplete"', add
label values ss08a_dwtype ss08a_dwtype_lbl

label define ss08a_bedrms_lbl 1 `"1"'
label define ss08a_bedrms_lbl 2 `"2"', add
label define ss08a_bedrms_lbl 3 `"3"', add
label define ss08a_bedrms_lbl 4 `"4"', add
label define ss08a_bedrms_lbl 5 `"5"', add
label define ss08a_bedrms_lbl 6 `"6"', add
label define ss08a_bedrms_lbl 7 `"7"', add
label define ss08a_bedrms_lbl 8 `"8+"', add
label values ss08a_bedrms ss08a_bedrms_lbl

label define ss08a_ownrshp_lbl 1 `"Owned"'
label define ss08a_ownrshp_lbl 2 `"Rented"', add
label define ss08a_ownrshp_lbl 3 `"Housing provided by job"', add
label define ss08a_ownrshp_lbl 4 `"Free"', add
label values ss08a_ownrshp ss08a_ownrshp_lbl

label define ss08a_watsrc_lbl 01 `"Water filtering station with common network"'
label define ss08a_watsrc_lbl 02 `"Mechanical boreholes with common network"', add
label define ss08a_watsrc_lbl 03 `"Deep borehole (donkey) with network"', add
label define ss08a_watsrc_lbl 04 `"Deep borehole (donkey) without network"', add
label define ss08a_watsrc_lbl 05 `"Hand pump"', add
label define ss08a_watsrc_lbl 06 `"Sand filter with common network"', add
label define ss08a_watsrc_lbl 07 `"Shallow well (dug well)"', add
label define ss08a_watsrc_lbl 08 `"Hafeer/Dam without filter (still open water)"', add
label define ss08a_watsrc_lbl 09 `"Hafeer/Dam with filter (still open water)"', add
label define ss08a_watsrc_lbl 10 `"Seasonal river (fula)"', add
label define ss08a_watsrc_lbl 11 `"River, stream (turaa)"', add
label define ss08a_watsrc_lbl 12 `"Water vendor (from deep borehole)"', add
label define ss08a_watsrc_lbl 13 `"Water vendor (from shallow well, pond, river, spring)"', add
label values ss08a_watsrc ss08a_watsrc_lbl

label define ss08a_lighting_lbl 01 `"No lighting"'
label define ss08a_lighting_lbl 02 `"Public electricity"', add
label define ss08a_lighting_lbl 03 `"Private electricity (generator)"', add
label define ss08a_lighting_lbl 04 `"Gas"', add
label define ss08a_lighting_lbl 05 `"Paraffin lantern"', add
label define ss08a_lighting_lbl 06 `"Paraffin lamp"', add
label define ss08a_lighting_lbl 07 `"Firewood"', add
label define ss08a_lighting_lbl 08 `"Grass"', add
label define ss08a_lighting_lbl 09 `"Candle wax"', add
label define ss08a_lighting_lbl 10 `"Solar power"', add
label values ss08a_lighting ss08a_lighting_lbl

label define ss08a_fuelcook_lbl 1 `"Firewood"'
label define ss08a_fuelcook_lbl 2 `"Charcoal"', add
label define ss08a_fuelcook_lbl 3 `"Gas"', add
label define ss08a_fuelcook_lbl 4 `"Paraffin or electricity"', add
label define ss08a_fuelcook_lbl 6 `"Cow dung"', add
label define ss08a_fuelcook_lbl 7 `"Grass"', add
label define ss08a_fuelcook_lbl 9 `"No cooking"', add
label values ss08a_fuelcook ss08a_fuelcook_lbl

label define ss08a_toilet_lbl 1 `"Pit latrine private"'
label define ss08a_toilet_lbl 2 `"Pit latrine shared"', add
label define ss08a_toilet_lbl 3 `"Flush toilet private"', add
label define ss08a_toilet_lbl 4 `"Flush toilet shared"', add
label define ss08a_toilet_lbl 5 `"Bucket toilet"', add
label define ss08a_toilet_lbl 6 `"No toilet facility"', add
label values ss08a_toilet ss08a_toilet_lbl

label define ss08a_vehicle_lbl 1 `"Yes"'
label define ss08a_vehicle_lbl 2 `"No"', add
label values ss08a_vehicle ss08a_vehicle_lbl

label define ss08a_motocyc_lbl 1 `"Yes"'
label define ss08a_motocyc_lbl 2 `"No"', add
label values ss08a_motocyc ss08a_motocyc_lbl

label define ss08a_bicycle_lbl 1 `"Yes"'
label define ss08a_bicycle_lbl 2 `"No"', add
label values ss08a_bicycle ss08a_bicycle_lbl

label define ss08a_boat_lbl 1 `"Yes"'
label define ss08a_boat_lbl 2 `"No"', add
label values ss08a_boat ss08a_boat_lbl

label define ss08a_animtran_lbl 1 `"Yes"'
label define ss08a_animtran_lbl 2 `"No"', add
label values ss08a_animtran ss08a_animtran_lbl

label define ss08a_tractor_lbl 1 `"Yes"'
label define ss08a_tractor_lbl 2 `"No"', add
label values ss08a_tractor ss08a_tractor_lbl

label define ss08a_notrans_lbl 1 `"Yes"'
label define ss08a_notrans_lbl 2 `"No"', add
label values ss08a_notrans ss08a_notrans_lbl

label define ss08a_tv_lbl 1 `"Yes"'
label define ss08a_tv_lbl 2 `"No"', add
label values ss08a_tv ss08a_tv_lbl

label define ss08a_radio_lbl 1 `"Yes"'
label define ss08a_radio_lbl 2 `"No"', add
label values ss08a_radio ss08a_radio_lbl

label define ss08a_mobile_lbl 1 `"Yes"'
label define ss08a_mobile_lbl 2 `"No"', add
label values ss08a_mobile ss08a_mobile_lbl

label define ss08a_phone_lbl 1 `"Yes"'
label define ss08a_phone_lbl 2 `"No"', add
label values ss08a_phone ss08a_phone_lbl

label define ss08a_computer_lbl 1 `"Yes"'
label define ss08a_computer_lbl 2 `"No"', add
label values ss08a_computer ss08a_computer_lbl

label define ss08a_refridge_lbl 1 `"Yes"'
label define ss08a_refridge_lbl 2 `"No"', add
label values ss08a_refridge ss08a_refridge_lbl

label define ss08a_satell_lbl 1 `"Yes"'
label define ss08a_satell_lbl 2 `"No"', add
label values ss08a_satell ss08a_satell_lbl

label define ss08a_fan_lbl 1 `"Yes"'
label define ss08a_fan_lbl 2 `"No"', add
label values ss08a_fan ss08a_fan_lbl

label define ss08a_aircon_lbl 1 `"Yes"'
label define ss08a_aircon_lbl 2 `"No"', add
label values ss08a_aircon ss08a_aircon_lbl

label define ss08a_noamen_lbl 1 `"Yes"'
label define ss08a_noamen_lbl 2 `"No"', add
label values ss08a_noamen ss08a_noamen_lbl

label define ss08a_livehood_lbl 1 `"Subsistence crop farming"'
label define ss08a_livehood_lbl 2 `"Subsistence animal husbandry"', add
label define ss08a_livehood_lbl 3 `"Wages and salaries"', add
label define ss08a_livehood_lbl 4 `"Owned business enterprise"', add
label define ss08a_livehood_lbl 5 `"Property income"', add
label define ss08a_livehood_lbl 6 `"Remittances"', add
label define ss08a_livehood_lbl 7 `"Pension"', add
label define ss08a_livehood_lbl 8 `"Humanitarian aid"', add
label values ss08a_livehood ss08a_livehood_lbl

label define ss08a_cultiv_lbl 1 `"Yes"'
label define ss08a_cultiv_lbl 2 `"No"', add
label values ss08a_cultiv ss08a_cultiv_lbl

label define ss08a_areacult_lbl 000 `"No cultivation/plantation"'
label define ss08a_areacult_lbl 001 `"1 feddan"', add
label define ss08a_areacult_lbl 002 `"2 feddans"', add
label define ss08a_areacult_lbl 003 `"3"', add
label define ss08a_areacult_lbl 004 `"4"', add
label define ss08a_areacult_lbl 005 `"5"', add
label define ss08a_areacult_lbl 006 `"6"', add
label define ss08a_areacult_lbl 007 `"7"', add
label define ss08a_areacult_lbl 008 `"8"', add
label define ss08a_areacult_lbl 009 `"9"', add
label define ss08a_areacult_lbl 010 `"10"', add
label define ss08a_areacult_lbl 011 `"11"', add
label define ss08a_areacult_lbl 012 `"12"', add
label define ss08a_areacult_lbl 013 `"13"', add
label define ss08a_areacult_lbl 014 `"14"', add
label define ss08a_areacult_lbl 015 `"15"', add
label define ss08a_areacult_lbl 016 `"16"', add
label define ss08a_areacult_lbl 017 `"17"', add
label define ss08a_areacult_lbl 018 `"18"', add
label define ss08a_areacult_lbl 019 `"19"', add
label define ss08a_areacult_lbl 020 `"20"', add
label define ss08a_areacult_lbl 021 `"21"', add
label define ss08a_areacult_lbl 022 `"22"', add
label define ss08a_areacult_lbl 023 `"23"', add
label define ss08a_areacult_lbl 024 `"24"', add
label define ss08a_areacult_lbl 025 `"25"', add
label define ss08a_areacult_lbl 026 `"26"', add
label define ss08a_areacult_lbl 027 `"27"', add
label define ss08a_areacult_lbl 028 `"28"', add
label define ss08a_areacult_lbl 029 `"29"', add
label define ss08a_areacult_lbl 030 `"30 to 34"', add
label define ss08a_areacult_lbl 035 `"35 to 39"', add
label define ss08a_areacult_lbl 040 `"40 to 44"', add
label define ss08a_areacult_lbl 045 `"45 to 49"', add
label define ss08a_areacult_lbl 050 `"50 to 54"', add
label define ss08a_areacult_lbl 055 `"55 to 59"', add
label define ss08a_areacult_lbl 060 `"60 to 64"', add
label define ss08a_areacult_lbl 065 `"65 to 69"', add
label define ss08a_areacult_lbl 070 `"70 to 74"', add
label define ss08a_areacult_lbl 075 `"75 to 79"', add
label define ss08a_areacult_lbl 080 `"80 to 84"', add
label define ss08a_areacult_lbl 085 `"85 to 89"', add
label define ss08a_areacult_lbl 090 `"90 to 94"', add
label define ss08a_areacult_lbl 095 `"95 to 99"', add
label define ss08a_areacult_lbl 100 `"100 to 109"', add
label define ss08a_areacult_lbl 110 `"110 to 119"', add
label define ss08a_areacult_lbl 120 `"120 to 129"', add
label define ss08a_areacult_lbl 130 `"130 to 139"', add
label define ss08a_areacult_lbl 140 `"140 to 149"', add
label define ss08a_areacult_lbl 150 `"150 to 159"', add
label define ss08a_areacult_lbl 160 `"160 to 169"', add
label define ss08a_areacult_lbl 170 `"170 to 179"', add
label define ss08a_areacult_lbl 180 `"180 to 189"', add
label define ss08a_areacult_lbl 190 `"190 to 199"', add
label define ss08a_areacult_lbl 200 `"200 to 219"', add
label define ss08a_areacult_lbl 220 `"220 to 239"', add
label define ss08a_areacult_lbl 240 `"240 to 259"', add
label define ss08a_areacult_lbl 260 `"260 to 279"', add
label define ss08a_areacult_lbl 280 `"280 to 299"', add
label define ss08a_areacult_lbl 300 `"300 to 319"', add
label define ss08a_areacult_lbl 320 `"320 to 339"', add
label define ss08a_areacult_lbl 340 `"340 to 359"', add
label define ss08a_areacult_lbl 360 `"360 to 379"', add
label define ss08a_areacult_lbl 380 `"380 to 399"', add
label define ss08a_areacult_lbl 400 `"400 to 419"', add
label define ss08a_areacult_lbl 420 `"420 to 439"', add
label define ss08a_areacult_lbl 440 `"440 to 459"', add
label define ss08a_areacult_lbl 460 `"""', add
label define ss08a_areacult_lbl 480 `"480 to 499"', add
label define ss08a_areacult_lbl 500 `"500 to 519"', add
label define ss08a_areacult_lbl 520 `"520 to 539"', add
label define ss08a_areacult_lbl 540 `"540 to 559"', add
label define ss08a_areacult_lbl 560 `"560 to 579"', add
label define ss08a_areacult_lbl 580 `"580 to 599"', add
label define ss08a_areacult_lbl 600 `"600 to 619"', add
label define ss08a_areacult_lbl 620 `"620 to 639"', add
label define ss08a_areacult_lbl 640 `"640 to 659"', add
label define ss08a_areacult_lbl 660 `"660 to 679"', add
label define ss08a_areacult_lbl 680 `"680 to 699"', add
label define ss08a_areacult_lbl 700 `"700 to 719"', add
label define ss08a_areacult_lbl 720 `"720 to 739"', add
label define ss08a_areacult_lbl 740 `"740 to 759"', add
label define ss08a_areacult_lbl 760 `"760 to 779"', add
label define ss08a_areacult_lbl 780 `"780 to 799"', add
label define ss08a_areacult_lbl 800 `"800 to 819"', add
label define ss08a_areacult_lbl 820 `"820 to 839"', add
label define ss08a_areacult_lbl 840 `"840 to 859"', add
label define ss08a_areacult_lbl 860 `"860 to 879"', add
label define ss08a_areacult_lbl 880 `"880 to 899"', add
label define ss08a_areacult_lbl 900 `"900 to 919"', add
label define ss08a_areacult_lbl 920 `"920 to 939"', add
label define ss08a_areacult_lbl 940 `"940 to 959"', add
label define ss08a_areacult_lbl 960 `"960 to 979"', add
label define ss08a_areacult_lbl 980 `"980 to 998"', add
label define ss08a_areacult_lbl 999 `"999 or more feddans"', add
label values ss08a_areacult ss08a_areacult_lbl

label define ss08a_cereal_lbl 1 `"Yes"'
label define ss08a_cereal_lbl 2 `"No"', add
label define ss08a_cereal_lbl 9 `"NIU (not in universe)"', add
label values ss08a_cereal ss08a_cereal_lbl

label define ss08a_veg_lbl 1 `"Yes"'
label define ss08a_veg_lbl 2 `"No"', add
label define ss08a_veg_lbl 9 `"NIU (not in universe)"', add
label values ss08a_veg ss08a_veg_lbl

label define ss08a_fruit_lbl 1 `"Yes"'
label define ss08a_fruit_lbl 2 `"No"', add
label define ss08a_fruit_lbl 9 `"NIU (not in universe)"', add
label values ss08a_fruit ss08a_fruit_lbl

label define ss08a_oilseed_lbl 1 `"Yes"'
label define ss08a_oilseed_lbl 2 `"No"', add
label define ss08a_oilseed_lbl 9 `"NIU (not in universe)"', add
label values ss08a_oilseed ss08a_oilseed_lbl

label define ss08a_root_lbl 1 `"Yes"'
label define ss08a_root_lbl 2 `"No"', add
label define ss08a_root_lbl 9 `"NIU (not in universe)"', add
label values ss08a_root ss08a_root_lbl

label define ss08a_spice_lbl 1 `"Yes"'
label define ss08a_spice_lbl 2 `"No"', add
label define ss08a_spice_lbl 9 `"NIU (not in universe)"', add
label values ss08a_spice ss08a_spice_lbl

label define ss08a_legum_lbl 1 `"Yes"'
label define ss08a_legum_lbl 2 `"No"', add
label define ss08a_legum_lbl 9 `"NIU (not in universe)"', add
label values ss08a_legum ss08a_legum_lbl

label define ss08a_sugar_lbl 1 `"Yes"'
label define ss08a_sugar_lbl 2 `"No"', add
label define ss08a_sugar_lbl 9 `"NIU (not in universe)"', add
label values ss08a_sugar ss08a_sugar_lbl

label define ss08a_cotton_lbl 1 `"Yes"'
label define ss08a_cotton_lbl 2 `"No"', add
label define ss08a_cotton_lbl 9 `"NIU (not in universe)"', add
label values ss08a_cotton ss08a_cotton_lbl

label define ss08a_coffee_lbl 1 `"Yes"'
label define ss08a_coffee_lbl 2 `"No"', add
label define ss08a_coffee_lbl 9 `"NIU (not in universe)"', add
label values ss08a_coffee ss08a_coffee_lbl

label define ss08a_tea_lbl 1 `"Yes"'
label define ss08a_tea_lbl 2 `"No"', add
label define ss08a_tea_lbl 9 `"NIU (not in universe)"', add
label values ss08a_tea ss08a_tea_lbl

label define ss08a_othcrop_lbl 1 `"Yes"'
label define ss08a_othcrop_lbl 2 `"No"', add
label define ss08a_othcrop_lbl 9 `"NIU (not in universe)"', add
label values ss08a_othcrop ss08a_othcrop_lbl

label define ss08a_landown_lbl 1 `"Owned"'
label define ss08a_landown_lbl 2 `"Rented"', add
label define ss08a_landown_lbl 3 `"Partially owned"', add
label define ss08a_landown_lbl 4 `"Communal"', add
label define ss08a_landown_lbl 9 `"NIU (not in universe)"', add
label values ss08a_landown ss08a_landown_lbl

label define ss08a_fishery_lbl 1 `"Yes"'
label define ss08a_fishery_lbl 2 `"No"', add
label values ss08a_fishery ss08a_fishery_lbl

label define ss08a_cattle_lbl 999 `"999 or more"'
label values ss08a_cattle ss08a_cattle_lbl

label define ss08a_camels_lbl 000 `"0"'
label define ss08a_camels_lbl 001 `"1"', add
label define ss08a_camels_lbl 002 `"2"', add
label define ss08a_camels_lbl 003 `"3"', add
label define ss08a_camels_lbl 004 `"4"', add
label define ss08a_camels_lbl 005 `"5"', add
label define ss08a_camels_lbl 006 `"6"', add
label define ss08a_camels_lbl 007 `"7"', add
label define ss08a_camels_lbl 008 `"8"', add
label define ss08a_camels_lbl 009 `"9+"', add
label values ss08a_camels ss08a_camels_lbl

label define ss08a_sheep_lbl 999 `"999 or more"'
label values ss08a_sheep ss08a_sheep_lbl

label define ss08a_goats_lbl 999 `"999 or more"'
label values ss08a_goats ss08a_goats_lbl

label define ss08a_horses_lbl 000 `"0"'
label define ss08a_horses_lbl 001 `"1"', add
label define ss08a_horses_lbl 002 `"2"', add
label define ss08a_horses_lbl 003 `"3+"', add
label values ss08a_horses ss08a_horses_lbl

label define ss08a_donkeys_lbl 000 `"0"'
label define ss08a_donkeys_lbl 001 `"1"', add
label define ss08a_donkeys_lbl 002 `"2"', add
label define ss08a_donkeys_lbl 003 `"3"', add
label define ss08a_donkeys_lbl 004 `"4"', add
label define ss08a_donkeys_lbl 005 `"5"', add
label define ss08a_donkeys_lbl 006 `"6"', add
label define ss08a_donkeys_lbl 007 `"7"', add
label define ss08a_donkeys_lbl 008 `"8"', add
label define ss08a_donkeys_lbl 009 `"9"', add
label define ss08a_donkeys_lbl 010 `"10"', add
label define ss08a_donkeys_lbl 011 `"11"', add
label define ss08a_donkeys_lbl 012 `"12"', add
label define ss08a_donkeys_lbl 013 `"13"', add
label define ss08a_donkeys_lbl 014 `"14"', add
label define ss08a_donkeys_lbl 015 `"15"', add
label define ss08a_donkeys_lbl 016 `"16"', add
label define ss08a_donkeys_lbl 017 `"17"', add
label define ss08a_donkeys_lbl 018 `"18"', add
label define ss08a_donkeys_lbl 020 `"20 to 29"', add
label define ss08a_donkeys_lbl 030 `"30 to 39"', add
label define ss08a_donkeys_lbl 040 `"40+"', add
label values ss08a_donkeys ss08a_donkeys_lbl

label define ss08a_pigs_lbl 000 `"0"'
label define ss08a_pigs_lbl 001 `"1"', add
label define ss08a_pigs_lbl 002 `"2"', add
label define ss08a_pigs_lbl 003 `"3"', add
label define ss08a_pigs_lbl 004 `"4"', add
label define ss08a_pigs_lbl 005 `"5"', add
label define ss08a_pigs_lbl 006 `"6"', add
label define ss08a_pigs_lbl 007 `"7"', add
label define ss08a_pigs_lbl 008 `"8"', add
label define ss08a_pigs_lbl 009 `"9"', add
label define ss08a_pigs_lbl 010 `"10"', add
label define ss08a_pigs_lbl 011 `"11"', add
label define ss08a_pigs_lbl 012 `"12"', add
label define ss08a_pigs_lbl 013 `"13"', add
label define ss08a_pigs_lbl 014 `"14"', add
label define ss08a_pigs_lbl 015 `"15"', add
label define ss08a_pigs_lbl 016 `"16"', add
label define ss08a_pigs_lbl 017 `"17"', add
label define ss08a_pigs_lbl 018 `"18"', add
label define ss08a_pigs_lbl 019 `"19"', add
label define ss08a_pigs_lbl 020 `"20+"', add
label values ss08a_pigs ss08a_pigs_lbl

label define ss08a_poultry_lbl 000 `"0"'
label define ss08a_poultry_lbl 001 `"1"', add
label define ss08a_poultry_lbl 002 `"2"', add
label define ss08a_poultry_lbl 003 `"3"', add
label define ss08a_poultry_lbl 004 `"4"', add
label define ss08a_poultry_lbl 005 `"5"', add
label define ss08a_poultry_lbl 006 `"6"', add
label define ss08a_poultry_lbl 007 `"7"', add
label define ss08a_poultry_lbl 008 `"8"', add
label define ss08a_poultry_lbl 009 `"9"', add
label define ss08a_poultry_lbl 010 `"10"', add
label define ss08a_poultry_lbl 011 `"11"', add
label define ss08a_poultry_lbl 012 `"12"', add
label define ss08a_poultry_lbl 013 `"13"', add
label define ss08a_poultry_lbl 014 `"14"', add
label define ss08a_poultry_lbl 015 `"15"', add
label define ss08a_poultry_lbl 016 `"16"', add
label define ss08a_poultry_lbl 017 `"17"', add
label define ss08a_poultry_lbl 018 `"18"', add
label define ss08a_poultry_lbl 019 `"19"', add
label define ss08a_poultry_lbl 020 `"20"', add
label define ss08a_poultry_lbl 021 `"21"', add
label define ss08a_poultry_lbl 022 `"22"', add
label define ss08a_poultry_lbl 023 `"23"', add
label define ss08a_poultry_lbl 024 `"24"', add
label define ss08a_poultry_lbl 025 `"25"', add
label define ss08a_poultry_lbl 026 `"26"', add
label define ss08a_poultry_lbl 027 `"27"', add
label define ss08a_poultry_lbl 028 `"28"', add
label define ss08a_poultry_lbl 029 `"29"', add
label define ss08a_poultry_lbl 030 `"30"', add
label define ss08a_poultry_lbl 031 `"31"', add
label define ss08a_poultry_lbl 032 `"32"', add
label define ss08a_poultry_lbl 033 `"33"', add
label define ss08a_poultry_lbl 034 `"34"', add
label define ss08a_poultry_lbl 035 `"35"', add
label define ss08a_poultry_lbl 036 `"36"', add
label define ss08a_poultry_lbl 037 `"37"', add
label define ss08a_poultry_lbl 038 `"38"', add
label define ss08a_poultry_lbl 039 `"39"', add
label define ss08a_poultry_lbl 040 `"40"', add
label define ss08a_poultry_lbl 041 `"41"', add
label define ss08a_poultry_lbl 042 `"42"', add
label define ss08a_poultry_lbl 043 `"43"', add
label define ss08a_poultry_lbl 044 `"44"', add
label define ss08a_poultry_lbl 045 `"45"', add
label define ss08a_poultry_lbl 046 `"46"', add
label define ss08a_poultry_lbl 047 `"47"', add
label define ss08a_poultry_lbl 048 `"48"', add
label define ss08a_poultry_lbl 049 `"49"', add
label define ss08a_poultry_lbl 050 `"50"', add
label define ss08a_poultry_lbl 051 `"51"', add
label define ss08a_poultry_lbl 052 `"52"', add
label define ss08a_poultry_lbl 053 `"53"', add
label define ss08a_poultry_lbl 054 `"54"', add
label define ss08a_poultry_lbl 055 `"55"', add
label define ss08a_poultry_lbl 056 `"56"', add
label define ss08a_poultry_lbl 057 `"57"', add
label define ss08a_poultry_lbl 058 `"58"', add
label define ss08a_poultry_lbl 059 `"59"', add
label define ss08a_poultry_lbl 060 `"60"', add
label define ss08a_poultry_lbl 061 `"61"', add
label define ss08a_poultry_lbl 062 `"62"', add
label define ss08a_poultry_lbl 063 `"63"', add
label define ss08a_poultry_lbl 064 `"64"', add
label define ss08a_poultry_lbl 065 `"65"', add
label define ss08a_poultry_lbl 066 `"66"', add
label define ss08a_poultry_lbl 067 `"67"', add
label define ss08a_poultry_lbl 068 `"68"', add
label define ss08a_poultry_lbl 069 `"69"', add
label define ss08a_poultry_lbl 070 `"70"', add
label define ss08a_poultry_lbl 071 `"71"', add
label define ss08a_poultry_lbl 072 `"72"', add
label define ss08a_poultry_lbl 073 `"73"', add
label define ss08a_poultry_lbl 074 `"74"', add
label define ss08a_poultry_lbl 075 `"75"', add
label define ss08a_poultry_lbl 076 `"76"', add
label define ss08a_poultry_lbl 077 `"77"', add
label define ss08a_poultry_lbl 078 `"78"', add
label define ss08a_poultry_lbl 079 `"79"', add
label define ss08a_poultry_lbl 080 `"80"', add
label define ss08a_poultry_lbl 081 `"81"', add
label define ss08a_poultry_lbl 082 `"82"', add
label define ss08a_poultry_lbl 083 `"83"', add
label define ss08a_poultry_lbl 084 `"84"', add
label define ss08a_poultry_lbl 085 `"85"', add
label define ss08a_poultry_lbl 086 `"86"', add
label define ss08a_poultry_lbl 087 `"87"', add
label define ss08a_poultry_lbl 088 `"88"', add
label define ss08a_poultry_lbl 089 `"89"', add
label define ss08a_poultry_lbl 090 `"90"', add
label define ss08a_poultry_lbl 091 `"91"', add
label define ss08a_poultry_lbl 092 `"92"', add
label define ss08a_poultry_lbl 093 `"93"', add
label define ss08a_poultry_lbl 094 `"94"', add
label define ss08a_poultry_lbl 095 `"95"', add
label define ss08a_poultry_lbl 096 `"96"', add
label define ss08a_poultry_lbl 097 `"97"', add
label define ss08a_poultry_lbl 098 `"98"', add
label define ss08a_poultry_lbl 099 `"99"', add
label define ss08a_poultry_lbl 100 `"100+"', add
label values ss08a_poultry ss08a_poultry_lbl

label define ss08a_deaths_lbl 1 `"Yes"'
label define ss08a_deaths_lbl 2 `"No"', add
label values ss08a_deaths ss08a_deaths_lbl

label define ss08a_qhhtype_lbl 0 `"No imputation"'
label define ss08a_qhhtype_lbl 4 `"Imputation from blank"', add
label values ss08a_qhhtype ss08a_qhhtype_lbl

label define ss08a_qdwtype_lbl 0 `"No imputation"'
label define ss08a_qdwtype_lbl 4 `"Imputation from blank"', add
label define ss08a_qdwtype_lbl 6 `"Imputation from invalid non-blank"', add
label values ss08a_qdwtype ss08a_qdwtype_lbl

label define ss08a_qrooms_lbl 0 `"No imputation"'
label define ss08a_qrooms_lbl 4 `"Imputation from blank"', add
label values ss08a_qrooms ss08a_qrooms_lbl

label define ss08a_qownrshp_lbl 0 `"No imputation"'
label define ss08a_qownrshp_lbl 4 `"Imputation from blank"', add
label define ss08a_qownrshp_lbl 5 `"Imputation from valid non-blank"', add
label define ss08a_qownrshp_lbl 6 `"Imputation from invalid non-blank"', add
label values ss08a_qownrshp ss08a_qownrshp_lbl

label define ss08a_qwatsrc_lbl 0 `"No imputation"'
label define ss08a_qwatsrc_lbl 4 `"Imputation from blank"', add
label define ss08a_qwatsrc_lbl 5 `"Imputation from valid non-blank"', add
label define ss08a_qwatsrc_lbl 6 `"Imputation from invalid non-blank"', add
label values ss08a_qwatsrc ss08a_qwatsrc_lbl

label define ss08a_qlightng_lbl 0 `"No imputation"'
label define ss08a_qlightng_lbl 2 `"Logical from valid non-blank"', add
label define ss08a_qlightng_lbl 4 `"Imputation from blank"', add
label define ss08a_qlightng_lbl 5 `"Imputation from valid non-blank"', add
label define ss08a_qlightng_lbl 6 `"Imputation from invalid non-blank"', add
label values ss08a_qlightng ss08a_qlightng_lbl

label define ss08a_qfuelck_lbl 0 `"No imputation"'
label define ss08a_qfuelck_lbl 2 `"Logical from valid non-blank"', add
label define ss08a_qfuelck_lbl 4 `"Imputation from blank"', add
label define ss08a_qfuelck_lbl 5 `"Imputation from valid non-blank"', add
label define ss08a_qfuelck_lbl 6 `"Imputation from invalid non-blank"', add
label values ss08a_qfuelck ss08a_qfuelck_lbl

label define ss08a_qtoilet_lbl 0 `"No imputation"'
label define ss08a_qtoilet_lbl 4 `"Imputation from blank"', add
label define ss08a_qtoilet_lbl 5 `"Imputation from valid non-blank"', add
label define ss08a_qtoilet_lbl 6 `"Imputation from invalid non-blank"', add
label values ss08a_qtoilet ss08a_qtoilet_lbl

label define ss08a_qvehicle_lbl 0 `"No imputation"'
label define ss08a_qvehicle_lbl 1 `"Logical from blank"', add
label values ss08a_qvehicle ss08a_qvehicle_lbl

label define ss08a_qmotocyc_lbl 0 `"No imputation"'
label define ss08a_qmotocyc_lbl 1 `"Logical from blank"', add
label values ss08a_qmotocyc ss08a_qmotocyc_lbl

label define ss08a_qbicycle_lbl 0 `"No imputation"'
label define ss08a_qbicycle_lbl 1 `"Logical from blank"', add
label values ss08a_qbicycle ss08a_qbicycle_lbl

label define ss08a_qboat_lbl 0 `"No imputation"'
label define ss08a_qboat_lbl 1 `"Logical from blank"', add
label values ss08a_qboat ss08a_qboat_lbl

label define ss08a_qanitran_lbl 0 `"No imputation"'
label define ss08a_qanitran_lbl 1 `"Logical from blank"', add
label values ss08a_qanitran ss08a_qanitran_lbl

label define ss08a_qtractor_lbl 0 `"No imputation"'
label define ss08a_qtractor_lbl 1 `"Logical from blank"', add
label values ss08a_qtractor ss08a_qtractor_lbl

label define ss08a_qnotrans_lbl 0 `"No imputation"'
label define ss08a_qnotrans_lbl 1 `"Logical from blank"', add
label values ss08a_qnotrans ss08a_qnotrans_lbl

label define ss08a_qtv_lbl 0 `"No imputation"'
label define ss08a_qtv_lbl 1 `"Logical from blank"', add
label define ss08a_qtv_lbl 2 `"Logical from valid non-blank"', add
label values ss08a_qtv ss08a_qtv_lbl

label define ss08a_qradio_lbl 0 `"No imputation"'
label define ss08a_qradio_lbl 1 `"Logical from blank"', add
label values ss08a_qradio ss08a_qradio_lbl

label define ss08a_qmobile_lbl 0 `"No imputation"'
label define ss08a_qmobile_lbl 1 `"Logical from blank"', add
label values ss08a_qmobile ss08a_qmobile_lbl

label define ss08a_qphone_lbl 0 `"No imputation"'
label define ss08a_qphone_lbl 1 `"Logical from blank"', add
label values ss08a_qphone ss08a_qphone_lbl

label define ss08a_qcomputr_lbl 0 `"No imputation"'
label define ss08a_qcomputr_lbl 1 `"Logical from blank"', add
label values ss08a_qcomputr ss08a_qcomputr_lbl

label define ss08a_qrefridg_lbl 0 `"No imputation"'
label define ss08a_qrefridg_lbl 1 `"Logical from blank"', add
label define ss08a_qrefridg_lbl 2 `"Logical from valid non-blank"', add
label values ss08a_qrefridg ss08a_qrefridg_lbl

label define ss08a_qsatell_lbl 0 `"No imputation"'
label define ss08a_qsatell_lbl 1 `"Logical from blank"', add
label define ss08a_qsatell_lbl 2 `"Logical from valid non-blank"', add
label values ss08a_qsatell ss08a_qsatell_lbl

label define ss08a_qfan_lbl 0 `"No imputation"'
label define ss08a_qfan_lbl 1 `"Logical from blank"', add
label define ss08a_qfan_lbl 2 `"Logical from valid non-blank"', add
label values ss08a_qfan ss08a_qfan_lbl

label define ss08a_qaircon_lbl 0 `"No imputation"'
label define ss08a_qaircon_lbl 1 `"Logical from blank"', add
label define ss08a_qaircon_lbl 2 `"Logical from valid non-blank"', add
label values ss08a_qaircon ss08a_qaircon_lbl

label define ss08a_qnoamen_lbl 0 `"No imputation"'
label define ss08a_qnoamen_lbl 1 `"Logical from blank"', add
label values ss08a_qnoamen ss08a_qnoamen_lbl

label define ss08a_qlivehod_lbl 0 `"No imputation"'
label define ss08a_qlivehod_lbl 1 `"Logical from blank"', add
label values ss08a_qlivehod ss08a_qlivehod_lbl

label define ss08a_qcultiv_lbl 0 `"No imputation"'
label define ss08a_qcultiv_lbl 1 `"Logical from blank"', add
label values ss08a_qcultiv ss08a_qcultiv_lbl

label define ss08a_qareacul_lbl 0 `"No imputation"'
label define ss08a_qareacul_lbl 1 `"Logical from blank"', add
label define ss08a_qareacul_lbl 2 `"Logical from valid non-blank"', add
label values ss08a_qareacul ss08a_qareacul_lbl

label define ss08a_qcereal_lbl 0 `"No imputation"'
label define ss08a_qcereal_lbl 1 `"Logical from blank"', add
label values ss08a_qcereal ss08a_qcereal_lbl

label define ss08a_qveg_lbl 0 `"No imputation"'
label define ss08a_qveg_lbl 1 `"Logical from blank"', add
label values ss08a_qveg ss08a_qveg_lbl

label define ss08a_qfruit_lbl 0 `"No imputation"'
label define ss08a_qfruit_lbl 1 `"Logical from blank"', add
label values ss08a_qfruit ss08a_qfruit_lbl

label define ss08a_qoilseed_lbl 0 `"No imputation"'
label define ss08a_qoilseed_lbl 1 `"Logical from blank"', add
label values ss08a_qoilseed ss08a_qoilseed_lbl

label define ss08a_qroot_lbl 0 `"No imputation"'
label define ss08a_qroot_lbl 1 `"Logical from blank"', add
label values ss08a_qroot ss08a_qroot_lbl

label define ss08a_qspice_lbl 0 `"No imputation"'
label define ss08a_qspice_lbl 1 `"Logical from blank"', add
label values ss08a_qspice ss08a_qspice_lbl

label define ss08a_qlegum_lbl 0 `"No imputation"'
label define ss08a_qlegum_lbl 1 `"Logical from blank"', add
label values ss08a_qlegum ss08a_qlegum_lbl

label define ss08a_qsugar_lbl 0 `"No imputation"'
label define ss08a_qsugar_lbl 1 `"Logical from blank"', add
label values ss08a_qsugar ss08a_qsugar_lbl

label define ss08a_qcotton_lbl 0 `"No imputation"'
label define ss08a_qcotton_lbl 1 `"Logical from blank"', add
label values ss08a_qcotton ss08a_qcotton_lbl

label define ss08a_qcoffee_lbl 0 `"No imputation"'
label define ss08a_qcoffee_lbl 1 `"Logical from blank"', add
label values ss08a_qcoffee ss08a_qcoffee_lbl

label define ss08a_qtea_lbl 0 `"No imputation"'
label define ss08a_qtea_lbl 1 `"Logical from blank"', add
label values ss08a_qtea ss08a_qtea_lbl

label define ss08a_qothcrop_lbl 0 `"No imputation"'
label define ss08a_qothcrop_lbl 1 `"Logical from blank"', add
label values ss08a_qothcrop ss08a_qothcrop_lbl

label define ss08a_qlandown_lbl 0 `"No imputation"'
label define ss08a_qlandown_lbl 1 `"Logical from blank"', add
label values ss08a_qlandown ss08a_qlandown_lbl

label define ss08a_qfishery_lbl 0 `"No imputation"'
label define ss08a_qfishery_lbl 1 `"Logical from blank"', add
label values ss08a_qfishery ss08a_qfishery_lbl

label define ss08a_qcattle_lbl 0 `"No imputation"'
label values ss08a_qcattle ss08a_qcattle_lbl

label define ss08a_qcamels_lbl 0 `"No imputation"'
label values ss08a_qcamels ss08a_qcamels_lbl

label define ss08a_qsheep_lbl 0 `"No imputation"'
label values ss08a_qsheep ss08a_qsheep_lbl

label define ss08a_qgoats_lbl 0 `"No imputation"'
label values ss08a_qgoats ss08a_qgoats_lbl

label define ss08a_qhorses_lbl 0 `"No imputation"'
label values ss08a_qhorses ss08a_qhorses_lbl

label define ss08a_qdonkeys_lbl 0 `"No imputation"'
label values ss08a_qdonkeys ss08a_qdonkeys_lbl

label define ss08a_qpigs_lbl 0 `"No imputation"'
label define ss08a_qpigs_lbl 1 `"Logical from blank"', add
label values ss08a_qpigs ss08a_qpigs_lbl

label define ss08a_qpoultry_lbl 0 `"No imputation"'
label values ss08a_qpoultry ss08a_qpoultry_lbl

label define ss08a_qdeaths_lbl 0 `"No imputation"'
label define ss08a_qdeaths_lbl 1 `"Logical from blank"', add
label values ss08a_qdeaths ss08a_qdeaths_lbl

label define ss08a_hhwt_lbl 010000 `"10000"'
label define ss08a_hhwt_lbl 116800 `"116800"', add
label define ss08a_hhwt_lbl 121863 `"121863"', add
label define ss08a_hhwt_lbl 138220 `"138220"', add
label define ss08a_hhwt_lbl 141898 `"141898"', add
label define ss08a_hhwt_lbl 149634 `"149634"', add
label define ss08a_hhwt_lbl 152775 `"152775"', add
label define ss08a_hhwt_lbl 153879 `"153879"', add
label define ss08a_hhwt_lbl 157063 `"157063"', add
label define ss08a_hhwt_lbl 158455 `"158455"', add
label define ss08a_hhwt_lbl 162694 `"162694"', add
label values ss08a_hhwt ss08a_hhwt_lbl

label define ss08a_ndeaths_lbl 0 `"0"'
label define ss08a_ndeaths_lbl 1 `"1"', add
label define ss08a_ndeaths_lbl 2 `"2"', add
label define ss08a_ndeaths_lbl 3 `"3"', add
label define ss08a_ndeaths_lbl 4 `"4"', add
label define ss08a_ndeaths_lbl 5 `"5"', add
label define ss08a_ndeaths_lbl 6 `"6"', add
label define ss08a_ndeaths_lbl 7 `"7+"', add
label values ss08a_ndeaths ss08a_ndeaths_lbl

label define ss08a_pernum_lbl 00 `"Household record"'
label define ss08a_pernum_lbl 01 `"1"', add
label define ss08a_pernum_lbl 02 `"2"', add
label define ss08a_pernum_lbl 03 `"3"', add
label define ss08a_pernum_lbl 04 `"4"', add
label define ss08a_pernum_lbl 05 `"5"', add
label define ss08a_pernum_lbl 06 `"6"', add
label define ss08a_pernum_lbl 07 `"7"', add
label define ss08a_pernum_lbl 08 `"8"', add
label define ss08a_pernum_lbl 09 `"9"', add
label define ss08a_pernum_lbl 10 `"10"', add
label define ss08a_pernum_lbl 11 `"11"', add
label define ss08a_pernum_lbl 12 `"12"', add
label define ss08a_pernum_lbl 13 `"13"', add
label define ss08a_pernum_lbl 14 `"14"', add
label define ss08a_pernum_lbl 15 `"15"', add
label define ss08a_pernum_lbl 16 `"16"', add
label define ss08a_pernum_lbl 17 `"17"', add
label define ss08a_pernum_lbl 18 `"18"', add
label define ss08a_pernum_lbl 19 `"19"', add
label define ss08a_pernum_lbl 20 `"20"', add
label define ss08a_pernum_lbl 21 `"21"', add
label define ss08a_pernum_lbl 22 `"22"', add
label define ss08a_pernum_lbl 23 `"23"', add
label define ss08a_pernum_lbl 24 `"24"', add
label define ss08a_pernum_lbl 25 `"25"', add
label define ss08a_pernum_lbl 26 `"26"', add
label define ss08a_pernum_lbl 27 `"27"', add
label define ss08a_pernum_lbl 28 `"28"', add
label define ss08a_pernum_lbl 29 `"29"', add
label define ss08a_pernum_lbl 30 `"30"', add
label define ss08a_pernum_lbl 31 `"31"', add
label define ss08a_pernum_lbl 32 `"32"', add
label define ss08a_pernum_lbl 33 `"33"', add
label define ss08a_pernum_lbl 34 `"34"', add
label define ss08a_pernum_lbl 35 `"35"', add
label define ss08a_pernum_lbl 36 `"36"', add
label define ss08a_pernum_lbl 37 `"37"', add
label define ss08a_pernum_lbl 38 `"38"', add
label define ss08a_pernum_lbl 39 `"39"', add
label define ss08a_pernum_lbl 40 `"40"', add
label define ss08a_pernum_lbl 41 `"41"', add
label define ss08a_pernum_lbl 42 `"42"', add
label define ss08a_pernum_lbl 43 `"43"', add
label define ss08a_pernum_lbl 44 `"44"', add
label define ss08a_pernum_lbl 45 `"45"', add
label define ss08a_pernum_lbl 46 `"46"', add
label define ss08a_pernum_lbl 47 `"47"', add
label define ss08a_pernum_lbl 48 `"48"', add
label define ss08a_pernum_lbl 49 `"49"', add
label define ss08a_pernum_lbl 50 `"50"', add
label values ss08a_pernum ss08a_pernum_lbl

label define ss08a_relate_lbl 01 `"Head"'
label define ss08a_relate_lbl 02 `"Spouse"', add
label define ss08a_relate_lbl 03 `"Daughter/son"', add
label define ss08a_relate_lbl 04 `"Spouse of son/daughter"', add
label define ss08a_relate_lbl 05 `"Grandchild"', add
label define ss08a_relate_lbl 06 `"Niece/nephew"', add
label define ss08a_relate_lbl 07 `"Parent/parent in-law"', add
label define ss08a_relate_lbl 08 `"Sibling/sibling-in-law"', add
label define ss08a_relate_lbl 09 `"Other relative"', add
label define ss08a_relate_lbl 10 `"Non-relative"', add
label values ss08a_relate ss08a_relate_lbl

label define ss08a_sex_lbl 1 `"Male"'
label define ss08a_sex_lbl 2 `"Female"', add
label values ss08a_sex ss08a_sex_lbl

label define ss08a_nation_lbl 1 `"Sudanese"'
label define ss08a_nation_lbl 2 `"Ugandan"', add
label define ss08a_nation_lbl 3 `"Kenyan"', add
label define ss08a_nation_lbl 4 `"Congolese (DRC)"', add
label define ss08a_nation_lbl 5 `"Chadian"', add
label define ss08a_nation_lbl 6 `"Central African"', add
label define ss08a_nation_lbl 7 `"Nigerian"', add
label define ss08a_nation_lbl 8 `"Other countries"', add
label values ss08a_nation ss08a_nation_lbl

label define ss08a_reggroup_lbl 1 `"Northern Sudanese"'
label define ss08a_reggroup_lbl 2 `"Southern Sudanese"', add
label define ss08a_reggroup_lbl 3 `"Non-Sudanese"', add
label values ss08a_reggroup ss08a_reggroup_lbl

label define ss08a_orregion_lbl 01 `"Northern"'
label define ss08a_orregion_lbl 02 `"Eastern"', add
label define ss08a_orregion_lbl 03 `"Khartoum"', add
label define ss08a_orregion_lbl 04 `"Central"', add
label define ss08a_orregion_lbl 05 `"Kordofan"', add
label define ss08a_orregion_lbl 06 `"Darfur"', add
label define ss08a_orregion_lbl 07 `"Upper Nile"', add
label define ss08a_orregion_lbl 08 `"Bahr El Ghazal"', add
label define ss08a_orregion_lbl 09 `"Equatoria"', add
label define ss08a_orregion_lbl 10 `"Not Sudan"', add
label define ss08a_orregion_lbl 11 `"Unknown"', add
label values ss08a_orregion ss08a_orregion_lbl

label define ss08a_bplstate_lbl 71 `"Upper Nile"'
label define ss08a_bplstate_lbl 72 `"Jonglei"', add
label define ss08a_bplstate_lbl 73 `"Unity"', add
label define ss08a_bplstate_lbl 81 `"Warrap"', add
label define ss08a_bplstate_lbl 82 `"Northern Bahr El Ghazal"', add
label define ss08a_bplstate_lbl 83 `"Western Bahr El Ghazal"', add
label define ss08a_bplstate_lbl 84 `"Lakes"', add
label define ss08a_bplstate_lbl 91 `"Western Equatoria"', add
label define ss08a_bplstate_lbl 92 `"Central Equatoria"', add
label define ss08a_bplstate_lbl 93 `"Eastern Equatoria"', add
label define ss08a_bplstate_lbl 11 `"Northern"', add
label define ss08a_bplstate_lbl 12 `"Nahr El Nil"', add
label define ss08a_bplstate_lbl 21 `"Red Sea"', add
label define ss08a_bplstate_lbl 22 `"Kassala"', add
label define ss08a_bplstate_lbl 23 `"Al Gedarif"', add
label define ss08a_bplstate_lbl 31 `"Khartoum"', add
label define ss08a_bplstate_lbl 41 `"Al Gezira"', add
label define ss08a_bplstate_lbl 42 `"White Nile"', add
label define ss08a_bplstate_lbl 43 `"Sinnar"', add
label define ss08a_bplstate_lbl 44 `"Blue Nile"', add
label define ss08a_bplstate_lbl 51 `"North Kordofan"', add
label define ss08a_bplstate_lbl 52 `"South Kordofan"', add
label define ss08a_bplstate_lbl 61 `"North Darfur"', add
label define ss08a_bplstate_lbl 62 `"West Darfur"', add
label define ss08a_bplstate_lbl 63 `"South Darfur"', add
label define ss08a_bplstate_lbl 99 `"Abroad"', add
label values ss08a_bplstate ss08a_bplstate_lbl

label define ss08a_ustate_lbl 71 `"Upper Nile"'
label define ss08a_ustate_lbl 72 `"Jonglei"', add
label define ss08a_ustate_lbl 73 `"Unity"', add
label define ss08a_ustate_lbl 81 `"Warrap"', add
label define ss08a_ustate_lbl 82 `"Northern Bahr El Ghazal"', add
label define ss08a_ustate_lbl 83 `"Western Bahr El Ghazal"', add
label define ss08a_ustate_lbl 84 `"Lakes"', add
label define ss08a_ustate_lbl 91 `"Western Equatoria"', add
label define ss08a_ustate_lbl 92 `"Central Equatoria"', add
label define ss08a_ustate_lbl 93 `"Eastern Equatoria"', add
label define ss08a_ustate_lbl 10 `"Northern region"', add
label define ss08a_ustate_lbl 20 `"Eastern region"', add
label define ss08a_ustate_lbl 31 `"Khartoum"', add
label define ss08a_ustate_lbl 40 `"Al Gezira"', add
label define ss08a_ustate_lbl 44 `"Blue Nile"', add
label define ss08a_ustate_lbl 51 `"North Kordofan"', add
label define ss08a_ustate_lbl 52 `"South Kordofan"', add
label define ss08a_ustate_lbl 61 `"North Darfur"', add
label define ss08a_ustate_lbl 62 `"West Darfur"', add
label define ss08a_ustate_lbl 63 `"South Darfur"', add
label define ss08a_ustate_lbl 99 `"Abroad"', add
label values ss08a_ustate ss08a_ustate_lbl

label define ss08a_durres_lbl 00 `"0"'
label define ss08a_durres_lbl 01 `"1"', add
label define ss08a_durres_lbl 02 `"2"', add
label define ss08a_durres_lbl 03 `"3"', add
label define ss08a_durres_lbl 04 `"4"', add
label define ss08a_durres_lbl 05 `"5"', add
label define ss08a_durres_lbl 06 `"6"', add
label define ss08a_durres_lbl 07 `"7"', add
label define ss08a_durres_lbl 08 `"8"', add
label define ss08a_durres_lbl 09 `"9"', add
label define ss08a_durres_lbl 10 `"10"', add
label define ss08a_durres_lbl 11 `"11"', add
label define ss08a_durres_lbl 12 `"12"', add
label define ss08a_durres_lbl 13 `"13"', add
label define ss08a_durres_lbl 14 `"14"', add
label define ss08a_durres_lbl 15 `"15"', add
label define ss08a_durres_lbl 16 `"16"', add
label define ss08a_durres_lbl 17 `"17"', add
label define ss08a_durres_lbl 18 `"18"', add
label define ss08a_durres_lbl 19 `"19"', add
label define ss08a_durres_lbl 20 `"20"', add
label define ss08a_durres_lbl 21 `"21"', add
label define ss08a_durres_lbl 22 `"22"', add
label define ss08a_durres_lbl 23 `"23"', add
label define ss08a_durres_lbl 24 `"24"', add
label define ss08a_durres_lbl 25 `"25"', add
label define ss08a_durres_lbl 26 `"26"', add
label define ss08a_durres_lbl 27 `"27"', add
label define ss08a_durres_lbl 28 `"28"', add
label define ss08a_durres_lbl 29 `"29"', add
label define ss08a_durres_lbl 30 `"30"', add
label define ss08a_durres_lbl 31 `"31"', add
label define ss08a_durres_lbl 32 `"32"', add
label define ss08a_durres_lbl 33 `"33"', add
label define ss08a_durres_lbl 34 `"34"', add
label define ss08a_durres_lbl 35 `"35"', add
label define ss08a_durres_lbl 36 `"36"', add
label define ss08a_durres_lbl 37 `"37"', add
label define ss08a_durres_lbl 38 `"38"', add
label define ss08a_durres_lbl 39 `"39"', add
label define ss08a_durres_lbl 40 `"40"', add
label define ss08a_durres_lbl 41 `"41"', add
label define ss08a_durres_lbl 42 `"42"', add
label define ss08a_durres_lbl 43 `"43"', add
label define ss08a_durres_lbl 44 `"44"', add
label define ss08a_durres_lbl 45 `"45"', add
label define ss08a_durres_lbl 46 `"46"', add
label define ss08a_durres_lbl 47 `"47"', add
label define ss08a_durres_lbl 48 `"48"', add
label define ss08a_durres_lbl 49 `"49"', add
label define ss08a_durres_lbl 50 `"50"', add
label define ss08a_durres_lbl 51 `"51"', add
label define ss08a_durres_lbl 52 `"52"', add
label define ss08a_durres_lbl 53 `"53"', add
label define ss08a_durres_lbl 54 `"54"', add
label define ss08a_durres_lbl 55 `"55"', add
label define ss08a_durres_lbl 56 `"56"', add
label define ss08a_durres_lbl 57 `"57"', add
label define ss08a_durres_lbl 58 `"58"', add
label define ss08a_durres_lbl 59 `"59"', add
label define ss08a_durres_lbl 60 `"60"', add
label define ss08a_durres_lbl 61 `"61"', add
label define ss08a_durres_lbl 62 `"62"', add
label define ss08a_durres_lbl 63 `"63"', add
label define ss08a_durres_lbl 64 `"64"', add
label define ss08a_durres_lbl 65 `"65"', add
label define ss08a_durres_lbl 66 `"66"', add
label define ss08a_durres_lbl 67 `"67"', add
label define ss08a_durres_lbl 68 `"68"', add
label define ss08a_durres_lbl 69 `"69"', add
label define ss08a_durres_lbl 70 `"70"', add
label define ss08a_durres_lbl 71 `"71"', add
label define ss08a_durres_lbl 72 `"72"', add
label define ss08a_durres_lbl 73 `"73"', add
label define ss08a_durres_lbl 74 `"74"', add
label define ss08a_durres_lbl 75 `"75"', add
label define ss08a_durres_lbl 76 `"76"', add
label define ss08a_durres_lbl 77 `"77"', add
label define ss08a_durres_lbl 78 `"78"', add
label define ss08a_durres_lbl 79 `"79"', add
label define ss08a_durres_lbl 80 `"80"', add
label define ss08a_durres_lbl 81 `"81"', add
label define ss08a_durres_lbl 82 `"82"', add
label define ss08a_durres_lbl 83 `"83"', add
label define ss08a_durres_lbl 84 `"84"', add
label define ss08a_durres_lbl 85 `"85"', add
label define ss08a_durres_lbl 86 `"86"', add
label define ss08a_durres_lbl 87 `"87"', add
label define ss08a_durres_lbl 88 `"88"', add
label define ss08a_durres_lbl 89 `"89"', add
label define ss08a_durres_lbl 90 `"90+"', add
label values ss08a_durres ss08a_durres_lbl

label define ss08a_migstate_lbl 71 `"Upper Nile"'
label define ss08a_migstate_lbl 72 `"Jonglei"', add
label define ss08a_migstate_lbl 73 `"Unity"', add
label define ss08a_migstate_lbl 81 `"Warrap"', add
label define ss08a_migstate_lbl 82 `"Northern Bahr El Ghazal"', add
label define ss08a_migstate_lbl 83 `"Western Bahr El Ghazal"', add
label define ss08a_migstate_lbl 84 `"Lakes"', add
label define ss08a_migstate_lbl 91 `"Western Equatoria"', add
label define ss08a_migstate_lbl 92 `"Central Equatoria"', add
label define ss08a_migstate_lbl 93 `"Eastern Equatoria"', add
label define ss08a_migstate_lbl 11 `"Northern"', add
label define ss08a_migstate_lbl 12 `"Nahr El Nil"', add
label define ss08a_migstate_lbl 21 `"Red Sea"', add
label define ss08a_migstate_lbl 22 `"Kassala"', add
label define ss08a_migstate_lbl 23 `"Al Gedarif"', add
label define ss08a_migstate_lbl 31 `"Khartoum"', add
label define ss08a_migstate_lbl 41 `"Al Gezira"', add
label define ss08a_migstate_lbl 42 `"White Nile"', add
label define ss08a_migstate_lbl 43 `"Sinnar"', add
label define ss08a_migstate_lbl 44 `"Blue Nile"', add
label define ss08a_migstate_lbl 51 `"North Kordofan"', add
label define ss08a_migstate_lbl 52 `"South Kordofan"', add
label define ss08a_migstate_lbl 61 `"North Darfur"', add
label define ss08a_migstate_lbl 62 `"West Darfur"', add
label define ss08a_migstate_lbl 63 `"South Darfur"', add
label define ss08a_migstate_lbl 98 `"Abroad"', add
label define ss08a_migstate_lbl 99 `"NIU (not in universe)"', add
label values ss08a_migstate ss08a_migstate_lbl

label define ss08a_mothlive_lbl 1 `"Mother alive"'
label define ss08a_mothlive_lbl 2 `"Mother dead"', add
label values ss08a_mothlive ss08a_mothlive_lbl

label define ss08a_fathlive_lbl 1 `"Father alive"'
label define ss08a_fathlive_lbl 2 `"Father dead"', add
label values ss08a_fathlive ss08a_fathlive_lbl

label define ss08a_limleg_lbl 1 `"Yes"'
label define ss08a_limleg_lbl 2 `"No"', add
label values ss08a_limleg ss08a_limleg_lbl

label define ss08a_lossleg_lbl 1 `"Yes"'
label define ss08a_lossleg_lbl 2 `"No"', add
label values ss08a_lossleg ss08a_lossleg_lbl

label define ss08a_limarm_lbl 1 `"Yes"'
label define ss08a_limarm_lbl 2 `"No"', add
label values ss08a_limarm ss08a_limarm_lbl

label define ss08a_lossarm_lbl 1 `"Yes"'
label define ss08a_lossarm_lbl 2 `"No"', add
label values ss08a_lossarm ss08a_lossarm_lbl

label define ss08a_diffhear_lbl 1 `"Yes"'
label define ss08a_diffhear_lbl 2 `"No"', add
label values ss08a_diffhear ss08a_diffhear_lbl

label define ss08a_deaf_lbl 1 `"Yes"'
label define ss08a_deaf_lbl 2 `"No"', add
label values ss08a_deaf ss08a_deaf_lbl

label define ss08a_diffsee_lbl 1 `"Yes"'
label define ss08a_diffsee_lbl 2 `"No"', add
label values ss08a_diffsee ss08a_diffsee_lbl

label define ss08a_blind_lbl 1 `"Yes"'
label define ss08a_blind_lbl 2 `"No"', add
label values ss08a_blind ss08a_blind_lbl

label define ss08a_diffspk_lbl 1 `"Yes"'
label define ss08a_diffspk_lbl 2 `"No"', add
label values ss08a_diffspk ss08a_diffspk_lbl

label define ss08a_mute_lbl 1 `"Yes"'
label define ss08a_mute_lbl 2 `"No"', add
label values ss08a_mute ss08a_mute_lbl

label define ss08a_diffment_lbl 1 `"Yes"'
label define ss08a_diffment_lbl 2 `"No"', add
label values ss08a_diffment ss08a_diffment_lbl

label define ss08a_disab_lbl 0 `"No disability"'
label define ss08a_disab_lbl 1 `"Yes, has disability"', add
label values ss08a_disab ss08a_disab_lbl

label define ss08a_lit_lbl 1 `"Yes"'
label define ss08a_lit_lbl 2 `"No"', add
label define ss08a_lit_lbl 9 `"NIU (not in universe)"', add
label values ss08a_lit ss08a_lit_lbl

label define ss08a_school_lbl 1 `"Currently attending"'
label define ss08a_school_lbl 2 `"Previously attended"', add
label define ss08a_school_lbl 3 `"Never attended"', add
label define ss08a_school_lbl 9 `"NIU (not in universe)"', add
label values ss08a_school ss08a_school_lbl

label define ss08a_attend_lbl 01 `"P1"'
label define ss08a_attend_lbl 02 `"P2"', add
label define ss08a_attend_lbl 03 `"P3"', add
label define ss08a_attend_lbl 04 `"P4"', add
label define ss08a_attend_lbl 05 `"P5"', add
label define ss08a_attend_lbl 06 `"P6"', add
label define ss08a_attend_lbl 07 `"P7"', add
label define ss08a_attend_lbl 08 `"P8"', add
label define ss08a_attend_lbl 09 `"S1"', add
label define ss08a_attend_lbl 10 `"S2"', add
label define ss08a_attend_lbl 11 `"S3"', add
label define ss08a_attend_lbl 12 `"S4"', add
label define ss08a_attend_lbl 15 `"Post secondary/diploma program"', add
label define ss08a_attend_lbl 16 `"College"', add
label define ss08a_attend_lbl 17 `"University"', add
label define ss08a_attend_lbl 18 `"Masters or PhD program"', add
label define ss08a_attend_lbl 99 `"NIU (not in universe)"', add
label values ss08a_attend ss08a_attend_lbl

label define ss08a_edattain_lbl 01 `"No qualification"'
label define ss08a_edattain_lbl 02 `"Incomplete primary"', add
label define ss08a_edattain_lbl 03 `"Primary 4"', add
label define ss08a_edattain_lbl 04 `"Primary 6"', add
label define ss08a_edattain_lbl 05 `"Primary 8"', add
label define ss08a_edattain_lbl 06 `"Junior 3"', add
label define ss08a_edattain_lbl 07 `"Junior 4"', add
label define ss08a_edattain_lbl 08 `"Secondary 3"', add
label define ss08a_edattain_lbl 09 `"Secondary 4"', add
label define ss08a_edattain_lbl 10 `"Secondary 5"', add
label define ss08a_edattain_lbl 11 `"Secondary 6"', add
label define ss08a_edattain_lbl 12 `"Post-secondary diploma"', add
label define ss08a_edattain_lbl 13 `"University first degree"', add
label define ss08a_edattain_lbl 14 `"Post-graduate diploma"', add
label define ss08a_edattain_lbl 15 `"Masters degree"', add
label define ss08a_edattain_lbl 16 `"PhD degree"', add
label define ss08a_edattain_lbl 17 `"Khalwa"', add
label define ss08a_edattain_lbl 99 `"NIU (not in universe)"', add
label values ss08a_edattain ss08a_edattain_lbl

label define ss08a_empstat_lbl 1 `"Worked last week"'
label define ss08a_empstat_lbl 2 `"Temporarily away from job"', add
label define ss08a_empstat_lbl 3 `"Worked before and seeking work"', add
label define ss08a_empstat_lbl 4 `"First time job seeker"', add
label define ss08a_empstat_lbl 5 `"Not working or seeking work"', add
label define ss08a_empstat_lbl 9 `"NIU (not in universe)"', add
label values ss08a_empstat ss08a_empstat_lbl

label define ss08a_reason_lbl 1 `"No hope to find job"'
label define ss08a_reason_lbl 2 `"Full-time student"', add
label define ss08a_reason_lbl 3 `"Income recipient"', add
label define ss08a_reason_lbl 4 `"Too old"', add
label define ss08a_reason_lbl 5 `"Disabled/too sick"', add
label define ss08a_reason_lbl 6 `"Full-time homemaker"', add
label define ss08a_reason_lbl 7 `"Pensioner/retired"', add
label define ss08a_reason_lbl 9 `"NIU (not in universe)"', add
label values ss08a_reason ss08a_reason_lbl

label define ss08a_occ_lbl 01 `"Armed forces"'
label define ss08a_occ_lbl 11 `"Chief executives senior officials and legislators"', add
label define ss08a_occ_lbl 12 `"Administrative and commercial managers"', add
label define ss08a_occ_lbl 14 `"Hospitality, retail and other services managers"', add
label define ss08a_occ_lbl 22 `"Health professionals"', add
label define ss08a_occ_lbl 23 `"Teaching professionals"', add
label define ss08a_occ_lbl 24 `"Business, administration and information technology professionals"', add
label define ss08a_occ_lbl 26 `"Legal, social and cultural professionals"', add
label define ss08a_occ_lbl 31 `"Science and engineering associate professionals"', add
label define ss08a_occ_lbl 32 `"Health associate professionals"', add
label define ss08a_occ_lbl 33 `"Business and administration associate professionals"', add
label define ss08a_occ_lbl 34 `"Legal, social, cultural and related associate professionals"', add
label define ss08a_occ_lbl 35 `"Information and communications technicians (ICT)"', add
label define ss08a_occ_lbl 41 `"General and keyboard clerks"', add
label define ss08a_occ_lbl 42 `"Customer services clerks"', add
label define ss08a_occ_lbl 43 `"Numerical and material recording clerks"', add
label define ss08a_occ_lbl 44 `"Other clerical support workers"', add
label define ss08a_occ_lbl 51 `"Personal service workers"', add
label define ss08a_occ_lbl 52 `"Sales workers"', add
label define ss08a_occ_lbl 53 `"Personal care workers"', add
label define ss08a_occ_lbl 54 `"Protective services workers"', add
label define ss08a_occ_lbl 61 `"Market-oriented skilled forestry, fishery and hunting workers"', add
label define ss08a_occ_lbl 63 `"Subsistence farmers, fishers, hunters and gatherers"', add
label define ss08a_occ_lbl 71 `"Building and related trades workers, excluding electricians"', add
label define ss08a_occ_lbl 72 `"Metal, machinery and related trades workers"', add
label define ss08a_occ_lbl 73 `"Handicraft and printing workers"', add
label define ss08a_occ_lbl 74 `"Electrical and electronic trades workers"', add
label define ss08a_occ_lbl 75 `"Food processing, wood working, garment and other craft and related trades workers"', add
label define ss08a_occ_lbl 83 `"Drivers and mobile plant operators"', add
label define ss08a_occ_lbl 91 `"Cleaners and helpers"', add
label define ss08a_occ_lbl 92 `"Agricultural, forestry and fishery labourers"', add
label define ss08a_occ_lbl 93 `"Labourers in mining, construction, manufacturing and transport"', add
label define ss08a_occ_lbl 94 `"Food preparation assistants"', add
label define ss08a_occ_lbl 95 `"Street and related sales and service workers"', add
label define ss08a_occ_lbl 96 `"Refuse workers and other elementary workers"', add
label define ss08a_occ_lbl 97 `"Other workers, response suppressed"', add
label define ss08a_occ_lbl 99 `"NIU (not in universe)"', add
label values ss08a_occ ss08a_occ_lbl

label define ss08a_ind_lbl 001 `"Crop and animal production, hunting and related service activities"'
label define ss08a_ind_lbl 002 `"Forestry and logging"', add
label define ss08a_ind_lbl 003 `"Fishing and aquaculture"', add
label define ss08a_ind_lbl 008 `"Other mining and quarrying"', add
label define ss08a_ind_lbl 010 `"Manufacture of food products"', add
label define ss08a_ind_lbl 011 `"Manufacture of beverages"', add
label define ss08a_ind_lbl 014 `"Manufacture of wearing apparel"', add
label define ss08a_ind_lbl 016 `"Manufacture of wood and of products of wood and cork, except furniture"', add
label define ss08a_ind_lbl 023 `"Manufacture of other non-metallic mineral products"', add
label define ss08a_ind_lbl 025 `"Manufacture of fabricated metal products, except machinery and equipment"', add
label define ss08a_ind_lbl 029 `"Other manufacturing"', add
label define ss08a_ind_lbl 031 `"Manufacture of furniture"', add
label define ss08a_ind_lbl 033 `"Repair and installation of machinery and equipment"', add
label define ss08a_ind_lbl 041 `"Construction of buildings"', add
label define ss08a_ind_lbl 042 `"Civil engineering"', add
label define ss08a_ind_lbl 045 `"Wholesale and retail trade and repair of motor vehicles and motorcycles"', add
label define ss08a_ind_lbl 047 `"Retail trade, except of motor vehicles and motorcycles"', add
label define ss08a_ind_lbl 049 `"Land, water and air transport"', add
label define ss08a_ind_lbl 055 `"Accommodation"', add
label define ss08a_ind_lbl 056 `"Food and beverage service activities"', add
label define ss08a_ind_lbl 058 `"Information, telecommunications, and entertainment"', add
label define ss08a_ind_lbl 064 `"Financial service activities, insurance and real estate"', add
label define ss08a_ind_lbl 069 `"Legal and accounting activities"', add
label define ss08a_ind_lbl 075 `"Veterinary activities"', add
label define ss08a_ind_lbl 079 `"Travel services, building services and other administrative services"', add
label define ss08a_ind_lbl 084 `"Public administration and defence"', add
label define ss08a_ind_lbl 085 `"Education"', add
label define ss08a_ind_lbl 086 `"Human health activities"', add
label define ss08a_ind_lbl 093 `"Sports activities and amusement and recreation activities"', add
label define ss08a_ind_lbl 094 `"Activities of membership organizations"', add
label define ss08a_ind_lbl 095 `"Repair of computers and personal and household goods"', add
label define ss08a_ind_lbl 096 `"Other personal service activities"', add
label define ss08a_ind_lbl 097 `"Activities of households as employers of domestic personnel"', add
label define ss08a_ind_lbl 098 `"Undifferentiated goods- and services-producing activities of private households for own use"', add
label define ss08a_ind_lbl 099 `"Activities of extraterritorial organizations and bodies"', add
label define ss08a_ind_lbl 100 `"Other industry, response suppressed"', add
label define ss08a_ind_lbl 999 `"NIU (not in universe)"', add
label values ss08a_ind ss08a_ind_lbl

label define ss08a_classwk_lbl 1 `"Paid employee"'
label define ss08a_classwk_lbl 2 `"Employer"', add
label define ss08a_classwk_lbl 3 `"Own account worker"', add
label define ss08a_classwk_lbl 4 `"Unpaid family worker"', add
label define ss08a_classwk_lbl 5 `"Unpaid working for others"', add
label define ss08a_classwk_lbl 9 `"NIU (not in universe)"', add
label values ss08a_classwk ss08a_classwk_lbl

label define ss08a_marst_lbl 1 `"Never married"'
label define ss08a_marst_lbl 2 `"Married"', add
label define ss08a_marst_lbl 3 `"Widowed"', add
label define ss08a_marst_lbl 4 `"Divorced"', add
label define ss08a_marst_lbl 9 `"NIU (not in universe)"', add
label values ss08a_marst ss08a_marst_lbl

label define ss08a_agemarr_lbl 12 `"12"'
label define ss08a_agemarr_lbl 13 `"13"', add
label define ss08a_agemarr_lbl 14 `"14"', add
label define ss08a_agemarr_lbl 15 `"15"', add
label define ss08a_agemarr_lbl 16 `"16"', add
label define ss08a_agemarr_lbl 17 `"17"', add
label define ss08a_agemarr_lbl 18 `"18"', add
label define ss08a_agemarr_lbl 19 `"19"', add
label define ss08a_agemarr_lbl 20 `"20"', add
label define ss08a_agemarr_lbl 21 `"21"', add
label define ss08a_agemarr_lbl 22 `"22"', add
label define ss08a_agemarr_lbl 23 `"23"', add
label define ss08a_agemarr_lbl 24 `"24"', add
label define ss08a_agemarr_lbl 25 `"25"', add
label define ss08a_agemarr_lbl 26 `"26"', add
label define ss08a_agemarr_lbl 27 `"27"', add
label define ss08a_agemarr_lbl 28 `"28"', add
label define ss08a_agemarr_lbl 29 `"29"', add
label define ss08a_agemarr_lbl 30 `"30"', add
label define ss08a_agemarr_lbl 31 `"31"', add
label define ss08a_agemarr_lbl 32 `"32"', add
label define ss08a_agemarr_lbl 33 `"33"', add
label define ss08a_agemarr_lbl 34 `"34"', add
label define ss08a_agemarr_lbl 35 `"35"', add
label define ss08a_agemarr_lbl 36 `"36"', add
label define ss08a_agemarr_lbl 37 `"37"', add
label define ss08a_agemarr_lbl 38 `"38"', add
label define ss08a_agemarr_lbl 39 `"39"', add
label define ss08a_agemarr_lbl 40 `"40"', add
label define ss08a_agemarr_lbl 41 `"41"', add
label define ss08a_agemarr_lbl 42 `"42"', add
label define ss08a_agemarr_lbl 43 `"43"', add
label define ss08a_agemarr_lbl 44 `"44"', add
label define ss08a_agemarr_lbl 45 `"45"', add
label define ss08a_agemarr_lbl 46 `"46"', add
label define ss08a_agemarr_lbl 47 `"47"', add
label define ss08a_agemarr_lbl 48 `"48"', add
label define ss08a_agemarr_lbl 49 `"49"', add
label define ss08a_agemarr_lbl 50 `"50"', add
label define ss08a_agemarr_lbl 51 `"51"', add
label define ss08a_agemarr_lbl 52 `"52"', add
label define ss08a_agemarr_lbl 53 `"53"', add
label define ss08a_agemarr_lbl 54 `"54"', add
label define ss08a_agemarr_lbl 55 `"55"', add
label define ss08a_agemarr_lbl 56 `"56"', add
label define ss08a_agemarr_lbl 57 `"57"', add
label define ss08a_agemarr_lbl 58 `"58"', add
label define ss08a_agemarr_lbl 59 `"59"', add
label define ss08a_agemarr_lbl 60 `"60+"', add
label define ss08a_agemarr_lbl 99 `"NIU (not in universe)"', add
label values ss08a_agemarr ss08a_agemarr_lbl

label define ss08a_chbornm_lbl 00 `"0"'
label define ss08a_chbornm_lbl 01 `"1"', add
label define ss08a_chbornm_lbl 02 `"2"', add
label define ss08a_chbornm_lbl 03 `"3"', add
label define ss08a_chbornm_lbl 04 `"4"', add
label define ss08a_chbornm_lbl 05 `"5"', add
label define ss08a_chbornm_lbl 06 `"6"', add
label define ss08a_chbornm_lbl 07 `"7"', add
label define ss08a_chbornm_lbl 08 `"8"', add
label define ss08a_chbornm_lbl 09 `"9"', add
label define ss08a_chbornm_lbl 10 `"10"', add
label define ss08a_chbornm_lbl 11 `"11"', add
label define ss08a_chbornm_lbl 12 `"12+"', add
label define ss08a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values ss08a_chbornm ss08a_chbornm_lbl

label define ss08a_chbornf_lbl 00 `"0"'
label define ss08a_chbornf_lbl 01 `"1"', add
label define ss08a_chbornf_lbl 02 `"2"', add
label define ss08a_chbornf_lbl 03 `"3"', add
label define ss08a_chbornf_lbl 04 `"4"', add
label define ss08a_chbornf_lbl 05 `"5"', add
label define ss08a_chbornf_lbl 06 `"6"', add
label define ss08a_chbornf_lbl 07 `"7"', add
label define ss08a_chbornf_lbl 08 `"8"', add
label define ss08a_chbornf_lbl 09 `"9"', add
label define ss08a_chbornf_lbl 10 `"10"', add
label define ss08a_chbornf_lbl 11 `"11"', add
label define ss08a_chbornf_lbl 12 `"12+"', add
label define ss08a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values ss08a_chbornf ss08a_chbornf_lbl

label define ss08a_homemal_lbl 00 `"0"'
label define ss08a_homemal_lbl 01 `"1"', add
label define ss08a_homemal_lbl 02 `"2"', add
label define ss08a_homemal_lbl 03 `"3"', add
label define ss08a_homemal_lbl 04 `"4"', add
label define ss08a_homemal_lbl 05 `"5"', add
label define ss08a_homemal_lbl 06 `"6"', add
label define ss08a_homemal_lbl 07 `"7"', add
label define ss08a_homemal_lbl 08 `"8+"', add
label define ss08a_homemal_lbl 98 `"Unknown"', add
label define ss08a_homemal_lbl 99 `"NIU (not in universe)"', add
label values ss08a_homemal ss08a_homemal_lbl

label define ss08a_homefem_lbl 00 `"0"'
label define ss08a_homefem_lbl 01 `"1"', add
label define ss08a_homefem_lbl 02 `"2"', add
label define ss08a_homefem_lbl 03 `"3"', add
label define ss08a_homefem_lbl 04 `"4"', add
label define ss08a_homefem_lbl 05 `"5"', add
label define ss08a_homefem_lbl 06 `"6"', add
label define ss08a_homefem_lbl 07 `"7"', add
label define ss08a_homefem_lbl 08 `"8+"', add
label define ss08a_homefem_lbl 98 `"Unknown"', add
label define ss08a_homefem_lbl 99 `"NIU (not in universe)"', add
label values ss08a_homefem ss08a_homefem_lbl

label define ss08a_awaymal_lbl 00 `"0"'
label define ss08a_awaymal_lbl 01 `"1"', add
label define ss08a_awaymal_lbl 02 `"2"', add
label define ss08a_awaymal_lbl 03 `"3"', add
label define ss08a_awaymal_lbl 04 `"4"', add
label define ss08a_awaymal_lbl 05 `"5"', add
label define ss08a_awaymal_lbl 06 `"6"', add
label define ss08a_awaymal_lbl 07 `"7+"', add
label define ss08a_awaymal_lbl 98 `"Unknown"', add
label define ss08a_awaymal_lbl 99 `"NIU (not in universe)"', add
label values ss08a_awaymal ss08a_awaymal_lbl

label define ss08a_awayfem_lbl 00 `"0"'
label define ss08a_awayfem_lbl 01 `"1"', add
label define ss08a_awayfem_lbl 02 `"2"', add
label define ss08a_awayfem_lbl 03 `"3"', add
label define ss08a_awayfem_lbl 04 `"4"', add
label define ss08a_awayfem_lbl 05 `"5"', add
label define ss08a_awayfem_lbl 06 `"6"', add
label define ss08a_awayfem_lbl 07 `"7+"', add
label define ss08a_awayfem_lbl 98 `"Unknown"', add
label define ss08a_awayfem_lbl 99 `"NIU (not in universe)"', add
label values ss08a_awayfem ss08a_awayfem_lbl

label define ss08a_deadmal_lbl 00 `"0"'
label define ss08a_deadmal_lbl 01 `"1"', add
label define ss08a_deadmal_lbl 02 `"2"', add
label define ss08a_deadmal_lbl 03 `"3"', add
label define ss08a_deadmal_lbl 04 `"4"', add
label define ss08a_deadmal_lbl 05 `"5"', add
label define ss08a_deadmal_lbl 06 `"6"', add
label define ss08a_deadmal_lbl 07 `"7+"', add
label define ss08a_deadmal_lbl 98 `"Unknown"', add
label define ss08a_deadmal_lbl 99 `"NIU (not in universe)"', add
label values ss08a_deadmal ss08a_deadmal_lbl

label define ss08a_deadfem_lbl 00 `"0"'
label define ss08a_deadfem_lbl 01 `"1"', add
label define ss08a_deadfem_lbl 02 `"2"', add
label define ss08a_deadfem_lbl 03 `"3"', add
label define ss08a_deadfem_lbl 04 `"4"', add
label define ss08a_deadfem_lbl 05 `"5"', add
label define ss08a_deadfem_lbl 06 `"6"', add
label define ss08a_deadfem_lbl 07 `"7+"', add
label define ss08a_deadfem_lbl 98 `"Unknown"', add
label define ss08a_deadfem_lbl 99 `"NIU (not in universe)"', add
label values ss08a_deadfem ss08a_deadfem_lbl

label define ss08a_births_lbl 1 `"Yes"'
label define ss08a_births_lbl 2 `"No"', add
label define ss08a_births_lbl 9 `"NIU (not in universe)"', add
label values ss08a_births ss08a_births_lbl

label define ss08a_birthsm_lbl 0 `"0"'
label define ss08a_birthsm_lbl 1 `"1"', add
label define ss08a_birthsm_lbl 2 `"2"', add
label define ss08a_birthsm_lbl 3 `"3"', add
label define ss08a_birthsm_lbl 9 `"NIU (not in universe)"', add
label values ss08a_birthsm ss08a_birthsm_lbl

label define ss08a_birthsf_lbl 0 `"0"'
label define ss08a_birthsf_lbl 1 `"1"', add
label define ss08a_birthsf_lbl 2 `"2 or more"', add
label define ss08a_birthsf_lbl 9 `"NIU (not in universe)"', add
label values ss08a_birthsf ss08a_birthsf_lbl

label define ss08a_livbthm_lbl 0 `"0"'
label define ss08a_livbthm_lbl 1 `"1"', add
label define ss08a_livbthm_lbl 2 `"2"', add
label define ss08a_livbthm_lbl 9 `"NIU (not in universe)"', add
label values ss08a_livbthm ss08a_livbthm_lbl

label define ss08a_qage_lbl 0 `"No imputation"'
label values ss08a_qage ss08a_qage_lbl

label define ss08a_qnation_lbl 0 `"No imputation"'
label define ss08a_qnation_lbl 3 `"Logical from invalid non-blank"', add
label values ss08a_qnation ss08a_qnation_lbl

label define ss08a_qreggrp_lbl 0 `"No imputation"'
label define ss08a_qreggrp_lbl 3 `"Logical from invalid non-blank"', add
label values ss08a_qreggrp ss08a_qreggrp_lbl

label define ss08a_qorreg_lbl 0 `"No imputation"'
label define ss08a_qorreg_lbl 3 `"Logical from invalid non-blank"', add
label values ss08a_qorreg ss08a_qorreg_lbl

label define ss08a_qustate_lbl 0 `"No imputation"'
label values ss08a_qustate ss08a_qustate_lbl

label define ss08a_qdurres_lbl 0 `"No imputation"'
label values ss08a_qdurres ss08a_qdurres_lbl

label define ss08a_qmigstat_lbl 0 `"No imputation"'
label values ss08a_qmigstat ss08a_qmigstat_lbl

label define ss08a_qmothliv_lbl 0 `"No imputation"'
label values ss08a_qmothliv ss08a_qmothliv_lbl

label define ss08a_qfathliv_lbl 0 `"No imputation"'
label values ss08a_qfathliv ss08a_qfathliv_lbl

label define ss08a_qlossleg_lbl 0 `"No imputation"'
label values ss08a_qlossleg ss08a_qlossleg_lbl

label define ss08a_qlossarm_lbl 0 `"No imputation"'
label values ss08a_qlossarm ss08a_qlossarm_lbl

label define ss08a_qdeaf_lbl 0 `"No imputation"'
label values ss08a_qdeaf ss08a_qdeaf_lbl

label define ss08a_qblind_lbl 0 `"No imputation"'
label values ss08a_qblind ss08a_qblind_lbl

label define ss08a_qmute_lbl 0 `"No imputation"'
label values ss08a_qmute ss08a_qmute_lbl

label define ss08a_qschool_lbl 0 `"No imputation"'
label values ss08a_qschool ss08a_qschool_lbl

label define ss08a_qattend_lbl 0 `"No imputation"'
label values ss08a_qattend ss08a_qattend_lbl

label define ss08a_qedattan_lbl 0 `"No imputation"'
label values ss08a_qedattan ss08a_qedattan_lbl

label define ss08a_qempstat_lbl 0 `"No imputation"'
label values ss08a_qempstat ss08a_qempstat_lbl

label define ss08a_qreason_lbl 0 `"No imputation"'
label values ss08a_qreason ss08a_qreason_lbl

label define ss08a_qocc_lbl 0 `"No imputation"'
label values ss08a_qocc ss08a_qocc_lbl

label define ss08a_qind_lbl 0 `"No imputation"'
label values ss08a_qind ss08a_qind_lbl

label define ss08a_qclasswk_lbl 0 `"No imputation"'
label values ss08a_qclasswk ss08a_qclasswk_lbl

label define ss08a_qmarst_lbl 0 `"No imputation"'
label values ss08a_qmarst ss08a_qmarst_lbl

label define ss08a_qagemarr_lbl 0 `"No imputation"'
label values ss08a_qagemarr ss08a_qagemarr_lbl

label define ss08a_qchbornf_lbl 0 `"No imputation"'
label values ss08a_qchbornf ss08a_qchbornf_lbl

label define ss08a_qhomemal_lbl 0 `"No imputation"'
label values ss08a_qhomemal ss08a_qhomemal_lbl

label define ss08a_qhomefem_lbl 0 `"No imputation"'
label values ss08a_qhomefem ss08a_qhomefem_lbl

label define ss08a_qawaymal_lbl 0 `"No imputation"'
label values ss08a_qawaymal ss08a_qawaymal_lbl

label define ss08a_qawayfem_lbl 0 `"No imputation"'
label values ss08a_qawayfem ss08a_qawayfem_lbl

label define ss08a_qdeadmal_lbl 0 `"No imputation"'
label values ss08a_qdeadmal ss08a_qdeadmal_lbl

label define ss08a_qdeadfem_lbl 0 `"No imputation"'
label values ss08a_qdeadfem ss08a_qdeadfem_lbl

label define ss08a_qbirths_lbl 0 `"No imputation"'
label values ss08a_qbirths ss08a_qbirths_lbl

label define ss08a_qbirthsm_lbl 0 `"No imputation"'
label values ss08a_qbirthsm ss08a_qbirthsm_lbl

label define ss08a_qbirthsf_lbl 0 `"No imputation"'
label values ss08a_qbirthsf ss08a_qbirthsf_lbl

label define ss08a_qlivbthm_lbl 0 `"No imputation"'
label values ss08a_qlivbthm ss08a_qlivbthm_lbl

label define ss08a_qlivbthf_lbl 0 `"No imputation"'
label values ss08a_qlivbthf ss08a_qlivbthf_lbl

label define ss08a_chhome_lbl 00 `"0"'
label define ss08a_chhome_lbl 01 `"1"', add
label define ss08a_chhome_lbl 02 `"2"', add
label define ss08a_chhome_lbl 03 `"3"', add
label define ss08a_chhome_lbl 04 `"4"', add
label define ss08a_chhome_lbl 05 `"5"', add
label define ss08a_chhome_lbl 06 `"6"', add
label define ss08a_chhome_lbl 07 `"7"', add
label define ss08a_chhome_lbl 08 `"8"', add
label define ss08a_chhome_lbl 09 `"9"', add
label define ss08a_chhome_lbl 10 `"10"', add
label define ss08a_chhome_lbl 11 `"11"', add
label define ss08a_chhome_lbl 12 `"12+"', add
label define ss08a_chhome_lbl 99 `"NIU (not in universe)"', add
label values ss08a_chhome ss08a_chhome_lbl

label define ss08a_chaway_lbl 00 `"0"'
label define ss08a_chaway_lbl 01 `"1"', add
label define ss08a_chaway_lbl 02 `"2"', add
label define ss08a_chaway_lbl 03 `"3"', add
label define ss08a_chaway_lbl 04 `"4"', add
label define ss08a_chaway_lbl 05 `"5"', add
label define ss08a_chaway_lbl 06 `"6"', add
label define ss08a_chaway_lbl 07 `"7"', add
label define ss08a_chaway_lbl 08 `"8"', add
label define ss08a_chaway_lbl 09 `"9"', add
label define ss08a_chaway_lbl 10 `"10+"', add
label define ss08a_chaway_lbl 99 `"NIU (not in universe)"', add
label values ss08a_chaway ss08a_chaway_lbl

label define ss08a_chdead_lbl 00 `"0"'
label define ss08a_chdead_lbl 01 `"1"', add
label define ss08a_chdead_lbl 02 `"2"', add
label define ss08a_chdead_lbl 03 `"3"', add
label define ss08a_chdead_lbl 04 `"4"', add
label define ss08a_chdead_lbl 05 `"5"', add
label define ss08a_chdead_lbl 06 `"6"', add
label define ss08a_chdead_lbl 07 `"7"', add
label define ss08a_chdead_lbl 08 `"8"', add
label define ss08a_chdead_lbl 09 `"9"', add
label define ss08a_chdead_lbl 10 `"10+"', add
label define ss08a_chdead_lbl 99 `"NIU (not in universe)"', add
label values ss08a_chdead ss08a_chdead_lbl

label define ss08a_chborn_lbl 00 `"0"'
label define ss08a_chborn_lbl 01 `"1"', add
label define ss08a_chborn_lbl 02 `"2"', add
label define ss08a_chborn_lbl 03 `"3"', add
label define ss08a_chborn_lbl 04 `"4"', add
label define ss08a_chborn_lbl 05 `"5"', add
label define ss08a_chborn_lbl 06 `"6"', add
label define ss08a_chborn_lbl 07 `"7"', add
label define ss08a_chborn_lbl 08 `"8"', add
label define ss08a_chborn_lbl 09 `"9"', add
label define ss08a_chborn_lbl 10 `"10"', add
label define ss08a_chborn_lbl 11 `"11"', add
label define ss08a_chborn_lbl 12 `"12"', add
label define ss08a_chborn_lbl 13 `"13"', add
label define ss08a_chborn_lbl 14 `"14"', add
label define ss08a_chborn_lbl 15 `"15"', add
label define ss08a_chborn_lbl 16 `"16"', add
label define ss08a_chborn_lbl 17 `"17+"', add
label define ss08a_chborn_lbl 99 `"NIU (not in universe)"', add
label values ss08a_chborn ss08a_chborn_lbl

label define ss08a_chsurv_lbl 00 `"0"'
label define ss08a_chsurv_lbl 01 `"1"', add
label define ss08a_chsurv_lbl 02 `"2"', add
label define ss08a_chsurv_lbl 03 `"3"', add
label define ss08a_chsurv_lbl 04 `"4"', add
label define ss08a_chsurv_lbl 05 `"5"', add
label define ss08a_chsurv_lbl 06 `"6"', add
label define ss08a_chsurv_lbl 07 `"7"', add
label define ss08a_chsurv_lbl 08 `"8"', add
label define ss08a_chsurv_lbl 09 `"9"', add
label define ss08a_chsurv_lbl 10 `"10"', add
label define ss08a_chsurv_lbl 11 `"11"', add
label define ss08a_chsurv_lbl 12 `"12"', add
label define ss08a_chsurv_lbl 13 `"13"', add
label define ss08a_chsurv_lbl 14 `"14+"', add
label define ss08a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values ss08a_chsurv ss08a_chsurv_lbl

label define ss08a_chsurvm_lbl 00 `"0"'
label define ss08a_chsurvm_lbl 01 `"1"', add
label define ss08a_chsurvm_lbl 02 `"2"', add
label define ss08a_chsurvm_lbl 03 `"3"', add
label define ss08a_chsurvm_lbl 04 `"4"', add
label define ss08a_chsurvm_lbl 05 `"5"', add
label define ss08a_chsurvm_lbl 06 `"6"', add
label define ss08a_chsurvm_lbl 07 `"7"', add
label define ss08a_chsurvm_lbl 08 `"8"', add
label define ss08a_chsurvm_lbl 09 `"9"', add
label define ss08a_chsurvm_lbl 10 `"10+"', add
label define ss08a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values ss08a_chsurvm ss08a_chsurvm_lbl

label define ss08a_chsurvf_lbl 00 `"0"'
label define ss08a_chsurvf_lbl 01 `"1"', add
label define ss08a_chsurvf_lbl 02 `"2"', add
label define ss08a_chsurvf_lbl 03 `"3"', add
label define ss08a_chsurvf_lbl 04 `"4"', add
label define ss08a_chsurvf_lbl 05 `"5"', add
label define ss08a_chsurvf_lbl 06 `"6"', add
label define ss08a_chsurvf_lbl 07 `"7"', add
label define ss08a_chsurvf_lbl 08 `"8"', add
label define ss08a_chsurvf_lbl 09 `"9+"', add
label define ss08a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values ss08a_chsurvf ss08a_chsurvf_lbl

label define ss08a_bthlstyr_lbl 0 `"0"'
label define ss08a_bthlstyr_lbl 1 `"1"', add
label define ss08a_bthlstyr_lbl 2 `"2"', add
label define ss08a_bthlstyr_lbl 3 `"3"', add
label define ss08a_bthlstyr_lbl 4 `"4+"', add
label define ss08a_bthlstyr_lbl 8 `"Unknown"', add
label define ss08a_bthlstyr_lbl 9 `"NIU (not in universe)"', add
label values ss08a_bthlstyr ss08a_bthlstyr_lbl

label define ss08a_srvlstyr_lbl 0 `"0"'
label define ss08a_srvlstyr_lbl 1 `"1"', add
label define ss08a_srvlstyr_lbl 2 `"2"', add
label define ss08a_srvlstyr_lbl 3 `"3"', add
label define ss08a_srvlstyr_lbl 4 `"4+"', add
label define ss08a_srvlstyr_lbl 9 `"NIU (not in universe)"', add
label values ss08a_srvlstyr ss08a_srvlstyr_lbl

label define ss08a_parlive_lbl 1 `"Father alive, mother alive"'
label define ss08a_parlive_lbl 2 `"Father alive, mother dead"', add
label define ss08a_parlive_lbl 3 `"Father dead, mother alive"', add
label define ss08a_parlive_lbl 4 `"Father dead, mother dead"', add
label values ss08a_parlive ss08a_parlive_lbl


