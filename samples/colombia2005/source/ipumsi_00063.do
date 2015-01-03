* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    co05a_dwnum     22-28    ///
  byte    co05a_hhnum     29-30    ///
  byte    co05a_hhn       31-32    ///
  byte    co05a_pernd     33-34    ///
  byte    co05a_pern      35-36    ///
  byte    co05a_fbig      37-37    ///
  byte    co05a_donated   38-38    ///
  byte    co05a_d_num     39-40    ///
  byte    co05a_dept      41-42    ///
  byte    co05a_geoc      43-43    ///
  byte    co05a_dwtype    44-44    ///
  byte    co05a_wall      45-45    ///
  byte    co05a_floor     46-46    ///
  byte    co05a_elect     47-47    ///
  byte    co05a_sewer     48-48    ///
  byte    co05a_runwat    49-49    ///
  byte    co05a_natgas    50-50    ///
  byte    co05a_phone     51-51    ///
  byte    co05a_toilet    52-52    ///
  byte    co05a_water     53-53    ///
  byte    co05a_roomsba   54-55    ///
  byte    co05a_kitchex   56-56    ///
  float   co05a_wtdwb     57-68    ///
  float   co05a_wtdwc     69-81    ///
  byte    co05a_tenure    82-82    ///
  byte    co05a_owner     83-83    ///
  byte    co05a_rooms     84-85    ///
  byte    co05a_roomsbd   86-87    ///
  byte    co05a_bathex    88-88    ///
  byte    co05a_watsrc    89-89    ///
  byte    co05a_cookpl    90-90    ///
  byte    co05a_fuelck    91-91    ///
  byte    co05a_refrig    92-92    ///
  byte    co05a_washer    93-93    ///
  byte    co05a_stereo    94-94    ///
  byte    co05a_watheat   95-95    ///
  byte    co05a_shower    96-96    ///
  byte    co05a_blender   97-97    ///
  byte    co05a_oven      98-98    ///
  byte    co05a_aircond   99-99    ///
  byte    co05a_fan       100-100  ///
  byte    co05a_tvc       101-101  ///
  byte    co05a_compute   102-102  ///
  byte    co05a_microw    103-103  ///
  byte    co05a_bike      104-105  ///
  byte    co05a_motorcy   106-106  ///
  byte    co05a_boat      107-107  ///
  byte    co05a_auto      108-108  ///
  byte    co05a_commorg   109-109  ///
  byte    co05a_commorg   110-110  ///
  byte    co05a_incbas    111-111  ///
  byte    co05a_incad     112-113  ///
  byte    co05a_pa        114-114  ///
  byte    co05a_patot     115-116  ///
  byte    co05a_pave05    117-117  ///
  byte    co05a_pave00    118-118  ///
  byte    co05a_pave96    119-119  ///
  byte    co05a_paus05    120-120  ///
  byte    co05a_paus00    121-121  ///
  byte    co05a_paus96    122-122  ///
  byte    co05a_paes05    123-123  ///
  byte    co05a_paes96    124-124  ///
  byte    co05a_pamx05    125-125  ///
  byte    co05a_pamx00    126-126  ///
  byte    co05a_pamx96    127-127  ///
  byte    co05a_pacr05    128-128  ///
  byte    co05a_pacr00    129-129  ///
  byte    co05a_pacr96    130-130  ///
  byte    co05a_paca05    131-131  ///
  byte    co05a_paca00    132-132  ///
  byte    co05a_paca96    133-133  ///
  byte    co05a_paat05    134-134  ///
  byte    co05a_paat00    135-135  ///
  byte    co05a_paat96    136-136  ///
  byte    co05a_paec05    137-137  ///
  byte    co05a_paec00    138-138  ///
  byte    co05a_paec96    139-139  ///
  byte    co05a_papa05    140-140  ///
  byte    co05a_papa00    141-141  ///
  byte    co05a_papa96    142-142  ///
  byte    co05a_pape05    143-143  ///
  byte    co05a_pabo05    144-144  ///
  byte    co05a_paot05    145-145  ///
  byte    co05a_paot00    146-146  ///
  byte    co05a_paot96    147-147  ///
  byte    co05a_perno     148-149  ///
  byte    co05a_diedn     150-150  ///
  byte    co05a_econact   151-151  ///
  float   co05a_wthhb     152-163  ///
  float   co05a_wthhc     164-176  ///
  int     pernum          177-179  ///
  float   wtper           180-187  ///
  byte    co05a_pernum    188-189  ///
  byte    co05a_sex       190-190  ///
  byte    co05a_bmon      191-192  ///
  int     co05a_byr       193-196  ///
  byte    co05a_knowbd    197-197  ///
  int     co05a_age       198-200  ///
  byte    co05a_relate    201-202  ///
  byte    co05a_bplp      203-203  ///
  int     co05a_bpld      204-206  ///
  int     co05a_bplc      207-209  ///
  int     co05a_arrivyr   210-213  ///
  byte    co05a_bplpm     214-214  ///
  byte    co05a_bpldm     215-216  ///
  int     co05a_bplmc     217-219  ///
  byte    co05a_res5p     220-220  ///
  int     co05a_res5d     221-223  ///
  int     co05a_res5c     224-226  ///
  int     co05a_res5y     227-230  ///
  byte    co05a_geocp     231-231  ///
  byte    co05a_mv5       232-232  ///
  int     co05a_mvyr      233-236  ///
  byte    co05a_mvp       237-237  ///
  int     co05a_mvd       238-240  ///
  byte    co05a_mvcl      241-241  ///
  int     co05a_mvc       242-244  ///
  byte    co05a_mvwhy     245-245  ///
  byte    co05a_ethnic    246-246  ///
  byte    co05a_indig     247-248  ///
  byte    co05a_langind   249-249  ///
  byte    co05a_nofood    250-250  ///
  byte    co05a_hcare     251-251  ///
  byte    co05a_ill       252-252  ///
  byte    co05a_md        253-253  ///
  byte    co05a_mdcar     254-254  ///
  byte    co05a_mdcars    255-255  ///
  byte    co05a_mdorg     256-256  ///
  byte    co05a_mdneu     257-257  ///
  byte    co05a_mdneus    258-258  ///
  byte    co05a_mdtra     259-259  ///
  byte    co05a_mdtras    260-260  ///
  byte    co05a_mdcon     261-261  ///
  byte    co05a_mdcons    262-262  ///
  byte    co05a_mdjoi     263-263  ///
  byte    co05a_mdjois    264-264  ///
  byte    co05a_mddia     265-265  ///
  byte    co05a_mddias    266-266  ///
  byte    co05a_mdbur     267-267  ///
  byte    co05a_mdburs    268-268  ///
  byte    co05a_mdaids    269-269  ///
  byte    co05a_mdche     270-270  ///
  byte    co05a_mdches    271-271  ///
  byte    co05a_mdint     272-272  ///
  byte    co05a_mdints    273-273  ///
  byte    co05a_limwal    274-274  ///
  byte    co05a_limvis    275-275  ///
  byte    co05a_limhea    276-276  ///
  byte    co05a_limspe    277-277  ///
  byte    co05a_limlea    278-278  ///
  byte    co05a_limsoc    279-279  ///
  byte    co05a_limbat    280-280  ///
  byte    co05a_limoth    281-281  ///
  byte    co05a_limper    282-283  ///
  byte    co05a_limperc   284-285  ///
  byte    co05a_lit       286-286  ///
  byte    co05a_books     287-288  ///
  byte    co05a_sch       289-289  ///
  byte    co05a_schpub    290-290  ///
  byte    co05a_schcom    291-291  ///
  byte    co05a_schcos    292-292  ///
  byte    co05a_schwor    293-293  ///
  byte    co05a_schspa    294-294  ///
  byte    co05a_schdis    295-295  ///
  byte    co05a_schill    296-296  ///
  byte    co05a_schpre    297-297  ///
  byte    co05a_schoth    298-298  ///
  byte    co05a_schloc    299-299  ///
  int     co05a_schlocd   300-302  ///
  byte    co05a_edlev     303-304  ///
  byte    co05a_grade     305-305  ///
  int     co05a_edattan   306-308  ///
  byte    co05a_edattan1  309-310  ///
  byte    co05a_pc        311-311  ///
  byte    co05a_pcw       312-312  ///
  byte    co05a_pcown     313-313  ///
  byte    co05a_pctra     314-314  ///
  byte    co05a_pcent     315-315  ///
  byte    co05a_pccom     316-316  ///
  byte    co05a_pcoth     317-317  ///
  byte    co05a_ind       318-319  ///
  byte    co05a_classwk   320-320  ///
  byte    co05a_wklocp    321-321  ///
  int     co05a_wklocd    322-324  ///
  byte    co05a_pension   325-325  ///
  byte    co05a_wkfam     326-326  ///
  byte    co05a_wksal     327-327  ///
  byte    co05a_wkman     328-328  ///
  byte    co05a_wkani     329-329  ///
  byte    co05a_wkcho     330-330  ///
  byte    co05a_wkoth     331-331  ///
  byte    co05a_marst     332-332  ///
  byte    co05a_langsp    333-333  ///
  byte    co05a_langen    334-334  ///
  byte    co05a_langfr    335-335  ///
  byte    co05a_langit    336-336  ///
  byte    co05a_langge    337-337  ///
  byte    co05a_langot    338-338  ///
  byte    co05a_chborny   339-339  ///
  byte    co05a_chborn    340-341  ///
  byte    co05a_chbornm   342-343  ///
  byte    co05a_chbornf   344-345  ///
  byte    co05a_chsurv    346-347  ///
  byte    co05a_chsurvm   348-349  ///
  byte    co05a_chsurvf   350-351  ///
  byte    co05a_chsurvk   352-352  ///
  byte    co05a_lastkyr   353-353  ///
  byte    co05a_lastkmo   354-355  ///
  int     co05a_firkyr    356-359  ///
  float   co05a_wtperb    360-372  ///
  float   co05a_wtperc    373-385  ///
  using `"ipumsi_00063.dat"'

replace co05a_wtdwb    = co05a_wtdwb    / 1000000000
replace co05a_wtdwc    = co05a_wtdwc    / 10000000000
replace co05a_wthhb    = co05a_wthhb    / 1000000000
replace co05a_wthhc    = co05a_wthhc    / 10000000000
replace wtper          = wtper          / 100
replace co05a_wtperb   = co05a_wtperb   / 10000000000
replace co05a_wtperc   = co05a_wtperc   / 10000000000

format serial         %10.0f
format co05a_wtdwb    %12.9f
format co05a_wtdwc    %13.10f
format co05a_wthhb    %12.9f
format co05a_wthhc    %13.10f
format wtper          %8.2f
format co05a_wtperb   %13.10f
format co05a_wtperc   %13.10f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var co05a_dwnum    `"Dwelling number"'
label var co05a_hhnum    `"Household number (within dwelling)"'
label var co05a_hhn      `"Number of households in dwelling"'
label var co05a_pernd    `"Number of persons in dwelling"'
label var co05a_pern     `"Number of persons in household"'
label var co05a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var co05a_donated  `"Donated dwelling"'
label var co05a_d_num    `"Donation strata: strata number"'
label var co05a_dept     `"Department"'
label var co05a_geoc     `"Class"'
label var co05a_dwtype   `"Type of dwelling"'
label var co05a_wall     `"Wall material"'
label var co05a_floor    `"Floor materials"'
label var co05a_elect    `"Eletrical energy"'
label var co05a_sewer    `"Sewage drains"'
label var co05a_runwat   `"Running water"'
label var co05a_natgas   `"Natural gas"'
label var co05a_phone    `"Telephone"'
label var co05a_toilet   `"Type of sanitary service"'
label var co05a_water    `"Location of water service"'
label var co05a_roomsba  `"Number of bathrooms"'
label var co05a_kitchex  `"Exclusive area for cooking"'
label var co05a_wtdwb    `"Expansion factor for the basic dwelling"'
label var co05a_wtdwc    `"Expansion factor for the calibrated dwelling"'
label var co05a_tenure   `"Tenure status of the dwelling"'
label var co05a_owner    `"Dwelling totally paid for"'
label var co05a_rooms    `"Number of rooms in the household"'
label var co05a_roomsbd  `"Number of rooms for sleeping"'
label var co05a_bathex   `"Use of sanitary services"'
label var co05a_watsrc   `"Source of water for cooking"'
label var co05a_cookpl   `"Place for cooking"'
label var co05a_fuelck   `"Fuel used for cooking"'
label var co05a_refrig   `"Refrigerator"'
label var co05a_washer   `"Washing machine"'
label var co05a_stereo   `"Sound equipment/stereo"'
label var co05a_watheat  `"Water heater"'
label var co05a_shower   `"Electric shower"'
label var co05a_blender  `"Blender"'
label var co05a_oven     `"Electric or gas oven"'
label var co05a_aircond  `"Air conditioning appliances"'
label var co05a_fan      `"Fan"'
label var co05a_tvc      `"Color television"'
label var co05a_compute  `"Computer"'
label var co05a_microw   `"Microwave oven"'
label var co05a_bike     `"Number of bicycles"'
label var co05a_motorcy  `"Number of motorcycles"'
label var co05a_boat     `"Number of ships, sailboats, boats"'
label var co05a_auto     `"Number of automobiles (car)"'
label var co05a_commorg  `"Participates in a community organization"'
label var co05a_commorg  `"Participates in a community organization"'
label var co05a_incbas   `"Income enough for basic expenses"'
label var co05a_incad    `"Adequate income for the household (in pesos)"'
label var co05a_pa       `"Persons abroad"'
label var co05a_patot    `"Total persons abroad"'
label var co05a_pave05   `"Total persons left for Venezuela between 2001 and 2005"'
label var co05a_pave00   `"Total persons left for Venezuela between 1996 and 2000"'
label var co05a_pave96   `"Total persons left for Venezuela before 1996"'
label var co05a_paus05   `"Total persons left for United states between 2001 and 2005"'
label var co05a_paus00   `"Total persons left for United States between 1996 and 2000"'
label var co05a_paus96   `"Total persons left for United States before 1996"'
label var co05a_paes05   `"Total persons left for Spain between 2001 and 2005"'
label var co05a_paes96   `"Total persons left for Spain before 1996"'
label var co05a_pamx05   `"Total persons left for Mexico between 2001 and 2005"'
label var co05a_pamx00   `"Total persons left for Mexico between1996and 2000"'
label var co05a_pamx96   `"Total persons left for Mexico before 1996"'
label var co05a_pacr05   `"Total persons left for Costa Rica between 2001 and 2005"'
label var co05a_pacr00   `"Total persons left for Costa Rica between 1996 and 2000"'
label var co05a_pacr96   `"Total persons left for Costa Rica before 1996"'
label var co05a_paca05   `"Total persons left for Canada between 2001 and 2005"'
label var co05a_paca00   `"Total persons left for Canada between 1996 and 2000"'
label var co05a_paca96   `"Total persons left for Canada before 1996"'
label var co05a_paat05   `"Total persons left for Australia between 2001 and 2005"'
label var co05a_paat00   `"Total persons left for Australia between 1996 and 2000"'
label var co05a_paat96   `"Total persons left for Australia before 1996"'
label var co05a_paec05   `"Total persons left for Ecuador between 2001 and 2005"'
label var co05a_paec00   `"Total persons left for Ecuador between 1996 and 2000"'
label var co05a_paec96   `"Total persons left for Ecuador before 1996"'
label var co05a_papa05   `"Total persons left for Panama between 2001 and 2005"'
label var co05a_papa00   `"Total persons left for Panama between 1996 and 2000"'
label var co05a_papa96   `"Total persons left for Panama before 1996"'
label var co05a_pape05   `"Total persons left for Peru between 2001 and 2005"'
label var co05a_pabo05   `"Total persons left for Bolivia between 2001 and 2005"'
label var co05a_paot05   `"Total persons left for other countries not mentioned above between 2001 and 2005"'
label var co05a_paot00   `"Total persons left for other countries not mentioned above between 1996 and 2000"'
label var co05a_paot96   `"Total persons left for other countries not mentioned above before 1996"'
label var co05a_perno    `"Total persons in household"'
label var co05a_diedn    `"Number of persons who died"'
label var co05a_econact  `"Economic activity in the household"'
label var co05a_wthhb    `"Basic expansion factor of the household"'
label var co05a_wthhc    `"Calibrated expansion factor of the household"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var co05a_pernum   `"Person number (within household)"'
label var co05a_sex      `"Sex"'
label var co05a_bmon     `"Month of birth"'
label var co05a_byr      `"Year of birth"'
label var co05a_knowbd   `"Know date of birth"'
label var co05a_age      `"Age"'
label var co05a_relate   `"Relationship to the head of household"'
label var co05a_bplp     `"Place of birth"'
label var co05a_bpld     `"Department of birth"'
label var co05a_bplc     `"Country of birth"'
label var co05a_arrivyr  `"Year of arrival in the country"'
label var co05a_bplpm    `"Place of mother's residence at the time of his/her birth"'
label var co05a_bpldm    `"Department of mother's residence at the time of his/her birth"'
label var co05a_bplmc    `"Country where mother lived at the time of his/her birth"'
label var co05a_res5p    `"Place of residence five years ago"'
label var co05a_res5d    `"Department of residence five years ago"'
label var co05a_res5c    `"Country of residence five years ago"'
label var co05a_res5y    `"Year of arrival in the country in last five years"'
label var co05a_geocp    `"Type of place within municipality"'
label var co05a_mv5      `"Change of residence in past five years"'
label var co05a_mvyr     `"Year of change of residence in last five years"'
label var co05a_mvp      `"Municipality of different residence in last 5 years"'
label var co05a_mvd      `"Department of different residence in last 5 years"'
label var co05a_mvcl     `"Class within municipality of previous residence at the time of the change of res"'
label var co05a_mvc      `"Country of different residence in last five years"'
label var co05a_mvwhy    `"Cause of change of residence in last five years"'
label var co05a_ethnic   `"Ethnic identity"'
label var co05a_indig    `"Indigenous tribe/group"'
label var co05a_langind  `"Speaks the language of her/his tribe group"'
label var co05a_nofood   `"Had days of no food due to lack of money"'
label var co05a_hcare    `"Type of health care"'
label var co05a_ill      `"Was ill in the past year"'
label var co05a_md       `"Place where he/she sought medical services"'
label var co05a_mdcar    `"Cardiac surgery in the past five years"'
label var co05a_mdcars   `"Cardiac surgery provided by General Social Security System"'
label var co05a_mdorg    `"Organ transplant past five years"'
label var co05a_mdneu    `"Neurosurgery in the past five years"'
label var co05a_mdneus   `"Neurosurgery provided by General Social Security System"'
label var co05a_mdtra    `"Medical treatment for Major trauma in the last five years"'
label var co05a_mdtras   `"Medical treatment and surgery for major trauma provided by General Social Securi"'
label var co05a_mdcon    `"Surgical treatment for congenital illness"'
label var co05a_mdcons   `"Surgical treatment for congenital illness provided by General Social Security Sy"'
label var co05a_mdjoi    `"Joint replacement"'
label var co05a_mdjois   `"Joint replacement provided by General Social Security System"'
label var co05a_mddia    `"Dialysis for chronic insufficiency"'
label var co05a_mddias   `"Dialysis for chronic insufficiency provided by General Social Security System"'
label var co05a_mdbur    `"Therapy for serious burns"'
label var co05a_mdburs   `"Therapy for serious burns provided by General Social Security System"'
label var co05a_mdaids   `"Treatment for HIV/AIDS provided by General Social Security System"'
label var co05a_mdche    `"Chemotherapy for cancer"'
label var co05a_mdches   `"Chemotherapy for cancer provided by General Social Security System"'
label var co05a_mdint    `"Intensive care"'
label var co05a_mdints   `"Intensive care provided by General Social Security System"'
label var co05a_limwal   `"Permanent limitation for walking"'
label var co05a_limvis   `"Permanent limitation for vision"'
label var co05a_limhea   `"Permanent limitation for hearing"'
label var co05a_limspe   `"Permanent limitation for speech"'
label var co05a_limlea   `"Permanent limitation for learning"'
label var co05a_limsoc   `"Permanent limitation for socialization"'
label var co05a_limbat   `"Permanent limitation for bathing, dressing and feeding oneself"'
label var co05a_limoth   `"Other type of permanent limitation"'
label var co05a_limper   `"Principal permanent limitation"'
label var co05a_limperc  `"Cause of permanent limitation"'
label var co05a_lit      `"Knows how to read and write"'
label var co05a_books    `"Number of books that he/she read in the past year"'
label var co05a_sch      `"Current attendance at some type of educational institution"'
label var co05a_schpub   `"Currently attends a public school"'
label var co05a_schcom   `"Reason for not attending school: completed his/her studies"'
label var co05a_schcos   `"Reason for not attending school: high costs of education"'
label var co05a_schwor   `"Reason for not attending school: need to work"'
label var co05a_schspa   `"Reason for not attending school: lack of enrollment space"'
label var co05a_schdis   `"Reason for not attending school: distance from educational establishment"'
label var co05a_schill   `"Reason for not attending school: illness"'
label var co05a_schpre   `"Reason for not attending school: pregnancy"'
label var co05a_schoth   `"Reason for not attending school: other"'
label var co05a_schloc   `"Location of educational institution"'
label var co05a_schlocd  `"Department of educational institution"'
label var co05a_edlev    `"Level of studies completed"'
label var co05a_grade    `"Grade completed"'
label var co05a_edattan  `"Level of studies and grades completed"'
label var co05a_edattan1 `"Level of studies and grades completed 1"'
label var co05a_pc       `"Computer use"'
label var co05a_pcw      `"Used a PC last week"'
label var co05a_pcown    `"Used a PC last week to do his/her own tasks"'
label var co05a_pctra    `"Used a PC last week to make transactions"'
label var co05a_pcent    `"Used a PC last week for entertainment"'
label var co05a_pccom    `"Used a PC last week to communicate"'
label var co05a_pcoth    `"Used a PC last week for other activities"'
label var co05a_ind      `"Industry (2-digit)"'
label var co05a_classwk  `"Type of work"'
label var co05a_wklocp   `"Location of place where he/she worked"'
label var co05a_wklocd   `"Department where he/she worked"'
label var co05a_pension  `"Affiliation to a pension fund"'
label var co05a_wkfam    `"Worked complementarily for a family business"'
label var co05a_wksal    `"Worked complementarily for sale of products on his/her own account"'
label var co05a_wkman    `"Worked complementarily for manufacture of products to sell"'
label var co05a_wkani    `"Worked complementarily in the fields or animal breeding"'
label var co05a_wkcho    `"Worked complementarily for household chores"'
label var co05a_wkoth    `"Worked complementarily for other type of activity"'
label var co05a_marst    `"Marital status"'
label var co05a_langsp   `"Speaks Spanish"'
label var co05a_langen   `"Speaks English"'
label var co05a_langfr   `"Speaks French"'
label var co05a_langit   `"Speaks Italian"'
label var co05a_langge   `"Speaks German"'
label var co05a_langot   `"Speaks another language"'
label var co05a_chborny  `"Had children born alive"'
label var co05a_chborn   `"Number of children born alive"'
label var co05a_chbornm  `"Number of boys born alive"'
label var co05a_chbornf  `"Number of females born alive"'
label var co05a_chsurv   `"Number of children currently alive"'
label var co05a_chsurvm  `"Number of males currently alive"'
label var co05a_chsurvf  `"Number of females currently alive"'
label var co05a_chsurvk  `"Know whether she has children who are currently alive"'
label var co05a_lastkyr  `"Year the last child was born alive"'
label var co05a_lastkmo  `"Month the last child was born alive"'
label var co05a_firkyr   `"Year that the first child was born alive"'
label var co05a_wtperb   `"Basic person expansion factor"'
label var co05a_wtperc   `"Calibrated person expansion factor"'

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

label define co05a_hhnum_lbl 01 `"1"'
label define co05a_hhnum_lbl 02 `"2"', add
label define co05a_hhnum_lbl 03 `"3"', add
label define co05a_hhnum_lbl 04 `"4"', add
label define co05a_hhnum_lbl 05 `"5"', add
label define co05a_hhnum_lbl 06 `"6"', add
label define co05a_hhnum_lbl 07 `"7"', add
label define co05a_hhnum_lbl 08 `"8"', add
label define co05a_hhnum_lbl 09 `"9"', add
label define co05a_hhnum_lbl 10 `"10"', add
label define co05a_hhnum_lbl 11 `"11"', add
label define co05a_hhnum_lbl 12 `"12"', add
label define co05a_hhnum_lbl 13 `"13"', add
label define co05a_hhnum_lbl 14 `"14"', add
label define co05a_hhnum_lbl 15 `"15"', add
label define co05a_hhnum_lbl 16 `"16"', add
label define co05a_hhnum_lbl 17 `"17"', add
label define co05a_hhnum_lbl 18 `"18"', add
label define co05a_hhnum_lbl 19 `"19"', add
label define co05a_hhnum_lbl 20 `"20"', add
label values co05a_hhnum co05a_hhnum_lbl

label define co05a_hhn_lbl 01 `"1"'
label define co05a_hhn_lbl 02 `"2"', add
label define co05a_hhn_lbl 03 `"3"', add
label define co05a_hhn_lbl 04 `"4"', add
label define co05a_hhn_lbl 05 `"5"', add
label define co05a_hhn_lbl 06 `"6"', add
label define co05a_hhn_lbl 07 `"7"', add
label define co05a_hhn_lbl 08 `"8"', add
label define co05a_hhn_lbl 09 `"9"', add
label define co05a_hhn_lbl 10 `"10"', add
label define co05a_hhn_lbl 11 `"11"', add
label define co05a_hhn_lbl 14 `"14"', add
label define co05a_hhn_lbl 15 `"15"', add
label define co05a_hhn_lbl 20 `"20"', add
label values co05a_hhn co05a_hhn_lbl

label define co05a_pernd_lbl 01 `"1"'
label define co05a_pernd_lbl 02 `"2"', add
label define co05a_pernd_lbl 03 `"3"', add
label define co05a_pernd_lbl 04 `"4"', add
label define co05a_pernd_lbl 05 `"5"', add
label define co05a_pernd_lbl 06 `"6"', add
label define co05a_pernd_lbl 07 `"7"', add
label define co05a_pernd_lbl 08 `"8"', add
label define co05a_pernd_lbl 09 `"9"', add
label define co05a_pernd_lbl 10 `"10"', add
label define co05a_pernd_lbl 11 `"11"', add
label define co05a_pernd_lbl 12 `"12"', add
label define co05a_pernd_lbl 13 `"13"', add
label define co05a_pernd_lbl 14 `"14"', add
label define co05a_pernd_lbl 15 `"15"', add
label define co05a_pernd_lbl 16 `"16"', add
label define co05a_pernd_lbl 17 `"17"', add
label define co05a_pernd_lbl 18 `"18"', add
label define co05a_pernd_lbl 19 `"19"', add
label define co05a_pernd_lbl 20 `"20"', add
label define co05a_pernd_lbl 21 `"21"', add
label define co05a_pernd_lbl 22 `"22"', add
label define co05a_pernd_lbl 24 `"24"', add
label define co05a_pernd_lbl 25 `"25"', add
label define co05a_pernd_lbl 23 `"23"', add
label define co05a_pernd_lbl 26 `"26"', add
label define co05a_pernd_lbl 27 `"27"', add
label define co05a_pernd_lbl 28 `"28"', add
label define co05a_pernd_lbl 29 `"29"', add
label define co05a_pernd_lbl 30 `"30"', add
label values co05a_pernd co05a_pernd_lbl

label define co05a_pern_lbl 01 `"1"'
label define co05a_pern_lbl 02 `"2"', add
label define co05a_pern_lbl 03 `"3"', add
label define co05a_pern_lbl 04 `"4"', add
label define co05a_pern_lbl 05 `"5"', add
label define co05a_pern_lbl 06 `"6"', add
label define co05a_pern_lbl 07 `"7"', add
label define co05a_pern_lbl 08 `"8"', add
label define co05a_pern_lbl 09 `"9"', add
label define co05a_pern_lbl 10 `"10"', add
label define co05a_pern_lbl 11 `"11"', add
label define co05a_pern_lbl 12 `"12"', add
label define co05a_pern_lbl 13 `"13"', add
label define co05a_pern_lbl 14 `"14"', add
label define co05a_pern_lbl 15 `"15"', add
label define co05a_pern_lbl 16 `"16"', add
label define co05a_pern_lbl 17 `"17"', add
label define co05a_pern_lbl 19 `"19"', add
label define co05a_pern_lbl 22 `"22"', add
label define co05a_pern_lbl 24 `"24"', add
label define co05a_pern_lbl 18 `"18"', add
label define co05a_pern_lbl 20 `"20"', add
label define co05a_pern_lbl 21 `"21"', add
label define co05a_pern_lbl 23 `"23"', add
label define co05a_pern_lbl 25 `"25"', add
label define co05a_pern_lbl 26 `"26"', add
label values co05a_pern co05a_pern_lbl

label define co05a_fbig_lbl 0 `"No problem"'
label define co05a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define co05a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values co05a_fbig co05a_fbig_lbl

label define co05a_donated_lbl 0 `"No problem"'
label define co05a_donated_lbl 1 `"Donated"', add
label values co05a_donated co05a_donated_lbl

label define co05a_d_num_lbl 01 `"1"'
label define co05a_d_num_lbl 02 `"2"', add
label define co05a_d_num_lbl 03 `"3"', add
label define co05a_d_num_lbl 04 `"4"', add
label define co05a_d_num_lbl 05 `"5"', add
label define co05a_d_num_lbl 06 `"6"', add
label define co05a_d_num_lbl 07 `"7"', add
label define co05a_d_num_lbl 08 `"8"', add
label define co05a_d_num_lbl 09 `"9"', add
label define co05a_d_num_lbl 10 `"10"', add
label define co05a_d_num_lbl 11 `"11"', add
label define co05a_d_num_lbl 12 `"12"', add
label define co05a_d_num_lbl 13 `"13"', add
label define co05a_d_num_lbl 14 `"14"', add
label define co05a_d_num_lbl 15 `"15"', add
label define co05a_d_num_lbl 16 `"16"', add
label define co05a_d_num_lbl 17 `"17"', add
label define co05a_d_num_lbl 18 `"18"', add
label define co05a_d_num_lbl 19 `"19"', add
label define co05a_d_num_lbl 20 `"20"', add
label define co05a_d_num_lbl 21 `"21"', add
label define co05a_d_num_lbl 22 `"22"', add
label define co05a_d_num_lbl 23 `"23"', add
label define co05a_d_num_lbl 24 `"24"', add
label define co05a_d_num_lbl 25 `"25"', add
label define co05a_d_num_lbl 26 `"26"', add
label define co05a_d_num_lbl 27 `"27"', add
label define co05a_d_num_lbl 28 `"28"', add
label define co05a_d_num_lbl 29 `"29"', add
label define co05a_d_num_lbl 30 `"30"', add
label define co05a_d_num_lbl 31 `"31"', add
label define co05a_d_num_lbl 32 `"32"', add
label define co05a_d_num_lbl 33 `"33"', add
label define co05a_d_num_lbl 34 `"34"', add
label define co05a_d_num_lbl 35 `"35"', add
label define co05a_d_num_lbl 36 `"36"', add
label define co05a_d_num_lbl 37 `"37"', add
label define co05a_d_num_lbl 38 `"38"', add
label define co05a_d_num_lbl 39 `"39"', add
label define co05a_d_num_lbl 40 `"40"', add
label define co05a_d_num_lbl 41 `"41"', add
label define co05a_d_num_lbl 42 `"42"', add
label define co05a_d_num_lbl 43 `"43"', add
label values co05a_d_num co05a_d_num_lbl

label define co05a_dept_lbl 05 `"Antioquia"'
label define co05a_dept_lbl 08 `"Atlántico"', add
label define co05a_dept_lbl 11 `"Bogotá"', add
label define co05a_dept_lbl 13 `"Bolívar"', add
label define co05a_dept_lbl 15 `"Boyacá"', add
label define co05a_dept_lbl 17 `"Caldas"', add
label define co05a_dept_lbl 18 `"Caquetá"', add
label define co05a_dept_lbl 19 `"Cauca"', add
label define co05a_dept_lbl 20 `"Cesar"', add
label define co05a_dept_lbl 23 `"Córdoba"', add
label define co05a_dept_lbl 25 `"Cundinamarca"', add
label define co05a_dept_lbl 27 `"Chocó"', add
label define co05a_dept_lbl 41 `"Huila"', add
label define co05a_dept_lbl 44 `"La Guajira"', add
label define co05a_dept_lbl 47 `"Magdalena"', add
label define co05a_dept_lbl 50 `"Meta"', add
label define co05a_dept_lbl 52 `"Nariño"', add
label define co05a_dept_lbl 54 `"Norte de Santander"', add
label define co05a_dept_lbl 63 `"Quindío"', add
label define co05a_dept_lbl 66 `"Risaralda"', add
label define co05a_dept_lbl 68 `"Santander"', add
label define co05a_dept_lbl 70 `"Sucre"', add
label define co05a_dept_lbl 73 `"Tolima"', add
label define co05a_dept_lbl 76 `"Valle"', add
label define co05a_dept_lbl 81 `"Arauca"', add
label define co05a_dept_lbl 85 `"Casanare"', add
label define co05a_dept_lbl 86 `"Putumayo"', add
label define co05a_dept_lbl 88 `"San Andrés"', add
label define co05a_dept_lbl 91 `"Amazonas"', add
label define co05a_dept_lbl 95 `"Guaviare"', add
label define co05a_dept_lbl 97 `"Vaupés and Guainía"', add
label define co05a_dept_lbl 99 `"Vichada"', add
label values co05a_dept co05a_dept_lbl

label define co05a_geoc_lbl 1 `"Municipal seat/capital"'
label define co05a_geoc_lbl 2 `"Population center"', add
label define co05a_geoc_lbl 3 `"Disperse rural"', add
label values co05a_geoc co05a_geoc_lbl

label define co05a_dwtype_lbl 1 `"House"'
label define co05a_dwtype_lbl 2 `"Indigenous house"', add
label define co05a_dwtype_lbl 3 `"Apartment"', add
label define co05a_dwtype_lbl 4 `"Room type"', add
label define co05a_dwtype_lbl 5 `"Other type of dwelling"', add
label values co05a_dwtype co05a_dwtype_lbl

label define co05a_wall_lbl 1 `"Cement block, brick, stone, polished wood"'
label define co05a_wall_lbl 2 `"Plastered boards, adobe, mud and cane"', add
label define co05a_wall_lbl 3 `"Rough wood, board, plywood"', add
label define co05a_wall_lbl 4 `"Prefabricated material"', add
label define co05a_wall_lbl 5 `"Clay brick, cane, cane/mud, other vegetables"', add
label define co05a_wall_lbl 6 `"Zinc, fabric, cardboard, cans, discarded materials, plastics"', add
label define co05a_wall_lbl 7 `"Without walls"', add
label define co05a_wall_lbl 9 `"Unknown"', add
label values co05a_wall co05a_wall_lbl

label define co05a_floor_lbl 1 `"Carpet, marble, parquet, polished wood"'
label define co05a_floor_lbl 2 `"Tile, vinyl, clay tile, brick"', add
label define co05a_floor_lbl 3 `"Cement, gravel"', add
label define co05a_floor_lbl 4 `"Rough wood, board, plywood, other vegetable"', add
label define co05a_floor_lbl 5 `"Dirt, sand"', add
label define co05a_floor_lbl 9 `"Unknown"', add
label values co05a_floor co05a_floor_lbl

label define co05a_elect_lbl 1 `"Yes"'
label define co05a_elect_lbl 2 `"No"', add
label values co05a_elect co05a_elect_lbl

label define co05a_sewer_lbl 1 `"Yes"'
label define co05a_sewer_lbl 2 `"No"', add
label values co05a_sewer co05a_sewer_lbl

label define co05a_runwat_lbl 1 `"Yes"'
label define co05a_runwat_lbl 2 `"No"', add
label values co05a_runwat co05a_runwat_lbl

label define co05a_natgas_lbl 1 `"Yes"'
label define co05a_natgas_lbl 2 `"No"', add
label define co05a_natgas_lbl 9 `"Unknown"', add
label values co05a_natgas co05a_natgas_lbl

label define co05a_phone_lbl 1 `"Yes"'
label define co05a_phone_lbl 2 `"No"', add
label define co05a_phone_lbl 9 `"Unknown"', add
label values co05a_phone co05a_phone_lbl

label define co05a_toilet_lbl 1 `"Toilet connected to a sewage drain"'
label define co05a_toilet_lbl 2 `"Toilet connected to a septic tank"', add
label define co05a_toilet_lbl 3 `"Toilet without a connection, latrine, hole"', add
label define co05a_toilet_lbl 4 `"No sanitary service"', add
label define co05a_toilet_lbl 9 `"Unknown"', add
label values co05a_toilet co05a_toilet_lbl

label define co05a_water_lbl 1 `"Inside the dwelling"'
label define co05a_water_lbl 2 `"Outside the dwelling but inside the lot"', add
label define co05a_water_lbl 3 `"Outside the dwelling and outside the lot"', add
label define co05a_water_lbl 9 `"Unknown"', add
label values co05a_water co05a_water_lbl

label define co05a_roomsba_lbl 00 `"0"'
label define co05a_roomsba_lbl 01 `"1"', add
label define co05a_roomsba_lbl 02 `"2"', add
label define co05a_roomsba_lbl 03 `"3"', add
label define co05a_roomsba_lbl 04 `"4"', add
label define co05a_roomsba_lbl 05 `"5"', add
label define co05a_roomsba_lbl 06 `"6"', add
label define co05a_roomsba_lbl 07 `"7"', add
label define co05a_roomsba_lbl 08 `"8"', add
label define co05a_roomsba_lbl 09 `"9"', add
label define co05a_roomsba_lbl 10 `"10"', add
label define co05a_roomsba_lbl 99 `"Unknown"', add
label values co05a_roomsba co05a_roomsba_lbl

label define co05a_kitchex_lbl 1 `"Yes"'
label define co05a_kitchex_lbl 2 `"No"', add
label define co05a_kitchex_lbl 9 `"Unknown"', add
label values co05a_kitchex co05a_kitchex_lbl

label define co05a_tenure_lbl 1 `"Paying rent"'
label define co05a_tenure_lbl 2 `"Owned dwelling"', add
label define co05a_tenure_lbl 3 `"Lives without paying anything"', add
label define co05a_tenure_lbl 4 `"Lives or holding or possesion"', add
label define co05a_tenure_lbl 5 `"Lives in another situation"', add
label define co05a_tenure_lbl 9 `"Unknown"', add
label values co05a_tenure co05a_tenure_lbl

label define co05a_owner_lbl 1 `"Totally paid for"'
label define co05a_owner_lbl 2 `"Are paying"', add
label define co05a_owner_lbl 9 `"NIU (not in universe)"', add
label values co05a_owner co05a_owner_lbl

label define co05a_rooms_lbl 00 `"0 rooms"'
label define co05a_rooms_lbl 01 `"1"', add
label define co05a_rooms_lbl 02 `"2"', add
label define co05a_rooms_lbl 03 `"3"', add
label define co05a_rooms_lbl 04 `"4"', add
label define co05a_rooms_lbl 05 `"5"', add
label define co05a_rooms_lbl 06 `"6"', add
label define co05a_rooms_lbl 07 `"7"', add
label define co05a_rooms_lbl 08 `"8"', add
label define co05a_rooms_lbl 09 `"9"', add
label define co05a_rooms_lbl 10 `"10"', add
label define co05a_rooms_lbl 11 `"11"', add
label define co05a_rooms_lbl 12 `"12"', add
label define co05a_rooms_lbl 13 `"13"', add
label define co05a_rooms_lbl 14 `"14"', add
label define co05a_rooms_lbl 15 `"15"', add
label define co05a_rooms_lbl 16 `"16"', add
label define co05a_rooms_lbl 17 `"17"', add
label define co05a_rooms_lbl 18 `"18"', add
label define co05a_rooms_lbl 19 `"19"', add
label define co05a_rooms_lbl 20 `"20+"', add
label define co05a_rooms_lbl 99 `"Unknown"', add
label values co05a_rooms co05a_rooms_lbl

label define co05a_roomsbd_lbl 00 `"0 rooms"'
label define co05a_roomsbd_lbl 01 `"1"', add
label define co05a_roomsbd_lbl 02 `"2"', add
label define co05a_roomsbd_lbl 03 `"3"', add
label define co05a_roomsbd_lbl 04 `"4"', add
label define co05a_roomsbd_lbl 05 `"5"', add
label define co05a_roomsbd_lbl 06 `"6"', add
label define co05a_roomsbd_lbl 07 `"7"', add
label define co05a_roomsbd_lbl 08 `"8"', add
label define co05a_roomsbd_lbl 09 `"9"', add
label define co05a_roomsbd_lbl 10 `"10"', add
label define co05a_roomsbd_lbl 11 `"11"', add
label define co05a_roomsbd_lbl 12 `"12"', add
label define co05a_roomsbd_lbl 13 `"13"', add
label define co05a_roomsbd_lbl 14 `"14"', add
label define co05a_roomsbd_lbl 15 `"15"', add
label define co05a_roomsbd_lbl 16 `"16"', add
label define co05a_roomsbd_lbl 17 `"17"', add
label define co05a_roomsbd_lbl 18 `"18"', add
label define co05a_roomsbd_lbl 19 `"19"', add
label define co05a_roomsbd_lbl 20 `"20+"', add
label define co05a_roomsbd_lbl 99 `"Unknown"', add
label values co05a_roomsbd co05a_roomsbd_lbl

label define co05a_bathex_lbl 1 `"Exclusive for the household"'
label define co05a_bathex_lbl 2 `"Shared with other households"', add
label define co05a_bathex_lbl 3 `"Do not have sanitary services"', add
label define co05a_bathex_lbl 9 `"Unknown"', add
label values co05a_bathex co05a_bathex_lbl

label define co05a_watsrc_lbl 1 `"Aqueduct"'
label define co05a_watsrc_lbl 2 `"Well with or without pump"', add
label define co05a_watsrc_lbl 3 `"Rain water"', add
label define co05a_watsrc_lbl 4 `"Public faucet"', add
label define co05a_watsrc_lbl 5 `"Water truck, water delivery service"', add
label define co05a_watsrc_lbl 6 `"River, creek, spring"', add
label define co05a_watsrc_lbl 7 `"Bottled or baged water"', add
label define co05a_watsrc_lbl 9 `"Unknown"', add
label values co05a_watsrc co05a_watsrc_lbl

label define co05a_cookpl_lbl 1 `"In a room only for cooking"'
label define co05a_cookpl_lbl 2 `"In a room used also for sleeping"', add
label define co05a_cookpl_lbl 3 `"In a living room-dining room with a sink for washing dishes"', add
label define co05a_cookpl_lbl 4 `"In a living room-dining room without a sink for washing dishes"', add
label define co05a_cookpl_lbl 5 `"In a patio, corridor, hallway"', add
label define co05a_cookpl_lbl 6 `"No, not cook"', add
label define co05a_cookpl_lbl 9 `"Unknown"', add
label values co05a_cookpl co05a_cookpl_lbl

label define co05a_fuelck_lbl 1 `"Electrical energy"'
label define co05a_fuelck_lbl 2 `"Natural gas"', add
label define co05a_fuelck_lbl 3 `"Gas in cylinder or tank"', add
label define co05a_fuelck_lbl 4 `"Petroleum, gasoline, kerosene, alcohol"', add
label define co05a_fuelck_lbl 5 `"Firewood, wood, discarded materials, vegetable coal"', add
label define co05a_fuelck_lbl 6 `"Mineral coal"', add
label define co05a_fuelck_lbl 8 `"Unknown"', add
label define co05a_fuelck_lbl 9 `"NIU (not in universe)"', add
label values co05a_fuelck co05a_fuelck_lbl

label define co05a_refrig_lbl 1 `"Yes"'
label define co05a_refrig_lbl 2 `"No"', add
label define co05a_refrig_lbl 9 `"Unknown"', add
label values co05a_refrig co05a_refrig_lbl

label define co05a_washer_lbl 1 `"Yes"'
label define co05a_washer_lbl 2 `"No"', add
label define co05a_washer_lbl 9 `"Unknown"', add
label values co05a_washer co05a_washer_lbl

label define co05a_stereo_lbl 1 `"Yes"'
label define co05a_stereo_lbl 2 `"No"', add
label define co05a_stereo_lbl 9 `"Unknown"', add
label values co05a_stereo co05a_stereo_lbl

label define co05a_watheat_lbl 1 `"Yes"'
label define co05a_watheat_lbl 2 `"No"', add
label define co05a_watheat_lbl 9 `"Unknown"', add
label values co05a_watheat co05a_watheat_lbl

label define co05a_shower_lbl 1 `"Yes"'
label define co05a_shower_lbl 2 `"No"', add
label define co05a_shower_lbl 9 `"Unknown"', add
label values co05a_shower co05a_shower_lbl

label define co05a_blender_lbl 1 `"Yes"'
label define co05a_blender_lbl 2 `"No"', add
label define co05a_blender_lbl 9 `"Unknown"', add
label values co05a_blender co05a_blender_lbl

label define co05a_oven_lbl 1 `"Yes"'
label define co05a_oven_lbl 2 `"No"', add
label define co05a_oven_lbl 9 `"Unknown"', add
label values co05a_oven co05a_oven_lbl

label define co05a_aircond_lbl 1 `"Yes"'
label define co05a_aircond_lbl 2 `"No"', add
label define co05a_aircond_lbl 9 `"Unknown"', add
label values co05a_aircond co05a_aircond_lbl

label define co05a_fan_lbl 1 `"Yes"'
label define co05a_fan_lbl 2 `"No"', add
label define co05a_fan_lbl 9 `"Unknown"', add
label values co05a_fan co05a_fan_lbl

label define co05a_tvc_lbl 1 `"Yes"'
label define co05a_tvc_lbl 2 `"No"', add
label define co05a_tvc_lbl 9 `"Unknown"', add
label values co05a_tvc co05a_tvc_lbl

label define co05a_compute_lbl 1 `"Yes"'
label define co05a_compute_lbl 2 `"No"', add
label define co05a_compute_lbl 9 `"Unknown"', add
label values co05a_compute co05a_compute_lbl

label define co05a_microw_lbl 1 `"Yes"'
label define co05a_microw_lbl 2 `"No"', add
label define co05a_microw_lbl 9 `"Unknown"', add
label values co05a_microw co05a_microw_lbl

label define co05a_bike_lbl 00 `"0"'
label define co05a_bike_lbl 01 `"1"', add
label define co05a_bike_lbl 02 `"2"', add
label define co05a_bike_lbl 03 `"3"', add
label define co05a_bike_lbl 04 `"4"', add
label define co05a_bike_lbl 05 `"5"', add
label define co05a_bike_lbl 06 `"6"', add
label define co05a_bike_lbl 07 `"7"', add
label define co05a_bike_lbl 08 `"8"', add
label define co05a_bike_lbl 09 `"9"', add
label define co05a_bike_lbl 99 `"Unknown"', add
label values co05a_bike co05a_bike_lbl

label define co05a_motorcy_lbl 0 `"0"'
label define co05a_motorcy_lbl 1 `"1"', add
label define co05a_motorcy_lbl 2 `"2"', add
label define co05a_motorcy_lbl 3 `"3"', add
label define co05a_motorcy_lbl 9 `"Unknown"', add
label values co05a_motorcy co05a_motorcy_lbl

label define co05a_boat_lbl 0 `"0"'
label define co05a_boat_lbl 1 `"1"', add
label define co05a_boat_lbl 2 `"2"', add
label define co05a_boat_lbl 9 `"Unknown"', add
label values co05a_boat co05a_boat_lbl

label define co05a_auto_lbl 0 `"0"'
label define co05a_auto_lbl 1 `"1"', add
label define co05a_auto_lbl 2 `"2"', add
label define co05a_auto_lbl 3 `"3"', add
label define co05a_auto_lbl 4 `"4"', add
label define co05a_auto_lbl 9 `"Unknown"', add
label values co05a_auto co05a_auto_lbl

label define co05a_commorg_lbl 1 `"Yes"'
label define co05a_commorg_lbl 2 `"No"', add
label define co05a_commorg_lbl 9 `"Unknown"', add
label values co05a_commorg co05a_commorg_lbl

label define co05a_commorg_lbl 1 `"Yes"'
label define co05a_commorg_lbl 2 `"No"', add
label define co05a_commorg_lbl 9 `"Unknown"', add
label values co05a_commorg co05a_commorg_lbl

label define co05a_incbas_lbl 1 `"Enough to cover basic expenses"'
label define co05a_incbas_lbl 2 `"More than enough to cover basic expenses"', add
label define co05a_incbas_lbl 3 `"Not enough to cover basic expenses"', add
label define co05a_incbas_lbl 9 `"Unknown"', add
label values co05a_incbas co05a_incbas_lbl

label define co05a_incad_lbl 01 `"From 0 to 200,000"'
label define co05a_incad_lbl 02 `"From 200,001 to 400,000"', add
label define co05a_incad_lbl 03 `"From 400,001 to 700,000"', add
label define co05a_incad_lbl 04 `"From 700,001 to 1,000,000"', add
label define co05a_incad_lbl 05 `"From 1,000,001 to 1,500,000"', add
label define co05a_incad_lbl 06 `"From 1,500,001 to 2,000,000"', add
label define co05a_incad_lbl 07 `"From 2,000,001 to 3,000,000"', add
label define co05a_incad_lbl 08 `"From 3,000,001 to 4,500,000"', add
label define co05a_incad_lbl 09 `"More than 4,500,000"', add
label define co05a_incad_lbl 11 `"Does not know"', add
label define co05a_incad_lbl 99 `"Unknown"', add
label values co05a_incad co05a_incad_lbl

label define co05a_pa_lbl 1 `"Yes"'
label define co05a_pa_lbl 2 `"No"', add
label define co05a_pa_lbl 9 `"Unknown"', add
label values co05a_pa co05a_pa_lbl

label define co05a_patot_lbl 00 `"0"'
label define co05a_patot_lbl 01 `"1"', add
label define co05a_patot_lbl 02 `"2"', add
label define co05a_patot_lbl 03 `"3"', add
label define co05a_patot_lbl 04 `"4"', add
label define co05a_patot_lbl 05 `"5"', add
label define co05a_patot_lbl 06 `"6"', add
label define co05a_patot_lbl 07 `"7"', add
label define co05a_patot_lbl 08 `"8"', add
label define co05a_patot_lbl 09 `"9"', add
label define co05a_patot_lbl 10 `"10+"', add
label define co05a_patot_lbl 99 `"Unknown"', add
label values co05a_patot co05a_patot_lbl

label define co05a_pave05_lbl 0 `"0"'
label define co05a_pave05_lbl 1 `"1"', add
label define co05a_pave05_lbl 2 `"2"', add
label define co05a_pave05_lbl 3 `"3"', add
label define co05a_pave05_lbl 4 `"4"', add
label define co05a_pave05_lbl 5 `"5+"', add
label define co05a_pave05_lbl 9 `"Unknown"', add
label values co05a_pave05 co05a_pave05_lbl

label define co05a_pave00_lbl 0 `"0"'
label define co05a_pave00_lbl 1 `"1"', add
label define co05a_pave00_lbl 2 `"2"', add
label define co05a_pave00_lbl 3 `"3"', add
label define co05a_pave00_lbl 4 `"4"', add
label define co05a_pave00_lbl 5 `"5+"', add
label define co05a_pave00_lbl 9 `"Unknown"', add
label values co05a_pave00 co05a_pave00_lbl

label define co05a_pave96_lbl 0 `"0"'
label define co05a_pave96_lbl 1 `"1"', add
label define co05a_pave96_lbl 2 `"2"', add
label define co05a_pave96_lbl 3 `"3"', add
label define co05a_pave96_lbl 4 `"4"', add
label define co05a_pave96_lbl 5 `"5"', add
label define co05a_pave96_lbl 6 `"6+"', add
label define co05a_pave96_lbl 9 `"Unknown"', add
label values co05a_pave96 co05a_pave96_lbl

label define co05a_paus05_lbl 0 `"0"'
label define co05a_paus05_lbl 1 `"1"', add
label define co05a_paus05_lbl 2 `"2"', add
label define co05a_paus05_lbl 3 `"3"', add
label define co05a_paus05_lbl 4 `"4+"', add
label define co05a_paus05_lbl 9 `"Unknown"', add
label values co05a_paus05 co05a_paus05_lbl

label define co05a_paus00_lbl 0 `"0"'
label define co05a_paus00_lbl 1 `"1"', add
label define co05a_paus00_lbl 2 `"2"', add
label define co05a_paus00_lbl 3 `"3"', add
label define co05a_paus00_lbl 4 `"4"', add
label define co05a_paus00_lbl 5 `"5+"', add
label define co05a_paus00_lbl 9 `"Unknown"', add
label values co05a_paus00 co05a_paus00_lbl

label define co05a_paus96_lbl 0 `"0"'
label define co05a_paus96_lbl 1 `"1"', add
label define co05a_paus96_lbl 2 `"2"', add
label define co05a_paus96_lbl 3 `"3"', add
label define co05a_paus96_lbl 4 `"4"', add
label define co05a_paus96_lbl 5 `"5"', add
label define co05a_paus96_lbl 6 `"6+"', add
label define co05a_paus96_lbl 9 `"Unknown"', add
label values co05a_paus96 co05a_paus96_lbl

label define co05a_paes05_lbl 0 `"0"'
label define co05a_paes05_lbl 1 `"1"', add
label define co05a_paes05_lbl 2 `"2"', add
label define co05a_paes05_lbl 3 `"3"', add
label define co05a_paes05_lbl 4 `"4+"', add
label define co05a_paes05_lbl 9 `"Unknown"', add
label values co05a_paes05 co05a_paes05_lbl

label define co05a_paes96_lbl 0 `"0"'
label define co05a_paes96_lbl 1 `"1"', add
label define co05a_paes96_lbl 2 `"2"', add
label define co05a_paes96_lbl 3 `"3"', add
label define co05a_paes96_lbl 4 `"4+"', add
label define co05a_paes96_lbl 9 `"Unknown"', add
label values co05a_paes96 co05a_paes96_lbl

label define co05a_pamx05_lbl 0 `"0"'
label define co05a_pamx05_lbl 1 `"1+"', add
label define co05a_pamx05_lbl 9 `"Unknown"', add
label values co05a_pamx05 co05a_pamx05_lbl

label define co05a_pamx00_lbl 0 `"0"'
label define co05a_pamx00_lbl 1 `"1+"', add
label define co05a_pamx00_lbl 9 `"Unknown"', add
label values co05a_pamx00 co05a_pamx00_lbl

label define co05a_pamx96_lbl 0 `"0"'
label define co05a_pamx96_lbl 1 `"1+"', add
label define co05a_pamx96_lbl 9 `"Unknown"', add
label values co05a_pamx96 co05a_pamx96_lbl

label define co05a_pacr05_lbl 0 `"0"'
label define co05a_pacr05_lbl 1 `"1"', add
label define co05a_pacr05_lbl 2 `"2+"', add
label define co05a_pacr05_lbl 9 `"Unknown"', add
label values co05a_pacr05 co05a_pacr05_lbl

label define co05a_pacr00_lbl 0 `"0"'
label define co05a_pacr00_lbl 1 `"1+"', add
label define co05a_pacr00_lbl 9 `"Unknown"', add
label values co05a_pacr00 co05a_pacr00_lbl

label define co05a_pacr96_lbl 0 `"0"'
label define co05a_pacr96_lbl 1 `"1+"', add
label define co05a_pacr96_lbl 9 `"Unknown"', add
label values co05a_pacr96 co05a_pacr96_lbl

label define co05a_paca05_lbl 0 `"0"'
label define co05a_paca05_lbl 1 `"1"', add
label define co05a_paca05_lbl 2 `"2"', add
label define co05a_paca05_lbl 3 `"3+"', add
label define co05a_paca05_lbl 9 `"Unknown"', add
label values co05a_paca05 co05a_paca05_lbl

label define co05a_paca00_lbl 0 `"0"'
label define co05a_paca00_lbl 1 `"1"', add
label define co05a_paca00_lbl 2 `"2+"', add
label define co05a_paca00_lbl 9 `"Unknown"', add
label values co05a_paca00 co05a_paca00_lbl

label define co05a_paca96_lbl 0 `"0"'
label define co05a_paca96_lbl 1 `"1+"', add
label define co05a_paca96_lbl 9 `"Unknown"', add
label values co05a_paca96 co05a_paca96_lbl

label define co05a_paat05_lbl 0 `"0"'
label define co05a_paat05_lbl 1 `"1+"', add
label define co05a_paat05_lbl 9 `"Unknown"', add
label values co05a_paat05 co05a_paat05_lbl

label define co05a_paat00_lbl 0 `"0"'
label define co05a_paat00_lbl 1 `"1+"', add
label define co05a_paat00_lbl 9 `"Unknown"', add
label values co05a_paat00 co05a_paat00_lbl

label define co05a_paat96_lbl 0 `"0"'
label define co05a_paat96_lbl 1 `"1+"', add
label define co05a_paat96_lbl 9 `"Unknown"', add
label values co05a_paat96 co05a_paat96_lbl

label define co05a_paec05_lbl 0 `"0"'
label define co05a_paec05_lbl 1 `"1"', add
label define co05a_paec05_lbl 2 `"2"', add
label define co05a_paec05_lbl 3 `"3+"', add
label define co05a_paec05_lbl 9 `"Unknown"', add
label values co05a_paec05 co05a_paec05_lbl

label define co05a_paec00_lbl 0 `"0"'
label define co05a_paec00_lbl 1 `"1+"', add
label define co05a_paec00_lbl 9 `"Unknown"', add
label values co05a_paec00 co05a_paec00_lbl

label define co05a_paec96_lbl 0 `"0"'
label define co05a_paec96_lbl 1 `"1+"', add
label define co05a_paec96_lbl 9 `"Unknown"', add
label values co05a_paec96 co05a_paec96_lbl

label define co05a_papa05_lbl 0 `"0"'
label define co05a_papa05_lbl 1 `"1"', add
label define co05a_papa05_lbl 2 `"2+"', add
label define co05a_papa05_lbl 9 `"Unknown"', add
label values co05a_papa05 co05a_papa05_lbl

label define co05a_papa00_lbl 0 `"0"'
label define co05a_papa00_lbl 1 `"1+"', add
label define co05a_papa00_lbl 9 `"Unknown"', add
label values co05a_papa00 co05a_papa00_lbl

label define co05a_papa96_lbl 0 `"0"'
label define co05a_papa96_lbl 1 `"1+"', add
label define co05a_papa96_lbl 9 `"Unknown"', add
label values co05a_papa96 co05a_papa96_lbl

label define co05a_pape05_lbl 0 `"0"'
label define co05a_pape05_lbl 1 `"1+"', add
label define co05a_pape05_lbl 2 `"MISSING-GF"', add
label define co05a_pape05_lbl 9 `"Unknown"', add
label values co05a_pape05 co05a_pape05_lbl

label define co05a_pabo05_lbl 0 `"0"'
label define co05a_pabo05_lbl 1 `"1+"', add
label define co05a_pabo05_lbl 9 `"Unknown"', add
label values co05a_pabo05 co05a_pabo05_lbl

label define co05a_paot05_lbl 0 `"0"'
label define co05a_paot05_lbl 1 `"1"', add
label define co05a_paot05_lbl 2 `"2"', add
label define co05a_paot05_lbl 3 `"3"', add
label define co05a_paot05_lbl 4 `"4+"', add
label define co05a_paot05_lbl 9 `"Unknown"', add
label values co05a_paot05 co05a_paot05_lbl

label define co05a_paot00_lbl 0 `"0"'
label define co05a_paot00_lbl 1 `"1"', add
label define co05a_paot00_lbl 2 `"2"', add
label define co05a_paot00_lbl 3 `"3"', add
label define co05a_paot00_lbl 4 `"4+"', add
label define co05a_paot00_lbl 9 `"Unknown"', add
label values co05a_paot00 co05a_paot00_lbl

label define co05a_paot96_lbl 0 `"0"'
label define co05a_paot96_lbl 1 `"1"', add
label define co05a_paot96_lbl 2 `"2"', add
label define co05a_paot96_lbl 3 `"3+"', add
label define co05a_paot96_lbl 9 `"Unknown"', add
label values co05a_paot96 co05a_paot96_lbl

label define co05a_perno_lbl 01 `"1"'
label define co05a_perno_lbl 02 `"2"', add
label define co05a_perno_lbl 03 `"3"', add
label define co05a_perno_lbl 04 `"4"', add
label define co05a_perno_lbl 05 `"5"', add
label define co05a_perno_lbl 06 `"6"', add
label define co05a_perno_lbl 07 `"7"', add
label define co05a_perno_lbl 08 `"8"', add
label define co05a_perno_lbl 09 `"9"', add
label define co05a_perno_lbl 10 `"10"', add
label define co05a_perno_lbl 11 `"11"', add
label define co05a_perno_lbl 12 `"12"', add
label define co05a_perno_lbl 13 `"13"', add
label define co05a_perno_lbl 14 `"14"', add
label define co05a_perno_lbl 15 `"15"', add
label define co05a_perno_lbl 16 `"16"', add
label define co05a_perno_lbl 17 `"17"', add
label define co05a_perno_lbl 18 `"18"', add
label define co05a_perno_lbl 19 `"19"', add
label define co05a_perno_lbl 20 `"20"', add
label define co05a_perno_lbl 21 `"21"', add
label define co05a_perno_lbl 22 `"22"', add
label define co05a_perno_lbl 23 `"23"', add
label define co05a_perno_lbl 24 `"24"', add
label define co05a_perno_lbl 25 `"25"', add
label values co05a_perno co05a_perno_lbl

label define co05a_diedn_lbl 0 `"0"'
label define co05a_diedn_lbl 1 `"1"', add
label define co05a_diedn_lbl 2 `"2"', add
label define co05a_diedn_lbl 3 `"3+"', add
label values co05a_diedn co05a_diedn_lbl

label define co05a_econact_lbl 1 `"Yes"'
label define co05a_econact_lbl 2 `"No"', add
label values co05a_econact co05a_econact_lbl

label define co05a_pernum_lbl 00 `"Household record"'
label define co05a_pernum_lbl 01 `"1"', add
label define co05a_pernum_lbl 02 `"2"', add
label define co05a_pernum_lbl 03 `"3"', add
label define co05a_pernum_lbl 04 `"4"', add
label define co05a_pernum_lbl 05 `"5"', add
label define co05a_pernum_lbl 06 `"6"', add
label define co05a_pernum_lbl 07 `"7"', add
label define co05a_pernum_lbl 08 `"8"', add
label define co05a_pernum_lbl 09 `"9"', add
label define co05a_pernum_lbl 10 `"10"', add
label define co05a_pernum_lbl 11 `"11"', add
label define co05a_pernum_lbl 12 `"12"', add
label define co05a_pernum_lbl 13 `"13"', add
label define co05a_pernum_lbl 14 `"14"', add
label define co05a_pernum_lbl 15 `"15"', add
label define co05a_pernum_lbl 16 `"16"', add
label define co05a_pernum_lbl 17 `"17"', add
label define co05a_pernum_lbl 18 `"18"', add
label define co05a_pernum_lbl 19 `"19"', add
label define co05a_pernum_lbl 20 `"20"', add
label define co05a_pernum_lbl 21 `"21"', add
label define co05a_pernum_lbl 22 `"22"', add
label define co05a_pernum_lbl 23 `"23"', add
label define co05a_pernum_lbl 24 `"24"', add
label define co05a_pernum_lbl 25 `"25"', add
label values co05a_pernum co05a_pernum_lbl

label define co05a_sex_lbl 1 `"Male"'
label define co05a_sex_lbl 2 `"Female"', add
label values co05a_sex co05a_sex_lbl

label define co05a_bmon_lbl 01 `"January"'
label define co05a_bmon_lbl 02 `"February"', add
label define co05a_bmon_lbl 03 `"March"', add
label define co05a_bmon_lbl 04 `"April"', add
label define co05a_bmon_lbl 05 `"May"', add
label define co05a_bmon_lbl 06 `"June"', add
label define co05a_bmon_lbl 07 `"July"', add
label define co05a_bmon_lbl 08 `"August"', add
label define co05a_bmon_lbl 09 `"September"', add
label define co05a_bmon_lbl 10 `"October"', add
label define co05a_bmon_lbl 11 `"November"', add
label define co05a_bmon_lbl 12 `"December"', add
label define co05a_bmon_lbl 99 `"Unknown"', add
label values co05a_bmon co05a_bmon_lbl

label define co05a_byr_lbl 1900 `"1900 or earlier"'
label define co05a_byr_lbl 1901 `"1901"', add
label define co05a_byr_lbl 1902 `"1902"', add
label define co05a_byr_lbl 1903 `"1903"', add
label define co05a_byr_lbl 1904 `"1904"', add
label define co05a_byr_lbl 1905 `"1905"', add
label define co05a_byr_lbl 1906 `"1906"', add
label define co05a_byr_lbl 1907 `"1907"', add
label define co05a_byr_lbl 1908 `"1908"', add
label define co05a_byr_lbl 1909 `"1909"', add
label define co05a_byr_lbl 1910 `"1910"', add
label define co05a_byr_lbl 1911 `"1911"', add
label define co05a_byr_lbl 1912 `"1912"', add
label define co05a_byr_lbl 1913 `"1913"', add
label define co05a_byr_lbl 1914 `"1914"', add
label define co05a_byr_lbl 1915 `"1915"', add
label define co05a_byr_lbl 1916 `"1916"', add
label define co05a_byr_lbl 1917 `"1917"', add
label define co05a_byr_lbl 1918 `"1918"', add
label define co05a_byr_lbl 1919 `"1919"', add
label define co05a_byr_lbl 1920 `"1920"', add
label define co05a_byr_lbl 1921 `"1921"', add
label define co05a_byr_lbl 1922 `"1922"', add
label define co05a_byr_lbl 1923 `"1923"', add
label define co05a_byr_lbl 1924 `"1924"', add
label define co05a_byr_lbl 1925 `"1925"', add
label define co05a_byr_lbl 1926 `"1926"', add
label define co05a_byr_lbl 1927 `"1927"', add
label define co05a_byr_lbl 1928 `"1928"', add
label define co05a_byr_lbl 1929 `"1929"', add
label define co05a_byr_lbl 1930 `"1930"', add
label define co05a_byr_lbl 1931 `"1931"', add
label define co05a_byr_lbl 1932 `"1932"', add
label define co05a_byr_lbl 1933 `"1933"', add
label define co05a_byr_lbl 1934 `"1934"', add
label define co05a_byr_lbl 1935 `"1935"', add
label define co05a_byr_lbl 1936 `"1936"', add
label define co05a_byr_lbl 1937 `"1937"', add
label define co05a_byr_lbl 1938 `"1938"', add
label define co05a_byr_lbl 1939 `"1939"', add
label define co05a_byr_lbl 1940 `"1940"', add
label define co05a_byr_lbl 1941 `"1941"', add
label define co05a_byr_lbl 1942 `"1942"', add
label define co05a_byr_lbl 1943 `"1943"', add
label define co05a_byr_lbl 1944 `"1944"', add
label define co05a_byr_lbl 1945 `"1945"', add
label define co05a_byr_lbl 1946 `"1946"', add
label define co05a_byr_lbl 1947 `"1947"', add
label define co05a_byr_lbl 1948 `"1948"', add
label define co05a_byr_lbl 1949 `"1949"', add
label define co05a_byr_lbl 1950 `"1950"', add
label define co05a_byr_lbl 1951 `"1951"', add
label define co05a_byr_lbl 1952 `"1952"', add
label define co05a_byr_lbl 1953 `"1953"', add
label define co05a_byr_lbl 1954 `"1954"', add
label define co05a_byr_lbl 1955 `"1955"', add
label define co05a_byr_lbl 1956 `"1956"', add
label define co05a_byr_lbl 1957 `"1957"', add
label define co05a_byr_lbl 1958 `"1958"', add
label define co05a_byr_lbl 1959 `"1959"', add
label define co05a_byr_lbl 1960 `"1960"', add
label define co05a_byr_lbl 1961 `"1961"', add
label define co05a_byr_lbl 1962 `"1962"', add
label define co05a_byr_lbl 1963 `"1963"', add
label define co05a_byr_lbl 1964 `"1964"', add
label define co05a_byr_lbl 1965 `"1965"', add
label define co05a_byr_lbl 1966 `"1966"', add
label define co05a_byr_lbl 1967 `"1967"', add
label define co05a_byr_lbl 1968 `"1968"', add
label define co05a_byr_lbl 1969 `"1969"', add
label define co05a_byr_lbl 1970 `"1970"', add
label define co05a_byr_lbl 1971 `"1971"', add
label define co05a_byr_lbl 1972 `"1972"', add
label define co05a_byr_lbl 1973 `"1973"', add
label define co05a_byr_lbl 1974 `"1974"', add
label define co05a_byr_lbl 1975 `"1975"', add
label define co05a_byr_lbl 1976 `"1976"', add
label define co05a_byr_lbl 1977 `"1977"', add
label define co05a_byr_lbl 1978 `"1978"', add
label define co05a_byr_lbl 1979 `"1979"', add
label define co05a_byr_lbl 1980 `"1980"', add
label define co05a_byr_lbl 1981 `"1981"', add
label define co05a_byr_lbl 1982 `"1982"', add
label define co05a_byr_lbl 1983 `"1983"', add
label define co05a_byr_lbl 1984 `"1984"', add
label define co05a_byr_lbl 1985 `"1985"', add
label define co05a_byr_lbl 1986 `"1986"', add
label define co05a_byr_lbl 1987 `"1987"', add
label define co05a_byr_lbl 1988 `"1988"', add
label define co05a_byr_lbl 1989 `"1989"', add
label define co05a_byr_lbl 1990 `"1990"', add
label define co05a_byr_lbl 1991 `"1991"', add
label define co05a_byr_lbl 1992 `"1992"', add
label define co05a_byr_lbl 1993 `"1993"', add
label define co05a_byr_lbl 1994 `"1994"', add
label define co05a_byr_lbl 1995 `"1995"', add
label define co05a_byr_lbl 1996 `"1996"', add
label define co05a_byr_lbl 1997 `"1997"', add
label define co05a_byr_lbl 1998 `"1998"', add
label define co05a_byr_lbl 1999 `"1999"', add
label define co05a_byr_lbl 2000 `"2000"', add
label define co05a_byr_lbl 2001 `"2001"', add
label define co05a_byr_lbl 2002 `"2002"', add
label define co05a_byr_lbl 2003 `"2003"', add
label define co05a_byr_lbl 2004 `"2004"', add
label define co05a_byr_lbl 2005 `"2005"', add
label define co05a_byr_lbl 2006 `"2006"', add
label define co05a_byr_lbl 9999 `"Unknown"', add
label values co05a_byr co05a_byr_lbl

label define co05a_knowbd_lbl 1 `"Yes"'
label define co05a_knowbd_lbl 2 `"No"', add
label values co05a_knowbd co05a_knowbd_lbl

label define co05a_age_lbl 000 `"0"'
label define co05a_age_lbl 001 `"1"', add
label define co05a_age_lbl 002 `"2"', add
label define co05a_age_lbl 003 `"3"', add
label define co05a_age_lbl 004 `"4"', add
label define co05a_age_lbl 005 `"5"', add
label define co05a_age_lbl 006 `"6"', add
label define co05a_age_lbl 007 `"7"', add
label define co05a_age_lbl 008 `"8"', add
label define co05a_age_lbl 009 `"9"', add
label define co05a_age_lbl 010 `"10"', add
label define co05a_age_lbl 011 `"11"', add
label define co05a_age_lbl 012 `"12"', add
label define co05a_age_lbl 013 `"13"', add
label define co05a_age_lbl 014 `"14"', add
label define co05a_age_lbl 015 `"15"', add
label define co05a_age_lbl 016 `"16"', add
label define co05a_age_lbl 017 `"17"', add
label define co05a_age_lbl 018 `"18"', add
label define co05a_age_lbl 019 `"19"', add
label define co05a_age_lbl 020 `"20"', add
label define co05a_age_lbl 021 `"21"', add
label define co05a_age_lbl 022 `"22"', add
label define co05a_age_lbl 023 `"23"', add
label define co05a_age_lbl 024 `"24"', add
label define co05a_age_lbl 025 `"25"', add
label define co05a_age_lbl 026 `"26"', add
label define co05a_age_lbl 027 `"27"', add
label define co05a_age_lbl 028 `"28"', add
label define co05a_age_lbl 029 `"29"', add
label define co05a_age_lbl 030 `"30"', add
label define co05a_age_lbl 031 `"31"', add
label define co05a_age_lbl 032 `"32"', add
label define co05a_age_lbl 033 `"33"', add
label define co05a_age_lbl 034 `"34"', add
label define co05a_age_lbl 035 `"35"', add
label define co05a_age_lbl 036 `"36"', add
label define co05a_age_lbl 037 `"37"', add
label define co05a_age_lbl 038 `"38"', add
label define co05a_age_lbl 039 `"39"', add
label define co05a_age_lbl 040 `"40"', add
label define co05a_age_lbl 041 `"41"', add
label define co05a_age_lbl 042 `"42"', add
label define co05a_age_lbl 043 `"43"', add
label define co05a_age_lbl 044 `"44"', add
label define co05a_age_lbl 045 `"45"', add
label define co05a_age_lbl 046 `"46"', add
label define co05a_age_lbl 047 `"47"', add
label define co05a_age_lbl 048 `"48"', add
label define co05a_age_lbl 049 `"49"', add
label define co05a_age_lbl 050 `"50"', add
label define co05a_age_lbl 051 `"51"', add
label define co05a_age_lbl 052 `"52"', add
label define co05a_age_lbl 053 `"53"', add
label define co05a_age_lbl 054 `"54"', add
label define co05a_age_lbl 055 `"55"', add
label define co05a_age_lbl 056 `"56"', add
label define co05a_age_lbl 057 `"57"', add
label define co05a_age_lbl 058 `"58"', add
label define co05a_age_lbl 059 `"59"', add
label define co05a_age_lbl 060 `"60"', add
label define co05a_age_lbl 061 `"61"', add
label define co05a_age_lbl 062 `"62"', add
label define co05a_age_lbl 063 `"63"', add
label define co05a_age_lbl 064 `"64"', add
label define co05a_age_lbl 065 `"65"', add
label define co05a_age_lbl 066 `"66"', add
label define co05a_age_lbl 067 `"67"', add
label define co05a_age_lbl 068 `"68"', add
label define co05a_age_lbl 069 `"69"', add
label define co05a_age_lbl 070 `"70"', add
label define co05a_age_lbl 071 `"71"', add
label define co05a_age_lbl 072 `"72"', add
label define co05a_age_lbl 073 `"73"', add
label define co05a_age_lbl 074 `"74"', add
label define co05a_age_lbl 075 `"75"', add
label define co05a_age_lbl 076 `"76"', add
label define co05a_age_lbl 077 `"77"', add
label define co05a_age_lbl 078 `"78"', add
label define co05a_age_lbl 079 `"79"', add
label define co05a_age_lbl 080 `"80"', add
label define co05a_age_lbl 081 `"81"', add
label define co05a_age_lbl 082 `"82"', add
label define co05a_age_lbl 083 `"83"', add
label define co05a_age_lbl 084 `"84"', add
label define co05a_age_lbl 085 `"85"', add
label define co05a_age_lbl 086 `"86"', add
label define co05a_age_lbl 087 `"87"', add
label define co05a_age_lbl 088 `"88"', add
label define co05a_age_lbl 089 `"89"', add
label define co05a_age_lbl 090 `"90"', add
label define co05a_age_lbl 091 `"91"', add
label define co05a_age_lbl 092 `"92"', add
label define co05a_age_lbl 093 `"93"', add
label define co05a_age_lbl 094 `"94"', add
label define co05a_age_lbl 095 `"95"', add
label define co05a_age_lbl 096 `"96"', add
label define co05a_age_lbl 097 `"97"', add
label define co05a_age_lbl 098 `"98"', add
label define co05a_age_lbl 099 `"99"', add
label define co05a_age_lbl 100 `"100"', add
label define co05a_age_lbl 101 `"101"', add
label define co05a_age_lbl 102 `"102"', add
label define co05a_age_lbl 103 `"103"', add
label define co05a_age_lbl 104 `"104"', add
label define co05a_age_lbl 105 `"105+"', add
label values co05a_age co05a_age_lbl

label define co05a_relate_lbl 01 `"Head of household"'
label define co05a_relate_lbl 02 `"Spouse (partner)"', add
label define co05a_relate_lbl 03 `"Son/daughter, stepson/stepdaughter"', add
label define co05a_relate_lbl 04 `"Son-in-law, daughter-in-law"', add
label define co05a_relate_lbl 05 `"Grandson/daughter"', add
label define co05a_relate_lbl 06 `"Father, mother, or father/mother-in-law"', add
label define co05a_relate_lbl 07 `"Brother/sister, step-brother/sister"', add
label define co05a_relate_lbl 08 `"Other relative"', add
label define co05a_relate_lbl 09 `"Domestic employee"', add
label define co05a_relate_lbl 10 `"Other non-relative"', add
label values co05a_relate co05a_relate_lbl

label define co05a_bplp_lbl 1 `"In this municipality"'
label define co05a_bplp_lbl 2 `"In another Colombian municipality"', add
label define co05a_bplp_lbl 3 `"In another country"', add
label define co05a_bplp_lbl 9 `"Unknown"', add
label values co05a_bplp co05a_bplp_lbl

label define co05a_bpld_lbl 005 `"Antioquia"'
label define co05a_bpld_lbl 008 `"Atlántico"', add
label define co05a_bpld_lbl 011 `"Bogotá"', add
label define co05a_bpld_lbl 013 `"Bolívar"', add
label define co05a_bpld_lbl 015 `"Boyacá"', add
label define co05a_bpld_lbl 017 `"Caldas"', add
label define co05a_bpld_lbl 018 `"Caquetá"', add
label define co05a_bpld_lbl 019 `"Cauca"', add
label define co05a_bpld_lbl 020 `"Cesar"', add
label define co05a_bpld_lbl 023 `"Córdoba"', add
label define co05a_bpld_lbl 025 `"Cundinamarca"', add
label define co05a_bpld_lbl 027 `"Chocó"', add
label define co05a_bpld_lbl 041 `"Huila"', add
label define co05a_bpld_lbl 044 `"La Guajira"', add
label define co05a_bpld_lbl 047 `"Magdalena"', add
label define co05a_bpld_lbl 050 `"Meta"', add
label define co05a_bpld_lbl 052 `"Nariño"', add
label define co05a_bpld_lbl 054 `"Norte de Santander"', add
label define co05a_bpld_lbl 063 `"Quindío"', add
label define co05a_bpld_lbl 066 `"Risaralda"', add
label define co05a_bpld_lbl 068 `"Santander"', add
label define co05a_bpld_lbl 070 `"Sucre"', add
label define co05a_bpld_lbl 073 `"Tolima"', add
label define co05a_bpld_lbl 076 `"Valle"', add
label define co05a_bpld_lbl 081 `"Arauca"', add
label define co05a_bpld_lbl 085 `"Casanare"', add
label define co05a_bpld_lbl 086 `"Putumayo"', add
label define co05a_bpld_lbl 088 `"San Andrés"', add
label define co05a_bpld_lbl 091 `"Amazonas"', add
label define co05a_bpld_lbl 094 `"Guainía"', add
label define co05a_bpld_lbl 095 `"Guaviare"', add
label define co05a_bpld_lbl 097 `"Vaupés"', add
label define co05a_bpld_lbl 099 `"Vichada"', add
label define co05a_bpld_lbl 998 `"Unknown"', add
label define co05a_bpld_lbl 999 `"NIU (not in universe)"', add
label values co05a_bpld co05a_bpld_lbl

label define co05a_bplc_lbl 023 `"Germany"'
label define co05a_bplc_lbl 063 `"Argentina"', add
label define co05a_bplc_lbl 087 `"Belgium"', add
label define co05a_bplc_lbl 097 `"Bolivia"', add
label define co05a_bplc_lbl 105 `"Brazil"', add
label define co05a_bplc_lbl 149 `"Canada"', add
label define co05a_bplc_lbl 196 `"Costa Rica"', add
label define co05a_bplc_lbl 199 `"Cuba"', add
label define co05a_bplc_lbl 211 `"Chile"', add
label define co05a_bplc_lbl 215 `"China"', add
label define co05a_bplc_lbl 232 `"Denmark"', add
label define co05a_bplc_lbl 239 `"Ecuador"', add
label define co05a_bplc_lbl 245 `"Spain"', add
label define co05a_bplc_lbl 249 `"United States"', add
label define co05a_bplc_lbl 275 `"France"', add
label define co05a_bplc_lbl 317 `"Guatemala"', add
label define co05a_bplc_lbl 345 `"Honduras"', add
label define co05a_bplc_lbl 383 `"Israel"', add
label define co05a_bplc_lbl 386 `"Italy"', add
label define co05a_bplc_lbl 399 `"Japan"', add
label define co05a_bplc_lbl 431 `"Lebanon"', add
label define co05a_bplc_lbl 493 `"Mexico"', add
label define co05a_bplc_lbl 521 `"Nicaragua"', add
label define co05a_bplc_lbl 580 `"Panama "', add
label define co05a_bplc_lbl 589 `"Perú"', add
label define co05a_bplc_lbl 611 `"Puerto Rico"', add
label define co05a_bplc_lbl 628 `"United Kingdom-Malvinas (Falkland), Islands"', add
label define co05a_bplc_lbl 647 `"Dominican Republic"', add
label define co05a_bplc_lbl 676 `"Russia, Federation of"', add
label define co05a_bplc_lbl 767 `"Switzerlan"', add
label define co05a_bplc_lbl 830 `"Ukraine"', add
label define co05a_bplc_lbl 845 `"Uruguay"', add
label define co05a_bplc_lbl 850 `"Venezuela"', add
label define co05a_bplc_lbl 990 `"Response suppressed"', add
label define co05a_bplc_lbl 998 `"Unknown"', add
label define co05a_bplc_lbl 999 `"NIU (not in universe)"', add
label values co05a_bplc co05a_bplc_lbl

label define co05a_arrivyr_lbl 1950 `"1950 or earlier"'
label define co05a_arrivyr_lbl 1951 `"1951"', add
label define co05a_arrivyr_lbl 1952 `"1952"', add
label define co05a_arrivyr_lbl 1953 `"1953"', add
label define co05a_arrivyr_lbl 1954 `"1954"', add
label define co05a_arrivyr_lbl 1955 `"1955"', add
label define co05a_arrivyr_lbl 1956 `"1956"', add
label define co05a_arrivyr_lbl 1957 `"1957"', add
label define co05a_arrivyr_lbl 1958 `"1958"', add
label define co05a_arrivyr_lbl 1959 `"1959"', add
label define co05a_arrivyr_lbl 1960 `"1960"', add
label define co05a_arrivyr_lbl 1961 `"1961"', add
label define co05a_arrivyr_lbl 1962 `"1962"', add
label define co05a_arrivyr_lbl 1963 `"1963"', add
label define co05a_arrivyr_lbl 1964 `"1964"', add
label define co05a_arrivyr_lbl 1965 `"1965"', add
label define co05a_arrivyr_lbl 1966 `"1966"', add
label define co05a_arrivyr_lbl 1967 `"1967"', add
label define co05a_arrivyr_lbl 1968 `"1968"', add
label define co05a_arrivyr_lbl 1969 `"1969"', add
label define co05a_arrivyr_lbl 1970 `"1970"', add
label define co05a_arrivyr_lbl 1971 `"1971"', add
label define co05a_arrivyr_lbl 1972 `"1972"', add
label define co05a_arrivyr_lbl 1973 `"1973"', add
label define co05a_arrivyr_lbl 1974 `"1974"', add
label define co05a_arrivyr_lbl 1975 `"1975"', add
label define co05a_arrivyr_lbl 1976 `"1976"', add
label define co05a_arrivyr_lbl 1977 `"1977"', add
label define co05a_arrivyr_lbl 1978 `"1978"', add
label define co05a_arrivyr_lbl 1979 `"1979"', add
label define co05a_arrivyr_lbl 1980 `"1980"', add
label define co05a_arrivyr_lbl 1981 `"1981"', add
label define co05a_arrivyr_lbl 1982 `"1982"', add
label define co05a_arrivyr_lbl 1983 `"1983"', add
label define co05a_arrivyr_lbl 1984 `"1984"', add
label define co05a_arrivyr_lbl 1985 `"1985"', add
label define co05a_arrivyr_lbl 1986 `"1986"', add
label define co05a_arrivyr_lbl 1987 `"1987"', add
label define co05a_arrivyr_lbl 1988 `"1988"', add
label define co05a_arrivyr_lbl 1989 `"1989"', add
label define co05a_arrivyr_lbl 1990 `"1990"', add
label define co05a_arrivyr_lbl 1991 `"1991"', add
label define co05a_arrivyr_lbl 1992 `"1992"', add
label define co05a_arrivyr_lbl 1993 `"1993"', add
label define co05a_arrivyr_lbl 1994 `"1994"', add
label define co05a_arrivyr_lbl 1995 `"1995"', add
label define co05a_arrivyr_lbl 1996 `"1996"', add
label define co05a_arrivyr_lbl 1997 `"1997"', add
label define co05a_arrivyr_lbl 1998 `"1998"', add
label define co05a_arrivyr_lbl 1999 `"1999"', add
label define co05a_arrivyr_lbl 2000 `"2000"', add
label define co05a_arrivyr_lbl 2001 `"2001"', add
label define co05a_arrivyr_lbl 2002 `"2002"', add
label define co05a_arrivyr_lbl 2003 `"2003"', add
label define co05a_arrivyr_lbl 2004 `"2004"', add
label define co05a_arrivyr_lbl 2005 `"2005"', add
label define co05a_arrivyr_lbl 9998 `"Unknown"', add
label define co05a_arrivyr_lbl 9999 `"NIU (not in universe)"', add
label values co05a_arrivyr co05a_arrivyr_lbl

label define co05a_bplpm_lbl 1 `"In the same municipality where he/she was born"'
label define co05a_bplpm_lbl 2 `"In another Colombian municipality"', add
label define co05a_bplpm_lbl 3 `"In another country"', add
label define co05a_bplpm_lbl 4 `"Does not know"', add
label define co05a_bplpm_lbl 9 `"Unknown"', add
label values co05a_bplpm co05a_bplpm_lbl

label define co05a_bpldm_lbl 00 `"NIU (not in universe)"'
label define co05a_bpldm_lbl 05 `"Antioquia"', add
label define co05a_bpldm_lbl 08 `"Atlántico"', add
label define co05a_bpldm_lbl 11 `"Bogotá"', add
label define co05a_bpldm_lbl 13 `"Bolívar"', add
label define co05a_bpldm_lbl 15 `"Boyacá"', add
label define co05a_bpldm_lbl 17 `"Caldas"', add
label define co05a_bpldm_lbl 18 `"Caquetá"', add
label define co05a_bpldm_lbl 19 `"Cauca"', add
label define co05a_bpldm_lbl 20 `"Cesar"', add
label define co05a_bpldm_lbl 23 `"Córdoba"', add
label define co05a_bpldm_lbl 25 `"Cundinamarca"', add
label define co05a_bpldm_lbl 27 `"Chocó"', add
label define co05a_bpldm_lbl 41 `"Huila"', add
label define co05a_bpldm_lbl 44 `"La Guajira"', add
label define co05a_bpldm_lbl 47 `"Magdalena"', add
label define co05a_bpldm_lbl 50 `"Meta"', add
label define co05a_bpldm_lbl 52 `"Nariño"', add
label define co05a_bpldm_lbl 54 `"Norte de Santander"', add
label define co05a_bpldm_lbl 63 `"Quindío"', add
label define co05a_bpldm_lbl 66 `"Risaralda"', add
label define co05a_bpldm_lbl 68 `"Santander"', add
label define co05a_bpldm_lbl 70 `"Sucre"', add
label define co05a_bpldm_lbl 73 `"Tolima"', add
label define co05a_bpldm_lbl 76 `"Valle"', add
label define co05a_bpldm_lbl 81 `"Arauca"', add
label define co05a_bpldm_lbl 85 `"Casanare"', add
label define co05a_bpldm_lbl 86 `"Putumayo"', add
label define co05a_bpldm_lbl 88 `"San Andrés"', add
label define co05a_bpldm_lbl 91 `"Amazonas"', add
label define co05a_bpldm_lbl 94 `"Guainía"', add
label define co05a_bpldm_lbl 95 `"Guaviare"', add
label define co05a_bpldm_lbl 97 `"Vaupés"', add
label define co05a_bpldm_lbl 99 `"Vichada"', add
label values co05a_bpldm co05a_bpldm_lbl

label define co05a_bplmc_lbl 023 `"Germany"'
label define co05a_bplmc_lbl 063 `"Argentina"', add
label define co05a_bplmc_lbl 239 `"Ecuador"', add
label define co05a_bplmc_lbl 245 `"Spain"', add
label define co05a_bplmc_lbl 249 `"United States"', add
label define co05a_bplmc_lbl 275 `"France"', add
label define co05a_bplmc_lbl 386 `"Italy"', add
label define co05a_bplmc_lbl 580 `"Panam "', add
label define co05a_bplmc_lbl 589 `"Perú"', add
label define co05a_bplmc_lbl 850 `"Venezuela"', add
label define co05a_bplmc_lbl 990 `"Response suppressed"', add
label define co05a_bplmc_lbl 998 `"Unknown"', add
label define co05a_bplmc_lbl 999 `"NIU (not in universe)"', add
label values co05a_bplmc co05a_bplmc_lbl

label define co05a_res5p_lbl 1 `"In this municipality"'
label define co05a_res5p_lbl 2 `"In another Colombian municipality"', add
label define co05a_res5p_lbl 3 `"In another country"', add
label define co05a_res5p_lbl 8 `"Unknown"', add
label define co05a_res5p_lbl 9 `"NIU (not in universe)"', add
label values co05a_res5p co05a_res5p_lbl

label define co05a_res5d_lbl 005 `"Antioquia"'
label define co05a_res5d_lbl 008 `"Atlántico"', add
label define co05a_res5d_lbl 011 `"Bogotá"', add
label define co05a_res5d_lbl 013 `"Bolívar"', add
label define co05a_res5d_lbl 015 `"Boyacá"', add
label define co05a_res5d_lbl 017 `"Caldas"', add
label define co05a_res5d_lbl 018 `"Caquetá"', add
label define co05a_res5d_lbl 019 `"Cauca"', add
label define co05a_res5d_lbl 020 `"Cesar"', add
label define co05a_res5d_lbl 023 `"Córdoba"', add
label define co05a_res5d_lbl 025 `"Cundinamarca"', add
label define co05a_res5d_lbl 027 `"Chocó"', add
label define co05a_res5d_lbl 041 `"Huila"', add
label define co05a_res5d_lbl 044 `"La Guajira"', add
label define co05a_res5d_lbl 047 `"Magdalena"', add
label define co05a_res5d_lbl 050 `"Meta"', add
label define co05a_res5d_lbl 052 `"Nariño"', add
label define co05a_res5d_lbl 054 `"Norte de Santander"', add
label define co05a_res5d_lbl 063 `"Quindío"', add
label define co05a_res5d_lbl 066 `"Risaralda"', add
label define co05a_res5d_lbl 068 `"Santander"', add
label define co05a_res5d_lbl 070 `"Sucre"', add
label define co05a_res5d_lbl 073 `"Tolima"', add
label define co05a_res5d_lbl 076 `"Valle"', add
label define co05a_res5d_lbl 081 `"Arauca"', add
label define co05a_res5d_lbl 085 `"Casanare"', add
label define co05a_res5d_lbl 086 `"Putumayo"', add
label define co05a_res5d_lbl 088 `"San Andrés"', add
label define co05a_res5d_lbl 091 `"Amazonas"', add
label define co05a_res5d_lbl 094 `"Guainía"', add
label define co05a_res5d_lbl 095 `"Guaviare"', add
label define co05a_res5d_lbl 097 `"Vaupés"', add
label define co05a_res5d_lbl 099 `"Vichada"', add
label define co05a_res5d_lbl 998 `"Unknown"', add
label define co05a_res5d_lbl 999 `"NIU (not in universe)"', add
label values co05a_res5d co05a_res5d_lbl

label define co05a_res5c_lbl 023 `"Germany"'
label define co05a_res5c_lbl 027 `"Aruba"', add
label define co05a_res5c_lbl 063 `"Argentina"', add
label define co05a_res5c_lbl 069 `"Australia"', add
label define co05a_res5c_lbl 097 `"Bolivia"', add
label define co05a_res5c_lbl 105 `"Brazil"', add
label define co05a_res5c_lbl 149 `"Canada"', add
label define co05a_res5c_lbl 196 `"Costa Rica"', add
label define co05a_res5c_lbl 199 `"Cuba"', add
label define co05a_res5c_lbl 211 `"Chile"', add
label define co05a_res5c_lbl 239 `"Ecuador"', add
label define co05a_res5c_lbl 245 `"Spain"', add
label define co05a_res5c_lbl 249 `"United States"', add
label define co05a_res5c_lbl 275 `"France"', add
label define co05a_res5c_lbl 317 `"Guatemala"', add
label define co05a_res5c_lbl 345 `"Honduras"', add
label define co05a_res5c_lbl 383 `"Israel"', add
label define co05a_res5c_lbl 386 `"Italy"', add
label define co05a_res5c_lbl 399 `"Japan"', add
label define co05a_res5c_lbl 493 `"Mexico"', add
label define co05a_res5c_lbl 580 `"Panama "', add
label define co05a_res5c_lbl 589 `"Perú"', add
label define co05a_res5c_lbl 628 `"United Kingdom-Malvinas (Falkland), Islands"', add
label define co05a_res5c_lbl 676 `"Russia, Federation of"', add
label define co05a_res5c_lbl 767 `"Switzerland"', add
label define co05a_res5c_lbl 850 `"Venezuela"', add
label define co05a_res5c_lbl 990 `"Response suppressed"', add
label define co05a_res5c_lbl 998 `"Unknown"', add
label define co05a_res5c_lbl 999 `"NIU (not in universe)"', add
label values co05a_res5c co05a_res5c_lbl

label define co05a_res5y_lbl 2000 `"2000"'
label define co05a_res5y_lbl 2001 `"2001"', add
label define co05a_res5y_lbl 2002 `"2002"', add
label define co05a_res5y_lbl 2003 `"2003"', add
label define co05a_res5y_lbl 2004 `"2004"', add
label define co05a_res5y_lbl 2005 `"2005"', add
label define co05a_res5y_lbl 9998 `"Unknown"', add
label define co05a_res5y_lbl 9999 `"NIU (not in universe)"', add
label values co05a_res5y co05a_res5y_lbl

label define co05a_geocp_lbl 1 `"Municipal capital/seat"'
label define co05a_geocp_lbl 2 `"Population center"', add
label define co05a_geocp_lbl 3 `"Rest of rural"', add
label define co05a_geocp_lbl 8 `"Unknown"', add
label define co05a_geocp_lbl 9 `"NIU (not in universe)"', add
label values co05a_geocp co05a_geocp_lbl

label define co05a_mv5_lbl 1 `"Yes"'
label define co05a_mv5_lbl 2 `"No"', add
label define co05a_mv5_lbl 9 `"Unknown"', add
label values co05a_mv5 co05a_mv5_lbl

label define co05a_mvyr_lbl 2000 `"2000"'
label define co05a_mvyr_lbl 2001 `"2001"', add
label define co05a_mvyr_lbl 2002 `"2002"', add
label define co05a_mvyr_lbl 2003 `"2003"', add
label define co05a_mvyr_lbl 2004 `"2004"', add
label define co05a_mvyr_lbl 2005 `"2005"', add
label define co05a_mvyr_lbl 9998 `"Unknown"', add
label define co05a_mvyr_lbl 9999 `"NIU (not in universe)"', add
label values co05a_mvyr co05a_mvyr_lbl

label define co05a_mvp_lbl 1 `"In this municipality"'
label define co05a_mvp_lbl 2 `"In another Colombian municipality"', add
label define co05a_mvp_lbl 3 `"In another country"', add
label define co05a_mvp_lbl 8 `"Unknown"', add
label define co05a_mvp_lbl 9 `"NIU (not in universe)"', add
label values co05a_mvp co05a_mvp_lbl

label define co05a_mvd_lbl 000 `"NIU (not in universe)"'
label define co05a_mvd_lbl 005 `"Antioquia"', add
label define co05a_mvd_lbl 008 `"Atlántico"', add
label define co05a_mvd_lbl 011 `"Bogotá"', add
label define co05a_mvd_lbl 013 `"Bolívar"', add
label define co05a_mvd_lbl 015 `"Boyacá"', add
label define co05a_mvd_lbl 017 `"Caldas"', add
label define co05a_mvd_lbl 018 `"Caquetá"', add
label define co05a_mvd_lbl 019 `"Cauca"', add
label define co05a_mvd_lbl 020 `"Cesar"', add
label define co05a_mvd_lbl 023 `"Córdoba"', add
label define co05a_mvd_lbl 025 `"Cundinamarca"', add
label define co05a_mvd_lbl 027 `"Chocó"', add
label define co05a_mvd_lbl 041 `"Huila"', add
label define co05a_mvd_lbl 044 `"La Guajira"', add
label define co05a_mvd_lbl 047 `"Magdalena"', add
label define co05a_mvd_lbl 050 `"Meta"', add
label define co05a_mvd_lbl 052 `"Nariño"', add
label define co05a_mvd_lbl 054 `"Norte de Santander"', add
label define co05a_mvd_lbl 063 `"Quindío"', add
label define co05a_mvd_lbl 066 `"Risaralda"', add
label define co05a_mvd_lbl 068 `"Santander"', add
label define co05a_mvd_lbl 070 `"Sucre"', add
label define co05a_mvd_lbl 073 `"Tolima"', add
label define co05a_mvd_lbl 076 `"Valle"', add
label define co05a_mvd_lbl 081 `"Arauca"', add
label define co05a_mvd_lbl 085 `"Casanare"', add
label define co05a_mvd_lbl 086 `"Putumayo"', add
label define co05a_mvd_lbl 088 `"San Andrés"', add
label define co05a_mvd_lbl 091 `"Amazonas"', add
label define co05a_mvd_lbl 094 `"Guainía"', add
label define co05a_mvd_lbl 095 `"Guaviare"', add
label define co05a_mvd_lbl 097 `"Vaupés"', add
label define co05a_mvd_lbl 099 `"Vichada"', add
label define co05a_mvd_lbl 999 `"Unknown"', add
label values co05a_mvd co05a_mvd_lbl

label define co05a_mvcl_lbl 1 `"Municipal capital/seat"'
label define co05a_mvcl_lbl 2 `"Rural zone"', add
label define co05a_mvcl_lbl 8 `"Unknown"', add
label define co05a_mvcl_lbl 9 `"NIU (not in universe)"', add
label values co05a_mvcl co05a_mvcl_lbl

label define co05a_mvc_lbl 023 `"Germany"'
label define co05a_mvc_lbl 027 `"Aruba"', add
label define co05a_mvc_lbl 063 `"Argentina"', add
label define co05a_mvc_lbl 069 `"Australia"', add
label define co05a_mvc_lbl 072 `"Austria"', add
label define co05a_mvc_lbl 105 `"Brazil"', add
label define co05a_mvc_lbl 149 `"Canada"', add
label define co05a_mvc_lbl 196 `"Costa Rica"', add
label define co05a_mvc_lbl 199 `"Cuba"', add
label define co05a_mvc_lbl 211 `"Chile"', add
label define co05a_mvc_lbl 239 `"Ecuador"', add
label define co05a_mvc_lbl 245 `"Spain"', add
label define co05a_mvc_lbl 249 `"United States"', add
label define co05a_mvc_lbl 275 `"France"', add
label define co05a_mvc_lbl 383 `"Israel"', add
label define co05a_mvc_lbl 386 `"Italy"', add
label define co05a_mvc_lbl 399 `"Japan"', add
label define co05a_mvc_lbl 493 `"Mexico"', add
label define co05a_mvc_lbl 573 `"Holland"', add
label define co05a_mvc_lbl 580 `"Panama "', add
label define co05a_mvc_lbl 589 `"Perú"', add
label define co05a_mvc_lbl 628 `"United Kingdom-Malvinas (Falkland), Islands"', add
label define co05a_mvc_lbl 647 `"Dominican Republic"', add
label define co05a_mvc_lbl 676 `"Russia, Federation of"', add
label define co05a_mvc_lbl 767 `"Switzerland"', add
label define co05a_mvc_lbl 850 `"Venezuela"', add
label define co05a_mvc_lbl 990 `"Response suppressed"', add
label define co05a_mvc_lbl 998 `"Unknown"', add
label define co05a_mvc_lbl 999 `"NIU (not in universe)"', add
label values co05a_mvc co05a_mvc_lbl

label define co05a_mvwhy_lbl 1 `"Difficulty in finding employment"'
label define co05a_mvwhy_lbl 2 `"Threat of natural disaster"', add
label define co05a_mvwhy_lbl 3 `"Threat against his/her life"', add
label define co05a_mvwhy_lbl 4 `"Educational needs"', add
label define co05a_mvwhy_lbl 5 `"Health reasons"', add
label define co05a_mvwhy_lbl 6 `"Family reasons"', add
label define co05a_mvwhy_lbl 7 `"Member of nomad tribe or another reason"', add
label define co05a_mvwhy_lbl 8 `"Unknown"', add
label define co05a_mvwhy_lbl 9 `"NIU (not in universe)"', add
label values co05a_mvwhy co05a_mvwhy_lbl

label define co05a_ethnic_lbl 1 `"Indigenous"'
label define co05a_ethnic_lbl 2 `"Rom"', add
label define co05a_ethnic_lbl 3 `"Raizal de San Andrés and Providencia"', add
label define co05a_ethnic_lbl 4 `"Palenquero"', add
label define co05a_ethnic_lbl 5 `"Negro, mulatto, African Columbian"', add
label define co05a_ethnic_lbl 6 `"None of the above"', add
label define co05a_ethnic_lbl 9 `"Unknown"', add
label values co05a_ethnic co05a_ethnic_lbl

label define co05a_indig_lbl 04 `"Arhuaco"'
label define co05a_indig_lbl 05 `"Arzario"', add
label define co05a_indig_lbl 08 `"Bari"', add
label define co05a_indig_lbl 18 `"Coconuco"', add
label define co05a_indig_lbl 20 `"Coyaima Natagaima"', add
label define co05a_indig_lbl 21 `"Awa Kuaiker"', add
label define co05a_indig_lbl 22 `"Kubeo"', add
label define co05a_indig_lbl 25 `"Kurripako"', add
label define co05a_indig_lbl 28 `"Embera"', add
label define co05a_indig_lbl 29 `"Guambiano"', add
label define co05a_indig_lbl 33 `"Cañamomo"', add
label define co05a_indig_lbl 34 `"Inga"', add
label define co05a_indig_lbl 35 `"Kamontsa"', add
label define co05a_indig_lbl 37 `"Kogui"', add
label define co05a_indig_lbl 47 `"Muisca"', add
label define co05a_indig_lbl 50 `"Nasa"', add
label define co05a_indig_lbl 51 `"Tzase"', add
label define co05a_indig_lbl 55 `"Puinave"', add
label define co05a_indig_lbl 56 `"Pasto"', add
label define co05a_indig_lbl 57 `"Saliba"', add
label define co05a_indig_lbl 58 `"Sikuani"', add
label define co05a_indig_lbl 65 `"Totoro"', add
label define co05a_indig_lbl 66 `"Tikuna"', add
label define co05a_indig_lbl 69 `"Uwa"', add
label define co05a_indig_lbl 71 `"Waunan"', add
label define co05a_indig_lbl 72 `"Wayuu"', add
label define co05a_indig_lbl 73 `"Uitoto"', add
label define co05a_indig_lbl 75 `"Yanacona"', add
label define co05a_indig_lbl 78 `"Yuko"', add
label define co05a_indig_lbl 80 `"Senu"', add
label define co05a_indig_lbl 82 `"Mokana"', add
label define co05a_indig_lbl 85 `"Kamkuamo"', add
label define co05a_indig_lbl 95 `"Response suppressed"', add
label define co05a_indig_lbl 97 `"Indigenous, not specified"', add
label define co05a_indig_lbl 99 `"NIU (not in universe)"', add
label values co05a_indig co05a_indig_lbl

label define co05a_langind_lbl 1 `"Yes"'
label define co05a_langind_lbl 2 `"No"', add
label define co05a_langind_lbl 8 `"Unknown"', add
label define co05a_langind_lbl 9 `"NIU (not in universe)"', add
label values co05a_langind co05a_langind_lbl

label define co05a_nofood_lbl 1 `"Yes"'
label define co05a_nofood_lbl 2 `"No"', add
label define co05a_nofood_lbl 9 `"Unknown"', add
label values co05a_nofood co05a_nofood_lbl

label define co05a_hcare_lbl 1 `"Social Security Institute (ISS)"'
label define co05a_hcare_lbl 2 `"Special regiments"', add
label define co05a_hcare_lbl 3 `"Other EPS"', add
label define co05a_hcare_lbl 4 `"An ARS"', add
label define co05a_hcare_lbl 5 `"None"', add
label define co05a_hcare_lbl 6 `"Respondent does not know"', add
label define co05a_hcare_lbl 9 `"Unknown"', add
label values co05a_hcare co05a_hcare_lbl

label define co05a_ill_lbl 1 `"Yes"'
label define co05a_ill_lbl 2 `"No"', add
label define co05a_ill_lbl 9 `"Unknown"', add
label values co05a_ill co05a_ill_lbl

label define co05a_md_lbl 1 `"The service to which he/she has a right"'
label define co05a_md_lbl 2 `"Another hospital, clinic"', add
label define co05a_md_lbl 3 `"A drug store, healer or curandero"', add
label define co05a_md_lbl 4 `"Traditional doctor of her/his ethnic group"', add
label define co05a_md_lbl 5 `"No place"', add
label define co05a_md_lbl 8 `"Unknown"', add
label define co05a_md_lbl 9 `"NIU (not in universe)"', add
label values co05a_md co05a_md_lbl

label define co05a_mdcar_lbl 1 `"Yes"'
label define co05a_mdcar_lbl 2 `"No"', add
label define co05a_mdcar_lbl 9 `"Unknown"', add
label values co05a_mdcar co05a_mdcar_lbl

label define co05a_mdcars_lbl 1 `"Yes"'
label define co05a_mdcars_lbl 2 `"No"', add
label define co05a_mdcars_lbl 8 `"Unknown"', add
label define co05a_mdcars_lbl 9 `"NIU (not in universe)"', add
label values co05a_mdcars co05a_mdcars_lbl

label define co05a_mdorg_lbl 1 `"Yes"'
label define co05a_mdorg_lbl 2 `"No"', add
label define co05a_mdorg_lbl 9 `"Unknown"', add
label values co05a_mdorg co05a_mdorg_lbl

label define co05a_mdneu_lbl 1 `"Yes"'
label define co05a_mdneu_lbl 2 `"No"', add
label define co05a_mdneu_lbl 9 `"Unknown"', add
label values co05a_mdneu co05a_mdneu_lbl

label define co05a_mdneus_lbl 1 `"Yes"'
label define co05a_mdneus_lbl 2 `"No"', add
label define co05a_mdneus_lbl 8 `"Unknown"', add
label define co05a_mdneus_lbl 9 `"NIU (not in universe)"', add
label values co05a_mdneus co05a_mdneus_lbl

label define co05a_mdtra_lbl 1 `"Yes"'
label define co05a_mdtra_lbl 2 `"No"', add
label define co05a_mdtra_lbl 9 `"Unknown"', add
label values co05a_mdtra co05a_mdtra_lbl

label define co05a_mdtras_lbl 1 `"Yes"'
label define co05a_mdtras_lbl 2 `"No"', add
label define co05a_mdtras_lbl 8 `"Unknown"', add
label define co05a_mdtras_lbl 9 `"NIU (not in universe)"', add
label values co05a_mdtras co05a_mdtras_lbl

label define co05a_mdcon_lbl 1 `"Yes"'
label define co05a_mdcon_lbl 2 `"No"', add
label define co05a_mdcon_lbl 9 `"Unknown"', add
label values co05a_mdcon co05a_mdcon_lbl

label define co05a_mdcons_lbl 1 `"Yes"'
label define co05a_mdcons_lbl 2 `"No"', add
label define co05a_mdcons_lbl 8 `"Unknown"', add
label define co05a_mdcons_lbl 9 `"NIU (not in universe)"', add
label values co05a_mdcons co05a_mdcons_lbl

label define co05a_mdjoi_lbl 1 `"Yes"'
label define co05a_mdjoi_lbl 2 `"No"', add
label define co05a_mdjoi_lbl 9 `"Unknown"', add
label values co05a_mdjoi co05a_mdjoi_lbl

label define co05a_mdjois_lbl 1 `"Yes"'
label define co05a_mdjois_lbl 2 `"No"', add
label define co05a_mdjois_lbl 8 `"Unknown"', add
label define co05a_mdjois_lbl 9 `"NIU (not in universe)"', add
label values co05a_mdjois co05a_mdjois_lbl

label define co05a_mddia_lbl 1 `"Yes"'
label define co05a_mddia_lbl 2 `"No"', add
label define co05a_mddia_lbl 9 `"Unknown"', add
label values co05a_mddia co05a_mddia_lbl

label define co05a_mddias_lbl 1 `"Yes"'
label define co05a_mddias_lbl 2 `"No"', add
label define co05a_mddias_lbl 8 `"Unknown"', add
label define co05a_mddias_lbl 9 `"NIU (not in universe)"', add
label values co05a_mddias co05a_mddias_lbl

label define co05a_mdbur_lbl 1 `"Yes"'
label define co05a_mdbur_lbl 2 `"No"', add
label define co05a_mdbur_lbl 9 `"Unknown"', add
label values co05a_mdbur co05a_mdbur_lbl

label define co05a_mdburs_lbl 1 `"Yes"'
label define co05a_mdburs_lbl 2 `"No"', add
label define co05a_mdburs_lbl 8 `"Unknown"', add
label define co05a_mdburs_lbl 9 `"NIU (not in universe)"', add
label values co05a_mdburs co05a_mdburs_lbl

label define co05a_mdaids_lbl 1 `"Yes"'
label define co05a_mdaids_lbl 2 `"No"', add
label define co05a_mdaids_lbl 8 `"Unknown"', add
label define co05a_mdaids_lbl 9 `"NIU (not in universe)"', add
label values co05a_mdaids co05a_mdaids_lbl

label define co05a_mdche_lbl 1 `"Yes"'
label define co05a_mdche_lbl 2 `"No"', add
label define co05a_mdche_lbl 9 `"Unknown"', add
label values co05a_mdche co05a_mdche_lbl

label define co05a_mdches_lbl 1 `"Yes"'
label define co05a_mdches_lbl 2 `"No"', add
label define co05a_mdches_lbl 8 `"Unknown"', add
label define co05a_mdches_lbl 9 `"NIU (not in universe)"', add
label values co05a_mdches co05a_mdches_lbl

label define co05a_mdint_lbl 1 `"Yes"'
label define co05a_mdint_lbl 2 `"No"', add
label define co05a_mdint_lbl 9 `"Unknown"', add
label values co05a_mdint co05a_mdint_lbl

label define co05a_mdints_lbl 1 `"Yes"'
label define co05a_mdints_lbl 2 `"No"', add
label define co05a_mdints_lbl 8 `"Unknown"', add
label define co05a_mdints_lbl 9 `"NIU (not in universe)"', add
label values co05a_mdints co05a_mdints_lbl

label define co05a_limwal_lbl 1 `"Yes"'
label define co05a_limwal_lbl 2 `"No"', add
label define co05a_limwal_lbl 9 `"Unknown"', add
label values co05a_limwal co05a_limwal_lbl

label define co05a_limvis_lbl 1 `"Yes"'
label define co05a_limvis_lbl 2 `"No"', add
label define co05a_limvis_lbl 9 `"Unknown"', add
label values co05a_limvis co05a_limvis_lbl

label define co05a_limhea_lbl 1 `"Yes"'
label define co05a_limhea_lbl 2 `"No"', add
label define co05a_limhea_lbl 9 `"Unknown"', add
label values co05a_limhea co05a_limhea_lbl

label define co05a_limspe_lbl 1 `"Yes"'
label define co05a_limspe_lbl 2 `"No"', add
label define co05a_limspe_lbl 9 `"Unknown"', add
label values co05a_limspe co05a_limspe_lbl

label define co05a_limlea_lbl 1 `"Yes"'
label define co05a_limlea_lbl 2 `"No"', add
label define co05a_limlea_lbl 9 `"Unknown"', add
label values co05a_limlea co05a_limlea_lbl

label define co05a_limsoc_lbl 1 `"Yes"'
label define co05a_limsoc_lbl 2 `"No"', add
label define co05a_limsoc_lbl 9 `"Unknown"', add
label values co05a_limsoc co05a_limsoc_lbl

label define co05a_limbat_lbl 1 `"Yes"'
label define co05a_limbat_lbl 2 `"No"', add
label define co05a_limbat_lbl 9 `"Unknown"', add
label values co05a_limbat co05a_limbat_lbl

label define co05a_limoth_lbl 1 `"Yes"'
label define co05a_limoth_lbl 2 `"No"', add
label define co05a_limoth_lbl 9 `"Unknown"', add
label values co05a_limoth co05a_limoth_lbl

label define co05a_limper_lbl 01 `"Movement or walking"'
label define co05a_limper_lbl 02 `"Using arms or hands"', add
label define co05a_limper_lbl 03 `"Sight, despite using glasses"', add
label define co05a_limper_lbl 04 `"Hearing, even with special appliances"', add
label define co05a_limper_lbl 05 `"Speech"', add
label define co05a_limper_lbl 06 `"Understanding or learning"', add
label define co05a_limper_lbl 07 `"Relationships with others"', add
label define co05a_limper_lbl 08 `"Bath oneself, dress oneself, feed himself/herself"', add
label define co05a_limper_lbl 09 `"Other permanent limitation"', add
label define co05a_limper_lbl 98 `"Unknown"', add
label define co05a_limper_lbl 99 `"NIU (not in universe)"', add
label values co05a_limper co05a_limper_lbl

label define co05a_limperc_lbl 01 `"Born with it"'
label define co05a_limperc_lbl 02 `"Due to an illness"', add
label define co05a_limperc_lbl 03 `"Due to an accident"', add
label define co05a_limperc_lbl 04 `"Due to violence of armed groups"', add
label define co05a_limperc_lbl 05 `"Due to domestic violence"', add
label define co05a_limperc_lbl 06 `"Due to violence of common delinquency"', add
label define co05a_limperc_lbl 07 `"Due to advanced age"', add
label define co05a_limperc_lbl 08 `"Due to other cause"', add
label define co05a_limperc_lbl 09 `"Respondent does not know"', add
label define co05a_limperc_lbl 98 `"Unknown"', add
label define co05a_limperc_lbl 99 `"NIU (not in universe)"', add
label values co05a_limperc co05a_limperc_lbl

label define co05a_lit_lbl 1 `"Yes"'
label define co05a_lit_lbl 2 `"No"', add
label define co05a_lit_lbl 8 `"Unknown"', add
label define co05a_lit_lbl 9 `"NIU (not in universe)"', add
label values co05a_lit co05a_lit_lbl

label define co05a_books_lbl 00 `"None"'
label define co05a_books_lbl 01 `"1"', add
label define co05a_books_lbl 02 `"2"', add
label define co05a_books_lbl 03 `"3"', add
label define co05a_books_lbl 04 `"4"', add
label define co05a_books_lbl 05 `"5"', add
label define co05a_books_lbl 06 `"6"', add
label define co05a_books_lbl 07 `"7"', add
label define co05a_books_lbl 08 `"8"', add
label define co05a_books_lbl 09 `"9"', add
label define co05a_books_lbl 10 `"10"', add
label define co05a_books_lbl 11 `"11"', add
label define co05a_books_lbl 12 `"12"', add
label define co05a_books_lbl 13 `"13"', add
label define co05a_books_lbl 14 `"14"', add
label define co05a_books_lbl 15 `"15"', add
label define co05a_books_lbl 16 `"16"', add
label define co05a_books_lbl 17 `"17"', add
label define co05a_books_lbl 18 `"18"', add
label define co05a_books_lbl 19 `"19"', add
label define co05a_books_lbl 20 `"20"', add
label define co05a_books_lbl 21 `"21"', add
label define co05a_books_lbl 22 `"22"', add
label define co05a_books_lbl 23 `"23"', add
label define co05a_books_lbl 24 `"24"', add
label define co05a_books_lbl 25 `"25"', add
label define co05a_books_lbl 26 `"26"', add
label define co05a_books_lbl 27 `"27"', add
label define co05a_books_lbl 28 `"28"', add
label define co05a_books_lbl 29 `"29"', add
label define co05a_books_lbl 30 `"30"', add
label define co05a_books_lbl 32 `"32"', add
label define co05a_books_lbl 33 `"33"', add
label define co05a_books_lbl 34 `"34"', add
label define co05a_books_lbl 35 `"35"', add
label define co05a_books_lbl 36 `"36"', add
label define co05a_books_lbl 37 `"37"', add
label define co05a_books_lbl 38 `"38"', add
label define co05a_books_lbl 40 `"40"', add
label define co05a_books_lbl 42 `"42"', add
label define co05a_books_lbl 45 `"45"', add
label define co05a_books_lbl 46 `"46"', add
label define co05a_books_lbl 48 `"48"', add
label define co05a_books_lbl 49 `"49"', add
label define co05a_books_lbl 50 `"50+"', add
label define co05a_books_lbl 98 `"Unknown"', add
label define co05a_books_lbl 99 `"NIU (not in universe)"', add
label values co05a_books co05a_books_lbl

label define co05a_sch_lbl 1 `"Yes"'
label define co05a_sch_lbl 2 `"No"', add
label define co05a_sch_lbl 8 `"Unknown"', add
label define co05a_sch_lbl 9 `"NIU (not in universe)"', add
label values co05a_sch co05a_sch_lbl

label define co05a_schpub_lbl 1 `"Yes"'
label define co05a_schpub_lbl 2 `"No"', add
label define co05a_schpub_lbl 8 `"Unknown"', add
label define co05a_schpub_lbl 9 `"NIU (not in universe)"', add
label values co05a_schpub co05a_schpub_lbl

label define co05a_schcom_lbl 1 `"Yes"'
label define co05a_schcom_lbl 2 `"No"', add
label define co05a_schcom_lbl 8 `"Unknown"', add
label define co05a_schcom_lbl 9 `"NIU (not in universe)"', add
label values co05a_schcom co05a_schcom_lbl

label define co05a_schcos_lbl 1 `"Yes"'
label define co05a_schcos_lbl 2 `"No"', add
label define co05a_schcos_lbl 8 `"Unknown"', add
label define co05a_schcos_lbl 9 `"NIU (not in universe)"', add
label values co05a_schcos co05a_schcos_lbl

label define co05a_schwor_lbl 1 `"Yes"'
label define co05a_schwor_lbl 2 `"No"', add
label define co05a_schwor_lbl 8 `"Unknown"', add
label define co05a_schwor_lbl 9 `"NIU (not in universe)"', add
label values co05a_schwor co05a_schwor_lbl

label define co05a_schspa_lbl 1 `"Yes"'
label define co05a_schspa_lbl 2 `"No"', add
label define co05a_schspa_lbl 8 `"Unknown"', add
label define co05a_schspa_lbl 9 `"NIU (not in universe)"', add
label values co05a_schspa co05a_schspa_lbl

label define co05a_schdis_lbl 1 `"Yes"'
label define co05a_schdis_lbl 2 `"No"', add
label define co05a_schdis_lbl 8 `"Unknown"', add
label define co05a_schdis_lbl 9 `"NIU (not in universe)"', add
label values co05a_schdis co05a_schdis_lbl

label define co05a_schill_lbl 1 `"Yes"'
label define co05a_schill_lbl 2 `"No"', add
label define co05a_schill_lbl 8 `"Unknown"', add
label define co05a_schill_lbl 9 `"NIU (not in universe)"', add
label values co05a_schill co05a_schill_lbl

label define co05a_schpre_lbl 1 `"Yes"'
label define co05a_schpre_lbl 2 `"No"', add
label define co05a_schpre_lbl 8 `"Unknown"', add
label define co05a_schpre_lbl 9 `"NIU (not in universe)"', add
label values co05a_schpre co05a_schpre_lbl

label define co05a_schoth_lbl 1 `"Yes"'
label define co05a_schoth_lbl 2 `"No"', add
label define co05a_schoth_lbl 8 `"Unknown"', add
label define co05a_schoth_lbl 9 `"NIU (not in universe)"', add
label values co05a_schoth co05a_schoth_lbl

label define co05a_schloc_lbl 1 `"This municipality"'
label define co05a_schloc_lbl 2 `"Other municipality"', add
label define co05a_schloc_lbl 8 `"Unknown"', add
label define co05a_schloc_lbl 9 `"NIU (not in universe)"', add
label values co05a_schloc co05a_schloc_lbl

label define co05a_schlocd_lbl 005 `"Antioquia"'
label define co05a_schlocd_lbl 008 `"Atlántico"', add
label define co05a_schlocd_lbl 011 `"Bogotá"', add
label define co05a_schlocd_lbl 013 `"Bolívar"', add
label define co05a_schlocd_lbl 015 `"Boyacá"', add
label define co05a_schlocd_lbl 017 `"Caldas"', add
label define co05a_schlocd_lbl 018 `"Caquetá"', add
label define co05a_schlocd_lbl 019 `"Cauca"', add
label define co05a_schlocd_lbl 020 `"Cesar"', add
label define co05a_schlocd_lbl 023 `"Córdoba"', add
label define co05a_schlocd_lbl 025 `"Cundinamarca"', add
label define co05a_schlocd_lbl 027 `"Chocó"', add
label define co05a_schlocd_lbl 041 `"Huila"', add
label define co05a_schlocd_lbl 044 `"La Guajira"', add
label define co05a_schlocd_lbl 047 `"Magdalena"', add
label define co05a_schlocd_lbl 050 `"Meta"', add
label define co05a_schlocd_lbl 052 `"Nariño"', add
label define co05a_schlocd_lbl 054 `"Norte de Santander"', add
label define co05a_schlocd_lbl 063 `"Quindío"', add
label define co05a_schlocd_lbl 066 `"Risaralda"', add
label define co05a_schlocd_lbl 068 `"Santander"', add
label define co05a_schlocd_lbl 070 `"Sucre"', add
label define co05a_schlocd_lbl 073 `"Tolima"', add
label define co05a_schlocd_lbl 076 `"Valle"', add
label define co05a_schlocd_lbl 081 `"Arauca"', add
label define co05a_schlocd_lbl 085 `"Casanare"', add
label define co05a_schlocd_lbl 086 `"Putumayo"', add
label define co05a_schlocd_lbl 088 `"San Andrés"', add
label define co05a_schlocd_lbl 091 `"Amazonas"', add
label define co05a_schlocd_lbl 094 `"Guainía"', add
label define co05a_schlocd_lbl 095 `"Guaviare"', add
label define co05a_schlocd_lbl 097 `"Vaupés"', add
label define co05a_schlocd_lbl 099 `"Vichada"', add
label define co05a_schlocd_lbl 998 `"Unknown"', add
label define co05a_schlocd_lbl 999 `"NIU (not in universe)"', add
label values co05a_schlocd co05a_schlocd_lbl

label define co05a_edlev_lbl 01 `"Pre school"'
label define co05a_edlev_lbl 02 `"Basic elementary"', add
label define co05a_edlev_lbl 03 `"Basic secondary"', add
label define co05a_edlev_lbl 04 `"Upper academic secondary"', add
label define co05a_edlev_lbl 05 `"Upper technical secondary"', add
label define co05a_edlev_lbl 06 `"Teacher's training"', add
label define co05a_edlev_lbl 07 `"Professional technical"', add
label define co05a_edlev_lbl 08 `"Technological"', add
label define co05a_edlev_lbl 09 `"Professional"', add
label define co05a_edlev_lbl 10 `"Specialization"', add
label define co05a_edlev_lbl 11 `"Masters"', add
label define co05a_edlev_lbl 12 `"Doctorate"', add
label define co05a_edlev_lbl 13 `"None"', add
label define co05a_edlev_lbl 98 `"Unknown"', add
label define co05a_edlev_lbl 99 `"NIU (not in universe)"', add
label values co05a_edlev co05a_edlev_lbl

label define co05a_grade_lbl 0 `"0 years"'
label define co05a_grade_lbl 1 `"1 year"', add
label define co05a_grade_lbl 2 `"2 years"', add
label define co05a_grade_lbl 3 `"3 years"', add
label define co05a_grade_lbl 4 `"4 years"', add
label define co05a_grade_lbl 5 `"5 years"', add
label define co05a_grade_lbl 6 `"6 years"', add
label define co05a_grade_lbl 8 `"Unknown"', add
label define co05a_grade_lbl 9 `"NIU (not in universe)"', add
label values co05a_grade co05a_grade_lbl

label define co05a_edattan_lbl 011 `"Preschool (pre-kindergarten)"'
label define co05a_edattan_lbl 012 `"Preschool (kindergarten)"', add
label define co05a_edattan_lbl 013 `"Preschool (transition)"', add
label define co05a_edattan_lbl 019 `"Preschool, year unknown"', add
label define co05a_edattan_lbl 021 `"Basic elementary 1"', add
label define co05a_edattan_lbl 022 `"Basic elementary 2"', add
label define co05a_edattan_lbl 023 `"Basic elementary 3"', add
label define co05a_edattan_lbl 024 `"Basic elementary 4"', add
label define co05a_edattan_lbl 025 `"Basic elemenary 5"', add
label define co05a_edattan_lbl 029 `"Basic elementary, year unknow"', add
label define co05a_edattan_lbl 031 `"Basic secondary 6"', add
label define co05a_edattan_lbl 032 `"Basic secondary 7"', add
label define co05a_edattan_lbl 033 `"Basic secondary 8"', add
label define co05a_edattan_lbl 034 `"Basic secondary 9"', add
label define co05a_edattan_lbl 039 `"Basic secondary, year unknown"', add
label define co05a_edattan_lbl 041 `"Upper academic secondary 10"', add
label define co05a_edattan_lbl 042 `"Upper academic secondary 11"', add
label define co05a_edattan_lbl 049 `"Upper academic secondary, year unknown"', add
label define co05a_edattan_lbl 051 `"Upper technical secondary 10"', add
label define co05a_edattan_lbl 052 `"Upper technical secondary 11"', add
label define co05a_edattan_lbl 059 `"Upper technical secondary, year unknown"', add
label define co05a_edattan_lbl 061 `"Teacher's training 10"', add
label define co05a_edattan_lbl 062 `"Teacher's training 11"', add
label define co05a_edattan_lbl 063 `"Teacher's training 12"', add
label define co05a_edattan_lbl 064 `"Teacher's training 13"', add
label define co05a_edattan_lbl 069 `"Teacher's training, year unknown"', add
label define co05a_edattan_lbl 071 `"Professional technical 1"', add
label define co05a_edattan_lbl 072 `"Professional technical 2"', add
label define co05a_edattan_lbl 079 `"Professional technical, year unknown"', add
label define co05a_edattan_lbl 081 `"Technological 1"', add
label define co05a_edattan_lbl 082 `"Technological 2"', add
label define co05a_edattan_lbl 083 `"Technological 3"', add
label define co05a_edattan_lbl 089 `"Technological, year unknown"', add
label define co05a_edattan_lbl 091 `"Professional 1"', add
label define co05a_edattan_lbl 092 `"Professional 2"', add
label define co05a_edattan_lbl 093 `"Professional 3"', add
label define co05a_edattan_lbl 094 `"Professional 4"', add
label define co05a_edattan_lbl 095 `"Professional 5"', add
label define co05a_edattan_lbl 096 `"Professional 6"', add
label define co05a_edattan_lbl 099 `"Professional, year unknown"', add
label define co05a_edattan_lbl 101 `"Specialization 1"', add
label define co05a_edattan_lbl 102 `"Specialization 2"', add
label define co05a_edattan_lbl 109 `"Specialization, year unknown"', add
label define co05a_edattan_lbl 111 `"Masters 1"', add
label define co05a_edattan_lbl 112 `"Masters 2"', add
label define co05a_edattan_lbl 113 `"Masters 3"', add
label define co05a_edattan_lbl 119 `"Masters, year unknown"', add
label define co05a_edattan_lbl 121 `"Doctorate 1"', add
label define co05a_edattan_lbl 122 `"Doctorate 2"', add
label define co05a_edattan_lbl 123 `"Doctorate 3"', add
label define co05a_edattan_lbl 124 `"Doctorate 4"', add
label define co05a_edattan_lbl 125 `"Doctorate 5"', add
label define co05a_edattan_lbl 126 `"Doctorate 6"', add
label define co05a_edattan_lbl 129 `"Doctorate, year unknown"', add
label define co05a_edattan_lbl 130 `"None"', add
label define co05a_edattan_lbl 998 `"Unknown"', add
label define co05a_edattan_lbl 999 `"NIU (not in universe)"', add
label values co05a_edattan co05a_edattan_lbl

label define co05a_edattan1_lbl 01 `"Pre-kindergarten"'
label define co05a_edattan1_lbl 02 `"Kindergarten"', add
label define co05a_edattan1_lbl 03 `"Transition"', add
label define co05a_edattan1_lbl 04 `"Basic elementary 1"', add
label define co05a_edattan1_lbl 05 `"Basic elementary 2"', add
label define co05a_edattan1_lbl 06 `"Basic elementary 3"', add
label define co05a_edattan1_lbl 07 `"Basic elementary 4"', add
label define co05a_edattan1_lbl 08 `"Basic elemenary 5"', add
label define co05a_edattan1_lbl 09 `"Basic secondary 6"', add
label define co05a_edattan1_lbl 10 `"Basic secondary 7"', add
label define co05a_edattan1_lbl 11 `"Basic secondary 8"', add
label define co05a_edattan1_lbl 12 `"Basic secondary 9"', add
label define co05a_edattan1_lbl 13 `"Mid-level classical academy 10"', add
label define co05a_edattan1_lbl 14 `"Mid-level classical academy 11"', add
label define co05a_edattan1_lbl 15 `"Mid-level technical 10"', add
label define co05a_edattan1_lbl 16 `"Mid-level technical 11"', add
label define co05a_edattan1_lbl 17 `"Teacher's training 10"', add
label define co05a_edattan1_lbl 18 `"Teacher's training 11"', add
label define co05a_edattan1_lbl 19 `"Teacher's training 12"', add
label define co05a_edattan1_lbl 20 `"Teacher's training 13"', add
label define co05a_edattan1_lbl 21 `"Professional technical 1"', add
label define co05a_edattan1_lbl 22 `"Professional technical 2"', add
label define co05a_edattan1_lbl 23 `"Technological 1"', add
label define co05a_edattan1_lbl 24 `"Technological 2"', add
label define co05a_edattan1_lbl 25 `"Technological 3"', add
label define co05a_edattan1_lbl 26 `"Professional 1"', add
label define co05a_edattan1_lbl 27 `"Professional 2"', add
label define co05a_edattan1_lbl 28 `"Professional 3"', add
label define co05a_edattan1_lbl 29 `"Professional 4"', add
label define co05a_edattan1_lbl 30 `"Professional 5"', add
label define co05a_edattan1_lbl 31 `"Professional 6"', add
label define co05a_edattan1_lbl 32 `"Specialization 1"', add
label define co05a_edattan1_lbl 33 `"Specialization 2"', add
label define co05a_edattan1_lbl 34 `"Masters 1"', add
label define co05a_edattan1_lbl 35 `"Masters 2"', add
label define co05a_edattan1_lbl 36 `"Masters 3"', add
label define co05a_edattan1_lbl 37 `"Doctorate 1"', add
label define co05a_edattan1_lbl 38 `"Doctorate 2"', add
label define co05a_edattan1_lbl 39 `"Doctorate 3"', add
label define co05a_edattan1_lbl 40 `"Doctorate 4"', add
label define co05a_edattan1_lbl 41 `"Doctorate 5"', add
label define co05a_edattan1_lbl 42 `"Doctorate 6"', add
label define co05a_edattan1_lbl 43 `"None"', add
label define co05a_edattan1_lbl 97 `"Invalid year"', add
label define co05a_edattan1_lbl 98 `"Unknown"', add
label define co05a_edattan1_lbl 99 `"NIU (not in universe)"', add
label values co05a_edattan1 co05a_edattan1_lbl

label define co05a_pc_lbl 1 `"Yes"'
label define co05a_pc_lbl 2 `"No"', add
label define co05a_pc_lbl 8 `"Unknown"', add
label define co05a_pc_lbl 9 `"NIU (not in universe)"', add
label values co05a_pc co05a_pc_lbl

label define co05a_pcw_lbl 1 `"Yes"'
label define co05a_pcw_lbl 2 `"No"', add
label define co05a_pcw_lbl 8 `"Unknown"', add
label define co05a_pcw_lbl 9 `"NIU (not in universe)"', add
label values co05a_pcw co05a_pcw_lbl

label define co05a_pcown_lbl 1 `"Yes"'
label define co05a_pcown_lbl 2 `"No"', add
label define co05a_pcown_lbl 8 `"Unknown"', add
label define co05a_pcown_lbl 9 `"NIU (not in universe)"', add
label values co05a_pcown co05a_pcown_lbl

label define co05a_pctra_lbl 1 `"Yes"'
label define co05a_pctra_lbl 2 `"No"', add
label define co05a_pctra_lbl 8 `"Unknown"', add
label define co05a_pctra_lbl 9 `"NIU (not in universe)"', add
label values co05a_pctra co05a_pctra_lbl

label define co05a_pcent_lbl 1 `"Yes"'
label define co05a_pcent_lbl 2 `"No"', add
label define co05a_pcent_lbl 8 `"Unknown"', add
label define co05a_pcent_lbl 9 `"NIU (not in universe)"', add
label values co05a_pcent co05a_pcent_lbl

label define co05a_pccom_lbl 1 `"Yes"'
label define co05a_pccom_lbl 2 `"No"', add
label define co05a_pccom_lbl 8 `"Unknown"', add
label define co05a_pccom_lbl 9 `"NIU (not in universe)"', add
label values co05a_pccom co05a_pccom_lbl

label define co05a_pcoth_lbl 1 `"Yes"'
label define co05a_pcoth_lbl 2 `"No"', add
label define co05a_pcoth_lbl 8 `"Unknown"', add
label define co05a_pcoth_lbl 9 `"NIU (not in universe)"', add
label values co05a_pcoth co05a_pcoth_lbl

label define co05a_ind_lbl 01 `"Agriculture, ranching, hunting, and activities or related services"'
label define co05a_ind_lbl 02 `"Forestry, lumber extraction and activities of related services"', add
label define co05a_ind_lbl 05 `"Fishing, production of fish in fish breeding farms and fish farms; activities of services related to fishing"', add
label define co05a_ind_lbl 10 `"Extraction of coal, lignite coal, and peat"', add
label define co05a_ind_lbl 11 `"Extraction of crude petroleum and natural gas, activities of services related to the extraction of petroleum and gas, except prospecting activities"', add
label define co05a_ind_lbl 12 `"Extraction of uranium and thorium minerals"', add
label define co05a_ind_lbl 13 `"Extraction of metallic minerals"', add
label define co05a_ind_lbl 14 `"Exploitation of non-metallic minerals"', add
label define co05a_ind_lbl 15 `"Manufacture of food and beverage products"', add
label define co05a_ind_lbl 16 `"Manufacture of tobacco products"', add
label define co05a_ind_lbl 17 `"Manufacture of textile products"', add
label define co05a_ind_lbl 18 `"Manufacture of clothing, preparation and dieing hides"', add
label define co05a_ind_lbl 19 `"Tanning and preparation of leathers; manufacture of footwear; manufacture of travel articles, suitcases, handbags and similar; articles of leatherworking and harnesses"', add
label define co05a_ind_lbl 20 `"Transformation of wood and manufacture of wood and cork products, except furniture; manufacture of baskets and woven vegetation"', add
label define co05a_ind_lbl 21 `"Manufacture of paper, cardboard and paper and cardboard products"', add
label define co05a_ind_lbl 22 `"Activities of editing and printing and reproduction of recordings"', add
label define co05a_ind_lbl 23 `"Coke production, manufacture of products of refining petroleum and nuclear combustion"', add
label define co05a_ind_lbl 24 `"Manufacture of chemical substances and products"', add
label define co05a_ind_lbl 25 `"Manufacture of rubber and plastic products"', add
label define co05a_ind_lbl 26 `"Manufacture of other products made from non-metallic minerals"', add
label define co05a_ind_lbl 27 `"Manufacture of basic metallurgic products"', add
label define co05a_ind_lbl 28 `"Manufacture of products made from metal, except machinery and equipment"', add
label define co05a_ind_lbl 29 `"Manufacture of machinery and equipment [Ncp=not in another category]"', add
label define co05a_ind_lbl 30 `"Manufacture of office, accounting and informatics machinery"', add
label define co05a_ind_lbl 31 `"Manufacture of electrical machinery and appliances not in another category"', add
label define co05a_ind_lbl 32 `"Manufacture of radio, television and communications equipment and appliances"', add
label define co05a_ind_lbl 33 `"Manufacture of medical, optical and precision instruments and watch manufacturing"', add
label define co05a_ind_lbl 34 `"Manufacture of automobile, towing and semi-towing vehicles"', add
label define co05a_ind_lbl 35 `"Manufacture of other types of transportation equipment"', add
label define co05a_ind_lbl 36 `"Manufacture of furniture, manufacturing industries not in another category"', add
label define co05a_ind_lbl 37 `"Recycling"', add
label define co05a_ind_lbl 40 `"Distribution of electricity, gas, vapor and hot water"', add
label define co05a_ind_lbl 41 `"Water collection, purification and distribution"', add
label define co05a_ind_lbl 45 `"Construction"', add
label define co05a_ind_lbl 50 `"Commerce, maintenance and repair of automobile vehicles and motorcycles, their parts, pieces, and accessories; Retail commerce of fuels and lubricants for automotive vehicles"', add
label define co05a_ind_lbl 51 `"Wholesale and commission and contract commerce, except commerce of automotive vehicles and motorcycles; Maintenance and repair of machinery and equipment"', add
label define co05a_ind_lbl 52 `"Retail commerce, except commerce of automotive vehicles and motorcycles; Repair of personal goods and household goods"', add
label define co05a_ind_lbl 55 `"Hotels, restaurants, bars and similar"', add
label define co05a_ind_lbl 60 `"Ground transportation; transportation via pipelines"', add
label define co05a_ind_lbl 61 `"Transportation via aqueduct"', add
label define co05a_ind_lbl 62 `"Air Transportation"', add
label define co05a_ind_lbl 63 `"Activities that are complementary and support for transportation; Activities of travel agencies"', add
label define co05a_ind_lbl 64 `"Mail and Telecommunications"', add
label define co05a_ind_lbl 65 `"Financial Intermediation, except insurance and pension and dismissal funds"', add
label define co05a_ind_lbl 66 `"Financing of insurance and pension plans, except social security of obligatory affiliation"', add
label define co05a_ind_lbl 67 `"Auxiliary activities of financial intermediation"', add
label define co05a_ind_lbl 70 `"Real estate activities"', add
label define co05a_ind_lbl 71 `"Rental of machinery and equipment without operators and personal effects and domestic goods"', add
label define co05a_ind_lbl 72 `"Informatics and related activities"', add
label define co05a_ind_lbl 73 `"Research and development"', add
label define co05a_ind_lbl 74 `"Other business activities"', add
label define co05a_ind_lbl 75 `"Public administration and defense; social security of obligatory affiliation"', add
label define co05a_ind_lbl 80 `"Education"', add
label define co05a_ind_lbl 85 `"Social and health services"', add
label define co05a_ind_lbl 90 `"Elimination of waste products and residual waters, sanitation and similar activities"', add
label define co05a_ind_lbl 91 `"Activities of associations not in another category"', add
label define co05a_ind_lbl 92 `"Recreational activities and cultural and sports activities"', add
label define co05a_ind_lbl 93 `"Other service activities"', add
label define co05a_ind_lbl 95 `"Private households with domestic service"', add
label define co05a_ind_lbl 97 `"Extraterritorial organizations and organisms"', add
label define co05a_ind_lbl 98 `"Unknown"', add
label define co05a_ind_lbl 99 `"NIU (not in universe)"', add
label values co05a_ind co05a_ind_lbl

label define co05a_classwk_lbl 1 `"Worker, employee"'
label define co05a_classwk_lbl 2 `"Patron, employer"', add
label define co05a_classwk_lbl 3 `"Self-employed worker"', add
label define co05a_classwk_lbl 4 `"Domestic employee"', add
label define co05a_classwk_lbl 5 `"Unpaid family worker"', add
label define co05a_classwk_lbl 8 `"Unknown"', add
label define co05a_classwk_lbl 9 `"NIU (not in universe)"', add
label values co05a_classwk co05a_classwk_lbl

label define co05a_wklocp_lbl 1 `"In this municipality"'
label define co05a_wklocp_lbl 2 `"In another municipality"', add
label define co05a_wklocp_lbl 3 `"In another country"', add
label define co05a_wklocp_lbl 8 `"Unknown"', add
label define co05a_wklocp_lbl 9 `"NIU (not in universe)"', add
label values co05a_wklocp co05a_wklocp_lbl

label define co05a_wklocd_lbl 005 `"Antioquia"'
label define co05a_wklocd_lbl 008 `"Atlántico"', add
label define co05a_wklocd_lbl 011 `"Bogotá"', add
label define co05a_wklocd_lbl 013 `"Bolívar"', add
label define co05a_wklocd_lbl 015 `"Boyacá"', add
label define co05a_wklocd_lbl 017 `"Caldas"', add
label define co05a_wklocd_lbl 018 `"Caquetá"', add
label define co05a_wklocd_lbl 019 `"Cauca"', add
label define co05a_wklocd_lbl 020 `"Cesar"', add
label define co05a_wklocd_lbl 023 `"Córdoba"', add
label define co05a_wklocd_lbl 025 `"Cundinamarca"', add
label define co05a_wklocd_lbl 027 `"Chocó"', add
label define co05a_wklocd_lbl 041 `"Huila"', add
label define co05a_wklocd_lbl 044 `"La Guajira"', add
label define co05a_wklocd_lbl 047 `"Magdalena"', add
label define co05a_wklocd_lbl 050 `"Meta"', add
label define co05a_wklocd_lbl 052 `"Nariño"', add
label define co05a_wklocd_lbl 054 `"Norte de Santander"', add
label define co05a_wklocd_lbl 063 `"Quindío"', add
label define co05a_wklocd_lbl 066 `"Risaralda"', add
label define co05a_wklocd_lbl 068 `"Santander"', add
label define co05a_wklocd_lbl 070 `"Sucre"', add
label define co05a_wklocd_lbl 073 `"Tolima"', add
label define co05a_wklocd_lbl 076 `"Valle"', add
label define co05a_wklocd_lbl 081 `"Arauca"', add
label define co05a_wklocd_lbl 085 `"Casanare"', add
label define co05a_wklocd_lbl 086 `"Putumayo"', add
label define co05a_wklocd_lbl 088 `"San Andrés"', add
label define co05a_wklocd_lbl 091 `"Amazonas"', add
label define co05a_wklocd_lbl 094 `"Guainía"', add
label define co05a_wklocd_lbl 095 `"Guaviare"', add
label define co05a_wklocd_lbl 096 `"Vaupés"', add
label define co05a_wklocd_lbl 099 `"Vichada"', add
label define co05a_wklocd_lbl 998 `"Unknown"', add
label define co05a_wklocd_lbl 999 `"NIU (not in universe)"', add
label values co05a_wklocd co05a_wklocd_lbl

label define co05a_pension_lbl 1 `"Yes"'
label define co05a_pension_lbl 2 `"No"', add
label define co05a_pension_lbl 3 `"Is already retired"', add
label define co05a_pension_lbl 8 `"Unknown"', add
label define co05a_pension_lbl 9 `"NIU (not in universe)"', add
label values co05a_pension co05a_pension_lbl

label define co05a_wkfam_lbl 1 `"Yes"'
label define co05a_wkfam_lbl 2 `"No"', add
label define co05a_wkfam_lbl 8 `"Unknown"', add
label define co05a_wkfam_lbl 9 `"NIU (not in universe)"', add
label values co05a_wkfam co05a_wkfam_lbl

label define co05a_wksal_lbl 1 `"Yes"'
label define co05a_wksal_lbl 2 `"No"', add
label define co05a_wksal_lbl 8 `"Unknown"', add
label define co05a_wksal_lbl 9 `"NIU (not in universe)"', add
label values co05a_wksal co05a_wksal_lbl

label define co05a_wkman_lbl 1 `"Yes"'
label define co05a_wkman_lbl 2 `"No"', add
label define co05a_wkman_lbl 8 `"Unknown"', add
label define co05a_wkman_lbl 9 `"NIU (not in universe)"', add
label values co05a_wkman co05a_wkman_lbl

label define co05a_wkani_lbl 1 `"Yes"'
label define co05a_wkani_lbl 2 `"No"', add
label define co05a_wkani_lbl 8 `"Unknown"', add
label define co05a_wkani_lbl 9 `"NIU (not in universe)"', add
label values co05a_wkani co05a_wkani_lbl

label define co05a_wkcho_lbl 1 `"Yes"'
label define co05a_wkcho_lbl 2 `"No"', add
label define co05a_wkcho_lbl 8 `"Unknown"', add
label define co05a_wkcho_lbl 9 `"NIU (not in universe)"', add
label values co05a_wkcho co05a_wkcho_lbl

label define co05a_wkoth_lbl 1 `"Yes"'
label define co05a_wkoth_lbl 2 `"No"', add
label define co05a_wkoth_lbl 8 `"Unknown"', add
label define co05a_wkoth_lbl 9 `"NIU (not in universe)"', add
label values co05a_wkoth co05a_wkoth_lbl

label define co05a_marst_lbl 1 `"Not married and has 2 or more years living with a partner"'
label define co05a_marst_lbl 2 `"Not married and has less than 2 years living with a partner"', add
label define co05a_marst_lbl 3 `"Separated, divorced"', add
label define co05a_marst_lbl 4 `"Widow(er)"', add
label define co05a_marst_lbl 5 `"Single"', add
label define co05a_marst_lbl 6 `"Married"', add
label define co05a_marst_lbl 8 `"Unknown"', add
label define co05a_marst_lbl 9 `"NIU (not in universe)"', add
label values co05a_marst co05a_marst_lbl

label define co05a_langsp_lbl 1 `"Yes"'
label define co05a_langsp_lbl 2 `"No"', add
label define co05a_langsp_lbl 8 `"Unknown"', add
label define co05a_langsp_lbl 9 `"NIU (not in universe)"', add
label values co05a_langsp co05a_langsp_lbl

label define co05a_langen_lbl 1 `"Yes"'
label define co05a_langen_lbl 2 `"No"', add
label define co05a_langen_lbl 8 `"Unknown"', add
label define co05a_langen_lbl 9 `"NIU (not in universe)"', add
label values co05a_langen co05a_langen_lbl

label define co05a_langfr_lbl 1 `"Yes"'
label define co05a_langfr_lbl 2 `"No"', add
label define co05a_langfr_lbl 8 `"Unknown"', add
label define co05a_langfr_lbl 9 `"NIU (not in universe)"', add
label values co05a_langfr co05a_langfr_lbl

label define co05a_langit_lbl 1 `"Yes"'
label define co05a_langit_lbl 2 `"No"', add
label define co05a_langit_lbl 8 `"Unknown"', add
label define co05a_langit_lbl 9 `"NIU (not in universe)"', add
label values co05a_langit co05a_langit_lbl

label define co05a_langge_lbl 1 `"Yes"'
label define co05a_langge_lbl 2 `"No"', add
label define co05a_langge_lbl 8 `"Unknown"', add
label define co05a_langge_lbl 9 `"NIU (not in universe)"', add
label values co05a_langge co05a_langge_lbl

label define co05a_langot_lbl 1 `"Yes"'
label define co05a_langot_lbl 2 `"No"', add
label define co05a_langot_lbl 8 `"Unknown"', add
label define co05a_langot_lbl 9 `"NIU (not in universe)"', add
label values co05a_langot co05a_langot_lbl

label define co05a_chborny_lbl 1 `"Yes"'
label define co05a_chborny_lbl 2 `"No"', add
label define co05a_chborny_lbl 8 `"Unknown"', add
label define co05a_chborny_lbl 9 `"NIU (not in universe)"', add
label values co05a_chborny co05a_chborny_lbl

label define co05a_chborn_lbl 00 `"0"'
label define co05a_chborn_lbl 01 `"1"', add
label define co05a_chborn_lbl 02 `"2"', add
label define co05a_chborn_lbl 03 `"3"', add
label define co05a_chborn_lbl 04 `"4"', add
label define co05a_chborn_lbl 05 `"5"', add
label define co05a_chborn_lbl 06 `"6"', add
label define co05a_chborn_lbl 07 `"7"', add
label define co05a_chborn_lbl 08 `"8"', add
label define co05a_chborn_lbl 09 `"9"', add
label define co05a_chborn_lbl 10 `"10"', add
label define co05a_chborn_lbl 11 `"11"', add
label define co05a_chborn_lbl 12 `"12"', add
label define co05a_chborn_lbl 13 `"13"', add
label define co05a_chborn_lbl 14 `"14"', add
label define co05a_chborn_lbl 15 `"15"', add
label define co05a_chborn_lbl 16 `"16"', add
label define co05a_chborn_lbl 17 `"17"', add
label define co05a_chborn_lbl 18 `"18"', add
label define co05a_chborn_lbl 19 `"19"', add
label define co05a_chborn_lbl 20 `"20"', add
label define co05a_chborn_lbl 21 `"21"', add
label define co05a_chborn_lbl 22 `"22"', add
label define co05a_chborn_lbl 23 `"23"', add
label define co05a_chborn_lbl 24 `"24+"', add
label define co05a_chborn_lbl 98 `"Unknown"', add
label define co05a_chborn_lbl 99 `"NIU (not in universe)"', add
label values co05a_chborn co05a_chborn_lbl

label define co05a_chbornm_lbl 00 `"0"'
label define co05a_chbornm_lbl 01 `"1"', add
label define co05a_chbornm_lbl 02 `"2"', add
label define co05a_chbornm_lbl 03 `"3"', add
label define co05a_chbornm_lbl 04 `"4"', add
label define co05a_chbornm_lbl 05 `"5"', add
label define co05a_chbornm_lbl 06 `"6"', add
label define co05a_chbornm_lbl 07 `"7"', add
label define co05a_chbornm_lbl 08 `"8"', add
label define co05a_chbornm_lbl 09 `"9"', add
label define co05a_chbornm_lbl 10 `"10"', add
label define co05a_chbornm_lbl 11 `"11"', add
label define co05a_chbornm_lbl 12 `"12"', add
label define co05a_chbornm_lbl 13 `"13"', add
label define co05a_chbornm_lbl 14 `"14"', add
label define co05a_chbornm_lbl 15 `"15+"', add
label define co05a_chbornm_lbl 98 `"Unknown"', add
label define co05a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values co05a_chbornm co05a_chbornm_lbl

label define co05a_chbornf_lbl 00 `"0"'
label define co05a_chbornf_lbl 01 `"1"', add
label define co05a_chbornf_lbl 02 `"2"', add
label define co05a_chbornf_lbl 03 `"3"', add
label define co05a_chbornf_lbl 04 `"4"', add
label define co05a_chbornf_lbl 05 `"5"', add
label define co05a_chbornf_lbl 06 `"6"', add
label define co05a_chbornf_lbl 07 `"7"', add
label define co05a_chbornf_lbl 08 `"8"', add
label define co05a_chbornf_lbl 09 `"9"', add
label define co05a_chbornf_lbl 10 `"10"', add
label define co05a_chbornf_lbl 11 `"11"', add
label define co05a_chbornf_lbl 12 `"12"', add
label define co05a_chbornf_lbl 13 `"13"', add
label define co05a_chbornf_lbl 14 `"14"', add
label define co05a_chbornf_lbl 15 `"15+"', add
label define co05a_chbornf_lbl 98 `"Unknown"', add
label define co05a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values co05a_chbornf co05a_chbornf_lbl

label define co05a_chsurv_lbl 00 `"0"'
label define co05a_chsurv_lbl 01 `"1"', add
label define co05a_chsurv_lbl 02 `"2"', add
label define co05a_chsurv_lbl 03 `"3"', add
label define co05a_chsurv_lbl 04 `"4"', add
label define co05a_chsurv_lbl 05 `"5"', add
label define co05a_chsurv_lbl 06 `"6"', add
label define co05a_chsurv_lbl 07 `"7"', add
label define co05a_chsurv_lbl 08 `"8"', add
label define co05a_chsurv_lbl 09 `"9"', add
label define co05a_chsurv_lbl 10 `"10"', add
label define co05a_chsurv_lbl 11 `"11"', add
label define co05a_chsurv_lbl 12 `"12"', add
label define co05a_chsurv_lbl 13 `"13"', add
label define co05a_chsurv_lbl 14 `"14"', add
label define co05a_chsurv_lbl 15 `"15"', add
label define co05a_chsurv_lbl 16 `"16+"', add
label define co05a_chsurv_lbl 98 `"Unknown"', add
label define co05a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values co05a_chsurv co05a_chsurv_lbl

label define co05a_chsurvm_lbl 00 `"0"'
label define co05a_chsurvm_lbl 01 `"1"', add
label define co05a_chsurvm_lbl 02 `"2"', add
label define co05a_chsurvm_lbl 03 `"3"', add
label define co05a_chsurvm_lbl 04 `"4"', add
label define co05a_chsurvm_lbl 05 `"5"', add
label define co05a_chsurvm_lbl 06 `"6"', add
label define co05a_chsurvm_lbl 07 `"7"', add
label define co05a_chsurvm_lbl 08 `"8"', add
label define co05a_chsurvm_lbl 09 `"9"', add
label define co05a_chsurvm_lbl 10 `"10"', add
label define co05a_chsurvm_lbl 11 `"11+"', add
label define co05a_chsurvm_lbl 98 `"Unknown"', add
label define co05a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values co05a_chsurvm co05a_chsurvm_lbl

label define co05a_chsurvf_lbl 00 `"0"'
label define co05a_chsurvf_lbl 01 `"1"', add
label define co05a_chsurvf_lbl 02 `"2"', add
label define co05a_chsurvf_lbl 03 `"3"', add
label define co05a_chsurvf_lbl 04 `"4"', add
label define co05a_chsurvf_lbl 05 `"5"', add
label define co05a_chsurvf_lbl 06 `"6"', add
label define co05a_chsurvf_lbl 07 `"7"', add
label define co05a_chsurvf_lbl 08 `"8"', add
label define co05a_chsurvf_lbl 09 `"9"', add
label define co05a_chsurvf_lbl 10 `"10"', add
label define co05a_chsurvf_lbl 11 `"11+"', add
label define co05a_chsurvf_lbl 98 `"Unknown"', add
label define co05a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values co05a_chsurvf co05a_chsurvf_lbl

label define co05a_chsurvk_lbl 1 `"Yes, she knows"'
label define co05a_chsurvk_lbl 2 `"No, she does not know"', add
label define co05a_chsurvk_lbl 9 `"NIU (not in universe)"', add
label values co05a_chsurvk co05a_chsurvk_lbl

label define co05a_lastkyr_lbl 1 `"2005"'
label define co05a_lastkyr_lbl 2 `"2004"', add
label define co05a_lastkyr_lbl 3 `"2003"', add
label define co05a_lastkyr_lbl 4 `"2002"', add
label define co05a_lastkyr_lbl 5 `"2001"', add
label define co05a_lastkyr_lbl 6 `"2000 or before"', add
label define co05a_lastkyr_lbl 8 `"Unknown"', add
label define co05a_lastkyr_lbl 9 `"NIU (not in universe)"', add
label values co05a_lastkyr co05a_lastkyr_lbl

label define co05a_lastkmo_lbl 01 `"January"'
label define co05a_lastkmo_lbl 02 `"February"', add
label define co05a_lastkmo_lbl 03 `"March"', add
label define co05a_lastkmo_lbl 04 `"April"', add
label define co05a_lastkmo_lbl 05 `"May"', add
label define co05a_lastkmo_lbl 06 `"June"', add
label define co05a_lastkmo_lbl 07 `"July"', add
label define co05a_lastkmo_lbl 08 `"August"', add
label define co05a_lastkmo_lbl 09 `"September"', add
label define co05a_lastkmo_lbl 10 `"October"', add
label define co05a_lastkmo_lbl 11 `"November"', add
label define co05a_lastkmo_lbl 12 `"December"', add
label define co05a_lastkmo_lbl 98 `"Unknown"', add
label define co05a_lastkmo_lbl 99 `"NIU (not in universe)"', add
label values co05a_lastkmo co05a_lastkmo_lbl

label define co05a_firkyr_lbl 1925 `"1925 or earlier"'
label define co05a_firkyr_lbl 1926 `"1926"', add
label define co05a_firkyr_lbl 1927 `"1927"', add
label define co05a_firkyr_lbl 1928 `"1928"', add
label define co05a_firkyr_lbl 1929 `"1929"', add
label define co05a_firkyr_lbl 1930 `"1930"', add
label define co05a_firkyr_lbl 1931 `"1931"', add
label define co05a_firkyr_lbl 1932 `"1932"', add
label define co05a_firkyr_lbl 1933 `"1933"', add
label define co05a_firkyr_lbl 1934 `"1934"', add
label define co05a_firkyr_lbl 1935 `"1935"', add
label define co05a_firkyr_lbl 1936 `"1936"', add
label define co05a_firkyr_lbl 1937 `"1937"', add
label define co05a_firkyr_lbl 1938 `"1938"', add
label define co05a_firkyr_lbl 1939 `"1939"', add
label define co05a_firkyr_lbl 1940 `"1940"', add
label define co05a_firkyr_lbl 1941 `"1941"', add
label define co05a_firkyr_lbl 1942 `"1942"', add
label define co05a_firkyr_lbl 1943 `"1943"', add
label define co05a_firkyr_lbl 1944 `"1944"', add
label define co05a_firkyr_lbl 1945 `"1945"', add
label define co05a_firkyr_lbl 1946 `"1946"', add
label define co05a_firkyr_lbl 1947 `"1947"', add
label define co05a_firkyr_lbl 1948 `"1948"', add
label define co05a_firkyr_lbl 1949 `"1949"', add
label define co05a_firkyr_lbl 1950 `"1950"', add
label define co05a_firkyr_lbl 1951 `"1951"', add
label define co05a_firkyr_lbl 1952 `"1952"', add
label define co05a_firkyr_lbl 1953 `"1953"', add
label define co05a_firkyr_lbl 1954 `"1954"', add
label define co05a_firkyr_lbl 1955 `"1955"', add
label define co05a_firkyr_lbl 1956 `"1956"', add
label define co05a_firkyr_lbl 1957 `"1957"', add
label define co05a_firkyr_lbl 1958 `"1958"', add
label define co05a_firkyr_lbl 1959 `"1959"', add
label define co05a_firkyr_lbl 1960 `"1960"', add
label define co05a_firkyr_lbl 1961 `"1961"', add
label define co05a_firkyr_lbl 1962 `"1962"', add
label define co05a_firkyr_lbl 1963 `"1963"', add
label define co05a_firkyr_lbl 1964 `"1964"', add
label define co05a_firkyr_lbl 1965 `"1965"', add
label define co05a_firkyr_lbl 1966 `"1966"', add
label define co05a_firkyr_lbl 1967 `"1967"', add
label define co05a_firkyr_lbl 1968 `"1968"', add
label define co05a_firkyr_lbl 1969 `"1969"', add
label define co05a_firkyr_lbl 1970 `"1970"', add
label define co05a_firkyr_lbl 1971 `"1971"', add
label define co05a_firkyr_lbl 1972 `"1972"', add
label define co05a_firkyr_lbl 1973 `"1973"', add
label define co05a_firkyr_lbl 1974 `"1974"', add
label define co05a_firkyr_lbl 1975 `"1975"', add
label define co05a_firkyr_lbl 1976 `"1976"', add
label define co05a_firkyr_lbl 1977 `"1977"', add
label define co05a_firkyr_lbl 1978 `"1978"', add
label define co05a_firkyr_lbl 1979 `"1979"', add
label define co05a_firkyr_lbl 1980 `"1980"', add
label define co05a_firkyr_lbl 1981 `"1981"', add
label define co05a_firkyr_lbl 1982 `"1982"', add
label define co05a_firkyr_lbl 1983 `"1983"', add
label define co05a_firkyr_lbl 1984 `"1984"', add
label define co05a_firkyr_lbl 1985 `"1985"', add
label define co05a_firkyr_lbl 1986 `"1986"', add
label define co05a_firkyr_lbl 1987 `"1987"', add
label define co05a_firkyr_lbl 1988 `"1988"', add
label define co05a_firkyr_lbl 1989 `"1989"', add
label define co05a_firkyr_lbl 1990 `"1990"', add
label define co05a_firkyr_lbl 1991 `"1991"', add
label define co05a_firkyr_lbl 1992 `"1992"', add
label define co05a_firkyr_lbl 1993 `"1993"', add
label define co05a_firkyr_lbl 1994 `"1994"', add
label define co05a_firkyr_lbl 1995 `"1995"', add
label define co05a_firkyr_lbl 1996 `"1996"', add
label define co05a_firkyr_lbl 1997 `"1997"', add
label define co05a_firkyr_lbl 1998 `"1998"', add
label define co05a_firkyr_lbl 1999 `"1999"', add
label define co05a_firkyr_lbl 2000 `"2000"', add
label define co05a_firkyr_lbl 2001 `"2001"', add
label define co05a_firkyr_lbl 2002 `"2002"', add
label define co05a_firkyr_lbl 2003 `"2003"', add
label define co05a_firkyr_lbl 2004 `"2004"', add
label define co05a_firkyr_lbl 2005 `"2005"', add
label define co05a_firkyr_lbl 9998 `"Unknown"', add
label define co05a_firkyr_lbl 9999 `"NIU (not in universe)"', add
label values co05a_firkyr co05a_firkyr_lbl


