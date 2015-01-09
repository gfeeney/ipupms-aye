* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    ug02a_dwnum     22-27    ///
  byte    ug02a_fbig      28-28    ///
  byte    ug02a_region    29-29    ///
  int     ug02a_dist      30-32    ///
  int     ug02a_county    33-36    ///
  byte    ug02a_urban     37-37    ///
  int     ug02a_munic     38-41    ///
  byte    ug02a_ownershp  42-42    ///
  byte    ug02a_bldtype   43-43    ///
  byte    ug02a_roomss    44-44    ///
  byte    ug02a_roof      45-45    ///
  byte    ug02a_wall      46-46    ///
  byte    ug02a_floor     47-47    ///
  byte    ug02a_dwtype    48-48    ///
  byte    ug02a_landown   49-49    ///
  byte    ug02a_distmed   50-50    ///
  byte    ug02a_distsch   51-51    ///
  byte    ug02a_distwat   52-52    ///
  byte    ug02a_fuelc     53-53    ///
  byte    ug02a_fuell     54-54    ///
  byte    ug02a_watsrc    55-55    ///
  byte    ug02a_toilet    56-56    ///
  byte    ug02a_waste     57-57    ///
  byte    ug02a_bathtyp   58-58    ///
  byte    ug02a_kitch     59-59    ///
  byte    ug02a_vehic     60-60    ///
  byte    ug02a_motocyc   61-61    ///
  byte    ug02a_bike      62-62    ///
  byte    ug02a_canoe     63-63    ///
  byte    ug02a_donkey    64-64    ///
  byte    ug02a_tv        65-65    ///
  byte    ug02a_radio     66-66    ///
  byte    ug02a_cell      67-67    ///
  byte    ug02a_phone     68-68    ///
  byte    ug02a_postal    69-69    ///
  byte    ug02a_email     70-70    ///
  byte    ug02a_infosrc   71-71    ///
  byte    ug02a_liveli    72-72    ///
  byte    ug02a_soap      73-73    ///
  byte    ug02a_sugar     74-74    ///
  byte    ug02a_blanket   75-75    ///
  byte    ug02a_shoes     76-76    ///
  byte    ug02a_clothtwo  77-77    ///
  byte    ug02a_death     78-78    ///
  byte    ug02a_gq        79-79    ///
  byte    ug02a_tenurea   80-80    ///
  byte    ug02a_qownersh  81-81    ///
  byte    ug02a_qdwtype   82-82    ///
  byte    ug02a_qroomss   83-83    ///
  byte    ug02a_qroof     84-84    ///
  byte    ug02a_qwall     85-85    ///
  byte    ug02a_qfloor    86-86    ///
  byte    ug02a_qbldtype  87-87    ///
  byte    ug02a_qlandown  88-88    ///
  byte    ug02a_qdistmed  89-89    ///
  byte    ug02a_qdistsch  90-90    ///
  byte    ug02a_qdistwat  91-91    ///
  byte    ug02a_qfuelc    92-92    ///
  byte    ug02a_qfuell    93-93    ///
  byte    ug02a_qwatsrc   94-94    ///
  byte    ug02a_qtoilet   95-95    ///
  byte    ug02a_qwaste    96-96    ///
  byte    ug02a_qbathty   97-97    ///
  byte    ug02a_qkitch    98-98    ///
  byte    ug02a_qvehic    99-99    ///
  byte    ug02a_qmotocyc  100-100  ///
  byte    ug02a_qbike     101-101  ///
  byte    ug02a_qcanoe    102-102  ///
  byte    ug02a_qdonkey   103-103  ///
  byte    ug02a_qtv       104-104  ///
  byte    ug02a_qradio    105-105  ///
  byte    ug02a_qcell     106-106  ///
  byte    ug02a_qphone    107-107  ///
  byte    ug02a_qpostal   108-108  ///
  byte    ug02a_qemail    109-109  ///
  byte    ug02a_qinfosrc  110-110  ///
  byte    ug02a_qliveli   111-111  ///
  byte    ug02a_qsoap     112-112  ///
  byte    ug02a_qsugar    113-113  ///
  byte    ug02a_qblanket  114-114  ///
  byte    ug02a_qshoes    115-115  ///
  byte    ug02a_qclothtw  116-116  ///
  byte    ug02a_qdeath    117-117  ///
  byte    ug02a_hut       118-118  ///
  byte    ug02a_poptype   119-120  ///
  byte    ug02a_qpoptype  121-121  ///
  byte    ug02a_deadn     122-122  ///
  int     pernum          123-125  ///
  float   wtper           126-133  ///
  byte    resident        134-134  ///
  byte    ug02a_pernum    135-136  ///
  byte    ug02a_pernum    137-138  ///
  byte    ug02a_pern      139-140  ///
  byte    ug02a_relate    141-141  ///
  byte    ug02a_sex       142-142  ///
  byte    ug02a_birthmo   143-144  ///
  int     ug02a_birthyr   145-148  ///
  byte    ug02a_age       149-150  ///
  byte    ug02a_relig     151-152  ///
  byte    ug02a_ethnic    153-154  ///
  byte    ug02a_mothlive  155-155  ///
  byte    ug02a_fathlive  156-156  ///
  int     ug02a_bpl       157-159  ///
  int     ug02a_prevres   160-162  ///
  byte    ug02a_resdur    163-164  ///
  byte    ug02a_disab1    165-166  ///
  byte    ug02a_disab2    167-168  ///
  byte    ug02a_discau1   169-169  ///
  byte    ug02a_discau2   170-170  ///
  byte    ug02a_rehab1    171-172  ///
  byte    ug02a_rehab2    173-174  ///
  byte    ug02a_school    175-175  ///
  byte    ug02a_edattain  176-177  ///
  byte    ug02a_empstat   178-179  ///
  byte    ug02a_ind       180-181  ///
  byte    ug02a_occ1      182-183  ///
  int     ug02a_occ       184-186  ///
  byte    ug02a_lit       187-187  ///
  byte    ug02a_marst     188-188  ///
  byte    ug02a_chbornm   189-190  ///
  byte    ug02a_chbornf   191-192  ///
  byte    ug02a_chhhm     193-194  ///
  byte    ug02a_chhhf     195-196  ///
  byte    ug02a_chawaym   197-198  ///
  byte    ug02a_chawayf   199-200  ///
  byte    ug02a_chdeadm   201-202  ///
  byte    ug02a_chdeadf   203-204  ///
  byte    ug02a_lstchmo   205-206  ///
  int     ug02a_lstchyr   207-210  ///
  byte    ug02a_lstchsex  211-211  ///
  byte    ug02a_lstchliv  212-212  ///
  byte    ug02a_lstdage   213-214  ///
  byte    ug02a_defacto   215-215  ///
  byte    ug02a_qperid    216-216  ///
  byte    ug02a_qrelate   217-217  ///
  byte    ug02a_qsex      218-218  ///
  byte    ug02a_qbirthda  219-219  ///
  byte    ug02a_qbirthmo  220-220  ///
  byte    ug02a_qbirthc   221-221  ///
  byte    ug02a_qbirthyr  222-222  ///
  byte    ug02a_qage      223-223  ///
  byte    ug02a_qrelig    224-224  ///
  byte    ug02a_qethnic   225-225  ///
  byte    ug02a_qmothliv  226-226  ///
  byte    ug02a_qfathliv  227-227  ///
  byte    ug02a_qbpl      228-228  ///
  byte    ug02a_qprevres  229-229  ///
  byte    ug02a_qresdur   230-230  ///
  byte    ug02a_qresdur   231-231  ///
  byte    ug02a_qdisab1   232-232  ///
  byte    ug02a_qdisab2   233-233  ///
  byte    ug02a_qdiscau1  234-234  ///
  byte    ug02a_qdiscau2  235-235  ///
  byte    ug02a_qrehab1   236-236  ///
  byte    ug02a_qrehab2   237-237  ///
  byte    ug02a_qschool   238-238  ///
  byte    ug02a_qedattan  239-239  ///
  byte    ug02a_qempstat  240-240  ///
  byte    ug02a_qind      241-241  ///
  byte    ug02a_qocc      242-242  ///
  byte    ug02a_qlit      243-243  ///
  byte    ug02a_qmarst    244-244  ///
  byte    ug02a_qchbornm  245-245  ///
  byte    ug02a_qchbornf  246-246  ///
  byte    ug02a_qchhhm    247-247  ///
  byte    ug02a_qchhhf    248-248  ///
  byte    ug02a_qchawaym  249-249  ///
  byte    ug02a_qchawayf  250-250  ///
  byte    ug02a_qchdeadm  251-251  ///
  byte    ug02a_qchdeadf  252-252  ///
  byte    ug02a_qlstchmo  253-253  ///
  byte    ug02a_qlstc     254-254  ///
  byte    ug02a_qlstchyr  255-255  ///
  byte    ug02a_qlstchse  256-256  ///
  byte    ug02a_qlstchli  257-257  ///
  byte    ug02a_qlstage   258-258  ///
  byte    ug02a_chborn    259-260  ///
  byte    ug02a_chhh      261-262  ///
  byte    ug02a_chaway    263-264  ///
  byte    ug02a_chdead    265-266  ///
  byte    ug02a_mothlivu  267-267  ///
  byte    ug02a_fathlivu  268-268  ///
  byte    ug02a_qmothlv   269-269  ///
  byte    ug02a_qfathlv   270-270  ///
  byte    ug02a_bplsame   271-271  ///
  using `"ipumsi_00125.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var ug02a_dwnum    `"Dwelling number"'
label var ug02a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var ug02a_region   `"Region"'
label var ug02a_dist     `"District"'
label var ug02a_county   `"County"'
label var ug02a_urban    `"Urban/rural status"'
label var ug02a_munic    `"Municipality"'
label var ug02a_ownershp `"Tenure"'
label var ug02a_bldtype  `"Type of dwelling"'
label var ug02a_roomss   `"Number of sleeping rooms"'
label var ug02a_roof     `"Roof material"'
label var ug02a_wall     `"Wall material"'
label var ug02a_floor    `"Floor material"'
label var ug02a_dwtype   `"Type of housing unit"'
label var ug02a_landown  `"Land tenure of plot"'
label var ug02a_distmed  `"Distance to health facility"'
label var ug02a_distsch  `"Distance to primary school"'
label var ug02a_distwat  `"Distance to source of water"'
label var ug02a_fuelc    `"Cooking fuel"'
label var ug02a_fuell    `"Lighting fuel"'
label var ug02a_watsrc   `"Source of drinking water"'
label var ug02a_toilet   `"Toilet facilities"'
label var ug02a_waste    `"Method of solid waste disposal"'
label var ug02a_bathtyp  `"Type of bathroom"'
label var ug02a_kitch    `"Type of kitchen"'
label var ug02a_vehic    `"Own a motor vehicle"'
label var ug02a_motocyc  `"Own a motorcycle"'
label var ug02a_bike     `"Own a bicycle"'
label var ug02a_canoe    `"Own a canoe"'
label var ug02a_donkey   `"Own a donkey"'
label var ug02a_tv       `"Own a television set"'
label var ug02a_radio    `"Own a radio"'
label var ug02a_cell     `"Own a mobile phone"'
label var ug02a_phone    `"Own a fixed phone"'
label var ug02a_postal   `"Own a postal address"'
label var ug02a_email    `"Own an electronic mail address"'
label var ug02a_infosrc  `"Source of information"'
label var ug02a_liveli   `"Source of livelihood"'
label var ug02a_soap     `"Use soap"'
label var ug02a_sugar    `"Consumed sugar"'
label var ug02a_blanket  `"Have a blanket for each child under age 18"'
label var ug02a_shoes    `"Have a pair of shoes"'
label var ug02a_clothtwo `"Have two sets of clothing"'
label var ug02a_death    `"Death in household"'
label var ug02a_gq       `"Institution, hotel or homeless"'
label var ug02a_tenurea  `"Land tenure awareness"'
label var ug02a_qownersh `"Flag for tenure"'
label var ug02a_qdwtype  `"Flag for type of dwelling"'
label var ug02a_qroomss  `"Flag for number of sleeping rooms"'
label var ug02a_qroof    `"Flag for roof material"'
label var ug02a_qwall    `"Flag for wall material"'
label var ug02a_qfloor   `"Flag for floor material"'
label var ug02a_qbldtype `"Flag for type of housing unit"'
label var ug02a_qlandown `"Flag for land tenure of plot"'
label var ug02a_qdistmed `"Flag for distance to health facility"'
label var ug02a_qdistsch `"Flag for distance to primary school"'
label var ug02a_qdistwat `"Flag for distance to source of water"'
label var ug02a_qfuelc   `"Flag for cooking fuel"'
label var ug02a_qfuell   `"Flag for lighting fuel"'
label var ug02a_qwatsrc  `"Flag for source of drinking water"'
label var ug02a_qtoilet  `"Flag for toilet facilities"'
label var ug02a_qwaste   `"Flag for method of solid waste disposal"'
label var ug02a_qbathty  `"Flag for type of bathroom"'
label var ug02a_qkitch   `"Flag for type of kitchen"'
label var ug02a_qvehic   `"Flag for own a motor vehicle"'
label var ug02a_qmotocyc `"Flag for own a motorcycle"'
label var ug02a_qbike    `"Flag for own a bicycle"'
label var ug02a_qcanoe   `"Flag for own a canoe"'
label var ug02a_qdonkey  `"Flag for own a donkey"'
label var ug02a_qtv      `"Flag for own a television set"'
label var ug02a_qradio   `"Flag for own a radio"'
label var ug02a_qcell    `"Flag for own a mobile phone"'
label var ug02a_qphone   `"Flag for own a fixed phone"'
label var ug02a_qpostal  `"Flag for own a postal address"'
label var ug02a_qemail   `"Flag for own an electronic mail address"'
label var ug02a_qinfosrc `"Flag for source of information"'
label var ug02a_qliveli  `"Flag for source of livelihood"'
label var ug02a_qsoap    `"Flag for use soap"'
label var ug02a_qsugar   `"Flag for consumed sugar"'
label var ug02a_qblanket `"Flag for have a blanket for each child under age 18"'
label var ug02a_qshoes   `"Flag for have a pair of shoes"'
label var ug02a_qclothtw `"Flag for have two sets of clothing"'
label var ug02a_qdeath   `"Flag for death in household"'
label var ug02a_hut      `"Hut (derived)"'
label var ug02a_poptype  `"Population type"'
label var ug02a_qpoptype `"Flag for population type"'
label var ug02a_deadn    `"Number of mortality records in original data"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var resident       `"Residence status: de facto, de jure"'
label var ug02a_pernum   `"Person number (within household)"'
label var ug02a_pernum   `"Person number (within household)"'
label var ug02a_pern     `"Number of persons in household"'
label var ug02a_relate   `"Relationship to the head"'
label var ug02a_sex      `"Sex"'
label var ug02a_birthmo  `"Month of birth"'
label var ug02a_birthyr  `"Year of birth"'
label var ug02a_age      `"Age"'
label var ug02a_relig    `"Religion"'
label var ug02a_ethnic   `"Ethnicity/nationality"'
label var ug02a_mothlive `"Mother survival"'
label var ug02a_fathlive `"Father survival"'
label var ug02a_bpl      `"District or country of birth"'
label var ug02a_prevres  `"District or country of previous residence"'
label var ug02a_resdur   `"Duration of residence in district"'
label var ug02a_disab1   `"First disability/major disability"'
label var ug02a_disab2   `"Second disability"'
label var ug02a_discau1  `"Cause of Disability 1"'
label var ug02a_discau2  `"Cause of Disability 2"'
label var ug02a_rehab1   `"Rehabilitation of disability 1"'
label var ug02a_rehab2   `"Rehabilitation of disability 2"'
label var ug02a_school   `"School"'
label var ug02a_edattain `"Education Attainment"'
label var ug02a_empstat  `"Employment status in the last seven days"'
label var ug02a_ind      `"Industry"'
label var ug02a_occ1     `"Occupation, 1 digit"'
label var ug02a_occ      `"Occupation, 3 digits"'
label var ug02a_lit      `"Literacy"'
label var ug02a_marst    `"Marital status"'
label var ug02a_chbornm  `"Male children ever born"'
label var ug02a_chbornf  `"Female children ever born"'
label var ug02a_chhhm    `"Male children living in household"'
label var ug02a_chhhf    `"Female children living in household"'
label var ug02a_chawaym  `"Male children living outside the household"'
label var ug02a_chawayf  `"Female children living outside the household"'
label var ug02a_chdeadm  `"Male children dead"'
label var ug02a_chdeadf  `"Female children dead"'
label var ug02a_lstchmo  `"Last child birth month"'
label var ug02a_lstchyr  `"Last child birth year"'
label var ug02a_lstchsex `"Sex of last child"'
label var ug02a_lstchliv `"Last child still alive"'
label var ug02a_lstdage  `"Last child's age of death, in months"'
label var ug02a_defacto  `"De facto status"'
label var ug02a_qperid   `"Flag for person number"'
label var ug02a_qrelate  `"Flag for relationship to the head"'
label var ug02a_qsex     `"Flag for sex"'
label var ug02a_qbirthda `"Flag for day of birth"'
label var ug02a_qbirthmo `"Flag for month of birth"'
label var ug02a_qbirthc  `"Flag for birth century"'
label var ug02a_qbirthyr `"Flag for year of birth"'
label var ug02a_qage     `"Flag for age"'
label var ug02a_qrelig   `"Flag for religion"'
label var ug02a_qethnic  `"Flag for ethnicity/nationality"'
label var ug02a_qmothliv `"Flag for mother survival"'
label var ug02a_qfathliv `"Flag for father survival"'
label var ug02a_qbpl     `"Flag for district or country of birth"'
label var ug02a_qprevres `"Flag for district or country of previous residence"'
label var ug02a_qresdur  `"Flag for duration of residence in district"'
label var ug02a_qresdur  `"Flag for duration of residence in district"'
label var ug02a_qdisab1  `"Flag for first disability/major disability"'
label var ug02a_qdisab2  `"Flag for second disability"'
label var ug02a_qdiscau1 `"Flag for cause of disability 1"'
label var ug02a_qdiscau2 `"Flag for cause of disability 2"'
label var ug02a_qrehab1  `"Flag for rehabilitation of disability 1"'
label var ug02a_qrehab2  `"Flag for rehabilitation of disability 2"'
label var ug02a_qschool  `"Flag for school"'
label var ug02a_qedattan `"Flag for education Attainment"'
label var ug02a_qempstat `"Flag for employment status in the last seven days"'
label var ug02a_qind     `"Flag for industry"'
label var ug02a_qocc     `"Flag for occupation"'
label var ug02a_qlit     `"Flag for literacy"'
label var ug02a_qmarst   `"Flag for marital status"'
label var ug02a_qchbornm `"Flag for male children ever born"'
label var ug02a_qchbornf `"Flag for female children ever born"'
label var ug02a_qchhhm   `"Flag for male children living in household"'
label var ug02a_qchhhf   `"Flag for female children living in household"'
label var ug02a_qchawaym `"Flag for male children living outside the household"'
label var ug02a_qchawayf `"Flag for female children living outside the household"'
label var ug02a_qchdeadm `"Flag for male children dead"'
label var ug02a_qchdeadf `"Flag for female children dead"'
label var ug02a_qlstchmo `"Flag for last child birth month"'
label var ug02a_qlstc    `"Flag for last child birth century"'
label var ug02a_qlstchyr `"Flag for last child birth year"'
label var ug02a_qlstchse `"Flag for sex of last child"'
label var ug02a_qlstchli `"Flag for last child still alive"'
label var ug02a_qlstage  `"Flag for last child's age of death, in months"'
label var ug02a_chborn   `"Children ever born"'
label var ug02a_chhh     `"Children in household"'
label var ug02a_chaway   `"Children elsewhere"'
label var ug02a_chdead   `"Children dead"'
label var ug02a_mothlivu `"Mothers survival, unedited"'
label var ug02a_fathlivu `"Fathers survival, unedited"'
label var ug02a_qmothlv  `"Flag for mother survival"'
label var ug02a_qfathlv  `"Flag for father survival"'
label var ug02a_bplsame  `"Place of birth (derived)"'

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

label define ug02a_fbig_lbl 0 `"No problem"'
label define ug02a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define ug02a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values ug02a_fbig ug02a_fbig_lbl

label define ug02a_region_lbl 1 `"Central"'
label define ug02a_region_lbl 2 `"Eastern"', add
label define ug02a_region_lbl 3 `"Northern"', add
label define ug02a_region_lbl 4 `"Western"', add
label values ug02a_region ug02a_region_lbl

label define ug02a_dist_lbl 101 `"Kalangala"'
label define ug02a_dist_lbl 102 `"Kampala"', add
label define ug02a_dist_lbl 103 `"Kiboga"', add
label define ug02a_dist_lbl 104 `"Luwero"', add
label define ug02a_dist_lbl 105 `"Masaka"', add
label define ug02a_dist_lbl 106 `"Mpigi"', add
label define ug02a_dist_lbl 107 `"Mubende"', add
label define ug02a_dist_lbl 108 `"Mukono"', add
label define ug02a_dist_lbl 109 `"Nakasongola"', add
label define ug02a_dist_lbl 110 `"Rakai"', add
label define ug02a_dist_lbl 111 `"Sembabule"', add
label define ug02a_dist_lbl 112 `"Kayunga"', add
label define ug02a_dist_lbl 113 `"Wakiso"', add
label define ug02a_dist_lbl 201 `"Bugiri"', add
label define ug02a_dist_lbl 202 `"Busia"', add
label define ug02a_dist_lbl 203 `"Iganga"', add
label define ug02a_dist_lbl 204 `"Jinja"', add
label define ug02a_dist_lbl 205 `"Kamuli"', add
label define ug02a_dist_lbl 206 `"Kapchorwa"', add
label define ug02a_dist_lbl 207 `"Katakwi"', add
label define ug02a_dist_lbl 208 `"Kumi"', add
label define ug02a_dist_lbl 209 `"Mbale"', add
label define ug02a_dist_lbl 210 `"Pallisa"', add
label define ug02a_dist_lbl 211 `"Soroti"', add
label define ug02a_dist_lbl 212 `"Tororo"', add
label define ug02a_dist_lbl 213 `"Kaberamaido"', add
label define ug02a_dist_lbl 214 `"Mayuge"', add
label define ug02a_dist_lbl 215 `"Sironko"', add
label define ug02a_dist_lbl 301 `"Adjumani"', add
label define ug02a_dist_lbl 302 `"Apac"', add
label define ug02a_dist_lbl 303 `"Arua"', add
label define ug02a_dist_lbl 304 `"Gulu"', add
label define ug02a_dist_lbl 305 `"Kitgum"', add
label define ug02a_dist_lbl 306 `"Kotido"', add
label define ug02a_dist_lbl 307 `"Lira"', add
label define ug02a_dist_lbl 308 `"Moroto"', add
label define ug02a_dist_lbl 309 `"Moyo"', add
label define ug02a_dist_lbl 310 `"Nebbi"', add
label define ug02a_dist_lbl 311 `"Nakapiripirit"', add
label define ug02a_dist_lbl 312 `"Pader"', add
label define ug02a_dist_lbl 313 `"Yumbe"', add
label define ug02a_dist_lbl 401 `"Bundibugyo"', add
label define ug02a_dist_lbl 402 `"Bushenyi"', add
label define ug02a_dist_lbl 403 `"Hoima"', add
label define ug02a_dist_lbl 404 `"Kabale"', add
label define ug02a_dist_lbl 405 `"Kabarole"', add
label define ug02a_dist_lbl 406 `"Kasese"', add
label define ug02a_dist_lbl 407 `"Kibaale"', add
label define ug02a_dist_lbl 408 `"Kisoro"', add
label define ug02a_dist_lbl 409 `"Masindi"', add
label define ug02a_dist_lbl 410 `"Mbarara"', add
label define ug02a_dist_lbl 411 `"Ntungamo"', add
label define ug02a_dist_lbl 412 `"Rukungiri"', add
label define ug02a_dist_lbl 413 `"Kamwenge"', add
label define ug02a_dist_lbl 414 `"Kanungu"', add
label define ug02a_dist_lbl 415 `"Kyenjojo"', add
label values ug02a_dist ug02a_dist_lbl

label define ug02a_county_lbl 1011 `"Bujjumba"'
label define ug02a_county_lbl 1012 `"Kyamuswa"', add
label define ug02a_county_lbl 1021 `"Kampala City Council"', add
label define ug02a_county_lbl 1031 `"Kiboga"', add
label define ug02a_county_lbl 1041 `"Bamunanika"', add
label define ug02a_county_lbl 1042 `"Katikamu"', add
label define ug02a_county_lbl 1043 `"Nakaseke"', add
label define ug02a_county_lbl 1051 `"Bukomansimbi"', add
label define ug02a_county_lbl 1052 `"Bukoto"', add
label define ug02a_county_lbl 1053 `"Kalungu"', add
label define ug02a_county_lbl 1054 `"Masaka Municipality"', add
label define ug02a_county_lbl 1061 `"Butambala"', add
label define ug02a_county_lbl 1062 `"Gomba"', add
label define ug02a_county_lbl 1063 `"Mawokota"', add
label define ug02a_county_lbl 1071 `"Busujju"', add
label define ug02a_county_lbl 1072 `"Buwekula"', add
label define ug02a_county_lbl 1073 `"Kassanda"', add
label define ug02a_county_lbl 1074 `"Mityana"', add
label define ug02a_county_lbl 1081 `"Buikwe"', add
label define ug02a_county_lbl 1082 `"Buvuma"', add
label define ug02a_county_lbl 1083 `"Mukono"', add
label define ug02a_county_lbl 1084 `"Nakifuma"', add
label define ug02a_county_lbl 1091 `"Buruli"', add
label define ug02a_county_lbl 1101 `"Kabula"', add
label define ug02a_county_lbl 1102 `"Kakuuto"', add
label define ug02a_county_lbl 1103 `"Kooki"', add
label define ug02a_county_lbl 1104 `"Kyotera"', add
label define ug02a_county_lbl 1111 `"Lwemiyaga"', add
label define ug02a_county_lbl 1112 `"Mawogola"', add
label define ug02a_county_lbl 1121 `"Bbaale"', add
label define ug02a_county_lbl 1122 `"Ntenjeru"', add
label define ug02a_county_lbl 1131 `"Busiro"', add
label define ug02a_county_lbl 1132 `"Entebbe Municipality"', add
label define ug02a_county_lbl 1133 `"Kyadondo"', add
label define ug02a_county_lbl 2011 `"Bukooli"', add
label define ug02a_county_lbl 2021 `"Samia-Bugwe"', add
label define ug02a_county_lbl 2031 `"Bugweri"', add
label define ug02a_county_lbl 2032 `"Busiki"', add
label define ug02a_county_lbl 2033 `"Kigulu"', add
label define ug02a_county_lbl 2034 `"Luuka"', add
label define ug02a_county_lbl 2041 `"Butembe"', add
label define ug02a_county_lbl 2042 `"Jinja Municipality"', add
label define ug02a_county_lbl 2043 `"Kagoma"', add
label define ug02a_county_lbl 2051 `"Budiope"', add
label define ug02a_county_lbl 2052 `"Bugabula"', add
label define ug02a_county_lbl 2053 `"Bulamogi"', add
label define ug02a_county_lbl 2054 `"Buzaaya"', add
label define ug02a_county_lbl 2061 `"Kongasis"', add
label define ug02a_county_lbl 2062 `"Kween"', add
label define ug02a_county_lbl 2063 `"Tingey"', add
label define ug02a_county_lbl 2071 `"Amuria"', add
label define ug02a_county_lbl 2072 `"Kapelebyong"', add
label define ug02a_county_lbl 2073 `"Usuk"', add
label define ug02a_county_lbl 2081 `"Bukedea"', add
label define ug02a_county_lbl 2082 `"Kumi"', add
label define ug02a_county_lbl 2083 `"Ngora"', add
label define ug02a_county_lbl 2091 `"Bubulo"', add
label define ug02a_county_lbl 2092 `"Bungokho"', add
label define ug02a_county_lbl 2093 `"Manjiya"', add
label define ug02a_county_lbl 2094 `"Mbale Municipality"', add
label define ug02a_county_lbl 2101 `"Butebo"', add
label define ug02a_county_lbl 2102 `"Kibuku"', add
label define ug02a_county_lbl 2103 `"Pallisa"', add
label define ug02a_county_lbl 2104 `"Budaka"', add
label define ug02a_county_lbl 2111 `"Kasilo"', add
label define ug02a_county_lbl 2112 `"Serere"', add
label define ug02a_county_lbl 2113 `"Soroti"', add
label define ug02a_county_lbl 2114 `"Soroti Municipality"', add
label define ug02a_county_lbl 2121 `"Bunyole"', add
label define ug02a_county_lbl 2122 `"Tororo"', add
label define ug02a_county_lbl 2123 `"Tororo Municipality"', add
label define ug02a_county_lbl 2124 `"West Budama (Kisolo)"', add
label define ug02a_county_lbl 2131 `"Kaberamaido"', add
label define ug02a_county_lbl 2132 `"Kalaki"', add
label define ug02a_county_lbl 2141 `"Bunya"', add
label define ug02a_county_lbl 2151 `"Budadiri"', add
label define ug02a_county_lbl 2152 `"Bulambuli"', add
label define ug02a_county_lbl 3011 `"East Moyo"', add
label define ug02a_county_lbl 3021 `"Kole"', add
label define ug02a_county_lbl 3022 `"Kwania"', add
label define ug02a_county_lbl 3023 `"Maruzi"', add
label define ug02a_county_lbl 3024 `"Oyam"', add
label define ug02a_county_lbl 3031 `"Arua Municipality"', add
label define ug02a_county_lbl 3032 `"Ayivu"', add
label define ug02a_county_lbl 3033 `"Koboko"', add
label define ug02a_county_lbl 3034 `"Madi-Okollo"', add
label define ug02a_county_lbl 3035 `"Maracha"', add
label define ug02a_county_lbl 3036 `"Terego"', add
label define ug02a_county_lbl 3037 `"Vurra"', add
label define ug02a_county_lbl 3041 `"Aswa"', add
label define ug02a_county_lbl 3042 `"Gulu Municipality"', add
label define ug02a_county_lbl 3043 `"Kilak"', add
label define ug02a_county_lbl 3044 `"Nwoya"', add
label define ug02a_county_lbl 3045 `"Omoro"', add
label define ug02a_county_lbl 3051 `"Chua"', add
label define ug02a_county_lbl 3052 `"Lamwo"', add
label define ug02a_county_lbl 3061 `"Dodoth"', add
label define ug02a_county_lbl 3062 `"Jie"', add
label define ug02a_county_lbl 3063 `"Labwor"', add
label define ug02a_county_lbl 3071 `"Dokolo"', add
label define ug02a_county_lbl 3072 `"Erute"', add
label define ug02a_county_lbl 3073 `"Kioga"', add
label define ug02a_county_lbl 3074 `"Lira Municipality"', add
label define ug02a_county_lbl 3075 `"Moroto"', add
label define ug02a_county_lbl 3076 `"Otuke"', add
label define ug02a_county_lbl 3081 `"Bokora"', add
label define ug02a_county_lbl 3082 `"Matheniko"', add
label define ug02a_county_lbl 3083 `"Moroto Municipality"', add
label define ug02a_county_lbl 3091 `"Obongi"', add
label define ug02a_county_lbl 3092 `"West Moyo"', add
label define ug02a_county_lbl 3101 `"Jonam"', add
label define ug02a_county_lbl 3102 `"Okoro"', add
label define ug02a_county_lbl 3103 `"Padyere"', add
label define ug02a_county_lbl 3111 `"Chekwii"', add
label define ug02a_county_lbl 3112 `"Pian"', add
label define ug02a_county_lbl 3113 `"Pokot"', add
label define ug02a_county_lbl 3121 `"Aruu"', add
label define ug02a_county_lbl 3122 `"Agago"', add
label define ug02a_county_lbl 3131 `"Aringa"', add
label define ug02a_county_lbl 4011 `"Bwamba"', add
label define ug02a_county_lbl 4012 `"Ntoroko"', add
label define ug02a_county_lbl 4021 `"Buhweju"', add
label define ug02a_county_lbl 4022 `"Bunyaruguru"', add
label define ug02a_county_lbl 4023 `"Igara"', add
label define ug02a_county_lbl 4024 `"Ruhinda"', add
label define ug02a_county_lbl 4025 `"Sheema"', add
label define ug02a_county_lbl 4031 `"Bugahya"', add
label define ug02a_county_lbl 4032 `"Buhaguzi"', add
label define ug02a_county_lbl 4041 `"Kabale Municipality"', add
label define ug02a_county_lbl 4042 `"Ndorwa"', add
label define ug02a_county_lbl 4043 `"Rubanda"', add
label define ug02a_county_lbl 4044 `"Rukiga"', add
label define ug02a_county_lbl 4051 `"Bunyangabu"', add
label define ug02a_county_lbl 4052 `"Burahya"', add
label define ug02a_county_lbl 4053 `"Fort Portal Municipality"', add
label define ug02a_county_lbl 4061 `"Bukonjo"', add
label define ug02a_county_lbl 4062 `"Busongora"', add
label define ug02a_county_lbl 4071 `"Bugangaizi"', add
label define ug02a_county_lbl 4072 `"Buyaga"', add
label define ug02a_county_lbl 4073 `"Buyanja"', add
label define ug02a_county_lbl 4081 `"Bufumbira"', add
label define ug02a_county_lbl 4091 `"Bujenje"', add
label define ug02a_county_lbl 4092 `"Buliisa"', add
label define ug02a_county_lbl 4093 `"Buruuli"', add
label define ug02a_county_lbl 4094 `"Kibanda"', add
label define ug02a_county_lbl 4101 `"Bukanga"', add
label define ug02a_county_lbl 4102 `"Ibanda"', add
label define ug02a_county_lbl 4103 `"Isingiro"', add
label define ug02a_county_lbl 4104 `"Kashari"', add
label define ug02a_county_lbl 4105 `"Kazo"', add
label define ug02a_county_lbl 4106 `"Mbarara Municipality"', add
label define ug02a_county_lbl 4107 `"Nyabushozi"', add
label define ug02a_county_lbl 4108 `"Rwampara"', add
label define ug02a_county_lbl 4111 `"Kajara"', add
label define ug02a_county_lbl 4112 `"Ruhaama"', add
label define ug02a_county_lbl 4113 `"Rushenyi"', add
label define ug02a_county_lbl 4121 `"Rubabo"', add
label define ug02a_county_lbl 4122 `"Bujumbura"', add
label define ug02a_county_lbl 4131 `"Kibale"', add
label define ug02a_county_lbl 4132 `"Kitagwenda"', add
label define ug02a_county_lbl 4141 `"Kinkiizi"', add
label define ug02a_county_lbl 4151 `"Kyaka"', add
label define ug02a_county_lbl 4152 `"Mwenge"', add
label values ug02a_county ug02a_county_lbl

label define ug02a_urban_lbl 1 `"Urban: urban"'
label define ug02a_urban_lbl 2 `"Rural"', add
label values ug02a_urban ug02a_urban_lbl

label define ug02a_munic_lbl 1054 `"Masaka / Masaka municipality"'
label define ug02a_munic_lbl 1132 `"Wakiso / Entebbe municipality"', add
label define ug02a_munic_lbl 2042 `"Jinja / Jinja municipality"', add
label define ug02a_munic_lbl 2094 `"Mbale / Mbale municipality"', add
label define ug02a_munic_lbl 2114 `"Soroti / Soroti municipality"', add
label define ug02a_munic_lbl 2123 `"Tororo / Tororo municipality"', add
label define ug02a_munic_lbl 3031 `"Arua / Arua municipality"', add
label define ug02a_munic_lbl 3042 `"Gulu / Gulu municipality"', add
label define ug02a_munic_lbl 3074 `"Lira / Lira municipality"', add
label define ug02a_munic_lbl 4041 `"Kabale / Kabale municipality"', add
label define ug02a_munic_lbl 4053 `"Kabarole / Fort Portal municipality"', add
label define ug02a_munic_lbl 4106 `"Mbarara / Mbarara municipality"', add
label define ug02a_munic_lbl 9999 `"Non-municipality or not identified"', add
label values ug02a_munic ug02a_munic_lbl

label define ug02a_ownershp_lbl 1 `"Owner occupied"'
label define ug02a_ownershp_lbl 2 `"Free public"', add
label define ug02a_ownershp_lbl 3 `"Free private"', add
label define ug02a_ownershp_lbl 4 `"Subsidised public"', add
label define ug02a_ownershp_lbl 5 `"Subsidised private"', add
label define ug02a_ownershp_lbl 6 `"Rented public"', add
label define ug02a_ownershp_lbl 7 `"Rented private"', add
label define ug02a_ownershp_lbl 8 `"Other"', add
label define ug02a_ownershp_lbl 9 `"NIU (not in universe)"', add
label values ug02a_ownershp ug02a_ownershp_lbl

label define ug02a_bldtype_lbl 1 `"Main house"'
label define ug02a_bldtype_lbl 2 `"Room or rooms"', add
label define ug02a_bldtype_lbl 3 `"Store / Godown / Bsement"', add
label define ug02a_bldtype_lbl 4 `"Garage"', add
label define ug02a_bldtype_lbl 5 `"Servants quarters"', add
label define ug02a_bldtype_lbl 6 `"Other"', add
label define ug02a_bldtype_lbl 9 `"NIU (not in universe)"', add
label values ug02a_bldtype ug02a_bldtype_lbl

label define ug02a_roomss_lbl 1 `"1"'
label define ug02a_roomss_lbl 2 `"2"', add
label define ug02a_roomss_lbl 3 `"3"', add
label define ug02a_roomss_lbl 4 `"4"', add
label define ug02a_roomss_lbl 5 `"5"', add
label define ug02a_roomss_lbl 6 `"6 or more"', add
label define ug02a_roomss_lbl 9 `"NIU (not in universe)"', add
label values ug02a_roomss ug02a_roomss_lbl

label define ug02a_roof_lbl 1 `"Permanent: iron sheets"'
label define ug02a_roof_lbl 2 `"Permanent: tiles"', add
label define ug02a_roof_lbl 3 `"Permanent: asbestos"', add
label define ug02a_roof_lbl 4 `"Permanent: concrete"', add
label define ug02a_roof_lbl 5 `"Permanent: tins"', add
label define ug02a_roof_lbl 6 `"Temporary: thatch"', add
label define ug02a_roof_lbl 7 `"Temporary: other"', add
label define ug02a_roof_lbl 9 `"NIU (not in universe)"', add
label values ug02a_roof ug02a_roof_lbl

label define ug02a_wall_lbl 0 `"NIU (not in universe)"'
label define ug02a_wall_lbl 1 `"Permanent: concrete"', add
label define ug02a_wall_lbl 2 `"Permanent: cement blocks"', add
label define ug02a_wall_lbl 3 `"Permanent: stones"', add
label define ug02a_wall_lbl 4 `"Permanent: burnt / stabilised brick"', add
label define ug02a_wall_lbl 5 `"Permanent: unburnt bricks with cement"', add
label define ug02a_wall_lbl 6 `"Permanent: unburnt bricks with mud"', add
label define ug02a_wall_lbl 7 `"Temporary: wood"', add
label define ug02a_wall_lbl 8 `"Temporary: mud and pole"', add
label define ug02a_wall_lbl 9 `"Temporary: other"', add
label values ug02a_wall ug02a_wall_lbl

label define ug02a_floor_lbl 1 `"Concrete"'
label define ug02a_floor_lbl 2 `"Brick"', add
label define ug02a_floor_lbl 3 `"Stone"', add
label define ug02a_floor_lbl 4 `"Cement screed"', add
label define ug02a_floor_lbl 5 `"Rammed earth"', add
label define ug02a_floor_lbl 6 `"Wood"', add
label define ug02a_floor_lbl 7 `"Other"', add
label define ug02a_floor_lbl 9 `"NIU (not in universe)"', add
label values ug02a_floor ug02a_floor_lbl

label define ug02a_dwtype_lbl 1 `"Detached house"'
label define ug02a_dwtype_lbl 2 `"Semi-detached house"', add
label define ug02a_dwtype_lbl 3 `"Flat"', add
label define ug02a_dwtype_lbl 4 `"Tenement (muzigo)"', add
label define ug02a_dwtype_lbl 5 `"Other"', add
label define ug02a_dwtype_lbl 9 `"NIU (not in universe)"', add
label values ug02a_dwtype ug02a_dwtype_lbl

label define ug02a_landown_lbl 1 `"Customary land"'
label define ug02a_landown_lbl 2 `"Freehold tenure"', add
label define ug02a_landown_lbl 3 `"Mailo land tenure system"', add
label define ug02a_landown_lbl 4 `"Leasehold"', add
label define ug02a_landown_lbl 9 `"NIU (not in universe)"', add
label values ug02a_landown ug02a_landown_lbl

label define ug02a_distmed_lbl 1 `"Less than 1/2 km"'
label define ug02a_distmed_lbl 2 `"1/2 to less than 1 km"', add
label define ug02a_distmed_lbl 3 `"1 to less than 5 kms"', add
label define ug02a_distmed_lbl 4 `"More than 5 kms"', add
label define ug02a_distmed_lbl 9 `"NIU (not in universe)"', add
label values ug02a_distmed ug02a_distmed_lbl

label define ug02a_distsch_lbl 1 `"Less than 1/2 km"'
label define ug02a_distsch_lbl 2 `"1/2 to less than 1 km"', add
label define ug02a_distsch_lbl 3 `"1 to less than 5 kms"', add
label define ug02a_distsch_lbl 4 `"More than 5 kms"', add
label define ug02a_distsch_lbl 9 `"NIU (not in universe)"', add
label values ug02a_distsch ug02a_distsch_lbl

label define ug02a_distwat_lbl 1 `"On premises"'
label define ug02a_distwat_lbl 2 `"Less than 1/2 km"', add
label define ug02a_distwat_lbl 3 `"1/2 to less than 1 km"', add
label define ug02a_distwat_lbl 4 `"1 to less than 5 kms"', add
label define ug02a_distwat_lbl 5 `"More than 5 kms"', add
label define ug02a_distwat_lbl 9 `"NIU (not in universe)"', add
label values ug02a_distwat ug02a_distwat_lbl

label define ug02a_fuelc_lbl 1 `"Electricity"'
label define ug02a_fuelc_lbl 2 `"Gas"', add
label define ug02a_fuelc_lbl 3 `"Paraffin"', add
label define ug02a_fuelc_lbl 4 `"Charcoal"', add
label define ug02a_fuelc_lbl 5 `"Firewood"', add
label define ug02a_fuelc_lbl 6 `"Cow dung or grass (reeds)"', add
label define ug02a_fuelc_lbl 7 `"Biogas"', add
label define ug02a_fuelc_lbl 8 `"Other"', add
label define ug02a_fuelc_lbl 9 `"NIU (not in universe)"', add
label values ug02a_fuelc ug02a_fuelc_lbl

label define ug02a_fuell_lbl 1 `"Electricity"'
label define ug02a_fuell_lbl 2 `"Gas"', add
label define ug02a_fuell_lbl 3 `"Paraffin (lantern)"', add
label define ug02a_fuell_lbl 4 `"Paraffin (tadooba)"', add
label define ug02a_fuell_lbl 5 `"Candle wax"', add
label define ug02a_fuell_lbl 6 `"Firewood"', add
label define ug02a_fuell_lbl 7 `"Cow dung or grass (reeds)"', add
label define ug02a_fuell_lbl 8 `"Other"', add
label define ug02a_fuell_lbl 9 `"NIU (not in universe)"', add
label values ug02a_fuell ug02a_fuell_lbl

label define ug02a_watsrc_lbl 1 `"Tap/piped water"'
label define ug02a_watsrc_lbl 2 `"Borehole"', add
label define ug02a_watsrc_lbl 3 `"Protected well/spring"', add
label define ug02a_watsrc_lbl 4 `"Rain water"', add
label define ug02a_watsrc_lbl 5 `"Gravity flow scheme"', add
label define ug02a_watsrc_lbl 6 `"Open water sources"', add
label define ug02a_watsrc_lbl 7 `"Water truck / water vendor"', add
label define ug02a_watsrc_lbl 8 `"Other"', add
label define ug02a_watsrc_lbl 9 `"NIU (not in universe)"', add
label values ug02a_watsrc ug02a_watsrc_lbl

label define ug02a_toilet_lbl 0 `"NIU (not in universe)"'
label define ug02a_toilet_lbl 1 `"Covered pit latrine/private"', add
label define ug02a_toilet_lbl 2 `"Covered pit latrine/shared"', add
label define ug02a_toilet_lbl 3 `"VIP latrine/private"', add
label define ug02a_toilet_lbl 4 `"VIP latrine/shared"', add
label define ug02a_toilet_lbl 5 `"Uncovered pit latrine"', add
label define ug02a_toilet_lbl 6 `"Flush toilet/private"', add
label define ug02a_toilet_lbl 7 `"Flush toilet/shared"', add
label define ug02a_toilet_lbl 8 `"Bush"', add
label define ug02a_toilet_lbl 9 `"Other"', add
label values ug02a_toilet ug02a_toilet_lbl

label define ug02a_waste_lbl 1 `"Skip bin"'
label define ug02a_waste_lbl 2 `"Pit"', add
label define ug02a_waste_lbl 3 `"Heap"', add
label define ug02a_waste_lbl 4 `"Garden"', add
label define ug02a_waste_lbl 5 `"Burning"', add
label define ug02a_waste_lbl 6 `"Other"', add
label define ug02a_waste_lbl 9 `"NIU (not in universe)"', add
label values ug02a_waste ug02a_waste_lbl

label define ug02a_bathtyp_lbl 1 `"Inside"'
label define ug02a_bathtyp_lbl 2 `"Outside, built"', add
label define ug02a_bathtyp_lbl 3 `"Outside, makeshift"', add
label define ug02a_bathtyp_lbl 4 `"None"', add
label define ug02a_bathtyp_lbl 9 `"NIU (not in universe)"', add
label values ug02a_bathtyp ug02a_bathtyp_lbl

label define ug02a_kitch_lbl 1 `"Inside"'
label define ug02a_kitch_lbl 2 `"Outside, built"', add
label define ug02a_kitch_lbl 3 `"Outside, makeshift"', add
label define ug02a_kitch_lbl 4 `"None"', add
label define ug02a_kitch_lbl 9 `"NIU (not in universe)"', add
label values ug02a_kitch ug02a_kitch_lbl

label define ug02a_vehic_lbl 1 `"Yes"'
label define ug02a_vehic_lbl 2 `"No"', add
label define ug02a_vehic_lbl 9 `"NIU (not in universe)"', add
label values ug02a_vehic ug02a_vehic_lbl

label define ug02a_motocyc_lbl 1 `"Yes"'
label define ug02a_motocyc_lbl 2 `"No"', add
label define ug02a_motocyc_lbl 9 `"NIU (not in universe)"', add
label values ug02a_motocyc ug02a_motocyc_lbl

label define ug02a_bike_lbl 1 `"Yes"'
label define ug02a_bike_lbl 2 `"No"', add
label define ug02a_bike_lbl 9 `"NIU (not in universe)"', add
label values ug02a_bike ug02a_bike_lbl

label define ug02a_canoe_lbl 1 `"Yes"'
label define ug02a_canoe_lbl 2 `"No"', add
label define ug02a_canoe_lbl 9 `"NIU (not in universe)"', add
label values ug02a_canoe ug02a_canoe_lbl

label define ug02a_donkey_lbl 1 `"Yes"'
label define ug02a_donkey_lbl 2 `"No"', add
label define ug02a_donkey_lbl 9 `"NIU (not in universe)"', add
label values ug02a_donkey ug02a_donkey_lbl

label define ug02a_tv_lbl 1 `"Yes"'
label define ug02a_tv_lbl 2 `"No"', add
label define ug02a_tv_lbl 9 `"NIU (not in universe)"', add
label values ug02a_tv ug02a_tv_lbl

label define ug02a_radio_lbl 1 `"Yes"'
label define ug02a_radio_lbl 2 `"No"', add
label define ug02a_radio_lbl 9 `"NIU (not in universe)"', add
label values ug02a_radio ug02a_radio_lbl

label define ug02a_cell_lbl 1 `"Yes"'
label define ug02a_cell_lbl 2 `"No"', add
label define ug02a_cell_lbl 9 `"NIU (not in universe)"', add
label values ug02a_cell ug02a_cell_lbl

label define ug02a_phone_lbl 1 `"Yes"'
label define ug02a_phone_lbl 2 `"No"', add
label define ug02a_phone_lbl 9 `"NIU (not in universe)"', add
label values ug02a_phone ug02a_phone_lbl

label define ug02a_postal_lbl 1 `"Yes"'
label define ug02a_postal_lbl 2 `"No"', add
label define ug02a_postal_lbl 9 `"NIU (not in universe)"', add
label values ug02a_postal ug02a_postal_lbl

label define ug02a_email_lbl 1 `"Yes"'
label define ug02a_email_lbl 2 `"No"', add
label define ug02a_email_lbl 9 `"NIU (not in universe)"', add
label values ug02a_email ug02a_email_lbl

label define ug02a_infosrc_lbl 1 `"Radio"'
label define ug02a_infosrc_lbl 2 `"Television"', add
label define ug02a_infosrc_lbl 3 `"Print media"', add
label define ug02a_infosrc_lbl 4 `"Post mail"', add
label define ug02a_infosrc_lbl 5 `"Hand mail"', add
label define ug02a_infosrc_lbl 6 `"Word of mouth"', add
label define ug02a_infosrc_lbl 7 `"Other"', add
label define ug02a_infosrc_lbl 9 `"NIU (not in universe)"', add
label values ug02a_infosrc ug02a_infosrc_lbl

label define ug02a_liveli_lbl 1 `"Subsistence farming"'
label define ug02a_liveli_lbl 2 `"Employment income"', add
label define ug02a_liveli_lbl 3 `"Business enterprise"', add
label define ug02a_liveli_lbl 4 `"Cottage industry"', add
label define ug02a_liveli_lbl 5 `"Property income"', add
label define ug02a_liveli_lbl 6 `"Family support"', add
label define ug02a_liveli_lbl 7 `"World food programme support"', add
label define ug02a_liveli_lbl 8 `"Other"', add
label define ug02a_liveli_lbl 9 `"NIU (not in universe)"', add
label values ug02a_liveli ug02a_liveli_lbl

label define ug02a_soap_lbl 1 `"Yes"'
label define ug02a_soap_lbl 2 `"No"', add
label define ug02a_soap_lbl 9 `"NIU (not in universe)"', add
label values ug02a_soap ug02a_soap_lbl

label define ug02a_sugar_lbl 1 `"Yes"'
label define ug02a_sugar_lbl 2 `"No"', add
label define ug02a_sugar_lbl 9 `"NIU (not in universe)"', add
label values ug02a_sugar ug02a_sugar_lbl

label define ug02a_blanket_lbl 1 `"Yes"'
label define ug02a_blanket_lbl 2 `"No"', add
label define ug02a_blanket_lbl 3 `"Not applicable (no children under age 18 in household)"', add
label define ug02a_blanket_lbl 9 `"NIU (not in universe)"', add
label values ug02a_blanket ug02a_blanket_lbl

label define ug02a_shoes_lbl 1 `"Yes"'
label define ug02a_shoes_lbl 2 `"No"', add
label define ug02a_shoes_lbl 9 `"NIU (not in universe)"', add
label values ug02a_shoes ug02a_shoes_lbl

label define ug02a_clothtwo_lbl 1 `"Yes"'
label define ug02a_clothtwo_lbl 2 `"No"', add
label define ug02a_clothtwo_lbl 9 `"NIU (not in universe)"', add
label values ug02a_clothtwo ug02a_clothtwo_lbl

label define ug02a_death_lbl 1 `"Yes"'
label define ug02a_death_lbl 2 `"No"', add
label values ug02a_death ug02a_death_lbl

label define ug02a_gq_lbl 1 `"Yes"'
label define ug02a_gq_lbl 2 `"No"', add
label values ug02a_gq ug02a_gq_lbl

label define ug02a_tenurea_lbl 1 `"Valid land tenure response"'
label define ug02a_tenurea_lbl 2 `"Invalid land tenure response"', add
label define ug02a_tenurea_lbl 3 `"Don't know land tenure"', add
label define ug02a_tenurea_lbl 9 `"NIU (not in universe)"', add
label values ug02a_tenurea ug02a_tenurea_lbl

label define ug02a_qownersh_lbl 0 `"No imputation"'
label define ug02a_qownersh_lbl 1 `"Logical imputation"', add
label define ug02a_qownersh_lbl 2 `"Hot deck imputation"', add
label values ug02a_qownersh ug02a_qownersh_lbl

label define ug02a_qdwtype_lbl 0 `"No imputation"'
label define ug02a_qdwtype_lbl 1 `"Logical imputation"', add
label define ug02a_qdwtype_lbl 2 `"Hot deck imputation"', add
label values ug02a_qdwtype ug02a_qdwtype_lbl

label define ug02a_qroomss_lbl 0 `"No imputation"'
label define ug02a_qroomss_lbl 1 `"Logical imputation"', add
label define ug02a_qroomss_lbl 2 `"Hot deck imputation"', add
label values ug02a_qroomss ug02a_qroomss_lbl

label define ug02a_qroof_lbl 0 `"No imputation"'
label define ug02a_qroof_lbl 1 `"Logical imputation"', add
label define ug02a_qroof_lbl 2 `"Hot deck imputation"', add
label values ug02a_qroof ug02a_qroof_lbl

label define ug02a_qwall_lbl 0 `"No imputation"'
label define ug02a_qwall_lbl 1 `"Logical imputation"', add
label define ug02a_qwall_lbl 2 `"Hot deck imputation"', add
label values ug02a_qwall ug02a_qwall_lbl

label define ug02a_qfloor_lbl 0 `"No imputation"'
label define ug02a_qfloor_lbl 1 `"Logical imputation"', add
label define ug02a_qfloor_lbl 2 `"Hot deck imputation"', add
label values ug02a_qfloor ug02a_qfloor_lbl

label define ug02a_qbldtype_lbl 0 `"No imputation"'
label define ug02a_qbldtype_lbl 1 `"Logical imputation"', add
label define ug02a_qbldtype_lbl 2 `"Hot deck imputation"', add
label values ug02a_qbldtype ug02a_qbldtype_lbl

label define ug02a_qlandown_lbl 0 `"No imputation"'
label define ug02a_qlandown_lbl 1 `"Logical imputation"', add
label define ug02a_qlandown_lbl 2 `"Hot deck imputation"', add
label values ug02a_qlandown ug02a_qlandown_lbl

label define ug02a_qdistmed_lbl 0 `"No imputation"'
label define ug02a_qdistmed_lbl 1 `"Logical imputation"', add
label define ug02a_qdistmed_lbl 2 `"Hot deck imputation"', add
label values ug02a_qdistmed ug02a_qdistmed_lbl

label define ug02a_qdistsch_lbl 0 `"No imputation"'
label define ug02a_qdistsch_lbl 1 `"Logical imputation"', add
label define ug02a_qdistsch_lbl 2 `"Hot deck imputation"', add
label values ug02a_qdistsch ug02a_qdistsch_lbl

label define ug02a_qdistwat_lbl 0 `"No imputation"'
label define ug02a_qdistwat_lbl 1 `"Logical imputation"', add
label define ug02a_qdistwat_lbl 2 `"Hot deck imputation"', add
label values ug02a_qdistwat ug02a_qdistwat_lbl

label define ug02a_qfuelc_lbl 0 `"No imputation"'
label define ug02a_qfuelc_lbl 1 `"Logical imputation"', add
label define ug02a_qfuelc_lbl 2 `"Hot deck imputation"', add
label values ug02a_qfuelc ug02a_qfuelc_lbl

label define ug02a_qfuell_lbl 0 `"No imputation"'
label define ug02a_qfuell_lbl 1 `"Logical imputation"', add
label define ug02a_qfuell_lbl 2 `"Hot deck imputation"', add
label values ug02a_qfuell ug02a_qfuell_lbl

label define ug02a_qwatsrc_lbl 0 `"No imputation"'
label define ug02a_qwatsrc_lbl 1 `"Logical imputation"', add
label define ug02a_qwatsrc_lbl 2 `"Hot deck imputation"', add
label values ug02a_qwatsrc ug02a_qwatsrc_lbl

label define ug02a_qtoilet_lbl 0 `"No imputation"'
label define ug02a_qtoilet_lbl 1 `"Logical imputation"', add
label define ug02a_qtoilet_lbl 2 `"Hot deck imputation"', add
label values ug02a_qtoilet ug02a_qtoilet_lbl

label define ug02a_qwaste_lbl 0 `"No imputation"'
label define ug02a_qwaste_lbl 1 `"Logical imputation"', add
label define ug02a_qwaste_lbl 2 `"Hot deck imputation"', add
label values ug02a_qwaste ug02a_qwaste_lbl

label define ug02a_qbathty_lbl 0 `"No imputation"'
label define ug02a_qbathty_lbl 1 `"Logical imputation"', add
label define ug02a_qbathty_lbl 2 `"Hot deck imputation"', add
label values ug02a_qbathty ug02a_qbathty_lbl

label define ug02a_qkitch_lbl 0 `"No imputation"'
label define ug02a_qkitch_lbl 1 `"Logical imputation"', add
label define ug02a_qkitch_lbl 2 `"Hot deck imputation"', add
label values ug02a_qkitch ug02a_qkitch_lbl

label define ug02a_qvehic_lbl 0 `"No imputation"'
label define ug02a_qvehic_lbl 1 `"Logical imputation"', add
label define ug02a_qvehic_lbl 2 `"Hot deck imputation"', add
label values ug02a_qvehic ug02a_qvehic_lbl

label define ug02a_qmotocyc_lbl 0 `"No imputation"'
label define ug02a_qmotocyc_lbl 1 `"Logical imputation"', add
label define ug02a_qmotocyc_lbl 2 `"Hot deck imputation"', add
label values ug02a_qmotocyc ug02a_qmotocyc_lbl

label define ug02a_qbike_lbl 0 `"No imputation"'
label define ug02a_qbike_lbl 1 `"Logical imputation"', add
label define ug02a_qbike_lbl 2 `"Hot deck imputation"', add
label values ug02a_qbike ug02a_qbike_lbl

label define ug02a_qcanoe_lbl 0 `"No imputation"'
label define ug02a_qcanoe_lbl 1 `"Logical imputation"', add
label define ug02a_qcanoe_lbl 2 `"Hot deck imputation"', add
label values ug02a_qcanoe ug02a_qcanoe_lbl

label define ug02a_qdonkey_lbl 0 `"No imputation"'
label define ug02a_qdonkey_lbl 1 `"Logical imputation"', add
label define ug02a_qdonkey_lbl 2 `"Hot deck imputation"', add
label values ug02a_qdonkey ug02a_qdonkey_lbl

label define ug02a_qtv_lbl 0 `"No imputation"'
label define ug02a_qtv_lbl 1 `"Logical imputation"', add
label define ug02a_qtv_lbl 2 `"Hot deck imputation"', add
label values ug02a_qtv ug02a_qtv_lbl

label define ug02a_qradio_lbl 0 `"No imputation"'
label define ug02a_qradio_lbl 1 `"Logical imputation"', add
label define ug02a_qradio_lbl 2 `"Hot deck imputation"', add
label values ug02a_qradio ug02a_qradio_lbl

label define ug02a_qcell_lbl 0 `"No imputation"'
label define ug02a_qcell_lbl 1 `"Logical imputation"', add
label define ug02a_qcell_lbl 2 `"Hot deck imputation"', add
label values ug02a_qcell ug02a_qcell_lbl

label define ug02a_qphone_lbl 0 `"No imputation"'
label define ug02a_qphone_lbl 1 `"Logical imputation"', add
label define ug02a_qphone_lbl 2 `"Hot deck imputation"', add
label values ug02a_qphone ug02a_qphone_lbl

label define ug02a_qpostal_lbl 0 `"No imputation"'
label define ug02a_qpostal_lbl 1 `"Logical imputation"', add
label define ug02a_qpostal_lbl 2 `"Hot deck imputation"', add
label values ug02a_qpostal ug02a_qpostal_lbl

label define ug02a_qemail_lbl 0 `"No imputation"'
label define ug02a_qemail_lbl 1 `"Logical imputation"', add
label define ug02a_qemail_lbl 2 `"Hot deck imputation"', add
label values ug02a_qemail ug02a_qemail_lbl

label define ug02a_qinfosrc_lbl 0 `"No imputation"'
label define ug02a_qinfosrc_lbl 1 `"Logical imputation"', add
label define ug02a_qinfosrc_lbl 2 `"Hot deck imputation"', add
label values ug02a_qinfosrc ug02a_qinfosrc_lbl

label define ug02a_qliveli_lbl 0 `"No imputation"'
label define ug02a_qliveli_lbl 1 `"Logical imputation"', add
label define ug02a_qliveli_lbl 2 `"Hot deck imputation"', add
label values ug02a_qliveli ug02a_qliveli_lbl

label define ug02a_qsoap_lbl 0 `"No imputation"'
label define ug02a_qsoap_lbl 1 `"Logical imputation"', add
label define ug02a_qsoap_lbl 2 `"Hot deck imputation"', add
label values ug02a_qsoap ug02a_qsoap_lbl

label define ug02a_qsugar_lbl 0 `"No imputation"'
label define ug02a_qsugar_lbl 1 `"Logical imputation"', add
label define ug02a_qsugar_lbl 2 `"Hot deck imputation"', add
label values ug02a_qsugar ug02a_qsugar_lbl

label define ug02a_qblanket_lbl 0 `"No imputation"'
label define ug02a_qblanket_lbl 1 `"Logical imputation"', add
label define ug02a_qblanket_lbl 2 `"Hot deck imputation"', add
label values ug02a_qblanket ug02a_qblanket_lbl

label define ug02a_qshoes_lbl 0 `"No imputation"'
label define ug02a_qshoes_lbl 1 `"Logical imputation"', add
label define ug02a_qshoes_lbl 2 `"Hot deck imputation"', add
label values ug02a_qshoes ug02a_qshoes_lbl

label define ug02a_qclothtw_lbl 0 `"No imputation"'
label define ug02a_qclothtw_lbl 1 `"Logical imputation"', add
label define ug02a_qclothtw_lbl 2 `"Hot deck imputation"', add
label values ug02a_qclothtw ug02a_qclothtw_lbl

label define ug02a_qdeath_lbl 0 `"No imputation"'
label define ug02a_qdeath_lbl 1 `"Logical imputation"', add
label define ug02a_qdeath_lbl 2 `"Hot deck imputation"', add
label values ug02a_qdeath ug02a_qdeath_lbl

label define ug02a_hut_lbl 1 `"Hut"'
label define ug02a_hut_lbl 2 `"Non-hut"', add
label define ug02a_hut_lbl 9 `"NIU (not in universe)"', add
label values ug02a_hut ug02a_hut_lbl

label define ug02a_poptype_lbl 01 `"Household"'
label define ug02a_poptype_lbl 02 `"Institution: educational"', add
label define ug02a_poptype_lbl 03 `"Institution: religious"', add
label define ug02a_poptype_lbl 04 `"Institution: medical"', add
label define ug02a_poptype_lbl 05 `"Institution: hostel"', add
label define ug02a_poptype_lbl 06 `"Institution: prison"', add
label define ug02a_poptype_lbl 07 `"Institution: barracks"', add
label define ug02a_poptype_lbl 08 `"Institution: orphanage/reformatory"', add
label define ug02a_poptype_lbl 09 `"Institution: refugee camp"', add
label define ug02a_poptype_lbl 10 `"Homeless: homeless"', add
label define ug02a_poptype_lbl 11 `"Homeless: floating population"', add
label values ug02a_poptype ug02a_poptype_lbl

label define ug02a_qpoptype_lbl 0 `"No imputation"'
label define ug02a_qpoptype_lbl 1 `"Logical imputation"', add
label define ug02a_qpoptype_lbl 2 `"Hot deck imputation"', add
label values ug02a_qpoptype ug02a_qpoptype_lbl

label define ug02a_deadn_lbl 0 `"0"'
label define ug02a_deadn_lbl 1 `"1"', add
label define ug02a_deadn_lbl 2 `"2"', add
label define ug02a_deadn_lbl 3 `"3"', add
label define ug02a_deadn_lbl 4 `"4"', add
label define ug02a_deadn_lbl 5 `"5+"', add
label values ug02a_deadn ug02a_deadn_lbl

label define resident_lbl 1 `"Present resident"'
label define resident_lbl 2 `"Absent resident"', add
label define resident_lbl 3 `"Visitor/non-resident"', add
label define resident_lbl 4 `"De facto population (present persons)"', add
label define resident_lbl 9 `"Unknown/missing"', add
label values resident resident_lbl

label define ug02a_pernum_lbl 00 `"Household record"'
label define ug02a_pernum_lbl 01 `"1"', add
label define ug02a_pernum_lbl 02 `"2"', add
label define ug02a_pernum_lbl 03 `"3"', add
label define ug02a_pernum_lbl 04 `"4"', add
label define ug02a_pernum_lbl 05 `"5"', add
label define ug02a_pernum_lbl 06 `"6"', add
label define ug02a_pernum_lbl 07 `"7"', add
label define ug02a_pernum_lbl 08 `"8"', add
label define ug02a_pernum_lbl 09 `"9"', add
label define ug02a_pernum_lbl 10 `"10"', add
label define ug02a_pernum_lbl 11 `"11"', add
label define ug02a_pernum_lbl 12 `"12"', add
label define ug02a_pernum_lbl 13 `"13"', add
label define ug02a_pernum_lbl 14 `"14"', add
label define ug02a_pernum_lbl 15 `"15"', add
label define ug02a_pernum_lbl 16 `"16"', add
label define ug02a_pernum_lbl 17 `"17"', add
label define ug02a_pernum_lbl 18 `"18"', add
label define ug02a_pernum_lbl 19 `"19"', add
label define ug02a_pernum_lbl 20 `"20"', add
label define ug02a_pernum_lbl 21 `"21"', add
label define ug02a_pernum_lbl 22 `"22"', add
label define ug02a_pernum_lbl 23 `"23"', add
label define ug02a_pernum_lbl 24 `"24"', add
label define ug02a_pernum_lbl 25 `"25"', add
label define ug02a_pernum_lbl 26 `"26"', add
label define ug02a_pernum_lbl 27 `"27"', add
label define ug02a_pernum_lbl 28 `"28"', add
label define ug02a_pernum_lbl 29 `"29"', add
label define ug02a_pernum_lbl 30 `"30"', add
label values ug02a_pernum ug02a_pernum_lbl

label define ug02a_pernum_lbl 00 `"Household record"'
label define ug02a_pernum_lbl 01 `"1"', add
label define ug02a_pernum_lbl 02 `"2"', add
label define ug02a_pernum_lbl 03 `"3"', add
label define ug02a_pernum_lbl 04 `"4"', add
label define ug02a_pernum_lbl 05 `"5"', add
label define ug02a_pernum_lbl 06 `"6"', add
label define ug02a_pernum_lbl 07 `"7"', add
label define ug02a_pernum_lbl 08 `"8"', add
label define ug02a_pernum_lbl 09 `"9"', add
label define ug02a_pernum_lbl 10 `"10"', add
label define ug02a_pernum_lbl 11 `"11"', add
label define ug02a_pernum_lbl 12 `"12"', add
label define ug02a_pernum_lbl 13 `"13"', add
label define ug02a_pernum_lbl 14 `"14"', add
label define ug02a_pernum_lbl 15 `"15"', add
label define ug02a_pernum_lbl 16 `"16"', add
label define ug02a_pernum_lbl 17 `"17"', add
label define ug02a_pernum_lbl 18 `"18"', add
label define ug02a_pernum_lbl 19 `"19"', add
label define ug02a_pernum_lbl 20 `"20"', add
label define ug02a_pernum_lbl 21 `"21"', add
label define ug02a_pernum_lbl 22 `"22"', add
label define ug02a_pernum_lbl 23 `"23"', add
label define ug02a_pernum_lbl 24 `"24"', add
label define ug02a_pernum_lbl 25 `"25"', add
label define ug02a_pernum_lbl 26 `"26"', add
label define ug02a_pernum_lbl 27 `"27"', add
label define ug02a_pernum_lbl 28 `"28"', add
label define ug02a_pernum_lbl 29 `"29"', add
label define ug02a_pernum_lbl 30 `"30"', add
label values ug02a_pernum ug02a_pernum_lbl

label define ug02a_pern_lbl 01 `"1"'
label define ug02a_pern_lbl 02 `"2"', add
label define ug02a_pern_lbl 03 `"3"', add
label define ug02a_pern_lbl 04 `"4"', add
label define ug02a_pern_lbl 05 `"5"', add
label define ug02a_pern_lbl 06 `"6"', add
label define ug02a_pern_lbl 07 `"7"', add
label define ug02a_pern_lbl 08 `"8"', add
label define ug02a_pern_lbl 09 `"9"', add
label define ug02a_pern_lbl 10 `"10"', add
label define ug02a_pern_lbl 11 `"11"', add
label define ug02a_pern_lbl 12 `"12"', add
label define ug02a_pern_lbl 13 `"13"', add
label define ug02a_pern_lbl 14 `"14"', add
label define ug02a_pern_lbl 15 `"15"', add
label define ug02a_pern_lbl 16 `"16"', add
label define ug02a_pern_lbl 17 `"17"', add
label define ug02a_pern_lbl 18 `"18"', add
label define ug02a_pern_lbl 19 `"19"', add
label define ug02a_pern_lbl 20 `"20"', add
label define ug02a_pern_lbl 21 `"21"', add
label define ug02a_pern_lbl 22 `"22"', add
label define ug02a_pern_lbl 23 `"23"', add
label define ug02a_pern_lbl 24 `"24"', add
label define ug02a_pern_lbl 25 `"25"', add
label define ug02a_pern_lbl 26 `"26"', add
label define ug02a_pern_lbl 27 `"27"', add
label define ug02a_pern_lbl 28 `"28"', add
label define ug02a_pern_lbl 29 `"29"', add
label define ug02a_pern_lbl 30 `"30"', add
label values ug02a_pern ug02a_pern_lbl

label define ug02a_relate_lbl 1 `"Head"'
label define ug02a_relate_lbl 2 `"Spouse"', add
label define ug02a_relate_lbl 3 `"Child"', add
label define ug02a_relate_lbl 4 `"Step child"', add
label define ug02a_relate_lbl 5 `"Parent of head or spouse"', add
label define ug02a_relate_lbl 6 `"Brother/sister of head or spouse"', add
label define ug02a_relate_lbl 7 `"Other relative"', add
label define ug02a_relate_lbl 8 `"Non-relative"', add
label define ug02a_relate_lbl 9 `"Unknown"', add
label values ug02a_relate ug02a_relate_lbl

label define ug02a_sex_lbl 1 `"Male"'
label define ug02a_sex_lbl 2 `"Female"', add
label values ug02a_sex ug02a_sex_lbl

label define ug02a_birthmo_lbl 01 `"January"'
label define ug02a_birthmo_lbl 02 `"February"', add
label define ug02a_birthmo_lbl 03 `"March"', add
label define ug02a_birthmo_lbl 04 `"April"', add
label define ug02a_birthmo_lbl 05 `"May"', add
label define ug02a_birthmo_lbl 06 `"June"', add
label define ug02a_birthmo_lbl 07 `"July"', add
label define ug02a_birthmo_lbl 08 `"August"', add
label define ug02a_birthmo_lbl 09 `"September"', add
label define ug02a_birthmo_lbl 10 `"October"', add
label define ug02a_birthmo_lbl 11 `"November"', add
label define ug02a_birthmo_lbl 12 `"December"', add
label values ug02a_birthmo ug02a_birthmo_lbl

label define ug02a_birthyr_lbl 1905 `"1905"'
label define ug02a_birthyr_lbl 1906 `"1906"', add
label define ug02a_birthyr_lbl 1907 `"1907"', add
label define ug02a_birthyr_lbl 1908 `"1908"', add
label define ug02a_birthyr_lbl 1909 `"1909"', add
label define ug02a_birthyr_lbl 1910 `"1910"', add
label define ug02a_birthyr_lbl 1911 `"1911"', add
label define ug02a_birthyr_lbl 1912 `"1912"', add
label define ug02a_birthyr_lbl 1913 `"1913"', add
label define ug02a_birthyr_lbl 1914 `"1914"', add
label define ug02a_birthyr_lbl 1915 `"1915"', add
label define ug02a_birthyr_lbl 1916 `"1916"', add
label define ug02a_birthyr_lbl 1917 `"1917"', add
label define ug02a_birthyr_lbl 1918 `"1918"', add
label define ug02a_birthyr_lbl 1919 `"1919"', add
label define ug02a_birthyr_lbl 1920 `"1920"', add
label define ug02a_birthyr_lbl 1921 `"1921"', add
label define ug02a_birthyr_lbl 1922 `"1922"', add
label define ug02a_birthyr_lbl 1923 `"1923"', add
label define ug02a_birthyr_lbl 1924 `"1924"', add
label define ug02a_birthyr_lbl 1925 `"1925"', add
label define ug02a_birthyr_lbl 1926 `"1926"', add
label define ug02a_birthyr_lbl 1927 `"1927"', add
label define ug02a_birthyr_lbl 1928 `"1928"', add
label define ug02a_birthyr_lbl 1929 `"1929"', add
label define ug02a_birthyr_lbl 1930 `"1930"', add
label define ug02a_birthyr_lbl 1931 `"1931"', add
label define ug02a_birthyr_lbl 1932 `"1932"', add
label define ug02a_birthyr_lbl 1933 `"1933"', add
label define ug02a_birthyr_lbl 1934 `"1934"', add
label define ug02a_birthyr_lbl 1935 `"1935"', add
label define ug02a_birthyr_lbl 1936 `"1936"', add
label define ug02a_birthyr_lbl 1937 `"1937"', add
label define ug02a_birthyr_lbl 1938 `"1938"', add
label define ug02a_birthyr_lbl 1939 `"1939"', add
label define ug02a_birthyr_lbl 1940 `"1940"', add
label define ug02a_birthyr_lbl 1941 `"1941"', add
label define ug02a_birthyr_lbl 1942 `"1942"', add
label define ug02a_birthyr_lbl 1943 `"1943"', add
label define ug02a_birthyr_lbl 1944 `"1944"', add
label define ug02a_birthyr_lbl 1945 `"1945"', add
label define ug02a_birthyr_lbl 1946 `"1946"', add
label define ug02a_birthyr_lbl 1947 `"1947"', add
label define ug02a_birthyr_lbl 1948 `"1948"', add
label define ug02a_birthyr_lbl 1949 `"1949"', add
label define ug02a_birthyr_lbl 1950 `"1950"', add
label define ug02a_birthyr_lbl 1951 `"1951"', add
label define ug02a_birthyr_lbl 1952 `"1952"', add
label define ug02a_birthyr_lbl 1953 `"1953"', add
label define ug02a_birthyr_lbl 1954 `"1954"', add
label define ug02a_birthyr_lbl 1955 `"1955"', add
label define ug02a_birthyr_lbl 1956 `"1956"', add
label define ug02a_birthyr_lbl 1957 `"1957"', add
label define ug02a_birthyr_lbl 1958 `"1958"', add
label define ug02a_birthyr_lbl 1959 `"1959"', add
label define ug02a_birthyr_lbl 1960 `"1960"', add
label define ug02a_birthyr_lbl 1961 `"1961"', add
label define ug02a_birthyr_lbl 1962 `"1962"', add
label define ug02a_birthyr_lbl 1963 `"1963"', add
label define ug02a_birthyr_lbl 1964 `"1964"', add
label define ug02a_birthyr_lbl 1965 `"1965"', add
label define ug02a_birthyr_lbl 1966 `"1966"', add
label define ug02a_birthyr_lbl 1967 `"1967"', add
label define ug02a_birthyr_lbl 1968 `"1968"', add
label define ug02a_birthyr_lbl 1969 `"1969"', add
label define ug02a_birthyr_lbl 1970 `"1970"', add
label define ug02a_birthyr_lbl 1971 `"1971"', add
label define ug02a_birthyr_lbl 1972 `"1972"', add
label define ug02a_birthyr_lbl 1973 `"1973"', add
label define ug02a_birthyr_lbl 1974 `"1974"', add
label define ug02a_birthyr_lbl 1975 `"1975"', add
label define ug02a_birthyr_lbl 1976 `"1976"', add
label define ug02a_birthyr_lbl 1977 `"1977"', add
label define ug02a_birthyr_lbl 1978 `"1978"', add
label define ug02a_birthyr_lbl 1979 `"1979"', add
label define ug02a_birthyr_lbl 1980 `"1980"', add
label define ug02a_birthyr_lbl 1981 `"1981"', add
label define ug02a_birthyr_lbl 1982 `"1982"', add
label define ug02a_birthyr_lbl 1983 `"1983"', add
label define ug02a_birthyr_lbl 1984 `"1984"', add
label define ug02a_birthyr_lbl 1985 `"1985"', add
label define ug02a_birthyr_lbl 1986 `"1986"', add
label define ug02a_birthyr_lbl 1987 `"1987"', add
label define ug02a_birthyr_lbl 1988 `"1988"', add
label define ug02a_birthyr_lbl 1989 `"1989"', add
label define ug02a_birthyr_lbl 1990 `"1990"', add
label define ug02a_birthyr_lbl 1991 `"1991"', add
label define ug02a_birthyr_lbl 1992 `"1992"', add
label define ug02a_birthyr_lbl 1993 `"1993"', add
label define ug02a_birthyr_lbl 1994 `"1994"', add
label define ug02a_birthyr_lbl 1995 `"1995"', add
label define ug02a_birthyr_lbl 1996 `"1996"', add
label define ug02a_birthyr_lbl 1997 `"1997"', add
label define ug02a_birthyr_lbl 1998 `"1998"', add
label define ug02a_birthyr_lbl 1999 `"1999"', add
label define ug02a_birthyr_lbl 2000 `"2000"', add
label define ug02a_birthyr_lbl 2001 `"2001"', add
label define ug02a_birthyr_lbl 2002 `"2002"', add
label values ug02a_birthyr ug02a_birthyr_lbl

label define ug02a_age_lbl 00 `"0"'
label define ug02a_age_lbl 01 `"1"', add
label define ug02a_age_lbl 02 `"2"', add
label define ug02a_age_lbl 03 `"3"', add
label define ug02a_age_lbl 04 `"4"', add
label define ug02a_age_lbl 05 `"5"', add
label define ug02a_age_lbl 06 `"6"', add
label define ug02a_age_lbl 07 `"7"', add
label define ug02a_age_lbl 08 `"8"', add
label define ug02a_age_lbl 09 `"9"', add
label define ug02a_age_lbl 10 `"10"', add
label define ug02a_age_lbl 11 `"11"', add
label define ug02a_age_lbl 12 `"12"', add
label define ug02a_age_lbl 13 `"13"', add
label define ug02a_age_lbl 14 `"14"', add
label define ug02a_age_lbl 15 `"15"', add
label define ug02a_age_lbl 16 `"16"', add
label define ug02a_age_lbl 17 `"17"', add
label define ug02a_age_lbl 18 `"18"', add
label define ug02a_age_lbl 19 `"19"', add
label define ug02a_age_lbl 20 `"20"', add
label define ug02a_age_lbl 21 `"21"', add
label define ug02a_age_lbl 22 `"22"', add
label define ug02a_age_lbl 23 `"23"', add
label define ug02a_age_lbl 24 `"24"', add
label define ug02a_age_lbl 25 `"25"', add
label define ug02a_age_lbl 26 `"26"', add
label define ug02a_age_lbl 27 `"27"', add
label define ug02a_age_lbl 28 `"28"', add
label define ug02a_age_lbl 29 `"29"', add
label define ug02a_age_lbl 30 `"30"', add
label define ug02a_age_lbl 31 `"31"', add
label define ug02a_age_lbl 32 `"32"', add
label define ug02a_age_lbl 33 `"33"', add
label define ug02a_age_lbl 34 `"34"', add
label define ug02a_age_lbl 35 `"35"', add
label define ug02a_age_lbl 36 `"36"', add
label define ug02a_age_lbl 37 `"37"', add
label define ug02a_age_lbl 38 `"38"', add
label define ug02a_age_lbl 39 `"39"', add
label define ug02a_age_lbl 40 `"40"', add
label define ug02a_age_lbl 41 `"41"', add
label define ug02a_age_lbl 42 `"42"', add
label define ug02a_age_lbl 43 `"43"', add
label define ug02a_age_lbl 44 `"44"', add
label define ug02a_age_lbl 45 `"45"', add
label define ug02a_age_lbl 46 `"46"', add
label define ug02a_age_lbl 47 `"47"', add
label define ug02a_age_lbl 48 `"48"', add
label define ug02a_age_lbl 49 `"49"', add
label define ug02a_age_lbl 50 `"50"', add
label define ug02a_age_lbl 51 `"51"', add
label define ug02a_age_lbl 52 `"52"', add
label define ug02a_age_lbl 53 `"53"', add
label define ug02a_age_lbl 54 `"54"', add
label define ug02a_age_lbl 55 `"55"', add
label define ug02a_age_lbl 56 `"56"', add
label define ug02a_age_lbl 57 `"57"', add
label define ug02a_age_lbl 58 `"58"', add
label define ug02a_age_lbl 59 `"59"', add
label define ug02a_age_lbl 60 `"60"', add
label define ug02a_age_lbl 61 `"61"', add
label define ug02a_age_lbl 62 `"62"', add
label define ug02a_age_lbl 63 `"63"', add
label define ug02a_age_lbl 64 `"64"', add
label define ug02a_age_lbl 65 `"65"', add
label define ug02a_age_lbl 66 `"66"', add
label define ug02a_age_lbl 67 `"67"', add
label define ug02a_age_lbl 68 `"68"', add
label define ug02a_age_lbl 69 `"69"', add
label define ug02a_age_lbl 70 `"70"', add
label define ug02a_age_lbl 71 `"71"', add
label define ug02a_age_lbl 72 `"72"', add
label define ug02a_age_lbl 73 `"73"', add
label define ug02a_age_lbl 74 `"74"', add
label define ug02a_age_lbl 75 `"75"', add
label define ug02a_age_lbl 76 `"76"', add
label define ug02a_age_lbl 77 `"77"', add
label define ug02a_age_lbl 78 `"78"', add
label define ug02a_age_lbl 79 `"79"', add
label define ug02a_age_lbl 80 `"80"', add
label define ug02a_age_lbl 81 `"81"', add
label define ug02a_age_lbl 82 `"82"', add
label define ug02a_age_lbl 83 `"83"', add
label define ug02a_age_lbl 84 `"84"', add
label define ug02a_age_lbl 85 `"85"', add
label define ug02a_age_lbl 86 `"86"', add
label define ug02a_age_lbl 87 `"87"', add
label define ug02a_age_lbl 88 `"88"', add
label define ug02a_age_lbl 89 `"89"', add
label define ug02a_age_lbl 90 `"90"', add
label define ug02a_age_lbl 91 `"91"', add
label define ug02a_age_lbl 92 `"92"', add
label define ug02a_age_lbl 93 `"93"', add
label define ug02a_age_lbl 94 `"94"', add
label define ug02a_age_lbl 95 `"95 +"', add
label values ug02a_age ug02a_age_lbl

label define ug02a_relig_lbl 01 `"Christians: Catholic"'
label define ug02a_relig_lbl 02 `"Christians: Anglican/Protestant"', add
label define ug02a_relig_lbl 03 `"Christians: Seventh-day Adventist"', add
label define ug02a_relig_lbl 04 `"Christians: Orthodox"', add
label define ug02a_relig_lbl 05 `"Christians: Pentecostal"', add
label define ug02a_relig_lbl 06 `"Christians: other christian"', add
label define ug02a_relig_lbl 07 `"Moslem"', add
label define ug02a_relig_lbl 08 `"Others: Bahai"', add
label define ug02a_relig_lbl 09 `"Others: non-christian"', add
label define ug02a_relig_lbl 10 `"Traditional"', add
label define ug02a_relig_lbl 11 `"No religion/none"', add
label values ug02a_relig ug02a_relig_lbl

label define ug02a_ethnic_lbl 11 `"Acholi"'
label define ug02a_ethnic_lbl 12 `"Alur"', add
label define ug02a_ethnic_lbl 13 `"Baamba"', add
label define ug02a_ethnic_lbl 14 `"Babukusu"', add
label define ug02a_ethnic_lbl 15 `"Babwisi"', add
label define ug02a_ethnic_lbl 16 `"Bafumbira"', add
label define ug02a_ethnic_lbl 17 `"Baganda"', add
label define ug02a_ethnic_lbl 18 `"Bagisu"', add
label define ug02a_ethnic_lbl 19 `"Bagungu"', add
label define ug02a_ethnic_lbl 20 `"Bagwe"', add
label define ug02a_ethnic_lbl 21 `"Bagwere"', add
label define ug02a_ethnic_lbl 22 `"Bahehe"', add
label define ug02a_ethnic_lbl 23 `"Bahororo"', add
label define ug02a_ethnic_lbl 24 `"Bakenyi"', add
label define ug02a_ethnic_lbl 25 `"Bakiga"', add
label define ug02a_ethnic_lbl 26 `"Bakhonzo"', add
label define ug02a_ethnic_lbl 27 `"Banyabindi"', add
label define ug02a_ethnic_lbl 28 `"Banyakole"', add
label define ug02a_ethnic_lbl 29 `"Banyara"', add
label define ug02a_ethnic_lbl 30 `"Banyarwanda"', add
label define ug02a_ethnic_lbl 31 `"Banyole"', add
label define ug02a_ethnic_lbl 32 `"Banyoro"', add
label define ug02a_ethnic_lbl 33 `"Baruli"', add
label define ug02a_ethnic_lbl 34 `"Basamia"', add
label define ug02a_ethnic_lbl 35 `"Basoga"', add
label define ug02a_ethnic_lbl 36 `"Basongora"', add
label define ug02a_ethnic_lbl 37 `"Batagwenda"', add
label define ug02a_ethnic_lbl 38 `"Batoro"', add
label define ug02a_ethnic_lbl 39 `"Batuku"', add
label define ug02a_ethnic_lbl 40 `"Batwa"', add
label define ug02a_ethnic_lbl 41 `"Chope"', add
label define ug02a_ethnic_lbl 42 `"Dodoth"', add
label define ug02a_ethnic_lbl 43 `"Ethur"', add
label define ug02a_ethnic_lbl 44 `"Ik (Teuso)"', add
label define ug02a_ethnic_lbl 45 `"Iteso"', add
label define ug02a_ethnic_lbl 46 `"Jopadhola"', add
label define ug02a_ethnic_lbl 47 `"Jie"', add
label define ug02a_ethnic_lbl 48 `"Jonam"', add
label define ug02a_ethnic_lbl 49 `"Kakwa"', add
label define ug02a_ethnic_lbl 50 `"Karimojong"', add
label define ug02a_ethnic_lbl 51 `"Kebu (Okebu)"', add
label define ug02a_ethnic_lbl 52 `"Kuku"', add
label define ug02a_ethnic_lbl 53 `"Kumam"', add
label define ug02a_ethnic_lbl 54 `"Langi"', add
label define ug02a_ethnic_lbl 55 `"Lendu"', add
label define ug02a_ethnic_lbl 56 `"Lugbara"', add
label define ug02a_ethnic_lbl 57 `"Madi"', add
label define ug02a_ethnic_lbl 58 `"Mening"', add
label define ug02a_ethnic_lbl 59 `"Mvuba"', add
label define ug02a_ethnic_lbl 60 `"Napore"', add
label define ug02a_ethnic_lbl 61 `"Nubi"', add
label define ug02a_ethnic_lbl 62 `"Nyangia"', add
label define ug02a_ethnic_lbl 63 `"Pokot"', add
label define ug02a_ethnic_lbl 64 `"Sabiny"', add
label define ug02a_ethnic_lbl 65 `"So (Tepeth)"', add
label define ug02a_ethnic_lbl 69 `"Other Ugandans"', add
label define ug02a_ethnic_lbl 71 `"Kenya"', add
label define ug02a_ethnic_lbl 72 `"Tanzania"', add
label define ug02a_ethnic_lbl 73 `"Rwanda"', add
label define ug02a_ethnic_lbl 74 `"Burundi"', add
label define ug02a_ethnic_lbl 75 `"Sudan"', add
label define ug02a_ethnic_lbl 76 `"Democratic Republic of the Congo"', add
label define ug02a_ethnic_lbl 77 `"Other Africa"', add
label define ug02a_ethnic_lbl 81 `"United Kingdom"', add
label define ug02a_ethnic_lbl 82 `"Other Europe"', add
label define ug02a_ethnic_lbl 83 `"Asia"', add
label define ug02a_ethnic_lbl 84 `"USA"', add
label define ug02a_ethnic_lbl 85 `"Canada"', add
label define ug02a_ethnic_lbl 88 `"Oceania"', add
label define ug02a_ethnic_lbl 89 `"Non-Ugandan-not stated"', add
label define ug02a_ethnic_lbl 97 `"Response suppressed"', add
label values ug02a_ethnic ug02a_ethnic_lbl

label define ug02a_mothlive_lbl 1 `"Yes"'
label define ug02a_mothlive_lbl 2 `"No"', add
label define ug02a_mothlive_lbl 9 `"NIU (not in universe)"', add
label values ug02a_mothlive ug02a_mothlive_lbl

label define ug02a_fathlive_lbl 1 `"Yes"'
label define ug02a_fathlive_lbl 2 `"No"', add
label define ug02a_fathlive_lbl 9 `"NIU (not in universe)"', add
label values ug02a_fathlive ug02a_fathlive_lbl

label define ug02a_bpl_lbl 071 `"Kenya"'
label define ug02a_bpl_lbl 072 `"Tanzania"', add
label define ug02a_bpl_lbl 073 `"Rwanda"', add
label define ug02a_bpl_lbl 074 `"Burundi"', add
label define ug02a_bpl_lbl 075 `"Sudan"', add
label define ug02a_bpl_lbl 076 `"DR of Congo"', add
label define ug02a_bpl_lbl 077 `"Other Africa"', add
label define ug02a_bpl_lbl 081 `"United Kingdom"', add
label define ug02a_bpl_lbl 082 `"Other Europe"', add
label define ug02a_bpl_lbl 083 `"Asia"', add
label define ug02a_bpl_lbl 084 `"USA"', add
label define ug02a_bpl_lbl 085 `"Canada"', add
label define ug02a_bpl_lbl 089 `"Non-Ugandan, not stated"', add
label define ug02a_bpl_lbl 101 `"Kalangala"', add
label define ug02a_bpl_lbl 102 `"Kampala"', add
label define ug02a_bpl_lbl 103 `"Kiboga"', add
label define ug02a_bpl_lbl 104 `"Luwero"', add
label define ug02a_bpl_lbl 105 `"Masaka"', add
label define ug02a_bpl_lbl 106 `"Mpigi"', add
label define ug02a_bpl_lbl 107 `"Mubende"', add
label define ug02a_bpl_lbl 108 `"Mukono"', add
label define ug02a_bpl_lbl 109 `"Nakasongola"', add
label define ug02a_bpl_lbl 110 `"Rakai"', add
label define ug02a_bpl_lbl 111 `"Sembabule"', add
label define ug02a_bpl_lbl 112 `"Kayunga"', add
label define ug02a_bpl_lbl 113 `"Wakiso"', add
label define ug02a_bpl_lbl 201 `"Bugiri"', add
label define ug02a_bpl_lbl 202 `"Busia"', add
label define ug02a_bpl_lbl 203 `"Iganga"', add
label define ug02a_bpl_lbl 204 `"Jinja"', add
label define ug02a_bpl_lbl 205 `"Kamuli"', add
label define ug02a_bpl_lbl 206 `"Kapchorwa"', add
label define ug02a_bpl_lbl 207 `"Katakwi"', add
label define ug02a_bpl_lbl 208 `"Kumi"', add
label define ug02a_bpl_lbl 209 `"Mbale"', add
label define ug02a_bpl_lbl 210 `"Pallisa"', add
label define ug02a_bpl_lbl 211 `"Soroti"', add
label define ug02a_bpl_lbl 212 `"Tororo"', add
label define ug02a_bpl_lbl 213 `"Kaberamaido"', add
label define ug02a_bpl_lbl 214 `"Mayuge"', add
label define ug02a_bpl_lbl 215 `"Sironko"', add
label define ug02a_bpl_lbl 301 `"Adjumani"', add
label define ug02a_bpl_lbl 302 `"Apac"', add
label define ug02a_bpl_lbl 303 `"Arua"', add
label define ug02a_bpl_lbl 304 `"Gulu"', add
label define ug02a_bpl_lbl 305 `"Kitgum"', add
label define ug02a_bpl_lbl 306 `"Kotido"', add
label define ug02a_bpl_lbl 307 `"Lira"', add
label define ug02a_bpl_lbl 308 `"Moroto"', add
label define ug02a_bpl_lbl 309 `"Moyo"', add
label define ug02a_bpl_lbl 310 `"Nebbi"', add
label define ug02a_bpl_lbl 311 `"Nakapiripirit"', add
label define ug02a_bpl_lbl 312 `"Pader"', add
label define ug02a_bpl_lbl 313 `"Yumbe"', add
label define ug02a_bpl_lbl 401 `"Bundibugyo"', add
label define ug02a_bpl_lbl 402 `"Bushenyi"', add
label define ug02a_bpl_lbl 403 `"Hoima"', add
label define ug02a_bpl_lbl 404 `"Kabale"', add
label define ug02a_bpl_lbl 405 `"Kabarole"', add
label define ug02a_bpl_lbl 406 `"Kasese"', add
label define ug02a_bpl_lbl 407 `"Kibaale"', add
label define ug02a_bpl_lbl 408 `"Kisoro"', add
label define ug02a_bpl_lbl 409 `"Masindi"', add
label define ug02a_bpl_lbl 410 `"Mbarara"', add
label define ug02a_bpl_lbl 411 `"Ntungamo"', add
label define ug02a_bpl_lbl 412 `"Rukungiri"', add
label define ug02a_bpl_lbl 413 `"Kamwenge"', add
label define ug02a_bpl_lbl 414 `"Kanungu"', add
label define ug02a_bpl_lbl 415 `"Kyenjojo"', add
label define ug02a_bpl_lbl 997 `"Response suppressed"', add
label values ug02a_bpl ug02a_bpl_lbl

label define ug02a_prevres_lbl 071 `"Kenya"'
label define ug02a_prevres_lbl 072 `"Tanzania"', add
label define ug02a_prevres_lbl 073 `"Rwanda"', add
label define ug02a_prevres_lbl 074 `"Burundi"', add
label define ug02a_prevres_lbl 075 `"Sudan"', add
label define ug02a_prevres_lbl 076 `"DR of Congo"', add
label define ug02a_prevres_lbl 077 `"Other Africa"', add
label define ug02a_prevres_lbl 081 `"United Kingdom"', add
label define ug02a_prevres_lbl 082 `"Other Europe"', add
label define ug02a_prevres_lbl 083 `"Asia"', add
label define ug02a_prevres_lbl 084 `"USA"', add
label define ug02a_prevres_lbl 085 `"Canada"', add
label define ug02a_prevres_lbl 087 `"Australia"', add
label define ug02a_prevres_lbl 097 `"Visitor"', add
label define ug02a_prevres_lbl 098 `"Since birth"', add
label define ug02a_prevres_lbl 101 `"Kalangala"', add
label define ug02a_prevres_lbl 102 `"Kampala"', add
label define ug02a_prevres_lbl 103 `"Kiboga"', add
label define ug02a_prevres_lbl 104 `"Luwero"', add
label define ug02a_prevres_lbl 105 `"Masaka"', add
label define ug02a_prevres_lbl 106 `"Mpigi"', add
label define ug02a_prevres_lbl 107 `"Mubende"', add
label define ug02a_prevres_lbl 108 `"Mukono"', add
label define ug02a_prevres_lbl 109 `"Nakasongola"', add
label define ug02a_prevres_lbl 110 `"Rakai"', add
label define ug02a_prevres_lbl 111 `"Sembabule"', add
label define ug02a_prevres_lbl 112 `"Kayunga"', add
label define ug02a_prevres_lbl 113 `"Wakiso"', add
label define ug02a_prevres_lbl 201 `"Bugiri"', add
label define ug02a_prevres_lbl 202 `"Busia"', add
label define ug02a_prevres_lbl 203 `"Iganga"', add
label define ug02a_prevres_lbl 204 `"Jinja"', add
label define ug02a_prevres_lbl 205 `"Kamuli"', add
label define ug02a_prevres_lbl 206 `"Kapchorwa"', add
label define ug02a_prevres_lbl 207 `"Katakwi"', add
label define ug02a_prevres_lbl 208 `"Kumi"', add
label define ug02a_prevres_lbl 209 `"Mbale"', add
label define ug02a_prevres_lbl 210 `"Pallisa"', add
label define ug02a_prevres_lbl 211 `"Soroti"', add
label define ug02a_prevres_lbl 212 `"Tororo"', add
label define ug02a_prevres_lbl 213 `"Kaberamaido"', add
label define ug02a_prevres_lbl 214 `"Mayuge"', add
label define ug02a_prevres_lbl 215 `"Sironko"', add
label define ug02a_prevres_lbl 301 `"Adjumani"', add
label define ug02a_prevres_lbl 302 `"Apac"', add
label define ug02a_prevres_lbl 303 `"Arua"', add
label define ug02a_prevres_lbl 304 `"Gulu"', add
label define ug02a_prevres_lbl 305 `"Kitgum"', add
label define ug02a_prevres_lbl 306 `"Kotido"', add
label define ug02a_prevres_lbl 307 `"Lira"', add
label define ug02a_prevres_lbl 308 `"Moroto"', add
label define ug02a_prevres_lbl 309 `"Moyo"', add
label define ug02a_prevres_lbl 310 `"Nebbi"', add
label define ug02a_prevres_lbl 311 `"Nakapiripirit"', add
label define ug02a_prevres_lbl 312 `"Pader"', add
label define ug02a_prevres_lbl 313 `"Yumbe"', add
label define ug02a_prevres_lbl 401 `"Bundibugyo"', add
label define ug02a_prevres_lbl 402 `"Bushenyi"', add
label define ug02a_prevres_lbl 403 `"Hoima"', add
label define ug02a_prevres_lbl 404 `"Kabale"', add
label define ug02a_prevres_lbl 405 `"Kabarole"', add
label define ug02a_prevres_lbl 406 `"Kasese"', add
label define ug02a_prevres_lbl 407 `"Kibaale"', add
label define ug02a_prevres_lbl 408 `"Kisoro"', add
label define ug02a_prevres_lbl 409 `"Masindi"', add
label define ug02a_prevres_lbl 410 `"Mbarara"', add
label define ug02a_prevres_lbl 411 `"Ntungamo"', add
label define ug02a_prevres_lbl 412 `"Rukungiri"', add
label define ug02a_prevres_lbl 413 `"Kamwenge"', add
label define ug02a_prevres_lbl 414 `"Kanungu"', add
label define ug02a_prevres_lbl 415 `"Kyenjojo"', add
label define ug02a_prevres_lbl 999 `"Non-Ugandan/Not stated/Response suppressed"', add
label values ug02a_prevres ug02a_prevres_lbl

label define ug02a_resdur_lbl 00 `"less than 1 year"'
label define ug02a_resdur_lbl 01 `"1"', add
label define ug02a_resdur_lbl 02 `"2"', add
label define ug02a_resdur_lbl 03 `"3"', add
label define ug02a_resdur_lbl 04 `"4"', add
label define ug02a_resdur_lbl 05 `"5"', add
label define ug02a_resdur_lbl 06 `"6"', add
label define ug02a_resdur_lbl 07 `"7"', add
label define ug02a_resdur_lbl 08 `"8"', add
label define ug02a_resdur_lbl 09 `"9"', add
label define ug02a_resdur_lbl 10 `"10"', add
label define ug02a_resdur_lbl 11 `"11"', add
label define ug02a_resdur_lbl 12 `"12"', add
label define ug02a_resdur_lbl 13 `"13"', add
label define ug02a_resdur_lbl 14 `"14"', add
label define ug02a_resdur_lbl 15 `"15"', add
label define ug02a_resdur_lbl 16 `"16"', add
label define ug02a_resdur_lbl 17 `"17"', add
label define ug02a_resdur_lbl 18 `"18"', add
label define ug02a_resdur_lbl 19 `"19"', add
label define ug02a_resdur_lbl 20 `"20"', add
label define ug02a_resdur_lbl 21 `"21"', add
label define ug02a_resdur_lbl 22 `"22"', add
label define ug02a_resdur_lbl 23 `"23"', add
label define ug02a_resdur_lbl 24 `"24"', add
label define ug02a_resdur_lbl 25 `"25"', add
label define ug02a_resdur_lbl 26 `"26"', add
label define ug02a_resdur_lbl 27 `"27"', add
label define ug02a_resdur_lbl 28 `"28"', add
label define ug02a_resdur_lbl 29 `"29"', add
label define ug02a_resdur_lbl 30 `"30"', add
label define ug02a_resdur_lbl 31 `"31"', add
label define ug02a_resdur_lbl 32 `"32"', add
label define ug02a_resdur_lbl 33 `"33"', add
label define ug02a_resdur_lbl 34 `"34"', add
label define ug02a_resdur_lbl 35 `"35"', add
label define ug02a_resdur_lbl 36 `"36"', add
label define ug02a_resdur_lbl 37 `"37"', add
label define ug02a_resdur_lbl 38 `"38"', add
label define ug02a_resdur_lbl 39 `"39"', add
label define ug02a_resdur_lbl 40 `"40"', add
label define ug02a_resdur_lbl 41 `"41"', add
label define ug02a_resdur_lbl 42 `"42"', add
label define ug02a_resdur_lbl 43 `"43"', add
label define ug02a_resdur_lbl 44 `"44"', add
label define ug02a_resdur_lbl 45 `"45"', add
label define ug02a_resdur_lbl 46 `"46"', add
label define ug02a_resdur_lbl 47 `"47"', add
label define ug02a_resdur_lbl 48 `"48"', add
label define ug02a_resdur_lbl 49 `"49"', add
label define ug02a_resdur_lbl 50 `"50"', add
label define ug02a_resdur_lbl 51 `"51"', add
label define ug02a_resdur_lbl 52 `"52"', add
label define ug02a_resdur_lbl 53 `"53"', add
label define ug02a_resdur_lbl 54 `"54"', add
label define ug02a_resdur_lbl 55 `"55"', add
label define ug02a_resdur_lbl 56 `"56"', add
label define ug02a_resdur_lbl 57 `"57"', add
label define ug02a_resdur_lbl 58 `"58"', add
label define ug02a_resdur_lbl 59 `"59"', add
label define ug02a_resdur_lbl 60 `"60"', add
label define ug02a_resdur_lbl 61 `"61"', add
label define ug02a_resdur_lbl 62 `"62"', add
label define ug02a_resdur_lbl 63 `"63"', add
label define ug02a_resdur_lbl 64 `"64"', add
label define ug02a_resdur_lbl 65 `"65"', add
label define ug02a_resdur_lbl 66 `"66"', add
label define ug02a_resdur_lbl 67 `"67"', add
label define ug02a_resdur_lbl 68 `"68"', add
label define ug02a_resdur_lbl 69 `"69"', add
label define ug02a_resdur_lbl 70 `"70"', add
label define ug02a_resdur_lbl 71 `"71"', add
label define ug02a_resdur_lbl 72 `"72"', add
label define ug02a_resdur_lbl 73 `"73"', add
label define ug02a_resdur_lbl 74 `"74"', add
label define ug02a_resdur_lbl 75 `"75"', add
label define ug02a_resdur_lbl 76 `"76"', add
label define ug02a_resdur_lbl 77 `"77"', add
label define ug02a_resdur_lbl 78 `"78"', add
label define ug02a_resdur_lbl 79 `"79"', add
label define ug02a_resdur_lbl 80 `"80"', add
label define ug02a_resdur_lbl 81 `"81"', add
label define ug02a_resdur_lbl 82 `"82"', add
label define ug02a_resdur_lbl 83 `"83"', add
label define ug02a_resdur_lbl 84 `"84"', add
label define ug02a_resdur_lbl 85 `"85"', add
label define ug02a_resdur_lbl 86 `"86"', add
label define ug02a_resdur_lbl 87 `"87"', add
label define ug02a_resdur_lbl 88 `"88"', add
label define ug02a_resdur_lbl 89 `"89"', add
label define ug02a_resdur_lbl 90 `"90"', add
label define ug02a_resdur_lbl 91 `"91"', add
label define ug02a_resdur_lbl 92 `"92"', add
label define ug02a_resdur_lbl 93 `"93"', add
label define ug02a_resdur_lbl 94 `"94"', add
label define ug02a_resdur_lbl 95 `"95+"', add
label define ug02a_resdur_lbl 97 `"Visitor/non-usual member"', add
label define ug02a_resdur_lbl 98 `"Since birth"', add
label values ug02a_resdur ug02a_resdur_lbl

label define ug02a_disab1_lbl 10 `"None"'
label define ug02a_disab1_lbl 11 `"Physical: limited use of legs"', add
label define ug02a_disab1_lbl 12 `"Physical: loss of legs"', add
label define ug02a_disab1_lbl 13 `"Physical: limited use of arms"', add
label define ug02a_disab1_lbl 14 `"Physical: loss of arms"', add
label define ug02a_disab1_lbl 15 `"Physical: serious problem with back spine"', add
label define ug02a_disab1_lbl 16 `"Hearing: hearing difficulty"', add
label define ug02a_disab1_lbl 17 `"Hearing: unable to hear (deafness)"', add
label define ug02a_disab1_lbl 18 `"Sight: sight difficulty"', add
label define ug02a_disab1_lbl 19 `"Sight: blindness"', add
label define ug02a_disab1_lbl 20 `"Speech: speech impairment"', add
label define ug02a_disab1_lbl 21 `"Speech: unable to speak (mute)"', add
label define ug02a_disab1_lbl 22 `"Mental retardation"', add
label define ug02a_disab1_lbl 23 `"Mental illness (strange behaviour)"', add
label define ug02a_disab1_lbl 24 `"Other: epileptic"', add
label define ug02a_disab1_lbl 25 `"Other: rheumatism"', add
label define ug02a_disab1_lbl 26 `"Other: others"', add
label values ug02a_disab1 ug02a_disab1_lbl

label define ug02a_disab2_lbl 11 `"Physical: limited use of legs"'
label define ug02a_disab2_lbl 12 `"Physical: loss of legs"', add
label define ug02a_disab2_lbl 13 `"Physical: limited use of arms"', add
label define ug02a_disab2_lbl 14 `"Physical: loss of arms"', add
label define ug02a_disab2_lbl 15 `"Physical: serious problem with back spine"', add
label define ug02a_disab2_lbl 16 `"Hearing: hearing difficulty"', add
label define ug02a_disab2_lbl 17 `"Hearing: unable to hear (deafness)"', add
label define ug02a_disab2_lbl 18 `"Sight: sight difficulty"', add
label define ug02a_disab2_lbl 19 `"Sight: blindness"', add
label define ug02a_disab2_lbl 20 `"Speech: speech impairment"', add
label define ug02a_disab2_lbl 21 `"Speech: unable to speak (mute)"', add
label define ug02a_disab2_lbl 22 `"Mental retardation"', add
label define ug02a_disab2_lbl 23 `"Mental illness (strange behaviour)"', add
label define ug02a_disab2_lbl 24 `"Other: epileptic"', add
label define ug02a_disab2_lbl 25 `"Other: rheumatism"', add
label define ug02a_disab2_lbl 26 `"Other: others"', add
label define ug02a_disab2_lbl 99 `"No second disability"', add
label values ug02a_disab2 ug02a_disab2_lbl

label define ug02a_discau1_lbl 1 `"Congenital (born with a disability)"'
label define ug02a_discau1_lbl 2 `"Disease/illness"', add
label define ug02a_discau1_lbl 3 `"Transport accident"', add
label define ug02a_discau1_lbl 4 `"Occupational injury"', add
label define ug02a_discau1_lbl 5 `"Other accident"', add
label define ug02a_discau1_lbl 6 `"War"', add
label define ug02a_discau1_lbl 7 `"Natural aging process"', add
label define ug02a_discau1_lbl 8 `"Other causes"', add
label define ug02a_discau1_lbl 9 `"NIU (not in universe)"', add
label values ug02a_discau1 ug02a_discau1_lbl

label define ug02a_discau2_lbl 1 `"Congenital (born with a disability)"'
label define ug02a_discau2_lbl 2 `"Disease/illness"', add
label define ug02a_discau2_lbl 3 `"Transport accident"', add
label define ug02a_discau2_lbl 4 `"Occupational injury"', add
label define ug02a_discau2_lbl 5 `"Other accident"', add
label define ug02a_discau2_lbl 6 `"War"', add
label define ug02a_discau2_lbl 7 `"Natural aging process"', add
label define ug02a_discau2_lbl 8 `"Other causes"', add
label define ug02a_discau2_lbl 9 `"NIU (not in universe)"', add
label values ug02a_discau2 ug02a_discau2_lbl

label define ug02a_rehab1_lbl 01 `"None"'
label define ug02a_rehab1_lbl 02 `"Surgical operation"', add
label define ug02a_rehab1_lbl 03 `"Medication"', add
label define ug02a_rehab1_lbl 04 `"Assistive devices"', add
label define ug02a_rehab1_lbl 05 `"Training: specially education (mentally retarded)"', add
label define ug02a_rehab1_lbl 06 `"Training: braille training"', add
label define ug02a_rehab1_lbl 07 `"Training: skills training (vocational)"', add
label define ug02a_rehab1_lbl 08 `"Training: sign language training"', add
label define ug02a_rehab1_lbl 09 `"Counselling"', add
label define ug02a_rehab1_lbl 10 `"Others"', add
label define ug02a_rehab1_lbl 99 `"NIU (not in universe)"', add
label values ug02a_rehab1 ug02a_rehab1_lbl

label define ug02a_rehab2_lbl 01 `"None"'
label define ug02a_rehab2_lbl 02 `"Surgical operation"', add
label define ug02a_rehab2_lbl 03 `"Medication"', add
label define ug02a_rehab2_lbl 04 `"Assistive devices"', add
label define ug02a_rehab2_lbl 05 `"Training: specially education (mentally retarded)"', add
label define ug02a_rehab2_lbl 07 `"Training: skills training (vocational)"', add
label define ug02a_rehab2_lbl 08 `"Training: sign language training"', add
label define ug02a_rehab2_lbl 09 `"Counselling"', add
label define ug02a_rehab2_lbl 10 `"Others"', add
label define ug02a_rehab2_lbl 99 `"NIU (not in universe)"', add
label values ug02a_rehab2 ug02a_rehab2_lbl

label define ug02a_school_lbl 1 `"Attended in 2002"'
label define ug02a_school_lbl 2 `"Left school in 2002"', add
label define ug02a_school_lbl 3 `"Left school before 2002"', add
label define ug02a_school_lbl 4 `"Never been to school"', add
label define ug02a_school_lbl 9 `"NIU (not in universe)"', add
label values ug02a_school ug02a_school_lbl

label define ug02a_edattain_lbl 00 `"None"'
label define ug02a_edattain_lbl 10 `"Did not complete primary 1"', add
label define ug02a_edattain_lbl 11 `"Primary 1"', add
label define ug02a_edattain_lbl 12 `"Primary 2"', add
label define ug02a_edattain_lbl 13 `"Primary 3"', add
label define ug02a_edattain_lbl 14 `"Primary 4"', add
label define ug02a_edattain_lbl 15 `"Primary 5"', add
label define ug02a_edattain_lbl 16 `"Primary 6"', add
label define ug02a_edattain_lbl 17 `"Primary 7"', add
label define ug02a_edattain_lbl 21 `"Junior secondary 1"', add
label define ug02a_edattain_lbl 22 `"Junior secondary 2"', add
label define ug02a_edattain_lbl 23 `"Junior secondary 3"', add
label define ug02a_edattain_lbl 31 `"Senior secondary 1"', add
label define ug02a_edattain_lbl 32 `"Senior secondary 2"', add
label define ug02a_edattain_lbl 33 `"Senior secondary 3"', add
label define ug02a_edattain_lbl 34 `"Senior secondary 4"', add
label define ug02a_edattain_lbl 35 `"Senior secondary 5"', add
label define ug02a_edattain_lbl 36 `"Senior secondary 6"', add
label define ug02a_edattain_lbl 41 `"Vocational: incomplete certificate training"', add
label define ug02a_edattain_lbl 42 `"Vocational: complete certificate training"', add
label define ug02a_edattain_lbl 43 `"Vocational: incomplete diploma training"', add
label define ug02a_edattain_lbl 44 `"Vocational: complete diploma training"', add
label define ug02a_edattain_lbl 51 `"University: incomplete degree"', add
label define ug02a_edattain_lbl 52 `"University: complete degree"', add
label define ug02a_edattain_lbl 53 `"University: incomplete post graduate training"', add
label define ug02a_edattain_lbl 54 `"University: completed post graduate training"', add
label define ug02a_edattain_lbl 99 `"NIU (not in universe)"', add
label values ug02a_edattain ug02a_edattain_lbl

label define ug02a_empstat_lbl 01 `"In labor force: paid employee"'
label define ug02a_empstat_lbl 02 `"In labor force: self-employed"', add
label define ug02a_empstat_lbl 03 `"In labor force: unpaid family worker"', add
label define ug02a_empstat_lbl 04 `"Looking for work"', add
label define ug02a_empstat_lbl 05 `"Not working and not looking for work"', add
label define ug02a_empstat_lbl 06 `"Household work"', add
label define ug02a_empstat_lbl 07 `"Full-time student"', add
label define ug02a_empstat_lbl 08 `"Retired/pensioner"', add
label define ug02a_empstat_lbl 09 `"Too old/too young"', add
label define ug02a_empstat_lbl 10 `"Others"', add
label define ug02a_empstat_lbl 99 `"NIU (not in universe)"', add
label values ug02a_empstat ug02a_empstat_lbl

label define ug02a_ind_lbl 10 `"Crop farming"'
label define ug02a_ind_lbl 11 `"Livestock"', add
label define ug02a_ind_lbl 12 `"Poultry"', add
label define ug02a_ind_lbl 13 `"Fishing"', add
label define ug02a_ind_lbl 14 `"Other agricultural activities"', add
label define ug02a_ind_lbl 15 `"Mining and quarrying"', add
label define ug02a_ind_lbl 16 `"Food products and beverages"', add
label define ug02a_ind_lbl 17 `"Wood and of products, paintings, straw, furnitures"', add
label define ug02a_ind_lbl 18 `"Paper and paper products"', add
label define ug02a_ind_lbl 19 `"Other"', add
label define ug02a_ind_lbl 20 `"Electricity, gas and water supply"', add
label define ug02a_ind_lbl 21 `"Construction"', add
label define ug02a_ind_lbl 22 `"Sale maintenance and repair of motor vehicles, motor cycles, bicycle and parts"', add
label define ug02a_ind_lbl 23 `"Sale of foodstuffs, household nad personal goods"', add
label define ug02a_ind_lbl 24 `"Sale of machinery equipment and supplies"', add
label define ug02a_ind_lbl 25 `"Hotels and lodging, bars, restaurants, eating places and canteens"', add
label define ug02a_ind_lbl 26 `"Transport"', add
label define ug02a_ind_lbl 27 `"Post and telecommunication"', add
label define ug02a_ind_lbl 28 `"Financial intermediation, real estate, renting, legal, accounting, architectural etc"', add
label define ug02a_ind_lbl 36 `"Hair dressing and beauty clinics"', add
label define ug02a_ind_lbl 29 `"Public service"', add
label define ug02a_ind_lbl 30 `"Education"', add
label define ug02a_ind_lbl 31 `"Health"', add
label define ug02a_ind_lbl 32 `"Social work activities"', add
label define ug02a_ind_lbl 33 `"Defence and related activities"', add
label define ug02a_ind_lbl 34 `"Political, trade unions religious activities"', add
label define ug02a_ind_lbl 35 `"Private household with employed persons"', add
label define ug02a_ind_lbl 37 `"Other"', add
label define ug02a_ind_lbl 99 `"NIU (not in universe)"', add
label values ug02a_ind ug02a_ind_lbl

label define ug02a_occ1_lbl 01 `"Managers/senior officials/administrators"'
label define ug02a_occ1_lbl 02 `"Professionals"', add
label define ug02a_occ1_lbl 03 `"Associate professionals"', add
label define ug02a_occ1_lbl 04 `"Clerks"', add
label define ug02a_occ1_lbl 05 `"Service workers, shop and market sales workers"', add
label define ug02a_occ1_lbl 06 `"Agricultural and fishery workers"', add
label define ug02a_occ1_lbl 07 `"Craft and related workers"', add
label define ug02a_occ1_lbl 08 `"Plant and machine operators and assemblers"', add
label define ug02a_occ1_lbl 09 `"Elementary occupations"', add
label define ug02a_occ1_lbl 99 `"NIU (not in universe)"', add
label values ug02a_occ1 ug02a_occ1_lbl

label define ug02a_occ_lbl 111 `"Legislators"'
label define ug02a_occ_lbl 112 `"Senior government officials"', add
label define ug02a_occ_lbl 113 `"Traditional chiefs"', add
label define ug02a_occ_lbl 114 `"Administrators, special interest groups"', add
label define ug02a_occ_lbl 121 `"Directors and chief executives"', add
label define ug02a_occ_lbl 122 `"Specialized managers"', add
label define ug02a_occ_lbl 123 `"Managing supervisors"', add
label define ug02a_occ_lbl 131 `"General managers"', add
label define ug02a_occ_lbl 141 `"Diplomatic mission heads"', add
label define ug02a_occ_lbl 151 `"Political mobilizers"', add
label define ug02a_occ_lbl 152 `"Community mobilizers"', add
label define ug02a_occ_lbl 211 `"Physicists, chemists, etc."', add
label define ug02a_occ_lbl 217 `"Computer programmers"', add
label define ug02a_occ_lbl 219 `"Engineers"', add
label define ug02a_occ_lbl 220 `"Cartographers, surveyors, etc."', add
label define ug02a_occ_lbl 221 `"Biologists, zoologists, botanists, etc."', add
label define ug02a_occ_lbl 223 `"Nursing and midwifery"', add
label define ug02a_occ_lbl 224 `"Other health professionals"', add
label define ug02a_occ_lbl 225 `"Medical doctors"', add
label define ug02a_occ_lbl 227 `"Veterinary doctors"', add
label define ug02a_occ_lbl 229 `"Agriculturists"', add
label define ug02a_occ_lbl 231 `"Teachers college, university, and higher education"', add
label define ug02a_occ_lbl 232 `"Teachers secondary level"', add
label define ug02a_occ_lbl 235 `"Teachers training institutes"', add
label define ug02a_occ_lbl 236 `"Teachers woodworking vocational training"', add
label define ug02a_occ_lbl 238 `"Teaching professionals, inspectors, etc."', add
label define ug02a_occ_lbl 239 `"Primary teachers only"', add
label define ug02a_occ_lbl 242 `"Legal professionals"', add
label define ug02a_occ_lbl 243 `"Information professionals, librarians"', add
label define ug02a_occ_lbl 245 `"Writers and creative artists"', add
label define ug02a_occ_lbl 246 `"Religious professionals"', add
label define ug02a_occ_lbl 247 `"Other officials and administrators (town clerks)"', add
label define ug02a_occ_lbl 248 `"Professionals n.e.c."', add
label define ug02a_occ_lbl 249 `"Accountants"', add
label define ug02a_occ_lbl 250 `"Economists"', add
label define ug02a_occ_lbl 251 `"Sociologists"', add
label define ug02a_occ_lbl 252 `"Social workers"', add
label define ug02a_occ_lbl 253 `"Auditors"', add
label define ug02a_occ_lbl 255 `"Business administrators"', add
label define ug02a_occ_lbl 256 `"Journalists"', add
label define ug02a_occ_lbl 257 `"Civil engineers"', add
label define ug02a_occ_lbl 258 `"Electrical engineers"', add
label define ug02a_occ_lbl 259 `"Mechanical engineers"', add
label define ug02a_occ_lbl 311 `"Physical science and engineering technicians"', add
label define ug02a_occ_lbl 312 `"Image, sound, and computer equipment operators"', add
label define ug02a_occ_lbl 313 `"Optical, electronic, and medical equipment operators"', add
label define ug02a_occ_lbl 314 `"Ship and aircraft technicians"', add
label define ug02a_occ_lbl 315 `"Inspectors bldg, safety, and health"', add
label define ug02a_occ_lbl 316 `"Sub county chiefs"', add
label define ug02a_occ_lbl 321 `"Forestry, farming technicians and advisors"', add
label define ug02a_occ_lbl 322 `"Agronomy, forestry and farming technicians and advisors"', add
label define ug02a_occ_lbl 323 `"Nurses and midwives"', add
label define ug02a_occ_lbl 324 `"Medical assistants"', add
label define ug02a_occ_lbl 325 `"Dental assistants"', add
label define ug02a_occ_lbl 326 `"Veterinary and fishery assistants"', add
label define ug02a_occ_lbl 327 `"Pharmaceutical assistants"', add
label define ug02a_occ_lbl 328 `"Other life science professionals"', add
label define ug02a_occ_lbl 329 `"Traditional medical practitioners"', add
label define ug02a_occ_lbl 330 `"Agricultural assistants"', add
label define ug02a_occ_lbl 331 `"Post-primary teaching associates"', add
label define ug02a_occ_lbl 332 `"Primary teaching associates"', add
label define ug02a_occ_lbl 333 `"Pre-primary teaching associates"', add
label define ug02a_occ_lbl 334 `"Special ed. teaching associates"', add
label define ug02a_occ_lbl 335 `"Teaching associates n.e.c."', add
label define ug02a_occ_lbl 341 `"Finance and real estate professionals"', add
label define ug02a_occ_lbl 342 `"Business service agents and trade brokers"', add
label define ug02a_occ_lbl 343 `"Public and private administrative associate professionals"', add
label define ug02a_occ_lbl 344 `"Government customs and tax related associate professionals"', add
label define ug02a_occ_lbl 345 `"Police inspectors and detectives"', add
label define ug02a_occ_lbl 346 `"Social work associate professionals"', add
label define ug02a_occ_lbl 347 `"Artistic, entertainment, and broadcasting professionals"', add
label define ug02a_occ_lbl 348 `"Religious associate professionals"', add
label define ug02a_occ_lbl 349 `"Associate professionals, civil servants  n.e.c. (lawyer?)"', add
label define ug02a_occ_lbl 350 `"Landlords"', add
label define ug02a_occ_lbl 351 `"Life science experienced non-professionals"', add
label define ug02a_occ_lbl 352 `"Teaching experienced non-professionals"', add
label define ug02a_occ_lbl 353 `"Sports and cultural entertainment ,experienced non-professionals"', add
label define ug02a_occ_lbl 354 `"Self-employed, unspecified business"', add
label define ug02a_occ_lbl 355 `"Other non-professionals n.e.c."', add
label define ug02a_occ_lbl 356 `"Magistrates"', add
label define ug02a_occ_lbl 411 `"Secretaries, keyboard operator clerks"', add
label define ug02a_occ_lbl 412 `"Numerical clerks, book keeping"', add
label define ug02a_occ_lbl 413 `"Material recording and transport clerks"', add
label define ug02a_occ_lbl 414 `"Library, mail, filing clerks"', add
label define ug02a_occ_lbl 419 `"Other office clerks"', add
label define ug02a_occ_lbl 421 `"Cashier, teller clerks (green boat)"', add
label define ug02a_occ_lbl 422 `"Client information clerks (receptionist, travel agency clerks)"', add
label define ug02a_occ_lbl 423 `"Money changers"', add
label define ug02a_occ_lbl 433 `"Clerks n.e.c."', add
label define ug02a_occ_lbl 511 `"Taxi brokers, conductors, guides"', add
label define ug02a_occ_lbl 512 `"Restaurant service workers and cooks"', add
label define ug02a_occ_lbl 513 `"Personal care workers, childcare"', add
label define ug02a_occ_lbl 514 `"Other personal care workers, housekeepers and hairdressers"', add
label define ug02a_occ_lbl 515 `"Fortune tellers and related workers"', add
label define ug02a_occ_lbl 516 `"Protective service workers, prison wardens, LDUs, game wardens"', add
label define ug02a_occ_lbl 517 `"Policemen"', add
label define ug02a_occ_lbl 521 `"Fashion and other models (Zipper)"', add
label define ug02a_occ_lbl 522 `"Shop salespersons, attendants (employed shop keeper)"', add
label define ug02a_occ_lbl 523 `"Stall and market salespersons"', add
label define ug02a_occ_lbl 532 `"Wholesale importers only"', add
label define ug02a_occ_lbl 533 `"Wholesale exporters only"', add
label define ug02a_occ_lbl 535 `"Wholesale produce buyers"', add
label define ug02a_occ_lbl 536 `"Wholesale agricultural product dealers (coffee and milk sellers)"', add
label define ug02a_occ_lbl 539 `"Wholesale traders n.e.c."', add
label define ug02a_occ_lbl 540 `"Wholesale spare parts/hardware"', add
label define ug02a_occ_lbl 541 `"Food and beverage retailer"', add
label define ug02a_occ_lbl 542 `"General merchandise retailer"', add
label define ug02a_occ_lbl 543 `"Textiles, footwear and personal effects retailer"', add
label define ug02a_occ_lbl 545 `"Human drug retailer, pharmacies"', add
label define ug02a_occ_lbl 549 `"Retailers n.e.c."', add
label define ug02a_occ_lbl 550 `"Retailer spare parts/hardware"', add
label define ug02a_occ_lbl 611 `"Market gardeners and growers"', add
label define ug02a_occ_lbl 612 `"Market-oriented animal producers"', add
label define ug02a_occ_lbl 613 `"Market-oriented crop and animal producers"', add
label define ug02a_occ_lbl 614 `"Forestry and related workers"', add
label define ug02a_occ_lbl 615 `"Fishery workers, hunters, beekeepers"', add
label define ug02a_occ_lbl 616 `"Foremen in commercial farming and fishery"', add
label define ug02a_occ_lbl 621 `"Subsistence crop farmers"', add
label define ug02a_occ_lbl 622 `"Subsistence livestock farmers"', add
label define ug02a_occ_lbl 623 `"Subsistence fishery workers"', add
label define ug02a_occ_lbl 711 `"Mine blasters, stone cutters, carvers"', add
label define ug02a_occ_lbl 712 `"Builders, brick layers, masons"', add
label define ug02a_occ_lbl 713 `"Roofers, plasterers, plumbers, electricians"', add
label define ug02a_occ_lbl 714 `"Painters, bldg decorators and related workers"', add
label define ug02a_occ_lbl 721 `"Welders, sheet metal workers, metal molders"', add
label define ug02a_occ_lbl 722 `"Blacksmiths, toolmakers, related workers"', add
label define ug02a_occ_lbl 723 `"Machinery mechanics and fitters, motor vehicles"', add
label define ug02a_occ_lbl 724 `"Electrical instrument mechanics, radio, etc."', add
label define ug02a_occ_lbl 725 `"Bicycle repairers"', add
label define ug02a_occ_lbl 731 `"Precision metal workers, repairers of lamps, watches, etc."', add
label define ug02a_occ_lbl 732 `"Potters, glass formers, related workers"', add
label define ug02a_occ_lbl 733 `"Handicraft workers in wood, textiles, etc."', add
label define ug02a_occ_lbl 734 `"Printing and related trade workers"', add
label define ug02a_occ_lbl 741 `"Foods and related product processing"', add
label define ug02a_occ_lbl 743 `"Textile and garment workers, inc. tailors"', add
label define ug02a_occ_lbl 744 `"Leather and hides trade workers, inc. shoe makers"', add
label define ug02a_occ_lbl 745 `"Other craftsmen n.e.c."', add
label define ug02a_occ_lbl 746 `"Distilling and selling local brew"', add
label define ug02a_occ_lbl 751 `"Wood and fiber trade workers"', add
label define ug02a_occ_lbl 811 `"Mining and mineral processing plant operators"', add
label define ug02a_occ_lbl 814 `"Wood processing plant operators"', add
label define ug02a_occ_lbl 816 `"Power generating plant operators (battery charging)"', add
label define ug02a_occ_lbl 821 `"Metal and mineral processing machine operators"', add
label define ug02a_occ_lbl 822 `"Chemical product machine operators (Oxygen Uganda)"', add
label define ug02a_occ_lbl 823 `"Rubber and plastics machine operators (Nile Plastics, Mukwano)"', add
label define ug02a_occ_lbl 824 `"Wood product machine operators (Nile Ply)"', add
label define ug02a_occ_lbl 825 `"Printing, binding, and related plant operators (Monitor New vision)"', add
label define ug02a_occ_lbl 826 `"Fiber preparing, weaving and sewing textile and leather products"', add
label define ug02a_occ_lbl 827 `"Food and related product processing machine operators (grain milling)"', add
label define ug02a_occ_lbl 829 `"Other stationary machine operators and assemblers"', add
label define ug02a_occ_lbl 831 `"Railway engineer drivers and related workers"', add
label define ug02a_occ_lbl 832 `"Motor vehicle drivers"', add
label define ug02a_occ_lbl 833 `"Agricultural, earthmoving, lifting, and mobile material handling equipment"', add
label define ug02a_occ_lbl 834 `"Ship's deck crews and related workers"', add
label define ug02a_occ_lbl 835 `"Boda drivers"', add
label define ug02a_occ_lbl 841 `"Foremen/supervisors of plant, machine operators and assemblers"', add
label define ug02a_occ_lbl 888 `"Soldiers"', add
label define ug02a_occ_lbl 911 `"Street vendors and related workers"', add
label define ug02a_occ_lbl 912 `"Shoe cleaning and other street elementary occupation services"', add
label define ug02a_occ_lbl 913 `"Domestic helpers (house girls, shamba boys)"', add
label define ug02a_occ_lbl 914 `"Building caretakers, window cleaners, vehicle washers"', add
label define ug02a_occ_lbl 915 `"Messengers, watchers, security workers, meter readers, porters, etc."', add
label define ug02a_occ_lbl 916 `"Garbage collectors, sweepers, and related laborers"', add
label define ug02a_occ_lbl 918 `"Other elementary service workers n.e.c. (Mortuary workers)"', add
label define ug02a_occ_lbl 921 `"Agricultural, fishery and related laborers"', add
label define ug02a_occ_lbl 931 `"Laborers in mining"', add
label define ug02a_occ_lbl 932 `"Construction laborers"', add
label define ug02a_occ_lbl 933 `"Manufacturing laborers"', add
label define ug02a_occ_lbl 934 `"Transport laborers"', add
label define ug02a_occ_lbl 935 `"General laborers"', add
label define ug02a_occ_lbl 936 `"Brick makers"', add
label define ug02a_occ_lbl 941 `"Foremen/supervisors of elementary occupation services (market master)"', add
label define ug02a_occ_lbl 980 `"Non-identifiable occupations"', add
label define ug02a_occ_lbl 997 `"Response suppressed"', add
label define ug02a_occ_lbl 999 `"NIU (not in universe)"', add
label values ug02a_occ ug02a_occ_lbl

label define ug02a_lit_lbl 1 `"Yes"'
label define ug02a_lit_lbl 2 `"No"', add
label define ug02a_lit_lbl 9 `"NIU (not in universe)"', add
label values ug02a_lit ug02a_lit_lbl

label define ug02a_marst_lbl 1 `"Never married"'
label define ug02a_marst_lbl 2 `"Currently married/cohabitating (monogamous)"', add
label define ug02a_marst_lbl 3 `"Currently married/cohabitating (polygamous)"', add
label define ug02a_marst_lbl 4 `"Widowed"', add
label define ug02a_marst_lbl 5 `"Divorced/separated"', add
label define ug02a_marst_lbl 9 `"NIU (not in universe)"', add
label values ug02a_marst ug02a_marst_lbl

label define ug02a_chbornm_lbl 00 `"0"'
label define ug02a_chbornm_lbl 01 `"1"', add
label define ug02a_chbornm_lbl 02 `"2"', add
label define ug02a_chbornm_lbl 03 `"3"', add
label define ug02a_chbornm_lbl 04 `"4"', add
label define ug02a_chbornm_lbl 05 `"5"', add
label define ug02a_chbornm_lbl 06 `"6"', add
label define ug02a_chbornm_lbl 07 `"7"', add
label define ug02a_chbornm_lbl 08 `"8"', add
label define ug02a_chbornm_lbl 09 `"9"', add
label define ug02a_chbornm_lbl 10 `"10"', add
label define ug02a_chbornm_lbl 11 `"11"', add
label define ug02a_chbornm_lbl 12 `"12"', add
label define ug02a_chbornm_lbl 13 `"13"', add
label define ug02a_chbornm_lbl 14 `"14+"', add
label define ug02a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values ug02a_chbornm ug02a_chbornm_lbl

label define ug02a_chbornf_lbl 00 `"0"'
label define ug02a_chbornf_lbl 01 `"1"', add
label define ug02a_chbornf_lbl 02 `"2"', add
label define ug02a_chbornf_lbl 03 `"3"', add
label define ug02a_chbornf_lbl 04 `"4"', add
label define ug02a_chbornf_lbl 05 `"5"', add
label define ug02a_chbornf_lbl 06 `"6"', add
label define ug02a_chbornf_lbl 07 `"7"', add
label define ug02a_chbornf_lbl 08 `"8"', add
label define ug02a_chbornf_lbl 09 `"9"', add
label define ug02a_chbornf_lbl 10 `"10"', add
label define ug02a_chbornf_lbl 11 `"11"', add
label define ug02a_chbornf_lbl 12 `"12"', add
label define ug02a_chbornf_lbl 13 `"13"', add
label define ug02a_chbornf_lbl 14 `"14+"', add
label define ug02a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values ug02a_chbornf ug02a_chbornf_lbl

label define ug02a_chhhm_lbl 00 `"0"'
label define ug02a_chhhm_lbl 01 `"1"', add
label define ug02a_chhhm_lbl 02 `"2"', add
label define ug02a_chhhm_lbl 03 `"3"', add
label define ug02a_chhhm_lbl 04 `"4"', add
label define ug02a_chhhm_lbl 05 `"5"', add
label define ug02a_chhhm_lbl 06 `"6"', add
label define ug02a_chhhm_lbl 07 `"7"', add
label define ug02a_chhhm_lbl 08 `"8"', add
label define ug02a_chhhm_lbl 09 `"9"', add
label define ug02a_chhhm_lbl 10 `"10+"', add
label define ug02a_chhhm_lbl 99 `"NIU (not in universe)"', add
label values ug02a_chhhm ug02a_chhhm_lbl

label define ug02a_chhhf_lbl 00 `"0"'
label define ug02a_chhhf_lbl 01 `"1"', add
label define ug02a_chhhf_lbl 02 `"2"', add
label define ug02a_chhhf_lbl 03 `"3"', add
label define ug02a_chhhf_lbl 04 `"4"', add
label define ug02a_chhhf_lbl 05 `"5"', add
label define ug02a_chhhf_lbl 06 `"6"', add
label define ug02a_chhhf_lbl 07 `"7"', add
label define ug02a_chhhf_lbl 08 `"8"', add
label define ug02a_chhhf_lbl 09 `"9"', add
label define ug02a_chhhf_lbl 10 `"10+"', add
label define ug02a_chhhf_lbl 99 `"NIU (not in universe)"', add
label values ug02a_chhhf ug02a_chhhf_lbl

label define ug02a_chawaym_lbl 00 `"0"'
label define ug02a_chawaym_lbl 01 `"1"', add
label define ug02a_chawaym_lbl 02 `"2"', add
label define ug02a_chawaym_lbl 03 `"3"', add
label define ug02a_chawaym_lbl 04 `"4"', add
label define ug02a_chawaym_lbl 05 `"5"', add
label define ug02a_chawaym_lbl 06 `"6"', add
label define ug02a_chawaym_lbl 07 `"7"', add
label define ug02a_chawaym_lbl 08 `"8"', add
label define ug02a_chawaym_lbl 09 `"9"', add
label define ug02a_chawaym_lbl 10 `"10+"', add
label define ug02a_chawaym_lbl 99 `"NIU (not in universe)"', add
label values ug02a_chawaym ug02a_chawaym_lbl

label define ug02a_chawayf_lbl 00 `"0"'
label define ug02a_chawayf_lbl 01 `"1"', add
label define ug02a_chawayf_lbl 02 `"2"', add
label define ug02a_chawayf_lbl 03 `"3"', add
label define ug02a_chawayf_lbl 04 `"4"', add
label define ug02a_chawayf_lbl 05 `"5"', add
label define ug02a_chawayf_lbl 06 `"6"', add
label define ug02a_chawayf_lbl 07 `"7"', add
label define ug02a_chawayf_lbl 08 `"8"', add
label define ug02a_chawayf_lbl 09 `"9"', add
label define ug02a_chawayf_lbl 10 `"10+"', add
label define ug02a_chawayf_lbl 99 `"NIU (not in universe)"', add
label values ug02a_chawayf ug02a_chawayf_lbl

label define ug02a_chdeadm_lbl 00 `"0"'
label define ug02a_chdeadm_lbl 01 `"1"', add
label define ug02a_chdeadm_lbl 02 `"2"', add
label define ug02a_chdeadm_lbl 03 `"3"', add
label define ug02a_chdeadm_lbl 04 `"4"', add
label define ug02a_chdeadm_lbl 05 `"5"', add
label define ug02a_chdeadm_lbl 06 `"6"', add
label define ug02a_chdeadm_lbl 07 `"7"', add
label define ug02a_chdeadm_lbl 08 `"8"', add
label define ug02a_chdeadm_lbl 09 `"9"', add
label define ug02a_chdeadm_lbl 10 `"10+"', add
label define ug02a_chdeadm_lbl 99 `"NIU (not in universe)"', add
label values ug02a_chdeadm ug02a_chdeadm_lbl

label define ug02a_chdeadf_lbl 00 `"0"'
label define ug02a_chdeadf_lbl 01 `"1"', add
label define ug02a_chdeadf_lbl 02 `"2"', add
label define ug02a_chdeadf_lbl 03 `"3"', add
label define ug02a_chdeadf_lbl 04 `"4"', add
label define ug02a_chdeadf_lbl 05 `"5"', add
label define ug02a_chdeadf_lbl 06 `"6"', add
label define ug02a_chdeadf_lbl 07 `"7"', add
label define ug02a_chdeadf_lbl 08 `"8"', add
label define ug02a_chdeadf_lbl 09 `"9"', add
label define ug02a_chdeadf_lbl 10 `"10+"', add
label define ug02a_chdeadf_lbl 99 `"NIU (not in universe)"', add
label values ug02a_chdeadf ug02a_chdeadf_lbl

label define ug02a_lstchmo_lbl 01 `"1"'
label define ug02a_lstchmo_lbl 02 `"2"', add
label define ug02a_lstchmo_lbl 03 `"3"', add
label define ug02a_lstchmo_lbl 04 `"4"', add
label define ug02a_lstchmo_lbl 05 `"5"', add
label define ug02a_lstchmo_lbl 06 `"6"', add
label define ug02a_lstchmo_lbl 07 `"7"', add
label define ug02a_lstchmo_lbl 08 `"8"', add
label define ug02a_lstchmo_lbl 09 `"9"', add
label define ug02a_lstchmo_lbl 10 `"10"', add
label define ug02a_lstchmo_lbl 11 `"11"', add
label define ug02a_lstchmo_lbl 12 `"12"', add
label define ug02a_lstchmo_lbl 99 `"NIU (not in universe)"', add
label values ug02a_lstchmo ug02a_lstchmo_lbl

label define ug02a_lstchyr_lbl 1962 `"1962 or earlier"'
label define ug02a_lstchyr_lbl 1963 `"1963"', add
label define ug02a_lstchyr_lbl 1964 `"1964"', add
label define ug02a_lstchyr_lbl 1965 `"1965"', add
label define ug02a_lstchyr_lbl 1966 `"1966"', add
label define ug02a_lstchyr_lbl 1967 `"1967"', add
label define ug02a_lstchyr_lbl 1968 `"1968"', add
label define ug02a_lstchyr_lbl 1969 `"1969"', add
label define ug02a_lstchyr_lbl 1970 `"1970"', add
label define ug02a_lstchyr_lbl 1971 `"1971"', add
label define ug02a_lstchyr_lbl 1972 `"1972"', add
label define ug02a_lstchyr_lbl 1973 `"1973"', add
label define ug02a_lstchyr_lbl 1974 `"1974"', add
label define ug02a_lstchyr_lbl 1975 `"1975"', add
label define ug02a_lstchyr_lbl 1976 `"1976"', add
label define ug02a_lstchyr_lbl 1977 `"1977"', add
label define ug02a_lstchyr_lbl 1978 `"1978"', add
label define ug02a_lstchyr_lbl 1979 `"1979"', add
label define ug02a_lstchyr_lbl 1980 `"1980"', add
label define ug02a_lstchyr_lbl 1981 `"1981"', add
label define ug02a_lstchyr_lbl 1982 `"1982"', add
label define ug02a_lstchyr_lbl 1983 `"1983"', add
label define ug02a_lstchyr_lbl 1984 `"1984"', add
label define ug02a_lstchyr_lbl 1985 `"1985"', add
label define ug02a_lstchyr_lbl 1986 `"1986"', add
label define ug02a_lstchyr_lbl 1987 `"1987"', add
label define ug02a_lstchyr_lbl 1988 `"1988"', add
label define ug02a_lstchyr_lbl 1989 `"1989"', add
label define ug02a_lstchyr_lbl 1990 `"1990"', add
label define ug02a_lstchyr_lbl 1991 `"1991"', add
label define ug02a_lstchyr_lbl 1992 `"1992"', add
label define ug02a_lstchyr_lbl 1993 `"1993"', add
label define ug02a_lstchyr_lbl 1994 `"1994"', add
label define ug02a_lstchyr_lbl 1995 `"1995"', add
label define ug02a_lstchyr_lbl 1996 `"1996"', add
label define ug02a_lstchyr_lbl 1997 `"1997"', add
label define ug02a_lstchyr_lbl 1998 `"1998"', add
label define ug02a_lstchyr_lbl 1999 `"1999"', add
label define ug02a_lstchyr_lbl 2000 `"2000"', add
label define ug02a_lstchyr_lbl 2001 `"2001"', add
label define ug02a_lstchyr_lbl 2002 `"2002"', add
label define ug02a_lstchyr_lbl 9999 `"NIU (not in universe)"', add
label values ug02a_lstchyr ug02a_lstchyr_lbl

label define ug02a_lstchsex_lbl 1 `"Male"'
label define ug02a_lstchsex_lbl 2 `"Female"', add
label define ug02a_lstchsex_lbl 9 `"NIU (not in universe)"', add
label values ug02a_lstchsex ug02a_lstchsex_lbl

label define ug02a_lstchliv_lbl 1 `"Yes"'
label define ug02a_lstchliv_lbl 2 `"No"', add
label define ug02a_lstchliv_lbl 9 `"NIU (not in universe)"', add
label values ug02a_lstchliv ug02a_lstchliv_lbl

label define ug02a_lstdage_lbl 00 `"0"'
label define ug02a_lstdage_lbl 01 `"1"', add
label define ug02a_lstdage_lbl 02 `"2"', add
label define ug02a_lstdage_lbl 03 `"3"', add
label define ug02a_lstdage_lbl 04 `"4"', add
label define ug02a_lstdage_lbl 05 `"5"', add
label define ug02a_lstdage_lbl 06 `"6"', add
label define ug02a_lstdage_lbl 07 `"7"', add
label define ug02a_lstdage_lbl 08 `"8"', add
label define ug02a_lstdage_lbl 09 `"9"', add
label define ug02a_lstdage_lbl 10 `"10"', add
label define ug02a_lstdage_lbl 11 `"11"', add
label define ug02a_lstdage_lbl 12 `"12"', add
label define ug02a_lstdage_lbl 13 `"13"', add
label define ug02a_lstdage_lbl 14 `"14"', add
label define ug02a_lstdage_lbl 15 `"15"', add
label define ug02a_lstdage_lbl 16 `"16"', add
label define ug02a_lstdage_lbl 17 `"17"', add
label define ug02a_lstdage_lbl 18 `"18"', add
label define ug02a_lstdage_lbl 19 `"19"', add
label define ug02a_lstdage_lbl 20 `"20"', add
label define ug02a_lstdage_lbl 21 `"21"', add
label define ug02a_lstdage_lbl 22 `"22"', add
label define ug02a_lstdage_lbl 23 `"23"', add
label define ug02a_lstdage_lbl 24 `"24"', add
label define ug02a_lstdage_lbl 25 `"25"', add
label define ug02a_lstdage_lbl 26 `"26"', add
label define ug02a_lstdage_lbl 27 `"27"', add
label define ug02a_lstdage_lbl 28 `"28"', add
label define ug02a_lstdage_lbl 29 `"29"', add
label define ug02a_lstdage_lbl 30 `"30"', add
label define ug02a_lstdage_lbl 31 `"31"', add
label define ug02a_lstdage_lbl 32 `"32"', add
label define ug02a_lstdage_lbl 33 `"33"', add
label define ug02a_lstdage_lbl 34 `"34"', add
label define ug02a_lstdage_lbl 35 `"35"', add
label define ug02a_lstdage_lbl 36 `"36"', add
label define ug02a_lstdage_lbl 37 `"37"', add
label define ug02a_lstdage_lbl 38 `"38"', add
label define ug02a_lstdage_lbl 39 `"39"', add
label define ug02a_lstdage_lbl 40 `"40"', add
label define ug02a_lstdage_lbl 41 `"41"', add
label define ug02a_lstdage_lbl 42 `"42"', add
label define ug02a_lstdage_lbl 43 `"43"', add
label define ug02a_lstdage_lbl 44 `"44"', add
label define ug02a_lstdage_lbl 45 `"45"', add
label define ug02a_lstdage_lbl 46 `"46"', add
label define ug02a_lstdage_lbl 47 `"47"', add
label define ug02a_lstdage_lbl 48 `"48"', add
label define ug02a_lstdage_lbl 49 `"49"', add
label define ug02a_lstdage_lbl 50 `"50"', add
label define ug02a_lstdage_lbl 51 `"51"', add
label define ug02a_lstdage_lbl 52 `"52"', add
label define ug02a_lstdage_lbl 53 `"53"', add
label define ug02a_lstdage_lbl 54 `"54"', add
label define ug02a_lstdage_lbl 56 `"56"', add
label define ug02a_lstdage_lbl 57 `"57"', add
label define ug02a_lstdage_lbl 58 `"58"', add
label define ug02a_lstdage_lbl 59 `"59"', add
label define ug02a_lstdage_lbl 60 `"60+"', add
label define ug02a_lstdage_lbl 99 `"NIU (not in universe)"', add
label values ug02a_lstdage ug02a_lstdage_lbl

label define ug02a_defacto_lbl 1 `"Part of the de facto population"'
label define ug02a_defacto_lbl 2 `"Not part of the de facto population"', add
label values ug02a_defacto ug02a_defacto_lbl

label define ug02a_qperid_lbl 0 `"No imputation"'
label define ug02a_qperid_lbl 1 `"Logical imputation"', add
label define ug02a_qperid_lbl 2 `"Hot deck imputation"', add
label values ug02a_qperid ug02a_qperid_lbl

label define ug02a_qrelate_lbl 0 `"No imputation"'
label define ug02a_qrelate_lbl 1 `"Logical imputation"', add
label define ug02a_qrelate_lbl 2 `"Hot deck imputation"', add
label values ug02a_qrelate ug02a_qrelate_lbl

label define ug02a_qsex_lbl 0 `"No imputation"'
label define ug02a_qsex_lbl 1 `"Logical imputation"', add
label define ug02a_qsex_lbl 2 `"Hot deck imputation"', add
label values ug02a_qsex ug02a_qsex_lbl

label define ug02a_qbirthda_lbl 0 `"No imputation"'
label define ug02a_qbirthda_lbl 1 `"Logical imputation"', add
label define ug02a_qbirthda_lbl 2 `"Hot deck imputation"', add
label values ug02a_qbirthda ug02a_qbirthda_lbl

label define ug02a_qbirthmo_lbl 0 `"No imputation"'
label define ug02a_qbirthmo_lbl 1 `"Logical imputation"', add
label define ug02a_qbirthmo_lbl 2 `"Hot deck imputation"', add
label values ug02a_qbirthmo ug02a_qbirthmo_lbl

label define ug02a_qbirthc_lbl 0 `"No imputation"'
label define ug02a_qbirthc_lbl 1 `"Logical imputation"', add
label define ug02a_qbirthc_lbl 2 `"Hot deck imputation"', add
label values ug02a_qbirthc ug02a_qbirthc_lbl

label define ug02a_qbirthyr_lbl 0 `"No imputation"'
label define ug02a_qbirthyr_lbl 1 `"Logical imputation"', add
label define ug02a_qbirthyr_lbl 2 `"Hot deck imputation"', add
label values ug02a_qbirthyr ug02a_qbirthyr_lbl

label define ug02a_qage_lbl 0 `"No imputation"'
label define ug02a_qage_lbl 1 `"Logical imputation"', add
label define ug02a_qage_lbl 2 `"Hot deck imputation"', add
label values ug02a_qage ug02a_qage_lbl

label define ug02a_qrelig_lbl 0 `"No imputation"'
label define ug02a_qrelig_lbl 1 `"Logical imputation"', add
label define ug02a_qrelig_lbl 2 `"Hot deck imputation"', add
label values ug02a_qrelig ug02a_qrelig_lbl

label define ug02a_qethnic_lbl 0 `"No imputation"'
label define ug02a_qethnic_lbl 1 `"Logical imputation"', add
label define ug02a_qethnic_lbl 2 `"Hot deck imputation"', add
label values ug02a_qethnic ug02a_qethnic_lbl

label define ug02a_qmothliv_lbl 0 `"No imputation"'
label define ug02a_qmothliv_lbl 1 `"Logical imputation"', add
label define ug02a_qmothliv_lbl 2 `"Hot deck imputation"', add
label values ug02a_qmothliv ug02a_qmothliv_lbl

label define ug02a_qfathliv_lbl 0 `"No imputation"'
label define ug02a_qfathliv_lbl 1 `"Logical imputation"', add
label define ug02a_qfathliv_lbl 2 `"Hot deck imputation"', add
label values ug02a_qfathliv ug02a_qfathliv_lbl

label define ug02a_qbpl_lbl 0 `"No imputation"'
label define ug02a_qbpl_lbl 1 `"Logical imputation"', add
label define ug02a_qbpl_lbl 2 `"Hot deck imputation"', add
label values ug02a_qbpl ug02a_qbpl_lbl

label define ug02a_qprevres_lbl 0 `"No imputation"'
label define ug02a_qprevres_lbl 1 `"Logical imputation"', add
label define ug02a_qprevres_lbl 2 `"Hot deck imputation"', add
label values ug02a_qprevres ug02a_qprevres_lbl

label define ug02a_qresdur_lbl 0 `"No imputation"'
label define ug02a_qresdur_lbl 1 `"Logical imputation"', add
label define ug02a_qresdur_lbl 2 `"Hot deck imputation"', add
label values ug02a_qresdur ug02a_qresdur_lbl

label define ug02a_qresdur_lbl 0 `"No imputation"'
label define ug02a_qresdur_lbl 1 `"Logical imputation"', add
label define ug02a_qresdur_lbl 2 `"Hot deck imputation"', add
label values ug02a_qresdur ug02a_qresdur_lbl

label define ug02a_qdisab1_lbl 0 `"No imputation"'
label define ug02a_qdisab1_lbl 1 `"Logical imputation"', add
label define ug02a_qdisab1_lbl 2 `"Hot deck imputation"', add
label values ug02a_qdisab1 ug02a_qdisab1_lbl

label define ug02a_qdisab2_lbl 0 `"No imputation"'
label define ug02a_qdisab2_lbl 1 `"Logical imputation"', add
label define ug02a_qdisab2_lbl 2 `"Hot deck imputation"', add
label values ug02a_qdisab2 ug02a_qdisab2_lbl

label define ug02a_qdiscau1_lbl 0 `"No imputation"'
label define ug02a_qdiscau1_lbl 1 `"Logical imputation"', add
label define ug02a_qdiscau1_lbl 2 `"Hot deck imputation"', add
label values ug02a_qdiscau1 ug02a_qdiscau1_lbl

label define ug02a_qdiscau2_lbl 0 `"No imputation"'
label define ug02a_qdiscau2_lbl 1 `"Logical imputation"', add
label define ug02a_qdiscau2_lbl 2 `"Hot deck imputation"', add
label values ug02a_qdiscau2 ug02a_qdiscau2_lbl

label define ug02a_qrehab1_lbl 0 `"No imputation"'
label define ug02a_qrehab1_lbl 1 `"Logical imputation"', add
label define ug02a_qrehab1_lbl 2 `"Hot deck imputation"', add
label values ug02a_qrehab1 ug02a_qrehab1_lbl

label define ug02a_qrehab2_lbl 0 `"No imputation"'
label define ug02a_qrehab2_lbl 1 `"Logical imputation"', add
label define ug02a_qrehab2_lbl 2 `"Hot deck imputation"', add
label values ug02a_qrehab2 ug02a_qrehab2_lbl

label define ug02a_qschool_lbl 0 `"No imputation"'
label define ug02a_qschool_lbl 1 `"Logical imputation"', add
label define ug02a_qschool_lbl 2 `"Hot deck imputation"', add
label values ug02a_qschool ug02a_qschool_lbl

label define ug02a_qedattan_lbl 0 `"No imputation"'
label define ug02a_qedattan_lbl 1 `"Logical imputation"', add
label define ug02a_qedattan_lbl 2 `"Hot deck imputation"', add
label values ug02a_qedattan ug02a_qedattan_lbl

label define ug02a_qempstat_lbl 0 `"No imputation"'
label define ug02a_qempstat_lbl 1 `"Logical imputation"', add
label define ug02a_qempstat_lbl 2 `"Hot deck imputation"', add
label values ug02a_qempstat ug02a_qempstat_lbl

label define ug02a_qind_lbl 0 `"No imputation"'
label define ug02a_qind_lbl 1 `"Logical imputation"', add
label define ug02a_qind_lbl 2 `"Hot deck imputation"', add
label values ug02a_qind ug02a_qind_lbl

label define ug02a_qocc_lbl 0 `"No imputation"'
label define ug02a_qocc_lbl 1 `"Logical imputation"', add
label define ug02a_qocc_lbl 2 `"Hot deck imputation"', add
label values ug02a_qocc ug02a_qocc_lbl

label define ug02a_qlit_lbl 0 `"No imputation"'
label define ug02a_qlit_lbl 1 `"Logical imputation"', add
label define ug02a_qlit_lbl 2 `"Hot deck imputation"', add
label values ug02a_qlit ug02a_qlit_lbl

label define ug02a_qmarst_lbl 0 `"No imputation"'
label define ug02a_qmarst_lbl 1 `"Logical imputation"', add
label define ug02a_qmarst_lbl 2 `"Hot deck imputation"', add
label values ug02a_qmarst ug02a_qmarst_lbl

label define ug02a_qchbornm_lbl 0 `"No imputation"'
label define ug02a_qchbornm_lbl 1 `"Logical imputation"', add
label define ug02a_qchbornm_lbl 2 `"Hot deck imputation"', add
label values ug02a_qchbornm ug02a_qchbornm_lbl

label define ug02a_qchbornf_lbl 0 `"No imputation"'
label define ug02a_qchbornf_lbl 1 `"Logical imputation"', add
label define ug02a_qchbornf_lbl 2 `"Hot deck imputation"', add
label values ug02a_qchbornf ug02a_qchbornf_lbl

label define ug02a_qchhhm_lbl 0 `"No imputation"'
label define ug02a_qchhhm_lbl 1 `"Logical imputation"', add
label define ug02a_qchhhm_lbl 2 `"Hot deck imputation"', add
label values ug02a_qchhhm ug02a_qchhhm_lbl

label define ug02a_qchhhf_lbl 0 `"No imputation"'
label define ug02a_qchhhf_lbl 1 `"Logical imputation"', add
label define ug02a_qchhhf_lbl 2 `"Hot deck imputation"', add
label values ug02a_qchhhf ug02a_qchhhf_lbl

label define ug02a_qchawaym_lbl 0 `"No imputation"'
label define ug02a_qchawaym_lbl 1 `"Logical imputation"', add
label define ug02a_qchawaym_lbl 2 `"Hot deck imputation"', add
label values ug02a_qchawaym ug02a_qchawaym_lbl

label define ug02a_qchawayf_lbl 0 `"No imputation"'
label define ug02a_qchawayf_lbl 1 `"Logical imputation"', add
label define ug02a_qchawayf_lbl 2 `"Hot deck imputation"', add
label values ug02a_qchawayf ug02a_qchawayf_lbl

label define ug02a_qchdeadm_lbl 0 `"No imputation"'
label define ug02a_qchdeadm_lbl 1 `"Logical imputation"', add
label define ug02a_qchdeadm_lbl 2 `"Hot deck imputation"', add
label values ug02a_qchdeadm ug02a_qchdeadm_lbl

label define ug02a_qchdeadf_lbl 0 `"No imputation"'
label define ug02a_qchdeadf_lbl 1 `"Logical imputation"', add
label define ug02a_qchdeadf_lbl 2 `"Hot deck imputation"', add
label values ug02a_qchdeadf ug02a_qchdeadf_lbl

label define ug02a_qlstchmo_lbl 0 `"No imputation"'
label define ug02a_qlstchmo_lbl 1 `"Logical imputation"', add
label define ug02a_qlstchmo_lbl 2 `"Hot deck imputation"', add
label values ug02a_qlstchmo ug02a_qlstchmo_lbl

label define ug02a_qlstc_lbl 0 `"No imputation"'
label define ug02a_qlstc_lbl 1 `"Logical imputation"', add
label define ug02a_qlstc_lbl 2 `"Hot deck imputation"', add
label values ug02a_qlstc ug02a_qlstc_lbl

label define ug02a_qlstchyr_lbl 0 `"No imputation"'
label define ug02a_qlstchyr_lbl 1 `"Logical imputation"', add
label define ug02a_qlstchyr_lbl 2 `"Hot deck imputation"', add
label values ug02a_qlstchyr ug02a_qlstchyr_lbl

label define ug02a_qlstchse_lbl 0 `"No imputation"'
label define ug02a_qlstchse_lbl 1 `"Logical imputation"', add
label define ug02a_qlstchse_lbl 2 `"Hot deck imputation"', add
label values ug02a_qlstchse ug02a_qlstchse_lbl

label define ug02a_qlstchli_lbl 0 `"No imputation"'
label define ug02a_qlstchli_lbl 1 `"Logical imputation"', add
label define ug02a_qlstchli_lbl 2 `"Hot deck imputation"', add
label values ug02a_qlstchli ug02a_qlstchli_lbl

label define ug02a_qlstage_lbl 0 `"No imputation"'
label define ug02a_qlstage_lbl 1 `"Logical imputation"', add
label define ug02a_qlstage_lbl 2 `"Hot deck imputation"', add
label values ug02a_qlstage ug02a_qlstage_lbl

label define ug02a_chborn_lbl 00 `"0"'
label define ug02a_chborn_lbl 01 `"1"', add
label define ug02a_chborn_lbl 02 `"2"', add
label define ug02a_chborn_lbl 03 `"3"', add
label define ug02a_chborn_lbl 04 `"4"', add
label define ug02a_chborn_lbl 05 `"5"', add
label define ug02a_chborn_lbl 06 `"6"', add
label define ug02a_chborn_lbl 07 `"7"', add
label define ug02a_chborn_lbl 08 `"8"', add
label define ug02a_chborn_lbl 09 `"9"', add
label define ug02a_chborn_lbl 10 `"10"', add
label define ug02a_chborn_lbl 11 `"11"', add
label define ug02a_chborn_lbl 12 `"12"', add
label define ug02a_chborn_lbl 13 `"13"', add
label define ug02a_chborn_lbl 14 `"14"', add
label define ug02a_chborn_lbl 15 `"15"', add
label define ug02a_chborn_lbl 16 `"16"', add
label define ug02a_chborn_lbl 17 `"17"', add
label define ug02a_chborn_lbl 18 `"18"', add
label define ug02a_chborn_lbl 19 `"19"', add
label define ug02a_chborn_lbl 99 `"NIU (not in universe)"', add
label values ug02a_chborn ug02a_chborn_lbl

label define ug02a_chhh_lbl 00 `"0"'
label define ug02a_chhh_lbl 01 `"1"', add
label define ug02a_chhh_lbl 02 `"2"', add
label define ug02a_chhh_lbl 03 `"3"', add
label define ug02a_chhh_lbl 04 `"4"', add
label define ug02a_chhh_lbl 05 `"5"', add
label define ug02a_chhh_lbl 06 `"6"', add
label define ug02a_chhh_lbl 07 `"7"', add
label define ug02a_chhh_lbl 08 `"8"', add
label define ug02a_chhh_lbl 09 `"9"', add
label define ug02a_chhh_lbl 10 `"10"', add
label define ug02a_chhh_lbl 11 `"11"', add
label define ug02a_chhh_lbl 12 `"12"', add
label define ug02a_chhh_lbl 13 `"13"', add
label define ug02a_chhh_lbl 14 `"14"', add
label define ug02a_chhh_lbl 15 `"15+"', add
label define ug02a_chhh_lbl 99 `"NIU (not in universe)"', add
label values ug02a_chhh ug02a_chhh_lbl

label define ug02a_chaway_lbl 00 `"0"'
label define ug02a_chaway_lbl 01 `"1"', add
label define ug02a_chaway_lbl 02 `"2"', add
label define ug02a_chaway_lbl 03 `"3"', add
label define ug02a_chaway_lbl 04 `"4"', add
label define ug02a_chaway_lbl 05 `"5"', add
label define ug02a_chaway_lbl 06 `"6"', add
label define ug02a_chaway_lbl 07 `"7"', add
label define ug02a_chaway_lbl 08 `"8"', add
label define ug02a_chaway_lbl 09 `"9"', add
label define ug02a_chaway_lbl 10 `"10"', add
label define ug02a_chaway_lbl 11 `"11"', add
label define ug02a_chaway_lbl 12 `"12"', add
label define ug02a_chaway_lbl 13 `"13+"', add
label define ug02a_chaway_lbl 99 `"NIU (not in universe)"', add
label values ug02a_chaway ug02a_chaway_lbl

label define ug02a_chdead_lbl 00 `"0"'
label define ug02a_chdead_lbl 01 `"1"', add
label define ug02a_chdead_lbl 02 `"2"', add
label define ug02a_chdead_lbl 03 `"3"', add
label define ug02a_chdead_lbl 04 `"4"', add
label define ug02a_chdead_lbl 05 `"5"', add
label define ug02a_chdead_lbl 06 `"6"', add
label define ug02a_chdead_lbl 07 `"7"', add
label define ug02a_chdead_lbl 08 `"8"', add
label define ug02a_chdead_lbl 09 `"9"', add
label define ug02a_chdead_lbl 10 `"10"', add
label define ug02a_chdead_lbl 11 `"11"', add
label define ug02a_chdead_lbl 12 `"12+"', add
label define ug02a_chdead_lbl 99 `"NIU (not in universe)"', add
label values ug02a_chdead ug02a_chdead_lbl

label define ug02a_mothlivu_lbl 1 `"Yes"'
label define ug02a_mothlivu_lbl 2 `"No"', add
label define ug02a_mothlivu_lbl 3 `"Don't know"', add
label define ug02a_mothlivu_lbl 9 `"NIU (not in universe)"', add
label values ug02a_mothlivu ug02a_mothlivu_lbl

label define ug02a_fathlivu_lbl 1 `"Yes"'
label define ug02a_fathlivu_lbl 2 `"No"', add
label define ug02a_fathlivu_lbl 3 `"Don't know"', add
label define ug02a_fathlivu_lbl 9 `"NIU (not in universe)"', add
label values ug02a_fathlivu ug02a_fathlivu_lbl

label define ug02a_qmothlv_lbl 0 `"No imputation"'
label define ug02a_qmothlv_lbl 1 `"Logical imputation"', add
label define ug02a_qmothlv_lbl 2 `"Hot deck imputation"', add
label values ug02a_qmothlv ug02a_qmothlv_lbl

label define ug02a_qfathlv_lbl 0 `"No imputation"'
label define ug02a_qfathlv_lbl 1 `"Logical imputation"', add
label define ug02a_qfathlv_lbl 2 `"Hot deck imputation"', add
label values ug02a_qfathlv ug02a_qfathlv_lbl

label define ug02a_bplsame_lbl 1 `"Same district"'
label define ug02a_bplsame_lbl 2 `"Same region but different district"', add
label define ug02a_bplsame_lbl 3 `"Other region"', add
label define ug02a_bplsame_lbl 4 `"Neighbouring country"', add
label define ug02a_bplsame_lbl 5 `"Other country"', add
label values ug02a_bplsame ug02a_bplsame_lbl


