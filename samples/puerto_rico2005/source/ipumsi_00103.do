* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    pr05a_dwnum     22-26    ///
  byte    pr05a_pern      27-28    ///
  byte    pr05a_subsamp   29-30    ///
  int     pr05a_hhwt      31-34    ///
  int     pr05a_puma      35-38    ///
  int     pr05a_metarea   39-42    ///
  byte    pr05a_gq        43-43    ///
  byte    pr05a_farm      44-44    ///
  byte    pr05a_farmprod  45-45    ///
  byte    pr05a_ownershp  46-47    ///
  byte    pr05a_mortgage  48-48    ///
  byte    pr05a_mortgag2  49-49    ///
  int     pr05a_mortamt1  50-53    ///
  long    pr05a_valueh    54-59    ///
  byte    pr05a_commuse   60-60    ///
  byte    pr05a_acrehous  61-61    ///
  byte    pr05a_taxincl   62-62    ///
  byte    pr05a_insincl   63-63    ///
  int     pr05a_propinsr  64-67    ///
  byte    pr05a_proptx    68-69    ///
  int     pr05a_rent      70-73    ///
  int     pr05a_rentgrs   74-77    ///
  byte    pr05a_rentmeal  78-78    ///
  int     pr05a_condofee  79-82    ///
  int     pr05a_costelec  83-86    ///
  int     pr05a_costgas   87-90    ///
  int     pr05a_costwatr  91-94    ///
  int     pr05a_costfuel  95-98    ///
  long    pr05a_ftotinc   99-104   ///
  byte    pr05a_vacancy   105-105  ///
  long    pr05a_hhincome  106-111  ///
  byte    pr05a_kitchen   112-112  ///
  byte    pr05a_rooms     113-113  ///
  byte    pr05a_plumbing  114-115  ///
  byte    pr05a_unitsstr  116-117  ///
  byte    pr05a_bedrooms  118-118  ///
  byte    pr05a_phone     119-119  ///
  int     pr05a_mortamt2  120-123  ///
  byte    pr05a_lingisol  124-124  ///
  byte    pr05a_fuelheat  125-125  ///
  byte    pr05a_vehicles  126-126  ///
  byte    pr05a_nfams     127-128  ///
  byte    pr05a_ncouples  129-129  ///
  byte    pr05a_nmothers  130-130  ///
  byte    pr05a_nfathers  131-131  ///
  byte    pr05a_qmoblhom  132-132  ///
  byte    pr05a_qmortam1  133-133  ///
  byte    pr05a_qinsincl  134-134  ///
  byte    pr05a_qmortam2  135-135  ///
  byte    pr05a_qbedroom  136-136  ///
  byte    pr05a_qcommuse  137-137  ///
  byte    pr05a_qmortga2  138-138  ///
  byte    pr05a_qcostele  139-139  ///
  byte    pr05a_qmortgag  140-140  ///
  byte    pr05a_qcostfue  141-141  ///
  byte    pr05a_qcostgas  142-142  ///
  byte    pr05a_qpropins  143-143  ///
  byte    pr05a_qcostwat  144-144  ///
  byte    pr05a_qproptx   145-145  ///
  byte    pr05a_qfarmpro  146-146  ///
  byte    pr05a_qrentmea  147-147  ///
  byte    pr05a_qfuelhea  148-148  ///
  byte    pr05a_qplumbin  149-149  ///
  byte    pr05a_qkitchen  150-150  ///
  byte    pr05a_qownersh  151-151  ///
  byte    pr05a_qphone    152-152  ///
  byte    pr05a_qrent     153-153  ///
  byte    pr05a_qrooms    154-154  ///
  byte    pr05a_qunitsst  155-155  ///
  byte    pr05a_qvacancy  156-156  ///
  byte    pr05a_qvalueh   157-157  ///
  byte    pr05a_qcondofe  158-158  ///
  byte    pr05a_qtaxincl  159-159  ///
  byte    pr05a_foodstmp  160-160  ///
  byte    pr05a_qfoodstm  161-161  ///
  byte    pr05a_qmortg2a  162-162  ///
  long    pr05a_pumasupr  163-167  ///
  byte    pr05a_builtyr2  168-169  ///
  byte    pr05a_qbuilty2  170-170  ///
  byte    pr05a_secres    171-171  ///
  byte    pr05a_secresmo  172-173  ///
  byte    pr05a_secresre  174-174  ///
  long    pr05a_fdstpamt  175-179  ///
  byte    pr05a_hhtype    180-180  ///
  byte    pr05a_qvehicle  181-181  ///
  int     pernum          182-184  ///
  float   wtper           185-192  ///
  byte    pr05a_pernum    193-194  ///
  byte    pr05a_pernump   195-196  ///
  int     pr05a_perwt     197-200  ///
  byte    pr05a_momloc    201-201  ///
  byte    pr05a_stepmom   202-202  ///
  byte    pr05a_momrule   203-203  ///
  byte    pr05a_poploc    204-205  ///
  byte    pr05a_steppop   206-206  ///
  byte    pr05a_poprule   207-207  ///
  byte    pr05a_sploc     208-208  ///
  byte    pr05a_sprule    209-209  ///
  byte    pr05a_famsize   210-211  ///
  byte    pr05a_nchild    212-212  ///
  byte    pr05a_nchlt5    213-213  ///
  byte    pr05a_famunit   214-215  ///
  byte    pr05a_eldch     216-217  ///
  byte    pr05a_yngch     218-219  ///
  byte    pr05a_nsibs     220-220  ///
  int     pr05a_relate    221-224  ///
  byte    pr05a_age       225-226  ///
  byte    pr05a_sex       227-227  ///
  int     pr05a_race      228-230  ///
  byte    pr05a_marst     231-231  ///
  long    pr05a_bpl       232-236  ///
  int     pr05a_ancestr2  237-240  ///
  byte    pr05a_citizen   241-241  ///
  int     pr05a_hispan    242-244  ///
  byte    pr05a_yrsusa2   245-245  ///
  int     pr05a_language  246-249  ///
  byte    pr05a_speakeng  250-250  ///
  byte    pr05a_school    251-251  ///
  byte    pr05a_educ99    252-253  ///
  byte    pr05a_educrec   254-254  ///
  byte    pr05a_schltype  255-255  ///
  byte    pr05a_empstat   256-257  ///
  byte    pr05a_labforce  258-258  ///
  int     pr05a_occ1950   259-261  ///
  int     pr05a_occ       262-264  ///
  byte    pr05a_occscore  265-266  ///
  byte    pr05a_sei       267-268  ///
  int     pr05a_ind1950   269-271  ///
  int     pr05a_ind       272-274  ///
  byte    pr05a_classwkr  275-276  ///
  byte    pr05a_wkswork1  277-278  ///
  byte    pr05a_wkswork2  279-279  ///
  byte    pr05a_uhrswork  280-281  ///
  byte    pr05a_yrsusa1   282-283  ///
  byte    pr05a_workedyr  284-284  ///
  byte    pr05a_absent    285-285  ///
  byte    pr05a_looking   286-286  ///
  byte    pr05a_availble  287-287  ///
  long    pr05a_inctot    288-293  ///
  long    pr05a_incwage   294-299  ///
  int     pr05a_poverty   300-302  ///
  long    pr05a_incss     303-307  ///
  long    pr05a_incwelfr  308-312  ///
  long    pr05a_incinvst  313-318  ///
  long    pr05a_incearn   319-324  ///
  long    pr05a_incother  325-329  ///
  byte    pr05a_migrate1  330-331  ///
  int     pr05a_migplac1  332-334  ///
  int     pr05a_migmet1   335-338  ///
  byte    pr05a_migtype1  339-339  ///
  byte    pr05a_movedin   340-340  ///
  byte    pr05a_pwtype    341-341  ///
  byte    pr05a_disabwrk  342-342  ///
  byte    pr05a_disabmob  343-343  ///
  byte    pr05a_perscare  344-344  ///
  byte    pr05a_vetstat   345-345  ///
  byte    pr05a_vetstat   346-346  ///
  byte    pr05a_vet80x90  347-347  ///
  byte    pr05a_vet75x80  348-348  ///
  byte    pr05a_vetvietn  349-349  ///
  byte    pr05a_vetyrs    350-350  ///
  byte    pr05a_vet55x64  351-351  ///
  byte    pr05a_vetkorea  352-352  ///
  byte    pr05a_vetwwii   353-353  ///
  byte    pr05a_vetother  354-354  ///
  byte    pr05a_tranwork  355-356  ///
  byte    pr05a_carpool   357-357  ///
  byte    pr05a_riders    358-358  ///
  byte    pr05a_trantime  359-360  ///
  int     pr05a_departs   361-364  ///
  byte    pr05a_birthqtr  365-365  ///
  byte    pr05a_qdeparts  366-366  ///
  byte    pr05a_qbpl      367-367  ///
  byte    pr05a_qcarpool  368-368  ///
  byte    pr05a_qcitizen  369-369  ///
  byte    pr05a_qclasswk  370-370  ///
  byte    pr05a_qlanguag  371-371  ///
  byte    pr05a_qdisabwr  372-372  ///
  byte    pr05a_qempstat  373-373  ///
  byte    pr05a_qincbus   374-374  ///
  byte    pr05a_qincinvs  375-375  ///
  byte    pr05a_qincothe  376-376  ///
  byte    pr05a_qincss    377-377  ///
  byte    pr05a_qincwage  378-378  ///
  byte    pr05a_qincwelf  379-379  ///
  byte    pr05a_qind      380-380  ///
  byte    pr05a_qdisabmo  381-381  ///
  byte    pr05a_qperscar  382-382  ///
  byte    pr05a_qpwstat2  383-383  ///
  byte    pr05a_qmarst    384-384  ///
  byte    pr05a_qincreti  385-385  ///
  byte    pr05a_qmigplc1  386-386  ///
  byte    pr05a_qmigrat1  387-387  ///
  byte    pr05a_qvetyrs   388-388  ///
  byte    pr05a_qmovedin  389-389  ///
  byte    pr05a_qocc      390-390  ///
  byte    pr05a_qrace     391-391  ///
  byte    pr05a_qrelate   392-392  ///
  byte    pr05a_qriders   393-393  ///
  byte    pr05a_qschool   394-394  ///
  byte    pr05a_qsex      395-395  ///
  byte    pr05a_qsex      396-396  ///
  byte    pr05a_qspeaken  397-397  ///
  byte    pr05a_qtrantim  398-398  ///
  byte    pr05a_qtranwor  399-399  ///
  byte    pr05a_quhrswor  400-400  ///
  byte    pr05a_qvetstat  401-401  ///
  byte    pr05a_qwkswork  402-402  ///
  byte    pr05a_qworkedy  403-403  ///
  byte    pr05a_qyrimm    404-404  ///
  byte    pr05a_gchouse   405-405  ///
  byte    pr05a_fertyr    406-406  ///
  byte    pr05a_racamind  407-407  ///
  byte    pr05a_racasian  408-408  ///
  byte    pr05a_racblk    409-409  ///
  byte    pr05a_racpacis  410-410  ///
  byte    pr05a_racnum    411-411  ///
  byte    pr05a_racother  412-412  ///
  byte    pr05a_racwht    413-413  ///
  byte    pr05a_gradeatt  414-414  ///
  byte    pr05a_wrklstwk  415-415  ///
  byte    pr05a_wrkrecal  416-416  ///
  byte    pr05a_diffeye   417-417  ///
  byte    pr05a_diffphys  418-418  ///
  byte    pr05a_diffrem   419-419  ///
  byte    pr05a_gcmonths  420-420  ///
  byte    pr05a_gcrespon  421-421  ///
  byte    pr05a_qdiffeye  422-422  ///
  byte    pr05a_qincsupp  423-423  ///
  byte    pr05a_qdiffphy  424-424  ///
  byte    pr05a_qdiffrem  425-425  ///
  byte    pr05a_qfertyr   426-426  ///
  byte    pr05a_qgchouse  427-427  ///
  byte    pr05a_qgcmonth  428-428  ///
  byte    pr05a_qgcrespo  429-429  ///
  byte    pr05a_qgradeat  430-430  ///
  long    pr05a_incbus00  431-436  ///
  long    pr05a_incretir  437-442  ///
  byte    pr05a_vet01ltr  443-443  ///
  byte    pr05a_vet90x01  444-444  ///
  byte    pr05a_vet47x50  445-445  ///
  int     pr05a_occ2000m  446-448  ///
  int     pr05a_ind2000m  449-451  ///
  int     pr05a_ind1990   452-454  ///
  byte    pr05a_racesing  455-455  ///
  int     pr05a_occ1990   456-458  ///
  byte    pr05a_respmode  459-459  ///
  int     pr05a_arrives   460-463  ///
  int     pr05a_arrives   464-467  ///
  long    pr05a_tribe     468-473  ///
  int     pr05a_yrimmipr  474-476  ///
  using `"ipumsi_00103.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var pr05a_dwnum    `"Dwelling number"'
label var pr05a_pern     `"Number of persons in household"'
label var pr05a_subsamp  `"Subsample number"'
label var pr05a_hhwt     `"Household weight"'
label var pr05a_puma     `"Public Use Microdata Area"'
label var pr05a_metarea  `"Metropolitan area"'
label var pr05a_gq       `"Group quarters status"'
label var pr05a_farm     `"Farm status"'
label var pr05a_farmprod `"Sales of farm products"'
label var pr05a_ownershp `"Ownership of dwelling"'
label var pr05a_mortgage `"Mortgage status"'
label var pr05a_mortgag2 `"Second mortgage status"'
label var pr05a_mortamt1 `"First mortgage monthly payment"'
label var pr05a_valueh   `"House value"'
label var pr05a_commuse  `"Commercial use"'
label var pr05a_acrehous `"House acreage"'
label var pr05a_taxincl  `"Mortgage payment includes property taxes"'
label var pr05a_insincl  `"Mortgage payment includes property insurance"'
label var pr05a_propinsr `"Annual property insurance cost"'
label var pr05a_proptx   `"Annual property taxes"'
label var pr05a_rent     `"Monthly contract rent"'
label var pr05a_rentgrs  `"Monthly gross rent"'
label var pr05a_rentmeal `"Meals included in rent"'
label var pr05a_condofee `"Monthly condominium fee"'
label var pr05a_costelec `"Annual electricity cost"'
label var pr05a_costgas  `"Annual gas cost"'
label var pr05a_costwatr `"Annual water cost"'
label var pr05a_costfuel `"Annual home heating fuel cost"'
label var pr05a_ftotinc  `"Total family income"'
label var pr05a_vacancy  `"Vacancy status"'
label var pr05a_hhincome `"Total household income"'
label var pr05a_kitchen  `"Kitchen or cooking facilities"'
label var pr05a_rooms    `"Number of rooms"'
label var pr05a_plumbing `"Plumbing facilities"'
label var pr05a_unitsstr `"Units in structure"'
label var pr05a_bedrooms `"Number of bedrooms"'
label var pr05a_phone    `"Telephone availability"'
label var pr05a_mortamt2 `"Second mortgage monthly payment"'
label var pr05a_lingisol `"Linguistic isolation"'
label var pr05a_fuelheat `"Home heating fuel"'
label var pr05a_vehicles `"Vehicles available"'
label var pr05a_nfams    `"Number of families in household"'
label var pr05a_ncouples `"Number of married couples in household"'
label var pr05a_nmothers `"Number of mothers in household"'
label var pr05a_nfathers `"Number of fathers in household"'
label var pr05a_qmoblhom `"Flag for annual mobile home cost"'
label var pr05a_qmortam1 `"Flag for first monthly mortage payment"'
label var pr05a_qinsincl `"Flag for mortgage payment includes property insurance"'
label var pr05a_qmortam2 `"Flag for second mortgage monthly payment"'
label var pr05a_qbedroom `"Flag for number of bedrooms"'
label var pr05a_qcommuse `"Flag for commercial use"'
label var pr05a_qmortga2 `"Flag for second mortgage stutus"'
label var pr05a_qcostele `"Flag for electricity cost"'
label var pr05a_qmortgag `"Flag for mortgage status"'
label var pr05a_qcostfue `"Flag for fuel cost"'
label var pr05a_qcostgas `"Flag for gas cost"'
label var pr05a_qpropins `"Flag for property insurance cost"'
label var pr05a_qcostwat `"Flag for water cost"'
label var pr05a_qproptx  `"Flag for annual property tax, 1999"'
label var pr05a_qfarmpro `"Flag for farm products and farm status"'
label var pr05a_qrentmea `"Flag for meals included in rent"'
label var pr05a_qfuelhea `"Flag for heating fuel"'
label var pr05a_qplumbin `"Flag for plumbing"'
label var pr05a_qkitchen `"Flag for kitchen"'
label var pr05a_qownersh `"Flag for ownership"'
label var pr05a_qphone   `"Flag for phone"'
label var pr05a_qrent    `"Flag for monthly contracted rent"'
label var pr05a_qrooms   `"Flag for number of rooms"'
label var pr05a_qunitsst `"Flag for units structure"'
label var pr05a_qvacancy `"Flag for vacancy"'
label var pr05a_qvalueh  `"Flag for house value"'
label var pr05a_qcondofe `"Flag for condominuim fee"'
label var pr05a_qtaxincl `"Flag for tax included in monthly mortgage payment"'
label var pr05a_foodstmp `"Food stamp recipiency"'
label var pr05a_qfoodstm `"Flag for foodstamp and foodstamp amount"'
label var pr05a_qmortg2a `"Flag for second mortgage stutus"'
label var pr05a_pumasupr `"Super Public Use Microdata Area"'
label var pr05a_builtyr2 `"Age of structure, decade"'
label var pr05a_qbuilty2 `"Flag for age of structure"'
label var pr05a_secres   `"Second residence status"'
label var pr05a_secresmo `"Months living in second residence"'
label var pr05a_secresre `"Reason for second residence"'
label var pr05a_fdstpamt `"Food stamp amount"'
label var pr05a_hhtype   `"Household type"'
label var pr05a_qvehicle `"Data quality flag for vehicle"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var pr05a_pernum   `"Person number (within household)"'
label var pr05a_pernump  `"Person number in sample unit"'
label var pr05a_perwt    `"Person weight"'
label var pr05a_momloc   `"Mother's location in the household"'
label var pr05a_stepmom  `"Probable step/adopted mother"'
label var pr05a_momrule  `"Rule for linking mother"'
label var pr05a_poploc   `"Father's location in the household"'
label var pr05a_steppop  `"Probable step/adopted father"'
label var pr05a_poprule  `"Rule for linking father"'
label var pr05a_sploc    `"Spouse's location in household"'
label var pr05a_sprule   `"Rule for linking spouse"'
label var pr05a_famsize  `"Number of own family members in household"'
label var pr05a_nchild   `"Number of own children in the household"'
label var pr05a_nchlt5   `"Number of own children under age 5 in household"'
label var pr05a_famunit  `"Family unit membership"'
label var pr05a_eldch    `"Age of eldest own child in household"'
label var pr05a_yngch    `"Age of youngest own child in household"'
label var pr05a_nsibs    `"Number of own siblings in household"'
label var pr05a_relate   `"Relationship to household head"'
label var pr05a_age      `"Age"'
label var pr05a_sex      `"Sex"'
label var pr05a_race     `"Race"'
label var pr05a_marst    `"Marital status"'
label var pr05a_bpl      `"Birthplace"'
label var pr05a_ancestr2 `"Ancestry, second response"'
label var pr05a_citizen  `"Citizenship status"'
label var pr05a_hispan   `"Hispanic origin"'
label var pr05a_yrsusa2  `"Years in Puerto Rico, intervalled"'
label var pr05a_language `"Language spoken"'
label var pr05a_speakeng `"Speaks English"'
label var pr05a_school   `"School attendance"'
label var pr05a_educ99   `"Educational attainment"'
label var pr05a_educrec  `"Educational attainment recode"'
label var pr05a_schltype `"Public or private school"'
label var pr05a_empstat  `"Employment status"'
label var pr05a_labforce `"Labor force status"'
label var pr05a_occ1950  `"Occupation, 1950 basis"'
label var pr05a_occ      `"Occupation"'
label var pr05a_occscore `"Occupational income score"'
label var pr05a_sei      `"Duncan Socioeconomic Index"'
label var pr05a_ind1950  `"Industry, 1950 basis"'
label var pr05a_ind      `"Industry"'
label var pr05a_classwkr `"Class of worker"'
label var pr05a_wkswork1 `"Weeks worked last year"'
label var pr05a_wkswork2 `"Weeks worked last year, intervalled"'
label var pr05a_uhrswork `"Usual hours worked per week"'
label var pr05a_yrsusa1  `"Years in Puerto Rico"'
label var pr05a_workedyr `"Worked last year"'
label var pr05a_absent   `"Absent from work last week"'
label var pr05a_looking  `"Looking for work"'
label var pr05a_availble `"Available for work"'
label var pr05a_inctot   `"Total personal income"'
label var pr05a_incwage  `"Wage and salary income"'
label var pr05a_poverty  `"Poverty status"'
label var pr05a_incss    `"Social Security income"'
label var pr05a_incwelfr `"Welfare (public assistance) income"'
label var pr05a_incinvst `"Interest, dividend, and rental income"'
label var pr05a_incearn  `"Total personal earned income"'
label var pr05a_incother `"Other income"'
label var pr05a_migrate1 `"Migration status, 1 year"'
label var pr05a_migplac1 `"State or country of residence 1 year ago"'
label var pr05a_migmet1  `"Metropolitan area of residence 1 year ago"'
label var pr05a_migtype1 `"Metropolitan status 1 year ago"'
label var pr05a_movedin  `"When occupant moved into residence"'
label var pr05a_pwtype   `"Place of work: metropolitan status"'
label var pr05a_disabwrk `"Work disability"'
label var pr05a_disabmob `"Disability limiting mobility"'
label var pr05a_perscare `"Personal care limitation"'
label var pr05a_vetstat  `"Veteran status"'
label var pr05a_vetstat  `"Veteran status"'
label var pr05a_vet80x90 `"Veteran, served 1980 to 1990"'
label var pr05a_vet75x80 `"Veteran, served 1975 to 1980"'
label var pr05a_vetvietn `"Veteran, served during Vietnam era"'
label var pr05a_vetyrs   `"Years of active-duty military service"'
label var pr05a_vet55x64 `"Veteran, served 1955 to 1964"'
label var pr05a_vetkorea `"Veteran, served during Korean conflict era"'
label var pr05a_vetwwii  `"Veteran, served during WWII era"'
label var pr05a_vetother `"Veteran of other period"'
label var pr05a_tranwork `"Means of transportation to work"'
label var pr05a_carpool  `"Carpooling"'
label var pr05a_riders   `"Vehicle occupancy"'
label var pr05a_trantime `"Travel time to work"'
label var pr05a_departs  `"Time of departure for work"'
label var pr05a_birthqtr `"Quarter of birth"'
label var pr05a_qdeparts `"Flag for time of departure for work"'
label var pr05a_qbpl     `"Flag for birthplace, nativity"'
label var pr05a_qcarpool `"Flag for carpool"'
label var pr05a_qcitizen `"Flag for citizen"'
label var pr05a_qclasswk `"Flag for class of worker"'
label var pr05a_qlanguag `"Flag for language"'
label var pr05a_qdisabwr `"Flag for work disability"'
label var pr05a_qempstat `"Flag for employment status, labor force"'
label var pr05a_qincbus  `"Flag for business and farm, total, and earned income"'
label var pr05a_qincinvs `"Flag for interest, dividend, rental, and total income"'
label var pr05a_qincothe `"Flag for other and total income"'
label var pr05a_qincss   `"Flag for Social Security and total income"'
label var pr05a_qincwage `"Flag for wage, total, and earned income"'
label var pr05a_qincwelf `"Flag for welfare and total income"'
label var pr05a_qind     `"Flag for industry"'
label var pr05a_qdisabmo `"Flag for disability limiting mobility"'
label var pr05a_qperscar `"Flag for personal care limitation"'
label var pr05a_qpwstat2 `"Flag for place of work: state or country"'
label var pr05a_qmarst   `"Flag for marital status"'
label var pr05a_qincreti `"Flag for retirement and total income"'
label var pr05a_qmigplc1 `"Flag for state or country of residence 1 year ago"'
label var pr05a_qmigrat1 `"Flag for migration status, 1 year"'
label var pr05a_qvetyrs  `"Flag for years of active-duty military service"'
label var pr05a_qmovedin `"Flag for when occupant moved into residence"'
label var pr05a_qocc     `"Flag for occupation"'
label var pr05a_qrace    `"Flag for race"'
label var pr05a_qrelate  `"Flag for relationship to household head"'
label var pr05a_qriders  `"Flag for vehicle occupancy"'
label var pr05a_qschool  `"Flag for school attendance and type"'
label var pr05a_qsex     `"Flag for sex"'
label var pr05a_qsex     `"Flag for sex"'
label var pr05a_qspeaken `"Flag for speaks English"'
label var pr05a_qtrantim `"Flag for travelling time to work"'
label var pr05a_qtranwor `"Flag for means of transportation to work"'
label var pr05a_quhrswor `"Flag for usual hours of work"'
label var pr05a_qvetstat `"Flag for veteran status"'
label var pr05a_qwkswork `"Flag for weeks worked last year"'
label var pr05a_qworkedy `"Flag for worked last year"'
label var pr05a_qyrimm   `"Flag for years of immigration"'
label var pr05a_gchouse  `"Own grandchildren living in household"'
label var pr05a_fertyr   `"Children born within the last year"'
label var pr05a_racamind `"Race: American Indian or Alaska Native"'
label var pr05a_racasian `"Race: Asian"'
label var pr05a_racblk   `"Race: black or African American"'
label var pr05a_racpacis `"Race: Pacific Islander"'
label var pr05a_racnum   `"Number of major race groups"'
label var pr05a_racother `"Race: some other race"'
label var pr05a_racwht   `"Race: white"'
label var pr05a_gradeatt `"Grade level attending"'
label var pr05a_wrklstwk `"Worked last week"'
label var pr05a_wrkrecal `"Informed of work recall"'
label var pr05a_diffeye  `"Vision or hearing difficulty"'
label var pr05a_diffphys `"Physical difficulty"'
label var pr05a_diffrem  `"Difficulty remembering"'
label var pr05a_gcmonths `"Months responsible for grandchildren"'
label var pr05a_gcrespon `"Responsible for grandchildren"'
label var pr05a_qdiffeye `"Flag for vision or hearing difficulty"'
label var pr05a_qincsupp `"Flag for Supplementary Security income"'
label var pr05a_qdiffphy `"Flag for physical difficulty"'
label var pr05a_qdiffrem `"Flag for difficulty remembering"'
label var pr05a_qfertyr  `"Flag for children born within the last year"'
label var pr05a_qgchouse `"Flag for own grandchildren living in household"'
label var pr05a_qgcmonth `"Flag for months responsible for grandchildren"'
label var pr05a_qgcrespo `"Flag for responsible for grandchildren"'
label var pr05a_qgradeat `"Flag for grade level attending"'
label var pr05a_incbus00 `"Business and farm income, 2000"'
label var pr05a_incretir `"Retirement income"'
label var pr05a_vet01ltr `"Veteran, served 2001 or later"'
label var pr05a_vet90x01 `"Veteran, served 1990-2001"'
label var pr05a_vet47x50 `"Veteran, served 1947-1950"'
label var pr05a_occ2000m `"Occupation, 2000 basis"'
label var pr05a_ind2000m `"Industry, 2000 basis"'
label var pr05a_ind1990  `"Industry, 1990 basis"'
label var pr05a_racesing `"Race: single race identification"'
label var pr05a_occ1990  `"Occupation, 1990 basis"'
label var pr05a_respmode `"Response mode"'
label var pr05a_arrives  `"Time of arrival at work"'
label var pr05a_arrives  `"Time of arrival at work"'
label var pr05a_tribe    `"Tribe"'
label var pr05a_yrimmipr `"Year of immigration to Puerto Rico"'

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

label define pr05a_pern_lbl 00 `"0"'
label define pr05a_pern_lbl 01 `"1"', add
label define pr05a_pern_lbl 02 `"2"', add
label define pr05a_pern_lbl 03 `"3"', add
label define pr05a_pern_lbl 04 `"4"', add
label define pr05a_pern_lbl 05 `"5"', add
label define pr05a_pern_lbl 06 `"6"', add
label define pr05a_pern_lbl 07 `"7"', add
label define pr05a_pern_lbl 08 `"8"', add
label define pr05a_pern_lbl 09 `"9"', add
label define pr05a_pern_lbl 10 `"10"', add
label define pr05a_pern_lbl 11 `"11"', add
label define pr05a_pern_lbl 12 `"12"', add
label define pr05a_pern_lbl 14 `"14"', add
label values pr05a_pern pr05a_pern_lbl

label define pr05a_subsamp_lbl 00 `"First 1% subsample"'
label define pr05a_subsamp_lbl 01 `"2nd 1% subsample"', add
label define pr05a_subsamp_lbl 02 `"2"', add
label define pr05a_subsamp_lbl 03 `"3"', add
label define pr05a_subsamp_lbl 04 `"4"', add
label define pr05a_subsamp_lbl 05 `"5"', add
label define pr05a_subsamp_lbl 06 `"6"', add
label define pr05a_subsamp_lbl 07 `"7"', add
label define pr05a_subsamp_lbl 08 `"8"', add
label define pr05a_subsamp_lbl 09 `"9"', add
label define pr05a_subsamp_lbl 10 `"10"', add
label define pr05a_subsamp_lbl 11 `"11"', add
label define pr05a_subsamp_lbl 12 `"12"', add
label define pr05a_subsamp_lbl 13 `"13"', add
label define pr05a_subsamp_lbl 14 `"14"', add
label define pr05a_subsamp_lbl 15 `"15"', add
label define pr05a_subsamp_lbl 16 `"16"', add
label define pr05a_subsamp_lbl 17 `"17"', add
label define pr05a_subsamp_lbl 18 `"18"', add
label define pr05a_subsamp_lbl 19 `"19"', add
label define pr05a_subsamp_lbl 20 `"20"', add
label define pr05a_subsamp_lbl 21 `"21"', add
label define pr05a_subsamp_lbl 22 `"22"', add
label define pr05a_subsamp_lbl 23 `"23"', add
label define pr05a_subsamp_lbl 24 `"24"', add
label define pr05a_subsamp_lbl 25 `"25"', add
label define pr05a_subsamp_lbl 26 `"26"', add
label define pr05a_subsamp_lbl 27 `"27"', add
label define pr05a_subsamp_lbl 28 `"28"', add
label define pr05a_subsamp_lbl 29 `"29"', add
label define pr05a_subsamp_lbl 30 `"30"', add
label define pr05a_subsamp_lbl 31 `"31"', add
label define pr05a_subsamp_lbl 32 `"32"', add
label define pr05a_subsamp_lbl 33 `"33"', add
label define pr05a_subsamp_lbl 34 `"34"', add
label define pr05a_subsamp_lbl 35 `"35"', add
label define pr05a_subsamp_lbl 36 `"36"', add
label define pr05a_subsamp_lbl 37 `"37"', add
label define pr05a_subsamp_lbl 38 `"38"', add
label define pr05a_subsamp_lbl 39 `"39"', add
label define pr05a_subsamp_lbl 40 `"40"', add
label define pr05a_subsamp_lbl 41 `"41"', add
label define pr05a_subsamp_lbl 42 `"42"', add
label define pr05a_subsamp_lbl 43 `"43"', add
label define pr05a_subsamp_lbl 44 `"44"', add
label define pr05a_subsamp_lbl 45 `"45"', add
label define pr05a_subsamp_lbl 46 `"46"', add
label define pr05a_subsamp_lbl 47 `"47"', add
label define pr05a_subsamp_lbl 48 `"48"', add
label define pr05a_subsamp_lbl 49 `"49"', add
label define pr05a_subsamp_lbl 50 `"50"', add
label define pr05a_subsamp_lbl 51 `"51"', add
label define pr05a_subsamp_lbl 52 `"52"', add
label define pr05a_subsamp_lbl 53 `"53"', add
label define pr05a_subsamp_lbl 54 `"54"', add
label define pr05a_subsamp_lbl 55 `"55"', add
label define pr05a_subsamp_lbl 56 `"56"', add
label define pr05a_subsamp_lbl 57 `"57"', add
label define pr05a_subsamp_lbl 58 `"58"', add
label define pr05a_subsamp_lbl 59 `"59"', add
label define pr05a_subsamp_lbl 60 `"60"', add
label define pr05a_subsamp_lbl 61 `"61"', add
label define pr05a_subsamp_lbl 62 `"62"', add
label define pr05a_subsamp_lbl 63 `"63"', add
label define pr05a_subsamp_lbl 64 `"64"', add
label define pr05a_subsamp_lbl 65 `"65"', add
label define pr05a_subsamp_lbl 66 `"66"', add
label define pr05a_subsamp_lbl 67 `"67"', add
label define pr05a_subsamp_lbl 68 `"68"', add
label define pr05a_subsamp_lbl 69 `"69"', add
label define pr05a_subsamp_lbl 70 `"70"', add
label define pr05a_subsamp_lbl 71 `"71"', add
label define pr05a_subsamp_lbl 72 `"72"', add
label define pr05a_subsamp_lbl 73 `"73"', add
label define pr05a_subsamp_lbl 74 `"74"', add
label define pr05a_subsamp_lbl 75 `"75"', add
label define pr05a_subsamp_lbl 76 `"76"', add
label define pr05a_subsamp_lbl 77 `"77"', add
label define pr05a_subsamp_lbl 78 `"78"', add
label define pr05a_subsamp_lbl 79 `"79"', add
label define pr05a_subsamp_lbl 80 `"80"', add
label define pr05a_subsamp_lbl 81 `"81"', add
label define pr05a_subsamp_lbl 82 `"82"', add
label define pr05a_subsamp_lbl 83 `"83"', add
label define pr05a_subsamp_lbl 84 `"84"', add
label define pr05a_subsamp_lbl 85 `"85"', add
label define pr05a_subsamp_lbl 86 `"86"', add
label define pr05a_subsamp_lbl 87 `"87"', add
label define pr05a_subsamp_lbl 88 `"88"', add
label define pr05a_subsamp_lbl 89 `"89"', add
label define pr05a_subsamp_lbl 90 `"90"', add
label define pr05a_subsamp_lbl 91 `"91"', add
label define pr05a_subsamp_lbl 92 `"92"', add
label define pr05a_subsamp_lbl 93 `"93"', add
label define pr05a_subsamp_lbl 94 `"94"', add
label define pr05a_subsamp_lbl 95 `"95"', add
label define pr05a_subsamp_lbl 96 `"96"', add
label define pr05a_subsamp_lbl 97 `"97"', add
label define pr05a_subsamp_lbl 98 `"98"', add
label define pr05a_subsamp_lbl 99 `"99"', add
label values pr05a_subsamp pr05a_subsamp_lbl

label define pr05a_puma_lbl 0100 `"100"'
label define pr05a_puma_lbl 0200 `"200"', add
label define pr05a_puma_lbl 0300 `"300"', add
label define pr05a_puma_lbl 0400 `"400"', add
label define pr05a_puma_lbl 0500 `"500"', add
label define pr05a_puma_lbl 0600 `"600"', add
label define pr05a_puma_lbl 0700 `"700"', add
label define pr05a_puma_lbl 0801 `"801"', add
label define pr05a_puma_lbl 0802 `"802"', add
label define pr05a_puma_lbl 0900 `"900"', add
label define pr05a_puma_lbl 1001 `"1001"', add
label define pr05a_puma_lbl 1002 `"1002"', add
label define pr05a_puma_lbl 1003 `"1003"', add
label define pr05a_puma_lbl 1004 `"1004"', add
label define pr05a_puma_lbl 1100 `"1100"', add
label define pr05a_puma_lbl 1200 `"1200"', add
label define pr05a_puma_lbl 1300 `"1300"', add
label define pr05a_puma_lbl 1400 `"1400"', add
label define pr05a_puma_lbl 1500 `"1500"', add
label define pr05a_puma_lbl 1600 `"1600"', add
label define pr05a_puma_lbl 1700 `"1700"', add
label define pr05a_puma_lbl 1800 `"1800"', add
label define pr05a_puma_lbl 1900 `"1900"', add
label define pr05a_puma_lbl 2000 `"2000"', add
label define pr05a_puma_lbl 2100 `"2100"', add
label define pr05a_puma_lbl 2200 `"2200"', add
label define pr05a_puma_lbl 2300 `"2300"', add
label define pr05a_puma_lbl 2400 `"2400"', add
label define pr05a_puma_lbl 2500 `"2500"', add
label define pr05a_puma_lbl 2600 `"2600"', add
label values pr05a_puma pr05a_puma_lbl

label define pr05a_metarea_lbl 0000 `"Not identifiable or not in an MSA"'
label define pr05a_metarea_lbl 0060 `"Aguadilla"', add
label define pr05a_metarea_lbl 0470 `"Arecibo"', add
label define pr05a_metarea_lbl 1330 `"Caguas"', add
label define pr05a_metarea_lbl 6360 `"Ponce"', add
label define pr05a_metarea_lbl 7440 `"San Juan-Bayamon"', add
label values pr05a_metarea pr05a_metarea_lbl

label define pr05a_gq_lbl 0 `"Vacant unit"'
label define pr05a_gq_lbl 1 `"Households"', add
label define pr05a_gq_lbl 2 `"Additional households under 1990 definition"', add
label values pr05a_gq pr05a_gq_lbl

label define pr05a_farm_lbl 1 `"Non-Farm"'
label define pr05a_farm_lbl 2 `"Farm"', add
label values pr05a_farm pr05a_farm_lbl

label define pr05a_farmprod_lbl 0 `"NIU (not in universe)"'
label define pr05a_farmprod_lbl 1 `"Less than $50"', add
label define pr05a_farmprod_lbl 2 `"$50 - $249"', add
label define pr05a_farmprod_lbl 3 `"$250 - $2,499"', add
label define pr05a_farmprod_lbl 4 `"$2,500 - $4,999"', add
label define pr05a_farmprod_lbl 5 `"$5,000 - $9,999"', add
label define pr05a_farmprod_lbl 6 `"$10,000 or more"', add
label values pr05a_farmprod pr05a_farmprod_lbl

label define pr05a_ownershp_lbl 00 `"NIU (not in universe)"'
label define pr05a_ownershp_lbl 12 `"Owned free and clear"', add
label define pr05a_ownershp_lbl 13 `"Owned with mortgage or loan"', add
label define pr05a_ownershp_lbl 21 `"No cash rent"', add
label define pr05a_ownershp_lbl 22 `"With cash rent"', add
label values pr05a_ownershp pr05a_ownershp_lbl

label define pr05a_mortgage_lbl 0 `"NIU (not in universe)"'
label define pr05a_mortgage_lbl 1 `"No, owned free and clear"', add
label define pr05a_mortgage_lbl 3 `"Yes, mortgaged/ deed of trust or similar debt"', add
label define pr05a_mortgage_lbl 4 `"Yes, contract to purchase"', add
label values pr05a_mortgage pr05a_mortgage_lbl

label define pr05a_mortgag2_lbl 0 `"NIU (not in universe)"'
label define pr05a_mortgag2_lbl 1 `"No"', add
label define pr05a_mortgag2_lbl 3 `"Yes, 2nd mortgage"', add
label define pr05a_mortgag2_lbl 4 `"Yes, home equity loan"', add
label define pr05a_mortgag2_lbl 5 `"Yes, 2nd mortgage and home equity loan"', add
label values pr05a_mortgag2 pr05a_mortgag2_lbl

label define pr05a_mortamt1_lbl 0000 `"NIU (not in universe)"'
label define pr05a_mortamt1_lbl 0010 `"10"', add
label define pr05a_mortamt1_lbl 0020 `"20"', add
label define pr05a_mortamt1_lbl 0031 `"31"', add
label define pr05a_mortamt1_lbl 0041 `"41"', add
label define pr05a_mortamt1_lbl 0051 `"51"', add
label define pr05a_mortamt1_lbl 0061 `"61"', add
label define pr05a_mortamt1_lbl 0071 `"71"', add
label define pr05a_mortamt1_lbl 0081 `"81"', add
label define pr05a_mortamt1_lbl 0092 `"92"', add
label define pr05a_mortamt1_lbl 0102 `"102"', add
label define pr05a_mortamt1_lbl 0112 `"112"', add
label define pr05a_mortamt1_lbl 0122 `"122"', add
label define pr05a_mortamt1_lbl 0132 `"132"', add
label define pr05a_mortamt1_lbl 0143 `"143"', add
label define pr05a_mortamt1_lbl 0153 `"153"', add
label define pr05a_mortamt1_lbl 0163 `"163"', add
label define pr05a_mortamt1_lbl 0173 `"173"', add
label define pr05a_mortamt1_lbl 0183 `"183"', add
label define pr05a_mortamt1_lbl 0194 `"194"', add
label define pr05a_mortamt1_lbl 0204 `"204"', add
label define pr05a_mortamt1_lbl 0214 `"214"', add
label define pr05a_mortamt1_lbl 0224 `"224"', add
label define pr05a_mortamt1_lbl 0234 `"234"', add
label define pr05a_mortamt1_lbl 0244 `"244"', add
label define pr05a_mortamt1_lbl 0255 `"255"', add
label define pr05a_mortamt1_lbl 0265 `"265"', add
label define pr05a_mortamt1_lbl 0275 `"275"', add
label define pr05a_mortamt1_lbl 0285 `"285"', add
label define pr05a_mortamt1_lbl 0295 `"295"', add
label define pr05a_mortamt1_lbl 0306 `"306"', add
label define pr05a_mortamt1_lbl 0316 `"316"', add
label define pr05a_mortamt1_lbl 0326 `"326"', add
label define pr05a_mortamt1_lbl 0336 `"336"', add
label define pr05a_mortamt1_lbl 0346 `"346"', add
label define pr05a_mortamt1_lbl 0357 `"357"', add
label define pr05a_mortamt1_lbl 0367 `"367"', add
label define pr05a_mortamt1_lbl 0377 `"377"', add
label define pr05a_mortamt1_lbl 0387 `"387"', add
label define pr05a_mortamt1_lbl 0397 `"397"', add
label define pr05a_mortamt1_lbl 0407 `"407"', add
label define pr05a_mortamt1_lbl 0418 `"418"', add
label define pr05a_mortamt1_lbl 0428 `"428"', add
label define pr05a_mortamt1_lbl 0438 `"438"', add
label define pr05a_mortamt1_lbl 0448 `"448"', add
label define pr05a_mortamt1_lbl 0458 `"458"', add
label define pr05a_mortamt1_lbl 0469 `"469"', add
label define pr05a_mortamt1_lbl 0479 `"479"', add
label define pr05a_mortamt1_lbl 0489 `"489"', add
label define pr05a_mortamt1_lbl 0499 `"499"', add
label define pr05a_mortamt1_lbl 0509 `"509"', add
label define pr05a_mortamt1_lbl 0520 `"520"', add
label define pr05a_mortamt1_lbl 0530 `"530"', add
label define pr05a_mortamt1_lbl 0540 `"540"', add
label define pr05a_mortamt1_lbl 0550 `"550"', add
label define pr05a_mortamt1_lbl 0560 `"560"', add
label define pr05a_mortamt1_lbl 0570 `"570"', add
label define pr05a_mortamt1_lbl 0581 `"581"', add
label define pr05a_mortamt1_lbl 0591 `"591"', add
label define pr05a_mortamt1_lbl 0601 `"601"', add
label define pr05a_mortamt1_lbl 0611 `"611"', add
label define pr05a_mortamt1_lbl 0621 `"621"', add
label define pr05a_mortamt1_lbl 0632 `"632"', add
label define pr05a_mortamt1_lbl 0642 `"642"', add
label define pr05a_mortamt1_lbl 0652 `"652"', add
label define pr05a_mortamt1_lbl 0662 `"662"', add
label define pr05a_mortamt1_lbl 0672 `"672"', add
label define pr05a_mortamt1_lbl 0683 `"683"', add
label define pr05a_mortamt1_lbl 0693 `"693"', add
label define pr05a_mortamt1_lbl 0703 `"703"', add
label define pr05a_mortamt1_lbl 0713 `"713"', add
label define pr05a_mortamt1_lbl 0723 `"723"', add
label define pr05a_mortamt1_lbl 0733 `"733"', add
label define pr05a_mortamt1_lbl 0744 `"744"', add
label define pr05a_mortamt1_lbl 0754 `"754"', add
label define pr05a_mortamt1_lbl 0764 `"764"', add
label define pr05a_mortamt1_lbl 0774 `"774"', add
label define pr05a_mortamt1_lbl 0784 `"784"', add
label define pr05a_mortamt1_lbl 0795 `"795"', add
label define pr05a_mortamt1_lbl 0805 `"805"', add
label define pr05a_mortamt1_lbl 0815 `"815"', add
label define pr05a_mortamt1_lbl 0825 `"825"', add
label define pr05a_mortamt1_lbl 0835 `"835"', add
label define pr05a_mortamt1_lbl 0845 `"845"', add
label define pr05a_mortamt1_lbl 0856 `"856"', add
label define pr05a_mortamt1_lbl 0866 `"866"', add
label define pr05a_mortamt1_lbl 0876 `"876"', add
label define pr05a_mortamt1_lbl 0886 `"886"', add
label define pr05a_mortamt1_lbl 0896 `"896"', add
label define pr05a_mortamt1_lbl 0907 `"907"', add
label define pr05a_mortamt1_lbl 0917 `"917"', add
label define pr05a_mortamt1_lbl 0927 `"927"', add
label define pr05a_mortamt1_lbl 0937 `"937"', add
label define pr05a_mortamt1_lbl 0947 `"947"', add
label define pr05a_mortamt1_lbl 0958 `"958"', add
label define pr05a_mortamt1_lbl 0968 `"968"', add
label define pr05a_mortamt1_lbl 0978 `"978"', add
label define pr05a_mortamt1_lbl 0988 `"988"', add
label define pr05a_mortamt1_lbl 0998 `"998"', add
label define pr05a_mortamt1_lbl 1008 `"1008"', add
label define pr05a_mortamt1_lbl 1019 `"1019"', add
label define pr05a_mortamt1_lbl 1121 `"1121"', add
label define pr05a_mortamt1_lbl 1222 `"1222"', add
label define pr05a_mortamt1_lbl 1324 `"1324"', add
label define pr05a_mortamt1_lbl 1426 `"1426"', add
label define pr05a_mortamt1_lbl 1528 `"1528"', add
label define pr05a_mortamt1_lbl 1630 `"1630"', add
label define pr05a_mortamt1_lbl 1732 `"1732"', add
label define pr05a_mortamt1_lbl 1834 `"1834"', add
label define pr05a_mortamt1_lbl 1935 `"1935"', add
label define pr05a_mortamt1_lbl 2037 `"2037"', add
label define pr05a_mortamt1_lbl 2139 `"2139"', add
label define pr05a_mortamt1_lbl 2241 `"2241"', add
label define pr05a_mortamt1_lbl 2343 `"2343"', add
label define pr05a_mortamt1_lbl 2445 `"2445"', add
label define pr05a_mortamt1_lbl 2547 `"2547"', add
label define pr05a_mortamt1_lbl 2649 `"2649"', add
label define pr05a_mortamt1_lbl 2750 `"2750"', add
label define pr05a_mortamt1_lbl 2852 `"2852"', add
label define pr05a_mortamt1_lbl 2954 `"2954"', add
label define pr05a_mortamt1_lbl 3056 `"3056"', add
label define pr05a_mortamt1_lbl 3158 `"3158"', add
label define pr05a_mortamt1_lbl 3260 `"3260"', add
label define pr05a_mortamt1_lbl 4482 `"4482"', add
label values pr05a_mortamt1 pr05a_mortamt1_lbl

label define pr05a_valueh_lbl 000000 `"0"'
label define pr05a_valueh_lbl 005000 `"Less than $10,000"', add
label define pr05a_valueh_lbl 012500 `"$10,000-14,999"', add
label define pr05a_valueh_lbl 017500 `"$15,000-19,999"', add
label define pr05a_valueh_lbl 022500 `"$20,000-24,999"', add
label define pr05a_valueh_lbl 027500 `"$25,000-29,999"', add
label define pr05a_valueh_lbl 032500 `"$30,000-34,999"', add
label define pr05a_valueh_lbl 037500 `"$35,000-39,999"', add
label define pr05a_valueh_lbl 045000 `"$40,000-49,999"', add
label define pr05a_valueh_lbl 055000 `"$50,000-59,999"', add
label define pr05a_valueh_lbl 065000 `"$60,000-69999"', add
label define pr05a_valueh_lbl 075000 `"$70,000-79,999"', add
label define pr05a_valueh_lbl 085000 `"$80,000-89,999"', add
label define pr05a_valueh_lbl 095000 `"$90,000-99,999"', add
label define pr05a_valueh_lbl 112500 `"$100,000-124,999"', add
label define pr05a_valueh_lbl 137500 `"$125,000-149,999"', add
label define pr05a_valueh_lbl 162500 `"$150,000-174,999"', add
label define pr05a_valueh_lbl 187500 `"$175,000-199,999"', add
label define pr05a_valueh_lbl 225000 `"$200,000-249,999"', add
label define pr05a_valueh_lbl 275000 `"$250,000-299,999"', add
label define pr05a_valueh_lbl 350000 `"$300,000-399,999"', add
label define pr05a_valueh_lbl 450000 `"$400,000-499,999"', add
label define pr05a_valueh_lbl 625000 `"$500,000-749,999"', add
label define pr05a_valueh_lbl 875000 `"$750,000-999,999"', add
label define pr05a_valueh_lbl 999998 `"$1,000,000+"', add
label define pr05a_valueh_lbl 999999 `"NIU (not in universe)"', add
label values pr05a_valueh pr05a_valueh_lbl

label define pr05a_commuse_lbl 0 `"NIU (not in universe)"'
label define pr05a_commuse_lbl 1 `"No commercial use"', add
label define pr05a_commuse_lbl 2 `"Yes, used commercially"', add
label values pr05a_commuse pr05a_commuse_lbl

label define pr05a_acrehous_lbl 0 `"NIU (not in universe)"'
label define pr05a_acrehous_lbl 5 `"House on less than 10 cuerdas"', add
label define pr05a_acrehous_lbl 6 `"House on 10 or more cuerdas"', add
label values pr05a_acrehous pr05a_acrehous_lbl

label define pr05a_taxincl_lbl 0 `"NIU (not in universe)"'
label define pr05a_taxincl_lbl 1 `"No"', add
label define pr05a_taxincl_lbl 2 `"Yes"', add
label values pr05a_taxincl pr05a_taxincl_lbl

label define pr05a_insincl_lbl 0 `"NIU (not in universe)"'
label define pr05a_insincl_lbl 1 `"No"', add
label define pr05a_insincl_lbl 2 `"Yes, payment includes insurance premiums"', add
label values pr05a_insincl pr05a_insincl_lbl

label define pr05a_propinsr_lbl 0000 `"NIU (not in universe)"'
label define pr05a_propinsr_lbl 0001 `"1"', add
label define pr05a_propinsr_lbl 0004 `"4"', add
label define pr05a_propinsr_lbl 0010 `"10"', add
label define pr05a_propinsr_lbl 0020 `"20"', add
label define pr05a_propinsr_lbl 0031 `"31"', add
label define pr05a_propinsr_lbl 0041 `"41"', add
label define pr05a_propinsr_lbl 0051 `"51"', add
label define pr05a_propinsr_lbl 0061 `"61"', add
label define pr05a_propinsr_lbl 0071 `"71"', add
label define pr05a_propinsr_lbl 0081 `"81"', add
label define pr05a_propinsr_lbl 0092 `"92"', add
label define pr05a_propinsr_lbl 0102 `"102"', add
label define pr05a_propinsr_lbl 0112 `"112"', add
label define pr05a_propinsr_lbl 0122 `"122"', add
label define pr05a_propinsr_lbl 0132 `"132"', add
label define pr05a_propinsr_lbl 0143 `"143"', add
label define pr05a_propinsr_lbl 0153 `"153"', add
label define pr05a_propinsr_lbl 0163 `"163"', add
label define pr05a_propinsr_lbl 0173 `"173"', add
label define pr05a_propinsr_lbl 0183 `"183"', add
label define pr05a_propinsr_lbl 0194 `"194"', add
label define pr05a_propinsr_lbl 0204 `"204"', add
label define pr05a_propinsr_lbl 0214 `"214"', add
label define pr05a_propinsr_lbl 0224 `"224"', add
label define pr05a_propinsr_lbl 0234 `"234"', add
label define pr05a_propinsr_lbl 0244 `"244"', add
label define pr05a_propinsr_lbl 0255 `"255"', add
label define pr05a_propinsr_lbl 0265 `"265"', add
label define pr05a_propinsr_lbl 0275 `"275"', add
label define pr05a_propinsr_lbl 0285 `"285"', add
label define pr05a_propinsr_lbl 0295 `"295"', add
label define pr05a_propinsr_lbl 0306 `"306"', add
label define pr05a_propinsr_lbl 0316 `"316"', add
label define pr05a_propinsr_lbl 0326 `"326"', add
label define pr05a_propinsr_lbl 0336 `"336"', add
label define pr05a_propinsr_lbl 0346 `"346"', add
label define pr05a_propinsr_lbl 0357 `"357"', add
label define pr05a_propinsr_lbl 0367 `"367"', add
label define pr05a_propinsr_lbl 0377 `"377"', add
label define pr05a_propinsr_lbl 0387 `"387"', add
label define pr05a_propinsr_lbl 0397 `"397"', add
label define pr05a_propinsr_lbl 0407 `"407"', add
label define pr05a_propinsr_lbl 0418 `"418"', add
label define pr05a_propinsr_lbl 0428 `"428"', add
label define pr05a_propinsr_lbl 0438 `"438"', add
label define pr05a_propinsr_lbl 0448 `"448"', add
label define pr05a_propinsr_lbl 0458 `"458"', add
label define pr05a_propinsr_lbl 0469 `"469"', add
label define pr05a_propinsr_lbl 0479 `"479"', add
label define pr05a_propinsr_lbl 0489 `"489"', add
label define pr05a_propinsr_lbl 0499 `"499"', add
label define pr05a_propinsr_lbl 0509 `"509"', add
label define pr05a_propinsr_lbl 0520 `"520"', add
label define pr05a_propinsr_lbl 0530 `"530"', add
label define pr05a_propinsr_lbl 0540 `"540"', add
label define pr05a_propinsr_lbl 0550 `"550"', add
label define pr05a_propinsr_lbl 0560 `"560"', add
label define pr05a_propinsr_lbl 0570 `"570"', add
label define pr05a_propinsr_lbl 0581 `"581"', add
label define pr05a_propinsr_lbl 0591 `"591"', add
label define pr05a_propinsr_lbl 0601 `"601"', add
label define pr05a_propinsr_lbl 0611 `"611"', add
label define pr05a_propinsr_lbl 0621 `"621"', add
label define pr05a_propinsr_lbl 0632 `"632"', add
label define pr05a_propinsr_lbl 0642 `"642"', add
label define pr05a_propinsr_lbl 0652 `"652"', add
label define pr05a_propinsr_lbl 0662 `"662"', add
label define pr05a_propinsr_lbl 0672 `"672"', add
label define pr05a_propinsr_lbl 0683 `"683"', add
label define pr05a_propinsr_lbl 0693 `"693"', add
label define pr05a_propinsr_lbl 0703 `"703"', add
label define pr05a_propinsr_lbl 0713 `"713"', add
label define pr05a_propinsr_lbl 0733 `"733"', add
label define pr05a_propinsr_lbl 0744 `"744"', add
label define pr05a_propinsr_lbl 0754 `"754"', add
label define pr05a_propinsr_lbl 0764 `"764"', add
label define pr05a_propinsr_lbl 0774 `"774"', add
label define pr05a_propinsr_lbl 0784 `"784"', add
label define pr05a_propinsr_lbl 0795 `"795"', add
label define pr05a_propinsr_lbl 0805 `"805"', add
label define pr05a_propinsr_lbl 0815 `"815"', add
label define pr05a_propinsr_lbl 0825 `"825"', add
label define pr05a_propinsr_lbl 0835 `"835"', add
label define pr05a_propinsr_lbl 0845 `"845"', add
label define pr05a_propinsr_lbl 0856 `"856"', add
label define pr05a_propinsr_lbl 0866 `"866"', add
label define pr05a_propinsr_lbl 0876 `"876"', add
label define pr05a_propinsr_lbl 0886 `"886"', add
label define pr05a_propinsr_lbl 0907 `"907"', add
label define pr05a_propinsr_lbl 0917 `"917"', add
label define pr05a_propinsr_lbl 0927 `"927"', add
label define pr05a_propinsr_lbl 0937 `"937"', add
label define pr05a_propinsr_lbl 0947 `"947"', add
label define pr05a_propinsr_lbl 0958 `"958"', add
label define pr05a_propinsr_lbl 0968 `"968"', add
label define pr05a_propinsr_lbl 0978 `"978"', add
label define pr05a_propinsr_lbl 0988 `"988"', add
label define pr05a_propinsr_lbl 0998 `"998"', add
label define pr05a_propinsr_lbl 1019 `"1019"', add
label define pr05a_propinsr_lbl 1121 `"1121"', add
label define pr05a_propinsr_lbl 1222 `"1222"', add
label define pr05a_propinsr_lbl 1324 `"1324"', add
label define pr05a_propinsr_lbl 1426 `"1426"', add
label define pr05a_propinsr_lbl 1528 `"1528"', add
label define pr05a_propinsr_lbl 1630 `"1630"', add
label define pr05a_propinsr_lbl 1732 `"1732"', add
label define pr05a_propinsr_lbl 1834 `"1834"', add
label define pr05a_propinsr_lbl 1935 `"1935"', add
label define pr05a_propinsr_lbl 2037 `"2037"', add
label define pr05a_propinsr_lbl 2139 `"2139"', add
label define pr05a_propinsr_lbl 2241 `"2241"', add
label define pr05a_propinsr_lbl 2343 `"2343"', add
label define pr05a_propinsr_lbl 2445 `"2445"', add
label define pr05a_propinsr_lbl 2547 `"2547"', add
label define pr05a_propinsr_lbl 3362 `"3362"', add
label values pr05a_propinsr pr05a_propinsr_lbl

label define pr05a_proptx_lbl 00 `"NIU (not in universe)"'
label define pr05a_proptx_lbl 01 `"None"', add
label define pr05a_proptx_lbl 02 `"$1-49"', add
label define pr05a_proptx_lbl 03 `"$50-99"', add
label define pr05a_proptx_lbl 04 `"$100-149"', add
label define pr05a_proptx_lbl 05 `"$150-199"', add
label define pr05a_proptx_lbl 06 `"$200-249"', add
label define pr05a_proptx_lbl 07 `"$250-299"', add
label define pr05a_proptx_lbl 08 `"$300-349"', add
label define pr05a_proptx_lbl 09 `"$350-399"', add
label define pr05a_proptx_lbl 10 `"$400-449"', add
label define pr05a_proptx_lbl 11 `"$450-499"', add
label define pr05a_proptx_lbl 12 `"$500-549"', add
label define pr05a_proptx_lbl 13 `"$550-599"', add
label define pr05a_proptx_lbl 14 `"$600-649"', add
label define pr05a_proptx_lbl 15 `"$650-699"', add
label define pr05a_proptx_lbl 16 `"$700-749"', add
label define pr05a_proptx_lbl 17 `"$750-799"', add
label define pr05a_proptx_lbl 18 `"$800-849"', add
label define pr05a_proptx_lbl 19 `"$850-899"', add
label define pr05a_proptx_lbl 20 `"$900-949"', add
label define pr05a_proptx_lbl 21 `"$950-999"', add
label define pr05a_proptx_lbl 22 `"$1000-1099"', add
label define pr05a_proptx_lbl 23 `"$1100-1199"', add
label define pr05a_proptx_lbl 24 `"$1200-1299"', add
label define pr05a_proptx_lbl 25 `"$1300-1399"', add
label define pr05a_proptx_lbl 26 `"$1400-1499"', add
label define pr05a_proptx_lbl 27 `"$1500-1599"', add
label define pr05a_proptx_lbl 28 `"$1600-1699"', add
label define pr05a_proptx_lbl 29 `"$1700-1799"', add
label define pr05a_proptx_lbl 30 `"$1800-1899"', add
label define pr05a_proptx_lbl 31 `"$1900-1999"', add
label define pr05a_proptx_lbl 32 `"$2000-2099"', add
label define pr05a_proptx_lbl 33 `"$2100-2199"', add
label define pr05a_proptx_lbl 34 `"$2200-2299"', add
label define pr05a_proptx_lbl 35 `"$2300-2399"', add
label define pr05a_proptx_lbl 36 `"$2400-2499"', add
label define pr05a_proptx_lbl 37 `"$2500-2599"', add
label define pr05a_proptx_lbl 38 `"$2600-2699"', add
label define pr05a_proptx_lbl 39 `"$2700-2799"', add
label define pr05a_proptx_lbl 40 `"$2800-2899"', add
label define pr05a_proptx_lbl 41 `"$2900-2999"', add
label define pr05a_proptx_lbl 42 `"$3000-3099"', add
label define pr05a_proptx_lbl 43 `"$3100-3199"', add
label define pr05a_proptx_lbl 44 `"$3200-3299"', add
label define pr05a_proptx_lbl 45 `"$3300-3399"', add
label define pr05a_proptx_lbl 46 `"$3400-3499"', add
label define pr05a_proptx_lbl 47 `"$3500-3599"', add
label define pr05a_proptx_lbl 48 `"$3600-3699"', add
label define pr05a_proptx_lbl 49 `"$3700-3799"', add
label define pr05a_proptx_lbl 50 `"$3800-3899"', add
label define pr05a_proptx_lbl 51 `"$3900-3999"', add
label define pr05a_proptx_lbl 52 `"$4000-4099"', add
label define pr05a_proptx_lbl 53 `"$4100-4199"', add
label define pr05a_proptx_lbl 54 `"$4200-4299"', add
label define pr05a_proptx_lbl 55 `"$4300-4399"', add
label define pr05a_proptx_lbl 56 `"$4400-4499"', add
label define pr05a_proptx_lbl 58 `"$4500-4599"', add
label define pr05a_proptx_lbl 59 `"$4600-4699"', add
label define pr05a_proptx_lbl 60 `"$4700-4799"', add
label define pr05a_proptx_lbl 61 `"$4800-4899"', add
label define pr05a_proptx_lbl 62 `"$4900-4999"', add
label define pr05a_proptx_lbl 63 `"$5000-5499"', add
label define pr05a_proptx_lbl 64 `"$5500-5999"', add
label define pr05a_proptx_lbl 65 `"$6000-6999"', add
label define pr05a_proptx_lbl 66 `"$7000-7999"', add
label define pr05a_proptx_lbl 67 `"$8000-8999"', add
label define pr05a_proptx_lbl 68 `"$9000-9999"', add
label define pr05a_proptx_lbl 69 `"$10,000+"', add
label values pr05a_proptx pr05a_proptx_lbl

label define pr05a_rent_lbl 0000 `"NIU (not in universe)"'
label define pr05a_rent_lbl 0004 `"4"', add
label define pr05a_rent_lbl 0010 `"10"', add
label define pr05a_rent_lbl 0020 `"20"', add
label define pr05a_rent_lbl 0031 `"31"', add
label define pr05a_rent_lbl 0041 `"41"', add
label define pr05a_rent_lbl 0051 `"51"', add
label define pr05a_rent_lbl 0061 `"61"', add
label define pr05a_rent_lbl 0071 `"71"', add
label define pr05a_rent_lbl 0081 `"81"', add
label define pr05a_rent_lbl 0092 `"92"', add
label define pr05a_rent_lbl 0102 `"102"', add
label define pr05a_rent_lbl 0112 `"112"', add
label define pr05a_rent_lbl 0122 `"122"', add
label define pr05a_rent_lbl 0132 `"132"', add
label define pr05a_rent_lbl 0143 `"143"', add
label define pr05a_rent_lbl 0153 `"153"', add
label define pr05a_rent_lbl 0163 `"163"', add
label define pr05a_rent_lbl 0173 `"173"', add
label define pr05a_rent_lbl 0183 `"183"', add
label define pr05a_rent_lbl 0194 `"194"', add
label define pr05a_rent_lbl 0204 `"204"', add
label define pr05a_rent_lbl 0214 `"214"', add
label define pr05a_rent_lbl 0224 `"224"', add
label define pr05a_rent_lbl 0234 `"234"', add
label define pr05a_rent_lbl 0244 `"244"', add
label define pr05a_rent_lbl 0255 `"255"', add
label define pr05a_rent_lbl 0265 `"265"', add
label define pr05a_rent_lbl 0275 `"275"', add
label define pr05a_rent_lbl 0285 `"285"', add
label define pr05a_rent_lbl 0295 `"295"', add
label define pr05a_rent_lbl 0306 `"306"', add
label define pr05a_rent_lbl 0316 `"316"', add
label define pr05a_rent_lbl 0326 `"326"', add
label define pr05a_rent_lbl 0336 `"336"', add
label define pr05a_rent_lbl 0346 `"346"', add
label define pr05a_rent_lbl 0357 `"357"', add
label define pr05a_rent_lbl 0367 `"367"', add
label define pr05a_rent_lbl 0377 `"377"', add
label define pr05a_rent_lbl 0387 `"387"', add
label define pr05a_rent_lbl 0397 `"397"', add
label define pr05a_rent_lbl 0407 `"407"', add
label define pr05a_rent_lbl 0418 `"418"', add
label define pr05a_rent_lbl 0428 `"428"', add
label define pr05a_rent_lbl 0438 `"438"', add
label define pr05a_rent_lbl 0448 `"448"', add
label define pr05a_rent_lbl 0458 `"458"', add
label define pr05a_rent_lbl 0469 `"469"', add
label define pr05a_rent_lbl 0489 `"489"', add
label define pr05a_rent_lbl 0499 `"499"', add
label define pr05a_rent_lbl 0509 `"509"', add
label define pr05a_rent_lbl 0520 `"520"', add
label define pr05a_rent_lbl 0540 `"540"', add
label define pr05a_rent_lbl 0550 `"550"', add
label define pr05a_rent_lbl 0560 `"560"', add
label define pr05a_rent_lbl 0570 `"570"', add
label define pr05a_rent_lbl 0581 `"581"', add
label define pr05a_rent_lbl 0591 `"591"', add
label define pr05a_rent_lbl 0601 `"601"', add
label define pr05a_rent_lbl 0611 `"611"', add
label define pr05a_rent_lbl 0621 `"621"', add
label define pr05a_rent_lbl 0632 `"632"', add
label define pr05a_rent_lbl 0642 `"642"', add
label define pr05a_rent_lbl 0662 `"662"', add
label define pr05a_rent_lbl 0672 `"672"', add
label define pr05a_rent_lbl 0683 `"683"', add
label define pr05a_rent_lbl 0693 `"693"', add
label define pr05a_rent_lbl 0713 `"713"', add
label define pr05a_rent_lbl 0723 `"723"', add
label define pr05a_rent_lbl 0733 `"733"', add
label define pr05a_rent_lbl 0744 `"744"', add
label define pr05a_rent_lbl 0764 `"764"', add
label define pr05a_rent_lbl 0784 `"784"', add
label define pr05a_rent_lbl 0795 `"795"', add
label define pr05a_rent_lbl 0805 `"805"', add
label define pr05a_rent_lbl 0815 `"815"', add
label define pr05a_rent_lbl 0835 `"835"', add
label define pr05a_rent_lbl 0866 `"866"', add
label define pr05a_rent_lbl 0876 `"876"', add
label define pr05a_rent_lbl 0896 `"896"', add
label define pr05a_rent_lbl 0917 `"917"', add
label define pr05a_rent_lbl 0937 `"937"', add
label define pr05a_rent_lbl 0968 `"968"', add
label define pr05a_rent_lbl 0978 `"978"', add
label define pr05a_rent_lbl 1019 `"1019"', add
label define pr05a_rent_lbl 1121 `"1121"', add
label define pr05a_rent_lbl 1222 `"1222"', add
label define pr05a_rent_lbl 1324 `"1324"', add
label define pr05a_rent_lbl 1426 `"1426"', add
label define pr05a_rent_lbl 1528 `"1528"', add
label define pr05a_rent_lbl 1630 `"1630"', add
label define pr05a_rent_lbl 1732 `"1732"', add
label define pr05a_rent_lbl 1834 `"1834"', add
label define pr05a_rent_lbl 2037 `"2037"', add
label define pr05a_rent_lbl 2649 `"State means of all cases above 99.5th percentile within each state"', add
label values pr05a_rent pr05a_rent_lbl

label define pr05a_rentgrs_lbl 0000 `"NIU (not in universe)"'
label values pr05a_rentgrs pr05a_rentgrs_lbl

label define pr05a_rentmeal_lbl 0 `"NIU (not in universe)"'
label define pr05a_rentmeal_lbl 1 `"No, meals not included"', add
label define pr05a_rentmeal_lbl 2 `"Yes"', add
label values pr05a_rentmeal pr05a_rentmeal_lbl

label define pr05a_condofee_lbl 0000 `"0"'
label define pr05a_condofee_lbl 0010 `"10"', add
label define pr05a_condofee_lbl 0020 `"20"', add
label define pr05a_condofee_lbl 0031 `"31"', add
label define pr05a_condofee_lbl 0041 `"41"', add
label define pr05a_condofee_lbl 0051 `"51"', add
label define pr05a_condofee_lbl 0061 `"61"', add
label define pr05a_condofee_lbl 0071 `"71"', add
label define pr05a_condofee_lbl 0081 `"81"', add
label define pr05a_condofee_lbl 0092 `"92"', add
label define pr05a_condofee_lbl 0102 `"102"', add
label define pr05a_condofee_lbl 0112 `"112"', add
label define pr05a_condofee_lbl 0122 `"122"', add
label define pr05a_condofee_lbl 0132 `"132"', add
label define pr05a_condofee_lbl 0143 `"143"', add
label define pr05a_condofee_lbl 0153 `"153"', add
label define pr05a_condofee_lbl 0163 `"163"', add
label define pr05a_condofee_lbl 0173 `"173"', add
label define pr05a_condofee_lbl 0183 `"183"', add
label define pr05a_condofee_lbl 0194 `"194"', add
label define pr05a_condofee_lbl 0204 `"204"', add
label define pr05a_condofee_lbl 0214 `"214"', add
label define pr05a_condofee_lbl 0224 `"224"', add
label define pr05a_condofee_lbl 0234 `"234"', add
label define pr05a_condofee_lbl 0244 `"244"', add
label define pr05a_condofee_lbl 0255 `"255"', add
label define pr05a_condofee_lbl 0265 `"265"', add
label define pr05a_condofee_lbl 0275 `"275"', add
label define pr05a_condofee_lbl 0458 `"458"', add
label values pr05a_condofee pr05a_condofee_lbl

label define pr05a_costelec_lbl 0000 `"NIU (not in universe)"'
label define pr05a_costelec_lbl 0048 `"48"', add
label define pr05a_costelec_lbl 0120 `"120"', add
label define pr05a_costelec_lbl 0240 `"240"', add
label define pr05a_costelec_lbl 0372 `"372"', add
label define pr05a_costelec_lbl 0492 `"492"', add
label define pr05a_costelec_lbl 0612 `"612"', add
label define pr05a_costelec_lbl 0732 `"732"', add
label define pr05a_costelec_lbl 0852 `"852"', add
label define pr05a_costelec_lbl 0972 `"972"', add
label define pr05a_costelec_lbl 1104 `"1104"', add
label define pr05a_costelec_lbl 1224 `"1224"', add
label define pr05a_costelec_lbl 1344 `"1344"', add
label define pr05a_costelec_lbl 1464 `"1464"', add
label define pr05a_costelec_lbl 1584 `"1584"', add
label define pr05a_costelec_lbl 1716 `"1716"', add
label define pr05a_costelec_lbl 1836 `"1836"', add
label define pr05a_costelec_lbl 1956 `"1956"', add
label define pr05a_costelec_lbl 2076 `"2076"', add
label define pr05a_costelec_lbl 2196 `"2196"', add
label define pr05a_costelec_lbl 2328 `"2328"', add
label define pr05a_costelec_lbl 2448 `"2448"', add
label define pr05a_costelec_lbl 2568 `"2568"', add
label define pr05a_costelec_lbl 2688 `"2688"', add
label define pr05a_costelec_lbl 2808 `"2808"', add
label define pr05a_costelec_lbl 2928 `"2928"', add
label define pr05a_costelec_lbl 3060 `"3060"', add
label define pr05a_costelec_lbl 3180 `"3180"', add
label define pr05a_costelec_lbl 3300 `"3300"', add
label define pr05a_costelec_lbl 3420 `"3420"', add
label define pr05a_costelec_lbl 3540 `"3540"', add
label define pr05a_costelec_lbl 3672 `"3672"', add
label define pr05a_costelec_lbl 3792 `"3792"', add
label define pr05a_costelec_lbl 3912 `"3912"', add
label define pr05a_costelec_lbl 4032 `"4032"', add
label define pr05a_costelec_lbl 4152 `"4152"', add
label define pr05a_costelec_lbl 4284 `"4284"', add
label define pr05a_costelec_lbl 4404 `"4404"', add
label define pr05a_costelec_lbl 4524 `"4524"', add
label define pr05a_costelec_lbl 4644 `"4644"', add
label define pr05a_costelec_lbl 4764 `"4764"', add
label define pr05a_costelec_lbl 4884 `"4884"', add
label define pr05a_costelec_lbl 5016 `"5016"', add
label define pr05a_costelec_lbl 5136 `"5136"', add
label define pr05a_costelec_lbl 5256 `"5256"', add
label define pr05a_costelec_lbl 5376 `"5376"', add
label define pr05a_costelec_lbl 5496 `"5496"', add
label define pr05a_costelec_lbl 5628 `"5628"', add
label define pr05a_costelec_lbl 5748 `"5748"', add
label define pr05a_costelec_lbl 5868 `"5868"', add
label define pr05a_costelec_lbl 5988 `"5988"', add
label define pr05a_costelec_lbl 6600 `"6600"', add
label define pr05a_costelec_lbl 9993 `"No charge or no electricity used"', add
label define pr05a_costelec_lbl 9997 `"Electricity included in rent or in condo fee"', add
label values pr05a_costelec pr05a_costelec_lbl

label define pr05a_costgas_lbl 0000 `"NIU (not in universe)"'
label define pr05a_costgas_lbl 0048 `"48"', add
label define pr05a_costgas_lbl 0120 `"120"', add
label define pr05a_costgas_lbl 0240 `"240"', add
label define pr05a_costgas_lbl 0372 `"372"', add
label define pr05a_costgas_lbl 0492 `"492"', add
label define pr05a_costgas_lbl 0612 `"612"', add
label define pr05a_costgas_lbl 0732 `"732"', add
label define pr05a_costgas_lbl 0852 `"852"', add
label define pr05a_costgas_lbl 0972 `"972"', add
label define pr05a_costgas_lbl 1104 `"1104"', add
label define pr05a_costgas_lbl 1224 `"1224"', add
label define pr05a_costgas_lbl 1344 `"1344"', add
label define pr05a_costgas_lbl 1464 `"1464"', add
label define pr05a_costgas_lbl 1584 `"1584"', add
label define pr05a_costgas_lbl 1716 `"1716"', add
label define pr05a_costgas_lbl 1836 `"1836"', add
label define pr05a_costgas_lbl 1956 `"1956"', add
label define pr05a_costgas_lbl 2076 `"2076"', add
label define pr05a_costgas_lbl 2196 `"2196"', add
label define pr05a_costgas_lbl 2328 `"2328"', add
label define pr05a_costgas_lbl 2448 `"2448"', add
label define pr05a_costgas_lbl 2688 `"2688"', add
label define pr05a_costgas_lbl 2808 `"2808"', add
label define pr05a_costgas_lbl 2928 `"2928"', add
label define pr05a_costgas_lbl 3060 `"3060"', add
label define pr05a_costgas_lbl 4152 `"4152"', add
label define pr05a_costgas_lbl 9992 `"Included in gas payment"', add
label define pr05a_costgas_lbl 9993 `"No charge or no gas used"', add
label define pr05a_costgas_lbl 9997 `"Gas included in rent or in condo fee"', add
label values pr05a_costgas pr05a_costgas_lbl

label define pr05a_costwatr_lbl 0000 `"NIU (not in universe)"'
label define pr05a_costwatr_lbl 0004 `"4"', add
label define pr05a_costwatr_lbl 0010 `"10"', add
label define pr05a_costwatr_lbl 0020 `"20"', add
label define pr05a_costwatr_lbl 0031 `"31"', add
label define pr05a_costwatr_lbl 0041 `"41"', add
label define pr05a_costwatr_lbl 0051 `"51"', add
label define pr05a_costwatr_lbl 0061 `"61"', add
label define pr05a_costwatr_lbl 0071 `"71"', add
label define pr05a_costwatr_lbl 0081 `"81"', add
label define pr05a_costwatr_lbl 0092 `"92"', add
label define pr05a_costwatr_lbl 0102 `"102"', add
label define pr05a_costwatr_lbl 0112 `"112"', add
label define pr05a_costwatr_lbl 0122 `"122"', add
label define pr05a_costwatr_lbl 0132 `"132"', add
label define pr05a_costwatr_lbl 0143 `"143"', add
label define pr05a_costwatr_lbl 0153 `"153"', add
label define pr05a_costwatr_lbl 0163 `"163"', add
label define pr05a_costwatr_lbl 0173 `"173"', add
label define pr05a_costwatr_lbl 0183 `"183"', add
label define pr05a_costwatr_lbl 0194 `"194"', add
label define pr05a_costwatr_lbl 0204 `"204"', add
label define pr05a_costwatr_lbl 0214 `"214"', add
label define pr05a_costwatr_lbl 0224 `"224"', add
label define pr05a_costwatr_lbl 0234 `"234"', add
label define pr05a_costwatr_lbl 0244 `"244"', add
label define pr05a_costwatr_lbl 0255 `"255"', add
label define pr05a_costwatr_lbl 0265 `"265"', add
label define pr05a_costwatr_lbl 0275 `"275"', add
label define pr05a_costwatr_lbl 0285 `"285"', add
label define pr05a_costwatr_lbl 0295 `"295"', add
label define pr05a_costwatr_lbl 0306 `"306"', add
label define pr05a_costwatr_lbl 0316 `"316"', add
label define pr05a_costwatr_lbl 0326 `"326"', add
label define pr05a_costwatr_lbl 0336 `"336"', add
label define pr05a_costwatr_lbl 0346 `"346"', add
label define pr05a_costwatr_lbl 0357 `"357"', add
label define pr05a_costwatr_lbl 0367 `"367"', add
label define pr05a_costwatr_lbl 0377 `"377"', add
label define pr05a_costwatr_lbl 0387 `"387"', add
label define pr05a_costwatr_lbl 0397 `"397"', add
label define pr05a_costwatr_lbl 0407 `"407"', add
label define pr05a_costwatr_lbl 0418 `"418"', add
label define pr05a_costwatr_lbl 0428 `"428"', add
label define pr05a_costwatr_lbl 0438 `"438"', add
label define pr05a_costwatr_lbl 0448 `"448"', add
label define pr05a_costwatr_lbl 0458 `"458"', add
label define pr05a_costwatr_lbl 0469 `"469"', add
label define pr05a_costwatr_lbl 0479 `"479"', add
label define pr05a_costwatr_lbl 0489 `"489"', add
label define pr05a_costwatr_lbl 0499 `"499"', add
label define pr05a_costwatr_lbl 0509 `"509"', add
label define pr05a_costwatr_lbl 0520 `"520"', add
label define pr05a_costwatr_lbl 0530 `"530"', add
label define pr05a_costwatr_lbl 0540 `"540"', add
label define pr05a_costwatr_lbl 0550 `"550"', add
label define pr05a_costwatr_lbl 0560 `"560"', add
label define pr05a_costwatr_lbl 0570 `"570"', add
label define pr05a_costwatr_lbl 0581 `"581"', add
label define pr05a_costwatr_lbl 0591 `"591"', add
label define pr05a_costwatr_lbl 0601 `"601"', add
label define pr05a_costwatr_lbl 0611 `"611"', add
label define pr05a_costwatr_lbl 0621 `"621"', add
label define pr05a_costwatr_lbl 0632 `"632"', add
label define pr05a_costwatr_lbl 0642 `"642"', add
label define pr05a_costwatr_lbl 0652 `"652"', add
label define pr05a_costwatr_lbl 0662 `"662"', add
label define pr05a_costwatr_lbl 0672 `"672"', add
label define pr05a_costwatr_lbl 0683 `"683"', add
label define pr05a_costwatr_lbl 0693 `"693"', add
label define pr05a_costwatr_lbl 0703 `"703"', add
label define pr05a_costwatr_lbl 0713 `"713"', add
label define pr05a_costwatr_lbl 0723 `"723"', add
label define pr05a_costwatr_lbl 0733 `"733"', add
label define pr05a_costwatr_lbl 0744 `"744"', add
label define pr05a_costwatr_lbl 0754 `"754"', add
label define pr05a_costwatr_lbl 0764 `"764"', add
label define pr05a_costwatr_lbl 0774 `"774"', add
label define pr05a_costwatr_lbl 0784 `"784"', add
label define pr05a_costwatr_lbl 0795 `"795"', add
label define pr05a_costwatr_lbl 0805 `"805"', add
label define pr05a_costwatr_lbl 0815 `"815"', add
label define pr05a_costwatr_lbl 0825 `"825"', add
label define pr05a_costwatr_lbl 0835 `"835"', add
label define pr05a_costwatr_lbl 0845 `"845"', add
label define pr05a_costwatr_lbl 0856 `"856"', add
label define pr05a_costwatr_lbl 0866 `"866"', add
label define pr05a_costwatr_lbl 0876 `"876"', add
label define pr05a_costwatr_lbl 0886 `"886"', add
label define pr05a_costwatr_lbl 0896 `"896"', add
label define pr05a_costwatr_lbl 0907 `"907"', add
label define pr05a_costwatr_lbl 0917 `"917"', add
label define pr05a_costwatr_lbl 0927 `"927"', add
label define pr05a_costwatr_lbl 0937 `"937"', add
label define pr05a_costwatr_lbl 0947 `"947"', add
label define pr05a_costwatr_lbl 0958 `"958"', add
label define pr05a_costwatr_lbl 0968 `"968"', add
label define pr05a_costwatr_lbl 0978 `"978"', add
label define pr05a_costwatr_lbl 0988 `"988"', add
label define pr05a_costwatr_lbl 0998 `"998"', add
label define pr05a_costwatr_lbl 1019 `"1019"', add
label define pr05a_costwatr_lbl 1121 `"1121"', add
label define pr05a_costwatr_lbl 1222 `"1222"', add
label define pr05a_costwatr_lbl 1324 `"1324"', add
label define pr05a_costwatr_lbl 1426 `"1426"', add
label define pr05a_costwatr_lbl 1528 `"1528"', add
label define pr05a_costwatr_lbl 1630 `"1630"', add
label define pr05a_costwatr_lbl 1732 `"1732"', add
label define pr05a_costwatr_lbl 1834 `"1834"', add
label define pr05a_costwatr_lbl 1935 `"1935"', add
label define pr05a_costwatr_lbl 2750 `"2750"', add
label define pr05a_costwatr_lbl 9993 `"No charge or no water used"', add
label define pr05a_costwatr_lbl 9997 `"Water included in rent or in condo fee"', add
label values pr05a_costwatr pr05a_costwatr_lbl

label define pr05a_costfuel_lbl 0000 `"NIU (not in universe)"'
label define pr05a_costfuel_lbl 0004 `"4"', add
label define pr05a_costfuel_lbl 0010 `"10"', add
label define pr05a_costfuel_lbl 0020 `"20"', add
label define pr05a_costfuel_lbl 0031 `"31"', add
label define pr05a_costfuel_lbl 0041 `"41"', add
label define pr05a_costfuel_lbl 0051 `"51"', add
label define pr05a_costfuel_lbl 0061 `"61"', add
label define pr05a_costfuel_lbl 0071 `"71"', add
label define pr05a_costfuel_lbl 0081 `"81"', add
label define pr05a_costfuel_lbl 0092 `"92"', add
label define pr05a_costfuel_lbl 0102 `"102"', add
label define pr05a_costfuel_lbl 0112 `"112"', add
label define pr05a_costfuel_lbl 0122 `"122"', add
label define pr05a_costfuel_lbl 0132 `"132"', add
label define pr05a_costfuel_lbl 0143 `"143"', add
label define pr05a_costfuel_lbl 0153 `"153"', add
label define pr05a_costfuel_lbl 0163 `"163"', add
label define pr05a_costfuel_lbl 0173 `"173"', add
label define pr05a_costfuel_lbl 0183 `"183"', add
label define pr05a_costfuel_lbl 0194 `"194"', add
label define pr05a_costfuel_lbl 0204 `"204"', add
label define pr05a_costfuel_lbl 0214 `"214"', add
label define pr05a_costfuel_lbl 0224 `"224"', add
label define pr05a_costfuel_lbl 0234 `"234"', add
label define pr05a_costfuel_lbl 0244 `"244"', add
label define pr05a_costfuel_lbl 0255 `"255"', add
label define pr05a_costfuel_lbl 0265 `"265"', add
label define pr05a_costfuel_lbl 0285 `"285"', add
label define pr05a_costfuel_lbl 0295 `"295"', add
label define pr05a_costfuel_lbl 0306 `"306"', add
label define pr05a_costfuel_lbl 0316 `"316"', add
label define pr05a_costfuel_lbl 0326 `"326"', add
label define pr05a_costfuel_lbl 0336 `"336"', add
label define pr05a_costfuel_lbl 0357 `"357"', add
label define pr05a_costfuel_lbl 0367 `"367"', add
label define pr05a_costfuel_lbl 0387 `"387"', add
label define pr05a_costfuel_lbl 0397 `"397"', add
label define pr05a_costfuel_lbl 0407 `"407"', add
label define pr05a_costfuel_lbl 0428 `"428"', add
label define pr05a_costfuel_lbl 0438 `"438"', add
label define pr05a_costfuel_lbl 0448 `"448"', add
label define pr05a_costfuel_lbl 0489 `"489"', add
label define pr05a_costfuel_lbl 0560 `"560"', add
label define pr05a_costfuel_lbl 0611 `"611"', add
label define pr05a_costfuel_lbl 0621 `"621"', add
label define pr05a_costfuel_lbl 0652 `"652"', add
label define pr05a_costfuel_lbl 0672 `"672"', add
label define pr05a_costfuel_lbl 0733 `"733"', add
label define pr05a_costfuel_lbl 0744 `"744"', add
label define pr05a_costfuel_lbl 0815 `"815"', add
label define pr05a_costfuel_lbl 0856 `"856"', add
label define pr05a_costfuel_lbl 0866 `"866"', add
label define pr05a_costfuel_lbl 0917 `"917"', add
label define pr05a_costfuel_lbl 0958 `"958"', add
label define pr05a_costfuel_lbl 1019 `"1019"', add
label define pr05a_costfuel_lbl 1121 `"1121"', add
label define pr05a_costfuel_lbl 1222 `"1222"', add
label define pr05a_costfuel_lbl 1324 `"1324"', add
label define pr05a_costfuel_lbl 1426 `"1426"', add
label define pr05a_costfuel_lbl 1528 `"1528"', add
label define pr05a_costfuel_lbl 2139 `"2139"', add
label define pr05a_costfuel_lbl 9993 `"No charge or no heating used"', add
label define pr05a_costfuel_lbl 9997 `"Heating included in rent or in condo fee"', add
label values pr05a_costfuel pr05a_costfuel_lbl

label define pr05a_ftotinc_lbl 999999 `"NIU (not in universe)"'
label values pr05a_ftotinc pr05a_ftotinc_lbl

label define pr05a_vacancy_lbl 0 `"NIU (not in universe)"'
label define pr05a_vacancy_lbl 1 `"For rent"', add
label define pr05a_vacancy_lbl 2 `"For sale only"', add
label define pr05a_vacancy_lbl 3 `"Rented or sold but not (yet) occupied"', add
label define pr05a_vacancy_lbl 4 `"For seasonal, recreational or other occasional use"', add
label define pr05a_vacancy_lbl 7 `"For migratory workers"', add
label define pr05a_vacancy_lbl 9 `"Other vacant"', add
label values pr05a_vacancy pr05a_vacancy_lbl

label define pr05a_hhincome_lbl 999999 `"NIU (not in universe)"'
label values pr05a_hhincome pr05a_hhincome_lbl

label define pr05a_kitchen_lbl 1 `"No"'
label define pr05a_kitchen_lbl 4 `"Yes (shared or exclusive use)"', add
label values pr05a_kitchen pr05a_kitchen_lbl

label define pr05a_rooms_lbl 1 `"1 room"'
label define pr05a_rooms_lbl 2 `"2"', add
label define pr05a_rooms_lbl 3 `"3"', add
label define pr05a_rooms_lbl 4 `"4"', add
label define pr05a_rooms_lbl 5 `"5"', add
label define pr05a_rooms_lbl 6 `"6"', add
label define pr05a_rooms_lbl 7 `"7"', add
label define pr05a_rooms_lbl 8 `"8"', add
label define pr05a_rooms_lbl 9 `"9 or more"', add
label values pr05a_rooms pr05a_rooms_lbl

label define pr05a_plumbing_lbl 10 `"Without complete plumbing"'
label define pr05a_plumbing_lbl 20 `"With complete plumbing"', add
label values pr05a_plumbing pr05a_plumbing_lbl

label define pr05a_unitsstr_lbl 00 `"NIU (not in universe)"'
label define pr05a_unitsstr_lbl 01 `"Mobile home or trailer"', add
label define pr05a_unitsstr_lbl 02 `"Boat, tent, van, other"', add
label define pr05a_unitsstr_lbl 03 `"1-family house, detached"', add
label define pr05a_unitsstr_lbl 04 `"1-family house, attached"', add
label define pr05a_unitsstr_lbl 05 `"2-family building"', add
label define pr05a_unitsstr_lbl 06 `"3-4 family building"', add
label define pr05a_unitsstr_lbl 07 `"5-9 family building"', add
label define pr05a_unitsstr_lbl 08 `"10-19 family building"', add
label define pr05a_unitsstr_lbl 09 `"20-49 family building"', add
label define pr05a_unitsstr_lbl 10 `"50+ family building"', add
label values pr05a_unitsstr pr05a_unitsstr_lbl

label define pr05a_bedrooms_lbl 0 `"No bedrooms"'
label define pr05a_bedrooms_lbl 1 `"1"', add
label define pr05a_bedrooms_lbl 2 `"2"', add
label define pr05a_bedrooms_lbl 3 `"3"', add
label define pr05a_bedrooms_lbl 4 `"4"', add
label define pr05a_bedrooms_lbl 5 `"5+"', add
label values pr05a_bedrooms pr05a_bedrooms_lbl

label define pr05a_phone_lbl 0 `"NIU (not in universe)"'
label define pr05a_phone_lbl 1 `"No, no phone available"', add
label define pr05a_phone_lbl 2 `"Yes, phone available"', add
label values pr05a_phone pr05a_phone_lbl

label define pr05a_mortamt2_lbl 0000 `"NIU (not in universe)"'
label define pr05a_mortamt2_lbl 0004 `"4"', add
label define pr05a_mortamt2_lbl 0071 `"71"', add
label define pr05a_mortamt2_lbl 0092 `"92"', add
label define pr05a_mortamt2_lbl 0102 `"102"', add
label define pr05a_mortamt2_lbl 0112 `"112"', add
label define pr05a_mortamt2_lbl 0122 `"122"', add
label define pr05a_mortamt2_lbl 0132 `"132"', add
label define pr05a_mortamt2_lbl 0143 `"143"', add
label define pr05a_mortamt2_lbl 0153 `"153"', add
label define pr05a_mortamt2_lbl 0163 `"163"', add
label define pr05a_mortamt2_lbl 0173 `"173"', add
label define pr05a_mortamt2_lbl 0183 `"183"', add
label define pr05a_mortamt2_lbl 0194 `"194"', add
label define pr05a_mortamt2_lbl 0204 `"204"', add
label define pr05a_mortamt2_lbl 0214 `"214"', add
label define pr05a_mortamt2_lbl 0224 `"224"', add
label define pr05a_mortamt2_lbl 0234 `"234"', add
label define pr05a_mortamt2_lbl 0244 `"244"', add
label define pr05a_mortamt2_lbl 0255 `"255"', add
label define pr05a_mortamt2_lbl 0265 `"265"', add
label define pr05a_mortamt2_lbl 0275 `"275"', add
label define pr05a_mortamt2_lbl 0285 `"285"', add
label define pr05a_mortamt2_lbl 0295 `"295"', add
label define pr05a_mortamt2_lbl 0306 `"306"', add
label define pr05a_mortamt2_lbl 0316 `"316"', add
label define pr05a_mortamt2_lbl 0326 `"326"', add
label define pr05a_mortamt2_lbl 0336 `"336"', add
label define pr05a_mortamt2_lbl 0346 `"346"', add
label define pr05a_mortamt2_lbl 0357 `"357"', add
label define pr05a_mortamt2_lbl 0367 `"367"', add
label define pr05a_mortamt2_lbl 0377 `"377"', add
label define pr05a_mortamt2_lbl 0387 `"387"', add
label define pr05a_mortamt2_lbl 0397 `"397"', add
label define pr05a_mortamt2_lbl 0407 `"407"', add
label define pr05a_mortamt2_lbl 0418 `"418"', add
label define pr05a_mortamt2_lbl 0428 `"428"', add
label define pr05a_mortamt2_lbl 0438 `"438"', add
label define pr05a_mortamt2_lbl 0448 `"448"', add
label define pr05a_mortamt2_lbl 0458 `"458"', add
label define pr05a_mortamt2_lbl 0469 `"469"', add
label define pr05a_mortamt2_lbl 0479 `"479"', add
label define pr05a_mortamt2_lbl 0489 `"489"', add
label define pr05a_mortamt2_lbl 0499 `"499"', add
label define pr05a_mortamt2_lbl 0509 `"509"', add
label define pr05a_mortamt2_lbl 0520 `"520"', add
label define pr05a_mortamt2_lbl 0530 `"530"', add
label define pr05a_mortamt2_lbl 0540 `"540"', add
label define pr05a_mortamt2_lbl 0550 `"550"', add
label define pr05a_mortamt2_lbl 0560 `"560"', add
label define pr05a_mortamt2_lbl 0570 `"570"', add
label define pr05a_mortamt2_lbl 0581 `"581"', add
label define pr05a_mortamt2_lbl 0611 `"611"', add
label define pr05a_mortamt2_lbl 0632 `"632"', add
label define pr05a_mortamt2_lbl 0642 `"642"', add
label define pr05a_mortamt2_lbl 0652 `"652"', add
label define pr05a_mortamt2_lbl 0662 `"662"', add
label define pr05a_mortamt2_lbl 0672 `"672"', add
label define pr05a_mortamt2_lbl 0683 `"683"', add
label define pr05a_mortamt2_lbl 0693 `"693"', add
label define pr05a_mortamt2_lbl 0703 `"703"', add
label define pr05a_mortamt2_lbl 0713 `"713"', add
label define pr05a_mortamt2_lbl 0733 `"733"', add
label define pr05a_mortamt2_lbl 0744 `"744"', add
label define pr05a_mortamt2_lbl 0754 `"754"', add
label define pr05a_mortamt2_lbl 0764 `"764"', add
label define pr05a_mortamt2_lbl 0774 `"774"', add
label define pr05a_mortamt2_lbl 0795 `"795"', add
label define pr05a_mortamt2_lbl 0805 `"805"', add
label define pr05a_mortamt2_lbl 0815 `"815"', add
label define pr05a_mortamt2_lbl 0825 `"825"', add
label define pr05a_mortamt2_lbl 0845 `"845"', add
label define pr05a_mortamt2_lbl 0856 `"856"', add
label define pr05a_mortamt2_lbl 0866 `"866"', add
label define pr05a_mortamt2_lbl 0917 `"917"', add
label define pr05a_mortamt2_lbl 0947 `"947"', add
label define pr05a_mortamt2_lbl 0988 `"988"', add
label define pr05a_mortamt2_lbl 1019 `"1019"', add
label define pr05a_mortamt2_lbl 1121 `"1121"', add
label define pr05a_mortamt2_lbl 1222 `"1222"', add
label define pr05a_mortamt2_lbl 1324 `"1324"', add
label define pr05a_mortamt2_lbl 1528 `"1528"', add
label define pr05a_mortamt2_lbl 1630 `"1630"', add
label define pr05a_mortamt2_lbl 1732 `"1732"', add
label define pr05a_mortamt2_lbl 1935 `"1935"', add
label define pr05a_mortamt2_lbl 2139 `"2139"', add
label values pr05a_mortamt2 pr05a_mortamt2_lbl

label define pr05a_lingisol_lbl 0 `"NIU (not in universe)"'
label define pr05a_lingisol_lbl 1 `"Not linguistically isolated"', add
label define pr05a_lingisol_lbl 2 `"Linguistically isolated"', add
label values pr05a_lingisol pr05a_lingisol_lbl

label define pr05a_fuelheat_lbl 0 `"NIU (not in universe)"'
label define pr05a_fuelheat_lbl 1 `"No fuel used"', add
label define pr05a_fuelheat_lbl 2 `"Utility gas from underground pipes serving neighborhood"', add
label define pr05a_fuelheat_lbl 3 `"Bottled, tank, or liquefied petroleum gas"', add
label define pr05a_fuelheat_lbl 4 `"Electricity"', add
label define pr05a_fuelheat_lbl 5 `"Fuel oil, kerosene, other liquid fuels"', add
label define pr05a_fuelheat_lbl 6 `"Coal or coke"', add
label define pr05a_fuelheat_lbl 7 `"Wood"', add
label define pr05a_fuelheat_lbl 8 `"Solar energy"', add
label define pr05a_fuelheat_lbl 9 `"Other"', add
label values pr05a_fuelheat pr05a_fuelheat_lbl

label define pr05a_vehicles_lbl 9 `"NIU (not in universe)"'
label define pr05a_vehicles_lbl 1 `"1 available"', add
label define pr05a_vehicles_lbl 2 `"2"', add
label define pr05a_vehicles_lbl 3 `"3"', add
label define pr05a_vehicles_lbl 4 `"4"', add
label define pr05a_vehicles_lbl 5 `"5"', add
label define pr05a_vehicles_lbl 6 `"6+"', add
label define pr05a_vehicles_lbl 0 `"No vehicles available"', add
label values pr05a_vehicles pr05a_vehicles_lbl

label define pr05a_nfams_lbl 00 `"NIU (not in universe)"'
label define pr05a_nfams_lbl 01 `"1 family or N/A"', add
label define pr05a_nfams_lbl 02 `"2 families"', add
label define pr05a_nfams_lbl 03 `"3"', add
label define pr05a_nfams_lbl 04 `"4"', add
label define pr05a_nfams_lbl 05 `"5"', add
label define pr05a_nfams_lbl 06 `"6"', add
label define pr05a_nfams_lbl 07 `"7"', add
label define pr05a_nfams_lbl 08 `"8"', add
label define pr05a_nfams_lbl 09 `"9"', add
label define pr05a_nfams_lbl 10 `"10"', add
label define pr05a_nfams_lbl 11 `"11"', add
label define pr05a_nfams_lbl 12 `"12"', add
label define pr05a_nfams_lbl 13 `"13"', add
label define pr05a_nfams_lbl 14 `"14"', add
label define pr05a_nfams_lbl 15 `"15"', add
label define pr05a_nfams_lbl 16 `"16"', add
label define pr05a_nfams_lbl 17 `"17"', add
label define pr05a_nfams_lbl 18 `"18"', add
label define pr05a_nfams_lbl 19 `"19"', add
label define pr05a_nfams_lbl 20 `"20"', add
label define pr05a_nfams_lbl 21 `"21"', add
label define pr05a_nfams_lbl 22 `"22"', add
label define pr05a_nfams_lbl 23 `"23"', add
label define pr05a_nfams_lbl 24 `"24"', add
label define pr05a_nfams_lbl 25 `"25"', add
label define pr05a_nfams_lbl 26 `"26"', add
label define pr05a_nfams_lbl 27 `"27"', add
label define pr05a_nfams_lbl 28 `"28"', add
label define pr05a_nfams_lbl 29 `"29"', add
label values pr05a_nfams pr05a_nfams_lbl

label define pr05a_ncouples_lbl 0 `"0 couples"'
label define pr05a_ncouples_lbl 1 `"1"', add
label define pr05a_ncouples_lbl 2 `"2"', add
label define pr05a_ncouples_lbl 3 `"3"', add
label define pr05a_ncouples_lbl 9 `"NIU (not in universe)"', add
label values pr05a_ncouples pr05a_ncouples_lbl

label define pr05a_nmothers_lbl 0 `"0 mothers"'
label define pr05a_nmothers_lbl 1 `"1"', add
label define pr05a_nmothers_lbl 2 `"2"', add
label define pr05a_nmothers_lbl 3 `"3"', add
label define pr05a_nmothers_lbl 9 `"NIU (not in universe)"', add
label values pr05a_nmothers pr05a_nmothers_lbl

label define pr05a_nfathers_lbl 0 `"0 fathers"'
label define pr05a_nfathers_lbl 1 `"1"', add
label define pr05a_nfathers_lbl 2 `"2"', add
label define pr05a_nfathers_lbl 3 `"3"', add
label define pr05a_nfathers_lbl 9 `"NIU (not in universe)"', add
label values pr05a_nfathers pr05a_nfathers_lbl

label define pr05a_qmoblhom_lbl 0 `"Not allocated"'
label define pr05a_qmoblhom_lbl 4 `"Allocated"', add
label values pr05a_qmoblhom pr05a_qmoblhom_lbl

label define pr05a_qmortam1_lbl 0 `"Not allocated"'
label define pr05a_qmortam1_lbl 4 `"Allocated"', add
label values pr05a_qmortam1 pr05a_qmortam1_lbl

label define pr05a_qinsincl_lbl 0 `"Not allocated"'
label define pr05a_qinsincl_lbl 4 `"Allocated"', add
label values pr05a_qinsincl pr05a_qinsincl_lbl

label define pr05a_qmortam2_lbl 0 `"Not allocated"'
label define pr05a_qmortam2_lbl 4 `"Allocated"', add
label values pr05a_qmortam2 pr05a_qmortam2_lbl

label define pr05a_qbedroom_lbl 0 `"Not allocated"'
label define pr05a_qbedroom_lbl 4 `"Allocated, hot deck"', add
label values pr05a_qbedroom pr05a_qbedroom_lbl

label define pr05a_qcommuse_lbl 0 `"Not allocated"'
label define pr05a_qcommuse_lbl 4 `"Allocated, hot deck"', add
label values pr05a_qcommuse pr05a_qcommuse_lbl

label define pr05a_qmortga2_lbl 0 `"Not allocated"'
label define pr05a_qmortga2_lbl 4 `"Allocated"', add
label values pr05a_qmortga2 pr05a_qmortga2_lbl

label define pr05a_qcostele_lbl 0 `"Not allocated"'
label define pr05a_qcostele_lbl 4 `"Allocated"', add
label values pr05a_qcostele pr05a_qcostele_lbl

label define pr05a_qmortgag_lbl 0 `"Not allocated"'
label define pr05a_qmortgag_lbl 4 `"Allocated"', add
label values pr05a_qmortgag pr05a_qmortgag_lbl

label define pr05a_qcostfue_lbl 0 `"Not allocated"'
label define pr05a_qcostfue_lbl 4 `"Allocated"', add
label values pr05a_qcostfue pr05a_qcostfue_lbl

label define pr05a_qcostgas_lbl 0 `"Not allocated"'
label define pr05a_qcostgas_lbl 4 `"Allocated"', add
label values pr05a_qcostgas pr05a_qcostgas_lbl

label define pr05a_qpropins_lbl 0 `"Not allocated"'
label define pr05a_qpropins_lbl 4 `"Allocated"', add
label values pr05a_qpropins pr05a_qpropins_lbl

label define pr05a_qcostwat_lbl 0 `"Not allocated"'
label define pr05a_qcostwat_lbl 4 `"Allocated"', add
label values pr05a_qcostwat pr05a_qcostwat_lbl

label define pr05a_qproptx_lbl 0 `"Not allocated"'
label define pr05a_qproptx_lbl 4 `"Allocated"', add
label values pr05a_qproptx pr05a_qproptx_lbl

label define pr05a_qfarmpro_lbl 0 `"Not allocated"'
label define pr05a_qfarmpro_lbl 4 `"Allocated"', add
label values pr05a_qfarmpro pr05a_qfarmpro_lbl

label define pr05a_qrentmea_lbl 0 `"Not allocated"'
label define pr05a_qrentmea_lbl 4 `"Allocated"', add
label values pr05a_qrentmea pr05a_qrentmea_lbl

label define pr05a_qfuelhea_lbl 0 `"Not allocated"'
label define pr05a_qfuelhea_lbl 4 `"Allocated"', add
label values pr05a_qfuelhea pr05a_qfuelhea_lbl

label define pr05a_qplumbin_lbl 0 `"Not allocated"'
label define pr05a_qplumbin_lbl 4 `"Allocated"', add
label values pr05a_qplumbin pr05a_qplumbin_lbl

label define pr05a_qkitchen_lbl 0 `"Not allocated"'
label define pr05a_qkitchen_lbl 4 `"Allocated"', add
label values pr05a_qkitchen pr05a_qkitchen_lbl

label define pr05a_qownersh_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define pr05a_qownersh_lbl 4 `"Allocated"', add
label values pr05a_qownersh pr05a_qownersh_lbl

label define pr05a_qphone_lbl 0 `"Not allocated"'
label define pr05a_qphone_lbl 4 `"Allocated"', add
label values pr05a_qphone pr05a_qphone_lbl

label define pr05a_qrent_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define pr05a_qrent_lbl 4 `"Allocated (method not specified)"', add
label values pr05a_qrent pr05a_qrent_lbl

label define pr05a_qrooms_lbl 0 `"Not allocated"'
label define pr05a_qrooms_lbl 4 `"Allocated"', add
label values pr05a_qrooms pr05a_qrooms_lbl

label define pr05a_qunitsst_lbl 0 `"Not allocated"'
label define pr05a_qunitsst_lbl 4 `"Allocated"', add
label values pr05a_qunitsst pr05a_qunitsst_lbl

label define pr05a_qvacancy_lbl 0 `"Not allocated"'
label define pr05a_qvacancy_lbl 4 `"Allocated"', add
label values pr05a_qvacancy pr05a_qvacancy_lbl

label define pr05a_qvalueh_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define pr05a_qvalueh_lbl 4 `"Allocated"', add
label values pr05a_qvalueh pr05a_qvalueh_lbl

label define pr05a_qcondofe_lbl 0 `"Not allocated"'
label define pr05a_qcondofe_lbl 4 `"Allocated"', add
label values pr05a_qcondofe pr05a_qcondofe_lbl

label define pr05a_qtaxincl_lbl 0 `"Not allocated"'
label define pr05a_qtaxincl_lbl 4 `"Allocated"', add
label values pr05a_qtaxincl pr05a_qtaxincl_lbl

label define pr05a_foodstmp_lbl 0 `"N/A"'
label define pr05a_foodstmp_lbl 1 `"No"', add
label define pr05a_foodstmp_lbl 2 `"Yes"', add
label values pr05a_foodstmp pr05a_foodstmp_lbl

label define pr05a_qfoodstm_lbl 0 `"Not allocated"'
label define pr05a_qfoodstm_lbl 4 `"Allocated"', add
label values pr05a_qfoodstm pr05a_qfoodstm_lbl

label define pr05a_qmortg2a_lbl 0 `"Not allocated"'
label define pr05a_qmortg2a_lbl 4 `"Allocated"', add
label values pr05a_qmortg2a pr05a_qmortg2a_lbl

label define pr05a_pumasupr_lbl 72100 `"72100"'
label define pr05a_pumasupr_lbl 72200 `"72200"', add
label define pr05a_pumasupr_lbl 72300 `"72300"', add
label define pr05a_pumasupr_lbl 72400 `"72400"', add
label define pr05a_pumasupr_lbl 72500 `"72500"', add
label define pr05a_pumasupr_lbl 72600 `"72600"', add
label define pr05a_pumasupr_lbl 72700 `"72700"', add
label define pr05a_pumasupr_lbl 72800 `"72800"', add
label values pr05a_pumasupr pr05a_pumasupr_lbl

label define pr05a_builtyr2_lbl 01 `"2005 or later"'
label define pr05a_builtyr2_lbl 02 `"2000-2004"', add
label define pr05a_builtyr2_lbl 04 `"1990-1999"', add
label define pr05a_builtyr2_lbl 05 `"1980-1989"', add
label define pr05a_builtyr2_lbl 06 `"1970-1979"', add
label define pr05a_builtyr2_lbl 07 `"1960-1969"', add
label define pr05a_builtyr2_lbl 08 `"1950-1959"', add
label define pr05a_builtyr2_lbl 09 `"1940-1949"', add
label define pr05a_builtyr2_lbl 10 `"1939 or earlier"', add
label values pr05a_builtyr2 pr05a_builtyr2_lbl

label define pr05a_qbuilty2_lbl 0 `"Not allocated"'
label define pr05a_qbuilty2_lbl 4 `"Allocated"', add
label values pr05a_qbuilty2 pr05a_qbuilty2_lbl

label define pr05a_secres_lbl 0 `"NIU (not in universe)"'
label define pr05a_secres_lbl 1 `"Not a second residence"', add
label define pr05a_secres_lbl 2 `"Second residence"', add
label values pr05a_secres pr05a_secres_lbl

label define pr05a_secresmo_lbl 00 `"NIU (not in universe)"'
label define pr05a_secresmo_lbl 01 `"1"', add
label define pr05a_secresmo_lbl 02 `"2"', add
label define pr05a_secresmo_lbl 03 `"3"', add
label define pr05a_secresmo_lbl 04 `"4"', add
label define pr05a_secresmo_lbl 05 `"5"', add
label define pr05a_secresmo_lbl 06 `"6"', add
label define pr05a_secresmo_lbl 07 `"7"', add
label define pr05a_secresmo_lbl 08 `"8"', add
label define pr05a_secresmo_lbl 09 `"9"', add
label define pr05a_secresmo_lbl 10 `"10"', add
label define pr05a_secresmo_lbl 11 `"11"', add
label values pr05a_secresmo pr05a_secresmo_lbl

label define pr05a_secresre_lbl 0 `"NIU (not in universe)"'
label define pr05a_secresre_lbl 1 `"Permanent address"', add
label define pr05a_secresre_lbl 2 `"Seasonal or vacation address"', add
label define pr05a_secresre_lbl 3 `"To be close to work"', add
label define pr05a_secresre_lbl 4 `"Attend school or college"', add
label define pr05a_secresre_lbl 5 `"Looking for permanent housing"', add
label define pr05a_secresre_lbl 6 `"Other reason"', add
label values pr05a_secresre pr05a_secresre_lbl

label define pr05a_fdstpamt_lbl 99999 `"NIU (not in universe)"'
label values pr05a_fdstpamt pr05a_fdstpamt_lbl

label define pr05a_hhtype_lbl 0 `"NIU (not in universe)"'
label define pr05a_hhtype_lbl 1 `"Married-couple family household"', add
label define pr05a_hhtype_lbl 2 `"Male householder, no wife present"', add
label define pr05a_hhtype_lbl 3 `"Female householder, no husband present"', add
label define pr05a_hhtype_lbl 4 `"Male householder, living alone"', add
label define pr05a_hhtype_lbl 5 `"Male householder, not living alone"', add
label define pr05a_hhtype_lbl 6 `"Female householder, living alone"', add
label define pr05a_hhtype_lbl 7 `"Female householder, not living alone"', add
label values pr05a_hhtype pr05a_hhtype_lbl

label define pr05a_qvehicle_lbl 0 `"Not allocated"'
label define pr05a_qvehicle_lbl 4 `"Allocated"', add
label values pr05a_qvehicle pr05a_qvehicle_lbl

label define pr05a_pernum_lbl 00 `"Household record"'
label define pr05a_pernum_lbl 01 `"1"', add
label define pr05a_pernum_lbl 02 `"2"', add
label define pr05a_pernum_lbl 03 `"3"', add
label define pr05a_pernum_lbl 04 `"4"', add
label define pr05a_pernum_lbl 05 `"5"', add
label define pr05a_pernum_lbl 06 `"6"', add
label define pr05a_pernum_lbl 07 `"7"', add
label define pr05a_pernum_lbl 08 `"8"', add
label define pr05a_pernum_lbl 09 `"9"', add
label define pr05a_pernum_lbl 10 `"10"', add
label define pr05a_pernum_lbl 11 `"11"', add
label define pr05a_pernum_lbl 12 `"12"', add
label define pr05a_pernum_lbl 13 `"13"', add
label define pr05a_pernum_lbl 14 `"14"', add
label values pr05a_pernum pr05a_pernum_lbl

label define pr05a_pernump_lbl 01 `"1"'
label define pr05a_pernump_lbl 02 `"2"', add
label define pr05a_pernump_lbl 03 `"3"', add
label define pr05a_pernump_lbl 04 `"4"', add
label define pr05a_pernump_lbl 05 `"5"', add
label define pr05a_pernump_lbl 06 `"6"', add
label define pr05a_pernump_lbl 07 `"7"', add
label define pr05a_pernump_lbl 08 `"8"', add
label define pr05a_pernump_lbl 09 `"9"', add
label define pr05a_pernump_lbl 10 `"10"', add
label define pr05a_pernump_lbl 11 `"11"', add
label define pr05a_pernump_lbl 12 `"12"', add
label define pr05a_pernump_lbl 13 `"13"', add
label define pr05a_pernump_lbl 14 `"14"', add
label values pr05a_pernump pr05a_pernump_lbl

label define pr05a_momloc_lbl 0 `"0"'
label define pr05a_momloc_lbl 1 `"1"', add
label define pr05a_momloc_lbl 2 `"2"', add
label define pr05a_momloc_lbl 3 `"3"', add
label define pr05a_momloc_lbl 4 `"4"', add
label define pr05a_momloc_lbl 5 `"5"', add
label define pr05a_momloc_lbl 6 `"6"', add
label define pr05a_momloc_lbl 7 `"7"', add
label define pr05a_momloc_lbl 8 `"8"', add
label define pr05a_momloc_lbl 9 `"9"', add
label values pr05a_momloc pr05a_momloc_lbl

label define pr05a_stepmom_lbl 0 `"No stepmother present"'
label define pr05a_stepmom_lbl 1 `"Improbable age difference"', add
label define pr05a_stepmom_lbl 2 `"Spouse of father"', add
label define pr05a_stepmom_lbl 3 `"Identified stepmother"', add
label define pr05a_stepmom_lbl 4 `"No surviving children"', add
label define pr05a_stepmom_lbl 5 `"Identified as adopted"', add
label define pr05a_stepmom_lbl 6 `"Birthplace/marriage duration mismatch"', add
label define pr05a_stepmom_lbl 7 `"Number of children born/children surviving check"', add
label values pr05a_stepmom pr05a_stepmom_lbl

label define pr05a_momrule_lbl 0 `"No mother link"'
label define pr05a_momrule_lbl 1 `"Unambiguous mother link"', add
label define pr05a_momrule_lbl 2 `"Daughter/grandchild link"', add
label define pr05a_momrule_lbl 3 `"Preceding female (no intervening person)"', add
label define pr05a_momrule_lbl 4 `"Preceding female (surname similarity)"', add
label define pr05a_momrule_lbl 5 `"Daughter/grandchild (child surviving status)"', add
label define pr05a_momrule_lbl 6 `"Preceding female (child surviving status)"', add
label define pr05a_momrule_lbl 7 `"Spouse of father becomes stepmother"', add
label values pr05a_momrule pr05a_momrule_lbl

label define pr05a_poploc_lbl 00 `"0"'
label define pr05a_poploc_lbl 01 `"1"', add
label define pr05a_poploc_lbl 02 `"2"', add
label define pr05a_poploc_lbl 03 `"3"', add
label define pr05a_poploc_lbl 04 `"4"', add
label define pr05a_poploc_lbl 05 `"5"', add
label define pr05a_poploc_lbl 06 `"6"', add
label define pr05a_poploc_lbl 07 `"7"', add
label define pr05a_poploc_lbl 08 `"8"', add
label define pr05a_poploc_lbl 09 `"9"', add
label define pr05a_poploc_lbl 10 `"10"', add
label define pr05a_poploc_lbl 11 `"11"', add
label define pr05a_poploc_lbl 12 `"12"', add
label define pr05a_poploc_lbl 13 `"13"', add
label define pr05a_poploc_lbl 14 `"14"', add
label define pr05a_poploc_lbl 15 `"15"', add
label define pr05a_poploc_lbl 16 `"16"', add
label define pr05a_poploc_lbl 17 `"17"', add
label define pr05a_poploc_lbl 18 `"18"', add
label define pr05a_poploc_lbl 19 `"19"', add
label define pr05a_poploc_lbl 20 `"20"', add
label define pr05a_poploc_lbl 21 `"21"', add
label define pr05a_poploc_lbl 22 `"22"', add
label define pr05a_poploc_lbl 23 `"23"', add
label define pr05a_poploc_lbl 24 `"24"', add
label define pr05a_poploc_lbl 25 `"25"', add
label define pr05a_poploc_lbl 26 `"26"', add
label define pr05a_poploc_lbl 27 `"27"', add
label define pr05a_poploc_lbl 28 `"28"', add
label define pr05a_poploc_lbl 29 `"29"', add
label values pr05a_poploc pr05a_poploc_lbl

label define pr05a_steppop_lbl 0 `"No stepfather present"'
label define pr05a_steppop_lbl 1 `"Improbable age difference"', add
label define pr05a_steppop_lbl 2 `"Spouse of mother"', add
label define pr05a_steppop_lbl 3 `"Identified stepfather"', add
label define pr05a_steppop_lbl 5 `"Identified as adopted"', add
label define pr05a_steppop_lbl 6 `"Birthplace/marriage duration mismatch"', add
label define pr05a_steppop_lbl 7 `"Surname difference -- male child or never-married female"', add
label values pr05a_steppop pr05a_steppop_lbl

label define pr05a_poprule_lbl 0 `"No father link"'
label define pr05a_poprule_lbl 1 `"Unambiguous father link"', add
label define pr05a_poprule_lbl 2 `"Son/grandchild link"', add
label define pr05a_poprule_lbl 3 `"Preceding male (no intervening person)"', add
label define pr05a_poprule_lbl 4 `"Preceding male (surname similarity)"', add
label define pr05a_poprule_lbl 7 `"Husband of mother becomes stepfather"', add
label values pr05a_poprule pr05a_poprule_lbl

label define pr05a_sploc_lbl 0 `"0"'
label define pr05a_sploc_lbl 1 `"1"', add
label define pr05a_sploc_lbl 2 `"2"', add
label define pr05a_sploc_lbl 3 `"3"', add
label define pr05a_sploc_lbl 4 `"4"', add
label define pr05a_sploc_lbl 5 `"5"', add
label define pr05a_sploc_lbl 6 `"6"', add
label define pr05a_sploc_lbl 7 `"7"', add
label define pr05a_sploc_lbl 8 `"8"', add
label define pr05a_sploc_lbl 9 `"9"', add
label values pr05a_sploc pr05a_sploc_lbl

label define pr05a_sprule_lbl 0 `"No spouse link"'
label define pr05a_sprule_lbl 1 `"Wife follows husband"', add
label define pr05a_sprule_lbl 2 `"Wife precedes husband"', add
label define pr05a_sprule_lbl 3 `"Non-adjacent links -- consistent relationship to head/age differences"', add
label define pr05a_sprule_lbl 4 `"Adjacent links (wife follows husband -- no age, other relative conflicts)"', add
label define pr05a_sprule_lbl 5 `"Adjacent links (wife precedes husband -- no age, other relative conflicts)"', add
label define pr05a_sprule_lbl 6 `"Non-adjacent links -- no age, other relative conflicts"', add
label define pr05a_sprule_lbl 7 `"Previously allocated marital status -- no age, other relative conflicts"', add
label values pr05a_sprule pr05a_sprule_lbl

label define pr05a_famsize_lbl 01 `"1 family member present"'
label define pr05a_famsize_lbl 02 `"2 family members present"', add
label define pr05a_famsize_lbl 03 `"3 family members present"', add
label define pr05a_famsize_lbl 04 `"4 family members present"', add
label define pr05a_famsize_lbl 05 `"5 family members present"', add
label define pr05a_famsize_lbl 06 `"6 family members present"', add
label define pr05a_famsize_lbl 07 `"7 family members present"', add
label define pr05a_famsize_lbl 08 `"8 family members present"', add
label define pr05a_famsize_lbl 09 `"9 family members present"', add
label define pr05a_famsize_lbl 10 `"10 family members present"', add
label define pr05a_famsize_lbl 11 `"11 family members present"', add
label define pr05a_famsize_lbl 12 `"12 family members present"', add
label define pr05a_famsize_lbl 13 `"13 family members present"', add
label define pr05a_famsize_lbl 14 `"14 family members present"', add
label values pr05a_famsize pr05a_famsize_lbl

label define pr05a_nchild_lbl 0 `"0 children present"'
label define pr05a_nchild_lbl 1 `"1 child present"', add
label define pr05a_nchild_lbl 2 `"2"', add
label define pr05a_nchild_lbl 3 `"3"', add
label define pr05a_nchild_lbl 4 `"4"', add
label define pr05a_nchild_lbl 5 `"5"', add
label define pr05a_nchild_lbl 6 `"6"', add
label define pr05a_nchild_lbl 7 `"7"', add
label define pr05a_nchild_lbl 8 `"8"', add
label define pr05a_nchild_lbl 9 `"9+"', add
label values pr05a_nchild pr05a_nchild_lbl

label define pr05a_nchlt5_lbl 0 `"No children under age 5"'
label define pr05a_nchlt5_lbl 1 `"1 child under age 5"', add
label define pr05a_nchlt5_lbl 2 `"2"', add
label define pr05a_nchlt5_lbl 3 `"3"', add
label define pr05a_nchlt5_lbl 4 `"4"', add
label values pr05a_nchlt5 pr05a_nchlt5_lbl

label define pr05a_famunit_lbl 01 `"1st family in household or group quarters"'
label define pr05a_famunit_lbl 02 `"2nd family in household or group quarters"', add
label define pr05a_famunit_lbl 03 `"3rd"', add
label define pr05a_famunit_lbl 04 `"4th"', add
label define pr05a_famunit_lbl 05 `"5th"', add
label define pr05a_famunit_lbl 06 `"6th"', add
label define pr05a_famunit_lbl 07 `"7th"', add
label define pr05a_famunit_lbl 08 `"8th"', add
label define pr05a_famunit_lbl 09 `"9th"', add
label define pr05a_famunit_lbl 10 `"10th"', add
label define pr05a_famunit_lbl 11 `"11th"', add
label values pr05a_famunit pr05a_famunit_lbl

label define pr05a_eldch_lbl 00 `"Less than 1 year old"'
label define pr05a_eldch_lbl 01 `"1"', add
label define pr05a_eldch_lbl 02 `"2"', add
label define pr05a_eldch_lbl 03 `"3"', add
label define pr05a_eldch_lbl 04 `"4"', add
label define pr05a_eldch_lbl 05 `"5"', add
label define pr05a_eldch_lbl 06 `"6"', add
label define pr05a_eldch_lbl 07 `"7"', add
label define pr05a_eldch_lbl 08 `"8"', add
label define pr05a_eldch_lbl 09 `"9"', add
label define pr05a_eldch_lbl 10 `"10"', add
label define pr05a_eldch_lbl 11 `"11"', add
label define pr05a_eldch_lbl 12 `"12"', add
label define pr05a_eldch_lbl 13 `"13"', add
label define pr05a_eldch_lbl 14 `"14"', add
label define pr05a_eldch_lbl 15 `"15"', add
label define pr05a_eldch_lbl 16 `"16"', add
label define pr05a_eldch_lbl 17 `"17"', add
label define pr05a_eldch_lbl 18 `"18"', add
label define pr05a_eldch_lbl 19 `"19"', add
label define pr05a_eldch_lbl 20 `"20"', add
label define pr05a_eldch_lbl 21 `"21"', add
label define pr05a_eldch_lbl 22 `"22"', add
label define pr05a_eldch_lbl 23 `"23"', add
label define pr05a_eldch_lbl 24 `"24"', add
label define pr05a_eldch_lbl 25 `"25"', add
label define pr05a_eldch_lbl 26 `"26"', add
label define pr05a_eldch_lbl 27 `"27"', add
label define pr05a_eldch_lbl 28 `"28"', add
label define pr05a_eldch_lbl 29 `"29"', add
label define pr05a_eldch_lbl 30 `"30"', add
label define pr05a_eldch_lbl 31 `"31"', add
label define pr05a_eldch_lbl 32 `"32"', add
label define pr05a_eldch_lbl 33 `"33"', add
label define pr05a_eldch_lbl 34 `"34"', add
label define pr05a_eldch_lbl 35 `"35"', add
label define pr05a_eldch_lbl 36 `"36"', add
label define pr05a_eldch_lbl 37 `"37"', add
label define pr05a_eldch_lbl 38 `"38"', add
label define pr05a_eldch_lbl 39 `"39"', add
label define pr05a_eldch_lbl 40 `"40"', add
label define pr05a_eldch_lbl 41 `"41"', add
label define pr05a_eldch_lbl 42 `"42"', add
label define pr05a_eldch_lbl 43 `"43"', add
label define pr05a_eldch_lbl 44 `"44"', add
label define pr05a_eldch_lbl 45 `"45"', add
label define pr05a_eldch_lbl 46 `"46"', add
label define pr05a_eldch_lbl 47 `"47"', add
label define pr05a_eldch_lbl 48 `"48"', add
label define pr05a_eldch_lbl 49 `"49"', add
label define pr05a_eldch_lbl 50 `"50"', add
label define pr05a_eldch_lbl 51 `"51"', add
label define pr05a_eldch_lbl 52 `"52"', add
label define pr05a_eldch_lbl 53 `"53"', add
label define pr05a_eldch_lbl 54 `"54"', add
label define pr05a_eldch_lbl 55 `"55"', add
label define pr05a_eldch_lbl 56 `"56"', add
label define pr05a_eldch_lbl 57 `"57"', add
label define pr05a_eldch_lbl 58 `"58"', add
label define pr05a_eldch_lbl 59 `"59"', add
label define pr05a_eldch_lbl 60 `"60"', add
label define pr05a_eldch_lbl 61 `"61"', add
label define pr05a_eldch_lbl 62 `"62"', add
label define pr05a_eldch_lbl 63 `"63"', add
label define pr05a_eldch_lbl 64 `"64"', add
label define pr05a_eldch_lbl 65 `"65"', add
label define pr05a_eldch_lbl 66 `"66"', add
label define pr05a_eldch_lbl 67 `"67"', add
label define pr05a_eldch_lbl 68 `"68"', add
label define pr05a_eldch_lbl 69 `"69"', add
label define pr05a_eldch_lbl 70 `"70"', add
label define pr05a_eldch_lbl 71 `"71"', add
label define pr05a_eldch_lbl 72 `"72"', add
label define pr05a_eldch_lbl 73 `"73"', add
label define pr05a_eldch_lbl 74 `"74"', add
label define pr05a_eldch_lbl 75 `"75"', add
label define pr05a_eldch_lbl 76 `"76"', add
label define pr05a_eldch_lbl 77 `"77"', add
label define pr05a_eldch_lbl 78 `"78"', add
label define pr05a_eldch_lbl 79 `"79"', add
label define pr05a_eldch_lbl 80 `"80"', add
label define pr05a_eldch_lbl 81 `"81"', add
label define pr05a_eldch_lbl 82 `"82"', add
label define pr05a_eldch_lbl 99 `"NIU (not in universe)"', add
label values pr05a_eldch pr05a_eldch_lbl

label define pr05a_yngch_lbl 00 `"Less than 1 year old"'
label define pr05a_yngch_lbl 01 `"1"', add
label define pr05a_yngch_lbl 02 `"2"', add
label define pr05a_yngch_lbl 03 `"3"', add
label define pr05a_yngch_lbl 04 `"4"', add
label define pr05a_yngch_lbl 05 `"5"', add
label define pr05a_yngch_lbl 06 `"6"', add
label define pr05a_yngch_lbl 07 `"7"', add
label define pr05a_yngch_lbl 08 `"8"', add
label define pr05a_yngch_lbl 09 `"9"', add
label define pr05a_yngch_lbl 10 `"10"', add
label define pr05a_yngch_lbl 11 `"11"', add
label define pr05a_yngch_lbl 12 `"12"', add
label define pr05a_yngch_lbl 13 `"13"', add
label define pr05a_yngch_lbl 14 `"14"', add
label define pr05a_yngch_lbl 15 `"15"', add
label define pr05a_yngch_lbl 16 `"16"', add
label define pr05a_yngch_lbl 17 `"17"', add
label define pr05a_yngch_lbl 18 `"18"', add
label define pr05a_yngch_lbl 19 `"19"', add
label define pr05a_yngch_lbl 20 `"20"', add
label define pr05a_yngch_lbl 21 `"21"', add
label define pr05a_yngch_lbl 22 `"22"', add
label define pr05a_yngch_lbl 23 `"23"', add
label define pr05a_yngch_lbl 24 `"24"', add
label define pr05a_yngch_lbl 25 `"25"', add
label define pr05a_yngch_lbl 26 `"26"', add
label define pr05a_yngch_lbl 27 `"27"', add
label define pr05a_yngch_lbl 28 `"28"', add
label define pr05a_yngch_lbl 29 `"29"', add
label define pr05a_yngch_lbl 30 `"30"', add
label define pr05a_yngch_lbl 31 `"31"', add
label define pr05a_yngch_lbl 32 `"32"', add
label define pr05a_yngch_lbl 33 `"33"', add
label define pr05a_yngch_lbl 34 `"34"', add
label define pr05a_yngch_lbl 35 `"35"', add
label define pr05a_yngch_lbl 36 `"36"', add
label define pr05a_yngch_lbl 37 `"37"', add
label define pr05a_yngch_lbl 38 `"38"', add
label define pr05a_yngch_lbl 39 `"39"', add
label define pr05a_yngch_lbl 40 `"40"', add
label define pr05a_yngch_lbl 41 `"41"', add
label define pr05a_yngch_lbl 42 `"42"', add
label define pr05a_yngch_lbl 43 `"43"', add
label define pr05a_yngch_lbl 44 `"44"', add
label define pr05a_yngch_lbl 45 `"45"', add
label define pr05a_yngch_lbl 46 `"46"', add
label define pr05a_yngch_lbl 47 `"47"', add
label define pr05a_yngch_lbl 48 `"48"', add
label define pr05a_yngch_lbl 49 `"49"', add
label define pr05a_yngch_lbl 50 `"50"', add
label define pr05a_yngch_lbl 51 `"51"', add
label define pr05a_yngch_lbl 52 `"52"', add
label define pr05a_yngch_lbl 53 `"53"', add
label define pr05a_yngch_lbl 54 `"54"', add
label define pr05a_yngch_lbl 55 `"55"', add
label define pr05a_yngch_lbl 56 `"56"', add
label define pr05a_yngch_lbl 57 `"57"', add
label define pr05a_yngch_lbl 58 `"58"', add
label define pr05a_yngch_lbl 59 `"59"', add
label define pr05a_yngch_lbl 60 `"60"', add
label define pr05a_yngch_lbl 61 `"61"', add
label define pr05a_yngch_lbl 62 `"62"', add
label define pr05a_yngch_lbl 63 `"63"', add
label define pr05a_yngch_lbl 64 `"64"', add
label define pr05a_yngch_lbl 65 `"65"', add
label define pr05a_yngch_lbl 66 `"66"', add
label define pr05a_yngch_lbl 67 `"67"', add
label define pr05a_yngch_lbl 68 `"68"', add
label define pr05a_yngch_lbl 69 `"69"', add
label define pr05a_yngch_lbl 70 `"70"', add
label define pr05a_yngch_lbl 71 `"71"', add
label define pr05a_yngch_lbl 72 `"72"', add
label define pr05a_yngch_lbl 73 `"73"', add
label define pr05a_yngch_lbl 74 `"74"', add
label define pr05a_yngch_lbl 75 `"75"', add
label define pr05a_yngch_lbl 76 `"76"', add
label define pr05a_yngch_lbl 77 `"77"', add
label define pr05a_yngch_lbl 78 `"78"', add
label define pr05a_yngch_lbl 79 `"79"', add
label define pr05a_yngch_lbl 80 `"80"', add
label define pr05a_yngch_lbl 81 `"81"', add
label define pr05a_yngch_lbl 82 `"82"', add
label define pr05a_yngch_lbl 83 `"83"', add
label define pr05a_yngch_lbl 99 `"NIU (not in universe)"', add
label values pr05a_yngch pr05a_yngch_lbl

label define pr05a_nsibs_lbl 0 `"0 siblings"'
label define pr05a_nsibs_lbl 1 `"1 sibling"', add
label define pr05a_nsibs_lbl 2 `"2 siblings"', add
label define pr05a_nsibs_lbl 3 `"3 siblings"', add
label define pr05a_nsibs_lbl 4 `"4 siblings"', add
label define pr05a_nsibs_lbl 5 `"5 siblings"', add
label define pr05a_nsibs_lbl 6 `"6 siblings"', add
label define pr05a_nsibs_lbl 7 `"7 siblings"', add
label define pr05a_nsibs_lbl 8 `"8 siblings"', add
label define pr05a_nsibs_lbl 9 `"9 or more siblings"', add
label values pr05a_nsibs pr05a_nsibs_lbl

label define pr05a_relate_lbl 0101 `"Head/householder"'
label define pr05a_relate_lbl 0201 `"Spouse"', add
label define pr05a_relate_lbl 0301 `"Child"', add
label define pr05a_relate_lbl 0501 `"Parent"', add
label define pr05a_relate_lbl 0601 `"In-laws"', add
label define pr05a_relate_lbl 0701 `"Sibling"', add
label define pr05a_relate_lbl 0901 `"Grandchild"', add
label define pr05a_relate_lbl 1001 `"Other relatives, n.s."', add
label define pr05a_relate_lbl 1114 `"Unmarried partner"', add
label define pr05a_relate_lbl 1115 `"Housemate/roommate"', add
label define pr05a_relate_lbl 1241 `"Roomer/boarders/lodgers"', add
label define pr05a_relate_lbl 1242 `"Foster children"', add
label define pr05a_relate_lbl 1260 `"Other non-relatives"', add
label values pr05a_relate pr05a_relate_lbl

label define pr05a_age_lbl 00 `"Less than 1 year old"'
label define pr05a_age_lbl 01 `"1"', add
label define pr05a_age_lbl 02 `"2"', add
label define pr05a_age_lbl 03 `"3"', add
label define pr05a_age_lbl 04 `"4"', add
label define pr05a_age_lbl 05 `"5"', add
label define pr05a_age_lbl 06 `"6"', add
label define pr05a_age_lbl 07 `"7"', add
label define pr05a_age_lbl 08 `"8"', add
label define pr05a_age_lbl 09 `"9"', add
label define pr05a_age_lbl 10 `"10"', add
label define pr05a_age_lbl 11 `"11"', add
label define pr05a_age_lbl 12 `"12"', add
label define pr05a_age_lbl 13 `"13"', add
label define pr05a_age_lbl 14 `"14"', add
label define pr05a_age_lbl 15 `"15"', add
label define pr05a_age_lbl 16 `"16"', add
label define pr05a_age_lbl 17 `"17"', add
label define pr05a_age_lbl 18 `"18"', add
label define pr05a_age_lbl 19 `"19"', add
label define pr05a_age_lbl 20 `"20"', add
label define pr05a_age_lbl 21 `"21"', add
label define pr05a_age_lbl 22 `"22"', add
label define pr05a_age_lbl 23 `"23"', add
label define pr05a_age_lbl 24 `"24"', add
label define pr05a_age_lbl 25 `"25"', add
label define pr05a_age_lbl 26 `"26"', add
label define pr05a_age_lbl 27 `"27"', add
label define pr05a_age_lbl 28 `"28"', add
label define pr05a_age_lbl 29 `"29"', add
label define pr05a_age_lbl 30 `"30"', add
label define pr05a_age_lbl 31 `"31"', add
label define pr05a_age_lbl 32 `"32"', add
label define pr05a_age_lbl 33 `"33"', add
label define pr05a_age_lbl 34 `"34"', add
label define pr05a_age_lbl 35 `"35"', add
label define pr05a_age_lbl 36 `"36"', add
label define pr05a_age_lbl 37 `"37"', add
label define pr05a_age_lbl 38 `"38"', add
label define pr05a_age_lbl 39 `"39"', add
label define pr05a_age_lbl 40 `"40"', add
label define pr05a_age_lbl 41 `"41"', add
label define pr05a_age_lbl 42 `"42"', add
label define pr05a_age_lbl 43 `"43"', add
label define pr05a_age_lbl 44 `"44"', add
label define pr05a_age_lbl 45 `"45"', add
label define pr05a_age_lbl 46 `"46"', add
label define pr05a_age_lbl 47 `"47"', add
label define pr05a_age_lbl 48 `"48"', add
label define pr05a_age_lbl 49 `"49"', add
label define pr05a_age_lbl 50 `"50"', add
label define pr05a_age_lbl 51 `"51"', add
label define pr05a_age_lbl 52 `"52"', add
label define pr05a_age_lbl 53 `"53"', add
label define pr05a_age_lbl 54 `"54"', add
label define pr05a_age_lbl 55 `"55"', add
label define pr05a_age_lbl 56 `"56"', add
label define pr05a_age_lbl 57 `"57"', add
label define pr05a_age_lbl 58 `"58"', add
label define pr05a_age_lbl 59 `"59"', add
label define pr05a_age_lbl 60 `"60"', add
label define pr05a_age_lbl 61 `"61"', add
label define pr05a_age_lbl 62 `"62"', add
label define pr05a_age_lbl 63 `"63"', add
label define pr05a_age_lbl 64 `"64"', add
label define pr05a_age_lbl 65 `"65"', add
label define pr05a_age_lbl 66 `"66"', add
label define pr05a_age_lbl 67 `"67"', add
label define pr05a_age_lbl 68 `"68"', add
label define pr05a_age_lbl 69 `"69"', add
label define pr05a_age_lbl 70 `"70"', add
label define pr05a_age_lbl 71 `"71"', add
label define pr05a_age_lbl 72 `"72"', add
label define pr05a_age_lbl 73 `"73"', add
label define pr05a_age_lbl 74 `"74"', add
label define pr05a_age_lbl 75 `"75"', add
label define pr05a_age_lbl 76 `"76"', add
label define pr05a_age_lbl 77 `"77"', add
label define pr05a_age_lbl 78 `"78"', add
label define pr05a_age_lbl 79 `"79"', add
label define pr05a_age_lbl 80 `"80"', add
label define pr05a_age_lbl 81 `"81"', add
label define pr05a_age_lbl 82 `"82"', add
label define pr05a_age_lbl 83 `"83"', add
label define pr05a_age_lbl 84 `"84"', add
label define pr05a_age_lbl 85 `"85"', add
label define pr05a_age_lbl 86 `"86"', add
label define pr05a_age_lbl 87 `"87"', add
label define pr05a_age_lbl 88 `"88"', add
label define pr05a_age_lbl 92 `"Median age above 88"', add
label values pr05a_age pr05a_age_lbl

label define pr05a_sex_lbl 1 `"Male"'
label define pr05a_sex_lbl 2 `"Female"', add
label values pr05a_sex pr05a_sex_lbl

label define pr05a_race_lbl 100 `"White"'
label define pr05a_race_lbl 200 `"Black/Negro"', add
label define pr05a_race_lbl 302 `"Apache"', add
label define pr05a_race_lbl 321 `"Seminole"', add
label define pr05a_race_lbl 327 `"AIAN, tribe not specified"', add
label define pr05a_race_lbl 390 `"Other Specified AI tribe"', add
label define pr05a_race_lbl 393 `"Both AI and AN"', add
label define pr05a_race_lbl 400 `"Chinese"', add
label define pr05a_race_lbl 500 `"Japanese"', add
label define pr05a_race_lbl 600 `"Filipino"', add
label define pr05a_race_lbl 610 `"Asian Indian"', add
label define pr05a_race_lbl 630 `"Native Hawaiian"', add
label define pr05a_race_lbl 663 `"Thai"', add
label define pr05a_race_lbl 666 `"Indonesian"', add
label define pr05a_race_lbl 700 `"Other race, n.e.c."', add
label define pr05a_race_lbl 801 `"White and Black"', add
label define pr05a_race_lbl 802 `"White and Asian"', add
label define pr05a_race_lbl 811 `"White and Chinese"', add
label define pr05a_race_lbl 816 `"White and Vietnamese"', add
label define pr05a_race_lbl 821 `"White and Native Hawaiian"', add
label define pr05a_race_lbl 823 `"White and Guamanian/Chamorro"', add
label define pr05a_race_lbl 826 `"White and 'other race'  write-in"', add
label define pr05a_race_lbl 827 `"White and one or more major race groups, n.e.c."', add
label define pr05a_race_lbl 830 `"Black and Asian"', add
label define pr05a_race_lbl 835 `"Black and Asian Indian"', add
label define pr05a_race_lbl 841 `"Black and Pacific Islander write-in"', add
label define pr05a_race_lbl 845 `"Black and 'other race' write-in"', add
label define pr05a_race_lbl 856 `"AIAN and 'other race'  write-in"', add
label define pr05a_race_lbl 883 `"Filipino and 'other race' write-in"', add
label define pr05a_race_lbl 899 `"Asian/Pacific Islander and 'other race' write-in"', add
label define pr05a_race_lbl 901 `"White, Black, and AIAN"', add
label define pr05a_race_lbl 904 `"White and Black and 'other race' write-in"', add
label values pr05a_race pr05a_race_lbl

label define pr05a_marst_lbl 1 `"Married, spouse present"'
label define pr05a_marst_lbl 2 `"Married, spouse absent"', add
label define pr05a_marst_lbl 3 `"Separated"', add
label define pr05a_marst_lbl 4 `"Divorced"', add
label define pr05a_marst_lbl 5 `"Widowed"', add
label define pr05a_marst_lbl 6 `"Never married/single"', add
label values pr05a_marst pr05a_marst_lbl

label define pr05a_bpl_lbl 00100 `"Alabama"'
label define pr05a_bpl_lbl 00200 `"Alaska"', add
label define pr05a_bpl_lbl 00400 `"Arizona"', add
label define pr05a_bpl_lbl 00500 `"Arkansas"', add
label define pr05a_bpl_lbl 00600 `"California"', add
label define pr05a_bpl_lbl 00800 `"Colorado"', add
label define pr05a_bpl_lbl 00900 `"Connecticut"', add
label define pr05a_bpl_lbl 01100 `"District of Columbia"', add
label define pr05a_bpl_lbl 01200 `"Florida"', add
label define pr05a_bpl_lbl 01300 `"Georgia"', add
label define pr05a_bpl_lbl 01500 `"Hawaii"', add
label define pr05a_bpl_lbl 01600 `"Idaho"', add
label define pr05a_bpl_lbl 01700 `"Illinois"', add
label define pr05a_bpl_lbl 01800 `"Indiana"', add
label define pr05a_bpl_lbl 01900 `"Iowa"', add
label define pr05a_bpl_lbl 02000 `"Kansas"', add
label define pr05a_bpl_lbl 02100 `"Kentucky"', add
label define pr05a_bpl_lbl 02200 `"Louisiana"', add
label define pr05a_bpl_lbl 02400 `"Maryland"', add
label define pr05a_bpl_lbl 02500 `"Massachusetts"', add
label define pr05a_bpl_lbl 02600 `"Michigan"', add
label define pr05a_bpl_lbl 02800 `"Mississippi"', add
label define pr05a_bpl_lbl 02900 `"Missouri"', add
label define pr05a_bpl_lbl 03100 `"Nebraska"', add
label define pr05a_bpl_lbl 03200 `"Nevada"', add
label define pr05a_bpl_lbl 03400 `"New Jersey"', add
label define pr05a_bpl_lbl 03500 `"New Mexico"', add
label define pr05a_bpl_lbl 03600 `"New York"', add
label define pr05a_bpl_lbl 03700 `"North Carolina"', add
label define pr05a_bpl_lbl 03800 `"North Dakota"', add
label define pr05a_bpl_lbl 03900 `"Ohio"', add
label define pr05a_bpl_lbl 04000 `"Oklahoma"', add
label define pr05a_bpl_lbl 04100 `"Oregon"', add
label define pr05a_bpl_lbl 04200 `"Pennsylvania"', add
label define pr05a_bpl_lbl 04400 `"Rhode Island"', add
label define pr05a_bpl_lbl 04500 `"South Carolina"', add
label define pr05a_bpl_lbl 04700 `"Tennessee"', add
label define pr05a_bpl_lbl 04800 `"Texas"', add
label define pr05a_bpl_lbl 04900 `"Utah"', add
label define pr05a_bpl_lbl 05100 `"Virginia"', add
label define pr05a_bpl_lbl 05300 `"Washington"', add
label define pr05a_bpl_lbl 05400 `"West Virginia"', add
label define pr05a_bpl_lbl 05500 `"Wisconsin"', add
label define pr05a_bpl_lbl 05600 `"Wyoming"', add
label define pr05a_bpl_lbl 11000 `"Puerto Rico"', add
label define pr05a_bpl_lbl 11500 `"U.S. Virgin Islands"', add
label define pr05a_bpl_lbl 15000 `"Canada"', add
label define pr05a_bpl_lbl 20000 `"Mexico"', add
label define pr05a_bpl_lbl 21020 `"Costa Rica"', add
label define pr05a_bpl_lbl 21030 `"El Salvador"', add
label define pr05a_bpl_lbl 21040 `"Guatemala"', add
label define pr05a_bpl_lbl 21050 `"Honduras"', add
label define pr05a_bpl_lbl 21060 `"Nicaragua"', add
label define pr05a_bpl_lbl 21070 `"Panama"', add
label define pr05a_bpl_lbl 25000 `"Cuba"', add
label define pr05a_bpl_lbl 26010 `"Dominican Republic"', add
label define pr05a_bpl_lbl 26020 `"Haiti"', add
label define pr05a_bpl_lbl 26054 `"Dominica"', add
label define pr05a_bpl_lbl 26055 `"Grenada"', add
label define pr05a_bpl_lbl 26057 `"St. Kitts-Nevis"', add
label define pr05a_bpl_lbl 26060 `"Trinidad and Tobago"', add
label define pr05a_bpl_lbl 26091 `"Caribbean, n.s. / n.e.c."', add
label define pr05a_bpl_lbl 26094 `"West Indies, n.s."', add
label define pr05a_bpl_lbl 30005 `"Argentina"', add
label define pr05a_bpl_lbl 30010 `"Bolivia"', add
label define pr05a_bpl_lbl 30015 `"Brazil"', add
label define pr05a_bpl_lbl 30020 `"Chile"', add
label define pr05a_bpl_lbl 30025 `"Colombia"', add
label define pr05a_bpl_lbl 30030 `"Ecuador"', add
label define pr05a_bpl_lbl 30040 `"Guyana/British Guiana"', add
label define pr05a_bpl_lbl 30050 `"Peru"', add
label define pr05a_bpl_lbl 30060 `"Uruguay"', add
label define pr05a_bpl_lbl 30065 `"Venezuela"', add
label define pr05a_bpl_lbl 41000 `"England"', add
label define pr05a_bpl_lbl 41100 `"Scotland"', add
label define pr05a_bpl_lbl 42100 `"France"', add
label define pr05a_bpl_lbl 42600 `"Switzerland"', add
label define pr05a_bpl_lbl 43000 `"Albania"', add
label define pr05a_bpl_lbl 43400 `"Italy"', add
label define pr05a_bpl_lbl 43800 `"Spain"', add
label define pr05a_bpl_lbl 45300 `"Germany"', add
label define pr05a_bpl_lbl 45600 `"Romania"', add
label define pr05a_bpl_lbl 50000 `"China"', add
label define pr05a_bpl_lbl 50010 `"Hong Kong"', add
label define pr05a_bpl_lbl 50100 `"Japan"', add
label define pr05a_bpl_lbl 51200 `"Indonesia"', add
label define pr05a_bpl_lbl 51500 `"Philippines"', add
label define pr05a_bpl_lbl 51700 `"Thailand"', add
label define pr05a_bpl_lbl 52100 `"India"', add
label define pr05a_bpl_lbl 53200 `"Iraq"', add
label define pr05a_bpl_lbl 53400 `"Israel/Palestine"', add
label define pr05a_bpl_lbl 53500 `"Jordan"', add
label define pr05a_bpl_lbl 59900 `"Asia, n.e.c./n.s."', add
label define pr05a_bpl_lbl 60064 `"Eastern Africa, n.e.c./n.s."', add
label define pr05a_bpl_lbl 60072 `"Cameroon"', add
label define pr05a_bpl_lbl 70010 `"Australia"', add
label define pr05a_bpl_lbl 95000 `"Other, n.e.c."', add
label values pr05a_bpl pr05a_bpl_lbl

label define pr05a_ancestr2_lbl 0080 `"Belgian"'
label define pr05a_ancestr2_lbl 0110 `"British"', add
label define pr05a_ancestr2_lbl 0120 `"British Isles"', add
label define pr05a_ancestr2_lbl 0210 `"Dutch"', add
label define pr05a_ancestr2_lbl 0220 `"English"', add
label define pr05a_ancestr2_lbl 0261 `"French"', add
label define pr05a_ancestr2_lbl 0321 `"German"', add
label define pr05a_ancestr2_lbl 0500 `"Irish"', add
label define pr05a_ancestr2_lbl 0511 `"Italian"', add
label define pr05a_ancestr2_lbl 0840 `"Portuguese"', add
label define pr05a_ancestr2_lbl 0870 `"Scotch Irish"', add
label define pr05a_ancestr2_lbl 0890 `"Swedish"', add
label define pr05a_ancestr2_lbl 0970 `"Welsh"', add
label define pr05a_ancestr2_lbl 1111 `"Czech"', add
label define pr05a_ancestr2_lbl 1480 `"Russian"', add
label define pr05a_ancestr2_lbl 1950 `"European, n.e.c."', add
label define pr05a_ancestr2_lbl 2001 `"Spaniard"', add
label define pr05a_ancestr2_lbl 2101 `"Mexican"', add
label define pr05a_ancestr2_lbl 2102 `"Mexicano/Mexicana"', add
label define pr05a_ancestr2_lbl 2210 `"Costa Rican"', add
label define pr05a_ancestr2_lbl 2220 `"Guatemalan"', add
label define pr05a_ancestr2_lbl 2230 `"Honduran"', add
label define pr05a_ancestr2_lbl 2251 `"Panamanian"', add
label define pr05a_ancestr2_lbl 2260 `"Salvadoran"', add
label define pr05a_ancestr2_lbl 2274 `"Latin"', add
label define pr05a_ancestr2_lbl 2310 `"Argentinean"', add
label define pr05a_ancestr2_lbl 2330 `"Chilean"', add
label define pr05a_ancestr2_lbl 2340 `"Colombian"', add
label define pr05a_ancestr2_lbl 2350 `"Ecuadorian"', add
label define pr05a_ancestr2_lbl 2360 `"Paraguayan"', add
label define pr05a_ancestr2_lbl 2370 `"Peruvian"', add
label define pr05a_ancestr2_lbl 2390 `"Venezuelan"', add
label define pr05a_ancestr2_lbl 2610 `"Puerto Rican"', add
label define pr05a_ancestr2_lbl 2710 `"Cuban"', add
label define pr05a_ancestr2_lbl 2750 `"Dominican"', add
label define pr05a_ancestr2_lbl 2900 `"Hispanic"', add
label define pr05a_ancestr2_lbl 2910 `"Spanish"', add
label define pr05a_ancestr2_lbl 3080 `"Jamaican"', add
label define pr05a_ancestr2_lbl 3140 `"Trinidadian/Tobagonian"', add
label define pr05a_ancestr2_lbl 3212 `"Antigua"', add
label define pr05a_ancestr2_lbl 3350 `"West Indian"', add
label define pr05a_ancestr2_lbl 3360 `"Haitian"', add
label define pr05a_ancestr2_lbl 3370 `"Other West Indian"', add
label define pr05a_ancestr2_lbl 3700 `"Guyanese/British Guiana"', add
label define pr05a_ancestr2_lbl 4170 `"Iraqi"', add
label define pr05a_ancestr2_lbl 4250 `"Lebanese"', add
label define pr05a_ancestr2_lbl 4950 `"Arab"', add
label define pr05a_ancestr2_lbl 5700 `"South African"', add
label define pr05a_ancestr2_lbl 5990 `"African"', add
label define pr05a_ancestr2_lbl 6151 `"India"', add
label define pr05a_ancestr2_lbl 7200 `"Filipino"', add
label define pr05a_ancestr2_lbl 7301 `"Indonesian"', add
label define pr05a_ancestr2_lbl 8110 `"Hawaiian"', add
label define pr05a_ancestr2_lbl 9020 `"African-American"', add
label define pr05a_ancestr2_lbl 9200 `"American Indian"', add
label define pr05a_ancestr2_lbl 9990 `"Unknown"', add
label values pr05a_ancestr2 pr05a_ancestr2_lbl

label define pr05a_citizen_lbl 0 `"NIU (not in universe)"'
label define pr05a_citizen_lbl 1 `"Born abroad of American parents"', add
label define pr05a_citizen_lbl 2 `"Naturalized citizen"', add
label define pr05a_citizen_lbl 3 `"Not a citizen"', add
label values pr05a_citizen pr05a_citizen_lbl

label define pr05a_hispan_lbl 000 `"Not Hispanic"'
label define pr05a_hispan_lbl 100 `"Mexican"', add
label define pr05a_hispan_lbl 200 `"Puerto Rican"', add
label define pr05a_hispan_lbl 300 `"Cuban"', add
label define pr05a_hispan_lbl 411 `"Costa Rican"', add
label define pr05a_hispan_lbl 412 `"Guatemalan"', add
label define pr05a_hispan_lbl 413 `"Honduran"', add
label define pr05a_hispan_lbl 414 `"Nicaraguan"', add
label define pr05a_hispan_lbl 415 `"Panamanian"', add
label define pr05a_hispan_lbl 416 `"Salvadoran"', add
label define pr05a_hispan_lbl 417 `"Central American, n.e.c."', add
label define pr05a_hispan_lbl 420 `"Argentinean"', add
label define pr05a_hispan_lbl 421 `"Bolivian"', add
label define pr05a_hispan_lbl 422 `"Chilean"', add
label define pr05a_hispan_lbl 423 `"Colombian"', add
label define pr05a_hispan_lbl 424 `"Ecuadorian"', add
label define pr05a_hispan_lbl 426 `"Peruvian"', add
label define pr05a_hispan_lbl 427 `"Uruguayan"', add
label define pr05a_hispan_lbl 428 `"Venezuelan"', add
label define pr05a_hispan_lbl 431 `"South American, n.e.c."', add
label define pr05a_hispan_lbl 450 `"Spaniard"', add
label define pr05a_hispan_lbl 460 `"Dominican"', add
label define pr05a_hispan_lbl 498 `"Other, not specified"', add
label define pr05a_hispan_lbl 499 `"Other, not elsewhere classified"', add
label define pr05a_hispan_lbl 900 `"Unknown"', add
label values pr05a_hispan pr05a_hispan_lbl

label define pr05a_yrsusa2_lbl 0 `"NIU (not in universe)"'
label define pr05a_yrsusa2_lbl 1 `"0 to 5 years"', add
label define pr05a_yrsusa2_lbl 5 `"21+ years"', add
label values pr05a_yrsusa2 pr05a_yrsusa2_lbl

label define pr05a_language_lbl 0000 `"NIU (not in universe)"'
label define pr05a_language_lbl 0100 `"English"', add
label define pr05a_language_lbl 0200 `"German"', add
label define pr05a_language_lbl 1000 `"Italian"', add
label define pr05a_language_lbl 1100 `"French"', add
label define pr05a_language_lbl 1200 `"Spanish"', add
label define pr05a_language_lbl 1300 `"Portuguese"', add
label define pr05a_language_lbl 1400 `"Rumanian"', add
label define pr05a_language_lbl 3102 `"Hindi"', add
label define pr05a_language_lbl 3190 `"Other Indo-European languages"', add
label define pr05a_language_lbl 4300 `"Chinese"', add
label define pr05a_language_lbl 5400 `"Filipino, Tagalog"', add
label define pr05a_language_lbl 5440 `"Llocano, Hocano"', add
label define pr05a_language_lbl 5700 `"Arabic"', add
label define pr05a_language_lbl 9410 `"Other specified American Indian languages"', add
label values pr05a_language pr05a_language_lbl

label define pr05a_speakeng_lbl 0 `"NIU (not in universe)"'
label define pr05a_speakeng_lbl 1 `"Does not speak English"', add
label define pr05a_speakeng_lbl 3 `"Yes, speaks only English"', add
label define pr05a_speakeng_lbl 4 `"Yes, speaks very well"', add
label define pr05a_speakeng_lbl 5 `"Yes, speaks well"', add
label define pr05a_speakeng_lbl 6 `"Yes, but not well"', add
label values pr05a_speakeng pr05a_speakeng_lbl

label define pr05a_school_lbl 0 `"NIU (not in universe)"'
label define pr05a_school_lbl 1 `"No, not in school"', add
label define pr05a_school_lbl 2 `"Yes, in school"', add
label values pr05a_school pr05a_school_lbl

label define pr05a_educ99_lbl 00 `"NIU (not in universe)"'
label define pr05a_educ99_lbl 01 `"No school completed"', add
label define pr05a_educ99_lbl 04 `"1st-4th grade"', add
label define pr05a_educ99_lbl 05 `"5th-8th grade"', add
label define pr05a_educ99_lbl 06 `"9th grade"', add
label define pr05a_educ99_lbl 07 `"10th grade"', add
label define pr05a_educ99_lbl 08 `"11th grade"', add
label define pr05a_educ99_lbl 09 `"12th grade, no diploma"', add
label define pr05a_educ99_lbl 10 `"High school graduate, or GED"', add
label define pr05a_educ99_lbl 11 `"Some college, no degree"', add
label define pr05a_educ99_lbl 13 `"Associate degree, academic program"', add
label define pr05a_educ99_lbl 14 `"Bachelor's degree"', add
label define pr05a_educ99_lbl 15 `"Master's degree"', add
label define pr05a_educ99_lbl 16 `"Professional degree"', add
label define pr05a_educ99_lbl 17 `"Doctorate degree"', add
label values pr05a_educ99 pr05a_educ99_lbl

label define pr05a_educrec_lbl 0 `"NIU (not in universe)"'
label define pr05a_educrec_lbl 1 `"None or preschool"', add
label define pr05a_educrec_lbl 2 `"Grade 1, 2, 3, or 4"', add
label define pr05a_educrec_lbl 3 `"Grade 5, 6, 7, or 8"', add
label define pr05a_educrec_lbl 4 `"Grade 9"', add
label define pr05a_educrec_lbl 5 `"Grade 10"', add
label define pr05a_educrec_lbl 6 `"Grade 11"', add
label define pr05a_educrec_lbl 7 `"Grade 12"', add
label define pr05a_educrec_lbl 8 `"1 to 3 years of college"', add
label define pr05a_educrec_lbl 9 `"4+ years of college"', add
label values pr05a_educrec pr05a_educrec_lbl

label define pr05a_schltype_lbl 0 `"NIU (not in universe)"'
label define pr05a_schltype_lbl 1 `"Not enrolled"', add
label define pr05a_schltype_lbl 2 `"Public school"', add
label define pr05a_schltype_lbl 3 `"Private school"', add
label values pr05a_schltype pr05a_schltype_lbl

label define pr05a_empstat_lbl 00 `"NIU (not in universe)"'
label define pr05a_empstat_lbl 10 `"At work"', add
label define pr05a_empstat_lbl 12 `"Has job, not working"', add
label define pr05a_empstat_lbl 14 `"Armed forces--at work"', add
label define pr05a_empstat_lbl 15 `"Armed forces--with job but not at work"', add
label define pr05a_empstat_lbl 20 `"Unemployed"', add
label define pr05a_empstat_lbl 30 `"Not in labor force"', add
label values pr05a_empstat pr05a_empstat_lbl

label define pr05a_labforce_lbl 0 `"NIU (not in universe)"'
label define pr05a_labforce_lbl 1 `"No, not in the labor force"', add
label define pr05a_labforce_lbl 2 `"Yes, in the labor force"', add
label values pr05a_labforce pr05a_labforce_lbl

label define pr05a_occ1950_lbl 000 `"Accountants and auditors"'
label define pr05a_occ1950_lbl 001 `"Actors and actresses"', add
label define pr05a_occ1950_lbl 002 `"Airplane pilots and navigators"', add
label define pr05a_occ1950_lbl 003 `"Architects"', add
label define pr05a_occ1950_lbl 004 `"Artists and art teachers"', add
label define pr05a_occ1950_lbl 005 `"Athletes"', add
label define pr05a_occ1950_lbl 006 `"Authors"', add
label define pr05a_occ1950_lbl 007 `"Chemists"', add
label define pr05a_occ1950_lbl 008 `"Chiropractors"', add
label define pr05a_occ1950_lbl 009 `"Clergymen"', add
label define pr05a_occ1950_lbl 010 `"College presidents and deans"', add
label define pr05a_occ1950_lbl 012 `"Agricultural sciences"', add
label define pr05a_occ1950_lbl 013 `"Biological sciences"', add
label define pr05a_occ1950_lbl 014 `"Chemistry"', add
label define pr05a_occ1950_lbl 015 `"Economics"', add
label define pr05a_occ1950_lbl 016 `"Engineering"', add
label define pr05a_occ1950_lbl 017 `"Geology and geophysics"', add
label define pr05a_occ1950_lbl 018 `"Mathematics"', add
label define pr05a_occ1950_lbl 019 `"Medical sciences"', add
label define pr05a_occ1950_lbl 023 `"Physics"', add
label define pr05a_occ1950_lbl 024 `"Psychology"', add
label define pr05a_occ1950_lbl 025 `"Statistics"', add
label define pr05a_occ1950_lbl 026 `"Natural science (n.e.c.)"', add
label define pr05a_occ1950_lbl 027 `"Social sciences (n.e.c.)"', add
label define pr05a_occ1950_lbl 028 `"Nonscientific subjects"', add
label define pr05a_occ1950_lbl 029 `"Subject not specified"', add
label define pr05a_occ1950_lbl 031 `"Dancers and dancing teachers"', add
label define pr05a_occ1950_lbl 032 `"Dentists"', add
label define pr05a_occ1950_lbl 033 `"Designers"', add
label define pr05a_occ1950_lbl 034 `"Dieticians and nutritionists"', add
label define pr05a_occ1950_lbl 035 `"Draftsmen"', add
label define pr05a_occ1950_lbl 036 `"Editors and reporters"', add
label define pr05a_occ1950_lbl 041 `"Engineers, aeronautical"', add
label define pr05a_occ1950_lbl 042 `"Engineers, chemical"', add
label define pr05a_occ1950_lbl 043 `"Engineers, civil"', add
label define pr05a_occ1950_lbl 044 `"Engineers, electrical"', add
label define pr05a_occ1950_lbl 045 `"Engineers, industrial"', add
label define pr05a_occ1950_lbl 046 `"Engineers, mechanical"', add
label define pr05a_occ1950_lbl 047 `"Engineers, metallurgical, metallurgists"', add
label define pr05a_occ1950_lbl 048 `"Engineers, mining"', add
label define pr05a_occ1950_lbl 049 `"Engineers (n.e.c.)"', add
label define pr05a_occ1950_lbl 051 `"Entertainers (n.e.c.)"', add
label define pr05a_occ1950_lbl 052 `"Farm and home management advisors"', add
label define pr05a_occ1950_lbl 053 `"Foresters and conservationists"', add
label define pr05a_occ1950_lbl 054 `"Funeral directors and embalmers"', add
label define pr05a_occ1950_lbl 055 `"Lawyers and judges"', add
label define pr05a_occ1950_lbl 056 `"Librarians"', add
label define pr05a_occ1950_lbl 057 `"Musicians and music teachers"', add
label define pr05a_occ1950_lbl 058 `"Nurses, professional"', add
label define pr05a_occ1950_lbl 059 `"Nurses, student professional"', add
label define pr05a_occ1950_lbl 061 `"Agricultural scientists"', add
label define pr05a_occ1950_lbl 062 `"Biological scientists"', add
label define pr05a_occ1950_lbl 063 `"Geologists and geophysicists"', add
label define pr05a_occ1950_lbl 067 `"Mathematicians"', add
label define pr05a_occ1950_lbl 068 `"Physicists"', add
label define pr05a_occ1950_lbl 069 `"Miscellaneous natural scientists"', add
label define pr05a_occ1950_lbl 070 `"Optometrists"', add
label define pr05a_occ1950_lbl 071 `"Osteopaths"', add
label define pr05a_occ1950_lbl 072 `"Personnel and labor relations workers"', add
label define pr05a_occ1950_lbl 073 `"Pharmacists"', add
label define pr05a_occ1950_lbl 074 `"Photographers"', add
label define pr05a_occ1950_lbl 075 `"Physicians and surgeons"', add
label define pr05a_occ1950_lbl 076 `"Radio operators"', add
label define pr05a_occ1950_lbl 077 `"Recreation and group workers"', add
label define pr05a_occ1950_lbl 078 `"Religious workers"', add
label define pr05a_occ1950_lbl 079 `"Social and welfare workers, except group"', add
label define pr05a_occ1950_lbl 081 `"Economists"', add
label define pr05a_occ1950_lbl 082 `"Psychologists"', add
label define pr05a_occ1950_lbl 083 `"Statisticians and actuaries"', add
label define pr05a_occ1950_lbl 084 `"Miscellaneous social scientists"', add
label define pr05a_occ1950_lbl 091 `"Sports instructors and officials"', add
label define pr05a_occ1950_lbl 092 `"Surveyors"', add
label define pr05a_occ1950_lbl 093 `"Teachers (n.e.c.)"', add
label define pr05a_occ1950_lbl 094 `"Technicians, medical and dental"', add
label define pr05a_occ1950_lbl 095 `"Technicians, testing"', add
label define pr05a_occ1950_lbl 096 `"Technicians (n.e.c.)"', add
label define pr05a_occ1950_lbl 097 `"Therapists and healers (n.e.c.)"', add
label define pr05a_occ1950_lbl 098 `"Veterinarians"', add
label define pr05a_occ1950_lbl 099 `"Professional, technical and kindred workers (n.e.c.)"', add
label define pr05a_occ1950_lbl 100 `"Farmers (owners and tenants)"', add
label define pr05a_occ1950_lbl 123 `"Farm managers"', add
label define pr05a_occ1950_lbl 200 `"Buyers and department heads, store"', add
label define pr05a_occ1950_lbl 201 `"Buyers and shippers, farm products"', add
label define pr05a_occ1950_lbl 203 `"Conductors, railroad"', add
label define pr05a_occ1950_lbl 204 `"Credit men"', add
label define pr05a_occ1950_lbl 205 `"Floormen and floor managers, store"', add
label define pr05a_occ1950_lbl 210 `"Inspectors, public administration"', add
label define pr05a_occ1950_lbl 230 `"Managers and superintendents, building"', add
label define pr05a_occ1950_lbl 240 `"Officers, pilots, pursers and engineers, ship"', add
label define pr05a_occ1950_lbl 250 `"Officials and administrators (n.e.c.), public administration"', add
label define pr05a_occ1950_lbl 260 `"Officials, lodge, society, union, etc."', add
label define pr05a_occ1950_lbl 270 `"Postmasters"', add
label define pr05a_occ1950_lbl 280 `"Purchasing agents and buyers (n.e.c.)"', add
label define pr05a_occ1950_lbl 290 `"Managers, officials, and proprietors (n.e.c.)"', add
label define pr05a_occ1950_lbl 300 `"Agents (n.e.c.)"', add
label define pr05a_occ1950_lbl 301 `"Attendants and assistants, library"', add
label define pr05a_occ1950_lbl 302 `"Attendants, physician's and dentist's office"', add
label define pr05a_occ1950_lbl 304 `"Baggagemen, transportation"', add
label define pr05a_occ1950_lbl 305 `"Bank tellers"', add
label define pr05a_occ1950_lbl 310 `"Bookkeepers"', add
label define pr05a_occ1950_lbl 320 `"Cashiers"', add
label define pr05a_occ1950_lbl 321 `"Collectors, bill and account"', add
label define pr05a_occ1950_lbl 322 `"Dispatchers and starters, vehicle"', add
label define pr05a_occ1950_lbl 325 `"Express messengers and railway mail clerks"', add
label define pr05a_occ1950_lbl 335 `"Mail carriers"', add
label define pr05a_occ1950_lbl 340 `"Messengers and office boys"', add
label define pr05a_occ1950_lbl 341 `"Office machine operators"', add
label define pr05a_occ1950_lbl 342 `"Shipping and receiving clerks"', add
label define pr05a_occ1950_lbl 350 `"Stenographers, typists, and secretaries"', add
label define pr05a_occ1950_lbl 360 `"Telegraph messengers"', add
label define pr05a_occ1950_lbl 365 `"Telegraph operators"', add
label define pr05a_occ1950_lbl 370 `"Telephone operators"', add
label define pr05a_occ1950_lbl 380 `"Ticket, station, and express agents"', add
label define pr05a_occ1950_lbl 390 `"Clerical and kindred workers (n.e.c.)"', add
label define pr05a_occ1950_lbl 400 `"Advertising agents and salesmen"', add
label define pr05a_occ1950_lbl 410 `"Auctioneers"', add
label define pr05a_occ1950_lbl 420 `"Demonstrators"', add
label define pr05a_occ1950_lbl 430 `"Hucksters and peddlers"', add
label define pr05a_occ1950_lbl 450 `"Insurance agents and brokers"', add
label define pr05a_occ1950_lbl 460 `"Newsboys"', add
label define pr05a_occ1950_lbl 470 `"Real estate agents and brokers"', add
label define pr05a_occ1950_lbl 480 `"Stock and bond salesmen"', add
label define pr05a_occ1950_lbl 490 `"Salesmen and sales clerks (n.e.c.)"', add
label define pr05a_occ1950_lbl 500 `"Bakers"', add
label define pr05a_occ1950_lbl 501 `"Blacksmiths"', add
label define pr05a_occ1950_lbl 502 `"Bookbinders"', add
label define pr05a_occ1950_lbl 503 `"Boilermakers"', add
label define pr05a_occ1950_lbl 504 `"Brickmasons, stonemasons, and tile setters"', add
label define pr05a_occ1950_lbl 505 `"Cabinetmakers"', add
label define pr05a_occ1950_lbl 510 `"Carpenters"', add
label define pr05a_occ1950_lbl 511 `"Cement and concrete finishers"', add
label define pr05a_occ1950_lbl 512 `"Compositors and typesetters"', add
label define pr05a_occ1950_lbl 513 `"Cranemen, derrickmen, and hoistmen"', add
label define pr05a_occ1950_lbl 514 `"Decorators and window dressers"', add
label define pr05a_occ1950_lbl 515 `"Electricians"', add
label define pr05a_occ1950_lbl 520 `"Electrotypers and stereotypers"', add
label define pr05a_occ1950_lbl 521 `"Engravers, except photoengravers"', add
label define pr05a_occ1950_lbl 522 `"Excavating, grading, and road machinery operators"', add
label define pr05a_occ1950_lbl 523 `"Foremen (n.e.c.)"', add
label define pr05a_occ1950_lbl 524 `"Forgemen and hammermen"', add
label define pr05a_occ1950_lbl 525 `"Furriers"', add
label define pr05a_occ1950_lbl 530 `"Glaziers"', add
label define pr05a_occ1950_lbl 531 `"Heat treaters, annealers, temperers"', add
label define pr05a_occ1950_lbl 532 `"Inspectors, scalers, and graders, log and lumber"', add
label define pr05a_occ1950_lbl 533 `"Inspectors (n.e.c.)"', add
label define pr05a_occ1950_lbl 534 `"Jewelers, watchmakers, goldsmiths, and silversmiths"', add
label define pr05a_occ1950_lbl 535 `"Job setters, metal"', add
label define pr05a_occ1950_lbl 540 `"Linemen and servicemen, telegraph, telephone, and power"', add
label define pr05a_occ1950_lbl 541 `"Locomotive engineers"', add
label define pr05a_occ1950_lbl 542 `"Locomotive firemen"', add
label define pr05a_occ1950_lbl 543 `"Loom fixers"', add
label define pr05a_occ1950_lbl 544 `"Machinists"', add
label define pr05a_occ1950_lbl 545 `"Mechanics and repairmen, airplane"', add
label define pr05a_occ1950_lbl 550 `"Mechanics and repairmen, automobile"', add
label define pr05a_occ1950_lbl 551 `"Mechanics and repairmen, office machine"', add
label define pr05a_occ1950_lbl 552 `"Mechanics and repairmen, radio and television"', add
label define pr05a_occ1950_lbl 553 `"Mechanics and repairmen, railroad and car shop"', add
label define pr05a_occ1950_lbl 554 `"Mechanics and repairmen (n.e.c.)"', add
label define pr05a_occ1950_lbl 555 `"Millers, grain, flour, feed, etc."', add
label define pr05a_occ1950_lbl 560 `"Millwrights"', add
label define pr05a_occ1950_lbl 561 `"Molders, metal"', add
label define pr05a_occ1950_lbl 562 `"Motion picture projectionists"', add
label define pr05a_occ1950_lbl 563 `"Opticians and lens grinders and polishers"', add
label define pr05a_occ1950_lbl 564 `"Painters, construction and maintenance"', add
label define pr05a_occ1950_lbl 565 `"Paperhangers"', add
label define pr05a_occ1950_lbl 570 `"Pattern and model makers, except paper"', add
label define pr05a_occ1950_lbl 571 `"Photoengravers and lithographers"', add
label define pr05a_occ1950_lbl 572 `"Piano and organ tuners and repairmen"', add
label define pr05a_occ1950_lbl 573 `"Plasterers"', add
label define pr05a_occ1950_lbl 574 `"Plumbers and pipe fitters"', add
label define pr05a_occ1950_lbl 575 `"Pressmen and plate printers, printing"', add
label define pr05a_occ1950_lbl 580 `"Rollers and roll hands, metal"', add
label define pr05a_occ1950_lbl 581 `"Roofers and slaters"', add
label define pr05a_occ1950_lbl 582 `"Shoemakers and repairers, except factory"', add
label define pr05a_occ1950_lbl 583 `"Stationary engineers"', add
label define pr05a_occ1950_lbl 584 `"Stone cutters and stone carvers"', add
label define pr05a_occ1950_lbl 585 `"Structural metal workers"', add
label define pr05a_occ1950_lbl 590 `"Tailors and tailoresses"', add
label define pr05a_occ1950_lbl 591 `"Tinsmiths, coppersmiths, and sheet metal workers"', add
label define pr05a_occ1950_lbl 592 `"Tool makers, and die makers and setters"', add
label define pr05a_occ1950_lbl 593 `"Upholsterers"', add
label define pr05a_occ1950_lbl 594 `"Craftsmen and kindred workers (n.e.c.)"', add
label define pr05a_occ1950_lbl 595 `"Members of the armed services"', add
label define pr05a_occ1950_lbl 600 `"Apprentice auto mechanics"', add
label define pr05a_occ1950_lbl 601 `"Apprentice bricklayers and masons"', add
label define pr05a_occ1950_lbl 602 `"Apprentice carpenters"', add
label define pr05a_occ1950_lbl 603 `"Apprentice electricians"', add
label define pr05a_occ1950_lbl 604 `"Apprentice machinists and toolmakers"', add
label define pr05a_occ1950_lbl 605 `"Apprentice mechanics, except auto"', add
label define pr05a_occ1950_lbl 610 `"Apprentice plumbers and pipe fitters"', add
label define pr05a_occ1950_lbl 611 `"Apprentices, building trades (n.e.c.)"', add
label define pr05a_occ1950_lbl 612 `"Apprentices, metalworking trades (n.e.c.)"', add
label define pr05a_occ1950_lbl 613 `"Apprentices, printing trades"', add
label define pr05a_occ1950_lbl 614 `"Apprentices, other specified trades"', add
label define pr05a_occ1950_lbl 615 `"Apprentices, trade not specified"', add
label define pr05a_occ1950_lbl 620 `"Asbestos and insulation workers"', add
label define pr05a_occ1950_lbl 621 `"Attendants, auto service and parking"', add
label define pr05a_occ1950_lbl 622 `"Blasters and powdermen"', add
label define pr05a_occ1950_lbl 623 `"Boatmen, canalmen, and lock keepers"', add
label define pr05a_occ1950_lbl 624 `"Brakemen, railroad"', add
label define pr05a_occ1950_lbl 625 `"Bus drivers"', add
label define pr05a_occ1950_lbl 630 `"Chainmen, rodmen, and axmen, surveying"', add
label define pr05a_occ1950_lbl 631 `"Conductors, bus and street railway"', add
label define pr05a_occ1950_lbl 632 `"Deliverymen and routemen"', add
label define pr05a_occ1950_lbl 633 `"Dressmakers and seamstresses, except factory"', add
label define pr05a_occ1950_lbl 634 `"Dyers"', add
label define pr05a_occ1950_lbl 635 `"Filers, grinders, and polishers, metal"', add
label define pr05a_occ1950_lbl 640 `"Fruit, nut, and vegetable graders, and packers, except factory"', add
label define pr05a_occ1950_lbl 641 `"Furnacemen, smeltermen and pourers"', add
label define pr05a_occ1950_lbl 642 `"Heaters, metal"', add
label define pr05a_occ1950_lbl 643 `"Laundry and dry cleaning operatives"', add
label define pr05a_occ1950_lbl 644 `"Meat cutters, except slaughter and packing house"', add
label define pr05a_occ1950_lbl 645 `"Milliners"', add
label define pr05a_occ1950_lbl 650 `"Mine operatives and laborers"', add
label define pr05a_occ1950_lbl 660 `"Motormen, mine, factory, logging camp, etc."', add
label define pr05a_occ1950_lbl 661 `"Motormen, street, subway, and elevated railway"', add
label define pr05a_occ1950_lbl 662 `"Oilers and greaser, except auto"', add
label define pr05a_occ1950_lbl 670 `"Painters, except construction or maintenance"', add
label define pr05a_occ1950_lbl 671 `"Photographic process workers"', add
label define pr05a_occ1950_lbl 672 `"Power station operators"', add
label define pr05a_occ1950_lbl 673 `"Sailors and deck hands"', add
label define pr05a_occ1950_lbl 674 `"Sawyers"', add
label define pr05a_occ1950_lbl 675 `"Spinners, textile"', add
label define pr05a_occ1950_lbl 680 `"Stationary firemen"', add
label define pr05a_occ1950_lbl 681 `"Switchmen, railroad"', add
label define pr05a_occ1950_lbl 682 `"Taxicab drivers and chauffeurs"', add
label define pr05a_occ1950_lbl 683 `"Truck and tractor drivers"', add
label define pr05a_occ1950_lbl 684 `"Weavers, textile"', add
label define pr05a_occ1950_lbl 685 `"Welders and flame cutters"', add
label define pr05a_occ1950_lbl 690 `"Operative and kindred workers (n.e.c.)"', add
label define pr05a_occ1950_lbl 700 `"Housekeepers, private household"', add
label define pr05a_occ1950_lbl 710 `"Laundresses, private household"', add
label define pr05a_occ1950_lbl 720 `"Private household workers (n.e.c.)"', add
label define pr05a_occ1950_lbl 730 `"Attendants, hospital and other institution"', add
label define pr05a_occ1950_lbl 731 `"Attendants, professional and personal service (n.e.c.)"', add
label define pr05a_occ1950_lbl 732 `"Attendants, recreation and amusement"', add
label define pr05a_occ1950_lbl 740 `"Barbers, beauticians, and manicurists"', add
label define pr05a_occ1950_lbl 750 `"Bartenders"', add
label define pr05a_occ1950_lbl 751 `"Bootblacks"', add
label define pr05a_occ1950_lbl 752 `"Boarding and lodging house keepers"', add
label define pr05a_occ1950_lbl 753 `"Charwomen and cleaners"', add
label define pr05a_occ1950_lbl 754 `"Cooks, except private household"', add
label define pr05a_occ1950_lbl 760 `"Counter and fountain workers"', add
label define pr05a_occ1950_lbl 761 `"Elevator operators"', add
label define pr05a_occ1950_lbl 762 `"Firemen, fire protection"', add
label define pr05a_occ1950_lbl 763 `"Guards, watchmen, and doorkeepers"', add
label define pr05a_occ1950_lbl 764 `"Housekeepers and stewards, except private household"', add
label define pr05a_occ1950_lbl 770 `"Janitors and sextons"', add
label define pr05a_occ1950_lbl 771 `"Marshals and constables"', add
label define pr05a_occ1950_lbl 772 `"Midwives"', add
label define pr05a_occ1950_lbl 773 `"Policemen and detectives"', add
label define pr05a_occ1950_lbl 780 `"Porters"', add
label define pr05a_occ1950_lbl 781 `"Practical nurses"', add
label define pr05a_occ1950_lbl 782 `"Sheriffs and bailiffs"', add
label define pr05a_occ1950_lbl 783 `"Ushers, recreation and amusement"', add
label define pr05a_occ1950_lbl 784 `"Waiters and waitresses"', add
label define pr05a_occ1950_lbl 785 `"Watchmen (crossing) and bridge tenders"', add
label define pr05a_occ1950_lbl 790 `"Service workers, except private household (n.e.c.)"', add
label define pr05a_occ1950_lbl 810 `"Farm foremen"', add
label define pr05a_occ1950_lbl 820 `"Farm laborers, wage workers"', add
label define pr05a_occ1950_lbl 830 `"Farm laborers, unpaid family workers"', add
label define pr05a_occ1950_lbl 840 `"Farm service laborers, self-employed"', add
label define pr05a_occ1950_lbl 910 `"Fishermen and oystermen"', add
label define pr05a_occ1950_lbl 920 `"Garage laborers and car washers and greasers"', add
label define pr05a_occ1950_lbl 930 `"Gardeners, except farm, and groundskeepers"', add
label define pr05a_occ1950_lbl 940 `"Longshoremen and stevedores"', add
label define pr05a_occ1950_lbl 950 `"Lumbermen, raftsmen, and woodchoppers"', add
label define pr05a_occ1950_lbl 960 `"Teamsters"', add
label define pr05a_occ1950_lbl 970 `"Laborers (n.e.c.)"', add
label define pr05a_occ1950_lbl 997 `"Unknown"', add
label define pr05a_occ1950_lbl 999 `"NIU (not in universe)"', add
label values pr05a_occ1950 pr05a_occ1950_lbl

label define pr05a_occ_lbl 000 `"NIU (not in universe) (not in universe)"'
label define pr05a_occ_lbl 001 `"Chief executives"', add
label define pr05a_occ_lbl 002 `"General and operations managers"', add
label define pr05a_occ_lbl 004 `"Advertising and promotions managers"', add
label define pr05a_occ_lbl 005 `"Marketing and sales managers"', add
label define pr05a_occ_lbl 006 `"Public relations managers"', add
label define pr05a_occ_lbl 010 `"Administrative services managers"', add
label define pr05a_occ_lbl 011 `"Computer and information systems managers"', add
label define pr05a_occ_lbl 012 `"Financial managers"', add
label define pr05a_occ_lbl 013 `"Human resources managers"', add
label define pr05a_occ_lbl 014 `"Industrial production managers"', add
label define pr05a_occ_lbl 015 `"Purchasing managers"', add
label define pr05a_occ_lbl 016 `"Transportation, storage, and distribution managers"', add
label define pr05a_occ_lbl 020 `"Farm, ranch, and other agricultural managers"', add
label define pr05a_occ_lbl 021 `"Farmers and ranchers"', add
label define pr05a_occ_lbl 022 `"Construction managers"', add
label define pr05a_occ_lbl 023 `"Education administrator"', add
label define pr05a_occ_lbl 030 `"Engineering managers"', add
label define pr05a_occ_lbl 031 `"Food service managers"', add
label define pr05a_occ_lbl 032 `"Funeral directors"', add
label define pr05a_occ_lbl 034 `"Lodging managers"', add
label define pr05a_occ_lbl 035 `"Medical and health services managers"', add
label define pr05a_occ_lbl 041 `"Property, real estate, and community association managers"', add
label define pr05a_occ_lbl 042 `"Social and community service managers"', add
label define pr05a_occ_lbl 043 `"Managers, all other"', add
label define pr05a_occ_lbl 050 `"Agents and business managers of artists, performers, and athletes"', add
label define pr05a_occ_lbl 051 `"Purchasing agents and buyers, farm products"', add
label define pr05a_occ_lbl 052 `"Wholesale and retail buyers, except farm products"', add
label define pr05a_occ_lbl 053 `"Purchasing agents, except wholesale, retail, and farm products"', add
label define pr05a_occ_lbl 054 `"Claims adjusters, appraisers, examiners, and investigators"', add
label define pr05a_occ_lbl 056 `"Compliance officers, except agriculture, construction, health and safety, and transportation"', add
label define pr05a_occ_lbl 060 `"Cost estimators"', add
label define pr05a_occ_lbl 062 `"Human resources, training, and labor relations specialists"', add
label define pr05a_occ_lbl 070 `"Logisticians"', add
label define pr05a_occ_lbl 071 `"Management analysts"', add
label define pr05a_occ_lbl 072 `"Meeting and convention planners"', add
label define pr05a_occ_lbl 073 `"Other business operations specialists"', add
label define pr05a_occ_lbl 080 `"Accountants and auditors"', add
label define pr05a_occ_lbl 081 `"Appraisers and assessors of real estate"', add
label define pr05a_occ_lbl 082 `"Budget analysts"', add
label define pr05a_occ_lbl 083 `"Credit analysts"', add
label define pr05a_occ_lbl 084 `"Financial analysts"', add
label define pr05a_occ_lbl 085 `"Personal financial advisors"', add
label define pr05a_occ_lbl 086 `"Insurance underwriters"', add
label define pr05a_occ_lbl 090 `"Financial examiners"', add
label define pr05a_occ_lbl 091 `"Loan counselors and officers"', add
label define pr05a_occ_lbl 093 `"Tax examiners, collectors, and revenue agents"', add
label define pr05a_occ_lbl 094 `"Tax preparers"', add
label define pr05a_occ_lbl 095 `"Financial specialists, all other"', add
label define pr05a_occ_lbl 100 `"Computer scientists and systems analysts"', add
label define pr05a_occ_lbl 101 `"Computer programmers"', add
label define pr05a_occ_lbl 102 `"Computer software engineers"', add
label define pr05a_occ_lbl 104 `"Computer support specialists"', add
label define pr05a_occ_lbl 110 `"Network and computer systems administrators"', add
label define pr05a_occ_lbl 111 `"Network systems and data communication analysts"', add
label define pr05a_occ_lbl 122 `"Operations research analysts"', add
label define pr05a_occ_lbl 124 `"Miscellaneous mathematical science occupations, including mathematicians and statisticians"', add
label define pr05a_occ_lbl 130 `"Architects, except naval"', add
label define pr05a_occ_lbl 131 `"Surveyors, cartographers, and photogrammetrists"', add
label define pr05a_occ_lbl 132 `"Aerospace engineers"', add
label define pr05a_occ_lbl 135 `"Chemical engineers"', add
label define pr05a_occ_lbl 136 `"Civil engineers"', add
label define pr05a_occ_lbl 140 `"Computer hardware engineers"', add
label define pr05a_occ_lbl 141 `"Electrical and electronics engineers"', add
label define pr05a_occ_lbl 142 `"Environmental engineers"', add
label define pr05a_occ_lbl 143 `"Industrial engineers, including health and safety"', add
label define pr05a_occ_lbl 146 `"Mechanical engineers"', add
label define pr05a_occ_lbl 152 `"Petroleum, mining and geological engineers, including mining safety engineers"', add
label define pr05a_occ_lbl 153 `"Miscellaneous engineers, including agricultural and biomedical"', add
label define pr05a_occ_lbl 154 `"Drafters"', add
label define pr05a_occ_lbl 155 `"Engineering technicians, except drafters"', add
label define pr05a_occ_lbl 156 `"Surveying and mapping technicians"', add
label define pr05a_occ_lbl 160 `"Agricultural and food scientists"', add
label define pr05a_occ_lbl 161 `"Biological scientists"', add
label define pr05a_occ_lbl 164 `"Conservation scientists and foresters"', add
label define pr05a_occ_lbl 165 `"Medical scientists"', add
label define pr05a_occ_lbl 170 `"Astronomers and physicists"', add
label define pr05a_occ_lbl 171 `"Atmospheric and space scientists"', add
label define pr05a_occ_lbl 172 `"Chemists and materials scientists"', add
label define pr05a_occ_lbl 174 `"Environmental scientists and geoscientists"', add
label define pr05a_occ_lbl 176 `"Physical scientists, all other"', add
label define pr05a_occ_lbl 180 `"Economists"', add
label define pr05a_occ_lbl 181 `"Market and survey researchers"', add
label define pr05a_occ_lbl 182 `"Psychologists"', add
label define pr05a_occ_lbl 184 `"Urban and regional planners"', add
label define pr05a_occ_lbl 186 `"Miscellaneous social scientists, including sociologists"', add
label define pr05a_occ_lbl 190 `"Agricultural and food science technicians"', add
label define pr05a_occ_lbl 191 `"Biological technicians"', add
label define pr05a_occ_lbl 192 `"Chemical technicians"', add
label define pr05a_occ_lbl 193 `"Geological and petroleum technicians"', add
label define pr05a_occ_lbl 196 `"Miscellaneous life, physical, and social science technicians, including social science research assistants and nuclear technicians"', add
label define pr05a_occ_lbl 200 `"Counselors"', add
label define pr05a_occ_lbl 201 `"Social workers"', add
label define pr05a_occ_lbl 202 `"Miscellaneous community and social service specialists"', add
label define pr05a_occ_lbl 204 `"Clergy"', add
label define pr05a_occ_lbl 205 `"Directors, religious activities and education"', add
label define pr05a_occ_lbl 206 `"Religious workers, all other"', add
label define pr05a_occ_lbl 210 `"Lawyers"', add
label define pr05a_occ_lbl 214 `"Paralegals and legal assistants"', add
label define pr05a_occ_lbl 215 `"Miscellaneous legal support workers"', add
label define pr05a_occ_lbl 220 `"Postsecondary teachers"', add
label define pr05a_occ_lbl 230 `"Preschool and kindergarten teachers"', add
label define pr05a_occ_lbl 231 `"Elementary and middle school teachers"', add
label define pr05a_occ_lbl 232 `"Secondary school teachers"', add
label define pr05a_occ_lbl 233 `"Special education teachers"', add
label define pr05a_occ_lbl 234 `"Other teachers and instructors"', add
label define pr05a_occ_lbl 243 `"Librarians"', add
label define pr05a_occ_lbl 254 `"Teacher assistants"', add
label define pr05a_occ_lbl 255 `"Other education, training, and library workers"', add
label define pr05a_occ_lbl 260 `"Artists and related workers"', add
label define pr05a_occ_lbl 263 `"Designers"', add
label define pr05a_occ_lbl 270 `"Actors"', add
label define pr05a_occ_lbl 271 `"Producers and directors"', add
label define pr05a_occ_lbl 272 `"Athletes, coaches, umpires, and related workers"', add
label define pr05a_occ_lbl 274 `"Dancers and choreographers"', add
label define pr05a_occ_lbl 275 `"Musicians, singers, and related workers"', add
label define pr05a_occ_lbl 276 `"Entertainers and performers, sports and related workers, all other"', add
label define pr05a_occ_lbl 280 `"Announcers"', add
label define pr05a_occ_lbl 281 `"News analysts, reporters, and correspondents"', add
label define pr05a_occ_lbl 282 `"Public relations specialists"', add
label define pr05a_occ_lbl 283 `"Editors"', add
label define pr05a_occ_lbl 285 `"Writers and authors"', add
label define pr05a_occ_lbl 286 `"Miscellaneous media and communications workers"', add
label define pr05a_occ_lbl 290 `"Broadcast and sound engineering technicians and radio operators and other media and communication equipment workers"', add
label define pr05a_occ_lbl 291 `"Photographers"', add
label define pr05a_occ_lbl 292 `"Television, video, and motion picture camera operators and editors"', add
label define pr05a_occ_lbl 301 `"Dentists"', add
label define pr05a_occ_lbl 303 `"Dietitians and nutritionists"', add
label define pr05a_occ_lbl 304 `"Optometrists"', add
label define pr05a_occ_lbl 305 `"Pharmacists"', add
label define pr05a_occ_lbl 306 `"Physicians and surgeons"', add
label define pr05a_occ_lbl 311 `"Physician assistants"', add
label define pr05a_occ_lbl 312 `"Podiatrists"', add
label define pr05a_occ_lbl 313 `"Registered nurses"', add
label define pr05a_occ_lbl 314 `"Audiologists"', add
label define pr05a_occ_lbl 315 `"Occupational therapists"', add
label define pr05a_occ_lbl 316 `"Physical therapists"', add
label define pr05a_occ_lbl 320 `"Radiation therapists"', add
label define pr05a_occ_lbl 321 `"Recreational therapists"', add
label define pr05a_occ_lbl 322 `"Respiratory therapists"', add
label define pr05a_occ_lbl 323 `"Speech-language pathologists"', add
label define pr05a_occ_lbl 324 `"Therapists, all other"', add
label define pr05a_occ_lbl 325 `"Veterinarians"', add
label define pr05a_occ_lbl 326 `"Health diagnosing and treating practitioners, all other"', add
label define pr05a_occ_lbl 330 `"Clinical laboratory technologists and technicians"', add
label define pr05a_occ_lbl 331 `"Dental hygienists"', add
label define pr05a_occ_lbl 332 `"Diagnostic related technologists and technicians"', add
label define pr05a_occ_lbl 340 `"Emergency medical technicians and paramedics"', add
label define pr05a_occ_lbl 341 `"Health diagnosing and treating practitioner support technicians"', add
label define pr05a_occ_lbl 350 `"Licensed practical and licensed vocational nurses"', add
label define pr05a_occ_lbl 351 `"Medical records and health information technicians"', add
label define pr05a_occ_lbl 352 `"Opticians, dispensing"', add
label define pr05a_occ_lbl 353 `"Miscellaneous health technologists and technicians"', add
label define pr05a_occ_lbl 354 `"Other healthcare practitioners and technical occupations"', add
label define pr05a_occ_lbl 360 `"Nursing, psychiatric, and home health aides"', add
label define pr05a_occ_lbl 361 `"Occupational therapist assistants and aides"', add
label define pr05a_occ_lbl 362 `"Physical therapist assistants and aides"', add
label define pr05a_occ_lbl 363 `"Massage therapists"', add
label define pr05a_occ_lbl 364 `"Dental assistants"', add
label define pr05a_occ_lbl 365 `"Medical assistants and other healthcare support occupations"', add
label define pr05a_occ_lbl 370 `"First-line supervisors/managers of correctional officers"', add
label define pr05a_occ_lbl 371 `"First-line supervisors/managers of police and detectives"', add
label define pr05a_occ_lbl 372 `"First-line supervisors/managers of fire fighting and preventions workers"', add
label define pr05a_occ_lbl 373 `"Supervisors, protective service workers, all other"', add
label define pr05a_occ_lbl 374 `"Fire fighters"', add
label define pr05a_occ_lbl 375 `"Fire inspectors"', add
label define pr05a_occ_lbl 380 `"Bailiffs, correctional officers, and jailers"', add
label define pr05a_occ_lbl 382 `"Detectives and criminal investigators"', add
label define pr05a_occ_lbl 384 `"Miscellaneous law enforcement workers"', add
label define pr05a_occ_lbl 385 `"Police officers"', add
label define pr05a_occ_lbl 390 `"Animal control workers"', add
label define pr05a_occ_lbl 391 `"Private detectives and investigators"', add
label define pr05a_occ_lbl 392 `"Security guards and gaming surveillance officers"', add
label define pr05a_occ_lbl 394 `"Crossing guards"', add
label define pr05a_occ_lbl 395 `"Lifeguards and other protective service workers"', add
label define pr05a_occ_lbl 400 `"Chefs and head cooks"', add
label define pr05a_occ_lbl 401 `"First-line supervisors/managers of food preparation and serving workers"', add
label define pr05a_occ_lbl 402 `"Cooks"', add
label define pr05a_occ_lbl 403 `"Food preparation workers"', add
label define pr05a_occ_lbl 404 `"Bartenders"', add
label define pr05a_occ_lbl 405 `"Combined food preparation and serving workers, including fast food"', add
label define pr05a_occ_lbl 406 `"Counter attendants, cafeteria, food concession, and coffee shop"', add
label define pr05a_occ_lbl 411 `"Waiters and waitresses"', add
label define pr05a_occ_lbl 412 `"Food servers, nonrestaurant"', add
label define pr05a_occ_lbl 413 `"Dining room and cafeteria attendants, bartender helpers, and miscellaneous food preparation and serving related workers"', add
label define pr05a_occ_lbl 414 `"Dishwashers"', add
label define pr05a_occ_lbl 415 `"Hosts and hostesses, restaurant, lounge, and coffee shop"', add
label define pr05a_occ_lbl 420 `"First-line supervisors/managers of housekeeping and janitorial workers"', add
label define pr05a_occ_lbl 421 `"First-line supervisors/managers of landscaping, lawn service, and groundskeeping workers"', add
label define pr05a_occ_lbl 422 `"Janitors and building cleaners"', add
label define pr05a_occ_lbl 423 `"Maids and housekeeping cleaners"', add
label define pr05a_occ_lbl 424 `"Pest control workers"', add
label define pr05a_occ_lbl 425 `"Grounds maintenance workers"', add
label define pr05a_occ_lbl 430 `"First-line supervisors/managers of gaming workers"', add
label define pr05a_occ_lbl 432 `"First-line supervisors/managers of personal service workers"', add
label define pr05a_occ_lbl 434 `"Animal trainers"', add
label define pr05a_occ_lbl 435 `"Nonfarm animal caretakers"', add
label define pr05a_occ_lbl 440 `"Gaming services workers"', add
label define pr05a_occ_lbl 441 `"Motion picture projectionists"', add
label define pr05a_occ_lbl 442 `"Ushers, lobby attendants, and ticket takers"', add
label define pr05a_occ_lbl 443 `"Miscellaneous entertainment attendants and related workers"', add
label define pr05a_occ_lbl 446 `"Funeral service workers"', add
label define pr05a_occ_lbl 450 `"Barbers"', add
label define pr05a_occ_lbl 451 `"Hairdressers, hairstylists, and cosmetologists"', add
label define pr05a_occ_lbl 452 `"Miscellaneous personal appearance workers"', add
label define pr05a_occ_lbl 453 `"Baggage porters, bellhops, and concierges"', add
label define pr05a_occ_lbl 454 `"Tour and travel guides"', add
label define pr05a_occ_lbl 455 `"Transportation attendants"', add
label define pr05a_occ_lbl 460 `"Child care workers"', add
label define pr05a_occ_lbl 461 `"Personal and home care aides"', add
label define pr05a_occ_lbl 462 `"Recreation and fitness workers"', add
label define pr05a_occ_lbl 465 `"Personal care and service workers, all other"', add
label define pr05a_occ_lbl 470 `"First-line supervisors/managers of retail sales workers"', add
label define pr05a_occ_lbl 471 `"First-line supervisors/managers of non-retail sales workers"', add
label define pr05a_occ_lbl 472 `"Cashiers"', add
label define pr05a_occ_lbl 474 `"Counter and rental clerks"', add
label define pr05a_occ_lbl 475 `"Parts salespersons"', add
label define pr05a_occ_lbl 476 `"Retail salespersons"', add
label define pr05a_occ_lbl 480 `"Advertising sales agents"', add
label define pr05a_occ_lbl 481 `"Insurance sales agents"', add
label define pr05a_occ_lbl 482 `"Securities, commodities, and financial services sales agents"', add
label define pr05a_occ_lbl 483 `"Travel agents"', add
label define pr05a_occ_lbl 484 `"Sales representatives, services, all other"', add
label define pr05a_occ_lbl 485 `"Sales representatives, wholesale and manufacturing"', add
label define pr05a_occ_lbl 490 `"Models, demonstrators, and product promoters"', add
label define pr05a_occ_lbl 492 `"Real estate brokers and sales agents"', add
label define pr05a_occ_lbl 493 `"Sales engineers"', add
label define pr05a_occ_lbl 494 `"Telemarketers"', add
label define pr05a_occ_lbl 495 `"Door-to-door sales workers, news and street vendors, and related workers"', add
label define pr05a_occ_lbl 496 `"Sales and related workers, all other"', add
label define pr05a_occ_lbl 500 `"First-line supervisors/managers of office and administrative support workers"', add
label define pr05a_occ_lbl 501 `"Switchboard operators, including answering service"', add
label define pr05a_occ_lbl 502 `"Telephone operators"', add
label define pr05a_occ_lbl 510 `"Bill and account collectors"', add
label define pr05a_occ_lbl 511 `"Billing and posting clerks and machine operators"', add
label define pr05a_occ_lbl 512 `"Bookkeeping, accounting, and auditing clerks"', add
label define pr05a_occ_lbl 514 `"Payroll and timekeeping clerks"', add
label define pr05a_occ_lbl 515 `"Procurement clerks"', add
label define pr05a_occ_lbl 516 `"Tellers"', add
label define pr05a_occ_lbl 520 `"Brokerage clerks"', add
label define pr05a_occ_lbl 522 `"Court, municipal, and license clerks"', add
label define pr05a_occ_lbl 523 `"Credit authorizers, checkers, and clerks"', add
label define pr05a_occ_lbl 524 `"Customer service representatives"', add
label define pr05a_occ_lbl 525 `"Eligibility interviewers, government programs"', add
label define pr05a_occ_lbl 526 `"File clerks"', add
label define pr05a_occ_lbl 530 `"Hotel, motel, and resort desk clerks"', add
label define pr05a_occ_lbl 531 `"Interviewers, except eligibility and loan"', add
label define pr05a_occ_lbl 532 `"Library assistants, clerical"', add
label define pr05a_occ_lbl 533 `"Loan interviewers and clerks"', add
label define pr05a_occ_lbl 534 `"New accounts clerks"', add
label define pr05a_occ_lbl 535 `"Correspondence clerks and order clerks"', add
label define pr05a_occ_lbl 536 `"Human resources assistants, except payroll and timekeeping"', add
label define pr05a_occ_lbl 540 `"Receptionists and information clerks"', add
label define pr05a_occ_lbl 541 `"Reservation and transportation ticket agents and travel clerks"', add
label define pr05a_occ_lbl 542 `"Information and record clerks, all other"', add
label define pr05a_occ_lbl 550 `"Cargo and freight agents"', add
label define pr05a_occ_lbl 551 `"Couriers and messengers"', add
label define pr05a_occ_lbl 552 `"Dispatchers"', add
label define pr05a_occ_lbl 553 `"Meter readers, utilities"', add
label define pr05a_occ_lbl 554 `"Postal service clerks"', add
label define pr05a_occ_lbl 555 `"Postal service mail carriers"', add
label define pr05a_occ_lbl 556 `"Postal service mail sorters, processors, and processing machine operators"', add
label define pr05a_occ_lbl 560 `"Production, planning and expediting clerks"', add
label define pr05a_occ_lbl 561 `"Shipping, receiving, and traffic clerks"', add
label define pr05a_occ_lbl 562 `"Stock clerks and order filers"', add
label define pr05a_occ_lbl 563 `"Weighers, measurers, checkers, and samplers, record keeping"', add
label define pr05a_occ_lbl 570 `"Secretaries and administrative assistants"', add
label define pr05a_occ_lbl 580 `"Computer operators"', add
label define pr05a_occ_lbl 581 `"Data entry keyers"', add
label define pr05a_occ_lbl 582 `"Word processors and typists"', add
label define pr05a_occ_lbl 584 `"Insurance claims and policy processing clerks"', add
label define pr05a_occ_lbl 585 `"Mail clerks and mail machine operators, except postal service"', add
label define pr05a_occ_lbl 586 `"Office clerks, general"', add
label define pr05a_occ_lbl 590 `"Office machine operators, except computer"', add
label define pr05a_occ_lbl 591 `"Proofreaders and copy markers"', add
label define pr05a_occ_lbl 592 `"Statistical assistants"', add
label define pr05a_occ_lbl 593 `"Office and administrative support workers, all other"', add
label define pr05a_occ_lbl 600 `"First-line supervisors/managers of farming, fishing, and forestry workers"', add
label define pr05a_occ_lbl 601 `"Agricultural inspectors"', add
label define pr05a_occ_lbl 604 `"Graders and sorters, agricultural products"', add
label define pr05a_occ_lbl 605 `"Miscellaneous agricultural workers, including animal breeders"', add
label define pr05a_occ_lbl 610 `"Fishing and hunting workers"', add
label define pr05a_occ_lbl 612 `"Forest and conservation workers"', add
label define pr05a_occ_lbl 613 `"Logging workers"', add
label define pr05a_occ_lbl 620 `"First-line supervisors/managers of construction trades and extraction workers"', add
label define pr05a_occ_lbl 621 `"Boilermakers"', add
label define pr05a_occ_lbl 622 `"Brickmasons, blockmasons, and stonemasons"', add
label define pr05a_occ_lbl 623 `"Carpenters"', add
label define pr05a_occ_lbl 624 `"Carpet, floor, and tile installers and finishers"', add
label define pr05a_occ_lbl 625 `"Cement masons, concrete finishers, and terrazzo workers"', add
label define pr05a_occ_lbl 626 `"Construction laborers"', add
label define pr05a_occ_lbl 630 `"Paving, surfacing, and tamping equipment operators"', add
label define pr05a_occ_lbl 632 `"Miscellaneous construction equipment operators"', add
label define pr05a_occ_lbl 633 `"Drywall installers, ceiling tile installers, and tapers"', add
label define pr05a_occ_lbl 635 `"Electricians"', add
label define pr05a_occ_lbl 636 `"Glaziers"', add
label define pr05a_occ_lbl 640 `"Insulation workers"', add
label define pr05a_occ_lbl 642 `"Painters, construction and maintenance"', add
label define pr05a_occ_lbl 644 `"Pipelayers, plumbers, pipefitters, and steamfitters"', add
label define pr05a_occ_lbl 646 `"Plasterers and stucco masons"', add
label define pr05a_occ_lbl 650 `"Reinforcing iron and rebar workers"', add
label define pr05a_occ_lbl 651 `"Roofers"', add
label define pr05a_occ_lbl 652 `"Sheet metal workers"', add
label define pr05a_occ_lbl 653 `"Iron and steel workers"', add
label define pr05a_occ_lbl 660 `"Helpers, construction trades"', add
label define pr05a_occ_lbl 666 `"Construction and building inspectors"', add
label define pr05a_occ_lbl 670 `"Elevator installers and repairers"', add
label define pr05a_occ_lbl 671 `"Fence erectors"', add
label define pr05a_occ_lbl 672 `"Hazardous materials"', add
label define pr05a_occ_lbl 673 `"Highway maintenance workers"', add
label define pr05a_occ_lbl 674 `"Rail-track laying and maintenance equipment operators"', add
label define pr05a_occ_lbl 676 `"Miscellaneous construction and related workers"', add
label define pr05a_occ_lbl 682 `"Earth drillers, except oil and gas"', add
label define pr05a_occ_lbl 683 `"Explosives workers, ordnance handling experts, and blasters"', add
label define pr05a_occ_lbl 684 `"Mining machine operators"', add
label define pr05a_occ_lbl 694 `"Miscellaneous extraction workers, including roof bolters and helpers"', add
label define pr05a_occ_lbl 700 `"First-line supervisors/managers of mechanics, installers, and repairers"', add
label define pr05a_occ_lbl 701 `"Computer, automated teller, and office machine repairers"', add
label define pr05a_occ_lbl 702 `"Radio and telecommunications equipment installers and repairers"', add
label define pr05a_occ_lbl 703 `"Avionics technicians"', add
label define pr05a_occ_lbl 704 `"Electric motor, power tool, and related repairers"', add
label define pr05a_occ_lbl 710 `"Electrical and electronics repairers, industrial, utility, and transportation equipment"', add
label define pr05a_occ_lbl 711 `"Electronic equipment installers and repairers, motor vehicles"', add
label define pr05a_occ_lbl 712 `"Electronic home entertainment equipment installers and repairers"', add
label define pr05a_occ_lbl 713 `"Security and fire alarm systems installers"', add
label define pr05a_occ_lbl 714 `"Aircraft mechanics and service technicians"', add
label define pr05a_occ_lbl 715 `"Automotive body and related repairers"', add
label define pr05a_occ_lbl 716 `"Automotive glass installers and repairers"', add
label define pr05a_occ_lbl 720 `"Automotive service technicians and mechanics"', add
label define pr05a_occ_lbl 721 `"Bus and truck mechanics and diesel engine specialists"', add
label define pr05a_occ_lbl 722 `"Heavy vehicle and mobile equipment service technicians and mechanics"', add
label define pr05a_occ_lbl 724 `"Small engine mechanics"', add
label define pr05a_occ_lbl 726 `"Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers"', add
label define pr05a_occ_lbl 730 `"Control and valve installers and repairers"', add
label define pr05a_occ_lbl 731 `"Heating, air conditioning, and refrigeration mechanics and installers"', add
label define pr05a_occ_lbl 732 `"Home appliance repairers"', add
label define pr05a_occ_lbl 733 `"Industrial and refractory machinery mechanics"', add
label define pr05a_occ_lbl 734 `"Maintenance and repair workers, general"', add
label define pr05a_occ_lbl 735 `"Maintenance workers, machinery"', add
label define pr05a_occ_lbl 741 `"Electrical power-line installers and repairers"', add
label define pr05a_occ_lbl 742 `"Telecommunications line installers and repairers"', add
label define pr05a_occ_lbl 743 `"Precision instrument and equipment repairers"', add
label define pr05a_occ_lbl 751 `"Coin, vending, and amusement machine servicers and repairers"', add
label define pr05a_occ_lbl 761 `"Helpers--installation, maintenance, and repair workers"', add
label define pr05a_occ_lbl 762 `"Other installation, maintenance, and repair workers, including commercial drivers and signal and track switch repairers"', add
label define pr05a_occ_lbl 770 `"First-line supervisors/managers of production and operating workers"', add
label define pr05a_occ_lbl 771 `"Aircraft structure, surfaces, rigging, and systems assemblers"', add
label define pr05a_occ_lbl 772 `"Electrical, electronics, and electromechanical assemblers"', add
label define pr05a_occ_lbl 774 `"Structural metal fabricators and fitters"', add
label define pr05a_occ_lbl 775 `"Miscellaneous assemblers and fabricators"', add
label define pr05a_occ_lbl 780 `"Bakers"', add
label define pr05a_occ_lbl 781 `"Butchers and other meat, poultry, and fish processing workers"', add
label define pr05a_occ_lbl 783 `"Food and tobacco roasting, baking, and  drying machine operators and tenders"', add
label define pr05a_occ_lbl 784 `"Food batchmakers"', add
label define pr05a_occ_lbl 785 `"Food cooking machine operators and tenders"', add
label define pr05a_occ_lbl 790 `"Computer control programmers and operators"', add
label define pr05a_occ_lbl 792 `"Extruding and drawing machine setters, operators, and  tenders, metal and plastic"', add
label define pr05a_occ_lbl 795 `"Cutting, punching, and press machine setters, operators, and tenders, metal and plastic"', add
label define pr05a_occ_lbl 796 `"Drilling and boring machine tool setters, operators, and tenders, metal and plastic"', add
label define pr05a_occ_lbl 800 `"Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders, metal and plastic"', add
label define pr05a_occ_lbl 801 `"Lathe and turning machine tool setters, operators, and tenders, metal and plastic"', add
label define pr05a_occ_lbl 803 `"Machinists"', add
label define pr05a_occ_lbl 804 `"Metal furnace and kiln operators and tenders"', add
label define pr05a_occ_lbl 810 `"Molders and molding machine setters, operators, and tenders, metal and plastic"', add
label define pr05a_occ_lbl 813 `"Tool and die makers"', add
label define pr05a_occ_lbl 814 `"Welding, soldering, and brazing workers"', add
label define pr05a_occ_lbl 820 `"Plating and coating machine setters, operators, and tenders, metal and plastic"', add
label define pr05a_occ_lbl 822 `"Other metal workers and plastic workers, including milling, planning, and machine tool operators"', add
label define pr05a_occ_lbl 824 `"Job printers"', add
label define pr05a_occ_lbl 825 `"Prepress technicians and workers"', add
label define pr05a_occ_lbl 826 `"Printing machine operators"', add
label define pr05a_occ_lbl 830 `"Laundry and dry-cleaning workers"', add
label define pr05a_occ_lbl 831 `"Pressers, textile, garment, and related materials"', add
label define pr05a_occ_lbl 832 `"Sewing machine operators"', add
label define pr05a_occ_lbl 833 `"Shoe and leather workers and repairers"', add
label define pr05a_occ_lbl 834 `"Shoe machine operators and tenders"', add
label define pr05a_occ_lbl 835 `"Tailors, dressmakers, and sewers"', add
label define pr05a_occ_lbl 840 `"Textile cutting machine setters, operators, and tenders"', add
label define pr05a_occ_lbl 841 `"Textile knitting and weaving machine setters, operators, and tenders"', add
label define pr05a_occ_lbl 845 `"Upholsterers"', add
label define pr05a_occ_lbl 846 `"Miscellaneous textile, apparel, and furnishings workers,  except upholsterers"', add
label define pr05a_occ_lbl 850 `"Cabinetmakers and bench carpenters"', add
label define pr05a_occ_lbl 851 `"Furniture finishers"', add
label define pr05a_occ_lbl 853 `"Sawing machine setters, operators, and tenders, wood"', add
label define pr05a_occ_lbl 860 `"Power plant operators, distributors, and dispatchers"', add
label define pr05a_occ_lbl 861 `"Stationary engineers and boiler operators"', add
label define pr05a_occ_lbl 862 `"Water and liquid waste treatment plant and system operators"', add
label define pr05a_occ_lbl 863 `"Miscellaneous plant and system operators"', add
label define pr05a_occ_lbl 864 `"Chemical processing machine setters, operators, and tenders"', add
label define pr05a_occ_lbl 865 `"Crushing, grinding, polishing, mixing, and blending workers"', add
label define pr05a_occ_lbl 871 `"Cutting workers"', add
label define pr05a_occ_lbl 872 `"Extruding, forming, pressing, and compacting machine setters, operators, and tenders"', add
label define pr05a_occ_lbl 873 `"Furnace, kiln, oven, drier, and kettle operators and tenders"', add
label define pr05a_occ_lbl 874 `"Inspectors, testers, sorters, samplers, and weighers"', add
label define pr05a_occ_lbl 875 `"Jewelers and precious stone and metal workers"', add
label define pr05a_occ_lbl 876 `"Medical, dental, and ophthalmic laboratory technicians"', add
label define pr05a_occ_lbl 880 `"Packaging and filing machine operators and tenders"', add
label define pr05a_occ_lbl 881 `"Painting workers"', add
label define pr05a_occ_lbl 883 `"Photographic process workers and processing machine operators"', add
label define pr05a_occ_lbl 885 `"Cementing and gluing machine operators and tenders"', add
label define pr05a_occ_lbl 892 `"Molders, shapers, and casters, except metal and plastic"', add
label define pr05a_occ_lbl 893 `"Paper goods machine setters, operators, and tenders"', add
label define pr05a_occ_lbl 895 `"Helpers--production workers"', add
label define pr05a_occ_lbl 896 `"Other production workers, including semiconductor processors and cooling and freezing equipment operators"', add
label define pr05a_occ_lbl 900 `"Supervisors, transportation and material moving workers"', add
label define pr05a_occ_lbl 903 `"Aircraft pilots and flight engineers"', add
label define pr05a_occ_lbl 904 `"Air traffic controllers and airfield operations specialists"', add
label define pr05a_occ_lbl 911 `"Ambulance drivers and attendants, except emergency medical technicians"', add
label define pr05a_occ_lbl 912 `"Bus drivers"', add
label define pr05a_occ_lbl 913 `"Driver/sales workers and truck drivers"', add
label define pr05a_occ_lbl 914 `"Taxi drivers and chauffeurs"', add
label define pr05a_occ_lbl 926 `"Subway, streetcar, and other rail transportation workers"', add
label define pr05a_occ_lbl 930 `"Sailors and marine oilers"', add
label define pr05a_occ_lbl 931 `"Ship and boat captains and operators"', add
label define pr05a_occ_lbl 935 `"Parking lot attendants"', add
label define pr05a_occ_lbl 936 `"Service station attendants"', add
label define pr05a_occ_lbl 941 `"Transportation inspectors"', add
label define pr05a_occ_lbl 942 `"Miscellaneous transportation workers, including bridge and lock tenders and traffic technicians"', add
label define pr05a_occ_lbl 951 `"Crane and tower operators"', add
label define pr05a_occ_lbl 952 `"Dredge, excavating, and loading machine operators"', add
label define pr05a_occ_lbl 956 `"Hoist and winch operators"', add
label define pr05a_occ_lbl 960 `"Industrial truck and tractor operators"', add
label define pr05a_occ_lbl 961 `"Cleaners of vehicles and equipment"', add
label define pr05a_occ_lbl 962 `"Laborers and freight, stock, and material movers, hand"', add
label define pr05a_occ_lbl 963 `"Machine feeders and offbearers"', add
label define pr05a_occ_lbl 964 `"Packers and packagers, hand"', add
label define pr05a_occ_lbl 965 `"Pumping station operators"', add
label define pr05a_occ_lbl 972 `"Refuse and recyclable material collectors"', add
label define pr05a_occ_lbl 975 `"Miscellaneous material moving workers; including conveyor operators and tenders; shuttle car operators; and tank car, truck, and ship loaders"', add
label define pr05a_occ_lbl 980 `"Military officer special and tactical weapons leaders/managers"', add
label define pr05a_occ_lbl 981 `"First-line enlisted military supervisors/managers"', add
label define pr05a_occ_lbl 983 `"Military, rank not specified (census only)"', add
label define pr05a_occ_lbl 992 `"Unemployed: in the labor force, who last worked more than 5 years ago"', add
label values pr05a_occ pr05a_occ_lbl

label define pr05a_occscore_lbl 00 `"NIU (not in universe)"'
label define pr05a_occscore_lbl 03 `"3"', add
label define pr05a_occscore_lbl 04 `"4"', add
label define pr05a_occscore_lbl 05 `"5"', add
label define pr05a_occscore_lbl 06 `"6"', add
label define pr05a_occscore_lbl 07 `"7"', add
label define pr05a_occscore_lbl 08 `"8"', add
label define pr05a_occscore_lbl 09 `"9"', add
label define pr05a_occscore_lbl 10 `"10"', add
label define pr05a_occscore_lbl 11 `"11"', add
label define pr05a_occscore_lbl 12 `"12"', add
label define pr05a_occscore_lbl 13 `"13"', add
label define pr05a_occscore_lbl 14 `"14"', add
label define pr05a_occscore_lbl 15 `"15"', add
label define pr05a_occscore_lbl 16 `"16"', add
label define pr05a_occscore_lbl 17 `"17"', add
label define pr05a_occscore_lbl 18 `"18"', add
label define pr05a_occscore_lbl 19 `"19"', add
label define pr05a_occscore_lbl 20 `"20"', add
label define pr05a_occscore_lbl 21 `"21"', add
label define pr05a_occscore_lbl 22 `"22"', add
label define pr05a_occscore_lbl 23 `"23"', add
label define pr05a_occscore_lbl 24 `"24"', add
label define pr05a_occscore_lbl 25 `"25"', add
label define pr05a_occscore_lbl 26 `"26"', add
label define pr05a_occscore_lbl 27 `"27"', add
label define pr05a_occscore_lbl 28 `"28"', add
label define pr05a_occscore_lbl 29 `"29"', add
label define pr05a_occscore_lbl 30 `"30"', add
label define pr05a_occscore_lbl 31 `"31"', add
label define pr05a_occscore_lbl 32 `"32"', add
label define pr05a_occscore_lbl 33 `"33"', add
label define pr05a_occscore_lbl 34 `"34"', add
label define pr05a_occscore_lbl 35 `"35"', add
label define pr05a_occscore_lbl 36 `"36"', add
label define pr05a_occscore_lbl 37 `"37"', add
label define pr05a_occscore_lbl 38 `"38"', add
label define pr05a_occscore_lbl 39 `"39"', add
label define pr05a_occscore_lbl 40 `"40"', add
label define pr05a_occscore_lbl 41 `"41"', add
label define pr05a_occscore_lbl 42 `"42"', add
label define pr05a_occscore_lbl 43 `"43"', add
label define pr05a_occscore_lbl 44 `"44"', add
label define pr05a_occscore_lbl 45 `"45"', add
label define pr05a_occscore_lbl 46 `"46"', add
label define pr05a_occscore_lbl 47 `"47"', add
label define pr05a_occscore_lbl 48 `"48"', add
label define pr05a_occscore_lbl 49 `"49"', add
label define pr05a_occscore_lbl 50 `"50"', add
label define pr05a_occscore_lbl 52 `"52"', add
label define pr05a_occscore_lbl 54 `"54"', add
label define pr05a_occscore_lbl 58 `"58"', add
label define pr05a_occscore_lbl 60 `"60"', add
label define pr05a_occscore_lbl 61 `"61"', add
label define pr05a_occscore_lbl 62 `"62"', add
label define pr05a_occscore_lbl 63 `"63"', add
label define pr05a_occscore_lbl 79 `"79"', add
label define pr05a_occscore_lbl 80 `"80"', add
label values pr05a_occscore pr05a_occscore_lbl

label define pr05a_sei_lbl 00 `"NIU (not in universe)"'
label define pr05a_sei_lbl 03 `"3"', add
label define pr05a_sei_lbl 04 `"4"', add
label define pr05a_sei_lbl 05 `"5"', add
label define pr05a_sei_lbl 06 `"6"', add
label define pr05a_sei_lbl 07 `"7"', add
label define pr05a_sei_lbl 08 `"8"', add
label define pr05a_sei_lbl 09 `"9"', add
label define pr05a_sei_lbl 10 `"10"', add
label define pr05a_sei_lbl 11 `"11"', add
label define pr05a_sei_lbl 12 `"12"', add
label define pr05a_sei_lbl 13 `"13"', add
label define pr05a_sei_lbl 14 `"14"', add
label define pr05a_sei_lbl 15 `"15"', add
label define pr05a_sei_lbl 16 `"16"', add
label define pr05a_sei_lbl 17 `"17"', add
label define pr05a_sei_lbl 18 `"18"', add
label define pr05a_sei_lbl 19 `"19"', add
label define pr05a_sei_lbl 20 `"20"', add
label define pr05a_sei_lbl 21 `"21"', add
label define pr05a_sei_lbl 22 `"22"', add
label define pr05a_sei_lbl 23 `"23"', add
label define pr05a_sei_lbl 24 `"24"', add
label define pr05a_sei_lbl 25 `"25"', add
label define pr05a_sei_lbl 26 `"26"', add
label define pr05a_sei_lbl 27 `"27"', add
label define pr05a_sei_lbl 28 `"28"', add
label define pr05a_sei_lbl 29 `"29"', add
label define pr05a_sei_lbl 30 `"30"', add
label define pr05a_sei_lbl 31 `"31"', add
label define pr05a_sei_lbl 32 `"32"', add
label define pr05a_sei_lbl 33 `"33"', add
label define pr05a_sei_lbl 34 `"34"', add
label define pr05a_sei_lbl 35 `"35"', add
label define pr05a_sei_lbl 36 `"36"', add
label define pr05a_sei_lbl 37 `"37"', add
label define pr05a_sei_lbl 38 `"38"', add
label define pr05a_sei_lbl 39 `"39"', add
label define pr05a_sei_lbl 40 `"40"', add
label define pr05a_sei_lbl 41 `"41"', add
label define pr05a_sei_lbl 42 `"42"', add
label define pr05a_sei_lbl 43 `"43"', add
label define pr05a_sei_lbl 44 `"44"', add
label define pr05a_sei_lbl 45 `"45"', add
label define pr05a_sei_lbl 46 `"46"', add
label define pr05a_sei_lbl 47 `"47"', add
label define pr05a_sei_lbl 48 `"48"', add
label define pr05a_sei_lbl 49 `"49"', add
label define pr05a_sei_lbl 50 `"50"', add
label define pr05a_sei_lbl 51 `"51"', add
label define pr05a_sei_lbl 52 `"52"', add
label define pr05a_sei_lbl 53 `"53"', add
label define pr05a_sei_lbl 54 `"54"', add
label define pr05a_sei_lbl 55 `"55"', add
label define pr05a_sei_lbl 56 `"56"', add
label define pr05a_sei_lbl 58 `"58"', add
label define pr05a_sei_lbl 59 `"59"', add
label define pr05a_sei_lbl 60 `"60"', add
label define pr05a_sei_lbl 61 `"61"', add
label define pr05a_sei_lbl 62 `"62"', add
label define pr05a_sei_lbl 63 `"63"', add
label define pr05a_sei_lbl 64 `"64"', add
label define pr05a_sei_lbl 65 `"65"', add
label define pr05a_sei_lbl 66 `"66"', add
label define pr05a_sei_lbl 67 `"67"', add
label define pr05a_sei_lbl 68 `"68"', add
label define pr05a_sei_lbl 69 `"69"', add
label define pr05a_sei_lbl 72 `"72"', add
label define pr05a_sei_lbl 73 `"73"', add
label define pr05a_sei_lbl 74 `"74"', add
label define pr05a_sei_lbl 75 `"75"', add
label define pr05a_sei_lbl 76 `"76"', add
label define pr05a_sei_lbl 77 `"77"', add
label define pr05a_sei_lbl 78 `"78"', add
label define pr05a_sei_lbl 79 `"79"', add
label define pr05a_sei_lbl 80 `"80"', add
label define pr05a_sei_lbl 81 `"81"', add
label define pr05a_sei_lbl 82 `"82"', add
label define pr05a_sei_lbl 83 `"83"', add
label define pr05a_sei_lbl 84 `"84"', add
label define pr05a_sei_lbl 85 `"85"', add
label define pr05a_sei_lbl 86 `"86"', add
label define pr05a_sei_lbl 87 `"87"', add
label define pr05a_sei_lbl 90 `"90"', add
label define pr05a_sei_lbl 92 `"92"', add
label define pr05a_sei_lbl 93 `"93"', add
label define pr05a_sei_lbl 96 `"96"', add
label values pr05a_sei pr05a_sei_lbl

label define pr05a_ind1950_lbl 000 `"NIU (not in universe)"'
label define pr05a_ind1950_lbl 105 `"Agriculture"', add
label define pr05a_ind1950_lbl 116 `"Forestry"', add
label define pr05a_ind1950_lbl 126 `"Fisheries"', add
label define pr05a_ind1950_lbl 206 `"Metal mining"', add
label define pr05a_ind1950_lbl 216 `"Coal mining"', add
label define pr05a_ind1950_lbl 226 `"Crude petroleum and natural gas extraction"', add
label define pr05a_ind1950_lbl 236 `"Nonmetallic mining and quarrying, except fuel"', add
label define pr05a_ind1950_lbl 239 `"Mining, not specified"', add
label define pr05a_ind1950_lbl 246 `"Construction"', add
label define pr05a_ind1950_lbl 306 `"Logging"', add
label define pr05a_ind1950_lbl 307 `"Sawmills, planning mills, and mill work"', add
label define pr05a_ind1950_lbl 308 `"Miscellaneous wood products"', add
label define pr05a_ind1950_lbl 309 `"Furniture and fixtures"', add
label define pr05a_ind1950_lbl 316 `"Glass and glass products"', add
label define pr05a_ind1950_lbl 317 `"Cement, concrete, gypsum and plaster products"', add
label define pr05a_ind1950_lbl 318 `"Structural clay products"', add
label define pr05a_ind1950_lbl 319 `"Pottery and related products"', add
label define pr05a_ind1950_lbl 326 `"Miscellaneous nonmetallic mineral and stone products"', add
label define pr05a_ind1950_lbl 336 `"Blast furnaces, steel works, and rolling mills"', add
label define pr05a_ind1950_lbl 337 `"Other primary iron and steel industries"', add
label define pr05a_ind1950_lbl 338 `"Primary nonferrous industries"', add
label define pr05a_ind1950_lbl 346 `"Fabricated steel products"', add
label define pr05a_ind1950_lbl 347 `"Fabricated nonferrous metal products"', add
label define pr05a_ind1950_lbl 348 `"Not specified metal industries"', add
label define pr05a_ind1950_lbl 356 `"Agricultural machinery and tractors"', add
label define pr05a_ind1950_lbl 357 `"Office and store machines and devices"', add
label define pr05a_ind1950_lbl 358 `"Miscellaneous machinery"', add
label define pr05a_ind1950_lbl 367 `"Electrical machinery, equipment, and supplies"', add
label define pr05a_ind1950_lbl 376 `"Motor vehicles and motor vehicle equipment"', add
label define pr05a_ind1950_lbl 377 `"Aircraft and parts"', add
label define pr05a_ind1950_lbl 378 `"Ship and boat building and repairing"', add
label define pr05a_ind1950_lbl 379 `"Railroad and miscellaneous transportation equipment"', add
label define pr05a_ind1950_lbl 386 `"Professional equipment and supplies"', add
label define pr05a_ind1950_lbl 387 `"Photographic equipment and supplies"', add
label define pr05a_ind1950_lbl 388 `"Watches, clocks, and clockwork-operated devices"', add
label define pr05a_ind1950_lbl 399 `"Miscellaneous manufacturing industries"', add
label define pr05a_ind1950_lbl 406 `"Meat products"', add
label define pr05a_ind1950_lbl 407 `"Dairy products"', add
label define pr05a_ind1950_lbl 408 `"Canning and preserving fruits, vegetables, and seafoods"', add
label define pr05a_ind1950_lbl 409 `"Grain-mill products"', add
label define pr05a_ind1950_lbl 416 `"Bakery products"', add
label define pr05a_ind1950_lbl 417 `"Confectionery and related products"', add
label define pr05a_ind1950_lbl 418 `"Beverage industries"', add
label define pr05a_ind1950_lbl 419 `"Miscellaneous food preparations and kindred products"', add
label define pr05a_ind1950_lbl 426 `"Not specified food industries"', add
label define pr05a_ind1950_lbl 429 `"Tobacco manufactures"', add
label define pr05a_ind1950_lbl 436 `"Knitting mills"', add
label define pr05a_ind1950_lbl 437 `"Dyeing and finishing textiles, except knit goods"', add
label define pr05a_ind1950_lbl 438 `"Carpets, rugs, and other floor coverings"', add
label define pr05a_ind1950_lbl 439 `"Yarn, thread, and fabric mills"', add
label define pr05a_ind1950_lbl 446 `"Miscellaneous textile mill products"', add
label define pr05a_ind1950_lbl 448 `"Apparel and accessories"', add
label define pr05a_ind1950_lbl 449 `"Miscellaneous fabricated textile products"', add
label define pr05a_ind1950_lbl 456 `"Pulp, paper, and paperboard mills"', add
label define pr05a_ind1950_lbl 457 `"Paperboard containers and boxes"', add
label define pr05a_ind1950_lbl 458 `"Miscellaneous paper and pulp products"', add
label define pr05a_ind1950_lbl 459 `"Printing, publishing, and allied industries"', add
label define pr05a_ind1950_lbl 466 `"Synthetic fibers"', add
label define pr05a_ind1950_lbl 467 `"Drugs and medicines"', add
label define pr05a_ind1950_lbl 468 `"Paints, varnishes, and related products"', add
label define pr05a_ind1950_lbl 469 `"Miscellaneous chemicals and allied products"', add
label define pr05a_ind1950_lbl 476 `"Petroleum refining"', add
label define pr05a_ind1950_lbl 477 `"Miscellaneous petroleum and coal products"', add
label define pr05a_ind1950_lbl 478 `"Rubber products"', add
label define pr05a_ind1950_lbl 487 `"Leather: tanned, curried, and finished"', add
label define pr05a_ind1950_lbl 488 `"Footwear, except rubber"', add
label define pr05a_ind1950_lbl 489 `"Leather products, except footwear"', add
label define pr05a_ind1950_lbl 499 `"Not specified manufacturing industries"', add
label define pr05a_ind1950_lbl 506 `"Railroads and railway express service"', add
label define pr05a_ind1950_lbl 516 `"Street railways and bus lines"', add
label define pr05a_ind1950_lbl 526 `"Trucking service"', add
label define pr05a_ind1950_lbl 527 `"Warehousing and storage"', add
label define pr05a_ind1950_lbl 536 `"Taxicab service"', add
label define pr05a_ind1950_lbl 546 `"Water transportation"', add
label define pr05a_ind1950_lbl 556 `"Air transportation"', add
label define pr05a_ind1950_lbl 567 `"Petroleum and gasoline pipe lines"', add
label define pr05a_ind1950_lbl 568 `"Services incidental to transportation"', add
label define pr05a_ind1950_lbl 578 `"Telephone"', add
label define pr05a_ind1950_lbl 579 `"Telegraph"', add
label define pr05a_ind1950_lbl 586 `"Electric light and power"', add
label define pr05a_ind1950_lbl 587 `"Gas and steam supply systems"', add
label define pr05a_ind1950_lbl 588 `"Electric-gas utilities"', add
label define pr05a_ind1950_lbl 596 `"Water supply"', add
label define pr05a_ind1950_lbl 597 `"Sanitary services"', add
label define pr05a_ind1950_lbl 598 `"Other and not specified utilities"', add
label define pr05a_ind1950_lbl 606 `"Motor vehicles and equipment"', add
label define pr05a_ind1950_lbl 607 `"Drugs, chemicals, and allied products"', add
label define pr05a_ind1950_lbl 608 `"Dry goods apparel"', add
label define pr05a_ind1950_lbl 609 `"Food and related products"', add
label define pr05a_ind1950_lbl 616 `"Electrical goods, hardware, and plumbing equipment"', add
label define pr05a_ind1950_lbl 617 `"Machinery, equipment, and supplies"', add
label define pr05a_ind1950_lbl 618 `"Petroleum products"', add
label define pr05a_ind1950_lbl 619 `"Farm products--raw materials"', add
label define pr05a_ind1950_lbl 626 `"Miscellaneous wholesale trade"', add
label define pr05a_ind1950_lbl 627 `"Not specified wholesale trade"', add
label define pr05a_ind1950_lbl 636 `"Food stores, except dairy products"', add
label define pr05a_ind1950_lbl 637 `"Dairy products stores and milk retailing"', add
label define pr05a_ind1950_lbl 646 `"General merchandise stores"', add
label define pr05a_ind1950_lbl 647 `"Five and ten cent stores"', add
label define pr05a_ind1950_lbl 656 `"Apparel and accessories stores, except shoe"', add
label define pr05a_ind1950_lbl 657 `"Shoe stores"', add
label define pr05a_ind1950_lbl 658 `"Furniture and house furnishing stores"', add
label define pr05a_ind1950_lbl 659 `"Household appliance and radio stores"', add
label define pr05a_ind1950_lbl 667 `"Motor vehicles and accessories retailing"', add
label define pr05a_ind1950_lbl 668 `"Gasoline service stations"', add
label define pr05a_ind1950_lbl 669 `"Drug stores"', add
label define pr05a_ind1950_lbl 679 `"Eating and drinking places"', add
label define pr05a_ind1950_lbl 686 `"Hardware and farm implement stores"', add
label define pr05a_ind1950_lbl 687 `"Lumber and building material retailing"', add
label define pr05a_ind1950_lbl 688 `"Liquor stores"', add
label define pr05a_ind1950_lbl 689 `"Retail florists"', add
label define pr05a_ind1950_lbl 696 `"Jewelry stores"', add
label define pr05a_ind1950_lbl 697 `"Fuel and ice retailing"', add
label define pr05a_ind1950_lbl 698 `"Miscellaneous retail stores"', add
label define pr05a_ind1950_lbl 699 `"Not specified retail trade"', add
label define pr05a_ind1950_lbl 716 `"Banking and credit agencies"', add
label define pr05a_ind1950_lbl 726 `"Security and commodity brokerage and investment companies"', add
label define pr05a_ind1950_lbl 736 `"Insurance"', add
label define pr05a_ind1950_lbl 746 `"Real estate"', add
label define pr05a_ind1950_lbl 756 `"Real estate-insurance-law offices"', add
label define pr05a_ind1950_lbl 806 `"Advertising"', add
label define pr05a_ind1950_lbl 807 `"Accounting, auditing, and bookkeeping services"', add
label define pr05a_ind1950_lbl 808 `"Miscellaneous business services"', add
label define pr05a_ind1950_lbl 816 `"Auto repair services and garages"', add
label define pr05a_ind1950_lbl 817 `"Miscellaneous repair services"', add
label define pr05a_ind1950_lbl 826 `"Private households"', add
label define pr05a_ind1950_lbl 836 `"Hotels and lodging places"', add
label define pr05a_ind1950_lbl 846 `"Laundering, cleaning, and dyeing services"', add
label define pr05a_ind1950_lbl 847 `"Dressmaking shops"', add
label define pr05a_ind1950_lbl 848 `"Shoe repair shops"', add
label define pr05a_ind1950_lbl 849 `"Miscellaneous personal services"', add
label define pr05a_ind1950_lbl 856 `"Radio broadcasting and television"', add
label define pr05a_ind1950_lbl 857 `"Theaters and motion pictures"', add
label define pr05a_ind1950_lbl 858 `"Bowling alleys, and billiard and pool parlors"', add
label define pr05a_ind1950_lbl 859 `"Miscellaneous entertainment and recreation services"', add
label define pr05a_ind1950_lbl 868 `"Medical and other health services, except hospitals"', add
label define pr05a_ind1950_lbl 869 `"Hospitals"', add
label define pr05a_ind1950_lbl 879 `"Legal services"', add
label define pr05a_ind1950_lbl 888 `"Educational services"', add
label define pr05a_ind1950_lbl 896 `"Welfare and religious services"', add
label define pr05a_ind1950_lbl 897 `"Nonprofit membership organizations"', add
label define pr05a_ind1950_lbl 898 `"Engineering and architectural services"', add
label define pr05a_ind1950_lbl 899 `"Miscellaneous professional and related services"', add
label define pr05a_ind1950_lbl 906 `"Postal service"', add
label define pr05a_ind1950_lbl 916 `"Federal public administration"', add
label define pr05a_ind1950_lbl 926 `"State public administration"', add
label define pr05a_ind1950_lbl 936 `"Local public administration"', add
label define pr05a_ind1950_lbl 946 `"Public Administration, level not specified"', add
label define pr05a_ind1950_lbl 976 `"Common or General laborer"', add
label define pr05a_ind1950_lbl 982 `"Housework at home"', add
label define pr05a_ind1950_lbl 983 `"School response (students, etc.)"', add
label define pr05a_ind1950_lbl 984 `"Retired"', add
label define pr05a_ind1950_lbl 987 `"Institution response"', add
label define pr05a_ind1950_lbl 991 `"Lady/Man of leisure"', add
label define pr05a_ind1950_lbl 995 `"Non-industrial response"', add
label define pr05a_ind1950_lbl 997 `"Nonclassifiable"', add
label define pr05a_ind1950_lbl 998 `"Industry not reported"', add
label values pr05a_ind1950 pr05a_ind1950_lbl

label define pr05a_ind_lbl 000 `"NIU (not in universe)"'
label define pr05a_ind_lbl 017 `"Crop production"', add
label define pr05a_ind_lbl 018 `"Animal production"', add
label define pr05a_ind_lbl 019 `"Forestry except logging"', add
label define pr05a_ind_lbl 028 `"Fishing, hunting, and trapping"', add
label define pr05a_ind_lbl 029 `"Support activities for agriculture and forestry"', add
label define pr05a_ind_lbl 047 `"Nonmetallic mineral mining and quarrying"', add
label define pr05a_ind_lbl 057 `"Electric power generation, transmission and distribution"', add
label define pr05a_ind_lbl 058 `"Natural gas distribution"', add
label define pr05a_ind_lbl 067 `"Water, steam, air conditioning, and irrigation systems"', add
label define pr05a_ind_lbl 068 `"Sewage treatment facilities"', add
label define pr05a_ind_lbl 077 `"Construction"', add
label define pr05a_ind_lbl 107 `"Animal food, grain, and oilseed milling"', add
label define pr05a_ind_lbl 108 `"Sugar and confectionery products"', add
label define pr05a_ind_lbl 109 `"Fruit and vegetable preserving and specialty food manufacturing"', add
label define pr05a_ind_lbl 117 `"Dairy product manufacturing"', add
label define pr05a_ind_lbl 118 `"Animal slaughtering and processing"', add
label define pr05a_ind_lbl 119 `"Retail bakeries"', add
label define pr05a_ind_lbl 127 `"Bakeries, except retail"', add
label define pr05a_ind_lbl 128 `"Seafood and other miscellaneous foods, n.e.c."', add
label define pr05a_ind_lbl 129 `"Not specified food industries"', add
label define pr05a_ind_lbl 137 `"Beverage manufacturing"', add
label define pr05a_ind_lbl 139 `"Tobacco manufacturing"', add
label define pr05a_ind_lbl 148 `"Fabric mills, except knitting"', add
label define pr05a_ind_lbl 149 `"Textile and fabric finishing and coating mills"', add
label define pr05a_ind_lbl 159 `"Textile product mills except carpets and rugs"', add
label define pr05a_ind_lbl 167 `"Knitting mills"', add
label define pr05a_ind_lbl 168 `"Cut and sew apparel manufacturing"', add
label define pr05a_ind_lbl 169 `"Apparel accessories and other apparel manufacturing"', add
label define pr05a_ind_lbl 177 `"Footwear manufacturing"', add
label define pr05a_ind_lbl 179 `"Leather tanning and products, except footwear manufacturing"', add
label define pr05a_ind_lbl 187 `"Pulp, paper, and paperboard mills"', add
label define pr05a_ind_lbl 188 `"Paperboard containers and boxes"', add
label define pr05a_ind_lbl 189 `"Miscellaneous paper and pulp products"', add
label define pr05a_ind_lbl 199 `"Printing and related support activities"', add
label define pr05a_ind_lbl 207 `"Petroleum refining"', add
label define pr05a_ind_lbl 209 `"Miscellaneous petroleum and coal products"', add
label define pr05a_ind_lbl 217 `"Resin, synthetic rubber and fibers, and filaments manufacturing"', add
label define pr05a_ind_lbl 218 `"Agricultural chemical manufacturing"', add
label define pr05a_ind_lbl 219 `"Pharmaceutical and medicine manufacturing"', add
label define pr05a_ind_lbl 227 `"Paint, coating, and adhesives manufacturing"', add
label define pr05a_ind_lbl 228 `"Soap, cleaning compound, and cosmetic manufacturing"', add
label define pr05a_ind_lbl 229 `"Industrial and miscellaneous chemicals"', add
label define pr05a_ind_lbl 237 `"Plastics product manufacturing"', add
label define pr05a_ind_lbl 238 `"Tire manufacturing"', add
label define pr05a_ind_lbl 239 `"Rubber products, except tires, manufacturing"', add
label define pr05a_ind_lbl 247 `"Pottery, ceramics, and related products manufacturing"', add
label define pr05a_ind_lbl 248 `"Structural clay product manufacturing"', add
label define pr05a_ind_lbl 249 `"Glass and glass product manufacturing"', add
label define pr05a_ind_lbl 257 `"Cement, concrete, lime, and gypsum product manufacturing"', add
label define pr05a_ind_lbl 259 `"Miscellaneous nonmetallic mineral product manufacturing"', add
label define pr05a_ind_lbl 267 `"Iron and steel mills and steel product manufacturing"', add
label define pr05a_ind_lbl 268 `"Aluminum production and processing"', add
label define pr05a_ind_lbl 269 `"Nonferrous metal, except aluminum, production and processing"', add
label define pr05a_ind_lbl 277 `"Foundries"', add
label define pr05a_ind_lbl 278 `"Metal forgings and stampings"', add
label define pr05a_ind_lbl 279 `"Cutlery and hand tool manufacturing"', add
label define pr05a_ind_lbl 287 `"Structural metals and tank and shipping container manufacturing"', add
label define pr05a_ind_lbl 288 `"Machine shops, turned product, screw, nut, and bolt manufacturing"', add
label define pr05a_ind_lbl 289 `"Coating, engraving, heat treating and allied activities"', add
label define pr05a_ind_lbl 297 `"Ordnance"', add
label define pr05a_ind_lbl 298 `"Miscellaneous fabricated metal products manufacturing"', add
label define pr05a_ind_lbl 307 `"Agricultural implement manufacturing"', add
label define pr05a_ind_lbl 308 `"Construction mining and oil field machinery manufacturing"', add
label define pr05a_ind_lbl 309 `"Commercial and service industry machinery manufacturing"', add
label define pr05a_ind_lbl 317 `"Metalworking machinery manufacturing"', add
label define pr05a_ind_lbl 318 `"Engines, turbines, and power transmission equipment manufacturing"', add
label define pr05a_ind_lbl 319 `"Machinery manufacturing, n.e.c."', add
label define pr05a_ind_lbl 329 `"Not specified machinery manufacturing"', add
label define pr05a_ind_lbl 336 `"Computer and peripheral equipment manufacturing"', add
label define pr05a_ind_lbl 337 `"Communications, audio, and video equipment manufacturing"', add
label define pr05a_ind_lbl 338 `"Navigational, measuring, electromedical, and control instruments manufacturing"', add
label define pr05a_ind_lbl 339 `"Electronic component and product manufacturing, n.e.c."', add
label define pr05a_ind_lbl 347 `"Household appliance manufacturing"', add
label define pr05a_ind_lbl 349 `"Electrical lighting, equipment, and supplies manufacturing, n.e.c."', add
label define pr05a_ind_lbl 357 `"Motor vehicles and motor vehicle equipment manufacturing"', add
label define pr05a_ind_lbl 358 `"Aircraft and parts manufacturing"', add
label define pr05a_ind_lbl 359 `"Aerospace product and parts manufacturing"', add
label define pr05a_ind_lbl 368 `"Ship and boat building"', add
label define pr05a_ind_lbl 369 `"Other transportation equipment manufacturing"', add
label define pr05a_ind_lbl 387 `"Miscellaneous wood products"', add
label define pr05a_ind_lbl 389 `"Furniture and related products manufacturing"', add
label define pr05a_ind_lbl 396 `"Medical equipment and supplies manufacturing"', add
label define pr05a_ind_lbl 397 `"Toys, amusement, and sporting goods manufacturing"', add
label define pr05a_ind_lbl 398 `"Miscellaneous manufacturing, n.e.c."', add
label define pr05a_ind_lbl 399 `"Not specified manufacturing industries"', add
label define pr05a_ind_lbl 407 `"Motor vehicles, parts and supplies"', add
label define pr05a_ind_lbl 408 `"Furniture and home furnishings"', add
label define pr05a_ind_lbl 409 `"Lumber and other construction materials"', add
label define pr05a_ind_lbl 417 `"Professional and commercial equipment and supplies"', add
label define pr05a_ind_lbl 418 `"Metals and minerals, except petroleum"', add
label define pr05a_ind_lbl 419 `"Electrical goods"', add
label define pr05a_ind_lbl 426 `"Hardware, plumbing and heating equipment, and supplies"', add
label define pr05a_ind_lbl 427 `"Machinery, equipment, and supplies"', add
label define pr05a_ind_lbl 428 `"Recyclable material"', add
label define pr05a_ind_lbl 429 `"Miscellaneous durable goods"', add
label define pr05a_ind_lbl 437 `"Paper and paper product wholesalers"', add
label define pr05a_ind_lbl 438 `"Drugs, sundries, and chemical and allied product wholesalers"', add
label define pr05a_ind_lbl 439 `"Apparel, fabrics, and notions wholesalers"', add
label define pr05a_ind_lbl 447 `"Groceries and related product wholesalers"', add
label define pr05a_ind_lbl 448 `"Farm product raw material wholesalers"', add
label define pr05a_ind_lbl 449 `"Petroleum and petroleum product wholesalers"', add
label define pr05a_ind_lbl 456 `"Alcoholic beverage wholesalers"', add
label define pr05a_ind_lbl 457 `"Farm supplies wholesalers"', add
label define pr05a_ind_lbl 458 `"Miscellaneous nondurable goods wholesalers"', add
label define pr05a_ind_lbl 459 `"Not specified wholesale trade"', add
label define pr05a_ind_lbl 467 `"Automobile dealers"', add
label define pr05a_ind_lbl 468 `"Other motor vehicle dealers"', add
label define pr05a_ind_lbl 469 `"Auto parts, accessories, and tire stores"', add
label define pr05a_ind_lbl 477 `"Furniture and home furnishings stores"', add
label define pr05a_ind_lbl 478 `"Household appliance stores"', add
label define pr05a_ind_lbl 479 `"Radio, TV, and computer stores"', add
label define pr05a_ind_lbl 487 `"Building material and supplies dealers"', add
label define pr05a_ind_lbl 488 `"Hardware stores"', add
label define pr05a_ind_lbl 489 `"Lawn and garden equipment and supplies stores"', add
label define pr05a_ind_lbl 497 `"Grocery stores"', add
label define pr05a_ind_lbl 498 `"Specialty food stores"', add
label define pr05a_ind_lbl 499 `"Beer, wine, and liquor stores"', add
label define pr05a_ind_lbl 507 `"Pharmacies and drug stores"', add
label define pr05a_ind_lbl 508 `"Health and personal care, except drug stores"', add
label define pr05a_ind_lbl 509 `"Gasoline stations"', add
label define pr05a_ind_lbl 517 `"Clothing and accessories, except shoe stores"', add
label define pr05a_ind_lbl 518 `"Shoe stores"', add
label define pr05a_ind_lbl 519 `"Jewelry, luggage, and leather goods stores"', add
label define pr05a_ind_lbl 527 `"Sporting goods, camera, and hobby and toy stores"', add
label define pr05a_ind_lbl 528 `"Sewing, needlework and piece goods stores"', add
label define pr05a_ind_lbl 529 `"Music stores"', add
label define pr05a_ind_lbl 537 `"Book stores and news dealers"', add
label define pr05a_ind_lbl 538 `"Department stores"', add
label define pr05a_ind_lbl 539 `"Miscellaneous general merchandise stores"', add
label define pr05a_ind_lbl 547 `"Retail florists"', add
label define pr05a_ind_lbl 548 `"Office supplies and stationary stores"', add
label define pr05a_ind_lbl 549 `"Used merchandise stores"', add
label define pr05a_ind_lbl 557 `"Gift, novelty, and souvenir shops"', add
label define pr05a_ind_lbl 558 `"Miscellaneous retail stores"', add
label define pr05a_ind_lbl 559 `"Electronic shopping and mail-order houses"', add
label define pr05a_ind_lbl 567 `"Vending machine operators"', add
label define pr05a_ind_lbl 568 `"Fuel dealers"', add
label define pr05a_ind_lbl 569 `"Other direct selling establishments"', add
label define pr05a_ind_lbl 579 `"Not specified retail trade"', add
label define pr05a_ind_lbl 607 `"Air transportation"', add
label define pr05a_ind_lbl 608 `"Rail transportation"', add
label define pr05a_ind_lbl 609 `"Water transportation"', add
label define pr05a_ind_lbl 617 `"Truck transportation"', add
label define pr05a_ind_lbl 618 `"Bus service and urban transit"', add
label define pr05a_ind_lbl 619 `"Taxi and limousine service"', add
label define pr05a_ind_lbl 627 `"Pipeline transportation"', add
label define pr05a_ind_lbl 628 `"Scenic and sightseeing transportation"', add
label define pr05a_ind_lbl 629 `"Services incidental to transportation"', add
label define pr05a_ind_lbl 637 `"Postal Service"', add
label define pr05a_ind_lbl 638 `"Couriers and messengers"', add
label define pr05a_ind_lbl 639 `"Warehousing and storage"', add
label define pr05a_ind_lbl 647 `"Newspaper publishers"', add
label define pr05a_ind_lbl 648 `"Publishing, except newspapers and software"', add
label define pr05a_ind_lbl 657 `"Motion pictures and video industries"', add
label define pr05a_ind_lbl 659 `"Sound recording industries"', add
label define pr05a_ind_lbl 667 `"Radio and television broadcasting and cable"', add
label define pr05a_ind_lbl 668 `"Wired telecommunications carriers"', add
label define pr05a_ind_lbl 669 `"Other telecommunication services"', add
label define pr05a_ind_lbl 677 `"Libraries and archives"', add
label define pr05a_ind_lbl 678 `"Other information services"', add
label define pr05a_ind_lbl 679 `"Data processing services"', add
label define pr05a_ind_lbl 687 `"Banking and related activities"', add
label define pr05a_ind_lbl 688 `"Savings institutions, including credit unions"', add
label define pr05a_ind_lbl 689 `"Non-depository credit and related activities"', add
label define pr05a_ind_lbl 697 `"Securities, commodities, funds, trusts, and other financial investments"', add
label define pr05a_ind_lbl 699 `"Insurance carriers and related activities"', add
label define pr05a_ind_lbl 707 `"Real estate"', add
label define pr05a_ind_lbl 708 `"Automotive equipment rental and leasing"', add
label define pr05a_ind_lbl 717 `"Video tape and disk rental"', add
label define pr05a_ind_lbl 718 `"Other consumer goods rental"', add
label define pr05a_ind_lbl 719 `"Commercial, industrial, and other intangible assets rental and leasing"', add
label define pr05a_ind_lbl 727 `"Legal services"', add
label define pr05a_ind_lbl 728 `"Accounting, tax preparation, bookkeeping and payroll services"', add
label define pr05a_ind_lbl 729 `"Architectural, engineering, and related services"', add
label define pr05a_ind_lbl 737 `"Specialized design services"', add
label define pr05a_ind_lbl 738 `"Computer systems design and related services"', add
label define pr05a_ind_lbl 739 `"Management, scientific and technical consulting services"', add
label define pr05a_ind_lbl 746 `"Scientific research and development services"', add
label define pr05a_ind_lbl 747 `"Advertising and related services"', add
label define pr05a_ind_lbl 748 `"Veterinary services"', add
label define pr05a_ind_lbl 749 `"Other professional, scientific and technical services"', add
label define pr05a_ind_lbl 757 `"Management of companies and enterprises"', add
label define pr05a_ind_lbl 758 `"Employment services"', add
label define pr05a_ind_lbl 759 `"Business support services"', add
label define pr05a_ind_lbl 767 `"Travel arrangements and reservation services"', add
label define pr05a_ind_lbl 768 `"Investigation and security services"', add
label define pr05a_ind_lbl 769 `"Services to buildings and dwellings"', add
label define pr05a_ind_lbl 777 `"Landscaping services"', add
label define pr05a_ind_lbl 778 `"Other administrative, and other support services"', add
label define pr05a_ind_lbl 779 `"Waste management and remediation services"', add
label define pr05a_ind_lbl 786 `"Elementary and secondary schools"', add
label define pr05a_ind_lbl 787 `"Colleges and universities, including junior colleges"', add
label define pr05a_ind_lbl 788 `"Business, technical, and trade schools and training"', add
label define pr05a_ind_lbl 789 `"Other schools, instruction, and educational services"', add
label define pr05a_ind_lbl 797 `"Offices of physicians"', add
label define pr05a_ind_lbl 798 `"Offices of dentists"', add
label define pr05a_ind_lbl 799 `"Office of chiropractors"', add
label define pr05a_ind_lbl 807 `"Offices of optometrists"', add
label define pr05a_ind_lbl 808 `"Offices of other health practitioners"', add
label define pr05a_ind_lbl 809 `"Outpatient care centers"', add
label define pr05a_ind_lbl 817 `"Home health care services"', add
label define pr05a_ind_lbl 818 `"Other health care services"', add
label define pr05a_ind_lbl 819 `"Hospitals"', add
label define pr05a_ind_lbl 827 `"Nursing care facilities"', add
label define pr05a_ind_lbl 829 `"Residential care facilities, without nursing"', add
label define pr05a_ind_lbl 837 `"Individual and family services"', add
label define pr05a_ind_lbl 838 `"Community food and housing, and emergency services"', add
label define pr05a_ind_lbl 839 `"Vocational rehabilitation services"', add
label define pr05a_ind_lbl 847 `"Child day care services"', add
label define pr05a_ind_lbl 856 `"Independent artists, performing arts, spectator sports, and related industries"', add
label define pr05a_ind_lbl 857 `"Museums, art galleries, historical sites, and similar institutions"', add
label define pr05a_ind_lbl 858 `"Bowling centers"', add
label define pr05a_ind_lbl 859 `"Other amusement, gambling, and recreation industries"', add
label define pr05a_ind_lbl 866 `"Traveler accommodation"', add
label define pr05a_ind_lbl 867 `"Recreational vehicle parks and camps, and rooming and boarding houses"', add
label define pr05a_ind_lbl 868 `"Restaurants and other food services"', add
label define pr05a_ind_lbl 869 `"Drinking places, alcoholic beverages"', add
label define pr05a_ind_lbl 877 `"Automotive repair and maintenance"', add
label define pr05a_ind_lbl 878 `"Car washes"', add
label define pr05a_ind_lbl 879 `"Electronic and precision equipment repair and maintenance"', add
label define pr05a_ind_lbl 887 `"Commercial and industrial machinery and equipment repair and maintenance"', add
label define pr05a_ind_lbl 888 `"Personal and household goods repair and maintenance"', add
label define pr05a_ind_lbl 897 `"Barber shops"', add
label define pr05a_ind_lbl 898 `"Beauty salons"', add
label define pr05a_ind_lbl 899 `"Nail salons and other personal care services"', add
label define pr05a_ind_lbl 907 `"Dry cleaning and laundry services"', add
label define pr05a_ind_lbl 908 `"Funeral homes, cemeteries and crematories"', add
label define pr05a_ind_lbl 909 `"Other personal services"', add
label define pr05a_ind_lbl 916 `"Religious organizations"', add
label define pr05a_ind_lbl 917 `"Civic, social, advocacy organizations, and grant-making and giving services"', add
label define pr05a_ind_lbl 918 `"Labor unions"', add
label define pr05a_ind_lbl 919 `"Business, professional, political, and similar organizations"', add
label define pr05a_ind_lbl 929 `"Private households"', add
label define pr05a_ind_lbl 937 `"Executive offices and legislative bodies"', add
label define pr05a_ind_lbl 938 `"Public finance activities"', add
label define pr05a_ind_lbl 939 `"Other general government and support"', add
label define pr05a_ind_lbl 947 `"Justice, public order, and safety activities"', add
label define pr05a_ind_lbl 948 `"Administration of human resource programs"', add
label define pr05a_ind_lbl 949 `"Administration of environmental quality and housing programs"', add
label define pr05a_ind_lbl 957 `"Administration of economic programs and space research"', add
label define pr05a_ind_lbl 959 `"National security and international affairs"', add
label define pr05a_ind_lbl 967 `"U.S. Army"', add
label define pr05a_ind_lbl 968 `"U.S. Air Force"', add
label define pr05a_ind_lbl 969 `"U.S. Navy"', add
label define pr05a_ind_lbl 978 `"U.S. Coast Guard"', add
label define pr05a_ind_lbl 979 `"U.S. Armed Forces, branch not specified"', add
label define pr05a_ind_lbl 987 `"Military reserves or National Guard"', add
label define pr05a_ind_lbl 992 `"Unemployed, with no work experience since 1995"', add
label values pr05a_ind pr05a_ind_lbl

label define pr05a_classwkr_lbl 00 `"NIU (not in universe)"'
label define pr05a_classwkr_lbl 13 `"Self-employed, not incorporated"', add
label define pr05a_classwkr_lbl 14 `"Self-employed, incorporated"', add
label define pr05a_classwkr_lbl 22 `"Wage/salary, private"', add
label define pr05a_classwkr_lbl 23 `"Wage/salary at non-profit"', add
label define pr05a_classwkr_lbl 25 `"Federal government employee"', add
label define pr05a_classwkr_lbl 27 `"Commonwealth employee"', add
label define pr05a_classwkr_lbl 28 `"Local government employee"', add
label define pr05a_classwkr_lbl 29 `"Unpaid family worker"', add
label values pr05a_classwkr pr05a_classwkr_lbl

label define pr05a_wkswork1_lbl 00 `"NIU (not in universe)"'
label define pr05a_wkswork1_lbl 01 `"1"', add
label define pr05a_wkswork1_lbl 02 `"2"', add
label define pr05a_wkswork1_lbl 03 `"3"', add
label define pr05a_wkswork1_lbl 04 `"4"', add
label define pr05a_wkswork1_lbl 05 `"5"', add
label define pr05a_wkswork1_lbl 06 `"6"', add
label define pr05a_wkswork1_lbl 07 `"7"', add
label define pr05a_wkswork1_lbl 08 `"8"', add
label define pr05a_wkswork1_lbl 09 `"9"', add
label define pr05a_wkswork1_lbl 10 `"10"', add
label define pr05a_wkswork1_lbl 11 `"11"', add
label define pr05a_wkswork1_lbl 12 `"12"', add
label define pr05a_wkswork1_lbl 13 `"13"', add
label define pr05a_wkswork1_lbl 14 `"14"', add
label define pr05a_wkswork1_lbl 15 `"15"', add
label define pr05a_wkswork1_lbl 16 `"16"', add
label define pr05a_wkswork1_lbl 17 `"17"', add
label define pr05a_wkswork1_lbl 18 `"18"', add
label define pr05a_wkswork1_lbl 19 `"19"', add
label define pr05a_wkswork1_lbl 20 `"20"', add
label define pr05a_wkswork1_lbl 21 `"21"', add
label define pr05a_wkswork1_lbl 22 `"22"', add
label define pr05a_wkswork1_lbl 23 `"23"', add
label define pr05a_wkswork1_lbl 24 `"24"', add
label define pr05a_wkswork1_lbl 25 `"25"', add
label define pr05a_wkswork1_lbl 26 `"26"', add
label define pr05a_wkswork1_lbl 27 `"27"', add
label define pr05a_wkswork1_lbl 28 `"28"', add
label define pr05a_wkswork1_lbl 29 `"29"', add
label define pr05a_wkswork1_lbl 30 `"30"', add
label define pr05a_wkswork1_lbl 31 `"31"', add
label define pr05a_wkswork1_lbl 32 `"32"', add
label define pr05a_wkswork1_lbl 33 `"33"', add
label define pr05a_wkswork1_lbl 34 `"34"', add
label define pr05a_wkswork1_lbl 35 `"35"', add
label define pr05a_wkswork1_lbl 36 `"36"', add
label define pr05a_wkswork1_lbl 37 `"37"', add
label define pr05a_wkswork1_lbl 38 `"38"', add
label define pr05a_wkswork1_lbl 39 `"39"', add
label define pr05a_wkswork1_lbl 40 `"40"', add
label define pr05a_wkswork1_lbl 41 `"41"', add
label define pr05a_wkswork1_lbl 42 `"42"', add
label define pr05a_wkswork1_lbl 43 `"43"', add
label define pr05a_wkswork1_lbl 44 `"44"', add
label define pr05a_wkswork1_lbl 45 `"45"', add
label define pr05a_wkswork1_lbl 46 `"46"', add
label define pr05a_wkswork1_lbl 47 `"47"', add
label define pr05a_wkswork1_lbl 48 `"48"', add
label define pr05a_wkswork1_lbl 49 `"49"', add
label define pr05a_wkswork1_lbl 50 `"50"', add
label define pr05a_wkswork1_lbl 51 `"51"', add
label define pr05a_wkswork1_lbl 52 `"52"', add
label values pr05a_wkswork1 pr05a_wkswork1_lbl

label define pr05a_wkswork2_lbl 0 `"NIU (not in universe)"'
label define pr05a_wkswork2_lbl 1 `"1-13 weeks"', add
label define pr05a_wkswork2_lbl 2 `"14-26 weeks"', add
label define pr05a_wkswork2_lbl 3 `"27-39 weeks"', add
label define pr05a_wkswork2_lbl 4 `"40-47 weeks"', add
label define pr05a_wkswork2_lbl 5 `"48-49 weeks"', add
label define pr05a_wkswork2_lbl 6 `"50-52 weeks"', add
label values pr05a_wkswork2 pr05a_wkswork2_lbl

label define pr05a_uhrswork_lbl 00 `"NIU (not in universe)"'
label define pr05a_uhrswork_lbl 01 `"1"', add
label define pr05a_uhrswork_lbl 02 `"2"', add
label define pr05a_uhrswork_lbl 03 `"3"', add
label define pr05a_uhrswork_lbl 04 `"4"', add
label define pr05a_uhrswork_lbl 05 `"5"', add
label define pr05a_uhrswork_lbl 06 `"6"', add
label define pr05a_uhrswork_lbl 07 `"7"', add
label define pr05a_uhrswork_lbl 08 `"8"', add
label define pr05a_uhrswork_lbl 09 `"9"', add
label define pr05a_uhrswork_lbl 10 `"10"', add
label define pr05a_uhrswork_lbl 11 `"11"', add
label define pr05a_uhrswork_lbl 12 `"12"', add
label define pr05a_uhrswork_lbl 13 `"13"', add
label define pr05a_uhrswork_lbl 14 `"14"', add
label define pr05a_uhrswork_lbl 15 `"15"', add
label define pr05a_uhrswork_lbl 16 `"16"', add
label define pr05a_uhrswork_lbl 17 `"17"', add
label define pr05a_uhrswork_lbl 18 `"18"', add
label define pr05a_uhrswork_lbl 19 `"19"', add
label define pr05a_uhrswork_lbl 20 `"20"', add
label define pr05a_uhrswork_lbl 21 `"21"', add
label define pr05a_uhrswork_lbl 22 `"22"', add
label define pr05a_uhrswork_lbl 23 `"23"', add
label define pr05a_uhrswork_lbl 24 `"24"', add
label define pr05a_uhrswork_lbl 25 `"25"', add
label define pr05a_uhrswork_lbl 26 `"26"', add
label define pr05a_uhrswork_lbl 27 `"27"', add
label define pr05a_uhrswork_lbl 28 `"28"', add
label define pr05a_uhrswork_lbl 29 `"29"', add
label define pr05a_uhrswork_lbl 30 `"30"', add
label define pr05a_uhrswork_lbl 31 `"31"', add
label define pr05a_uhrswork_lbl 32 `"32"', add
label define pr05a_uhrswork_lbl 33 `"33"', add
label define pr05a_uhrswork_lbl 34 `"34"', add
label define pr05a_uhrswork_lbl 35 `"35"', add
label define pr05a_uhrswork_lbl 36 `"36"', add
label define pr05a_uhrswork_lbl 37 `"37"', add
label define pr05a_uhrswork_lbl 38 `"38"', add
label define pr05a_uhrswork_lbl 39 `"39"', add
label define pr05a_uhrswork_lbl 40 `"40"', add
label define pr05a_uhrswork_lbl 41 `"41"', add
label define pr05a_uhrswork_lbl 42 `"42"', add
label define pr05a_uhrswork_lbl 43 `"43"', add
label define pr05a_uhrswork_lbl 44 `"44"', add
label define pr05a_uhrswork_lbl 45 `"45"', add
label define pr05a_uhrswork_lbl 46 `"46"', add
label define pr05a_uhrswork_lbl 47 `"47"', add
label define pr05a_uhrswork_lbl 48 `"48"', add
label define pr05a_uhrswork_lbl 49 `"49"', add
label define pr05a_uhrswork_lbl 50 `"50"', add
label define pr05a_uhrswork_lbl 51 `"51"', add
label define pr05a_uhrswork_lbl 52 `"52"', add
label define pr05a_uhrswork_lbl 53 `"53"', add
label define pr05a_uhrswork_lbl 54 `"54"', add
label define pr05a_uhrswork_lbl 55 `"55"', add
label define pr05a_uhrswork_lbl 56 `"56"', add
label define pr05a_uhrswork_lbl 57 `"57"', add
label define pr05a_uhrswork_lbl 58 `"58"', add
label define pr05a_uhrswork_lbl 59 `"59"', add
label define pr05a_uhrswork_lbl 60 `"60"', add
label define pr05a_uhrswork_lbl 62 `"62"', add
label define pr05a_uhrswork_lbl 63 `"63"', add
label define pr05a_uhrswork_lbl 64 `"64"', add
label define pr05a_uhrswork_lbl 65 `"65"', add
label define pr05a_uhrswork_lbl 66 `"66"', add
label define pr05a_uhrswork_lbl 67 `"67"', add
label define pr05a_uhrswork_lbl 68 `"68"', add
label define pr05a_uhrswork_lbl 70 `"70"', add
label define pr05a_uhrswork_lbl 72 `"72"', add
label define pr05a_uhrswork_lbl 75 `"75"', add
label define pr05a_uhrswork_lbl 76 `"76"', add
label define pr05a_uhrswork_lbl 77 `"77"', add
label define pr05a_uhrswork_lbl 80 `"80"', add
label define pr05a_uhrswork_lbl 84 `"84"', add
label define pr05a_uhrswork_lbl 85 `"85"', add
label define pr05a_uhrswork_lbl 90 `"90"', add
label define pr05a_uhrswork_lbl 91 `"91"', add
label define pr05a_uhrswork_lbl 95 `"95"', add
label define pr05a_uhrswork_lbl 96 `"96"', add
label define pr05a_uhrswork_lbl 98 `"98"', add
label define pr05a_uhrswork_lbl 99 `"99"', add
label values pr05a_uhrswork pr05a_uhrswork_lbl

label define pr05a_yrsusa1_lbl 00 `"NIU (not in universe)"'
label define pr05a_yrsusa1_lbl 01 `"1"', add
label define pr05a_yrsusa1_lbl 02 `"2"', add
label define pr05a_yrsusa1_lbl 03 `"3"', add
label define pr05a_yrsusa1_lbl 04 `"4"', add
label define pr05a_yrsusa1_lbl 05 `"5"', add
label define pr05a_yrsusa1_lbl 06 `"6"', add
label define pr05a_yrsusa1_lbl 07 `"7"', add
label define pr05a_yrsusa1_lbl 08 `"8"', add
label define pr05a_yrsusa1_lbl 09 `"9"', add
label define pr05a_yrsusa1_lbl 10 `"10"', add
label define pr05a_yrsusa1_lbl 11 `"11"', add
label define pr05a_yrsusa1_lbl 12 `"12"', add
label define pr05a_yrsusa1_lbl 13 `"13"', add
label define pr05a_yrsusa1_lbl 14 `"14"', add
label define pr05a_yrsusa1_lbl 15 `"15"', add
label define pr05a_yrsusa1_lbl 16 `"16"', add
label define pr05a_yrsusa1_lbl 17 `"17"', add
label define pr05a_yrsusa1_lbl 18 `"18"', add
label define pr05a_yrsusa1_lbl 19 `"19"', add
label define pr05a_yrsusa1_lbl 20 `"20"', add
label define pr05a_yrsusa1_lbl 21 `"21"', add
label define pr05a_yrsusa1_lbl 22 `"22"', add
label define pr05a_yrsusa1_lbl 23 `"23"', add
label define pr05a_yrsusa1_lbl 24 `"24"', add
label define pr05a_yrsusa1_lbl 25 `"25"', add
label define pr05a_yrsusa1_lbl 26 `"26"', add
label define pr05a_yrsusa1_lbl 27 `"27"', add
label define pr05a_yrsusa1_lbl 28 `"28"', add
label define pr05a_yrsusa1_lbl 29 `"29"', add
label define pr05a_yrsusa1_lbl 30 `"30"', add
label define pr05a_yrsusa1_lbl 31 `"31"', add
label define pr05a_yrsusa1_lbl 32 `"32"', add
label define pr05a_yrsusa1_lbl 33 `"33"', add
label define pr05a_yrsusa1_lbl 34 `"34"', add
label define pr05a_yrsusa1_lbl 35 `"35"', add
label define pr05a_yrsusa1_lbl 36 `"36"', add
label define pr05a_yrsusa1_lbl 37 `"37"', add
label define pr05a_yrsusa1_lbl 38 `"38"', add
label define pr05a_yrsusa1_lbl 39 `"39"', add
label define pr05a_yrsusa1_lbl 40 `"40"', add
label define pr05a_yrsusa1_lbl 41 `"41"', add
label define pr05a_yrsusa1_lbl 42 `"42"', add
label define pr05a_yrsusa1_lbl 43 `"43"', add
label define pr05a_yrsusa1_lbl 44 `"44"', add
label define pr05a_yrsusa1_lbl 45 `"45"', add
label define pr05a_yrsusa1_lbl 46 `"46"', add
label define pr05a_yrsusa1_lbl 47 `"47"', add
label define pr05a_yrsusa1_lbl 48 `"48"', add
label define pr05a_yrsusa1_lbl 49 `"49"', add
label define pr05a_yrsusa1_lbl 50 `"50"', add
label define pr05a_yrsusa1_lbl 51 `"51"', add
label define pr05a_yrsusa1_lbl 52 `"52"', add
label define pr05a_yrsusa1_lbl 53 `"53"', add
label define pr05a_yrsusa1_lbl 54 `"54"', add
label define pr05a_yrsusa1_lbl 55 `"55"', add
label define pr05a_yrsusa1_lbl 56 `"56"', add
label define pr05a_yrsusa1_lbl 57 `"57"', add
label define pr05a_yrsusa1_lbl 58 `"58"', add
label define pr05a_yrsusa1_lbl 59 `"59"', add
label define pr05a_yrsusa1_lbl 60 `"60"', add
label define pr05a_yrsusa1_lbl 61 `"61"', add
label define pr05a_yrsusa1_lbl 64 `"64"', add
label define pr05a_yrsusa1_lbl 65 `"65"', add
label define pr05a_yrsusa1_lbl 67 `"67"', add
label define pr05a_yrsusa1_lbl 70 `"70"', add
label define pr05a_yrsusa1_lbl 72 `"72"', add
label define pr05a_yrsusa1_lbl 74 `"74"', add
label define pr05a_yrsusa1_lbl 75 `"75"', add
label define pr05a_yrsusa1_lbl 99 `"Unknown"', add
label values pr05a_yrsusa1 pr05a_yrsusa1_lbl

label define pr05a_workedyr_lbl 0 `"NIU (not in universe)"'
label define pr05a_workedyr_lbl 1 `"No"', add
label define pr05a_workedyr_lbl 2 `"Yes"', add
label values pr05a_workedyr pr05a_workedyr_lbl

label define pr05a_absent_lbl 0 `"NIU (not in universe)"'
label define pr05a_absent_lbl 1 `"No"', add
label define pr05a_absent_lbl 3 `"Yes"', add
label define pr05a_absent_lbl 4 `"Not reported"', add
label values pr05a_absent pr05a_absent_lbl

label define pr05a_looking_lbl 0 `"NIU (not in universe)"'
label define pr05a_looking_lbl 1 `"No, did not look for work"', add
label define pr05a_looking_lbl 2 `"Yes, looked for work"', add
label define pr05a_looking_lbl 3 `"Not reported"', add
label values pr05a_looking pr05a_looking_lbl

label define pr05a_availble_lbl 0 `"NIU (not in universe)"'
label define pr05a_availble_lbl 2 `"No, temporarily ill"', add
label define pr05a_availble_lbl 3 `"No, other reason(s)"', add
label define pr05a_availble_lbl 4 `"Yes, available for work"', add
label define pr05a_availble_lbl 5 `"Not reported"', add
label values pr05a_availble pr05a_availble_lbl

label define pr05a_inctot_lbl 999999 `"NIU (not in universe)"'
label values pr05a_inctot pr05a_inctot_lbl

label define pr05a_incwage_lbl 999999 `"NIU (not in universe)"'
label values pr05a_incwage pr05a_incwage_lbl

label define pr05a_incss_lbl 99999 `"NIU (not in universe)"'
label values pr05a_incss pr05a_incss_lbl

label define pr05a_incwelfr_lbl 00000 `"0"'
label define pr05a_incwelfr_lbl 00051 `"51"', add
label define pr05a_incwelfr_lbl 00061 `"61"', add
label define pr05a_incwelfr_lbl 00071 `"71"', add
label define pr05a_incwelfr_lbl 00081 `"81"', add
label define pr05a_incwelfr_lbl 00092 `"92"', add
label define pr05a_incwelfr_lbl 00102 `"102"', add
label define pr05a_incwelfr_lbl 00112 `"112"', add
label define pr05a_incwelfr_lbl 00122 `"122"', add
label define pr05a_incwelfr_lbl 00132 `"132"', add
label define pr05a_incwelfr_lbl 00153 `"153"', add
label define pr05a_incwelfr_lbl 00163 `"163"', add
label define pr05a_incwelfr_lbl 00173 `"173"', add
label define pr05a_incwelfr_lbl 00194 `"194"', add
label define pr05a_incwelfr_lbl 00204 `"204"', add
label define pr05a_incwelfr_lbl 00214 `"214"', add
label define pr05a_incwelfr_lbl 00234 `"234"', add
label define pr05a_incwelfr_lbl 00244 `"244"', add
label define pr05a_incwelfr_lbl 00255 `"255"', add
label define pr05a_incwelfr_lbl 00265 `"265"', add
label define pr05a_incwelfr_lbl 00275 `"275"', add
label define pr05a_incwelfr_lbl 00285 `"285"', add
label define pr05a_incwelfr_lbl 00295 `"295"', add
label define pr05a_incwelfr_lbl 00306 `"306"', add
label define pr05a_incwelfr_lbl 00326 `"326"', add
label define pr05a_incwelfr_lbl 00336 `"336"', add
label define pr05a_incwelfr_lbl 00346 `"346"', add
label define pr05a_incwelfr_lbl 00367 `"367"', add
label define pr05a_incwelfr_lbl 00387 `"387"', add
label define pr05a_incwelfr_lbl 00407 `"407"', add
label define pr05a_incwelfr_lbl 00418 `"418"', add
label define pr05a_incwelfr_lbl 00428 `"428"', add
label define pr05a_incwelfr_lbl 00469 `"469"', add
label define pr05a_incwelfr_lbl 00509 `"509"', add
label define pr05a_incwelfr_lbl 00520 `"520"', add
label define pr05a_incwelfr_lbl 00530 `"530"', add
label define pr05a_incwelfr_lbl 00560 `"560"', add
label define pr05a_incwelfr_lbl 00570 `"570"', add
label define pr05a_incwelfr_lbl 00611 `"611"', add
label define pr05a_incwelfr_lbl 00632 `"632"', add
label define pr05a_incwelfr_lbl 00652 `"652"', add
label define pr05a_incwelfr_lbl 00662 `"662"', add
label define pr05a_incwelfr_lbl 00672 `"672"', add
label define pr05a_incwelfr_lbl 00713 `"713"', add
label define pr05a_incwelfr_lbl 00723 `"723"', add
label define pr05a_incwelfr_lbl 00733 `"733"', add
label define pr05a_incwelfr_lbl 00754 `"754"', add
label define pr05a_incwelfr_lbl 00764 `"764"', add
label define pr05a_incwelfr_lbl 00774 `"774"', add
label define pr05a_incwelfr_lbl 00784 `"784"', add
label define pr05a_incwelfr_lbl 00795 `"795"', add
label define pr05a_incwelfr_lbl 00805 `"805"', add
label define pr05a_incwelfr_lbl 00815 `"815"', add
label define pr05a_incwelfr_lbl 00835 `"835"', add
label define pr05a_incwelfr_lbl 00845 `"845"', add
label define pr05a_incwelfr_lbl 00856 `"856"', add
label define pr05a_incwelfr_lbl 00866 `"866"', add
label define pr05a_incwelfr_lbl 00876 `"876"', add
label define pr05a_incwelfr_lbl 00886 `"886"', add
label define pr05a_incwelfr_lbl 00896 `"896"', add
label define pr05a_incwelfr_lbl 00907 `"907"', add
label define pr05a_incwelfr_lbl 00917 `"917"', add
label define pr05a_incwelfr_lbl 00927 `"927"', add
label define pr05a_incwelfr_lbl 00958 `"958"', add
label define pr05a_incwelfr_lbl 00968 `"968"', add
label define pr05a_incwelfr_lbl 00978 `"978"', add
label define pr05a_incwelfr_lbl 00988 `"988"', add
label define pr05a_incwelfr_lbl 00998 `"998"', add
label define pr05a_incwelfr_lbl 01019 `"1019"', add
label define pr05a_incwelfr_lbl 01121 `"1121"', add
label define pr05a_incwelfr_lbl 01222 `"1222"', add
label define pr05a_incwelfr_lbl 01324 `"1324"', add
label define pr05a_incwelfr_lbl 01426 `"1426"', add
label define pr05a_incwelfr_lbl 01528 `"1528"', add
label define pr05a_incwelfr_lbl 01630 `"1630"', add
label define pr05a_incwelfr_lbl 01732 `"1732"', add
label define pr05a_incwelfr_lbl 01834 `"1834"', add
label define pr05a_incwelfr_lbl 01935 `"1935"', add
label define pr05a_incwelfr_lbl 02037 `"2037"', add
label define pr05a_incwelfr_lbl 02139 `"2139"', add
label define pr05a_incwelfr_lbl 02241 `"2241"', add
label define pr05a_incwelfr_lbl 02343 `"2343"', add
label define pr05a_incwelfr_lbl 02445 `"2445"', add
label define pr05a_incwelfr_lbl 02547 `"2547"', add
label define pr05a_incwelfr_lbl 02649 `"2649"', add
label define pr05a_incwelfr_lbl 02750 `"2750"', add
label define pr05a_incwelfr_lbl 02852 `"2852"', add
label define pr05a_incwelfr_lbl 02954 `"2954"', add
label define pr05a_incwelfr_lbl 03056 `"3056"', add
label define pr05a_incwelfr_lbl 03158 `"3158"', add
label define pr05a_incwelfr_lbl 03260 `"3260"', add
label define pr05a_incwelfr_lbl 03362 `"3362"', add
label define pr05a_incwelfr_lbl 03463 `"3463"', add
label define pr05a_incwelfr_lbl 03565 `"3565"', add
label define pr05a_incwelfr_lbl 03667 `"3667"', add
label define pr05a_incwelfr_lbl 03769 `"3769"', add
label define pr05a_incwelfr_lbl 03871 `"3871"', add
label define pr05a_incwelfr_lbl 03973 `"3973"', add
label define pr05a_incwelfr_lbl 04075 `"4075"', add
label define pr05a_incwelfr_lbl 04278 `"4278"', add
label define pr05a_incwelfr_lbl 04380 `"4380"', add
label define pr05a_incwelfr_lbl 04482 `"4482"', add
label define pr05a_incwelfr_lbl 04584 `"4584"', add
label define pr05a_incwelfr_lbl 04686 `"4686"', add
label define pr05a_incwelfr_lbl 04788 `"4788"', add
label define pr05a_incwelfr_lbl 04890 `"4890"', add
label define pr05a_incwelfr_lbl 04991 `"4991"', add
label define pr05a_incwelfr_lbl 05195 `"5195"', add
label define pr05a_incwelfr_lbl 05297 `"5297"', add
label define pr05a_incwelfr_lbl 05501 `"5501"', add
label define pr05a_incwelfr_lbl 05603 `"5603"', add
label define pr05a_incwelfr_lbl 05908 `"5908"', add
label define pr05a_incwelfr_lbl 06112 `"6112"', add
label define pr05a_incwelfr_lbl 06214 `"6214"', add
label define pr05a_incwelfr_lbl 06316 `"6316"', add
label define pr05a_incwelfr_lbl 06418 `"6418"', add
label define pr05a_incwelfr_lbl 06723 `"6723"', add
label define pr05a_incwelfr_lbl 07334 `"7334"', add
label define pr05a_incwelfr_lbl 07538 `"7538"', add
label define pr05a_incwelfr_lbl 07640 `"7640"', add
label define pr05a_incwelfr_lbl 07844 `"7844"', add
label define pr05a_incwelfr_lbl 07946 `"7946"', add
label define pr05a_incwelfr_lbl 09779 `"9779"', add
label define pr05a_incwelfr_lbl 12224 `"12224"', add
label define pr05a_incwelfr_lbl 15382 `"15382"', add
label define pr05a_incwelfr_lbl 18743 `"18743"', add
label define pr05a_incwelfr_lbl 99999 `"NIU (not in universe)"', add
label values pr05a_incwelfr pr05a_incwelfr_lbl

label define pr05a_incinvst_lbl -00611 `"-611"'
label define pr05a_incinvst_lbl -00764 `"-764"', add
label define pr05a_incinvst_lbl -01019 `"-1019"', add
label define pr05a_incinvst_lbl -01222 `"-1222"', add
label define pr05a_incinvst_lbl -02038 `"-2038"', add
label define pr05a_incinvst_lbl -03056 `"-3056"', add
label define pr05a_incinvst_lbl -04075 `"-4075"', add
label define pr05a_incinvst_lbl -04564 `"-4564"', add
label define pr05a_incinvst_lbl -05093 `"-5093"', add
label define pr05a_incinvst_lbl -10186 `"-10186"', add
label define pr05a_incinvst_lbl 000000 `"0"', add
label define pr05a_incinvst_lbl 000004 `"4"', add
label define pr05a_incinvst_lbl 000010 `"10"', add
label define pr05a_incinvst_lbl 000020 `"20"', add
label define pr05a_incinvst_lbl 000031 `"31"', add
label define pr05a_incinvst_lbl 000041 `"41"', add
label define pr05a_incinvst_lbl 000051 `"51"', add
label define pr05a_incinvst_lbl 000061 `"61"', add
label define pr05a_incinvst_lbl 000102 `"102"', add
label define pr05a_incinvst_lbl 000122 `"122"', add
label define pr05a_incinvst_lbl 000132 `"132"', add
label define pr05a_incinvst_lbl 000143 `"143"', add
label define pr05a_incinvst_lbl 000153 `"153"', add
label define pr05a_incinvst_lbl 000173 `"173"', add
label define pr05a_incinvst_lbl 000204 `"204"', add
label define pr05a_incinvst_lbl 000224 `"224"', add
label define pr05a_incinvst_lbl 000244 `"244"', add
label define pr05a_incinvst_lbl 000255 `"255"', add
label define pr05a_incinvst_lbl 000265 `"265"', add
label define pr05a_incinvst_lbl 000285 `"285"', add
label define pr05a_incinvst_lbl 000306 `"306"', add
label define pr05a_incinvst_lbl 000326 `"326"', add
label define pr05a_incinvst_lbl 000346 `"346"', add
label define pr05a_incinvst_lbl 000357 `"357"', add
label define pr05a_incinvst_lbl 000367 `"367"', add
label define pr05a_incinvst_lbl 000397 `"397"', add
label define pr05a_incinvst_lbl 000407 `"407"', add
label define pr05a_incinvst_lbl 000438 `"438"', add
label define pr05a_incinvst_lbl 000458 `"458"', add
label define pr05a_incinvst_lbl 000489 `"489"', add
label define pr05a_incinvst_lbl 000509 `"509"', add
label define pr05a_incinvst_lbl 000520 `"520"', add
label define pr05a_incinvst_lbl 000550 `"550"', add
label define pr05a_incinvst_lbl 000611 `"611"', add
label define pr05a_incinvst_lbl 000642 `"642"', add
label define pr05a_incinvst_lbl 000652 `"652"', add
label define pr05a_incinvst_lbl 000713 `"713"', add
label define pr05a_incinvst_lbl 000733 `"733"', add
label define pr05a_incinvst_lbl 000754 `"754"', add
label define pr05a_incinvst_lbl 000764 `"764"', add
label define pr05a_incinvst_lbl 000805 `"805"', add
label define pr05a_incinvst_lbl 000815 `"815"', add
label define pr05a_incinvst_lbl 000866 `"866"', add
label define pr05a_incinvst_lbl 000876 `"876"', add
label define pr05a_incinvst_lbl 000917 `"917"', add
label define pr05a_incinvst_lbl 001019 `"1019"', add
label define pr05a_incinvst_lbl 001121 `"1121"', add
label define pr05a_incinvst_lbl 001222 `"1222"', add
label define pr05a_incinvst_lbl 001324 `"1324"', add
label define pr05a_incinvst_lbl 001426 `"1426"', add
label define pr05a_incinvst_lbl 001528 `"1528"', add
label define pr05a_incinvst_lbl 001630 `"1630"', add
label define pr05a_incinvst_lbl 001732 `"1732"', add
label define pr05a_incinvst_lbl 001834 `"1834"', add
label define pr05a_incinvst_lbl 001935 `"1935"', add
label define pr05a_incinvst_lbl 002037 `"2037"', add
label define pr05a_incinvst_lbl 002139 `"2139"', add
label define pr05a_incinvst_lbl 002241 `"2241"', add
label define pr05a_incinvst_lbl 002343 `"2343"', add
label define pr05a_incinvst_lbl 002445 `"2445"', add
label define pr05a_incinvst_lbl 002547 `"2547"', add
label define pr05a_incinvst_lbl 002649 `"2649"', add
label define pr05a_incinvst_lbl 002750 `"2750"', add
label define pr05a_incinvst_lbl 002852 `"2852"', add
label define pr05a_incinvst_lbl 002954 `"2954"', add
label define pr05a_incinvst_lbl 003056 `"3056"', add
label define pr05a_incinvst_lbl 003158 `"3158"', add
label define pr05a_incinvst_lbl 003260 `"3260"', add
label define pr05a_incinvst_lbl 003362 `"3362"', add
label define pr05a_incinvst_lbl 003565 `"3565"', add
label define pr05a_incinvst_lbl 003667 `"3667"', add
label define pr05a_incinvst_lbl 003871 `"3871"', add
label define pr05a_incinvst_lbl 003973 `"3973"', add
label define pr05a_incinvst_lbl 004075 `"4075"', add
label define pr05a_incinvst_lbl 004177 `"4177"', add
label define pr05a_incinvst_lbl 004278 `"4278"', add
label define pr05a_incinvst_lbl 004380 `"4380"', add
label define pr05a_incinvst_lbl 004482 `"4482"', add
label define pr05a_incinvst_lbl 004584 `"4584"', add
label define pr05a_incinvst_lbl 004686 `"4686"', add
label define pr05a_incinvst_lbl 004788 `"4788"', add
label define pr05a_incinvst_lbl 004890 `"4890"', add
label define pr05a_incinvst_lbl 005093 `"5093"', add
label define pr05a_incinvst_lbl 005297 `"5297"', add
label define pr05a_incinvst_lbl 005399 `"5399"', add
label define pr05a_incinvst_lbl 005501 `"5501"', add
label define pr05a_incinvst_lbl 005603 `"5603"', add
label define pr05a_incinvst_lbl 005705 `"5705"', add
label define pr05a_incinvst_lbl 005806 `"5806"', add
label define pr05a_incinvst_lbl 005908 `"5908"', add
label define pr05a_incinvst_lbl 006010 `"6010"', add
label define pr05a_incinvst_lbl 006112 `"6112"', add
label define pr05a_incinvst_lbl 006214 `"6214"', add
label define pr05a_incinvst_lbl 006316 `"6316"', add
label define pr05a_incinvst_lbl 006621 `"6621"', add
label define pr05a_incinvst_lbl 006723 `"6723"', add
label define pr05a_incinvst_lbl 006825 `"6825"', add
label define pr05a_incinvst_lbl 007029 `"7029"', add
label define pr05a_incinvst_lbl 007131 `"7131"', add
label define pr05a_incinvst_lbl 007233 `"7233"', add
label define pr05a_incinvst_lbl 007334 `"7334"', add
label define pr05a_incinvst_lbl 007742 `"7742"', add
label define pr05a_incinvst_lbl 007946 `"7946"', add
label define pr05a_incinvst_lbl 008047 `"8047"', add
label define pr05a_incinvst_lbl 008149 `"8149"', add
label define pr05a_incinvst_lbl 008557 `"8557"', add
label define pr05a_incinvst_lbl 008761 `"8761"', add
label define pr05a_incinvst_lbl 008964 `"8964"', add
label define pr05a_incinvst_lbl 009168 `"9168"', add
label define pr05a_incinvst_lbl 009270 `"9270"', add
label define pr05a_incinvst_lbl 009372 `"9372"', add
label define pr05a_incinvst_lbl 009474 `"9474"', add
label define pr05a_incinvst_lbl 009779 `"9779"', add
label define pr05a_incinvst_lbl 010085 `"10085"', add
label define pr05a_incinvst_lbl 010187 `"10187"', add
label define pr05a_incinvst_lbl 010289 `"10289"', add
label define pr05a_incinvst_lbl 010390 `"10390"', add
label define pr05a_incinvst_lbl 010696 `"10696"', add
label define pr05a_incinvst_lbl 011002 `"11002"', add
label define pr05a_incinvst_lbl 011205 `"11205"', add
label define pr05a_incinvst_lbl 011715 `"11715"', add
label define pr05a_incinvst_lbl 012020 `"12020"', add
label define pr05a_incinvst_lbl 012224 `"12224"', add
label define pr05a_incinvst_lbl 012835 `"12835"', add
label define pr05a_incinvst_lbl 013243 `"13243"', add
label define pr05a_incinvst_lbl 013548 `"13548"', add
label define pr05a_incinvst_lbl 014058 `"14058"', add
label define pr05a_incinvst_lbl 014669 `"14669"', add
label define pr05a_incinvst_lbl 015280 `"15280"', add
label define pr05a_incinvst_lbl 015687 `"15687"', add
label define pr05a_incinvst_lbl 016299 `"16299"', add
label define pr05a_incinvst_lbl 016401 `"16401"', add
label define pr05a_incinvst_lbl 016910 `"16910"', add
label define pr05a_incinvst_lbl 017114 `"17114"', add
label define pr05a_incinvst_lbl 017317 `"17317"', add
label define pr05a_incinvst_lbl 017725 `"17725"', add
label define pr05a_incinvst_lbl 018234 `"18234"', add
label define pr05a_incinvst_lbl 018336 `"18336"', add
label define pr05a_incinvst_lbl 019049 `"19049"', add
label define pr05a_incinvst_lbl 019151 `"19151"', add
label define pr05a_incinvst_lbl 019558 `"19558"', add
label define pr05a_incinvst_lbl 020170 `"20170"', add
label define pr05a_incinvst_lbl 020373 `"20373"', add
label define pr05a_incinvst_lbl 020883 `"20883"', add
label define pr05a_incinvst_lbl 020985 `"20985"', add
label define pr05a_incinvst_lbl 021494 `"21494"', add
label define pr05a_incinvst_lbl 021698 `"21698"', add
label define pr05a_incinvst_lbl 022309 `"22309"', add
label define pr05a_incinvst_lbl 022411 `"22411"', add
label define pr05a_incinvst_lbl 022818 `"22818"', add
label define pr05a_incinvst_lbl 022920 `"22920"', add
label define pr05a_incinvst_lbl 023429 `"23429"', add
label define pr05a_incinvst_lbl 024448 `"24448"', add
label define pr05a_incinvst_lbl 024957 `"24957"', add
label define pr05a_incinvst_lbl 025467 `"25467"', add
label define pr05a_incinvst_lbl 025670 `"25670"', add
label define pr05a_incinvst_lbl 027504 `"27504"', add
label define pr05a_incinvst_lbl 028523 `"28523"', add
label define pr05a_incinvst_lbl 030560 `"30560"', add
label define pr05a_incinvst_lbl 033616 `"33616"', add
label define pr05a_incinvst_lbl 034227 `"34227"', add
label define pr05a_incinvst_lbl 035653 `"35653"', add
label define pr05a_incinvst_lbl 036672 `"36672"', add
label define pr05a_incinvst_lbl 037080 `"37080"', add
label define pr05a_incinvst_lbl 038506 `"38506"', add
label define pr05a_incinvst_lbl 038709 `"38709"', add
label define pr05a_incinvst_lbl 040747 `"40747"', add
label define pr05a_incinvst_lbl 042784 `"42784"', add
label define pr05a_incinvst_lbl 048896 `"48896"', add
label define pr05a_incinvst_lbl 049507 `"49507"', add
label define pr05a_incinvst_lbl 049915 `"49915"', add
label define pr05a_incinvst_lbl 050933 `"50933"', add
label define pr05a_incinvst_lbl 061120 `"61120"', add
label define pr05a_incinvst_lbl 067232 `"67232"', add
label define pr05a_incinvst_lbl 070288 `"70288"', add
label define pr05a_incinvst_lbl 085568 `"85568"', add
label define pr05a_incinvst_lbl 097792 `"97792"', add
label define pr05a_incinvst_lbl 099830 `"99830"', add
label define pr05a_incinvst_lbl 301526 `"301526"', add
label define pr05a_incinvst_lbl 999999 `"NIU (not in universe)"', add
label values pr05a_incinvst pr05a_incinvst_lbl

label define pr05a_incother_lbl 99999 `"NIU (not in universe)"'
label values pr05a_incother pr05a_incother_lbl

label define pr05a_migrate1_lbl 00 `"NIU (not in universe)"'
label define pr05a_migrate1_lbl 10 `"Same house"', add
label define pr05a_migrate1_lbl 20 `"Different house: place not reported"', add
label define pr05a_migrate1_lbl 60 `"Abroad one year ago"', add
label values pr05a_migrate1 pr05a_migrate1_lbl

label define pr05a_migplac1_lbl 000 `"NIU (not in universe)"'
label define pr05a_migplac1_lbl 001 `"Alabama"', add
label define pr05a_migplac1_lbl 006 `"California"', add
label define pr05a_migplac1_lbl 008 `"Colorado"', add
label define pr05a_migplac1_lbl 009 `"Connecticut"', add
label define pr05a_migplac1_lbl 010 `"Delaware"', add
label define pr05a_migplac1_lbl 012 `"Florida"', add
label define pr05a_migplac1_lbl 013 `"Georgia"', add
label define pr05a_migplac1_lbl 015 `"Hawaii"', add
label define pr05a_migplac1_lbl 016 `"Idaho"', add
label define pr05a_migplac1_lbl 017 `"Illinois"', add
label define pr05a_migplac1_lbl 018 `"Indiana"', add
label define pr05a_migplac1_lbl 022 `"Louisiana"', add
label define pr05a_migplac1_lbl 024 `"Maryland"', add
label define pr05a_migplac1_lbl 025 `"Massachusetts"', add
label define pr05a_migplac1_lbl 026 `"Michigan"', add
label define pr05a_migplac1_lbl 027 `"Minnesota"', add
label define pr05a_migplac1_lbl 032 `"Nevada"', add
label define pr05a_migplac1_lbl 034 `"New Jersey"', add
label define pr05a_migplac1_lbl 035 `"New Mexico"', add
label define pr05a_migplac1_lbl 036 `"New York"', add
label define pr05a_migplac1_lbl 039 `"Ohio"', add
label define pr05a_migplac1_lbl 042 `"Pennsylvania"', add
label define pr05a_migplac1_lbl 044 `"Rhode Island"', add
label define pr05a_migplac1_lbl 045 `"South Carolina"', add
label define pr05a_migplac1_lbl 048 `"Texas"', add
label define pr05a_migplac1_lbl 051 `"Virginia"', add
label define pr05a_migplac1_lbl 055 `"Wisconsin"', add
label define pr05a_migplac1_lbl 110 `"Puerto Rico"', add
label define pr05a_migplac1_lbl 200 `"Mexico"', add
label define pr05a_migplac1_lbl 261 `"Dominican Republic"', add
label define pr05a_migplac1_lbl 290 `"Other Caribbean and North America"', add
label define pr05a_migplac1_lbl 315 `"Brazil"', add
label define pr05a_migplac1_lbl 350 `"Peru"', add
label define pr05a_migplac1_lbl 390 `"South America, n.e.c."', add
label define pr05a_migplac1_lbl 410 `"England"', add
label define pr05a_migplac1_lbl 419 `"Other Northern Europe"', add
label define pr05a_migplac1_lbl 429 `"Other Western Europe"', add
label define pr05a_migplac1_lbl 453 `"Germany"', add
label define pr05a_migplac1_lbl 499 `"Europe, n.s."', add
label define pr05a_migplac1_lbl 551 `"Other Western Asia"', add
label values pr05a_migplac1 pr05a_migplac1_lbl

label define pr05a_migmet1_lbl 0000 `"NIU (not in universe)"'
label define pr05a_migmet1_lbl 0060 `"Aguadilla, PR"', add
label define pr05a_migmet1_lbl 0200 `"Albuquerque, NM"', add
label define pr05a_migmet1_lbl 0240 `"Allentown-Bethlehem-Easton, PA"', add
label define pr05a_migmet1_lbl 0440 `"Ann Arbor, MI"', add
label define pr05a_migmet1_lbl 0470 `"Arecibo, PR"', add
label define pr05a_migmet1_lbl 0520 `"Atlanta, GA"', add
label define pr05a_migmet1_lbl 0560 `"Atlantic City, NJ"', add
label define pr05a_migmet1_lbl 0640 `"Austin, TX"', add
label define pr05a_migmet1_lbl 1000 `"Birmingham, AL"', add
label define pr05a_migmet1_lbl 1080 `"Boise City, ID"', add
label define pr05a_migmet1_lbl 1120 `"Boston, MA"', add
label define pr05a_migmet1_lbl 1121 `"Lawrence-Haverhill, MA/NH"', add
label define pr05a_migmet1_lbl 1160 `"Bridgeport, CT"', add
label define pr05a_migmet1_lbl 1315 `"Caguas, PR"', add
label define pr05a_migmet1_lbl 1600 `"Chicago, IL"', add
label define pr05a_migmet1_lbl 1602 `"Gary-Hammond-East Chicago, IN"', add
label define pr05a_migmet1_lbl 1680 `"Hamilton-Middleton, OH"', add
label define pr05a_migmet1_lbl 1720 `"Colorado Springs, CO"', add
label define pr05a_migmet1_lbl 1920 `"Dallas, TX"', add
label define pr05a_migmet1_lbl 2310 `"El Paso, TX"', add
label define pr05a_migmet1_lbl 3160 `"Greenville, SC"', add
label define pr05a_migmet1_lbl 3240 `"Harrisburg, PA"', add
label define pr05a_migmet1_lbl 3320 `"Honolulu, HI"', add
label define pr05a_migmet1_lbl 3360 `"Houston, TX"', add
label define pr05a_migmet1_lbl 3610 `"Jamestown-Dunkirk, NY"', add
label define pr05a_migmet1_lbl 3810 `"Killeen-Temple, TX"', add
label define pr05a_migmet1_lbl 4120 `"Las Vegas, NV"', add
label define pr05a_migmet1_lbl 4480 `"Los Angeles, CA"', add
label define pr05a_migmet1_lbl 4482 `"Orange County, CA"', add
label define pr05a_migmet1_lbl 5080 `"Milwaukee, WI"', add
label define pr05a_migmet1_lbl 5120 `"Minneapolis-St. Paul, MN"', add
label define pr05a_migmet1_lbl 5400 `"Bristol, MA"', add
label define pr05a_migmet1_lbl 5560 `"New Orleans, LA"', add
label define pr05a_migmet1_lbl 5600 `"New York-Northeastern NJ"', add
label define pr05a_migmet1_lbl 5602 `"Bergen-Passaic, NJ"', add
label define pr05a_migmet1_lbl 5603 `"Jersey City, NJ"', add
label define pr05a_migmet1_lbl 5604 `"Middlesex-Somerset-Hunterdon, NJ"', add
label define pr05a_migmet1_lbl 5605 `"Newark, NJ"', add
label define pr05a_migmet1_lbl 5660 `"Newburgh-Middletown, NY"', add
label define pr05a_migmet1_lbl 5960 `"Orlando, FL"', add
label define pr05a_migmet1_lbl 6160 `"Philadelphia, PA/NJ"', add
label define pr05a_migmet1_lbl 6360 `"Ponce, PR"', add
label define pr05a_migmet1_lbl 6480 `"Providence, RI"', add
label define pr05a_migmet1_lbl 6680 `"Reading, PA"', add
label define pr05a_migmet1_lbl 6780 `"Riverside, CA"', add
label define pr05a_migmet1_lbl 6840 `"Rochester, NY"', add
label define pr05a_migmet1_lbl 7240 `"San Antonio, TX"', add
label define pr05a_migmet1_lbl 7320 `"San Diego, CA"', add
label define pr05a_migmet1_lbl 7360 `"San Francisco-Oakland, CA"', add
label define pr05a_migmet1_lbl 7440 `"San Juan-Bayamon, PR"', add
label define pr05a_migmet1_lbl 7510 `"Sarasota, FL"', add
label define pr05a_migmet1_lbl 8000 `"Springfield-Holyoke, MA"', add
label define pr05a_migmet1_lbl 8280 `"Tampa-St. Petersburg, FL"', add
label define pr05a_migmet1_lbl 8760 `"Vineland-Millville-Bridgeton, NJ"', add
label define pr05a_migmet1_lbl 8840 `"Washington, DC/MD/VA"', add
label define pr05a_migmet1_lbl 8960 `"West Palm Beach-Boca Raton-Delray Beach, FL"', add
label define pr05a_migmet1_lbl 9160 `"Wilmington, DE"', add
label define pr05a_migmet1_lbl 9240 `"Worcester, MA"', add
label define pr05a_migmet1_lbl 9280 `"York, PA"', add
label define pr05a_migmet1_lbl 9999 `"Unknown"', add
label values pr05a_migmet1 pr05a_migmet1_lbl

label define pr05a_migtype1_lbl 0 `"NIU (not in universe)"'
label define pr05a_migtype1_lbl 1 `"Not in a metro area"', add
label define pr05a_migtype1_lbl 2 `"In a metro area, central city status unknown"', add
label define pr05a_migtype1_lbl 3 `"Central city"', add
label define pr05a_migtype1_lbl 4 `"Not central city"', add
label define pr05a_migtype1_lbl 5 `"Abroad"', add
label define pr05a_migtype1_lbl 9 `"Unknown"', add
label values pr05a_migtype1 pr05a_migtype1_lbl

label define pr05a_movedin_lbl 0 `"NIU (not in universe)"'
label define pr05a_movedin_lbl 1 `"12 months or less"', add
label define pr05a_movedin_lbl 2 `"13 to 23 months"', add
label define pr05a_movedin_lbl 3 `"2 to 4 years"', add
label define pr05a_movedin_lbl 4 `"5 to 9 years"', add
label define pr05a_movedin_lbl 5 `"10 to 19 years"', add
label define pr05a_movedin_lbl 6 `"20 to 29 years"', add
label define pr05a_movedin_lbl 7 `"30+ years"', add
label values pr05a_movedin pr05a_movedin_lbl

label define pr05a_pwtype_lbl 0 `"NIU (not in universe)"'
label define pr05a_pwtype_lbl 1 `"In central city"', add
label define pr05a_pwtype_lbl 4 `"Not central city"', add
label define pr05a_pwtype_lbl 5 `"Central city status unknown"', add
label define pr05a_pwtype_lbl 7 `"Outside metropolitan area"', add
label define pr05a_pwtype_lbl 9 `"Unknown"', add
label values pr05a_pwtype pr05a_pwtype_lbl

label define pr05a_disabwrk_lbl 0 `"NIU (not in universe)"'
label define pr05a_disabwrk_lbl 1 `"No disability that affects work"', add
label define pr05a_disabwrk_lbl 4 `"Disability causes difficulty working"', add
label values pr05a_disabwrk pr05a_disabwrk_lbl

label define pr05a_disabmob_lbl 0 `"NIU (not in universe)"'
label define pr05a_disabmob_lbl 1 `"No mobility limitation"', add
label define pr05a_disabmob_lbl 2 `"Yes, mobility is limited"', add
label values pr05a_disabmob pr05a_disabmob_lbl

label define pr05a_perscare_lbl 0 `"NIU (not in universe)"'
label define pr05a_perscare_lbl 1 `"No personal care limitation"', add
label define pr05a_perscare_lbl 2 `"Yes, personal care limitation"', add
label values pr05a_perscare pr05a_perscare_lbl

label define pr05a_vetstat_lbl 0 `"NIU (not in universe)"'
label define pr05a_vetstat_lbl 1 `"No Service"', add
label define pr05a_vetstat_lbl 2 `"Yes"', add
label values pr05a_vetstat pr05a_vetstat_lbl

label define pr05a_vetstat_lbl 0 `"NIU (not in universe)"'
label define pr05a_vetstat_lbl 1 `"No Service"', add
label define pr05a_vetstat_lbl 2 `"Yes"', add
label values pr05a_vetstat pr05a_vetstat_lbl

label define pr05a_vet80x90_lbl 0 `"NIU (not in universe)"'
label define pr05a_vet80x90_lbl 1 `"No"', add
label define pr05a_vet80x90_lbl 2 `"Yes, served this period"', add
label values pr05a_vet80x90 pr05a_vet80x90_lbl

label define pr05a_vet75x80_lbl 0 `"NIU (not in universe)"'
label define pr05a_vet75x80_lbl 1 `"No"', add
label define pr05a_vet75x80_lbl 2 `"Yes, served this period"', add
label values pr05a_vet75x80 pr05a_vet75x80_lbl

label define pr05a_vetvietn_lbl 0 `"NIU (not in universe)"'
label define pr05a_vetvietn_lbl 1 `"No"', add
label define pr05a_vetvietn_lbl 2 `"Yes, Vietnam-era veteran"', add
label values pr05a_vetvietn pr05a_vetvietn_lbl

label define pr05a_vetyrs_lbl 0 `"NIU (not in universe)"'
label define pr05a_vetyrs_lbl 1 `"2 years of service or less"', add
label define pr05a_vetyrs_lbl 2 `"More than 2 years of service"', add
label values pr05a_vetyrs pr05a_vetyrs_lbl

label define pr05a_vet55x64_lbl 0 `"NIU (not in universe)"'
label define pr05a_vet55x64_lbl 1 `"No"', add
label define pr05a_vet55x64_lbl 2 `"Yes, served this period"', add
label values pr05a_vet55x64 pr05a_vet55x64_lbl

label define pr05a_vetkorea_lbl 0 `"NIU (not in universe)"'
label define pr05a_vetkorea_lbl 1 `"No"', add
label define pr05a_vetkorea_lbl 2 `"Yes, served this period"', add
label values pr05a_vetkorea pr05a_vetkorea_lbl

label define pr05a_vetwwii_lbl 0 `"NIU (not in universe)"'
label define pr05a_vetwwii_lbl 1 `"No"', add
label define pr05a_vetwwii_lbl 2 `"Yes, served this period"', add
label values pr05a_vetwwii pr05a_vetwwii_lbl

label define pr05a_vetother_lbl 0 `"NIU (not in universe)"'
label define pr05a_vetother_lbl 1 `"No"', add
label define pr05a_vetother_lbl 2 `"Yes, served this period(s)"', add
label values pr05a_vetother pr05a_vetother_lbl

label define pr05a_tranwork_lbl 00 `"NIU (not in universe)"'
label define pr05a_tranwork_lbl 10 `"Auto, truck, or van"', add
label define pr05a_tranwork_lbl 20 `"Motorcycle"', add
label define pr05a_tranwork_lbl 31 `"Bus or trolley bus"', add
label define pr05a_tranwork_lbl 32 `"Streetcar or trolley car"', add
label define pr05a_tranwork_lbl 33 `"Subway or elevated"', add
label define pr05a_tranwork_lbl 34 `"Railroad"', add
label define pr05a_tranwork_lbl 35 `"Taxicab"', add
label define pr05a_tranwork_lbl 36 `"Ferryboat (launch in Puerto Rico)"', add
label define pr05a_tranwork_lbl 40 `"Bicycle"', add
label define pr05a_tranwork_lbl 50 `"Walked only"', add
label define pr05a_tranwork_lbl 60 `"Other"', add
label define pr05a_tranwork_lbl 70 `"Worked at home"', add
label values pr05a_tranwork pr05a_tranwork_lbl

label define pr05a_carpool_lbl 0 `"NIU (not in universe)"'
label define pr05a_carpool_lbl 1 `"Drives alone"', add
label define pr05a_carpool_lbl 2 `"Carpools"', add
label values pr05a_carpool pr05a_carpool_lbl

label define pr05a_riders_lbl 0 `"NIU (not in universe)"'
label define pr05a_riders_lbl 1 `"Drives alone"', add
label define pr05a_riders_lbl 2 `"2 people"', add
label define pr05a_riders_lbl 3 `"3"', add
label define pr05a_riders_lbl 4 `"4"', add
label define pr05a_riders_lbl 5 `"5"', add
label define pr05a_riders_lbl 6 `"6"', add
label define pr05a_riders_lbl 8 `"7-9"', add
label define pr05a_riders_lbl 9 `"10 or more"', add
label values pr05a_riders pr05a_riders_lbl

label define pr05a_trantime_lbl 00 `"NIU (not in universe)"'
label define pr05a_trantime_lbl 01 `"1"', add
label define pr05a_trantime_lbl 02 `"2"', add
label define pr05a_trantime_lbl 03 `"3"', add
label define pr05a_trantime_lbl 04 `"4"', add
label define pr05a_trantime_lbl 05 `"5"', add
label define pr05a_trantime_lbl 06 `"6"', add
label define pr05a_trantime_lbl 07 `"7"', add
label define pr05a_trantime_lbl 08 `"8"', add
label define pr05a_trantime_lbl 09 `"9"', add
label define pr05a_trantime_lbl 10 `"10"', add
label define pr05a_trantime_lbl 11 `"11"', add
label define pr05a_trantime_lbl 12 `"12"', add
label define pr05a_trantime_lbl 13 `"13"', add
label define pr05a_trantime_lbl 14 `"14"', add
label define pr05a_trantime_lbl 15 `"15"', add
label define pr05a_trantime_lbl 16 `"16"', add
label define pr05a_trantime_lbl 17 `"17"', add
label define pr05a_trantime_lbl 18 `"18"', add
label define pr05a_trantime_lbl 19 `"19"', add
label define pr05a_trantime_lbl 20 `"20"', add
label define pr05a_trantime_lbl 22 `"22"', add
label define pr05a_trantime_lbl 23 `"23"', add
label define pr05a_trantime_lbl 24 `"24"', add
label define pr05a_trantime_lbl 25 `"25"', add
label define pr05a_trantime_lbl 27 `"27"', add
label define pr05a_trantime_lbl 28 `"28"', add
label define pr05a_trantime_lbl 29 `"29"', add
label define pr05a_trantime_lbl 30 `"30"', add
label define pr05a_trantime_lbl 32 `"32"', add
label define pr05a_trantime_lbl 33 `"33"', add
label define pr05a_trantime_lbl 35 `"35"', add
label define pr05a_trantime_lbl 38 `"38"', add
label define pr05a_trantime_lbl 40 `"40"', add
label define pr05a_trantime_lbl 43 `"43"', add
label define pr05a_trantime_lbl 45 `"45"', add
label define pr05a_trantime_lbl 47 `"47"', add
label define pr05a_trantime_lbl 50 `"50"', add
label define pr05a_trantime_lbl 52 `"52"', add
label define pr05a_trantime_lbl 55 `"55"', add
label define pr05a_trantime_lbl 60 `"60"', add
label define pr05a_trantime_lbl 65 `"65"', add
label define pr05a_trantime_lbl 68 `"68"', add
label define pr05a_trantime_lbl 70 `"70"', add
label define pr05a_trantime_lbl 75 `"75"', add
label define pr05a_trantime_lbl 80 `"80"', add
label define pr05a_trantime_lbl 85 `"85"', add
label define pr05a_trantime_lbl 90 `"90"', add
label define pr05a_trantime_lbl 95 `"95"', add
label values pr05a_trantime pr05a_trantime_lbl

label define pr05a_departs_lbl 0000 `"NIU (not in universe)"'
label define pr05a_departs_lbl 0015 `"15"', add
label define pr05a_departs_lbl 0045 `"45"', add
label define pr05a_departs_lbl 0115 `"115"', add
label define pr05a_departs_lbl 0145 `"145"', add
label define pr05a_departs_lbl 0215 `"215"', add
label define pr05a_departs_lbl 0245 `"245"', add
label define pr05a_departs_lbl 0305 `"305"', add
label define pr05a_departs_lbl 0315 `"315"', add
label define pr05a_departs_lbl 0325 `"325"', add
label define pr05a_departs_lbl 0335 `"335"', add
label define pr05a_departs_lbl 0345 `"345"', add
label define pr05a_departs_lbl 0355 `"355"', add
label define pr05a_departs_lbl 0405 `"405"', add
label define pr05a_departs_lbl 0415 `"415"', add
label define pr05a_departs_lbl 0425 `"425"', add
label define pr05a_departs_lbl 0435 `"435"', add
label define pr05a_departs_lbl 0445 `"445"', add
label define pr05a_departs_lbl 0455 `"455"', add
label define pr05a_departs_lbl 0502 `"502"', add
label define pr05a_departs_lbl 0507 `"507"', add
label define pr05a_departs_lbl 0512 `"512"', add
label define pr05a_departs_lbl 0517 `"517"', add
label define pr05a_departs_lbl 0522 `"522"', add
label define pr05a_departs_lbl 0527 `"527"', add
label define pr05a_departs_lbl 0532 `"532"', add
label define pr05a_departs_lbl 0537 `"537"', add
label define pr05a_departs_lbl 0542 `"542"', add
label define pr05a_departs_lbl 0547 `"547"', add
label define pr05a_departs_lbl 0552 `"552"', add
label define pr05a_departs_lbl 0557 `"557"', add
label define pr05a_departs_lbl 0602 `"602"', add
label define pr05a_departs_lbl 0607 `"607"', add
label define pr05a_departs_lbl 0612 `"612"', add
label define pr05a_departs_lbl 0617 `"617"', add
label define pr05a_departs_lbl 0622 `"622"', add
label define pr05a_departs_lbl 0627 `"627"', add
label define pr05a_departs_lbl 0632 `"632"', add
label define pr05a_departs_lbl 0637 `"637"', add
label define pr05a_departs_lbl 0642 `"642"', add
label define pr05a_departs_lbl 0647 `"647"', add
label define pr05a_departs_lbl 0652 `"652"', add
label define pr05a_departs_lbl 0657 `"657"', add
label define pr05a_departs_lbl 0702 `"702"', add
label define pr05a_departs_lbl 0707 `"707"', add
label define pr05a_departs_lbl 0712 `"712"', add
label define pr05a_departs_lbl 0717 `"717"', add
label define pr05a_departs_lbl 0722 `"722"', add
label define pr05a_departs_lbl 0727 `"727"', add
label define pr05a_departs_lbl 0732 `"732"', add
label define pr05a_departs_lbl 0737 `"737"', add
label define pr05a_departs_lbl 0742 `"742"', add
label define pr05a_departs_lbl 0747 `"747"', add
label define pr05a_departs_lbl 0752 `"752"', add
label define pr05a_departs_lbl 0757 `"757"', add
label define pr05a_departs_lbl 0802 `"802"', add
label define pr05a_departs_lbl 0807 `"807"', add
label define pr05a_departs_lbl 0812 `"812"', add
label define pr05a_departs_lbl 0817 `"817"', add
label define pr05a_departs_lbl 0822 `"822"', add
label define pr05a_departs_lbl 0827 `"827"', add
label define pr05a_departs_lbl 0832 `"832"', add
label define pr05a_departs_lbl 0837 `"837"', add
label define pr05a_departs_lbl 0842 `"842"', add
label define pr05a_departs_lbl 0847 `"847"', add
label define pr05a_departs_lbl 0852 `"852"', add
label define pr05a_departs_lbl 0857 `"857"', add
label define pr05a_departs_lbl 0902 `"902"', add
label define pr05a_departs_lbl 0907 `"907"', add
label define pr05a_departs_lbl 0912 `"912"', add
label define pr05a_departs_lbl 0917 `"917"', add
label define pr05a_departs_lbl 0922 `"922"', add
label define pr05a_departs_lbl 0927 `"927"', add
label define pr05a_departs_lbl 0932 `"932"', add
label define pr05a_departs_lbl 0937 `"937"', add
label define pr05a_departs_lbl 0942 `"942"', add
label define pr05a_departs_lbl 0947 `"947"', add
label define pr05a_departs_lbl 0952 `"952"', add
label define pr05a_departs_lbl 0957 `"957"', add
label define pr05a_departs_lbl 1002 `"1002"', add
label define pr05a_departs_lbl 1005 `"1005"', add
label define pr05a_departs_lbl 1007 `"1007"', add
label define pr05a_departs_lbl 1012 `"1012"', add
label define pr05a_departs_lbl 1015 `"1015"', add
label define pr05a_departs_lbl 1017 `"1017"', add
label define pr05a_departs_lbl 1022 `"1022"', add
label define pr05a_departs_lbl 1025 `"1025"', add
label define pr05a_departs_lbl 1027 `"1027"', add
label define pr05a_departs_lbl 1032 `"1032"', add
label define pr05a_departs_lbl 1035 `"1035"', add
label define pr05a_departs_lbl 1037 `"1037"', add
label define pr05a_departs_lbl 1042 `"1042"', add
label define pr05a_departs_lbl 1045 `"1045"', add
label define pr05a_departs_lbl 1047 `"1047"', add
label define pr05a_departs_lbl 1052 `"1052"', add
label define pr05a_departs_lbl 1055 `"1055"', add
label define pr05a_departs_lbl 1057 `"1057"', add
label define pr05a_departs_lbl 1105 `"1105"', add
label define pr05a_departs_lbl 1115 `"1115"', add
label define pr05a_departs_lbl 1125 `"1125"', add
label define pr05a_departs_lbl 1135 `"1135"', add
label define pr05a_departs_lbl 1145 `"1145"', add
label define pr05a_departs_lbl 1155 `"1155"', add
label define pr05a_departs_lbl 1205 `"1205"', add
label define pr05a_departs_lbl 1215 `"1215"', add
label define pr05a_departs_lbl 1225 `"1225"', add
label define pr05a_departs_lbl 1235 `"1235"', add
label define pr05a_departs_lbl 1245 `"1245"', add
label define pr05a_departs_lbl 1255 `"1255"', add
label define pr05a_departs_lbl 1305 `"1305"', add
label define pr05a_departs_lbl 1315 `"1315"', add
label define pr05a_departs_lbl 1325 `"1325"', add
label define pr05a_departs_lbl 1335 `"1335"', add
label define pr05a_departs_lbl 1345 `"1345"', add
label define pr05a_departs_lbl 1355 `"1355"', add
label define pr05a_departs_lbl 1405 `"1405"', add
label define pr05a_departs_lbl 1415 `"1415"', add
label define pr05a_departs_lbl 1425 `"1425"', add
label define pr05a_departs_lbl 1435 `"1435"', add
label define pr05a_departs_lbl 1445 `"1445"', add
label define pr05a_departs_lbl 1455 `"1455"', add
label define pr05a_departs_lbl 1505 `"1505"', add
label define pr05a_departs_lbl 1515 `"1515"', add
label define pr05a_departs_lbl 1525 `"1525"', add
label define pr05a_departs_lbl 1535 `"1535"', add
label define pr05a_departs_lbl 1545 `"1545"', add
label define pr05a_departs_lbl 1555 `"1555"', add
label define pr05a_departs_lbl 1605 `"1605"', add
label define pr05a_departs_lbl 1615 `"1615"', add
label define pr05a_departs_lbl 1625 `"1625"', add
label define pr05a_departs_lbl 1635 `"1635"', add
label define pr05a_departs_lbl 1645 `"1645"', add
label define pr05a_departs_lbl 1655 `"1655"', add
label define pr05a_departs_lbl 1705 `"1705"', add
label define pr05a_departs_lbl 1715 `"1715"', add
label define pr05a_departs_lbl 1725 `"1725"', add
label define pr05a_departs_lbl 1735 `"1735"', add
label define pr05a_departs_lbl 1745 `"1745"', add
label define pr05a_departs_lbl 1755 `"1755"', add
label define pr05a_departs_lbl 1805 `"1805"', add
label define pr05a_departs_lbl 1815 `"1815"', add
label define pr05a_departs_lbl 1825 `"1825"', add
label define pr05a_departs_lbl 1835 `"1835"', add
label define pr05a_departs_lbl 1845 `"1845"', add
label define pr05a_departs_lbl 1855 `"1855"', add
label define pr05a_departs_lbl 1905 `"1905"', add
label define pr05a_departs_lbl 1915 `"1915"', add
label define pr05a_departs_lbl 1920 `"1920"', add
label define pr05a_departs_lbl 1925 `"1925"', add
label define pr05a_departs_lbl 1935 `"1935"', add
label define pr05a_departs_lbl 1945 `"1945"', add
label define pr05a_departs_lbl 1955 `"1955"', add
label define pr05a_departs_lbl 2005 `"2005"', add
label define pr05a_departs_lbl 2015 `"2015"', add
label define pr05a_departs_lbl 2020 `"2020"', add
label define pr05a_departs_lbl 2025 `"2025"', add
label define pr05a_departs_lbl 2035 `"2035"', add
label define pr05a_departs_lbl 2045 `"2045"', add
label define pr05a_departs_lbl 2050 `"2050"', add
label define pr05a_departs_lbl 2055 `"2055"', add
label define pr05a_departs_lbl 2105 `"2105"', add
label define pr05a_departs_lbl 2115 `"2115"', add
label define pr05a_departs_lbl 2125 `"2125"', add
label define pr05a_departs_lbl 2135 `"2135"', add
label define pr05a_departs_lbl 2145 `"2145"', add
label define pr05a_departs_lbl 2155 `"2155"', add
label define pr05a_departs_lbl 2205 `"2205"', add
label define pr05a_departs_lbl 2215 `"2215"', add
label define pr05a_departs_lbl 2225 `"2225"', add
label define pr05a_departs_lbl 2235 `"2235"', add
label define pr05a_departs_lbl 2245 `"2245"', add
label define pr05a_departs_lbl 2255 `"2255"', add
label define pr05a_departs_lbl 2305 `"2305"', add
label define pr05a_departs_lbl 2315 `"2315"', add
label define pr05a_departs_lbl 2325 `"2325"', add
label define pr05a_departs_lbl 2335 `"2335"', add
label define pr05a_departs_lbl 2345 `"2345"', add
label define pr05a_departs_lbl 2350 `"2350"', add
label define pr05a_departs_lbl 2355 `"2355"', add
label values pr05a_departs pr05a_departs_lbl

label define pr05a_birthqtr_lbl 1 `"January-February-March"'
label define pr05a_birthqtr_lbl 2 `"April-May-June"', add
label define pr05a_birthqtr_lbl 3 `"July-August-September"', add
label define pr05a_birthqtr_lbl 4 `"October-November-December"', add
label values pr05a_birthqtr pr05a_birthqtr_lbl

label define pr05a_qdeparts_lbl 0 `"Not allocated"'
label define pr05a_qdeparts_lbl 4 `"Allocated"', add
label values pr05a_qdeparts pr05a_qdeparts_lbl

label define pr05a_qbpl_lbl 0 `"Entered as written"'
label define pr05a_qbpl_lbl 4 `"Allocated"', add
label values pr05a_qbpl pr05a_qbpl_lbl

label define pr05a_qcarpool_lbl 0 `"Not allocated"'
label define pr05a_qcarpool_lbl 4 `"Allocated"', add
label values pr05a_qcarpool pr05a_qcarpool_lbl

label define pr05a_qcitizen_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define pr05a_qcitizen_lbl 4 `"Allocated"', add
label values pr05a_qcitizen pr05a_qcitizen_lbl

label define pr05a_qclasswk_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define pr05a_qclasswk_lbl 4 `"Allocated"', add
label values pr05a_qclasswk pr05a_qclasswk_lbl

label define pr05a_qlanguag_lbl 0 `"Not allocated or N/A"'
label define pr05a_qlanguag_lbl 4 `"Allocated, pre-edit"', add
label values pr05a_qlanguag pr05a_qlanguag_lbl

label define pr05a_qdisabwr_lbl 0 `"Not allocated"'
label define pr05a_qdisabwr_lbl 4 `"Allocated, hot deck"', add
label values pr05a_qdisabwr pr05a_qdisabwr_lbl

label define pr05a_qempstat_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define pr05a_qempstat_lbl 4 `"Allocated"', add
label values pr05a_qempstat pr05a_qempstat_lbl

label define pr05a_qincbus_lbl 0 `"Not allocated"'
label define pr05a_qincbus_lbl 4 `"Allocated"', add
label values pr05a_qincbus pr05a_qincbus_lbl

label define pr05a_qincinvs_lbl 0 `"Not allocated or N/A"'
label define pr05a_qincinvs_lbl 4 `"Allocated"', add
label values pr05a_qincinvs pr05a_qincinvs_lbl

label define pr05a_qincothe_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define pr05a_qincothe_lbl 4 `"Allocated"', add
label values pr05a_qincothe pr05a_qincothe_lbl

label define pr05a_qincss_lbl 0 `"Not allocated"'
label define pr05a_qincss_lbl 4 `"Allocated"', add
label values pr05a_qincss pr05a_qincss_lbl

label define pr05a_qincwage_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define pr05a_qincwage_lbl 4 `"Allocated"', add
label values pr05a_qincwage pr05a_qincwage_lbl

label define pr05a_qincwelf_lbl 0 `"Not allocated"'
label define pr05a_qincwelf_lbl 4 `"Allocated"', add
label values pr05a_qincwelf pr05a_qincwelf_lbl

label define pr05a_qind_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define pr05a_qind_lbl 4 `"Allocated"', add
label values pr05a_qind pr05a_qind_lbl

label define pr05a_qdisabmo_lbl 0 `"Not allocated"'
label define pr05a_qdisabmo_lbl 4 `"Allocated"', add
label values pr05a_qdisabmo pr05a_qdisabmo_lbl

label define pr05a_qperscar_lbl 0 `"Not allocated"'
label define pr05a_qperscar_lbl 4 `"Allocated"', add
label values pr05a_qperscar pr05a_qperscar_lbl

label define pr05a_qpwstat2_lbl 0 `"Not allocated"'
label define pr05a_qpwstat2_lbl 4 `"Allocated"', add
label values pr05a_qpwstat2 pr05a_qpwstat2_lbl

label define pr05a_qmarst_lbl 0 `"Entered as written"'
label define pr05a_qmarst_lbl 4 `"Allocated"', add
label values pr05a_qmarst pr05a_qmarst_lbl

label define pr05a_qincreti_lbl 0 `"Not allocated"'
label define pr05a_qincreti_lbl 4 `"Allocated"', add
label values pr05a_qincreti pr05a_qincreti_lbl

label define pr05a_qmigplc1_lbl 0 `"Not allocated"'
label define pr05a_qmigplc1_lbl 4 `"Failed edit"', add
label values pr05a_qmigplc1 pr05a_qmigplc1_lbl

label define pr05a_qmigrat1_lbl 0 `"Not allocated"'
label define pr05a_qmigrat1_lbl 4 `"Allocated"', add
label values pr05a_qmigrat1 pr05a_qmigrat1_lbl

label define pr05a_qvetyrs_lbl 0 `"Not allocated"'
label define pr05a_qvetyrs_lbl 4 `"Allocated"', add
label values pr05a_qvetyrs pr05a_qvetyrs_lbl

label define pr05a_qmovedin_lbl 0 `"Not allocated"'
label define pr05a_qmovedin_lbl 4 `"Allocated"', add
label values pr05a_qmovedin pr05a_qmovedin_lbl

label define pr05a_qocc_lbl 0 `"Entered as written"'
label define pr05a_qocc_lbl 4 `"Allocated"', add
label values pr05a_qocc pr05a_qocc_lbl

label define pr05a_qrace_lbl 0 `"Entered as written"'
label define pr05a_qrace_lbl 4 `"Allocated"', add
label values pr05a_qrace pr05a_qrace_lbl

label define pr05a_qrelate_lbl 0 `"Entered as written"'
label define pr05a_qrelate_lbl 4 `"Allocated"', add
label values pr05a_qrelate pr05a_qrelate_lbl

label define pr05a_qriders_lbl 0 `"Not allocated"'
label define pr05a_qriders_lbl 4 `"Allocated"', add
label values pr05a_qriders pr05a_qriders_lbl

label define pr05a_qschool_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define pr05a_qschool_lbl 4 `"Allocated"', add
label values pr05a_qschool pr05a_qschool_lbl

label define pr05a_qsex_lbl 0 `"Entered as written"'
label define pr05a_qsex_lbl 4 `"Allocated"', add
label values pr05a_qsex pr05a_qsex_lbl

label define pr05a_qsex_lbl 0 `"Entered as written"'
label define pr05a_qsex_lbl 4 `"Allocated"', add
label values pr05a_qsex pr05a_qsex_lbl

label define pr05a_qspeaken_lbl 0 `"Not allocated"'
label define pr05a_qspeaken_lbl 4 `"Allocated, hot deck"', add
label values pr05a_qspeaken pr05a_qspeaken_lbl

label define pr05a_qtrantim_lbl 0 `"Not allocated"'
label define pr05a_qtrantim_lbl 4 `"Allocated"', add
label values pr05a_qtrantim pr05a_qtrantim_lbl

label define pr05a_qtranwor_lbl 0 `"Not allocated"'
label define pr05a_qtranwor_lbl 4 `"Allocated"', add
label values pr05a_qtranwor pr05a_qtranwor_lbl

label define pr05a_quhrswor_lbl 0 `"Not allocated"'
label define pr05a_quhrswor_lbl 4 `"Allocated"', add
label values pr05a_quhrswor pr05a_quhrswor_lbl

label define pr05a_qvetstat_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define pr05a_qvetstat_lbl 4 `"Allocated"', add
label values pr05a_qvetstat pr05a_qvetstat_lbl

label define pr05a_qwkswork_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define pr05a_qwkswork_lbl 4 `"Allocated, pre-edit"', add
label values pr05a_qwkswork pr05a_qwkswork_lbl

label define pr05a_qworkedy_lbl 0 `"Not allocated"'
label define pr05a_qworkedy_lbl 4 `"Allocated"', add
label values pr05a_qworkedy pr05a_qworkedy_lbl

label define pr05a_qyrimm_lbl 0 `"Fields OK as written"'
label define pr05a_qyrimm_lbl 4 `"Allocated, hot deck"', add
label values pr05a_qyrimm pr05a_qyrimm_lbl

label define pr05a_gchouse_lbl 0 `"NIU (not in universe)"'
label define pr05a_gchouse_lbl 1 `"No"', add
label define pr05a_gchouse_lbl 2 `"Yes"', add
label values pr05a_gchouse pr05a_gchouse_lbl

label define pr05a_fertyr_lbl 0 `"NIU (not in universe)"'
label define pr05a_fertyr_lbl 1 `"No"', add
label define pr05a_fertyr_lbl 2 `"Yes"', add
label values pr05a_fertyr pr05a_fertyr_lbl

label define pr05a_racamind_lbl 1 `"No"'
label define pr05a_racamind_lbl 2 `"Yes"', add
label values pr05a_racamind pr05a_racamind_lbl

label define pr05a_racasian_lbl 1 `"No"'
label define pr05a_racasian_lbl 2 `"Yes"', add
label values pr05a_racasian pr05a_racasian_lbl

label define pr05a_racblk_lbl 1 `"No"'
label define pr05a_racblk_lbl 2 `"Yes"', add
label values pr05a_racblk pr05a_racblk_lbl

label define pr05a_racpacis_lbl 1 `"No"'
label define pr05a_racpacis_lbl 2 `"Yes"', add
label values pr05a_racpacis pr05a_racpacis_lbl

label define pr05a_racnum_lbl 1 `"1 race group"'
label define pr05a_racnum_lbl 2 `"2 race groups"', add
label define pr05a_racnum_lbl 3 `"3 race groups"', add
label values pr05a_racnum pr05a_racnum_lbl

label define pr05a_racother_lbl 1 `"No"'
label define pr05a_racother_lbl 2 `"Yes"', add
label values pr05a_racother pr05a_racother_lbl

label define pr05a_racwht_lbl 1 `"No"'
label define pr05a_racwht_lbl 2 `"Yes"', add
label values pr05a_racwht pr05a_racwht_lbl

label define pr05a_gradeatt_lbl 0 `"NIU (not in universe)"'
label define pr05a_gradeatt_lbl 1 `"Nursery school/preschool"', add
label define pr05a_gradeatt_lbl 2 `"Kindergarten"', add
label define pr05a_gradeatt_lbl 3 `"Grade 1 to grade 4"', add
label define pr05a_gradeatt_lbl 4 `"Grade 5 to grade 8"', add
label define pr05a_gradeatt_lbl 5 `"Grade 9 to grade 12"', add
label define pr05a_gradeatt_lbl 6 `"College undergraduate"', add
label define pr05a_gradeatt_lbl 7 `"Graduate or professional school"', add
label values pr05a_gradeatt pr05a_gradeatt_lbl

label define pr05a_wrklstwk_lbl 0 `"NIU (not in universe)"'
label define pr05a_wrklstwk_lbl 1 `"Did not work"', add
label define pr05a_wrklstwk_lbl 2 `"Worked"', add
label define pr05a_wrklstwk_lbl 3 `"Unknown"', add
label values pr05a_wrklstwk pr05a_wrklstwk_lbl

label define pr05a_wrkrecal_lbl 0 `"NIU (not in universe)"'
label define pr05a_wrkrecal_lbl 1 `"No"', add
label define pr05a_wrkrecal_lbl 2 `"Yes"', add
label define pr05a_wrkrecal_lbl 3 `"Unknown"', add
label values pr05a_wrkrecal pr05a_wrkrecal_lbl

label define pr05a_diffeye_lbl 0 `"NIU (not in universe)"'
label define pr05a_diffeye_lbl 1 `"No"', add
label define pr05a_diffeye_lbl 2 `"Yes"', add
label values pr05a_diffeye pr05a_diffeye_lbl

label define pr05a_diffphys_lbl 0 `"NIU (not in universe)"'
label define pr05a_diffphys_lbl 1 `"No"', add
label define pr05a_diffphys_lbl 2 `"Yes"', add
label values pr05a_diffphys pr05a_diffphys_lbl

label define pr05a_diffrem_lbl 0 `"NIU (not in universe)"'
label define pr05a_diffrem_lbl 1 `"No"', add
label define pr05a_diffrem_lbl 2 `"Yes"', add
label values pr05a_diffrem pr05a_diffrem_lbl

label define pr05a_gcmonths_lbl 0 `"NIU (not in universe)"'
label define pr05a_gcmonths_lbl 1 `"Less than 6 months"', add
label define pr05a_gcmonths_lbl 2 `"6 to 11 months"', add
label define pr05a_gcmonths_lbl 3 `"1 to 2 years"', add
label define pr05a_gcmonths_lbl 4 `"3 to 4 years"', add
label define pr05a_gcmonths_lbl 5 `"5 or more years"', add
label values pr05a_gcmonths pr05a_gcmonths_lbl

label define pr05a_gcrespon_lbl 0 `"NIU (not in universe)"'
label define pr05a_gcrespon_lbl 1 `"No"', add
label define pr05a_gcrespon_lbl 2 `"Yes"', add
label values pr05a_gcrespon pr05a_gcrespon_lbl

label define pr05a_qdiffeye_lbl 0 `"Not allocated"'
label define pr05a_qdiffeye_lbl 4 `"Allocated"', add
label values pr05a_qdiffeye pr05a_qdiffeye_lbl

label define pr05a_qincsupp_lbl 0 `"Not allocated"'
label define pr05a_qincsupp_lbl 4 `"Allocated"', add
label values pr05a_qincsupp pr05a_qincsupp_lbl

label define pr05a_qdiffphy_lbl 0 `"Not allocated"'
label define pr05a_qdiffphy_lbl 4 `"Allocated"', add
label values pr05a_qdiffphy pr05a_qdiffphy_lbl

label define pr05a_qdiffrem_lbl 0 `"Not allocated"'
label define pr05a_qdiffrem_lbl 4 `"Allocated"', add
label values pr05a_qdiffrem pr05a_qdiffrem_lbl

label define pr05a_qfertyr_lbl 0 `"Not allocated"'
label define pr05a_qfertyr_lbl 4 `"Allocated"', add
label values pr05a_qfertyr pr05a_qfertyr_lbl

label define pr05a_qgchouse_lbl 0 `"Not allocated"'
label define pr05a_qgchouse_lbl 1 `"1"', add
label define pr05a_qgchouse_lbl 2 `"2"', add
label values pr05a_qgchouse pr05a_qgchouse_lbl

label define pr05a_qgcmonth_lbl 0 `"Not allocated"'
label define pr05a_qgcmonth_lbl 4 `"Allocated"', add
label values pr05a_qgcmonth pr05a_qgcmonth_lbl

label define pr05a_qgcrespo_lbl 0 `"Not allocated"'
label define pr05a_qgcrespo_lbl 4 `"Allocated"', add
label values pr05a_qgcrespo pr05a_qgcrespo_lbl

label define pr05a_qgradeat_lbl 0 `"Not allocated"'
label define pr05a_qgradeat_lbl 4 `"Allocated"', add
label values pr05a_qgradeat pr05a_qgradeat_lbl

label define pr05a_incbus00_lbl 099999 `"NIU (not in universe)"'
label values pr05a_incbus00 pr05a_incbus00_lbl

label define pr05a_incretir_lbl 999999 `"NIU (not in universe)"'
label values pr05a_incretir pr05a_incretir_lbl

label define pr05a_vet01ltr_lbl 0 `"NIU (not in universe)"'
label define pr05a_vet01ltr_lbl 1 `"No"', add
label define pr05a_vet01ltr_lbl 2 `"Yes, served this period"', add
label values pr05a_vet01ltr pr05a_vet01ltr_lbl

label define pr05a_vet90x01_lbl 0 `"NIU (not in universe)"'
label define pr05a_vet90x01_lbl 1 `"No"', add
label define pr05a_vet90x01_lbl 2 `"Yes, served this period"', add
label values pr05a_vet90x01 pr05a_vet90x01_lbl

label define pr05a_vet47x50_lbl 0 `"NIU (not in universe)"'
label define pr05a_vet47x50_lbl 1 `"No"', add
label define pr05a_vet47x50_lbl 2 `"Yes, served this period"', add
label values pr05a_vet47x50 pr05a_vet47x50_lbl

label define pr05a_occ2000m_lbl 000 `"NIU (not in universe)"'
label define pr05a_occ2000m_lbl 001 `"Chief executives"', add
label define pr05a_occ2000m_lbl 002 `"General and operations managers"', add
label define pr05a_occ2000m_lbl 003 `"Legislators"', add
label define pr05a_occ2000m_lbl 004 `"Advertising and promotions managers"', add
label define pr05a_occ2000m_lbl 005 `"Marketing and sales managers"', add
label define pr05a_occ2000m_lbl 006 `"Public relations managers"', add
label define pr05a_occ2000m_lbl 010 `"Administrative services managers"', add
label define pr05a_occ2000m_lbl 011 `"Computer and information systems managers"', add
label define pr05a_occ2000m_lbl 012 `"Financial managers"', add
label define pr05a_occ2000m_lbl 013 `"Human resources managers"', add
label define pr05a_occ2000m_lbl 014 `"Industrial production managers"', add
label define pr05a_occ2000m_lbl 015 `"Purchasing managers"', add
label define pr05a_occ2000m_lbl 016 `"Transportation, storage, and distribution managers"', add
label define pr05a_occ2000m_lbl 020 `"Farm, ranch, and other agricultural managers"', add
label define pr05a_occ2000m_lbl 021 `"Farmers and ranchers"', add
label define pr05a_occ2000m_lbl 022 `"Construction managers"', add
label define pr05a_occ2000m_lbl 023 `"Education administrators"', add
label define pr05a_occ2000m_lbl 030 `"Engineering managers"', add
label define pr05a_occ2000m_lbl 031 `"Food service managers"', add
label define pr05a_occ2000m_lbl 032 `"Funeral directors"', add
label define pr05a_occ2000m_lbl 033 `"Gaming managers"', add
label define pr05a_occ2000m_lbl 034 `"Lodging managers"', add
label define pr05a_occ2000m_lbl 035 `"Medical and health services managers"', add
label define pr05a_occ2000m_lbl 036 `"Natural sciences managers"', add
label define pr05a_occ2000m_lbl 040 `"Postmasters and mail superintendents"', add
label define pr05a_occ2000m_lbl 041 `"Property, real estate, and community association managers"', add
label define pr05a_occ2000m_lbl 042 `"Social and community service managers"', add
label define pr05a_occ2000m_lbl 043 `"Managers, all other"', add
label define pr05a_occ2000m_lbl 050 `"Agents and business managers of artists, performers, and athletes"', add
label define pr05a_occ2000m_lbl 051 `"Purchasing agents and buyers, farm products"', add
label define pr05a_occ2000m_lbl 052 `"Wholesale and retail buyers, except farm products"', add
label define pr05a_occ2000m_lbl 053 `"Purchasing agents, except wholesale, retail, and farm products"', add
label define pr05a_occ2000m_lbl 054 `"Claims adjusters, appraisers, examiners, and investigators"', add
label define pr05a_occ2000m_lbl 056 `"Compliance officers, except agriculture, construction, health and safety, and transportation"', add
label define pr05a_occ2000m_lbl 060 `"Cost estimators"', add
label define pr05a_occ2000m_lbl 062 `"Human resources, training, and labor relations specialists"', add
label define pr05a_occ2000m_lbl 070 `"Logisticians"', add
label define pr05a_occ2000m_lbl 071 `"Management analysts"', add
label define pr05a_occ2000m_lbl 072 `"Meeting and convention planners"', add
label define pr05a_occ2000m_lbl 073 `"Other business operations specialists"', add
label define pr05a_occ2000m_lbl 080 `"Accountants and auditors"', add
label define pr05a_occ2000m_lbl 081 `"Appraisers and assessors of real estate"', add
label define pr05a_occ2000m_lbl 082 `"Budget analysts"', add
label define pr05a_occ2000m_lbl 083 `"Credit analysts"', add
label define pr05a_occ2000m_lbl 084 `"Financial analysts"', add
label define pr05a_occ2000m_lbl 085 `"Personal financial advisors"', add
label define pr05a_occ2000m_lbl 086 `"Insurance underwriters"', add
label define pr05a_occ2000m_lbl 090 `"Financial examiners"', add
label define pr05a_occ2000m_lbl 091 `"Loan counselors and officers"', add
label define pr05a_occ2000m_lbl 093 `"Tax examiners, collectors, and revenue agents"', add
label define pr05a_occ2000m_lbl 094 `"Tax preparers"', add
label define pr05a_occ2000m_lbl 095 `"Financial specialists, all other"', add
label define pr05a_occ2000m_lbl 100 `"Computer scientists and systems analysts"', add
label define pr05a_occ2000m_lbl 101 `"Computer programmers"', add
label define pr05a_occ2000m_lbl 102 `"Computer software engineers"', add
label define pr05a_occ2000m_lbl 104 `"Computer support specialists"', add
label define pr05a_occ2000m_lbl 106 `"Database administrators"', add
label define pr05a_occ2000m_lbl 110 `"Network and computer systems administrators"', add
label define pr05a_occ2000m_lbl 111 `"Network systems and data communications analysts"', add
label define pr05a_occ2000m_lbl 120 `"Actuaries"', add
label define pr05a_occ2000m_lbl 121 `"Mathematicians"', add
label define pr05a_occ2000m_lbl 122 `"Operations research analysts"', add
label define pr05a_occ2000m_lbl 123 `"Statisticians"', add
label define pr05a_occ2000m_lbl 124 `"Miscellaneous mathematical science occupations"', add
label define pr05a_occ2000m_lbl 130 `"Architects, except naval"', add
label define pr05a_occ2000m_lbl 131 `"Surveyors, cartographers, and photogrammetrists"', add
label define pr05a_occ2000m_lbl 132 `"Aerospace engineers"', add
label define pr05a_occ2000m_lbl 133 `"Agricultural engineers"', add
label define pr05a_occ2000m_lbl 134 `"Biomedical engineers"', add
label define pr05a_occ2000m_lbl 135 `"Chemical engineers"', add
label define pr05a_occ2000m_lbl 136 `"Civil engineers"', add
label define pr05a_occ2000m_lbl 140 `"Computer hardware engineers"', add
label define pr05a_occ2000m_lbl 141 `"Electrical and electronic engineers"', add
label define pr05a_occ2000m_lbl 142 `"Environmental engineers"', add
label define pr05a_occ2000m_lbl 143 `"Industrial engineers, including health and safety"', add
label define pr05a_occ2000m_lbl 144 `"Marine engineers and naval architects"', add
label define pr05a_occ2000m_lbl 145 `"Materials engineers"', add
label define pr05a_occ2000m_lbl 146 `"Mechanical engineers"', add
label define pr05a_occ2000m_lbl 150 `"Mining and geological engineers, including mining safety engineers"', add
label define pr05a_occ2000m_lbl 151 `"Nuclear engineers"', add
label define pr05a_occ2000m_lbl 152 `"Petroleum engineers"', add
label define pr05a_occ2000m_lbl 153 `"Engineers, all other"', add
label define pr05a_occ2000m_lbl 154 `"Drafters"', add
label define pr05a_occ2000m_lbl 155 `"Engineering technicians, except drafters"', add
label define pr05a_occ2000m_lbl 156 `"Surveying and mapping technicians"', add
label define pr05a_occ2000m_lbl 160 `"Agricultural and food scientists"', add
label define pr05a_occ2000m_lbl 161 `"Biological scientists"', add
label define pr05a_occ2000m_lbl 164 `"Conservation scientists and foresters"', add
label define pr05a_occ2000m_lbl 165 `"Medical scientists"', add
label define pr05a_occ2000m_lbl 170 `"Astronomers and physicists"', add
label define pr05a_occ2000m_lbl 171 `"Atmospheric and space scientists"', add
label define pr05a_occ2000m_lbl 172 `"Chemists and materials scientists"', add
label define pr05a_occ2000m_lbl 174 `"Environmental scientists and geoscientists"', add
label define pr05a_occ2000m_lbl 176 `"Physical scientists, all other"', add
label define pr05a_occ2000m_lbl 180 `"Economists"', add
label define pr05a_occ2000m_lbl 181 `"Market and survey researchers"', add
label define pr05a_occ2000m_lbl 182 `"Psychologists"', add
label define pr05a_occ2000m_lbl 183 `"Sociologists"', add
label define pr05a_occ2000m_lbl 184 `"Urban and regional planners"', add
label define pr05a_occ2000m_lbl 186 `"Miscellaneous social scientists and related workers"', add
label define pr05a_occ2000m_lbl 190 `"Agricultural and food science technicians"', add
label define pr05a_occ2000m_lbl 191 `"Biological technicians"', add
label define pr05a_occ2000m_lbl 192 `"Chemical technicians"', add
label define pr05a_occ2000m_lbl 193 `"Geological and petroleum technicians"', add
label define pr05a_occ2000m_lbl 194 `"Nuclear technicians"', add
label define pr05a_occ2000m_lbl 196 `"Other life, physical, and social science technicians"', add
label define pr05a_occ2000m_lbl 200 `"Counselors"', add
label define pr05a_occ2000m_lbl 201 `"Social workers"', add
label define pr05a_occ2000m_lbl 202 `"Miscellaneous community and social service specialists"', add
label define pr05a_occ2000m_lbl 204 `"Clergy"', add
label define pr05a_occ2000m_lbl 205 `"Directors, religious activities and education"', add
label define pr05a_occ2000m_lbl 206 `"Religious workers, all other"', add
label define pr05a_occ2000m_lbl 210 `"Lawyers"', add
label define pr05a_occ2000m_lbl 211 `"Judges, magistrates, and other judicial workers"', add
label define pr05a_occ2000m_lbl 214 `"Paralegals and legal assistants"', add
label define pr05a_occ2000m_lbl 215 `"Miscellaneous legal support workers"', add
label define pr05a_occ2000m_lbl 220 `"Postsecondary teachers"', add
label define pr05a_occ2000m_lbl 230 `"Preschool and kindergarten teachers"', add
label define pr05a_occ2000m_lbl 231 `"Elementary and middle school teachers"', add
label define pr05a_occ2000m_lbl 232 `"Secondary school teachers"', add
label define pr05a_occ2000m_lbl 233 `"Special education teachers"', add
label define pr05a_occ2000m_lbl 234 `"Other teachers and instructors"', add
label define pr05a_occ2000m_lbl 240 `"Archivists, curators, and museum technicians"', add
label define pr05a_occ2000m_lbl 243 `"Librarians"', add
label define pr05a_occ2000m_lbl 244 `"Library Technicians"', add
label define pr05a_occ2000m_lbl 254 `"Teacher assistants"', add
label define pr05a_occ2000m_lbl 255 `"Other education, training, and library workers"', add
label define pr05a_occ2000m_lbl 260 `"Artists and related workers"', add
label define pr05a_occ2000m_lbl 263 `"Designers"', add
label define pr05a_occ2000m_lbl 270 `"Actors"', add
label define pr05a_occ2000m_lbl 271 `"Producers and directors"', add
label define pr05a_occ2000m_lbl 272 `"Athletes, coaches, umpires, and related workers"', add
label define pr05a_occ2000m_lbl 274 `"Dancers and choreographers"', add
label define pr05a_occ2000m_lbl 275 `"Musicians, singers, and related workers"', add
label define pr05a_occ2000m_lbl 276 `"Entertainers and performers, sports and related workers, all other"', add
label define pr05a_occ2000m_lbl 280 `"Announcers"', add
label define pr05a_occ2000m_lbl 281 `"News analysts, reporters and correspondents"', add
label define pr05a_occ2000m_lbl 282 `"Public relations specialists"', add
label define pr05a_occ2000m_lbl 283 `"Editors"', add
label define pr05a_occ2000m_lbl 284 `"Technical writers"', add
label define pr05a_occ2000m_lbl 285 `"Writers and authors"', add
label define pr05a_occ2000m_lbl 286 `"Miscellaneous media and communication workers"', add
label define pr05a_occ2000m_lbl 290 `"Broadcast and sound engineering technicians and radio operators"', add
label define pr05a_occ2000m_lbl 291 `"Photographers"', add
label define pr05a_occ2000m_lbl 292 `"Television, video, and motion picture camera operators and editors"', add
label define pr05a_occ2000m_lbl 296 `"Media and communication equipment workers, all other"', add
label define pr05a_occ2000m_lbl 300 `"Chiropractors"', add
label define pr05a_occ2000m_lbl 301 `"Dentists"', add
label define pr05a_occ2000m_lbl 303 `"Dietitians and nutritionists"', add
label define pr05a_occ2000m_lbl 304 `"Optometrists"', add
label define pr05a_occ2000m_lbl 305 `"Pharmacists"', add
label define pr05a_occ2000m_lbl 306 `"Physicians and surgeons"', add
label define pr05a_occ2000m_lbl 311 `"Physician assistants"', add
label define pr05a_occ2000m_lbl 312 `"Podiatrists"', add
label define pr05a_occ2000m_lbl 313 `"Registered nurses"', add
label define pr05a_occ2000m_lbl 314 `"Audiologists"', add
label define pr05a_occ2000m_lbl 315 `"Occupational therapists"', add
label define pr05a_occ2000m_lbl 316 `"Physical therapists"', add
label define pr05a_occ2000m_lbl 320 `"Radiation therapists"', add
label define pr05a_occ2000m_lbl 321 `"Recreational therapists"', add
label define pr05a_occ2000m_lbl 322 `"Respiratory therapists"', add
label define pr05a_occ2000m_lbl 323 `"Speech-language pathologists"', add
label define pr05a_occ2000m_lbl 324 `"Therapists, all other"', add
label define pr05a_occ2000m_lbl 325 `"Veterinarians"', add
label define pr05a_occ2000m_lbl 326 `"Health diagnosing and treating practitioners, all other"', add
label define pr05a_occ2000m_lbl 330 `"Clinical laboratory technologists and technicians"', add
label define pr05a_occ2000m_lbl 331 `"Dental hygienists"', add
label define pr05a_occ2000m_lbl 332 `"Diagnostic related technologists and technicians"', add
label define pr05a_occ2000m_lbl 340 `"Emergency medical technicians and paramedics"', add
label define pr05a_occ2000m_lbl 341 `"Health diagnosing and treating practitioner support technicians"', add
label define pr05a_occ2000m_lbl 350 `"Licensed practical and licensed vocational nurses"', add
label define pr05a_occ2000m_lbl 351 `"Medical records and health information technicians"', add
label define pr05a_occ2000m_lbl 352 `"Opticians, dispensing"', add
label define pr05a_occ2000m_lbl 353 `"Miscellaneous health technologists and technicians"', add
label define pr05a_occ2000m_lbl 354 `"Other healthcare practitioners and technical occupations"', add
label define pr05a_occ2000m_lbl 360 `"Nursing, psychiatric, and home health aides"', add
label define pr05a_occ2000m_lbl 361 `"Occupational therapist assistants and aides"', add
label define pr05a_occ2000m_lbl 362 `"Physical therapist assistants and aides"', add
label define pr05a_occ2000m_lbl 363 `"Massage therapists"', add
label define pr05a_occ2000m_lbl 364 `"Dental assistants"', add
label define pr05a_occ2000m_lbl 365 `"Medical assistants and other healthcare support occupations"', add
label define pr05a_occ2000m_lbl 370 `"First-line supervisors/managers of correctional officers"', add
label define pr05a_occ2000m_lbl 371 `"First-line supervisors/managers of police and detectives"', add
label define pr05a_occ2000m_lbl 372 `"First-line supervisors/managers of fire fighting and prevention workers"', add
label define pr05a_occ2000m_lbl 373 `"Supervisors, protective service workers, all other"', add
label define pr05a_occ2000m_lbl 374 `"Fire fighters"', add
label define pr05a_occ2000m_lbl 375 `"Fire inspectors"', add
label define pr05a_occ2000m_lbl 380 `"Bailiffs, correctional officers, and jailers"', add
label define pr05a_occ2000m_lbl 382 `"Detectives and criminal investigators"', add
label define pr05a_occ2000m_lbl 383 `"Fish and game wardens"', add
label define pr05a_occ2000m_lbl 384 `"Parking enforcement workers"', add
label define pr05a_occ2000m_lbl 385 `"Police and sheriff's patrol officers"', add
label define pr05a_occ2000m_lbl 386 `"Transit and railroad police"', add
label define pr05a_occ2000m_lbl 390 `"Animal control workers"', add
label define pr05a_occ2000m_lbl 391 `"Private detectives and investigators"', add
label define pr05a_occ2000m_lbl 392 `"Security guards and gaming surveillance officers"', add
label define pr05a_occ2000m_lbl 394 `"Crossing guards"', add
label define pr05a_occ2000m_lbl 395 `"Lifeguards and other protective service workers"', add
label define pr05a_occ2000m_lbl 400 `"Chefs and head cooks"', add
label define pr05a_occ2000m_lbl 401 `"First-line supervisors/managers of food preparation and serving workers"', add
label define pr05a_occ2000m_lbl 402 `"Cooks"', add
label define pr05a_occ2000m_lbl 403 `"Food preparation workers"', add
label define pr05a_occ2000m_lbl 404 `"Bartenders"', add
label define pr05a_occ2000m_lbl 405 `"Combined food preparation and serving workers, including fast food"', add
label define pr05a_occ2000m_lbl 406 `"Counter attendants, cafeteria, food concession, and coffee shop"', add
label define pr05a_occ2000m_lbl 411 `"Waiters and waitresses"', add
label define pr05a_occ2000m_lbl 412 `"Food servers, nonrestaurant"', add
label define pr05a_occ2000m_lbl 413 `"Dining room and cafeteria attendants and bartender helpers"', add
label define pr05a_occ2000m_lbl 414 `"Dishwashers"', add
label define pr05a_occ2000m_lbl 415 `"Hosts and hostesses, restaurant, lounge, and coffee shop"', add
label define pr05a_occ2000m_lbl 416 `"Food preparation and serving related workers, all other"', add
label define pr05a_occ2000m_lbl 420 `"First-line supervisors/managers of housekeeping and janitorial workers"', add
label define pr05a_occ2000m_lbl 421 `"First-line supervisors/managers of landscaping, lawn service, and groundskeeping workers"', add
label define pr05a_occ2000m_lbl 422 `"Janitors and building cleaners"', add
label define pr05a_occ2000m_lbl 423 `"Maids and housekeeping cleaners"', add
label define pr05a_occ2000m_lbl 424 `"Pest control workers"', add
label define pr05a_occ2000m_lbl 425 `"Grounds maintenance workers"', add
label define pr05a_occ2000m_lbl 430 `"First-line supervisors/managers of gaming workers"', add
label define pr05a_occ2000m_lbl 432 `"First-line supervisors/managers of personal service workers"', add
label define pr05a_occ2000m_lbl 434 `"Animal trainers"', add
label define pr05a_occ2000m_lbl 435 `"Nonfarm animal caretakers"', add
label define pr05a_occ2000m_lbl 440 `"Gaming services workers"', add
label define pr05a_occ2000m_lbl 441 `"Motion picture projectionists"', add
label define pr05a_occ2000m_lbl 442 `"Ushers, lobby attendants, and ticket takers"', add
label define pr05a_occ2000m_lbl 443 `"Miscellaneous entertainment attendants and related workers"', add
label define pr05a_occ2000m_lbl 446 `"Funeral service workers"', add
label define pr05a_occ2000m_lbl 450 `"Barbers"', add
label define pr05a_occ2000m_lbl 451 `"Hairdressers, hairstylists, and cosmetologists"', add
label define pr05a_occ2000m_lbl 452 `"Miscellaneous personal appearance workers"', add
label define pr05a_occ2000m_lbl 453 `"Baggage porters, bellhops, and concierges"', add
label define pr05a_occ2000m_lbl 454 `"Tour and travel guides"', add
label define pr05a_occ2000m_lbl 455 `"Transportation attendants"', add
label define pr05a_occ2000m_lbl 460 `"Child care workers"', add
label define pr05a_occ2000m_lbl 461 `"Personal and home care aides"', add
label define pr05a_occ2000m_lbl 462 `"Recreation and fitness workers"', add
label define pr05a_occ2000m_lbl 464 `"Residential advisors"', add
label define pr05a_occ2000m_lbl 465 `"Personal care and service workers, all other"', add
label define pr05a_occ2000m_lbl 470 `"First-line supervisors/managers of retail sales workers"', add
label define pr05a_occ2000m_lbl 471 `"First-line supervisors/managers of non-retail sales workers"', add
label define pr05a_occ2000m_lbl 472 `"Cashiers"', add
label define pr05a_occ2000m_lbl 474 `"Counter and rental clerks"', add
label define pr05a_occ2000m_lbl 475 `"Parts salespersons"', add
label define pr05a_occ2000m_lbl 476 `"Retail salespersons"', add
label define pr05a_occ2000m_lbl 480 `"Advertising sales agents"', add
label define pr05a_occ2000m_lbl 481 `"Insurance sales agents"', add
label define pr05a_occ2000m_lbl 482 `"Securities, commodities, and financial services sales agents"', add
label define pr05a_occ2000m_lbl 483 `"Travel agents"', add
label define pr05a_occ2000m_lbl 484 `"Sales representatives, services, all other"', add
label define pr05a_occ2000m_lbl 485 `"Sales representatives, wholesale and manufacturing"', add
label define pr05a_occ2000m_lbl 490 `"Models, demonstrators, and product promoters"', add
label define pr05a_occ2000m_lbl 492 `"Real estate brokers and sales agents"', add
label define pr05a_occ2000m_lbl 493 `"Sales engineers"', add
label define pr05a_occ2000m_lbl 494 `"Telemarketers"', add
label define pr05a_occ2000m_lbl 495 `"Door-to-door sales workers, news and street vendors, and related workers"', add
label define pr05a_occ2000m_lbl 496 `"Sales and related workers, all other"', add
label define pr05a_occ2000m_lbl 500 `"First-line supervisors/managers of office and administrative support workers"', add
label define pr05a_occ2000m_lbl 501 `"Switchboard operators, including answering service"', add
label define pr05a_occ2000m_lbl 502 `"Telephone operators"', add
label define pr05a_occ2000m_lbl 503 `"Communications equipment operators, all other"', add
label define pr05a_occ2000m_lbl 510 `"Bill and account collectors"', add
label define pr05a_occ2000m_lbl 511 `"Billing and posting clerks and machine operators"', add
label define pr05a_occ2000m_lbl 512 `"Bookkeeping, accounting, and auditing clerks"', add
label define pr05a_occ2000m_lbl 513 `"Gaming cage workers"', add
label define pr05a_occ2000m_lbl 514 `"Payroll and timekeeping clerks"', add
label define pr05a_occ2000m_lbl 515 `"Procurement clerks"', add
label define pr05a_occ2000m_lbl 516 `"Tellers"', add
label define pr05a_occ2000m_lbl 520 `"Brokerage clerks"', add
label define pr05a_occ2000m_lbl 521 `"Correspondence clerks"', add
label define pr05a_occ2000m_lbl 522 `"Court, municipal, and license clerks"', add
label define pr05a_occ2000m_lbl 523 `"Credit authorizers, checkers, and clerks"', add
label define pr05a_occ2000m_lbl 524 `"Customer service representatives"', add
label define pr05a_occ2000m_lbl 525 `"Eligibility interviewers, government programs"', add
label define pr05a_occ2000m_lbl 526 `"File Clerks"', add
label define pr05a_occ2000m_lbl 530 `"Hotel, motel, and resort desk clerks"', add
label define pr05a_occ2000m_lbl 531 `"Interviewers, except eligibility and loan"', add
label define pr05a_occ2000m_lbl 532 `"Library assistants, clerical"', add
label define pr05a_occ2000m_lbl 533 `"Loan interviewers and clerks"', add
label define pr05a_occ2000m_lbl 534 `"New accounts clerks"', add
label define pr05a_occ2000m_lbl 535 `"Order clerks"', add
label define pr05a_occ2000m_lbl 536 `"Human resources assistants, except payroll and timekeeping"', add
label define pr05a_occ2000m_lbl 540 `"Receptionists and information clerks"', add
label define pr05a_occ2000m_lbl 541 `"Reservation and transportation ticket agents and travel clerks"', add
label define pr05a_occ2000m_lbl 542 `"Information and record clerks, all other"', add
label define pr05a_occ2000m_lbl 550 `"Cargo and freight agents"', add
label define pr05a_occ2000m_lbl 551 `"Couriers and messengers"', add
label define pr05a_occ2000m_lbl 552 `"Dispatchers"', add
label define pr05a_occ2000m_lbl 553 `"Meter readers, utilities"', add
label define pr05a_occ2000m_lbl 554 `"Postal service clerks"', add
label define pr05a_occ2000m_lbl 555 `"Postal service mail carriers"', add
label define pr05a_occ2000m_lbl 556 `"Postal service mail sorters, processors, and processing machine operators"', add
label define pr05a_occ2000m_lbl 560 `"Production, planning, and expediting clerks"', add
label define pr05a_occ2000m_lbl 561 `"Shipping, receiving, and traffic clerks"', add
label define pr05a_occ2000m_lbl 562 `"Stock clerks and order fillers"', add
label define pr05a_occ2000m_lbl 563 `"Weighers, measurers, checkers, and samplers, recordkeeping"', add
label define pr05a_occ2000m_lbl 570 `"Secretaries and administrative assistants"', add
label define pr05a_occ2000m_lbl 580 `"Computer operators"', add
label define pr05a_occ2000m_lbl 581 `"Data entry keyers"', add
label define pr05a_occ2000m_lbl 582 `"Word processors and typists"', add
label define pr05a_occ2000m_lbl 583 `"Desktop publishers"', add
label define pr05a_occ2000m_lbl 584 `"Insurance claims and policy processing clerks"', add
label define pr05a_occ2000m_lbl 585 `"Mail clerks and mail machine operators, except postal service"', add
label define pr05a_occ2000m_lbl 586 `"Office clerks, general"', add
label define pr05a_occ2000m_lbl 590 `"Office machine operators, except computer"', add
label define pr05a_occ2000m_lbl 591 `"Proofreaders and copy markers"', add
label define pr05a_occ2000m_lbl 592 `"Statistical assistants"', add
label define pr05a_occ2000m_lbl 593 `"Office and administrative support workers, all other"', add
label define pr05a_occ2000m_lbl 600 `"First-line supervisors/managers of farming, fishing, and forestry workers"', add
label define pr05a_occ2000m_lbl 601 `"Agricultural inspectors"', add
label define pr05a_occ2000m_lbl 602 `"Animal breeders"', add
label define pr05a_occ2000m_lbl 604 `"Graders and sorters, agricultural products"', add
label define pr05a_occ2000m_lbl 605 `"Miscellaneous agricultural workers"', add
label define pr05a_occ2000m_lbl 610 `"Fishers and related fishing workers"', add
label define pr05a_occ2000m_lbl 611 `"Hunters and trappers"', add
label define pr05a_occ2000m_lbl 612 `"Forest and conservation workers"', add
label define pr05a_occ2000m_lbl 613 `"Logging workers"', add
label define pr05a_occ2000m_lbl 620 `"First-line supervisors/managers of construction trades and extraction workers"', add
label define pr05a_occ2000m_lbl 621 `"Boilermakers"', add
label define pr05a_occ2000m_lbl 622 `"Brickmasons, blockmasons, and stonemasons"', add
label define pr05a_occ2000m_lbl 623 `"Carpenters"', add
label define pr05a_occ2000m_lbl 624 `"Carpet, floor, and tile installers and finishers"', add
label define pr05a_occ2000m_lbl 625 `"Cement masons, concrete finishers, and terrazzo workers"', add
label define pr05a_occ2000m_lbl 626 `"Construction laborers"', add
label define pr05a_occ2000m_lbl 630 `"Paving, surfacing, and tamping equipment operators"', add
label define pr05a_occ2000m_lbl 631 `"Pile-driver operators"', add
label define pr05a_occ2000m_lbl 632 `"Operating engineers and other construction equipment operators"', add
label define pr05a_occ2000m_lbl 633 `"Drywall installers, ceiling tile installers, and tapers"', add
label define pr05a_occ2000m_lbl 635 `"Electricians"', add
label define pr05a_occ2000m_lbl 636 `"Glaziers"', add
label define pr05a_occ2000m_lbl 640 `"Insulation workers"', add
label define pr05a_occ2000m_lbl 642 `"Painters, construction and maintenance"', add
label define pr05a_occ2000m_lbl 643 `"Paperhangers"', add
label define pr05a_occ2000m_lbl 644 `"Pipelayers, plumbers, pipefitters, and steamfitters"', add
label define pr05a_occ2000m_lbl 646 `"Plasterers and stucco masons"', add
label define pr05a_occ2000m_lbl 650 `"Reinforcing iron and rebar workers"', add
label define pr05a_occ2000m_lbl 651 `"Roofers"', add
label define pr05a_occ2000m_lbl 652 `"Sheet metal workers"', add
label define pr05a_occ2000m_lbl 653 `"Structural iron and steel workers"', add
label define pr05a_occ2000m_lbl 660 `"Helpers, construction trades"', add
label define pr05a_occ2000m_lbl 666 `"Construction and building inspectors"', add
label define pr05a_occ2000m_lbl 670 `"Elevator installers and repairers"', add
label define pr05a_occ2000m_lbl 671 `"Fence erectors"', add
label define pr05a_occ2000m_lbl 672 `"Hazardous materials removal workers"', add
label define pr05a_occ2000m_lbl 673 `"Highway maintenance workers"', add
label define pr05a_occ2000m_lbl 674 `"Rail-track laying and maintenance equipment operators"', add
label define pr05a_occ2000m_lbl 675 `"Septic tank servicers and sewer pipe cleaners"', add
label define pr05a_occ2000m_lbl 676 `"Miscellaneous construction and related workers"', add
label define pr05a_occ2000m_lbl 680 `"Derrick, rotary drill, and service unit operators, oil, gas, and mining"', add
label define pr05a_occ2000m_lbl 682 `"Earth drillers, except oil and gas"', add
label define pr05a_occ2000m_lbl 683 `"Explosives workers, ordnance handling experts, and blasters"', add
label define pr05a_occ2000m_lbl 684 `"Mining machine operators"', add
label define pr05a_occ2000m_lbl 691 `"Roof bolters, mining"', add
label define pr05a_occ2000m_lbl 692 `"Roustabouts, oil and gas"', add
label define pr05a_occ2000m_lbl 693 `"Helpers--extraction workers"', add
label define pr05a_occ2000m_lbl 694 `"Other extraction workers"', add
label define pr05a_occ2000m_lbl 700 `"First-line supervisors/managers of mechanics, installers, and repairers"', add
label define pr05a_occ2000m_lbl 701 `"Computer, automated teller, and office machine repairers"', add
label define pr05a_occ2000m_lbl 702 `"Radio and telecommunications equipment installers and repairers"', add
label define pr05a_occ2000m_lbl 703 `"Avionics technicians"', add
label define pr05a_occ2000m_lbl 704 `"Electric motor, power tool, and related repairers"', add
label define pr05a_occ2000m_lbl 705 `"Electrical and electronics installers and repairers, transportation equipment"', add
label define pr05a_occ2000m_lbl 710 `"Electrical and electronics repairers, industrial and utility"', add
label define pr05a_occ2000m_lbl 711 `"Electronic equipment installers and repairers, motor vehicles"', add
label define pr05a_occ2000m_lbl 712 `"Electronic home entertainment equipment installers and repairers"', add
label define pr05a_occ2000m_lbl 713 `"Security and fire alarm systems installers"', add
label define pr05a_occ2000m_lbl 714 `"Aircraft mechanics and service technicians"', add
label define pr05a_occ2000m_lbl 715 `"Automotive body and related repairers"', add
label define pr05a_occ2000m_lbl 716 `"Automotive glass installers and repairers"', add
label define pr05a_occ2000m_lbl 720 `"Automotive service technicians and mechanics"', add
label define pr05a_occ2000m_lbl 721 `"Bus and truck mechanics and diesel engine specialists"', add
label define pr05a_occ2000m_lbl 722 `"Heavy vehicle and mobile equipment service technicians and mechanics"', add
label define pr05a_occ2000m_lbl 724 `"Small engine mechanics"', add
label define pr05a_occ2000m_lbl 726 `"Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers"', add
label define pr05a_occ2000m_lbl 730 `"Control and valve installers and repairers"', add
label define pr05a_occ2000m_lbl 731 `"Heating, air conditioning, and refrigeration mechanics and installers"', add
label define pr05a_occ2000m_lbl 732 `"Home appliance repairers"', add
label define pr05a_occ2000m_lbl 733 `"Industrial and refractory machinery mechanics"', add
label define pr05a_occ2000m_lbl 734 `"Maintenance and repair workers, general"', add
label define pr05a_occ2000m_lbl 735 `"Maintenance workers, machinery"', add
label define pr05a_occ2000m_lbl 736 `"Millwrights"', add
label define pr05a_occ2000m_lbl 741 `"Electrical power-line installers and repairers"', add
label define pr05a_occ2000m_lbl 742 `"Telecommunications line installers and repairers"', add
label define pr05a_occ2000m_lbl 743 `"Precision instrument and equipment repairers"', add
label define pr05a_occ2000m_lbl 751 `"Coin, vending, and amusement machine servicers and repairers"', add
label define pr05a_occ2000m_lbl 752 `"Commercial divers"', add
label define pr05a_occ2000m_lbl 754 `"Locksmiths and safe repairers"', add
label define pr05a_occ2000m_lbl 755 `"Manufactured building and mobile home installers"', add
label define pr05a_occ2000m_lbl 756 `"Riggers"', add
label define pr05a_occ2000m_lbl 760 `"Signal and track switch repairers"', add
label define pr05a_occ2000m_lbl 761 `"Helpers--installation, maintenance, and repair workers"', add
label define pr05a_occ2000m_lbl 762 `"Other installation, maintenance, and repair workers"', add
label define pr05a_occ2000m_lbl 770 `"First-line supervisors/managers of production and operating workers"', add
label define pr05a_occ2000m_lbl 771 `"Aircraft structure, surfaces, rigging, and systems assemblers"', add
label define pr05a_occ2000m_lbl 772 `"Electrical, electronics, and electromechanical assemblers"', add
label define pr05a_occ2000m_lbl 773 `"Engine and other machine assemblers"', add
label define pr05a_occ2000m_lbl 774 `"Structural metal fabricators and fitters"', add
label define pr05a_occ2000m_lbl 775 `"Miscellaneous assemblers and fabricators"', add
label define pr05a_occ2000m_lbl 780 `"Bakers"', add
label define pr05a_occ2000m_lbl 781 `"Butchers and other meat, poultry, and fish processing workers"', add
label define pr05a_occ2000m_lbl 783 `"Food and tobacco roasting, baking, and drying machine operators and tenders"', add
label define pr05a_occ2000m_lbl 784 `"Food batchmakers"', add
label define pr05a_occ2000m_lbl 785 `"Food cooking machine operators and tenders"', add
label define pr05a_occ2000m_lbl 790 `"Computer control programmers and operators"', add
label define pr05a_occ2000m_lbl 792 `"Extruding and drawing machine setters, operators, and tenders, metal and plastic"', add
label define pr05a_occ2000m_lbl 793 `"Forging machine setters, operators, and tenders, metal and plastic"', add
label define pr05a_occ2000m_lbl 794 `"Rolling machine setters, operators, and tenders, metal and plastic"', add
label define pr05a_occ2000m_lbl 795 `"Cutting, punching, and press machine setters, operators, and tenders, metal and plastic"', add
label define pr05a_occ2000m_lbl 796 `"Drilling and boring machine tool setters, operators, and tenders, metal and plastic"', add
label define pr05a_occ2000m_lbl 800 `"Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders, metal and plastic"', add
label define pr05a_occ2000m_lbl 801 `"Lathe and turning machine tool setters, operators, and tenders, metal and plastic"', add
label define pr05a_occ2000m_lbl 802 `"Milling and planning machine setters, operators, and tenders, metal and plastic"', add
label define pr05a_occ2000m_lbl 803 `"Machinists"', add
label define pr05a_occ2000m_lbl 804 `"Metal furnace and kiln operators and tenders"', add
label define pr05a_occ2000m_lbl 806 `"Model makers and patternmakers, metal and plastic"', add
label define pr05a_occ2000m_lbl 810 `"Molders and molding machine setters, operators, and tenders, metal and plastic"', add
label define pr05a_occ2000m_lbl 812 `"Multiple machine tool setters, operators, and tenders, metal and plastic"', add
label define pr05a_occ2000m_lbl 813 `"Tool and die makers"', add
label define pr05a_occ2000m_lbl 814 `"Welding, soldering, and brazing workers"', add
label define pr05a_occ2000m_lbl 815 `"Heat treating equipment setters, operators, and tenders, metal and plastic"', add
label define pr05a_occ2000m_lbl 816 `"Lay-out workers, metal and plastic"', add
label define pr05a_occ2000m_lbl 820 `"Plating and coating machine setters, operators, and tenders, metal and plastic"', add
label define pr05a_occ2000m_lbl 821 `"Tool grinders, filers, and sharpeners"', add
label define pr05a_occ2000m_lbl 822 `"Metalworkers and plastic workers, all other"', add
label define pr05a_occ2000m_lbl 823 `"Bookbinders and bindery workers"', add
label define pr05a_occ2000m_lbl 824 `"Job printers"', add
label define pr05a_occ2000m_lbl 825 `"Prepress technicians and workers"', add
label define pr05a_occ2000m_lbl 826 `"Printing machine operators"', add
label define pr05a_occ2000m_lbl 830 `"Laundry and dry-cleaning workers"', add
label define pr05a_occ2000m_lbl 831 `"Pressers, textile, garment, and related materials"', add
label define pr05a_occ2000m_lbl 832 `"Sewing machine operators"', add
label define pr05a_occ2000m_lbl 833 `"Shoe and leather workers and repairers"', add
label define pr05a_occ2000m_lbl 834 `"Shoe machine operators and tenders"', add
label define pr05a_occ2000m_lbl 835 `"Tailors, dressmakers, and sewers"', add
label define pr05a_occ2000m_lbl 836 `"Textile bleaching and dyeing machine operators and tenders"', add
label define pr05a_occ2000m_lbl 840 `"Textile cutting machine setters, operators, and tenders"', add
label define pr05a_occ2000m_lbl 841 `"Textile knitting and weaving machine setters, operators, and tenders"', add
label define pr05a_occ2000m_lbl 842 `"Textile winding, twisting, and drawing out machine setters, operators, and tenders"', add
label define pr05a_occ2000m_lbl 843 `"Extruding and forming machine setters, operators, and tenders, synthetic and glass fibers"', add
label define pr05a_occ2000m_lbl 844 `"Fabric and apparel patternmakers"', add
label define pr05a_occ2000m_lbl 845 `"Upholsterers"', add
label define pr05a_occ2000m_lbl 846 `"Textile, apparel, and furnishings workers, all other"', add
label define pr05a_occ2000m_lbl 850 `"Cabinetmakers and bench carpenters"', add
label define pr05a_occ2000m_lbl 851 `"Furniture finishers"', add
label define pr05a_occ2000m_lbl 852 `"Model makers and patternmakers, wood"', add
label define pr05a_occ2000m_lbl 853 `"Sawing machine setters, operators, and tenders, wood"', add
label define pr05a_occ2000m_lbl 854 `"Woodworking machine setters, operators, and tenders, except sawing"', add
label define pr05a_occ2000m_lbl 855 `"Woodworkers, all other"', add
label define pr05a_occ2000m_lbl 860 `"Power plant operators, distributors, and dispatchers"', add
label define pr05a_occ2000m_lbl 861 `"Stationary engineers and boiler operators"', add
label define pr05a_occ2000m_lbl 862 `"Water and liquid waste treatment plant and system operators"', add
label define pr05a_occ2000m_lbl 863 `"Miscellaneous plant and system operators"', add
label define pr05a_occ2000m_lbl 864 `"Chemical processing machine setters, operators, and tenders"', add
label define pr05a_occ2000m_lbl 865 `"Crushing, grinding, polishing, mixing, and blending workers"', add
label define pr05a_occ2000m_lbl 871 `"Cutting workers"', add
label define pr05a_occ2000m_lbl 872 `"Extruding, forming, pressing, and compacting machine setters, operators, and tenders"', add
label define pr05a_occ2000m_lbl 873 `"Furnace, kiln, oven, drier, and kettle operators and tenders"', add
label define pr05a_occ2000m_lbl 874 `"Inspectors, testers, sorters, samplers, and weighers"', add
label define pr05a_occ2000m_lbl 875 `"Jewelers and precious stone and metal workers"', add
label define pr05a_occ2000m_lbl 876 `"Medical, dental, and ophthalmic laboratory technicians"', add
label define pr05a_occ2000m_lbl 880 `"Packaging and filling machine operators and tenders"', add
label define pr05a_occ2000m_lbl 881 `"Painting workers"', add
label define pr05a_occ2000m_lbl 883 `"Photographic process workers and processing machine operators"', add
label define pr05a_occ2000m_lbl 884 `"Semiconductor processors"', add
label define pr05a_occ2000m_lbl 885 `"Cementing and gluing machine operators and tenders"', add
label define pr05a_occ2000m_lbl 886 `"Cleaning, washing, and metal pickling equipment operators and tenders"', add
label define pr05a_occ2000m_lbl 890 `"Cooling and freezing equipment operators and tenders"', add
label define pr05a_occ2000m_lbl 891 `"Etchers and engravers"', add
label define pr05a_occ2000m_lbl 892 `"Molders, shapers, and casters, except metal and plastic"', add
label define pr05a_occ2000m_lbl 893 `"Paper goods machine setters, operators, and tenders"', add
label define pr05a_occ2000m_lbl 894 `"Tire builders"', add
label define pr05a_occ2000m_lbl 895 `"Helpers--production workers"', add
label define pr05a_occ2000m_lbl 896 `"Production workers, all other"', add
label define pr05a_occ2000m_lbl 900 `"Supervisors, transportation and material moving workers"', add
label define pr05a_occ2000m_lbl 903 `"Aircraft pilots and flight engineers"', add
label define pr05a_occ2000m_lbl 904 `"Air traffic controllers and airfield operations specialists"', add
label define pr05a_occ2000m_lbl 911 `"Ambulance drivers and attendants, except emergency medical technicians"', add
label define pr05a_occ2000m_lbl 912 `"Bus drivers"', add
label define pr05a_occ2000m_lbl 913 `"Driver/sales workers and truck drivers"', add
label define pr05a_occ2000m_lbl 914 `"Taxi drivers and chauffeurs"', add
label define pr05a_occ2000m_lbl 915 `"Motor vehicle operators, all other"', add
label define pr05a_occ2000m_lbl 920 `"Locomotive engineers and operators"', add
label define pr05a_occ2000m_lbl 923 `"Railroad brake, signal, and switch operators"', add
label define pr05a_occ2000m_lbl 924 `"Railroad conductors and yardmasters"', add
label define pr05a_occ2000m_lbl 926 `"Subway, streetcar, and other rail transportation workers"', add
label define pr05a_occ2000m_lbl 930 `"Sailors and marine oilers"', add
label define pr05a_occ2000m_lbl 931 `"Ship and boat captains and operators"', add
label define pr05a_occ2000m_lbl 933 `"Ship engineers"', add
label define pr05a_occ2000m_lbl 934 `"Bridge and lock tenders"', add
label define pr05a_occ2000m_lbl 935 `"Parking lot attendants"', add
label define pr05a_occ2000m_lbl 936 `"Service station attendants"', add
label define pr05a_occ2000m_lbl 941 `"Transportation inspectors"', add
label define pr05a_occ2000m_lbl 942 `"Other transportation workers"', add
label define pr05a_occ2000m_lbl 950 `"Conveyor operators and tenders"', add
label define pr05a_occ2000m_lbl 951 `"Crane and tower operators"', add
label define pr05a_occ2000m_lbl 952 `"Dredge, excavating, and loading machine operators"', add
label define pr05a_occ2000m_lbl 956 `"Hoist and winch operators"', add
label define pr05a_occ2000m_lbl 960 `"Industrial truck and tractor operators"', add
label define pr05a_occ2000m_lbl 961 `"Cleaners of vehicles and equipment"', add
label define pr05a_occ2000m_lbl 962 `"Laborers and freight, stock, and material movers, hand"', add
label define pr05a_occ2000m_lbl 963 `"Machine feeders and offbearers"', add
label define pr05a_occ2000m_lbl 964 `"Packers and packagers, hand"', add
label define pr05a_occ2000m_lbl 965 `"Pumping station operators"', add
label define pr05a_occ2000m_lbl 972 `"Refuse and recyclable material collectors"', add
label define pr05a_occ2000m_lbl 973 `"Shuttle car operators"', add
label define pr05a_occ2000m_lbl 974 `"Tank car, truck, and ship loaders"', add
label define pr05a_occ2000m_lbl 975 `"Material moving workers, all other"', add
label define pr05a_occ2000m_lbl 980 `"Military officer special and tactical operations leaders/managers"', add
label define pr05a_occ2000m_lbl 981 `"First-line enlisted military supervisors/managers"', add
label define pr05a_occ2000m_lbl 982 `"Military enlisted tactical operations and air/weapons specialists and crew members"', add
label define pr05a_occ2000m_lbl 983 `"Military, rank not specified"', add
label define pr05a_occ2000m_lbl 992 `"Unemployed, not classified by occupation"', add
label define pr05a_occ2000m_lbl 998 `"Nonclassifiable"', add
label define pr05a_occ2000m_lbl 999 `"Occupation illegible/missing/unknown"', add
label values pr05a_occ2000m pr05a_occ2000m_lbl

label define pr05a_ind2000m_lbl 000 `"NIU (not in universe)"'
label define pr05a_ind2000m_lbl 017 `"Crop production"', add
label define pr05a_ind2000m_lbl 018 `"Animal production"', add
label define pr05a_ind2000m_lbl 019 `"Forestry except logging"', add
label define pr05a_ind2000m_lbl 027 `"Logging"', add
label define pr05a_ind2000m_lbl 028 `"Fishing, hunting, and trapping"', add
label define pr05a_ind2000m_lbl 029 `"Support activities for agriculture and forestry"', add
label define pr05a_ind2000m_lbl 037 `"Oil and gas extraction"', add
label define pr05a_ind2000m_lbl 038 `"Coal mining"', add
label define pr05a_ind2000m_lbl 039 `"Metal ore mining"', add
label define pr05a_ind2000m_lbl 047 `"Nonmetallic mineral mining and quarrying"', add
label define pr05a_ind2000m_lbl 048 `"Not specified type of mining"', add
label define pr05a_ind2000m_lbl 049 `"Support activities for mining"', add
label define pr05a_ind2000m_lbl 077 `"Construction"', add
label define pr05a_ind2000m_lbl 107 `"Animal food, grain, and oilseed milling"', add
label define pr05a_ind2000m_lbl 108 `"Sugar and confectionery products"', add
label define pr05a_ind2000m_lbl 109 `"Fruit and vegetable preserving and specialty food manufacturing"', add
label define pr05a_ind2000m_lbl 117 `"Dairy product manufacturing"', add
label define pr05a_ind2000m_lbl 118 `"Animal slaughtering and processing"', add
label define pr05a_ind2000m_lbl 119 `"Retail bakeries"', add
label define pr05a_ind2000m_lbl 127 `"Bakeries, except retail"', add
label define pr05a_ind2000m_lbl 128 `"Seafood and other miscellaneous foods, n.e.c."', add
label define pr05a_ind2000m_lbl 129 `"Not specified food industries"', add
label define pr05a_ind2000m_lbl 137 `"Beverage manufacturing"', add
label define pr05a_ind2000m_lbl 139 `"Tobacco manufacturing"', add
label define pr05a_ind2000m_lbl 147 `"Fiber, yarn, and thread mills"', add
label define pr05a_ind2000m_lbl 148 `"Fabric mills, except knitting"', add
label define pr05a_ind2000m_lbl 149 `"Textile and fabric finishing and coating mills"', add
label define pr05a_ind2000m_lbl 157 `"Carpets and rugs manufacturing"', add
label define pr05a_ind2000m_lbl 159 `"Textile product mills except carpets and rugs"', add
label define pr05a_ind2000m_lbl 167 `"Knitting mills"', add
label define pr05a_ind2000m_lbl 168 `"Cut and sew apparel manufacturing"', add
label define pr05a_ind2000m_lbl 169 `"Apparel accessories and other apparel manufacturing"', add
label define pr05a_ind2000m_lbl 177 `"Footwear manufacturing"', add
label define pr05a_ind2000m_lbl 179 `"Leather tanning and products, except footwear manufacturing"', add
label define pr05a_ind2000m_lbl 187 `"Pulp, paper, and paperboard mills"', add
label define pr05a_ind2000m_lbl 188 `"Paperboard containers and boxes"', add
label define pr05a_ind2000m_lbl 189 `"Miscellaneous paper and pulp products"', add
label define pr05a_ind2000m_lbl 199 `"Printing and related support activities"', add
label define pr05a_ind2000m_lbl 207 `"Petroleum refining"', add
label define pr05a_ind2000m_lbl 209 `"Miscellaneous petroleum and coal products"', add
label define pr05a_ind2000m_lbl 217 `"Resin, synthetic rubber and fibers, and filaments manufacturing"', add
label define pr05a_ind2000m_lbl 218 `"Agricultural chemical manufacturing"', add
label define pr05a_ind2000m_lbl 219 `"Pharmaceutical and medicine manufacturing"', add
label define pr05a_ind2000m_lbl 227 `"Paint, coating, and adhesives manufacturing"', add
label define pr05a_ind2000m_lbl 228 `"Soap, cleaning compound, and cosmetic manufacturing"', add
label define pr05a_ind2000m_lbl 229 `"Industrial and miscellaneous chemicals"', add
label define pr05a_ind2000m_lbl 237 `"Plastics product manufacturing"', add
label define pr05a_ind2000m_lbl 238 `"Tire manufacturing"', add
label define pr05a_ind2000m_lbl 239 `"Rubber products, except tires, manufacturing"', add
label define pr05a_ind2000m_lbl 247 `"Pottery, ceramics, and related products manufacturing"', add
label define pr05a_ind2000m_lbl 248 `"Structural clay product manufacturing"', add
label define pr05a_ind2000m_lbl 249 `"Glass and glass product manufacturing"', add
label define pr05a_ind2000m_lbl 257 `"Cement, concrete, lime, and gypsum product manufacturing"', add
label define pr05a_ind2000m_lbl 259 `"Miscellaneous nonmetallic mineral product manufacturing"', add
label define pr05a_ind2000m_lbl 267 `"Iron and steel mills and steel product manufacturing"', add
label define pr05a_ind2000m_lbl 268 `"Aluminum production and processing"', add
label define pr05a_ind2000m_lbl 269 `"Nonferrous metal, except aluminum, production and processing"', add
label define pr05a_ind2000m_lbl 277 `"Foundries"', add
label define pr05a_ind2000m_lbl 278 `"Metal forgings and stampings"', add
label define pr05a_ind2000m_lbl 279 `"Cutlery and hand tool manufacturing"', add
label define pr05a_ind2000m_lbl 287 `"Structural metals and tank and shipping container manufacturing"', add
label define pr05a_ind2000m_lbl 288 `"Machine shops, turned product, screw, nut, and bolt manufacturing"', add
label define pr05a_ind2000m_lbl 289 `"Coating, engraving, heat treating and allied activities"', add
label define pr05a_ind2000m_lbl 297 `"Ordnance"', add
label define pr05a_ind2000m_lbl 298 `"Miscellaneous fabricated metal products manufacturing"', add
label define pr05a_ind2000m_lbl 299 `"Not specified metal industries"', add
label define pr05a_ind2000m_lbl 307 `"Agricultural implement manufacturing"', add
label define pr05a_ind2000m_lbl 308 `"Construction mining and oil field machinery manufacturing"', add
label define pr05a_ind2000m_lbl 309 `"Commercial and service industry machinery manufacturing"', add
label define pr05a_ind2000m_lbl 317 `"Metalworking machinery manufacturing"', add
label define pr05a_ind2000m_lbl 318 `"Engines, turbines, and power transmission equipment manufacturing"', add
label define pr05a_ind2000m_lbl 319 `"Machinery manufacturing, n.e.c."', add
label define pr05a_ind2000m_lbl 329 `"Not specified machinery manufacturing"', add
label define pr05a_ind2000m_lbl 336 `"Computer and peripheral equipment manufacturing"', add
label define pr05a_ind2000m_lbl 337 `"Communications, audio, and video equipment manufacturing"', add
label define pr05a_ind2000m_lbl 338 `"Navigational, measuring, electromedical, and control instruments manufacturing"', add
label define pr05a_ind2000m_lbl 339 `"Electronic component and product manufacturing, n.e.c."', add
label define pr05a_ind2000m_lbl 347 `"Household appliance manufacturing"', add
label define pr05a_ind2000m_lbl 349 `"Electrical lighting, equipment, and supplies manufacturing, n.e.c."', add
label define pr05a_ind2000m_lbl 357 `"Motor vehicles and motor vehicle equipment manufacturing"', add
label define pr05a_ind2000m_lbl 358 `"Aircraft and parts manufacturing"', add
label define pr05a_ind2000m_lbl 359 `"Aerospace product and parts manufacturing"', add
label define pr05a_ind2000m_lbl 367 `"Railroad rolling stock manufacturing"', add
label define pr05a_ind2000m_lbl 368 `"Ship and boat building"', add
label define pr05a_ind2000m_lbl 369 `"Other transportation equipment manufacturing"', add
label define pr05a_ind2000m_lbl 377 `"Sawmills and wood preservation"', add
label define pr05a_ind2000m_lbl 378 `"Veneer, plywood, and engineered wood products"', add
label define pr05a_ind2000m_lbl 379 `"Prefabricated wood buildings and mobile homes"', add
label define pr05a_ind2000m_lbl 387 `"Miscellaneous wood products"', add
label define pr05a_ind2000m_lbl 389 `"Furniture and related products manufacturing"', add
label define pr05a_ind2000m_lbl 396 `"Medical equipment and supplies manufacturing"', add
label define pr05a_ind2000m_lbl 397 `"Toys, amusement, and sporting goods manufacturing"', add
label define pr05a_ind2000m_lbl 398 `"Miscellaneous manufacturing, n.e.c."', add
label define pr05a_ind2000m_lbl 399 `"Not specified manufacturing industries"', add
label define pr05a_ind2000m_lbl 407 `"Motor vehicles, parts and supplies"', add
label define pr05a_ind2000m_lbl 408 `"Furniture and home furnishings"', add
label define pr05a_ind2000m_lbl 409 `"Lumber and other construction materials"', add
label define pr05a_ind2000m_lbl 417 `"Professional and commercial equipment and supplies"', add
label define pr05a_ind2000m_lbl 418 `"Metals and minerals, except petroleum"', add
label define pr05a_ind2000m_lbl 419 `"Electrical goods"', add
label define pr05a_ind2000m_lbl 426 `"Hardware, plumbing and heating equipment, and supplies"', add
label define pr05a_ind2000m_lbl 427 `"Machinery, equipment, and supplies"', add
label define pr05a_ind2000m_lbl 428 `"Recyclable material"', add
label define pr05a_ind2000m_lbl 429 `"Miscellaneous durable goods"', add
label define pr05a_ind2000m_lbl 437 `"Paper and paper product wholesalers"', add
label define pr05a_ind2000m_lbl 438 `"Drugs, sundries, and chemical and allied product wholesalers"', add
label define pr05a_ind2000m_lbl 439 `"Apparel, fabrics, and notions wholesalers"', add
label define pr05a_ind2000m_lbl 447 `"Groceries and related product wholesalers"', add
label define pr05a_ind2000m_lbl 448 `"Farm product raw material wholesalers"', add
label define pr05a_ind2000m_lbl 449 `"Petroleum and petroleum product wholesalers"', add
label define pr05a_ind2000m_lbl 456 `"Alcoholic beverage wholesalers"', add
label define pr05a_ind2000m_lbl 457 `"Farm supplies wholesalers"', add
label define pr05a_ind2000m_lbl 458 `"Miscellaneous nondurable goods wholesalers"', add
label define pr05a_ind2000m_lbl 459 `"Not specified wholesale trade"', add
label define pr05a_ind2000m_lbl 467 `"Automobile dealers"', add
label define pr05a_ind2000m_lbl 468 `"Other motor vehicle dealers"', add
label define pr05a_ind2000m_lbl 469 `"Auto parts, accessories, and tire stores"', add
label define pr05a_ind2000m_lbl 477 `"Furniture and home furnishings stores"', add
label define pr05a_ind2000m_lbl 478 `"Household appliance stores"', add
label define pr05a_ind2000m_lbl 479 `"Radio, TV, and computer stores"', add
label define pr05a_ind2000m_lbl 487 `"Building material and supplies dealers"', add
label define pr05a_ind2000m_lbl 488 `"Hardware stores"', add
label define pr05a_ind2000m_lbl 489 `"Lawn and garden equipment and supplies stores"', add
label define pr05a_ind2000m_lbl 497 `"Grocery stores"', add
label define pr05a_ind2000m_lbl 498 `"Specialty food stores"', add
label define pr05a_ind2000m_lbl 499 `"Beer, wine, and liquor stores"', add
label define pr05a_ind2000m_lbl 507 `"Pharmacies and drug stores"', add
label define pr05a_ind2000m_lbl 508 `"Health and personal care, except drug stores"', add
label define pr05a_ind2000m_lbl 509 `"Gasoline stations"', add
label define pr05a_ind2000m_lbl 517 `"Clothing and accessories, except shoe stores"', add
label define pr05a_ind2000m_lbl 518 `"Shoe stores"', add
label define pr05a_ind2000m_lbl 519 `"Jewelry, luggage, and leather goods stores"', add
label define pr05a_ind2000m_lbl 527 `"Sporting goods, camera, and hobby and toy stores"', add
label define pr05a_ind2000m_lbl 528 `"Sewing, needlework and piece goods stores"', add
label define pr05a_ind2000m_lbl 529 `"Music stores"', add
label define pr05a_ind2000m_lbl 537 `"Book stores and news dealers"', add
label define pr05a_ind2000m_lbl 538 `"Department stores"', add
label define pr05a_ind2000m_lbl 539 `"Miscellaneous general merchandise stores"', add
label define pr05a_ind2000m_lbl 547 `"Retail florists"', add
label define pr05a_ind2000m_lbl 548 `"Office supplies and stationary stores"', add
label define pr05a_ind2000m_lbl 549 `"Used merchandise stores"', add
label define pr05a_ind2000m_lbl 557 `"Gift, novelty, and souvenir shops"', add
label define pr05a_ind2000m_lbl 558 `"Miscellaneous retail stores"', add
label define pr05a_ind2000m_lbl 559 `"Electronic shopping and mail-order houses"', add
label define pr05a_ind2000m_lbl 567 `"Vending machine operators"', add
label define pr05a_ind2000m_lbl 568 `"Fuel dealers"', add
label define pr05a_ind2000m_lbl 569 `"Other direct selling establishments"', add
label define pr05a_ind2000m_lbl 579 `"Not specified retail trade"', add
label define pr05a_ind2000m_lbl 607 `"Air transportation"', add
label define pr05a_ind2000m_lbl 608 `"Rail transportation"', add
label define pr05a_ind2000m_lbl 609 `"Water transportation"', add
label define pr05a_ind2000m_lbl 617 `"Truck transportation"', add
label define pr05a_ind2000m_lbl 618 `"Bus service and urban transit"', add
label define pr05a_ind2000m_lbl 619 `"Taxi and limousine service"', add
label define pr05a_ind2000m_lbl 627 `"Pipeline transportation"', add
label define pr05a_ind2000m_lbl 628 `"Scenic and sightseeing transportation"', add
label define pr05a_ind2000m_lbl 629 `"Services incidental to transportation"', add
label define pr05a_ind2000m_lbl 637 `"Postal Service"', add
label define pr05a_ind2000m_lbl 638 `"Couriers and messengers"', add
label define pr05a_ind2000m_lbl 639 `"Warehousing and storage"', add
label define pr05a_ind2000m_lbl 057 `"Electric power generation, transmission and distribution"', add
label define pr05a_ind2000m_lbl 058 `"Natural gas distribution"', add
label define pr05a_ind2000m_lbl 059 `"Electric and gas, and other combinations"', add
label define pr05a_ind2000m_lbl 067 `"Water, steam, air conditioning, and irrigation systems"', add
label define pr05a_ind2000m_lbl 068 `"Sewage treatment facilities"', add
label define pr05a_ind2000m_lbl 069 `"Not specified utilities"', add
label define pr05a_ind2000m_lbl 647 `"Newspaper publishers"', add
label define pr05a_ind2000m_lbl 648 `"Publishing, except newspapers and software"', add
label define pr05a_ind2000m_lbl 649 `"Software publishing"', add
label define pr05a_ind2000m_lbl 657 `"Motion pictures and video industries"', add
label define pr05a_ind2000m_lbl 659 `"Sound recording industries"', add
label define pr05a_ind2000m_lbl 667 `"Radio and television broadcasting and cable"', add
label define pr05a_ind2000m_lbl 668 `"Wired telecommunications carriers"', add
label define pr05a_ind2000m_lbl 669 `"Other telecommunication services"', add
label define pr05a_ind2000m_lbl 677 `"Libraries and archives"', add
label define pr05a_ind2000m_lbl 678 `"Other information services"', add
label define pr05a_ind2000m_lbl 679 `"Data processing services"', add
label define pr05a_ind2000m_lbl 687 `"Banking and related activities"', add
label define pr05a_ind2000m_lbl 688 `"Savings institutions, including credit unions"', add
label define pr05a_ind2000m_lbl 689 `"Non-depository credit and related activities"', add
label define pr05a_ind2000m_lbl 697 `"Securities, commodities, funds, trusts, and other financial investments"', add
label define pr05a_ind2000m_lbl 699 `"Insurance carriers and related activities"', add
label define pr05a_ind2000m_lbl 707 `"Real estate"', add
label define pr05a_ind2000m_lbl 708 `"Automotive equipment rental and leasing"', add
label define pr05a_ind2000m_lbl 717 `"Video tape and disk rental"', add
label define pr05a_ind2000m_lbl 718 `"Other consumer goods rental"', add
label define pr05a_ind2000m_lbl 719 `"Commercial, industrial, and other intangible assets rental and leasing"', add
label define pr05a_ind2000m_lbl 727 `"Legal services"', add
label define pr05a_ind2000m_lbl 728 `"Accounting, tax preparation, bookkeeping and payroll services"', add
label define pr05a_ind2000m_lbl 729 `"Architectural, engineering, and related services"', add
label define pr05a_ind2000m_lbl 737 `"Specialized design services"', add
label define pr05a_ind2000m_lbl 738 `"Computer systems design and related services"', add
label define pr05a_ind2000m_lbl 739 `"Management, scientific and technical consulting services"', add
label define pr05a_ind2000m_lbl 746 `"Scientific research and development services"', add
label define pr05a_ind2000m_lbl 747 `"Advertising and related services"', add
label define pr05a_ind2000m_lbl 748 `"Veterinary services"', add
label define pr05a_ind2000m_lbl 749 `"Other professional, scientific and technical services"', add
label define pr05a_ind2000m_lbl 757 `"Management of companies and enterprises"', add
label define pr05a_ind2000m_lbl 758 `"Employment services"', add
label define pr05a_ind2000m_lbl 759 `"Business support services"', add
label define pr05a_ind2000m_lbl 767 `"Travel arrangements and reservation services"', add
label define pr05a_ind2000m_lbl 768 `"Investigation and security services"', add
label define pr05a_ind2000m_lbl 769 `"Services to buildings and dwellings"', add
label define pr05a_ind2000m_lbl 777 `"Landscaping services"', add
label define pr05a_ind2000m_lbl 778 `"Other administrative, and other support services"', add
label define pr05a_ind2000m_lbl 779 `"Waste management and remediation services"', add
label define pr05a_ind2000m_lbl 786 `"Elementary and secondary schools"', add
label define pr05a_ind2000m_lbl 787 `"Colleges and universities, including junior colleges"', add
label define pr05a_ind2000m_lbl 788 `"Business, technical, and trade schools and training"', add
label define pr05a_ind2000m_lbl 789 `"Other schools, instruction, and educational services"', add
label define pr05a_ind2000m_lbl 797 `"Offices of physicians"', add
label define pr05a_ind2000m_lbl 798 `"Offices of dentists"', add
label define pr05a_ind2000m_lbl 799 `"Office of chiropractors"', add
label define pr05a_ind2000m_lbl 807 `"Offices of optometrists"', add
label define pr05a_ind2000m_lbl 808 `"Offices of other health practitioners"', add
label define pr05a_ind2000m_lbl 809 `"Outpatient care centers"', add
label define pr05a_ind2000m_lbl 817 `"Home health care services"', add
label define pr05a_ind2000m_lbl 818 `"Other health care services"', add
label define pr05a_ind2000m_lbl 819 `"Hospitals"', add
label define pr05a_ind2000m_lbl 827 `"Nursing care facilities"', add
label define pr05a_ind2000m_lbl 829 `"Residential care facilities, without nursing"', add
label define pr05a_ind2000m_lbl 837 `"Individual and family services"', add
label define pr05a_ind2000m_lbl 838 `"Community food and housing, and emergency services"', add
label define pr05a_ind2000m_lbl 839 `"Vocational rehabilitation services"', add
label define pr05a_ind2000m_lbl 847 `"Child day care services"', add
label define pr05a_ind2000m_lbl 856 `"Independent artists, performing arts, spectator sports, and related industries"', add
label define pr05a_ind2000m_lbl 857 `"Museums, art galleries, historical sites, and similar institutions"', add
label define pr05a_ind2000m_lbl 858 `"Bowling centers"', add
label define pr05a_ind2000m_lbl 859 `"Other amusement, gambling, and recreation industries"', add
label define pr05a_ind2000m_lbl 866 `"Traveler accommodation"', add
label define pr05a_ind2000m_lbl 867 `"Recreational vehicle parks and camps, and rooming and boarding houses"', add
label define pr05a_ind2000m_lbl 868 `"Restaurants and other food services"', add
label define pr05a_ind2000m_lbl 869 `"Drinking places, alcoholic beverages"', add
label define pr05a_ind2000m_lbl 877 `"Automotive repair and maintenance"', add
label define pr05a_ind2000m_lbl 878 `"Car washes"', add
label define pr05a_ind2000m_lbl 879 `"Electronic and precision equipment repair and maintenance"', add
label define pr05a_ind2000m_lbl 887 `"Commercial and industrial machinery and equipment repair and maintenance"', add
label define pr05a_ind2000m_lbl 888 `"Personal and household goods repair and maintenance"', add
label define pr05a_ind2000m_lbl 889 `"Footwear and leather goods repair"', add
label define pr05a_ind2000m_lbl 897 `"Barber shops"', add
label define pr05a_ind2000m_lbl 898 `"Beauty salons"', add
label define pr05a_ind2000m_lbl 899 `"Nail salons and other personal care services"', add
label define pr05a_ind2000m_lbl 907 `"Dry cleaning and laundry services"', add
label define pr05a_ind2000m_lbl 908 `"Funeral homes, cemeteries and crematories"', add
label define pr05a_ind2000m_lbl 909 `"Other personal services"', add
label define pr05a_ind2000m_lbl 916 `"Religious organizations"', add
label define pr05a_ind2000m_lbl 917 `"Civic, social, advocacy organizations, and grantmaking and giving services"', add
label define pr05a_ind2000m_lbl 918 `"Labor unions"', add
label define pr05a_ind2000m_lbl 919 `"Business, professional, political, and similar organizations"', add
label define pr05a_ind2000m_lbl 929 `"Private households"', add
label define pr05a_ind2000m_lbl 937 `"Executive offices and legislative bodies"', add
label define pr05a_ind2000m_lbl 938 `"Public finance activities"', add
label define pr05a_ind2000m_lbl 939 `"Other general government and support"', add
label define pr05a_ind2000m_lbl 947 `"Justice, public order, and safety activities"', add
label define pr05a_ind2000m_lbl 948 `"Administration of human resource programs"', add
label define pr05a_ind2000m_lbl 949 `"Administration of environmental quality and housing programs"', add
label define pr05a_ind2000m_lbl 957 `"Administration of economic programs and space research"', add
label define pr05a_ind2000m_lbl 959 `"National security and international affairs"', add
label define pr05a_ind2000m_lbl 967 `"U.S. Army"', add
label define pr05a_ind2000m_lbl 968 `"U.S. Air Force"', add
label define pr05a_ind2000m_lbl 969 `"U.S. Navy"', add
label define pr05a_ind2000m_lbl 977 `"U.S. Marines"', add
label define pr05a_ind2000m_lbl 978 `"U.S. Coast Guard"', add
label define pr05a_ind2000m_lbl 979 `"U.S. Armed Forces, branch not specified"', add
label define pr05a_ind2000m_lbl 987 `"Military reserves or National Guard"', add
label define pr05a_ind2000m_lbl 992 `"Unemployed, with no work experience since 1995"', add
label define pr05a_ind2000m_lbl 999 `"Unknown"', add
label values pr05a_ind2000m pr05a_ind2000m_lbl

label define pr05a_ind1990_lbl 000 `"NIU (not in universe)"'
label define pr05a_ind1990_lbl 010 `"Agricultural production, crops"', add
label define pr05a_ind1990_lbl 011 `"Agricultural production, livestock"', add
label define pr05a_ind1990_lbl 012 `"Veterinary services"', add
label define pr05a_ind1990_lbl 020 `"Landscape and horticultural services"', add
label define pr05a_ind1990_lbl 030 `"Agricultural services, n.e.c."', add
label define pr05a_ind1990_lbl 031 `"Forestry"', add
label define pr05a_ind1990_lbl 032 `"Fishing, hunting, and trapping "', add
label define pr05a_ind1990_lbl 040 `"Metal mining"', add
label define pr05a_ind1990_lbl 041 `"Coal mining"', add
label define pr05a_ind1990_lbl 042 `"Oil and gas extraction"', add
label define pr05a_ind1990_lbl 050 `"Nonmetallic mining and quarrying, except fuels "', add
label define pr05a_ind1990_lbl 060 `"All construction "', add
label define pr05a_ind1990_lbl 100 `"Meat products"', add
label define pr05a_ind1990_lbl 101 `"Dairy products"', add
label define pr05a_ind1990_lbl 102 `"Canned, frozen, and preserved fruits and vegetables"', add
label define pr05a_ind1990_lbl 110 `"Grain mill products"', add
label define pr05a_ind1990_lbl 111 `"Bakery products"', add
label define pr05a_ind1990_lbl 112 `"Sugar and confectionery products"', add
label define pr05a_ind1990_lbl 120 `"Beverage industries"', add
label define pr05a_ind1990_lbl 121 `"Misc. food preparations and kindred products"', add
label define pr05a_ind1990_lbl 122 `"Food industries, n.s."', add
label define pr05a_ind1990_lbl 130 `"Tobacco manufactures"', add
label define pr05a_ind1990_lbl 132 `"Knitting mills"', add
label define pr05a_ind1990_lbl 140 `"Dyeing and finishing textiles, except wool and knit goods"', add
label define pr05a_ind1990_lbl 141 `"Carpets and rugs"', add
label define pr05a_ind1990_lbl 142 `"Yarn, thread, and fabric mills"', add
label define pr05a_ind1990_lbl 150 `"Miscellaneous textile mill products"', add
label define pr05a_ind1990_lbl 151 `"Apparel and accessories, except knit"', add
label define pr05a_ind1990_lbl 152 `"Miscellaneous fabricated textile products"', add
label define pr05a_ind1990_lbl 160 `"Pulp, paper, and paperboard mills"', add
label define pr05a_ind1990_lbl 161 `"Miscellaneous paper and pulp products"', add
label define pr05a_ind1990_lbl 162 `"Paperboard containers and boxes"', add
label define pr05a_ind1990_lbl 171 `"Newspaper publishing and printing"', add
label define pr05a_ind1990_lbl 172 `"Printing, publishing, and allied industries, except newspapers"', add
label define pr05a_ind1990_lbl 180 `"Plastics, synthetics, and resins"', add
label define pr05a_ind1990_lbl 181 `"Drugs"', add
label define pr05a_ind1990_lbl 182 `"Soaps and cosmetics"', add
label define pr05a_ind1990_lbl 190 `"Paints, varnishes, and related products"', add
label define pr05a_ind1990_lbl 191 `"Agricultural chemicals"', add
label define pr05a_ind1990_lbl 192 `"Industrial and miscellaneous chemicals"', add
label define pr05a_ind1990_lbl 200 `"Petroleum refining"', add
label define pr05a_ind1990_lbl 201 `"Miscellaneous petroleum and coal products"', add
label define pr05a_ind1990_lbl 210 `"Tires and inner tubes"', add
label define pr05a_ind1990_lbl 211 `"Other rubber products, and plastics footwear and belting"', add
label define pr05a_ind1990_lbl 212 `"Miscellaneous plastics products"', add
label define pr05a_ind1990_lbl 220 `"Leather tanning and finishing"', add
label define pr05a_ind1990_lbl 221 `"Footwear, except rubber and plastic"', add
label define pr05a_ind1990_lbl 222 `"Leather products, except footwear"', add
label define pr05a_ind1990_lbl 230 `"Logging"', add
label define pr05a_ind1990_lbl 231 `"Sawmills, planning mills, and millwork"', add
label define pr05a_ind1990_lbl 232 `"Wood buildings and mobile homes"', add
label define pr05a_ind1990_lbl 241 `"Miscellaneous wood products"', add
label define pr05a_ind1990_lbl 242 `"Furniture and fixtures"', add
label define pr05a_ind1990_lbl 250 `"Glass and glass products"', add
label define pr05a_ind1990_lbl 251 `"Cement, concrete, gypsum, and plaster products"', add
label define pr05a_ind1990_lbl 252 `"Structural clay products"', add
label define pr05a_ind1990_lbl 261 `"Pottery and related products"', add
label define pr05a_ind1990_lbl 262 `"Misc. nonmetallic mineral and stone products"', add
label define pr05a_ind1990_lbl 270 `"Blast furnaces, steelworks, rolling and finishing mills"', add
label define pr05a_ind1990_lbl 271 `"Iron and steel foundries"', add
label define pr05a_ind1990_lbl 272 `"Primary aluminum industries"', add
label define pr05a_ind1990_lbl 280 `"Other primary metal industries"', add
label define pr05a_ind1990_lbl 281 `"Cutlery, handtools, and general hardware"', add
label define pr05a_ind1990_lbl 282 `"Fabricated structural metal products"', add
label define pr05a_ind1990_lbl 290 `"Screw machine products"', add
label define pr05a_ind1990_lbl 291 `"Metal forgings and stampings"', add
label define pr05a_ind1990_lbl 292 `"Ordnance"', add
label define pr05a_ind1990_lbl 300 `"Miscellaneous fabricated metal products"', add
label define pr05a_ind1990_lbl 301 `"Metal industries, n.s."', add
label define pr05a_ind1990_lbl 310 `"Engines and turbines"', add
label define pr05a_ind1990_lbl 311 `"Farm machinery and equipment"', add
label define pr05a_ind1990_lbl 312 `"Construction and material handling machines"', add
label define pr05a_ind1990_lbl 320 `"Metalworking machinery"', add
label define pr05a_ind1990_lbl 321 `"Office and accounting machines"', add
label define pr05a_ind1990_lbl 322 `"Computers and related equipment"', add
label define pr05a_ind1990_lbl 331 `"Machinery, except electrical, n.e.c."', add
label define pr05a_ind1990_lbl 332 `"Machinery, n.s."', add
label define pr05a_ind1990_lbl 340 `"Household appliances"', add
label define pr05a_ind1990_lbl 341 `"Radio, TV, and communication equipment"', add
label define pr05a_ind1990_lbl 342 `"Electrical machinery, equipment, and supplies, n.e.c."', add
label define pr05a_ind1990_lbl 350 `"Electrical machinery, equipment, and supplies, n.s."', add
label define pr05a_ind1990_lbl 351 `"Motor vehicles and motor vehicle equipment"', add
label define pr05a_ind1990_lbl 352 `"Aircraft and parts"', add
label define pr05a_ind1990_lbl 360 `"Ship and boat building and repairing"', add
label define pr05a_ind1990_lbl 361 `"Railroad locomotives and equipment"', add
label define pr05a_ind1990_lbl 362 `"Guided missiles, space vehicles, and parts"', add
label define pr05a_ind1990_lbl 370 `"Cycles and miscellaneous transportation equipment"', add
label define pr05a_ind1990_lbl 371 `"Scientific and controlling instruments"', add
label define pr05a_ind1990_lbl 372 `"Medical, dental, and optical instruments and supplies"', add
label define pr05a_ind1990_lbl 380 `"Photographic equipment and supplies"', add
label define pr05a_ind1990_lbl 381 `"Watches, clocks, and clockwork operated devices"', add
label define pr05a_ind1990_lbl 390 `"Toys, amusement, and sporting goods"', add
label define pr05a_ind1990_lbl 391 `"Miscellaneous manufacturing industries"', add
label define pr05a_ind1990_lbl 392 `"Manufacturing industries, n.s. "', add
label define pr05a_ind1990_lbl 400 `"Railroads"', add
label define pr05a_ind1990_lbl 401 `"Bus service and urban transit"', add
label define pr05a_ind1990_lbl 402 `"Taxicab service"', add
label define pr05a_ind1990_lbl 410 `"Trucking service"', add
label define pr05a_ind1990_lbl 411 `"Warehousing and storage"', add
label define pr05a_ind1990_lbl 412 `"U.S. Postal Service"', add
label define pr05a_ind1990_lbl 420 `"Water transportation"', add
label define pr05a_ind1990_lbl 421 `"Air transportation"', add
label define pr05a_ind1990_lbl 422 `"Pipe lines, except natural gas"', add
label define pr05a_ind1990_lbl 432 `"Services incidental to transportation"', add
label define pr05a_ind1990_lbl 440 `"Radio and television broadcasting and cable"', add
label define pr05a_ind1990_lbl 441 `"Telephone communications"', add
label define pr05a_ind1990_lbl 442 `"Telegraph and miscellaneous communications services"', add
label define pr05a_ind1990_lbl 450 `"Electric light and power"', add
label define pr05a_ind1990_lbl 451 `"Gas and steam supply systems"', add
label define pr05a_ind1990_lbl 452 `"Electric and gas, and other combinations"', add
label define pr05a_ind1990_lbl 470 `"Water supply and irrigation"', add
label define pr05a_ind1990_lbl 471 `"Sanitary services"', add
label define pr05a_ind1990_lbl 472 `"Utilities, n.s. "', add
label define pr05a_ind1990_lbl 500 `"Motor vehicles and equipment"', add
label define pr05a_ind1990_lbl 501 `"Furniture and home furnishings"', add
label define pr05a_ind1990_lbl 502 `"Lumber and construction materials"', add
label define pr05a_ind1990_lbl 510 `"Professional and commercial equipment and supplies"', add
label define pr05a_ind1990_lbl 511 `"Metals and minerals, except petroleum"', add
label define pr05a_ind1990_lbl 512 `"Electrical goods"', add
label define pr05a_ind1990_lbl 521 `"Hardware, plumbing and heating supplies"', add
label define pr05a_ind1990_lbl 530 `"Machinery, equipment, and supplies"', add
label define pr05a_ind1990_lbl 531 `"Scrap and waste materials"', add
label define pr05a_ind1990_lbl 532 `"Miscellaneous wholesale, durable goods"', add
label define pr05a_ind1990_lbl 540 `"Paper and paper products"', add
label define pr05a_ind1990_lbl 541 `"Drugs, chemicals, and allied products"', add
label define pr05a_ind1990_lbl 542 `"Apparel, fabrics, and notions"', add
label define pr05a_ind1990_lbl 550 `"Groceries and related products"', add
label define pr05a_ind1990_lbl 551 `"Farm-product raw materials"', add
label define pr05a_ind1990_lbl 552 `"Petroleum products"', add
label define pr05a_ind1990_lbl 560 `"Alcoholic beverages"', add
label define pr05a_ind1990_lbl 561 `"Farm supplies"', add
label define pr05a_ind1990_lbl 562 `"Miscellaneous wholesale, nondurable goods"', add
label define pr05a_ind1990_lbl 571 `"Wholesale trade, n.s. "', add
label define pr05a_ind1990_lbl 580 `"Lumber and building material retailing"', add
label define pr05a_ind1990_lbl 581 `"Hardware stores"', add
label define pr05a_ind1990_lbl 582 `"Retail nurseries and garden stores"', add
label define pr05a_ind1990_lbl 590 `"Mobile home dealers"', add
label define pr05a_ind1990_lbl 591 `"Department stores"', add
label define pr05a_ind1990_lbl 592 `"Variety stores"', add
label define pr05a_ind1990_lbl 600 `"Miscellaneous general merchandise stores"', add
label define pr05a_ind1990_lbl 601 `"Grocery stores"', add
label define pr05a_ind1990_lbl 602 `"Dairy products stores"', add
label define pr05a_ind1990_lbl 610 `"Retail bakeries"', add
label define pr05a_ind1990_lbl 611 `"Food stores, n.e.c."', add
label define pr05a_ind1990_lbl 612 `"Motor vehicle dealers"', add
label define pr05a_ind1990_lbl 620 `"Auto and home supply stores"', add
label define pr05a_ind1990_lbl 621 `"Gasoline service stations"', add
label define pr05a_ind1990_lbl 622 `"Miscellaneous vehicle dealers"', add
label define pr05a_ind1990_lbl 623 `"Apparel and accessory stores, except shoe"', add
label define pr05a_ind1990_lbl 630 `"Shoe stores"', add
label define pr05a_ind1990_lbl 631 `"Furniture and home furnishings stores"', add
label define pr05a_ind1990_lbl 632 `"Household appliance stores"', add
label define pr05a_ind1990_lbl 633 `"Radio, TV, and computer stores"', add
label define pr05a_ind1990_lbl 640 `"Music stores"', add
label define pr05a_ind1990_lbl 641 `"Eating and drinking places"', add
label define pr05a_ind1990_lbl 642 `"Drug stores"', add
label define pr05a_ind1990_lbl 650 `"Liquor stores"', add
label define pr05a_ind1990_lbl 651 `"Sporting goods, bicycles, and hobby stores"', add
label define pr05a_ind1990_lbl 652 `"Book and stationery stores"', add
label define pr05a_ind1990_lbl 660 `"Jewelry stores"', add
label define pr05a_ind1990_lbl 661 `"Gift, novelty, and souvenir shops"', add
label define pr05a_ind1990_lbl 662 `"Sewing, needlework, and piece goods stores"', add
label define pr05a_ind1990_lbl 663 `"Catalog and mail order houses"', add
label define pr05a_ind1990_lbl 670 `"Vending machine operators"', add
label define pr05a_ind1990_lbl 671 `"Direct selling establishments"', add
label define pr05a_ind1990_lbl 672 `"Fuel dealers"', add
label define pr05a_ind1990_lbl 681 `"Retail florists"', add
label define pr05a_ind1990_lbl 682 `"Miscellaneous retail stores"', add
label define pr05a_ind1990_lbl 691 `"Retail trade, n.s. "', add
label define pr05a_ind1990_lbl 700 `"Banking"', add
label define pr05a_ind1990_lbl 701 `"Savings institutions, including credit unions"', add
label define pr05a_ind1990_lbl 702 `"Credit agencies, n.e.c."', add
label define pr05a_ind1990_lbl 710 `"Security, commodity brokerage, and investment companies"', add
label define pr05a_ind1990_lbl 711 `"Insurance"', add
label define pr05a_ind1990_lbl 712 `"Real estate, including real estate-insurance offices "', add
label define pr05a_ind1990_lbl 721 `"Advertising"', add
label define pr05a_ind1990_lbl 722 `"Services to dwellings and other buildings"', add
label define pr05a_ind1990_lbl 731 `"Personnel supply services"', add
label define pr05a_ind1990_lbl 732 `"Computer and data processing services"', add
label define pr05a_ind1990_lbl 740 `"Detective and protective services"', add
label define pr05a_ind1990_lbl 741 `"Business services, n.e.c."', add
label define pr05a_ind1990_lbl 742 `"Automotive rental and leasing, without drivers"', add
label define pr05a_ind1990_lbl 750 `"Automobile parking and carwashes"', add
label define pr05a_ind1990_lbl 751 `"Automotive repair and related services"', add
label define pr05a_ind1990_lbl 752 `"Electrical repair shops"', add
label define pr05a_ind1990_lbl 760 `"Miscellaneous repair services "', add
label define pr05a_ind1990_lbl 761 `"Private households"', add
label define pr05a_ind1990_lbl 762 `"Hotels and motels"', add
label define pr05a_ind1990_lbl 770 `"Lodging places, except hotels and motels"', add
label define pr05a_ind1990_lbl 771 `"Laundry, cleaning, and garment services"', add
label define pr05a_ind1990_lbl 772 `"Beauty shops"', add
label define pr05a_ind1990_lbl 780 `"Barber shops"', add
label define pr05a_ind1990_lbl 781 `"Funeral service and crematories"', add
label define pr05a_ind1990_lbl 782 `"Shoe repair shops"', add
label define pr05a_ind1990_lbl 790 `"Dressmaking shops"', add
label define pr05a_ind1990_lbl 791 `"Miscellaneous personal services "', add
label define pr05a_ind1990_lbl 800 `"Theaters and motion pictures"', add
label define pr05a_ind1990_lbl 801 `"Video tape rental"', add
label define pr05a_ind1990_lbl 802 `"Bowling centers"', add
label define pr05a_ind1990_lbl 810 `"Miscellaneous entertainment and recreation services "', add
label define pr05a_ind1990_lbl 812 `"Offices and clinics of physicians"', add
label define pr05a_ind1990_lbl 820 `"Offices and clinics of dentists"', add
label define pr05a_ind1990_lbl 821 `"Offices and clinics of chiropractors"', add
label define pr05a_ind1990_lbl 822 `"Offices and clinics of optometrists"', add
label define pr05a_ind1990_lbl 830 `"Offices and clinics of health practitioners, n.e.c."', add
label define pr05a_ind1990_lbl 831 `"Hospitals"', add
label define pr05a_ind1990_lbl 832 `"Nursing and personal care facilities"', add
label define pr05a_ind1990_lbl 840 `"Health services, n.e.c."', add
label define pr05a_ind1990_lbl 841 `"Legal services"', add
label define pr05a_ind1990_lbl 842 `"Elementary and secondary schools"', add
label define pr05a_ind1990_lbl 850 `"Colleges and universities"', add
label define pr05a_ind1990_lbl 851 `"Vocational schools"', add
label define pr05a_ind1990_lbl 852 `"Libraries"', add
label define pr05a_ind1990_lbl 860 `"Educational services, n.e.c."', add
label define pr05a_ind1990_lbl 861 `"Job training and vocational rehabilitation services"', add
label define pr05a_ind1990_lbl 862 `"Child day care services"', add
label define pr05a_ind1990_lbl 863 `"Family child care homes"', add
label define pr05a_ind1990_lbl 870 `"Residential care facilities, without nursing"', add
label define pr05a_ind1990_lbl 871 `"Social services, n.e.c."', add
label define pr05a_ind1990_lbl 872 `"Museums, art galleries, and zoos"', add
label define pr05a_ind1990_lbl 873 `"Labor unions"', add
label define pr05a_ind1990_lbl 880 `"Religious organizations"', add
label define pr05a_ind1990_lbl 881 `"Membership organizations, n.e.c."', add
label define pr05a_ind1990_lbl 882 `"Engineering, architectural, and surveying services"', add
label define pr05a_ind1990_lbl 890 `"Accounting, auditing, and bookkeeping services"', add
label define pr05a_ind1990_lbl 891 `"Research, development, and testing services"', add
label define pr05a_ind1990_lbl 892 `"Management and public relations services"', add
label define pr05a_ind1990_lbl 893 `"Miscellaneous professional and related services "', add
label define pr05a_ind1990_lbl 900 `"Executive and legislative offices"', add
label define pr05a_ind1990_lbl 901 `"General government, n.e.c."', add
label define pr05a_ind1990_lbl 910 `"Justice, public order, and safety"', add
label define pr05a_ind1990_lbl 921 `"Public finance, taxation, and monetary policy"', add
label define pr05a_ind1990_lbl 922 `"Administration of human resources programs"', add
label define pr05a_ind1990_lbl 930 `"Administration of environmental quality and housing programs"', add
label define pr05a_ind1990_lbl 931 `"Administration of economic programs"', add
label define pr05a_ind1990_lbl 932 `"National security and international affairs "', add
label define pr05a_ind1990_lbl 940 `"Army"', add
label define pr05a_ind1990_lbl 941 `"Air Force"', add
label define pr05a_ind1990_lbl 942 `"Navy"', add
label define pr05a_ind1990_lbl 950 `"Marines"', add
label define pr05a_ind1990_lbl 951 `"Coast Guard"', add
label define pr05a_ind1990_lbl 952 `"Armed Forces, branch not specified"', add
label define pr05a_ind1990_lbl 960 `"Military Reserves or National Guard "', add
label define pr05a_ind1990_lbl 992 `"Last worked 1984 or earlier"', add
label define pr05a_ind1990_lbl 999 `"Did not respond"', add
label values pr05a_ind1990 pr05a_ind1990_lbl

label define pr05a_racesing_lbl 0 `"0"'
label values pr05a_racesing pr05a_racesing_lbl

label define pr05a_occ1990_lbl 003 `"Legislators"'
label define pr05a_occ1990_lbl 004 `"Chief executives and public administrators"', add
label define pr05a_occ1990_lbl 007 `"Financial managers"', add
label define pr05a_occ1990_lbl 008 `"Human resources and labor relations managers"', add
label define pr05a_occ1990_lbl 013 `"Managers and specialists in marketing, advertising, and public relations"', add
label define pr05a_occ1990_lbl 014 `"Managers in education and related fields"', add
label define pr05a_occ1990_lbl 015 `"Managers of medicine and health occupations"', add
label define pr05a_occ1990_lbl 016 `"Postmasters and mail superintendents"', add
label define pr05a_occ1990_lbl 017 `"Managers of food-serving and lodging establishments"', add
label define pr05a_occ1990_lbl 018 `"Managers of properties and real estate"', add
label define pr05a_occ1990_lbl 019 `"Funeral directors"', add
label define pr05a_occ1990_lbl 021 `"Managers of service organizations, n.e.c."', add
label define pr05a_occ1990_lbl 022 `"Managers and administrators, n.e.c."', add
label define pr05a_occ1990_lbl 023 `"Accountants and auditors"', add
label define pr05a_occ1990_lbl 024 `"Insurance underwriters"', add
label define pr05a_occ1990_lbl 025 `"Other financial specialists"', add
label define pr05a_occ1990_lbl 026 `"Management analysts"', add
label define pr05a_occ1990_lbl 027 `"Personnel, HR, training, and labor relations specialists"', add
label define pr05a_occ1990_lbl 028 `"Purchasing agents and buyers, of farm products"', add
label define pr05a_occ1990_lbl 029 `"Buyers, wholesale and retail trade"', add
label define pr05a_occ1990_lbl 033 `"Purchasing managers, agents and buyers, n.e.c."', add
label define pr05a_occ1990_lbl 034 `"Business and promotion agents"', add
label define pr05a_occ1990_lbl 035 `"Construction inspectors"', add
label define pr05a_occ1990_lbl 036 `"Inspectors and compliance officers, outside construction"', add
label define pr05a_occ1990_lbl 037 `"Management support occupations"', add
label define pr05a_occ1990_lbl 043 `"Architects"', add
label define pr05a_occ1990_lbl 044 `"Aerospace engineer"', add
label define pr05a_occ1990_lbl 045 `"Metallurgical and materials engineers, variously phrased"', add
label define pr05a_occ1990_lbl 047 `"Petroleum, mining, and geological engineers"', add
label define pr05a_occ1990_lbl 048 `"Chemical engineers"', add
label define pr05a_occ1990_lbl 053 `"Civil engineers"', add
label define pr05a_occ1990_lbl 055 `"Electrical engineer"', add
label define pr05a_occ1990_lbl 056 `"Industrial engineers"', add
label define pr05a_occ1990_lbl 057 `"Mechanical engineers"', add
label define pr05a_occ1990_lbl 059 `"Not-elsewhere-classified engineers"', add
label define pr05a_occ1990_lbl 064 `"Computer systems analysts and computer scientists"', add
label define pr05a_occ1990_lbl 065 `"Operations and systems researchers and analysts"', add
label define pr05a_occ1990_lbl 066 `"Actuaries"', add
label define pr05a_occ1990_lbl 067 `"Statisticians"', add
label define pr05a_occ1990_lbl 068 `"Mathematicians and mathematical scientists"', add
label define pr05a_occ1990_lbl 069 `"Physicists and astronomers"', add
label define pr05a_occ1990_lbl 073 `"Chemists"', add
label define pr05a_occ1990_lbl 074 `"Atmospheric and space scientists"', add
label define pr05a_occ1990_lbl 075 `"Geologists"', add
label define pr05a_occ1990_lbl 076 `"Physical scientists, n.e.c."', add
label define pr05a_occ1990_lbl 077 `"Agricultural and food scientists"', add
label define pr05a_occ1990_lbl 078 `"Biological scientists"', add
label define pr05a_occ1990_lbl 079 `"Foresters and conservation scientists"', add
label define pr05a_occ1990_lbl 083 `"Medical scientists"', add
label define pr05a_occ1990_lbl 084 `"Physicians"', add
label define pr05a_occ1990_lbl 085 `"Dentists"', add
label define pr05a_occ1990_lbl 086 `"Veterinarians"', add
label define pr05a_occ1990_lbl 087 `"Optometrists"', add
label define pr05a_occ1990_lbl 088 `"Podiatrists"', add
label define pr05a_occ1990_lbl 089 `"Other health and therapy"', add
label define pr05a_occ1990_lbl 095 `"Registered nurses"', add
label define pr05a_occ1990_lbl 096 `"Pharmacists"', add
label define pr05a_occ1990_lbl 097 `"Dietitians and nutritionists"', add
label define pr05a_occ1990_lbl 098 `"Respiratory therapists"', add
label define pr05a_occ1990_lbl 099 `"Occupational therapists"', add
label define pr05a_occ1990_lbl 103 `"Physical therapists"', add
label define pr05a_occ1990_lbl 104 `"Speech therapists"', add
label define pr05a_occ1990_lbl 105 `"Therapists, n.e.c."', add
label define pr05a_occ1990_lbl 106 `"Physicians' assistants"', add
label define pr05a_occ1990_lbl 113 `"Earth, environmental, and marine science instructors"', add
label define pr05a_occ1990_lbl 114 `"Biological science instructors"', add
label define pr05a_occ1990_lbl 115 `"Chemistry instructors"', add
label define pr05a_occ1990_lbl 116 `"Physics instructors"', add
label define pr05a_occ1990_lbl 118 `"Psychology instructors"', add
label define pr05a_occ1990_lbl 119 `"Economics instructors"', add
label define pr05a_occ1990_lbl 123 `"History instructors"', add
label define pr05a_occ1990_lbl 125 `"Sociology instructors"', add
label define pr05a_occ1990_lbl 127 `"Engineering instructors"', add
label define pr05a_occ1990_lbl 128 `"Math instructors"', add
label define pr05a_occ1990_lbl 139 `"Education instructors"', add
label define pr05a_occ1990_lbl 145 `"Law instructors"', add
label define pr05a_occ1990_lbl 147 `"Theology instructors"', add
label define pr05a_occ1990_lbl 149 `"Home economics instructors"', add
label define pr05a_occ1990_lbl 150 `"Humanities profs/instructors, college, n.e.c."', add
label define pr05a_occ1990_lbl 154 `"Subject instructors (HS/college)"', add
label define pr05a_occ1990_lbl 155 `"Kindergarten and earlier school teachers"', add
label define pr05a_occ1990_lbl 156 `"Primary school teachers"', add
label define pr05a_occ1990_lbl 157 `"Secondary school teachers"', add
label define pr05a_occ1990_lbl 158 `"Special education teachers"', add
label define pr05a_occ1990_lbl 159 `"Teachers , n.e.c."', add
label define pr05a_occ1990_lbl 163 `"Vocational and educational counselors"', add
label define pr05a_occ1990_lbl 164 `"Librarians"', add
label define pr05a_occ1990_lbl 165 `"Archivists and curators"', add
label define pr05a_occ1990_lbl 166 `"Economists, market researchers, and survey researchers"', add
label define pr05a_occ1990_lbl 167 `"Psychologists"', add
label define pr05a_occ1990_lbl 168 `"Sociologists"', add
label define pr05a_occ1990_lbl 169 `"Social scientists, n.e.c."', add
label define pr05a_occ1990_lbl 173 `"Urban and regional planners"', add
label define pr05a_occ1990_lbl 174 `"Social workers"', add
label define pr05a_occ1990_lbl 175 `"Recreation workers"', add
label define pr05a_occ1990_lbl 176 `"Clergy and religious workers"', add
label define pr05a_occ1990_lbl 178 `"Lawyers"', add
label define pr05a_occ1990_lbl 179 `"Judges"', add
label define pr05a_occ1990_lbl 183 `"Writers and authors"', add
label define pr05a_occ1990_lbl 184 `"Technical writers"', add
label define pr05a_occ1990_lbl 185 `"Designers"', add
label define pr05a_occ1990_lbl 186 `"Musician or composer"', add
label define pr05a_occ1990_lbl 187 `"Actors, directors, producers"', add
label define pr05a_occ1990_lbl 188 `"Art makers: painters, sculptors, craft-artists, and print-makers"', add
label define pr05a_occ1990_lbl 189 `"Photographers"', add
label define pr05a_occ1990_lbl 193 `"Dancers"', add
label define pr05a_occ1990_lbl 194 `"Art/entertainment performers and related"', add
label define pr05a_occ1990_lbl 195 `"Editors and reporters"', add
label define pr05a_occ1990_lbl 198 `"Announcers"', add
label define pr05a_occ1990_lbl 199 `"Athletes, sports instructors, and officials"', add
label define pr05a_occ1990_lbl 200 `"Professionals, n.e.c."', add
label define pr05a_occ1990_lbl 203 `"Clinical laboratory technologies and technicians"', add
label define pr05a_occ1990_lbl 204 `"Dental hygienists"', add
label define pr05a_occ1990_lbl 205 `"Health record tech specialists"', add
label define pr05a_occ1990_lbl 206 `"Radiologic tech specialists"', add
label define pr05a_occ1990_lbl 207 `"Licensed practical nurses"', add
label define pr05a_occ1990_lbl 208 `"Health technologists and technicians, n.e.c."', add
label define pr05a_occ1990_lbl 213 `"Electrical and electronic (engineering) technicians"', add
label define pr05a_occ1990_lbl 214 `"Engineering technicians, n.e.c."', add
label define pr05a_occ1990_lbl 215 `"Mechanical engineering technicians"', add
label define pr05a_occ1990_lbl 217 `"Drafters"', add
label define pr05a_occ1990_lbl 218 `"Surveyors, cartographers, mapping scientists and technicians"', add
label define pr05a_occ1990_lbl 223 `"Biological technicians"', add
label define pr05a_occ1990_lbl 224 `"Chemical technicians"', add
label define pr05a_occ1990_lbl 225 `"Other science technicians"', add
label define pr05a_occ1990_lbl 226 `"Airplane pilots and navigators"', add
label define pr05a_occ1990_lbl 227 `"Air traffic controllers"', add
label define pr05a_occ1990_lbl 228 `"Broadcast equipment operators"', add
label define pr05a_occ1990_lbl 229 `"Computer software developers"', add
label define pr05a_occ1990_lbl 233 `"Programmers of numerically controlled machine tools"', add
label define pr05a_occ1990_lbl 234 `"Legal assistants, paralegals, legal support, etc"', add
label define pr05a_occ1990_lbl 235 `"Technicians, n.e.c."', add
label define pr05a_occ1990_lbl 243 `"Supervisors and proprietors of sales jobs"', add
label define pr05a_occ1990_lbl 253 `"Insurance sales occupations"', add
label define pr05a_occ1990_lbl 254 `"Real estate sales occupations"', add
label define pr05a_occ1990_lbl 255 `"Financial services sales occupations"', add
label define pr05a_occ1990_lbl 256 `"Advertising and related sales jobs"', add
label define pr05a_occ1990_lbl 258 `"Sales engineers"', add
label define pr05a_occ1990_lbl 274 `"Salespersons, n.e.c."', add
label define pr05a_occ1990_lbl 275 `"Retail sales clerks"', add
label define pr05a_occ1990_lbl 276 `"Cashiers"', add
label define pr05a_occ1990_lbl 277 `"Door-to-door sales, street sales, and news vendors"', add
label define pr05a_occ1990_lbl 283 `"Sales demonstrators / promoters / models"', add
label define pr05a_occ1990_lbl 290 `"Sales workers--allocated (1990 internal census)"', add
label define pr05a_occ1990_lbl 303 `"Office supervisors"', add
label define pr05a_occ1990_lbl 308 `"Computer and peripheral equipment operators"', add
label define pr05a_occ1990_lbl 313 `"Secretaries"', add
label define pr05a_occ1990_lbl 314 `"Stenographers"', add
label define pr05a_occ1990_lbl 315 `"Typists"', add
label define pr05a_occ1990_lbl 316 `"Interviewers, enumerators, and surveyors"', add
label define pr05a_occ1990_lbl 317 `"Hotel clerks"', add
label define pr05a_occ1990_lbl 318 `"Transportation ticket and reservation agents"', add
label define pr05a_occ1990_lbl 319 `"Receptionists"', add
label define pr05a_occ1990_lbl 323 `"Information clerks, n.e.c."', add
label define pr05a_occ1990_lbl 326 `"Correspondence and order clerks"', add
label define pr05a_occ1990_lbl 328 `"Human resources clerks, except payroll and timekeeping"', add
label define pr05a_occ1990_lbl 329 `"Library assistants"', add
label define pr05a_occ1990_lbl 335 `"File clerks"', add
label define pr05a_occ1990_lbl 336 `"Records clerks"', add
label define pr05a_occ1990_lbl 337 `"Bookkeepers and accounting and auditing clerks"', add
label define pr05a_occ1990_lbl 338 `"Payroll and timekeeping clerks"', add
label define pr05a_occ1990_lbl 343 `"Cost and rate clerks (financial records processing)"', add
label define pr05a_occ1990_lbl 344 `"Billing clerks and related financial records processing"', add
label define pr05a_occ1990_lbl 345 `"Duplication machine operators / office machine operators"', add
label define pr05a_occ1990_lbl 346 `"Mail and paper handlers"', add
label define pr05a_occ1990_lbl 347 `"Office machine operators, n.e.c."', add
label define pr05a_occ1990_lbl 348 `"Telephone operators"', add
label define pr05a_occ1990_lbl 349 `"Other telecom operators"', add
label define pr05a_occ1990_lbl 354 `"Postal clerks, excluding mail carriers"', add
label define pr05a_occ1990_lbl 355 `"Mail carriers for postal service"', add
label define pr05a_occ1990_lbl 356 `"Mail clerks, outside of post office"', add
label define pr05a_occ1990_lbl 357 `"Messengers"', add
label define pr05a_occ1990_lbl 359 `"Dispatchers"', add
label define pr05a_occ1990_lbl 361 `"Inspectors, n.e.c."', add
label define pr05a_occ1990_lbl 364 `"Shipping and receiving clerks"', add
label define pr05a_occ1990_lbl 365 `"Stock and inventory clerks"', add
label define pr05a_occ1990_lbl 366 `"Meter readers"', add
label define pr05a_occ1990_lbl 368 `"Weighers, measurers, and checkers"', add
label define pr05a_occ1990_lbl 373 `"Material recording, scheduling, production, planning, and expediting clerks"', add
label define pr05a_occ1990_lbl 375 `"Insurance adjusters, examiners, and investigators"', add
label define pr05a_occ1990_lbl 376 `"Customer service reps, investigators and adjusters, except insurance"', add
label define pr05a_occ1990_lbl 377 `"Eligibility clerks for government programs; social welfare"', add
label define pr05a_occ1990_lbl 378 `"Bill and account collectors"', add
label define pr05a_occ1990_lbl 379 `"General office clerks"', add
label define pr05a_occ1990_lbl 383 `"Bank tellers"', add
label define pr05a_occ1990_lbl 384 `"Proofreaders"', add
label define pr05a_occ1990_lbl 385 `"Data entry keyers"', add
label define pr05a_occ1990_lbl 386 `"Statistical clerks"', add
label define pr05a_occ1990_lbl 387 `"Teacher's aides"', add
label define pr05a_occ1990_lbl 389 `"Administrative support jobs, n.e.c."', add
label define pr05a_occ1990_lbl 390 `"Professional, technical, and kindred workers--allocated"', add
label define pr05a_occ1990_lbl 391 `"Clerical and kindred workers--allocated"', add
label define pr05a_occ1990_lbl 405 `"Housekeepers, maids, butlers, stewards, and lodging quarters cleaners"', add
label define pr05a_occ1990_lbl 407 `"Private household cleaners and servants"', add
label define pr05a_occ1990_lbl 408 `"Private household workers--allocated"', add
label define pr05a_occ1990_lbl 415 `"Supervisors of guards"', add
label define pr05a_occ1990_lbl 417 `"Fire fighting, prevention, and inspection"', add
label define pr05a_occ1990_lbl 418 `"Police, detectives, and private investigators"', add
label define pr05a_occ1990_lbl 423 `"Other law enforcement: sheriffs, bailiffs, correctional institution officers"', add
label define pr05a_occ1990_lbl 425 `"Crossing guards and bridge tenders"', add
label define pr05a_occ1990_lbl 426 `"Guards, watchmen, doorkeepers"', add
label define pr05a_occ1990_lbl 427 `"Protective services, n.e.c."', add
label define pr05a_occ1990_lbl 434 `"Bartenders"', add
label define pr05a_occ1990_lbl 435 `"Waiter/waitress"', add
label define pr05a_occ1990_lbl 436 `"Cooks, variously defined"', add
label define pr05a_occ1990_lbl 438 `"Food counter and fountain workers"', add
label define pr05a_occ1990_lbl 439 `"Kitchen workers"', add
label define pr05a_occ1990_lbl 443 `"Waiter's assistant"', add
label define pr05a_occ1990_lbl 444 `"Misc food prep workers"', add
label define pr05a_occ1990_lbl 445 `"Dental assistants"', add
label define pr05a_occ1990_lbl 446 `"Health aides, except nursing"', add
label define pr05a_occ1990_lbl 447 `"Nursing aides, orderlies, and attendants"', add
label define pr05a_occ1990_lbl 448 `"Supervisors of cleaning and building service"', add
label define pr05a_occ1990_lbl 453 `"Janitors"', add
label define pr05a_occ1990_lbl 454 `"Elevator operators"', add
label define pr05a_occ1990_lbl 455 `"Pest control occupations"', add
label define pr05a_occ1990_lbl 456 `"Supervisors of personal service jobs, n.e.c."', add
label define pr05a_occ1990_lbl 457 `"Barbers"', add
label define pr05a_occ1990_lbl 458 `"Hairdressers and cosmetologists"', add
label define pr05a_occ1990_lbl 459 `"Recreation facility attendants"', add
label define pr05a_occ1990_lbl 461 `"Guides"', add
label define pr05a_occ1990_lbl 462 `"Ushers"', add
label define pr05a_occ1990_lbl 463 `"Public transportation attendants and inspectors"', add
label define pr05a_occ1990_lbl 464 `"Baggage porters"', add
label define pr05a_occ1990_lbl 465 `"Welfare service aides"', add
label define pr05a_occ1990_lbl 468 `"Child care workers"', add
label define pr05a_occ1990_lbl 469 `"Personal service occupations, n.e.c."', add
label define pr05a_occ1990_lbl 473 `"Farmers (owners and tenants)"', add
label define pr05a_occ1990_lbl 474 `"Horticultural specialty farmers"', add
label define pr05a_occ1990_lbl 475 `"Farm managers, except for horticultural farms"', add
label define pr05a_occ1990_lbl 476 `"Managers of horticultural specialty farms"', add
label define pr05a_occ1990_lbl 479 `"Farm workers"', add
label define pr05a_occ1990_lbl 480 `"Farm laborers and farm foreman--allocated"', add
label define pr05a_occ1990_lbl 483 `"Marine life cultivation workers"', add
label define pr05a_occ1990_lbl 484 `"Nursery farming workers"', add
label define pr05a_occ1990_lbl 485 `"Supervisors of agricultural occupations"', add
label define pr05a_occ1990_lbl 486 `"Gardeners and groundskeepers"', add
label define pr05a_occ1990_lbl 487 `"Animal caretakers except on farms"', add
label define pr05a_occ1990_lbl 488 `"Graders and sorters of agricultural products"', add
label define pr05a_occ1990_lbl 489 `"Inspectors of agricultural products"', add
label define pr05a_occ1990_lbl 496 `"Timber, logging, and forestry workers"', add
label define pr05a_occ1990_lbl 498 `"Fishers, hunters, and kindred"', add
label define pr05a_occ1990_lbl 503 `"Supervisors of mechanics and repairers"', add
label define pr05a_occ1990_lbl 505 `"Automobile mechanics"', add
label define pr05a_occ1990_lbl 507 `"Bus, truck, and stationary engine mechanics"', add
label define pr05a_occ1990_lbl 508 `"Aircraft mechanics"', add
label define pr05a_occ1990_lbl 509 `"Small engine repairers"', add
label define pr05a_occ1990_lbl 514 `"Auto body repairers"', add
label define pr05a_occ1990_lbl 516 `"Heavy equipment and farm equipment mechanics"', add
label define pr05a_occ1990_lbl 518 `"Industrial machinery repairers"', add
label define pr05a_occ1990_lbl 519 `"Machinery maintenance occupations"', add
label define pr05a_occ1990_lbl 523 `"Repairers of industrial electrical equipment"', add
label define pr05a_occ1990_lbl 525 `"Repairers of data processing equipment"', add
label define pr05a_occ1990_lbl 526 `"Repairers of household appliances and power tools"', add
label define pr05a_occ1990_lbl 527 `"Telecom and line installers and repairers"', add
label define pr05a_occ1990_lbl 533 `"Repairers of electrical equipment, n.e.c."', add
label define pr05a_occ1990_lbl 534 `"Heating, air conditioning, and refrigeration mechanics"', add
label define pr05a_occ1990_lbl 535 `"Precision makers, repairers, and smiths"', add
label define pr05a_occ1990_lbl 536 `"Locksmiths and safe repairers"', add
label define pr05a_occ1990_lbl 538 `"Office machine repairers and mechanics"', add
label define pr05a_occ1990_lbl 539 `"Repairers of mechanical controls and valves"', add
label define pr05a_occ1990_lbl 543 `"Elevator installers and repairers"', add
label define pr05a_occ1990_lbl 544 `"Millwrights"', add
label define pr05a_occ1990_lbl 549 `"Mechanics and repairers, n.e.c."', add
label define pr05a_occ1990_lbl 558 `"Supervisors of construction work"', add
label define pr05a_occ1990_lbl 563 `"Masons, tilers, and carpet installers"', add
label define pr05a_occ1990_lbl 567 `"Carpenters"', add
label define pr05a_occ1990_lbl 573 `"Drywall installers"', add
label define pr05a_occ1990_lbl 575 `"Electricians"', add
label define pr05a_occ1990_lbl 577 `"Electric power installers and repairers"', add
label define pr05a_occ1990_lbl 579 `"Painters, construction and maintenance"', add
label define pr05a_occ1990_lbl 583 `"Paperhangers"', add
label define pr05a_occ1990_lbl 584 `"Plasterers"', add
label define pr05a_occ1990_lbl 585 `"Plumbers, pipe fitters, and steamfitters"', add
label define pr05a_occ1990_lbl 588 `"Concrete and cement workers"', add
label define pr05a_occ1990_lbl 589 `"Glaziers"', add
label define pr05a_occ1990_lbl 593 `"Insulation workers"', add
label define pr05a_occ1990_lbl 594 `"Paving, surfacing, and tamping equipment operators"', add
label define pr05a_occ1990_lbl 595 `"Roofers and slaters"', add
label define pr05a_occ1990_lbl 596 `"Sheet metal duct installers"', add
label define pr05a_occ1990_lbl 597 `"Structural metal workers"', add
label define pr05a_occ1990_lbl 598 `"Drillers of earth"', add
label define pr05a_occ1990_lbl 599 `"Construction trades, n.e.c."', add
label define pr05a_occ1990_lbl 614 `"Drillers of oil wells"', add
label define pr05a_occ1990_lbl 615 `"Explosives workers"', add
label define pr05a_occ1990_lbl 616 `"Miners"', add
label define pr05a_occ1990_lbl 617 `"Other mining occupations"', add
label define pr05a_occ1990_lbl 628 `"Production supervisors or foremen"', add
label define pr05a_occ1990_lbl 634 `"Tool and die makers and die setters"', add
label define pr05a_occ1990_lbl 637 `"Machinists"', add
label define pr05a_occ1990_lbl 643 `"Boilermakers"', add
label define pr05a_occ1990_lbl 644 `"Precision grinders and filers"', add
label define pr05a_occ1990_lbl 645 `"Patternmakers and model makers"', add
label define pr05a_occ1990_lbl 646 `"Lay-out workers"', add
label define pr05a_occ1990_lbl 649 `"Engravers"', add
label define pr05a_occ1990_lbl 653 `"Tinsmiths, coppersmiths, and sheet metal workers"', add
label define pr05a_occ1990_lbl 657 `"Cabinetmakers and bench carpenters"', add
label define pr05a_occ1990_lbl 658 `"Furniture and wood finishers"', add
label define pr05a_occ1990_lbl 659 `"Other precision woodworkers"', add
label define pr05a_occ1990_lbl 666 `"Dressmakers and seamstresses"', add
label define pr05a_occ1990_lbl 667 `"Tailors"', add
label define pr05a_occ1990_lbl 668 `"Upholsterers"', add
label define pr05a_occ1990_lbl 669 `"Shoe repairers"', add
label define pr05a_occ1990_lbl 674 `"Other precision apparel and fabric workers"', add
label define pr05a_occ1990_lbl 675 `"Hand molders and shapers, except jewelers"', add
label define pr05a_occ1990_lbl 677 `"Optical goods workers"', add
label define pr05a_occ1990_lbl 678 `"Dental laboratory and medical appliance technicians"', add
label define pr05a_occ1990_lbl 679 `"Bookbinders"', add
label define pr05a_occ1990_lbl 684 `"Other precision and craft workers"', add
label define pr05a_occ1990_lbl 686 `"Butchers and meat cutters"', add
label define pr05a_occ1990_lbl 687 `"Bakers"', add
label define pr05a_occ1990_lbl 688 `"Batch food makers"', add
label define pr05a_occ1990_lbl 693 `"Adjusters and calibrators"', add
label define pr05a_occ1990_lbl 694 `"Water and sewage treatment plant operators"', add
label define pr05a_occ1990_lbl 695 `"Power plant operators"', add
label define pr05a_occ1990_lbl 696 `"Plant and system operators, stationary engineers"', add
label define pr05a_occ1990_lbl 699 `"Other plant and system operators"', add
label define pr05a_occ1990_lbl 703 `"Lathe, milling, and turning machine operatives"', add
label define pr05a_occ1990_lbl 706 `"Punching and stamping press operatives"', add
label define pr05a_occ1990_lbl 707 `"Rollers, roll hands, and finishers of metal"', add
label define pr05a_occ1990_lbl 708 `"Drilling and boring machine operators"', add
label define pr05a_occ1990_lbl 709 `"Grinding, abrading, buffing, and polishing workers"', add
label define pr05a_occ1990_lbl 713 `"Forge and hammer operators"', add
label define pr05a_occ1990_lbl 717 `"Fabricating machine operators, n.e.c."', add
label define pr05a_occ1990_lbl 719 `"Molders, and casting machine operators"', add
label define pr05a_occ1990_lbl 723 `"Metal platers"', add
label define pr05a_occ1990_lbl 724 `"Heat treating equipment operators"', add
label define pr05a_occ1990_lbl 726 `"Wood lathe, routing, and planning machine operators"', add
label define pr05a_occ1990_lbl 727 `"Sawing machine operators and sawyers"', add
label define pr05a_occ1990_lbl 728 `"Shaping and joining machine operator (woodworking)"', add
label define pr05a_occ1990_lbl 729 `"Nail and tacking machine operators  (woodworking)"', add
label define pr05a_occ1990_lbl 733 `"Other woodworking machine operators"', add
label define pr05a_occ1990_lbl 734 `"Printing machine operators, n.e.c."', add
label define pr05a_occ1990_lbl 735 `"Photoengravers and lithographers"', add
label define pr05a_occ1990_lbl 736 `"Typesetters and compositors"', add
label define pr05a_occ1990_lbl 738 `"Winding and twisting textile/apparel operatives"', add
label define pr05a_occ1990_lbl 739 `"Knitters, loopers, and toppers textile operatives"', add
label define pr05a_occ1990_lbl 743 `"Textile cutting machine operators"', add
label define pr05a_occ1990_lbl 744 `"Textile sewing machine operators"', add
label define pr05a_occ1990_lbl 745 `"Shoemaking machine operators"', add
label define pr05a_occ1990_lbl 747 `"Pressing machine operators (clothing)"', add
label define pr05a_occ1990_lbl 748 `"Laundry workers"', add
label define pr05a_occ1990_lbl 749 `"Misc textile machine operators"', add
label define pr05a_occ1990_lbl 753 `"Cementing and gluing machine operators"', add
label define pr05a_occ1990_lbl 754 `"Packers, fillers, and wrappers"', add
label define pr05a_occ1990_lbl 755 `"Extruding and forming machine operators"', add
label define pr05a_occ1990_lbl 756 `"Mixing and blending machine operatives"', add
label define pr05a_occ1990_lbl 757 `"Separating, filtering, and clarifying machine operators"', add
label define pr05a_occ1990_lbl 759 `"Painting machine operators"', add
label define pr05a_occ1990_lbl 763 `"Roasting and baking machine operators (food)"', add
label define pr05a_occ1990_lbl 764 `"Washing, cleaning, and pickling machine operators"', add
label define pr05a_occ1990_lbl 765 `"Paper folding machine operators"', add
label define pr05a_occ1990_lbl 766 `"Furnace, kiln, and oven operators, apart from food"', add
label define pr05a_occ1990_lbl 768 `"Crushing and grinding machine operators"', add
label define pr05a_occ1990_lbl 769 `"Slicing and cutting machine operators"', add
label define pr05a_occ1990_lbl 773 `"Motion picture projectionists"', add
label define pr05a_occ1990_lbl 774 `"Photographic process workers"', add
label define pr05a_occ1990_lbl 779 `"Machine operators, n.e.c."', add
label define pr05a_occ1990_lbl 783 `"Welders and metal cutters"', add
label define pr05a_occ1990_lbl 784 `"Solderers"', add
label define pr05a_occ1990_lbl 785 `"Assemblers of electrical equipment"', add
label define pr05a_occ1990_lbl 789 `"Hand painting, coating, and decorating occupations"', add
label define pr05a_occ1990_lbl 796 `"Production checkers and inspectors"', add
label define pr05a_occ1990_lbl 799 `"Graders and sorters in manufacturing"', add
label define pr05a_occ1990_lbl 803 `"Supervisors of motor vehicle transportation"', add
label define pr05a_occ1990_lbl 804 `"Truck, delivery, and tractor drivers"', add
label define pr05a_occ1990_lbl 808 `"Bus drivers"', add
label define pr05a_occ1990_lbl 809 `"Taxi cab drivers and chauffeurs"', add
label define pr05a_occ1990_lbl 813 `"Parking lot attendants"', add
label define pr05a_occ1990_lbl 815 `"Transport equipment operatives--allocated"', add
label define pr05a_occ1990_lbl 823 `"Railroad conductors and yardmasters"', add
label define pr05a_occ1990_lbl 824 `"Locomotive operators (engineers and firemen)"', add
label define pr05a_occ1990_lbl 825 `"Railroad brake, coupler, and switch operators"', add
label define pr05a_occ1990_lbl 829 `"Ship crews and marine engineers"', add
label define pr05a_occ1990_lbl 834 `"Water transport infrastructure tenders and crossing guards"', add
label define pr05a_occ1990_lbl 844 `"Operating engineers of construction equipment"', add
label define pr05a_occ1990_lbl 848 `"Crane, derrick, winch, and hoist operators"', add
label define pr05a_occ1990_lbl 853 `"Excavating and loading machine operators"', add
label define pr05a_occ1990_lbl 859 `"Miscellaneous material moving occupations"', add
label define pr05a_occ1990_lbl 865 `"Helpers, constructions"', add
label define pr05a_occ1990_lbl 866 `"Helpers, surveyors"', add
label define pr05a_occ1990_lbl 869 `"Construction laborers"', add
label define pr05a_occ1990_lbl 874 `"Production helpers"', add
label define pr05a_occ1990_lbl 875 `"Garbage and recyclable material collectors"', add
label define pr05a_occ1990_lbl 876 `"Materials movers: stevedores and longshore workers"', add
label define pr05a_occ1990_lbl 877 `"Stock handlers"', add
label define pr05a_occ1990_lbl 878 `"Machine feeders and offbearers"', add
label define pr05a_occ1990_lbl 883 `"Freight, stock, and materials handlers"', add
label define pr05a_occ1990_lbl 885 `"Garage and service station related occupations"', add
label define pr05a_occ1990_lbl 887 `"Vehicle washers and equipment cleaners"', add
label define pr05a_occ1990_lbl 888 `"Packers and packagers by hand"', add
label define pr05a_occ1990_lbl 889 `"Laborers outside construction"', add
label define pr05a_occ1990_lbl 890 `"Laborers, except farm--allocated"', add
label define pr05a_occ1990_lbl 905 `"Military"', add
label define pr05a_occ1990_lbl 991 `"Unemployed"', add
label define pr05a_occ1990_lbl 999 `"NIU (not in universe)"', add
label values pr05a_occ1990 pr05a_occ1990_lbl

label define pr05a_respmode_lbl 1 `"Mail"'
label define pr05a_respmode_lbl 2 `"CATI/CAPI"', add
label values pr05a_respmode pr05a_respmode_lbl

label define pr05a_arrives_lbl 0000 `"NIU (not in universe)"'
label define pr05a_arrives_lbl 0004 `"4"', add
label define pr05a_arrives_lbl 0009 `"9"', add
label define pr05a_arrives_lbl 0014 `"14"', add
label define pr05a_arrives_lbl 0019 `"19"', add
label define pr05a_arrives_lbl 0024 `"24"', add
label define pr05a_arrives_lbl 0029 `"29"', add
label define pr05a_arrives_lbl 0039 `"39"', add
label define pr05a_arrives_lbl 0044 `"44"', add
label define pr05a_arrives_lbl 0049 `"49"', add
label define pr05a_arrives_lbl 0059 `"59"', add
label define pr05a_arrives_lbl 0104 `"104"', add
label define pr05a_arrives_lbl 0109 `"109"', add
label define pr05a_arrives_lbl 0114 `"114"', add
label define pr05a_arrives_lbl 0119 `"119"', add
label define pr05a_arrives_lbl 0124 `"124"', add
label define pr05a_arrives_lbl 0129 `"129"', add
label define pr05a_arrives_lbl 0134 `"134"', add
label define pr05a_arrives_lbl 0139 `"139"', add
label define pr05a_arrives_lbl 0144 `"144"', add
label define pr05a_arrives_lbl 0149 `"149"', add
label define pr05a_arrives_lbl 0159 `"159"', add
label define pr05a_arrives_lbl 0204 `"204"', add
label define pr05a_arrives_lbl 0209 `"209"', add
label define pr05a_arrives_lbl 0214 `"214"', add
label define pr05a_arrives_lbl 0219 `"219"', add
label define pr05a_arrives_lbl 0224 `"224"', add
label define pr05a_arrives_lbl 0229 `"229"', add
label define pr05a_arrives_lbl 0234 `"234"', add
label define pr05a_arrives_lbl 0239 `"239"', add
label define pr05a_arrives_lbl 0244 `"244"', add
label define pr05a_arrives_lbl 0249 `"249"', add
label define pr05a_arrives_lbl 0254 `"254"', add
label define pr05a_arrives_lbl 0259 `"259"', add
label define pr05a_arrives_lbl 0304 `"304"', add
label define pr05a_arrives_lbl 0309 `"309"', add
label define pr05a_arrives_lbl 0314 `"314"', add
label define pr05a_arrives_lbl 0319 `"319"', add
label define pr05a_arrives_lbl 0324 `"324"', add
label define pr05a_arrives_lbl 0329 `"329"', add
label define pr05a_arrives_lbl 0334 `"334"', add
label define pr05a_arrives_lbl 0339 `"339"', add
label define pr05a_arrives_lbl 0344 `"344"', add
label define pr05a_arrives_lbl 0349 `"349"', add
label define pr05a_arrives_lbl 0354 `"354"', add
label define pr05a_arrives_lbl 0359 `"359"', add
label define pr05a_arrives_lbl 0404 `"404"', add
label define pr05a_arrives_lbl 0409 `"409"', add
label define pr05a_arrives_lbl 0414 `"414"', add
label define pr05a_arrives_lbl 0419 `"419"', add
label define pr05a_arrives_lbl 0424 `"424"', add
label define pr05a_arrives_lbl 0429 `"429"', add
label define pr05a_arrives_lbl 0434 `"434"', add
label define pr05a_arrives_lbl 0439 `"439"', add
label define pr05a_arrives_lbl 0444 `"444"', add
label define pr05a_arrives_lbl 0449 `"449"', add
label define pr05a_arrives_lbl 0454 `"454"', add
label define pr05a_arrives_lbl 0459 `"459"', add
label define pr05a_arrives_lbl 0504 `"504"', add
label define pr05a_arrives_lbl 0509 `"509"', add
label define pr05a_arrives_lbl 0514 `"514"', add
label define pr05a_arrives_lbl 0519 `"519"', add
label define pr05a_arrives_lbl 0524 `"524"', add
label define pr05a_arrives_lbl 0529 `"529"', add
label define pr05a_arrives_lbl 0534 `"534"', add
label define pr05a_arrives_lbl 0539 `"539"', add
label define pr05a_arrives_lbl 0544 `"544"', add
label define pr05a_arrives_lbl 0549 `"549"', add
label define pr05a_arrives_lbl 0554 `"554"', add
label define pr05a_arrives_lbl 0559 `"559"', add
label define pr05a_arrives_lbl 0604 `"604"', add
label define pr05a_arrives_lbl 0609 `"609"', add
label define pr05a_arrives_lbl 0614 `"614"', add
label define pr05a_arrives_lbl 0619 `"619"', add
label define pr05a_arrives_lbl 0624 `"624"', add
label define pr05a_arrives_lbl 0629 `"629"', add
label define pr05a_arrives_lbl 0634 `"634"', add
label define pr05a_arrives_lbl 0639 `"639"', add
label define pr05a_arrives_lbl 0644 `"644"', add
label define pr05a_arrives_lbl 0649 `"649"', add
label define pr05a_arrives_lbl 0654 `"654"', add
label define pr05a_arrives_lbl 0659 `"659"', add
label define pr05a_arrives_lbl 0704 `"704"', add
label define pr05a_arrives_lbl 0709 `"709"', add
label define pr05a_arrives_lbl 0714 `"714"', add
label define pr05a_arrives_lbl 0719 `"719"', add
label define pr05a_arrives_lbl 0724 `"724"', add
label define pr05a_arrives_lbl 0729 `"729"', add
label define pr05a_arrives_lbl 0734 `"734"', add
label define pr05a_arrives_lbl 0739 `"739"', add
label define pr05a_arrives_lbl 0744 `"744"', add
label define pr05a_arrives_lbl 0749 `"749"', add
label define pr05a_arrives_lbl 0754 `"754"', add
label define pr05a_arrives_lbl 0759 `"759"', add
label define pr05a_arrives_lbl 0804 `"804"', add
label define pr05a_arrives_lbl 0809 `"809"', add
label define pr05a_arrives_lbl 0814 `"814"', add
label define pr05a_arrives_lbl 0819 `"819"', add
label define pr05a_arrives_lbl 0824 `"824"', add
label define pr05a_arrives_lbl 0829 `"829"', add
label define pr05a_arrives_lbl 0834 `"834"', add
label define pr05a_arrives_lbl 0839 `"839"', add
label define pr05a_arrives_lbl 0844 `"844"', add
label define pr05a_arrives_lbl 0849 `"849"', add
label define pr05a_arrives_lbl 0854 `"854"', add
label define pr05a_arrives_lbl 0859 `"859"', add
label define pr05a_arrives_lbl 0904 `"904"', add
label define pr05a_arrives_lbl 0909 `"909"', add
label define pr05a_arrives_lbl 0914 `"914"', add
label define pr05a_arrives_lbl 0919 `"919"', add
label define pr05a_arrives_lbl 0924 `"924"', add
label define pr05a_arrives_lbl 0929 `"929"', add
label define pr05a_arrives_lbl 0934 `"934"', add
label define pr05a_arrives_lbl 0939 `"939"', add
label define pr05a_arrives_lbl 0944 `"944"', add
label define pr05a_arrives_lbl 0949 `"949"', add
label define pr05a_arrives_lbl 0954 `"954"', add
label define pr05a_arrives_lbl 0959 `"959"', add
label define pr05a_arrives_lbl 1004 `"1004"', add
label define pr05a_arrives_lbl 1009 `"1009"', add
label define pr05a_arrives_lbl 1014 `"1014"', add
label define pr05a_arrives_lbl 1019 `"1019"', add
label define pr05a_arrives_lbl 1024 `"1024"', add
label define pr05a_arrives_lbl 1029 `"1029"', add
label define pr05a_arrives_lbl 1034 `"1034"', add
label define pr05a_arrives_lbl 1039 `"1039"', add
label define pr05a_arrives_lbl 1044 `"1044"', add
label define pr05a_arrives_lbl 1049 `"1049"', add
label define pr05a_arrives_lbl 1054 `"1054"', add
label define pr05a_arrives_lbl 1059 `"1059"', add
label define pr05a_arrives_lbl 1104 `"1104"', add
label define pr05a_arrives_lbl 1109 `"1109"', add
label define pr05a_arrives_lbl 1114 `"1114"', add
label define pr05a_arrives_lbl 1119 `"1119"', add
label define pr05a_arrives_lbl 1124 `"1124"', add
label define pr05a_arrives_lbl 1129 `"1129"', add
label define pr05a_arrives_lbl 1134 `"1134"', add
label define pr05a_arrives_lbl 1139 `"1139"', add
label define pr05a_arrives_lbl 1144 `"1144"', add
label define pr05a_arrives_lbl 1149 `"1149"', add
label define pr05a_arrives_lbl 1154 `"1154"', add
label define pr05a_arrives_lbl 1159 `"1159"', add
label define pr05a_arrives_lbl 1204 `"1204"', add
label define pr05a_arrives_lbl 1209 `"1209"', add
label define pr05a_arrives_lbl 1214 `"1214"', add
label define pr05a_arrives_lbl 1219 `"1219"', add
label define pr05a_arrives_lbl 1224 `"1224"', add
label define pr05a_arrives_lbl 1229 `"1229"', add
label define pr05a_arrives_lbl 1234 `"1234"', add
label define pr05a_arrives_lbl 1239 `"1239"', add
label define pr05a_arrives_lbl 1244 `"1244"', add
label define pr05a_arrives_lbl 1249 `"1249"', add
label define pr05a_arrives_lbl 1254 `"1254"', add
label define pr05a_arrives_lbl 1259 `"1259"', add
label define pr05a_arrives_lbl 1304 `"1304"', add
label define pr05a_arrives_lbl 1309 `"1309"', add
label define pr05a_arrives_lbl 1314 `"1314"', add
label define pr05a_arrives_lbl 1319 `"1319"', add
label define pr05a_arrives_lbl 1324 `"1324"', add
label define pr05a_arrives_lbl 1329 `"1329"', add
label define pr05a_arrives_lbl 1334 `"1334"', add
label define pr05a_arrives_lbl 1339 `"1339"', add
label define pr05a_arrives_lbl 1344 `"1344"', add
label define pr05a_arrives_lbl 1349 `"1349"', add
label define pr05a_arrives_lbl 1354 `"1354"', add
label define pr05a_arrives_lbl 1359 `"1359"', add
label define pr05a_arrives_lbl 1404 `"1404"', add
label define pr05a_arrives_lbl 1409 `"1409"', add
label define pr05a_arrives_lbl 1414 `"1414"', add
label define pr05a_arrives_lbl 1419 `"1419"', add
label define pr05a_arrives_lbl 1424 `"1424"', add
label define pr05a_arrives_lbl 1429 `"1429"', add
label define pr05a_arrives_lbl 1434 `"1434"', add
label define pr05a_arrives_lbl 1439 `"1439"', add
label define pr05a_arrives_lbl 1444 `"1444"', add
label define pr05a_arrives_lbl 1449 `"1449"', add
label define pr05a_arrives_lbl 1454 `"1454"', add
label define pr05a_arrives_lbl 1459 `"1459"', add
label define pr05a_arrives_lbl 1504 `"1504"', add
label define pr05a_arrives_lbl 1509 `"1509"', add
label define pr05a_arrives_lbl 1514 `"1514"', add
label define pr05a_arrives_lbl 1519 `"1519"', add
label define pr05a_arrives_lbl 1524 `"1524"', add
label define pr05a_arrives_lbl 1529 `"1529"', add
label define pr05a_arrives_lbl 1534 `"1534"', add
label define pr05a_arrives_lbl 1539 `"1539"', add
label define pr05a_arrives_lbl 1544 `"1544"', add
label define pr05a_arrives_lbl 1549 `"1549"', add
label define pr05a_arrives_lbl 1554 `"1554"', add
label define pr05a_arrives_lbl 1559 `"1559"', add
label define pr05a_arrives_lbl 1604 `"1604"', add
label define pr05a_arrives_lbl 1609 `"1609"', add
label define pr05a_arrives_lbl 1614 `"1614"', add
label define pr05a_arrives_lbl 1619 `"1619"', add
label define pr05a_arrives_lbl 1624 `"1624"', add
label define pr05a_arrives_lbl 1629 `"1629"', add
label define pr05a_arrives_lbl 1634 `"1634"', add
label define pr05a_arrives_lbl 1639 `"1639"', add
label define pr05a_arrives_lbl 1644 `"1644"', add
label define pr05a_arrives_lbl 1649 `"1649"', add
label define pr05a_arrives_lbl 1654 `"1654"', add
label define pr05a_arrives_lbl 1659 `"1659"', add
label define pr05a_arrives_lbl 1704 `"1704"', add
label define pr05a_arrives_lbl 1709 `"1709"', add
label define pr05a_arrives_lbl 1714 `"1714"', add
label define pr05a_arrives_lbl 1719 `"1719"', add
label define pr05a_arrives_lbl 1724 `"1724"', add
label define pr05a_arrives_lbl 1729 `"1729"', add
label define pr05a_arrives_lbl 1734 `"1734"', add
label define pr05a_arrives_lbl 1739 `"1739"', add
label define pr05a_arrives_lbl 1744 `"1744"', add
label define pr05a_arrives_lbl 1749 `"1749"', add
label define pr05a_arrives_lbl 1754 `"1754"', add
label define pr05a_arrives_lbl 1759 `"1759"', add
label define pr05a_arrives_lbl 1804 `"1804"', add
label define pr05a_arrives_lbl 1809 `"1809"', add
label define pr05a_arrives_lbl 1814 `"1814"', add
label define pr05a_arrives_lbl 1819 `"1819"', add
label define pr05a_arrives_lbl 1824 `"1824"', add
label define pr05a_arrives_lbl 1829 `"1829"', add
label define pr05a_arrives_lbl 1834 `"1834"', add
label define pr05a_arrives_lbl 1839 `"1839"', add
label define pr05a_arrives_lbl 1844 `"1844"', add
label define pr05a_arrives_lbl 1849 `"1849"', add
label define pr05a_arrives_lbl 1854 `"1854"', add
label define pr05a_arrives_lbl 1859 `"1859"', add
label define pr05a_arrives_lbl 1904 `"1904"', add
label define pr05a_arrives_lbl 1909 `"1909"', add
label define pr05a_arrives_lbl 1914 `"1914"', add
label define pr05a_arrives_lbl 1919 `"1919"', add
label define pr05a_arrives_lbl 1924 `"1924"', add
label define pr05a_arrives_lbl 1929 `"1929"', add
label define pr05a_arrives_lbl 1934 `"1934"', add
label define pr05a_arrives_lbl 1939 `"1939"', add
label define pr05a_arrives_lbl 1944 `"1944"', add
label define pr05a_arrives_lbl 1949 `"1949"', add
label define pr05a_arrives_lbl 1954 `"1954"', add
label define pr05a_arrives_lbl 1959 `"1959"', add
label define pr05a_arrives_lbl 2004 `"2004"', add
label define pr05a_arrives_lbl 2009 `"2009"', add
label define pr05a_arrives_lbl 2014 `"2014"', add
label define pr05a_arrives_lbl 2019 `"2019"', add
label define pr05a_arrives_lbl 2024 `"2024"', add
label define pr05a_arrives_lbl 2029 `"2029"', add
label define pr05a_arrives_lbl 2034 `"2034"', add
label define pr05a_arrives_lbl 2039 `"2039"', add
label define pr05a_arrives_lbl 2044 `"2044"', add
label define pr05a_arrives_lbl 2049 `"2049"', add
label define pr05a_arrives_lbl 2054 `"2054"', add
label define pr05a_arrives_lbl 2059 `"2059"', add
label define pr05a_arrives_lbl 2104 `"2104"', add
label define pr05a_arrives_lbl 2109 `"2109"', add
label define pr05a_arrives_lbl 2114 `"2114"', add
label define pr05a_arrives_lbl 2119 `"2119"', add
label define pr05a_arrives_lbl 2124 `"2124"', add
label define pr05a_arrives_lbl 2129 `"2129"', add
label define pr05a_arrives_lbl 2134 `"2134"', add
label define pr05a_arrives_lbl 2139 `"2139"', add
label define pr05a_arrives_lbl 2144 `"2144"', add
label define pr05a_arrives_lbl 2149 `"2149"', add
label define pr05a_arrives_lbl 2154 `"2154"', add
label define pr05a_arrives_lbl 2159 `"2159"', add
label define pr05a_arrives_lbl 2204 `"2204"', add
label define pr05a_arrives_lbl 2209 `"2209"', add
label define pr05a_arrives_lbl 2214 `"2214"', add
label define pr05a_arrives_lbl 2219 `"2219"', add
label define pr05a_arrives_lbl 2224 `"2224"', add
label define pr05a_arrives_lbl 2229 `"2229"', add
label define pr05a_arrives_lbl 2234 `"2234"', add
label define pr05a_arrives_lbl 2239 `"2239"', add
label define pr05a_arrives_lbl 2244 `"2244"', add
label define pr05a_arrives_lbl 2249 `"2249"', add
label define pr05a_arrives_lbl 2254 `"2254"', add
label define pr05a_arrives_lbl 2259 `"2259"', add
label define pr05a_arrives_lbl 2304 `"2304"', add
label define pr05a_arrives_lbl 2309 `"2309"', add
label define pr05a_arrives_lbl 2314 `"2314"', add
label define pr05a_arrives_lbl 2319 `"2319"', add
label define pr05a_arrives_lbl 2324 `"2324"', add
label define pr05a_arrives_lbl 2329 `"2329"', add
label define pr05a_arrives_lbl 2334 `"2334"', add
label define pr05a_arrives_lbl 2339 `"2339"', add
label define pr05a_arrives_lbl 2344 `"2344"', add
label define pr05a_arrives_lbl 2349 `"2349"', add
label define pr05a_arrives_lbl 2354 `"2354"', add
label define pr05a_arrives_lbl 2359 `"2359"', add
label values pr05a_arrives pr05a_arrives_lbl

label define pr05a_arrives_lbl 0000 `"NIU (not in universe)"'
label define pr05a_arrives_lbl 0004 `"4"', add
label define pr05a_arrives_lbl 0009 `"9"', add
label define pr05a_arrives_lbl 0014 `"14"', add
label define pr05a_arrives_lbl 0019 `"19"', add
label define pr05a_arrives_lbl 0024 `"24"', add
label define pr05a_arrives_lbl 0029 `"29"', add
label define pr05a_arrives_lbl 0039 `"39"', add
label define pr05a_arrives_lbl 0044 `"44"', add
label define pr05a_arrives_lbl 0049 `"49"', add
label define pr05a_arrives_lbl 0059 `"59"', add
label define pr05a_arrives_lbl 0104 `"104"', add
label define pr05a_arrives_lbl 0109 `"109"', add
label define pr05a_arrives_lbl 0114 `"114"', add
label define pr05a_arrives_lbl 0119 `"119"', add
label define pr05a_arrives_lbl 0124 `"124"', add
label define pr05a_arrives_lbl 0129 `"129"', add
label define pr05a_arrives_lbl 0134 `"134"', add
label define pr05a_arrives_lbl 0139 `"139"', add
label define pr05a_arrives_lbl 0144 `"144"', add
label define pr05a_arrives_lbl 0149 `"149"', add
label define pr05a_arrives_lbl 0159 `"159"', add
label define pr05a_arrives_lbl 0204 `"204"', add
label define pr05a_arrives_lbl 0209 `"209"', add
label define pr05a_arrives_lbl 0214 `"214"', add
label define pr05a_arrives_lbl 0219 `"219"', add
label define pr05a_arrives_lbl 0224 `"224"', add
label define pr05a_arrives_lbl 0229 `"229"', add
label define pr05a_arrives_lbl 0234 `"234"', add
label define pr05a_arrives_lbl 0239 `"239"', add
label define pr05a_arrives_lbl 0244 `"244"', add
label define pr05a_arrives_lbl 0249 `"249"', add
label define pr05a_arrives_lbl 0254 `"254"', add
label define pr05a_arrives_lbl 0259 `"259"', add
label define pr05a_arrives_lbl 0304 `"304"', add
label define pr05a_arrives_lbl 0309 `"309"', add
label define pr05a_arrives_lbl 0314 `"314"', add
label define pr05a_arrives_lbl 0319 `"319"', add
label define pr05a_arrives_lbl 0324 `"324"', add
label define pr05a_arrives_lbl 0329 `"329"', add
label define pr05a_arrives_lbl 0334 `"334"', add
label define pr05a_arrives_lbl 0339 `"339"', add
label define pr05a_arrives_lbl 0344 `"344"', add
label define pr05a_arrives_lbl 0349 `"349"', add
label define pr05a_arrives_lbl 0354 `"354"', add
label define pr05a_arrives_lbl 0359 `"359"', add
label define pr05a_arrives_lbl 0404 `"404"', add
label define pr05a_arrives_lbl 0409 `"409"', add
label define pr05a_arrives_lbl 0414 `"414"', add
label define pr05a_arrives_lbl 0419 `"419"', add
label define pr05a_arrives_lbl 0424 `"424"', add
label define pr05a_arrives_lbl 0429 `"429"', add
label define pr05a_arrives_lbl 0434 `"434"', add
label define pr05a_arrives_lbl 0439 `"439"', add
label define pr05a_arrives_lbl 0444 `"444"', add
label define pr05a_arrives_lbl 0449 `"449"', add
label define pr05a_arrives_lbl 0454 `"454"', add
label define pr05a_arrives_lbl 0459 `"459"', add
label define pr05a_arrives_lbl 0504 `"504"', add
label define pr05a_arrives_lbl 0509 `"509"', add
label define pr05a_arrives_lbl 0514 `"514"', add
label define pr05a_arrives_lbl 0519 `"519"', add
label define pr05a_arrives_lbl 0524 `"524"', add
label define pr05a_arrives_lbl 0529 `"529"', add
label define pr05a_arrives_lbl 0534 `"534"', add
label define pr05a_arrives_lbl 0539 `"539"', add
label define pr05a_arrives_lbl 0544 `"544"', add
label define pr05a_arrives_lbl 0549 `"549"', add
label define pr05a_arrives_lbl 0554 `"554"', add
label define pr05a_arrives_lbl 0559 `"559"', add
label define pr05a_arrives_lbl 0604 `"604"', add
label define pr05a_arrives_lbl 0609 `"609"', add
label define pr05a_arrives_lbl 0614 `"614"', add
label define pr05a_arrives_lbl 0619 `"619"', add
label define pr05a_arrives_lbl 0624 `"624"', add
label define pr05a_arrives_lbl 0629 `"629"', add
label define pr05a_arrives_lbl 0634 `"634"', add
label define pr05a_arrives_lbl 0639 `"639"', add
label define pr05a_arrives_lbl 0644 `"644"', add
label define pr05a_arrives_lbl 0649 `"649"', add
label define pr05a_arrives_lbl 0654 `"654"', add
label define pr05a_arrives_lbl 0659 `"659"', add
label define pr05a_arrives_lbl 0704 `"704"', add
label define pr05a_arrives_lbl 0709 `"709"', add
label define pr05a_arrives_lbl 0714 `"714"', add
label define pr05a_arrives_lbl 0719 `"719"', add
label define pr05a_arrives_lbl 0724 `"724"', add
label define pr05a_arrives_lbl 0729 `"729"', add
label define pr05a_arrives_lbl 0734 `"734"', add
label define pr05a_arrives_lbl 0739 `"739"', add
label define pr05a_arrives_lbl 0744 `"744"', add
label define pr05a_arrives_lbl 0749 `"749"', add
label define pr05a_arrives_lbl 0754 `"754"', add
label define pr05a_arrives_lbl 0759 `"759"', add
label define pr05a_arrives_lbl 0804 `"804"', add
label define pr05a_arrives_lbl 0809 `"809"', add
label define pr05a_arrives_lbl 0814 `"814"', add
label define pr05a_arrives_lbl 0819 `"819"', add
label define pr05a_arrives_lbl 0824 `"824"', add
label define pr05a_arrives_lbl 0829 `"829"', add
label define pr05a_arrives_lbl 0834 `"834"', add
label define pr05a_arrives_lbl 0839 `"839"', add
label define pr05a_arrives_lbl 0844 `"844"', add
label define pr05a_arrives_lbl 0849 `"849"', add
label define pr05a_arrives_lbl 0854 `"854"', add
label define pr05a_arrives_lbl 0859 `"859"', add
label define pr05a_arrives_lbl 0904 `"904"', add
label define pr05a_arrives_lbl 0909 `"909"', add
label define pr05a_arrives_lbl 0914 `"914"', add
label define pr05a_arrives_lbl 0919 `"919"', add
label define pr05a_arrives_lbl 0924 `"924"', add
label define pr05a_arrives_lbl 0929 `"929"', add
label define pr05a_arrives_lbl 0934 `"934"', add
label define pr05a_arrives_lbl 0939 `"939"', add
label define pr05a_arrives_lbl 0944 `"944"', add
label define pr05a_arrives_lbl 0949 `"949"', add
label define pr05a_arrives_lbl 0954 `"954"', add
label define pr05a_arrives_lbl 0959 `"959"', add
label define pr05a_arrives_lbl 1004 `"1004"', add
label define pr05a_arrives_lbl 1009 `"1009"', add
label define pr05a_arrives_lbl 1014 `"1014"', add
label define pr05a_arrives_lbl 1019 `"1019"', add
label define pr05a_arrives_lbl 1024 `"1024"', add
label define pr05a_arrives_lbl 1029 `"1029"', add
label define pr05a_arrives_lbl 1034 `"1034"', add
label define pr05a_arrives_lbl 1039 `"1039"', add
label define pr05a_arrives_lbl 1044 `"1044"', add
label define pr05a_arrives_lbl 1049 `"1049"', add
label define pr05a_arrives_lbl 1054 `"1054"', add
label define pr05a_arrives_lbl 1059 `"1059"', add
label define pr05a_arrives_lbl 1104 `"1104"', add
label define pr05a_arrives_lbl 1109 `"1109"', add
label define pr05a_arrives_lbl 1114 `"1114"', add
label define pr05a_arrives_lbl 1119 `"1119"', add
label define pr05a_arrives_lbl 1124 `"1124"', add
label define pr05a_arrives_lbl 1129 `"1129"', add
label define pr05a_arrives_lbl 1134 `"1134"', add
label define pr05a_arrives_lbl 1139 `"1139"', add
label define pr05a_arrives_lbl 1144 `"1144"', add
label define pr05a_arrives_lbl 1149 `"1149"', add
label define pr05a_arrives_lbl 1154 `"1154"', add
label define pr05a_arrives_lbl 1159 `"1159"', add
label define pr05a_arrives_lbl 1204 `"1204"', add
label define pr05a_arrives_lbl 1209 `"1209"', add
label define pr05a_arrives_lbl 1214 `"1214"', add
label define pr05a_arrives_lbl 1219 `"1219"', add
label define pr05a_arrives_lbl 1224 `"1224"', add
label define pr05a_arrives_lbl 1229 `"1229"', add
label define pr05a_arrives_lbl 1234 `"1234"', add
label define pr05a_arrives_lbl 1239 `"1239"', add
label define pr05a_arrives_lbl 1244 `"1244"', add
label define pr05a_arrives_lbl 1249 `"1249"', add
label define pr05a_arrives_lbl 1254 `"1254"', add
label define pr05a_arrives_lbl 1259 `"1259"', add
label define pr05a_arrives_lbl 1304 `"1304"', add
label define pr05a_arrives_lbl 1309 `"1309"', add
label define pr05a_arrives_lbl 1314 `"1314"', add
label define pr05a_arrives_lbl 1319 `"1319"', add
label define pr05a_arrives_lbl 1324 `"1324"', add
label define pr05a_arrives_lbl 1329 `"1329"', add
label define pr05a_arrives_lbl 1334 `"1334"', add
label define pr05a_arrives_lbl 1339 `"1339"', add
label define pr05a_arrives_lbl 1344 `"1344"', add
label define pr05a_arrives_lbl 1349 `"1349"', add
label define pr05a_arrives_lbl 1354 `"1354"', add
label define pr05a_arrives_lbl 1359 `"1359"', add
label define pr05a_arrives_lbl 1404 `"1404"', add
label define pr05a_arrives_lbl 1409 `"1409"', add
label define pr05a_arrives_lbl 1414 `"1414"', add
label define pr05a_arrives_lbl 1419 `"1419"', add
label define pr05a_arrives_lbl 1424 `"1424"', add
label define pr05a_arrives_lbl 1429 `"1429"', add
label define pr05a_arrives_lbl 1434 `"1434"', add
label define pr05a_arrives_lbl 1439 `"1439"', add
label define pr05a_arrives_lbl 1444 `"1444"', add
label define pr05a_arrives_lbl 1449 `"1449"', add
label define pr05a_arrives_lbl 1454 `"1454"', add
label define pr05a_arrives_lbl 1459 `"1459"', add
label define pr05a_arrives_lbl 1504 `"1504"', add
label define pr05a_arrives_lbl 1509 `"1509"', add
label define pr05a_arrives_lbl 1514 `"1514"', add
label define pr05a_arrives_lbl 1519 `"1519"', add
label define pr05a_arrives_lbl 1524 `"1524"', add
label define pr05a_arrives_lbl 1529 `"1529"', add
label define pr05a_arrives_lbl 1534 `"1534"', add
label define pr05a_arrives_lbl 1539 `"1539"', add
label define pr05a_arrives_lbl 1544 `"1544"', add
label define pr05a_arrives_lbl 1549 `"1549"', add
label define pr05a_arrives_lbl 1554 `"1554"', add
label define pr05a_arrives_lbl 1559 `"1559"', add
label define pr05a_arrives_lbl 1604 `"1604"', add
label define pr05a_arrives_lbl 1609 `"1609"', add
label define pr05a_arrives_lbl 1614 `"1614"', add
label define pr05a_arrives_lbl 1619 `"1619"', add
label define pr05a_arrives_lbl 1624 `"1624"', add
label define pr05a_arrives_lbl 1629 `"1629"', add
label define pr05a_arrives_lbl 1634 `"1634"', add
label define pr05a_arrives_lbl 1639 `"1639"', add
label define pr05a_arrives_lbl 1644 `"1644"', add
label define pr05a_arrives_lbl 1649 `"1649"', add
label define pr05a_arrives_lbl 1654 `"1654"', add
label define pr05a_arrives_lbl 1659 `"1659"', add
label define pr05a_arrives_lbl 1704 `"1704"', add
label define pr05a_arrives_lbl 1709 `"1709"', add
label define pr05a_arrives_lbl 1714 `"1714"', add
label define pr05a_arrives_lbl 1719 `"1719"', add
label define pr05a_arrives_lbl 1724 `"1724"', add
label define pr05a_arrives_lbl 1729 `"1729"', add
label define pr05a_arrives_lbl 1734 `"1734"', add
label define pr05a_arrives_lbl 1739 `"1739"', add
label define pr05a_arrives_lbl 1744 `"1744"', add
label define pr05a_arrives_lbl 1749 `"1749"', add
label define pr05a_arrives_lbl 1754 `"1754"', add
label define pr05a_arrives_lbl 1759 `"1759"', add
label define pr05a_arrives_lbl 1804 `"1804"', add
label define pr05a_arrives_lbl 1809 `"1809"', add
label define pr05a_arrives_lbl 1814 `"1814"', add
label define pr05a_arrives_lbl 1819 `"1819"', add
label define pr05a_arrives_lbl 1824 `"1824"', add
label define pr05a_arrives_lbl 1829 `"1829"', add
label define pr05a_arrives_lbl 1834 `"1834"', add
label define pr05a_arrives_lbl 1839 `"1839"', add
label define pr05a_arrives_lbl 1844 `"1844"', add
label define pr05a_arrives_lbl 1849 `"1849"', add
label define pr05a_arrives_lbl 1854 `"1854"', add
label define pr05a_arrives_lbl 1859 `"1859"', add
label define pr05a_arrives_lbl 1904 `"1904"', add
label define pr05a_arrives_lbl 1909 `"1909"', add
label define pr05a_arrives_lbl 1914 `"1914"', add
label define pr05a_arrives_lbl 1919 `"1919"', add
label define pr05a_arrives_lbl 1924 `"1924"', add
label define pr05a_arrives_lbl 1929 `"1929"', add
label define pr05a_arrives_lbl 1934 `"1934"', add
label define pr05a_arrives_lbl 1939 `"1939"', add
label define pr05a_arrives_lbl 1944 `"1944"', add
label define pr05a_arrives_lbl 1949 `"1949"', add
label define pr05a_arrives_lbl 1954 `"1954"', add
label define pr05a_arrives_lbl 1959 `"1959"', add
label define pr05a_arrives_lbl 2004 `"2004"', add
label define pr05a_arrives_lbl 2009 `"2009"', add
label define pr05a_arrives_lbl 2014 `"2014"', add
label define pr05a_arrives_lbl 2019 `"2019"', add
label define pr05a_arrives_lbl 2024 `"2024"', add
label define pr05a_arrives_lbl 2029 `"2029"', add
label define pr05a_arrives_lbl 2034 `"2034"', add
label define pr05a_arrives_lbl 2039 `"2039"', add
label define pr05a_arrives_lbl 2044 `"2044"', add
label define pr05a_arrives_lbl 2049 `"2049"', add
label define pr05a_arrives_lbl 2054 `"2054"', add
label define pr05a_arrives_lbl 2059 `"2059"', add
label define pr05a_arrives_lbl 2104 `"2104"', add
label define pr05a_arrives_lbl 2109 `"2109"', add
label define pr05a_arrives_lbl 2114 `"2114"', add
label define pr05a_arrives_lbl 2119 `"2119"', add
label define pr05a_arrives_lbl 2124 `"2124"', add
label define pr05a_arrives_lbl 2129 `"2129"', add
label define pr05a_arrives_lbl 2134 `"2134"', add
label define pr05a_arrives_lbl 2139 `"2139"', add
label define pr05a_arrives_lbl 2144 `"2144"', add
label define pr05a_arrives_lbl 2149 `"2149"', add
label define pr05a_arrives_lbl 2154 `"2154"', add
label define pr05a_arrives_lbl 2159 `"2159"', add
label define pr05a_arrives_lbl 2204 `"2204"', add
label define pr05a_arrives_lbl 2209 `"2209"', add
label define pr05a_arrives_lbl 2214 `"2214"', add
label define pr05a_arrives_lbl 2219 `"2219"', add
label define pr05a_arrives_lbl 2224 `"2224"', add
label define pr05a_arrives_lbl 2229 `"2229"', add
label define pr05a_arrives_lbl 2234 `"2234"', add
label define pr05a_arrives_lbl 2239 `"2239"', add
label define pr05a_arrives_lbl 2244 `"2244"', add
label define pr05a_arrives_lbl 2249 `"2249"', add
label define pr05a_arrives_lbl 2254 `"2254"', add
label define pr05a_arrives_lbl 2259 `"2259"', add
label define pr05a_arrives_lbl 2304 `"2304"', add
label define pr05a_arrives_lbl 2309 `"2309"', add
label define pr05a_arrives_lbl 2314 `"2314"', add
label define pr05a_arrives_lbl 2319 `"2319"', add
label define pr05a_arrives_lbl 2324 `"2324"', add
label define pr05a_arrives_lbl 2329 `"2329"', add
label define pr05a_arrives_lbl 2334 `"2334"', add
label define pr05a_arrives_lbl 2339 `"2339"', add
label define pr05a_arrives_lbl 2344 `"2344"', add
label define pr05a_arrives_lbl 2349 `"2349"', add
label define pr05a_arrives_lbl 2354 `"2354"', add
label define pr05a_arrives_lbl 2359 `"2359"', add
label values pr05a_arrives pr05a_arrives_lbl

label define pr05a_tribe_lbl 000000 `"NIU (not in universe)"'
label define pr05a_tribe_lbl 200300 `"Apache"', add
label define pr05a_tribe_lbl 210200 `"Seminole"', add
label define pr05a_tribe_lbl 213200 `"American Indian, tribe not elsewhere classified"', add
label define pr05a_tribe_lbl 213300 `"American Indian, tribe not reported"', add
label define pr05a_tribe_lbl 300100 `"American Indian or Alaska Native, tribe not elsewhere classified"', add
label values pr05a_tribe pr05a_tribe_lbl

label define pr05a_yrimmipr_lbl 000 `"NIU (not in universe)"'
label define pr05a_yrimmipr_lbl 001 `"2000"', add
label define pr05a_yrimmipr_lbl 002 `"2001"', add
label define pr05a_yrimmipr_lbl 003 `"2002"', add
label define pr05a_yrimmipr_lbl 004 `"2003"', add
label define pr05a_yrimmipr_lbl 005 `"2004"', add
label define pr05a_yrimmipr_lbl 006 `"2005"', add
label define pr05a_yrimmipr_lbl 999 `"1999"', add
label define pr05a_yrimmipr_lbl 998 `"1998"', add
label define pr05a_yrimmipr_lbl 997 `"1997"', add
label define pr05a_yrimmipr_lbl 996 `"1996"', add
label define pr05a_yrimmipr_lbl 995 `"1995"', add
label define pr05a_yrimmipr_lbl 994 `"1994"', add
label define pr05a_yrimmipr_lbl 993 `"1993"', add
label define pr05a_yrimmipr_lbl 992 `"1992"', add
label define pr05a_yrimmipr_lbl 991 `"1991"', add
label define pr05a_yrimmipr_lbl 990 `"1990"', add
label define pr05a_yrimmipr_lbl 989 `"1989"', add
label define pr05a_yrimmipr_lbl 988 `"1988"', add
label define pr05a_yrimmipr_lbl 987 `"1987"', add
label define pr05a_yrimmipr_lbl 986 `"1986"', add
label define pr05a_yrimmipr_lbl 985 `"1985"', add
label define pr05a_yrimmipr_lbl 984 `"1984"', add
label define pr05a_yrimmipr_lbl 983 `"1983"', add
label define pr05a_yrimmipr_lbl 982 `"1982"', add
label define pr05a_yrimmipr_lbl 981 `"1981"', add
label define pr05a_yrimmipr_lbl 980 `"1980"', add
label define pr05a_yrimmipr_lbl 979 `"1979"', add
label define pr05a_yrimmipr_lbl 978 `"1978"', add
label define pr05a_yrimmipr_lbl 977 `"1977"', add
label define pr05a_yrimmipr_lbl 976 `"1976"', add
label define pr05a_yrimmipr_lbl 975 `"1975"', add
label define pr05a_yrimmipr_lbl 974 `"1974"', add
label define pr05a_yrimmipr_lbl 973 `"1973"', add
label define pr05a_yrimmipr_lbl 972 `"1972"', add
label define pr05a_yrimmipr_lbl 971 `"1971"', add
label define pr05a_yrimmipr_lbl 970 `"1970"', add
label define pr05a_yrimmipr_lbl 969 `"1969"', add
label define pr05a_yrimmipr_lbl 968 `"1968"', add
label define pr05a_yrimmipr_lbl 967 `"1967"', add
label define pr05a_yrimmipr_lbl 966 `"1966"', add
label define pr05a_yrimmipr_lbl 965 `"1965"', add
label define pr05a_yrimmipr_lbl 964 `"1964"', add
label define pr05a_yrimmipr_lbl 963 `"1963"', add
label define pr05a_yrimmipr_lbl 962 `"1962"', add
label define pr05a_yrimmipr_lbl 961 `"1961"', add
label define pr05a_yrimmipr_lbl 960 `"1960"', add
label define pr05a_yrimmipr_lbl 959 `"1959"', add
label define pr05a_yrimmipr_lbl 958 `"1958"', add
label define pr05a_yrimmipr_lbl 957 `"1957"', add
label define pr05a_yrimmipr_lbl 956 `"1956"', add
label define pr05a_yrimmipr_lbl 955 `"1955"', add
label define pr05a_yrimmipr_lbl 954 `"1954"', add
label define pr05a_yrimmipr_lbl 953 `"1953"', add
label define pr05a_yrimmipr_lbl 952 `"1952"', add
label define pr05a_yrimmipr_lbl 951 `"1951"', add
label define pr05a_yrimmipr_lbl 950 `"1950"', add
label define pr05a_yrimmipr_lbl 949 `"1949"', add
label define pr05a_yrimmipr_lbl 948 `"1948"', add
label define pr05a_yrimmipr_lbl 947 `"1947"', add
label define pr05a_yrimmipr_lbl 946 `"1946"', add
label define pr05a_yrimmipr_lbl 945 `"1945"', add
label define pr05a_yrimmipr_lbl 944 `"1944"', add
label define pr05a_yrimmipr_lbl 943 `"1943"', add
label define pr05a_yrimmipr_lbl 942 `"1942"', add
label define pr05a_yrimmipr_lbl 941 `"1941"', add
label define pr05a_yrimmipr_lbl 940 `"1940"', add
label define pr05a_yrimmipr_lbl 939 `"1939"', add
label define pr05a_yrimmipr_lbl 938 `"1938"', add
label define pr05a_yrimmipr_lbl 937 `"1937"', add
label define pr05a_yrimmipr_lbl 936 `"1936"', add
label define pr05a_yrimmipr_lbl 935 `"1935"', add
label define pr05a_yrimmipr_lbl 933 `"1933-1934"', add
label define pr05a_yrimmipr_lbl 931 `"1931-1932"', add
label define pr05a_yrimmipr_lbl 930 `"1930"', add
label values pr05a_yrimmipr pr05a_yrimmipr_lbl


