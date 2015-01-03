* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                       ///
  int     cntry            1-3      ///
  int     year             4-7      ///
  int     sample           8-11     ///
  double  serial           12-21    ///
  long    br10a_dwnum      22-28    ///
  byte    br10a_pern       29-30    ///
  byte    br10a_fbig       31-31    ///
  byte    br10a_fbig_nh    32-33    ///
  byte    br10a_state      34-35    ///
  byte    br10a_geogr      36-36    ///
  byte    br10a_metro      37-38    ///
  byte    br10a_urban      39-39    ///
  byte    br10a_typhh      40-40    ///
  byte    br10a_typunit    41-42    ///
  byte    br10a_owner      43-43    ///
  long    br10a_renthh     44-49    ///
  float   br10a_rentmin    50-58    ///
  byte    br10a_walls      59-60    ///
  byte    br10a_rooms      61-62    ///
  float   br10a_nperroom   63-65    ///
  byte    br10a_nbedroom   66-67    ///
  float   br10a_nperbdrm   68-70    ///
  byte    br10a_nbath      71-72    ///
  byte    br10a_toilets    73-73    ///
  byte    br10a_sewage     74-74    ///
  byte    br10a_water      75-76    ///
  byte    br10a_watpipe    77-77    ///
  byte    br10a_trash      78-78    ///
  byte    br10a_electric   79-79    ///
  byte    br10a_meter      80-80    ///
  byte    br10a_radio      81-81    ///
  byte    br10a_tv         82-82    ///
  byte    br10a_washer     83-83    ///
  byte    br10a_refrig     84-84    ///
  byte    br10a_cellphon   85-85    ///
  byte    br10a_phone      86-86    ///
  byte    br10a_computer   87-87    ///
  byte    br10a_internet   88-88    ///
  byte    br10a_motorcyc   89-89    ///
  byte    br10a_auto       90-90    ///
  byte    br10a_emighh     91-91    ///
  byte    br10a_numperhh   92-93    ///
  byte    br10a_nheadshh   94-94    ///
  byte    br10a_deathhh    95-95    ///
  long    br10a_incmohh    96-102   ///
  float   br10a_incwghh    103-112  ///
  float   br10a_incpchh    113-120  ///
  float   br10a_incwgpc    121-129  ///
  byte    br10a_hhstruct   130-130  ///
  byte    br10a_qowner     131-131  ///
  byte    br10a_qrenthh    132-132  ///
  byte    br10a_qwalls     133-133  ///
  byte    br10a_qrooms     134-134  ///
  byte    br10a_qnbedroom  135-135  ///
  byte    br10a_qnbath     136-136  ///
  byte    br10a_qtoilets   137-137  ///
  byte    br10a_qsewage    138-138  ///
  byte    br10a_qwater     139-139  ///
  byte    br10a_qwatpipe   140-140  ///
  byte    br10a_qtrash     141-141  ///
  byte    br10a_qelectric  142-142  ///
  byte    br10a_qmeter     143-143  ///
  byte    br10a_qradio     144-144  ///
  byte    br10a_qtv        145-145  ///
  byte    br10a_qwasher    146-146  ///
  byte    br10a_qrefrig    147-147  ///
  byte    br10a_qcellphon  148-148  ///
  byte    br10a_qphone     149-149  ///
  byte    br10a_qcomputer  150-150  ///
  byte    br10a_qinternet  151-151  ///
  byte    br10a_qmotorcyc  152-152  ///
  byte    br10a_qauto      153-153  ///
  byte    br10a_qemighh    154-154  ///
  byte    br10a_qnumperhh  155-155  ///
  byte    br10a_qnheadshh  156-156  ///
  byte    br10a_qdeathhh   157-157  ///
  byte    br10a_nmig       158-158  ///
  byte    br10a_nmort      159-159  ///
  int     pernum           160-162  ///
  float   wtper            163-170  ///
  byte    br10a_pernum     171-172  ///
  byte    br10a_relate     173-174  ///
  byte    br10a_sex        175-175  ///
  int     br10a_age        176-178  ///
  byte    br10a_agemo      179-180  ///
  byte    br10a_ageform    181-181  ///
  byte    br10a_race       182-182  ///
  byte    br10a_birthrec   183-183  ///
  byte    br10a_dissee     184-184  ///
  byte    br10a_dishear    185-185  ///
  byte    br10a_dismob     186-186  ///
  byte    br10a_dismntl    187-187  ///
  byte    br10a_bornmuni   188-188  ///
  byte    br10a_bornstat   189-189  ///
  byte    br10a_nation     190-190  ///
  int     br10a_moveyr     191-194  ///
  byte    br10a_bpl        195-195  ///
  byte    br10a_bplstate   196-197  ///
  long    br10a_bplctry    198-204  ///
  int     br10a_yrsstate   205-207  ///
  int     br10a_yrsmuni    208-210  ///
  byte    br10a_prevres    211-211  ///
  byte    br10a_prevstat   212-213  ///
  long    br10a_prevmuni   214-220  ///
  int     br10a_prevctry   221-223  ///
  byte    br10a_res5yr     224-224  ///
  byte    br10a_state5yr   225-226  ///
  long    br10a_muni5yr    227-233  ///
  int     br10a_cntry5yr   234-236  ///
  byte    br10a_lit        237-237  ///
  byte    br10a_school     238-238  ///
  byte    br10a_edlevel1   239-240  ///
  byte    br10a_grade1     241-242  ///
  byte    br10a_grade2     243-243  ///
  byte    br10a_college    244-244  ///
  byte    br10a_edattain   245-246  ///
  byte    br10a_edcompl    247-247  ///
  byte    br10a_degtyp     248-248  ///
  byte    br10a_edlevel2   249-249  ///
  int     br10a_undergrd   250-252  ///
  int     br10a_masters    253-255  ///
  int     br10a_doctoral   256-258  ///
  byte    br10a_edloc      259-259  ///
  byte    br10a_edstate    260-261  ///
  int     br10a_schctry    262-264  ///
  byte    br10a_livesp     265-265  ///
  byte    br10a_sploc      266-267  ///
  byte    br10a_union      268-268  ///
  byte    br10a_marst      269-269  ///
  byte    br10a_wklstwk    270-270  ///
  byte    br10a_paidaway   271-271  ///
  byte    br10a_wknopay    272-272  ///
  byte    br10a_subsist    273-273  ///
  byte    br10a_njobs      274-274  ///
  int     br10a_occ        275-278  ///
  long    br10a_ind        279-283  ///
  byte    br10a_classwkr   284-284  ///
  byte    br10a_nemps      285-285  ///
  byte    br10a_socsec     286-286  ///
  byte    br10a_paysrc     287-287  ///
  long    br10a_incgross   288-293  ///
  long    br10a_incjob     294-299  ///
  float   br10a_incjobmw   300-305  ///
  byte    br10a_incothjb   306-306  ///
  long    br10a_incjb2gr   307-312  ///
  float   br10a_incjb2mw   313-321  ///
  long    br10a_incjobs    322-328  ///
  float   br10a_incjbsmw   329-337  ///
  long    br10a_inctotmo   338-344  ///
  float   br10a_inctotmw   345-353  ///
  long    br10a_inchh      354-360  ///
  float   br10a_inchhmw    361-370  ///
  float   br10a_inchhpc    371-378  ///
  float   br10a_inchpcmw   379-387  ///
  int     br10a_hours      388-390  ///
  byte    br10a_seekwork   391-391  ///
  byte    br10a_canwork    392-392  ///
  byte    br10a_incretir   393-393  ///
  byte    br10a_incfamss   394-394  ///
  byte    br10a_inctran    395-395  ///
  byte    br10a_incoth     396-396  ///
  long    br10a_incvalue   397-402  ///
  byte    br10a_wherewk    403-403  ///
  byte    br10a_wkstate    404-405  ///
  long    br10a_wkcntry    406-412  ///
  byte    br10a_homqday    413-413  ///
  byte    br10a_commute    414-414  ///
  byte    br10a_everborn   415-415  ///
  byte    br10a_chbornm    416-417  ///
  byte    br10a_chbornf    418-419  ///
  byte    br10a_chborn     420-421  ///
  byte    br10a_chsurvm    422-423  ///
  byte    br10a_chsurvf    424-425  ///
  byte    br10a_chsurv     426-427  ///
  byte    br10a_lbthsex    428-428  ///
  byte    br10a_lbthage    429-430  ///
  byte    br10a_chbnyr     431-431  ///
  byte    br10a_chliveyr   432-432  ///
  byte    br10a_chdeadyr   433-433  ///
  byte    br10a_chdthmo    434-435  ///
  int     br10a_chdthyr    436-439  ///
  byte    br10a_stillbth   440-440  ///
  byte    br10a_nstillb    441-442  ///
  byte    br10a_stilbnf    443-444  ///
  byte    br10a_stilbnm    445-446  ///
  byte    br10a_nstilbth   447-448  ///
  byte    br10a_respond    449-449  ///
  byte    br10a_respnum    450-451  ///
  byte    br10a_labforce   452-452  ///
  byte    br10a_empstat    453-453  ///
  byte    br10a_empstat2   454-454  ///
  byte    br10a_classwk2   455-455  ///
  byte    br10a_contract   456-456  ///
  byte    br10a_relig      457-458  ///
  byte    br10a_qrelate    459-459  ///
  byte    br10a_qsex       460-460  ///
  byte    br10a_qageyrmo   461-461  ///
  byte    br10a_qmothaliv  462-462  ///
  byte    br10a_qrace      463-463  ///
  byte    br10a_qbirthrec  464-464  ///
  byte    br10a_qdissee    465-465  ///
  byte    br10a_qdishear   466-466  ///
  byte    br10a_qdismob    467-467  ///
  byte    br10a_qdismntl   468-468  ///
  byte    br10a_qbornmuni  469-469  ///
  byte    br10a_qbornstat  470-470  ///
  byte    br10a_qnation    471-471  ///
  byte    br10a_qmoveyr    472-472  ///
  byte    br10a_qbpl       473-473  ///
  byte    br10a_qbplstate  474-474  ///
  byte    br10a_qbplctry   475-475  ///
  byte    br10a_qyrsstate  476-476  ///
  byte    br10a_qyrsmuni   477-477  ///
  byte    br10a_qprevres   478-478  ///
  byte    br10a_qprevstat  479-479  ///
  byte    br10a_qprevmuni  480-480  ///
  byte    br10a_qprevctry  481-481  ///
  byte    br10a_qres5yr    482-482  ///
  byte    br10a_qstate5yr  483-483  ///
  byte    br10a_qmuni5yr   484-484  ///
  byte    br10a_qcntry5yr  485-485  ///
  byte    br10a_qlit       486-486  ///
  byte    br10a_qschool    487-487  ///
  byte    br10a_qedlevel1  488-488  ///
  byte    br10a_qgrade1    489-489  ///
  byte    br10a_qgrade2    490-490  ///
  byte    br10a_qcollege   491-491  ///
  byte    br10a_qedattain  492-492  ///
  byte    br10a_qedcompl   493-493  ///
  byte    br10a_qdegtyp    494-494  ///
  byte    br10a_qundergrd  495-495  ///
  byte    br10a_qmasters   496-496  ///
  byte    br10a_qdoctoral  497-497  ///
  byte    br10a_qedloc     498-498  ///
  byte    br10a_qedstate   499-499  ///
  byte    br10a_qedmuni    500-500  ///
  byte    br10a_qschctry   501-501  ///
  byte    br10a_qlivesp    502-502  ///
  byte    br10a_qsploc     503-503  ///
  byte    br10a_qunion     504-504  ///
  byte    br10a_qmarst     505-505  ///
  byte    br10a_qwklstwk   506-506  ///
  byte    br10a_qpaidaway  507-507  ///
  byte    br10a_qwknopay   508-508  ///
  byte    br10a_qsubsist   509-509  ///
  byte    br10a_qnjobs     510-510  ///
  byte    br10a_qocc       511-511  ///
  byte    br10a_qind       512-512  ///
  byte    br10a_qclasswkr  513-513  ///
  byte    br10a_qnemps     514-514  ///
  byte    br10a_qsocsec    515-515  ///
  byte    br10a_qpaysrc    516-516  ///
  byte    br10a_qincgross  517-517  ///
  byte    br10a_qincothjb  518-518  ///
  byte    br10a_qincjb2gr  519-519  ///
  byte    br10a_qhours     520-520  ///
  byte    br10a_qseekwork  521-521  ///
  byte    br10a_qcanwork   522-522  ///
  byte    br10a_qincretir  523-523  ///
  byte    br10a_qincfamss  524-524  ///
  byte    br10a_qinctran   525-525  ///
  byte    br10a_qincoth    526-526  ///
  byte    br10a_qincvalue  527-527  ///
  byte    br10a_qwherewk   528-528  ///
  byte    br10a_qwkstate   529-529  ///
  byte    br10a_qwkmuni    530-530  ///
  byte    br10a_qwkcntry   531-531  ///
  byte    br10a_qhomqday   532-532  ///
  byte    br10a_qcommute   533-533  ///
  byte    br10a_qeverborn  534-534  ///
  byte    br10a_qchbornm   535-535  ///
  byte    br10a_qchbornf   536-536  ///
  byte    br10a_qchborn    537-537  ///
  byte    br10a_qchlive    538-538  ///
  byte    br10a_qchsurvm   539-539  ///
  byte    br10a_qchsurvf   540-540  ///
  byte    br10a_qchsurv    541-541  ///
  byte    br10a_qlbthsex   542-542  ///
  byte    br10a_qlbthage   543-543  ///
  byte    br10a_qchliveyr  544-544  ///
  byte    br10a_qchdeadyr  545-545  ///
  byte    br10a_qchdthmo   546-546  ///
  byte    br10a_qchdthyr   547-547  ///
  byte    br10a_qstillbth  548-548  ///
  byte    br10a_qnstillb   549-549  ///
  byte    br10a_qstilbnf   550-550  ///
  byte    br10a_qstilbnm   551-551  ///
  byte    br10a_qrespond   552-552  ///
  byte    br10a_qrespnum   553-553  ///
  byte    br10a_qnstilbth  554-554  ///
  byte    br10a_qrelig     555-555  ///
  using `"ipumsi_00055.dat"'

replace br10a_rentmin   = br10a_rentmin   / 100000
replace br10a_nperroom  = br10a_nperroom  / 10
replace br10a_nperbdrm  = br10a_nperbdrm  / 10
replace br10a_incwghh   = br10a_incwghh   / 100000
replace br10a_incpchh   = br10a_incpchh   / 100
replace br10a_incwgpc   = br10a_incwgpc   / 100000
replace wtper           = wtper           / 100
replace br10a_incjobmw  = br10a_incjobmw  / 100
replace br10a_incjb2mw  = br10a_incjb2mw  / 100000
replace br10a_incjbsmw  = br10a_incjbsmw  / 100000
replace br10a_inctotmw  = br10a_inctotmw  / 100000
replace br10a_inchhmw   = br10a_inchhmw   / 100000
replace br10a_inchhpc   = br10a_inchhpc   / 100
replace br10a_inchpcmw  = br10a_inchpcmw  / 100000

format serial          %10.0f
format br10a_rentmin   %9.5f
format br10a_nperroom  %3.1f
format br10a_nperbdrm  %3.1f
format br10a_incwghh   %10.5f
format br10a_incpchh   %8.2f
format br10a_incwgpc   %9.5f
format wtper           %8.2f
format br10a_incjobmw  %6.2f
format br10a_incjb2mw  %9.5f
format br10a_incjbsmw  %9.5f
format br10a_inctotmw  %9.5f
format br10a_inchhmw   %10.5f
format br10a_inchhpc   %8.2f
format br10a_inchpcmw  %9.5f

label var cntry           `"Country"'
label var year            `"Year"'
label var sample          `"IPUMS sample identifier"'
label var serial          `"Household serial number"'
label var br10a_dwnum     `"Dwelling number"'
label var br10a_pern      `"Number of persons in household"'
label var br10a_fbig      `"Dwelling created by splitting apart a large dwelling or household"'
label var br10a_fbig_nh   `"Number of persons in large household before it was split"'
label var br10a_state     `"State of residence"'
label var br10a_geogr     `"Geographical region"'
label var br10a_metro     `"Metropolitan area"'
label var br10a_urban     `"Urban-rural"'
label var br10a_typhh     `"Household type"'
label var br10a_typunit   `"Unit classification"'
label var br10a_owner     `"Household occupancy condition"'
label var br10a_renthh    `"Monthly rent (in Reais) in July, 2010"'
label var br10a_rentmin   `"Monthly rent as ratio of minimum wages in July, 2010"'
label var br10a_walls     `"External walls material"'
label var br10a_rooms     `"Number of rooms"'
label var br10a_nperroom  `"Density dweller/room"'
label var br10a_nbedroom  `"Number of bedrooms"'
label var br10a_nperbdrm  `"Density dweller/bedroom"'
label var br10a_nbath     `"Number of bathrooms for exclusive use"'
label var br10a_toilets   `"Use of toilet or latrine [buraco]"'
label var br10a_sewage    `"Type of sanitary sewerage"'
label var br10a_water     `"Water supply"'
label var br10a_watpipe   `"Piped water"'
label var br10a_trash     `"Garbage destination"'
label var br10a_electric  `"Power availability"'
label var br10a_meter     `"Energy meter, electricity company distributor"'
label var br10a_radio     `"Have radio"'
label var br10a_tv        `"Have TV"'
label var br10a_washer    `"Have washing machine"'
label var br10a_refrig    `"Have refrigerator"'
label var br10a_cellphon  `"Have cell phone"'
label var br10a_phone     `"Have phone"'
label var br10a_computer  `"Have personal computer"'
label var br10a_internet  `"Have computers connected to Internet"'
label var br10a_motorcyc  `"Motorcycle for private use"'
label var br10a_auto      `"Car for private use"'
label var br10a_emighh    `"Any person living abroad in July 31, 2010"'
label var br10a_numperhh  `"Number of persons living in this household in July 31, 2010"'
label var br10a_nheadshh  `"Number of heads"'
label var br10a_deathhh   `"Deaths in the household from August, 2009 to July, 2010"'
label var br10a_incmohh   `"Monthly household income in July, 2010"'
label var br10a_incwghh   `"Household income to minimum wage ratio in July, 2010"'
label var br10a_incpchh   `"Household income per capita in July, 2010"'
label var br10a_incwgpc   `"Household income per capita to minimum wage ratio in July, 2010"'
label var br10a_hhstruct  `"Household structure"'
label var br10a_qowner    `"Imputation mark in household occupancy condition"'
label var br10a_qrenthh   `"Imputation mark in monthly rent (in reais) in July, 2010"'
label var br10a_qwalls    `"Imputation mark in external walls material"'
label var br10a_qrooms    `"Imputation mark in number of rooms"'
label var br10a_qnbedroom `"Imputation mark in number of bedrooms"'
label var br10a_qnbath    `"Imputation mark in number of bathrooms for exclusive use"'
label var br10a_qtoilets  `"Imputation mark in use of toilet or latrine [buraco]"'
label var br10a_qsewage   `"Imputation mark in type of sewerage"'
label var br10a_qwater    `"Imputation mark in water supply"'
label var br10a_qwatpipe  `"Imputation mark in piped water"'
label var br10a_qtrash    `"Imputation mark in garbage destination"'
label var br10a_qelectric `"Imputation mark in power availability"'
label var br10a_qmeter    `"Imputation mark in energy meter, electricity company distributor"'
label var br10a_qradio    `"Imputation mark in have radio"'
label var br10a_qtv       `"Imputation mark in have TV"'
label var br10a_qwasher   `"Imputation mark in have washing machine"'
label var br10a_qrefrig   `"Imputation mark in have refrigerator"'
label var br10a_qcellphon `"Imputation mark in have cell phone"'
label var br10a_qphone    `"Imputation mark in have phone"'
label var br10a_qcomputer `"Imputation mark in have personal computer"'
label var br10a_qinternet `"Imputation mark in have computers connected to internet"'
label var br10a_qmotorcyc `"Imputation mark in motorcycle for private use"'
label var br10a_qauto     `"Imputation mark in car for private use"'
label var br10a_qemighh   `"Imputation mark in any person living abroad in July, 2010"'
label var br10a_qnumperhh `"Imputation mark in number of persons living in this household in July, 2010"'
label var br10a_qnheadshh `"Imputation mark in number of heads"'
label var br10a_qdeathhh  `"Imputation mark in deaths in the household from August, 2009 to July, 2010"'
label var br10a_nmig      `"Number of migration records"'
label var br10a_nmort     `"Number of mortality records"'
label var pernum          `"Person number"'
label var wtper           `"Person weight"'
label var br10a_pernum    `"Person number (within household)"'
label var br10a_relate    `"Relationship to head of household"'
label var br10a_sex       `"Sex"'
label var br10a_age       `"Age"'
label var br10a_agemo     `"Age in months"'
label var br10a_ageform   `"Form of age declaration"'
label var br10a_race      `"Color or race"'
label var br10a_birthrec  `"Birth record"'
label var br10a_dissee    `"Permanent difficulty seeing"'
label var br10a_dishear   `"Permanent difficulty hearing"'
label var br10a_dismob    `"Permanent difficulty walking"'
label var br10a_dismntl   `"Permanent mental/intellectual disability"'
label var br10a_bornmuni  `"Born in this municipality"'
label var br10a_bornstat  `"Born in this state"'
label var br10a_nation    `"Nationality"'
label var br10a_moveyr    `"Year moved to Brazil"'
label var br10a_bpl       `"State or foreign country of birth"'
label var br10a_bplstate  `"State of birth"'
label var br10a_bplctry   `"Foreign country of birth"'
label var br10a_yrsstate  `"Number of years living in this state"'
label var br10a_yrsmuni   `"Number of years living in this municipality"'
label var br10a_prevres   `"Previous municipality/state or country of residence"'
label var br10a_prevstat  `"Former state of residence"'
label var br10a_prevmuni  `"Former municipality of residence"'
label var br10a_prevctry  `"Former country of residence"'
label var br10a_res5yr    `"State/municipality or foreign country of residence in July 31, 2005"'
label var br10a_state5yr  `"State of residence in July 31, 2005"'
label var br10a_muni5yr   `"Municipality of residence in July 31, 2005"'
label var br10a_cntry5yr  `"Country of residence 5 years ago"'
label var br10a_lit       `"Can read and write"'
label var br10a_school    `"Attending school or daycare"'
label var br10a_edlevel1  `"Level of school attending"'
label var br10a_grade1    `"Elementary grade/year attending"'
label var br10a_grade2    `"High school grade attending"'
label var br10a_college   `"Completion of additional undergraduate degree"'
label var br10a_edattain  `"Highest level of education attended"'
label var br10a_edcompl   `"Have you completed the highest level of education attended"'
label var br10a_degtyp    `"Type of highest degree achieved"'
label var br10a_edlevel2  `"Education level"'
label var br10a_undergrd  `"Field of study in undergraduate studies"'
label var br10a_masters   `"Field of study in Master's degree"'
label var br10a_doctoral  `"Field of study in doctoral degree"'
label var br10a_edloc     `"Municipality/state or country where attending school"'
label var br10a_edstate   `"State where attending school or daycare"'
label var br10a_schctry   `"Country where attending school/daycare"'
label var br10a_livesp    `"Live with spouse/partner"'
label var br10a_sploc     `"Number of person for spouse/partner for females living in indigenous areas or no"'
label var br10a_union     `"Nature of union"'
label var br10a_marst     `"Marital status"'
label var br10a_wklstwk   `"Paid work last week (for at least one hour)"'
label var br10a_paidaway  `"Paid work last week while temporarily away from that job"'
label var br10a_wknopay   `"Unpaid work for other resident last week (for at least one hour)"'
label var br10a_subsist   `"Worked for household subsistence last week (for at least one hour)"'
label var br10a_njobs     `"Number of jobs held last week"'
label var br10a_occ       `"Occupation held from July 25 to July 31, 2010"'
label var br10a_ind       `"Industry of work from July 25 to July 31, 2010"'
label var br10a_classwkr  `"Status in employment from July 25 to July 31, 2010"'
label var br10a_nemps     `"Number of employees in work place from July 25 to July 31, 2010"'
label var br10a_socsec    `"Contributed to social security from July 25 to July 31, 2010"'
label var br10a_paysrc    `"Source of gross monthly income in main job held in July, 2010"'
label var br10a_incgross  `"Gross monthly income in main job held in July, 2010"'
label var br10a_incjob    `"Main job income in Brazilian reais in July, 2010"'
label var br10a_incjobmw  `"Main job income as ratio to minimum wage in July, 2010"'
label var br10a_incothjb  `"Source of monthly income from other jobs in July, 2010"'
label var br10a_incjb2gr  `"Gross monthly income from other jobs  in July, 2010"'
label var br10a_incjb2mw  `"Gross monthly income from other jobs to minimum wage ratio in July, 2010"'
label var br10a_incjobs   `"Gross income from all jobs in July, 2010"'
label var br10a_incjbsmw  `"Gross income from all jobs to minimum wage ratio in July, 2010"'
label var br10a_inctotmo  `"Total gross monthly income in July, 2010"'
label var br10a_inctotmw  `"Total monthly income to minimum wage ratio in July, 2010"'
label var br10a_inchh     `"Household income in July, 2010"'
label var br10a_inchhmw   `"Household income to minimum wage ratio in July, 2010"'
label var br10a_inchhpc   `"Household income per capita in July, 2010"'
label var br10a_inchpcmw  `"Household income per capita to minimum wage ratio in July, 2010"'
label var br10a_hours     `"Usual number of hours worked at main job from July 25 to July 31, 2010"'
label var br10a_seekwork  `"Looked for job from July 25 to July 31, 2010"'
label var br10a_canwork   `"Available for job from July 25 to July 31, 2010"'
label var br10a_incretir  `"Received retirement income or pension in July, 2010"'
label var br10a_incfamss  `"Received income from a social program (Bolsa familia or Program for the eradicat"'
label var br10a_inctran   `"Received income from other social programs or transfers in July, 2010"'
label var br10a_incoth    `"Received income from other sources (interest on savings, securities, rental, pen"'
label var br10a_incvalue  `"Total income received from other sources of income in July, 2010"'
label var br10a_wherewk   `"Municipality/state or country where worked from July 25 to July 31, 2010"'
label var br10a_wkstate   `"State where worked from July 25 to July 31, 2010"'
label var br10a_wkcntry   `"Foreign country where worked from July 25 to July 31, 2010"'
label var br10a_homqday   `"Commuting to home every day from July 25 to July 31, 2010"'
label var br10a_commute   `"Time spent in travel from home to work from July 25 to July 31, 2010"'
label var br10a_everborn  `"Children born alive as of July 31, 2010"'
label var br10a_chbornm   `"Males born alive as of July 31, 2010"'
label var br10a_chbornf   `"Females born alive as of July 31, 2010"'
label var br10a_chborn    `"Total number of children born alive as of July 31, 2010"'
label var br10a_chsurvm   `"Number of male children still alive on July 31, 2010"'
label var br10a_chsurvf   `"Number of female children still alive on July 31, 2010"'
label var br10a_chsurv    `"Total children still alive on July 31, 2010"'
label var br10a_lbthsex   `"Sex of the last child born alive as of July 31, 2010"'
label var br10a_lbthage   `"Age of the last child born alive on July 31, 2010"'
label var br10a_chbnyr    `"Last child born alive was born in 12 months up to July 31, 2010"'
label var br10a_chliveyr  `"Last child bornalive still alive on July 31, 2010"'
label var br10a_chdeadyr  `"Date of death of last child born alive"'
label var br10a_chdthmo   `"Month of death of last child born alive"'
label var br10a_chdthyr   `"Year of  death of last child born alive"'
label var br10a_stillbth  `"Ever had stillbirths as of July 31, 2010"'
label var br10a_nstillb   `"Number of male stillbirths as of July 31, 2010"'
label var br10a_stilbnf   `"Number of female stillbirths as of July 31, 2010"'
label var br10a_stilbnm   `"Total number of stillbirths as of July 31, 2010"'
label var br10a_nstilbth  `"Total number of children born alive and stillbirths as of July 31, 2010"'
label var br10a_respond   `"Person who provided information for this person"'
label var br10a_respnum   `"Number of order of the respondent (another resident)"'
label var br10a_labforce  `"Economic activity from July 25 to July 31, 2010"'
label var br10a_empstat   `"Employment status from July 25 to July 31, 2010 (Definition 1: among economicall"'
label var br10a_empstat2  `"Employment status from July 25 to July 31, 2010 (Definition 2: all persons age 1"'
label var br10a_classwk2  `"Class of worker in main job among economically active and employed"'
label var br10a_contract  `"Type of work contract for employees and military and civil servants"'
label var br10a_relig     `"Religion"'
label var br10a_qrelate   `"Imputation mark in relationship to head of household"'
label var br10a_qsex      `"Imputation mark in sex"'
label var br10a_qageyrmo  `"Imputation mark in age in years or months"'
label var br10a_qmothaliv `"Imputation mark in mother alive"'
label var br10a_qrace     `"Imputation mark in color or race"'
label var br10a_qbirthrec `"Imputation mark in birth record"'
label var br10a_qdissee   `"Imputation mark in permanent difficulty seeing"'
label var br10a_qdishear  `"Imputation mark in permanent difficulty hearing"'
label var br10a_qdismob   `"Imputation mark in permanent difficulty walking"'
label var br10a_qdismntl  `"Imputation mark in permanent mental/intellectual disability"'
label var br10a_qbornmuni `"Imputation mark in born in this municipality"'
label var br10a_qbornstat `"Imputation mark in born in this state"'
label var br10a_qnation   `"Imputation mark in nationality"'
label var br10a_qmoveyr   `"Imputation mark in year moved to Brazil"'
label var br10a_qbpl      `"Imputation mark in state or foreign country of birth"'
label var br10a_qbplstate `"Imputation mark in state of birth"'
label var br10a_qbplctry  `"Imputation mark in foreign country of birth"'
label var br10a_qyrsstate `"Imputation mark in number of years living in this state"'
label var br10a_qyrsmuni  `"Imputation mark in number of years living in this municipality"'
label var br10a_qprevres  `"Imputation mark in previous municipality/state or country of residence"'
label var br10a_qprevstat `"Imputation mark in former state of residence"'
label var br10a_qprevmuni `"Imputation mark in former municipality of residence"'
label var br10a_qprevctry `"Imputation mark in former country of residence"'
label var br10a_qres5yr   `"Imputation mark in state/municipality or foreign country of residence in July 31"'
label var br10a_qstate5yr `"Imputation mark in state of residence in July 31, 2005"'
label var br10a_qmuni5yr  `"Imputation mark in municipality of residence in July 31, 2005"'
label var br10a_qcntry5yr `"Imputation mark in country of residence 5 years ago"'
label var br10a_qlit      `"Imputation mark in can read and write"'
label var br10a_qschool   `"Imputation mark in attending school or daycare"'
label var br10a_qedlevel1 `"Imputation mark in level of school attending"'
label var br10a_qgrade1   `"Imputation mark in elementary grade/year attending"'
label var br10a_qgrade2   `"Imputation mark in high school grade attending"'
label var br10a_qcollege  `"Imputation mark in completion of undergraduate studies"'
label var br10a_qedattain `"Imputation mark in highest level of education attended"'
label var br10a_qedcompl  `"Imputation mark in have you completed the highest level of education attended"'
label var br10a_qdegtyp   `"Imputation mark in type of highest degree"'
label var br10a_qundergrd `"Imputation mark in field of study in undergraduate studies"'
label var br10a_qmasters  `"Imputation mark in field of study in master's degree"'
label var br10a_qdoctoral `"Imputation mark in field of study in doctoral degree"'
label var br10a_qedloc    `"Imputation mark in municipality/state or country where attended school"'
label var br10a_qedstate  `"Imputation mark in state where attended school or daycare"'
label var br10a_qedmuni   `"Imputation mark in municipality where attended school/daycare"'
label var br10a_qschctry  `"Imputation mark in country where attended school/daycare"'
label var br10a_qlivesp   `"Imputation mark in live with spouse/partner"'
label var br10a_qsploc    `"Imputation mark in number of spouse/partner for females living in indigenous are"'
label var br10a_qunion    `"Imputation mark in nature of union"'
label var br10a_qmarst    `"Imputation mark in marital status"'
label var br10a_qwklstwk  `"Imputation mark in paid work from July 25 to July 31, 2010 (for at least one hou"'
label var br10a_qpaidaway `"Imputation mark in paid work from July 25 to July 31, 2010 while temporarily awa"'
label var br10a_qwknopay  `"Imputation mark in helped without payment with other resident's paid work from J"'
label var br10a_qsubsist  `"Imputation mark in worked for household subsistence from July 25 to July 31, 201"'
label var br10a_qnjobs    `"Imputation mark in number of jobs held from July 25 to July 31, 2010"'
label var br10a_qocc      `"Imputation mark in occupation held from July 25 to July 31, 2010"'
label var br10a_qind      `"Imputation mark in Industry of work from July 25 to July 31, 2010"'
label var br10a_qclasswkr `"Imputation mark in status in employment from July 25 to July 31, 2010"'
label var br10a_qnemps    `"Imputation mark in number of employees in your work place from July 25 to July 3"'
label var br10a_qsocsec   `"Imputation mark in contributed to social security from July 25 to July 31, 2010"'
label var br10a_qpaysrc   `"Imputation mark in source of gross monthly income in main job held in July, 2010"'
label var br10a_qincgross `"Imputation mark in gross monthly income in main job held in July, 2010"'
label var br10a_qincothjb `"Imputation mark in source of monthly income from other jobs in July, 2010"'
label var br10a_qincjb2gr `"Imputation mark in gross monthly income from other jobs  in July, 2010"'
label var br10a_qhours    `"Imputation mark in usual number of hoursworked at main job from July 25 to July "'
label var br10a_qseekwork `"Imputation mark in looked for job from July 25 to July 31, 2010"'
label var br10a_qcanwork  `"Imputation mark in available for job from July 25 to July 31, 2010"'
label var br10a_qincretir `"Imputation mark in received retirement income or pension in July, 2010"'
label var br10a_qincfamss `"Imputation mark in received income from a social program (bolsa familia or progr"'
label var br10a_qinctran  `"Imputation mark in received income from other social programs or transfers in Ju"'
label var br10a_qincoth   `"Imputation mark in received income from other sources (interest on savings, secu"'
label var br10a_qincvalue `"Imputation mark in totalincome received from other sources of income in July, 20"'
label var br10a_qwherewk  `"Imputation mark in municipality/state or country where worked from July 25 to Ju"'
label var br10a_qwkstate  `"Imputation mark in state where worked from July 25 to July 31, 2010"'
label var br10a_qwkmuni   `"Imputation mark in municipality where worked from July 25 to July 31, 2010"'
label var br10a_qwkcntry  `"Imputation mark in foreign country where worked from July 25 to July 31, 2010"'
label var br10a_qhomqday  `"Imputation mark in commuting to home every day from July 25 to July 31, 2010"'
label var br10a_qcommute  `"Imputation mark in time spent in travel from home to work from July 25 to July 3"'
label var br10a_qeverborn `"Imputation mark in children born alive as of July 31, 2010"'
label var br10a_qchbornm  `"Imputation mark in males born alive as of July 31, 2010"'
label var br10a_qchbornf  `"Imputation mark in females born alive as of July 31, 2010"'
label var br10a_qchborn   `"Imputation mark in total number of children born alive as of July 31, 2010"'
label var br10a_qchlive   `"Imputation mark in any children still alive on July 31, 2010"'
label var br10a_qchsurvm  `"Imputation mark in male children still alive on July 31, 2010"'
label var br10a_qchsurvf  `"Imputation mark in female children still alive on July 31, 2010"'
label var br10a_qchsurv   `"Imputation mark in total children still alive on July 31, 2010"'
label var br10a_qlbthsex  `"Imputation mark in sex of the last child born alive as of July 31, 2010"'
label var br10a_qlbthage  `"Imputation mark in age of the last child born alive on July 31, 2010"'
label var br10a_qchliveyr `"Imputation mark in last child born alive still alive on July 31, 2010"'
label var br10a_qchdeadyr `"Imputation mark in date of death of last child born alive"'
label var br10a_qchdthmo  `"Imputation mark in month of death of last child born alive"'
label var br10a_qchdthyr  `"Imputation mark in year of  death of last child born alive"'
label var br10a_qstillbth `"Imputation mark in ever had stillbirths as of July 31, 2010"'
label var br10a_qnstillb  `"Imputation mark in number of male stillbirths as of July 31, 2010"'
label var br10a_qstilbnf  `"Imputation mark in number of female stillbirths as of July 31, 2010"'
label var br10a_qstilbnm  `"Imputation mark in total number of stillbirths as of July 31, 2010"'
label var br10a_qrespond  `"Imputation mark in person who provided information for this person"'
label var br10a_qrespnum  `"Imputation mark in number of order of the respondent (another resident)"'
label var br10a_qnstilbth `"Imputation mark in total number of children born alive and stillbirths as of Jul"'
label var br10a_qrelig    `"Imputation mark in religion"'

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

label define br10a_pern_lbl 01 `"1"'
label define br10a_pern_lbl 02 `"2"', add
label define br10a_pern_lbl 03 `"3"', add
label define br10a_pern_lbl 04 `"4"', add
label define br10a_pern_lbl 05 `"5"', add
label define br10a_pern_lbl 06 `"6"', add
label define br10a_pern_lbl 07 `"7"', add
label define br10a_pern_lbl 08 `"8"', add
label define br10a_pern_lbl 09 `"9"', add
label define br10a_pern_lbl 10 `"10"', add
label define br10a_pern_lbl 11 `"11"', add
label define br10a_pern_lbl 12 `"12"', add
label define br10a_pern_lbl 13 `"13"', add
label define br10a_pern_lbl 14 `"14"', add
label define br10a_pern_lbl 15 `"15"', add
label define br10a_pern_lbl 16 `"16"', add
label define br10a_pern_lbl 17 `"17"', add
label define br10a_pern_lbl 18 `"18"', add
label define br10a_pern_lbl 19 `"19"', add
label define br10a_pern_lbl 20 `"20"', add
label define br10a_pern_lbl 21 `"21"', add
label define br10a_pern_lbl 22 `"22"', add
label define br10a_pern_lbl 23 `"23"', add
label define br10a_pern_lbl 24 `"24"', add
label define br10a_pern_lbl 25 `"25"', add
label define br10a_pern_lbl 26 `"26"', add
label define br10a_pern_lbl 27 `"27"', add
label define br10a_pern_lbl 28 `"28"', add
label define br10a_pern_lbl 29 `"29"', add
label define br10a_pern_lbl 30 `"30"', add
label define br10a_pern_lbl 31 `"31"', add
label define br10a_pern_lbl 32 `"32"', add
label define br10a_pern_lbl 33 `"33"', add
label define br10a_pern_lbl 34 `"34"', add
label define br10a_pern_lbl 35 `"35"', add
label define br10a_pern_lbl 36 `"36"', add
label define br10a_pern_lbl 38 `"38"', add
label define br10a_pern_lbl 42 `"42"', add
label define br10a_pern_lbl 43 `"43"', add
label define br10a_pern_lbl 44 `"44"', add
label define br10a_pern_lbl 50 `"50"', add
label values br10a_pern br10a_pern_lbl

label define br10a_fbig_lbl 0 `"No problem"'
label define br10a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define br10a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values br10a_fbig br10a_fbig_lbl

label define br10a_fbig_nh_lbl 00 `"Not split"'
label define br10a_fbig_nh_lbl 56 `"56"', add
label define br10a_fbig_nh_lbl 57 `"57"', add
label define br10a_fbig_nh_lbl 60 `"60"', add
label values br10a_fbig_nh br10a_fbig_nh_lbl

label define br10a_state_lbl 11 `"Rondonia"'
label define br10a_state_lbl 12 `"Acre"', add
label define br10a_state_lbl 13 `"Amazonas"', add
label define br10a_state_lbl 14 `"Roraima"', add
label define br10a_state_lbl 15 `"Par�"', add
label define br10a_state_lbl 16 `"Amapa"', add
label define br10a_state_lbl 17 `"Tocantins"', add
label define br10a_state_lbl 21 `"Maranhao"', add
label define br10a_state_lbl 22 `"Piaui"', add
label define br10a_state_lbl 23 `"Cear�"', add
label define br10a_state_lbl 24 `"Rio Grande do Norte"', add
label define br10a_state_lbl 25 `"Para�ba"', add
label define br10a_state_lbl 26 `"Pernambuco"', add
label define br10a_state_lbl 27 `"Alagoas"', add
label define br10a_state_lbl 28 `"Sergipe"', add
label define br10a_state_lbl 29 `"Bahia"', add
label define br10a_state_lbl 31 `"Minas Gerais"', add
label define br10a_state_lbl 32 `"Espirito Santo"', add
label define br10a_state_lbl 33 `"Rio de Janeiro"', add
label define br10a_state_lbl 35 `"S�o Paulo"', add
label define br10a_state_lbl 41 `"Parana"', add
label define br10a_state_lbl 42 `"Santa Catarina"', add
label define br10a_state_lbl 43 `"Rio Grande do Sul"', add
label define br10a_state_lbl 50 `"Mato Grosso do Sul"', add
label define br10a_state_lbl 51 `"Mato Grosso"', add
label define br10a_state_lbl 52 `"Goias"', add
label define br10a_state_lbl 53 `"Distrito Federal"', add
label values br10a_state br10a_state_lbl

label define br10a_geogr_lbl 1 `"Northern"'
label define br10a_geogr_lbl 2 `"Northeast"', add
label define br10a_geogr_lbl 3 `"Southeast"', add
label define br10a_geogr_lbl 4 `"Southern"', add
label define br10a_geogr_lbl 5 `"Midwest"', add
label values br10a_geogr br10a_geogr_lbl

label define br10a_metro_lbl 00 `"Not in a metropolitan region"'
label define br10a_metro_lbl 01 `"Manaus"', add
label define br10a_metro_lbl 02 `"Bel�m"', add
label define br10a_metro_lbl 03 `"Macap�"', add
label define br10a_metro_lbl 04 `"Grande S�o Lu�s"', add
label define br10a_metro_lbl 05 `"Suoeste Maranhense"', add
label define br10a_metro_lbl 06 `"Cariri"', add
label define br10a_metro_lbl 07 `"Fortaleza"', add
label define br10a_metro_lbl 08 `"Natal"', add
label define br10a_metro_lbl 09 `"Campina Grande"', add
label define br10a_metro_lbl 10 `"Jo�o Pessoa"', add
label define br10a_metro_lbl 11 `"Recife"', add
label define br10a_metro_lbl 12 `"Agreste"', add
label define br10a_metro_lbl 13 `"Macei�"', add
label define br10a_metro_lbl 14 `"Aracaju"', add
label define br10a_metro_lbl 15 `"Salvador"', add
label define br10a_metro_lbl 16 `"Belo Horizonte"', add
label define br10a_metro_lbl 17 `"Vale do A�o"', add
label define br10a_metro_lbl 18 `"Vit�ria"', add
label define br10a_metro_lbl 19 `"Rio de Janeiro"', add
label define br10a_metro_lbl 20 `"S�o Paulo"', add
label define br10a_metro_lbl 21 `"Santos coastal region"', add
label define br10a_metro_lbl 22 `"Campinas"', add
label define br10a_metro_lbl 23 `"Curitiba"', add
label define br10a_metro_lbl 24 `"Maring�"', add
label define br10a_metro_lbl 25 `"Londrina"', add
label define br10a_metro_lbl 26 `"Florian�polis"', add
label define br10a_metro_lbl 27 `"Metropolitan area of North/NE Santa Catarina"', add
label define br10a_metro_lbl 28 `"Metropolitan area of Vale do Itaja�"', add
label define br10a_metro_lbl 29 `"Metropolitan expansion area of Vale do Itaja�"', add
label define br10a_metro_lbl 30 `"Carbon�fera"', add
label define br10a_metro_lbl 31 `"Tubar�o"', add
label define br10a_metro_lbl 32 `"Lages"', add
label define br10a_metro_lbl 33 `"Chapec�"', add
label define br10a_metro_lbl 34 `"Porto Alegre"', add
label define br10a_metro_lbl 35 `"Vale do Rio Cuiab�"', add
label define br10a_metro_lbl 36 `"Goi�nia"', add
label define br10a_metro_lbl 37 `"Caxias do Sul"', add
label define br10a_metro_lbl 38 `"Pelotas"', add
label define br10a_metro_lbl 40 `"Distrito Federal and surroundings"', add
label define br10a_metro_lbl 41 `"Grande Terseina"', add
label define br10a_metro_lbl 42 `"Petrolina e Juazeiro"', add
label values br10a_metro br10a_metro_lbl

label define br10a_urban_lbl 1 `"Urban"'
label define br10a_urban_lbl 2 `"Rural"', add
label values br10a_urban br10a_urban_lbl

label define br10a_typhh_lbl 1 `"Private household permanently occupied"'
label define br10a_typhh_lbl 2 `"Private household permanently occupied with no interview done"', add
label define br10a_typhh_lbl 5 `"Improvised and occupied private household"', add
label define br10a_typhh_lbl 6 `"Collective household with resident"', add
label values br10a_typhh br10a_typhh_lbl

label define br10a_typunit_lbl 11 `"Home"'
label define br10a_typunit_lbl 12 `"Townhouse or condo"', add
label define br10a_typunit_lbl 13 `"Apartment"', add
label define br10a_typunit_lbl 14 `"Room in a boarding house"', add
label define br10a_typunit_lbl 15 `"Hollow or hut"', add
label define br10a_typunit_lbl 51 `"Tent"', add
label define br10a_typunit_lbl 52 `"Unit not intended for habitation"', add
label define br10a_typunit_lbl 53 `"Other (car, trailer, cave, etc.)"', add
label define br10a_typunit_lbl 61 `"Asylum, an orphanage and similar with resident"', add
label define br10a_typunit_lbl 62 `"Hotel, pension and similar with resident"', add
label define br10a_typunit_lbl 63 `"Accommodation of workers with resident"', add
label define br10a_typunit_lbl 64 `"Jail, prison or detention facility with resident"', add
label define br10a_typunit_lbl 65 `"Other with resident"', add
label values br10a_typunit br10a_typunit_lbl

label define br10a_owner_lbl 1 `"Own, already paid"'
label define br10a_owner_lbl 2 `"Own, being paid"', add
label define br10a_owner_lbl 3 `"Rented"', add
label define br10a_owner_lbl 4 `"Ceded by employer"', add
label define br10a_owner_lbl 5 `"Ceded by other means"', add
label define br10a_owner_lbl 6 `"Other occupancy condition"', add
label define br10a_owner_lbl 9 `"NIU (not in universe)"', add
label values br10a_owner br10a_owner_lbl

label define br10a_renthh_lbl 000001 `"1"'
label define br10a_renthh_lbl 999999 `"NIU (not in universe)"', add
label values br10a_renthh br10a_renthh_lbl

label define br10a_rentmin_lbl 999999999 `"NIU (not in universe)"'
label values br10a_rentmin br10a_rentmin_lbl

label define br10a_walls_lbl 01 `"Masonry coated"'
label define br10a_walls_lbl 02 `"Masonry uncoated"', add
label define br10a_walls_lbl 03 `"Wood suitable for construction (equipped)"', add
label define br10a_walls_lbl 04 `"Coated taipa (coated stucco)"', add
label define br10a_walls_lbl 05 `"Uncoated taipa (uncoated stucco)"', add
label define br10a_walls_lbl 06 `"Reused wood"', add
label define br10a_walls_lbl 07 `"Straw"', add
label define br10a_walls_lbl 08 `"Other material"', add
label define br10a_walls_lbl 09 `"No walls"', add
label define br10a_walls_lbl 99 `"NIU (not in universe)"', add
label values br10a_walls br10a_walls_lbl

label define br10a_rooms_lbl 01 `"1"'
label define br10a_rooms_lbl 02 `"2"', add
label define br10a_rooms_lbl 03 `"3"', add
label define br10a_rooms_lbl 04 `"4"', add
label define br10a_rooms_lbl 05 `"5"', add
label define br10a_rooms_lbl 06 `"6"', add
label define br10a_rooms_lbl 07 `"7"', add
label define br10a_rooms_lbl 08 `"8"', add
label define br10a_rooms_lbl 09 `"9"', add
label define br10a_rooms_lbl 10 `"10"', add
label define br10a_rooms_lbl 11 `"11"', add
label define br10a_rooms_lbl 12 `"12"', add
label define br10a_rooms_lbl 13 `"13"', add
label define br10a_rooms_lbl 14 `"14"', add
label define br10a_rooms_lbl 15 `"15"', add
label define br10a_rooms_lbl 16 `"16"', add
label define br10a_rooms_lbl 17 `"17"', add
label define br10a_rooms_lbl 18 `"18"', add
label define br10a_rooms_lbl 19 `"19"', add
label define br10a_rooms_lbl 20 `"20"', add
label define br10a_rooms_lbl 21 `"21"', add
label define br10a_rooms_lbl 22 `"22"', add
label define br10a_rooms_lbl 23 `"23"', add
label define br10a_rooms_lbl 24 `"24"', add
label define br10a_rooms_lbl 25 `"25"', add
label define br10a_rooms_lbl 26 `"26"', add
label define br10a_rooms_lbl 27 `"27"', add
label define br10a_rooms_lbl 28 `"28"', add
label define br10a_rooms_lbl 29 `"29"', add
label define br10a_rooms_lbl 30 `"30"', add
label define br10a_rooms_lbl 99 `"NIU (not in universe)"', add
label values br10a_rooms br10a_rooms_lbl

label define br10a_nperroom_lbl 000 `"0"'
label define br10a_nperroom_lbl 001 `"0.1"', add
label define br10a_nperroom_lbl 002 `"0.2"', add
label define br10a_nperroom_lbl 003 `"0.3"', add
label define br10a_nperroom_lbl 004 `"0.4"', add
label define br10a_nperroom_lbl 005 `"0.5"', add
label define br10a_nperroom_lbl 006 `"0.6"', add
label define br10a_nperroom_lbl 007 `"0.7"', add
label define br10a_nperroom_lbl 008 `"0.8"', add
label define br10a_nperroom_lbl 009 `"0.9"', add
label define br10a_nperroom_lbl 010 `"1"', add
label define br10a_nperroom_lbl 011 `"1.1"', add
label define br10a_nperroom_lbl 012 `"1.2"', add
label define br10a_nperroom_lbl 013 `"1.3"', add
label define br10a_nperroom_lbl 014 `"1.4"', add
label define br10a_nperroom_lbl 015 `"1.5"', add
label define br10a_nperroom_lbl 016 `"1.6"', add
label define br10a_nperroom_lbl 017 `"1.7"', add
label define br10a_nperroom_lbl 018 `"1.8"', add
label define br10a_nperroom_lbl 019 `"1.9"', add
label define br10a_nperroom_lbl 020 `"2"', add
label define br10a_nperroom_lbl 021 `"2.1"', add
label define br10a_nperroom_lbl 022 `"2.2"', add
label define br10a_nperroom_lbl 023 `"2.3"', add
label define br10a_nperroom_lbl 024 `"2.4"', add
label define br10a_nperroom_lbl 025 `"2.5"', add
label define br10a_nperroom_lbl 026 `"2.6"', add
label define br10a_nperroom_lbl 027 `"2.7"', add
label define br10a_nperroom_lbl 028 `"2.8"', add
label define br10a_nperroom_lbl 029 `"2.9"', add
label define br10a_nperroom_lbl 030 `"3"', add
label define br10a_nperroom_lbl 031 `"3.1"', add
label define br10a_nperroom_lbl 032 `"3.2"', add
label define br10a_nperroom_lbl 033 `"3.3"', add
label define br10a_nperroom_lbl 034 `"3.4"', add
label define br10a_nperroom_lbl 035 `"3.5"', add
label define br10a_nperroom_lbl 036 `"3.6"', add
label define br10a_nperroom_lbl 037 `"3.7"', add
label define br10a_nperroom_lbl 038 `"3.8"', add
label define br10a_nperroom_lbl 039 `"3.9"', add
label define br10a_nperroom_lbl 040 `"4"', add
label define br10a_nperroom_lbl 042 `"4.2"', add
label define br10a_nperroom_lbl 043 `"4.3"', add
label define br10a_nperroom_lbl 044 `"4.4"', add
label define br10a_nperroom_lbl 045 `"4.5"', add
label define br10a_nperroom_lbl 047 `"4.7"', add
label define br10a_nperroom_lbl 048 `"4.8"', add
label define br10a_nperroom_lbl 050 `"5"', add
label define br10a_nperroom_lbl 052 `"5.2"', add
label define br10a_nperroom_lbl 053 `"5.3"', add
label define br10a_nperroom_lbl 055 `"5.5"', add
label define br10a_nperroom_lbl 057 `"5.7"', add
label define br10a_nperroom_lbl 058 `"5.8"', add
label define br10a_nperroom_lbl 060 `"6"', add
label define br10a_nperroom_lbl 063 `"6.3"', add
label define br10a_nperroom_lbl 065 `"6.5"', add
label define br10a_nperroom_lbl 067 `"6.7"', add
label define br10a_nperroom_lbl 068 `"6.8"', add
label define br10a_nperroom_lbl 070 `"7"', add
label define br10a_nperroom_lbl 075 `"7.5"', add
label define br10a_nperroom_lbl 080 `"8"', add
label define br10a_nperroom_lbl 085 `"8.5"', add
label define br10a_nperroom_lbl 090 `"9"', add
label define br10a_nperroom_lbl 095 `"9.5"', add
label define br10a_nperroom_lbl 100 `"10"', add
label define br10a_nperroom_lbl 110 `"11"', add
label define br10a_nperroom_lbl 115 `"11.5"', add
label define br10a_nperroom_lbl 120 `"12"', add
label define br10a_nperroom_lbl 130 `"13"', add
label define br10a_nperroom_lbl 140 `"14"', add
label define br10a_nperroom_lbl 150 `"15+"', add
label define br10a_nperroom_lbl 999 `"NIU (not in universe)"', add
label values br10a_nperroom br10a_nperroom_lbl

label define br10a_nbedroom_lbl 01 `"1"'
label define br10a_nbedroom_lbl 02 `"2"', add
label define br10a_nbedroom_lbl 03 `"3"', add
label define br10a_nbedroom_lbl 04 `"4"', add
label define br10a_nbedroom_lbl 05 `"5"', add
label define br10a_nbedroom_lbl 06 `"6"', add
label define br10a_nbedroom_lbl 07 `"7"', add
label define br10a_nbedroom_lbl 08 `"8"', add
label define br10a_nbedroom_lbl 09 `"9+"', add
label define br10a_nbedroom_lbl 99 `"NIU (not in universe)"', add
label values br10a_nbedroom br10a_nbedroom_lbl

label define br10a_nperbdrm_lbl 010 `"1"'
label define br10a_nperbdrm_lbl 011 `"1.1"', add
label define br10a_nperbdrm_lbl 012 `"1.2"', add
label define br10a_nperbdrm_lbl 013 `"1.3"', add
label define br10a_nperbdrm_lbl 014 `"1.4"', add
label define br10a_nperbdrm_lbl 015 `"1.5"', add
label define br10a_nperbdrm_lbl 016 `"1.6"', add
label define br10a_nperbdrm_lbl 017 `"1.7"', add
label define br10a_nperbdrm_lbl 018 `"1.8"', add
label define br10a_nperbdrm_lbl 019 `"1.9"', add
label define br10a_nperbdrm_lbl 020 `"2"', add
label define br10a_nperbdrm_lbl 021 `"2.1"', add
label define br10a_nperbdrm_lbl 022 `"2.2"', add
label define br10a_nperbdrm_lbl 023 `"2.3"', add
label define br10a_nperbdrm_lbl 024 `"2.4"', add
label define br10a_nperbdrm_lbl 025 `"2.5"', add
label define br10a_nperbdrm_lbl 026 `"2.6"', add
label define br10a_nperbdrm_lbl 027 `"2.7"', add
label define br10a_nperbdrm_lbl 028 `"2.8"', add
label define br10a_nperbdrm_lbl 029 `"2.9"', add
label define br10a_nperbdrm_lbl 030 `"3"', add
label define br10a_nperbdrm_lbl 031 `"3.1"', add
label define br10a_nperbdrm_lbl 032 `"3.2"', add
label define br10a_nperbdrm_lbl 033 `"3.3"', add
label define br10a_nperbdrm_lbl 034 `"3.4"', add
label define br10a_nperbdrm_lbl 035 `"3.5"', add
label define br10a_nperbdrm_lbl 036 `"3.6"', add
label define br10a_nperbdrm_lbl 037 `"3.7"', add
label define br10a_nperbdrm_lbl 038 `"3.8"', add
label define br10a_nperbdrm_lbl 039 `"3.9"', add
label define br10a_nperbdrm_lbl 040 `"4"', add
label define br10a_nperbdrm_lbl 042 `"4.2"', add
label define br10a_nperbdrm_lbl 043 `"4.3"', add
label define br10a_nperbdrm_lbl 044 `"4.4"', add
label define br10a_nperbdrm_lbl 045 `"4.5"', add
label define br10a_nperbdrm_lbl 046 `"4.6"', add
label define br10a_nperbdrm_lbl 047 `"4.7"', add
label define br10a_nperbdrm_lbl 048 `"4.8"', add
label define br10a_nperbdrm_lbl 050 `"5"', add
label define br10a_nperbdrm_lbl 053 `"5.3"', add
label define br10a_nperbdrm_lbl 055 `"5.5"', add
label define br10a_nperbdrm_lbl 056 `"5.6"', add
label define br10a_nperbdrm_lbl 057 `"5.7"', add
label define br10a_nperbdrm_lbl 060 `"6"', add
label define br10a_nperbdrm_lbl 062 `"6.2"', add
label define br10a_nperbdrm_lbl 063 `"6.3"', add
label define br10a_nperbdrm_lbl 065 `"6.5"', add
label define br10a_nperbdrm_lbl 067 `"6.7"', add
label define br10a_nperbdrm_lbl 068 `"6.8"', add
label define br10a_nperbdrm_lbl 070 `"7"', add
label define br10a_nperbdrm_lbl 073 `"7.3"', add
label define br10a_nperbdrm_lbl 075 `"7.5"', add
label define br10a_nperbdrm_lbl 080 `"8"', add
label define br10a_nperbdrm_lbl 083 `"8.3"', add
label define br10a_nperbdrm_lbl 085 `"8.5"', add
label define br10a_nperbdrm_lbl 087 `"8.7"', add
label define br10a_nperbdrm_lbl 090 `"9"', add
label define br10a_nperbdrm_lbl 093 `"9.3"', add
label define br10a_nperbdrm_lbl 095 `"9.5"', add
label define br10a_nperbdrm_lbl 100 `"10"', add
label define br10a_nperbdrm_lbl 105 `"10.5"', add
label define br10a_nperbdrm_lbl 110 `"11"', add
label define br10a_nperbdrm_lbl 115 `"11.5"', add
label define br10a_nperbdrm_lbl 120 `"12"', add
label define br10a_nperbdrm_lbl 125 `"12.5"', add
label define br10a_nperbdrm_lbl 130 `"13"', add
label define br10a_nperbdrm_lbl 140 `"14"', add
label define br10a_nperbdrm_lbl 150 `"15"', add
label define br10a_nperbdrm_lbl 160 `"16"', add
label define br10a_nperbdrm_lbl 170 `"17"', add
label define br10a_nperbdrm_lbl 180 `"18"', add
label define br10a_nperbdrm_lbl 190 `"19"', add
label define br10a_nperbdrm_lbl 200 `"20+"', add
label define br10a_nperbdrm_lbl 999 `"NIU (not in universe)"', add
label values br10a_nperbdrm br10a_nperbdrm_lbl

label define br10a_nbath_lbl 00 `"0"'
label define br10a_nbath_lbl 01 `"1"', add
label define br10a_nbath_lbl 02 `"2"', add
label define br10a_nbath_lbl 03 `"3"', add
label define br10a_nbath_lbl 04 `"4"', add
label define br10a_nbath_lbl 05 `"5"', add
label define br10a_nbath_lbl 06 `"6"', add
label define br10a_nbath_lbl 07 `"7"', add
label define br10a_nbath_lbl 08 `"8"', add
label define br10a_nbath_lbl 09 `"9"', add
label define br10a_nbath_lbl 99 `"NIU (not in universe)"', add
label values br10a_nbath br10a_nbath_lbl

label define br10a_toilets_lbl 1 `"Yes"'
label define br10a_toilets_lbl 2 `"No"', add
label define br10a_toilets_lbl 9 `"NIU (not in universe)"', add
label values br10a_toilets br10a_toilets_lbl

label define br10a_sewage_lbl 1 `"Public sewage or rain system"'
label define br10a_sewage_lbl 2 `"Septic"', add
label define br10a_sewage_lbl 3 `"Rudimentary septic tank"', add
label define br10a_sewage_lbl 4 `"Ditch"', add
label define br10a_sewage_lbl 5 `"River, lake or sea"', add
label define br10a_sewage_lbl 6 `"Other"', add
label define br10a_sewage_lbl 9 `"NIU (not in universe)"', add
label values br10a_sewage br10a_sewage_lbl

label define br10a_water_lbl 01 `"General distribution system"'
label define br10a_water_lbl 02 `"Well or spring on the property"', add
label define br10a_water_lbl 03 `"Well or spring outside the property"', add
label define br10a_water_lbl 04 `"Water tank truck (carro-pipa)"', add
label define br10a_water_lbl 05 `"Rainwater stored in tanks"', add
label define br10a_water_lbl 06 `"Rainwater stored in other means"', add
label define br10a_water_lbl 07 `"Rivers, ponds, lakes and streams"', add
label define br10a_water_lbl 08 `"Other"', add
label define br10a_water_lbl 09 `"Well or spring in the village"', add
label define br10a_water_lbl 10 `"Well or spring outside the village"', add
label define br10a_water_lbl 99 `"NIU (not in universe)"', add
label values br10a_water br10a_water_lbl

label define br10a_watpipe_lbl 1 `"Yes, in at least one room"'
label define br10a_watpipe_lbl 2 `"Yes, only in property or land"', add
label define br10a_watpipe_lbl 3 `"No"', add
label define br10a_watpipe_lbl 9 `"NIU (not in universe)"', add
label values br10a_watpipe br10a_watpipe_lbl

label define br10a_trash_lbl 1 `"Collected directly by sanitation service"'
label define br10a_trash_lbl 2 `"Placed in sanitation service bin"', add
label define br10a_trash_lbl 3 `"Burned (in the property)"', add
label define br10a_trash_lbl 4 `"Buried (in the property)"', add
label define br10a_trash_lbl 5 `"Thrown away on vacant lots or public areas"', add
label define br10a_trash_lbl 6 `"Thrown away in river, lake or sea"', add
label define br10a_trash_lbl 7 `"Other destination"', add
label define br10a_trash_lbl 9 `"NIU (not in universe)"', add
label values br10a_trash br10a_trash_lbl

label define br10a_electric_lbl 1 `"Yes, provided by a distribution company"'
label define br10a_electric_lbl 2 `"Yes, from other sources"', add
label define br10a_electric_lbl 3 `"There is no electricity"', add
label define br10a_electric_lbl 9 `"NIU (not in universe)"', add
label values br10a_electric br10a_electric_lbl

label define br10a_meter_lbl 1 `"Yes, for exclusive use"'
label define br10a_meter_lbl 2 `"Yes, for common use"', add
label define br10a_meter_lbl 3 `"No energy meter"', add
label define br10a_meter_lbl 9 `"NIU (not in universe)"', add
label values br10a_meter br10a_meter_lbl

label define br10a_radio_lbl 1 `"Yes"'
label define br10a_radio_lbl 2 `"No"', add
label define br10a_radio_lbl 9 `"NIU (not in universe)"', add
label values br10a_radio br10a_radio_lbl

label define br10a_tv_lbl 1 `"Yes"'
label define br10a_tv_lbl 2 `"No"', add
label define br10a_tv_lbl 9 `"NIU (not in universe)"', add
label values br10a_tv br10a_tv_lbl

label define br10a_washer_lbl 1 `"Yes"'
label define br10a_washer_lbl 2 `"No"', add
label define br10a_washer_lbl 9 `"NIU (not in universe)"', add
label values br10a_washer br10a_washer_lbl

label define br10a_refrig_lbl 1 `"Yes"'
label define br10a_refrig_lbl 2 `"No"', add
label define br10a_refrig_lbl 9 `"NIU (not in universe)"', add
label values br10a_refrig br10a_refrig_lbl

label define br10a_cellphon_lbl 1 `"Yes"'
label define br10a_cellphon_lbl 2 `"No"', add
label define br10a_cellphon_lbl 9 `"NIU (not in universe)"', add
label values br10a_cellphon br10a_cellphon_lbl

label define br10a_phone_lbl 1 `"Yes"'
label define br10a_phone_lbl 2 `"No"', add
label define br10a_phone_lbl 9 `"NIU (not in universe)"', add
label values br10a_phone br10a_phone_lbl

label define br10a_computer_lbl 1 `"Yes"'
label define br10a_computer_lbl 2 `"No"', add
label define br10a_computer_lbl 9 `"NIU (not in universe)"', add
label values br10a_computer br10a_computer_lbl

label define br10a_internet_lbl 1 `"Yes"'
label define br10a_internet_lbl 2 `"No"', add
label define br10a_internet_lbl 9 `"NIU (not in universe)"', add
label values br10a_internet br10a_internet_lbl

label define br10a_motorcyc_lbl 1 `"Yes"'
label define br10a_motorcyc_lbl 2 `"No"', add
label define br10a_motorcyc_lbl 9 `"NIU (not in universe)"', add
label values br10a_motorcyc br10a_motorcyc_lbl

label define br10a_auto_lbl 1 `"Yes"'
label define br10a_auto_lbl 2 `"No"', add
label define br10a_auto_lbl 9 `"NIU (not in universe)"', add
label values br10a_auto br10a_auto_lbl

label define br10a_emighh_lbl 1 `"Yes"'
label define br10a_emighh_lbl 2 `"No"', add
label define br10a_emighh_lbl 8 `"Unknown"', add
label define br10a_emighh_lbl 9 `"NIU (not in universe)"', add
label values br10a_emighh br10a_emighh_lbl

label define br10a_numperhh_lbl 01 `"1"'
label define br10a_numperhh_lbl 02 `"2"', add
label define br10a_numperhh_lbl 03 `"3"', add
label define br10a_numperhh_lbl 04 `"4"', add
label define br10a_numperhh_lbl 05 `"5"', add
label define br10a_numperhh_lbl 06 `"6"', add
label define br10a_numperhh_lbl 07 `"7"', add
label define br10a_numperhh_lbl 08 `"8"', add
label define br10a_numperhh_lbl 09 `"9"', add
label define br10a_numperhh_lbl 10 `"10"', add
label define br10a_numperhh_lbl 11 `"11"', add
label define br10a_numperhh_lbl 12 `"12"', add
label define br10a_numperhh_lbl 13 `"13"', add
label define br10a_numperhh_lbl 14 `"14"', add
label define br10a_numperhh_lbl 15 `"15"', add
label define br10a_numperhh_lbl 16 `"16"', add
label define br10a_numperhh_lbl 17 `"17"', add
label define br10a_numperhh_lbl 18 `"18"', add
label define br10a_numperhh_lbl 19 `"19"', add
label define br10a_numperhh_lbl 20 `"20"', add
label define br10a_numperhh_lbl 21 `"21"', add
label define br10a_numperhh_lbl 22 `"22"', add
label define br10a_numperhh_lbl 23 `"23"', add
label define br10a_numperhh_lbl 24 `"24"', add
label define br10a_numperhh_lbl 25 `"25"', add
label define br10a_numperhh_lbl 26 `"26"', add
label define br10a_numperhh_lbl 27 `"27"', add
label define br10a_numperhh_lbl 28 `"28"', add
label define br10a_numperhh_lbl 29 `"29"', add
label define br10a_numperhh_lbl 30 `"30"', add
label define br10a_numperhh_lbl 32 `"32"', add
label define br10a_numperhh_lbl 33 `"33"', add
label define br10a_numperhh_lbl 34 `"34"', add
label define br10a_numperhh_lbl 35 `"35"', add
label define br10a_numperhh_lbl 42 `"42"', add
label define br10a_numperhh_lbl 43 `"43"', add
label define br10a_numperhh_lbl 50 `"50"', add
label define br10a_numperhh_lbl 56 `"56"', add
label define br10a_numperhh_lbl 57 `"57"', add
label define br10a_numperhh_lbl 60 `"60"', add
label values br10a_numperhh br10a_numperhh_lbl

label define br10a_nheadshh_lbl 1 `"Only one resident"'
label define br10a_nheadshh_lbl 2 `"More than one resident"', add
label define br10a_nheadshh_lbl 8 `"Unknown"', add
label define br10a_nheadshh_lbl 9 `"NIU (not in universe)"', add
label values br10a_nheadshh br10a_nheadshh_lbl

label define br10a_deathhh_lbl 1 `"Yes"'
label define br10a_deathhh_lbl 2 `"No"', add
label define br10a_deathhh_lbl 8 `"Unknown"', add
label define br10a_deathhh_lbl 9 `"NIU (not in universe)"', add
label values br10a_deathhh br10a_deathhh_lbl

label define br10a_incmohh_lbl 9999999 `"NIU (not in universe)"'
label values br10a_incmohh br10a_incmohh_lbl

label define br10a_incwghh_lbl 9999999999 `"NIU (not in universe)"'
label values br10a_incwghh br10a_incwghh_lbl

label define br10a_incpchh_lbl 99999999 `"NIU (not in universe)"'
label values br10a_incpchh br10a_incpchh_lbl

label define br10a_incwgpc_lbl 999999999 `"NIU (not in universe)"'
label values br10a_incwgpc br10a_incwgpc_lbl

label define br10a_hhstruct_lbl 1 `"Single person"'
label define br10a_hhstruct_lbl 2 `"Nuclear"', add
label define br10a_hhstruct_lbl 3 `"Extended"', add
label define br10a_hhstruct_lbl 4 `"Composed"', add
label define br10a_hhstruct_lbl 9 `"NIU (not in universe)"', add
label values br10a_hhstruct br10a_hhstruct_lbl

label define br10a_qowner_lbl 1 `"Yes"'
label define br10a_qowner_lbl 2 `"No"', add
label values br10a_qowner br10a_qowner_lbl

label define br10a_qrenthh_lbl 1 `"Yes"'
label define br10a_qrenthh_lbl 2 `"No"', add
label values br10a_qrenthh br10a_qrenthh_lbl

label define br10a_qwalls_lbl 1 `"Yes"'
label define br10a_qwalls_lbl 2 `"No"', add
label values br10a_qwalls br10a_qwalls_lbl

label define br10a_qrooms_lbl 1 `"Yes"'
label define br10a_qrooms_lbl 2 `"No"', add
label values br10a_qrooms br10a_qrooms_lbl

label define br10a_qnbedroom_lbl 1 `"Yes"'
label define br10a_qnbedroom_lbl 2 `"No"', add
label values br10a_qnbedroom br10a_qnbedroom_lbl

label define br10a_qnbath_lbl 1 `"Yes"'
label define br10a_qnbath_lbl 2 `"No"', add
label values br10a_qnbath br10a_qnbath_lbl

label define br10a_qtoilets_lbl 1 `"Yes"'
label define br10a_qtoilets_lbl 2 `"No"', add
label values br10a_qtoilets br10a_qtoilets_lbl

label define br10a_qsewage_lbl 1 `"Yes"'
label define br10a_qsewage_lbl 2 `"No"', add
label values br10a_qsewage br10a_qsewage_lbl

label define br10a_qwater_lbl 1 `"Yes"'
label define br10a_qwater_lbl 2 `"No"', add
label values br10a_qwater br10a_qwater_lbl

label define br10a_qwatpipe_lbl 1 `"Yes"'
label define br10a_qwatpipe_lbl 2 `"No"', add
label values br10a_qwatpipe br10a_qwatpipe_lbl

label define br10a_qtrash_lbl 1 `"Yes"'
label define br10a_qtrash_lbl 2 `"No"', add
label values br10a_qtrash br10a_qtrash_lbl

label define br10a_qelectric_lbl 1 `"Yes"'
label define br10a_qelectric_lbl 2 `"No"', add
label values br10a_qelectric br10a_qelectric_lbl

label define br10a_qmeter_lbl 1 `"Yes"'
label define br10a_qmeter_lbl 2 `"No"', add
label values br10a_qmeter br10a_qmeter_lbl

label define br10a_qradio_lbl 1 `"Yes"'
label define br10a_qradio_lbl 2 `"No"', add
label values br10a_qradio br10a_qradio_lbl

label define br10a_qtv_lbl 1 `"Yes"'
label define br10a_qtv_lbl 2 `"No"', add
label values br10a_qtv br10a_qtv_lbl

label define br10a_qwasher_lbl 1 `"Yes"'
label define br10a_qwasher_lbl 2 `"No"', add
label values br10a_qwasher br10a_qwasher_lbl

label define br10a_qrefrig_lbl 1 `"Yes"'
label define br10a_qrefrig_lbl 2 `"No"', add
label values br10a_qrefrig br10a_qrefrig_lbl

label define br10a_qcellphon_lbl 1 `"Yes"'
label define br10a_qcellphon_lbl 2 `"No"', add
label values br10a_qcellphon br10a_qcellphon_lbl

label define br10a_qphone_lbl 1 `"Yes"'
label define br10a_qphone_lbl 2 `"No"', add
label values br10a_qphone br10a_qphone_lbl

label define br10a_qcomputer_lbl 1 `"Yes"'
label define br10a_qcomputer_lbl 2 `"No"', add
label values br10a_qcomputer br10a_qcomputer_lbl

label define br10a_qinternet_lbl 1 `"Yes"'
label define br10a_qinternet_lbl 2 `"No"', add
label values br10a_qinternet br10a_qinternet_lbl

label define br10a_qmotorcyc_lbl 1 `"Yes"'
label define br10a_qmotorcyc_lbl 2 `"No"', add
label values br10a_qmotorcyc br10a_qmotorcyc_lbl

label define br10a_qauto_lbl 1 `"Yes"'
label define br10a_qauto_lbl 2 `"No"', add
label values br10a_qauto br10a_qauto_lbl

label define br10a_qemighh_lbl 1 `"Yes"'
label define br10a_qemighh_lbl 2 `"No"', add
label values br10a_qemighh br10a_qemighh_lbl

label define br10a_qnumperhh_lbl 1 `"Yes"'
label define br10a_qnumperhh_lbl 2 `"No"', add
label values br10a_qnumperhh br10a_qnumperhh_lbl

label define br10a_qnheadshh_lbl 1 `"Yes"'
label define br10a_qnheadshh_lbl 2 `"No"', add
label values br10a_qnheadshh br10a_qnheadshh_lbl

label define br10a_qdeathhh_lbl 1 `"Yes"'
label define br10a_qdeathhh_lbl 2 `"No"', add
label values br10a_qdeathhh br10a_qdeathhh_lbl

label define br10a_nmig_lbl 0 `"0"'
label define br10a_nmig_lbl 1 `"1"', add
label define br10a_nmig_lbl 2 `"2"', add
label define br10a_nmig_lbl 3 `"3"', add
label define br10a_nmig_lbl 4 `"4"', add
label define br10a_nmig_lbl 5 `"5"', add
label define br10a_nmig_lbl 6 `"6"', add
label define br10a_nmig_lbl 7 `"7"', add
label define br10a_nmig_lbl 8 `"8"', add
label values br10a_nmig br10a_nmig_lbl

label define br10a_nmort_lbl 0 `"0"'
label define br10a_nmort_lbl 1 `"1"', add
label define br10a_nmort_lbl 2 `"2"', add
label define br10a_nmort_lbl 3 `"3"', add
label define br10a_nmort_lbl 4 `"4"', add
label define br10a_nmort_lbl 5 `"5"', add
label values br10a_nmort br10a_nmort_lbl

label define br10a_pernum_lbl 00 `"Household record"'
label define br10a_pernum_lbl 01 `"1"', add
label define br10a_pernum_lbl 02 `"2"', add
label define br10a_pernum_lbl 03 `"3"', add
label define br10a_pernum_lbl 04 `"4"', add
label define br10a_pernum_lbl 05 `"5"', add
label define br10a_pernum_lbl 06 `"6"', add
label define br10a_pernum_lbl 07 `"7"', add
label define br10a_pernum_lbl 08 `"8"', add
label define br10a_pernum_lbl 09 `"9"', add
label define br10a_pernum_lbl 10 `"10"', add
label define br10a_pernum_lbl 11 `"11"', add
label define br10a_pernum_lbl 12 `"12"', add
label define br10a_pernum_lbl 13 `"13"', add
label define br10a_pernum_lbl 14 `"14"', add
label define br10a_pernum_lbl 15 `"15"', add
label define br10a_pernum_lbl 16 `"16"', add
label define br10a_pernum_lbl 17 `"17"', add
label define br10a_pernum_lbl 18 `"18"', add
label define br10a_pernum_lbl 19 `"19"', add
label define br10a_pernum_lbl 20 `"20"', add
label define br10a_pernum_lbl 21 `"21"', add
label define br10a_pernum_lbl 22 `"22"', add
label define br10a_pernum_lbl 23 `"23"', add
label define br10a_pernum_lbl 24 `"24"', add
label define br10a_pernum_lbl 25 `"25"', add
label define br10a_pernum_lbl 26 `"26"', add
label define br10a_pernum_lbl 27 `"27"', add
label define br10a_pernum_lbl 28 `"28"', add
label define br10a_pernum_lbl 29 `"29"', add
label define br10a_pernum_lbl 30 `"30"', add
label define br10a_pernum_lbl 31 `"31"', add
label define br10a_pernum_lbl 32 `"32"', add
label define br10a_pernum_lbl 33 `"33"', add
label define br10a_pernum_lbl 34 `"34"', add
label define br10a_pernum_lbl 35 `"35"', add
label define br10a_pernum_lbl 36 `"36"', add
label define br10a_pernum_lbl 37 `"37"', add
label define br10a_pernum_lbl 38 `"38"', add
label define br10a_pernum_lbl 39 `"39"', add
label define br10a_pernum_lbl 40 `"40"', add
label define br10a_pernum_lbl 41 `"41"', add
label define br10a_pernum_lbl 42 `"42"', add
label define br10a_pernum_lbl 43 `"43"', add
label define br10a_pernum_lbl 44 `"44"', add
label define br10a_pernum_lbl 45 `"45"', add
label define br10a_pernum_lbl 46 `"46"', add
label define br10a_pernum_lbl 47 `"47"', add
label define br10a_pernum_lbl 48 `"48"', add
label define br10a_pernum_lbl 49 `"49"', add
label define br10a_pernum_lbl 50 `"50"', add
label values br10a_pernum br10a_pernum_lbl

label define br10a_relate_lbl 01 `"Head"'
label define br10a_relate_lbl 02 `"Spouse or partner of different sex"', add
label define br10a_relate_lbl 03 `"Spouse or partner of the same sex"', add
label define br10a_relate_lbl 04 `"Son/daughter of the household head and spouse"', add
label define br10a_relate_lbl 05 `"Son/daughter of the household head only"', add
label define br10a_relate_lbl 06 `"Stepchild"', add
label define br10a_relate_lbl 07 `"Son-in-law or daughter-in-law"', add
label define br10a_relate_lbl 08 `"Father, mother, stepparent"', add
label define br10a_relate_lbl 09 `"Father/mother-in-law"', add
label define br10a_relate_lbl 10 `"Grandchild"', add
label define br10a_relate_lbl 11 `"Great grandchild"', add
label define br10a_relate_lbl 12 `"Brother or sister"', add
label define br10a_relate_lbl 13 `"Grandparent"', add
label define br10a_relate_lbl 14 `"Other relative"', add
label define br10a_relate_lbl 15 `"Non-paying unrelated resident (agregado)"', add
label define br10a_relate_lbl 16 `"Housemate"', add
label define br10a_relate_lbl 17 `"Roomer/boarder"', add
label define br10a_relate_lbl 18 `"Domestic employee"', add
label define br10a_relate_lbl 19 `"Relative of domestic employee"', add
label define br10a_relate_lbl 20 `"Individual in collective household"', add
label values br10a_relate br10a_relate_lbl

label define br10a_sex_lbl 1 `"Male"'
label define br10a_sex_lbl 2 `"Female"', add
label values br10a_sex br10a_sex_lbl

label define br10a_age_lbl 000 `"Less than 1 year"'
label define br10a_age_lbl 001 `"1"', add
label define br10a_age_lbl 002 `"2"', add
label define br10a_age_lbl 003 `"3"', add
label define br10a_age_lbl 004 `"4"', add
label define br10a_age_lbl 005 `"5"', add
label define br10a_age_lbl 006 `"6"', add
label define br10a_age_lbl 007 `"7"', add
label define br10a_age_lbl 008 `"8"', add
label define br10a_age_lbl 009 `"9"', add
label define br10a_age_lbl 010 `"10"', add
label define br10a_age_lbl 011 `"11"', add
label define br10a_age_lbl 012 `"12"', add
label define br10a_age_lbl 013 `"13"', add
label define br10a_age_lbl 014 `"14"', add
label define br10a_age_lbl 015 `"15"', add
label define br10a_age_lbl 016 `"16"', add
label define br10a_age_lbl 017 `"17"', add
label define br10a_age_lbl 018 `"18"', add
label define br10a_age_lbl 019 `"19"', add
label define br10a_age_lbl 020 `"20"', add
label define br10a_age_lbl 021 `"21"', add
label define br10a_age_lbl 022 `"22"', add
label define br10a_age_lbl 023 `"23"', add
label define br10a_age_lbl 024 `"24"', add
label define br10a_age_lbl 025 `"25"', add
label define br10a_age_lbl 026 `"26"', add
label define br10a_age_lbl 027 `"27"', add
label define br10a_age_lbl 028 `"28"', add
label define br10a_age_lbl 029 `"29"', add
label define br10a_age_lbl 030 `"30"', add
label define br10a_age_lbl 031 `"31"', add
label define br10a_age_lbl 032 `"32"', add
label define br10a_age_lbl 033 `"33"', add
label define br10a_age_lbl 034 `"34"', add
label define br10a_age_lbl 035 `"35"', add
label define br10a_age_lbl 036 `"36"', add
label define br10a_age_lbl 037 `"37"', add
label define br10a_age_lbl 038 `"38"', add
label define br10a_age_lbl 039 `"39"', add
label define br10a_age_lbl 040 `"40"', add
label define br10a_age_lbl 041 `"41"', add
label define br10a_age_lbl 042 `"42"', add
label define br10a_age_lbl 043 `"43"', add
label define br10a_age_lbl 044 `"44"', add
label define br10a_age_lbl 045 `"45"', add
label define br10a_age_lbl 046 `"46"', add
label define br10a_age_lbl 047 `"47"', add
label define br10a_age_lbl 048 `"48"', add
label define br10a_age_lbl 049 `"49"', add
label define br10a_age_lbl 050 `"50"', add
label define br10a_age_lbl 051 `"51"', add
label define br10a_age_lbl 052 `"52"', add
label define br10a_age_lbl 053 `"53"', add
label define br10a_age_lbl 054 `"54"', add
label define br10a_age_lbl 055 `"55"', add
label define br10a_age_lbl 056 `"56"', add
label define br10a_age_lbl 057 `"57"', add
label define br10a_age_lbl 058 `"58"', add
label define br10a_age_lbl 059 `"59"', add
label define br10a_age_lbl 060 `"60"', add
label define br10a_age_lbl 061 `"61"', add
label define br10a_age_lbl 062 `"62"', add
label define br10a_age_lbl 063 `"63"', add
label define br10a_age_lbl 064 `"64"', add
label define br10a_age_lbl 065 `"65"', add
label define br10a_age_lbl 066 `"66"', add
label define br10a_age_lbl 067 `"67"', add
label define br10a_age_lbl 068 `"68"', add
label define br10a_age_lbl 069 `"69"', add
label define br10a_age_lbl 070 `"70"', add
label define br10a_age_lbl 071 `"71"', add
label define br10a_age_lbl 072 `"72"', add
label define br10a_age_lbl 073 `"73"', add
label define br10a_age_lbl 074 `"74"', add
label define br10a_age_lbl 075 `"75"', add
label define br10a_age_lbl 076 `"76"', add
label define br10a_age_lbl 077 `"77"', add
label define br10a_age_lbl 078 `"78"', add
label define br10a_age_lbl 079 `"79"', add
label define br10a_age_lbl 080 `"80"', add
label define br10a_age_lbl 081 `"81"', add
label define br10a_age_lbl 082 `"82"', add
label define br10a_age_lbl 083 `"83"', add
label define br10a_age_lbl 084 `"84"', add
label define br10a_age_lbl 085 `"85"', add
label define br10a_age_lbl 086 `"86"', add
label define br10a_age_lbl 087 `"87"', add
label define br10a_age_lbl 088 `"88"', add
label define br10a_age_lbl 089 `"89"', add
label define br10a_age_lbl 090 `"90"', add
label define br10a_age_lbl 091 `"91"', add
label define br10a_age_lbl 092 `"92"', add
label define br10a_age_lbl 093 `"93"', add
label define br10a_age_lbl 094 `"94"', add
label define br10a_age_lbl 095 `"95"', add
label define br10a_age_lbl 096 `"96"', add
label define br10a_age_lbl 097 `"97"', add
label define br10a_age_lbl 098 `"98"', add
label define br10a_age_lbl 099 `"99"', add
label define br10a_age_lbl 100 `"100"', add
label define br10a_age_lbl 101 `"101"', add
label define br10a_age_lbl 102 `"102"', add
label define br10a_age_lbl 103 `"103"', add
label define br10a_age_lbl 104 `"104"', add
label define br10a_age_lbl 105 `"105"', add
label define br10a_age_lbl 106 `"106"', add
label define br10a_age_lbl 107 `"107"', add
label define br10a_age_lbl 108 `"108"', add
label define br10a_age_lbl 109 `"109"', add
label define br10a_age_lbl 110 `"110+"', add
label values br10a_age br10a_age_lbl

label define br10a_agemo_lbl 00 `"0"'
label define br10a_agemo_lbl 01 `"1"', add
label define br10a_agemo_lbl 02 `"2"', add
label define br10a_agemo_lbl 03 `"3"', add
label define br10a_agemo_lbl 04 `"4"', add
label define br10a_agemo_lbl 05 `"5"', add
label define br10a_agemo_lbl 06 `"6"', add
label define br10a_agemo_lbl 07 `"7"', add
label define br10a_agemo_lbl 08 `"8"', add
label define br10a_agemo_lbl 09 `"9"', add
label define br10a_agemo_lbl 10 `"10"', add
label define br10a_agemo_lbl 11 `"11"', add
label define br10a_agemo_lbl 99 `"NIU (not in universe)"', add
label values br10a_agemo br10a_agemo_lbl

label define br10a_ageform_lbl 1 `"Birthday"'
label define br10a_ageform_lbl 2 `"Age declared"', add
label values br10a_ageform br10a_ageform_lbl

label define br10a_race_lbl 1 `"White"'
label define br10a_race_lbl 2 `"Black"', add
label define br10a_race_lbl 3 `"Yellow"', add
label define br10a_race_lbl 4 `"Brown"', add
label define br10a_race_lbl 5 `"Indigenous"', add
label define br10a_race_lbl 9 `"Unknown"', add
label values br10a_race br10a_race_lbl

label define br10a_birthrec_lbl 1 `"From the office"'
label define br10a_birthrec_lbl 2 `"Live birth statement (DNV) of the hospital or clinic"', add
label define br10a_birthrec_lbl 3 `"Administrative Birth Registration of indigenous (RANI)"', add
label define br10a_birthrec_lbl 4 `"None"', add
label define br10a_birthrec_lbl 8 `"Unknown"', add
label define br10a_birthrec_lbl 9 `"NIU (not in universe)"', add
label values br10a_birthrec br10a_birthrec_lbl

label define br10a_dissee_lbl 1 `"Yes, cannot in any way"'
label define br10a_dissee_lbl 2 `"Yes, very difficult"', add
label define br10a_dissee_lbl 3 `"Yes, somewhat difficulty"', add
label define br10a_dissee_lbl 4 `"No, no difficulty"', add
label define br10a_dissee_lbl 9 `"Unknown"', add
label values br10a_dissee br10a_dissee_lbl

label define br10a_dishear_lbl 1 `"Yes, cannot in any way"'
label define br10a_dishear_lbl 2 `"Yes, very difficult"', add
label define br10a_dishear_lbl 3 `"Yes, somewhat difficulty"', add
label define br10a_dishear_lbl 4 `"No, no difficulty"', add
label define br10a_dishear_lbl 9 `"Unknown"', add
label values br10a_dishear br10a_dishear_lbl

label define br10a_dismob_lbl 1 `"Yes, cannot in any way"'
label define br10a_dismob_lbl 2 `"Yes, very difficult"', add
label define br10a_dismob_lbl 3 `"Yes, somewhat difficulty"', add
label define br10a_dismob_lbl 4 `"No, no difficulty"', add
label define br10a_dismob_lbl 9 `"Unknown"', add
label values br10a_dismob br10a_dismob_lbl

label define br10a_dismntl_lbl 1 `"Yes"'
label define br10a_dismntl_lbl 2 `"No"', add
label define br10a_dismntl_lbl 9 `"Unknown"', add
label values br10a_dismntl br10a_dismntl_lbl

label define br10a_bornmuni_lbl 1 `"Yes, and always lived in there"'
label define br10a_bornmuni_lbl 2 `"Yes, but lived in another municipality or foreign country"', add
label define br10a_bornmuni_lbl 3 `"No"', add
label values br10a_bornmuni br10a_bornmuni_lbl

label define br10a_bornstat_lbl 1 `"Yes, and always lived in there"'
label define br10a_bornstat_lbl 2 `"Yes, but lived in another state or foreign country"', add
label define br10a_bornstat_lbl 3 `"No"', add
label define br10a_bornstat_lbl 9 `"NIU (not in universe)"', add
label values br10a_bornstat br10a_bornstat_lbl

label define br10a_nation_lbl 1 `"Brazilian born"'
label define br10a_nation_lbl 2 `"Naturalized Brazilian"', add
label define br10a_nation_lbl 3 `"Foreigner"', add
label define br10a_nation_lbl 9 `"NIU (not in universe)"', add
label values br10a_nation br10a_nation_lbl

label define br10a_moveyr_lbl 1920 `"1920 or earlier"'
label define br10a_moveyr_lbl 1921 `"1921"', add
label define br10a_moveyr_lbl 1922 `"1922"', add
label define br10a_moveyr_lbl 1923 `"1923"', add
label define br10a_moveyr_lbl 1924 `"1924"', add
label define br10a_moveyr_lbl 1925 `"1925"', add
label define br10a_moveyr_lbl 1926 `"1926"', add
label define br10a_moveyr_lbl 1927 `"1927"', add
label define br10a_moveyr_lbl 1928 `"1928"', add
label define br10a_moveyr_lbl 1929 `"1929"', add
label define br10a_moveyr_lbl 1930 `"1930"', add
label define br10a_moveyr_lbl 1931 `"1931"', add
label define br10a_moveyr_lbl 1932 `"1932"', add
label define br10a_moveyr_lbl 1933 `"1933"', add
label define br10a_moveyr_lbl 1934 `"1934"', add
label define br10a_moveyr_lbl 1935 `"1935"', add
label define br10a_moveyr_lbl 1936 `"1936"', add
label define br10a_moveyr_lbl 1937 `"1937"', add
label define br10a_moveyr_lbl 1938 `"1938"', add
label define br10a_moveyr_lbl 1939 `"1939"', add
label define br10a_moveyr_lbl 1940 `"1940"', add
label define br10a_moveyr_lbl 1941 `"1941"', add
label define br10a_moveyr_lbl 1942 `"1942"', add
label define br10a_moveyr_lbl 1943 `"1943"', add
label define br10a_moveyr_lbl 1944 `"1944"', add
label define br10a_moveyr_lbl 1945 `"1945"', add
label define br10a_moveyr_lbl 1946 `"1946"', add
label define br10a_moveyr_lbl 1947 `"1947"', add
label define br10a_moveyr_lbl 1948 `"1948"', add
label define br10a_moveyr_lbl 1949 `"1949"', add
label define br10a_moveyr_lbl 1950 `"1950"', add
label define br10a_moveyr_lbl 1951 `"1951"', add
label define br10a_moveyr_lbl 1952 `"1952"', add
label define br10a_moveyr_lbl 1953 `"1953"', add
label define br10a_moveyr_lbl 1954 `"1954"', add
label define br10a_moveyr_lbl 1955 `"1955"', add
label define br10a_moveyr_lbl 1956 `"1956"', add
label define br10a_moveyr_lbl 1957 `"1957"', add
label define br10a_moveyr_lbl 1958 `"1958"', add
label define br10a_moveyr_lbl 1959 `"1959"', add
label define br10a_moveyr_lbl 1960 `"1960"', add
label define br10a_moveyr_lbl 1961 `"1961"', add
label define br10a_moveyr_lbl 1962 `"1962"', add
label define br10a_moveyr_lbl 1963 `"1963"', add
label define br10a_moveyr_lbl 1964 `"1964"', add
label define br10a_moveyr_lbl 1965 `"1965"', add
label define br10a_moveyr_lbl 1966 `"1966"', add
label define br10a_moveyr_lbl 1967 `"1967"', add
label define br10a_moveyr_lbl 1968 `"1968"', add
label define br10a_moveyr_lbl 1969 `"1969"', add
label define br10a_moveyr_lbl 1970 `"1970"', add
label define br10a_moveyr_lbl 1971 `"1971"', add
label define br10a_moveyr_lbl 1972 `"1972"', add
label define br10a_moveyr_lbl 1973 `"1973"', add
label define br10a_moveyr_lbl 1974 `"1974"', add
label define br10a_moveyr_lbl 1975 `"1975"', add
label define br10a_moveyr_lbl 1976 `"1976"', add
label define br10a_moveyr_lbl 1977 `"1977"', add
label define br10a_moveyr_lbl 1978 `"1978"', add
label define br10a_moveyr_lbl 1979 `"1979"', add
label define br10a_moveyr_lbl 1980 `"1980"', add
label define br10a_moveyr_lbl 1981 `"1981"', add
label define br10a_moveyr_lbl 1982 `"1982"', add
label define br10a_moveyr_lbl 1983 `"1983"', add
label define br10a_moveyr_lbl 1984 `"1984"', add
label define br10a_moveyr_lbl 1985 `"1985"', add
label define br10a_moveyr_lbl 1986 `"1986"', add
label define br10a_moveyr_lbl 1987 `"1987"', add
label define br10a_moveyr_lbl 1988 `"1988"', add
label define br10a_moveyr_lbl 1989 `"1989"', add
label define br10a_moveyr_lbl 1990 `"1990"', add
label define br10a_moveyr_lbl 1991 `"1991"', add
label define br10a_moveyr_lbl 1992 `"1992"', add
label define br10a_moveyr_lbl 1993 `"1993"', add
label define br10a_moveyr_lbl 1994 `"1994"', add
label define br10a_moveyr_lbl 1995 `"1995"', add
label define br10a_moveyr_lbl 1996 `"1996"', add
label define br10a_moveyr_lbl 1997 `"1997"', add
label define br10a_moveyr_lbl 1998 `"1998"', add
label define br10a_moveyr_lbl 1999 `"1999"', add
label define br10a_moveyr_lbl 2000 `"2000"', add
label define br10a_moveyr_lbl 2001 `"2001"', add
label define br10a_moveyr_lbl 2002 `"2002"', add
label define br10a_moveyr_lbl 2003 `"2003"', add
label define br10a_moveyr_lbl 2004 `"2004"', add
label define br10a_moveyr_lbl 2005 `"2005"', add
label define br10a_moveyr_lbl 2006 `"2006"', add
label define br10a_moveyr_lbl 2007 `"2007"', add
label define br10a_moveyr_lbl 2008 `"2008"', add
label define br10a_moveyr_lbl 2009 `"2009"', add
label define br10a_moveyr_lbl 2010 `"2010"', add
label define br10a_moveyr_lbl 9999 `"NIU (not in universe)"', add
label values br10a_moveyr br10a_moveyr_lbl

label define br10a_bpl_lbl 1 `"A Brazilian state other than the one of current residence"'
label define br10a_bpl_lbl 2 `"Foreign country"', add
label define br10a_bpl_lbl 9 `"NIU (not in universe)"', add
label values br10a_bpl br10a_bpl_lbl

label define br10a_bplstate_lbl 11 `"R�ndonia"'
label define br10a_bplstate_lbl 12 `"Acre"', add
label define br10a_bplstate_lbl 13 `"Amazonas"', add
label define br10a_bplstate_lbl 14 `"Roraima"', add
label define br10a_bplstate_lbl 15 `"Par�"', add
label define br10a_bplstate_lbl 16 `"Amap�"', add
label define br10a_bplstate_lbl 17 `"Tocantins"', add
label define br10a_bplstate_lbl 21 `"Maranh�o"', add
label define br10a_bplstate_lbl 22 `"Piau�"', add
label define br10a_bplstate_lbl 23 `"Cear�"', add
label define br10a_bplstate_lbl 24 `"Rio Grande Do Norte"', add
label define br10a_bplstate_lbl 25 `"Para�ba"', add
label define br10a_bplstate_lbl 26 `"Pernambuco"', add
label define br10a_bplstate_lbl 27 `"Alagoas"', add
label define br10a_bplstate_lbl 28 `"Sergipe"', add
label define br10a_bplstate_lbl 29 `"Bahia"', add
label define br10a_bplstate_lbl 31 `"Minas Gerais"', add
label define br10a_bplstate_lbl 32 `"Esp�rito Santo"', add
label define br10a_bplstate_lbl 33 `"Rio De Janeiro"', add
label define br10a_bplstate_lbl 35 `"S�o Paulo"', add
label define br10a_bplstate_lbl 41 `"Paran�"', add
label define br10a_bplstate_lbl 42 `"Santa Catarina"', add
label define br10a_bplstate_lbl 43 `"Rio Grande Do Sul"', add
label define br10a_bplstate_lbl 50 `"Mato Grosso Do Sul"', add
label define br10a_bplstate_lbl 51 `"Mato Grosso"', add
label define br10a_bplstate_lbl 52 `"Goi�s"', add
label define br10a_bplstate_lbl 53 `"Distrito Federal"', add
label define br10a_bplstate_lbl 98 `"Unknown"', add
label define br10a_bplstate_lbl 99 `"NIU (not in universe)"', add
label values br10a_bplstate br10a_bplstate_lbl

label define br10a_bplctry_lbl 8000024 `"Angola"'
label define br10a_bplctry_lbl 8000032 `"Argentina"', add
label define br10a_bplctry_lbl 8000036 `"Australia"', add
label define br10a_bplctry_lbl 8000040 `"Austria"', add
label define br10a_bplctry_lbl 8000056 `"Belgium"', add
label define br10a_bplctry_lbl 8000068 `"Bolivia"', add
label define br10a_bplctry_lbl 8000124 `"Canada"', add
label define br10a_bplctry_lbl 8000132 `"Cape Verde"', add
label define br10a_bplctry_lbl 8000152 `"Chile"', add
label define br10a_bplctry_lbl 8000156 `"China"', add
label define br10a_bplctry_lbl 8000170 `"Colombia"', add
label define br10a_bplctry_lbl 8000188 `"Costa Rica"', add
label define br10a_bplctry_lbl 8000191 `"Croatia"', add
label define br10a_bplctry_lbl 8000192 `"Cuba"', add
label define br10a_bplctry_lbl 8000203 `"Czech Republic"', add
label define br10a_bplctry_lbl 8000208 `"Denmark"', add
label define br10a_bplctry_lbl 8000218 `"Ecuador"', add
label define br10a_bplctry_lbl 8000250 `"France"', add
label define br10a_bplctry_lbl 8000254 `"French Guiana"', add
label define br10a_bplctry_lbl 8000276 `"Germany"', add
label define br10a_bplctry_lbl 8000300 `"Greece"', add
label define br10a_bplctry_lbl 8000328 `"Guyana"', add
label define br10a_bplctry_lbl 8000348 `"Hungary"', add
label define br10a_bplctry_lbl 8000356 `"India"', add
label define br10a_bplctry_lbl 8000360 `"Indonesia"', add
label define br10a_bplctry_lbl 8000368 `"Iraq"', add
label define br10a_bplctry_lbl 8000372 `"Ireland"', add
label define br10a_bplctry_lbl 8000376 `"Israel"', add
label define br10a_bplctry_lbl 8000380 `"Italy"', add
label define br10a_bplctry_lbl 8000392 `"Japan"', add
label define br10a_bplctry_lbl 8000400 `"Jordan"', add
label define br10a_bplctry_lbl 8000410 `"Republic of Korea"', add
label define br10a_bplctry_lbl 8000422 `"Lebanon"', add
label define br10a_bplctry_lbl 8000440 `"Lithuania"', add
label define br10a_bplctry_lbl 8000484 `"Mexico"', add
label define br10a_bplctry_lbl 8000504 `"Morocco"', add
label define br10a_bplctry_lbl 8000508 `"Mozambique"', add
label define br10a_bplctry_lbl 8000528 `"Netherlands"', add
label define br10a_bplctry_lbl 8000566 `"Nigeria"', add
label define br10a_bplctry_lbl 8000578 `"Norway"', add
label define br10a_bplctry_lbl 8000591 `"Panama"', add
label define br10a_bplctry_lbl 8000600 `"Paraguay"', add
label define br10a_bplctry_lbl 8000604 `"Peru"', add
label define br10a_bplctry_lbl 8000608 `"Philippines"', add
label define br10a_bplctry_lbl 8000616 `"Poland"', add
label define br10a_bplctry_lbl 8000620 `"Portugal"', add
label define br10a_bplctry_lbl 8000624 `"Guinea Bissau"', add
label define br10a_bplctry_lbl 8000642 `"Romania"', add
label define br10a_bplctry_lbl 8000643 `"Russia"', add
label define br10a_bplctry_lbl 8000688 `"Serbia"', add
label define br10a_bplctry_lbl 8000710 `"South Africa"', add
label define br10a_bplctry_lbl 8000724 `"Spain"', add
label define br10a_bplctry_lbl 8000740 `"Suriname"', add
label define br10a_bplctry_lbl 8000752 `"Sweden"', add
label define br10a_bplctry_lbl 8000756 `"Switzerland"', add
label define br10a_bplctry_lbl 8000760 `"Syria"', add
label define br10a_bplctry_lbl 8000792 `"Turkey"', add
label define br10a_bplctry_lbl 8000804 `"Ukraine"', add
label define br10a_bplctry_lbl 8000818 `"Egypt"', add
label define br10a_bplctry_lbl 8000826 `"United Kingdom"', add
label define br10a_bplctry_lbl 8000840 `"United States"', add
label define br10a_bplctry_lbl 8000858 `"Uruguay"', add
label define br10a_bplctry_lbl 8000862 `"Venezuela"', add
label define br10a_bplctry_lbl 9000000 `"Response suppressed"', add
label define br10a_bplctry_lbl 9999998 `"Unknown"', add
label define br10a_bplctry_lbl 9999999 `"NIU (not in universe)"', add
label values br10a_bplctry br10a_bplctry_lbl

label define br10a_yrsstate_lbl 000 `"0"'
label define br10a_yrsstate_lbl 001 `"1"', add
label define br10a_yrsstate_lbl 002 `"2"', add
label define br10a_yrsstate_lbl 003 `"3"', add
label define br10a_yrsstate_lbl 004 `"4"', add
label define br10a_yrsstate_lbl 005 `"5"', add
label define br10a_yrsstate_lbl 006 `"6"', add
label define br10a_yrsstate_lbl 007 `"7"', add
label define br10a_yrsstate_lbl 008 `"8"', add
label define br10a_yrsstate_lbl 009 `"9"', add
label define br10a_yrsstate_lbl 010 `"10"', add
label define br10a_yrsstate_lbl 011 `"11"', add
label define br10a_yrsstate_lbl 012 `"12"', add
label define br10a_yrsstate_lbl 013 `"13"', add
label define br10a_yrsstate_lbl 014 `"14"', add
label define br10a_yrsstate_lbl 015 `"15"', add
label define br10a_yrsstate_lbl 016 `"16"', add
label define br10a_yrsstate_lbl 017 `"17"', add
label define br10a_yrsstate_lbl 018 `"18"', add
label define br10a_yrsstate_lbl 019 `"19"', add
label define br10a_yrsstate_lbl 020 `"20"', add
label define br10a_yrsstate_lbl 021 `"21"', add
label define br10a_yrsstate_lbl 022 `"22"', add
label define br10a_yrsstate_lbl 023 `"23"', add
label define br10a_yrsstate_lbl 024 `"24"', add
label define br10a_yrsstate_lbl 025 `"25"', add
label define br10a_yrsstate_lbl 026 `"26"', add
label define br10a_yrsstate_lbl 027 `"27"', add
label define br10a_yrsstate_lbl 028 `"28"', add
label define br10a_yrsstate_lbl 029 `"29"', add
label define br10a_yrsstate_lbl 030 `"30"', add
label define br10a_yrsstate_lbl 031 `"31"', add
label define br10a_yrsstate_lbl 032 `"32"', add
label define br10a_yrsstate_lbl 033 `"33"', add
label define br10a_yrsstate_lbl 034 `"34"', add
label define br10a_yrsstate_lbl 035 `"35"', add
label define br10a_yrsstate_lbl 036 `"36"', add
label define br10a_yrsstate_lbl 037 `"37"', add
label define br10a_yrsstate_lbl 038 `"38"', add
label define br10a_yrsstate_lbl 039 `"39"', add
label define br10a_yrsstate_lbl 040 `"40"', add
label define br10a_yrsstate_lbl 041 `"41"', add
label define br10a_yrsstate_lbl 042 `"42"', add
label define br10a_yrsstate_lbl 043 `"43"', add
label define br10a_yrsstate_lbl 044 `"44"', add
label define br10a_yrsstate_lbl 045 `"45"', add
label define br10a_yrsstate_lbl 046 `"46"', add
label define br10a_yrsstate_lbl 047 `"47"', add
label define br10a_yrsstate_lbl 048 `"48"', add
label define br10a_yrsstate_lbl 049 `"49"', add
label define br10a_yrsstate_lbl 050 `"50"', add
label define br10a_yrsstate_lbl 051 `"51"', add
label define br10a_yrsstate_lbl 052 `"52"', add
label define br10a_yrsstate_lbl 053 `"53"', add
label define br10a_yrsstate_lbl 054 `"54"', add
label define br10a_yrsstate_lbl 055 `"55"', add
label define br10a_yrsstate_lbl 056 `"56"', add
label define br10a_yrsstate_lbl 057 `"57"', add
label define br10a_yrsstate_lbl 058 `"58"', add
label define br10a_yrsstate_lbl 059 `"59"', add
label define br10a_yrsstate_lbl 060 `"60"', add
label define br10a_yrsstate_lbl 061 `"61"', add
label define br10a_yrsstate_lbl 062 `"62"', add
label define br10a_yrsstate_lbl 063 `"63"', add
label define br10a_yrsstate_lbl 064 `"64"', add
label define br10a_yrsstate_lbl 065 `"65"', add
label define br10a_yrsstate_lbl 066 `"66"', add
label define br10a_yrsstate_lbl 067 `"67"', add
label define br10a_yrsstate_lbl 068 `"68"', add
label define br10a_yrsstate_lbl 069 `"69"', add
label define br10a_yrsstate_lbl 070 `"70"', add
label define br10a_yrsstate_lbl 071 `"71"', add
label define br10a_yrsstate_lbl 072 `"72"', add
label define br10a_yrsstate_lbl 073 `"73"', add
label define br10a_yrsstate_lbl 074 `"74"', add
label define br10a_yrsstate_lbl 075 `"75"', add
label define br10a_yrsstate_lbl 076 `"76"', add
label define br10a_yrsstate_lbl 077 `"77"', add
label define br10a_yrsstate_lbl 078 `"78"', add
label define br10a_yrsstate_lbl 079 `"79"', add
label define br10a_yrsstate_lbl 080 `"80"', add
label define br10a_yrsstate_lbl 081 `"81"', add
label define br10a_yrsstate_lbl 082 `"82"', add
label define br10a_yrsstate_lbl 083 `"83"', add
label define br10a_yrsstate_lbl 084 `"84"', add
label define br10a_yrsstate_lbl 085 `"85"', add
label define br10a_yrsstate_lbl 086 `"86"', add
label define br10a_yrsstate_lbl 087 `"87"', add
label define br10a_yrsstate_lbl 088 `"88"', add
label define br10a_yrsstate_lbl 089 `"89"', add
label define br10a_yrsstate_lbl 090 `"90"', add
label define br10a_yrsstate_lbl 091 `"91"', add
label define br10a_yrsstate_lbl 092 `"92"', add
label define br10a_yrsstate_lbl 093 `"93"', add
label define br10a_yrsstate_lbl 094 `"94"', add
label define br10a_yrsstate_lbl 095 `"95"', add
label define br10a_yrsstate_lbl 096 `"96"', add
label define br10a_yrsstate_lbl 097 `"97"', add
label define br10a_yrsstate_lbl 098 `"98"', add
label define br10a_yrsstate_lbl 099 `"99"', add
label define br10a_yrsstate_lbl 100 `"100+"', add
label define br10a_yrsstate_lbl 999 `"NIU (not in universe)"', add
label values br10a_yrsstate br10a_yrsstate_lbl

label define br10a_yrsmuni_lbl 000 `"0"'
label define br10a_yrsmuni_lbl 001 `"1"', add
label define br10a_yrsmuni_lbl 002 `"2"', add
label define br10a_yrsmuni_lbl 003 `"3"', add
label define br10a_yrsmuni_lbl 004 `"4"', add
label define br10a_yrsmuni_lbl 005 `"5"', add
label define br10a_yrsmuni_lbl 006 `"6"', add
label define br10a_yrsmuni_lbl 007 `"7"', add
label define br10a_yrsmuni_lbl 008 `"8"', add
label define br10a_yrsmuni_lbl 009 `"9"', add
label define br10a_yrsmuni_lbl 010 `"10"', add
label define br10a_yrsmuni_lbl 011 `"11"', add
label define br10a_yrsmuni_lbl 012 `"12"', add
label define br10a_yrsmuni_lbl 013 `"13"', add
label define br10a_yrsmuni_lbl 014 `"14"', add
label define br10a_yrsmuni_lbl 015 `"15"', add
label define br10a_yrsmuni_lbl 016 `"16"', add
label define br10a_yrsmuni_lbl 017 `"17"', add
label define br10a_yrsmuni_lbl 018 `"18"', add
label define br10a_yrsmuni_lbl 019 `"19"', add
label define br10a_yrsmuni_lbl 020 `"20"', add
label define br10a_yrsmuni_lbl 021 `"21"', add
label define br10a_yrsmuni_lbl 022 `"22"', add
label define br10a_yrsmuni_lbl 023 `"23"', add
label define br10a_yrsmuni_lbl 024 `"24"', add
label define br10a_yrsmuni_lbl 025 `"25"', add
label define br10a_yrsmuni_lbl 026 `"26"', add
label define br10a_yrsmuni_lbl 027 `"27"', add
label define br10a_yrsmuni_lbl 028 `"28"', add
label define br10a_yrsmuni_lbl 029 `"29"', add
label define br10a_yrsmuni_lbl 030 `"30"', add
label define br10a_yrsmuni_lbl 031 `"31"', add
label define br10a_yrsmuni_lbl 032 `"32"', add
label define br10a_yrsmuni_lbl 033 `"33"', add
label define br10a_yrsmuni_lbl 034 `"34"', add
label define br10a_yrsmuni_lbl 035 `"35"', add
label define br10a_yrsmuni_lbl 036 `"36"', add
label define br10a_yrsmuni_lbl 037 `"37"', add
label define br10a_yrsmuni_lbl 038 `"38"', add
label define br10a_yrsmuni_lbl 039 `"39"', add
label define br10a_yrsmuni_lbl 040 `"40"', add
label define br10a_yrsmuni_lbl 041 `"41"', add
label define br10a_yrsmuni_lbl 042 `"42"', add
label define br10a_yrsmuni_lbl 043 `"43"', add
label define br10a_yrsmuni_lbl 044 `"44"', add
label define br10a_yrsmuni_lbl 045 `"45"', add
label define br10a_yrsmuni_lbl 046 `"46"', add
label define br10a_yrsmuni_lbl 047 `"47"', add
label define br10a_yrsmuni_lbl 048 `"48"', add
label define br10a_yrsmuni_lbl 049 `"49"', add
label define br10a_yrsmuni_lbl 050 `"50"', add
label define br10a_yrsmuni_lbl 051 `"51"', add
label define br10a_yrsmuni_lbl 052 `"52"', add
label define br10a_yrsmuni_lbl 053 `"53"', add
label define br10a_yrsmuni_lbl 054 `"54"', add
label define br10a_yrsmuni_lbl 055 `"55"', add
label define br10a_yrsmuni_lbl 056 `"56"', add
label define br10a_yrsmuni_lbl 057 `"57"', add
label define br10a_yrsmuni_lbl 058 `"58"', add
label define br10a_yrsmuni_lbl 059 `"59"', add
label define br10a_yrsmuni_lbl 060 `"60"', add
label define br10a_yrsmuni_lbl 061 `"61"', add
label define br10a_yrsmuni_lbl 062 `"62"', add
label define br10a_yrsmuni_lbl 063 `"63"', add
label define br10a_yrsmuni_lbl 064 `"64"', add
label define br10a_yrsmuni_lbl 065 `"65"', add
label define br10a_yrsmuni_lbl 066 `"66"', add
label define br10a_yrsmuni_lbl 067 `"67"', add
label define br10a_yrsmuni_lbl 068 `"68"', add
label define br10a_yrsmuni_lbl 069 `"69"', add
label define br10a_yrsmuni_lbl 070 `"70"', add
label define br10a_yrsmuni_lbl 071 `"71"', add
label define br10a_yrsmuni_lbl 072 `"72"', add
label define br10a_yrsmuni_lbl 073 `"73"', add
label define br10a_yrsmuni_lbl 074 `"74"', add
label define br10a_yrsmuni_lbl 075 `"75"', add
label define br10a_yrsmuni_lbl 076 `"76"', add
label define br10a_yrsmuni_lbl 077 `"77"', add
label define br10a_yrsmuni_lbl 078 `"78"', add
label define br10a_yrsmuni_lbl 079 `"79"', add
label define br10a_yrsmuni_lbl 080 `"80"', add
label define br10a_yrsmuni_lbl 081 `"81"', add
label define br10a_yrsmuni_lbl 082 `"82"', add
label define br10a_yrsmuni_lbl 083 `"83"', add
label define br10a_yrsmuni_lbl 084 `"84"', add
label define br10a_yrsmuni_lbl 085 `"85"', add
label define br10a_yrsmuni_lbl 086 `"86"', add
label define br10a_yrsmuni_lbl 087 `"87"', add
label define br10a_yrsmuni_lbl 088 `"88"', add
label define br10a_yrsmuni_lbl 089 `"89"', add
label define br10a_yrsmuni_lbl 090 `"90"', add
label define br10a_yrsmuni_lbl 091 `"91"', add
label define br10a_yrsmuni_lbl 092 `"92"', add
label define br10a_yrsmuni_lbl 093 `"93"', add
label define br10a_yrsmuni_lbl 094 `"94"', add
label define br10a_yrsmuni_lbl 095 `"95+"', add
label define br10a_yrsmuni_lbl 999 `"NIU (not in universe)"', add
label values br10a_yrsmuni br10a_yrsmuni_lbl

label define br10a_prevres_lbl 1 `"A state/municipalty other than the one of current residence"'
label define br10a_prevres_lbl 2 `"Foreign country"', add
label define br10a_prevres_lbl 9 `"NIU (not in universe)"', add
label values br10a_prevres br10a_prevres_lbl

label define br10a_prevstat_lbl 11 `"R�ndonia"'
label define br10a_prevstat_lbl 12 `"Acre"', add
label define br10a_prevstat_lbl 13 `"Amazonas"', add
label define br10a_prevstat_lbl 14 `"Roraima"', add
label define br10a_prevstat_lbl 15 `"Par�"', add
label define br10a_prevstat_lbl 16 `"Amap�"', add
label define br10a_prevstat_lbl 17 `"Tocantins"', add
label define br10a_prevstat_lbl 21 `"Maranh�o"', add
label define br10a_prevstat_lbl 22 `"Piau�"', add
label define br10a_prevstat_lbl 23 `"Cear�"', add
label define br10a_prevstat_lbl 24 `"Rio Grande Do Norte"', add
label define br10a_prevstat_lbl 25 `"Para�ba"', add
label define br10a_prevstat_lbl 26 `"Pernambuco"', add
label define br10a_prevstat_lbl 27 `"Alagoas"', add
label define br10a_prevstat_lbl 28 `"Sergipe"', add
label define br10a_prevstat_lbl 29 `"Bahia"', add
label define br10a_prevstat_lbl 31 `"Minas Gerais"', add
label define br10a_prevstat_lbl 32 `"Esp�rito Santo"', add
label define br10a_prevstat_lbl 33 `"Rio De Janeiro"', add
label define br10a_prevstat_lbl 35 `"S�o Paulo"', add
label define br10a_prevstat_lbl 41 `"Paran�"', add
label define br10a_prevstat_lbl 42 `"Santa Catarina"', add
label define br10a_prevstat_lbl 43 `"Rio Grande Do Sul"', add
label define br10a_prevstat_lbl 50 `"Mato Grosso Do Sul"', add
label define br10a_prevstat_lbl 51 `"Mato Grosso"', add
label define br10a_prevstat_lbl 52 `"Goi�s"', add
label define br10a_prevstat_lbl 53 `"Distrito Federal"', add
label define br10a_prevstat_lbl 98 `"Unknown"', add
label define br10a_prevstat_lbl 99 `"NIU (not in universe)"', add
label values br10a_prevstat br10a_prevstat_lbl

label define br10a_prevmuni_lbl 1100015 `"Alta Floresta D'Oeste"'
label define br10a_prevmuni_lbl 1100023 `"Ariquemes"', add
label define br10a_prevmuni_lbl 1100031 `"Cabixi"', add
label define br10a_prevmuni_lbl 1100049 `"Cacoal"', add
label define br10a_prevmuni_lbl 1100056 `"Cerejeiras"', add
label define br10a_prevmuni_lbl 1100064 `"Colorado do Oeste"', add
label define br10a_prevmuni_lbl 1100072 `"Corumbiara"', add
label define br10a_prevmuni_lbl 1100080 `"Costa Marques"', add
label define br10a_prevmuni_lbl 1100098 `"Espig�o D'Oeste"', add
label define br10a_prevmuni_lbl 1100106 `"Guajar�-Mirim"', add
label define br10a_prevmuni_lbl 1100114 `"Jaru"', add
label define br10a_prevmuni_lbl 1100122 `"Ji-Paran�"', add
label define br10a_prevmuni_lbl 1100130 `"Machadinho D'Oeste"', add
label define br10a_prevmuni_lbl 1100148 `"Nova Brasil�ndia D'Oeste"', add
label define br10a_prevmuni_lbl 1100155 `"Ouro Preto do Oeste"', add
label define br10a_prevmuni_lbl 1100189 `"Pimenta Bueno"', add
label define br10a_prevmuni_lbl 1100205 `"Porto Velho"', add
label define br10a_prevmuni_lbl 1100254 `"Presidente M�dici"', add
label define br10a_prevmuni_lbl 1100262 `"Rio Crespo"', add
label define br10a_prevmuni_lbl 1100288 `"Rolim de Moura"', add
label define br10a_prevmuni_lbl 1100296 `"Santa Luzia D'Oeste"', add
label define br10a_prevmuni_lbl 1100304 `"Vilhena"', add
label define br10a_prevmuni_lbl 1100320 `"S�o Miguel do Guapor�"', add
label define br10a_prevmuni_lbl 1100338 `"Nova Mamor�"', add
label define br10a_prevmuni_lbl 1100346 `"Alvorada D'Oeste"', add
label define br10a_prevmuni_lbl 1100379 `"Alto Alegre dos Parecis"', add
label define br10a_prevmuni_lbl 1100403 `"Alto Para�so"', add
label define br10a_prevmuni_lbl 1100452 `"Buritis"', add
label define br10a_prevmuni_lbl 1100502 `"Novo Horizonte do Oeste"', add
label define br10a_prevmuni_lbl 1100601 `"Cacaul�ndia"', add
label define br10a_prevmuni_lbl 1100700 `"Campo Novo de Rond�nia"', add
label define br10a_prevmuni_lbl 1100809 `"Candeias do Jamari"', add
label define br10a_prevmuni_lbl 1100908 `"Castanheiras"', add
label define br10a_prevmuni_lbl 1100924 `"Chupinguaia"', add
label define br10a_prevmuni_lbl 1100940 `"Cujubim"', add
label define br10a_prevmuni_lbl 1101005 `"Governador Jorge Teixeira"', add
label define br10a_prevmuni_lbl 1101104 `"Itapu� do Oeste"', add
label define br10a_prevmuni_lbl 1101203 `"Ministro Andreazza"', add
label define br10a_prevmuni_lbl 1101302 `"Mirante da Serra"', add
label define br10a_prevmuni_lbl 1101401 `"Monte Negro"', add
label define br10a_prevmuni_lbl 1101435 `"Nova Uni�o"', add
label define br10a_prevmuni_lbl 1101450 `"Parecis"', add
label define br10a_prevmuni_lbl 1101468 `"Pimenteiras do Oeste"', add
label define br10a_prevmuni_lbl 1101476 `"Primavera de Rond�nia"', add
label define br10a_prevmuni_lbl 1101484 `"S�o Felipe D'Oeste"', add
label define br10a_prevmuni_lbl 1101492 `"S�o Francisco do Guapor�"', add
label define br10a_prevmuni_lbl 1101500 `"Seringueiras"', add
label define br10a_prevmuni_lbl 1101559 `"Teixeir�polis"', add
label define br10a_prevmuni_lbl 1101609 `"Theobroma"', add
label define br10a_prevmuni_lbl 1101708 `"Urup�"', add
label define br10a_prevmuni_lbl 1101757 `"Vale do Anari"', add
label define br10a_prevmuni_lbl 1101807 `"Vale do Para�so"', add
label define br10a_prevmuni_lbl 1199999 `"Rond�nia, municipality unknown"', add
label define br10a_prevmuni_lbl 1200013 `"Acrel�ndia"', add
label define br10a_prevmuni_lbl 1200054 `"Assis Brasil"', add
label define br10a_prevmuni_lbl 1200104 `"Brasil�ia"', add
label define br10a_prevmuni_lbl 1200138 `"Bujari"', add
label define br10a_prevmuni_lbl 1200179 `"Capixaba"', add
label define br10a_prevmuni_lbl 1200203 `"Cruzeiro do Sul"', add
label define br10a_prevmuni_lbl 1200252 `"Epitaciol�ndia"', add
label define br10a_prevmuni_lbl 1200302 `"Feij�"', add
label define br10a_prevmuni_lbl 1200328 `"Jord�o"', add
label define br10a_prevmuni_lbl 1200336 `"M�ncio Lima"', add
label define br10a_prevmuni_lbl 1200344 `"Manoel Urbano"', add
label define br10a_prevmuni_lbl 1200351 `"Marechal Thaumaturgo"', add
label define br10a_prevmuni_lbl 1200385 `"Pl�cido de Castro"', add
label define br10a_prevmuni_lbl 1200393 `"Porto Walter"', add
label define br10a_prevmuni_lbl 1200401 `"Rio Branco"', add
label define br10a_prevmuni_lbl 1200427 `"Rodrigues Alves"', add
label define br10a_prevmuni_lbl 1200435 `"Santa Rosa do Purus"', add
label define br10a_prevmuni_lbl 1200450 `"Senador Guiomard"', add
label define br10a_prevmuni_lbl 1200500 `"Sena Madureira"', add
label define br10a_prevmuni_lbl 1200609 `"Tarauac�"', add
label define br10a_prevmuni_lbl 1200708 `"Xapuri"', add
label define br10a_prevmuni_lbl 1200807 `"Porto Acre"', add
label define br10a_prevmuni_lbl 1299999 `"Acre, municipality unknown"', add
label define br10a_prevmuni_lbl 1300029 `"Alvar�es"', add
label define br10a_prevmuni_lbl 1300060 `"Amatur�"', add
label define br10a_prevmuni_lbl 1300086 `"Anam�"', add
label define br10a_prevmuni_lbl 1300102 `"Anori"', add
label define br10a_prevmuni_lbl 1300144 `"Apu�"', add
label define br10a_prevmuni_lbl 1300201 `"Atalaia do Norte"', add
label define br10a_prevmuni_lbl 1300300 `"Autazes"', add
label define br10a_prevmuni_lbl 1300409 `"Barcelos"', add
label define br10a_prevmuni_lbl 1300508 `"Barreirinha"', add
label define br10a_prevmuni_lbl 1300607 `"Benjamin Constant"', add
label define br10a_prevmuni_lbl 1300631 `"Beruri"', add
label define br10a_prevmuni_lbl 1300680 `"Boa Vista do Ramos"', add
label define br10a_prevmuni_lbl 1300706 `"Boca do Acre"', add
label define br10a_prevmuni_lbl 1300805 `"Borba"', add
label define br10a_prevmuni_lbl 1300839 `"Caapiranga"', add
label define br10a_prevmuni_lbl 1300904 `"Canutama"', add
label define br10a_prevmuni_lbl 1301001 `"Carauari"', add
label define br10a_prevmuni_lbl 1301100 `"Careiro"', add
label define br10a_prevmuni_lbl 1301159 `"Careiro da V�rzea"', add
label define br10a_prevmuni_lbl 1301209 `"Coari"', add
label define br10a_prevmuni_lbl 1301308 `"Codaj�s"', add
label define br10a_prevmuni_lbl 1301407 `"Eirunep�"', add
label define br10a_prevmuni_lbl 1301506 `"Envira"', add
label define br10a_prevmuni_lbl 1301605 `"Fonte Boa"', add
label define br10a_prevmuni_lbl 1301654 `"Guajar�"', add
label define br10a_prevmuni_lbl 1301704 `"Humait�"', add
label define br10a_prevmuni_lbl 1301803 `"Ipixuna"', add
label define br10a_prevmuni_lbl 1301852 `"Iranduba"', add
label define br10a_prevmuni_lbl 1301902 `"Itacoatiara"', add
label define br10a_prevmuni_lbl 1301951 `"Itamarati"', add
label define br10a_prevmuni_lbl 1302009 `"Itapiranga"', add
label define br10a_prevmuni_lbl 1302108 `"Japur�"', add
label define br10a_prevmuni_lbl 1302207 `"Juru�"', add
label define br10a_prevmuni_lbl 1302306 `"Juta�"', add
label define br10a_prevmuni_lbl 1302405 `"L�brea"', add
label define br10a_prevmuni_lbl 1302504 `"Manacapuru"', add
label define br10a_prevmuni_lbl 1302553 `"Manaquiri"', add
label define br10a_prevmuni_lbl 1302603 `"Manaus"', add
label define br10a_prevmuni_lbl 1302702 `"Manicor�"', add
label define br10a_prevmuni_lbl 1302801 `"Mara�"', add
label define br10a_prevmuni_lbl 1302900 `"Mau�s"', add
label define br10a_prevmuni_lbl 1303007 `"Nhamund�"', add
label define br10a_prevmuni_lbl 1303106 `"Nova Olinda do Norte"', add
label define br10a_prevmuni_lbl 1303205 `"Novo Air�o"', add
label define br10a_prevmuni_lbl 1303304 `"Novo Aripuan�"', add
label define br10a_prevmuni_lbl 1303403 `"Parintins"', add
label define br10a_prevmuni_lbl 1303502 `"Pauini"', add
label define br10a_prevmuni_lbl 1303536 `"Presidente Figueiredo"', add
label define br10a_prevmuni_lbl 1303569 `"Rio Preto da Eva"', add
label define br10a_prevmuni_lbl 1303601 `"Santa Isabel do Rio Negro"', add
label define br10a_prevmuni_lbl 1303700 `"Santo Ant�nio do I��"', add
label define br10a_prevmuni_lbl 1303809 `"S�o Gabriel da Cachoeira"', add
label define br10a_prevmuni_lbl 1303908 `"S�o Paulo de Oliven�a"', add
label define br10a_prevmuni_lbl 1303957 `"S�o Sebasti�o do Uatum�"', add
label define br10a_prevmuni_lbl 1304005 `"Silves"', add
label define br10a_prevmuni_lbl 1304062 `"Tabatinga"', add
label define br10a_prevmuni_lbl 1304104 `"Tapau�"', add
label define br10a_prevmuni_lbl 1304203 `"Tef�"', add
label define br10a_prevmuni_lbl 1304237 `"Tonantins"', add
label define br10a_prevmuni_lbl 1304260 `"Uarini"', add
label define br10a_prevmuni_lbl 1304302 `"Urucar�"', add
label define br10a_prevmuni_lbl 1304401 `"Urucurituba"', add
label define br10a_prevmuni_lbl 1399999 `"Amazonas, municipality unknown"', add
label define br10a_prevmuni_lbl 1400027 `"Amajari"', add
label define br10a_prevmuni_lbl 1400050 `"Alto Alegre"', add
label define br10a_prevmuni_lbl 1400100 `"Boa Vista"', add
label define br10a_prevmuni_lbl 1400159 `"Bonfim"', add
label define br10a_prevmuni_lbl 1400175 `"Cant�"', add
label define br10a_prevmuni_lbl 1400209 `"Caracara�"', add
label define br10a_prevmuni_lbl 1400233 `"Caroebe"', add
label define br10a_prevmuni_lbl 1400282 `"Iracema"', add
label define br10a_prevmuni_lbl 1400308 `"Mucaja�"', add
label define br10a_prevmuni_lbl 1400407 `"Normandia"', add
label define br10a_prevmuni_lbl 1400456 `"Pacaraima"', add
label define br10a_prevmuni_lbl 1400472 `"Rorain�polis"', add
label define br10a_prevmuni_lbl 1400506 `"S�o Jo�o da Baliza"', add
label define br10a_prevmuni_lbl 1400605 `"S�o Luiz"', add
label define br10a_prevmuni_lbl 1400704 `"Uiramut�"', add
label define br10a_prevmuni_lbl 1499999 `"Roraima, municipality unknown"', add
label define br10a_prevmuni_lbl 1500107 `"Abaetetuba"', add
label define br10a_prevmuni_lbl 1500131 `"Abel Figueiredo"', add
label define br10a_prevmuni_lbl 1500206 `"Acar�"', add
label define br10a_prevmuni_lbl 1500305 `"Afu�"', add
label define br10a_prevmuni_lbl 1500347 `"�gua Azul do Norte"', add
label define br10a_prevmuni_lbl 1500404 `"Alenquer"', add
label define br10a_prevmuni_lbl 1500503 `"Almeirim"', add
label define br10a_prevmuni_lbl 1500602 `"Altamira"', add
label define br10a_prevmuni_lbl 1500701 `"Anaj�s"', add
label define br10a_prevmuni_lbl 1500800 `"Ananindeua"', add
label define br10a_prevmuni_lbl 1500859 `"Anapu"', add
label define br10a_prevmuni_lbl 1500909 `"Augusto Corr�a"', add
label define br10a_prevmuni_lbl 1500958 `"Aurora do Par�"', add
label define br10a_prevmuni_lbl 1501006 `"Aveiro"', add
label define br10a_prevmuni_lbl 1501105 `"Bagre"', add
label define br10a_prevmuni_lbl 1501204 `"Bai�o"', add
label define br10a_prevmuni_lbl 1501253 `"Bannach"', add
label define br10a_prevmuni_lbl 1501303 `"Barcarena"', add
label define br10a_prevmuni_lbl 1501402 `"Bel�m"', add
label define br10a_prevmuni_lbl 1501451 `"Belterra"', add
label define br10a_prevmuni_lbl 1501501 `"Benevides"', add
label define br10a_prevmuni_lbl 1501576 `"Bom Jesus do Tocantins"', add
label define br10a_prevmuni_lbl 1501600 `"Bonito"', add
label define br10a_prevmuni_lbl 1501709 `"Bragan�a"', add
label define br10a_prevmuni_lbl 1501725 `"Brasil Novo"', add
label define br10a_prevmuni_lbl 1501758 `"Brejo Grande do Araguaia"', add
label define br10a_prevmuni_lbl 1501782 `"Breu Branco"', add
label define br10a_prevmuni_lbl 1501808 `"Breves"', add
label define br10a_prevmuni_lbl 1501907 `"Bujaru"', add
label define br10a_prevmuni_lbl 1501956 `"Cachoeira do Piri�"', add
label define br10a_prevmuni_lbl 1502004 `"Cachoeira do Arari"', add
label define br10a_prevmuni_lbl 1502103 `"Camet�"', add
label define br10a_prevmuni_lbl 1502152 `"Cana� dos Caraj�s"', add
label define br10a_prevmuni_lbl 1502202 `"Capanema"', add
label define br10a_prevmuni_lbl 1502301 `"Capit�o Po�o"', add
label define br10a_prevmuni_lbl 1502400 `"Castanhal"', add
label define br10a_prevmuni_lbl 1502509 `"Chaves"', add
label define br10a_prevmuni_lbl 1502608 `"Colares"', add
label define br10a_prevmuni_lbl 1502707 `"Concei��o do Araguaia"', add
label define br10a_prevmuni_lbl 1502756 `"Conc�rdia do Par�"', add
label define br10a_prevmuni_lbl 1502764 `"Cumaru do Norte"', add
label define br10a_prevmuni_lbl 1502772 `"Curion�polis"', add
label define br10a_prevmuni_lbl 1502806 `"Curralinho"', add
label define br10a_prevmuni_lbl 1502855 `"Curu�"', add
label define br10a_prevmuni_lbl 1502905 `"Curu��"', add
label define br10a_prevmuni_lbl 1502939 `"Dom Eliseu"', add
label define br10a_prevmuni_lbl 1502954 `"Eldorado dos Caraj�s"', add
label define br10a_prevmuni_lbl 1503002 `"Faro"', add
label define br10a_prevmuni_lbl 1503044 `"Floresta do Araguaia"', add
label define br10a_prevmuni_lbl 1503077 `"Garraf�o do Norte"', add
label define br10a_prevmuni_lbl 1503093 `"Goian�sia do Par�"', add
label define br10a_prevmuni_lbl 1503101 `"Gurup�"', add
label define br10a_prevmuni_lbl 1503200 `"Igarap�-A�u"', add
label define br10a_prevmuni_lbl 1503309 `"Igarap�-Miri"', add
label define br10a_prevmuni_lbl 1503408 `"Inhangapi"', add
label define br10a_prevmuni_lbl 1503457 `"Ipixuna do Par�"', add
label define br10a_prevmuni_lbl 1503507 `"Irituia"', add
label define br10a_prevmuni_lbl 1503606 `"Itaituba"', add
label define br10a_prevmuni_lbl 1503705 `"Itupiranga"', add
label define br10a_prevmuni_lbl 1503754 `"Jacareacanga"', add
label define br10a_prevmuni_lbl 1503804 `"Jacund�"', add
label define br10a_prevmuni_lbl 1503903 `"Juruti"', add
label define br10a_prevmuni_lbl 1504000 `"Limoeiro do Ajuru"', add
label define br10a_prevmuni_lbl 1504059 `"M�e do Rio"', add
label define br10a_prevmuni_lbl 1504109 `"Magalh�es Barata"', add
label define br10a_prevmuni_lbl 1504208 `"Marab�"', add
label define br10a_prevmuni_lbl 1504307 `"Maracan�"', add
label define br10a_prevmuni_lbl 1504406 `"Marapanim"', add
label define br10a_prevmuni_lbl 1504422 `"Marituba"', add
label define br10a_prevmuni_lbl 1504455 `"Medicil�ndia"', add
label define br10a_prevmuni_lbl 1504505 `"Melga�o"', add
label define br10a_prevmuni_lbl 1504604 `"Mocajuba"', add
label define br10a_prevmuni_lbl 1504703 `"Moju"', add
label define br10a_prevmuni_lbl 1504802 `"Monte Alegre"', add
label define br10a_prevmuni_lbl 1504901 `"Muan�"', add
label define br10a_prevmuni_lbl 1504950 `"Nova Esperan�a do Piri�"', add
label define br10a_prevmuni_lbl 1504976 `"Nova Ipixuna"', add
label define br10a_prevmuni_lbl 1505007 `"Nova Timboteua"', add
label define br10a_prevmuni_lbl 1505031 `"Novo Progresso"', add
label define br10a_prevmuni_lbl 1505064 `"Novo Repartimento"', add
label define br10a_prevmuni_lbl 1505106 `"�bidos"', add
label define br10a_prevmuni_lbl 1505205 `"Oeiras do Par�"', add
label define br10a_prevmuni_lbl 1505304 `"Oriximin�"', add
label define br10a_prevmuni_lbl 1505403 `"Our�m"', add
label define br10a_prevmuni_lbl 1505437 `"Ouril�ndia do Norte"', add
label define br10a_prevmuni_lbl 1505486 `"Pacaj�"', add
label define br10a_prevmuni_lbl 1505494 `"Palestina do Par�"', add
label define br10a_prevmuni_lbl 1505502 `"Paragominas"', add
label define br10a_prevmuni_lbl 1505536 `"Parauapebas"', add
label define br10a_prevmuni_lbl 1505551 `"Pau D'Arco"', add
label define br10a_prevmuni_lbl 1505601 `"Peixe-Boi"', add
label define br10a_prevmuni_lbl 1505635 `"Pi�arra"', add
label define br10a_prevmuni_lbl 1505650 `"Placas"', add
label define br10a_prevmuni_lbl 1505700 `"Ponta de Pedras"', add
label define br10a_prevmuni_lbl 1505809 `"Portel"', add
label define br10a_prevmuni_lbl 1505908 `"Porto de Moz"', add
label define br10a_prevmuni_lbl 1506005 `"Prainha"', add
label define br10a_prevmuni_lbl 1506104 `"Primavera"', add
label define br10a_prevmuni_lbl 1506112 `"Quatipuru"', add
label define br10a_prevmuni_lbl 1506138 `"Reden��o"', add
label define br10a_prevmuni_lbl 1506161 `"Rio Maria"', add
label define br10a_prevmuni_lbl 1506187 `"Rondon do Par�"', add
label define br10a_prevmuni_lbl 1506195 `"Rur�polis"', add
label define br10a_prevmuni_lbl 1506203 `"Salin�polis"', add
label define br10a_prevmuni_lbl 1506302 `"Salvaterra"', add
label define br10a_prevmuni_lbl 1506351 `"Santa B�rbara do Par�"', add
label define br10a_prevmuni_lbl 1506401 `"Santa Cruz do Arari"', add
label define br10a_prevmuni_lbl 1506500 `"Santa Isabel do Par�"', add
label define br10a_prevmuni_lbl 1506559 `"Santa Luzia do Par�"', add
label define br10a_prevmuni_lbl 1506583 `"Santa Maria das Barreiras"', add
label define br10a_prevmuni_lbl 1506609 `"Santa Maria do Par�"', add
label define br10a_prevmuni_lbl 1506708 `"Santana do Araguaia"', add
label define br10a_prevmuni_lbl 1506807 `"Santar�m"', add
label define br10a_prevmuni_lbl 1506906 `"Santar�m Novo"', add
label define br10a_prevmuni_lbl 1507003 `"Santo Ant�nio do Tau�"', add
label define br10a_prevmuni_lbl 1507102 `"S�o Caetano de Odivelas"', add
label define br10a_prevmuni_lbl 1507151 `"S�o Domingos do Araguaia"', add
label define br10a_prevmuni_lbl 1507201 `"S�o Domingos do Capim"', add
label define br10a_prevmuni_lbl 1507300 `"S�o F�lix do Xingu"', add
label define br10a_prevmuni_lbl 1507409 `"S�o Francisco do Par�"', add
label define br10a_prevmuni_lbl 1507458 `"S�o Geraldo do Araguaia"', add
label define br10a_prevmuni_lbl 1507466 `"S�o Jo�o da Ponta"', add
label define br10a_prevmuni_lbl 1507474 `"S�o Jo�o de Pirabas"', add
label define br10a_prevmuni_lbl 1507508 `"S�o Jo�o do Araguaia"', add
label define br10a_prevmuni_lbl 1507607 `"S�o Miguel do Guam�"', add
label define br10a_prevmuni_lbl 1507706 `"S�o Sebasti�o da Boa Vista"', add
label define br10a_prevmuni_lbl 1507755 `"Sapucaia"', add
label define br10a_prevmuni_lbl 1507805 `"Senador Jos� Porf�rio"', add
label define br10a_prevmuni_lbl 1507904 `"Soure"', add
label define br10a_prevmuni_lbl 1507953 `"Tail�ndia"', add
label define br10a_prevmuni_lbl 1507961 `"Terra Alta"', add
label define br10a_prevmuni_lbl 1507979 `"Terra Santa"', add
label define br10a_prevmuni_lbl 1508001 `"Tom�-A�u"', add
label define br10a_prevmuni_lbl 1508035 `"Tracuateua"', add
label define br10a_prevmuni_lbl 1508050 `"Trair�o"', add
label define br10a_prevmuni_lbl 1508084 `"Tucum�"', add
label define br10a_prevmuni_lbl 1508100 `"Tucuru�"', add
label define br10a_prevmuni_lbl 1508126 `"Ulian�polis"', add
label define br10a_prevmuni_lbl 1508159 `"Uruar�"', add
label define br10a_prevmuni_lbl 1508209 `"Vigia"', add
label define br10a_prevmuni_lbl 1508308 `"Viseu"', add
label define br10a_prevmuni_lbl 1508357 `"Vit�ria do Xingu"', add
label define br10a_prevmuni_lbl 1508407 `"Xinguara"', add
label define br10a_prevmuni_lbl 1599999 `"Par�, municipality unknown"', add
label define br10a_prevmuni_lbl 1600055 `"Serra do Navio"', add
label define br10a_prevmuni_lbl 1600105 `"Amap�"', add
label define br10a_prevmuni_lbl 1600154 `"Pedra Branca do Amapari"', add
label define br10a_prevmuni_lbl 1600204 `"Cal�oene"', add
label define br10a_prevmuni_lbl 1600212 `"Cutias"', add
label define br10a_prevmuni_lbl 1600238 `"Ferreira Gomes"', add
label define br10a_prevmuni_lbl 1600253 `"Itaubal"', add
label define br10a_prevmuni_lbl 1600279 `"Laranjal do Jari"', add
label define br10a_prevmuni_lbl 1600303 `"Macap�"', add
label define br10a_prevmuni_lbl 1600402 `"Mazag�o"', add
label define br10a_prevmuni_lbl 1600501 `"Oiapoque"', add
label define br10a_prevmuni_lbl 1600535 `"Porto Grande"', add
label define br10a_prevmuni_lbl 1600550 `"Pracu�ba"', add
label define br10a_prevmuni_lbl 1600600 `"Santana"', add
label define br10a_prevmuni_lbl 1600709 `"Tartarugalzinho"', add
label define br10a_prevmuni_lbl 1600808 `"Vit�ria do Jari"', add
label define br10a_prevmuni_lbl 1699999 `"Amap�, municipality unknown"', add
label define br10a_prevmuni_lbl 1700251 `"Abreul�ndia"', add
label define br10a_prevmuni_lbl 1700301 `"Aguiarn�polis"', add
label define br10a_prevmuni_lbl 1700350 `"Alian�a do Tocantins"', add
label define br10a_prevmuni_lbl 1700400 `"Almas"', add
label define br10a_prevmuni_lbl 1700707 `"Alvorada"', add
label define br10a_prevmuni_lbl 1701002 `"Anan�s"', add
label define br10a_prevmuni_lbl 1701051 `"Angico"', add
label define br10a_prevmuni_lbl 1701101 `"Aparecida do Rio Negro"', add
label define br10a_prevmuni_lbl 1701309 `"Aragominas"', add
label define br10a_prevmuni_lbl 1701903 `"Araguacema"', add
label define br10a_prevmuni_lbl 1702000 `"Aragua�u"', add
label define br10a_prevmuni_lbl 1702109 `"Aragua�na"', add
label define br10a_prevmuni_lbl 1702158 `"Araguan�"', add
label define br10a_prevmuni_lbl 1702208 `"Araguatins"', add
label define br10a_prevmuni_lbl 1702307 `"Arapoema"', add
label define br10a_prevmuni_lbl 1702406 `"Arraias"', add
label define br10a_prevmuni_lbl 1702554 `"Augustin�polis"', add
label define br10a_prevmuni_lbl 1702703 `"Aurora do Tocantins"', add
label define br10a_prevmuni_lbl 1702901 `"Axix� do Tocantins"', add
label define br10a_prevmuni_lbl 1703008 `"Baba�ul�ndia"', add
label define br10a_prevmuni_lbl 1703057 `"Bandeirantes do Tocantins"', add
label define br10a_prevmuni_lbl 1703073 `"Barra do Ouro"', add
label define br10a_prevmuni_lbl 1703107 `"Barrol�ndia"', add
label define br10a_prevmuni_lbl 1703206 `"Bernardo Say�o"', add
label define br10a_prevmuni_lbl 1703305 `"Bom Jesus do Tocantins"', add
label define br10a_prevmuni_lbl 1703602 `"Brasil�ndia do Tocantins"', add
label define br10a_prevmuni_lbl 1703701 `"Brejinho de Nazar�"', add
label define br10a_prevmuni_lbl 1703800 `"Buriti do Tocantins"', add
label define br10a_prevmuni_lbl 1703826 `"Cachoeirinha"', add
label define br10a_prevmuni_lbl 1703842 `"Campos Lindos"', add
label define br10a_prevmuni_lbl 1703867 `"Cariri do Tocantins"', add
label define br10a_prevmuni_lbl 1703883 `"Carmol�ndia"', add
label define br10a_prevmuni_lbl 1703891 `"Carrasco Bonito"', add
label define br10a_prevmuni_lbl 1703909 `"Caseara"', add
label define br10a_prevmuni_lbl 1704105 `"Centen�rio"', add
label define br10a_prevmuni_lbl 1704600 `"Chapada de Areia"', add
label define br10a_prevmuni_lbl 1705102 `"Chapada da Natividade"', add
label define br10a_prevmuni_lbl 1705508 `"Colinas do Tocantins"', add
label define br10a_prevmuni_lbl 1705557 `"Combinado"', add
label define br10a_prevmuni_lbl 1705607 `"Concei��o do Tocantins"', add
label define br10a_prevmuni_lbl 1706001 `"Couto Magalh�es"', add
label define br10a_prevmuni_lbl 1706100 `"Cristal�ndia"', add
label define br10a_prevmuni_lbl 1706258 `"Crix�s do Tocantins"', add
label define br10a_prevmuni_lbl 1706506 `"Darcin�polis"', add
label define br10a_prevmuni_lbl 1707009 `"Dian�polis"', add
label define br10a_prevmuni_lbl 1707108 `"Divin�polis do Tocantins"', add
label define br10a_prevmuni_lbl 1707207 `"Dois Irm�os do Tocantins"', add
label define br10a_prevmuni_lbl 1707306 `"Duer�"', add
label define br10a_prevmuni_lbl 1707405 `"Esperantina"', add
label define br10a_prevmuni_lbl 1707553 `"F�tima"', add
label define br10a_prevmuni_lbl 1707652 `"Figueir�polis"', add
label define br10a_prevmuni_lbl 1707702 `"Filad�lfia"', add
label define br10a_prevmuni_lbl 1708205 `"Formoso do Araguaia"', add
label define br10a_prevmuni_lbl 1708254 `"Fortaleza do Taboc�o"', add
label define br10a_prevmuni_lbl 1708304 `"Goianorte"', add
label define br10a_prevmuni_lbl 1709005 `"Goiatins"', add
label define br10a_prevmuni_lbl 1709302 `"Guara�"', add
label define br10a_prevmuni_lbl 1709500 `"Gurupi"', add
label define br10a_prevmuni_lbl 1709807 `"Ipueiras"', add
label define br10a_prevmuni_lbl 1710508 `"Itacaj�"', add
label define br10a_prevmuni_lbl 1710706 `"Itaguatins"', add
label define br10a_prevmuni_lbl 1710904 `"Itapiratins"', add
label define br10a_prevmuni_lbl 1711100 `"Itapor� do Tocantins"', add
label define br10a_prevmuni_lbl 1711506 `"Ja� do Tocantins"', add
label define br10a_prevmuni_lbl 1711803 `"Juarina"', add
label define br10a_prevmuni_lbl 1711902 `"Lagoa da Confus�o"', add
label define br10a_prevmuni_lbl 1711951 `"Lagoa do Tocantins"', add
label define br10a_prevmuni_lbl 1712009 `"Lajeado"', add
label define br10a_prevmuni_lbl 1712157 `"Lavandeira"', add
label define br10a_prevmuni_lbl 1712405 `"Lizarda"', add
label define br10a_prevmuni_lbl 1712454 `"Luzin�polis"', add
label define br10a_prevmuni_lbl 1712504 `"Marian�polis do Tocantins"', add
label define br10a_prevmuni_lbl 1712702 `"Mateiros"', add
label define br10a_prevmuni_lbl 1712801 `"Mauril�ndia do Tocantins"', add
label define br10a_prevmuni_lbl 1713205 `"Miracema do Tocantins"', add
label define br10a_prevmuni_lbl 1713304 `"Miranorte"', add
label define br10a_prevmuni_lbl 1713601 `"Monte do Carmo"', add
label define br10a_prevmuni_lbl 1713700 `"Monte Santo do Tocantins"', add
label define br10a_prevmuni_lbl 1713809 `"Palmeiras do Tocantins"', add
label define br10a_prevmuni_lbl 1713957 `"Muricil�ndia"', add
label define br10a_prevmuni_lbl 1714203 `"Natividade"', add
label define br10a_prevmuni_lbl 1714302 `"Nazar�"', add
label define br10a_prevmuni_lbl 1714880 `"Nova Olinda"', add
label define br10a_prevmuni_lbl 1715002 `"Nova Rosal�ndia"', add
label define br10a_prevmuni_lbl 1715101 `"Novo Acordo"', add
label define br10a_prevmuni_lbl 1715150 `"Novo Alegre"', add
label define br10a_prevmuni_lbl 1715259 `"Novo Jardim"', add
label define br10a_prevmuni_lbl 1715507 `"Oliveira de F�tima"', add
label define br10a_prevmuni_lbl 1715705 `"Palmeirante"', add
label define br10a_prevmuni_lbl 1715754 `"Palmeir�polis"', add
label define br10a_prevmuni_lbl 1716109 `"Para�so do Tocantins"', add
label define br10a_prevmuni_lbl 1716208 `"Paran�"', add
label define br10a_prevmuni_lbl 1716307 `"Pau D'Arco"', add
label define br10a_prevmuni_lbl 1716505 `"Pedro Afonso"', add
label define br10a_prevmuni_lbl 1716604 `"Peixe"', add
label define br10a_prevmuni_lbl 1716653 `"Pequizeiro"', add
label define br10a_prevmuni_lbl 1716703 `"Colm�ia"', add
label define br10a_prevmuni_lbl 1717008 `"Pindorama do Tocantins"', add
label define br10a_prevmuni_lbl 1717206 `"Piraqu�"', add
label define br10a_prevmuni_lbl 1717503 `"Pium"', add
label define br10a_prevmuni_lbl 1717800 `"Ponte Alta do Bom Jesus"', add
label define br10a_prevmuni_lbl 1717909 `"Ponte Alta do Tocantins"', add
label define br10a_prevmuni_lbl 1718006 `"Porto Alegre do Tocantins"', add
label define br10a_prevmuni_lbl 1718204 `"Porto Nacional"', add
label define br10a_prevmuni_lbl 1718303 `"Praia Norte"', add
label define br10a_prevmuni_lbl 1718402 `"Presidente Kennedy"', add
label define br10a_prevmuni_lbl 1718451 `"Pugmil"', add
label define br10a_prevmuni_lbl 1718501 `"Recursol�ndia"', add
label define br10a_prevmuni_lbl 1718550 `"Riachinho"', add
label define br10a_prevmuni_lbl 1718659 `"Rio da Concei��o"', add
label define br10a_prevmuni_lbl 1718709 `"Rio dos Bois"', add
label define br10a_prevmuni_lbl 1718758 `"Rio Sono"', add
label define br10a_prevmuni_lbl 1718808 `"Sampaio"', add
label define br10a_prevmuni_lbl 1718840 `"Sandol�ndia"', add
label define br10a_prevmuni_lbl 1718865 `"Santa F� do Araguaia"', add
label define br10a_prevmuni_lbl 1718881 `"Santa Maria do Tocantins"', add
label define br10a_prevmuni_lbl 1718899 `"Santa Rita do Tocantins"', add
label define br10a_prevmuni_lbl 1718907 `"Santa Rosa do Tocantins"', add
label define br10a_prevmuni_lbl 1719004 `"Santa Tereza do Tocantins"', add
label define br10a_prevmuni_lbl 1720002 `"Santa Terezinha do Tocantins"', add
label define br10a_prevmuni_lbl 1720101 `"S�o Bento do Tocantins"', add
label define br10a_prevmuni_lbl 1720150 `"S�o F�lix do Tocantins"', add
label define br10a_prevmuni_lbl 1720200 `"S�o Miguel do Tocantins"', add
label define br10a_prevmuni_lbl 1720259 `"S�o Salvador do Tocantins"', add
label define br10a_prevmuni_lbl 1720309 `"S�o Sebasti�o do Tocantins"', add
label define br10a_prevmuni_lbl 1720499 `"S�o Val�rio"', add
label define br10a_prevmuni_lbl 1720655 `"Silvan�polis"', add
label define br10a_prevmuni_lbl 1720804 `"S�tio Novo do Tocantins"', add
label define br10a_prevmuni_lbl 1720853 `"Sucupira"', add
label define br10a_prevmuni_lbl 1720903 `"Taguatinga"', add
label define br10a_prevmuni_lbl 1720937 `"Taipas do Tocantins"', add
label define br10a_prevmuni_lbl 1720978 `"Talism�"', add
label define br10a_prevmuni_lbl 1721000 `"Palmas"', add
label define br10a_prevmuni_lbl 1721109 `"Tocant�nia"', add
label define br10a_prevmuni_lbl 1721208 `"Tocantin�polis"', add
label define br10a_prevmuni_lbl 1721257 `"Tupirama"', add
label define br10a_prevmuni_lbl 1721307 `"Tupiratins"', add
label define br10a_prevmuni_lbl 1722081 `"Wanderl�ndia"', add
label define br10a_prevmuni_lbl 1722107 `"Xambio�"', add
label define br10a_prevmuni_lbl 1799999 `"Tocantins, municipality unknown"', add
label define br10a_prevmuni_lbl 2100055 `"A�ail�ndia"', add
label define br10a_prevmuni_lbl 2100105 `"Afonso Cunha"', add
label define br10a_prevmuni_lbl 2100154 `"�gua Doce do Maranh�o"', add
label define br10a_prevmuni_lbl 2100204 `"Alc�ntara"', add
label define br10a_prevmuni_lbl 2100303 `"Aldeias Altas"', add
label define br10a_prevmuni_lbl 2100402 `"Altamira do Maranh�o"', add
label define br10a_prevmuni_lbl 2100436 `"Alto Alegre do Maranh�o"', add
label define br10a_prevmuni_lbl 2100477 `"Alto Alegre do Pindar�"', add
label define br10a_prevmuni_lbl 2100501 `"Alto Parna�ba"', add
label define br10a_prevmuni_lbl 2100550 `"Amap� do Maranh�o"', add
label define br10a_prevmuni_lbl 2100600 `"Amarante do Maranh�o"', add
label define br10a_prevmuni_lbl 2100709 `"Anajatuba"', add
label define br10a_prevmuni_lbl 2100808 `"Anapurus"', add
label define br10a_prevmuni_lbl 2100832 `"Apicum-A�u"', add
label define br10a_prevmuni_lbl 2100873 `"Araguan�"', add
label define br10a_prevmuni_lbl 2100907 `"Araioses"', add
label define br10a_prevmuni_lbl 2100956 `"Arame"', add
label define br10a_prevmuni_lbl 2101004 `"Arari"', add
label define br10a_prevmuni_lbl 2101103 `"Axix�"', add
label define br10a_prevmuni_lbl 2101202 `"Bacabal"', add
label define br10a_prevmuni_lbl 2101251 `"Bacabeira"', add
label define br10a_prevmuni_lbl 2101301 `"Bacuri"', add
label define br10a_prevmuni_lbl 2101350 `"Bacurituba"', add
label define br10a_prevmuni_lbl 2101400 `"Balsas"', add
label define br10a_prevmuni_lbl 2101509 `"Bar�o de Graja�"', add
label define br10a_prevmuni_lbl 2101608 `"Barra do Corda"', add
label define br10a_prevmuni_lbl 2101707 `"Barreirinhas"', add
label define br10a_prevmuni_lbl 2101731 `"Bel�gua"', add
label define br10a_prevmuni_lbl 2101772 `"Bela Vista do Maranh�o"', add
label define br10a_prevmuni_lbl 2101806 `"Benedito Leite"', add
label define br10a_prevmuni_lbl 2101905 `"Bequim�o"', add
label define br10a_prevmuni_lbl 2101939 `"Bernardo do Mearim"', add
label define br10a_prevmuni_lbl 2101970 `"Boa Vista do Gurupi"', add
label define br10a_prevmuni_lbl 2102002 `"Bom Jardim"', add
label define br10a_prevmuni_lbl 2102036 `"Bom Jesus das Selvas"', add
label define br10a_prevmuni_lbl 2102077 `"Bom Lugar"', add
label define br10a_prevmuni_lbl 2102101 `"Brejo"', add
label define br10a_prevmuni_lbl 2102150 `"Brejo de Areia"', add
label define br10a_prevmuni_lbl 2102200 `"Buriti"', add
label define br10a_prevmuni_lbl 2102309 `"Buriti Bravo"', add
label define br10a_prevmuni_lbl 2102325 `"Buriticupu"', add
label define br10a_prevmuni_lbl 2102358 `"Buritirana"', add
label define br10a_prevmuni_lbl 2102374 `"Cachoeira Grande"', add
label define br10a_prevmuni_lbl 2102408 `"Cajapi�"', add
label define br10a_prevmuni_lbl 2102507 `"Cajari"', add
label define br10a_prevmuni_lbl 2102556 `"Campestre do Maranh�o"', add
label define br10a_prevmuni_lbl 2102606 `"C�ndido Mendes"', add
label define br10a_prevmuni_lbl 2102705 `"Cantanhede"', add
label define br10a_prevmuni_lbl 2102754 `"Capinzal do Norte"', add
label define br10a_prevmuni_lbl 2102804 `"Carolina"', add
label define br10a_prevmuni_lbl 2102903 `"Carutapera"', add
label define br10a_prevmuni_lbl 2103000 `"Caxias"', add
label define br10a_prevmuni_lbl 2103109 `"Cedral"', add
label define br10a_prevmuni_lbl 2103125 `"Central do Maranh�o"', add
label define br10a_prevmuni_lbl 2103158 `"Centro do Guilherme"', add
label define br10a_prevmuni_lbl 2103174 `"Centro Novo do Maranh�o"', add
label define br10a_prevmuni_lbl 2103208 `"Chapadinha"', add
label define br10a_prevmuni_lbl 2103257 `"Cidel�ndia"', add
label define br10a_prevmuni_lbl 2103307 `"Cod�"', add
label define br10a_prevmuni_lbl 2103406 `"Coelho Neto"', add
label define br10a_prevmuni_lbl 2103505 `"Colinas"', add
label define br10a_prevmuni_lbl 2103554 `"Concei��o do Lago-A�u"', add
label define br10a_prevmuni_lbl 2103604 `"Coroat�"', add
label define br10a_prevmuni_lbl 2103703 `"Cururupu"', add
label define br10a_prevmuni_lbl 2103752 `"Davin�polis"', add
label define br10a_prevmuni_lbl 2103802 `"Dom Pedro"', add
label define br10a_prevmuni_lbl 2103901 `"Duque Bacelar"', add
label define br10a_prevmuni_lbl 2104008 `"Esperantin�polis"', add
label define br10a_prevmuni_lbl 2104057 `"Estreito"', add
label define br10a_prevmuni_lbl 2104073 `"Feira Nova do Maranh�o"', add
label define br10a_prevmuni_lbl 2104081 `"Fernando Falc�o"', add
label define br10a_prevmuni_lbl 2104099 `"Formosa da Serra Negra"', add
label define br10a_prevmuni_lbl 2104107 `"Fortaleza dos Nogueiras"', add
label define br10a_prevmuni_lbl 2104206 `"Fortuna"', add
label define br10a_prevmuni_lbl 2104305 `"Godofredo Viana"', add
label define br10a_prevmuni_lbl 2104404 `"Gon�alves Dias"', add
label define br10a_prevmuni_lbl 2104503 `"Governador Archer"', add
label define br10a_prevmuni_lbl 2104552 `"Governador Edison Lob�o"', add
label define br10a_prevmuni_lbl 2104602 `"Governador Eug�nio Barros"', add
label define br10a_prevmuni_lbl 2104628 `"Governador Luiz Rocha"', add
label define br10a_prevmuni_lbl 2104651 `"Governador Newton Bello"', add
label define br10a_prevmuni_lbl 2104677 `"Governador Nunes Freire"', add
label define br10a_prevmuni_lbl 2104701 `"Gra�a Aranha"', add
label define br10a_prevmuni_lbl 2104800 `"Graja�"', add
label define br10a_prevmuni_lbl 2104909 `"Guimar�es"', add
label define br10a_prevmuni_lbl 2105005 `"Humberto de Campos"', add
label define br10a_prevmuni_lbl 2105104 `"Icatu"', add
label define br10a_prevmuni_lbl 2105153 `"Igarap� do Meio"', add
label define br10a_prevmuni_lbl 2105203 `"Igarap� Grande"', add
label define br10a_prevmuni_lbl 2105302 `"Imperatriz"', add
label define br10a_prevmuni_lbl 2105351 `"Itaipava do Graja�"', add
label define br10a_prevmuni_lbl 2105401 `"Itapecuru Mirim"', add
label define br10a_prevmuni_lbl 2105427 `"Itinga do Maranh�o"', add
label define br10a_prevmuni_lbl 2105450 `"Jatob�"', add
label define br10a_prevmuni_lbl 2105476 `"Jenipapo dos Vieiras"', add
label define br10a_prevmuni_lbl 2105500 `"Jo�o Lisboa"', add
label define br10a_prevmuni_lbl 2105609 `"Josel�ndia"', add
label define br10a_prevmuni_lbl 2105658 `"Junco do Maranh�o"', add
label define br10a_prevmuni_lbl 2105708 `"Lago da Pedra"', add
label define br10a_prevmuni_lbl 2105807 `"Lago do Junco"', add
label define br10a_prevmuni_lbl 2105906 `"Lago Verde"', add
label define br10a_prevmuni_lbl 2105922 `"Lagoa do Mato"', add
label define br10a_prevmuni_lbl 2105948 `"Lago dos Rodrigues"', add
label define br10a_prevmuni_lbl 2105963 `"Lagoa Grande do Maranh�o"', add
label define br10a_prevmuni_lbl 2105989 `"Lajeado Novo"', add
label define br10a_prevmuni_lbl 2106003 `"Lima Campos"', add
label define br10a_prevmuni_lbl 2106102 `"Loreto"', add
label define br10a_prevmuni_lbl 2106201 `"Lu�s Domingues"', add
label define br10a_prevmuni_lbl 2106300 `"Magalh�es de Almeida"', add
label define br10a_prevmuni_lbl 2106326 `"Maraca�um�"', add
label define br10a_prevmuni_lbl 2106359 `"Maraj� do Sena"', add
label define br10a_prevmuni_lbl 2106375 `"Maranh�ozinho"', add
label define br10a_prevmuni_lbl 2106409 `"Mata Roma"', add
label define br10a_prevmuni_lbl 2106508 `"Matinha"', add
label define br10a_prevmuni_lbl 2106607 `"Mat�es"', add
label define br10a_prevmuni_lbl 2106631 `"Mat�es do Norte"', add
label define br10a_prevmuni_lbl 2106672 `"Milagres do Maranh�o"', add
label define br10a_prevmuni_lbl 2106706 `"Mirador"', add
label define br10a_prevmuni_lbl 2106755 `"Miranda do Norte"', add
label define br10a_prevmuni_lbl 2106805 `"Mirinzal"', add
label define br10a_prevmuni_lbl 2106904 `"Mon��o"', add
label define br10a_prevmuni_lbl 2107001 `"Montes Altos"', add
label define br10a_prevmuni_lbl 2107100 `"Morros"', add
label define br10a_prevmuni_lbl 2107209 `"Nina Rodrigues"', add
label define br10a_prevmuni_lbl 2107258 `"Nova Colinas"', add
label define br10a_prevmuni_lbl 2107308 `"Nova Iorque"', add
label define br10a_prevmuni_lbl 2107357 `"Nova Olinda do Maranh�o"', add
label define br10a_prevmuni_lbl 2107407 `"Olho d'�gua das Cunh�s"', add
label define br10a_prevmuni_lbl 2107456 `"Olinda Nova do Maranh�o"', add
label define br10a_prevmuni_lbl 2107506 `"Pa�o do Lumiar"', add
label define br10a_prevmuni_lbl 2107605 `"Palmeir�ndia"', add
label define br10a_prevmuni_lbl 2107704 `"Paraibano"', add
label define br10a_prevmuni_lbl 2107803 `"Parnarama"', add
label define br10a_prevmuni_lbl 2107902 `"Passagem Franca"', add
label define br10a_prevmuni_lbl 2108009 `"Pastos Bons"', add
label define br10a_prevmuni_lbl 2108058 `"Paulino Neves"', add
label define br10a_prevmuni_lbl 2108108 `"Paulo Ramos"', add
label define br10a_prevmuni_lbl 2108207 `"Pedreiras"', add
label define br10a_prevmuni_lbl 2108256 `"Pedro do Ros�rio"', add
label define br10a_prevmuni_lbl 2108306 `"Penalva"', add
label define br10a_prevmuni_lbl 2108405 `"Peri Mirim"', add
label define br10a_prevmuni_lbl 2108454 `"Peritor�"', add
label define br10a_prevmuni_lbl 2108504 `"Pindar�-Mirim"', add
label define br10a_prevmuni_lbl 2108603 `"Pinheiro"', add
label define br10a_prevmuni_lbl 2108702 `"Pio XII"', add
label define br10a_prevmuni_lbl 2108801 `"Pirapemas"', add
label define br10a_prevmuni_lbl 2108900 `"Po��o de Pedras"', add
label define br10a_prevmuni_lbl 2109007 `"Porto Franco"', add
label define br10a_prevmuni_lbl 2109056 `"Porto Rico do Maranh�o"', add
label define br10a_prevmuni_lbl 2109106 `"Presidente Dutra"', add
label define br10a_prevmuni_lbl 2109205 `"Presidente Juscelino"', add
label define br10a_prevmuni_lbl 2109239 `"Presidente M�dici"', add
label define br10a_prevmuni_lbl 2109270 `"Presidente Sarney"', add
label define br10a_prevmuni_lbl 2109304 `"Presidente Vargas"', add
label define br10a_prevmuni_lbl 2109403 `"Primeira Cruz"', add
label define br10a_prevmuni_lbl 2109452 `"Raposa"', add
label define br10a_prevmuni_lbl 2109502 `"Riach�o"', add
label define br10a_prevmuni_lbl 2109551 `"Ribamar Fiquene"', add
label define br10a_prevmuni_lbl 2109601 `"Ros�rio"', add
label define br10a_prevmuni_lbl 2109700 `"Samba�ba"', add
label define br10a_prevmuni_lbl 2109759 `"Santa Filomena do Maranh�o"', add
label define br10a_prevmuni_lbl 2109809 `"Santa Helena"', add
label define br10a_prevmuni_lbl 2109908 `"Santa In�s"', add
label define br10a_prevmuni_lbl 2110005 `"Santa Luzia"', add
label define br10a_prevmuni_lbl 2110039 `"Santa Luzia do Paru�"', add
label define br10a_prevmuni_lbl 2110104 `"Santa Quit�ria do Maranh�o"', add
label define br10a_prevmuni_lbl 2110203 `"Santa Rita"', add
label define br10a_prevmuni_lbl 2110237 `"Santana do Maranh�o"', add
label define br10a_prevmuni_lbl 2110278 `"Santo Amaro do Maranh�o"', add
label define br10a_prevmuni_lbl 2110302 `"Santo Ant�nio dos Lopes"', add
label define br10a_prevmuni_lbl 2110401 `"S�o Benedito do Rio Preto"', add
label define br10a_prevmuni_lbl 2110500 `"S�o Bento"', add
label define br10a_prevmuni_lbl 2110609 `"S�o Bernardo"', add
label define br10a_prevmuni_lbl 2110658 `"S�o Domingos do Azeit�o"', add
label define br10a_prevmuni_lbl 2110708 `"S�o Domingos do Maranh�o"', add
label define br10a_prevmuni_lbl 2110807 `"S�o F�lix de Balsas"', add
label define br10a_prevmuni_lbl 2110856 `"S�o Francisco do Brej�o"', add
label define br10a_prevmuni_lbl 2110906 `"S�o Francisco do Maranh�o"', add
label define br10a_prevmuni_lbl 2111003 `"S�o Jo�o Batista"', add
label define br10a_prevmuni_lbl 2111029 `"S�o Jo�o do Car�"', add
label define br10a_prevmuni_lbl 2111052 `"S�o Jo�o do Para�so"', add
label define br10a_prevmuni_lbl 2111078 `"S�o Jo�o do Soter"', add
label define br10a_prevmuni_lbl 2111102 `"S�o Jo�o dos Patos"', add
label define br10a_prevmuni_lbl 2111201 `"S�o Jos� de Ribamar"', add
label define br10a_prevmuni_lbl 2111250 `"S�o Jos� dos Bas�lios"', add
label define br10a_prevmuni_lbl 2111300 `"S�o Lu�s"', add
label define br10a_prevmuni_lbl 2111409 `"S�o Lu�s Gonzaga do Maranh�o"', add
label define br10a_prevmuni_lbl 2111508 `"S�o Mateus do Maranh�o"', add
label define br10a_prevmuni_lbl 2111532 `"S�o Pedro da �gua Branca"', add
label define br10a_prevmuni_lbl 2111573 `"S�o Pedro dos Crentes"', add
label define br10a_prevmuni_lbl 2111607 `"S�o Raimundo das Mangabeiras"', add
label define br10a_prevmuni_lbl 2111631 `"S�o Raimundo do Doca Bezerra"', add
label define br10a_prevmuni_lbl 2111672 `"S�o Roberto"', add
label define br10a_prevmuni_lbl 2111706 `"S�o Vicente Ferrer"', add
label define br10a_prevmuni_lbl 2111722 `"Satubinha"', add
label define br10a_prevmuni_lbl 2111748 `"Senador Alexandre Costa"', add
label define br10a_prevmuni_lbl 2111763 `"Senador La Rocque"', add
label define br10a_prevmuni_lbl 2111789 `"Serrano do Maranh�o"', add
label define br10a_prevmuni_lbl 2111805 `"S�tio Novo"', add
label define br10a_prevmuni_lbl 2111904 `"Sucupira do Norte"', add
label define br10a_prevmuni_lbl 2111953 `"Sucupira do Riach�o"', add
label define br10a_prevmuni_lbl 2112001 `"Tasso Fragoso"', add
label define br10a_prevmuni_lbl 2112100 `"Timbiras"', add
label define br10a_prevmuni_lbl 2112209 `"Timon"', add
label define br10a_prevmuni_lbl 2112233 `"Trizidela do Vale"', add
label define br10a_prevmuni_lbl 2112274 `"Tufil�ndia"', add
label define br10a_prevmuni_lbl 2112308 `"Tuntum"', add
label define br10a_prevmuni_lbl 2112407 `"Turia�u"', add
label define br10a_prevmuni_lbl 2112456 `"Turil�ndia"', add
label define br10a_prevmuni_lbl 2112506 `"Tut�ia"', add
label define br10a_prevmuni_lbl 2112605 `"Urbano Santos"', add
label define br10a_prevmuni_lbl 2112704 `"Vargem Grande"', add
label define br10a_prevmuni_lbl 2112803 `"Viana"', add
label define br10a_prevmuni_lbl 2112852 `"Vila Nova dos Mart�rios"', add
label define br10a_prevmuni_lbl 2112902 `"Vit�ria do Mearim"', add
label define br10a_prevmuni_lbl 2113009 `"Vitorino Freire"', add
label define br10a_prevmuni_lbl 2114007 `"Z� Doca"', add
label define br10a_prevmuni_lbl 2199999 `"Maranh�o, municipality unknown"', add
label define br10a_prevmuni_lbl 2200053 `"Acau�"', add
label define br10a_prevmuni_lbl 2200103 `"Agricol�ndia"', add
label define br10a_prevmuni_lbl 2200202 `"�gua Branca"', add
label define br10a_prevmuni_lbl 2200251 `"Alagoinha do Piau�"', add
label define br10a_prevmuni_lbl 2200277 `"Alegrete do Piau�"', add
label define br10a_prevmuni_lbl 2200301 `"Alto Long�"', add
label define br10a_prevmuni_lbl 2200400 `"Altos"', add
label define br10a_prevmuni_lbl 2200459 `"Alvorada do Gurgu�ia"', add
label define br10a_prevmuni_lbl 2200509 `"Amarante"', add
label define br10a_prevmuni_lbl 2200608 `"Angical do Piau�"', add
label define br10a_prevmuni_lbl 2200707 `"An�sio de Abreu"', add
label define br10a_prevmuni_lbl 2200806 `"Ant�nio Almeida"', add
label define br10a_prevmuni_lbl 2200905 `"Aroazes"', add
label define br10a_prevmuni_lbl 2200954 `"Aroeiras do Itaim"', add
label define br10a_prevmuni_lbl 2201002 `"Arraial"', add
label define br10a_prevmuni_lbl 2201051 `"Assun��o do Piau�"', add
label define br10a_prevmuni_lbl 2201101 `"Avelino Lopes"', add
label define br10a_prevmuni_lbl 2201150 `"Baixa Grande do Ribeiro"', add
label define br10a_prevmuni_lbl 2201176 `"Barra D'Alc�ntara"', add
label define br10a_prevmuni_lbl 2201200 `"Barras"', add
label define br10a_prevmuni_lbl 2201309 `"Barreiras do Piau�"', add
label define br10a_prevmuni_lbl 2201408 `"Barro Duro"', add
label define br10a_prevmuni_lbl 2201507 `"Batalha"', add
label define br10a_prevmuni_lbl 2201556 `"Bela Vista do Piau�"', add
label define br10a_prevmuni_lbl 2201572 `"Bel�m do Piau�"', add
label define br10a_prevmuni_lbl 2201606 `"Beneditinos"', add
label define br10a_prevmuni_lbl 2201705 `"Bertol�nia"', add
label define br10a_prevmuni_lbl 2201739 `"Bet�nia do Piau�"', add
label define br10a_prevmuni_lbl 2201770 `"Boa Hora"', add
label define br10a_prevmuni_lbl 2201804 `"Bocaina"', add
label define br10a_prevmuni_lbl 2201903 `"Bom Jesus"', add
label define br10a_prevmuni_lbl 2201919 `"Bom Princ�pio do Piau�"', add
label define br10a_prevmuni_lbl 2201929 `"Bonfim do Piau�"', add
label define br10a_prevmuni_lbl 2201945 `"Boqueir�o do Piau�"', add
label define br10a_prevmuni_lbl 2201960 `"Brasileira"', add
label define br10a_prevmuni_lbl 2201988 `"Brejo do Piau�"', add
label define br10a_prevmuni_lbl 2202000 `"Buriti dos Lopes"', add
label define br10a_prevmuni_lbl 2202026 `"Buriti dos Montes"', add
label define br10a_prevmuni_lbl 2202059 `"Cabeceiras do Piau�"', add
label define br10a_prevmuni_lbl 2202075 `"Cajazeiras do Piau�"', add
label define br10a_prevmuni_lbl 2202083 `"Cajueiro da Praia"', add
label define br10a_prevmuni_lbl 2202091 `"Caldeir�o Grande do Piau�"', add
label define br10a_prevmuni_lbl 2202109 `"Campinas do Piau�"', add
label define br10a_prevmuni_lbl 2202117 `"Campo Alegre do Fidalgo"', add
label define br10a_prevmuni_lbl 2202133 `"Campo Grande do Piau�"', add
label define br10a_prevmuni_lbl 2202174 `"Campo Largo do Piau�"', add
label define br10a_prevmuni_lbl 2202208 `"Campo Maior"', add
label define br10a_prevmuni_lbl 2202251 `"Canavieira"', add
label define br10a_prevmuni_lbl 2202307 `"Canto do Buriti"', add
label define br10a_prevmuni_lbl 2202406 `"Capit�o de Campos"', add
label define br10a_prevmuni_lbl 2202455 `"Capit�o Gerv�sio Oliveira"', add
label define br10a_prevmuni_lbl 2202505 `"Caracol"', add
label define br10a_prevmuni_lbl 2202539 `"Cara�bas do Piau�"', add
label define br10a_prevmuni_lbl 2202554 `"Caridade do Piau�"', add
label define br10a_prevmuni_lbl 2202604 `"Castelo do Piau�"', add
label define br10a_prevmuni_lbl 2202653 `"Caxing�"', add
label define br10a_prevmuni_lbl 2202703 `"Cocal"', add
label define br10a_prevmuni_lbl 2202711 `"Cocal de Telha"', add
label define br10a_prevmuni_lbl 2202729 `"Cocal dos Alves"', add
label define br10a_prevmuni_lbl 2202737 `"Coivaras"', add
label define br10a_prevmuni_lbl 2202752 `"Col�nia do Gurgu�ia"', add
label define br10a_prevmuni_lbl 2202778 `"Col�nia do Piau�"', add
label define br10a_prevmuni_lbl 2202802 `"Concei��o do Canind�"', add
label define br10a_prevmuni_lbl 2202851 `"Coronel Jos� Dias"', add
label define br10a_prevmuni_lbl 2202901 `"Corrente"', add
label define br10a_prevmuni_lbl 2203008 `"Cristal�ndia do Piau�"', add
label define br10a_prevmuni_lbl 2203107 `"Cristino Castro"', add
label define br10a_prevmuni_lbl 2203206 `"Curimat�"', add
label define br10a_prevmuni_lbl 2203230 `"Currais"', add
label define br10a_prevmuni_lbl 2203255 `"Curralinhos"', add
label define br10a_prevmuni_lbl 2203271 `"Curral Novo do Piau�"', add
label define br10a_prevmuni_lbl 2203305 `"Demerval Lob�o"', add
label define br10a_prevmuni_lbl 2203354 `"Dirceu Arcoverde"', add
label define br10a_prevmuni_lbl 2203404 `"Dom Expedito Lopes"', add
label define br10a_prevmuni_lbl 2203420 `"Domingos Mour�o"', add
label define br10a_prevmuni_lbl 2203453 `"Dom Inoc�ncio"', add
label define br10a_prevmuni_lbl 2203503 `"Elesb�o Veloso"', add
label define br10a_prevmuni_lbl 2203602 `"Eliseu Martins"', add
label define br10a_prevmuni_lbl 2203701 `"Esperantina"', add
label define br10a_prevmuni_lbl 2203750 `"Fartura do Piau�"', add
label define br10a_prevmuni_lbl 2203800 `"Flores do Piau�"', add
label define br10a_prevmuni_lbl 2203859 `"Floresta do Piau�"', add
label define br10a_prevmuni_lbl 2203909 `"Floriano"', add
label define br10a_prevmuni_lbl 2204006 `"Francin�polis"', add
label define br10a_prevmuni_lbl 2204105 `"Francisco Ayres"', add
label define br10a_prevmuni_lbl 2204154 `"Francisco Macedo"', add
label define br10a_prevmuni_lbl 2204204 `"Francisco Santos"', add
label define br10a_prevmuni_lbl 2204303 `"Fronteiras"', add
label define br10a_prevmuni_lbl 2204352 `"Geminiano"', add
label define br10a_prevmuni_lbl 2204402 `"Gilbu�s"', add
label define br10a_prevmuni_lbl 2204501 `"Guadalupe"', add
label define br10a_prevmuni_lbl 2204550 `"Guaribas"', add
label define br10a_prevmuni_lbl 2204600 `"Hugo Napole�o"', add
label define br10a_prevmuni_lbl 2204659 `"Ilha Grande"', add
label define br10a_prevmuni_lbl 2204709 `"Inhuma"', add
label define br10a_prevmuni_lbl 2204808 `"Ipiranga do Piau�"', add
label define br10a_prevmuni_lbl 2204907 `"Isa�as Coelho"', add
label define br10a_prevmuni_lbl 2205003 `"Itain�polis"', add
label define br10a_prevmuni_lbl 2205102 `"Itaueira"', add
label define br10a_prevmuni_lbl 2205151 `"Jacobina do Piau�"', add
label define br10a_prevmuni_lbl 2205201 `"Jaic�s"', add
label define br10a_prevmuni_lbl 2205250 `"Jardim do Mulato"', add
label define br10a_prevmuni_lbl 2205276 `"Jatob� do Piau�"', add
label define br10a_prevmuni_lbl 2205300 `"Jerumenha"', add
label define br10a_prevmuni_lbl 2205359 `"Jo�o Costa"', add
label define br10a_prevmuni_lbl 2205409 `"Joaquim Pires"', add
label define br10a_prevmuni_lbl 2205458 `"Joca Marques"', add
label define br10a_prevmuni_lbl 2205508 `"Jos� de Freitas"', add
label define br10a_prevmuni_lbl 2205516 `"Juazeiro do Piau�"', add
label define br10a_prevmuni_lbl 2205524 `"J�lio Borges"', add
label define br10a_prevmuni_lbl 2205532 `"Jurema"', add
label define br10a_prevmuni_lbl 2205540 `"Lagoinha do Piau�"', add
label define br10a_prevmuni_lbl 2205557 `"Lagoa Alegre"', add
label define br10a_prevmuni_lbl 2205565 `"Lagoa do Barro do Piau�"', add
label define br10a_prevmuni_lbl 2205573 `"Lagoa de S�o Francisco"', add
label define br10a_prevmuni_lbl 2205581 `"Lagoa do Piau�"', add
label define br10a_prevmuni_lbl 2205599 `"Lagoa do S�tio"', add
label define br10a_prevmuni_lbl 2205607 `"Landri Sales"', add
label define br10a_prevmuni_lbl 2205706 `"Lu�s Correia"', add
label define br10a_prevmuni_lbl 2205805 `"Luzil�ndia"', add
label define br10a_prevmuni_lbl 2205854 `"Madeiro"', add
label define br10a_prevmuni_lbl 2205904 `"Manoel Em�dio"', add
label define br10a_prevmuni_lbl 2205953 `"Marcol�ndia"', add
label define br10a_prevmuni_lbl 2206001 `"Marcos Parente"', add
label define br10a_prevmuni_lbl 2206050 `"Massap� do Piau�"', add
label define br10a_prevmuni_lbl 2206100 `"Matias Ol�mpio"', add
label define br10a_prevmuni_lbl 2206209 `"Miguel Alves"', add
label define br10a_prevmuni_lbl 2206308 `"Miguel Le�o"', add
label define br10a_prevmuni_lbl 2206357 `"Milton Brand�o"', add
label define br10a_prevmuni_lbl 2206407 `"Monsenhor Gil"', add
label define br10a_prevmuni_lbl 2206506 `"Monsenhor Hip�lito"', add
label define br10a_prevmuni_lbl 2206605 `"Monte Alegre do Piau�"', add
label define br10a_prevmuni_lbl 2206654 `"Morro Cabe�a no Tempo"', add
label define br10a_prevmuni_lbl 2206670 `"Morro do Chap�u do Piau�"', add
label define br10a_prevmuni_lbl 2206696 `"Murici dos Portelas"', add
label define br10a_prevmuni_lbl 2206704 `"Nazar� do Piau�"', add
label define br10a_prevmuni_lbl 2206720 `"Naz�ria"', add
label define br10a_prevmuni_lbl 2206753 `"Nossa Senhora de Nazar�"', add
label define br10a_prevmuni_lbl 2206803 `"Nossa Senhora dos Rem�dios"', add
label define br10a_prevmuni_lbl 2206902 `"Novo Oriente do Piau�"', add
label define br10a_prevmuni_lbl 2206951 `"Novo Santo Ant�nio"', add
label define br10a_prevmuni_lbl 2207009 `"Oeiras"', add
label define br10a_prevmuni_lbl 2207108 `"Olho D'�gua do Piau�"', add
label define br10a_prevmuni_lbl 2207207 `"Padre Marcos"', add
label define br10a_prevmuni_lbl 2207306 `"Paes Landim"', add
label define br10a_prevmuni_lbl 2207355 `"Paje� do Piau�"', add
label define br10a_prevmuni_lbl 2207405 `"Palmeira do Piau�"', add
label define br10a_prevmuni_lbl 2207504 `"Palmeirais"', add
label define br10a_prevmuni_lbl 2207553 `"Paquet�"', add
label define br10a_prevmuni_lbl 2207603 `"Parnagu�"', add
label define br10a_prevmuni_lbl 2207702 `"Parna�ba"', add
label define br10a_prevmuni_lbl 2207751 `"Passagem Franca do Piau�"', add
label define br10a_prevmuni_lbl 2207777 `"Patos do Piau�"', add
label define br10a_prevmuni_lbl 2207793 `"Pau D'Arco do Piau�"', add
label define br10a_prevmuni_lbl 2207801 `"Paulistana"', add
label define br10a_prevmuni_lbl 2207850 `"Pavussu"', add
label define br10a_prevmuni_lbl 2207900 `"Pedro II"', add
label define br10a_prevmuni_lbl 2207934 `"Pedro Laurentino"', add
label define br10a_prevmuni_lbl 2207959 `"Nova Santa Rita"', add
label define br10a_prevmuni_lbl 2208007 `"Picos"', add
label define br10a_prevmuni_lbl 2208106 `"Pimenteiras"', add
label define br10a_prevmuni_lbl 2208205 `"Pio IX"', add
label define br10a_prevmuni_lbl 2208304 `"Piracuruca"', add
label define br10a_prevmuni_lbl 2208403 `"Piripiri"', add
label define br10a_prevmuni_lbl 2208502 `"Porto"', add
label define br10a_prevmuni_lbl 2208551 `"Porto Alegre do Piau�"', add
label define br10a_prevmuni_lbl 2208601 `"Prata do Piau�"', add
label define br10a_prevmuni_lbl 2208650 `"Queimada Nova"', add
label define br10a_prevmuni_lbl 2208700 `"Reden��o do Gurgu�ia"', add
label define br10a_prevmuni_lbl 2208809 `"Regenera��o"', add
label define br10a_prevmuni_lbl 2208858 `"Riacho Frio"', add
label define br10a_prevmuni_lbl 2208874 `"Ribeira do Piau�"', add
label define br10a_prevmuni_lbl 2208908 `"Ribeiro Gon�alves"', add
label define br10a_prevmuni_lbl 2209005 `"Rio Grande do Piau�"', add
label define br10a_prevmuni_lbl 2209104 `"Santa Cruz do Piau�"', add
label define br10a_prevmuni_lbl 2209153 `"Santa Cruz dos Milagres"', add
label define br10a_prevmuni_lbl 2209203 `"Santa Filomena"', add
label define br10a_prevmuni_lbl 2209302 `"Santa Luz"', add
label define br10a_prevmuni_lbl 2209351 `"Santana do Piau�"', add
label define br10a_prevmuni_lbl 2209377 `"Santa Rosa do Piau�"', add
label define br10a_prevmuni_lbl 2209401 `"Santo Ant�nio de Lisboa"', add
label define br10a_prevmuni_lbl 2209450 `"Santo Ant�nio dos Milagres"', add
label define br10a_prevmuni_lbl 2209500 `"Santo In�cio do Piau�"', add
label define br10a_prevmuni_lbl 2209559 `"S�o Braz do Piau�"', add
label define br10a_prevmuni_lbl 2209609 `"S�o F�lix do Piau�"', add
label define br10a_prevmuni_lbl 2209658 `"S�o Francisco de Assis do Piau�"', add
label define br10a_prevmuni_lbl 2209708 `"S�o Francisco do Piau�"', add
label define br10a_prevmuni_lbl 2209757 `"S�o Gon�alo do Gurgu�ia"', add
label define br10a_prevmuni_lbl 2209807 `"S�o Gon�alo do Piau�"', add
label define br10a_prevmuni_lbl 2209856 `"S�o Jo�o da Canabrava"', add
label define br10a_prevmuni_lbl 2209872 `"S�o Jo�o da Fronteira"', add
label define br10a_prevmuni_lbl 2209906 `"S�o Jo�o da Serra"', add
label define br10a_prevmuni_lbl 2209955 `"S�o Jo�o da Varjota"', add
label define br10a_prevmuni_lbl 2209971 `"S�o Jo�o do Arraial"', add
label define br10a_prevmuni_lbl 2210003 `"S�o Jo�o do Piau�"', add
label define br10a_prevmuni_lbl 2210052 `"S�o Jos� do Divino"', add
label define br10a_prevmuni_lbl 2210102 `"S�o Jos� do Peixe"', add
label define br10a_prevmuni_lbl 2210201 `"S�o Jos� do Piau�"', add
label define br10a_prevmuni_lbl 2210300 `"S�o Juli�o"', add
label define br10a_prevmuni_lbl 2210359 `"S�o Louren�o do Piau�"', add
label define br10a_prevmuni_lbl 2210375 `"S�o Luis do Piau�"', add
label define br10a_prevmuni_lbl 2210383 `"S�o Miguel da Baixa Grande"', add
label define br10a_prevmuni_lbl 2210391 `"S�o Miguel do Fidalgo"', add
label define br10a_prevmuni_lbl 2210409 `"S�o Miguel do Tapuio"', add
label define br10a_prevmuni_lbl 2210508 `"S�o Pedro do Piau�"', add
label define br10a_prevmuni_lbl 2210607 `"S�o Raimundo Nonato"', add
label define br10a_prevmuni_lbl 2210623 `"Sebasti�o Barros"', add
label define br10a_prevmuni_lbl 2210631 `"Sebasti�o Leal"', add
label define br10a_prevmuni_lbl 2210656 `"Sigefredo Pacheco"', add
label define br10a_prevmuni_lbl 2210706 `"Sim�es"', add
label define br10a_prevmuni_lbl 2210805 `"Simpl�cio Mendes"', add
label define br10a_prevmuni_lbl 2210904 `"Socorro do Piau�"', add
label define br10a_prevmuni_lbl 2210938 `"Sussuapara"', add
label define br10a_prevmuni_lbl 2210953 `"Tamboril do Piau�"', add
label define br10a_prevmuni_lbl 2210979 `"Tanque do Piau�"', add
label define br10a_prevmuni_lbl 2211001 `"Teresina"', add
label define br10a_prevmuni_lbl 2211100 `"Uni�o"', add
label define br10a_prevmuni_lbl 2211209 `"Uru�u�"', add
label define br10a_prevmuni_lbl 2211308 `"Valen�a do Piau�"', add
label define br10a_prevmuni_lbl 2211357 `"V�rzea Branca"', add
label define br10a_prevmuni_lbl 2211407 `"V�rzea Grande"', add
label define br10a_prevmuni_lbl 2211506 `"Vera Mendes"', add
label define br10a_prevmuni_lbl 2211605 `"Vila Nova do Piau�"', add
label define br10a_prevmuni_lbl 2211704 `"Wall Ferraz"', add
label define br10a_prevmuni_lbl 2299999 `"Piau�, municipality unknown"', add
label define br10a_prevmuni_lbl 2300101 `"Abaiara"', add
label define br10a_prevmuni_lbl 2300150 `"Acarape"', add
label define br10a_prevmuni_lbl 2300200 `"Acara�"', add
label define br10a_prevmuni_lbl 2300309 `"Acopiara"', add
label define br10a_prevmuni_lbl 2300408 `"Aiuaba"', add
label define br10a_prevmuni_lbl 2300507 `"Alc�ntaras"', add
label define br10a_prevmuni_lbl 2300606 `"Altaneira"', add
label define br10a_prevmuni_lbl 2300705 `"Alto Santo"', add
label define br10a_prevmuni_lbl 2300754 `"Amontada"', add
label define br10a_prevmuni_lbl 2300804 `"Antonina do Norte"', add
label define br10a_prevmuni_lbl 2300903 `"Apuiar�s"', add
label define br10a_prevmuni_lbl 2301000 `"Aquiraz"', add
label define br10a_prevmuni_lbl 2301109 `"Aracati"', add
label define br10a_prevmuni_lbl 2301208 `"Aracoiaba"', add
label define br10a_prevmuni_lbl 2301257 `"Ararend�"', add
label define br10a_prevmuni_lbl 2301307 `"Araripe"', add
label define br10a_prevmuni_lbl 2301406 `"Aratuba"', add
label define br10a_prevmuni_lbl 2301505 `"Arneiroz"', add
label define br10a_prevmuni_lbl 2301604 `"Assar�"', add
label define br10a_prevmuni_lbl 2301703 `"Aurora"', add
label define br10a_prevmuni_lbl 2301802 `"Baixio"', add
label define br10a_prevmuni_lbl 2301851 `"Banabui�"', add
label define br10a_prevmuni_lbl 2301901 `"Barbalha"', add
label define br10a_prevmuni_lbl 2301950 `"Barreira"', add
label define br10a_prevmuni_lbl 2302008 `"Barro"', add
label define br10a_prevmuni_lbl 2302057 `"Barroquinha"', add
label define br10a_prevmuni_lbl 2302107 `"Baturit�"', add
label define br10a_prevmuni_lbl 2302206 `"Beberibe"', add
label define br10a_prevmuni_lbl 2302305 `"Bela Cruz"', add
label define br10a_prevmuni_lbl 2302404 `"Boa Viagem"', add
label define br10a_prevmuni_lbl 2302503 `"Brejo Santo"', add
label define br10a_prevmuni_lbl 2302602 `"Camocim"', add
label define br10a_prevmuni_lbl 2302701 `"Campos Sales"', add
label define br10a_prevmuni_lbl 2302800 `"Canind�"', add
label define br10a_prevmuni_lbl 2302909 `"Capistrano"', add
label define br10a_prevmuni_lbl 2303006 `"Caridade"', add
label define br10a_prevmuni_lbl 2303105 `"Carir�"', add
label define br10a_prevmuni_lbl 2303204 `"Cariria�u"', add
label define br10a_prevmuni_lbl 2303303 `"Cari�s"', add
label define br10a_prevmuni_lbl 2303402 `"Carnaubal"', add
label define br10a_prevmuni_lbl 2303501 `"Cascavel"', add
label define br10a_prevmuni_lbl 2303600 `"Catarina"', add
label define br10a_prevmuni_lbl 2303659 `"Catunda"', add
label define br10a_prevmuni_lbl 2303709 `"Caucaia"', add
label define br10a_prevmuni_lbl 2303808 `"Cedro"', add
label define br10a_prevmuni_lbl 2303907 `"Chaval"', add
label define br10a_prevmuni_lbl 2303931 `"Chor�"', add
label define br10a_prevmuni_lbl 2303956 `"Chorozinho"', add
label define br10a_prevmuni_lbl 2304004 `"Corea�"', add
label define br10a_prevmuni_lbl 2304103 `"Crate�s"', add
label define br10a_prevmuni_lbl 2304202 `"Crato"', add
label define br10a_prevmuni_lbl 2304236 `"Croat�"', add
label define br10a_prevmuni_lbl 2304251 `"Cruz"', add
label define br10a_prevmuni_lbl 2304269 `"Deputado Irapuan Pinheiro"', add
label define br10a_prevmuni_lbl 2304277 `"Erer�"', add
label define br10a_prevmuni_lbl 2304285 `"Eus�bio"', add
label define br10a_prevmuni_lbl 2304301 `"Farias Brito"', add
label define br10a_prevmuni_lbl 2304350 `"Forquilha"', add
label define br10a_prevmuni_lbl 2304400 `"Fortaleza"', add
label define br10a_prevmuni_lbl 2304459 `"Fortim"', add
label define br10a_prevmuni_lbl 2304509 `"Frecheirinha"', add
label define br10a_prevmuni_lbl 2304608 `"General Sampaio"', add
label define br10a_prevmuni_lbl 2304657 `"Gra�a"', add
label define br10a_prevmuni_lbl 2304707 `"Granja"', add
label define br10a_prevmuni_lbl 2304806 `"Granjeiro"', add
label define br10a_prevmuni_lbl 2304905 `"Groa�ras"', add
label define br10a_prevmuni_lbl 2304954 `"Guai�ba"', add
label define br10a_prevmuni_lbl 2305001 `"Guaraciaba do Norte"', add
label define br10a_prevmuni_lbl 2305100 `"Guaramiranga"', add
label define br10a_prevmuni_lbl 2305209 `"Hidrol�ndia"', add
label define br10a_prevmuni_lbl 2305233 `"Horizonte"', add
label define br10a_prevmuni_lbl 2305266 `"Ibaretama"', add
label define br10a_prevmuni_lbl 2305308 `"Ibiapina"', add
label define br10a_prevmuni_lbl 2305332 `"Ibicuitinga"', add
label define br10a_prevmuni_lbl 2305357 `"Icapu�"', add
label define br10a_prevmuni_lbl 2305407 `"Ic�"', add
label define br10a_prevmuni_lbl 2305506 `"Iguatu"', add
label define br10a_prevmuni_lbl 2305605 `"Independ�ncia"', add
label define br10a_prevmuni_lbl 2305654 `"Ipaporanga"', add
label define br10a_prevmuni_lbl 2305704 `"Ipaumirim"', add
label define br10a_prevmuni_lbl 2305803 `"Ipu"', add
label define br10a_prevmuni_lbl 2305902 `"Ipueiras"', add
label define br10a_prevmuni_lbl 2306009 `"Iracema"', add
label define br10a_prevmuni_lbl 2306108 `"Irau�uba"', add
label define br10a_prevmuni_lbl 2306207 `"Itai�aba"', add
label define br10a_prevmuni_lbl 2306256 `"Itaitinga"', add
label define br10a_prevmuni_lbl 2306306 `"Itapag�"', add
label define br10a_prevmuni_lbl 2306405 `"Itapipoca"', add
label define br10a_prevmuni_lbl 2306504 `"Itapi�na"', add
label define br10a_prevmuni_lbl 2306553 `"Itarema"', add
label define br10a_prevmuni_lbl 2306603 `"Itatira"', add
label define br10a_prevmuni_lbl 2306702 `"Jaguaretama"', add
label define br10a_prevmuni_lbl 2306801 `"Jaguaribara"', add
label define br10a_prevmuni_lbl 2306900 `"Jaguaribe"', add
label define br10a_prevmuni_lbl 2307007 `"Jaguaruana"', add
label define br10a_prevmuni_lbl 2307106 `"Jardim"', add
label define br10a_prevmuni_lbl 2307205 `"Jati"', add
label define br10a_prevmuni_lbl 2307254 `"Jijoca de Jericoacoara"', add
label define br10a_prevmuni_lbl 2307304 `"Juazeiro do Norte"', add
label define br10a_prevmuni_lbl 2307403 `"Juc�s"', add
label define br10a_prevmuni_lbl 2307502 `"Lavras da Mangabeira"', add
label define br10a_prevmuni_lbl 2307601 `"Limoeiro do Norte"', add
label define br10a_prevmuni_lbl 2307635 `"Madalena"', add
label define br10a_prevmuni_lbl 2307650 `"Maracana�"', add
label define br10a_prevmuni_lbl 2307700 `"Maranguape"', add
label define br10a_prevmuni_lbl 2307809 `"Marco"', add
label define br10a_prevmuni_lbl 2307908 `"Martin�pole"', add
label define br10a_prevmuni_lbl 2308005 `"Massap�"', add
label define br10a_prevmuni_lbl 2308104 `"Mauriti"', add
label define br10a_prevmuni_lbl 2308203 `"Meruoca"', add
label define br10a_prevmuni_lbl 2308302 `"Milagres"', add
label define br10a_prevmuni_lbl 2308351 `"Milh�"', add
label define br10a_prevmuni_lbl 2308377 `"Mira�ma"', add
label define br10a_prevmuni_lbl 2308401 `"Miss�o Velha"', add
label define br10a_prevmuni_lbl 2308500 `"Momba�a"', add
label define br10a_prevmuni_lbl 2308609 `"Monsenhor Tabosa"', add
label define br10a_prevmuni_lbl 2308708 `"Morada Nova"', add
label define br10a_prevmuni_lbl 2308807 `"Mora�jo"', add
label define br10a_prevmuni_lbl 2308906 `"Morrinhos"', add
label define br10a_prevmuni_lbl 2309003 `"Mucambo"', add
label define br10a_prevmuni_lbl 2309102 `"Mulungu"', add
label define br10a_prevmuni_lbl 2309201 `"Nova Olinda"', add
label define br10a_prevmuni_lbl 2309300 `"Nova Russas"', add
label define br10a_prevmuni_lbl 2309409 `"Novo Oriente"', add
label define br10a_prevmuni_lbl 2309458 `"Ocara"', add
label define br10a_prevmuni_lbl 2309508 `"Or�s"', add
label define br10a_prevmuni_lbl 2309607 `"Pacajus"', add
label define br10a_prevmuni_lbl 2309706 `"Pacatuba"', add
label define br10a_prevmuni_lbl 2309805 `"Pacoti"', add
label define br10a_prevmuni_lbl 2309904 `"Pacuj�"', add
label define br10a_prevmuni_lbl 2310001 `"Palhano"', add
label define br10a_prevmuni_lbl 2310100 `"Palm�cia"', add
label define br10a_prevmuni_lbl 2310209 `"Paracuru"', add
label define br10a_prevmuni_lbl 2310258 `"Paraipaba"', add
label define br10a_prevmuni_lbl 2310308 `"Parambu"', add
label define br10a_prevmuni_lbl 2310407 `"Paramoti"', add
label define br10a_prevmuni_lbl 2310506 `"Pedra Branca"', add
label define br10a_prevmuni_lbl 2310605 `"Penaforte"', add
label define br10a_prevmuni_lbl 2310704 `"Pentecoste"', add
label define br10a_prevmuni_lbl 2310803 `"Pereiro"', add
label define br10a_prevmuni_lbl 2310852 `"Pindoretama"', add
label define br10a_prevmuni_lbl 2310902 `"Piquet Carneiro"', add
label define br10a_prevmuni_lbl 2310951 `"Pires Ferreira"', add
label define br10a_prevmuni_lbl 2311009 `"Poranga"', add
label define br10a_prevmuni_lbl 2311108 `"Porteiras"', add
label define br10a_prevmuni_lbl 2311207 `"Potengi"', add
label define br10a_prevmuni_lbl 2311231 `"Potiretama"', add
label define br10a_prevmuni_lbl 2311264 `"Quiterian�polis"', add
label define br10a_prevmuni_lbl 2311306 `"Quixad�"', add
label define br10a_prevmuni_lbl 2311355 `"Quixel�"', add
label define br10a_prevmuni_lbl 2311405 `"Quixeramobim"', add
label define br10a_prevmuni_lbl 2311504 `"Quixer�"', add
label define br10a_prevmuni_lbl 2311603 `"Reden��o"', add
label define br10a_prevmuni_lbl 2311702 `"Reriutaba"', add
label define br10a_prevmuni_lbl 2311801 `"Russas"', add
label define br10a_prevmuni_lbl 2311900 `"Saboeiro"', add
label define br10a_prevmuni_lbl 2311959 `"Salitre"', add
label define br10a_prevmuni_lbl 2312007 `"Santana do Acara�"', add
label define br10a_prevmuni_lbl 2312106 `"Santana do Cariri"', add
label define br10a_prevmuni_lbl 2312205 `"Santa Quit�ria"', add
label define br10a_prevmuni_lbl 2312304 `"S�o Benedito"', add
label define br10a_prevmuni_lbl 2312403 `"S�o Gon�alo do Amarante"', add
label define br10a_prevmuni_lbl 2312502 `"S�o Jo�o do Jaguaribe"', add
label define br10a_prevmuni_lbl 2312601 `"S�o Lu�s do Curu"', add
label define br10a_prevmuni_lbl 2312700 `"Senador Pompeu"', add
label define br10a_prevmuni_lbl 2312809 `"Senador S�"', add
label define br10a_prevmuni_lbl 2312908 `"Sobral"', add
label define br10a_prevmuni_lbl 2313005 `"Solon�pole"', add
label define br10a_prevmuni_lbl 2313104 `"Tabuleiro do Norte"', add
label define br10a_prevmuni_lbl 2313203 `"Tamboril"', add
label define br10a_prevmuni_lbl 2313252 `"Tarrafas"', add
label define br10a_prevmuni_lbl 2313302 `"Tau�"', add
label define br10a_prevmuni_lbl 2313351 `"Teju�uoca"', add
label define br10a_prevmuni_lbl 2313401 `"Tiangu�"', add
label define br10a_prevmuni_lbl 2313500 `"Trairi"', add
label define br10a_prevmuni_lbl 2313559 `"Tururu"', add
label define br10a_prevmuni_lbl 2313609 `"Ubajara"', add
label define br10a_prevmuni_lbl 2313708 `"Umari"', add
label define br10a_prevmuni_lbl 2313757 `"Umirim"', add
label define br10a_prevmuni_lbl 2313807 `"Uruburetama"', add
label define br10a_prevmuni_lbl 2313906 `"Uruoca"', add
label define br10a_prevmuni_lbl 2313955 `"Varjota"', add
label define br10a_prevmuni_lbl 2314003 `"V�rzea Alegre"', add
label define br10a_prevmuni_lbl 2314102 `"Vi�osa do Cear�"', add
label define br10a_prevmuni_lbl 2399999 `"Cear�, municipality unknown"', add
label define br10a_prevmuni_lbl 2400109 `"Acari"', add
label define br10a_prevmuni_lbl 2400208 `"A�u"', add
label define br10a_prevmuni_lbl 2400307 `"Afonso Bezerra"', add
label define br10a_prevmuni_lbl 2400406 `"�gua Nova"', add
label define br10a_prevmuni_lbl 2400505 `"Alexandria"', add
label define br10a_prevmuni_lbl 2400604 `"Almino Afonso"', add
label define br10a_prevmuni_lbl 2400703 `"Alto do Rodrigues"', add
label define br10a_prevmuni_lbl 2400802 `"Angicos"', add
label define br10a_prevmuni_lbl 2400901 `"Ant�nio Martins"', add
label define br10a_prevmuni_lbl 2401008 `"Apodi"', add
label define br10a_prevmuni_lbl 2401107 `"Areia Branca"', add
label define br10a_prevmuni_lbl 2401206 `"Ar�s"', add
label define br10a_prevmuni_lbl 2401305 `"Augusto Severo"', add
label define br10a_prevmuni_lbl 2401404 `"Ba�a Formosa"', add
label define br10a_prevmuni_lbl 2401453 `"Bara�na"', add
label define br10a_prevmuni_lbl 2401503 `"Barcelona"', add
label define br10a_prevmuni_lbl 2401602 `"Bento Fernandes"', add
label define br10a_prevmuni_lbl 2401651 `"Bod�"', add
label define br10a_prevmuni_lbl 2401701 `"Bom Jesus"', add
label define br10a_prevmuni_lbl 2401800 `"Brejinho"', add
label define br10a_prevmuni_lbl 2401859 `"Cai�ara do Norte"', add
label define br10a_prevmuni_lbl 2401909 `"Cai�ara do Rio do Vento"', add
label define br10a_prevmuni_lbl 2402006 `"Caic�"', add
label define br10a_prevmuni_lbl 2402105 `"Campo Redondo"', add
label define br10a_prevmuni_lbl 2402204 `"Canguaretama"', add
label define br10a_prevmuni_lbl 2402303 `"Cara�bas"', add
label define br10a_prevmuni_lbl 2402402 `"Carna�ba dos Dantas"', add
label define br10a_prevmuni_lbl 2402501 `"Carnaubais"', add
label define br10a_prevmuni_lbl 2402600 `"Cear�-Mirim"', add
label define br10a_prevmuni_lbl 2402709 `"Cerro Cor�"', add
label define br10a_prevmuni_lbl 2402808 `"Coronel Ezequiel"', add
label define br10a_prevmuni_lbl 2402907 `"Coronel Jo�o Pessoa"', add
label define br10a_prevmuni_lbl 2403004 `"Cruzeta"', add
label define br10a_prevmuni_lbl 2403103 `"Currais Novos"', add
label define br10a_prevmuni_lbl 2403202 `"Doutor Severiano"', add
label define br10a_prevmuni_lbl 2403251 `"Parnamirim"', add
label define br10a_prevmuni_lbl 2403301 `"Encanto"', add
label define br10a_prevmuni_lbl 2403400 `"Equador"', add
label define br10a_prevmuni_lbl 2403509 `"Esp�rito Santo"', add
label define br10a_prevmuni_lbl 2403608 `"Extremoz"', add
label define br10a_prevmuni_lbl 2403707 `"Felipe Guerra"', add
label define br10a_prevmuni_lbl 2403756 `"Fernando Pedroza"', add
label define br10a_prevmuni_lbl 2403806 `"Flor�nia"', add
label define br10a_prevmuni_lbl 2403905 `"Francisco Dantas"', add
label define br10a_prevmuni_lbl 2404002 `"Frutuoso Gomes"', add
label define br10a_prevmuni_lbl 2404101 `"Galinhos"', add
label define br10a_prevmuni_lbl 2404200 `"Goianinha"', add
label define br10a_prevmuni_lbl 2404309 `"Governador Dix-Sept Rosado"', add
label define br10a_prevmuni_lbl 2404408 `"Grossos"', add
label define br10a_prevmuni_lbl 2404507 `"Guamar�"', add
label define br10a_prevmuni_lbl 2404606 `"Ielmo Marinho"', add
label define br10a_prevmuni_lbl 2404705 `"Ipangua�u"', add
label define br10a_prevmuni_lbl 2404804 `"Ipueira"', add
label define br10a_prevmuni_lbl 2404853 `"Itaj�"', add
label define br10a_prevmuni_lbl 2404903 `"Ita�"', add
label define br10a_prevmuni_lbl 2405009 `"Ja�an�"', add
label define br10a_prevmuni_lbl 2405108 `"Janda�ra"', add
label define br10a_prevmuni_lbl 2405207 `"Jandu�s"', add
label define br10a_prevmuni_lbl 2405306 `"Janu�rio Cicco"', add
label define br10a_prevmuni_lbl 2405405 `"Japi"', add
label define br10a_prevmuni_lbl 2405504 `"Jardim de Angicos"', add
label define br10a_prevmuni_lbl 2405603 `"Jardim de Piranhas"', add
label define br10a_prevmuni_lbl 2405702 `"Jardim do Serid�"', add
label define br10a_prevmuni_lbl 2405801 `"Jo�o C�mara"', add
label define br10a_prevmuni_lbl 2405900 `"Jo�o Dias"', add
label define br10a_prevmuni_lbl 2406007 `"Jos� da Penha"', add
label define br10a_prevmuni_lbl 2406106 `"Jucurutu"', add
label define br10a_prevmuni_lbl 2406155 `"Jundi�"', add
label define br10a_prevmuni_lbl 2406205 `"Lagoa d'Anta"', add
label define br10a_prevmuni_lbl 2406304 `"Lagoa de Pedras"', add
label define br10a_prevmuni_lbl 2406403 `"Lagoa de Velhos"', add
label define br10a_prevmuni_lbl 2406502 `"Lagoa Nova"', add
label define br10a_prevmuni_lbl 2406601 `"Lagoa Salgada"', add
label define br10a_prevmuni_lbl 2406700 `"Lajes"', add
label define br10a_prevmuni_lbl 2406809 `"Lajes Pintadas"', add
label define br10a_prevmuni_lbl 2406908 `"Lucr�cia"', add
label define br10a_prevmuni_lbl 2407005 `"Lu�s Gomes"', add
label define br10a_prevmuni_lbl 2407104 `"Maca�ba"', add
label define br10a_prevmuni_lbl 2407203 `"Macau"', add
label define br10a_prevmuni_lbl 2407252 `"Major Sales"', add
label define br10a_prevmuni_lbl 2407302 `"Marcelino Vieira"', add
label define br10a_prevmuni_lbl 2407401 `"Martins"', add
label define br10a_prevmuni_lbl 2407500 `"Maxaranguape"', add
label define br10a_prevmuni_lbl 2407609 `"Messias Targino"', add
label define br10a_prevmuni_lbl 2407708 `"Montanhas"', add
label define br10a_prevmuni_lbl 2407807 `"Monte Alegre"', add
label define br10a_prevmuni_lbl 2407906 `"Monte das Gameleiras"', add
label define br10a_prevmuni_lbl 2408003 `"Mossor�"', add
label define br10a_prevmuni_lbl 2408102 `"Natal"', add
label define br10a_prevmuni_lbl 2408201 `"N�sia Floresta"', add
label define br10a_prevmuni_lbl 2408300 `"Nova Cruz"', add
label define br10a_prevmuni_lbl 2408409 `"Olho-d'�gua do Borges"', add
label define br10a_prevmuni_lbl 2408508 `"Ouro Branco"', add
label define br10a_prevmuni_lbl 2408607 `"Paran�"', add
label define br10a_prevmuni_lbl 2408706 `"Para�"', add
label define br10a_prevmuni_lbl 2408805 `"Parazinho"', add
label define br10a_prevmuni_lbl 2408904 `"Parelhas"', add
label define br10a_prevmuni_lbl 2408953 `"Rio do Fogo"', add
label define br10a_prevmuni_lbl 2409100 `"Passa e Fica"', add
label define br10a_prevmuni_lbl 2409209 `"Passagem"', add
label define br10a_prevmuni_lbl 2409308 `"Patu"', add
label define br10a_prevmuni_lbl 2409332 `"Santa Maria"', add
label define br10a_prevmuni_lbl 2409407 `"Pau dos Ferros"', add
label define br10a_prevmuni_lbl 2409506 `"Pedra Grande"', add
label define br10a_prevmuni_lbl 2409605 `"Pedra Preta"', add
label define br10a_prevmuni_lbl 2409704 `"Pedro Avelino"', add
label define br10a_prevmuni_lbl 2409803 `"Pedro Velho"', add
label define br10a_prevmuni_lbl 2409902 `"Pend�ncias"', add
label define br10a_prevmuni_lbl 2410009 `"Pil�es"', add
label define br10a_prevmuni_lbl 2410108 `"Po�o Branco"', add
label define br10a_prevmuni_lbl 2410207 `"Portalegre"', add
label define br10a_prevmuni_lbl 2410256 `"Porto do Mangue"', add
label define br10a_prevmuni_lbl 2410306 `"Presidente Juscelino"', add
label define br10a_prevmuni_lbl 2410405 `"Pureza"', add
label define br10a_prevmuni_lbl 2410504 `"Rafael Fernandes"', add
label define br10a_prevmuni_lbl 2410603 `"Rafael Godeiro"', add
label define br10a_prevmuni_lbl 2410702 `"Riacho da Cruz"', add
label define br10a_prevmuni_lbl 2410801 `"Riacho de Santana"', add
label define br10a_prevmuni_lbl 2410900 `"Riachuelo"', add
label define br10a_prevmuni_lbl 2411007 `"Rodolfo Fernandes"', add
label define br10a_prevmuni_lbl 2411056 `"Tibau"', add
label define br10a_prevmuni_lbl 2411106 `"Ruy Barbosa"', add
label define br10a_prevmuni_lbl 2411205 `"Santa Cruz"', add
label define br10a_prevmuni_lbl 2411403 `"Santana do Matos"', add
label define br10a_prevmuni_lbl 2411429 `"Santana do Serid�"', add
label define br10a_prevmuni_lbl 2411502 `"Santo Ant�nio"', add
label define br10a_prevmuni_lbl 2411601 `"S�o Bento do Norte"', add
label define br10a_prevmuni_lbl 2411700 `"S�o Bento do Trair�"', add
label define br10a_prevmuni_lbl 2411809 `"S�o Fernando"', add
label define br10a_prevmuni_lbl 2411908 `"S�o Francisco do Oeste"', add
label define br10a_prevmuni_lbl 2412005 `"S�o Gon�alo do Amarante"', add
label define br10a_prevmuni_lbl 2412104 `"S�o Jo�o do Sabugi"', add
label define br10a_prevmuni_lbl 2412203 `"S�o Jos� de Mipibu"', add
label define br10a_prevmuni_lbl 2412302 `"S�o Jos� do Campestre"', add
label define br10a_prevmuni_lbl 2412401 `"S�o Jos� do Serid�"', add
label define br10a_prevmuni_lbl 2412500 `"S�o Miguel"', add
label define br10a_prevmuni_lbl 2412559 `"S�o Miguel do Gostoso"', add
label define br10a_prevmuni_lbl 2412609 `"S�o Paulo do Potengi"', add
label define br10a_prevmuni_lbl 2412708 `"S�o Pedro"', add
label define br10a_prevmuni_lbl 2412807 `"S�o Rafael"', add
label define br10a_prevmuni_lbl 2412906 `"S�o Tom�"', add
label define br10a_prevmuni_lbl 2413003 `"S�o Vicente"', add
label define br10a_prevmuni_lbl 2413102 `"Senador El�i de Souza"', add
label define br10a_prevmuni_lbl 2413201 `"Senador Georgino Avelino"', add
label define br10a_prevmuni_lbl 2413300 `"Serra de S�o Bento"', add
label define br10a_prevmuni_lbl 2413359 `"Serra do Mel"', add
label define br10a_prevmuni_lbl 2413409 `"Serra Negra do Norte"', add
label define br10a_prevmuni_lbl 2413508 `"Serrinha"', add
label define br10a_prevmuni_lbl 2413557 `"Serrinha dos Pintos"', add
label define br10a_prevmuni_lbl 2413607 `"Severiano Melo"', add
label define br10a_prevmuni_lbl 2413706 `"S�tio Novo"', add
label define br10a_prevmuni_lbl 2413805 `"Taboleiro Grande"', add
label define br10a_prevmuni_lbl 2413904 `"Taipu"', add
label define br10a_prevmuni_lbl 2414001 `"Tangar�"', add
label define br10a_prevmuni_lbl 2414100 `"Tenente Ananias"', add
label define br10a_prevmuni_lbl 2414159 `"Tenente Laurentino Cruz"', add
label define br10a_prevmuni_lbl 2414209 `"Tibau do Sul"', add
label define br10a_prevmuni_lbl 2414308 `"Timba�ba dos Batistas"', add
label define br10a_prevmuni_lbl 2414407 `"Touros"', add
label define br10a_prevmuni_lbl 2414456 `"Triunfo Potiguar"', add
label define br10a_prevmuni_lbl 2414506 `"Umarizal"', add
label define br10a_prevmuni_lbl 2414605 `"Upanema"', add
label define br10a_prevmuni_lbl 2414704 `"V�rzea"', add
label define br10a_prevmuni_lbl 2414753 `"Venha-Ver"', add
label define br10a_prevmuni_lbl 2414803 `"Vera Cruz"', add
label define br10a_prevmuni_lbl 2414902 `"Vi�osa"', add
label define br10a_prevmuni_lbl 2415008 `"Vila Flor"', add
label define br10a_prevmuni_lbl 2499999 `"Rio Grande do Norte, municipality unknown"', add
label define br10a_prevmuni_lbl 2500106 `"�gua Branca"', add
label define br10a_prevmuni_lbl 2500205 `"Aguiar"', add
label define br10a_prevmuni_lbl 2500304 `"Alagoa Grande"', add
label define br10a_prevmuni_lbl 2500403 `"Alagoa Nova"', add
label define br10a_prevmuni_lbl 2500502 `"Alagoinha"', add
label define br10a_prevmuni_lbl 2500536 `"Alcantil"', add
label define br10a_prevmuni_lbl 2500577 `"Algod�o de Janda�ra"', add
label define br10a_prevmuni_lbl 2500601 `"Alhandra"', add
label define br10a_prevmuni_lbl 2500700 `"S�o Jo�o do Rio do Peixe"', add
label define br10a_prevmuni_lbl 2500734 `"Amparo"', add
label define br10a_prevmuni_lbl 2500775 `"Aparecida"', add
label define br10a_prevmuni_lbl 2500809 `"Ara�agi"', add
label define br10a_prevmuni_lbl 2500908 `"Arara"', add
label define br10a_prevmuni_lbl 2501005 `"Araruna"', add
label define br10a_prevmuni_lbl 2501104 `"Areia"', add
label define br10a_prevmuni_lbl 2501153 `"Areia de Bara�nas"', add
label define br10a_prevmuni_lbl 2501203 `"Areial"', add
label define br10a_prevmuni_lbl 2501302 `"Aroeiras"', add
label define br10a_prevmuni_lbl 2501351 `"Assun��o"', add
label define br10a_prevmuni_lbl 2501401 `"Ba�a da Trai��o"', add
label define br10a_prevmuni_lbl 2501500 `"Bananeiras"', add
label define br10a_prevmuni_lbl 2501534 `"Bara�na"', add
label define br10a_prevmuni_lbl 2501575 `"Barra de Santana"', add
label define br10a_prevmuni_lbl 2501609 `"Barra de Santa Rosa"', add
label define br10a_prevmuni_lbl 2501708 `"Barra de S�o Miguel"', add
label define br10a_prevmuni_lbl 2501807 `"Bayeux"', add
label define br10a_prevmuni_lbl 2501906 `"Bel�m"', add
label define br10a_prevmuni_lbl 2502003 `"Bel�m do Brejo do Cruz"', add
label define br10a_prevmuni_lbl 2502052 `"Bernardino Batista"', add
label define br10a_prevmuni_lbl 2502102 `"Boa Ventura"', add
label define br10a_prevmuni_lbl 2502151 `"Boa Vista"', add
label define br10a_prevmuni_lbl 2502201 `"Bom Jesus"', add
label define br10a_prevmuni_lbl 2502300 `"Bom Sucesso"', add
label define br10a_prevmuni_lbl 2502409 `"Bonito de Santa F�"', add
label define br10a_prevmuni_lbl 2502508 `"Boqueir�o"', add
label define br10a_prevmuni_lbl 2502607 `"Igaracy"', add
label define br10a_prevmuni_lbl 2502706 `"Borborema"', add
label define br10a_prevmuni_lbl 2502805 `"Brejo do Cruz"', add
label define br10a_prevmuni_lbl 2502904 `"Brejo dos Santos"', add
label define br10a_prevmuni_lbl 2503001 `"Caapor�"', add
label define br10a_prevmuni_lbl 2503100 `"Cabaceiras"', add
label define br10a_prevmuni_lbl 2503209 `"Cabedelo"', add
label define br10a_prevmuni_lbl 2503308 `"Cachoeira dos �ndios"', add
label define br10a_prevmuni_lbl 2503407 `"Cacimba de Areia"', add
label define br10a_prevmuni_lbl 2503506 `"Cacimba de Dentro"', add
label define br10a_prevmuni_lbl 2503555 `"Cacimbas"', add
label define br10a_prevmuni_lbl 2503605 `"Cai�ara"', add
label define br10a_prevmuni_lbl 2503704 `"Cajazeiras"', add
label define br10a_prevmuni_lbl 2503753 `"Cajazeirinhas"', add
label define br10a_prevmuni_lbl 2503803 `"Caldas Brand�o"', add
label define br10a_prevmuni_lbl 2503902 `"Camala�"', add
label define br10a_prevmuni_lbl 2504009 `"Campina Grande"', add
label define br10a_prevmuni_lbl 2504033 `"Capim"', add
label define br10a_prevmuni_lbl 2504074 `"Cara�bas"', add
label define br10a_prevmuni_lbl 2504108 `"Carrapateira"', add
label define br10a_prevmuni_lbl 2504157 `"Casserengue"', add
label define br10a_prevmuni_lbl 2504207 `"Catingueira"', add
label define br10a_prevmuni_lbl 2504306 `"Catol� do Rocha"', add
label define br10a_prevmuni_lbl 2504355 `"Caturit�"', add
label define br10a_prevmuni_lbl 2504405 `"Concei��o"', add
label define br10a_prevmuni_lbl 2504504 `"Condado"', add
label define br10a_prevmuni_lbl 2504603 `"Conde"', add
label define br10a_prevmuni_lbl 2504702 `"Congo"', add
label define br10a_prevmuni_lbl 2504801 `"Coremas"', add
label define br10a_prevmuni_lbl 2504850 `"Coxixola"', add
label define br10a_prevmuni_lbl 2504900 `"Cruz do Esp�rito Santo"', add
label define br10a_prevmuni_lbl 2505006 `"Cubati"', add
label define br10a_prevmuni_lbl 2505105 `"Cuit�"', add
label define br10a_prevmuni_lbl 2505204 `"Cuitegi"', add
label define br10a_prevmuni_lbl 2505238 `"Cuit� de Mamanguape"', add
label define br10a_prevmuni_lbl 2505279 `"Curral de Cima"', add
label define br10a_prevmuni_lbl 2505303 `"Curral Velho"', add
label define br10a_prevmuni_lbl 2505352 `"Dami�o"', add
label define br10a_prevmuni_lbl 2505402 `"Desterro"', add
label define br10a_prevmuni_lbl 2505501 `"Vista Serrana"', add
label define br10a_prevmuni_lbl 2505600 `"Diamante"', add
label define br10a_prevmuni_lbl 2505709 `"Dona In�s"', add
label define br10a_prevmuni_lbl 2505808 `"Duas Estradas"', add
label define br10a_prevmuni_lbl 2505907 `"Emas"', add
label define br10a_prevmuni_lbl 2506004 `"Esperan�a"', add
label define br10a_prevmuni_lbl 2506103 `"Fagundes"', add
label define br10a_prevmuni_lbl 2506202 `"Frei Martinho"', add
label define br10a_prevmuni_lbl 2506251 `"Gado Bravo"', add
label define br10a_prevmuni_lbl 2506301 `"Guarabira"', add
label define br10a_prevmuni_lbl 2506400 `"Gurinh�m"', add
label define br10a_prevmuni_lbl 2506509 `"Gurj�o"', add
label define br10a_prevmuni_lbl 2506608 `"Ibiara"', add
label define br10a_prevmuni_lbl 2506707 `"Imaculada"', add
label define br10a_prevmuni_lbl 2506806 `"Ing�"', add
label define br10a_prevmuni_lbl 2506905 `"Itabaiana"', add
label define br10a_prevmuni_lbl 2507002 `"Itaporanga"', add
label define br10a_prevmuni_lbl 2507101 `"Itapororoca"', add
label define br10a_prevmuni_lbl 2507200 `"Itatuba"', add
label define br10a_prevmuni_lbl 2507309 `"Jacara�"', add
label define br10a_prevmuni_lbl 2507408 `"Jeric�"', add
label define br10a_prevmuni_lbl 2507507 `"Jo�o Pessoa"', add
label define br10a_prevmuni_lbl 2507606 `"Juarez T�vora"', add
label define br10a_prevmuni_lbl 2507705 `"Juazeirinho"', add
label define br10a_prevmuni_lbl 2507804 `"Junco do Serid�"', add
label define br10a_prevmuni_lbl 2507903 `"Juripiranga"', add
label define br10a_prevmuni_lbl 2508000 `"Juru"', add
label define br10a_prevmuni_lbl 2508109 `"Lagoa"', add
label define br10a_prevmuni_lbl 2508208 `"Lagoa de Dentro"', add
label define br10a_prevmuni_lbl 2508307 `"Lagoa Seca"', add
label define br10a_prevmuni_lbl 2508406 `"Lastro"', add
label define br10a_prevmuni_lbl 2508505 `"Livramento"', add
label define br10a_prevmuni_lbl 2508554 `"Logradouro"', add
label define br10a_prevmuni_lbl 2508604 `"Lucena"', add
label define br10a_prevmuni_lbl 2508703 `"M�e d'�gua"', add
label define br10a_prevmuni_lbl 2508802 `"Malta"', add
label define br10a_prevmuni_lbl 2508901 `"Mamanguape"', add
label define br10a_prevmuni_lbl 2509008 `"Mana�ra"', add
label define br10a_prevmuni_lbl 2509057 `"Marca��o"', add
label define br10a_prevmuni_lbl 2509107 `"Mari"', add
label define br10a_prevmuni_lbl 2509156 `"Mariz�polis"', add
label define br10a_prevmuni_lbl 2509206 `"Massaranduba"', add
label define br10a_prevmuni_lbl 2509305 `"Mataraca"', add
label define br10a_prevmuni_lbl 2509339 `"Matinhas"', add
label define br10a_prevmuni_lbl 2509370 `"Mato Grosso"', add
label define br10a_prevmuni_lbl 2509396 `"Matur�ia"', add
label define br10a_prevmuni_lbl 2509404 `"Mogeiro"', add
label define br10a_prevmuni_lbl 2509503 `"Montadas"', add
label define br10a_prevmuni_lbl 2509602 `"Monte Horebe"', add
label define br10a_prevmuni_lbl 2509701 `"Monteiro"', add
label define br10a_prevmuni_lbl 2509800 `"Mulungu"', add
label define br10a_prevmuni_lbl 2509909 `"Natuba"', add
label define br10a_prevmuni_lbl 2510006 `"Nazarezinho"', add
label define br10a_prevmuni_lbl 2510105 `"Nova Floresta"', add
label define br10a_prevmuni_lbl 2510204 `"Nova Olinda"', add
label define br10a_prevmuni_lbl 2510303 `"Nova Palmeira"', add
label define br10a_prevmuni_lbl 2510402 `"Olho d'�gua"', add
label define br10a_prevmuni_lbl 2510501 `"Olivedos"', add
label define br10a_prevmuni_lbl 2510600 `"Ouro Velho"', add
label define br10a_prevmuni_lbl 2510659 `"Parari"', add
label define br10a_prevmuni_lbl 2510709 `"Passagem"', add
label define br10a_prevmuni_lbl 2510808 `"Patos"', add
label define br10a_prevmuni_lbl 2510907 `"Paulista"', add
label define br10a_prevmuni_lbl 2511004 `"Pedra Branca"', add
label define br10a_prevmuni_lbl 2511103 `"Pedra Lavrada"', add
label define br10a_prevmuni_lbl 2511202 `"Pedras de Fogo"', add
label define br10a_prevmuni_lbl 2511301 `"Pianc�"', add
label define br10a_prevmuni_lbl 2511400 `"Picu�"', add
label define br10a_prevmuni_lbl 2511509 `"Pilar"', add
label define br10a_prevmuni_lbl 2511608 `"Pil�es"', add
label define br10a_prevmuni_lbl 2511707 `"Pil�ezinhos"', add
label define br10a_prevmuni_lbl 2511806 `"Pirpirituba"', add
label define br10a_prevmuni_lbl 2511905 `"Pitimbu"', add
label define br10a_prevmuni_lbl 2512002 `"Pocinhos"', add
label define br10a_prevmuni_lbl 2512036 `"Po�o Dantas"', add
label define br10a_prevmuni_lbl 2512077 `"Po�o de Jos� de Moura"', add
label define br10a_prevmuni_lbl 2512101 `"Pombal"', add
label define br10a_prevmuni_lbl 2512200 `"Prata"', add
label define br10a_prevmuni_lbl 2512309 `"Princesa Isabel"', add
label define br10a_prevmuni_lbl 2512408 `"Puxinan�"', add
label define br10a_prevmuni_lbl 2512507 `"Queimadas"', add
label define br10a_prevmuni_lbl 2512606 `"Quixab�"', add
label define br10a_prevmuni_lbl 2512705 `"Rem�gio"', add
label define br10a_prevmuni_lbl 2512721 `"Pedro R�gis"', add
label define br10a_prevmuni_lbl 2512747 `"Riach�o"', add
label define br10a_prevmuni_lbl 2512754 `"Riach�o do Bacamarte"', add
label define br10a_prevmuni_lbl 2512762 `"Riach�o do Po�o"', add
label define br10a_prevmuni_lbl 2512788 `"Riacho de Santo Ant�nio"', add
label define br10a_prevmuni_lbl 2512804 `"Riacho dos Cavalos"', add
label define br10a_prevmuni_lbl 2512903 `"Rio Tinto"', add
label define br10a_prevmuni_lbl 2513000 `"Salgadinho"', add
label define br10a_prevmuni_lbl 2513109 `"Salgado de S�o F�lix"', add
label define br10a_prevmuni_lbl 2513158 `"Santa Cec�lia"', add
label define br10a_prevmuni_lbl 2513208 `"Santa Cruz"', add
label define br10a_prevmuni_lbl 2513307 `"Santa Helena"', add
label define br10a_prevmuni_lbl 2513356 `"Santa In�s"', add
label define br10a_prevmuni_lbl 2513406 `"Santa Luzia"', add
label define br10a_prevmuni_lbl 2513505 `"Santana de Mangueira"', add
label define br10a_prevmuni_lbl 2513604 `"Santana dos Garrotes"', add
label define br10a_prevmuni_lbl 2513653 `"Santar�m"', add
label define br10a_prevmuni_lbl 2513703 `"Santa Rita"', add
label define br10a_prevmuni_lbl 2513802 `"Santa Teresinha"', add
label define br10a_prevmuni_lbl 2513851 `"Santo Andr�"', add
label define br10a_prevmuni_lbl 2513901 `"S�o Bento"', add
label define br10a_prevmuni_lbl 2513927 `"S�o Bentinho"', add
label define br10a_prevmuni_lbl 2513943 `"S�o Domingos do Cariri"', add
label define br10a_prevmuni_lbl 2513968 `"S�o Domingos"', add
label define br10a_prevmuni_lbl 2513984 `"S�o Francisco"', add
label define br10a_prevmuni_lbl 2514008 `"S�o Jo�o do Cariri"', add
label define br10a_prevmuni_lbl 2514107 `"S�o Jo�o do Tigre"', add
label define br10a_prevmuni_lbl 2514206 `"S�o Jos� da Lagoa Tapada"', add
label define br10a_prevmuni_lbl 2514305 `"S�o Jos� de Caiana"', add
label define br10a_prevmuni_lbl 2514404 `"S�o Jos� de Espinharas"', add
label define br10a_prevmuni_lbl 2514453 `"S�o Jos� dos Ramos"', add
label define br10a_prevmuni_lbl 2514503 `"S�o Jos� de Piranhas"', add
label define br10a_prevmuni_lbl 2514552 `"S�o Jos� de Princesa"', add
label define br10a_prevmuni_lbl 2514602 `"S�o Jos� do Bonfim"', add
label define br10a_prevmuni_lbl 2514651 `"S�o Jos� do Brejo do Cruz"', add
label define br10a_prevmuni_lbl 2514701 `"S�o Jos� do Sabugi"', add
label define br10a_prevmuni_lbl 2514800 `"S�o Jos� dos Cordeiros"', add
label define br10a_prevmuni_lbl 2514909 `"S�o Mamede"', add
label define br10a_prevmuni_lbl 2515005 `"S�o Miguel de Taipu"', add
label define br10a_prevmuni_lbl 2515104 `"S�o Sebasti�o de Lagoa de Ro�a"', add
label define br10a_prevmuni_lbl 2515203 `"S�o Sebasti�o do Umbuzeiro"', add
label define br10a_prevmuni_lbl 2515302 `"Sap�"', add
label define br10a_prevmuni_lbl 2515401 `"Serid�"', add
label define br10a_prevmuni_lbl 2515500 `"Serra Branca"', add
label define br10a_prevmuni_lbl 2515609 `"Serra da Raiz"', add
label define br10a_prevmuni_lbl 2515708 `"Serra Grande"', add
label define br10a_prevmuni_lbl 2515807 `"Serra Redonda"', add
label define br10a_prevmuni_lbl 2515906 `"Serraria"', add
label define br10a_prevmuni_lbl 2515930 `"Sert�ozinho"', add
label define br10a_prevmuni_lbl 2515971 `"Sobrado"', add
label define br10a_prevmuni_lbl 2516003 `"Sol�nea"', add
label define br10a_prevmuni_lbl 2516102 `"Soledade"', add
label define br10a_prevmuni_lbl 2516151 `"Soss�go"', add
label define br10a_prevmuni_lbl 2516201 `"Sousa"', add
label define br10a_prevmuni_lbl 2516300 `"Sum�"', add
label define br10a_prevmuni_lbl 2516409 `"Tacima"', add
label define br10a_prevmuni_lbl 2516508 `"Tapero�"', add
label define br10a_prevmuni_lbl 2516607 `"Tavares"', add
label define br10a_prevmuni_lbl 2516706 `"Teixeira"', add
label define br10a_prevmuni_lbl 2516755 `"Ten�rio"', add
label define br10a_prevmuni_lbl 2516805 `"Triunfo"', add
label define br10a_prevmuni_lbl 2516904 `"Uira�na"', add
label define br10a_prevmuni_lbl 2517001 `"Umbuzeiro"', add
label define br10a_prevmuni_lbl 2517100 `"V�rzea"', add
label define br10a_prevmuni_lbl 2517209 `"Vieir�polis"', add
label define br10a_prevmuni_lbl 2517407 `"Zabel�"', add
label define br10a_prevmuni_lbl 2599999 `"Para�ba, municipality unknown"', add
label define br10a_prevmuni_lbl 2600054 `"Abreu e Lima"', add
label define br10a_prevmuni_lbl 2600104 `"Afogados da Ingazeira"', add
label define br10a_prevmuni_lbl 2600203 `"Afr�nio"', add
label define br10a_prevmuni_lbl 2600302 `"Agrestina"', add
label define br10a_prevmuni_lbl 2600401 `"�gua Preta"', add
label define br10a_prevmuni_lbl 2600500 `"�guas Belas"', add
label define br10a_prevmuni_lbl 2600609 `"Alagoinha"', add
label define br10a_prevmuni_lbl 2600708 `"Alian�a"', add
label define br10a_prevmuni_lbl 2600807 `"Altinho"', add
label define br10a_prevmuni_lbl 2600906 `"Amaraji"', add
label define br10a_prevmuni_lbl 2601003 `"Angelim"', add
label define br10a_prevmuni_lbl 2601052 `"Ara�oiaba"', add
label define br10a_prevmuni_lbl 2601102 `"Araripina"', add
label define br10a_prevmuni_lbl 2601201 `"Arcoverde"', add
label define br10a_prevmuni_lbl 2601300 `"Barra de Guabiraba"', add
label define br10a_prevmuni_lbl 2601409 `"Barreiros"', add
label define br10a_prevmuni_lbl 2601508 `"Bel�m de Maria"', add
label define br10a_prevmuni_lbl 2601607 `"Bel�m do S�o Francisco"', add
label define br10a_prevmuni_lbl 2601706 `"Belo Jardim"', add
label define br10a_prevmuni_lbl 2601805 `"Bet�nia"', add
label define br10a_prevmuni_lbl 2601904 `"Bezerros"', add
label define br10a_prevmuni_lbl 2602001 `"Bodoc�"', add
label define br10a_prevmuni_lbl 2602100 `"Bom Conselho"', add
label define br10a_prevmuni_lbl 2602209 `"Bom Jardim"', add
label define br10a_prevmuni_lbl 2602308 `"Bonito"', add
label define br10a_prevmuni_lbl 2602407 `"Brej�o"', add
label define br10a_prevmuni_lbl 2602506 `"Brejinho"', add
label define br10a_prevmuni_lbl 2602605 `"Brejo da Madre de Deus"', add
label define br10a_prevmuni_lbl 2602704 `"Buenos Aires"', add
label define br10a_prevmuni_lbl 2602803 `"Bu�que"', add
label define br10a_prevmuni_lbl 2602902 `"Cabo de Santo Agostinho"', add
label define br10a_prevmuni_lbl 2603009 `"Cabrob�"', add
label define br10a_prevmuni_lbl 2603108 `"Cachoeirinha"', add
label define br10a_prevmuni_lbl 2603207 `"Caet�s"', add
label define br10a_prevmuni_lbl 2603306 `"Cal�ado"', add
label define br10a_prevmuni_lbl 2603405 `"Calumbi"', add
label define br10a_prevmuni_lbl 2603454 `"Camaragibe"', add
label define br10a_prevmuni_lbl 2603504 `"Camocim de S�o F�lix"', add
label define br10a_prevmuni_lbl 2603603 `"Camutanga"', add
label define br10a_prevmuni_lbl 2603702 `"Canhotinho"', add
label define br10a_prevmuni_lbl 2603801 `"Capoeiras"', add
label define br10a_prevmuni_lbl 2603900 `"Carna�ba"', add
label define br10a_prevmuni_lbl 2603926 `"Carnaubeira da Penha"', add
label define br10a_prevmuni_lbl 2604007 `"Carpina"', add
label define br10a_prevmuni_lbl 2604106 `"Caruaru"', add
label define br10a_prevmuni_lbl 2604155 `"Casinhas"', add
label define br10a_prevmuni_lbl 2604205 `"Catende"', add
label define br10a_prevmuni_lbl 2604304 `"Cedro"', add
label define br10a_prevmuni_lbl 2604403 `"Ch� de Alegria"', add
label define br10a_prevmuni_lbl 2604502 `"Ch� Grande"', add
label define br10a_prevmuni_lbl 2604601 `"Condado"', add
label define br10a_prevmuni_lbl 2604700 `"Correntes"', add
label define br10a_prevmuni_lbl 2604809 `"Cort�s"', add
label define br10a_prevmuni_lbl 2604908 `"Cumaru"', add
label define br10a_prevmuni_lbl 2605004 `"Cupira"', add
label define br10a_prevmuni_lbl 2605103 `"Cust�dia"', add
label define br10a_prevmuni_lbl 2605152 `"Dormentes"', add
label define br10a_prevmuni_lbl 2605202 `"Escada"', add
label define br10a_prevmuni_lbl 2605301 `"Exu"', add
label define br10a_prevmuni_lbl 2605400 `"Feira Nova"', add
label define br10a_prevmuni_lbl 2605459 `"Fernando de Noronha"', add
label define br10a_prevmuni_lbl 2605509 `"Ferreiros"', add
label define br10a_prevmuni_lbl 2605608 `"Flores"', add
label define br10a_prevmuni_lbl 2605707 `"Floresta"', add
label define br10a_prevmuni_lbl 2605806 `"Frei Miguelinho"', add
label define br10a_prevmuni_lbl 2605905 `"Gameleira"', add
label define br10a_prevmuni_lbl 2606002 `"Garanhuns"', add
label define br10a_prevmuni_lbl 2606101 `"Gl�ria do Goit�"', add
label define br10a_prevmuni_lbl 2606200 `"Goiana"', add
label define br10a_prevmuni_lbl 2606309 `"Granito"', add
label define br10a_prevmuni_lbl 2606408 `"Gravat�"', add
label define br10a_prevmuni_lbl 2606507 `"Iati"', add
label define br10a_prevmuni_lbl 2606606 `"Ibimirim"', add
label define br10a_prevmuni_lbl 2606705 `"Ibirajuba"', add
label define br10a_prevmuni_lbl 2606804 `"Igarassu"', add
label define br10a_prevmuni_lbl 2606903 `"Iguaraci"', add
label define br10a_prevmuni_lbl 2607000 `"Inaj�"', add
label define br10a_prevmuni_lbl 2607109 `"Ingazeira"', add
label define br10a_prevmuni_lbl 2607208 `"Ipojuca"', add
label define br10a_prevmuni_lbl 2607307 `"Ipubi"', add
label define br10a_prevmuni_lbl 2607406 `"Itacuruba"', add
label define br10a_prevmuni_lbl 2607505 `"Ita�ba"', add
label define br10a_prevmuni_lbl 2607604 `"Ilha de Itamarac�"', add
label define br10a_prevmuni_lbl 2607653 `"Itamb�"', add
label define br10a_prevmuni_lbl 2607703 `"Itapetim"', add
label define br10a_prevmuni_lbl 2607752 `"Itapissuma"', add
label define br10a_prevmuni_lbl 2607802 `"Itaquitinga"', add
label define br10a_prevmuni_lbl 2607901 `"Jaboat�o dos Guararapes"', add
label define br10a_prevmuni_lbl 2607950 `"Jaqueira"', add
label define br10a_prevmuni_lbl 2608008 `"Jata�ba"', add
label define br10a_prevmuni_lbl 2608057 `"Jatob�"', add
label define br10a_prevmuni_lbl 2608107 `"Jo�o Alfredo"', add
label define br10a_prevmuni_lbl 2608206 `"Joaquim Nabuco"', add
label define br10a_prevmuni_lbl 2608255 `"Jucati"', add
label define br10a_prevmuni_lbl 2608305 `"Jupi"', add
label define br10a_prevmuni_lbl 2608404 `"Jurema"', add
label define br10a_prevmuni_lbl 2608453 `"Lagoa do Carro"', add
label define br10a_prevmuni_lbl 2608503 `"Lagoa de Itaenga"', add
label define br10a_prevmuni_lbl 2608602 `"Lagoa do Ouro"', add
label define br10a_prevmuni_lbl 2608701 `"Lagoa dos Gatos"', add
label define br10a_prevmuni_lbl 2608750 `"Lagoa Grande"', add
label define br10a_prevmuni_lbl 2608800 `"Lajedo"', add
label define br10a_prevmuni_lbl 2608909 `"Limoeiro"', add
label define br10a_prevmuni_lbl 2609006 `"Macaparana"', add
label define br10a_prevmuni_lbl 2609105 `"Machados"', add
label define br10a_prevmuni_lbl 2609154 `"Manari"', add
label define br10a_prevmuni_lbl 2609204 `"Maraial"', add
label define br10a_prevmuni_lbl 2609303 `"Mirandiba"', add
label define br10a_prevmuni_lbl 2609402 `"Moreno"', add
label define br10a_prevmuni_lbl 2609501 `"Nazar� da Mata"', add
label define br10a_prevmuni_lbl 2609600 `"Olinda"', add
label define br10a_prevmuni_lbl 2609709 `"Orob�"', add
label define br10a_prevmuni_lbl 2609808 `"Oroc�"', add
label define br10a_prevmuni_lbl 2609907 `"Ouricuri"', add
label define br10a_prevmuni_lbl 2610004 `"Palmares"', add
label define br10a_prevmuni_lbl 2610103 `"Palmeirina"', add
label define br10a_prevmuni_lbl 2610202 `"Panelas"', add
label define br10a_prevmuni_lbl 2610301 `"Paranatama"', add
label define br10a_prevmuni_lbl 2610400 `"Parnamirim"', add
label define br10a_prevmuni_lbl 2610509 `"Passira"', add
label define br10a_prevmuni_lbl 2610608 `"Paudalho"', add
label define br10a_prevmuni_lbl 2610707 `"Paulista"', add
label define br10a_prevmuni_lbl 2610806 `"Pedra"', add
label define br10a_prevmuni_lbl 2610905 `"Pesqueira"', add
label define br10a_prevmuni_lbl 2611002 `"Petrol�ndia"', add
label define br10a_prevmuni_lbl 2611101 `"Petrolina"', add
label define br10a_prevmuni_lbl 2611200 `"Po��o"', add
label define br10a_prevmuni_lbl 2611309 `"Pombos"', add
label define br10a_prevmuni_lbl 2611408 `"Primavera"', add
label define br10a_prevmuni_lbl 2611507 `"Quipap�"', add
label define br10a_prevmuni_lbl 2611533 `"Quixaba"', add
label define br10a_prevmuni_lbl 2611606 `"Recife"', add
label define br10a_prevmuni_lbl 2611705 `"Riacho das Almas"', add
label define br10a_prevmuni_lbl 2611804 `"Ribeir�o"', add
label define br10a_prevmuni_lbl 2611903 `"Rio Formoso"', add
label define br10a_prevmuni_lbl 2612000 `"Sair�"', add
label define br10a_prevmuni_lbl 2612109 `"Salgadinho"', add
label define br10a_prevmuni_lbl 2612208 `"Salgueiro"', add
label define br10a_prevmuni_lbl 2612307 `"Salo�"', add
label define br10a_prevmuni_lbl 2612406 `"Sanhar�"', add
label define br10a_prevmuni_lbl 2612455 `"Santa Cruz"', add
label define br10a_prevmuni_lbl 2612471 `"Santa Cruz da Baixa Verde"', add
label define br10a_prevmuni_lbl 2612505 `"Santa Cruz do Capibaribe"', add
label define br10a_prevmuni_lbl 2612554 `"Santa Filomena"', add
label define br10a_prevmuni_lbl 2612604 `"Santa Maria da Boa Vista"', add
label define br10a_prevmuni_lbl 2612703 `"Santa Maria do Cambuc�"', add
label define br10a_prevmuni_lbl 2612802 `"Santa Terezinha"', add
label define br10a_prevmuni_lbl 2612901 `"S�o Benedito do Sul"', add
label define br10a_prevmuni_lbl 2613008 `"S�o Bento do Una"', add
label define br10a_prevmuni_lbl 2613107 `"S�o Caitano"', add
label define br10a_prevmuni_lbl 2613206 `"S�o Jo�o"', add
label define br10a_prevmuni_lbl 2613305 `"S�o Joaquim do Monte"', add
label define br10a_prevmuni_lbl 2613404 `"S�o Jos� da Coroa Grande"', add
label define br10a_prevmuni_lbl 2613503 `"S�o Jos� do Belmonte"', add
label define br10a_prevmuni_lbl 2613602 `"S�o Jos� do Egito"', add
label define br10a_prevmuni_lbl 2613701 `"S�o Louren�o da Mata"', add
label define br10a_prevmuni_lbl 2613800 `"S�o Vicente Ferrer"', add
label define br10a_prevmuni_lbl 2613909 `"Serra Talhada"', add
label define br10a_prevmuni_lbl 2614006 `"Serrita"', add
label define br10a_prevmuni_lbl 2614105 `"Sert�nia"', add
label define br10a_prevmuni_lbl 2614204 `"Sirinha�m"', add
label define br10a_prevmuni_lbl 2614303 `"Moreil�ndia"', add
label define br10a_prevmuni_lbl 2614402 `"Solid�o"', add
label define br10a_prevmuni_lbl 2614501 `"Surubim"', add
label define br10a_prevmuni_lbl 2614600 `"Tabira"', add
label define br10a_prevmuni_lbl 2614709 `"Tacaimb�"', add
label define br10a_prevmuni_lbl 2614808 `"Tacaratu"', add
label define br10a_prevmuni_lbl 2614857 `"Tamandar�"', add
label define br10a_prevmuni_lbl 2615003 `"Taquaritinga do Norte"', add
label define br10a_prevmuni_lbl 2615102 `"Terezinha"', add
label define br10a_prevmuni_lbl 2615201 `"Terra Nova"', add
label define br10a_prevmuni_lbl 2615300 `"Timba�ba"', add
label define br10a_prevmuni_lbl 2615409 `"Toritama"', add
label define br10a_prevmuni_lbl 2615508 `"Tracunha�m"', add
label define br10a_prevmuni_lbl 2615607 `"Trindade"', add
label define br10a_prevmuni_lbl 2615706 `"Triunfo"', add
label define br10a_prevmuni_lbl 2615805 `"Tupanatinga"', add
label define br10a_prevmuni_lbl 2615904 `"Tuparetama"', add
label define br10a_prevmuni_lbl 2616001 `"Venturosa"', add
label define br10a_prevmuni_lbl 2616100 `"Verdejante"', add
label define br10a_prevmuni_lbl 2616183 `"Vertente do L�rio"', add
label define br10a_prevmuni_lbl 2616209 `"Vertentes"', add
label define br10a_prevmuni_lbl 2616308 `"Vic�ncia"', add
label define br10a_prevmuni_lbl 2616407 `"Vit�ria de Santo Ant�o"', add
label define br10a_prevmuni_lbl 2616506 `"Xex�u"', add
label define br10a_prevmuni_lbl 2699999 `"Pernambuco, municipality unknown"', add
label define br10a_prevmuni_lbl 2700102 `"�gua Branca"', add
label define br10a_prevmuni_lbl 2700201 `"Anadia"', add
label define br10a_prevmuni_lbl 2700300 `"Arapiraca"', add
label define br10a_prevmuni_lbl 2700409 `"Atalaia"', add
label define br10a_prevmuni_lbl 2700508 `"Barra de Santo Ant�nio"', add
label define br10a_prevmuni_lbl 2700607 `"Barra de S�o Miguel"', add
label define br10a_prevmuni_lbl 2700706 `"Batalha"', add
label define br10a_prevmuni_lbl 2700805 `"Bel�m"', add
label define br10a_prevmuni_lbl 2700904 `"Belo Monte"', add
label define br10a_prevmuni_lbl 2701001 `"Boca da Mata"', add
label define br10a_prevmuni_lbl 2701100 `"Branquinha"', add
label define br10a_prevmuni_lbl 2701209 `"Cacimbinhas"', add
label define br10a_prevmuni_lbl 2701308 `"Cajueiro"', add
label define br10a_prevmuni_lbl 2701357 `"Campestre"', add
label define br10a_prevmuni_lbl 2701407 `"Campo Alegre"', add
label define br10a_prevmuni_lbl 2701506 `"Campo Grande"', add
label define br10a_prevmuni_lbl 2701605 `"Canapi"', add
label define br10a_prevmuni_lbl 2701704 `"Capela"', add
label define br10a_prevmuni_lbl 2701803 `"Carneiros"', add
label define br10a_prevmuni_lbl 2701902 `"Ch� Preta"', add
label define br10a_prevmuni_lbl 2702009 `"Coit� do N�ia"', add
label define br10a_prevmuni_lbl 2702108 `"Col�nia Leopoldina"', add
label define br10a_prevmuni_lbl 2702207 `"Coqueiro Seco"', add
label define br10a_prevmuni_lbl 2702306 `"Coruripe"', add
label define br10a_prevmuni_lbl 2702355 `"Cra�bas"', add
label define br10a_prevmuni_lbl 2702405 `"Delmiro Gouveia"', add
label define br10a_prevmuni_lbl 2702504 `"Dois Riachos"', add
label define br10a_prevmuni_lbl 2702553 `"Estrela de Alagoas"', add
label define br10a_prevmuni_lbl 2702603 `"Feira Grande"', add
label define br10a_prevmuni_lbl 2702702 `"Feliz Deserto"', add
label define br10a_prevmuni_lbl 2702801 `"Flexeiras"', add
label define br10a_prevmuni_lbl 2702900 `"Girau do Ponciano"', add
label define br10a_prevmuni_lbl 2703007 `"Ibateguara"', add
label define br10a_prevmuni_lbl 2703106 `"Igaci"', add
label define br10a_prevmuni_lbl 2703205 `"Igreja Nova"', add
label define br10a_prevmuni_lbl 2703304 `"Inhapi"', add
label define br10a_prevmuni_lbl 2703403 `"Jacar� dos Homens"', add
label define br10a_prevmuni_lbl 2703502 `"Jacu�pe"', add
label define br10a_prevmuni_lbl 2703601 `"Japaratinga"', add
label define br10a_prevmuni_lbl 2703700 `"Jaramataia"', add
label define br10a_prevmuni_lbl 2703759 `"Jequi� da Praia"', add
label define br10a_prevmuni_lbl 2703809 `"Joaquim Gomes"', add
label define br10a_prevmuni_lbl 2703908 `"Jundi�"', add
label define br10a_prevmuni_lbl 2704005 `"Junqueiro"', add
label define br10a_prevmuni_lbl 2704104 `"Lagoa da Canoa"', add
label define br10a_prevmuni_lbl 2704203 `"Limoeiro de Anadia"', add
label define br10a_prevmuni_lbl 2704302 `"Macei�"', add
label define br10a_prevmuni_lbl 2704401 `"Major Isidoro"', add
label define br10a_prevmuni_lbl 2704500 `"Maragogi"', add
label define br10a_prevmuni_lbl 2704609 `"Maravilha"', add
label define br10a_prevmuni_lbl 2704708 `"Marechal Deodoro"', add
label define br10a_prevmuni_lbl 2704807 `"Maribondo"', add
label define br10a_prevmuni_lbl 2704906 `"Mar Vermelho"', add
label define br10a_prevmuni_lbl 2705002 `"Mata Grande"', add
label define br10a_prevmuni_lbl 2705101 `"Matriz de Camaragibe"', add
label define br10a_prevmuni_lbl 2705200 `"Messias"', add
label define br10a_prevmuni_lbl 2705309 `"Minador do Negr�o"', add
label define br10a_prevmuni_lbl 2705408 `"Monteir�polis"', add
label define br10a_prevmuni_lbl 2705507 `"Murici"', add
label define br10a_prevmuni_lbl 2705606 `"Novo Lino"', add
label define br10a_prevmuni_lbl 2705705 `"Olho d'�gua das Flores"', add
label define br10a_prevmuni_lbl 2705804 `"Olho d'�gua do Casado"', add
label define br10a_prevmuni_lbl 2705903 `"Olho d'�gua Grande"', add
label define br10a_prevmuni_lbl 2706000 `"Oliven�a"', add
label define br10a_prevmuni_lbl 2706109 `"Ouro Branco"', add
label define br10a_prevmuni_lbl 2706208 `"Palestina"', add
label define br10a_prevmuni_lbl 2706307 `"Palmeira dos �ndios"', add
label define br10a_prevmuni_lbl 2706406 `"P�o de A��car"', add
label define br10a_prevmuni_lbl 2706422 `"Pariconha"', add
label define br10a_prevmuni_lbl 2706448 `"Paripueira"', add
label define br10a_prevmuni_lbl 2706505 `"Passo de Camaragibe"', add
label define br10a_prevmuni_lbl 2706604 `"Paulo Jacinto"', add
label define br10a_prevmuni_lbl 2706703 `"Penedo"', add
label define br10a_prevmuni_lbl 2706802 `"Pia�abu�u"', add
label define br10a_prevmuni_lbl 2706901 `"Pilar"', add
label define br10a_prevmuni_lbl 2707008 `"Pindoba"', add
label define br10a_prevmuni_lbl 2707107 `"Piranhas"', add
label define br10a_prevmuni_lbl 2707206 `"Po�o das Trincheiras"', add
label define br10a_prevmuni_lbl 2707305 `"Porto Calvo"', add
label define br10a_prevmuni_lbl 2707404 `"Porto de Pedras"', add
label define br10a_prevmuni_lbl 2707503 `"Porto Real do Col�gio"', add
label define br10a_prevmuni_lbl 2707602 `"Quebrangulo"', add
label define br10a_prevmuni_lbl 2707701 `"Rio Largo"', add
label define br10a_prevmuni_lbl 2707800 `"Roteiro"', add
label define br10a_prevmuni_lbl 2707909 `"Santa Luzia do Norte"', add
label define br10a_prevmuni_lbl 2708006 `"Santana do Ipanema"', add
label define br10a_prevmuni_lbl 2708105 `"Santana do Munda�"', add
label define br10a_prevmuni_lbl 2708204 `"S�o Br�s"', add
label define br10a_prevmuni_lbl 2708303 `"S�o Jos� da Laje"', add
label define br10a_prevmuni_lbl 2708402 `"S�o Jos� da Tapera"', add
label define br10a_prevmuni_lbl 2708501 `"S�o Lu�s do Quitunde"', add
label define br10a_prevmuni_lbl 2708600 `"S�o Miguel dos Campos"', add
label define br10a_prevmuni_lbl 2708709 `"S�o Miguel dos Milagres"', add
label define br10a_prevmuni_lbl 2708808 `"S�o Sebasti�o"', add
label define br10a_prevmuni_lbl 2708907 `"Satuba"', add
label define br10a_prevmuni_lbl 2708956 `"Senador Rui Palmeira"', add
label define br10a_prevmuni_lbl 2709004 `"Tanque d'Arca"', add
label define br10a_prevmuni_lbl 2709103 `"Taquarana"', add
label define br10a_prevmuni_lbl 2709152 `"Teot�nio Vilela"', add
label define br10a_prevmuni_lbl 2709202 `"Traipu"', add
label define br10a_prevmuni_lbl 2709301 `"Uni�o dos Palmares"', add
label define br10a_prevmuni_lbl 2709400 `"Vi�osa"', add
label define br10a_prevmuni_lbl 2799999 `"Alagoas, municipality unknown"', add
label define br10a_prevmuni_lbl 2800100 `"Amparo de S�o Francisco"', add
label define br10a_prevmuni_lbl 2800209 `"Aquidab�"', add
label define br10a_prevmuni_lbl 2800308 `"Aracaju"', add
label define br10a_prevmuni_lbl 2800407 `"Arau�"', add
label define br10a_prevmuni_lbl 2800506 `"Areia Branca"', add
label define br10a_prevmuni_lbl 2800605 `"Barra dos Coqueiros"', add
label define br10a_prevmuni_lbl 2800670 `"Boquim"', add
label define br10a_prevmuni_lbl 2800704 `"Brejo Grande"', add
label define br10a_prevmuni_lbl 2801009 `"Campo do Brito"', add
label define br10a_prevmuni_lbl 2801108 `"Canhoba"', add
label define br10a_prevmuni_lbl 2801207 `"Canind� de S�o Francisco"', add
label define br10a_prevmuni_lbl 2801306 `"Capela"', add
label define br10a_prevmuni_lbl 2801405 `"Carira"', add
label define br10a_prevmuni_lbl 2801504 `"Carm�polis"', add
label define br10a_prevmuni_lbl 2801603 `"Cedro de S�o Jo�o"', add
label define br10a_prevmuni_lbl 2801702 `"Cristin�polis"', add
label define br10a_prevmuni_lbl 2801900 `"Cumbe"', add
label define br10a_prevmuni_lbl 2802007 `"Divina Pastora"', add
label define br10a_prevmuni_lbl 2802106 `"Est�ncia"', add
label define br10a_prevmuni_lbl 2802205 `"Feira Nova"', add
label define br10a_prevmuni_lbl 2802304 `"Frei Paulo"', add
label define br10a_prevmuni_lbl 2802403 `"Gararu"', add
label define br10a_prevmuni_lbl 2802502 `"General Maynard"', add
label define br10a_prevmuni_lbl 2802601 `"Gracho Cardoso"', add
label define br10a_prevmuni_lbl 2802700 `"Ilha das Flores"', add
label define br10a_prevmuni_lbl 2802809 `"Indiaroba"', add
label define br10a_prevmuni_lbl 2802908 `"Itabaiana"', add
label define br10a_prevmuni_lbl 2803005 `"Itabaianinha"', add
label define br10a_prevmuni_lbl 2803104 `"Itabi"', add
label define br10a_prevmuni_lbl 2803203 `"Itaporanga d'Ajuda"', add
label define br10a_prevmuni_lbl 2803302 `"Japaratuba"', add
label define br10a_prevmuni_lbl 2803401 `"Japoat�"', add
label define br10a_prevmuni_lbl 2803500 `"Lagarto"', add
label define br10a_prevmuni_lbl 2803609 `"Laranjeiras"', add
label define br10a_prevmuni_lbl 2803708 `"Macambira"', add
label define br10a_prevmuni_lbl 2803807 `"Malhada dos Bois"', add
label define br10a_prevmuni_lbl 2803906 `"Malhador"', add
label define br10a_prevmuni_lbl 2804003 `"Maruim"', add
label define br10a_prevmuni_lbl 2804102 `"Moita Bonita"', add
label define br10a_prevmuni_lbl 2804201 `"Monte Alegre de Sergipe"', add
label define br10a_prevmuni_lbl 2804300 `"Muribeca"', add
label define br10a_prevmuni_lbl 2804409 `"Ne�polis"', add
label define br10a_prevmuni_lbl 2804458 `"Nossa Senhora Aparecida"', add
label define br10a_prevmuni_lbl 2804508 `"Nossa Senhora da Gl�ria"', add
label define br10a_prevmuni_lbl 2804607 `"Nossa Senhora das Dores"', add
label define br10a_prevmuni_lbl 2804706 `"Nossa Senhora de Lourdes"', add
label define br10a_prevmuni_lbl 2804805 `"Nossa Senhora do Socorro"', add
label define br10a_prevmuni_lbl 2804904 `"Pacatuba"', add
label define br10a_prevmuni_lbl 2805000 `"Pedra Mole"', add
label define br10a_prevmuni_lbl 2805109 `"Pedrinhas"', add
label define br10a_prevmuni_lbl 2805208 `"Pinh�o"', add
label define br10a_prevmuni_lbl 2805307 `"Pirambu"', add
label define br10a_prevmuni_lbl 2805406 `"Po�o Redondo"', add
label define br10a_prevmuni_lbl 2805505 `"Po�o Verde"', add
label define br10a_prevmuni_lbl 2805604 `"Porto da Folha"', add
label define br10a_prevmuni_lbl 2805703 `"Propri�"', add
label define br10a_prevmuni_lbl 2805802 `"Riach�o do Dantas"', add
label define br10a_prevmuni_lbl 2805901 `"Riachuelo"', add
label define br10a_prevmuni_lbl 2806008 `"Ribeir�polis"', add
label define br10a_prevmuni_lbl 2806107 `"Ros�rio do Catete"', add
label define br10a_prevmuni_lbl 2806206 `"Salgado"', add
label define br10a_prevmuni_lbl 2806305 `"Santa Luzia do Itanhy"', add
label define br10a_prevmuni_lbl 2806404 `"Santana do S�o Francisco"', add
label define br10a_prevmuni_lbl 2806503 `"Santa Rosa de Lima"', add
label define br10a_prevmuni_lbl 2806602 `"Santo Amaro das Brotas"', add
label define br10a_prevmuni_lbl 2806701 `"S�o Crist�v�o"', add
label define br10a_prevmuni_lbl 2806800 `"S�o Domingos"', add
label define br10a_prevmuni_lbl 2806909 `"S�o Francisco"', add
label define br10a_prevmuni_lbl 2807006 `"S�o Miguel do Aleixo"', add
label define br10a_prevmuni_lbl 2807105 `"Sim�o Dias"', add
label define br10a_prevmuni_lbl 2807204 `"Siriri"', add
label define br10a_prevmuni_lbl 2807303 `"Telha"', add
label define br10a_prevmuni_lbl 2807402 `"Tobias Barreto"', add
label define br10a_prevmuni_lbl 2807501 `"Tomar do Geru"', add
label define br10a_prevmuni_lbl 2807600 `"Umba�ba"', add
label define br10a_prevmuni_lbl 2899999 `"Sergipe, municipality unknown"', add
label define br10a_prevmuni_lbl 2900108 `"Aba�ra"', add
label define br10a_prevmuni_lbl 2900207 `"Abar�"', add
label define br10a_prevmuni_lbl 2900306 `"Acajutiba"', add
label define br10a_prevmuni_lbl 2900355 `"Adustina"', add
label define br10a_prevmuni_lbl 2900405 `"�gua Fria"', add
label define br10a_prevmuni_lbl 2900504 `"�rico Cardoso"', add
label define br10a_prevmuni_lbl 2900603 `"Aiquara"', add
label define br10a_prevmuni_lbl 2900702 `"Alagoinhas"', add
label define br10a_prevmuni_lbl 2900801 `"Alcoba�a"', add
label define br10a_prevmuni_lbl 2900900 `"Almadina"', add
label define br10a_prevmuni_lbl 2901007 `"Amargosa"', add
label define br10a_prevmuni_lbl 2901106 `"Am�lia Rodrigues"', add
label define br10a_prevmuni_lbl 2901155 `"Am�rica Dourada"', add
label define br10a_prevmuni_lbl 2901205 `"Anag�"', add
label define br10a_prevmuni_lbl 2901304 `"Andara�"', add
label define br10a_prevmuni_lbl 2901353 `"Andorinha"', add
label define br10a_prevmuni_lbl 2901403 `"Angical"', add
label define br10a_prevmuni_lbl 2901502 `"Anguera"', add
label define br10a_prevmuni_lbl 2901601 `"Antas"', add
label define br10a_prevmuni_lbl 2901700 `"Ant�nio Cardoso"', add
label define br10a_prevmuni_lbl 2901809 `"Ant�nio Gon�alves"', add
label define br10a_prevmuni_lbl 2901908 `"Apor�"', add
label define br10a_prevmuni_lbl 2901957 `"Apuarema"', add
label define br10a_prevmuni_lbl 2902005 `"Aracatu"', add
label define br10a_prevmuni_lbl 2902054 `"Ara�as"', add
label define br10a_prevmuni_lbl 2902104 `"Araci"', add
label define br10a_prevmuni_lbl 2902203 `"Aramari"', add
label define br10a_prevmuni_lbl 2902252 `"Arataca"', add
label define br10a_prevmuni_lbl 2902302 `"Aratu�pe"', add
label define br10a_prevmuni_lbl 2902401 `"Aurelino Leal"', add
label define br10a_prevmuni_lbl 2902500 `"Baian�polis"', add
label define br10a_prevmuni_lbl 2902609 `"Baixa Grande"', add
label define br10a_prevmuni_lbl 2902658 `"Banza�"', add
label define br10a_prevmuni_lbl 2902708 `"Barra"', add
label define br10a_prevmuni_lbl 2902807 `"Barra da Estiva"', add
label define br10a_prevmuni_lbl 2902906 `"Barra do Cho�a"', add
label define br10a_prevmuni_lbl 2903003 `"Barra do Mendes"', add
label define br10a_prevmuni_lbl 2903102 `"Barra do Rocha"', add
label define br10a_prevmuni_lbl 2903201 `"Barreiras"', add
label define br10a_prevmuni_lbl 2903235 `"Barro Alto"', add
label define br10a_prevmuni_lbl 2903276 `"Barrocas"', add
label define br10a_prevmuni_lbl 2903300 `"Barro Preto"', add
label define br10a_prevmuni_lbl 2903409 `"Belmonte"', add
label define br10a_prevmuni_lbl 2903508 `"Belo Campo"', add
label define br10a_prevmuni_lbl 2903607 `"Biritinga"', add
label define br10a_prevmuni_lbl 2903706 `"Boa Nova"', add
label define br10a_prevmuni_lbl 2903805 `"Boa Vista do Tupim"', add
label define br10a_prevmuni_lbl 2903904 `"Bom Jesus da Lapa"', add
label define br10a_prevmuni_lbl 2903953 `"Bom Jesus da Serra"', add
label define br10a_prevmuni_lbl 2904001 `"Boninal"', add
label define br10a_prevmuni_lbl 2904050 `"Bonito"', add
label define br10a_prevmuni_lbl 2904100 `"Boquira"', add
label define br10a_prevmuni_lbl 2904209 `"Botupor�"', add
label define br10a_prevmuni_lbl 2904308 `"Brej�es"', add
label define br10a_prevmuni_lbl 2904407 `"Brejol�ndia"', add
label define br10a_prevmuni_lbl 2904506 `"Brotas de Maca�bas"', add
label define br10a_prevmuni_lbl 2904605 `"Brumado"', add
label define br10a_prevmuni_lbl 2904704 `"Buerarema"', add
label define br10a_prevmuni_lbl 2904753 `"Buritirama"', add
label define br10a_prevmuni_lbl 2904803 `"Caatiba"', add
label define br10a_prevmuni_lbl 2904852 `"Cabaceiras do Paragua�u"', add
label define br10a_prevmuni_lbl 2904902 `"Cachoeira"', add
label define br10a_prevmuni_lbl 2905008 `"Cacul�"', add
label define br10a_prevmuni_lbl 2905107 `"Ca�m"', add
label define br10a_prevmuni_lbl 2905156 `"Caetanos"', add
label define br10a_prevmuni_lbl 2905206 `"Caetit�"', add
label define br10a_prevmuni_lbl 2905305 `"Cafarnaum"', add
label define br10a_prevmuni_lbl 2905404 `"Cairu"', add
label define br10a_prevmuni_lbl 2905503 `"Caldeir�o Grande"', add
label define br10a_prevmuni_lbl 2905602 `"Camacan"', add
label define br10a_prevmuni_lbl 2905701 `"Cama�ari"', add
label define br10a_prevmuni_lbl 2905800 `"Camamu"', add
label define br10a_prevmuni_lbl 2905909 `"Campo Alegre de Lourdes"', add
label define br10a_prevmuni_lbl 2906006 `"Campo Formoso"', add
label define br10a_prevmuni_lbl 2906105 `"Can�polis"', add
label define br10a_prevmuni_lbl 2906204 `"Canarana"', add
label define br10a_prevmuni_lbl 2906303 `"Canavieiras"', add
label define br10a_prevmuni_lbl 2906402 `"Candeal"', add
label define br10a_prevmuni_lbl 2906501 `"Candeias"', add
label define br10a_prevmuni_lbl 2906600 `"Candiba"', add
label define br10a_prevmuni_lbl 2906709 `"C�ndido Sales"', add
label define br10a_prevmuni_lbl 2906808 `"Cansan��o"', add
label define br10a_prevmuni_lbl 2906824 `"Canudos"', add
label define br10a_prevmuni_lbl 2906857 `"Capela do Alto Alegre"', add
label define br10a_prevmuni_lbl 2906873 `"Capim Grosso"', add
label define br10a_prevmuni_lbl 2906899 `"Cara�bas"', add
label define br10a_prevmuni_lbl 2906907 `"Caravelas"', add
label define br10a_prevmuni_lbl 2907004 `"Cardeal da Silva"', add
label define br10a_prevmuni_lbl 2907103 `"Carinhanha"', add
label define br10a_prevmuni_lbl 2907202 `"Casa Nova"', add
label define br10a_prevmuni_lbl 2907301 `"Castro Alves"', add
label define br10a_prevmuni_lbl 2907400 `"Catol�ndia"', add
label define br10a_prevmuni_lbl 2907509 `"Catu"', add
label define br10a_prevmuni_lbl 2907558 `"Caturama"', add
label define br10a_prevmuni_lbl 2907608 `"Central"', add
label define br10a_prevmuni_lbl 2907707 `"Chorroch�"', add
label define br10a_prevmuni_lbl 2907806 `"C�cero Dantas"', add
label define br10a_prevmuni_lbl 2907905 `"Cip�"', add
label define br10a_prevmuni_lbl 2908002 `"Coaraci"', add
label define br10a_prevmuni_lbl 2908101 `"Cocos"', add
label define br10a_prevmuni_lbl 2908200 `"Concei��o da Feira"', add
label define br10a_prevmuni_lbl 2908309 `"Concei��o do Almeida"', add
label define br10a_prevmuni_lbl 2908408 `"Concei��o do Coit�"', add
label define br10a_prevmuni_lbl 2908507 `"Concei��o do Jacu�pe"', add
label define br10a_prevmuni_lbl 2908606 `"Conde"', add
label define br10a_prevmuni_lbl 2908705 `"Conde�ba"', add
label define br10a_prevmuni_lbl 2908804 `"Contendas do Sincor�"', add
label define br10a_prevmuni_lbl 2908903 `"Cora��o de Maria"', add
label define br10a_prevmuni_lbl 2909000 `"Cordeiros"', add
label define br10a_prevmuni_lbl 2909109 `"Coribe"', add
label define br10a_prevmuni_lbl 2909208 `"Coronel Jo�o S�"', add
label define br10a_prevmuni_lbl 2909307 `"Correntina"', add
label define br10a_prevmuni_lbl 2909406 `"Cotegipe"', add
label define br10a_prevmuni_lbl 2909505 `"Cravol�ndia"', add
label define br10a_prevmuni_lbl 2909604 `"Cris�polis"', add
label define br10a_prevmuni_lbl 2909703 `"Crist�polis"', add
label define br10a_prevmuni_lbl 2909802 `"Cruz das Almas"', add
label define br10a_prevmuni_lbl 2909901 `"Cura��"', add
label define br10a_prevmuni_lbl 2910008 `"D�rio Meira"', add
label define br10a_prevmuni_lbl 2910057 `"Dias d'�vila"', add
label define br10a_prevmuni_lbl 2910107 `"Dom Bas�lio"', add
label define br10a_prevmuni_lbl 2910206 `"Dom Macedo Costa"', add
label define br10a_prevmuni_lbl 2910305 `"El�sio Medrado"', add
label define br10a_prevmuni_lbl 2910404 `"Encruzilhada"', add
label define br10a_prevmuni_lbl 2910503 `"Entre Rios"', add
label define br10a_prevmuni_lbl 2910602 `"Esplanada"', add
label define br10a_prevmuni_lbl 2910701 `"Euclides da Cunha"', add
label define br10a_prevmuni_lbl 2910727 `"Eun�polis"', add
label define br10a_prevmuni_lbl 2910750 `"F�tima"', add
label define br10a_prevmuni_lbl 2910776 `"Feira da Mata"', add
label define br10a_prevmuni_lbl 2910800 `"Feira de Santana"', add
label define br10a_prevmuni_lbl 2910859 `"Filad�lfia"', add
label define br10a_prevmuni_lbl 2910909 `"Firmino Alves"', add
label define br10a_prevmuni_lbl 2911006 `"Floresta Azul"', add
label define br10a_prevmuni_lbl 2911105 `"Formosa do Rio Preto"', add
label define br10a_prevmuni_lbl 2911204 `"Gandu"', add
label define br10a_prevmuni_lbl 2911253 `"Gavi�o"', add
label define br10a_prevmuni_lbl 2911303 `"Gentio do Ouro"', add
label define br10a_prevmuni_lbl 2911402 `"Gl�ria"', add
label define br10a_prevmuni_lbl 2911501 `"Gongogi"', add
label define br10a_prevmuni_lbl 2911600 `"Governador Mangabeira"', add
label define br10a_prevmuni_lbl 2911659 `"Guajeru"', add
label define br10a_prevmuni_lbl 2911709 `"Guanambi"', add
label define br10a_prevmuni_lbl 2911808 `"Guaratinga"', add
label define br10a_prevmuni_lbl 2911857 `"Heli�polis"', add
label define br10a_prevmuni_lbl 2911907 `"Ia�u"', add
label define br10a_prevmuni_lbl 2912004 `"Ibiassuc�"', add
label define br10a_prevmuni_lbl 2912103 `"Ibicara�"', add
label define br10a_prevmuni_lbl 2912202 `"Ibicoara"', add
label define br10a_prevmuni_lbl 2912301 `"Ibicu�"', add
label define br10a_prevmuni_lbl 2912400 `"Ibipeba"', add
label define br10a_prevmuni_lbl 2912509 `"Ibipitanga"', add
label define br10a_prevmuni_lbl 2912608 `"Ibiquera"', add
label define br10a_prevmuni_lbl 2912707 `"Ibirapitanga"', add
label define br10a_prevmuni_lbl 2912806 `"Ibirapu�"', add
label define br10a_prevmuni_lbl 2912905 `"Ibirataia"', add
label define br10a_prevmuni_lbl 2913002 `"Ibitiara"', add
label define br10a_prevmuni_lbl 2913101 `"Ibitit�"', add
label define br10a_prevmuni_lbl 2913200 `"Ibotirama"', add
label define br10a_prevmuni_lbl 2913309 `"Ichu"', add
label define br10a_prevmuni_lbl 2913408 `"Igapor�"', add
label define br10a_prevmuni_lbl 2913457 `"Igrapi�na"', add
label define br10a_prevmuni_lbl 2913507 `"Igua�"', add
label define br10a_prevmuni_lbl 2913606 `"Ilh�us"', add
label define br10a_prevmuni_lbl 2913705 `"Inhambupe"', add
label define br10a_prevmuni_lbl 2913804 `"Ipecaet�"', add
label define br10a_prevmuni_lbl 2913903 `"Ipia�"', add
label define br10a_prevmuni_lbl 2914000 `"Ipir�"', add
label define br10a_prevmuni_lbl 2914109 `"Ipupiara"', add
label define br10a_prevmuni_lbl 2914208 `"Irajuba"', add
label define br10a_prevmuni_lbl 2914307 `"Iramaia"', add
label define br10a_prevmuni_lbl 2914406 `"Iraquara"', add
label define br10a_prevmuni_lbl 2914505 `"Irar�"', add
label define br10a_prevmuni_lbl 2914604 `"Irec�"', add
label define br10a_prevmuni_lbl 2914653 `"Itabela"', add
label define br10a_prevmuni_lbl 2914703 `"Itaberaba"', add
label define br10a_prevmuni_lbl 2914802 `"Itabuna"', add
label define br10a_prevmuni_lbl 2914901 `"Itacar�"', add
label define br10a_prevmuni_lbl 2915007 `"Itaet�"', add
label define br10a_prevmuni_lbl 2915106 `"Itagi"', add
label define br10a_prevmuni_lbl 2915205 `"Itagib�"', add
label define br10a_prevmuni_lbl 2915304 `"Itagimirim"', add
label define br10a_prevmuni_lbl 2915353 `"Itagua�u da Bahia"', add
label define br10a_prevmuni_lbl 2915403 `"Itaju do Col�nia"', add
label define br10a_prevmuni_lbl 2915502 `"Itaju�pe"', add
label define br10a_prevmuni_lbl 2915601 `"Itamaraju"', add
label define br10a_prevmuni_lbl 2915700 `"Itamari"', add
label define br10a_prevmuni_lbl 2915809 `"Itamb�"', add
label define br10a_prevmuni_lbl 2915908 `"Itanagra"', add
label define br10a_prevmuni_lbl 2916005 `"Itanh�m"', add
label define br10a_prevmuni_lbl 2916104 `"Itaparica"', add
label define br10a_prevmuni_lbl 2916203 `"Itap�"', add
label define br10a_prevmuni_lbl 2916302 `"Itapebi"', add
label define br10a_prevmuni_lbl 2916401 `"Itapetinga"', add
label define br10a_prevmuni_lbl 2916500 `"Itapicuru"', add
label define br10a_prevmuni_lbl 2916609 `"Itapitanga"', add
label define br10a_prevmuni_lbl 2916708 `"Itaquara"', add
label define br10a_prevmuni_lbl 2916807 `"Itarantim"', add
label define br10a_prevmuni_lbl 2916856 `"Itatim"', add
label define br10a_prevmuni_lbl 2916906 `"Itiru�u"', add
label define br10a_prevmuni_lbl 2917003 `"Iti�ba"', add
label define br10a_prevmuni_lbl 2917102 `"Itoror�"', add
label define br10a_prevmuni_lbl 2917201 `"Itua�u"', add
label define br10a_prevmuni_lbl 2917300 `"Ituber�"', add
label define br10a_prevmuni_lbl 2917334 `"Iui�"', add
label define br10a_prevmuni_lbl 2917359 `"Jaborandi"', add
label define br10a_prevmuni_lbl 2917409 `"Jacaraci"', add
label define br10a_prevmuni_lbl 2917508 `"Jacobina"', add
label define br10a_prevmuni_lbl 2917607 `"Jaguaquara"', add
label define br10a_prevmuni_lbl 2917706 `"Jaguarari"', add
label define br10a_prevmuni_lbl 2917805 `"Jaguaripe"', add
label define br10a_prevmuni_lbl 2917904 `"Janda�ra"', add
label define br10a_prevmuni_lbl 2918001 `"Jequi�"', add
label define br10a_prevmuni_lbl 2918100 `"Jeremoabo"', add
label define br10a_prevmuni_lbl 2918209 `"Jiquiri��"', add
label define br10a_prevmuni_lbl 2918308 `"Jita�na"', add
label define br10a_prevmuni_lbl 2918357 `"Jo�o Dourado"', add
label define br10a_prevmuni_lbl 2918407 `"Juazeiro"', add
label define br10a_prevmuni_lbl 2918456 `"Jucuru�u"', add
label define br10a_prevmuni_lbl 2918506 `"Jussara"', add
label define br10a_prevmuni_lbl 2918555 `"Jussari"', add
label define br10a_prevmuni_lbl 2918605 `"Jussiape"', add
label define br10a_prevmuni_lbl 2918704 `"Lafaiete Coutinho"', add
label define br10a_prevmuni_lbl 2918753 `"Lagoa Real"', add
label define br10a_prevmuni_lbl 2918803 `"Laje"', add
label define br10a_prevmuni_lbl 2918902 `"Lajed�o"', add
label define br10a_prevmuni_lbl 2919009 `"Lajedinho"', add
label define br10a_prevmuni_lbl 2919058 `"Lajedo do Tabocal"', add
label define br10a_prevmuni_lbl 2919108 `"Lamar�o"', add
label define br10a_prevmuni_lbl 2919157 `"Lap�o"', add
label define br10a_prevmuni_lbl 2919207 `"Lauro de Freitas"', add
label define br10a_prevmuni_lbl 2919306 `"Len��is"', add
label define br10a_prevmuni_lbl 2919405 `"Lic�nio de Almeida"', add
label define br10a_prevmuni_lbl 2919504 `"Livramento de Nossa Senhora"', add
label define br10a_prevmuni_lbl 2919553 `"Lu�s Eduardo Magalh�es"', add
label define br10a_prevmuni_lbl 2919603 `"Macajuba"', add
label define br10a_prevmuni_lbl 2919702 `"Macarani"', add
label define br10a_prevmuni_lbl 2919801 `"Maca�bas"', add
label define br10a_prevmuni_lbl 2919900 `"Macurur�"', add
label define br10a_prevmuni_lbl 2919926 `"Madre de Deus"', add
label define br10a_prevmuni_lbl 2919959 `"Maetinga"', add
label define br10a_prevmuni_lbl 2920007 `"Maiquinique"', add
label define br10a_prevmuni_lbl 2920106 `"Mairi"', add
label define br10a_prevmuni_lbl 2920205 `"Malhada"', add
label define br10a_prevmuni_lbl 2920304 `"Malhada de Pedras"', add
label define br10a_prevmuni_lbl 2920403 `"Manoel Vitorino"', add
label define br10a_prevmuni_lbl 2920452 `"Mansid�o"', add
label define br10a_prevmuni_lbl 2920502 `"Marac�s"', add
label define br10a_prevmuni_lbl 2920601 `"Maragogipe"', add
label define br10a_prevmuni_lbl 2920700 `"Mara�"', add
label define br10a_prevmuni_lbl 2920809 `"Marcion�lio Souza"', add
label define br10a_prevmuni_lbl 2920908 `"Mascote"', add
label define br10a_prevmuni_lbl 2921005 `"Mata de S�o Jo�o"', add
label define br10a_prevmuni_lbl 2921054 `"Matina"', add
label define br10a_prevmuni_lbl 2921104 `"Medeiros Neto"', add
label define br10a_prevmuni_lbl 2921203 `"Miguel Calmon"', add
label define br10a_prevmuni_lbl 2921302 `"Milagres"', add
label define br10a_prevmuni_lbl 2921401 `"Mirangaba"', add
label define br10a_prevmuni_lbl 2921450 `"Mirante"', add
label define br10a_prevmuni_lbl 2921500 `"Monte Santo"', add
label define br10a_prevmuni_lbl 2921609 `"Morpar�"', add
label define br10a_prevmuni_lbl 2921708 `"Morro do Chap�u"', add
label define br10a_prevmuni_lbl 2921807 `"Mortugaba"', add
label define br10a_prevmuni_lbl 2921906 `"Mucug�"', add
label define br10a_prevmuni_lbl 2922003 `"Mucuri"', add
label define br10a_prevmuni_lbl 2922052 `"Mulungu do Morro"', add
label define br10a_prevmuni_lbl 2922102 `"Mundo Novo"', add
label define br10a_prevmuni_lbl 2922201 `"Muniz Ferreira"', add
label define br10a_prevmuni_lbl 2922250 `"Muqu�m de S�o Francisco"', add
label define br10a_prevmuni_lbl 2922300 `"Muritiba"', add
label define br10a_prevmuni_lbl 2922409 `"Mutu�pe"', add
label define br10a_prevmuni_lbl 2922508 `"Nazar�"', add
label define br10a_prevmuni_lbl 2922607 `"Nilo Pe�anha"', add
label define br10a_prevmuni_lbl 2922656 `"Nordestina"', add
label define br10a_prevmuni_lbl 2922706 `"Nova Cana�"', add
label define br10a_prevmuni_lbl 2922730 `"Nova F�tima"', add
label define br10a_prevmuni_lbl 2922755 `"Nova Ibi�"', add
label define br10a_prevmuni_lbl 2922805 `"Nova Itarana"', add
label define br10a_prevmuni_lbl 2922854 `"Nova Reden��o"', add
label define br10a_prevmuni_lbl 2922904 `"Nova Soure"', add
label define br10a_prevmuni_lbl 2923001 `"Nova Vi�osa"', add
label define br10a_prevmuni_lbl 2923035 `"Novo Horizonte"', add
label define br10a_prevmuni_lbl 2923050 `"Novo Triunfo"', add
label define br10a_prevmuni_lbl 2923100 `"Olindina"', add
label define br10a_prevmuni_lbl 2923209 `"Oliveira dos Brejinhos"', add
label define br10a_prevmuni_lbl 2923308 `"Ouri�angas"', add
label define br10a_prevmuni_lbl 2923357 `"Ourol�ndia"', add
label define br10a_prevmuni_lbl 2923407 `"Palmas de Monte Alto"', add
label define br10a_prevmuni_lbl 2923506 `"Palmeiras"', add
label define br10a_prevmuni_lbl 2923605 `"Paramirim"', add
label define br10a_prevmuni_lbl 2923704 `"Paratinga"', add
label define br10a_prevmuni_lbl 2923803 `"Paripiranga"', add
label define br10a_prevmuni_lbl 2923902 `"Pau Brasil"', add
label define br10a_prevmuni_lbl 2924009 `"Paulo Afonso"', add
label define br10a_prevmuni_lbl 2924058 `"P� de Serra"', add
label define br10a_prevmuni_lbl 2924108 `"Pedr�o"', add
label define br10a_prevmuni_lbl 2924207 `"Pedro Alexandre"', add
label define br10a_prevmuni_lbl 2924306 `"Piat�"', add
label define br10a_prevmuni_lbl 2924405 `"Pil�o Arcado"', add
label define br10a_prevmuni_lbl 2924504 `"Pinda�"', add
label define br10a_prevmuni_lbl 2924603 `"Pindoba�u"', add
label define br10a_prevmuni_lbl 2924652 `"Pintadas"', add
label define br10a_prevmuni_lbl 2924678 `"Pira� do Norte"', add
label define br10a_prevmuni_lbl 2924702 `"Pirip�"', add
label define br10a_prevmuni_lbl 2924801 `"Piritiba"', add
label define br10a_prevmuni_lbl 2924900 `"Planaltino"', add
label define br10a_prevmuni_lbl 2925006 `"Planalto"', add
label define br10a_prevmuni_lbl 2925105 `"Po��es"', add
label define br10a_prevmuni_lbl 2925204 `"Pojuca"', add
label define br10a_prevmuni_lbl 2925253 `"Ponto Novo"', add
label define br10a_prevmuni_lbl 2925303 `"Porto Seguro"', add
label define br10a_prevmuni_lbl 2925402 `"Potiragu�"', add
label define br10a_prevmuni_lbl 2925501 `"Prado"', add
label define br10a_prevmuni_lbl 2925600 `"Presidente Dutra"', add
label define br10a_prevmuni_lbl 2925709 `"Presidente J�nio Quadros"', add
label define br10a_prevmuni_lbl 2925758 `"Presidente Tancredo Neves"', add
label define br10a_prevmuni_lbl 2925808 `"Queimadas"', add
label define br10a_prevmuni_lbl 2925907 `"Quijingue"', add
label define br10a_prevmuni_lbl 2925931 `"Quixabeira"', add
label define br10a_prevmuni_lbl 2925956 `"Rafael Jambeiro"', add
label define br10a_prevmuni_lbl 2926004 `"Remanso"', add
label define br10a_prevmuni_lbl 2926103 `"Retirol�ndia"', add
label define br10a_prevmuni_lbl 2926202 `"Riach�o das Neves"', add
label define br10a_prevmuni_lbl 2926301 `"Riach�o do Jacu�pe"', add
label define br10a_prevmuni_lbl 2926400 `"Riacho de Santana"', add
label define br10a_prevmuni_lbl 2926509 `"Ribeira do Amparo"', add
label define br10a_prevmuni_lbl 2926608 `"Ribeira do Pombal"', add
label define br10a_prevmuni_lbl 2926657 `"Ribeir�o do Largo"', add
label define br10a_prevmuni_lbl 2926707 `"Rio de Contas"', add
label define br10a_prevmuni_lbl 2926806 `"Rio do Ant�nio"', add
label define br10a_prevmuni_lbl 2926905 `"Rio do Pires"', add
label define br10a_prevmuni_lbl 2927002 `"Rio Real"', add
label define br10a_prevmuni_lbl 2927101 `"Rodelas"', add
label define br10a_prevmuni_lbl 2927200 `"Ruy Barbosa"', add
label define br10a_prevmuni_lbl 2927309 `"Salinas da Margarida"', add
label define br10a_prevmuni_lbl 2927408 `"Salvador"', add
label define br10a_prevmuni_lbl 2927507 `"Santa B�rbara"', add
label define br10a_prevmuni_lbl 2927606 `"Santa Br�gida"', add
label define br10a_prevmuni_lbl 2927705 `"Santa Cruz Cabr�lia"', add
label define br10a_prevmuni_lbl 2927804 `"Santa Cruz da Vit�ria"', add
label define br10a_prevmuni_lbl 2927903 `"Santa In�s"', add
label define br10a_prevmuni_lbl 2928000 `"Santaluz"', add
label define br10a_prevmuni_lbl 2928059 `"Santa Luzia"', add
label define br10a_prevmuni_lbl 2928109 `"Santa Maria da Vit�ria"', add
label define br10a_prevmuni_lbl 2928208 `"Santana"', add
label define br10a_prevmuni_lbl 2928307 `"Santan�polis"', add
label define br10a_prevmuni_lbl 2928406 `"Santa Rita de C�ssia"', add
label define br10a_prevmuni_lbl 2928505 `"Santa Teresinha"', add
label define br10a_prevmuni_lbl 2928604 `"Santo Amaro"', add
label define br10a_prevmuni_lbl 2928703 `"Santo Ant�nio de Jesus"', add
label define br10a_prevmuni_lbl 2928802 `"Santo Est�v�o"', add
label define br10a_prevmuni_lbl 2928901 `"S�o Desid�rio"', add
label define br10a_prevmuni_lbl 2928950 `"S�o Domingos"', add
label define br10a_prevmuni_lbl 2929008 `"S�o F�lix"', add
label define br10a_prevmuni_lbl 2929057 `"S�o F�lix do Coribe"', add
label define br10a_prevmuni_lbl 2929107 `"S�o Felipe"', add
label define br10a_prevmuni_lbl 2929206 `"S�o Francisco do Conde"', add
label define br10a_prevmuni_lbl 2929255 `"S�o Gabriel"', add
label define br10a_prevmuni_lbl 2929305 `"S�o Gon�alo dos Campos"', add
label define br10a_prevmuni_lbl 2929354 `"S�o Jos� da Vit�ria"', add
label define br10a_prevmuni_lbl 2929370 `"S�o Jos� do Jacu�pe"', add
label define br10a_prevmuni_lbl 2929404 `"S�o Miguel das Matas"', add
label define br10a_prevmuni_lbl 2929503 `"S�o Sebasti�o do Pass�"', add
label define br10a_prevmuni_lbl 2929602 `"Sapea�u"', add
label define br10a_prevmuni_lbl 2929701 `"S�tiro Dias"', add
label define br10a_prevmuni_lbl 2929750 `"Saubara"', add
label define br10a_prevmuni_lbl 2929800 `"Sa�de"', add
label define br10a_prevmuni_lbl 2929909 `"Seabra"', add
label define br10a_prevmuni_lbl 2930006 `"Sebasti�o Laranjeiras"', add
label define br10a_prevmuni_lbl 2930105 `"Senhor do Bonfim"', add
label define br10a_prevmuni_lbl 2930154 `"Serra do Ramalho"', add
label define br10a_prevmuni_lbl 2930204 `"Sento S�"', add
label define br10a_prevmuni_lbl 2930303 `"Serra Dourada"', add
label define br10a_prevmuni_lbl 2930402 `"Serra Preta"', add
label define br10a_prevmuni_lbl 2930501 `"Serrinha"', add
label define br10a_prevmuni_lbl 2930600 `"Serrol�ndia"', add
label define br10a_prevmuni_lbl 2930709 `"Sim�es Filho"', add
label define br10a_prevmuni_lbl 2930758 `"S�tio do Mato"', add
label define br10a_prevmuni_lbl 2930766 `"S�tio do Quinto"', add
label define br10a_prevmuni_lbl 2930774 `"Sobradinho"', add
label define br10a_prevmuni_lbl 2930808 `"Souto Soares"', add
label define br10a_prevmuni_lbl 2930907 `"Tabocas do Brejo Velho"', add
label define br10a_prevmuni_lbl 2931004 `"Tanha�u"', add
label define br10a_prevmuni_lbl 2931053 `"Tanque Novo"', add
label define br10a_prevmuni_lbl 2931103 `"Tanquinho"', add
label define br10a_prevmuni_lbl 2931202 `"Tapero�"', add
label define br10a_prevmuni_lbl 2931301 `"Tapiramut�"', add
label define br10a_prevmuni_lbl 2931350 `"Teixeira de Freitas"', add
label define br10a_prevmuni_lbl 2931400 `"Teodoro Sampaio"', add
label define br10a_prevmuni_lbl 2931509 `"Teofil�ndia"', add
label define br10a_prevmuni_lbl 2931608 `"Teol�ndia"', add
label define br10a_prevmuni_lbl 2931707 `"Terra Nova"', add
label define br10a_prevmuni_lbl 2931806 `"Tremedal"', add
label define br10a_prevmuni_lbl 2931905 `"Tucano"', add
label define br10a_prevmuni_lbl 2932002 `"Uau�"', add
label define br10a_prevmuni_lbl 2932101 `"Uba�ra"', add
label define br10a_prevmuni_lbl 2932200 `"Ubaitaba"', add
label define br10a_prevmuni_lbl 2932309 `"Ubat�"', add
label define br10a_prevmuni_lbl 2932408 `"Uiba�"', add
label define br10a_prevmuni_lbl 2932457 `"Umburanas"', add
label define br10a_prevmuni_lbl 2932507 `"Una"', add
label define br10a_prevmuni_lbl 2932606 `"Urandi"', add
label define br10a_prevmuni_lbl 2932705 `"Uru�uca"', add
label define br10a_prevmuni_lbl 2932804 `"Utinga"', add
label define br10a_prevmuni_lbl 2932903 `"Valen�a"', add
label define br10a_prevmuni_lbl 2933000 `"Valente"', add
label define br10a_prevmuni_lbl 2933059 `"V�rzea da Ro�a"', add
label define br10a_prevmuni_lbl 2933109 `"V�rzea do Po�o"', add
label define br10a_prevmuni_lbl 2933158 `"V�rzea Nova"', add
label define br10a_prevmuni_lbl 2933174 `"Varzedo"', add
label define br10a_prevmuni_lbl 2933208 `"Vera Cruz"', add
label define br10a_prevmuni_lbl 2933257 `"Vereda"', add
label define br10a_prevmuni_lbl 2933307 `"Vit�ria da Conquista"', add
label define br10a_prevmuni_lbl 2933406 `"Wagner"', add
label define br10a_prevmuni_lbl 2933455 `"Wanderley"', add
label define br10a_prevmuni_lbl 2933505 `"Wenceslau Guimar�es"', add
label define br10a_prevmuni_lbl 2933604 `"Xique-Xique"', add
label define br10a_prevmuni_lbl 2999999 `"Bahia, municipality unknown"', add
label define br10a_prevmuni_lbl 3100104 `"Abadia dos Dourados"', add
label define br10a_prevmuni_lbl 3100203 `"Abaet�"', add
label define br10a_prevmuni_lbl 3100302 `"Abre Campo"', add
label define br10a_prevmuni_lbl 3100401 `"Acaiaca"', add
label define br10a_prevmuni_lbl 3100500 `"A�ucena"', add
label define br10a_prevmuni_lbl 3100609 `"�gua Boa"', add
label define br10a_prevmuni_lbl 3100708 `"�gua Comprida"', add
label define br10a_prevmuni_lbl 3100807 `"Aguanil"', add
label define br10a_prevmuni_lbl 3100906 `"�guas Formosas"', add
label define br10a_prevmuni_lbl 3101003 `"�guas Vermelhas"', add
label define br10a_prevmuni_lbl 3101102 `"Aimor�s"', add
label define br10a_prevmuni_lbl 3101201 `"Aiuruoca"', add
label define br10a_prevmuni_lbl 3101300 `"Alagoa"', add
label define br10a_prevmuni_lbl 3101409 `"Albertina"', add
label define br10a_prevmuni_lbl 3101508 `"Al�m Para�ba"', add
label define br10a_prevmuni_lbl 3101607 `"Alfenas"', add
label define br10a_prevmuni_lbl 3101631 `"Alfredo Vasconcelos"', add
label define br10a_prevmuni_lbl 3101706 `"Almenara"', add
label define br10a_prevmuni_lbl 3101805 `"Alpercata"', add
label define br10a_prevmuni_lbl 3101904 `"Alpin�polis"', add
label define br10a_prevmuni_lbl 3102001 `"Alterosa"', add
label define br10a_prevmuni_lbl 3102050 `"Alto Capara�"', add
label define br10a_prevmuni_lbl 3102100 `"Alto Rio Doce"', add
label define br10a_prevmuni_lbl 3102209 `"Alvarenga"', add
label define br10a_prevmuni_lbl 3102308 `"Alvin�polis"', add
label define br10a_prevmuni_lbl 3102407 `"Alvorada de Minas"', add
label define br10a_prevmuni_lbl 3102506 `"Amparo do Serra"', add
label define br10a_prevmuni_lbl 3102605 `"Andradas"', add
label define br10a_prevmuni_lbl 3102704 `"Cachoeira de Paje�"', add
label define br10a_prevmuni_lbl 3102803 `"Andrel�ndia"', add
label define br10a_prevmuni_lbl 3102852 `"Angel�ndia"', add
label define br10a_prevmuni_lbl 3102902 `"Ant�nio Carlos"', add
label define br10a_prevmuni_lbl 3103009 `"Ant�nio Dias"', add
label define br10a_prevmuni_lbl 3103108 `"Ant�nio Prado de Minas"', add
label define br10a_prevmuni_lbl 3103207 `"Ara�a�"', add
label define br10a_prevmuni_lbl 3103306 `"Aracitaba"', add
label define br10a_prevmuni_lbl 3103405 `"Ara�ua�"', add
label define br10a_prevmuni_lbl 3103504 `"Araguari"', add
label define br10a_prevmuni_lbl 3103603 `"Arantina"', add
label define br10a_prevmuni_lbl 3103702 `"Araponga"', add
label define br10a_prevmuni_lbl 3103751 `"Arapor�"', add
label define br10a_prevmuni_lbl 3103801 `"Arapu�"', add
label define br10a_prevmuni_lbl 3103900 `"Ara�jos"', add
label define br10a_prevmuni_lbl 3104007 `"Arax�"', add
label define br10a_prevmuni_lbl 3104106 `"Arceburgo"', add
label define br10a_prevmuni_lbl 3104205 `"Arcos"', add
label define br10a_prevmuni_lbl 3104304 `"Areado"', add
label define br10a_prevmuni_lbl 3104403 `"Argirita"', add
label define br10a_prevmuni_lbl 3104452 `"Aricanduva"', add
label define br10a_prevmuni_lbl 3104502 `"Arinos"', add
label define br10a_prevmuni_lbl 3104601 `"Astolfo Dutra"', add
label define br10a_prevmuni_lbl 3104700 `"Atal�ia"', add
label define br10a_prevmuni_lbl 3104809 `"Augusto de Lima"', add
label define br10a_prevmuni_lbl 3104908 `"Baependi"', add
label define br10a_prevmuni_lbl 3105004 `"Baldim"', add
label define br10a_prevmuni_lbl 3105103 `"Bambu�"', add
label define br10a_prevmuni_lbl 3105202 `"Bandeira"', add
label define br10a_prevmuni_lbl 3105301 `"Bandeira do Sul"', add
label define br10a_prevmuni_lbl 3105400 `"Bar�o de Cocais"', add
label define br10a_prevmuni_lbl 3105509 `"Bar�o de Monte Alto"', add
label define br10a_prevmuni_lbl 3105608 `"Barbacena"', add
label define br10a_prevmuni_lbl 3105707 `"Barra Longa"', add
label define br10a_prevmuni_lbl 3105905 `"Barroso"', add
label define br10a_prevmuni_lbl 3106002 `"Bela Vista de Minas"', add
label define br10a_prevmuni_lbl 3106101 `"Belmiro Braga"', add
label define br10a_prevmuni_lbl 3106200 `"Belo Horizonte"', add
label define br10a_prevmuni_lbl 3106309 `"Belo Oriente"', add
label define br10a_prevmuni_lbl 3106408 `"Belo Vale"', add
label define br10a_prevmuni_lbl 3106507 `"Berilo"', add
label define br10a_prevmuni_lbl 3106606 `"Bert�polis"', add
label define br10a_prevmuni_lbl 3106655 `"Berizal"', add
label define br10a_prevmuni_lbl 3106705 `"Betim"', add
label define br10a_prevmuni_lbl 3106804 `"Bias Fortes"', add
label define br10a_prevmuni_lbl 3106903 `"Bicas"', add
label define br10a_prevmuni_lbl 3107000 `"Biquinhas"', add
label define br10a_prevmuni_lbl 3107109 `"Boa Esperan�a"', add
label define br10a_prevmuni_lbl 3107208 `"Bocaina de Minas"', add
label define br10a_prevmuni_lbl 3107307 `"Bocai�va"', add
label define br10a_prevmuni_lbl 3107406 `"Bom Despacho"', add
label define br10a_prevmuni_lbl 3107505 `"Bom Jardim de Minas"', add
label define br10a_prevmuni_lbl 3107604 `"Bom Jesus da Penha"', add
label define br10a_prevmuni_lbl 3107703 `"Bom Jesus do Amparo"', add
label define br10a_prevmuni_lbl 3107802 `"Bom Jesus do Galho"', add
label define br10a_prevmuni_lbl 3107901 `"Bom Repouso"', add
label define br10a_prevmuni_lbl 3108008 `"Bom Sucesso"', add
label define br10a_prevmuni_lbl 3108107 `"Bonfim"', add
label define br10a_prevmuni_lbl 3108206 `"Bonfin�polis de Minas"', add
label define br10a_prevmuni_lbl 3108255 `"Bonito de Minas"', add
label define br10a_prevmuni_lbl 3108305 `"Borda da Mata"', add
label define br10a_prevmuni_lbl 3108404 `"Botelhos"', add
label define br10a_prevmuni_lbl 3108503 `"Botumirim"', add
label define br10a_prevmuni_lbl 3108552 `"Brasil�ndia de Minas"', add
label define br10a_prevmuni_lbl 3108602 `"Bras�lia de Minas"', add
label define br10a_prevmuni_lbl 3108701 `"Br�s Pires"', add
label define br10a_prevmuni_lbl 3108800 `"Bra�nas"', add
label define br10a_prevmuni_lbl 3108909 `"Bras�polis"', add
label define br10a_prevmuni_lbl 3109006 `"Brumadinho"', add
label define br10a_prevmuni_lbl 3109105 `"Bueno Brand�o"', add
label define br10a_prevmuni_lbl 3109204 `"Buen�polis"', add
label define br10a_prevmuni_lbl 3109253 `"Bugre"', add
label define br10a_prevmuni_lbl 3109303 `"Buritis"', add
label define br10a_prevmuni_lbl 3109402 `"Buritizeiro"', add
label define br10a_prevmuni_lbl 3109451 `"Cabeceira Grande"', add
label define br10a_prevmuni_lbl 3109501 `"Cabo Verde"', add
label define br10a_prevmuni_lbl 3109600 `"Cachoeira da Prata"', add
label define br10a_prevmuni_lbl 3109709 `"Cachoeira de Minas"', add
label define br10a_prevmuni_lbl 3109808 `"Cachoeira Dourada"', add
label define br10a_prevmuni_lbl 3109907 `"Caetan�polis"', add
label define br10a_prevmuni_lbl 3110004 `"Caet�"', add
label define br10a_prevmuni_lbl 3110103 `"Caiana"', add
label define br10a_prevmuni_lbl 3110202 `"Cajuri"', add
label define br10a_prevmuni_lbl 3110301 `"Caldas"', add
label define br10a_prevmuni_lbl 3110400 `"Camacho"', add
label define br10a_prevmuni_lbl 3110509 `"Camanducaia"', add
label define br10a_prevmuni_lbl 3110608 `"Cambu�"', add
label define br10a_prevmuni_lbl 3110707 `"Cambuquira"', add
label define br10a_prevmuni_lbl 3110806 `"Campan�rio"', add
label define br10a_prevmuni_lbl 3110905 `"Campanha"', add
label define br10a_prevmuni_lbl 3111002 `"Campestre"', add
label define br10a_prevmuni_lbl 3111101 `"Campina Verde"', add
label define br10a_prevmuni_lbl 3111150 `"Campo Azul"', add
label define br10a_prevmuni_lbl 3111200 `"Campo Belo"', add
label define br10a_prevmuni_lbl 3111309 `"Campo do Meio"', add
label define br10a_prevmuni_lbl 3111408 `"Campo Florido"', add
label define br10a_prevmuni_lbl 3111507 `"Campos Altos"', add
label define br10a_prevmuni_lbl 3111606 `"Campos Gerais"', add
label define br10a_prevmuni_lbl 3111705 `"Cana�"', add
label define br10a_prevmuni_lbl 3111804 `"Can�polis"', add
label define br10a_prevmuni_lbl 3111903 `"Cana Verde"', add
label define br10a_prevmuni_lbl 3112000 `"Candeias"', add
label define br10a_prevmuni_lbl 3112059 `"Cantagalo"', add
label define br10a_prevmuni_lbl 3112109 `"Capara�"', add
label define br10a_prevmuni_lbl 3112208 `"Capela Nova"', add
label define br10a_prevmuni_lbl 3112307 `"Capelinha"', add
label define br10a_prevmuni_lbl 3112406 `"Capetinga"', add
label define br10a_prevmuni_lbl 3112505 `"Capim Branco"', add
label define br10a_prevmuni_lbl 3112604 `"Capin�polis"', add
label define br10a_prevmuni_lbl 3112653 `"Capit�o Andrade"', add
label define br10a_prevmuni_lbl 3112703 `"Capit�o En�as"', add
label define br10a_prevmuni_lbl 3112802 `"Capit�lio"', add
label define br10a_prevmuni_lbl 3112901 `"Caputira"', add
label define br10a_prevmuni_lbl 3113008 `"Cara�"', add
label define br10a_prevmuni_lbl 3113107 `"Carana�ba"', add
label define br10a_prevmuni_lbl 3113206 `"Caranda�"', add
label define br10a_prevmuni_lbl 3113305 `"Carangola"', add
label define br10a_prevmuni_lbl 3113404 `"Caratinga"', add
label define br10a_prevmuni_lbl 3113503 `"Carbonita"', add
label define br10a_prevmuni_lbl 3113602 `"Carea�u"', add
label define br10a_prevmuni_lbl 3113701 `"Carlos Chagas"', add
label define br10a_prevmuni_lbl 3113800 `"Carm�sia"', add
label define br10a_prevmuni_lbl 3113909 `"Carmo da Cachoeira"', add
label define br10a_prevmuni_lbl 3114006 `"Carmo da Mata"', add
label define br10a_prevmuni_lbl 3114105 `"Carmo de Minas"', add
label define br10a_prevmuni_lbl 3114204 `"Carmo do Cajuru"', add
label define br10a_prevmuni_lbl 3114303 `"Carmo do Parana�ba"', add
label define br10a_prevmuni_lbl 3114402 `"Carmo do Rio Claro"', add
label define br10a_prevmuni_lbl 3114501 `"Carm�polis de Minas"', add
label define br10a_prevmuni_lbl 3114550 `"Carneirinho"', add
label define br10a_prevmuni_lbl 3114600 `"Carrancas"', add
label define br10a_prevmuni_lbl 3114709 `"Carvalh�polis"', add
label define br10a_prevmuni_lbl 3114808 `"Carvalhos"', add
label define br10a_prevmuni_lbl 3114907 `"Casa Grande"', add
label define br10a_prevmuni_lbl 3115003 `"Cascalho Rico"', add
label define br10a_prevmuni_lbl 3115102 `"C�ssia"', add
label define br10a_prevmuni_lbl 3115201 `"Concei��o da Barra de Minas"', add
label define br10a_prevmuni_lbl 3115300 `"Cataguases"', add
label define br10a_prevmuni_lbl 3115359 `"Catas Altas"', add
label define br10a_prevmuni_lbl 3115409 `"Catas Altas da Noruega"', add
label define br10a_prevmuni_lbl 3115458 `"Catuji"', add
label define br10a_prevmuni_lbl 3115474 `"Catuti"', add
label define br10a_prevmuni_lbl 3115508 `"Caxambu"', add
label define br10a_prevmuni_lbl 3115607 `"Cedro do Abaet�"', add
label define br10a_prevmuni_lbl 3115706 `"Central de Minas"', add
label define br10a_prevmuni_lbl 3115805 `"Centralina"', add
label define br10a_prevmuni_lbl 3115904 `"Ch�cara"', add
label define br10a_prevmuni_lbl 3116001 `"Chal�"', add
label define br10a_prevmuni_lbl 3116100 `"Chapada do Norte"', add
label define br10a_prevmuni_lbl 3116159 `"Chapada Ga�cha"', add
label define br10a_prevmuni_lbl 3116209 `"Chiador"', add
label define br10a_prevmuni_lbl 3116308 `"Cipot�nea"', add
label define br10a_prevmuni_lbl 3116407 `"Claraval"', add
label define br10a_prevmuni_lbl 3116506 `"Claro dos Po��es"', add
label define br10a_prevmuni_lbl 3116605 `"Cl�udio"', add
label define br10a_prevmuni_lbl 3116704 `"Coimbra"', add
label define br10a_prevmuni_lbl 3116803 `"Coluna"', add
label define br10a_prevmuni_lbl 3116902 `"Comendador Gomes"', add
label define br10a_prevmuni_lbl 3117009 `"Comercinho"', add
label define br10a_prevmuni_lbl 3117108 `"Concei��o da Aparecida"', add
label define br10a_prevmuni_lbl 3117207 `"Concei��o das Pedras"', add
label define br10a_prevmuni_lbl 3117306 `"Concei��o das Alagoas"', add
label define br10a_prevmuni_lbl 3117405 `"Concei��o de Ipanema"', add
label define br10a_prevmuni_lbl 3117504 `"Concei��o do Mato Dentro"', add
label define br10a_prevmuni_lbl 3117603 `"Concei��o do Par�"', add
label define br10a_prevmuni_lbl 3117702 `"Concei��o do Rio Verde"', add
label define br10a_prevmuni_lbl 3117801 `"Concei��o dos Ouros"', add
label define br10a_prevmuni_lbl 3117836 `"C�nego Marinho"', add
label define br10a_prevmuni_lbl 3117876 `"Confins"', add
label define br10a_prevmuni_lbl 3117900 `"Congonhal"', add
label define br10a_prevmuni_lbl 3118007 `"Congonhas"', add
label define br10a_prevmuni_lbl 3118106 `"Congonhas do Norte"', add
label define br10a_prevmuni_lbl 3118205 `"Conquista"', add
label define br10a_prevmuni_lbl 3118304 `"Conselheiro Lafaiete"', add
label define br10a_prevmuni_lbl 3118403 `"Conselheiro Pena"', add
label define br10a_prevmuni_lbl 3118502 `"Consola��o"', add
label define br10a_prevmuni_lbl 3118601 `"Contagem"', add
label define br10a_prevmuni_lbl 3118700 `"Coqueiral"', add
label define br10a_prevmuni_lbl 3118809 `"Cora��o de Jesus"', add
label define br10a_prevmuni_lbl 3118908 `"Cordisburgo"', add
label define br10a_prevmuni_lbl 3119005 `"Cordisl�ndia"', add
label define br10a_prevmuni_lbl 3119104 `"Corinto"', add
label define br10a_prevmuni_lbl 3119203 `"Coroaci"', add
label define br10a_prevmuni_lbl 3119302 `"Coromandel"', add
label define br10a_prevmuni_lbl 3119401 `"Coronel Fabriciano"', add
label define br10a_prevmuni_lbl 3119500 `"Coronel Murta"', add
label define br10a_prevmuni_lbl 3119609 `"Coronel Pacheco"', add
label define br10a_prevmuni_lbl 3119708 `"Coronel Xavier Chaves"', add
label define br10a_prevmuni_lbl 3119807 `"C�rrego Danta"', add
label define br10a_prevmuni_lbl 3119906 `"C�rrego do Bom Jesus"', add
label define br10a_prevmuni_lbl 3119955 `"C�rrego Fundo"', add
label define br10a_prevmuni_lbl 3120003 `"C�rrego Novo"', add
label define br10a_prevmuni_lbl 3120102 `"Couto de Magalh�es de Minas"', add
label define br10a_prevmuni_lbl 3120151 `"Cris�lita"', add
label define br10a_prevmuni_lbl 3120201 `"Cristais"', add
label define br10a_prevmuni_lbl 3120300 `"Crist�lia"', add
label define br10a_prevmuni_lbl 3120409 `"Cristiano Otoni"', add
label define br10a_prevmuni_lbl 3120508 `"Cristina"', add
label define br10a_prevmuni_lbl 3120607 `"Crucil�ndia"', add
label define br10a_prevmuni_lbl 3120706 `"Cruzeiro da Fortaleza"', add
label define br10a_prevmuni_lbl 3120805 `"Cruz�lia"', add
label define br10a_prevmuni_lbl 3120839 `"Cuparaque"', add
label define br10a_prevmuni_lbl 3120870 `"Curral de Dentro"', add
label define br10a_prevmuni_lbl 3120904 `"Curvelo"', add
label define br10a_prevmuni_lbl 3121001 `"Datas"', add
label define br10a_prevmuni_lbl 3121100 `"Delfim Moreira"', add
label define br10a_prevmuni_lbl 3121209 `"Delfin�polis"', add
label define br10a_prevmuni_lbl 3121258 `"Delta"', add
label define br10a_prevmuni_lbl 3121308 `"Descoberto"', add
label define br10a_prevmuni_lbl 3121407 `"Desterro de Entre Rios"', add
label define br10a_prevmuni_lbl 3121506 `"Desterro do Melo"', add
label define br10a_prevmuni_lbl 3121605 `"Diamantina"', add
label define br10a_prevmuni_lbl 3121704 `"Diogo de Vasconcelos"', add
label define br10a_prevmuni_lbl 3121803 `"Dion�sio"', add
label define br10a_prevmuni_lbl 3121902 `"Divin�sia"', add
label define br10a_prevmuni_lbl 3122009 `"Divino"', add
label define br10a_prevmuni_lbl 3122108 `"Divino das Laranjeiras"', add
label define br10a_prevmuni_lbl 3122207 `"Divinol�ndia de Minas"', add
label define br10a_prevmuni_lbl 3122306 `"Divin�polis"', add
label define br10a_prevmuni_lbl 3122355 `"Divisa Alegre"', add
label define br10a_prevmuni_lbl 3122405 `"Divisa Nova"', add
label define br10a_prevmuni_lbl 3122454 `"Divis�polis"', add
label define br10a_prevmuni_lbl 3122470 `"Dom Bosco"', add
label define br10a_prevmuni_lbl 3122504 `"Dom Cavati"', add
label define br10a_prevmuni_lbl 3122603 `"Dom Joaquim"', add
label define br10a_prevmuni_lbl 3122702 `"Dom Silv�rio"', add
label define br10a_prevmuni_lbl 3122801 `"Dom Vi�oso"', add
label define br10a_prevmuni_lbl 3122900 `"Dona Eus�bia"', add
label define br10a_prevmuni_lbl 3123007 `"Dores de Campos"', add
label define br10a_prevmuni_lbl 3123106 `"Dores de Guanh�es"', add
label define br10a_prevmuni_lbl 3123205 `"Dores do Indai�"', add
label define br10a_prevmuni_lbl 3123304 `"Dores do Turvo"', add
label define br10a_prevmuni_lbl 3123403 `"Dores�polis"', add
label define br10a_prevmuni_lbl 3123502 `"Douradoquara"', add
label define br10a_prevmuni_lbl 3123528 `"Durand�"', add
label define br10a_prevmuni_lbl 3123601 `"El�i Mendes"', add
label define br10a_prevmuni_lbl 3123700 `"Engenheiro Caldas"', add
label define br10a_prevmuni_lbl 3123809 `"Engenheiro Navarro"', add
label define br10a_prevmuni_lbl 3123858 `"Entre Folhas"', add
label define br10a_prevmuni_lbl 3123908 `"Entre Rios de Minas"', add
label define br10a_prevmuni_lbl 3124005 `"Erv�lia"', add
label define br10a_prevmuni_lbl 3124104 `"Esmeraldas"', add
label define br10a_prevmuni_lbl 3124203 `"Espera Feliz"', add
label define br10a_prevmuni_lbl 3124302 `"Espinosa"', add
label define br10a_prevmuni_lbl 3124401 `"Esp�rito Santo do Dourado"', add
label define br10a_prevmuni_lbl 3124500 `"Estiva"', add
label define br10a_prevmuni_lbl 3124609 `"Estrela Dalva"', add
label define br10a_prevmuni_lbl 3124708 `"Estrela do Indai�"', add
label define br10a_prevmuni_lbl 3124807 `"Estrela do Sul"', add
label define br10a_prevmuni_lbl 3124906 `"Eugen�polis"', add
label define br10a_prevmuni_lbl 3125002 `"Ewbank da C�mara"', add
label define br10a_prevmuni_lbl 3125101 `"Extrema"', add
label define br10a_prevmuni_lbl 3125200 `"Fama"', add
label define br10a_prevmuni_lbl 3125309 `"Faria Lemos"', add
label define br10a_prevmuni_lbl 3125408 `"Fel�cio dos Santos"', add
label define br10a_prevmuni_lbl 3125507 `"S�o Gon�alo do Rio Preto"', add
label define br10a_prevmuni_lbl 3125606 `"Felisburgo"', add
label define br10a_prevmuni_lbl 3125705 `"Felixl�ndia"', add
label define br10a_prevmuni_lbl 3125804 `"Fernandes Tourinho"', add
label define br10a_prevmuni_lbl 3125903 `"Ferros"', add
label define br10a_prevmuni_lbl 3125952 `"Fervedouro"', add
label define br10a_prevmuni_lbl 3126000 `"Florestal"', add
label define br10a_prevmuni_lbl 3126109 `"Formiga"', add
label define br10a_prevmuni_lbl 3126208 `"Formoso"', add
label define br10a_prevmuni_lbl 3126307 `"Fortaleza de Minas"', add
label define br10a_prevmuni_lbl 3126406 `"Fortuna de Minas"', add
label define br10a_prevmuni_lbl 3126505 `"Francisco Badar�"', add
label define br10a_prevmuni_lbl 3126604 `"Francisco Dumont"', add
label define br10a_prevmuni_lbl 3126703 `"Francisco S�"', add
label define br10a_prevmuni_lbl 3126752 `"Francisc�polis"', add
label define br10a_prevmuni_lbl 3126802 `"Frei Gaspar"', add
label define br10a_prevmuni_lbl 3126901 `"Frei Inoc�ncio"', add
label define br10a_prevmuni_lbl 3126950 `"Frei Lagonegro"', add
label define br10a_prevmuni_lbl 3127008 `"Fronteira"', add
label define br10a_prevmuni_lbl 3127057 `"Fronteira dos Vales"', add
label define br10a_prevmuni_lbl 3127073 `"Fruta de Leite"', add
label define br10a_prevmuni_lbl 3127107 `"Frutal"', add
label define br10a_prevmuni_lbl 3127206 `"Funil�ndia"', add
label define br10a_prevmuni_lbl 3127305 `"Galil�ia"', add
label define br10a_prevmuni_lbl 3127339 `"Gameleiras"', add
label define br10a_prevmuni_lbl 3127354 `"Glaucil�ndia"', add
label define br10a_prevmuni_lbl 3127370 `"Goiabeira"', add
label define br10a_prevmuni_lbl 3127388 `"Goian�"', add
label define br10a_prevmuni_lbl 3127404 `"Gon�alves"', add
label define br10a_prevmuni_lbl 3127503 `"Gonzaga"', add
label define br10a_prevmuni_lbl 3127602 `"Gouveia"', add
label define br10a_prevmuni_lbl 3127701 `"Governador Valadares"', add
label define br10a_prevmuni_lbl 3127800 `"Gr�o Mogol"', add
label define br10a_prevmuni_lbl 3127909 `"Grupiara"', add
label define br10a_prevmuni_lbl 3128006 `"Guanh�es"', add
label define br10a_prevmuni_lbl 3128105 `"Guap�"', add
label define br10a_prevmuni_lbl 3128204 `"Guaraciaba"', add
label define br10a_prevmuni_lbl 3128253 `"Guaraciama"', add
label define br10a_prevmuni_lbl 3128303 `"Guaran�sia"', add
label define br10a_prevmuni_lbl 3128402 `"Guarani"', add
label define br10a_prevmuni_lbl 3128501 `"Guarar�"', add
label define br10a_prevmuni_lbl 3128600 `"Guarda-Mor"', add
label define br10a_prevmuni_lbl 3128709 `"Guaxup�"', add
label define br10a_prevmuni_lbl 3128808 `"Guidoval"', add
label define br10a_prevmuni_lbl 3128907 `"Guimar�nia"', add
label define br10a_prevmuni_lbl 3129004 `"Guiricema"', add
label define br10a_prevmuni_lbl 3129103 `"Gurinhat�"', add
label define br10a_prevmuni_lbl 3129202 `"Heliodora"', add
label define br10a_prevmuni_lbl 3129301 `"Iapu"', add
label define br10a_prevmuni_lbl 3129400 `"Ibertioga"', add
label define br10a_prevmuni_lbl 3129509 `"Ibi�"', add
label define br10a_prevmuni_lbl 3129608 `"Ibia�"', add
label define br10a_prevmuni_lbl 3129657 `"Ibiracatu"', add
label define br10a_prevmuni_lbl 3129707 `"Ibiraci"', add
label define br10a_prevmuni_lbl 3129806 `"Ibirit�"', add
label define br10a_prevmuni_lbl 3129905 `"Ibiti�ra de Minas"', add
label define br10a_prevmuni_lbl 3130002 `"Ibituruna"', add
label define br10a_prevmuni_lbl 3130051 `"Icara� de Minas"', add
label define br10a_prevmuni_lbl 3130101 `"Igarap�"', add
label define br10a_prevmuni_lbl 3130200 `"Igaratinga"', add
label define br10a_prevmuni_lbl 3130309 `"Iguatama"', add
label define br10a_prevmuni_lbl 3130408 `"Ijaci"', add
label define br10a_prevmuni_lbl 3130507 `"Ilic�nea"', add
label define br10a_prevmuni_lbl 3130556 `"Imb� de Minas"', add
label define br10a_prevmuni_lbl 3130606 `"Inconfidentes"', add
label define br10a_prevmuni_lbl 3130655 `"Indaiabira"', add
label define br10a_prevmuni_lbl 3130705 `"Indian�polis"', add
label define br10a_prevmuni_lbl 3130804 `"Inga�"', add
label define br10a_prevmuni_lbl 3130903 `"Inhapim"', add
label define br10a_prevmuni_lbl 3131000 `"Inha�ma"', add
label define br10a_prevmuni_lbl 3131109 `"Inimutaba"', add
label define br10a_prevmuni_lbl 3131158 `"Ipaba"', add
label define br10a_prevmuni_lbl 3131208 `"Ipanema"', add
label define br10a_prevmuni_lbl 3131307 `"Ipatinga"', add
label define br10a_prevmuni_lbl 3131406 `"Ipia�u"', add
label define br10a_prevmuni_lbl 3131505 `"Ipui�na"', add
label define br10a_prevmuni_lbl 3131604 `"Ira� de Minas"', add
label define br10a_prevmuni_lbl 3131703 `"Itabira"', add
label define br10a_prevmuni_lbl 3131802 `"Itabirinha"', add
label define br10a_prevmuni_lbl 3131901 `"Itabirito"', add
label define br10a_prevmuni_lbl 3132008 `"Itacambira"', add
label define br10a_prevmuni_lbl 3132107 `"Itacarambi"', add
label define br10a_prevmuni_lbl 3132206 `"Itaguara"', add
label define br10a_prevmuni_lbl 3132305 `"Itaip�"', add
label define br10a_prevmuni_lbl 3132404 `"Itajub�"', add
label define br10a_prevmuni_lbl 3132503 `"Itamarandiba"', add
label define br10a_prevmuni_lbl 3132602 `"Itamarati de Minas"', add
label define br10a_prevmuni_lbl 3132701 `"Itambacuri"', add
label define br10a_prevmuni_lbl 3132800 `"Itamb� do Mato Dentro"', add
label define br10a_prevmuni_lbl 3132909 `"Itamogi"', add
label define br10a_prevmuni_lbl 3133006 `"Itamonte"', add
label define br10a_prevmuni_lbl 3133105 `"Itanhandu"', add
label define br10a_prevmuni_lbl 3133204 `"Itanhomi"', add
label define br10a_prevmuni_lbl 3133303 `"Itaobim"', add
label define br10a_prevmuni_lbl 3133402 `"Itapagipe"', add
label define br10a_prevmuni_lbl 3133501 `"Itapecerica"', add
label define br10a_prevmuni_lbl 3133600 `"Itapeva"', add
label define br10a_prevmuni_lbl 3133709 `"Itatiaiu�u"', add
label define br10a_prevmuni_lbl 3133758 `"Ita� de Minas"', add
label define br10a_prevmuni_lbl 3133808 `"Ita�na"', add
label define br10a_prevmuni_lbl 3133907 `"Itaverava"', add
label define br10a_prevmuni_lbl 3134004 `"Itinga"', add
label define br10a_prevmuni_lbl 3134103 `"Itueta"', add
label define br10a_prevmuni_lbl 3134202 `"Ituiutaba"', add
label define br10a_prevmuni_lbl 3134301 `"Itumirim"', add
label define br10a_prevmuni_lbl 3134400 `"Iturama"', add
label define br10a_prevmuni_lbl 3134509 `"Itutinga"', add
label define br10a_prevmuni_lbl 3134608 `"Jaboticatubas"', add
label define br10a_prevmuni_lbl 3134707 `"Jacinto"', add
label define br10a_prevmuni_lbl 3134806 `"Jacu�"', add
label define br10a_prevmuni_lbl 3134905 `"Jacutinga"', add
label define br10a_prevmuni_lbl 3135001 `"Jaguara�u"', add
label define br10a_prevmuni_lbl 3135050 `"Ja�ba"', add
label define br10a_prevmuni_lbl 3135076 `"Jampruca"', add
label define br10a_prevmuni_lbl 3135100 `"Jana�ba"', add
label define br10a_prevmuni_lbl 3135209 `"Janu�ria"', add
label define br10a_prevmuni_lbl 3135308 `"Japara�ba"', add
label define br10a_prevmuni_lbl 3135357 `"Japonvar"', add
label define br10a_prevmuni_lbl 3135407 `"Jeceaba"', add
label define br10a_prevmuni_lbl 3135456 `"Jenipapo de Minas"', add
label define br10a_prevmuni_lbl 3135506 `"Jequeri"', add
label define br10a_prevmuni_lbl 3135605 `"Jequita�"', add
label define br10a_prevmuni_lbl 3135704 `"Jequitib�"', add
label define br10a_prevmuni_lbl 3135803 `"Jequitinhonha"', add
label define br10a_prevmuni_lbl 3135902 `"Jesu�nia"', add
label define br10a_prevmuni_lbl 3136009 `"Joa�ma"', add
label define br10a_prevmuni_lbl 3136108 `"Joan�sia"', add
label define br10a_prevmuni_lbl 3136207 `"Jo�o Monlevade"', add
label define br10a_prevmuni_lbl 3136306 `"Jo�o Pinheiro"', add
label define br10a_prevmuni_lbl 3136405 `"Joaquim Fel�cio"', add
label define br10a_prevmuni_lbl 3136504 `"Jord�nia"', add
label define br10a_prevmuni_lbl 3136520 `"Jos� Gon�alves de Minas"', add
label define br10a_prevmuni_lbl 3136553 `"Jos� Raydan"', add
label define br10a_prevmuni_lbl 3136579 `"Josen�polis"', add
label define br10a_prevmuni_lbl 3136603 `"Nova Uni�o"', add
label define br10a_prevmuni_lbl 3136652 `"Juatuba"', add
label define br10a_prevmuni_lbl 3136702 `"Juiz de Fora"', add
label define br10a_prevmuni_lbl 3136801 `"Juramento"', add
label define br10a_prevmuni_lbl 3136900 `"Juruaia"', add
label define br10a_prevmuni_lbl 3136959 `"Juven�lia"', add
label define br10a_prevmuni_lbl 3137007 `"Ladainha"', add
label define br10a_prevmuni_lbl 3137106 `"Lagamar"', add
label define br10a_prevmuni_lbl 3137205 `"Lagoa da Prata"', add
label define br10a_prevmuni_lbl 3137304 `"Lagoa dos Patos"', add
label define br10a_prevmuni_lbl 3137403 `"Lagoa Dourada"', add
label define br10a_prevmuni_lbl 3137502 `"Lagoa Formosa"', add
label define br10a_prevmuni_lbl 3137536 `"Lagoa Grande"', add
label define br10a_prevmuni_lbl 3137601 `"Lagoa Santa"', add
label define br10a_prevmuni_lbl 3137700 `"Lajinha"', add
label define br10a_prevmuni_lbl 3137809 `"Lambari"', add
label define br10a_prevmuni_lbl 3137908 `"Lamim"', add
label define br10a_prevmuni_lbl 3138005 `"Laranjal"', add
label define br10a_prevmuni_lbl 3138104 `"Lassance"', add
label define br10a_prevmuni_lbl 3138203 `"Lavras"', add
label define br10a_prevmuni_lbl 3138302 `"Leandro Ferreira"', add
label define br10a_prevmuni_lbl 3138351 `"Leme do Prado"', add
label define br10a_prevmuni_lbl 3138401 `"Leopoldina"', add
label define br10a_prevmuni_lbl 3138500 `"Liberdade"', add
label define br10a_prevmuni_lbl 3138609 `"Lima Duarte"', add
label define br10a_prevmuni_lbl 3138625 `"Limeira do Oeste"', add
label define br10a_prevmuni_lbl 3138658 `"Lontra"', add
label define br10a_prevmuni_lbl 3138674 `"Luisburgo"', add
label define br10a_prevmuni_lbl 3138682 `"Luisl�ndia"', add
label define br10a_prevmuni_lbl 3138708 `"Lumin�rias"', add
label define br10a_prevmuni_lbl 3138807 `"Luz"', add
label define br10a_prevmuni_lbl 3138906 `"Machacalis"', add
label define br10a_prevmuni_lbl 3139003 `"Machado"', add
label define br10a_prevmuni_lbl 3139102 `"Madre de Deus de Minas"', add
label define br10a_prevmuni_lbl 3139201 `"Malacacheta"', add
label define br10a_prevmuni_lbl 3139250 `"Mamonas"', add
label define br10a_prevmuni_lbl 3139300 `"Manga"', add
label define br10a_prevmuni_lbl 3139409 `"Manhua�u"', add
label define br10a_prevmuni_lbl 3139508 `"Manhumirim"', add
label define br10a_prevmuni_lbl 3139607 `"Mantena"', add
label define br10a_prevmuni_lbl 3139706 `"Maravilhas"', add
label define br10a_prevmuni_lbl 3139805 `"Mar de Espanha"', add
label define br10a_prevmuni_lbl 3139904 `"Maria da F�"', add
label define br10a_prevmuni_lbl 3140001 `"Mariana"', add
label define br10a_prevmuni_lbl 3140100 `"Marilac"', add
label define br10a_prevmuni_lbl 3140159 `"M�rio Campos"', add
label define br10a_prevmuni_lbl 3140209 `"Marip� de Minas"', add
label define br10a_prevmuni_lbl 3140308 `"Marli�ria"', add
label define br10a_prevmuni_lbl 3140407 `"Marmel�polis"', add
label define br10a_prevmuni_lbl 3140506 `"Martinho Campos"', add
label define br10a_prevmuni_lbl 3140530 `"Martins Soares"', add
label define br10a_prevmuni_lbl 3140555 `"Mata Verde"', add
label define br10a_prevmuni_lbl 3140605 `"Materl�ndia"', add
label define br10a_prevmuni_lbl 3140704 `"Mateus Leme"', add
label define br10a_prevmuni_lbl 3140803 `"Matias Barbosa"', add
label define br10a_prevmuni_lbl 3140852 `"Matias Cardoso"', add
label define br10a_prevmuni_lbl 3140902 `"Matip�"', add
label define br10a_prevmuni_lbl 3141009 `"Mato Verde"', add
label define br10a_prevmuni_lbl 3141108 `"Matozinhos"', add
label define br10a_prevmuni_lbl 3141207 `"Matutina"', add
label define br10a_prevmuni_lbl 3141306 `"Medeiros"', add
label define br10a_prevmuni_lbl 3141405 `"Medina"', add
label define br10a_prevmuni_lbl 3141504 `"Mendes Pimentel"', add
label define br10a_prevmuni_lbl 3141603 `"Merc�s"', add
label define br10a_prevmuni_lbl 3141702 `"Mesquita"', add
label define br10a_prevmuni_lbl 3141801 `"Minas Novas"', add
label define br10a_prevmuni_lbl 3141900 `"Minduri"', add
label define br10a_prevmuni_lbl 3142007 `"Mirabela"', add
label define br10a_prevmuni_lbl 3142106 `"Miradouro"', add
label define br10a_prevmuni_lbl 3142205 `"Mira�"', add
label define br10a_prevmuni_lbl 3142254 `"Mirav�nia"', add
label define br10a_prevmuni_lbl 3142304 `"Moeda"', add
label define br10a_prevmuni_lbl 3142403 `"Moema"', add
label define br10a_prevmuni_lbl 3142502 `"Monjolos"', add
label define br10a_prevmuni_lbl 3142601 `"Monsenhor Paulo"', add
label define br10a_prevmuni_lbl 3142700 `"Montalv�nia"', add
label define br10a_prevmuni_lbl 3142809 `"Monte Alegre de Minas"', add
label define br10a_prevmuni_lbl 3142908 `"Monte Azul"', add
label define br10a_prevmuni_lbl 3143005 `"Monte Belo"', add
label define br10a_prevmuni_lbl 3143104 `"Monte Carmelo"', add
label define br10a_prevmuni_lbl 3143153 `"Monte Formoso"', add
label define br10a_prevmuni_lbl 3143203 `"Monte Santo de Minas"', add
label define br10a_prevmuni_lbl 3143302 `"Montes Claros"', add
label define br10a_prevmuni_lbl 3143401 `"Monte Si�o"', add
label define br10a_prevmuni_lbl 3143450 `"Montezuma"', add
label define br10a_prevmuni_lbl 3143500 `"Morada Nova de Minas"', add
label define br10a_prevmuni_lbl 3143609 `"Morro da Gar�a"', add
label define br10a_prevmuni_lbl 3143708 `"Morro do Pilar"', add
label define br10a_prevmuni_lbl 3143807 `"Munhoz"', add
label define br10a_prevmuni_lbl 3143906 `"Muria�"', add
label define br10a_prevmuni_lbl 3144003 `"Mutum"', add
label define br10a_prevmuni_lbl 3144102 `"Muzambinho"', add
label define br10a_prevmuni_lbl 3144201 `"Nacip Raydan"', add
label define br10a_prevmuni_lbl 3144300 `"Nanuque"', add
label define br10a_prevmuni_lbl 3144359 `"Naque"', add
label define br10a_prevmuni_lbl 3144375 `"Natal�ndia"', add
label define br10a_prevmuni_lbl 3144409 `"Nat�rcia"', add
label define br10a_prevmuni_lbl 3144508 `"Nazareno"', add
label define br10a_prevmuni_lbl 3144607 `"Nepomuceno"', add
label define br10a_prevmuni_lbl 3144656 `"Ninheira"', add
label define br10a_prevmuni_lbl 3144672 `"Nova Bel�m"', add
label define br10a_prevmuni_lbl 3144706 `"Nova Era"', add
label define br10a_prevmuni_lbl 3144805 `"Nova Lima"', add
label define br10a_prevmuni_lbl 3144904 `"Nova M�dica"', add
label define br10a_prevmuni_lbl 3145000 `"Nova Ponte"', add
label define br10a_prevmuni_lbl 3145059 `"Nova Porteirinha"', add
label define br10a_prevmuni_lbl 3145109 `"Nova Resende"', add
label define br10a_prevmuni_lbl 3145208 `"Nova Serrana"', add
label define br10a_prevmuni_lbl 3145307 `"Novo Cruzeiro"', add
label define br10a_prevmuni_lbl 3145356 `"Novo Oriente de Minas"', add
label define br10a_prevmuni_lbl 3145372 `"Novorizonte"', add
label define br10a_prevmuni_lbl 3145406 `"Olaria"', add
label define br10a_prevmuni_lbl 3145455 `"Olhos-d'�gua"', add
label define br10a_prevmuni_lbl 3145505 `"Ol�mpio Noronha"', add
label define br10a_prevmuni_lbl 3145604 `"Oliveira"', add
label define br10a_prevmuni_lbl 3145703 `"Oliveira Fortes"', add
label define br10a_prevmuni_lbl 3145802 `"On�a de Pitangui"', add
label define br10a_prevmuni_lbl 3145851 `"Orat�rios"', add
label define br10a_prevmuni_lbl 3145877 `"Oriz�nia"', add
label define br10a_prevmuni_lbl 3145901 `"Ouro Branco"', add
label define br10a_prevmuni_lbl 3146008 `"Ouro Fino"', add
label define br10a_prevmuni_lbl 3146107 `"Ouro Preto"', add
label define br10a_prevmuni_lbl 3146206 `"Ouro Verde de Minas"', add
label define br10a_prevmuni_lbl 3146255 `"Padre Carvalho"', add
label define br10a_prevmuni_lbl 3146305 `"Padre Para�so"', add
label define br10a_prevmuni_lbl 3146404 `"Paineiras"', add
label define br10a_prevmuni_lbl 3146503 `"Pains"', add
label define br10a_prevmuni_lbl 3146552 `"Pai Pedro"', add
label define br10a_prevmuni_lbl 3146602 `"Paiva"', add
label define br10a_prevmuni_lbl 3146701 `"Palma"', add
label define br10a_prevmuni_lbl 3146750 `"Palm�polis"', add
label define br10a_prevmuni_lbl 3146909 `"Papagaios"', add
label define br10a_prevmuni_lbl 3147006 `"Paracatu"', add
label define br10a_prevmuni_lbl 3147105 `"Par� de Minas"', add
label define br10a_prevmuni_lbl 3147204 `"Paragua�u"', add
label define br10a_prevmuni_lbl 3147303 `"Parais�polis"', add
label define br10a_prevmuni_lbl 3147402 `"Paraopeba"', add
label define br10a_prevmuni_lbl 3147501 `"Passab�m"', add
label define br10a_prevmuni_lbl 3147600 `"Passa Quatro"', add
label define br10a_prevmuni_lbl 3147709 `"Passa Tempo"', add
label define br10a_prevmuni_lbl 3147808 `"Passa-Vinte"', add
label define br10a_prevmuni_lbl 3147907 `"Passos"', add
label define br10a_prevmuni_lbl 3147956 `"Patis"', add
label define br10a_prevmuni_lbl 3148004 `"Patos de Minas"', add
label define br10a_prevmuni_lbl 3148103 `"Patroc�nio"', add
label define br10a_prevmuni_lbl 3148202 `"Patroc�nio do Muria�"', add
label define br10a_prevmuni_lbl 3148301 `"Paula C�ndido"', add
label define br10a_prevmuni_lbl 3148400 `"Paulistas"', add
label define br10a_prevmuni_lbl 3148509 `"Pav�o"', add
label define br10a_prevmuni_lbl 3148608 `"Pe�anha"', add
label define br10a_prevmuni_lbl 3148707 `"Pedra Azul"', add
label define br10a_prevmuni_lbl 3148756 `"Pedra Bonita"', add
label define br10a_prevmuni_lbl 3148806 `"Pedra do Anta"', add
label define br10a_prevmuni_lbl 3148905 `"Pedra do Indai�"', add
label define br10a_prevmuni_lbl 3149002 `"Pedra Dourada"', add
label define br10a_prevmuni_lbl 3149101 `"Pedralva"', add
label define br10a_prevmuni_lbl 3149150 `"Pedras de Maria da Cruz"', add
label define br10a_prevmuni_lbl 3149200 `"Pedrin�polis"', add
label define br10a_prevmuni_lbl 3149309 `"Pedro Leopoldo"', add
label define br10a_prevmuni_lbl 3149408 `"Pedro Teixeira"', add
label define br10a_prevmuni_lbl 3149507 `"Pequeri"', add
label define br10a_prevmuni_lbl 3149606 `"Pequi"', add
label define br10a_prevmuni_lbl 3149705 `"Perdig�o"', add
label define br10a_prevmuni_lbl 3149804 `"Perdizes"', add
label define br10a_prevmuni_lbl 3149903 `"Perd�es"', add
label define br10a_prevmuni_lbl 3149952 `"Periquito"', add
label define br10a_prevmuni_lbl 3150000 `"Pescador"', add
label define br10a_prevmuni_lbl 3150109 `"Piau"', add
label define br10a_prevmuni_lbl 3150158 `"Piedade de Caratinga"', add
label define br10a_prevmuni_lbl 3150208 `"Piedade de Ponte Nova"', add
label define br10a_prevmuni_lbl 3150307 `"Piedade do Rio Grande"', add
label define br10a_prevmuni_lbl 3150406 `"Piedade dos Gerais"', add
label define br10a_prevmuni_lbl 3150505 `"Pimenta"', add
label define br10a_prevmuni_lbl 3150539 `"Pingo-d'�gua"', add
label define br10a_prevmuni_lbl 3150570 `"Pint�polis"', add
label define br10a_prevmuni_lbl 3150604 `"Piracema"', add
label define br10a_prevmuni_lbl 3150703 `"Pirajuba"', add
label define br10a_prevmuni_lbl 3150802 `"Piranga"', add
label define br10a_prevmuni_lbl 3150901 `"Pirangu�u"', add
label define br10a_prevmuni_lbl 3151008 `"Piranguinho"', add
label define br10a_prevmuni_lbl 3151107 `"Pirapetinga"', add
label define br10a_prevmuni_lbl 3151206 `"Pirapora"', add
label define br10a_prevmuni_lbl 3151305 `"Pira�ba"', add
label define br10a_prevmuni_lbl 3151404 `"Pitangui"', add
label define br10a_prevmuni_lbl 3151503 `"Piumhi"', add
label define br10a_prevmuni_lbl 3151602 `"Planura"', add
label define br10a_prevmuni_lbl 3151701 `"Po�o Fundo"', add
label define br10a_prevmuni_lbl 3151800 `"Po�os de Caldas"', add
label define br10a_prevmuni_lbl 3151909 `"Pocrane"', add
label define br10a_prevmuni_lbl 3152006 `"Pomp�u"', add
label define br10a_prevmuni_lbl 3152105 `"Ponte Nova"', add
label define br10a_prevmuni_lbl 3152131 `"Ponto Chique"', add
label define br10a_prevmuni_lbl 3152170 `"Ponto dos Volantes"', add
label define br10a_prevmuni_lbl 3152204 `"Porteirinha"', add
label define br10a_prevmuni_lbl 3152303 `"Porto Firme"', add
label define br10a_prevmuni_lbl 3152402 `"Pot�"', add
label define br10a_prevmuni_lbl 3152501 `"Pouso Alegre"', add
label define br10a_prevmuni_lbl 3152600 `"Pouso Alto"', add
label define br10a_prevmuni_lbl 3152709 `"Prados"', add
label define br10a_prevmuni_lbl 3152808 `"Prata"', add
label define br10a_prevmuni_lbl 3152907 `"Prat�polis"', add
label define br10a_prevmuni_lbl 3153004 `"Pratinha"', add
label define br10a_prevmuni_lbl 3153103 `"Presidente Bernardes"', add
label define br10a_prevmuni_lbl 3153202 `"Presidente Juscelino"', add
label define br10a_prevmuni_lbl 3153301 `"Presidente Kubitschek"', add
label define br10a_prevmuni_lbl 3153400 `"Presidente Oleg�rio"', add
label define br10a_prevmuni_lbl 3153509 `"Alto Jequitib�"', add
label define br10a_prevmuni_lbl 3153608 `"Prudente de Morais"', add
label define br10a_prevmuni_lbl 3153707 `"Quartel Geral"', add
label define br10a_prevmuni_lbl 3153806 `"Queluzito"', add
label define br10a_prevmuni_lbl 3153905 `"Raposos"', add
label define br10a_prevmuni_lbl 3154002 `"Raul Soares"', add
label define br10a_prevmuni_lbl 3154101 `"Recreio"', add
label define br10a_prevmuni_lbl 3154150 `"Reduto"', add
label define br10a_prevmuni_lbl 3154200 `"Resende Costa"', add
label define br10a_prevmuni_lbl 3154309 `"Resplendor"', add
label define br10a_prevmuni_lbl 3154408 `"Ressaquinha"', add
label define br10a_prevmuni_lbl 3154457 `"Riachinho"', add
label define br10a_prevmuni_lbl 3154507 `"Riacho dos Machados"', add
label define br10a_prevmuni_lbl 3154606 `"Ribeir�o das Neves"', add
label define br10a_prevmuni_lbl 3154705 `"Ribeir�o Vermelho"', add
label define br10a_prevmuni_lbl 3154804 `"Rio Acima"', add
label define br10a_prevmuni_lbl 3154903 `"Rio Casca"', add
label define br10a_prevmuni_lbl 3155009 `"Rio Doce"', add
label define br10a_prevmuni_lbl 3155108 `"Rio do Prado"', add
label define br10a_prevmuni_lbl 3155207 `"Rio Espera"', add
label define br10a_prevmuni_lbl 3155306 `"Rio Manso"', add
label define br10a_prevmuni_lbl 3155405 `"Rio Novo"', add
label define br10a_prevmuni_lbl 3155504 `"Rio Parana�ba"', add
label define br10a_prevmuni_lbl 3155603 `"Rio Pardo de Minas"', add
label define br10a_prevmuni_lbl 3155702 `"Rio Piracicaba"', add
label define br10a_prevmuni_lbl 3155801 `"Rio Pomba"', add
label define br10a_prevmuni_lbl 3155900 `"Rio Preto"', add
label define br10a_prevmuni_lbl 3156007 `"Rio Vermelho"', add
label define br10a_prevmuni_lbl 3156106 `"Rit�polis"', add
label define br10a_prevmuni_lbl 3156205 `"Rochedo de Minas"', add
label define br10a_prevmuni_lbl 3156304 `"Rodeiro"', add
label define br10a_prevmuni_lbl 3156403 `"Romaria"', add
label define br10a_prevmuni_lbl 3156452 `"Ros�rio da Limeira"', add
label define br10a_prevmuni_lbl 3156502 `"Rubelita"', add
label define br10a_prevmuni_lbl 3156601 `"Rubim"', add
label define br10a_prevmuni_lbl 3156700 `"Sabar�"', add
label define br10a_prevmuni_lbl 3156809 `"Sabin�polis"', add
label define br10a_prevmuni_lbl 3156908 `"Sacramento"', add
label define br10a_prevmuni_lbl 3157005 `"Salinas"', add
label define br10a_prevmuni_lbl 3157104 `"Salto da Divisa"', add
label define br10a_prevmuni_lbl 3157203 `"Santa B�rbara"', add
label define br10a_prevmuni_lbl 3157252 `"Santa B�rbara do Leste"', add
label define br10a_prevmuni_lbl 3157278 `"Santa B�rbara do Monte Verde"', add
label define br10a_prevmuni_lbl 3157302 `"Santa B�rbara do Tug�rio"', add
label define br10a_prevmuni_lbl 3157336 `"Santa Cruz de Minas"', add
label define br10a_prevmuni_lbl 3157377 `"Santa Cruz de Salinas"', add
label define br10a_prevmuni_lbl 3157401 `"Santa Cruz do Escalvado"', add
label define br10a_prevmuni_lbl 3157500 `"Santa Efig�nia de Minas"', add
label define br10a_prevmuni_lbl 3157609 `"Santa F� de Minas"', add
label define br10a_prevmuni_lbl 3157658 `"Santa Helena de Minas"', add
label define br10a_prevmuni_lbl 3157708 `"Santa Juliana"', add
label define br10a_prevmuni_lbl 3157807 `"Santa Luzia"', add
label define br10a_prevmuni_lbl 3157906 `"Santa Margarida"', add
label define br10a_prevmuni_lbl 3158003 `"Santa Maria de Itabira"', add
label define br10a_prevmuni_lbl 3158102 `"Santa Maria do Salto"', add
label define br10a_prevmuni_lbl 3158201 `"Santa Maria do Sua�u�"', add
label define br10a_prevmuni_lbl 3158300 `"Santana da Vargem"', add
label define br10a_prevmuni_lbl 3158409 `"Santana de Cataguases"', add
label define br10a_prevmuni_lbl 3158508 `"Santana de Pirapama"', add
label define br10a_prevmuni_lbl 3158607 `"Santana do Deserto"', add
label define br10a_prevmuni_lbl 3158706 `"Santana do Garamb�u"', add
label define br10a_prevmuni_lbl 3158805 `"Santana do Jacar�"', add
label define br10a_prevmuni_lbl 3158904 `"Santana do Manhua�u"', add
label define br10a_prevmuni_lbl 3158953 `"Santana do Para�so"', add
label define br10a_prevmuni_lbl 3159001 `"Santana do Riacho"', add
label define br10a_prevmuni_lbl 3159100 `"Santana dos Montes"', add
label define br10a_prevmuni_lbl 3159209 `"Santa Rita de Caldas"', add
label define br10a_prevmuni_lbl 3159308 `"Santa Rita de Jacutinga"', add
label define br10a_prevmuni_lbl 3159357 `"Santa Rita de Minas"', add
label define br10a_prevmuni_lbl 3159407 `"Santa Rita de Ibitipoca"', add
label define br10a_prevmuni_lbl 3159506 `"Santa Rita do Itueto"', add
label define br10a_prevmuni_lbl 3159605 `"Santa Rita do Sapuca�"', add
label define br10a_prevmuni_lbl 3159704 `"Santa Rosa da Serra"', add
label define br10a_prevmuni_lbl 3159803 `"Santa Vit�ria"', add
label define br10a_prevmuni_lbl 3159902 `"Santo Ant�nio do Amparo"', add
label define br10a_prevmuni_lbl 3160009 `"Santo Ant�nio do Aventureiro"', add
label define br10a_prevmuni_lbl 3160108 `"Santo Ant�nio do Grama"', add
label define br10a_prevmuni_lbl 3160207 `"Santo Ant�nio do Itamb�"', add
label define br10a_prevmuni_lbl 3160306 `"Santo Ant�nio do Jacinto"', add
label define br10a_prevmuni_lbl 3160405 `"Santo Ant�nio do Monte"', add
label define br10a_prevmuni_lbl 3160454 `"Santo Ant�nio do Retiro"', add
label define br10a_prevmuni_lbl 3160504 `"Santo Ant�nio do Rio Abaixo"', add
label define br10a_prevmuni_lbl 3160603 `"Santo Hip�lito"', add
label define br10a_prevmuni_lbl 3160702 `"Santos Dumont"', add
label define br10a_prevmuni_lbl 3160801 `"S�o Bento Abade"', add
label define br10a_prevmuni_lbl 3160900 `"S�o Br�s do Sua�u�"', add
label define br10a_prevmuni_lbl 3160959 `"S�o Domingos das Dores"', add
label define br10a_prevmuni_lbl 3161007 `"S�o Domingos do Prata"', add
label define br10a_prevmuni_lbl 3161056 `"S�o F�lix de Minas"', add
label define br10a_prevmuni_lbl 3161106 `"S�o Francisco"', add
label define br10a_prevmuni_lbl 3161205 `"S�o Francisco de Paula"', add
label define br10a_prevmuni_lbl 3161304 `"S�o Francisco de Sales"', add
label define br10a_prevmuni_lbl 3161403 `"S�o Francisco do Gl�ria"', add
label define br10a_prevmuni_lbl 3161502 `"S�o Geraldo"', add
label define br10a_prevmuni_lbl 3161601 `"S�o Geraldo da Piedade"', add
label define br10a_prevmuni_lbl 3161650 `"S�o Geraldo do Baixio"', add
label define br10a_prevmuni_lbl 3161700 `"S�o Gon�alo do Abaet�"', add
label define br10a_prevmuni_lbl 3161809 `"S�o Gon�alo do Par�"', add
label define br10a_prevmuni_lbl 3161908 `"S�o Gon�alo do Rio Abaixo"', add
label define br10a_prevmuni_lbl 3162005 `"S�o Gon�alo do Sapuca�"', add
label define br10a_prevmuni_lbl 3162104 `"S�o Gotardo"', add
label define br10a_prevmuni_lbl 3162203 `"S�o Jo�o Batista do Gl�ria"', add
label define br10a_prevmuni_lbl 3162252 `"S�o Jo�o da Lagoa"', add
label define br10a_prevmuni_lbl 3162302 `"S�o Jo�o da Mata"', add
label define br10a_prevmuni_lbl 3162401 `"S�o Jo�o da Ponte"', add
label define br10a_prevmuni_lbl 3162450 `"S�o Jo�o das Miss�es"', add
label define br10a_prevmuni_lbl 3162500 `"S�o Jo�o del Rei"', add
label define br10a_prevmuni_lbl 3162559 `"S�o Jo�o do Manhua�u"', add
label define br10a_prevmuni_lbl 3162575 `"S�o Jo�o do Manteninha"', add
label define br10a_prevmuni_lbl 3162609 `"S�o Jo�o do Oriente"', add
label define br10a_prevmuni_lbl 3162658 `"S�o Jo�o do Pacu�"', add
label define br10a_prevmuni_lbl 3162708 `"S�o Jo�o do Para�so"', add
label define br10a_prevmuni_lbl 3162807 `"S�o Jo�o Evangelista"', add
label define br10a_prevmuni_lbl 3162906 `"S�o Jo�o Nepomuceno"', add
label define br10a_prevmuni_lbl 3162922 `"S�o Joaquim de Bicas"', add
label define br10a_prevmuni_lbl 3162948 `"S�o Jos� da Barra"', add
label define br10a_prevmuni_lbl 3162955 `"S�o Jos� da Lapa"', add
label define br10a_prevmuni_lbl 3163003 `"S�o Jos� da Safira"', add
label define br10a_prevmuni_lbl 3163102 `"S�o Jos� da Varginha"', add
label define br10a_prevmuni_lbl 3163201 `"S�o Jos� do Alegre"', add
label define br10a_prevmuni_lbl 3163300 `"S�o Jos� do Divino"', add
label define br10a_prevmuni_lbl 3163409 `"S�o Jos� do Goiabal"', add
label define br10a_prevmuni_lbl 3163508 `"S�o Jos� do Jacuri"', add
label define br10a_prevmuni_lbl 3163607 `"S�o Jos� do Mantimento"', add
label define br10a_prevmuni_lbl 3163706 `"S�o Louren�o"', add
label define br10a_prevmuni_lbl 3163805 `"S�o Miguel do Anta"', add
label define br10a_prevmuni_lbl 3163904 `"S�o Pedro da Uni�o"', add
label define br10a_prevmuni_lbl 3164001 `"S�o Pedro dos Ferros"', add
label define br10a_prevmuni_lbl 3164100 `"S�o Pedro do Sua�u�"', add
label define br10a_prevmuni_lbl 3164209 `"S�o Rom�o"', add
label define br10a_prevmuni_lbl 3164308 `"S�o Roque de Minas"', add
label define br10a_prevmuni_lbl 3164407 `"S�o Sebasti�o da Bela Vista"', add
label define br10a_prevmuni_lbl 3164431 `"S�o Sebasti�o da Vargem Alegre"', add
label define br10a_prevmuni_lbl 3164472 `"S�o Sebasti�o do Anta"', add
label define br10a_prevmuni_lbl 3164506 `"S�o Sebasti�o do Maranh�o"', add
label define br10a_prevmuni_lbl 3164605 `"S�o Sebasti�o do Oeste"', add
label define br10a_prevmuni_lbl 3164704 `"S�o Sebasti�o do Para�so"', add
label define br10a_prevmuni_lbl 3164803 `"S�o Sebasti�o do Rio Preto"', add
label define br10a_prevmuni_lbl 3164902 `"S�o Sebasti�o do Rio Verde"', add
label define br10a_prevmuni_lbl 3165008 `"S�o Tiago"', add
label define br10a_prevmuni_lbl 3165107 `"S�o Tom�s de Aquino"', add
label define br10a_prevmuni_lbl 3165206 `"S�o Thom� das Letras"', add
label define br10a_prevmuni_lbl 3165305 `"S�o Vicente de Minas"', add
label define br10a_prevmuni_lbl 3165404 `"Sapuca�-Mirim"', add
label define br10a_prevmuni_lbl 3165503 `"Sardo�"', add
label define br10a_prevmuni_lbl 3165537 `"Sarzedo"', add
label define br10a_prevmuni_lbl 3165552 `"Setubinha"', add
label define br10a_prevmuni_lbl 3165560 `"Sem-Peixe"', add
label define br10a_prevmuni_lbl 3165578 `"Senador Amaral"', add
label define br10a_prevmuni_lbl 3165602 `"Senador Cortes"', add
label define br10a_prevmuni_lbl 3165701 `"Senador Firmino"', add
label define br10a_prevmuni_lbl 3165800 `"Senador Jos� Bento"', add
label define br10a_prevmuni_lbl 3165909 `"Senador Modestino Gon�alves"', add
label define br10a_prevmuni_lbl 3166006 `"Senhora de Oliveira"', add
label define br10a_prevmuni_lbl 3166105 `"Senhora do Porto"', add
label define br10a_prevmuni_lbl 3166204 `"Senhora dos Rem�dios"', add
label define br10a_prevmuni_lbl 3166303 `"Sericita"', add
label define br10a_prevmuni_lbl 3166402 `"Seritinga"', add
label define br10a_prevmuni_lbl 3166501 `"Serra Azul de Minas"', add
label define br10a_prevmuni_lbl 3166600 `"Serra da Saudade"', add
label define br10a_prevmuni_lbl 3166709 `"Serra dos Aimor�s"', add
label define br10a_prevmuni_lbl 3166808 `"Serra do Salitre"', add
label define br10a_prevmuni_lbl 3166907 `"Serrania"', add
label define br10a_prevmuni_lbl 3166956 `"Serran�polis de Minas"', add
label define br10a_prevmuni_lbl 3167004 `"Serranos"', add
label define br10a_prevmuni_lbl 3167103 `"Serro"', add
label define br10a_prevmuni_lbl 3167202 `"Sete Lagoas"', add
label define br10a_prevmuni_lbl 3167301 `"Silveir�nia"', add
label define br10a_prevmuni_lbl 3167400 `"Silvian�polis"', add
label define br10a_prevmuni_lbl 3167509 `"Sim�o Pereira"', add
label define br10a_prevmuni_lbl 3167608 `"Simon�sia"', add
label define br10a_prevmuni_lbl 3167707 `"Sobr�lia"', add
label define br10a_prevmuni_lbl 3167806 `"Soledade de Minas"', add
label define br10a_prevmuni_lbl 3167905 `"Tabuleiro"', add
label define br10a_prevmuni_lbl 3168002 `"Taiobeiras"', add
label define br10a_prevmuni_lbl 3168051 `"Taparuba"', add
label define br10a_prevmuni_lbl 3168101 `"Tapira"', add
label define br10a_prevmuni_lbl 3168200 `"Tapira�"', add
label define br10a_prevmuni_lbl 3168309 `"Taquara�u de Minas"', add
label define br10a_prevmuni_lbl 3168408 `"Tarumirim"', add
label define br10a_prevmuni_lbl 3168507 `"Teixeiras"', add
label define br10a_prevmuni_lbl 3168606 `"Te�filo Otoni"', add
label define br10a_prevmuni_lbl 3168705 `"Tim�teo"', add
label define br10a_prevmuni_lbl 3168804 `"Tiradentes"', add
label define br10a_prevmuni_lbl 3168903 `"Tiros"', add
label define br10a_prevmuni_lbl 3169000 `"Tocantins"', add
label define br10a_prevmuni_lbl 3169059 `"Tocos do Moji"', add
label define br10a_prevmuni_lbl 3169109 `"Toledo"', add
label define br10a_prevmuni_lbl 3169208 `"Tombos"', add
label define br10a_prevmuni_lbl 3169307 `"Tr�s Cora��es"', add
label define br10a_prevmuni_lbl 3169356 `"Tr�s Marias"', add
label define br10a_prevmuni_lbl 3169406 `"Tr�s Pontas"', add
label define br10a_prevmuni_lbl 3169505 `"Tumiritinga"', add
label define br10a_prevmuni_lbl 3169604 `"Tupaciguara"', add
label define br10a_prevmuni_lbl 3169703 `"Turmalina"', add
label define br10a_prevmuni_lbl 3169802 `"Turvol�ndia"', add
label define br10a_prevmuni_lbl 3169901 `"Ub�"', add
label define br10a_prevmuni_lbl 3170008 `"Uba�"', add
label define br10a_prevmuni_lbl 3170057 `"Ubaporanga"', add
label define br10a_prevmuni_lbl 3170107 `"Uberaba"', add
label define br10a_prevmuni_lbl 3170206 `"Uberl�ndia"', add
label define br10a_prevmuni_lbl 3170305 `"Umburatiba"', add
label define br10a_prevmuni_lbl 3170404 `"Una�"', add
label define br10a_prevmuni_lbl 3170438 `"Uni�o de Minas"', add
label define br10a_prevmuni_lbl 3170479 `"Uruana de Minas"', add
label define br10a_prevmuni_lbl 3170503 `"Uruc�nia"', add
label define br10a_prevmuni_lbl 3170529 `"Urucuia"', add
label define br10a_prevmuni_lbl 3170578 `"Vargem Alegre"', add
label define br10a_prevmuni_lbl 3170602 `"Vargem Bonita"', add
label define br10a_prevmuni_lbl 3170651 `"Vargem Grande do Rio Pardo"', add
label define br10a_prevmuni_lbl 3170701 `"Varginha"', add
label define br10a_prevmuni_lbl 3170750 `"Varj�o de Minas"', add
label define br10a_prevmuni_lbl 3170800 `"V�rzea da Palma"', add
label define br10a_prevmuni_lbl 3170909 `"Varzel�ndia"', add
label define br10a_prevmuni_lbl 3171006 `"Vazante"', add
label define br10a_prevmuni_lbl 3171030 `"Verdel�ndia"', add
label define br10a_prevmuni_lbl 3171071 `"Veredinha"', add
label define br10a_prevmuni_lbl 3171105 `"Ver�ssimo"', add
label define br10a_prevmuni_lbl 3171154 `"Vermelho Novo"', add
label define br10a_prevmuni_lbl 3171204 `"Vespasiano"', add
label define br10a_prevmuni_lbl 3171303 `"Vi�osa"', add
label define br10a_prevmuni_lbl 3171402 `"Vieiras"', add
label define br10a_prevmuni_lbl 3171501 `"Mathias Lobato"', add
label define br10a_prevmuni_lbl 3171600 `"Virgem da Lapa"', add
label define br10a_prevmuni_lbl 3171709 `"Virg�nia"', add
label define br10a_prevmuni_lbl 3171808 `"Virgin�polis"', add
label define br10a_prevmuni_lbl 3171907 `"Virgol�ndia"', add
label define br10a_prevmuni_lbl 3172004 `"Visconde do Rio Branco"', add
label define br10a_prevmuni_lbl 3172103 `"Volta Grande"', add
label define br10a_prevmuni_lbl 3172202 `"Wenceslau Braz"', add
label define br10a_prevmuni_lbl 3199999 `"Minas Gerais, municipality unknown"', add
label define br10a_prevmuni_lbl 3200102 `"Afonso Cl�udio"', add
label define br10a_prevmuni_lbl 3200136 `"�guia Branca"', add
label define br10a_prevmuni_lbl 3200169 `"�gua Doce do Norte"', add
label define br10a_prevmuni_lbl 3200201 `"Alegre"', add
label define br10a_prevmuni_lbl 3200300 `"Alfredo Chaves"', add
label define br10a_prevmuni_lbl 3200359 `"Alto Rio Novo"', add
label define br10a_prevmuni_lbl 3200409 `"Anchieta"', add
label define br10a_prevmuni_lbl 3200508 `"Apiac�"', add
label define br10a_prevmuni_lbl 3200607 `"Aracruz"', add
label define br10a_prevmuni_lbl 3200706 `"Atilio Vivacqua"', add
label define br10a_prevmuni_lbl 3200805 `"Baixo Guandu"', add
label define br10a_prevmuni_lbl 3200904 `"Barra de S�o Francisco"', add
label define br10a_prevmuni_lbl 3201001 `"Boa Esperan�a"', add
label define br10a_prevmuni_lbl 3201100 `"Bom Jesus do Norte"', add
label define br10a_prevmuni_lbl 3201159 `"Brejetuba"', add
label define br10a_prevmuni_lbl 3201209 `"Cachoeiro de Itapemirim"', add
label define br10a_prevmuni_lbl 3201308 `"Cariacica"', add
label define br10a_prevmuni_lbl 3201407 `"Castelo"', add
label define br10a_prevmuni_lbl 3201506 `"Colatina"', add
label define br10a_prevmuni_lbl 3201605 `"Concei��o da Barra"', add
label define br10a_prevmuni_lbl 3201704 `"Concei��o do Castelo"', add
label define br10a_prevmuni_lbl 3201803 `"Divino de S�o Louren�o"', add
label define br10a_prevmuni_lbl 3201902 `"Domingos Martins"', add
label define br10a_prevmuni_lbl 3202009 `"Dores do Rio Preto"', add
label define br10a_prevmuni_lbl 3202108 `"Ecoporanga"', add
label define br10a_prevmuni_lbl 3202207 `"Fund�o"', add
label define br10a_prevmuni_lbl 3202256 `"Governador Lindenberg"', add
label define br10a_prevmuni_lbl 3202306 `"Gua�u�"', add
label define br10a_prevmuni_lbl 3202405 `"Guarapari"', add
label define br10a_prevmuni_lbl 3202454 `"Ibatiba"', add
label define br10a_prevmuni_lbl 3202504 `"Ibira�u"', add
label define br10a_prevmuni_lbl 3202553 `"Ibitirama"', add
label define br10a_prevmuni_lbl 3202603 `"Iconha"', add
label define br10a_prevmuni_lbl 3202652 `"Irupi"', add
label define br10a_prevmuni_lbl 3202702 `"Itagua�u"', add
label define br10a_prevmuni_lbl 3202801 `"Itapemirim"', add
label define br10a_prevmuni_lbl 3202900 `"Itarana"', add
label define br10a_prevmuni_lbl 3203007 `"I�na"', add
label define br10a_prevmuni_lbl 3203056 `"Jaguar�"', add
label define br10a_prevmuni_lbl 3203106 `"Jer�nimo Monteiro"', add
label define br10a_prevmuni_lbl 3203130 `"Jo�o Neiva"', add
label define br10a_prevmuni_lbl 3203163 `"Laranja da Terra"', add
label define br10a_prevmuni_lbl 3203205 `"Linhares"', add
label define br10a_prevmuni_lbl 3203304 `"Manten�polis"', add
label define br10a_prevmuni_lbl 3203320 `"Marata�zes"', add
label define br10a_prevmuni_lbl 3203346 `"Marechal Floriano"', add
label define br10a_prevmuni_lbl 3203353 `"Maril�ndia"', add
label define br10a_prevmuni_lbl 3203403 `"Mimoso do Sul"', add
label define br10a_prevmuni_lbl 3203502 `"Montanha"', add
label define br10a_prevmuni_lbl 3203601 `"Mucurici"', add
label define br10a_prevmuni_lbl 3203700 `"Muniz Freire"', add
label define br10a_prevmuni_lbl 3203809 `"Muqui"', add
label define br10a_prevmuni_lbl 3203908 `"Nova Ven�cia"', add
label define br10a_prevmuni_lbl 3204005 `"Pancas"', add
label define br10a_prevmuni_lbl 3204054 `"Pedro Can�rio"', add
label define br10a_prevmuni_lbl 3204104 `"Pinheiros"', add
label define br10a_prevmuni_lbl 3204203 `"Pi�ma"', add
label define br10a_prevmuni_lbl 3204252 `"Ponto Belo"', add
label define br10a_prevmuni_lbl 3204302 `"Presidente Kennedy"', add
label define br10a_prevmuni_lbl 3204351 `"Rio Bananal"', add
label define br10a_prevmuni_lbl 3204401 `"Rio Novo do Sul"', add
label define br10a_prevmuni_lbl 3204500 `"Santa Leopoldina"', add
label define br10a_prevmuni_lbl 3204559 `"Santa Maria de Jetib�"', add
label define br10a_prevmuni_lbl 3204609 `"Santa Teresa"', add
label define br10a_prevmuni_lbl 3204658 `"S�o Domingos do Norte"', add
label define br10a_prevmuni_lbl 3204708 `"S�o Gabriel da Palha"', add
label define br10a_prevmuni_lbl 3204807 `"S�o Jos� do Cal�ado"', add
label define br10a_prevmuni_lbl 3204906 `"S�o Mateus"', add
label define br10a_prevmuni_lbl 3204955 `"S�o Roque do Cana�"', add
label define br10a_prevmuni_lbl 3205002 `"Serra"', add
label define br10a_prevmuni_lbl 3205010 `"Sooretama"', add
label define br10a_prevmuni_lbl 3205036 `"Vargem Alta"', add
label define br10a_prevmuni_lbl 3205069 `"Venda Nova do Imigrante"', add
label define br10a_prevmuni_lbl 3205101 `"Viana"', add
label define br10a_prevmuni_lbl 3205150 `"Vila Pav�o"', add
label define br10a_prevmuni_lbl 3205176 `"Vila Val�rio"', add
label define br10a_prevmuni_lbl 3205200 `"Vila Velha"', add
label define br10a_prevmuni_lbl 3205309 `"Vit�ria"', add
label define br10a_prevmuni_lbl 3299999 `"Esp�rito Santo, municipality unknown"', add
label define br10a_prevmuni_lbl 3300100 `"Angra dos Reis"', add
label define br10a_prevmuni_lbl 3300159 `"Aperib�"', add
label define br10a_prevmuni_lbl 3300209 `"Araruama"', add
label define br10a_prevmuni_lbl 3300225 `"Areal"', add
label define br10a_prevmuni_lbl 3300233 `"Arma��o dos B�zios"', add
label define br10a_prevmuni_lbl 3300258 `"Arraial do Cabo"', add
label define br10a_prevmuni_lbl 3300308 `"Barra do Pira�"', add
label define br10a_prevmuni_lbl 3300407 `"Barra Mansa"', add
label define br10a_prevmuni_lbl 3300456 `"Belford Roxo"', add
label define br10a_prevmuni_lbl 3300506 `"Bom Jardim"', add
label define br10a_prevmuni_lbl 3300605 `"Bom Jesus do Itabapoana"', add
label define br10a_prevmuni_lbl 3300704 `"Cabo Frio"', add
label define br10a_prevmuni_lbl 3300803 `"Cachoeiras de Macacu"', add
label define br10a_prevmuni_lbl 3300902 `"Cambuci"', add
label define br10a_prevmuni_lbl 3300936 `"Carapebus"', add
label define br10a_prevmuni_lbl 3300951 `"Comendador Levy Gasparian"', add
label define br10a_prevmuni_lbl 3301009 `"Campos dos Goytacazes"', add
label define br10a_prevmuni_lbl 3301108 `"Cantagalo"', add
label define br10a_prevmuni_lbl 3301157 `"Cardoso Moreira"', add
label define br10a_prevmuni_lbl 3301207 `"Carmo"', add
label define br10a_prevmuni_lbl 3301306 `"Casimiro de Abreu"', add
label define br10a_prevmuni_lbl 3301405 `"Concei��o de Macabu"', add
label define br10a_prevmuni_lbl 3301504 `"Cordeiro"', add
label define br10a_prevmuni_lbl 3301603 `"Duas Barras"', add
label define br10a_prevmuni_lbl 3301702 `"Duque de Caxias"', add
label define br10a_prevmuni_lbl 3301801 `"Engenheiro Paulo de Frontin"', add
label define br10a_prevmuni_lbl 3301850 `"Guapimirim"', add
label define br10a_prevmuni_lbl 3301876 `"Iguaba Grande"', add
label define br10a_prevmuni_lbl 3301900 `"Itabora�"', add
label define br10a_prevmuni_lbl 3302007 `"Itagua�"', add
label define br10a_prevmuni_lbl 3302056 `"Italva"', add
label define br10a_prevmuni_lbl 3302106 `"Itaocara"', add
label define br10a_prevmuni_lbl 3302205 `"Itaperuna"', add
label define br10a_prevmuni_lbl 3302254 `"Itatiaia"', add
label define br10a_prevmuni_lbl 3302270 `"Japeri"', add
label define br10a_prevmuni_lbl 3302304 `"Laje do Muria�"', add
label define br10a_prevmuni_lbl 3302403 `"Maca�"', add
label define br10a_prevmuni_lbl 3302452 `"Macuco"', add
label define br10a_prevmuni_lbl 3302502 `"Mag�"', add
label define br10a_prevmuni_lbl 3302601 `"Mangaratiba"', add
label define br10a_prevmuni_lbl 3302700 `"Maric�"', add
label define br10a_prevmuni_lbl 3302809 `"Mendes"', add
label define br10a_prevmuni_lbl 3302858 `"Mesquita"', add
label define br10a_prevmuni_lbl 3302908 `"Miguel Pereira"', add
label define br10a_prevmuni_lbl 3303005 `"Miracema"', add
label define br10a_prevmuni_lbl 3303104 `"Natividade"', add
label define br10a_prevmuni_lbl 3303203 `"Nil�polis"', add
label define br10a_prevmuni_lbl 3303302 `"Niter�i"', add
label define br10a_prevmuni_lbl 3303401 `"Nova Friburgo"', add
label define br10a_prevmuni_lbl 3303500 `"Nova Igua�u"', add
label define br10a_prevmuni_lbl 3303609 `"Paracambi"', add
label define br10a_prevmuni_lbl 3303708 `"Para�ba do Sul"', add
label define br10a_prevmuni_lbl 3303807 `"Paraty"', add
label define br10a_prevmuni_lbl 3303856 `"Paty do Alferes"', add
label define br10a_prevmuni_lbl 3303906 `"Petr�polis"', add
label define br10a_prevmuni_lbl 3303955 `"Pinheiral"', add
label define br10a_prevmuni_lbl 3304003 `"Pira�"', add
label define br10a_prevmuni_lbl 3304102 `"Porci�ncula"', add
label define br10a_prevmuni_lbl 3304110 `"Porto Real"', add
label define br10a_prevmuni_lbl 3304128 `"Quatis"', add
label define br10a_prevmuni_lbl 3304144 `"Queimados"', add
label define br10a_prevmuni_lbl 3304151 `"Quissam�"', add
label define br10a_prevmuni_lbl 3304201 `"Resende"', add
label define br10a_prevmuni_lbl 3304300 `"Rio Bonito"', add
label define br10a_prevmuni_lbl 3304409 `"Rio Claro"', add
label define br10a_prevmuni_lbl 3304508 `"Rio das Flores"', add
label define br10a_prevmuni_lbl 3304524 `"Rio das Ostras"', add
label define br10a_prevmuni_lbl 3304557 `"Rio de Janeiro"', add
label define br10a_prevmuni_lbl 3304607 `"Santa Maria Madalena"', add
label define br10a_prevmuni_lbl 3304706 `"Santo Ant�nio de P�dua"', add
label define br10a_prevmuni_lbl 3304755 `"S�o Francisco de Itabapoana"', add
label define br10a_prevmuni_lbl 3304805 `"S�o Fid�lis"', add
label define br10a_prevmuni_lbl 3304904 `"S�o Gon�alo"', add
label define br10a_prevmuni_lbl 3305000 `"S�o Jo�o da Barra"', add
label define br10a_prevmuni_lbl 3305109 `"S�o Jo�o de Meriti"', add
label define br10a_prevmuni_lbl 3305133 `"S�o Jos� de Ub�"', add
label define br10a_prevmuni_lbl 3305158 `"S�o Jos� do Vale do Rio Preto"', add
label define br10a_prevmuni_lbl 3305208 `"S�o Pedro da Aldeia"', add
label define br10a_prevmuni_lbl 3305307 `"S�o Sebasti�o do Alto"', add
label define br10a_prevmuni_lbl 3305406 `"Sapucaia"', add
label define br10a_prevmuni_lbl 3305505 `"Saquarema"', add
label define br10a_prevmuni_lbl 3305554 `"Serop�dica"', add
label define br10a_prevmuni_lbl 3305604 `"Silva Jardim"', add
label define br10a_prevmuni_lbl 3305703 `"Sumidouro"', add
label define br10a_prevmuni_lbl 3305752 `"Tangu�"', add
label define br10a_prevmuni_lbl 3305802 `"Teres�polis"', add
label define br10a_prevmuni_lbl 3305901 `"Trajano de Moraes"', add
label define br10a_prevmuni_lbl 3306008 `"Tr�s Rios"', add
label define br10a_prevmuni_lbl 3306107 `"Valen�a"', add
label define br10a_prevmuni_lbl 3306156 `"Varre-Sai"', add
label define br10a_prevmuni_lbl 3306206 `"Vassouras"', add
label define br10a_prevmuni_lbl 3306305 `"Volta Redonda"', add
label define br10a_prevmuni_lbl 3399999 `"Rio de Janeiro, municipality unknown"', add
label define br10a_prevmuni_lbl 3500105 `"Adamantina"', add
label define br10a_prevmuni_lbl 3500204 `"Adolfo"', add
label define br10a_prevmuni_lbl 3500303 `"Agua�"', add
label define br10a_prevmuni_lbl 3500402 `"�guas da Prata"', add
label define br10a_prevmuni_lbl 3500501 `"�guas de Lind�ia"', add
label define br10a_prevmuni_lbl 3500550 `"�guas de Santa B�rbara"', add
label define br10a_prevmuni_lbl 3500600 `"�guas de S�o Pedro"', add
label define br10a_prevmuni_lbl 3500709 `"Agudos"', add
label define br10a_prevmuni_lbl 3500758 `"Alambari"', add
label define br10a_prevmuni_lbl 3500808 `"Alfredo Marcondes"', add
label define br10a_prevmuni_lbl 3500907 `"Altair"', add
label define br10a_prevmuni_lbl 3501004 `"Altin�polis"', add
label define br10a_prevmuni_lbl 3501103 `"Alto Alegre"', add
label define br10a_prevmuni_lbl 3501152 `"Alum�nio"', add
label define br10a_prevmuni_lbl 3501202 `"�lvares Florence"', add
label define br10a_prevmuni_lbl 3501301 `"�lvares Machado"', add
label define br10a_prevmuni_lbl 3501400 `"�lvaro de Carvalho"', add
label define br10a_prevmuni_lbl 3501509 `"Alvinl�ndia"', add
label define br10a_prevmuni_lbl 3501608 `"Americana"', add
label define br10a_prevmuni_lbl 3501707 `"Am�rico Brasiliense"', add
label define br10a_prevmuni_lbl 3501806 `"Am�rico de Campos"', add
label define br10a_prevmuni_lbl 3501905 `"Amparo"', add
label define br10a_prevmuni_lbl 3502002 `"Anal�ndia"', add
label define br10a_prevmuni_lbl 3502101 `"Andradina"', add
label define br10a_prevmuni_lbl 3502200 `"Angatuba"', add
label define br10a_prevmuni_lbl 3502309 `"Anhembi"', add
label define br10a_prevmuni_lbl 3502408 `"Anhumas"', add
label define br10a_prevmuni_lbl 3502507 `"Aparecida"', add
label define br10a_prevmuni_lbl 3502606 `"Aparecida d'Oeste"', add
label define br10a_prevmuni_lbl 3502705 `"Apia�"', add
label define br10a_prevmuni_lbl 3502754 `"Ara�ariguama"', add
label define br10a_prevmuni_lbl 3502804 `"Ara�atuba"', add
label define br10a_prevmuni_lbl 3502903 `"Ara�oiaba da Serra"', add
label define br10a_prevmuni_lbl 3503000 `"Aramina"', add
label define br10a_prevmuni_lbl 3503109 `"Arandu"', add
label define br10a_prevmuni_lbl 3503158 `"Arape�"', add
label define br10a_prevmuni_lbl 3503208 `"Araraquara"', add
label define br10a_prevmuni_lbl 3503307 `"Araras"', add
label define br10a_prevmuni_lbl 3503356 `"Arco-�ris"', add
label define br10a_prevmuni_lbl 3503406 `"Arealva"', add
label define br10a_prevmuni_lbl 3503505 `"Areias"', add
label define br10a_prevmuni_lbl 3503604 `"Arei�polis"', add
label define br10a_prevmuni_lbl 3503703 `"Ariranha"', add
label define br10a_prevmuni_lbl 3503802 `"Artur Nogueira"', add
label define br10a_prevmuni_lbl 3503901 `"Aruj�"', add
label define br10a_prevmuni_lbl 3503950 `"Asp�sia"', add
label define br10a_prevmuni_lbl 3504008 `"Assis"', add
label define br10a_prevmuni_lbl 3504107 `"Atibaia"', add
label define br10a_prevmuni_lbl 3504206 `"Auriflama"', add
label define br10a_prevmuni_lbl 3504305 `"Ava�"', add
label define br10a_prevmuni_lbl 3504404 `"Avanhandava"', add
label define br10a_prevmuni_lbl 3504503 `"Avar�"', add
label define br10a_prevmuni_lbl 3504602 `"Bady Bassitt"', add
label define br10a_prevmuni_lbl 3504701 `"Balbinos"', add
label define br10a_prevmuni_lbl 3504800 `"B�lsamo"', add
label define br10a_prevmuni_lbl 3504909 `"Bananal"', add
label define br10a_prevmuni_lbl 3505005 `"Bar�o de Antonina"', add
label define br10a_prevmuni_lbl 3505104 `"Barbosa"', add
label define br10a_prevmuni_lbl 3505203 `"Bariri"', add
label define br10a_prevmuni_lbl 3505302 `"Barra Bonita"', add
label define br10a_prevmuni_lbl 3505351 `"Barra do Chap�u"', add
label define br10a_prevmuni_lbl 3505401 `"Barra do Turvo"', add
label define br10a_prevmuni_lbl 3505500 `"Barretos"', add
label define br10a_prevmuni_lbl 3505609 `"Barrinha"', add
label define br10a_prevmuni_lbl 3505708 `"Barueri"', add
label define br10a_prevmuni_lbl 3505807 `"Bastos"', add
label define br10a_prevmuni_lbl 3505906 `"Batatais"', add
label define br10a_prevmuni_lbl 3506003 `"Bauru"', add
label define br10a_prevmuni_lbl 3506102 `"Bebedouro"', add
label define br10a_prevmuni_lbl 3506201 `"Bento de Abreu"', add
label define br10a_prevmuni_lbl 3506300 `"Bernardino de Campos"', add
label define br10a_prevmuni_lbl 3506359 `"Bertioga"', add
label define br10a_prevmuni_lbl 3506409 `"Bilac"', add
label define br10a_prevmuni_lbl 3506508 `"Birigui"', add
label define br10a_prevmuni_lbl 3506607 `"Biritiba-Mirim"', add
label define br10a_prevmuni_lbl 3506706 `"Boa Esperan�a do Sul"', add
label define br10a_prevmuni_lbl 3506805 `"Bocaina"', add
label define br10a_prevmuni_lbl 3506904 `"Bofete"', add
label define br10a_prevmuni_lbl 3507001 `"Boituva"', add
label define br10a_prevmuni_lbl 3507100 `"Bom Jesus dos Perd�es"', add
label define br10a_prevmuni_lbl 3507159 `"Bom Sucesso de Itarar�"', add
label define br10a_prevmuni_lbl 3507209 `"Bor�"', add
label define br10a_prevmuni_lbl 3507308 `"Borac�ia"', add
label define br10a_prevmuni_lbl 3507407 `"Borborema"', add
label define br10a_prevmuni_lbl 3507456 `"Borebi"', add
label define br10a_prevmuni_lbl 3507506 `"Botucatu"', add
label define br10a_prevmuni_lbl 3507605 `"Bragan�a Paulista"', add
label define br10a_prevmuni_lbl 3507704 `"Bra�na"', add
label define br10a_prevmuni_lbl 3507753 `"Brejo Alegre"', add
label define br10a_prevmuni_lbl 3507803 `"Brodowski"', add
label define br10a_prevmuni_lbl 3507902 `"Brotas"', add
label define br10a_prevmuni_lbl 3508009 `"Buri"', add
label define br10a_prevmuni_lbl 3508108 `"Buritama"', add
label define br10a_prevmuni_lbl 3508207 `"Buritizal"', add
label define br10a_prevmuni_lbl 3508306 `"Cabr�lia Paulista"', add
label define br10a_prevmuni_lbl 3508405 `"Cabre�va"', add
label define br10a_prevmuni_lbl 3508504 `"Ca�apava"', add
label define br10a_prevmuni_lbl 3508603 `"Cachoeira Paulista"', add
label define br10a_prevmuni_lbl 3508702 `"Caconde"', add
label define br10a_prevmuni_lbl 3508801 `"Cafel�ndia"', add
label define br10a_prevmuni_lbl 3508900 `"Caiabu"', add
label define br10a_prevmuni_lbl 3509007 `"Caieiras"', add
label define br10a_prevmuni_lbl 3509106 `"Caiu�"', add
label define br10a_prevmuni_lbl 3509205 `"Cajamar"', add
label define br10a_prevmuni_lbl 3509254 `"Cajati"', add
label define br10a_prevmuni_lbl 3509304 `"Cajobi"', add
label define br10a_prevmuni_lbl 3509403 `"Cajuru"', add
label define br10a_prevmuni_lbl 3509452 `"Campina do Monte Alegre"', add
label define br10a_prevmuni_lbl 3509502 `"Campinas"', add
label define br10a_prevmuni_lbl 3509601 `"Campo Limpo Paulista"', add
label define br10a_prevmuni_lbl 3509700 `"Campos do Jord�o"', add
label define br10a_prevmuni_lbl 3509809 `"Campos Novos Paulista"', add
label define br10a_prevmuni_lbl 3509908 `"Canan�ia"', add
label define br10a_prevmuni_lbl 3509957 `"Canas"', add
label define br10a_prevmuni_lbl 3510005 `"C�ndido Mota"', add
label define br10a_prevmuni_lbl 3510104 `"C�ndido Rodrigues"', add
label define br10a_prevmuni_lbl 3510153 `"Canitar"', add
label define br10a_prevmuni_lbl 3510203 `"Cap�o Bonito"', add
label define br10a_prevmuni_lbl 3510302 `"Capela do Alto"', add
label define br10a_prevmuni_lbl 3510401 `"Capivari"', add
label define br10a_prevmuni_lbl 3510500 `"Caraguatatuba"', add
label define br10a_prevmuni_lbl 3510609 `"Carapicu�ba"', add
label define br10a_prevmuni_lbl 3510708 `"Cardoso"', add
label define br10a_prevmuni_lbl 3510807 `"Casa Branca"', add
label define br10a_prevmuni_lbl 3510906 `"C�ssia dos Coqueiros"', add
label define br10a_prevmuni_lbl 3511003 `"Castilho"', add
label define br10a_prevmuni_lbl 3511102 `"Catanduva"', add
label define br10a_prevmuni_lbl 3511201 `"Catigu�"', add
label define br10a_prevmuni_lbl 3511300 `"Cedral"', add
label define br10a_prevmuni_lbl 3511409 `"Cerqueira C�sar"', add
label define br10a_prevmuni_lbl 3511508 `"Cerquilho"', add
label define br10a_prevmuni_lbl 3511607 `"Ces�rio Lange"', add
label define br10a_prevmuni_lbl 3511706 `"Charqueada"', add
label define br10a_prevmuni_lbl 3511904 `"Clementina"', add
label define br10a_prevmuni_lbl 3512001 `"Colina"', add
label define br10a_prevmuni_lbl 3512100 `"Col�mbia"', add
label define br10a_prevmuni_lbl 3512209 `"Conchal"', add
label define br10a_prevmuni_lbl 3512308 `"Conchas"', add
label define br10a_prevmuni_lbl 3512407 `"Cordeir�polis"', add
label define br10a_prevmuni_lbl 3512506 `"Coroados"', add
label define br10a_prevmuni_lbl 3512605 `"Coronel Macedo"', add
label define br10a_prevmuni_lbl 3512704 `"Corumbata�"', add
label define br10a_prevmuni_lbl 3512803 `"Cosm�polis"', add
label define br10a_prevmuni_lbl 3512902 `"Cosmorama"', add
label define br10a_prevmuni_lbl 3513009 `"Cotia"', add
label define br10a_prevmuni_lbl 3513108 `"Cravinhos"', add
label define br10a_prevmuni_lbl 3513207 `"Cristais Paulista"', add
label define br10a_prevmuni_lbl 3513306 `"Cruz�lia"', add
label define br10a_prevmuni_lbl 3513405 `"Cruzeiro"', add
label define br10a_prevmuni_lbl 3513504 `"Cubat�o"', add
label define br10a_prevmuni_lbl 3513603 `"Cunha"', add
label define br10a_prevmuni_lbl 3513702 `"Descalvado"', add
label define br10a_prevmuni_lbl 3513801 `"Diadema"', add
label define br10a_prevmuni_lbl 3513850 `"Dirce Reis"', add
label define br10a_prevmuni_lbl 3513900 `"Divinol�ndia"', add
label define br10a_prevmuni_lbl 3514007 `"Dobrada"', add
label define br10a_prevmuni_lbl 3514106 `"Dois C�rregos"', add
label define br10a_prevmuni_lbl 3514205 `"Dolcin�polis"', add
label define br10a_prevmuni_lbl 3514304 `"Dourado"', add
label define br10a_prevmuni_lbl 3514403 `"Dracena"', add
label define br10a_prevmuni_lbl 3514502 `"Duartina"', add
label define br10a_prevmuni_lbl 3514601 `"Dumont"', add
label define br10a_prevmuni_lbl 3514700 `"Echapor�"', add
label define br10a_prevmuni_lbl 3514809 `"Eldorado"', add
label define br10a_prevmuni_lbl 3514908 `"Elias Fausto"', add
label define br10a_prevmuni_lbl 3514924 `"Elisi�rio"', add
label define br10a_prevmuni_lbl 3514957 `"Emba�ba"', add
label define br10a_prevmuni_lbl 3515004 `"Embu"', add
label define br10a_prevmuni_lbl 3515103 `"Embu-Gua�u"', add
label define br10a_prevmuni_lbl 3515129 `"Emilian�polis"', add
label define br10a_prevmuni_lbl 3515152 `"Engenheiro Coelho"', add
label define br10a_prevmuni_lbl 3515186 `"Esp�rito Santo do Pinhal"', add
label define br10a_prevmuni_lbl 3515194 `"Esp�rito Santo do Turvo"', add
label define br10a_prevmuni_lbl 3515202 `"Estrela d'Oeste"', add
label define br10a_prevmuni_lbl 3515301 `"Estrela do Norte"', add
label define br10a_prevmuni_lbl 3515350 `"Euclides da Cunha Paulista"', add
label define br10a_prevmuni_lbl 3515400 `"Fartura"', add
label define br10a_prevmuni_lbl 3515509 `"Fernand�polis"', add
label define br10a_prevmuni_lbl 3515608 `"Fernando Prestes"', add
label define br10a_prevmuni_lbl 3515657 `"Fern�o"', add
label define br10a_prevmuni_lbl 3515707 `"Ferraz de Vasconcelos"', add
label define br10a_prevmuni_lbl 3515806 `"Flora Rica"', add
label define br10a_prevmuni_lbl 3515905 `"Floreal"', add
label define br10a_prevmuni_lbl 3516002 `"Fl�rida Paulista"', add
label define br10a_prevmuni_lbl 3516101 `"Flor�nia"', add
label define br10a_prevmuni_lbl 3516200 `"Franca"', add
label define br10a_prevmuni_lbl 3516309 `"Francisco Morato"', add
label define br10a_prevmuni_lbl 3516408 `"Franco da Rocha"', add
label define br10a_prevmuni_lbl 3516507 `"Gabriel Monteiro"', add
label define br10a_prevmuni_lbl 3516606 `"G�lia"', add
label define br10a_prevmuni_lbl 3516705 `"Gar�a"', add
label define br10a_prevmuni_lbl 3516804 `"Gast�o Vidigal"', add
label define br10a_prevmuni_lbl 3516853 `"Gavi�o Peixoto"', add
label define br10a_prevmuni_lbl 3516903 `"General Salgado"', add
label define br10a_prevmuni_lbl 3517000 `"Getulina"', add
label define br10a_prevmuni_lbl 3517109 `"Glic�rio"', add
label define br10a_prevmuni_lbl 3517208 `"Guai�ara"', add
label define br10a_prevmuni_lbl 3517307 `"Guaimb�"', add
label define br10a_prevmuni_lbl 3517406 `"Gua�ra"', add
label define br10a_prevmuni_lbl 3517505 `"Guapia�u"', add
label define br10a_prevmuni_lbl 3517604 `"Guapiara"', add
label define br10a_prevmuni_lbl 3517703 `"Guar�"', add
label define br10a_prevmuni_lbl 3517802 `"Guara�a�"', add
label define br10a_prevmuni_lbl 3517901 `"Guaraci"', add
label define br10a_prevmuni_lbl 3518008 `"Guarani d'Oeste"', add
label define br10a_prevmuni_lbl 3518107 `"Guarant�"', add
label define br10a_prevmuni_lbl 3518206 `"Guararapes"', add
label define br10a_prevmuni_lbl 3518305 `"Guararema"', add
label define br10a_prevmuni_lbl 3518404 `"Guaratinguet�"', add
label define br10a_prevmuni_lbl 3518503 `"Guare�"', add
label define br10a_prevmuni_lbl 3518602 `"Guariba"', add
label define br10a_prevmuni_lbl 3518701 `"Guaruj�"', add
label define br10a_prevmuni_lbl 3518800 `"Guarulhos"', add
label define br10a_prevmuni_lbl 3518859 `"Guatapar�"', add
label define br10a_prevmuni_lbl 3518909 `"Guzol�ndia"', add
label define br10a_prevmuni_lbl 3519006 `"Hercul�ndia"', add
label define br10a_prevmuni_lbl 3519055 `"Holambra"', add
label define br10a_prevmuni_lbl 3519071 `"Hortol�ndia"', add
label define br10a_prevmuni_lbl 3519105 `"Iacanga"', add
label define br10a_prevmuni_lbl 3519204 `"Iacri"', add
label define br10a_prevmuni_lbl 3519253 `"Iaras"', add
label define br10a_prevmuni_lbl 3519303 `"Ibat�"', add
label define br10a_prevmuni_lbl 3519402 `"Ibir�"', add
label define br10a_prevmuni_lbl 3519501 `"Ibirarema"', add
label define br10a_prevmuni_lbl 3519600 `"Ibitinga"', add
label define br10a_prevmuni_lbl 3519709 `"Ibi�na"', add
label define br10a_prevmuni_lbl 3519808 `"Ic�m"', add
label define br10a_prevmuni_lbl 3519907 `"Iep�"', add
label define br10a_prevmuni_lbl 3520004 `"Igara�u do Tiet�"', add
label define br10a_prevmuni_lbl 3520103 `"Igarapava"', add
label define br10a_prevmuni_lbl 3520202 `"Igarat�"', add
label define br10a_prevmuni_lbl 3520301 `"Iguape"', add
label define br10a_prevmuni_lbl 3520400 `"Ilhabela"', add
label define br10a_prevmuni_lbl 3520426 `"Ilha Comprida"', add
label define br10a_prevmuni_lbl 3520442 `"Ilha Solteira"', add
label define br10a_prevmuni_lbl 3520509 `"Indaiatuba"', add
label define br10a_prevmuni_lbl 3520608 `"Indiana"', add
label define br10a_prevmuni_lbl 3520707 `"Indiapor�"', add
label define br10a_prevmuni_lbl 3520806 `"In�bia Paulista"', add
label define br10a_prevmuni_lbl 3520905 `"Ipaussu"', add
label define br10a_prevmuni_lbl 3521002 `"Iper�"', add
label define br10a_prevmuni_lbl 3521101 `"Ipe�na"', add
label define br10a_prevmuni_lbl 3521150 `"Ipigu�"', add
label define br10a_prevmuni_lbl 3521200 `"Iporanga"', add
label define br10a_prevmuni_lbl 3521309 `"Ipu�"', add
label define br10a_prevmuni_lbl 3521408 `"Iracem�polis"', add
label define br10a_prevmuni_lbl 3521507 `"Irapu�"', add
label define br10a_prevmuni_lbl 3521606 `"Irapuru"', add
label define br10a_prevmuni_lbl 3521705 `"Itaber�"', add
label define br10a_prevmuni_lbl 3521804 `"Ita�"', add
label define br10a_prevmuni_lbl 3521903 `"Itajobi"', add
label define br10a_prevmuni_lbl 3522000 `"Itaju"', add
label define br10a_prevmuni_lbl 3522109 `"Itanha�m"', add
label define br10a_prevmuni_lbl 3522158 `"Ita�ca"', add
label define br10a_prevmuni_lbl 3522208 `"Itapecerica da Serra"', add
label define br10a_prevmuni_lbl 3522307 `"Itapetininga"', add
label define br10a_prevmuni_lbl 3522406 `"Itapeva"', add
label define br10a_prevmuni_lbl 3522505 `"Itapevi"', add
label define br10a_prevmuni_lbl 3522604 `"Itapira"', add
label define br10a_prevmuni_lbl 3522653 `"Itapirapu� Paulista"', add
label define br10a_prevmuni_lbl 3522703 `"It�polis"', add
label define br10a_prevmuni_lbl 3522802 `"Itaporanga"', add
label define br10a_prevmuni_lbl 3522901 `"Itapu�"', add
label define br10a_prevmuni_lbl 3523008 `"Itapura"', add
label define br10a_prevmuni_lbl 3523107 `"Itaquaquecetuba"', add
label define br10a_prevmuni_lbl 3523206 `"Itarar�"', add
label define br10a_prevmuni_lbl 3523305 `"Itariri"', add
label define br10a_prevmuni_lbl 3523404 `"Itatiba"', add
label define br10a_prevmuni_lbl 3523503 `"Itatinga"', add
label define br10a_prevmuni_lbl 3523602 `"Itirapina"', add
label define br10a_prevmuni_lbl 3523701 `"Itirapu�"', add
label define br10a_prevmuni_lbl 3523800 `"Itobi"', add
label define br10a_prevmuni_lbl 3523909 `"Itu"', add
label define br10a_prevmuni_lbl 3524006 `"Itupeva"', add
label define br10a_prevmuni_lbl 3524105 `"Ituverava"', add
label define br10a_prevmuni_lbl 3524204 `"Jaborandi"', add
label define br10a_prevmuni_lbl 3524303 `"Jaboticabal"', add
label define br10a_prevmuni_lbl 3524402 `"Jacare�"', add
label define br10a_prevmuni_lbl 3524501 `"Jaci"', add
label define br10a_prevmuni_lbl 3524600 `"Jacupiranga"', add
label define br10a_prevmuni_lbl 3524709 `"Jaguari�na"', add
label define br10a_prevmuni_lbl 3524808 `"Jales"', add
label define br10a_prevmuni_lbl 3524907 `"Jambeiro"', add
label define br10a_prevmuni_lbl 3525003 `"Jandira"', add
label define br10a_prevmuni_lbl 3525102 `"Jardin�polis"', add
label define br10a_prevmuni_lbl 3525201 `"Jarinu"', add
label define br10a_prevmuni_lbl 3525300 `"Ja�"', add
label define br10a_prevmuni_lbl 3525409 `"Jeriquara"', add
label define br10a_prevmuni_lbl 3525508 `"Joan�polis"', add
label define br10a_prevmuni_lbl 3525607 `"Jo�o Ramalho"', add
label define br10a_prevmuni_lbl 3525706 `"Jos� Bonif�cio"', add
label define br10a_prevmuni_lbl 3525805 `"J�lio Mesquita"', add
label define br10a_prevmuni_lbl 3525854 `"Jumirim"', add
label define br10a_prevmuni_lbl 3525904 `"Jundia�"', add
label define br10a_prevmuni_lbl 3526001 `"Junqueir�polis"', add
label define br10a_prevmuni_lbl 3526100 `"Juqui�"', add
label define br10a_prevmuni_lbl 3526209 `"Juquitiba"', add
label define br10a_prevmuni_lbl 3526308 `"Lagoinha"', add
label define br10a_prevmuni_lbl 3526407 `"Laranjal Paulista"', add
label define br10a_prevmuni_lbl 3526506 `"Lav�nia"', add
label define br10a_prevmuni_lbl 3526605 `"Lavrinhas"', add
label define br10a_prevmuni_lbl 3526704 `"Leme"', add
label define br10a_prevmuni_lbl 3526803 `"Len��is Paulista"', add
label define br10a_prevmuni_lbl 3526902 `"Limeira"', add
label define br10a_prevmuni_lbl 3527009 `"Lind�ia"', add
label define br10a_prevmuni_lbl 3527108 `"Lins"', add
label define br10a_prevmuni_lbl 3527207 `"Lorena"', add
label define br10a_prevmuni_lbl 3527256 `"Lourdes"', add
label define br10a_prevmuni_lbl 3527306 `"Louveira"', add
label define br10a_prevmuni_lbl 3527405 `"Luc�lia"', add
label define br10a_prevmuni_lbl 3527504 `"Lucian�polis"', add
label define br10a_prevmuni_lbl 3527603 `"Lu�s Ant�nio"', add
label define br10a_prevmuni_lbl 3527702 `"Luizi�nia"', add
label define br10a_prevmuni_lbl 3527801 `"Lup�rcio"', add
label define br10a_prevmuni_lbl 3527900 `"Lut�cia"', add
label define br10a_prevmuni_lbl 3528007 `"Macatuba"', add
label define br10a_prevmuni_lbl 3528106 `"Macaubal"', add
label define br10a_prevmuni_lbl 3528205 `"Maced�nia"', add
label define br10a_prevmuni_lbl 3528304 `"Magda"', add
label define br10a_prevmuni_lbl 3528403 `"Mairinque"', add
label define br10a_prevmuni_lbl 3528502 `"Mairipor�"', add
label define br10a_prevmuni_lbl 3528601 `"Manduri"', add
label define br10a_prevmuni_lbl 3528700 `"Marab� Paulista"', add
label define br10a_prevmuni_lbl 3528809 `"Maraca�"', add
label define br10a_prevmuni_lbl 3528858 `"Marapoama"', add
label define br10a_prevmuni_lbl 3528908 `"Mari�polis"', add
label define br10a_prevmuni_lbl 3529005 `"Mar�lia"', add
label define br10a_prevmuni_lbl 3529104 `"Marin�polis"', add
label define br10a_prevmuni_lbl 3529203 `"Martin�polis"', add
label define br10a_prevmuni_lbl 3529302 `"Mat�o"', add
label define br10a_prevmuni_lbl 3529401 `"Mau�"', add
label define br10a_prevmuni_lbl 3529500 `"Mendon�a"', add
label define br10a_prevmuni_lbl 3529609 `"Meridiano"', add
label define br10a_prevmuni_lbl 3529658 `"Mes�polis"', add
label define br10a_prevmuni_lbl 3529708 `"Miguel�polis"', add
label define br10a_prevmuni_lbl 3529807 `"Mineiros do Tiet�"', add
label define br10a_prevmuni_lbl 3529906 `"Miracatu"', add
label define br10a_prevmuni_lbl 3530003 `"Mira Estrela"', add
label define br10a_prevmuni_lbl 3530102 `"Mirand�polis"', add
label define br10a_prevmuni_lbl 3530201 `"Mirante do Paranapanema"', add
label define br10a_prevmuni_lbl 3530300 `"Mirassol"', add
label define br10a_prevmuni_lbl 3530409 `"Mirassol�ndia"', add
label define br10a_prevmuni_lbl 3530508 `"Mococa"', add
label define br10a_prevmuni_lbl 3530607 `"Mogi das Cruzes"', add
label define br10a_prevmuni_lbl 3530706 `"Mogi Gua�u"', add
label define br10a_prevmuni_lbl 3530805 `"Moji Mirim"', add
label define br10a_prevmuni_lbl 3530904 `"Mombuca"', add
label define br10a_prevmuni_lbl 3531001 `"Mon��es"', add
label define br10a_prevmuni_lbl 3531100 `"Mongagu�"', add
label define br10a_prevmuni_lbl 3531209 `"Monte Alegre do Sul"', add
label define br10a_prevmuni_lbl 3531308 `"Monte Alto"', add
label define br10a_prevmuni_lbl 3531407 `"Monte Apraz�vel"', add
label define br10a_prevmuni_lbl 3531506 `"Monte Azul Paulista"', add
label define br10a_prevmuni_lbl 3531605 `"Monte Castelo"', add
label define br10a_prevmuni_lbl 3531704 `"Monteiro Lobato"', add
label define br10a_prevmuni_lbl 3531803 `"Monte Mor"', add
label define br10a_prevmuni_lbl 3531902 `"Morro Agudo"', add
label define br10a_prevmuni_lbl 3532009 `"Morungaba"', add
label define br10a_prevmuni_lbl 3532058 `"Motuca"', add
label define br10a_prevmuni_lbl 3532108 `"Murutinga do Sul"', add
label define br10a_prevmuni_lbl 3532157 `"Nantes"', add
label define br10a_prevmuni_lbl 3532207 `"Narandiba"', add
label define br10a_prevmuni_lbl 3532306 `"Natividade da Serra"', add
label define br10a_prevmuni_lbl 3532405 `"Nazar� Paulista"', add
label define br10a_prevmuni_lbl 3532504 `"Neves Paulista"', add
label define br10a_prevmuni_lbl 3532603 `"Nhandeara"', add
label define br10a_prevmuni_lbl 3532702 `"Nipo�"', add
label define br10a_prevmuni_lbl 3532801 `"Nova Alian�a"', add
label define br10a_prevmuni_lbl 3532827 `"Nova Campina"', add
label define br10a_prevmuni_lbl 3532843 `"Nova Cana� Paulista"', add
label define br10a_prevmuni_lbl 3532868 `"Nova Castilho"', add
label define br10a_prevmuni_lbl 3532900 `"Nova Europa"', add
label define br10a_prevmuni_lbl 3533007 `"Nova Granada"', add
label define br10a_prevmuni_lbl 3533106 `"Nova Guataporanga"', add
label define br10a_prevmuni_lbl 3533205 `"Nova Independ�ncia"', add
label define br10a_prevmuni_lbl 3533254 `"Novais"', add
label define br10a_prevmuni_lbl 3533304 `"Nova Luzit�nia"', add
label define br10a_prevmuni_lbl 3533403 `"Nova Odessa"', add
label define br10a_prevmuni_lbl 3533502 `"Novo Horizonte"', add
label define br10a_prevmuni_lbl 3533601 `"Nuporanga"', add
label define br10a_prevmuni_lbl 3533700 `"Ocau�u"', add
label define br10a_prevmuni_lbl 3533809 `"�leo"', add
label define br10a_prevmuni_lbl 3533908 `"Ol�mpia"', add
label define br10a_prevmuni_lbl 3534005 `"Onda Verde"', add
label define br10a_prevmuni_lbl 3534104 `"Oriente"', add
label define br10a_prevmuni_lbl 3534203 `"Orindi�va"', add
label define br10a_prevmuni_lbl 3534302 `"Orl�ndia"', add
label define br10a_prevmuni_lbl 3534401 `"Osasco"', add
label define br10a_prevmuni_lbl 3534500 `"Oscar Bressane"', add
label define br10a_prevmuni_lbl 3534609 `"Osvaldo Cruz"', add
label define br10a_prevmuni_lbl 3534708 `"Ourinhos"', add
label define br10a_prevmuni_lbl 3534757 `"Ouroeste"', add
label define br10a_prevmuni_lbl 3534807 `"Ouro Verde"', add
label define br10a_prevmuni_lbl 3534906 `"Pacaembu"', add
label define br10a_prevmuni_lbl 3535002 `"Palestina"', add
label define br10a_prevmuni_lbl 3535101 `"Palmares Paulista"', add
label define br10a_prevmuni_lbl 3535200 `"Palmeira d'Oeste"', add
label define br10a_prevmuni_lbl 3535309 `"Palmital"', add
label define br10a_prevmuni_lbl 3535408 `"Panorama"', add
label define br10a_prevmuni_lbl 3535507 `"Paragua�u Paulista"', add
label define br10a_prevmuni_lbl 3535606 `"Paraibuna"', add
label define br10a_prevmuni_lbl 3535705 `"Para�so"', add
label define br10a_prevmuni_lbl 3535804 `"Paranapanema"', add
label define br10a_prevmuni_lbl 3535903 `"Paranapu�"', add
label define br10a_prevmuni_lbl 3536000 `"Parapu�"', add
label define br10a_prevmuni_lbl 3536109 `"Pardinho"', add
label define br10a_prevmuni_lbl 3536208 `"Pariquera-A�u"', add
label define br10a_prevmuni_lbl 3536257 `"Parisi"', add
label define br10a_prevmuni_lbl 3536307 `"Patroc�nio Paulista"', add
label define br10a_prevmuni_lbl 3536406 `"Paulic�ia"', add
label define br10a_prevmuni_lbl 3536505 `"Paul�nia"', add
label define br10a_prevmuni_lbl 3536570 `"Paulist�nia"', add
label define br10a_prevmuni_lbl 3536604 `"Paulo de Faria"', add
label define br10a_prevmuni_lbl 3536703 `"Pederneiras"', add
label define br10a_prevmuni_lbl 3536802 `"Pedra Bela"', add
label define br10a_prevmuni_lbl 3536901 `"Pedran�polis"', add
label define br10a_prevmuni_lbl 3537008 `"Pedregulho"', add
label define br10a_prevmuni_lbl 3537107 `"Pedreira"', add
label define br10a_prevmuni_lbl 3537156 `"Pedrinhas Paulista"', add
label define br10a_prevmuni_lbl 3537206 `"Pedro de Toledo"', add
label define br10a_prevmuni_lbl 3537305 `"Pen�polis"', add
label define br10a_prevmuni_lbl 3537404 `"Pereira Barreto"', add
label define br10a_prevmuni_lbl 3537503 `"Pereiras"', add
label define br10a_prevmuni_lbl 3537602 `"Peru�be"', add
label define br10a_prevmuni_lbl 3537701 `"Piacatu"', add
label define br10a_prevmuni_lbl 3537800 `"Piedade"', add
label define br10a_prevmuni_lbl 3537909 `"Pilar do Sul"', add
label define br10a_prevmuni_lbl 3538006 `"Pindamonhangaba"', add
label define br10a_prevmuni_lbl 3538105 `"Pindorama"', add
label define br10a_prevmuni_lbl 3538204 `"Pinhalzinho"', add
label define br10a_prevmuni_lbl 3538303 `"Piquerobi"', add
label define br10a_prevmuni_lbl 3538501 `"Piquete"', add
label define br10a_prevmuni_lbl 3538600 `"Piracaia"', add
label define br10a_prevmuni_lbl 3538709 `"Piracicaba"', add
label define br10a_prevmuni_lbl 3538808 `"Piraju"', add
label define br10a_prevmuni_lbl 3538907 `"Piraju�"', add
label define br10a_prevmuni_lbl 3539004 `"Pirangi"', add
label define br10a_prevmuni_lbl 3539103 `"Pirapora do Bom Jesus"', add
label define br10a_prevmuni_lbl 3539202 `"Pirapozinho"', add
label define br10a_prevmuni_lbl 3539301 `"Pirassununga"', add
label define br10a_prevmuni_lbl 3539400 `"Piratininga"', add
label define br10a_prevmuni_lbl 3539509 `"Pitangueiras"', add
label define br10a_prevmuni_lbl 3539608 `"Planalto"', add
label define br10a_prevmuni_lbl 3539707 `"Platina"', add
label define br10a_prevmuni_lbl 3539806 `"Po�"', add
label define br10a_prevmuni_lbl 3539905 `"Poloni"', add
label define br10a_prevmuni_lbl 3540002 `"Pomp�ia"', add
label define br10a_prevmuni_lbl 3540101 `"Ponga�"', add
label define br10a_prevmuni_lbl 3540200 `"Pontal"', add
label define br10a_prevmuni_lbl 3540259 `"Pontalinda"', add
label define br10a_prevmuni_lbl 3540309 `"Pontes Gestal"', add
label define br10a_prevmuni_lbl 3540408 `"Populina"', add
label define br10a_prevmuni_lbl 3540507 `"Porangaba"', add
label define br10a_prevmuni_lbl 3540606 `"Porto Feliz"', add
label define br10a_prevmuni_lbl 3540705 `"Porto Ferreira"', add
label define br10a_prevmuni_lbl 3540754 `"Potim"', add
label define br10a_prevmuni_lbl 3540804 `"Potirendaba"', add
label define br10a_prevmuni_lbl 3540853 `"Pracinha"', add
label define br10a_prevmuni_lbl 3540903 `"Prad�polis"', add
label define br10a_prevmuni_lbl 3541000 `"Praia Grande"', add
label define br10a_prevmuni_lbl 3541059 `"Prat�nia"', add
label define br10a_prevmuni_lbl 3541109 `"Presidente Alves"', add
label define br10a_prevmuni_lbl 3541208 `"Presidente Bernardes"', add
label define br10a_prevmuni_lbl 3541307 `"Presidente Epit�cio"', add
label define br10a_prevmuni_lbl 3541406 `"Presidente Prudente"', add
label define br10a_prevmuni_lbl 3541505 `"Presidente Venceslau"', add
label define br10a_prevmuni_lbl 3541604 `"Promiss�o"', add
label define br10a_prevmuni_lbl 3541653 `"Quadra"', add
label define br10a_prevmuni_lbl 3541703 `"Quat�"', add
label define br10a_prevmuni_lbl 3541802 `"Queiroz"', add
label define br10a_prevmuni_lbl 3541901 `"Queluz"', add
label define br10a_prevmuni_lbl 3542008 `"Quintana"', add
label define br10a_prevmuni_lbl 3542107 `"Rafard"', add
label define br10a_prevmuni_lbl 3542206 `"Rancharia"', add
label define br10a_prevmuni_lbl 3542305 `"Reden��o da Serra"', add
label define br10a_prevmuni_lbl 3542404 `"Regente Feij�"', add
label define br10a_prevmuni_lbl 3542503 `"Regin�polis"', add
label define br10a_prevmuni_lbl 3542602 `"Registro"', add
label define br10a_prevmuni_lbl 3542701 `"Restinga"', add
label define br10a_prevmuni_lbl 3542800 `"Ribeira"', add
label define br10a_prevmuni_lbl 3542909 `"Ribeir�o Bonito"', add
label define br10a_prevmuni_lbl 3543006 `"Ribeir�o Branco"', add
label define br10a_prevmuni_lbl 3543105 `"Ribeir�o Corrente"', add
label define br10a_prevmuni_lbl 3543204 `"Ribeir�o do Sul"', add
label define br10a_prevmuni_lbl 3543238 `"Ribeir�o dos �ndios"', add
label define br10a_prevmuni_lbl 3543253 `"Ribeir�o Grande"', add
label define br10a_prevmuni_lbl 3543303 `"Ribeir�o Pires"', add
label define br10a_prevmuni_lbl 3543402 `"Ribeir�o Preto"', add
label define br10a_prevmuni_lbl 3543501 `"Riversul"', add
label define br10a_prevmuni_lbl 3543600 `"Rifaina"', add
label define br10a_prevmuni_lbl 3543709 `"Rinc�o"', add
label define br10a_prevmuni_lbl 3543808 `"Rin�polis"', add
label define br10a_prevmuni_lbl 3543907 `"Rio Claro"', add
label define br10a_prevmuni_lbl 3544004 `"Rio das Pedras"', add
label define br10a_prevmuni_lbl 3544103 `"Rio Grande da Serra"', add
label define br10a_prevmuni_lbl 3544202 `"Riol�ndia"', add
label define br10a_prevmuni_lbl 3544251 `"Rosana"', add
label define br10a_prevmuni_lbl 3544301 `"Roseira"', add
label define br10a_prevmuni_lbl 3544400 `"Rubi�cea"', add
label define br10a_prevmuni_lbl 3544509 `"Rubin�ia"', add
label define br10a_prevmuni_lbl 3544608 `"Sabino"', add
label define br10a_prevmuni_lbl 3544707 `"Sagres"', add
label define br10a_prevmuni_lbl 3544806 `"Sales"', add
label define br10a_prevmuni_lbl 3544905 `"Sales Oliveira"', add
label define br10a_prevmuni_lbl 3545001 `"Sales�polis"', add
label define br10a_prevmuni_lbl 3545100 `"Salmour�o"', add
label define br10a_prevmuni_lbl 3545159 `"Saltinho"', add
label define br10a_prevmuni_lbl 3545209 `"Salto"', add
label define br10a_prevmuni_lbl 3545308 `"Salto de Pirapora"', add
label define br10a_prevmuni_lbl 3545407 `"Salto Grande"', add
label define br10a_prevmuni_lbl 3545506 `"Sandovalina"', add
label define br10a_prevmuni_lbl 3545605 `"Santa Ad�lia"', add
label define br10a_prevmuni_lbl 3545704 `"Santa Albertina"', add
label define br10a_prevmuni_lbl 3545803 `"Santa B�rbara d'Oeste"', add
label define br10a_prevmuni_lbl 3546009 `"Santa Branca"', add
label define br10a_prevmuni_lbl 3546108 `"Santa Clara d'Oeste"', add
label define br10a_prevmuni_lbl 3546207 `"Santa Cruz da Concei��o"', add
label define br10a_prevmuni_lbl 3546256 `"Santa Cruz da Esperan�a"', add
label define br10a_prevmuni_lbl 3546306 `"Santa Cruz das Palmeiras"', add
label define br10a_prevmuni_lbl 3546405 `"Santa Cruz do Rio Pardo"', add
label define br10a_prevmuni_lbl 3546504 `"Santa Ernestina"', add
label define br10a_prevmuni_lbl 3546603 `"Santa F� do Sul"', add
label define br10a_prevmuni_lbl 3546702 `"Santa Gertrudes"', add
label define br10a_prevmuni_lbl 3546801 `"Santa Isabel"', add
label define br10a_prevmuni_lbl 3546900 `"Santa L�cia"', add
label define br10a_prevmuni_lbl 3547007 `"Santa Maria da Serra"', add
label define br10a_prevmuni_lbl 3547106 `"Santa Mercedes"', add
label define br10a_prevmuni_lbl 3547205 `"Santana da Ponte Pensa"', add
label define br10a_prevmuni_lbl 3547304 `"Santana de Parna�ba"', add
label define br10a_prevmuni_lbl 3547403 `"Santa Rita d'Oeste"', add
label define br10a_prevmuni_lbl 3547502 `"Santa Rita do Passa Quatro"', add
label define br10a_prevmuni_lbl 3547601 `"Santa Rosa de Viterbo"', add
label define br10a_prevmuni_lbl 3547650 `"Santa Salete"', add
label define br10a_prevmuni_lbl 3547700 `"Santo Anast�cio"', add
label define br10a_prevmuni_lbl 3547809 `"Santo Andr�"', add
label define br10a_prevmuni_lbl 3547908 `"Santo Ant�nio da Alegria"', add
label define br10a_prevmuni_lbl 3548005 `"Santo Ant�nio de Posse"', add
label define br10a_prevmuni_lbl 3548054 `"Santo Ant�nio do Aracangu�"', add
label define br10a_prevmuni_lbl 3548104 `"Santo Ant�nio do Jardim"', add
label define br10a_prevmuni_lbl 3548203 `"Santo Ant�nio do Pinhal"', add
label define br10a_prevmuni_lbl 3548302 `"Santo Expedito"', add
label define br10a_prevmuni_lbl 3548401 `"Sant�polis do Aguape�"', add
label define br10a_prevmuni_lbl 3548500 `"Santos"', add
label define br10a_prevmuni_lbl 3548609 `"S�o Bento do Sapuca�"', add
label define br10a_prevmuni_lbl 3548708 `"S�o Bernardo do Campo"', add
label define br10a_prevmuni_lbl 3548807 `"S�o Caetano do Sul"', add
label define br10a_prevmuni_lbl 3548906 `"S�o Carlos"', add
label define br10a_prevmuni_lbl 3549003 `"S�o Francisco"', add
label define br10a_prevmuni_lbl 3549102 `"S�o Jo�o da Boa Vista"', add
label define br10a_prevmuni_lbl 3549201 `"S�o Jo�o das Duas Pontes"', add
label define br10a_prevmuni_lbl 3549250 `"S�o Jo�o de Iracema"', add
label define br10a_prevmuni_lbl 3549300 `"S�o Jo�o do Pau d'Alho"', add
label define br10a_prevmuni_lbl 3549409 `"S�o Joaquim da Barra"', add
label define br10a_prevmuni_lbl 3549508 `"S�o Jos� da Bela Vista"', add
label define br10a_prevmuni_lbl 3549607 `"S�o Jos� do Barreiro"', add
label define br10a_prevmuni_lbl 3549706 `"S�o Jos� do Rio Pardo"', add
label define br10a_prevmuni_lbl 3549805 `"S�o Jos� do Rio Preto"', add
label define br10a_prevmuni_lbl 3549904 `"S�o Jos� dos Campos"', add
label define br10a_prevmuni_lbl 3549953 `"S�o Louren�o da Serra"', add
label define br10a_prevmuni_lbl 3550001 `"S�o Lu�s do Paraitinga"', add
label define br10a_prevmuni_lbl 3550100 `"S�o Manuel"', add
label define br10a_prevmuni_lbl 3550209 `"S�o Miguel Arcanjo"', add
label define br10a_prevmuni_lbl 3550308 `"S�o Paulo"', add
label define br10a_prevmuni_lbl 3550407 `"S�o Pedro"', add
label define br10a_prevmuni_lbl 3550506 `"S�o Pedro do Turvo"', add
label define br10a_prevmuni_lbl 3550605 `"S�o Roque"', add
label define br10a_prevmuni_lbl 3550704 `"S�o Sebasti�o"', add
label define br10a_prevmuni_lbl 3550803 `"S�o Sebasti�o da Grama"', add
label define br10a_prevmuni_lbl 3550902 `"S�o Sim�o"', add
label define br10a_prevmuni_lbl 3551009 `"S�o Vicente"', add
label define br10a_prevmuni_lbl 3551108 `"Sarapu�"', add
label define br10a_prevmuni_lbl 3551207 `"Sarutai�"', add
label define br10a_prevmuni_lbl 3551306 `"Sebastian�polis do Sul"', add
label define br10a_prevmuni_lbl 3551405 `"Serra Azul"', add
label define br10a_prevmuni_lbl 3551504 `"Serrana"', add
label define br10a_prevmuni_lbl 3551603 `"Serra Negra"', add
label define br10a_prevmuni_lbl 3551702 `"Sert�ozinho"', add
label define br10a_prevmuni_lbl 3551801 `"Sete Barras"', add
label define br10a_prevmuni_lbl 3551900 `"Sever�nia"', add
label define br10a_prevmuni_lbl 3552007 `"Silveiras"', add
label define br10a_prevmuni_lbl 3552106 `"Socorro"', add
label define br10a_prevmuni_lbl 3552205 `"Sorocaba"', add
label define br10a_prevmuni_lbl 3552304 `"Sud Mennucci"', add
label define br10a_prevmuni_lbl 3552403 `"Sumar�"', add
label define br10a_prevmuni_lbl 3552502 `"Suzano"', add
label define br10a_prevmuni_lbl 3552551 `"Suzan�polis"', add
label define br10a_prevmuni_lbl 3552601 `"Tabapu�"', add
label define br10a_prevmuni_lbl 3552700 `"Tabatinga"', add
label define br10a_prevmuni_lbl 3552809 `"Tabo�o da Serra"', add
label define br10a_prevmuni_lbl 3552908 `"Taciba"', add
label define br10a_prevmuni_lbl 3553005 `"Tagua�"', add
label define br10a_prevmuni_lbl 3553104 `"Taia�u"', add
label define br10a_prevmuni_lbl 3553203 `"Tai�va"', add
label define br10a_prevmuni_lbl 3553302 `"Tamba�"', add
label define br10a_prevmuni_lbl 3553401 `"Tanabi"', add
label define br10a_prevmuni_lbl 3553500 `"Tapira�"', add
label define br10a_prevmuni_lbl 3553609 `"Tapiratiba"', add
label define br10a_prevmuni_lbl 3553658 `"Taquaral"', add
label define br10a_prevmuni_lbl 3553708 `"Taquaritinga"', add
label define br10a_prevmuni_lbl 3553807 `"Taquarituba"', add
label define br10a_prevmuni_lbl 3553856 `"Taquariva�"', add
label define br10a_prevmuni_lbl 3553906 `"Tarabai"', add
label define br10a_prevmuni_lbl 3553955 `"Tarum�"', add
label define br10a_prevmuni_lbl 3554003 `"Tatu�"', add
label define br10a_prevmuni_lbl 3554102 `"Taubat�"', add
label define br10a_prevmuni_lbl 3554201 `"Tejup�"', add
label define br10a_prevmuni_lbl 3554300 `"Teodoro Sampaio"', add
label define br10a_prevmuni_lbl 3554409 `"Terra Roxa"', add
label define br10a_prevmuni_lbl 3554508 `"Tiet�"', add
label define br10a_prevmuni_lbl 3554607 `"Timburi"', add
label define br10a_prevmuni_lbl 3554656 `"Torre de Pedra"', add
label define br10a_prevmuni_lbl 3554706 `"Torrinha"', add
label define br10a_prevmuni_lbl 3554755 `"Trabiju"', add
label define br10a_prevmuni_lbl 3554805 `"Trememb�"', add
label define br10a_prevmuni_lbl 3554904 `"Tr�s Fronteiras"', add
label define br10a_prevmuni_lbl 3554953 `"Tuiuti"', add
label define br10a_prevmuni_lbl 3555000 `"Tup�"', add
label define br10a_prevmuni_lbl 3555109 `"Tupi Paulista"', add
label define br10a_prevmuni_lbl 3555208 `"Turi�ba"', add
label define br10a_prevmuni_lbl 3555307 `"Turmalina"', add
label define br10a_prevmuni_lbl 3555356 `"Ubarana"', add
label define br10a_prevmuni_lbl 3555406 `"Ubatuba"', add
label define br10a_prevmuni_lbl 3555505 `"Ubirajara"', add
label define br10a_prevmuni_lbl 3555604 `"Uchoa"', add
label define br10a_prevmuni_lbl 3555703 `"Uni�o Paulista"', add
label define br10a_prevmuni_lbl 3555802 `"Ur�nia"', add
label define br10a_prevmuni_lbl 3555901 `"Uru"', add
label define br10a_prevmuni_lbl 3556008 `"Urup�s"', add
label define br10a_prevmuni_lbl 3556107 `"Valentim Gentil"', add
label define br10a_prevmuni_lbl 3556206 `"Valinhos"', add
label define br10a_prevmuni_lbl 3556305 `"Valpara�so"', add
label define br10a_prevmuni_lbl 3556354 `"Vargem"', add
label define br10a_prevmuni_lbl 3556404 `"Vargem Grande do Sul"', add
label define br10a_prevmuni_lbl 3556453 `"Vargem Grande Paulista"', add
label define br10a_prevmuni_lbl 3556503 `"V�rzea Paulista"', add
label define br10a_prevmuni_lbl 3556602 `"Vera Cruz"', add
label define br10a_prevmuni_lbl 3556701 `"Vinhedo"', add
label define br10a_prevmuni_lbl 3556800 `"Viradouro"', add
label define br10a_prevmuni_lbl 3556909 `"Vista Alegre do Alto"', add
label define br10a_prevmuni_lbl 3556958 `"Vit�ria Brasil"', add
label define br10a_prevmuni_lbl 3557006 `"Votorantim"', add
label define br10a_prevmuni_lbl 3557105 `"Votuporanga"', add
label define br10a_prevmuni_lbl 3557154 `"Zacarias"', add
label define br10a_prevmuni_lbl 3557204 `"Chavantes"', add
label define br10a_prevmuni_lbl 3557303 `"Estiva Gerbi"', add
label define br10a_prevmuni_lbl 3599999 `"S�o Paulo, municipality unknown"', add
label define br10a_prevmuni_lbl 4100103 `"Abati�"', add
label define br10a_prevmuni_lbl 4100202 `"Adrian�polis"', add
label define br10a_prevmuni_lbl 4100301 `"Agudos do Sul"', add
label define br10a_prevmuni_lbl 4100400 `"Almirante Tamandar�"', add
label define br10a_prevmuni_lbl 4100459 `"Altamira do Paran�"', add
label define br10a_prevmuni_lbl 4100509 `"Alt�nia"', add
label define br10a_prevmuni_lbl 4100608 `"Alto Paran�"', add
label define br10a_prevmuni_lbl 4100707 `"Alto Piquiri"', add
label define br10a_prevmuni_lbl 4100806 `"Alvorada do Sul"', add
label define br10a_prevmuni_lbl 4100905 `"Amapor�"', add
label define br10a_prevmuni_lbl 4101002 `"Amp�re"', add
label define br10a_prevmuni_lbl 4101051 `"Anahy"', add
label define br10a_prevmuni_lbl 4101101 `"Andir�"', add
label define br10a_prevmuni_lbl 4101150 `"�ngulo"', add
label define br10a_prevmuni_lbl 4101200 `"Antonina"', add
label define br10a_prevmuni_lbl 4101309 `"Ant�nio Olinto"', add
label define br10a_prevmuni_lbl 4101408 `"Apucarana"', add
label define br10a_prevmuni_lbl 4101507 `"Arapongas"', add
label define br10a_prevmuni_lbl 4101606 `"Arapoti"', add
label define br10a_prevmuni_lbl 4101655 `"Arapu�"', add
label define br10a_prevmuni_lbl 4101705 `"Araruna"', add
label define br10a_prevmuni_lbl 4101804 `"Arauc�ria"', add
label define br10a_prevmuni_lbl 4101853 `"Ariranha do Iva�"', add
label define br10a_prevmuni_lbl 4101903 `"Assa�"', add
label define br10a_prevmuni_lbl 4102000 `"Assis Chateaubriand"', add
label define br10a_prevmuni_lbl 4102109 `"Astorga"', add
label define br10a_prevmuni_lbl 4102208 `"Atalaia"', add
label define br10a_prevmuni_lbl 4102307 `"Balsa Nova"', add
label define br10a_prevmuni_lbl 4102406 `"Bandeirantes"', add
label define br10a_prevmuni_lbl 4102505 `"Barbosa Ferraz"', add
label define br10a_prevmuni_lbl 4102604 `"Barrac�o"', add
label define br10a_prevmuni_lbl 4102703 `"Barra do Jacar�"', add
label define br10a_prevmuni_lbl 4102752 `"Bela Vista da Caroba"', add
label define br10a_prevmuni_lbl 4102802 `"Bela Vista do Para�so"', add
label define br10a_prevmuni_lbl 4102901 `"Bituruna"', add
label define br10a_prevmuni_lbl 4103008 `"Boa Esperan�a"', add
label define br10a_prevmuni_lbl 4103024 `"Boa Esperan�a do Igua�u"', add
label define br10a_prevmuni_lbl 4103040 `"Boa Ventura de S�o Roque"', add
label define br10a_prevmuni_lbl 4103057 `"Boa Vista da Aparecida"', add
label define br10a_prevmuni_lbl 4103107 `"Bocai�va do Sul"', add
label define br10a_prevmuni_lbl 4103156 `"Bom Jesus do Sul"', add
label define br10a_prevmuni_lbl 4103206 `"Bom Sucesso"', add
label define br10a_prevmuni_lbl 4103222 `"Bom Sucesso do Sul"', add
label define br10a_prevmuni_lbl 4103305 `"Borraz�polis"', add
label define br10a_prevmuni_lbl 4103354 `"Braganey"', add
label define br10a_prevmuni_lbl 4103370 `"Brasil�ndia do Sul"', add
label define br10a_prevmuni_lbl 4103404 `"Cafeara"', add
label define br10a_prevmuni_lbl 4103453 `"Cafel�ndia"', add
label define br10a_prevmuni_lbl 4103479 `"Cafezal do Sul"', add
label define br10a_prevmuni_lbl 4103503 `"Calif�rnia"', add
label define br10a_prevmuni_lbl 4103602 `"Cambar�"', add
label define br10a_prevmuni_lbl 4103701 `"Camb�"', add
label define br10a_prevmuni_lbl 4103800 `"Cambira"', add
label define br10a_prevmuni_lbl 4103909 `"Campina da Lagoa"', add
label define br10a_prevmuni_lbl 4103958 `"Campina do Sim�o"', add
label define br10a_prevmuni_lbl 4104006 `"Campina Grande do Sul"', add
label define br10a_prevmuni_lbl 4104055 `"Campo Bonito"', add
label define br10a_prevmuni_lbl 4104105 `"Campo do Tenente"', add
label define br10a_prevmuni_lbl 4104204 `"Campo Largo"', add
label define br10a_prevmuni_lbl 4104253 `"Campo Magro"', add
label define br10a_prevmuni_lbl 4104303 `"Campo Mour�o"', add
label define br10a_prevmuni_lbl 4104402 `"C�ndido de Abreu"', add
label define br10a_prevmuni_lbl 4104428 `"Cand�i"', add
label define br10a_prevmuni_lbl 4104451 `"Cantagalo"', add
label define br10a_prevmuni_lbl 4104501 `"Capanema"', add
label define br10a_prevmuni_lbl 4104600 `"Capit�o Le�nidas Marques"', add
label define br10a_prevmuni_lbl 4104659 `"Carambe�"', add
label define br10a_prevmuni_lbl 4104709 `"Carl�polis"', add
label define br10a_prevmuni_lbl 4104808 `"Cascavel"', add
label define br10a_prevmuni_lbl 4104907 `"Castro"', add
label define br10a_prevmuni_lbl 4105003 `"Catanduvas"', add
label define br10a_prevmuni_lbl 4105102 `"Centen�rio do Sul"', add
label define br10a_prevmuni_lbl 4105201 `"Cerro Azul"', add
label define br10a_prevmuni_lbl 4105300 `"C�u Azul"', add
label define br10a_prevmuni_lbl 4105409 `"Chopinzinho"', add
label define br10a_prevmuni_lbl 4105508 `"Cianorte"', add
label define br10a_prevmuni_lbl 4105607 `"Cidade Ga�cha"', add
label define br10a_prevmuni_lbl 4105706 `"Clevel�ndia"', add
label define br10a_prevmuni_lbl 4105805 `"Colombo"', add
label define br10a_prevmuni_lbl 4105904 `"Colorado"', add
label define br10a_prevmuni_lbl 4106001 `"Congonhinhas"', add
label define br10a_prevmuni_lbl 4106100 `"Conselheiro Mairinck"', add
label define br10a_prevmuni_lbl 4106209 `"Contenda"', add
label define br10a_prevmuni_lbl 4106308 `"Corb�lia"', add
label define br10a_prevmuni_lbl 4106407 `"Corn�lio Proc�pio"', add
label define br10a_prevmuni_lbl 4106456 `"Coronel Domingos Soares"', add
label define br10a_prevmuni_lbl 4106506 `"Coronel Vivida"', add
label define br10a_prevmuni_lbl 4106555 `"Corumbata� do Sul"', add
label define br10a_prevmuni_lbl 4106571 `"Cruzeiro do Igua�u"', add
label define br10a_prevmuni_lbl 4106605 `"Cruzeiro do Oeste"', add
label define br10a_prevmuni_lbl 4106704 `"Cruzeiro do Sul"', add
label define br10a_prevmuni_lbl 4106803 `"Cruz Machado"', add
label define br10a_prevmuni_lbl 4106852 `"Cruzmaltina"', add
label define br10a_prevmuni_lbl 4106902 `"Curitiba"', add
label define br10a_prevmuni_lbl 4107009 `"Curi�va"', add
label define br10a_prevmuni_lbl 4107108 `"Diamante do Norte"', add
label define br10a_prevmuni_lbl 4107124 `"Diamante do Sul"', add
label define br10a_prevmuni_lbl 4107157 `"Diamante D'Oeste"', add
label define br10a_prevmuni_lbl 4107207 `"Dois Vizinhos"', add
label define br10a_prevmuni_lbl 4107256 `"Douradina"', add
label define br10a_prevmuni_lbl 4107306 `"Doutor Camargo"', add
label define br10a_prevmuni_lbl 4107405 `"En�as Marques"', add
label define br10a_prevmuni_lbl 4107504 `"Engenheiro Beltr�o"', add
label define br10a_prevmuni_lbl 4107520 `"Esperan�a Nova"', add
label define br10a_prevmuni_lbl 4107538 `"Entre Rios do Oeste"', add
label define br10a_prevmuni_lbl 4107546 `"Espig�o Alto do Igua�u"', add
label define br10a_prevmuni_lbl 4107553 `"Farol"', add
label define br10a_prevmuni_lbl 4107603 `"Faxinal"', add
label define br10a_prevmuni_lbl 4107652 `"Fazenda Rio Grande"', add
label define br10a_prevmuni_lbl 4107702 `"F�nix"', add
label define br10a_prevmuni_lbl 4107736 `"Fernandes Pinheiro"', add
label define br10a_prevmuni_lbl 4107751 `"Figueira"', add
label define br10a_prevmuni_lbl 4107801 `"Flora�"', add
label define br10a_prevmuni_lbl 4107850 `"Flor da Serra do Sul"', add
label define br10a_prevmuni_lbl 4107900 `"Floresta"', add
label define br10a_prevmuni_lbl 4108007 `"Florest�polis"', add
label define br10a_prevmuni_lbl 4108106 `"Fl�rida"', add
label define br10a_prevmuni_lbl 4108205 `"Formosa do Oeste"', add
label define br10a_prevmuni_lbl 4108304 `"Foz do Igua�u"', add
label define br10a_prevmuni_lbl 4108320 `"Francisco Alves"', add
label define br10a_prevmuni_lbl 4108403 `"Francisco Beltr�o"', add
label define br10a_prevmuni_lbl 4108452 `"Foz do Jord�o"', add
label define br10a_prevmuni_lbl 4108502 `"General Carneiro"', add
label define br10a_prevmuni_lbl 4108551 `"Godoy Moreira"', add
label define br10a_prevmuni_lbl 4108601 `"Goioer�"', add
label define br10a_prevmuni_lbl 4108650 `"Goioxim"', add
label define br10a_prevmuni_lbl 4108700 `"Grandes Rios"', add
label define br10a_prevmuni_lbl 4108809 `"Gua�ra"', add
label define br10a_prevmuni_lbl 4108908 `"Guaira��"', add
label define br10a_prevmuni_lbl 4108957 `"Guamiranga"', add
label define br10a_prevmuni_lbl 4109005 `"Guapirama"', add
label define br10a_prevmuni_lbl 4109104 `"Guaporema"', add
label define br10a_prevmuni_lbl 4109203 `"Guaraci"', add
label define br10a_prevmuni_lbl 4109302 `"Guarania�u"', add
label define br10a_prevmuni_lbl 4109401 `"Guarapuava"', add
label define br10a_prevmuni_lbl 4109500 `"Guaraque�aba"', add
label define br10a_prevmuni_lbl 4109609 `"Guaratuba"', add
label define br10a_prevmuni_lbl 4109658 `"Hon�rio Serpa"', add
label define br10a_prevmuni_lbl 4109708 `"Ibaiti"', add
label define br10a_prevmuni_lbl 4109757 `"Ibema"', add
label define br10a_prevmuni_lbl 4109807 `"Ibipor�"', add
label define br10a_prevmuni_lbl 4109906 `"Icara�ma"', add
label define br10a_prevmuni_lbl 4110003 `"Iguara�u"', add
label define br10a_prevmuni_lbl 4110052 `"Iguatu"', add
label define br10a_prevmuni_lbl 4110078 `"Imba�"', add
label define br10a_prevmuni_lbl 4110102 `"Imbituva"', add
label define br10a_prevmuni_lbl 4110201 `"In�cio Martins"', add
label define br10a_prevmuni_lbl 4110300 `"Inaj�"', add
label define br10a_prevmuni_lbl 4110409 `"Indian�polis"', add
label define br10a_prevmuni_lbl 4110508 `"Ipiranga"', add
label define br10a_prevmuni_lbl 4110607 `"Ipor�"', add
label define br10a_prevmuni_lbl 4110656 `"Iracema do Oeste"', add
label define br10a_prevmuni_lbl 4110706 `"Irati"', add
label define br10a_prevmuni_lbl 4110805 `"Iretama"', add
label define br10a_prevmuni_lbl 4110904 `"Itaguaj�"', add
label define br10a_prevmuni_lbl 4110953 `"Itaipul�ndia"', add
label define br10a_prevmuni_lbl 4111001 `"Itambarac�"', add
label define br10a_prevmuni_lbl 4111100 `"Itamb�"', add
label define br10a_prevmuni_lbl 4111209 `"Itapejara d'Oeste"', add
label define br10a_prevmuni_lbl 4111258 `"Itaperu�u"', add
label define br10a_prevmuni_lbl 4111308 `"Ita�na do Sul"', add
label define br10a_prevmuni_lbl 4111407 `"Iva�"', add
label define br10a_prevmuni_lbl 4111506 `"Ivaipor�"', add
label define br10a_prevmuni_lbl 4111555 `"Ivat�"', add
label define br10a_prevmuni_lbl 4111605 `"Ivatuba"', add
label define br10a_prevmuni_lbl 4111704 `"Jaboti"', add
label define br10a_prevmuni_lbl 4111803 `"Jacarezinho"', add
label define br10a_prevmuni_lbl 4111902 `"Jaguapit�"', add
label define br10a_prevmuni_lbl 4112009 `"Jaguaria�va"', add
label define br10a_prevmuni_lbl 4112108 `"Jandaia do Sul"', add
label define br10a_prevmuni_lbl 4112207 `"Jani�polis"', add
label define br10a_prevmuni_lbl 4112306 `"Japira"', add
label define br10a_prevmuni_lbl 4112405 `"Japur�"', add
label define br10a_prevmuni_lbl 4112504 `"Jardim Alegre"', add
label define br10a_prevmuni_lbl 4112603 `"Jardim Olinda"', add
label define br10a_prevmuni_lbl 4112702 `"Jataizinho"', add
label define br10a_prevmuni_lbl 4112751 `"Jesu�tas"', add
label define br10a_prevmuni_lbl 4112801 `"Joaquim T�vora"', add
label define br10a_prevmuni_lbl 4112900 `"Jundia� do Sul"', add
label define br10a_prevmuni_lbl 4112959 `"Juranda"', add
label define br10a_prevmuni_lbl 4113007 `"Jussara"', add
label define br10a_prevmuni_lbl 4113106 `"Kalor�"', add
label define br10a_prevmuni_lbl 4113205 `"Lapa"', add
label define br10a_prevmuni_lbl 4113254 `"Laranjal"', add
label define br10a_prevmuni_lbl 4113304 `"Laranjeiras do Sul"', add
label define br10a_prevmuni_lbl 4113403 `"Le�polis"', add
label define br10a_prevmuni_lbl 4113429 `"Lidian�polis"', add
label define br10a_prevmuni_lbl 4113452 `"Lindoeste"', add
label define br10a_prevmuni_lbl 4113502 `"Loanda"', add
label define br10a_prevmuni_lbl 4113601 `"Lobato"', add
label define br10a_prevmuni_lbl 4113700 `"Londrina"', add
label define br10a_prevmuni_lbl 4113734 `"Luiziana"', add
label define br10a_prevmuni_lbl 4113759 `"Lunardelli"', add
label define br10a_prevmuni_lbl 4113809 `"Lupion�polis"', add
label define br10a_prevmuni_lbl 4113908 `"Mallet"', add
label define br10a_prevmuni_lbl 4114005 `"Mambor�"', add
label define br10a_prevmuni_lbl 4114104 `"Mandagua�u"', add
label define br10a_prevmuni_lbl 4114203 `"Mandaguari"', add
label define br10a_prevmuni_lbl 4114302 `"Mandirituba"', add
label define br10a_prevmuni_lbl 4114351 `"Manfrin�polis"', add
label define br10a_prevmuni_lbl 4114401 `"Mangueirinha"', add
label define br10a_prevmuni_lbl 4114500 `"Manoel Ribas"', add
label define br10a_prevmuni_lbl 4114609 `"Marechal C�ndido Rondon"', add
label define br10a_prevmuni_lbl 4114708 `"Maria Helena"', add
label define br10a_prevmuni_lbl 4114807 `"Marialva"', add
label define br10a_prevmuni_lbl 4114906 `"Maril�ndia do Sul"', add
label define br10a_prevmuni_lbl 4115002 `"Marilena"', add
label define br10a_prevmuni_lbl 4115101 `"Mariluz"', add
label define br10a_prevmuni_lbl 4115200 `"Maring�"', add
label define br10a_prevmuni_lbl 4115309 `"Mari�polis"', add
label define br10a_prevmuni_lbl 4115358 `"Marip�"', add
label define br10a_prevmuni_lbl 4115408 `"Marmeleiro"', add
label define br10a_prevmuni_lbl 4115457 `"Marquinho"', add
label define br10a_prevmuni_lbl 4115507 `"Marumbi"', add
label define br10a_prevmuni_lbl 4115606 `"Matel�ndia"', add
label define br10a_prevmuni_lbl 4115705 `"Matinhos"', add
label define br10a_prevmuni_lbl 4115739 `"Mato Rico"', add
label define br10a_prevmuni_lbl 4115754 `"Mau� da Serra"', add
label define br10a_prevmuni_lbl 4115804 `"Medianeira"', add
label define br10a_prevmuni_lbl 4115853 `"Mercedes"', add
label define br10a_prevmuni_lbl 4115903 `"Mirador"', add
label define br10a_prevmuni_lbl 4116000 `"Miraselva"', add
label define br10a_prevmuni_lbl 4116059 `"Missal"', add
label define br10a_prevmuni_lbl 4116109 `"Moreira Sales"', add
label define br10a_prevmuni_lbl 4116208 `"Morretes"', add
label define br10a_prevmuni_lbl 4116307 `"Munhoz de Melo"', add
label define br10a_prevmuni_lbl 4116406 `"Nossa Senhora das Gra�as"', add
label define br10a_prevmuni_lbl 4116505 `"Nova Alian�a do Iva�"', add
label define br10a_prevmuni_lbl 4116604 `"Nova Am�rica da Colina"', add
label define br10a_prevmuni_lbl 4116703 `"Nova Aurora"', add
label define br10a_prevmuni_lbl 4116802 `"Nova Cantu"', add
label define br10a_prevmuni_lbl 4116901 `"Nova Esperan�a"', add
label define br10a_prevmuni_lbl 4116950 `"Nova Esperan�a do Sudoeste"', add
label define br10a_prevmuni_lbl 4117008 `"Nova F�tima"', add
label define br10a_prevmuni_lbl 4117057 `"Nova Laranjeiras"', add
label define br10a_prevmuni_lbl 4117107 `"Nova Londrina"', add
label define br10a_prevmuni_lbl 4117206 `"Nova Ol�mpia"', add
label define br10a_prevmuni_lbl 4117214 `"Nova Santa B�rbara"', add
label define br10a_prevmuni_lbl 4117222 `"Nova Santa Rosa"', add
label define br10a_prevmuni_lbl 4117255 `"Nova Prata do Igua�u"', add
label define br10a_prevmuni_lbl 4117271 `"Nova Tebas"', add
label define br10a_prevmuni_lbl 4117297 `"Novo Itacolomi"', add
label define br10a_prevmuni_lbl 4117305 `"Ortigueira"', add
label define br10a_prevmuni_lbl 4117404 `"Ourizona"', add
label define br10a_prevmuni_lbl 4117453 `"Ouro Verde do Oeste"', add
label define br10a_prevmuni_lbl 4117503 `"Pai�andu"', add
label define br10a_prevmuni_lbl 4117602 `"Palmas"', add
label define br10a_prevmuni_lbl 4117701 `"Palmeira"', add
label define br10a_prevmuni_lbl 4117800 `"Palmital"', add
label define br10a_prevmuni_lbl 4117909 `"Palotina"', add
label define br10a_prevmuni_lbl 4118006 `"Para�so do Norte"', add
label define br10a_prevmuni_lbl 4118105 `"Paranacity"', add
label define br10a_prevmuni_lbl 4118204 `"Paranagu�"', add
label define br10a_prevmuni_lbl 4118303 `"Paranapoema"', add
label define br10a_prevmuni_lbl 4118402 `"Paranava�"', add
label define br10a_prevmuni_lbl 4118451 `"Pato Bragado"', add
label define br10a_prevmuni_lbl 4118501 `"Pato Branco"', add
label define br10a_prevmuni_lbl 4118600 `"Paula Freitas"', add
label define br10a_prevmuni_lbl 4118709 `"Paulo Frontin"', add
label define br10a_prevmuni_lbl 4118808 `"Peabiru"', add
label define br10a_prevmuni_lbl 4118857 `"Perobal"', add
label define br10a_prevmuni_lbl 4118907 `"P�rola"', add
label define br10a_prevmuni_lbl 4119004 `"P�rola d'Oeste"', add
label define br10a_prevmuni_lbl 4119103 `"Pi�n"', add
label define br10a_prevmuni_lbl 4119152 `"Pinhais"', add
label define br10a_prevmuni_lbl 4119202 `"Pinhal�o"', add
label define br10a_prevmuni_lbl 4119251 `"Pinhal de S�o Bento"', add
label define br10a_prevmuni_lbl 4119301 `"Pinh�o"', add
label define br10a_prevmuni_lbl 4119400 `"Pira� do Sul"', add
label define br10a_prevmuni_lbl 4119509 `"Piraquara"', add
label define br10a_prevmuni_lbl 4119608 `"Pitanga"', add
label define br10a_prevmuni_lbl 4119657 `"Pitangueiras"', add
label define br10a_prevmuni_lbl 4119707 `"Planaltina do Paran�"', add
label define br10a_prevmuni_lbl 4119806 `"Planalto"', add
label define br10a_prevmuni_lbl 4119905 `"Ponta Grossa"', add
label define br10a_prevmuni_lbl 4119954 `"Pontal do Paran�"', add
label define br10a_prevmuni_lbl 4120002 `"Porecatu"', add
label define br10a_prevmuni_lbl 4120101 `"Porto Amazonas"', add
label define br10a_prevmuni_lbl 4120150 `"Porto Barreiro"', add
label define br10a_prevmuni_lbl 4120200 `"Porto Rico"', add
label define br10a_prevmuni_lbl 4120309 `"Porto Vit�ria"', add
label define br10a_prevmuni_lbl 4120333 `"Prado Ferreira"', add
label define br10a_prevmuni_lbl 4120358 `"Pranchita"', add
label define br10a_prevmuni_lbl 4120408 `"Presidente Castelo Branco"', add
label define br10a_prevmuni_lbl 4120507 `"Primeiro de Maio"', add
label define br10a_prevmuni_lbl 4120606 `"Prudent�polis"', add
label define br10a_prevmuni_lbl 4120655 `"Quarto Centen�rio"', add
label define br10a_prevmuni_lbl 4120705 `"Quatigu�"', add
label define br10a_prevmuni_lbl 4120804 `"Quatro Barras"', add
label define br10a_prevmuni_lbl 4120853 `"Quatro Pontes"', add
label define br10a_prevmuni_lbl 4120903 `"Quedas do Igua�u"', add
label define br10a_prevmuni_lbl 4121000 `"Quer�ncia do Norte"', add
label define br10a_prevmuni_lbl 4121109 `"Quinta do Sol"', add
label define br10a_prevmuni_lbl 4121208 `"Quitandinha"', add
label define br10a_prevmuni_lbl 4121257 `"Ramil�ndia"', add
label define br10a_prevmuni_lbl 4121307 `"Rancho Alegre"', add
label define br10a_prevmuni_lbl 4121356 `"Rancho Alegre D'Oeste"', add
label define br10a_prevmuni_lbl 4121406 `"Realeza"', add
label define br10a_prevmuni_lbl 4121505 `"Rebou�as"', add
label define br10a_prevmuni_lbl 4121604 `"Renascen�a"', add
label define br10a_prevmuni_lbl 4121703 `"Reserva"', add
label define br10a_prevmuni_lbl 4121752 `"Reserva do Igua�u"', add
label define br10a_prevmuni_lbl 4121802 `"Ribeir�o Claro"', add
label define br10a_prevmuni_lbl 4121901 `"Ribeir�o do Pinhal"', add
label define br10a_prevmuni_lbl 4122008 `"Rio Azul"', add
label define br10a_prevmuni_lbl 4122107 `"Rio Bom"', add
label define br10a_prevmuni_lbl 4122156 `"Rio Bonito do Igua�u"', add
label define br10a_prevmuni_lbl 4122172 `"Rio Branco do Iva�"', add
label define br10a_prevmuni_lbl 4122206 `"Rio Branco do Sul"', add
label define br10a_prevmuni_lbl 4122305 `"Rio Negro"', add
label define br10a_prevmuni_lbl 4122404 `"Rol�ndia"', add
label define br10a_prevmuni_lbl 4122503 `"Roncador"', add
label define br10a_prevmuni_lbl 4122602 `"Rondon"', add
label define br10a_prevmuni_lbl 4122651 `"Ros�rio do Iva�"', add
label define br10a_prevmuni_lbl 4122701 `"Sab�udia"', add
label define br10a_prevmuni_lbl 4122800 `"Salgado Filho"', add
label define br10a_prevmuni_lbl 4122909 `"Salto do Itarar�"', add
label define br10a_prevmuni_lbl 4123006 `"Salto do Lontra"', add
label define br10a_prevmuni_lbl 4123105 `"Santa Am�lia"', add
label define br10a_prevmuni_lbl 4123204 `"Santa Cec�lia do Pav�o"', add
label define br10a_prevmuni_lbl 4123303 `"Santa Cruz de Monte Castelo"', add
label define br10a_prevmuni_lbl 4123402 `"Santa F�"', add
label define br10a_prevmuni_lbl 4123501 `"Santa Helena"', add
label define br10a_prevmuni_lbl 4123600 `"Santa In�s"', add
label define br10a_prevmuni_lbl 4123709 `"Santa Isabel do Iva�"', add
label define br10a_prevmuni_lbl 4123808 `"Santa Izabel do Oeste"', add
label define br10a_prevmuni_lbl 4123824 `"Santa L�cia"', add
label define br10a_prevmuni_lbl 4123857 `"Santa Maria do Oeste"', add
label define br10a_prevmuni_lbl 4123907 `"Santa Mariana"', add
label define br10a_prevmuni_lbl 4123956 `"Santa M�nica"', add
label define br10a_prevmuni_lbl 4124004 `"Santana do Itarar�"', add
label define br10a_prevmuni_lbl 4124020 `"Santa Tereza do Oeste"', add
label define br10a_prevmuni_lbl 4124053 `"Santa Terezinha de Itaipu"', add
label define br10a_prevmuni_lbl 4124103 `"Santo Ant�nio da Platina"', add
label define br10a_prevmuni_lbl 4124202 `"Santo Ant�nio do Caiu�"', add
label define br10a_prevmuni_lbl 4124301 `"Santo Ant�nio do Para�so"', add
label define br10a_prevmuni_lbl 4124400 `"Santo Ant�nio do Sudoeste"', add
label define br10a_prevmuni_lbl 4124509 `"Santo In�cio"', add
label define br10a_prevmuni_lbl 4124608 `"S�o Carlos do Iva�"', add
label define br10a_prevmuni_lbl 4124707 `"S�o Jer�nimo da Serra"', add
label define br10a_prevmuni_lbl 4124806 `"S�o Jo�o"', add
label define br10a_prevmuni_lbl 4124905 `"S�o Jo�o do Caiu�"', add
label define br10a_prevmuni_lbl 4125001 `"S�o Jo�o do Iva�"', add
label define br10a_prevmuni_lbl 4125100 `"S�o Jo�o do Triunfo"', add
label define br10a_prevmuni_lbl 4125209 `"S�o Jorge d'Oeste"', add
label define br10a_prevmuni_lbl 4125308 `"S�o Jorge do Iva�"', add
label define br10a_prevmuni_lbl 4125357 `"S�o Jorge do Patroc�nio"', add
label define br10a_prevmuni_lbl 4125407 `"S�o Jos� da Boa Vista"', add
label define br10a_prevmuni_lbl 4125456 `"S�o Jos� das Palmeiras"', add
label define br10a_prevmuni_lbl 4125506 `"S�o Jos� dos Pinhais"', add
label define br10a_prevmuni_lbl 4125555 `"S�o Manoel do Paran�"', add
label define br10a_prevmuni_lbl 4125605 `"S�o Mateus do Sul"', add
label define br10a_prevmuni_lbl 4125704 `"S�o Miguel do Igua�u"', add
label define br10a_prevmuni_lbl 4125753 `"S�o Pedro do Igua�u"', add
label define br10a_prevmuni_lbl 4125803 `"S�o Pedro do Iva�"', add
label define br10a_prevmuni_lbl 4125902 `"S�o Pedro do Paran�"', add
label define br10a_prevmuni_lbl 4126009 `"S�o Sebasti�o da Amoreira"', add
label define br10a_prevmuni_lbl 4126108 `"S�o Tom�"', add
label define br10a_prevmuni_lbl 4126207 `"Sapopema"', add
label define br10a_prevmuni_lbl 4126256 `"Sarandi"', add
label define br10a_prevmuni_lbl 4126272 `"Saudade do Igua�u"', add
label define br10a_prevmuni_lbl 4126306 `"Seng�s"', add
label define br10a_prevmuni_lbl 4126355 `"Serran�polis do Igua�u"', add
label define br10a_prevmuni_lbl 4126405 `"Sertaneja"', add
label define br10a_prevmuni_lbl 4126504 `"Sertan�polis"', add
label define br10a_prevmuni_lbl 4126603 `"Siqueira Campos"', add
label define br10a_prevmuni_lbl 4126652 `"Sulina"', add
label define br10a_prevmuni_lbl 4126678 `"Tamarana"', add
label define br10a_prevmuni_lbl 4126702 `"Tamboara"', add
label define br10a_prevmuni_lbl 4126801 `"Tapejara"', add
label define br10a_prevmuni_lbl 4126900 `"Tapira"', add
label define br10a_prevmuni_lbl 4127007 `"Teixeira Soares"', add
label define br10a_prevmuni_lbl 4127106 `"Tel�maco Borba"', add
label define br10a_prevmuni_lbl 4127205 `"Terra Boa"', add
label define br10a_prevmuni_lbl 4127304 `"Terra Rica"', add
label define br10a_prevmuni_lbl 4127403 `"Terra Roxa"', add
label define br10a_prevmuni_lbl 4127502 `"Tibagi"', add
label define br10a_prevmuni_lbl 4127601 `"Tijucas do Sul"', add
label define br10a_prevmuni_lbl 4127700 `"Toledo"', add
label define br10a_prevmuni_lbl 4127809 `"Tomazina"', add
label define br10a_prevmuni_lbl 4127858 `"Tr�s Barras do Paran�"', add
label define br10a_prevmuni_lbl 4127882 `"Tunas do Paran�"', add
label define br10a_prevmuni_lbl 4127908 `"Tuneiras do Oeste"', add
label define br10a_prevmuni_lbl 4127957 `"Tup�ssi"', add
label define br10a_prevmuni_lbl 4127965 `"Turvo"', add
label define br10a_prevmuni_lbl 4128005 `"Ubirat�"', add
label define br10a_prevmuni_lbl 4128104 `"Umuarama"', add
label define br10a_prevmuni_lbl 4128203 `"Uni�o da Vit�ria"', add
label define br10a_prevmuni_lbl 4128302 `"Uniflor"', add
label define br10a_prevmuni_lbl 4128401 `"Ura�"', add
label define br10a_prevmuni_lbl 4128500 `"Wenceslau Braz"', add
label define br10a_prevmuni_lbl 4128534 `"Ventania"', add
label define br10a_prevmuni_lbl 4128559 `"Vera Cruz do Oeste"', add
label define br10a_prevmuni_lbl 4128609 `"Ver�"', add
label define br10a_prevmuni_lbl 4128625 `"Alto Para�so"', add
label define br10a_prevmuni_lbl 4128633 `"Doutor Ulysses"', add
label define br10a_prevmuni_lbl 4128658 `"Virmond"', add
label define br10a_prevmuni_lbl 4128708 `"Vitorino"', add
label define br10a_prevmuni_lbl 4128807 `"Xambr�"', add
label define br10a_prevmuni_lbl 4199999 `"Paran�, municipality unknown"', add
label define br10a_prevmuni_lbl 4200051 `"Abdon Batista"', add
label define br10a_prevmuni_lbl 4200101 `"Abelardo Luz"', add
label define br10a_prevmuni_lbl 4200200 `"Agrol�ndia"', add
label define br10a_prevmuni_lbl 4200309 `"Agron�mica"', add
label define br10a_prevmuni_lbl 4200408 `"�gua Doce"', add
label define br10a_prevmuni_lbl 4200507 `"�guas de Chapec�"', add
label define br10a_prevmuni_lbl 4200556 `"�guas Frias"', add
label define br10a_prevmuni_lbl 4200606 `"�guas Mornas"', add
label define br10a_prevmuni_lbl 4200705 `"Alfredo Wagner"', add
label define br10a_prevmuni_lbl 4200754 `"Alto Bela Vista"', add
label define br10a_prevmuni_lbl 4200804 `"Anchieta"', add
label define br10a_prevmuni_lbl 4200903 `"Angelina"', add
label define br10a_prevmuni_lbl 4201000 `"Anita Garibaldi"', add
label define br10a_prevmuni_lbl 4201109 `"Anit�polis"', add
label define br10a_prevmuni_lbl 4201208 `"Ant�nio Carlos"', add
label define br10a_prevmuni_lbl 4201257 `"Api�na"', add
label define br10a_prevmuni_lbl 4201273 `"Arabut�"', add
label define br10a_prevmuni_lbl 4201307 `"Araquari"', add
label define br10a_prevmuni_lbl 4201406 `"Ararangu�"', add
label define br10a_prevmuni_lbl 4201505 `"Armaz�m"', add
label define br10a_prevmuni_lbl 4201604 `"Arroio Trinta"', add
label define br10a_prevmuni_lbl 4201653 `"Arvoredo"', add
label define br10a_prevmuni_lbl 4201703 `"Ascurra"', add
label define br10a_prevmuni_lbl 4201802 `"Atalanta"', add
label define br10a_prevmuni_lbl 4201901 `"Aurora"', add
label define br10a_prevmuni_lbl 4201950 `"Balne�rio Arroio do Silva"', add
label define br10a_prevmuni_lbl 4202008 `"Balne�rio Cambori�"', add
label define br10a_prevmuni_lbl 4202057 `"Balne�rio Barra do Sul"', add
label define br10a_prevmuni_lbl 4202073 `"Balne�rio Gaivota"', add
label define br10a_prevmuni_lbl 4202081 `"Bandeirante"', add
label define br10a_prevmuni_lbl 4202099 `"Barra Bonita"', add
label define br10a_prevmuni_lbl 4202107 `"Barra Velha"', add
label define br10a_prevmuni_lbl 4202131 `"Bela Vista do Toldo"', add
label define br10a_prevmuni_lbl 4202156 `"Belmonte"', add
label define br10a_prevmuni_lbl 4202206 `"Benedito Novo"', add
label define br10a_prevmuni_lbl 4202305 `"Bigua�u"', add
label define br10a_prevmuni_lbl 4202404 `"Blumenau"', add
label define br10a_prevmuni_lbl 4202438 `"Bocaina do Sul"', add
label define br10a_prevmuni_lbl 4202453 `"Bombinhas"', add
label define br10a_prevmuni_lbl 4202503 `"Bom Jardim da Serra"', add
label define br10a_prevmuni_lbl 4202537 `"Bom Jesus"', add
label define br10a_prevmuni_lbl 4202578 `"Bom Jesus do Oeste"', add
label define br10a_prevmuni_lbl 4202602 `"Bom Retiro"', add
label define br10a_prevmuni_lbl 4202701 `"Botuver�"', add
label define br10a_prevmuni_lbl 4202800 `"Bra�o do Norte"', add
label define br10a_prevmuni_lbl 4202859 `"Bra�o do Trombudo"', add
label define br10a_prevmuni_lbl 4202875 `"Brun�polis"', add
label define br10a_prevmuni_lbl 4202909 `"Brusque"', add
label define br10a_prevmuni_lbl 4203006 `"Ca�ador"', add
label define br10a_prevmuni_lbl 4203105 `"Caibi"', add
label define br10a_prevmuni_lbl 4203154 `"Calmon"', add
label define br10a_prevmuni_lbl 4203204 `"Cambori�"', add
label define br10a_prevmuni_lbl 4203253 `"Cap�o Alto"', add
label define br10a_prevmuni_lbl 4203303 `"Campo Alegre"', add
label define br10a_prevmuni_lbl 4203402 `"Campo Belo do Sul"', add
label define br10a_prevmuni_lbl 4203501 `"Campo Er�"', add
label define br10a_prevmuni_lbl 4203600 `"Campos Novos"', add
label define br10a_prevmuni_lbl 4203709 `"Canelinha"', add
label define br10a_prevmuni_lbl 4203808 `"Canoinhas"', add
label define br10a_prevmuni_lbl 4203907 `"Capinzal"', add
label define br10a_prevmuni_lbl 4203956 `"Capivari de Baixo"', add
label define br10a_prevmuni_lbl 4204004 `"Catanduvas"', add
label define br10a_prevmuni_lbl 4204103 `"Caxambu do Sul"', add
label define br10a_prevmuni_lbl 4204152 `"Celso Ramos"', add
label define br10a_prevmuni_lbl 4204178 `"Cerro Negro"', add
label define br10a_prevmuni_lbl 4204194 `"Chapad�o do Lageado"', add
label define br10a_prevmuni_lbl 4204202 `"Chapec�"', add
label define br10a_prevmuni_lbl 4204251 `"Cocal do Sul"', add
label define br10a_prevmuni_lbl 4204301 `"Conc�rdia"', add
label define br10a_prevmuni_lbl 4204350 `"Cordilheira Alta"', add
label define br10a_prevmuni_lbl 4204400 `"Coronel Freitas"', add
label define br10a_prevmuni_lbl 4204459 `"Coronel Martins"', add
label define br10a_prevmuni_lbl 4204509 `"Corup�"', add
label define br10a_prevmuni_lbl 4204558 `"Correia Pinto"', add
label define br10a_prevmuni_lbl 4204608 `"Crici�ma"', add
label define br10a_prevmuni_lbl 4204707 `"Cunha Por�"', add
label define br10a_prevmuni_lbl 4204756 `"Cunhata�"', add
label define br10a_prevmuni_lbl 4204806 `"Curitibanos"', add
label define br10a_prevmuni_lbl 4204905 `"Descanso"', add
label define br10a_prevmuni_lbl 4205001 `"Dion�sio Cerqueira"', add
label define br10a_prevmuni_lbl 4205100 `"Dona Emma"', add
label define br10a_prevmuni_lbl 4205159 `"Doutor Pedrinho"', add
label define br10a_prevmuni_lbl 4205175 `"Entre Rios"', add
label define br10a_prevmuni_lbl 4205191 `"Ermo"', add
label define br10a_prevmuni_lbl 4205209 `"Erval Velho"', add
label define br10a_prevmuni_lbl 4205308 `"Faxinal dos Guedes"', add
label define br10a_prevmuni_lbl 4205357 `"Flor do Sert�o"', add
label define br10a_prevmuni_lbl 4205407 `"Florian�polis"', add
label define br10a_prevmuni_lbl 4205431 `"Formosa do Sul"', add
label define br10a_prevmuni_lbl 4205456 `"Forquilhinha"', add
label define br10a_prevmuni_lbl 4205506 `"Fraiburgo"', add
label define br10a_prevmuni_lbl 4205555 `"Frei Rog�rio"', add
label define br10a_prevmuni_lbl 4205605 `"Galv�o"', add
label define br10a_prevmuni_lbl 4205704 `"Garopaba"', add
label define br10a_prevmuni_lbl 4205803 `"Garuva"', add
label define br10a_prevmuni_lbl 4205902 `"Gaspar"', add
label define br10a_prevmuni_lbl 4206009 `"Governador Celso Ramos"', add
label define br10a_prevmuni_lbl 4206108 `"Gr�o Par�"', add
label define br10a_prevmuni_lbl 4206207 `"Gravatal"', add
label define br10a_prevmuni_lbl 4206306 `"Guabiruba"', add
label define br10a_prevmuni_lbl 4206405 `"Guaraciaba"', add
label define br10a_prevmuni_lbl 4206504 `"Guaramirim"', add
label define br10a_prevmuni_lbl 4206603 `"Guaruj� do Sul"', add
label define br10a_prevmuni_lbl 4206652 `"Guatamb�"', add
label define br10a_prevmuni_lbl 4206702 `"Herval d'Oeste"', add
label define br10a_prevmuni_lbl 4206751 `"Ibiam"', add
label define br10a_prevmuni_lbl 4206801 `"Ibicar�"', add
label define br10a_prevmuni_lbl 4206900 `"Ibirama"', add
label define br10a_prevmuni_lbl 4207007 `"I�ara"', add
label define br10a_prevmuni_lbl 4207106 `"Ilhota"', add
label define br10a_prevmuni_lbl 4207205 `"Imaru�"', add
label define br10a_prevmuni_lbl 4207304 `"Imbituba"', add
label define br10a_prevmuni_lbl 4207403 `"Imbuia"', add
label define br10a_prevmuni_lbl 4207502 `"Indaial"', add
label define br10a_prevmuni_lbl 4207577 `"Iomer�"', add
label define br10a_prevmuni_lbl 4207601 `"Ipira"', add
label define br10a_prevmuni_lbl 4207650 `"Ipor� do Oeste"', add
label define br10a_prevmuni_lbl 4207684 `"Ipua�u"', add
label define br10a_prevmuni_lbl 4207700 `"Ipumirim"', add
label define br10a_prevmuni_lbl 4207759 `"Iraceminha"', add
label define br10a_prevmuni_lbl 4207809 `"Irani"', add
label define br10a_prevmuni_lbl 4207858 `"Irati"', add
label define br10a_prevmuni_lbl 4207908 `"Irine�polis"', add
label define br10a_prevmuni_lbl 4208005 `"It�"', add
label define br10a_prevmuni_lbl 4208104 `"Itai�polis"', add
label define br10a_prevmuni_lbl 4208203 `"Itaja�"', add
label define br10a_prevmuni_lbl 4208302 `"Itapema"', add
label define br10a_prevmuni_lbl 4208401 `"Itapiranga"', add
label define br10a_prevmuni_lbl 4208450 `"Itapo�"', add
label define br10a_prevmuni_lbl 4208500 `"Ituporanga"', add
label define br10a_prevmuni_lbl 4208609 `"Jabor�"', add
label define br10a_prevmuni_lbl 4208708 `"Jacinto Machado"', add
label define br10a_prevmuni_lbl 4208807 `"Jaguaruna"', add
label define br10a_prevmuni_lbl 4208906 `"Jaragu� do Sul"', add
label define br10a_prevmuni_lbl 4208955 `"Jardin�polis"', add
label define br10a_prevmuni_lbl 4209003 `"Joa�aba"', add
label define br10a_prevmuni_lbl 4209102 `"Joinville"', add
label define br10a_prevmuni_lbl 4209151 `"Jos� Boiteux"', add
label define br10a_prevmuni_lbl 4209177 `"Jupi�"', add
label define br10a_prevmuni_lbl 4209201 `"Lacerd�polis"', add
label define br10a_prevmuni_lbl 4209300 `"Lages"', add
label define br10a_prevmuni_lbl 4209409 `"Laguna"', add
label define br10a_prevmuni_lbl 4209458 `"Lajeado Grande"', add
label define br10a_prevmuni_lbl 4209508 `"Laurentino"', add
label define br10a_prevmuni_lbl 4209607 `"Lauro Muller"', add
label define br10a_prevmuni_lbl 4209706 `"Lebon R�gis"', add
label define br10a_prevmuni_lbl 4209805 `"Leoberto Leal"', add
label define br10a_prevmuni_lbl 4209854 `"Lind�ia do Sul"', add
label define br10a_prevmuni_lbl 4209904 `"Lontras"', add
label define br10a_prevmuni_lbl 4210001 `"Luiz Alves"', add
label define br10a_prevmuni_lbl 4210035 `"Luzerna"', add
label define br10a_prevmuni_lbl 4210050 `"Macieira"', add
label define br10a_prevmuni_lbl 4210100 `"Mafra"', add
label define br10a_prevmuni_lbl 4210209 `"Major Gercino"', add
label define br10a_prevmuni_lbl 4210308 `"Major Vieira"', add
label define br10a_prevmuni_lbl 4210407 `"Maracaj�"', add
label define br10a_prevmuni_lbl 4210506 `"Maravilha"', add
label define br10a_prevmuni_lbl 4210555 `"Marema"', add
label define br10a_prevmuni_lbl 4210605 `"Massaranduba"', add
label define br10a_prevmuni_lbl 4210704 `"Matos Costa"', add
label define br10a_prevmuni_lbl 4210803 `"Meleiro"', add
label define br10a_prevmuni_lbl 4210852 `"Mirim Doce"', add
label define br10a_prevmuni_lbl 4210902 `"Modelo"', add
label define br10a_prevmuni_lbl 4211009 `"Monda�"', add
label define br10a_prevmuni_lbl 4211058 `"Monte Carlo"', add
label define br10a_prevmuni_lbl 4211108 `"Monte Castelo"', add
label define br10a_prevmuni_lbl 4211207 `"Morro da Fuma�a"', add
label define br10a_prevmuni_lbl 4211256 `"Morro Grande"', add
label define br10a_prevmuni_lbl 4211306 `"Navegantes"', add
label define br10a_prevmuni_lbl 4211405 `"Nova Erechim"', add
label define br10a_prevmuni_lbl 4211454 `"Nova Itaberaba"', add
label define br10a_prevmuni_lbl 4211504 `"Nova Trento"', add
label define br10a_prevmuni_lbl 4211603 `"Nova Veneza"', add
label define br10a_prevmuni_lbl 4211652 `"Novo Horizonte"', add
label define br10a_prevmuni_lbl 4211702 `"Orleans"', add
label define br10a_prevmuni_lbl 4211751 `"Otac�lio Costa"', add
label define br10a_prevmuni_lbl 4211801 `"Ouro"', add
label define br10a_prevmuni_lbl 4211850 `"Ouro Verde"', add
label define br10a_prevmuni_lbl 4211876 `"Paial"', add
label define br10a_prevmuni_lbl 4211892 `"Painel"', add
label define br10a_prevmuni_lbl 4211900 `"Palho�a"', add
label define br10a_prevmuni_lbl 4212007 `"Palma Sola"', add
label define br10a_prevmuni_lbl 4212056 `"Palmeira"', add
label define br10a_prevmuni_lbl 4212106 `"Palmitos"', add
label define br10a_prevmuni_lbl 4212205 `"Papanduva"', add
label define br10a_prevmuni_lbl 4212239 `"Para�so"', add
label define br10a_prevmuni_lbl 4212254 `"Passo de Torres"', add
label define br10a_prevmuni_lbl 4212270 `"Passos Maia"', add
label define br10a_prevmuni_lbl 4212304 `"Paulo Lopes"', add
label define br10a_prevmuni_lbl 4212403 `"Pedras Grandes"', add
label define br10a_prevmuni_lbl 4212502 `"Penha"', add
label define br10a_prevmuni_lbl 4212601 `"Peritiba"', add
label define br10a_prevmuni_lbl 4212700 `"Petrol�ndia"', add
label define br10a_prevmuni_lbl 4212809 `"Balne�rio Pi�arras"', add
label define br10a_prevmuni_lbl 4212908 `"Pinhalzinho"', add
label define br10a_prevmuni_lbl 4213005 `"Pinheiro Preto"', add
label define br10a_prevmuni_lbl 4213104 `"Piratuba"', add
label define br10a_prevmuni_lbl 4213153 `"Planalto Alegre"', add
label define br10a_prevmuni_lbl 4213203 `"Pomerode"', add
label define br10a_prevmuni_lbl 4213302 `"Ponte Alta"', add
label define br10a_prevmuni_lbl 4213351 `"Ponte Alta do Norte"', add
label define br10a_prevmuni_lbl 4213401 `"Ponte Serrada"', add
label define br10a_prevmuni_lbl 4213500 `"Porto Belo"', add
label define br10a_prevmuni_lbl 4213609 `"Porto Uni�o"', add
label define br10a_prevmuni_lbl 4213708 `"Pouso Redondo"', add
label define br10a_prevmuni_lbl 4213807 `"Praia Grande"', add
label define br10a_prevmuni_lbl 4213906 `"Presidente Castello Branco"', add
label define br10a_prevmuni_lbl 4214003 `"Presidente Get�lio"', add
label define br10a_prevmuni_lbl 4214102 `"Presidente Nereu"', add
label define br10a_prevmuni_lbl 4214151 `"Princesa"', add
label define br10a_prevmuni_lbl 4214201 `"Quilombo"', add
label define br10a_prevmuni_lbl 4214300 `"Rancho Queimado"', add
label define br10a_prevmuni_lbl 4214409 `"Rio das Antas"', add
label define br10a_prevmuni_lbl 4214508 `"Rio do Campo"', add
label define br10a_prevmuni_lbl 4214607 `"Rio do Oeste"', add
label define br10a_prevmuni_lbl 4214706 `"Rio dos Cedros"', add
label define br10a_prevmuni_lbl 4214805 `"Rio do Sul"', add
label define br10a_prevmuni_lbl 4214904 `"Rio Fortuna"', add
label define br10a_prevmuni_lbl 4215000 `"Rio Negrinho"', add
label define br10a_prevmuni_lbl 4215059 `"Rio Rufino"', add
label define br10a_prevmuni_lbl 4215075 `"Riqueza"', add
label define br10a_prevmuni_lbl 4215109 `"Rodeio"', add
label define br10a_prevmuni_lbl 4215208 `"Romel�ndia"', add
label define br10a_prevmuni_lbl 4215307 `"Salete"', add
label define br10a_prevmuni_lbl 4215356 `"Saltinho"', add
label define br10a_prevmuni_lbl 4215406 `"Salto Veloso"', add
label define br10a_prevmuni_lbl 4215455 `"Sang�o"', add
label define br10a_prevmuni_lbl 4215505 `"Santa Cec�lia"', add
label define br10a_prevmuni_lbl 4215554 `"Santa Helena"', add
label define br10a_prevmuni_lbl 4215604 `"Santa Rosa de Lima"', add
label define br10a_prevmuni_lbl 4215653 `"Santa Rosa do Sul"', add
label define br10a_prevmuni_lbl 4215679 `"Santa Terezinha"', add
label define br10a_prevmuni_lbl 4215687 `"Santa Terezinha do Progresso"', add
label define br10a_prevmuni_lbl 4215695 `"Santiago do Sul"', add
label define br10a_prevmuni_lbl 4215703 `"Santo Amaro da Imperatriz"', add
label define br10a_prevmuni_lbl 4215752 `"S�o Bernardino"', add
label define br10a_prevmuni_lbl 4215802 `"S�o Bento do Sul"', add
label define br10a_prevmuni_lbl 4215901 `"S�o Bonif�cio"', add
label define br10a_prevmuni_lbl 4216008 `"S�o Carlos"', add
label define br10a_prevmuni_lbl 4216057 `"S�o Cristov�o do Sul"', add
label define br10a_prevmuni_lbl 4216107 `"S�o Domingos"', add
label define br10a_prevmuni_lbl 4216206 `"S�o Francisco do Sul"', add
label define br10a_prevmuni_lbl 4216255 `"S�o Jo�o do Oeste"', add
label define br10a_prevmuni_lbl 4216305 `"S�o Jo�o Batista"', add
label define br10a_prevmuni_lbl 4216354 `"S�o Jo�o do Itaperi�"', add
label define br10a_prevmuni_lbl 4216404 `"S�o Jo�o do Sul"', add
label define br10a_prevmuni_lbl 4216503 `"S�o Joaquim"', add
label define br10a_prevmuni_lbl 4216602 `"S�o Jos�"', add
label define br10a_prevmuni_lbl 4216701 `"S�o Jos� do Cedro"', add
label define br10a_prevmuni_lbl 4216800 `"S�o Jos� do Cerrito"', add
label define br10a_prevmuni_lbl 4216909 `"S�o Louren�o do Oeste"', add
label define br10a_prevmuni_lbl 4217006 `"S�o Ludgero"', add
label define br10a_prevmuni_lbl 4217105 `"S�o Martinho"', add
label define br10a_prevmuni_lbl 4217154 `"S�o Miguel da Boa Vista"', add
label define br10a_prevmuni_lbl 4217204 `"S�o Miguel do Oeste"', add
label define br10a_prevmuni_lbl 4217253 `"S�o Pedro de Alc�ntara"', add
label define br10a_prevmuni_lbl 4217303 `"Saudades"', add
label define br10a_prevmuni_lbl 4217402 `"Schroeder"', add
label define br10a_prevmuni_lbl 4217501 `"Seara"', add
label define br10a_prevmuni_lbl 4217550 `"Serra Alta"', add
label define br10a_prevmuni_lbl 4217600 `"Sider�polis"', add
label define br10a_prevmuni_lbl 4217709 `"Sombrio"', add
label define br10a_prevmuni_lbl 4217758 `"Sul Brasil"', add
label define br10a_prevmuni_lbl 4217808 `"Tai�"', add
label define br10a_prevmuni_lbl 4217907 `"Tangar�"', add
label define br10a_prevmuni_lbl 4217956 `"Tigrinhos"', add
label define br10a_prevmuni_lbl 4218004 `"Tijucas"', add
label define br10a_prevmuni_lbl 4218103 `"Timb� do Sul"', add
label define br10a_prevmuni_lbl 4218202 `"Timb�"', add
label define br10a_prevmuni_lbl 4218251 `"Timb� Grande"', add
label define br10a_prevmuni_lbl 4218301 `"Tr�s Barras"', add
label define br10a_prevmuni_lbl 4218350 `"Treviso"', add
label define br10a_prevmuni_lbl 4218400 `"Treze de Maio"', add
label define br10a_prevmuni_lbl 4218509 `"Treze T�lias"', add
label define br10a_prevmuni_lbl 4218608 `"Trombudo Central"', add
label define br10a_prevmuni_lbl 4218707 `"Tubar�o"', add
label define br10a_prevmuni_lbl 4218756 `"Tun�polis"', add
label define br10a_prevmuni_lbl 4218806 `"Turvo"', add
label define br10a_prevmuni_lbl 4218855 `"Uni�o do Oeste"', add
label define br10a_prevmuni_lbl 4218905 `"Urubici"', add
label define br10a_prevmuni_lbl 4218954 `"Urupema"', add
label define br10a_prevmuni_lbl 4219002 `"Urussanga"', add
label define br10a_prevmuni_lbl 4219101 `"Varge�o"', add
label define br10a_prevmuni_lbl 4219150 `"Vargem"', add
label define br10a_prevmuni_lbl 4219176 `"Vargem Bonita"', add
label define br10a_prevmuni_lbl 4219200 `"Vidal Ramos"', add
label define br10a_prevmuni_lbl 4219309 `"Videira"', add
label define br10a_prevmuni_lbl 4219358 `"Vitor Meireles"', add
label define br10a_prevmuni_lbl 4219408 `"Witmarsum"', add
label define br10a_prevmuni_lbl 4219507 `"Xanxer�"', add
label define br10a_prevmuni_lbl 4219606 `"Xavantina"', add
label define br10a_prevmuni_lbl 4219705 `"Xaxim"', add
label define br10a_prevmuni_lbl 4219853 `"Zort�a"', add
label define br10a_prevmuni_lbl 4299999 `"Santa Catarina, municipality unknown"', add
label define br10a_prevmuni_lbl 4300034 `"Acegu�"', add
label define br10a_prevmuni_lbl 4300059 `"�gua Santa"', add
label define br10a_prevmuni_lbl 4300109 `"Agudo"', add
label define br10a_prevmuni_lbl 4300208 `"Ajuricaba"', add
label define br10a_prevmuni_lbl 4300307 `"Alecrim"', add
label define br10a_prevmuni_lbl 4300406 `"Alegrete"', add
label define br10a_prevmuni_lbl 4300455 `"Alegria"', add
label define br10a_prevmuni_lbl 4300471 `"Almirante Tamandar� do Sul"', add
label define br10a_prevmuni_lbl 4300505 `"Alpestre"', add
label define br10a_prevmuni_lbl 4300554 `"Alto Alegre"', add
label define br10a_prevmuni_lbl 4300570 `"Alto Feliz"', add
label define br10a_prevmuni_lbl 4300604 `"Alvorada"', add
label define br10a_prevmuni_lbl 4300638 `"Amaral Ferrador"', add
label define br10a_prevmuni_lbl 4300646 `"Ametista do Sul"', add
label define br10a_prevmuni_lbl 4300661 `"Andr� da Rocha"', add
label define br10a_prevmuni_lbl 4300703 `"Anta Gorda"', add
label define br10a_prevmuni_lbl 4300802 `"Ant�nio Prado"', add
label define br10a_prevmuni_lbl 4300851 `"Arambar�"', add
label define br10a_prevmuni_lbl 4300877 `"Araric�"', add
label define br10a_prevmuni_lbl 4300901 `"Aratiba"', add
label define br10a_prevmuni_lbl 4301008 `"Arroio do Meio"', add
label define br10a_prevmuni_lbl 4301057 `"Arroio do Sal"', add
label define br10a_prevmuni_lbl 4301073 `"Arroio do Padre"', add
label define br10a_prevmuni_lbl 4301107 `"Arroio dos Ratos"', add
label define br10a_prevmuni_lbl 4301206 `"Arroio do Tigre"', add
label define br10a_prevmuni_lbl 4301305 `"Arroio Grande"', add
label define br10a_prevmuni_lbl 4301404 `"Arvorezinha"', add
label define br10a_prevmuni_lbl 4301503 `"Augusto Pestana"', add
label define br10a_prevmuni_lbl 4301552 `"�urea"', add
label define br10a_prevmuni_lbl 4301602 `"Bag�"', add
label define br10a_prevmuni_lbl 4301636 `"Balne�rio Pinhal"', add
label define br10a_prevmuni_lbl 4301651 `"Bar�o"', add
label define br10a_prevmuni_lbl 4301701 `"Bar�o de Cotegipe"', add
label define br10a_prevmuni_lbl 4301750 `"Bar�o do Triunfo"', add
label define br10a_prevmuni_lbl 4301800 `"Barrac�o"', add
label define br10a_prevmuni_lbl 4301859 `"Barra do Guarita"', add
label define br10a_prevmuni_lbl 4301875 `"Barra do Quara�"', add
label define br10a_prevmuni_lbl 4301909 `"Barra do Ribeiro"', add
label define br10a_prevmuni_lbl 4301925 `"Barra do Rio Azul"', add
label define br10a_prevmuni_lbl 4301958 `"Barra Funda"', add
label define br10a_prevmuni_lbl 4302006 `"Barros Cassal"', add
label define br10a_prevmuni_lbl 4302055 `"Benjamin Constant do Sul"', add
label define br10a_prevmuni_lbl 4302105 `"Bento Gon�alves"', add
label define br10a_prevmuni_lbl 4302154 `"Boa Vista das Miss�es"', add
label define br10a_prevmuni_lbl 4302204 `"Boa Vista do Buric�"', add
label define br10a_prevmuni_lbl 4302220 `"Boa Vista do Cadeado"', add
label define br10a_prevmuni_lbl 4302238 `"Boa Vista do Incra"', add
label define br10a_prevmuni_lbl 4302253 `"Boa Vista do Sul"', add
label define br10a_prevmuni_lbl 4302303 `"Bom Jesus"', add
label define br10a_prevmuni_lbl 4302352 `"Bom Princ�pio"', add
label define br10a_prevmuni_lbl 4302378 `"Bom Progresso"', add
label define br10a_prevmuni_lbl 4302402 `"Bom Retiro do Sul"', add
label define br10a_prevmuni_lbl 4302451 `"Boqueir�o do Le�o"', add
label define br10a_prevmuni_lbl 4302501 `"Bossoroca"', add
label define br10a_prevmuni_lbl 4302584 `"Bozano"', add
label define br10a_prevmuni_lbl 4302600 `"Braga"', add
label define br10a_prevmuni_lbl 4302659 `"Brochier"', add
label define br10a_prevmuni_lbl 4302709 `"Buti�"', add
label define br10a_prevmuni_lbl 4302808 `"Ca�apava do Sul"', add
label define br10a_prevmuni_lbl 4302907 `"Cacequi"', add
label define br10a_prevmuni_lbl 4303004 `"Cachoeira do Sul"', add
label define br10a_prevmuni_lbl 4303103 `"Cachoeirinha"', add
label define br10a_prevmuni_lbl 4303202 `"Cacique Doble"', add
label define br10a_prevmuni_lbl 4303301 `"Caibat�"', add
label define br10a_prevmuni_lbl 4303400 `"Cai�ara"', add
label define br10a_prevmuni_lbl 4303509 `"Camaqu�"', add
label define br10a_prevmuni_lbl 4303558 `"Camargo"', add
label define br10a_prevmuni_lbl 4303608 `"Cambar� do Sul"', add
label define br10a_prevmuni_lbl 4303673 `"Campestre da Serra"', add
label define br10a_prevmuni_lbl 4303707 `"Campina das Miss�es"', add
label define br10a_prevmuni_lbl 4303806 `"Campinas do Sul"', add
label define br10a_prevmuni_lbl 4303905 `"Campo Bom"', add
label define br10a_prevmuni_lbl 4304002 `"Campo Novo"', add
label define br10a_prevmuni_lbl 4304101 `"Campos Borges"', add
label define br10a_prevmuni_lbl 4304200 `"Candel�ria"', add
label define br10a_prevmuni_lbl 4304309 `"C�ndido God�i"', add
label define br10a_prevmuni_lbl 4304358 `"Candiota"', add
label define br10a_prevmuni_lbl 4304408 `"Canela"', add
label define br10a_prevmuni_lbl 4304507 `"Cangu�u"', add
label define br10a_prevmuni_lbl 4304606 `"Canoas"', add
label define br10a_prevmuni_lbl 4304614 `"Canudos do Vale"', add
label define br10a_prevmuni_lbl 4304622 `"Cap�o Bonito do Sul"', add
label define br10a_prevmuni_lbl 4304630 `"Cap�o da Canoa"', add
label define br10a_prevmuni_lbl 4304655 `"Cap�o do Cip�"', add
label define br10a_prevmuni_lbl 4304663 `"Cap�o do Le�o"', add
label define br10a_prevmuni_lbl 4304671 `"Capivari do Sul"', add
label define br10a_prevmuni_lbl 4304689 `"Capela de Santana"', add
label define br10a_prevmuni_lbl 4304697 `"Capit�o"', add
label define br10a_prevmuni_lbl 4304705 `"Carazinho"', add
label define br10a_prevmuni_lbl 4304713 `"Cara�"', add
label define br10a_prevmuni_lbl 4304804 `"Carlos Barbosa"', add
label define br10a_prevmuni_lbl 4304853 `"Carlos Gomes"', add
label define br10a_prevmuni_lbl 4304903 `"Casca"', add
label define br10a_prevmuni_lbl 4304952 `"Caseiros"', add
label define br10a_prevmuni_lbl 4305009 `"Catu�pe"', add
label define br10a_prevmuni_lbl 4305108 `"Caxias do Sul"', add
label define br10a_prevmuni_lbl 4305116 `"Centen�rio"', add
label define br10a_prevmuni_lbl 4305124 `"Cerrito"', add
label define br10a_prevmuni_lbl 4305132 `"Cerro Branco"', add
label define br10a_prevmuni_lbl 4305157 `"Cerro Grande"', add
label define br10a_prevmuni_lbl 4305173 `"Cerro Grande do Sul"', add
label define br10a_prevmuni_lbl 4305207 `"Cerro Largo"', add
label define br10a_prevmuni_lbl 4305306 `"Chapada"', add
label define br10a_prevmuni_lbl 4305355 `"Charqueadas"', add
label define br10a_prevmuni_lbl 4305371 `"Charrua"', add
label define br10a_prevmuni_lbl 4305405 `"Chiapetta"', add
label define br10a_prevmuni_lbl 4305439 `"Chu�"', add
label define br10a_prevmuni_lbl 4305447 `"Chuvisca"', add
label define br10a_prevmuni_lbl 4305454 `"Cidreira"', add
label define br10a_prevmuni_lbl 4305504 `"Cir�aco"', add
label define br10a_prevmuni_lbl 4305587 `"Colinas"', add
label define br10a_prevmuni_lbl 4305603 `"Colorado"', add
label define br10a_prevmuni_lbl 4305702 `"Condor"', add
label define br10a_prevmuni_lbl 4305801 `"Constantina"', add
label define br10a_prevmuni_lbl 4305835 `"Coqueiro Baixo"', add
label define br10a_prevmuni_lbl 4305850 `"Coqueiros do Sul"', add
label define br10a_prevmuni_lbl 4305871 `"Coronel Barros"', add
label define br10a_prevmuni_lbl 4305900 `"Coronel Bicaco"', add
label define br10a_prevmuni_lbl 4305934 `"Coronel Pilar"', add
label define br10a_prevmuni_lbl 4305959 `"Cotipor�"', add
label define br10a_prevmuni_lbl 4305975 `"Coxilha"', add
label define br10a_prevmuni_lbl 4306007 `"Crissiumal"', add
label define br10a_prevmuni_lbl 4306056 `"Cristal"', add
label define br10a_prevmuni_lbl 4306072 `"Cristal do Sul"', add
label define br10a_prevmuni_lbl 4306106 `"Cruz Alta"', add
label define br10a_prevmuni_lbl 4306130 `"Cruzaltense"', add
label define br10a_prevmuni_lbl 4306205 `"Cruzeiro do Sul"', add
label define br10a_prevmuni_lbl 4306304 `"David Canabarro"', add
label define br10a_prevmuni_lbl 4306320 `"Derrubadas"', add
label define br10a_prevmuni_lbl 4306353 `"Dezesseis de Novembro"', add
label define br10a_prevmuni_lbl 4306379 `"Dilermando de Aguiar"', add
label define br10a_prevmuni_lbl 4306403 `"Dois Irm�os"', add
label define br10a_prevmuni_lbl 4306429 `"Dois Irm�os das Miss�es"', add
label define br10a_prevmuni_lbl 4306452 `"Dois Lajeados"', add
label define br10a_prevmuni_lbl 4306502 `"Dom Feliciano"', add
label define br10a_prevmuni_lbl 4306551 `"Dom Pedro de Alc�ntara"', add
label define br10a_prevmuni_lbl 4306601 `"Dom Pedrito"', add
label define br10a_prevmuni_lbl 4306700 `"Dona Francisca"', add
label define br10a_prevmuni_lbl 4306734 `"Doutor Maur�cio Cardoso"', add
label define br10a_prevmuni_lbl 4306759 `"Doutor Ricardo"', add
label define br10a_prevmuni_lbl 4306767 `"Eldorado do Sul"', add
label define br10a_prevmuni_lbl 4306809 `"Encantado"', add
label define br10a_prevmuni_lbl 4306908 `"Encruzilhada do Sul"', add
label define br10a_prevmuni_lbl 4306924 `"Engenho Velho"', add
label define br10a_prevmuni_lbl 4306932 `"Entre-Iju�s"', add
label define br10a_prevmuni_lbl 4306957 `"Entre Rios do Sul"', add
label define br10a_prevmuni_lbl 4306973 `"Erebango"', add
label define br10a_prevmuni_lbl 4307005 `"Erechim"', add
label define br10a_prevmuni_lbl 4307054 `"Ernestina"', add
label define br10a_prevmuni_lbl 4307104 `"Herval"', add
label define br10a_prevmuni_lbl 4307203 `"Erval Grande"', add
label define br10a_prevmuni_lbl 4307302 `"Erval Seco"', add
label define br10a_prevmuni_lbl 4307401 `"Esmeralda"', add
label define br10a_prevmuni_lbl 4307450 `"Esperan�a do Sul"', add
label define br10a_prevmuni_lbl 4307500 `"Espumoso"', add
label define br10a_prevmuni_lbl 4307559 `"Esta��o"', add
label define br10a_prevmuni_lbl 4307609 `"Est�ncia Velha"', add
label define br10a_prevmuni_lbl 4307708 `"Esteio"', add
label define br10a_prevmuni_lbl 4307807 `"Estrela"', add
label define br10a_prevmuni_lbl 4307815 `"Estrela Velha"', add
label define br10a_prevmuni_lbl 4307831 `"Eug�nio de Castro"', add
label define br10a_prevmuni_lbl 4307864 `"Fagundes Varela"', add
label define br10a_prevmuni_lbl 4307906 `"Farroupilha"', add
label define br10a_prevmuni_lbl 4308003 `"Faxinal do Soturno"', add
label define br10a_prevmuni_lbl 4308052 `"Faxinalzinho"', add
label define br10a_prevmuni_lbl 4308078 `"Fazenda Vilanova"', add
label define br10a_prevmuni_lbl 4308102 `"Feliz"', add
label define br10a_prevmuni_lbl 4308201 `"Flores da Cunha"', add
label define br10a_prevmuni_lbl 4308250 `"Floriano Peixoto"', add
label define br10a_prevmuni_lbl 4308300 `"Fontoura Xavier"', add
label define br10a_prevmuni_lbl 4308409 `"Formigueiro"', add
label define br10a_prevmuni_lbl 4308433 `"Forquetinha"', add
label define br10a_prevmuni_lbl 4308458 `"Fortaleza dos Valos"', add
label define br10a_prevmuni_lbl 4308508 `"Frederico Westphalen"', add
label define br10a_prevmuni_lbl 4308607 `"Garibaldi"', add
label define br10a_prevmuni_lbl 4308656 `"Garruchos"', add
label define br10a_prevmuni_lbl 4308706 `"Gaurama"', add
label define br10a_prevmuni_lbl 4308805 `"General C�mara"', add
label define br10a_prevmuni_lbl 4308854 `"Gentil"', add
label define br10a_prevmuni_lbl 4308904 `"Get�lio Vargas"', add
label define br10a_prevmuni_lbl 4309001 `"Giru�"', add
label define br10a_prevmuni_lbl 4309050 `"Glorinha"', add
label define br10a_prevmuni_lbl 4309100 `"Gramado"', add
label define br10a_prevmuni_lbl 4309126 `"Gramado dos Loureiros"', add
label define br10a_prevmuni_lbl 4309159 `"Gramado Xavier"', add
label define br10a_prevmuni_lbl 4309209 `"Gravata�"', add
label define br10a_prevmuni_lbl 4309258 `"Guabiju"', add
label define br10a_prevmuni_lbl 4309308 `"Gua�ba"', add
label define br10a_prevmuni_lbl 4309407 `"Guapor�"', add
label define br10a_prevmuni_lbl 4309506 `"Guarani das Miss�es"', add
label define br10a_prevmuni_lbl 4309555 `"Harmonia"', add
label define br10a_prevmuni_lbl 4309571 `"Herveiras"', add
label define br10a_prevmuni_lbl 4309605 `"Horizontina"', add
label define br10a_prevmuni_lbl 4309654 `"Hulha Negra"', add
label define br10a_prevmuni_lbl 4309704 `"Humait�"', add
label define br10a_prevmuni_lbl 4309753 `"Ibarama"', add
label define br10a_prevmuni_lbl 4309803 `"Ibia��"', add
label define br10a_prevmuni_lbl 4309902 `"Ibiraiaras"', add
label define br10a_prevmuni_lbl 4309951 `"Ibirapuit�"', add
label define br10a_prevmuni_lbl 4310009 `"Ibirub�"', add
label define br10a_prevmuni_lbl 4310108 `"Igrejinha"', add
label define br10a_prevmuni_lbl 4310207 `"Iju�"', add
label define br10a_prevmuni_lbl 4310306 `"Il�polis"', add
label define br10a_prevmuni_lbl 4310330 `"Imb�"', add
label define br10a_prevmuni_lbl 4310363 `"Imigrante"', add
label define br10a_prevmuni_lbl 4310405 `"Independ�ncia"', add
label define br10a_prevmuni_lbl 4310413 `"Inhacor�"', add
label define br10a_prevmuni_lbl 4310439 `"Ip�"', add
label define br10a_prevmuni_lbl 4310462 `"Ipiranga do Sul"', add
label define br10a_prevmuni_lbl 4310504 `"Ira�"', add
label define br10a_prevmuni_lbl 4310538 `"Itaara"', add
label define br10a_prevmuni_lbl 4310553 `"Itacurubi"', add
label define br10a_prevmuni_lbl 4310579 `"Itapuca"', add
label define br10a_prevmuni_lbl 4310603 `"Itaqui"', add
label define br10a_prevmuni_lbl 4310652 `"Itati"', add
label define br10a_prevmuni_lbl 4310702 `"Itatiba do Sul"', add
label define br10a_prevmuni_lbl 4310751 `"Ivor�"', add
label define br10a_prevmuni_lbl 4310801 `"Ivoti"', add
label define br10a_prevmuni_lbl 4310850 `"Jaboticaba"', add
label define br10a_prevmuni_lbl 4310876 `"Jacuizinho"', add
label define br10a_prevmuni_lbl 4310900 `"Jacutinga"', add
label define br10a_prevmuni_lbl 4311007 `"Jaguar�o"', add
label define br10a_prevmuni_lbl 4311106 `"Jaguari"', add
label define br10a_prevmuni_lbl 4311122 `"Jaquirana"', add
label define br10a_prevmuni_lbl 4311130 `"Jari"', add
label define br10a_prevmuni_lbl 4311155 `"J�ia"', add
label define br10a_prevmuni_lbl 4311205 `"J�lio de Castilhos"', add
label define br10a_prevmuni_lbl 4311239 `"Lagoa Bonita do Sul"', add
label define br10a_prevmuni_lbl 4311254 `"Lago�o"', add
label define br10a_prevmuni_lbl 4311270 `"Lagoa dos Tr�s Cantos"', add
label define br10a_prevmuni_lbl 4311304 `"Lagoa Vermelha"', add
label define br10a_prevmuni_lbl 4311403 `"Lajeado"', add
label define br10a_prevmuni_lbl 4311429 `"Lajeado do Bugre"', add
label define br10a_prevmuni_lbl 4311502 `"Lavras do Sul"', add
label define br10a_prevmuni_lbl 4311601 `"Liberato Salzano"', add
label define br10a_prevmuni_lbl 4311627 `"Lindolfo Collor"', add
label define br10a_prevmuni_lbl 4311643 `"Linha Nova"', add
label define br10a_prevmuni_lbl 4311700 `"Machadinho"', add
label define br10a_prevmuni_lbl 4311718 `"Ma�ambar�"', add
label define br10a_prevmuni_lbl 4311734 `"Mampituba"', add
label define br10a_prevmuni_lbl 4311759 `"Manoel Viana"', add
label define br10a_prevmuni_lbl 4311775 `"Maquin�"', add
label define br10a_prevmuni_lbl 4311791 `"Marat�"', add
label define br10a_prevmuni_lbl 4311809 `"Marau"', add
label define br10a_prevmuni_lbl 4311908 `"Marcelino Ramos"', add
label define br10a_prevmuni_lbl 4311981 `"Mariana Pimentel"', add
label define br10a_prevmuni_lbl 4312005 `"Mariano Moro"', add
label define br10a_prevmuni_lbl 4312054 `"Marques de Souza"', add
label define br10a_prevmuni_lbl 4312104 `"Mata"', add
label define br10a_prevmuni_lbl 4312138 `"Mato Castelhano"', add
label define br10a_prevmuni_lbl 4312153 `"Mato Leit�o"', add
label define br10a_prevmuni_lbl 4312179 `"Mato Queimado"', add
label define br10a_prevmuni_lbl 4312203 `"Maximiliano de Almeida"', add
label define br10a_prevmuni_lbl 4312252 `"Minas do Le�o"', add
label define br10a_prevmuni_lbl 4312302 `"Miragua�"', add
label define br10a_prevmuni_lbl 4312351 `"Montauri"', add
label define br10a_prevmuni_lbl 4312377 `"Monte Alegre dos Campos"', add
label define br10a_prevmuni_lbl 4312385 `"Monte Belo do Sul"', add
label define br10a_prevmuni_lbl 4312401 `"Montenegro"', add
label define br10a_prevmuni_lbl 4312427 `"Morma�o"', add
label define br10a_prevmuni_lbl 4312443 `"Morrinhos do Sul"', add
label define br10a_prevmuni_lbl 4312450 `"Morro Redondo"', add
label define br10a_prevmuni_lbl 4312476 `"Morro Reuter"', add
label define br10a_prevmuni_lbl 4312500 `"Mostardas"', add
label define br10a_prevmuni_lbl 4312609 `"Mu�um"', add
label define br10a_prevmuni_lbl 4312617 `"Muitos Cap�es"', add
label define br10a_prevmuni_lbl 4312625 `"Muliterno"', add
label define br10a_prevmuni_lbl 4312658 `"N�o-Me-Toque"', add
label define br10a_prevmuni_lbl 4312674 `"Nicolau Vergueiro"', add
label define br10a_prevmuni_lbl 4312708 `"Nonoai"', add
label define br10a_prevmuni_lbl 4312757 `"Nova Alvorada"', add
label define br10a_prevmuni_lbl 4312807 `"Nova Ara��"', add
label define br10a_prevmuni_lbl 4312906 `"Nova Bassano"', add
label define br10a_prevmuni_lbl 4312955 `"Nova Boa Vista"', add
label define br10a_prevmuni_lbl 4313003 `"Nova Br�scia"', add
label define br10a_prevmuni_lbl 4313011 `"Nova Candel�ria"', add
label define br10a_prevmuni_lbl 4313037 `"Nova Esperan�a do Sul"', add
label define br10a_prevmuni_lbl 4313060 `"Nova Hartz"', add
label define br10a_prevmuni_lbl 4313086 `"Nova P�dua"', add
label define br10a_prevmuni_lbl 4313102 `"Nova Palma"', add
label define br10a_prevmuni_lbl 4313201 `"Nova Petr�polis"', add
label define br10a_prevmuni_lbl 4313300 `"Nova Prata"', add
label define br10a_prevmuni_lbl 4313334 `"Nova Ramada"', add
label define br10a_prevmuni_lbl 4313359 `"Nova Roma do Sul"', add
label define br10a_prevmuni_lbl 4313375 `"Nova Santa Rita"', add
label define br10a_prevmuni_lbl 4313391 `"Novo Cabrais"', add
label define br10a_prevmuni_lbl 4313409 `"Novo Hamburgo"', add
label define br10a_prevmuni_lbl 4313425 `"Novo Machado"', add
label define br10a_prevmuni_lbl 4313441 `"Novo Tiradentes"', add
label define br10a_prevmuni_lbl 4313466 `"Novo Xingu"', add
label define br10a_prevmuni_lbl 4313490 `"Novo Barreiro"', add
label define br10a_prevmuni_lbl 4313508 `"Os�rio"', add
label define br10a_prevmuni_lbl 4313607 `"Paim Filho"', add
label define br10a_prevmuni_lbl 4313656 `"Palmares do Sul"', add
label define br10a_prevmuni_lbl 4313706 `"Palmeira das Miss�es"', add
label define br10a_prevmuni_lbl 4313805 `"Palmitinho"', add
label define br10a_prevmuni_lbl 4313904 `"Panambi"', add
label define br10a_prevmuni_lbl 4313953 `"Pantano Grande"', add
label define br10a_prevmuni_lbl 4314001 `"Para�"', add
label define br10a_prevmuni_lbl 4314027 `"Para�so do Sul"', add
label define br10a_prevmuni_lbl 4314035 `"Pareci Novo"', add
label define br10a_prevmuni_lbl 4314050 `"Parob�"', add
label define br10a_prevmuni_lbl 4314068 `"Passa Sete"', add
label define br10a_prevmuni_lbl 4314076 `"Passo do Sobrado"', add
label define br10a_prevmuni_lbl 4314100 `"Passo Fundo"', add
label define br10a_prevmuni_lbl 4314134 `"Paulo Bento"', add
label define br10a_prevmuni_lbl 4314159 `"Paverama"', add
label define br10a_prevmuni_lbl 4314175 `"Pedras Altas"', add
label define br10a_prevmuni_lbl 4314209 `"Pedro Os�rio"', add
label define br10a_prevmuni_lbl 4314308 `"Peju�ara"', add
label define br10a_prevmuni_lbl 4314407 `"Pelotas"', add
label define br10a_prevmuni_lbl 4314423 `"Picada Caf�"', add
label define br10a_prevmuni_lbl 4314456 `"Pinhal"', add
label define br10a_prevmuni_lbl 4314464 `"Pinhal da Serra"', add
label define br10a_prevmuni_lbl 4314472 `"Pinhal Grande"', add
label define br10a_prevmuni_lbl 4314498 `"Pinheirinho do Vale"', add
label define br10a_prevmuni_lbl 4314506 `"Pinheiro Machado"', add
label define br10a_prevmuni_lbl 4314555 `"Pirap�"', add
label define br10a_prevmuni_lbl 4314605 `"Piratini"', add
label define br10a_prevmuni_lbl 4314704 `"Planalto"', add
label define br10a_prevmuni_lbl 4314753 `"Po�o das Antas"', add
label define br10a_prevmuni_lbl 4314779 `"Pont�o"', add
label define br10a_prevmuni_lbl 4314787 `"Ponte Preta"', add
label define br10a_prevmuni_lbl 4314803 `"Port�o"', add
label define br10a_prevmuni_lbl 4314902 `"Porto Alegre"', add
label define br10a_prevmuni_lbl 4315008 `"Porto Lucena"', add
label define br10a_prevmuni_lbl 4315057 `"Porto Mau�"', add
label define br10a_prevmuni_lbl 4315073 `"Porto Vera Cruz"', add
label define br10a_prevmuni_lbl 4315107 `"Porto Xavier"', add
label define br10a_prevmuni_lbl 4315131 `"Pouso Novo"', add
label define br10a_prevmuni_lbl 4315149 `"Presidente Lucena"', add
label define br10a_prevmuni_lbl 4315156 `"Progresso"', add
label define br10a_prevmuni_lbl 4315172 `"Prot�sio Alves"', add
label define br10a_prevmuni_lbl 4315206 `"Putinga"', add
label define br10a_prevmuni_lbl 4315305 `"Quara�"', add
label define br10a_prevmuni_lbl 4315313 `"Quatro Irm�os"', add
label define br10a_prevmuni_lbl 4315321 `"Quevedos"', add
label define br10a_prevmuni_lbl 4315354 `"Quinze de Novembro"', add
label define br10a_prevmuni_lbl 4315404 `"Redentora"', add
label define br10a_prevmuni_lbl 4315453 `"Relvado"', add
label define br10a_prevmuni_lbl 4315503 `"Restinga Seca"', add
label define br10a_prevmuni_lbl 4315552 `"Rio dos �ndios"', add
label define br10a_prevmuni_lbl 4315602 `"Rio Grande"', add
label define br10a_prevmuni_lbl 4315701 `"Rio Pardo"', add
label define br10a_prevmuni_lbl 4315750 `"Riozinho"', add
label define br10a_prevmuni_lbl 4315800 `"Roca Sales"', add
label define br10a_prevmuni_lbl 4315909 `"Rodeio Bonito"', add
label define br10a_prevmuni_lbl 4315958 `"Rolador"', add
label define br10a_prevmuni_lbl 4316006 `"Rolante"', add
label define br10a_prevmuni_lbl 4316105 `"Ronda Alta"', add
label define br10a_prevmuni_lbl 4316204 `"Rondinha"', add
label define br10a_prevmuni_lbl 4316303 `"Roque Gonzales"', add
label define br10a_prevmuni_lbl 4316402 `"Ros�rio do Sul"', add
label define br10a_prevmuni_lbl 4316428 `"Sagrada Fam�lia"', add
label define br10a_prevmuni_lbl 4316436 `"Saldanha Marinho"', add
label define br10a_prevmuni_lbl 4316451 `"Salto do Jacu�"', add
label define br10a_prevmuni_lbl 4316477 `"Salvador das Miss�es"', add
label define br10a_prevmuni_lbl 4316501 `"Salvador do Sul"', add
label define br10a_prevmuni_lbl 4316600 `"Sananduva"', add
label define br10a_prevmuni_lbl 4316709 `"Santa B�rbara do Sul"', add
label define br10a_prevmuni_lbl 4316733 `"Santa Cec�lia do Sul"', add
label define br10a_prevmuni_lbl 4316758 `"Santa Clara do Sul"', add
label define br10a_prevmuni_lbl 4316808 `"Santa Cruz do Sul"', add
label define br10a_prevmuni_lbl 4316907 `"Santa Maria"', add
label define br10a_prevmuni_lbl 4316956 `"Santa Maria do Herval"', add
label define br10a_prevmuni_lbl 4316972 `"Santa Margarida do Sul"', add
label define br10a_prevmuni_lbl 4317004 `"Santana da Boa Vista"', add
label define br10a_prevmuni_lbl 4317103 `"Sant'Ana do Livramento"', add
label define br10a_prevmuni_lbl 4317202 `"Santa Rosa"', add
label define br10a_prevmuni_lbl 4317251 `"Santa Tereza"', add
label define br10a_prevmuni_lbl 4317301 `"Santa Vit�ria do Palmar"', add
label define br10a_prevmuni_lbl 4317400 `"Santiago"', add
label define br10a_prevmuni_lbl 4317509 `"Santo �ngelo"', add
label define br10a_prevmuni_lbl 4317558 `"Santo Ant�nio do Palma"', add
label define br10a_prevmuni_lbl 4317608 `"Santo Ant�nio da Patrulha"', add
label define br10a_prevmuni_lbl 4317707 `"Santo Ant�nio das Miss�es"', add
label define br10a_prevmuni_lbl 4317756 `"Santo Ant�nio do Planalto"', add
label define br10a_prevmuni_lbl 4317806 `"Santo Augusto"', add
label define br10a_prevmuni_lbl 4317905 `"Santo Cristo"', add
label define br10a_prevmuni_lbl 4317954 `"Santo Expedito do Sul"', add
label define br10a_prevmuni_lbl 4318002 `"S�o Borja"', add
label define br10a_prevmuni_lbl 4318051 `"S�o Domingos do Sul"', add
label define br10a_prevmuni_lbl 4318101 `"S�o Francisco de Assis"', add
label define br10a_prevmuni_lbl 4318200 `"S�o Francisco de Paula"', add
label define br10a_prevmuni_lbl 4318309 `"S�o Gabriel"', add
label define br10a_prevmuni_lbl 4318408 `"S�o Jer�nimo"', add
label define br10a_prevmuni_lbl 4318424 `"S�o Jo�o da Urtiga"', add
label define br10a_prevmuni_lbl 4318432 `"S�o Jo�o do Pol�sine"', add
label define br10a_prevmuni_lbl 4318440 `"S�o Jorge"', add
label define br10a_prevmuni_lbl 4318457 `"S�o Jos� das Miss�es"', add
label define br10a_prevmuni_lbl 4318465 `"S�o Jos� do Herval"', add
label define br10a_prevmuni_lbl 4318481 `"S�o Jos� do Hort�ncio"', add
label define br10a_prevmuni_lbl 4318499 `"S�o Jos� do Inhacor�"', add
label define br10a_prevmuni_lbl 4318507 `"S�o Jos� do Norte"', add
label define br10a_prevmuni_lbl 4318606 `"S�o Jos� do Ouro"', add
label define br10a_prevmuni_lbl 4318614 `"S�o Jos� do Sul"', add
label define br10a_prevmuni_lbl 4318622 `"S�o Jos� dos Ausentes"', add
label define br10a_prevmuni_lbl 4318705 `"S�o Leopoldo"', add
label define br10a_prevmuni_lbl 4318804 `"S�o Louren�o do Sul"', add
label define br10a_prevmuni_lbl 4318903 `"S�o Luiz Gonzaga"', add
label define br10a_prevmuni_lbl 4319000 `"S�o Marcos"', add
label define br10a_prevmuni_lbl 4319109 `"S�o Martinho"', add
label define br10a_prevmuni_lbl 4319125 `"S�o Martinho da Serra"', add
label define br10a_prevmuni_lbl 4319158 `"S�o Miguel das Miss�es"', add
label define br10a_prevmuni_lbl 4319208 `"S�o Nicolau"', add
label define br10a_prevmuni_lbl 4319307 `"S�o Paulo das Miss�es"', add
label define br10a_prevmuni_lbl 4319356 `"S�o Pedro da Serra"', add
label define br10a_prevmuni_lbl 4319364 `"S�o Pedro das Miss�es"', add
label define br10a_prevmuni_lbl 4319372 `"S�o Pedro do Buti�"', add
label define br10a_prevmuni_lbl 4319406 `"S�o Pedro do Sul"', add
label define br10a_prevmuni_lbl 4319505 `"S�o Sebasti�o do Ca�"', add
label define br10a_prevmuni_lbl 4319604 `"S�o Sep�"', add
label define br10a_prevmuni_lbl 4319703 `"S�o Valentim"', add
label define br10a_prevmuni_lbl 4319711 `"S�o Valentim do Sul"', add
label define br10a_prevmuni_lbl 4319737 `"S�o Val�rio do Sul"', add
label define br10a_prevmuni_lbl 4319752 `"S�o Vendelino"', add
label define br10a_prevmuni_lbl 4319802 `"S�o Vicente do Sul"', add
label define br10a_prevmuni_lbl 4319901 `"Sapiranga"', add
label define br10a_prevmuni_lbl 4320008 `"Sapucaia do Sul"', add
label define br10a_prevmuni_lbl 4320107 `"Sarandi"', add
label define br10a_prevmuni_lbl 4320206 `"Seberi"', add
label define br10a_prevmuni_lbl 4320230 `"Sede Nova"', add
label define br10a_prevmuni_lbl 4320263 `"Segredo"', add
label define br10a_prevmuni_lbl 4320305 `"Selbach"', add
label define br10a_prevmuni_lbl 4320321 `"Senador Salgado Filho"', add
label define br10a_prevmuni_lbl 4320354 `"Sentinela do Sul"', add
label define br10a_prevmuni_lbl 4320404 `"Serafina Corr�a"', add
label define br10a_prevmuni_lbl 4320453 `"S�rio"', add
label define br10a_prevmuni_lbl 4320503 `"Sert�o"', add
label define br10a_prevmuni_lbl 4320552 `"Sert�o Santana"', add
label define br10a_prevmuni_lbl 4320578 `"Sete de Setembro"', add
label define br10a_prevmuni_lbl 4320602 `"Severiano de Almeida"', add
label define br10a_prevmuni_lbl 4320651 `"Silveira Martins"', add
label define br10a_prevmuni_lbl 4320677 `"Sinimbu"', add
label define br10a_prevmuni_lbl 4320701 `"Sobradinho"', add
label define br10a_prevmuni_lbl 4320800 `"Soledade"', add
label define br10a_prevmuni_lbl 4320859 `"Taba�"', add
label define br10a_prevmuni_lbl 4320909 `"Tapejara"', add
label define br10a_prevmuni_lbl 4321006 `"Tapera"', add
label define br10a_prevmuni_lbl 4321105 `"Tapes"', add
label define br10a_prevmuni_lbl 4321204 `"Taquara"', add
label define br10a_prevmuni_lbl 4321303 `"Taquari"', add
label define br10a_prevmuni_lbl 4321329 `"Taquaru�u do Sul"', add
label define br10a_prevmuni_lbl 4321352 `"Tavares"', add
label define br10a_prevmuni_lbl 4321402 `"Tenente Portela"', add
label define br10a_prevmuni_lbl 4321436 `"Terra de Areia"', add
label define br10a_prevmuni_lbl 4321451 `"Teut�nia"', add
label define br10a_prevmuni_lbl 4321469 `"Tio Hugo"', add
label define br10a_prevmuni_lbl 4321477 `"Tiradentes do Sul"', add
label define br10a_prevmuni_lbl 4321493 `"Toropi"', add
label define br10a_prevmuni_lbl 4321501 `"Torres"', add
label define br10a_prevmuni_lbl 4321600 `"Tramanda�"', add
label define br10a_prevmuni_lbl 4321626 `"Travesseiro"', add
label define br10a_prevmuni_lbl 4321634 `"Tr�s Arroios"', add
label define br10a_prevmuni_lbl 4321667 `"Tr�s Cachoeiras"', add
label define br10a_prevmuni_lbl 4321709 `"Tr�s Coroas"', add
label define br10a_prevmuni_lbl 4321808 `"Tr�s de Maio"', add
label define br10a_prevmuni_lbl 4321832 `"Tr�s Forquilhas"', add
label define br10a_prevmuni_lbl 4321857 `"Tr�s Palmeiras"', add
label define br10a_prevmuni_lbl 4321907 `"Tr�s Passos"', add
label define br10a_prevmuni_lbl 4321956 `"Trindade do Sul"', add
label define br10a_prevmuni_lbl 4322004 `"Triunfo"', add
label define br10a_prevmuni_lbl 4322103 `"Tucunduva"', add
label define br10a_prevmuni_lbl 4322152 `"Tunas"', add
label define br10a_prevmuni_lbl 4322186 `"Tupanci do Sul"', add
label define br10a_prevmuni_lbl 4322202 `"Tupanciret�"', add
label define br10a_prevmuni_lbl 4322251 `"Tupandi"', add
label define br10a_prevmuni_lbl 4322301 `"Tuparendi"', add
label define br10a_prevmuni_lbl 4322327 `"Turu�u"', add
label define br10a_prevmuni_lbl 4322343 `"Ubiretama"', add
label define br10a_prevmuni_lbl 4322350 `"Uni�o da Serra"', add
label define br10a_prevmuni_lbl 4322376 `"Unistalda"', add
label define br10a_prevmuni_lbl 4322400 `"Uruguaiana"', add
label define br10a_prevmuni_lbl 4322509 `"Vacaria"', add
label define br10a_prevmuni_lbl 4322525 `"Vale Verde"', add
label define br10a_prevmuni_lbl 4322533 `"Vale do Sol"', add
label define br10a_prevmuni_lbl 4322541 `"Vale Real"', add
label define br10a_prevmuni_lbl 4322558 `"Vanini"', add
label define br10a_prevmuni_lbl 4322608 `"Ven�ncio Aires"', add
label define br10a_prevmuni_lbl 4322707 `"Vera Cruz"', add
label define br10a_prevmuni_lbl 4322806 `"Veran�polis"', add
label define br10a_prevmuni_lbl 4322855 `"Vespasiano Correa"', add
label define br10a_prevmuni_lbl 4322905 `"Viadutos"', add
label define br10a_prevmuni_lbl 4323002 `"Viam�o"', add
label define br10a_prevmuni_lbl 4323101 `"Vicente Dutra"', add
label define br10a_prevmuni_lbl 4323200 `"Victor Graeff"', add
label define br10a_prevmuni_lbl 4323309 `"Vila Flores"', add
label define br10a_prevmuni_lbl 4323358 `"Vila L�ngaro"', add
label define br10a_prevmuni_lbl 4323408 `"Vila Maria"', add
label define br10a_prevmuni_lbl 4323457 `"Vila Nova do Sul"', add
label define br10a_prevmuni_lbl 4323507 `"Vista Alegre"', add
label define br10a_prevmuni_lbl 4323606 `"Vista Alegre do Prata"', add
label define br10a_prevmuni_lbl 4323705 `"Vista Ga�cha"', add
label define br10a_prevmuni_lbl 4323754 `"Vit�ria das Miss�es"', add
label define br10a_prevmuni_lbl 4323770 `"Westfalia"', add
label define br10a_prevmuni_lbl 4323804 `"Xangri-l�"', add
label define br10a_prevmuni_lbl 4399999 `"Rio Grande do Sul, municipality unknown"', add
label define br10a_prevmuni_lbl 5000203 `"�gua Clara"', add
label define br10a_prevmuni_lbl 5000252 `"Alcin�polis"', add
label define br10a_prevmuni_lbl 5000609 `"Amambai"', add
label define br10a_prevmuni_lbl 5000708 `"Anast�cio"', add
label define br10a_prevmuni_lbl 5000807 `"Anauril�ndia"', add
label define br10a_prevmuni_lbl 5000856 `"Ang�lica"', add
label define br10a_prevmuni_lbl 5000906 `"Ant�nio Jo�o"', add
label define br10a_prevmuni_lbl 5001003 `"Aparecida do Taboado"', add
label define br10a_prevmuni_lbl 5001102 `"Aquidauana"', add
label define br10a_prevmuni_lbl 5001243 `"Aral Moreira"', add
label define br10a_prevmuni_lbl 5001508 `"Bandeirantes"', add
label define br10a_prevmuni_lbl 5001904 `"Bataguassu"', add
label define br10a_prevmuni_lbl 5002001 `"Bataypor�"', add
label define br10a_prevmuni_lbl 5002100 `"Bela Vista"', add
label define br10a_prevmuni_lbl 5002159 `"Bodoquena"', add
label define br10a_prevmuni_lbl 5002209 `"Bonito"', add
label define br10a_prevmuni_lbl 5002308 `"Brasil�ndia"', add
label define br10a_prevmuni_lbl 5002407 `"Caarap�"', add
label define br10a_prevmuni_lbl 5002605 `"Camapu�"', add
label define br10a_prevmuni_lbl 5002704 `"Campo Grande"', add
label define br10a_prevmuni_lbl 5002803 `"Caracol"', add
label define br10a_prevmuni_lbl 5002902 `"Cassil�ndia"', add
label define br10a_prevmuni_lbl 5002951 `"Chapad�o do Sul"', add
label define br10a_prevmuni_lbl 5003108 `"Corguinho"', add
label define br10a_prevmuni_lbl 5003157 `"Coronel Sapucaia"', add
label define br10a_prevmuni_lbl 5003207 `"Corumb�"', add
label define br10a_prevmuni_lbl 5003256 `"Costa Rica"', add
label define br10a_prevmuni_lbl 5003306 `"Coxim"', add
label define br10a_prevmuni_lbl 5003454 `"Deod�polis"', add
label define br10a_prevmuni_lbl 5003488 `"Dois Irm�os do Buriti"', add
label define br10a_prevmuni_lbl 5003504 `"Douradina"', add
label define br10a_prevmuni_lbl 5003702 `"Dourados"', add
label define br10a_prevmuni_lbl 5003751 `"Eldorado"', add
label define br10a_prevmuni_lbl 5003801 `"F�tima do Sul"', add
label define br10a_prevmuni_lbl 5003900 `"Figueir�o"', add
label define br10a_prevmuni_lbl 5004007 `"Gl�ria de Dourados"', add
label define br10a_prevmuni_lbl 5004106 `"Guia Lopes da Laguna"', add
label define br10a_prevmuni_lbl 5004304 `"Iguatemi"', add
label define br10a_prevmuni_lbl 5004403 `"Inoc�ncia"', add
label define br10a_prevmuni_lbl 5004502 `"Itapor�"', add
label define br10a_prevmuni_lbl 5004601 `"Itaquira�"', add
label define br10a_prevmuni_lbl 5004700 `"Ivinhema"', add
label define br10a_prevmuni_lbl 5004809 `"Japor�"', add
label define br10a_prevmuni_lbl 5004908 `"Jaraguari"', add
label define br10a_prevmuni_lbl 5005004 `"Jardim"', add
label define br10a_prevmuni_lbl 5005103 `"Jate�"', add
label define br10a_prevmuni_lbl 5005152 `"Juti"', add
label define br10a_prevmuni_lbl 5005202 `"Lad�rio"', add
label define br10a_prevmuni_lbl 5005251 `"Laguna Carap�"', add
label define br10a_prevmuni_lbl 5005400 `"Maracaju"', add
label define br10a_prevmuni_lbl 5005608 `"Miranda"', add
label define br10a_prevmuni_lbl 5005681 `"Mundo Novo"', add
label define br10a_prevmuni_lbl 5005707 `"Navira�"', add
label define br10a_prevmuni_lbl 5005806 `"Nioaque"', add
label define br10a_prevmuni_lbl 5006002 `"Nova Alvorada do Sul"', add
label define br10a_prevmuni_lbl 5006200 `"Nova Andradina"', add
label define br10a_prevmuni_lbl 5006259 `"Novo Horizonte do Sul"', add
label define br10a_prevmuni_lbl 5006309 `"Parana�ba"', add
label define br10a_prevmuni_lbl 5006358 `"Paranhos"', add
label define br10a_prevmuni_lbl 5006408 `"Pedro Gomes"', add
label define br10a_prevmuni_lbl 5006606 `"Ponta Por�"', add
label define br10a_prevmuni_lbl 5006903 `"Porto Murtinho"', add
label define br10a_prevmuni_lbl 5007109 `"Ribas do Rio Pardo"', add
label define br10a_prevmuni_lbl 5007208 `"Rio Brilhante"', add
label define br10a_prevmuni_lbl 5007307 `"Rio Negro"', add
label define br10a_prevmuni_lbl 5007406 `"Rio Verde de Mato Grosso"', add
label define br10a_prevmuni_lbl 5007505 `"Rochedo"', add
label define br10a_prevmuni_lbl 5007554 `"Santa Rita do Pardo"', add
label define br10a_prevmuni_lbl 5007695 `"S�o Gabriel do Oeste"', add
label define br10a_prevmuni_lbl 5007703 `"Sete Quedas"', add
label define br10a_prevmuni_lbl 5007802 `"Selv�ria"', add
label define br10a_prevmuni_lbl 5007901 `"Sidrol�ndia"', add
label define br10a_prevmuni_lbl 5007935 `"Sonora"', add
label define br10a_prevmuni_lbl 5007950 `"Tacuru"', add
label define br10a_prevmuni_lbl 5007976 `"Taquarussu"', add
label define br10a_prevmuni_lbl 5008008 `"Terenos"', add
label define br10a_prevmuni_lbl 5008305 `"Tr�s Lagoas"', add
label define br10a_prevmuni_lbl 5008404 `"Vicentina"', add
label define br10a_prevmuni_lbl 5099999 `"Mato Grosso do Sul, municipality unknown"', add
label define br10a_prevmuni_lbl 5100102 `"Acorizal"', add
label define br10a_prevmuni_lbl 5100201 `"�gua Boa"', add
label define br10a_prevmuni_lbl 5100250 `"Alta Floresta"', add
label define br10a_prevmuni_lbl 5100300 `"Alto Araguaia"', add
label define br10a_prevmuni_lbl 5100359 `"Alto Boa Vista"', add
label define br10a_prevmuni_lbl 5100409 `"Alto Gar�as"', add
label define br10a_prevmuni_lbl 5100508 `"Alto Paraguai"', add
label define br10a_prevmuni_lbl 5100607 `"Alto Taquari"', add
label define br10a_prevmuni_lbl 5100805 `"Apiac�s"', add
label define br10a_prevmuni_lbl 5101001 `"Araguaiana"', add
label define br10a_prevmuni_lbl 5101209 `"Araguainha"', add
label define br10a_prevmuni_lbl 5101258 `"Araputanga"', add
label define br10a_prevmuni_lbl 5101308 `"Aren�polis"', add
label define br10a_prevmuni_lbl 5101407 `"Aripuan�"', add
label define br10a_prevmuni_lbl 5101605 `"Bar�o de Melga�o"', add
label define br10a_prevmuni_lbl 5101704 `"Barra do Bugres"', add
label define br10a_prevmuni_lbl 5101803 `"Barra do Gar�as"', add
label define br10a_prevmuni_lbl 5101852 `"Bom Jesus do Araguaia"', add
label define br10a_prevmuni_lbl 5101902 `"Brasnorte"', add
label define br10a_prevmuni_lbl 5102504 `"C�ceres"', add
label define br10a_prevmuni_lbl 5102603 `"Campin�polis"', add
label define br10a_prevmuni_lbl 5102637 `"Campo Novo do Parecis"', add
label define br10a_prevmuni_lbl 5102678 `"Campo Verde"', add
label define br10a_prevmuni_lbl 5102686 `"Campos de J�lio"', add
label define br10a_prevmuni_lbl 5102694 `"Canabrava do Norte"', add
label define br10a_prevmuni_lbl 5102702 `"Canarana"', add
label define br10a_prevmuni_lbl 5102793 `"Carlinda"', add
label define br10a_prevmuni_lbl 5102850 `"Castanheira"', add
label define br10a_prevmuni_lbl 5103007 `"Chapada dos Guimar�es"', add
label define br10a_prevmuni_lbl 5103056 `"Cl�udia"', add
label define br10a_prevmuni_lbl 5103106 `"Cocalinho"', add
label define br10a_prevmuni_lbl 5103205 `"Col�der"', add
label define br10a_prevmuni_lbl 5103254 `"Colniza"', add
label define br10a_prevmuni_lbl 5103304 `"Comodoro"', add
label define br10a_prevmuni_lbl 5103353 `"Confresa"', add
label define br10a_prevmuni_lbl 5103361 `"Conquista D'Oeste"', add
label define br10a_prevmuni_lbl 5103379 `"Cotrigua�u"', add
label define br10a_prevmuni_lbl 5103403 `"Cuiab�"', add
label define br10a_prevmuni_lbl 5103437 `"Curvel�ndia"', add
label define br10a_prevmuni_lbl 5103452 `"Denise"', add
label define br10a_prevmuni_lbl 5103502 `"Diamantino"', add
label define br10a_prevmuni_lbl 5103601 `"Dom Aquino"', add
label define br10a_prevmuni_lbl 5103700 `"Feliz Natal"', add
label define br10a_prevmuni_lbl 5103809 `"Figueir�polis D'Oeste"', add
label define br10a_prevmuni_lbl 5103858 `"Ga�cha do Norte"', add
label define br10a_prevmuni_lbl 5103908 `"General Carneiro"', add
label define br10a_prevmuni_lbl 5103957 `"Gl�ria D'Oeste"', add
label define br10a_prevmuni_lbl 5104104 `"Guarant� do Norte"', add
label define br10a_prevmuni_lbl 5104203 `"Guiratinga"', add
label define br10a_prevmuni_lbl 5104500 `"Indiava�"', add
label define br10a_prevmuni_lbl 5104526 `"Ipiranga do Norte"', add
label define br10a_prevmuni_lbl 5104542 `"Itanhang�"', add
label define br10a_prevmuni_lbl 5104559 `"Ita�ba"', add
label define br10a_prevmuni_lbl 5104609 `"Itiquira"', add
label define br10a_prevmuni_lbl 5104807 `"Jaciara"', add
label define br10a_prevmuni_lbl 5104906 `"Jangada"', add
label define br10a_prevmuni_lbl 5105002 `"Jauru"', add
label define br10a_prevmuni_lbl 5105101 `"Juara"', add
label define br10a_prevmuni_lbl 5105150 `"Ju�na"', add
label define br10a_prevmuni_lbl 5105176 `"Juruena"', add
label define br10a_prevmuni_lbl 5105200 `"Juscimeira"', add
label define br10a_prevmuni_lbl 5105234 `"Lambari D'Oeste"', add
label define br10a_prevmuni_lbl 5105259 `"Lucas do Rio Verde"', add
label define br10a_prevmuni_lbl 5105309 `"Luciara"', add
label define br10a_prevmuni_lbl 5105507 `"Vila Bela da Sant�ssima Trindade"', add
label define br10a_prevmuni_lbl 5105580 `"Marcel�ndia"', add
label define br10a_prevmuni_lbl 5105606 `"Matup�"', add
label define br10a_prevmuni_lbl 5105622 `"Mirassol d'Oeste"', add
label define br10a_prevmuni_lbl 5105903 `"Nobres"', add
label define br10a_prevmuni_lbl 5106000 `"Nortel�ndia"', add
label define br10a_prevmuni_lbl 5106109 `"Nossa Senhora do Livramento"', add
label define br10a_prevmuni_lbl 5106158 `"Nova Bandeirantes"', add
label define br10a_prevmuni_lbl 5106174 `"Nova Nazar�"', add
label define br10a_prevmuni_lbl 5106182 `"Nova Lacerda"', add
label define br10a_prevmuni_lbl 5106190 `"Nova Santa Helena"', add
label define br10a_prevmuni_lbl 5106208 `"Nova Brasil�ndia"', add
label define br10a_prevmuni_lbl 5106216 `"Nova Cana� do Norte"', add
label define br10a_prevmuni_lbl 5106224 `"Nova Mutum"', add
label define br10a_prevmuni_lbl 5106232 `"Nova Ol�mpia"', add
label define br10a_prevmuni_lbl 5106240 `"Nova Ubirat�"', add
label define br10a_prevmuni_lbl 5106257 `"Nova Xavantina"', add
label define br10a_prevmuni_lbl 5106265 `"Novo Mundo"', add
label define br10a_prevmuni_lbl 5106273 `"Novo Horizonte do Norte"', add
label define br10a_prevmuni_lbl 5106281 `"Novo S�o Joaquim"', add
label define br10a_prevmuni_lbl 5106299 `"Parana�ta"', add
label define br10a_prevmuni_lbl 5106307 `"Paranatinga"', add
label define br10a_prevmuni_lbl 5106315 `"Novo Santo Ant�nio"', add
label define br10a_prevmuni_lbl 5106372 `"Pedra Preta"', add
label define br10a_prevmuni_lbl 5106422 `"Peixoto de Azevedo"', add
label define br10a_prevmuni_lbl 5106455 `"Planalto da Serra"', add
label define br10a_prevmuni_lbl 5106505 `"Pocon�"', add
label define br10a_prevmuni_lbl 5106653 `"Pontal do Araguaia"', add
label define br10a_prevmuni_lbl 5106703 `"Ponte Branca"', add
label define br10a_prevmuni_lbl 5106752 `"Pontes e Lacerda"', add
label define br10a_prevmuni_lbl 5106778 `"Porto Alegre do Norte"', add
label define br10a_prevmuni_lbl 5106802 `"Porto dos Ga�chos"', add
label define br10a_prevmuni_lbl 5106828 `"Porto Esperidi�o"', add
label define br10a_prevmuni_lbl 5106851 `"Porto Estrela"', add
label define br10a_prevmuni_lbl 5107008 `"Poxor�o"', add
label define br10a_prevmuni_lbl 5107040 `"Primavera do Leste"', add
label define br10a_prevmuni_lbl 5107065 `"Quer�ncia"', add
label define br10a_prevmuni_lbl 5107107 `"S�o Jos� dos Quatro Marcos"', add
label define br10a_prevmuni_lbl 5107156 `"Reserva do Caba�al"', add
label define br10a_prevmuni_lbl 5107180 `"Ribeir�o Cascalheira"', add
label define br10a_prevmuni_lbl 5107198 `"Ribeir�ozinho"', add
label define br10a_prevmuni_lbl 5107206 `"Rio Branco"', add
label define br10a_prevmuni_lbl 5107248 `"Santa Carmem"', add
label define br10a_prevmuni_lbl 5107263 `"Santo Afonso"', add
label define br10a_prevmuni_lbl 5107297 `"S�o Jos� do Povo"', add
label define br10a_prevmuni_lbl 5107305 `"S�o Jos� do Rio Claro"', add
label define br10a_prevmuni_lbl 5107354 `"S�o Jos� do Xingu"', add
label define br10a_prevmuni_lbl 5107404 `"S�o Pedro da Cipa"', add
label define br10a_prevmuni_lbl 5107578 `"Rondol�ndia"', add
label define br10a_prevmuni_lbl 5107602 `"Rondon�polis"', add
label define br10a_prevmuni_lbl 5107701 `"Ros�rio Oeste"', add
label define br10a_prevmuni_lbl 5107743 `"Santa Cruz do Xingu"', add
label define br10a_prevmuni_lbl 5107750 `"Salto do C�u"', add
label define br10a_prevmuni_lbl 5107768 `"Santa Rita do Trivelato"', add
label define br10a_prevmuni_lbl 5107776 `"Santa Terezinha"', add
label define br10a_prevmuni_lbl 5107792 `"Santo Ant�nio do Leste"', add
label define br10a_prevmuni_lbl 5107800 `"Santo Ant�nio do Leverger"', add
label define br10a_prevmuni_lbl 5107859 `"S�o F�lix do Araguaia"', add
label define br10a_prevmuni_lbl 5107875 `"Sapezal"', add
label define br10a_prevmuni_lbl 5107883 `"Serra Nova Dourada"', add
label define br10a_prevmuni_lbl 5107909 `"Sinop"', add
label define br10a_prevmuni_lbl 5107925 `"Sorriso"', add
label define br10a_prevmuni_lbl 5107941 `"Tabapor�"', add
label define br10a_prevmuni_lbl 5107958 `"Tangar� da Serra"', add
label define br10a_prevmuni_lbl 5108006 `"Tapurah"', add
label define br10a_prevmuni_lbl 5108055 `"Terra Nova do Norte"', add
label define br10a_prevmuni_lbl 5108105 `"Tesouro"', add
label define br10a_prevmuni_lbl 5108204 `"Torixor�u"', add
label define br10a_prevmuni_lbl 5108303 `"Uni�o do Sul"', add
label define br10a_prevmuni_lbl 5108352 `"Vale de S�o Domingos"', add
label define br10a_prevmuni_lbl 5108402 `"V�rzea Grande"', add
label define br10a_prevmuni_lbl 5108501 `"Vera"', add
label define br10a_prevmuni_lbl 5108600 `"Vila Rica"', add
label define br10a_prevmuni_lbl 5108808 `"Nova Guarita"', add
label define br10a_prevmuni_lbl 5108857 `"Nova Maril�ndia"', add
label define br10a_prevmuni_lbl 5108907 `"Nova Maring�"', add
label define br10a_prevmuni_lbl 5108956 `"Nova Monte Verde"', add
label define br10a_prevmuni_lbl 5199999 `"Mato Grosso, municipality unknown"', add
label define br10a_prevmuni_lbl 5200050 `"Abadia de Goi�s"', add
label define br10a_prevmuni_lbl 5200100 `"Abadi�nia"', add
label define br10a_prevmuni_lbl 5200134 `"Acre�na"', add
label define br10a_prevmuni_lbl 5200159 `"Adel�ndia"', add
label define br10a_prevmuni_lbl 5200175 `"�gua Fria de Goi�s"', add
label define br10a_prevmuni_lbl 5200209 `"�gua Limpa"', add
label define br10a_prevmuni_lbl 5200258 `"�guas Lindas de Goi�s"', add
label define br10a_prevmuni_lbl 5200308 `"Alex�nia"', add
label define br10a_prevmuni_lbl 5200506 `"Alo�ndia"', add
label define br10a_prevmuni_lbl 5200555 `"Alto Horizonte"', add
label define br10a_prevmuni_lbl 5200605 `"Alto Para�so de Goi�s"', add
label define br10a_prevmuni_lbl 5200803 `"Alvorada do Norte"', add
label define br10a_prevmuni_lbl 5200829 `"Amaralina"', add
label define br10a_prevmuni_lbl 5200852 `"Americano do Brasil"', add
label define br10a_prevmuni_lbl 5200902 `"Amorin�polis"', add
label define br10a_prevmuni_lbl 5201108 `"An�polis"', add
label define br10a_prevmuni_lbl 5201207 `"Anhanguera"', add
label define br10a_prevmuni_lbl 5201306 `"Anicuns"', add
label define br10a_prevmuni_lbl 5201405 `"Aparecida de Goi�nia"', add
label define br10a_prevmuni_lbl 5201454 `"Aparecida do Rio Doce"', add
label define br10a_prevmuni_lbl 5201504 `"Apor�"', add
label define br10a_prevmuni_lbl 5201603 `"Ara�u"', add
label define br10a_prevmuni_lbl 5201702 `"Aragar�as"', add
label define br10a_prevmuni_lbl 5201801 `"Aragoi�nia"', add
label define br10a_prevmuni_lbl 5202155 `"Araguapaz"', add
label define br10a_prevmuni_lbl 5202353 `"Aren�polis"', add
label define br10a_prevmuni_lbl 5202502 `"Aruan�"', add
label define br10a_prevmuni_lbl 5202601 `"Auril�ndia"', add
label define br10a_prevmuni_lbl 5202809 `"Avelin�polis"', add
label define br10a_prevmuni_lbl 5203104 `"Baliza"', add
label define br10a_prevmuni_lbl 5203203 `"Barro Alto"', add
label define br10a_prevmuni_lbl 5203302 `"Bela Vista de Goi�s"', add
label define br10a_prevmuni_lbl 5203401 `"Bom Jardim de Goi�s"', add
label define br10a_prevmuni_lbl 5203500 `"Bom Jesus de Goi�s"', add
label define br10a_prevmuni_lbl 5203559 `"Bonfin�polis"', add
label define br10a_prevmuni_lbl 5203575 `"Bon�polis"', add
label define br10a_prevmuni_lbl 5203609 `"Brazabrantes"', add
label define br10a_prevmuni_lbl 5203807 `"Brit�nia"', add
label define br10a_prevmuni_lbl 5203906 `"Buriti Alegre"', add
label define br10a_prevmuni_lbl 5203939 `"Buriti de Goi�s"', add
label define br10a_prevmuni_lbl 5203962 `"Buritin�polis"', add
label define br10a_prevmuni_lbl 5204003 `"Cabeceiras"', add
label define br10a_prevmuni_lbl 5204102 `"Cachoeira Alta"', add
label define br10a_prevmuni_lbl 5204201 `"Cachoeira de Goi�s"', add
label define br10a_prevmuni_lbl 5204250 `"Cachoeira Dourada"', add
label define br10a_prevmuni_lbl 5204300 `"Ca�u"', add
label define br10a_prevmuni_lbl 5204409 `"Caiap�nia"', add
label define br10a_prevmuni_lbl 5204508 `"Caldas Novas"', add
label define br10a_prevmuni_lbl 5204557 `"Caldazinha"', add
label define br10a_prevmuni_lbl 5204607 `"Campestre de Goi�s"', add
label define br10a_prevmuni_lbl 5204656 `"Campina�u"', add
label define br10a_prevmuni_lbl 5204706 `"Campinorte"', add
label define br10a_prevmuni_lbl 5204805 `"Campo Alegre de Goi�s"', add
label define br10a_prevmuni_lbl 5204854 `"Campo Limpo de Goi�s"', add
label define br10a_prevmuni_lbl 5204904 `"Campos Belos"', add
label define br10a_prevmuni_lbl 5204953 `"Campos Verdes"', add
label define br10a_prevmuni_lbl 5205000 `"Carmo do Rio Verde"', add
label define br10a_prevmuni_lbl 5205059 `"Castel�ndia"', add
label define br10a_prevmuni_lbl 5205109 `"Catal�o"', add
label define br10a_prevmuni_lbl 5205208 `"Catura�"', add
label define br10a_prevmuni_lbl 5205307 `"Cavalcante"', add
label define br10a_prevmuni_lbl 5205406 `"Ceres"', add
label define br10a_prevmuni_lbl 5205455 `"Cezarina"', add
label define br10a_prevmuni_lbl 5205471 `"Chapad�o do C�u"', add
label define br10a_prevmuni_lbl 5205497 `"Cidade Ocidental"', add
label define br10a_prevmuni_lbl 5205513 `"Cocalzinho de Goi�s"', add
label define br10a_prevmuni_lbl 5205521 `"Colinas do Sul"', add
label define br10a_prevmuni_lbl 5205703 `"C�rrego do Ouro"', add
label define br10a_prevmuni_lbl 5205802 `"Corumb� de Goi�s"', add
label define br10a_prevmuni_lbl 5205901 `"Corumba�ba"', add
label define br10a_prevmuni_lbl 5206206 `"Cristalina"', add
label define br10a_prevmuni_lbl 5206305 `"Cristian�polis"', add
label define br10a_prevmuni_lbl 5206404 `"Crix�s"', add
label define br10a_prevmuni_lbl 5206503 `"Crom�nia"', add
label define br10a_prevmuni_lbl 5206602 `"Cumari"', add
label define br10a_prevmuni_lbl 5206701 `"Damian�polis"', add
label define br10a_prevmuni_lbl 5206800 `"Damol�ndia"', add
label define br10a_prevmuni_lbl 5206909 `"Davin�polis"', add
label define br10a_prevmuni_lbl 5207105 `"Diorama"', add
label define br10a_prevmuni_lbl 5207253 `"Doverl�ndia"', add
label define br10a_prevmuni_lbl 5207352 `"Edealina"', add
label define br10a_prevmuni_lbl 5207402 `"Ed�ia"', add
label define br10a_prevmuni_lbl 5207501 `"Estrela do Norte"', add
label define br10a_prevmuni_lbl 5207535 `"Faina"', add
label define br10a_prevmuni_lbl 5207600 `"Fazenda Nova"', add
label define br10a_prevmuni_lbl 5207808 `"Firmin�polis"', add
label define br10a_prevmuni_lbl 5207907 `"Flores de Goi�s"', add
label define br10a_prevmuni_lbl 5208004 `"Formosa"', add
label define br10a_prevmuni_lbl 5208103 `"Formoso"', add
label define br10a_prevmuni_lbl 5208152 `"Gameleira de Goi�s"', add
label define br10a_prevmuni_lbl 5208301 `"Divin�polis de Goi�s"', add
label define br10a_prevmuni_lbl 5208400 `"Goian�polis"', add
label define br10a_prevmuni_lbl 5208509 `"Goiandira"', add
label define br10a_prevmuni_lbl 5208608 `"Goian�sia"', add
label define br10a_prevmuni_lbl 5208707 `"Goi�nia"', add
label define br10a_prevmuni_lbl 5208806 `"Goianira"', add
label define br10a_prevmuni_lbl 5208905 `"Goi�s"', add
label define br10a_prevmuni_lbl 5209101 `"Goiatuba"', add
label define br10a_prevmuni_lbl 5209150 `"Gouvel�ndia"', add
label define br10a_prevmuni_lbl 5209200 `"Guap�"', add
label define br10a_prevmuni_lbl 5209291 `"Guara�ta"', add
label define br10a_prevmuni_lbl 5209408 `"Guarani de Goi�s"', add
label define br10a_prevmuni_lbl 5209457 `"Guarinos"', add
label define br10a_prevmuni_lbl 5209606 `"Heitora�"', add
label define br10a_prevmuni_lbl 5209705 `"Hidrol�ndia"', add
label define br10a_prevmuni_lbl 5209804 `"Hidrolina"', add
label define br10a_prevmuni_lbl 5209903 `"Iaciara"', add
label define br10a_prevmuni_lbl 5209937 `"Inaciol�ndia"', add
label define br10a_prevmuni_lbl 5209952 `"Indiara"', add
label define br10a_prevmuni_lbl 5210000 `"Inhumas"', add
label define br10a_prevmuni_lbl 5210109 `"Ipameri"', add
label define br10a_prevmuni_lbl 5210158 `"Ipiranga de Goi�s"', add
label define br10a_prevmuni_lbl 5210208 `"Ipor�"', add
label define br10a_prevmuni_lbl 5210307 `"Israel�ndia"', add
label define br10a_prevmuni_lbl 5210406 `"Itabera�"', add
label define br10a_prevmuni_lbl 5210562 `"Itaguari"', add
label define br10a_prevmuni_lbl 5210604 `"Itaguaru"', add
label define br10a_prevmuni_lbl 5210802 `"Itaj�"', add
label define br10a_prevmuni_lbl 5210901 `"Itapaci"', add
label define br10a_prevmuni_lbl 5211008 `"Itapirapu�"', add
label define br10a_prevmuni_lbl 5211206 `"Itapuranga"', add
label define br10a_prevmuni_lbl 5211305 `"Itarum�"', add
label define br10a_prevmuni_lbl 5211404 `"Itau�u"', add
label define br10a_prevmuni_lbl 5211503 `"Itumbiara"', add
label define br10a_prevmuni_lbl 5211602 `"Ivol�ndia"', add
label define br10a_prevmuni_lbl 5211701 `"Jandaia"', add
label define br10a_prevmuni_lbl 5211800 `"Jaragu�"', add
label define br10a_prevmuni_lbl 5211909 `"Jata�"', add
label define br10a_prevmuni_lbl 5212006 `"Jaupaci"', add
label define br10a_prevmuni_lbl 5212055 `"Jes�polis"', add
label define br10a_prevmuni_lbl 5212105 `"Jovi�nia"', add
label define br10a_prevmuni_lbl 5212204 `"Jussara"', add
label define br10a_prevmuni_lbl 5212253 `"Lagoa Santa"', add
label define br10a_prevmuni_lbl 5212303 `"Leopoldo de Bulh�es"', add
label define br10a_prevmuni_lbl 5212501 `"Luzi�nia"', add
label define br10a_prevmuni_lbl 5212600 `"Mairipotaba"', add
label define br10a_prevmuni_lbl 5212709 `"Mamba�"', add
label define br10a_prevmuni_lbl 5212808 `"Mara Rosa"', add
label define br10a_prevmuni_lbl 5212907 `"Marzag�o"', add
label define br10a_prevmuni_lbl 5212956 `"Matrinch�"', add
label define br10a_prevmuni_lbl 5213004 `"Mauril�ndia"', add
label define br10a_prevmuni_lbl 5213053 `"Mimoso de Goi�s"', add
label define br10a_prevmuni_lbl 5213087 `"Mina�u"', add
label define br10a_prevmuni_lbl 5213103 `"Mineiros"', add
label define br10a_prevmuni_lbl 5213400 `"Moipor�"', add
label define br10a_prevmuni_lbl 5213509 `"Monte Alegre de Goi�s"', add
label define br10a_prevmuni_lbl 5213707 `"Montes Claros de Goi�s"', add
label define br10a_prevmuni_lbl 5213756 `"Montividiu"', add
label define br10a_prevmuni_lbl 5213772 `"Montividiu do Norte"', add
label define br10a_prevmuni_lbl 5213806 `"Morrinhos"', add
label define br10a_prevmuni_lbl 5213855 `"Morro Agudo de Goi�s"', add
label define br10a_prevmuni_lbl 5213905 `"Moss�medes"', add
label define br10a_prevmuni_lbl 5214002 `"Mozarl�ndia"', add
label define br10a_prevmuni_lbl 5214051 `"Mundo Novo"', add
label define br10a_prevmuni_lbl 5214101 `"Mutun�polis"', add
label define br10a_prevmuni_lbl 5214408 `"Naz�rio"', add
label define br10a_prevmuni_lbl 5214507 `"Ner�polis"', add
label define br10a_prevmuni_lbl 5214606 `"Niquel�ndia"', add
label define br10a_prevmuni_lbl 5214705 `"Nova Am�rica"', add
label define br10a_prevmuni_lbl 5214804 `"Nova Aurora"', add
label define br10a_prevmuni_lbl 5214838 `"Nova Crix�s"', add
label define br10a_prevmuni_lbl 5214861 `"Nova Gl�ria"', add
label define br10a_prevmuni_lbl 5214879 `"Nova Igua�u de Goi�s"', add
label define br10a_prevmuni_lbl 5214903 `"Nova Roma"', add
label define br10a_prevmuni_lbl 5215009 `"Nova Veneza"', add
label define br10a_prevmuni_lbl 5215207 `"Novo Brasil"', add
label define br10a_prevmuni_lbl 5215231 `"Novo Gama"', add
label define br10a_prevmuni_lbl 5215256 `"Novo Planalto"', add
label define br10a_prevmuni_lbl 5215306 `"Orizona"', add
label define br10a_prevmuni_lbl 5215405 `"Ouro Verde de Goi�s"', add
label define br10a_prevmuni_lbl 5215504 `"Ouvidor"', add
label define br10a_prevmuni_lbl 5215603 `"Padre Bernardo"', add
label define br10a_prevmuni_lbl 5215652 `"Palestina de Goi�s"', add
label define br10a_prevmuni_lbl 5215702 `"Palmeiras de Goi�s"', add
label define br10a_prevmuni_lbl 5215801 `"Palmelo"', add
label define br10a_prevmuni_lbl 5215900 `"Palmin�polis"', add
label define br10a_prevmuni_lbl 5216007 `"Panam�"', add
label define br10a_prevmuni_lbl 5216304 `"Paranaiguara"', add
label define br10a_prevmuni_lbl 5216403 `"Para�na"', add
label define br10a_prevmuni_lbl 5216452 `"Perol�ndia"', add
label define br10a_prevmuni_lbl 5216809 `"Petrolina de Goi�s"', add
label define br10a_prevmuni_lbl 5216908 `"Pilar de Goi�s"', add
label define br10a_prevmuni_lbl 5217104 `"Piracanjuba"', add
label define br10a_prevmuni_lbl 5217203 `"Piranhas"', add
label define br10a_prevmuni_lbl 5217302 `"Piren�polis"', add
label define br10a_prevmuni_lbl 5217401 `"Pires do Rio"', add
label define br10a_prevmuni_lbl 5217609 `"Planaltina"', add
label define br10a_prevmuni_lbl 5217708 `"Pontalina"', add
label define br10a_prevmuni_lbl 5218003 `"Porangatu"', add
label define br10a_prevmuni_lbl 5218052 `"Porteir�o"', add
label define br10a_prevmuni_lbl 5218102 `"Portel�ndia"', add
label define br10a_prevmuni_lbl 5218300 `"Posse"', add
label define br10a_prevmuni_lbl 5218391 `"Professor Jamil"', add
label define br10a_prevmuni_lbl 5218508 `"Quirin�polis"', add
label define br10a_prevmuni_lbl 5218607 `"Rialma"', add
label define br10a_prevmuni_lbl 5218706 `"Rian�polis"', add
label define br10a_prevmuni_lbl 5218789 `"Rio Quente"', add
label define br10a_prevmuni_lbl 5218805 `"Rio Verde"', add
label define br10a_prevmuni_lbl 5218904 `"Rubiataba"', add
label define br10a_prevmuni_lbl 5219001 `"Sanclerl�ndia"', add
label define br10a_prevmuni_lbl 5219100 `"Santa B�rbara de Goi�s"', add
label define br10a_prevmuni_lbl 5219209 `"Santa Cruz de Goi�s"', add
label define br10a_prevmuni_lbl 5219258 `"Santa F� de Goi�s"', add
label define br10a_prevmuni_lbl 5219308 `"Santa Helena de Goi�s"', add
label define br10a_prevmuni_lbl 5219357 `"Santa Isabel"', add
label define br10a_prevmuni_lbl 5219407 `"Santa Rita do Araguaia"', add
label define br10a_prevmuni_lbl 5219456 `"Santa Rita do Novo Destino"', add
label define br10a_prevmuni_lbl 5219506 `"Santa Rosa de Goi�s"', add
label define br10a_prevmuni_lbl 5219605 `"Santa Tereza de Goi�s"', add
label define br10a_prevmuni_lbl 5219704 `"Santa Terezinha de Goi�s"', add
label define br10a_prevmuni_lbl 5219712 `"Santo Ant�nio da Barra"', add
label define br10a_prevmuni_lbl 5219738 `"Santo Ant�nio de Goi�s"', add
label define br10a_prevmuni_lbl 5219753 `"Santo Ant�nio do Descoberto"', add
label define br10a_prevmuni_lbl 5219803 `"S�o Domingos"', add
label define br10a_prevmuni_lbl 5219902 `"S�o Francisco de Goi�s"', add
label define br10a_prevmuni_lbl 5220009 `"S�o Jo�o d'Alian�a"', add
label define br10a_prevmuni_lbl 5220058 `"S�o Jo�o da Para�na"', add
label define br10a_prevmuni_lbl 5220108 `"S�o Lu�s de Montes Belos"', add
label define br10a_prevmuni_lbl 5220157 `"S�o Lu�z do Norte"', add
label define br10a_prevmuni_lbl 5220207 `"S�o Miguel do Araguaia"', add
label define br10a_prevmuni_lbl 5220264 `"S�o Miguel do Passa Quatro"', add
label define br10a_prevmuni_lbl 5220280 `"S�o Patr�cio"', add
label define br10a_prevmuni_lbl 5220405 `"S�o Sim�o"', add
label define br10a_prevmuni_lbl 5220454 `"Senador Canedo"', add
label define br10a_prevmuni_lbl 5220504 `"Serran�polis"', add
label define br10a_prevmuni_lbl 5220603 `"Silv�nia"', add
label define br10a_prevmuni_lbl 5220686 `"Simol�ndia"', add
label define br10a_prevmuni_lbl 5220702 `"S�tio d'Abadia"', add
label define br10a_prevmuni_lbl 5221007 `"Taquaral de Goi�s"', add
label define br10a_prevmuni_lbl 5221080 `"Teresina de Goi�s"', add
label define br10a_prevmuni_lbl 5221197 `"Terez�polis de Goi�s"', add
label define br10a_prevmuni_lbl 5221304 `"Tr�s Ranchos"', add
label define br10a_prevmuni_lbl 5221403 `"Trindade"', add
label define br10a_prevmuni_lbl 5221452 `"Trombas"', add
label define br10a_prevmuni_lbl 5221502 `"Turv�nia"', add
label define br10a_prevmuni_lbl 5221551 `"Turvel�ndia"', add
label define br10a_prevmuni_lbl 5221577 `"Uirapuru"', add
label define br10a_prevmuni_lbl 5221601 `"Urua�u"', add
label define br10a_prevmuni_lbl 5221700 `"Uruana"', add
label define br10a_prevmuni_lbl 5221809 `"Uruta�"', add
label define br10a_prevmuni_lbl 5221858 `"Valpara�so de Goi�s"', add
label define br10a_prevmuni_lbl 5221908 `"Varj�o"', add
label define br10a_prevmuni_lbl 5222005 `"Vian�polis"', add
label define br10a_prevmuni_lbl 5222054 `"Vicentin�polis"', add
label define br10a_prevmuni_lbl 5222203 `"Vila Boa"', add
label define br10a_prevmuni_lbl 5222302 `"Vila Prop�cio"', add
label define br10a_prevmuni_lbl 5299999 `"Goi�s, municipality unknown"', add
label define br10a_prevmuni_lbl 5300108 `"Bras�lia"', add
label define br10a_prevmuni_lbl 9999998 `"Unknown"', add
label define br10a_prevmuni_lbl 9999999 `"NIU (not in universe)"', add
label values br10a_prevmuni br10a_prevmuni_lbl

label define br10a_prevctry_lbl 024 `"Angola"'
label define br10a_prevctry_lbl 032 `"Argentina"', add
label define br10a_prevctry_lbl 036 `"Australia"', add
label define br10a_prevctry_lbl 040 `"Austria"', add
label define br10a_prevctry_lbl 056 `"Belgium"', add
label define br10a_prevctry_lbl 068 `"Bolivia"', add
label define br10a_prevctry_lbl 124 `"Canada"', add
label define br10a_prevctry_lbl 132 `"Cape Verde"', add
label define br10a_prevctry_lbl 152 `"Chile"', add
label define br10a_prevctry_lbl 156 `"China"', add
label define br10a_prevctry_lbl 170 `"Colombia"', add
label define br10a_prevctry_lbl 192 `"Cuba"', add
label define br10a_prevctry_lbl 208 `"Denmark"', add
label define br10a_prevctry_lbl 214 `"Dominican Republic"', add
label define br10a_prevctry_lbl 218 `"Ecuador"', add
label define br10a_prevctry_lbl 250 `"France"', add
label define br10a_prevctry_lbl 254 `"French Guiana"', add
label define br10a_prevctry_lbl 276 `"Germany"', add
label define br10a_prevctry_lbl 300 `"Greece"', add
label define br10a_prevctry_lbl 328 `"Guyana"', add
label define br10a_prevctry_lbl 356 `"India"', add
label define br10a_prevctry_lbl 372 `"Ireland"', add
label define br10a_prevctry_lbl 376 `"Israel"', add
label define br10a_prevctry_lbl 380 `"Italy"', add
label define br10a_prevctry_lbl 392 `"Japan"', add
label define br10a_prevctry_lbl 410 `"Republic of Korea"', add
label define br10a_prevctry_lbl 422 `"Lebanon"', add
label define br10a_prevctry_lbl 484 `"Mexico"', add
label define br10a_prevctry_lbl 508 `"Mozambique"', add
label define br10a_prevctry_lbl 528 `"Netherlands"', add
label define br10a_prevctry_lbl 554 `"New Zealand"', add
label define br10a_prevctry_lbl 566 `"Nigeria"', add
label define br10a_prevctry_lbl 578 `"Norway"', add
label define br10a_prevctry_lbl 600 `"Paraguay"', add
label define br10a_prevctry_lbl 604 `"Peru"', add
label define br10a_prevctry_lbl 616 `"Poland"', add
label define br10a_prevctry_lbl 620 `"Portugal"', add
label define br10a_prevctry_lbl 624 `"Guinea Bissau"', add
label define br10a_prevctry_lbl 643 `"Russia"', add
label define br10a_prevctry_lbl 710 `"South Africa"', add
label define br10a_prevctry_lbl 724 `"Spain"', add
label define br10a_prevctry_lbl 740 `"Suriname"', add
label define br10a_prevctry_lbl 752 `"Sweden"', add
label define br10a_prevctry_lbl 756 `"Switzerland"', add
label define br10a_prevctry_lbl 826 `"United Kingdom"', add
label define br10a_prevctry_lbl 840 `"United States"', add
label define br10a_prevctry_lbl 858 `"Uruguay"', add
label define br10a_prevctry_lbl 862 `"Venezuela"', add
label define br10a_prevctry_lbl 900 `"Response suppressed"', add
label define br10a_prevctry_lbl 998 `"Unknown"', add
label define br10a_prevctry_lbl 999 `"NIU (not in universe)"', add
label values br10a_prevctry br10a_prevctry_lbl

label define br10a_res5yr_lbl 1 `"State/municipality"'
label define br10a_res5yr_lbl 2 `"Foreign country"', add
label define br10a_res5yr_lbl 9 `"NIU (not in universe)"', add
label values br10a_res5yr br10a_res5yr_lbl

label define br10a_state5yr_lbl 11 `"R�ndonia"'
label define br10a_state5yr_lbl 12 `"Acre"', add
label define br10a_state5yr_lbl 13 `"Amazonas"', add
label define br10a_state5yr_lbl 14 `"Roraima"', add
label define br10a_state5yr_lbl 15 `"Par�"', add
label define br10a_state5yr_lbl 16 `"Amap�"', add
label define br10a_state5yr_lbl 17 `"Tocantins"', add
label define br10a_state5yr_lbl 21 `"Maranh�o"', add
label define br10a_state5yr_lbl 22 `"Piau�"', add
label define br10a_state5yr_lbl 23 `"Cear�"', add
label define br10a_state5yr_lbl 24 `"Rio Grande Do Norte"', add
label define br10a_state5yr_lbl 25 `"Para�ba"', add
label define br10a_state5yr_lbl 26 `"Pernambuco"', add
label define br10a_state5yr_lbl 27 `"Alagoas"', add
label define br10a_state5yr_lbl 28 `"Sergipe"', add
label define br10a_state5yr_lbl 29 `"Bahia"', add
label define br10a_state5yr_lbl 31 `"Minas Gerais"', add
label define br10a_state5yr_lbl 32 `"Esp�rito Santo"', add
label define br10a_state5yr_lbl 33 `"Rio De Janeiro"', add
label define br10a_state5yr_lbl 35 `"S�o Paulo"', add
label define br10a_state5yr_lbl 41 `"Paran�"', add
label define br10a_state5yr_lbl 42 `"Santa Catarina"', add
label define br10a_state5yr_lbl 43 `"Rio Grande Do Sul"', add
label define br10a_state5yr_lbl 50 `"Mato Grosso Do Sul"', add
label define br10a_state5yr_lbl 51 `"Mato Grosso"', add
label define br10a_state5yr_lbl 52 `"Goi�s"', add
label define br10a_state5yr_lbl 53 `"Distrito Federal"', add
label define br10a_state5yr_lbl 98 `"Unknown"', add
label define br10a_state5yr_lbl 99 `"NIU (not in universe)"', add
label values br10a_state5yr br10a_state5yr_lbl

label define br10a_muni5yr_lbl 1100015 `"Alta Floresta D'Oeste"'
label define br10a_muni5yr_lbl 1100023 `"Ariquemes"', add
label define br10a_muni5yr_lbl 1100031 `"Cabixi"', add
label define br10a_muni5yr_lbl 1100049 `"Cacoal"', add
label define br10a_muni5yr_lbl 1100056 `"Cerejeiras"', add
label define br10a_muni5yr_lbl 1100064 `"Colorado do Oeste"', add
label define br10a_muni5yr_lbl 1100072 `"Corumbiara"', add
label define br10a_muni5yr_lbl 1100080 `"Costa Marques"', add
label define br10a_muni5yr_lbl 1100098 `"Espig�o D'Oeste"', add
label define br10a_muni5yr_lbl 1100106 `"Guajar�-Mirim"', add
label define br10a_muni5yr_lbl 1100114 `"Jaru"', add
label define br10a_muni5yr_lbl 1100122 `"Ji-Paran�"', add
label define br10a_muni5yr_lbl 1100130 `"Machadinho D'Oeste"', add
label define br10a_muni5yr_lbl 1100148 `"Nova Brasil�ndia D'Oeste"', add
label define br10a_muni5yr_lbl 1100155 `"Ouro Preto do Oeste"', add
label define br10a_muni5yr_lbl 1100189 `"Pimenta Bueno"', add
label define br10a_muni5yr_lbl 1100205 `"Porto Velho"', add
label define br10a_muni5yr_lbl 1100254 `"Presidente M�dici"', add
label define br10a_muni5yr_lbl 1100262 `"Rio Crespo"', add
label define br10a_muni5yr_lbl 1100288 `"Rolim de Moura"', add
label define br10a_muni5yr_lbl 1100296 `"Santa Luzia D'Oeste"', add
label define br10a_muni5yr_lbl 1100304 `"Vilhena"', add
label define br10a_muni5yr_lbl 1100320 `"S�o Miguel do Guapor�"', add
label define br10a_muni5yr_lbl 1100338 `"Nova Mamor�"', add
label define br10a_muni5yr_lbl 1100346 `"Alvorada D'Oeste"', add
label define br10a_muni5yr_lbl 1100379 `"Alto Alegre dos Parecis"', add
label define br10a_muni5yr_lbl 1100403 `"Alto Para�so"', add
label define br10a_muni5yr_lbl 1100452 `"Buritis"', add
label define br10a_muni5yr_lbl 1100502 `"Novo Horizonte do Oeste"', add
label define br10a_muni5yr_lbl 1100601 `"Cacaul�ndia"', add
label define br10a_muni5yr_lbl 1100700 `"Campo Novo de Rond�nia"', add
label define br10a_muni5yr_lbl 1100809 `"Candeias do Jamari"', add
label define br10a_muni5yr_lbl 1100908 `"Castanheiras"', add
label define br10a_muni5yr_lbl 1100924 `"Chupinguaia"', add
label define br10a_muni5yr_lbl 1100940 `"Cujubim"', add
label define br10a_muni5yr_lbl 1101005 `"Governador Jorge Teixeira"', add
label define br10a_muni5yr_lbl 1101104 `"Itapu� do Oeste"', add
label define br10a_muni5yr_lbl 1101203 `"Ministro Andreazza"', add
label define br10a_muni5yr_lbl 1101302 `"Mirante da Serra"', add
label define br10a_muni5yr_lbl 1101401 `"Monte Negro"', add
label define br10a_muni5yr_lbl 1101435 `"Nova Uni�o"', add
label define br10a_muni5yr_lbl 1101450 `"Parecis"', add
label define br10a_muni5yr_lbl 1101468 `"Pimenteiras do Oeste"', add
label define br10a_muni5yr_lbl 1101476 `"Primavera de Rond�nia"', add
label define br10a_muni5yr_lbl 1101484 `"S�o Felipe D'Oeste"', add
label define br10a_muni5yr_lbl 1101492 `"S�o Francisco do Guapor�"', add
label define br10a_muni5yr_lbl 1101500 `"Seringueiras"', add
label define br10a_muni5yr_lbl 1101559 `"Teixeir�polis"', add
label define br10a_muni5yr_lbl 1101609 `"Theobroma"', add
label define br10a_muni5yr_lbl 1101708 `"Urup�"', add
label define br10a_muni5yr_lbl 1101757 `"Vale do Anari"', add
label define br10a_muni5yr_lbl 1101807 `"Vale do Para�so"', add
label define br10a_muni5yr_lbl 1199999 `"Rond�nia, municipality unknown"', add
label define br10a_muni5yr_lbl 1200013 `"Acrel�ndia"', add
label define br10a_muni5yr_lbl 1200054 `"Assis Brasil"', add
label define br10a_muni5yr_lbl 1200104 `"Brasil�ia"', add
label define br10a_muni5yr_lbl 1200138 `"Bujari"', add
label define br10a_muni5yr_lbl 1200179 `"Capixaba"', add
label define br10a_muni5yr_lbl 1200203 `"Cruzeiro do Sul"', add
label define br10a_muni5yr_lbl 1200252 `"Epitaciol�ndia"', add
label define br10a_muni5yr_lbl 1200302 `"Feij�"', add
label define br10a_muni5yr_lbl 1200328 `"Jord�o"', add
label define br10a_muni5yr_lbl 1200336 `"M�ncio Lima"', add
label define br10a_muni5yr_lbl 1200344 `"Manoel Urbano"', add
label define br10a_muni5yr_lbl 1200351 `"Marechal Thaumaturgo"', add
label define br10a_muni5yr_lbl 1200385 `"Pl�cido de Castro"', add
label define br10a_muni5yr_lbl 1200393 `"Porto Walter"', add
label define br10a_muni5yr_lbl 1200401 `"Rio Branco"', add
label define br10a_muni5yr_lbl 1200427 `"Rodrigues Alves"', add
label define br10a_muni5yr_lbl 1200435 `"Santa Rosa do Purus"', add
label define br10a_muni5yr_lbl 1200450 `"Senador Guiomard"', add
label define br10a_muni5yr_lbl 1200500 `"Sena Madureira"', add
label define br10a_muni5yr_lbl 1200609 `"Tarauac�"', add
label define br10a_muni5yr_lbl 1200708 `"Xapuri"', add
label define br10a_muni5yr_lbl 1200807 `"Porto Acre"', add
label define br10a_muni5yr_lbl 1299999 `"Acre, municipality unknown"', add
label define br10a_muni5yr_lbl 1300029 `"Alvar�es"', add
label define br10a_muni5yr_lbl 1300060 `"Amatur�"', add
label define br10a_muni5yr_lbl 1300086 `"Anam�"', add
label define br10a_muni5yr_lbl 1300102 `"Anori"', add
label define br10a_muni5yr_lbl 1300144 `"Apu�"', add
label define br10a_muni5yr_lbl 1300201 `"Atalaia do Norte"', add
label define br10a_muni5yr_lbl 1300300 `"Autazes"', add
label define br10a_muni5yr_lbl 1300409 `"Barcelos"', add
label define br10a_muni5yr_lbl 1300508 `"Barreirinha"', add
label define br10a_muni5yr_lbl 1300607 `"Benjamin Constant"', add
label define br10a_muni5yr_lbl 1300631 `"Beruri"', add
label define br10a_muni5yr_lbl 1300680 `"Boa Vista do Ramos"', add
label define br10a_muni5yr_lbl 1300706 `"Boca do Acre"', add
label define br10a_muni5yr_lbl 1300805 `"Borba"', add
label define br10a_muni5yr_lbl 1300839 `"Caapiranga"', add
label define br10a_muni5yr_lbl 1300904 `"Canutama"', add
label define br10a_muni5yr_lbl 1301001 `"Carauari"', add
label define br10a_muni5yr_lbl 1301100 `"Careiro"', add
label define br10a_muni5yr_lbl 1301159 `"Careiro da V�rzea"', add
label define br10a_muni5yr_lbl 1301209 `"Coari"', add
label define br10a_muni5yr_lbl 1301308 `"Codaj�s"', add
label define br10a_muni5yr_lbl 1301407 `"Eirunep�"', add
label define br10a_muni5yr_lbl 1301506 `"Envira"', add
label define br10a_muni5yr_lbl 1301605 `"Fonte Boa"', add
label define br10a_muni5yr_lbl 1301654 `"Guajar�"', add
label define br10a_muni5yr_lbl 1301704 `"Humait�"', add
label define br10a_muni5yr_lbl 1301803 `"Ipixuna"', add
label define br10a_muni5yr_lbl 1301852 `"Iranduba"', add
label define br10a_muni5yr_lbl 1301902 `"Itacoatiara"', add
label define br10a_muni5yr_lbl 1301951 `"Itamarati"', add
label define br10a_muni5yr_lbl 1302009 `"Itapiranga"', add
label define br10a_muni5yr_lbl 1302108 `"Japur�"', add
label define br10a_muni5yr_lbl 1302207 `"Juru�"', add
label define br10a_muni5yr_lbl 1302306 `"Juta�"', add
label define br10a_muni5yr_lbl 1302405 `"L�brea"', add
label define br10a_muni5yr_lbl 1302504 `"Manacapuru"', add
label define br10a_muni5yr_lbl 1302553 `"Manaquiri"', add
label define br10a_muni5yr_lbl 1302603 `"Manaus"', add
label define br10a_muni5yr_lbl 1302702 `"Manicor�"', add
label define br10a_muni5yr_lbl 1302801 `"Mara�"', add
label define br10a_muni5yr_lbl 1302900 `"Mau�s"', add
label define br10a_muni5yr_lbl 1303007 `"Nhamund�"', add
label define br10a_muni5yr_lbl 1303106 `"Nova Olinda do Norte"', add
label define br10a_muni5yr_lbl 1303205 `"Novo Air�o"', add
label define br10a_muni5yr_lbl 1303304 `"Novo Aripuan�"', add
label define br10a_muni5yr_lbl 1303403 `"Parintins"', add
label define br10a_muni5yr_lbl 1303502 `"Pauini"', add
label define br10a_muni5yr_lbl 1303536 `"Presidente Figueiredo"', add
label define br10a_muni5yr_lbl 1303569 `"Rio Preto da Eva"', add
label define br10a_muni5yr_lbl 1303601 `"Santa Isabel do Rio Negro"', add
label define br10a_muni5yr_lbl 1303700 `"Santo Ant�nio do I��"', add
label define br10a_muni5yr_lbl 1303809 `"S�o Gabriel da Cachoeira"', add
label define br10a_muni5yr_lbl 1303908 `"S�o Paulo de Oliven�a"', add
label define br10a_muni5yr_lbl 1303957 `"S�o Sebasti�o do Uatum�"', add
label define br10a_muni5yr_lbl 1304005 `"Silves"', add
label define br10a_muni5yr_lbl 1304062 `"Tabatinga"', add
label define br10a_muni5yr_lbl 1304104 `"Tapau�"', add
label define br10a_muni5yr_lbl 1304203 `"Tef�"', add
label define br10a_muni5yr_lbl 1304237 `"Tonantins"', add
label define br10a_muni5yr_lbl 1304260 `"Uarini"', add
label define br10a_muni5yr_lbl 1304302 `"Urucar�"', add
label define br10a_muni5yr_lbl 1304401 `"Urucurituba"', add
label define br10a_muni5yr_lbl 1399999 `"Amazonas, municipality unknown"', add
label define br10a_muni5yr_lbl 1400027 `"Amajari"', add
label define br10a_muni5yr_lbl 1400050 `"Alto Alegre"', add
label define br10a_muni5yr_lbl 1400100 `"Boa Vista"', add
label define br10a_muni5yr_lbl 1400159 `"Bonfim"', add
label define br10a_muni5yr_lbl 1400175 `"Cant�"', add
label define br10a_muni5yr_lbl 1400209 `"Caracara�"', add
label define br10a_muni5yr_lbl 1400233 `"Caroebe"', add
label define br10a_muni5yr_lbl 1400282 `"Iracema"', add
label define br10a_muni5yr_lbl 1400308 `"Mucaja�"', add
label define br10a_muni5yr_lbl 1400407 `"Normandia"', add
label define br10a_muni5yr_lbl 1400456 `"Pacaraima"', add
label define br10a_muni5yr_lbl 1400472 `"Rorain�polis"', add
label define br10a_muni5yr_lbl 1400506 `"S�o Jo�o da Baliza"', add
label define br10a_muni5yr_lbl 1400605 `"S�o Luiz"', add
label define br10a_muni5yr_lbl 1400704 `"Uiramut�"', add
label define br10a_muni5yr_lbl 1499999 `"Roraima, municipality unknown"', add
label define br10a_muni5yr_lbl 1500107 `"Abaetetuba"', add
label define br10a_muni5yr_lbl 1500131 `"Abel Figueiredo"', add
label define br10a_muni5yr_lbl 1500206 `"Acar�"', add
label define br10a_muni5yr_lbl 1500305 `"Afu�"', add
label define br10a_muni5yr_lbl 1500347 `"�gua Azul do Norte"', add
label define br10a_muni5yr_lbl 1500404 `"Alenquer"', add
label define br10a_muni5yr_lbl 1500503 `"Almeirim"', add
label define br10a_muni5yr_lbl 1500602 `"Altamira"', add
label define br10a_muni5yr_lbl 1500701 `"Anaj�s"', add
label define br10a_muni5yr_lbl 1500800 `"Ananindeua"', add
label define br10a_muni5yr_lbl 1500859 `"Anapu"', add
label define br10a_muni5yr_lbl 1500909 `"Augusto Corr�a"', add
label define br10a_muni5yr_lbl 1500958 `"Aurora do Par�"', add
label define br10a_muni5yr_lbl 1501006 `"Aveiro"', add
label define br10a_muni5yr_lbl 1501105 `"Bagre"', add
label define br10a_muni5yr_lbl 1501204 `"Bai�o"', add
label define br10a_muni5yr_lbl 1501253 `"Bannach"', add
label define br10a_muni5yr_lbl 1501303 `"Barcarena"', add
label define br10a_muni5yr_lbl 1501402 `"Bel�m"', add
label define br10a_muni5yr_lbl 1501451 `"Belterra"', add
label define br10a_muni5yr_lbl 1501501 `"Benevides"', add
label define br10a_muni5yr_lbl 1501576 `"Bom Jesus do Tocantins"', add
label define br10a_muni5yr_lbl 1501600 `"Bonito"', add
label define br10a_muni5yr_lbl 1501709 `"Bragan�a"', add
label define br10a_muni5yr_lbl 1501725 `"Brasil Novo"', add
label define br10a_muni5yr_lbl 1501758 `"Brejo Grande do Araguaia"', add
label define br10a_muni5yr_lbl 1501782 `"Breu Branco"', add
label define br10a_muni5yr_lbl 1501808 `"Breves"', add
label define br10a_muni5yr_lbl 1501907 `"Bujaru"', add
label define br10a_muni5yr_lbl 1501956 `"Cachoeira do Piri�"', add
label define br10a_muni5yr_lbl 1502004 `"Cachoeira do Arari"', add
label define br10a_muni5yr_lbl 1502103 `"Camet�"', add
label define br10a_muni5yr_lbl 1502152 `"Cana� dos Caraj�s"', add
label define br10a_muni5yr_lbl 1502202 `"Capanema"', add
label define br10a_muni5yr_lbl 1502301 `"Capit�o Po�o"', add
label define br10a_muni5yr_lbl 1502400 `"Castanhal"', add
label define br10a_muni5yr_lbl 1502509 `"Chaves"', add
label define br10a_muni5yr_lbl 1502608 `"Colares"', add
label define br10a_muni5yr_lbl 1502707 `"Concei��o do Araguaia"', add
label define br10a_muni5yr_lbl 1502756 `"Conc�rdia do Par�"', add
label define br10a_muni5yr_lbl 1502764 `"Cumaru do Norte"', add
label define br10a_muni5yr_lbl 1502772 `"Curion�polis"', add
label define br10a_muni5yr_lbl 1502806 `"Curralinho"', add
label define br10a_muni5yr_lbl 1502855 `"Curu�"', add
label define br10a_muni5yr_lbl 1502905 `"Curu��"', add
label define br10a_muni5yr_lbl 1502939 `"Dom Eliseu"', add
label define br10a_muni5yr_lbl 1502954 `"Eldorado dos Caraj�s"', add
label define br10a_muni5yr_lbl 1503002 `"Faro"', add
label define br10a_muni5yr_lbl 1503044 `"Floresta do Araguaia"', add
label define br10a_muni5yr_lbl 1503077 `"Garraf�o do Norte"', add
label define br10a_muni5yr_lbl 1503093 `"Goian�sia do Par�"', add
label define br10a_muni5yr_lbl 1503101 `"Gurup�"', add
label define br10a_muni5yr_lbl 1503200 `"Igarap�-A�u"', add
label define br10a_muni5yr_lbl 1503309 `"Igarap�-Miri"', add
label define br10a_muni5yr_lbl 1503408 `"Inhangapi"', add
label define br10a_muni5yr_lbl 1503457 `"Ipixuna do Par�"', add
label define br10a_muni5yr_lbl 1503507 `"Irituia"', add
label define br10a_muni5yr_lbl 1503606 `"Itaituba"', add
label define br10a_muni5yr_lbl 1503705 `"Itupiranga"', add
label define br10a_muni5yr_lbl 1503754 `"Jacareacanga"', add
label define br10a_muni5yr_lbl 1503804 `"Jacund�"', add
label define br10a_muni5yr_lbl 1503903 `"Juruti"', add
label define br10a_muni5yr_lbl 1504000 `"Limoeiro do Ajuru"', add
label define br10a_muni5yr_lbl 1504059 `"M�e do Rio"', add
label define br10a_muni5yr_lbl 1504109 `"Magalh�es Barata"', add
label define br10a_muni5yr_lbl 1504208 `"Marab�"', add
label define br10a_muni5yr_lbl 1504307 `"Maracan�"', add
label define br10a_muni5yr_lbl 1504406 `"Marapanim"', add
label define br10a_muni5yr_lbl 1504422 `"Marituba"', add
label define br10a_muni5yr_lbl 1504455 `"Medicil�ndia"', add
label define br10a_muni5yr_lbl 1504505 `"Melga�o"', add
label define br10a_muni5yr_lbl 1504604 `"Mocajuba"', add
label define br10a_muni5yr_lbl 1504703 `"Moju"', add
label define br10a_muni5yr_lbl 1504802 `"Monte Alegre"', add
label define br10a_muni5yr_lbl 1504901 `"Muan�"', add
label define br10a_muni5yr_lbl 1504950 `"Nova Esperan�a do Piri�"', add
label define br10a_muni5yr_lbl 1504976 `"Nova Ipixuna"', add
label define br10a_muni5yr_lbl 1505007 `"Nova Timboteua"', add
label define br10a_muni5yr_lbl 1505031 `"Novo Progresso"', add
label define br10a_muni5yr_lbl 1505064 `"Novo Repartimento"', add
label define br10a_muni5yr_lbl 1505106 `"�bidos"', add
label define br10a_muni5yr_lbl 1505205 `"Oeiras do Par�"', add
label define br10a_muni5yr_lbl 1505304 `"Oriximin�"', add
label define br10a_muni5yr_lbl 1505403 `"Our�m"', add
label define br10a_muni5yr_lbl 1505437 `"Ouril�ndia do Norte"', add
label define br10a_muni5yr_lbl 1505486 `"Pacaj�"', add
label define br10a_muni5yr_lbl 1505494 `"Palestina do Par�"', add
label define br10a_muni5yr_lbl 1505502 `"Paragominas"', add
label define br10a_muni5yr_lbl 1505536 `"Parauapebas"', add
label define br10a_muni5yr_lbl 1505551 `"Pau D'Arco"', add
label define br10a_muni5yr_lbl 1505601 `"Peixe-Boi"', add
label define br10a_muni5yr_lbl 1505635 `"Pi�arra"', add
label define br10a_muni5yr_lbl 1505650 `"Placas"', add
label define br10a_muni5yr_lbl 1505700 `"Ponta de Pedras"', add
label define br10a_muni5yr_lbl 1505809 `"Portel"', add
label define br10a_muni5yr_lbl 1505908 `"Porto de Moz"', add
label define br10a_muni5yr_lbl 1506005 `"Prainha"', add
label define br10a_muni5yr_lbl 1506104 `"Primavera"', add
label define br10a_muni5yr_lbl 1506112 `"Quatipuru"', add
label define br10a_muni5yr_lbl 1506138 `"Reden��o"', add
label define br10a_muni5yr_lbl 1506161 `"Rio Maria"', add
label define br10a_muni5yr_lbl 1506187 `"Rondon do Par�"', add
label define br10a_muni5yr_lbl 1506195 `"Rur�polis"', add
label define br10a_muni5yr_lbl 1506203 `"Salin�polis"', add
label define br10a_muni5yr_lbl 1506302 `"Salvaterra"', add
label define br10a_muni5yr_lbl 1506351 `"Santa B�rbara do Par�"', add
label define br10a_muni5yr_lbl 1506401 `"Santa Cruz do Arari"', add
label define br10a_muni5yr_lbl 1506500 `"Santa Isabel do Par�"', add
label define br10a_muni5yr_lbl 1506559 `"Santa Luzia do Par�"', add
label define br10a_muni5yr_lbl 1506583 `"Santa Maria das Barreiras"', add
label define br10a_muni5yr_lbl 1506609 `"Santa Maria do Par�"', add
label define br10a_muni5yr_lbl 1506708 `"Santana do Araguaia"', add
label define br10a_muni5yr_lbl 1506807 `"Santar�m"', add
label define br10a_muni5yr_lbl 1506906 `"Santar�m Novo"', add
label define br10a_muni5yr_lbl 1507003 `"Santo Ant�nio do Tau�"', add
label define br10a_muni5yr_lbl 1507102 `"S�o Caetano de Odivelas"', add
label define br10a_muni5yr_lbl 1507151 `"S�o Domingos do Araguaia"', add
label define br10a_muni5yr_lbl 1507201 `"S�o Domingos do Capim"', add
label define br10a_muni5yr_lbl 1507300 `"S�o F�lix do Xingu"', add
label define br10a_muni5yr_lbl 1507409 `"S�o Francisco do Par�"', add
label define br10a_muni5yr_lbl 1507458 `"S�o Geraldo do Araguaia"', add
label define br10a_muni5yr_lbl 1507466 `"S�o Jo�o da Ponta"', add
label define br10a_muni5yr_lbl 1507474 `"S�o Jo�o de Pirabas"', add
label define br10a_muni5yr_lbl 1507508 `"S�o Jo�o do Araguaia"', add
label define br10a_muni5yr_lbl 1507607 `"S�o Miguel do Guam�"', add
label define br10a_muni5yr_lbl 1507706 `"S�o Sebasti�o da Boa Vista"', add
label define br10a_muni5yr_lbl 1507755 `"Sapucaia"', add
label define br10a_muni5yr_lbl 1507805 `"Senador Jos� Porf�rio"', add
label define br10a_muni5yr_lbl 1507904 `"Soure"', add
label define br10a_muni5yr_lbl 1507953 `"Tail�ndia"', add
label define br10a_muni5yr_lbl 1507961 `"Terra Alta"', add
label define br10a_muni5yr_lbl 1507979 `"Terra Santa"', add
label define br10a_muni5yr_lbl 1508001 `"Tom�-A�u"', add
label define br10a_muni5yr_lbl 1508035 `"Tracuateua"', add
label define br10a_muni5yr_lbl 1508050 `"Trair�o"', add
label define br10a_muni5yr_lbl 1508084 `"Tucum�"', add
label define br10a_muni5yr_lbl 1508100 `"Tucuru�"', add
label define br10a_muni5yr_lbl 1508126 `"Ulian�polis"', add
label define br10a_muni5yr_lbl 1508159 `"Uruar�"', add
label define br10a_muni5yr_lbl 1508209 `"Vigia"', add
label define br10a_muni5yr_lbl 1508308 `"Viseu"', add
label define br10a_muni5yr_lbl 1508357 `"Vit�ria do Xingu"', add
label define br10a_muni5yr_lbl 1508407 `"Xinguara"', add
label define br10a_muni5yr_lbl 1599999 `"Par�, municipality unknown"', add
label define br10a_muni5yr_lbl 1600055 `"Serra do Navio"', add
label define br10a_muni5yr_lbl 1600105 `"Amap�"', add
label define br10a_muni5yr_lbl 1600154 `"Pedra Branca do Amapari"', add
label define br10a_muni5yr_lbl 1600204 `"Cal�oene"', add
label define br10a_muni5yr_lbl 1600212 `"Cutias"', add
label define br10a_muni5yr_lbl 1600238 `"Ferreira Gomes"', add
label define br10a_muni5yr_lbl 1600253 `"Itaubal"', add
label define br10a_muni5yr_lbl 1600279 `"Laranjal do Jari"', add
label define br10a_muni5yr_lbl 1600303 `"Macap�"', add
label define br10a_muni5yr_lbl 1600402 `"Mazag�o"', add
label define br10a_muni5yr_lbl 1600501 `"Oiapoque"', add
label define br10a_muni5yr_lbl 1600535 `"Porto Grande"', add
label define br10a_muni5yr_lbl 1600550 `"Pracu�ba"', add
label define br10a_muni5yr_lbl 1600600 `"Santana"', add
label define br10a_muni5yr_lbl 1600709 `"Tartarugalzinho"', add
label define br10a_muni5yr_lbl 1600808 `"Vit�ria do Jari"', add
label define br10a_muni5yr_lbl 1699999 `"Amap�, municipality unknown"', add
label define br10a_muni5yr_lbl 1700251 `"Abreul�ndia"', add
label define br10a_muni5yr_lbl 1700301 `"Aguiarn�polis"', add
label define br10a_muni5yr_lbl 1700350 `"Alian�a do Tocantins"', add
label define br10a_muni5yr_lbl 1700400 `"Almas"', add
label define br10a_muni5yr_lbl 1700707 `"Alvorada"', add
label define br10a_muni5yr_lbl 1701002 `"Anan�s"', add
label define br10a_muni5yr_lbl 1701051 `"Angico"', add
label define br10a_muni5yr_lbl 1701101 `"Aparecida do Rio Negro"', add
label define br10a_muni5yr_lbl 1701309 `"Aragominas"', add
label define br10a_muni5yr_lbl 1701903 `"Araguacema"', add
label define br10a_muni5yr_lbl 1702000 `"Aragua�u"', add
label define br10a_muni5yr_lbl 1702109 `"Aragua�na"', add
label define br10a_muni5yr_lbl 1702158 `"Araguan�"', add
label define br10a_muni5yr_lbl 1702208 `"Araguatins"', add
label define br10a_muni5yr_lbl 1702307 `"Arapoema"', add
label define br10a_muni5yr_lbl 1702406 `"Arraias"', add
label define br10a_muni5yr_lbl 1702554 `"Augustin�polis"', add
label define br10a_muni5yr_lbl 1702703 `"Aurora do Tocantins"', add
label define br10a_muni5yr_lbl 1702901 `"Axix� do Tocantins"', add
label define br10a_muni5yr_lbl 1703008 `"Baba�ul�ndia"', add
label define br10a_muni5yr_lbl 1703057 `"Bandeirantes do Tocantins"', add
label define br10a_muni5yr_lbl 1703073 `"Barra do Ouro"', add
label define br10a_muni5yr_lbl 1703107 `"Barrol�ndia"', add
label define br10a_muni5yr_lbl 1703206 `"Bernardo Say�o"', add
label define br10a_muni5yr_lbl 1703305 `"Bom Jesus do Tocantins"', add
label define br10a_muni5yr_lbl 1703602 `"Brasil�ndia do Tocantins"', add
label define br10a_muni5yr_lbl 1703701 `"Brejinho de Nazar�"', add
label define br10a_muni5yr_lbl 1703800 `"Buriti do Tocantins"', add
label define br10a_muni5yr_lbl 1703826 `"Cachoeirinha"', add
label define br10a_muni5yr_lbl 1703842 `"Campos Lindos"', add
label define br10a_muni5yr_lbl 1703867 `"Cariri do Tocantins"', add
label define br10a_muni5yr_lbl 1703883 `"Carmol�ndia"', add
label define br10a_muni5yr_lbl 1703891 `"Carrasco Bonito"', add
label define br10a_muni5yr_lbl 1703909 `"Caseara"', add
label define br10a_muni5yr_lbl 1704105 `"Centen�rio"', add
label define br10a_muni5yr_lbl 1704600 `"Chapada de Areia"', add
label define br10a_muni5yr_lbl 1705102 `"Chapada da Natividade"', add
label define br10a_muni5yr_lbl 1705508 `"Colinas do Tocantins"', add
label define br10a_muni5yr_lbl 1705557 `"Combinado"', add
label define br10a_muni5yr_lbl 1705607 `"Concei��o do Tocantins"', add
label define br10a_muni5yr_lbl 1706001 `"Couto Magalh�es"', add
label define br10a_muni5yr_lbl 1706100 `"Cristal�ndia"', add
label define br10a_muni5yr_lbl 1706258 `"Crix�s do Tocantins"', add
label define br10a_muni5yr_lbl 1706506 `"Darcin�polis"', add
label define br10a_muni5yr_lbl 1707009 `"Dian�polis"', add
label define br10a_muni5yr_lbl 1707108 `"Divin�polis do Tocantins"', add
label define br10a_muni5yr_lbl 1707207 `"Dois Irm�os do Tocantins"', add
label define br10a_muni5yr_lbl 1707306 `"Duer�"', add
label define br10a_muni5yr_lbl 1707405 `"Esperantina"', add
label define br10a_muni5yr_lbl 1707553 `"F�tima"', add
label define br10a_muni5yr_lbl 1707652 `"Figueir�polis"', add
label define br10a_muni5yr_lbl 1707702 `"Filad�lfia"', add
label define br10a_muni5yr_lbl 1708205 `"Formoso do Araguaia"', add
label define br10a_muni5yr_lbl 1708254 `"Fortaleza do Taboc�o"', add
label define br10a_muni5yr_lbl 1708304 `"Goianorte"', add
label define br10a_muni5yr_lbl 1709005 `"Goiatins"', add
label define br10a_muni5yr_lbl 1709302 `"Guara�"', add
label define br10a_muni5yr_lbl 1709500 `"Gurupi"', add
label define br10a_muni5yr_lbl 1709807 `"Ipueiras"', add
label define br10a_muni5yr_lbl 1710508 `"Itacaj�"', add
label define br10a_muni5yr_lbl 1710706 `"Itaguatins"', add
label define br10a_muni5yr_lbl 1710904 `"Itapiratins"', add
label define br10a_muni5yr_lbl 1711100 `"Itapor� do Tocantins"', add
label define br10a_muni5yr_lbl 1711506 `"Ja� do Tocantins"', add
label define br10a_muni5yr_lbl 1711803 `"Juarina"', add
label define br10a_muni5yr_lbl 1711902 `"Lagoa da Confus�o"', add
label define br10a_muni5yr_lbl 1711951 `"Lagoa do Tocantins"', add
label define br10a_muni5yr_lbl 1712009 `"Lajeado"', add
label define br10a_muni5yr_lbl 1712157 `"Lavandeira"', add
label define br10a_muni5yr_lbl 1712405 `"Lizarda"', add
label define br10a_muni5yr_lbl 1712454 `"Luzin�polis"', add
label define br10a_muni5yr_lbl 1712504 `"Marian�polis do Tocantins"', add
label define br10a_muni5yr_lbl 1712702 `"Mateiros"', add
label define br10a_muni5yr_lbl 1712801 `"Mauril�ndia do Tocantins"', add
label define br10a_muni5yr_lbl 1713205 `"Miracema do Tocantins"', add
label define br10a_muni5yr_lbl 1713304 `"Miranorte"', add
label define br10a_muni5yr_lbl 1713601 `"Monte do Carmo"', add
label define br10a_muni5yr_lbl 1713700 `"Monte Santo do Tocantins"', add
label define br10a_muni5yr_lbl 1713809 `"Palmeiras do Tocantins"', add
label define br10a_muni5yr_lbl 1713957 `"Muricil�ndia"', add
label define br10a_muni5yr_lbl 1714203 `"Natividade"', add
label define br10a_muni5yr_lbl 1714302 `"Nazar�"', add
label define br10a_muni5yr_lbl 1714880 `"Nova Olinda"', add
label define br10a_muni5yr_lbl 1715002 `"Nova Rosal�ndia"', add
label define br10a_muni5yr_lbl 1715101 `"Novo Acordo"', add
label define br10a_muni5yr_lbl 1715150 `"Novo Alegre"', add
label define br10a_muni5yr_lbl 1715259 `"Novo Jardim"', add
label define br10a_muni5yr_lbl 1715507 `"Oliveira de F�tima"', add
label define br10a_muni5yr_lbl 1715705 `"Palmeirante"', add
label define br10a_muni5yr_lbl 1715754 `"Palmeir�polis"', add
label define br10a_muni5yr_lbl 1716109 `"Para�so do Tocantins"', add
label define br10a_muni5yr_lbl 1716208 `"Paran�"', add
label define br10a_muni5yr_lbl 1716307 `"Pau D'Arco"', add
label define br10a_muni5yr_lbl 1716505 `"Pedro Afonso"', add
label define br10a_muni5yr_lbl 1716604 `"Peixe"', add
label define br10a_muni5yr_lbl 1716653 `"Pequizeiro"', add
label define br10a_muni5yr_lbl 1716703 `"Colm�ia"', add
label define br10a_muni5yr_lbl 1717008 `"Pindorama do Tocantins"', add
label define br10a_muni5yr_lbl 1717206 `"Piraqu�"', add
label define br10a_muni5yr_lbl 1717503 `"Pium"', add
label define br10a_muni5yr_lbl 1717800 `"Ponte Alta do Bom Jesus"', add
label define br10a_muni5yr_lbl 1717909 `"Ponte Alta do Tocantins"', add
label define br10a_muni5yr_lbl 1718006 `"Porto Alegre do Tocantins"', add
label define br10a_muni5yr_lbl 1718204 `"Porto Nacional"', add
label define br10a_muni5yr_lbl 1718303 `"Praia Norte"', add
label define br10a_muni5yr_lbl 1718402 `"Presidente Kennedy"', add
label define br10a_muni5yr_lbl 1718451 `"Pugmil"', add
label define br10a_muni5yr_lbl 1718501 `"Recursol�ndia"', add
label define br10a_muni5yr_lbl 1718550 `"Riachinho"', add
label define br10a_muni5yr_lbl 1718659 `"Rio da Concei��o"', add
label define br10a_muni5yr_lbl 1718709 `"Rio dos Bois"', add
label define br10a_muni5yr_lbl 1718758 `"Rio Sono"', add
label define br10a_muni5yr_lbl 1718808 `"Sampaio"', add
label define br10a_muni5yr_lbl 1718840 `"Sandol�ndia"', add
label define br10a_muni5yr_lbl 1718865 `"Santa F� do Araguaia"', add
label define br10a_muni5yr_lbl 1718881 `"Santa Maria do Tocantins"', add
label define br10a_muni5yr_lbl 1718899 `"Santa Rita do Tocantins"', add
label define br10a_muni5yr_lbl 1718907 `"Santa Rosa do Tocantins"', add
label define br10a_muni5yr_lbl 1719004 `"Santa Tereza do Tocantins"', add
label define br10a_muni5yr_lbl 1720002 `"Santa Terezinha do Tocantins"', add
label define br10a_muni5yr_lbl 1720101 `"S�o Bento do Tocantins"', add
label define br10a_muni5yr_lbl 1720150 `"S�o F�lix do Tocantins"', add
label define br10a_muni5yr_lbl 1720200 `"S�o Miguel do Tocantins"', add
label define br10a_muni5yr_lbl 1720259 `"S�o Salvador do Tocantins"', add
label define br10a_muni5yr_lbl 1720309 `"S�o Sebasti�o do Tocantins"', add
label define br10a_muni5yr_lbl 1720499 `"S�o Val�rio"', add
label define br10a_muni5yr_lbl 1720655 `"Silvan�polis"', add
label define br10a_muni5yr_lbl 1720804 `"S�tio Novo do Tocantins"', add
label define br10a_muni5yr_lbl 1720853 `"Sucupira"', add
label define br10a_muni5yr_lbl 1720903 `"Taguatinga"', add
label define br10a_muni5yr_lbl 1720937 `"Taipas do Tocantins"', add
label define br10a_muni5yr_lbl 1720978 `"Talism�"', add
label define br10a_muni5yr_lbl 1721000 `"Palmas"', add
label define br10a_muni5yr_lbl 1721109 `"Tocant�nia"', add
label define br10a_muni5yr_lbl 1721208 `"Tocantin�polis"', add
label define br10a_muni5yr_lbl 1721257 `"Tupirama"', add
label define br10a_muni5yr_lbl 1721307 `"Tupiratins"', add
label define br10a_muni5yr_lbl 1722081 `"Wanderl�ndia"', add
label define br10a_muni5yr_lbl 1722107 `"Xambio�"', add
label define br10a_muni5yr_lbl 1799999 `"Tocantins, municipality unknown"', add
label define br10a_muni5yr_lbl 2100055 `"A�ail�ndia"', add
label define br10a_muni5yr_lbl 2100105 `"Afonso Cunha"', add
label define br10a_muni5yr_lbl 2100154 `"�gua Doce do Maranh�o"', add
label define br10a_muni5yr_lbl 2100204 `"Alc�ntara"', add
label define br10a_muni5yr_lbl 2100303 `"Aldeias Altas"', add
label define br10a_muni5yr_lbl 2100402 `"Altamira do Maranh�o"', add
label define br10a_muni5yr_lbl 2100436 `"Alto Alegre do Maranh�o"', add
label define br10a_muni5yr_lbl 2100477 `"Alto Alegre do Pindar�"', add
label define br10a_muni5yr_lbl 2100501 `"Alto Parna�ba"', add
label define br10a_muni5yr_lbl 2100550 `"Amap� do Maranh�o"', add
label define br10a_muni5yr_lbl 2100600 `"Amarante do Maranh�o"', add
label define br10a_muni5yr_lbl 2100709 `"Anajatuba"', add
label define br10a_muni5yr_lbl 2100808 `"Anapurus"', add
label define br10a_muni5yr_lbl 2100832 `"Apicum-A�u"', add
label define br10a_muni5yr_lbl 2100873 `"Araguan�"', add
label define br10a_muni5yr_lbl 2100907 `"Araioses"', add
label define br10a_muni5yr_lbl 2100956 `"Arame"', add
label define br10a_muni5yr_lbl 2101004 `"Arari"', add
label define br10a_muni5yr_lbl 2101103 `"Axix�"', add
label define br10a_muni5yr_lbl 2101202 `"Bacabal"', add
label define br10a_muni5yr_lbl 2101251 `"Bacabeira"', add
label define br10a_muni5yr_lbl 2101301 `"Bacuri"', add
label define br10a_muni5yr_lbl 2101350 `"Bacurituba"', add
label define br10a_muni5yr_lbl 2101400 `"Balsas"', add
label define br10a_muni5yr_lbl 2101509 `"Bar�o de Graja�"', add
label define br10a_muni5yr_lbl 2101608 `"Barra do Corda"', add
label define br10a_muni5yr_lbl 2101707 `"Barreirinhas"', add
label define br10a_muni5yr_lbl 2101731 `"Bel�gua"', add
label define br10a_muni5yr_lbl 2101772 `"Bela Vista do Maranh�o"', add
label define br10a_muni5yr_lbl 2101806 `"Benedito Leite"', add
label define br10a_muni5yr_lbl 2101905 `"Bequim�o"', add
label define br10a_muni5yr_lbl 2101939 `"Bernardo do Mearim"', add
label define br10a_muni5yr_lbl 2101970 `"Boa Vista do Gurupi"', add
label define br10a_muni5yr_lbl 2102002 `"Bom Jardim"', add
label define br10a_muni5yr_lbl 2102036 `"Bom Jesus das Selvas"', add
label define br10a_muni5yr_lbl 2102077 `"Bom Lugar"', add
label define br10a_muni5yr_lbl 2102101 `"Brejo"', add
label define br10a_muni5yr_lbl 2102150 `"Brejo de Areia"', add
label define br10a_muni5yr_lbl 2102200 `"Buriti"', add
label define br10a_muni5yr_lbl 2102309 `"Buriti Bravo"', add
label define br10a_muni5yr_lbl 2102325 `"Buriticupu"', add
label define br10a_muni5yr_lbl 2102358 `"Buritirana"', add
label define br10a_muni5yr_lbl 2102374 `"Cachoeira Grande"', add
label define br10a_muni5yr_lbl 2102408 `"Cajapi�"', add
label define br10a_muni5yr_lbl 2102507 `"Cajari"', add
label define br10a_muni5yr_lbl 2102556 `"Campestre do Maranh�o"', add
label define br10a_muni5yr_lbl 2102606 `"C�ndido Mendes"', add
label define br10a_muni5yr_lbl 2102705 `"Cantanhede"', add
label define br10a_muni5yr_lbl 2102754 `"Capinzal do Norte"', add
label define br10a_muni5yr_lbl 2102804 `"Carolina"', add
label define br10a_muni5yr_lbl 2102903 `"Carutapera"', add
label define br10a_muni5yr_lbl 2103000 `"Caxias"', add
label define br10a_muni5yr_lbl 2103109 `"Cedral"', add
label define br10a_muni5yr_lbl 2103125 `"Central do Maranh�o"', add
label define br10a_muni5yr_lbl 2103158 `"Centro do Guilherme"', add
label define br10a_muni5yr_lbl 2103174 `"Centro Novo do Maranh�o"', add
label define br10a_muni5yr_lbl 2103208 `"Chapadinha"', add
label define br10a_muni5yr_lbl 2103257 `"Cidel�ndia"', add
label define br10a_muni5yr_lbl 2103307 `"Cod�"', add
label define br10a_muni5yr_lbl 2103406 `"Coelho Neto"', add
label define br10a_muni5yr_lbl 2103505 `"Colinas"', add
label define br10a_muni5yr_lbl 2103554 `"Concei��o do Lago-A�u"', add
label define br10a_muni5yr_lbl 2103604 `"Coroat�"', add
label define br10a_muni5yr_lbl 2103703 `"Cururupu"', add
label define br10a_muni5yr_lbl 2103752 `"Davin�polis"', add
label define br10a_muni5yr_lbl 2103802 `"Dom Pedro"', add
label define br10a_muni5yr_lbl 2103901 `"Duque Bacelar"', add
label define br10a_muni5yr_lbl 2104008 `"Esperantin�polis"', add
label define br10a_muni5yr_lbl 2104057 `"Estreito"', add
label define br10a_muni5yr_lbl 2104073 `"Feira Nova do Maranh�o"', add
label define br10a_muni5yr_lbl 2104081 `"Fernando Falc�o"', add
label define br10a_muni5yr_lbl 2104099 `"Formosa da Serra Negra"', add
label define br10a_muni5yr_lbl 2104107 `"Fortaleza dos Nogueiras"', add
label define br10a_muni5yr_lbl 2104206 `"Fortuna"', add
label define br10a_muni5yr_lbl 2104305 `"Godofredo Viana"', add
label define br10a_muni5yr_lbl 2104404 `"Gon�alves Dias"', add
label define br10a_muni5yr_lbl 2104503 `"Governador Archer"', add
label define br10a_muni5yr_lbl 2104552 `"Governador Edison Lob�o"', add
label define br10a_muni5yr_lbl 2104602 `"Governador Eug�nio Barros"', add
label define br10a_muni5yr_lbl 2104628 `"Governador Luiz Rocha"', add
label define br10a_muni5yr_lbl 2104651 `"Governador Newton Bello"', add
label define br10a_muni5yr_lbl 2104677 `"Governador Nunes Freire"', add
label define br10a_muni5yr_lbl 2104701 `"Gra�a Aranha"', add
label define br10a_muni5yr_lbl 2104800 `"Graja�"', add
label define br10a_muni5yr_lbl 2104909 `"Guimar�es"', add
label define br10a_muni5yr_lbl 2105005 `"Humberto de Campos"', add
label define br10a_muni5yr_lbl 2105104 `"Icatu"', add
label define br10a_muni5yr_lbl 2105153 `"Igarap� do Meio"', add
label define br10a_muni5yr_lbl 2105203 `"Igarap� Grande"', add
label define br10a_muni5yr_lbl 2105302 `"Imperatriz"', add
label define br10a_muni5yr_lbl 2105351 `"Itaipava do Graja�"', add
label define br10a_muni5yr_lbl 2105401 `"Itapecuru Mirim"', add
label define br10a_muni5yr_lbl 2105427 `"Itinga do Maranh�o"', add
label define br10a_muni5yr_lbl 2105450 `"Jatob�"', add
label define br10a_muni5yr_lbl 2105476 `"Jenipapo dos Vieiras"', add
label define br10a_muni5yr_lbl 2105500 `"Jo�o Lisboa"', add
label define br10a_muni5yr_lbl 2105609 `"Josel�ndia"', add
label define br10a_muni5yr_lbl 2105658 `"Junco do Maranh�o"', add
label define br10a_muni5yr_lbl 2105708 `"Lago da Pedra"', add
label define br10a_muni5yr_lbl 2105807 `"Lago do Junco"', add
label define br10a_muni5yr_lbl 2105906 `"Lago Verde"', add
label define br10a_muni5yr_lbl 2105922 `"Lagoa do Mato"', add
label define br10a_muni5yr_lbl 2105948 `"Lago dos Rodrigues"', add
label define br10a_muni5yr_lbl 2105963 `"Lagoa Grande do Maranh�o"', add
label define br10a_muni5yr_lbl 2105989 `"Lajeado Novo"', add
label define br10a_muni5yr_lbl 2106003 `"Lima Campos"', add
label define br10a_muni5yr_lbl 2106102 `"Loreto"', add
label define br10a_muni5yr_lbl 2106201 `"Lu�s Domingues"', add
label define br10a_muni5yr_lbl 2106300 `"Magalh�es de Almeida"', add
label define br10a_muni5yr_lbl 2106326 `"Maraca�um�"', add
label define br10a_muni5yr_lbl 2106359 `"Maraj� do Sena"', add
label define br10a_muni5yr_lbl 2106375 `"Maranh�ozinho"', add
label define br10a_muni5yr_lbl 2106409 `"Mata Roma"', add
label define br10a_muni5yr_lbl 2106508 `"Matinha"', add
label define br10a_muni5yr_lbl 2106607 `"Mat�es"', add
label define br10a_muni5yr_lbl 2106631 `"Mat�es do Norte"', add
label define br10a_muni5yr_lbl 2106672 `"Milagres do Maranh�o"', add
label define br10a_muni5yr_lbl 2106706 `"Mirador"', add
label define br10a_muni5yr_lbl 2106755 `"Miranda do Norte"', add
label define br10a_muni5yr_lbl 2106805 `"Mirinzal"', add
label define br10a_muni5yr_lbl 2106904 `"Mon��o"', add
label define br10a_muni5yr_lbl 2107001 `"Montes Altos"', add
label define br10a_muni5yr_lbl 2107100 `"Morros"', add
label define br10a_muni5yr_lbl 2107209 `"Nina Rodrigues"', add
label define br10a_muni5yr_lbl 2107258 `"Nova Colinas"', add
label define br10a_muni5yr_lbl 2107308 `"Nova Iorque"', add
label define br10a_muni5yr_lbl 2107357 `"Nova Olinda do Maranh�o"', add
label define br10a_muni5yr_lbl 2107407 `"Olho d'�gua das Cunh�s"', add
label define br10a_muni5yr_lbl 2107456 `"Olinda Nova do Maranh�o"', add
label define br10a_muni5yr_lbl 2107506 `"Pa�o do Lumiar"', add
label define br10a_muni5yr_lbl 2107605 `"Palmeir�ndia"', add
label define br10a_muni5yr_lbl 2107704 `"Paraibano"', add
label define br10a_muni5yr_lbl 2107803 `"Parnarama"', add
label define br10a_muni5yr_lbl 2107902 `"Passagem Franca"', add
label define br10a_muni5yr_lbl 2108009 `"Pastos Bons"', add
label define br10a_muni5yr_lbl 2108058 `"Paulino Neves"', add
label define br10a_muni5yr_lbl 2108108 `"Paulo Ramos"', add
label define br10a_muni5yr_lbl 2108207 `"Pedreiras"', add
label define br10a_muni5yr_lbl 2108256 `"Pedro do Ros�rio"', add
label define br10a_muni5yr_lbl 2108306 `"Penalva"', add
label define br10a_muni5yr_lbl 2108405 `"Peri Mirim"', add
label define br10a_muni5yr_lbl 2108454 `"Peritor�"', add
label define br10a_muni5yr_lbl 2108504 `"Pindar�-Mirim"', add
label define br10a_muni5yr_lbl 2108603 `"Pinheiro"', add
label define br10a_muni5yr_lbl 2108702 `"Pio XII"', add
label define br10a_muni5yr_lbl 2108801 `"Pirapemas"', add
label define br10a_muni5yr_lbl 2108900 `"Po��o de Pedras"', add
label define br10a_muni5yr_lbl 2109007 `"Porto Franco"', add
label define br10a_muni5yr_lbl 2109056 `"Porto Rico do Maranh�o"', add
label define br10a_muni5yr_lbl 2109106 `"Presidente Dutra"', add
label define br10a_muni5yr_lbl 2109205 `"Presidente Juscelino"', add
label define br10a_muni5yr_lbl 2109239 `"Presidente M�dici"', add
label define br10a_muni5yr_lbl 2109270 `"Presidente Sarney"', add
label define br10a_muni5yr_lbl 2109304 `"Presidente Vargas"', add
label define br10a_muni5yr_lbl 2109403 `"Primeira Cruz"', add
label define br10a_muni5yr_lbl 2109452 `"Raposa"', add
label define br10a_muni5yr_lbl 2109502 `"Riach�o"', add
label define br10a_muni5yr_lbl 2109551 `"Ribamar Fiquene"', add
label define br10a_muni5yr_lbl 2109601 `"Ros�rio"', add
label define br10a_muni5yr_lbl 2109700 `"Samba�ba"', add
label define br10a_muni5yr_lbl 2109759 `"Santa Filomena do Maranh�o"', add
label define br10a_muni5yr_lbl 2109809 `"Santa Helena"', add
label define br10a_muni5yr_lbl 2109908 `"Santa In�s"', add
label define br10a_muni5yr_lbl 2110005 `"Santa Luzia"', add
label define br10a_muni5yr_lbl 2110039 `"Santa Luzia do Paru�"', add
label define br10a_muni5yr_lbl 2110104 `"Santa Quit�ria do Maranh�o"', add
label define br10a_muni5yr_lbl 2110203 `"Santa Rita"', add
label define br10a_muni5yr_lbl 2110237 `"Santana do Maranh�o"', add
label define br10a_muni5yr_lbl 2110278 `"Santo Amaro do Maranh�o"', add
label define br10a_muni5yr_lbl 2110302 `"Santo Ant�nio dos Lopes"', add
label define br10a_muni5yr_lbl 2110401 `"S�o Benedito do Rio Preto"', add
label define br10a_muni5yr_lbl 2110500 `"S�o Bento"', add
label define br10a_muni5yr_lbl 2110609 `"S�o Bernardo"', add
label define br10a_muni5yr_lbl 2110658 `"S�o Domingos do Azeit�o"', add
label define br10a_muni5yr_lbl 2110708 `"S�o Domingos do Maranh�o"', add
label define br10a_muni5yr_lbl 2110807 `"S�o F�lix de Balsas"', add
label define br10a_muni5yr_lbl 2110856 `"S�o Francisco do Brej�o"', add
label define br10a_muni5yr_lbl 2110906 `"S�o Francisco do Maranh�o"', add
label define br10a_muni5yr_lbl 2111003 `"S�o Jo�o Batista"', add
label define br10a_muni5yr_lbl 2111029 `"S�o Jo�o do Car�"', add
label define br10a_muni5yr_lbl 2111052 `"S�o Jo�o do Para�so"', add
label define br10a_muni5yr_lbl 2111078 `"S�o Jo�o do Soter"', add
label define br10a_muni5yr_lbl 2111102 `"S�o Jo�o dos Patos"', add
label define br10a_muni5yr_lbl 2111201 `"S�o Jos� de Ribamar"', add
label define br10a_muni5yr_lbl 2111250 `"S�o Jos� dos Bas�lios"', add
label define br10a_muni5yr_lbl 2111300 `"S�o Lu�s"', add
label define br10a_muni5yr_lbl 2111409 `"S�o Lu�s Gonzaga do Maranh�o"', add
label define br10a_muni5yr_lbl 2111508 `"S�o Mateus do Maranh�o"', add
label define br10a_muni5yr_lbl 2111532 `"S�o Pedro da �gua Branca"', add
label define br10a_muni5yr_lbl 2111573 `"S�o Pedro dos Crentes"', add
label define br10a_muni5yr_lbl 2111607 `"S�o Raimundo das Mangabeiras"', add
label define br10a_muni5yr_lbl 2111631 `"S�o Raimundo do Doca Bezerra"', add
label define br10a_muni5yr_lbl 2111672 `"S�o Roberto"', add
label define br10a_muni5yr_lbl 2111706 `"S�o Vicente Ferrer"', add
label define br10a_muni5yr_lbl 2111722 `"Satubinha"', add
label define br10a_muni5yr_lbl 2111748 `"Senador Alexandre Costa"', add
label define br10a_muni5yr_lbl 2111763 `"Senador La Rocque"', add
label define br10a_muni5yr_lbl 2111789 `"Serrano do Maranh�o"', add
label define br10a_muni5yr_lbl 2111805 `"S�tio Novo"', add
label define br10a_muni5yr_lbl 2111904 `"Sucupira do Norte"', add
label define br10a_muni5yr_lbl 2111953 `"Sucupira do Riach�o"', add
label define br10a_muni5yr_lbl 2112001 `"Tasso Fragoso"', add
label define br10a_muni5yr_lbl 2112100 `"Timbiras"', add
label define br10a_muni5yr_lbl 2112209 `"Timon"', add
label define br10a_muni5yr_lbl 2112233 `"Trizidela do Vale"', add
label define br10a_muni5yr_lbl 2112274 `"Tufil�ndia"', add
label define br10a_muni5yr_lbl 2112308 `"Tuntum"', add
label define br10a_muni5yr_lbl 2112407 `"Turia�u"', add
label define br10a_muni5yr_lbl 2112456 `"Turil�ndia"', add
label define br10a_muni5yr_lbl 2112506 `"Tut�ia"', add
label define br10a_muni5yr_lbl 2112605 `"Urbano Santos"', add
label define br10a_muni5yr_lbl 2112704 `"Vargem Grande"', add
label define br10a_muni5yr_lbl 2112803 `"Viana"', add
label define br10a_muni5yr_lbl 2112852 `"Vila Nova dos Mart�rios"', add
label define br10a_muni5yr_lbl 2112902 `"Vit�ria do Mearim"', add
label define br10a_muni5yr_lbl 2113009 `"Vitorino Freire"', add
label define br10a_muni5yr_lbl 2114007 `"Z� Doca"', add
label define br10a_muni5yr_lbl 2199999 `"Maranh�o, municipality unknown"', add
label define br10a_muni5yr_lbl 2200053 `"Acau�"', add
label define br10a_muni5yr_lbl 2200103 `"Agricol�ndia"', add
label define br10a_muni5yr_lbl 2200202 `"�gua Branca"', add
label define br10a_muni5yr_lbl 2200251 `"Alagoinha do Piau�"', add
label define br10a_muni5yr_lbl 2200277 `"Alegrete do Piau�"', add
label define br10a_muni5yr_lbl 2200301 `"Alto Long�"', add
label define br10a_muni5yr_lbl 2200400 `"Altos"', add
label define br10a_muni5yr_lbl 2200459 `"Alvorada do Gurgu�ia"', add
label define br10a_muni5yr_lbl 2200509 `"Amarante"', add
label define br10a_muni5yr_lbl 2200608 `"Angical do Piau�"', add
label define br10a_muni5yr_lbl 2200707 `"An�sio de Abreu"', add
label define br10a_muni5yr_lbl 2200806 `"Ant�nio Almeida"', add
label define br10a_muni5yr_lbl 2200905 `"Aroazes"', add
label define br10a_muni5yr_lbl 2200954 `"Aroeiras do Itaim"', add
label define br10a_muni5yr_lbl 2201002 `"Arraial"', add
label define br10a_muni5yr_lbl 2201051 `"Assun��o do Piau�"', add
label define br10a_muni5yr_lbl 2201101 `"Avelino Lopes"', add
label define br10a_muni5yr_lbl 2201150 `"Baixa Grande do Ribeiro"', add
label define br10a_muni5yr_lbl 2201176 `"Barra D'Alc�ntara"', add
label define br10a_muni5yr_lbl 2201200 `"Barras"', add
label define br10a_muni5yr_lbl 2201309 `"Barreiras do Piau�"', add
label define br10a_muni5yr_lbl 2201408 `"Barro Duro"', add
label define br10a_muni5yr_lbl 2201507 `"Batalha"', add
label define br10a_muni5yr_lbl 2201556 `"Bela Vista do Piau�"', add
label define br10a_muni5yr_lbl 2201572 `"Bel�m do Piau�"', add
label define br10a_muni5yr_lbl 2201606 `"Beneditinos"', add
label define br10a_muni5yr_lbl 2201705 `"Bertol�nia"', add
label define br10a_muni5yr_lbl 2201739 `"Bet�nia do Piau�"', add
label define br10a_muni5yr_lbl 2201770 `"Boa Hora"', add
label define br10a_muni5yr_lbl 2201804 `"Bocaina"', add
label define br10a_muni5yr_lbl 2201903 `"Bom Jesus"', add
label define br10a_muni5yr_lbl 2201919 `"Bom Princ�pio do Piau�"', add
label define br10a_muni5yr_lbl 2201929 `"Bonfim do Piau�"', add
label define br10a_muni5yr_lbl 2201945 `"Boqueir�o do Piau�"', add
label define br10a_muni5yr_lbl 2201960 `"Brasileira"', add
label define br10a_muni5yr_lbl 2201988 `"Brejo do Piau�"', add
label define br10a_muni5yr_lbl 2202000 `"Buriti dos Lopes"', add
label define br10a_muni5yr_lbl 2202026 `"Buriti dos Montes"', add
label define br10a_muni5yr_lbl 2202059 `"Cabeceiras do Piau�"', add
label define br10a_muni5yr_lbl 2202075 `"Cajazeiras do Piau�"', add
label define br10a_muni5yr_lbl 2202083 `"Cajueiro da Praia"', add
label define br10a_muni5yr_lbl 2202091 `"Caldeir�o Grande do Piau�"', add
label define br10a_muni5yr_lbl 2202109 `"Campinas do Piau�"', add
label define br10a_muni5yr_lbl 2202117 `"Campo Alegre do Fidalgo"', add
label define br10a_muni5yr_lbl 2202133 `"Campo Grande do Piau�"', add
label define br10a_muni5yr_lbl 2202174 `"Campo Largo do Piau�"', add
label define br10a_muni5yr_lbl 2202208 `"Campo Maior"', add
label define br10a_muni5yr_lbl 2202251 `"Canavieira"', add
label define br10a_muni5yr_lbl 2202307 `"Canto do Buriti"', add
label define br10a_muni5yr_lbl 2202406 `"Capit�o de Campos"', add
label define br10a_muni5yr_lbl 2202455 `"Capit�o Gerv�sio Oliveira"', add
label define br10a_muni5yr_lbl 2202505 `"Caracol"', add
label define br10a_muni5yr_lbl 2202539 `"Cara�bas do Piau�"', add
label define br10a_muni5yr_lbl 2202554 `"Caridade do Piau�"', add
label define br10a_muni5yr_lbl 2202604 `"Castelo do Piau�"', add
label define br10a_muni5yr_lbl 2202653 `"Caxing�"', add
label define br10a_muni5yr_lbl 2202703 `"Cocal"', add
label define br10a_muni5yr_lbl 2202711 `"Cocal de Telha"', add
label define br10a_muni5yr_lbl 2202729 `"Cocal dos Alves"', add
label define br10a_muni5yr_lbl 2202737 `"Coivaras"', add
label define br10a_muni5yr_lbl 2202752 `"Col�nia do Gurgu�ia"', add
label define br10a_muni5yr_lbl 2202778 `"Col�nia do Piau�"', add
label define br10a_muni5yr_lbl 2202802 `"Concei��o do Canind�"', add
label define br10a_muni5yr_lbl 2202851 `"Coronel Jos� Dias"', add
label define br10a_muni5yr_lbl 2202901 `"Corrente"', add
label define br10a_muni5yr_lbl 2203008 `"Cristal�ndia do Piau�"', add
label define br10a_muni5yr_lbl 2203107 `"Cristino Castro"', add
label define br10a_muni5yr_lbl 2203206 `"Curimat�"', add
label define br10a_muni5yr_lbl 2203230 `"Currais"', add
label define br10a_muni5yr_lbl 2203255 `"Curralinhos"', add
label define br10a_muni5yr_lbl 2203271 `"Curral Novo do Piau�"', add
label define br10a_muni5yr_lbl 2203305 `"Demerval Lob�o"', add
label define br10a_muni5yr_lbl 2203354 `"Dirceu Arcoverde"', add
label define br10a_muni5yr_lbl 2203404 `"Dom Expedito Lopes"', add
label define br10a_muni5yr_lbl 2203420 `"Domingos Mour�o"', add
label define br10a_muni5yr_lbl 2203453 `"Dom Inoc�ncio"', add
label define br10a_muni5yr_lbl 2203503 `"Elesb�o Veloso"', add
label define br10a_muni5yr_lbl 2203602 `"Eliseu Martins"', add
label define br10a_muni5yr_lbl 2203701 `"Esperantina"', add
label define br10a_muni5yr_lbl 2203750 `"Fartura do Piau�"', add
label define br10a_muni5yr_lbl 2203800 `"Flores do Piau�"', add
label define br10a_muni5yr_lbl 2203859 `"Floresta do Piau�"', add
label define br10a_muni5yr_lbl 2203909 `"Floriano"', add
label define br10a_muni5yr_lbl 2204006 `"Francin�polis"', add
label define br10a_muni5yr_lbl 2204105 `"Francisco Ayres"', add
label define br10a_muni5yr_lbl 2204154 `"Francisco Macedo"', add
label define br10a_muni5yr_lbl 2204204 `"Francisco Santos"', add
label define br10a_muni5yr_lbl 2204303 `"Fronteiras"', add
label define br10a_muni5yr_lbl 2204352 `"Geminiano"', add
label define br10a_muni5yr_lbl 2204402 `"Gilbu�s"', add
label define br10a_muni5yr_lbl 2204501 `"Guadalupe"', add
label define br10a_muni5yr_lbl 2204550 `"Guaribas"', add
label define br10a_muni5yr_lbl 2204600 `"Hugo Napole�o"', add
label define br10a_muni5yr_lbl 2204659 `"Ilha Grande"', add
label define br10a_muni5yr_lbl 2204709 `"Inhuma"', add
label define br10a_muni5yr_lbl 2204808 `"Ipiranga do Piau�"', add
label define br10a_muni5yr_lbl 2204907 `"Isa�as Coelho"', add
label define br10a_muni5yr_lbl 2205003 `"Itain�polis"', add
label define br10a_muni5yr_lbl 2205102 `"Itaueira"', add
label define br10a_muni5yr_lbl 2205151 `"Jacobina do Piau�"', add
label define br10a_muni5yr_lbl 2205201 `"Jaic�s"', add
label define br10a_muni5yr_lbl 2205250 `"Jardim do Mulato"', add
label define br10a_muni5yr_lbl 2205276 `"Jatob� do Piau�"', add
label define br10a_muni5yr_lbl 2205300 `"Jerumenha"', add
label define br10a_muni5yr_lbl 2205359 `"Jo�o Costa"', add
label define br10a_muni5yr_lbl 2205409 `"Joaquim Pires"', add
label define br10a_muni5yr_lbl 2205458 `"Joca Marques"', add
label define br10a_muni5yr_lbl 2205508 `"Jos� de Freitas"', add
label define br10a_muni5yr_lbl 2205516 `"Juazeiro do Piau�"', add
label define br10a_muni5yr_lbl 2205524 `"J�lio Borges"', add
label define br10a_muni5yr_lbl 2205532 `"Jurema"', add
label define br10a_muni5yr_lbl 2205540 `"Lagoinha do Piau�"', add
label define br10a_muni5yr_lbl 2205557 `"Lagoa Alegre"', add
label define br10a_muni5yr_lbl 2205565 `"Lagoa do Barro do Piau�"', add
label define br10a_muni5yr_lbl 2205573 `"Lagoa de S�o Francisco"', add
label define br10a_muni5yr_lbl 2205581 `"Lagoa do Piau�"', add
label define br10a_muni5yr_lbl 2205599 `"Lagoa do S�tio"', add
label define br10a_muni5yr_lbl 2205607 `"Landri Sales"', add
label define br10a_muni5yr_lbl 2205706 `"Lu�s Correia"', add
label define br10a_muni5yr_lbl 2205805 `"Luzil�ndia"', add
label define br10a_muni5yr_lbl 2205854 `"Madeiro"', add
label define br10a_muni5yr_lbl 2205904 `"Manoel Em�dio"', add
label define br10a_muni5yr_lbl 2205953 `"Marcol�ndia"', add
label define br10a_muni5yr_lbl 2206001 `"Marcos Parente"', add
label define br10a_muni5yr_lbl 2206050 `"Massap� do Piau�"', add
label define br10a_muni5yr_lbl 2206100 `"Matias Ol�mpio"', add
label define br10a_muni5yr_lbl 2206209 `"Miguel Alves"', add
label define br10a_muni5yr_lbl 2206308 `"Miguel Le�o"', add
label define br10a_muni5yr_lbl 2206357 `"Milton Brand�o"', add
label define br10a_muni5yr_lbl 2206407 `"Monsenhor Gil"', add
label define br10a_muni5yr_lbl 2206506 `"Monsenhor Hip�lito"', add
label define br10a_muni5yr_lbl 2206605 `"Monte Alegre do Piau�"', add
label define br10a_muni5yr_lbl 2206654 `"Morro Cabe�a no Tempo"', add
label define br10a_muni5yr_lbl 2206670 `"Morro do Chap�u do Piau�"', add
label define br10a_muni5yr_lbl 2206696 `"Murici dos Portelas"', add
label define br10a_muni5yr_lbl 2206704 `"Nazar� do Piau�"', add
label define br10a_muni5yr_lbl 2206720 `"Naz�ria"', add
label define br10a_muni5yr_lbl 2206753 `"Nossa Senhora de Nazar�"', add
label define br10a_muni5yr_lbl 2206803 `"Nossa Senhora dos Rem�dios"', add
label define br10a_muni5yr_lbl 2206902 `"Novo Oriente do Piau�"', add
label define br10a_muni5yr_lbl 2206951 `"Novo Santo Ant�nio"', add
label define br10a_muni5yr_lbl 2207009 `"Oeiras"', add
label define br10a_muni5yr_lbl 2207108 `"Olho D'�gua do Piau�"', add
label define br10a_muni5yr_lbl 2207207 `"Padre Marcos"', add
label define br10a_muni5yr_lbl 2207306 `"Paes Landim"', add
label define br10a_muni5yr_lbl 2207355 `"Paje� do Piau�"', add
label define br10a_muni5yr_lbl 2207405 `"Palmeira do Piau�"', add
label define br10a_muni5yr_lbl 2207504 `"Palmeirais"', add
label define br10a_muni5yr_lbl 2207553 `"Paquet�"', add
label define br10a_muni5yr_lbl 2207603 `"Parnagu�"', add
label define br10a_muni5yr_lbl 2207702 `"Parna�ba"', add
label define br10a_muni5yr_lbl 2207751 `"Passagem Franca do Piau�"', add
label define br10a_muni5yr_lbl 2207777 `"Patos do Piau�"', add
label define br10a_muni5yr_lbl 2207793 `"Pau D'Arco do Piau�"', add
label define br10a_muni5yr_lbl 2207801 `"Paulistana"', add
label define br10a_muni5yr_lbl 2207850 `"Pavussu"', add
label define br10a_muni5yr_lbl 2207900 `"Pedro II"', add
label define br10a_muni5yr_lbl 2207934 `"Pedro Laurentino"', add
label define br10a_muni5yr_lbl 2207959 `"Nova Santa Rita"', add
label define br10a_muni5yr_lbl 2208007 `"Picos"', add
label define br10a_muni5yr_lbl 2208106 `"Pimenteiras"', add
label define br10a_muni5yr_lbl 2208205 `"Pio IX"', add
label define br10a_muni5yr_lbl 2208304 `"Piracuruca"', add
label define br10a_muni5yr_lbl 2208403 `"Piripiri"', add
label define br10a_muni5yr_lbl 2208502 `"Porto"', add
label define br10a_muni5yr_lbl 2208551 `"Porto Alegre do Piau�"', add
label define br10a_muni5yr_lbl 2208601 `"Prata do Piau�"', add
label define br10a_muni5yr_lbl 2208650 `"Queimada Nova"', add
label define br10a_muni5yr_lbl 2208700 `"Reden��o do Gurgu�ia"', add
label define br10a_muni5yr_lbl 2208809 `"Regenera��o"', add
label define br10a_muni5yr_lbl 2208858 `"Riacho Frio"', add
label define br10a_muni5yr_lbl 2208874 `"Ribeira do Piau�"', add
label define br10a_muni5yr_lbl 2208908 `"Ribeiro Gon�alves"', add
label define br10a_muni5yr_lbl 2209005 `"Rio Grande do Piau�"', add
label define br10a_muni5yr_lbl 2209104 `"Santa Cruz do Piau�"', add
label define br10a_muni5yr_lbl 2209153 `"Santa Cruz dos Milagres"', add
label define br10a_muni5yr_lbl 2209203 `"Santa Filomena"', add
label define br10a_muni5yr_lbl 2209302 `"Santa Luz"', add
label define br10a_muni5yr_lbl 2209351 `"Santana do Piau�"', add
label define br10a_muni5yr_lbl 2209377 `"Santa Rosa do Piau�"', add
label define br10a_muni5yr_lbl 2209401 `"Santo Ant�nio de Lisboa"', add
label define br10a_muni5yr_lbl 2209450 `"Santo Ant�nio dos Milagres"', add
label define br10a_muni5yr_lbl 2209500 `"Santo In�cio do Piau�"', add
label define br10a_muni5yr_lbl 2209559 `"S�o Braz do Piau�"', add
label define br10a_muni5yr_lbl 2209609 `"S�o F�lix do Piau�"', add
label define br10a_muni5yr_lbl 2209658 `"S�o Francisco de Assis do Piau�"', add
label define br10a_muni5yr_lbl 2209708 `"S�o Francisco do Piau�"', add
label define br10a_muni5yr_lbl 2209757 `"S�o Gon�alo do Gurgu�ia"', add
label define br10a_muni5yr_lbl 2209807 `"S�o Gon�alo do Piau�"', add
label define br10a_muni5yr_lbl 2209856 `"S�o Jo�o da Canabrava"', add
label define br10a_muni5yr_lbl 2209872 `"S�o Jo�o da Fronteira"', add
label define br10a_muni5yr_lbl 2209906 `"S�o Jo�o da Serra"', add
label define br10a_muni5yr_lbl 2209955 `"S�o Jo�o da Varjota"', add
label define br10a_muni5yr_lbl 2209971 `"S�o Jo�o do Arraial"', add
label define br10a_muni5yr_lbl 2210003 `"S�o Jo�o do Piau�"', add
label define br10a_muni5yr_lbl 2210052 `"S�o Jos� do Divino"', add
label define br10a_muni5yr_lbl 2210102 `"S�o Jos� do Peixe"', add
label define br10a_muni5yr_lbl 2210201 `"S�o Jos� do Piau�"', add
label define br10a_muni5yr_lbl 2210300 `"S�o Juli�o"', add
label define br10a_muni5yr_lbl 2210359 `"S�o Louren�o do Piau�"', add
label define br10a_muni5yr_lbl 2210375 `"S�o Luis do Piau�"', add
label define br10a_muni5yr_lbl 2210383 `"S�o Miguel da Baixa Grande"', add
label define br10a_muni5yr_lbl 2210391 `"S�o Miguel do Fidalgo"', add
label define br10a_muni5yr_lbl 2210409 `"S�o Miguel do Tapuio"', add
label define br10a_muni5yr_lbl 2210508 `"S�o Pedro do Piau�"', add
label define br10a_muni5yr_lbl 2210607 `"S�o Raimundo Nonato"', add
label define br10a_muni5yr_lbl 2210623 `"Sebasti�o Barros"', add
label define br10a_muni5yr_lbl 2210631 `"Sebasti�o Leal"', add
label define br10a_muni5yr_lbl 2210656 `"Sigefredo Pacheco"', add
label define br10a_muni5yr_lbl 2210706 `"Sim�es"', add
label define br10a_muni5yr_lbl 2210805 `"Simpl�cio Mendes"', add
label define br10a_muni5yr_lbl 2210904 `"Socorro do Piau�"', add
label define br10a_muni5yr_lbl 2210938 `"Sussuapara"', add
label define br10a_muni5yr_lbl 2210953 `"Tamboril do Piau�"', add
label define br10a_muni5yr_lbl 2210979 `"Tanque do Piau�"', add
label define br10a_muni5yr_lbl 2211001 `"Teresina"', add
label define br10a_muni5yr_lbl 2211100 `"Uni�o"', add
label define br10a_muni5yr_lbl 2211209 `"Uru�u�"', add
label define br10a_muni5yr_lbl 2211308 `"Valen�a do Piau�"', add
label define br10a_muni5yr_lbl 2211357 `"V�rzea Branca"', add
label define br10a_muni5yr_lbl 2211407 `"V�rzea Grande"', add
label define br10a_muni5yr_lbl 2211506 `"Vera Mendes"', add
label define br10a_muni5yr_lbl 2211605 `"Vila Nova do Piau�"', add
label define br10a_muni5yr_lbl 2211704 `"Wall Ferraz"', add
label define br10a_muni5yr_lbl 2299999 `"Piau�, municipality unknown"', add
label define br10a_muni5yr_lbl 2300101 `"Abaiara"', add
label define br10a_muni5yr_lbl 2300150 `"Acarape"', add
label define br10a_muni5yr_lbl 2300200 `"Acara�"', add
label define br10a_muni5yr_lbl 2300309 `"Acopiara"', add
label define br10a_muni5yr_lbl 2300408 `"Aiuaba"', add
label define br10a_muni5yr_lbl 2300507 `"Alc�ntaras"', add
label define br10a_muni5yr_lbl 2300606 `"Altaneira"', add
label define br10a_muni5yr_lbl 2300705 `"Alto Santo"', add
label define br10a_muni5yr_lbl 2300754 `"Amontada"', add
label define br10a_muni5yr_lbl 2300804 `"Antonina do Norte"', add
label define br10a_muni5yr_lbl 2300903 `"Apuiar�s"', add
label define br10a_muni5yr_lbl 2301000 `"Aquiraz"', add
label define br10a_muni5yr_lbl 2301109 `"Aracati"', add
label define br10a_muni5yr_lbl 2301208 `"Aracoiaba"', add
label define br10a_muni5yr_lbl 2301257 `"Ararend�"', add
label define br10a_muni5yr_lbl 2301307 `"Araripe"', add
label define br10a_muni5yr_lbl 2301406 `"Aratuba"', add
label define br10a_muni5yr_lbl 2301505 `"Arneiroz"', add
label define br10a_muni5yr_lbl 2301604 `"Assar�"', add
label define br10a_muni5yr_lbl 2301703 `"Aurora"', add
label define br10a_muni5yr_lbl 2301802 `"Baixio"', add
label define br10a_muni5yr_lbl 2301851 `"Banabui�"', add
label define br10a_muni5yr_lbl 2301901 `"Barbalha"', add
label define br10a_muni5yr_lbl 2301950 `"Barreira"', add
label define br10a_muni5yr_lbl 2302008 `"Barro"', add
label define br10a_muni5yr_lbl 2302057 `"Barroquinha"', add
label define br10a_muni5yr_lbl 2302107 `"Baturit�"', add
label define br10a_muni5yr_lbl 2302206 `"Beberibe"', add
label define br10a_muni5yr_lbl 2302305 `"Bela Cruz"', add
label define br10a_muni5yr_lbl 2302404 `"Boa Viagem"', add
label define br10a_muni5yr_lbl 2302503 `"Brejo Santo"', add
label define br10a_muni5yr_lbl 2302602 `"Camocim"', add
label define br10a_muni5yr_lbl 2302701 `"Campos Sales"', add
label define br10a_muni5yr_lbl 2302800 `"Canind�"', add
label define br10a_muni5yr_lbl 2302909 `"Capistrano"', add
label define br10a_muni5yr_lbl 2303006 `"Caridade"', add
label define br10a_muni5yr_lbl 2303105 `"Carir�"', add
label define br10a_muni5yr_lbl 2303204 `"Cariria�u"', add
label define br10a_muni5yr_lbl 2303303 `"Cari�s"', add
label define br10a_muni5yr_lbl 2303402 `"Carnaubal"', add
label define br10a_muni5yr_lbl 2303501 `"Cascavel"', add
label define br10a_muni5yr_lbl 2303600 `"Catarina"', add
label define br10a_muni5yr_lbl 2303659 `"Catunda"', add
label define br10a_muni5yr_lbl 2303709 `"Caucaia"', add
label define br10a_muni5yr_lbl 2303808 `"Cedro"', add
label define br10a_muni5yr_lbl 2303907 `"Chaval"', add
label define br10a_muni5yr_lbl 2303931 `"Chor�"', add
label define br10a_muni5yr_lbl 2303956 `"Chorozinho"', add
label define br10a_muni5yr_lbl 2304004 `"Corea�"', add
label define br10a_muni5yr_lbl 2304103 `"Crate�s"', add
label define br10a_muni5yr_lbl 2304202 `"Crato"', add
label define br10a_muni5yr_lbl 2304236 `"Croat�"', add
label define br10a_muni5yr_lbl 2304251 `"Cruz"', add
label define br10a_muni5yr_lbl 2304269 `"Deputado Irapuan Pinheiro"', add
label define br10a_muni5yr_lbl 2304277 `"Erer�"', add
label define br10a_muni5yr_lbl 2304285 `"Eus�bio"', add
label define br10a_muni5yr_lbl 2304301 `"Farias Brito"', add
label define br10a_muni5yr_lbl 2304350 `"Forquilha"', add
label define br10a_muni5yr_lbl 2304400 `"Fortaleza"', add
label define br10a_muni5yr_lbl 2304459 `"Fortim"', add
label define br10a_muni5yr_lbl 2304509 `"Frecheirinha"', add
label define br10a_muni5yr_lbl 2304608 `"General Sampaio"', add
label define br10a_muni5yr_lbl 2304657 `"Gra�a"', add
label define br10a_muni5yr_lbl 2304707 `"Granja"', add
label define br10a_muni5yr_lbl 2304806 `"Granjeiro"', add
label define br10a_muni5yr_lbl 2304905 `"Groa�ras"', add
label define br10a_muni5yr_lbl 2304954 `"Guai�ba"', add
label define br10a_muni5yr_lbl 2305001 `"Guaraciaba do Norte"', add
label define br10a_muni5yr_lbl 2305100 `"Guaramiranga"', add
label define br10a_muni5yr_lbl 2305209 `"Hidrol�ndia"', add
label define br10a_muni5yr_lbl 2305233 `"Horizonte"', add
label define br10a_muni5yr_lbl 2305266 `"Ibaretama"', add
label define br10a_muni5yr_lbl 2305308 `"Ibiapina"', add
label define br10a_muni5yr_lbl 2305332 `"Ibicuitinga"', add
label define br10a_muni5yr_lbl 2305357 `"Icapu�"', add
label define br10a_muni5yr_lbl 2305407 `"Ic�"', add
label define br10a_muni5yr_lbl 2305506 `"Iguatu"', add
label define br10a_muni5yr_lbl 2305605 `"Independ�ncia"', add
label define br10a_muni5yr_lbl 2305654 `"Ipaporanga"', add
label define br10a_muni5yr_lbl 2305704 `"Ipaumirim"', add
label define br10a_muni5yr_lbl 2305803 `"Ipu"', add
label define br10a_muni5yr_lbl 2305902 `"Ipueiras"', add
label define br10a_muni5yr_lbl 2306009 `"Iracema"', add
label define br10a_muni5yr_lbl 2306108 `"Irau�uba"', add
label define br10a_muni5yr_lbl 2306207 `"Itai�aba"', add
label define br10a_muni5yr_lbl 2306256 `"Itaitinga"', add
label define br10a_muni5yr_lbl 2306306 `"Itapag�"', add
label define br10a_muni5yr_lbl 2306405 `"Itapipoca"', add
label define br10a_muni5yr_lbl 2306504 `"Itapi�na"', add
label define br10a_muni5yr_lbl 2306553 `"Itarema"', add
label define br10a_muni5yr_lbl 2306603 `"Itatira"', add
label define br10a_muni5yr_lbl 2306702 `"Jaguaretama"', add
label define br10a_muni5yr_lbl 2306801 `"Jaguaribara"', add
label define br10a_muni5yr_lbl 2306900 `"Jaguaribe"', add
label define br10a_muni5yr_lbl 2307007 `"Jaguaruana"', add
label define br10a_muni5yr_lbl 2307106 `"Jardim"', add
label define br10a_muni5yr_lbl 2307205 `"Jati"', add
label define br10a_muni5yr_lbl 2307254 `"Jijoca de Jericoacoara"', add
label define br10a_muni5yr_lbl 2307304 `"Juazeiro do Norte"', add
label define br10a_muni5yr_lbl 2307403 `"Juc�s"', add
label define br10a_muni5yr_lbl 2307502 `"Lavras da Mangabeira"', add
label define br10a_muni5yr_lbl 2307601 `"Limoeiro do Norte"', add
label define br10a_muni5yr_lbl 2307635 `"Madalena"', add
label define br10a_muni5yr_lbl 2307650 `"Maracana�"', add
label define br10a_muni5yr_lbl 2307700 `"Maranguape"', add
label define br10a_muni5yr_lbl 2307809 `"Marco"', add
label define br10a_muni5yr_lbl 2307908 `"Martin�pole"', add
label define br10a_muni5yr_lbl 2308005 `"Massap�"', add
label define br10a_muni5yr_lbl 2308104 `"Mauriti"', add
label define br10a_muni5yr_lbl 2308203 `"Meruoca"', add
label define br10a_muni5yr_lbl 2308302 `"Milagres"', add
label define br10a_muni5yr_lbl 2308351 `"Milh�"', add
label define br10a_muni5yr_lbl 2308377 `"Mira�ma"', add
label define br10a_muni5yr_lbl 2308401 `"Miss�o Velha"', add
label define br10a_muni5yr_lbl 2308500 `"Momba�a"', add
label define br10a_muni5yr_lbl 2308609 `"Monsenhor Tabosa"', add
label define br10a_muni5yr_lbl 2308708 `"Morada Nova"', add
label define br10a_muni5yr_lbl 2308807 `"Mora�jo"', add
label define br10a_muni5yr_lbl 2308906 `"Morrinhos"', add
label define br10a_muni5yr_lbl 2309003 `"Mucambo"', add
label define br10a_muni5yr_lbl 2309102 `"Mulungu"', add
label define br10a_muni5yr_lbl 2309201 `"Nova Olinda"', add
label define br10a_muni5yr_lbl 2309300 `"Nova Russas"', add
label define br10a_muni5yr_lbl 2309409 `"Novo Oriente"', add
label define br10a_muni5yr_lbl 2309458 `"Ocara"', add
label define br10a_muni5yr_lbl 2309508 `"Or�s"', add
label define br10a_muni5yr_lbl 2309607 `"Pacajus"', add
label define br10a_muni5yr_lbl 2309706 `"Pacatuba"', add
label define br10a_muni5yr_lbl 2309805 `"Pacoti"', add
label define br10a_muni5yr_lbl 2309904 `"Pacuj�"', add
label define br10a_muni5yr_lbl 2310001 `"Palhano"', add
label define br10a_muni5yr_lbl 2310100 `"Palm�cia"', add
label define br10a_muni5yr_lbl 2310209 `"Paracuru"', add
label define br10a_muni5yr_lbl 2310258 `"Paraipaba"', add
label define br10a_muni5yr_lbl 2310308 `"Parambu"', add
label define br10a_muni5yr_lbl 2310407 `"Paramoti"', add
label define br10a_muni5yr_lbl 2310506 `"Pedra Branca"', add
label define br10a_muni5yr_lbl 2310605 `"Penaforte"', add
label define br10a_muni5yr_lbl 2310704 `"Pentecoste"', add
label define br10a_muni5yr_lbl 2310803 `"Pereiro"', add
label define br10a_muni5yr_lbl 2310852 `"Pindoretama"', add
label define br10a_muni5yr_lbl 2310902 `"Piquet Carneiro"', add
label define br10a_muni5yr_lbl 2310951 `"Pires Ferreira"', add
label define br10a_muni5yr_lbl 2311009 `"Poranga"', add
label define br10a_muni5yr_lbl 2311108 `"Porteiras"', add
label define br10a_muni5yr_lbl 2311207 `"Potengi"', add
label define br10a_muni5yr_lbl 2311231 `"Potiretama"', add
label define br10a_muni5yr_lbl 2311264 `"Quiterian�polis"', add
label define br10a_muni5yr_lbl 2311306 `"Quixad�"', add
label define br10a_muni5yr_lbl 2311355 `"Quixel�"', add
label define br10a_muni5yr_lbl 2311405 `"Quixeramobim"', add
label define br10a_muni5yr_lbl 2311504 `"Quixer�"', add
label define br10a_muni5yr_lbl 2311603 `"Reden��o"', add
label define br10a_muni5yr_lbl 2311702 `"Reriutaba"', add
label define br10a_muni5yr_lbl 2311801 `"Russas"', add
label define br10a_muni5yr_lbl 2311900 `"Saboeiro"', add
label define br10a_muni5yr_lbl 2311959 `"Salitre"', add
label define br10a_muni5yr_lbl 2312007 `"Santana do Acara�"', add
label define br10a_muni5yr_lbl 2312106 `"Santana do Cariri"', add
label define br10a_muni5yr_lbl 2312205 `"Santa Quit�ria"', add
label define br10a_muni5yr_lbl 2312304 `"S�o Benedito"', add
label define br10a_muni5yr_lbl 2312403 `"S�o Gon�alo do Amarante"', add
label define br10a_muni5yr_lbl 2312502 `"S�o Jo�o do Jaguaribe"', add
label define br10a_muni5yr_lbl 2312601 `"S�o Lu�s do Curu"', add
label define br10a_muni5yr_lbl 2312700 `"Senador Pompeu"', add
label define br10a_muni5yr_lbl 2312809 `"Senador S�"', add
label define br10a_muni5yr_lbl 2312908 `"Sobral"', add
label define br10a_muni5yr_lbl 2313005 `"Solon�pole"', add
label define br10a_muni5yr_lbl 2313104 `"Tabuleiro do Norte"', add
label define br10a_muni5yr_lbl 2313203 `"Tamboril"', add
label define br10a_muni5yr_lbl 2313252 `"Tarrafas"', add
label define br10a_muni5yr_lbl 2313302 `"Tau�"', add
label define br10a_muni5yr_lbl 2313351 `"Teju�uoca"', add
label define br10a_muni5yr_lbl 2313401 `"Tiangu�"', add
label define br10a_muni5yr_lbl 2313500 `"Trairi"', add
label define br10a_muni5yr_lbl 2313559 `"Tururu"', add
label define br10a_muni5yr_lbl 2313609 `"Ubajara"', add
label define br10a_muni5yr_lbl 2313708 `"Umari"', add
label define br10a_muni5yr_lbl 2313757 `"Umirim"', add
label define br10a_muni5yr_lbl 2313807 `"Uruburetama"', add
label define br10a_muni5yr_lbl 2313906 `"Uruoca"', add
label define br10a_muni5yr_lbl 2313955 `"Varjota"', add
label define br10a_muni5yr_lbl 2314003 `"V�rzea Alegre"', add
label define br10a_muni5yr_lbl 2314102 `"Vi�osa do Cear�"', add
label define br10a_muni5yr_lbl 2399999 `"Cear�, municipality unknown"', add
label define br10a_muni5yr_lbl 2400109 `"Acari"', add
label define br10a_muni5yr_lbl 2400208 `"A�u"', add
label define br10a_muni5yr_lbl 2400307 `"Afonso Bezerra"', add
label define br10a_muni5yr_lbl 2400406 `"�gua Nova"', add
label define br10a_muni5yr_lbl 2400505 `"Alexandria"', add
label define br10a_muni5yr_lbl 2400604 `"Almino Afonso"', add
label define br10a_muni5yr_lbl 2400703 `"Alto do Rodrigues"', add
label define br10a_muni5yr_lbl 2400802 `"Angicos"', add
label define br10a_muni5yr_lbl 2400901 `"Ant�nio Martins"', add
label define br10a_muni5yr_lbl 2401008 `"Apodi"', add
label define br10a_muni5yr_lbl 2401107 `"Areia Branca"', add
label define br10a_muni5yr_lbl 2401206 `"Ar�s"', add
label define br10a_muni5yr_lbl 2401305 `"Augusto Severo"', add
label define br10a_muni5yr_lbl 2401404 `"Ba�a Formosa"', add
label define br10a_muni5yr_lbl 2401453 `"Bara�na"', add
label define br10a_muni5yr_lbl 2401503 `"Barcelona"', add
label define br10a_muni5yr_lbl 2401602 `"Bento Fernandes"', add
label define br10a_muni5yr_lbl 2401651 `"Bod�"', add
label define br10a_muni5yr_lbl 2401701 `"Bom Jesus"', add
label define br10a_muni5yr_lbl 2401800 `"Brejinho"', add
label define br10a_muni5yr_lbl 2401859 `"Cai�ara do Norte"', add
label define br10a_muni5yr_lbl 2401909 `"Cai�ara do Rio do Vento"', add
label define br10a_muni5yr_lbl 2402006 `"Caic�"', add
label define br10a_muni5yr_lbl 2402105 `"Campo Redondo"', add
label define br10a_muni5yr_lbl 2402204 `"Canguaretama"', add
label define br10a_muni5yr_lbl 2402303 `"Cara�bas"', add
label define br10a_muni5yr_lbl 2402402 `"Carna�ba dos Dantas"', add
label define br10a_muni5yr_lbl 2402501 `"Carnaubais"', add
label define br10a_muni5yr_lbl 2402600 `"Cear�-Mirim"', add
label define br10a_muni5yr_lbl 2402709 `"Cerro Cor�"', add
label define br10a_muni5yr_lbl 2402808 `"Coronel Ezequiel"', add
label define br10a_muni5yr_lbl 2402907 `"Coronel Jo�o Pessoa"', add
label define br10a_muni5yr_lbl 2403004 `"Cruzeta"', add
label define br10a_muni5yr_lbl 2403103 `"Currais Novos"', add
label define br10a_muni5yr_lbl 2403202 `"Doutor Severiano"', add
label define br10a_muni5yr_lbl 2403251 `"Parnamirim"', add
label define br10a_muni5yr_lbl 2403301 `"Encanto"', add
label define br10a_muni5yr_lbl 2403400 `"Equador"', add
label define br10a_muni5yr_lbl 2403509 `"Esp�rito Santo"', add
label define br10a_muni5yr_lbl 2403608 `"Extremoz"', add
label define br10a_muni5yr_lbl 2403707 `"Felipe Guerra"', add
label define br10a_muni5yr_lbl 2403756 `"Fernando Pedroza"', add
label define br10a_muni5yr_lbl 2403806 `"Flor�nia"', add
label define br10a_muni5yr_lbl 2403905 `"Francisco Dantas"', add
label define br10a_muni5yr_lbl 2404002 `"Frutuoso Gomes"', add
label define br10a_muni5yr_lbl 2404101 `"Galinhos"', add
label define br10a_muni5yr_lbl 2404200 `"Goianinha"', add
label define br10a_muni5yr_lbl 2404309 `"Governador Dix-Sept Rosado"', add
label define br10a_muni5yr_lbl 2404408 `"Grossos"', add
label define br10a_muni5yr_lbl 2404507 `"Guamar�"', add
label define br10a_muni5yr_lbl 2404606 `"Ielmo Marinho"', add
label define br10a_muni5yr_lbl 2404705 `"Ipangua�u"', add
label define br10a_muni5yr_lbl 2404804 `"Ipueira"', add
label define br10a_muni5yr_lbl 2404853 `"Itaj�"', add
label define br10a_muni5yr_lbl 2404903 `"Ita�"', add
label define br10a_muni5yr_lbl 2405009 `"Ja�an�"', add
label define br10a_muni5yr_lbl 2405108 `"Janda�ra"', add
label define br10a_muni5yr_lbl 2405207 `"Jandu�s"', add
label define br10a_muni5yr_lbl 2405306 `"Janu�rio Cicco"', add
label define br10a_muni5yr_lbl 2405405 `"Japi"', add
label define br10a_muni5yr_lbl 2405504 `"Jardim de Angicos"', add
label define br10a_muni5yr_lbl 2405603 `"Jardim de Piranhas"', add
label define br10a_muni5yr_lbl 2405702 `"Jardim do Serid�"', add
label define br10a_muni5yr_lbl 2405801 `"Jo�o C�mara"', add
label define br10a_muni5yr_lbl 2405900 `"Jo�o Dias"', add
label define br10a_muni5yr_lbl 2406007 `"Jos� da Penha"', add
label define br10a_muni5yr_lbl 2406106 `"Jucurutu"', add
label define br10a_muni5yr_lbl 2406155 `"Jundi�"', add
label define br10a_muni5yr_lbl 2406205 `"Lagoa d'Anta"', add
label define br10a_muni5yr_lbl 2406304 `"Lagoa de Pedras"', add
label define br10a_muni5yr_lbl 2406403 `"Lagoa de Velhos"', add
label define br10a_muni5yr_lbl 2406502 `"Lagoa Nova"', add
label define br10a_muni5yr_lbl 2406601 `"Lagoa Salgada"', add
label define br10a_muni5yr_lbl 2406700 `"Lajes"', add
label define br10a_muni5yr_lbl 2406809 `"Lajes Pintadas"', add
label define br10a_muni5yr_lbl 2406908 `"Lucr�cia"', add
label define br10a_muni5yr_lbl 2407005 `"Lu�s Gomes"', add
label define br10a_muni5yr_lbl 2407104 `"Maca�ba"', add
label define br10a_muni5yr_lbl 2407203 `"Macau"', add
label define br10a_muni5yr_lbl 2407252 `"Major Sales"', add
label define br10a_muni5yr_lbl 2407302 `"Marcelino Vieira"', add
label define br10a_muni5yr_lbl 2407401 `"Martins"', add
label define br10a_muni5yr_lbl 2407500 `"Maxaranguape"', add
label define br10a_muni5yr_lbl 2407609 `"Messias Targino"', add
label define br10a_muni5yr_lbl 2407708 `"Montanhas"', add
label define br10a_muni5yr_lbl 2407807 `"Monte Alegre"', add
label define br10a_muni5yr_lbl 2407906 `"Monte das Gameleiras"', add
label define br10a_muni5yr_lbl 2408003 `"Mossor�"', add
label define br10a_muni5yr_lbl 2408102 `"Natal"', add
label define br10a_muni5yr_lbl 2408201 `"N�sia Floresta"', add
label define br10a_muni5yr_lbl 2408300 `"Nova Cruz"', add
label define br10a_muni5yr_lbl 2408409 `"Olho-d'�gua do Borges"', add
label define br10a_muni5yr_lbl 2408508 `"Ouro Branco"', add
label define br10a_muni5yr_lbl 2408607 `"Paran�"', add
label define br10a_muni5yr_lbl 2408706 `"Para�"', add
label define br10a_muni5yr_lbl 2408805 `"Parazinho"', add
label define br10a_muni5yr_lbl 2408904 `"Parelhas"', add
label define br10a_muni5yr_lbl 2408953 `"Rio do Fogo"', add
label define br10a_muni5yr_lbl 2409100 `"Passa e Fica"', add
label define br10a_muni5yr_lbl 2409209 `"Passagem"', add
label define br10a_muni5yr_lbl 2409308 `"Patu"', add
label define br10a_muni5yr_lbl 2409332 `"Santa Maria"', add
label define br10a_muni5yr_lbl 2409407 `"Pau dos Ferros"', add
label define br10a_muni5yr_lbl 2409506 `"Pedra Grande"', add
label define br10a_muni5yr_lbl 2409605 `"Pedra Preta"', add
label define br10a_muni5yr_lbl 2409704 `"Pedro Avelino"', add
label define br10a_muni5yr_lbl 2409803 `"Pedro Velho"', add
label define br10a_muni5yr_lbl 2409902 `"Pend�ncias"', add
label define br10a_muni5yr_lbl 2410009 `"Pil�es"', add
label define br10a_muni5yr_lbl 2410108 `"Po�o Branco"', add
label define br10a_muni5yr_lbl 2410207 `"Portalegre"', add
label define br10a_muni5yr_lbl 2410256 `"Porto do Mangue"', add
label define br10a_muni5yr_lbl 2410306 `"Presidente Juscelino"', add
label define br10a_muni5yr_lbl 2410405 `"Pureza"', add
label define br10a_muni5yr_lbl 2410504 `"Rafael Fernandes"', add
label define br10a_muni5yr_lbl 2410603 `"Rafael Godeiro"', add
label define br10a_muni5yr_lbl 2410702 `"Riacho da Cruz"', add
label define br10a_muni5yr_lbl 2410801 `"Riacho de Santana"', add
label define br10a_muni5yr_lbl 2410900 `"Riachuelo"', add
label define br10a_muni5yr_lbl 2411007 `"Rodolfo Fernandes"', add
label define br10a_muni5yr_lbl 2411056 `"Tibau"', add
label define br10a_muni5yr_lbl 2411106 `"Ruy Barbosa"', add
label define br10a_muni5yr_lbl 2411205 `"Santa Cruz"', add
label define br10a_muni5yr_lbl 2411403 `"Santana do Matos"', add
label define br10a_muni5yr_lbl 2411429 `"Santana do Serid�"', add
label define br10a_muni5yr_lbl 2411502 `"Santo Ant�nio"', add
label define br10a_muni5yr_lbl 2411601 `"S�o Bento do Norte"', add
label define br10a_muni5yr_lbl 2411700 `"S�o Bento do Trair�"', add
label define br10a_muni5yr_lbl 2411809 `"S�o Fernando"', add
label define br10a_muni5yr_lbl 2411908 `"S�o Francisco do Oeste"', add
label define br10a_muni5yr_lbl 2412005 `"S�o Gon�alo do Amarante"', add
label define br10a_muni5yr_lbl 2412104 `"S�o Jo�o do Sabugi"', add
label define br10a_muni5yr_lbl 2412203 `"S�o Jos� de Mipibu"', add
label define br10a_muni5yr_lbl 2412302 `"S�o Jos� do Campestre"', add
label define br10a_muni5yr_lbl 2412401 `"S�o Jos� do Serid�"', add
label define br10a_muni5yr_lbl 2412500 `"S�o Miguel"', add
label define br10a_muni5yr_lbl 2412559 `"S�o Miguel do Gostoso"', add
label define br10a_muni5yr_lbl 2412609 `"S�o Paulo do Potengi"', add
label define br10a_muni5yr_lbl 2412708 `"S�o Pedro"', add
label define br10a_muni5yr_lbl 2412807 `"S�o Rafael"', add
label define br10a_muni5yr_lbl 2412906 `"S�o Tom�"', add
label define br10a_muni5yr_lbl 2413003 `"S�o Vicente"', add
label define br10a_muni5yr_lbl 2413102 `"Senador El�i de Souza"', add
label define br10a_muni5yr_lbl 2413201 `"Senador Georgino Avelino"', add
label define br10a_muni5yr_lbl 2413300 `"Serra de S�o Bento"', add
label define br10a_muni5yr_lbl 2413359 `"Serra do Mel"', add
label define br10a_muni5yr_lbl 2413409 `"Serra Negra do Norte"', add
label define br10a_muni5yr_lbl 2413508 `"Serrinha"', add
label define br10a_muni5yr_lbl 2413557 `"Serrinha dos Pintos"', add
label define br10a_muni5yr_lbl 2413607 `"Severiano Melo"', add
label define br10a_muni5yr_lbl 2413706 `"S�tio Novo"', add
label define br10a_muni5yr_lbl 2413805 `"Taboleiro Grande"', add
label define br10a_muni5yr_lbl 2413904 `"Taipu"', add
label define br10a_muni5yr_lbl 2414001 `"Tangar�"', add
label define br10a_muni5yr_lbl 2414100 `"Tenente Ananias"', add
label define br10a_muni5yr_lbl 2414159 `"Tenente Laurentino Cruz"', add
label define br10a_muni5yr_lbl 2414209 `"Tibau do Sul"', add
label define br10a_muni5yr_lbl 2414308 `"Timba�ba dos Batistas"', add
label define br10a_muni5yr_lbl 2414407 `"Touros"', add
label define br10a_muni5yr_lbl 2414456 `"Triunfo Potiguar"', add
label define br10a_muni5yr_lbl 2414506 `"Umarizal"', add
label define br10a_muni5yr_lbl 2414605 `"Upanema"', add
label define br10a_muni5yr_lbl 2414704 `"V�rzea"', add
label define br10a_muni5yr_lbl 2414753 `"Venha-Ver"', add
label define br10a_muni5yr_lbl 2414803 `"Vera Cruz"', add
label define br10a_muni5yr_lbl 2414902 `"Vi�osa"', add
label define br10a_muni5yr_lbl 2415008 `"Vila Flor"', add
label define br10a_muni5yr_lbl 2499999 `"Rio Grande do Norte, municipality unknown"', add
label define br10a_muni5yr_lbl 2500106 `"�gua Branca"', add
label define br10a_muni5yr_lbl 2500205 `"Aguiar"', add
label define br10a_muni5yr_lbl 2500304 `"Alagoa Grande"', add
label define br10a_muni5yr_lbl 2500403 `"Alagoa Nova"', add
label define br10a_muni5yr_lbl 2500502 `"Alagoinha"', add
label define br10a_muni5yr_lbl 2500536 `"Alcantil"', add
label define br10a_muni5yr_lbl 2500577 `"Algod�o de Janda�ra"', add
label define br10a_muni5yr_lbl 2500601 `"Alhandra"', add
label define br10a_muni5yr_lbl 2500700 `"S�o Jo�o do Rio do Peixe"', add
label define br10a_muni5yr_lbl 2500734 `"Amparo"', add
label define br10a_muni5yr_lbl 2500775 `"Aparecida"', add
label define br10a_muni5yr_lbl 2500809 `"Ara�agi"', add
label define br10a_muni5yr_lbl 2500908 `"Arara"', add
label define br10a_muni5yr_lbl 2501005 `"Araruna"', add
label define br10a_muni5yr_lbl 2501104 `"Areia"', add
label define br10a_muni5yr_lbl 2501153 `"Areia de Bara�nas"', add
label define br10a_muni5yr_lbl 2501203 `"Areial"', add
label define br10a_muni5yr_lbl 2501302 `"Aroeiras"', add
label define br10a_muni5yr_lbl 2501351 `"Assun��o"', add
label define br10a_muni5yr_lbl 2501401 `"Ba�a da Trai��o"', add
label define br10a_muni5yr_lbl 2501500 `"Bananeiras"', add
label define br10a_muni5yr_lbl 2501534 `"Bara�na"', add
label define br10a_muni5yr_lbl 2501575 `"Barra de Santana"', add
label define br10a_muni5yr_lbl 2501609 `"Barra de Santa Rosa"', add
label define br10a_muni5yr_lbl 2501708 `"Barra de S�o Miguel"', add
label define br10a_muni5yr_lbl 2501807 `"Bayeux"', add
label define br10a_muni5yr_lbl 2501906 `"Bel�m"', add
label define br10a_muni5yr_lbl 2502003 `"Bel�m do Brejo do Cruz"', add
label define br10a_muni5yr_lbl 2502052 `"Bernardino Batista"', add
label define br10a_muni5yr_lbl 2502102 `"Boa Ventura"', add
label define br10a_muni5yr_lbl 2502151 `"Boa Vista"', add
label define br10a_muni5yr_lbl 2502201 `"Bom Jesus"', add
label define br10a_muni5yr_lbl 2502300 `"Bom Sucesso"', add
label define br10a_muni5yr_lbl 2502409 `"Bonito de Santa F�"', add
label define br10a_muni5yr_lbl 2502508 `"Boqueir�o"', add
label define br10a_muni5yr_lbl 2502607 `"Igaracy"', add
label define br10a_muni5yr_lbl 2502706 `"Borborema"', add
label define br10a_muni5yr_lbl 2502805 `"Brejo do Cruz"', add
label define br10a_muni5yr_lbl 2502904 `"Brejo dos Santos"', add
label define br10a_muni5yr_lbl 2503001 `"Caapor�"', add
label define br10a_muni5yr_lbl 2503100 `"Cabaceiras"', add
label define br10a_muni5yr_lbl 2503209 `"Cabedelo"', add
label define br10a_muni5yr_lbl 2503308 `"Cachoeira dos �ndios"', add
label define br10a_muni5yr_lbl 2503407 `"Cacimba de Areia"', add
label define br10a_muni5yr_lbl 2503506 `"Cacimba de Dentro"', add
label define br10a_muni5yr_lbl 2503555 `"Cacimbas"', add
label define br10a_muni5yr_lbl 2503605 `"Cai�ara"', add
label define br10a_muni5yr_lbl 2503704 `"Cajazeiras"', add
label define br10a_muni5yr_lbl 2503753 `"Cajazeirinhas"', add
label define br10a_muni5yr_lbl 2503803 `"Caldas Brand�o"', add
label define br10a_muni5yr_lbl 2503902 `"Camala�"', add
label define br10a_muni5yr_lbl 2504009 `"Campina Grande"', add
label define br10a_muni5yr_lbl 2504033 `"Capim"', add
label define br10a_muni5yr_lbl 2504074 `"Cara�bas"', add
label define br10a_muni5yr_lbl 2504108 `"Carrapateira"', add
label define br10a_muni5yr_lbl 2504157 `"Casserengue"', add
label define br10a_muni5yr_lbl 2504207 `"Catingueira"', add
label define br10a_muni5yr_lbl 2504306 `"Catol� do Rocha"', add
label define br10a_muni5yr_lbl 2504355 `"Caturit�"', add
label define br10a_muni5yr_lbl 2504405 `"Concei��o"', add
label define br10a_muni5yr_lbl 2504504 `"Condado"', add
label define br10a_muni5yr_lbl 2504603 `"Conde"', add
label define br10a_muni5yr_lbl 2504702 `"Congo"', add
label define br10a_muni5yr_lbl 2504801 `"Coremas"', add
label define br10a_muni5yr_lbl 2504850 `"Coxixola"', add
label define br10a_muni5yr_lbl 2504900 `"Cruz do Esp�rito Santo"', add
label define br10a_muni5yr_lbl 2505006 `"Cubati"', add
label define br10a_muni5yr_lbl 2505105 `"Cuit�"', add
label define br10a_muni5yr_lbl 2505204 `"Cuitegi"', add
label define br10a_muni5yr_lbl 2505238 `"Cuit� de Mamanguape"', add
label define br10a_muni5yr_lbl 2505279 `"Curral de Cima"', add
label define br10a_muni5yr_lbl 2505303 `"Curral Velho"', add
label define br10a_muni5yr_lbl 2505352 `"Dami�o"', add
label define br10a_muni5yr_lbl 2505402 `"Desterro"', add
label define br10a_muni5yr_lbl 2505501 `"Vista Serrana"', add
label define br10a_muni5yr_lbl 2505600 `"Diamante"', add
label define br10a_muni5yr_lbl 2505709 `"Dona In�s"', add
label define br10a_muni5yr_lbl 2505808 `"Duas Estradas"', add
label define br10a_muni5yr_lbl 2505907 `"Emas"', add
label define br10a_muni5yr_lbl 2506004 `"Esperan�a"', add
label define br10a_muni5yr_lbl 2506103 `"Fagundes"', add
label define br10a_muni5yr_lbl 2506202 `"Frei Martinho"', add
label define br10a_muni5yr_lbl 2506251 `"Gado Bravo"', add
label define br10a_muni5yr_lbl 2506301 `"Guarabira"', add
label define br10a_muni5yr_lbl 2506400 `"Gurinh�m"', add
label define br10a_muni5yr_lbl 2506509 `"Gurj�o"', add
label define br10a_muni5yr_lbl 2506608 `"Ibiara"', add
label define br10a_muni5yr_lbl 2506707 `"Imaculada"', add
label define br10a_muni5yr_lbl 2506806 `"Ing�"', add
label define br10a_muni5yr_lbl 2506905 `"Itabaiana"', add
label define br10a_muni5yr_lbl 2507002 `"Itaporanga"', add
label define br10a_muni5yr_lbl 2507101 `"Itapororoca"', add
label define br10a_muni5yr_lbl 2507200 `"Itatuba"', add
label define br10a_muni5yr_lbl 2507309 `"Jacara�"', add
label define br10a_muni5yr_lbl 2507408 `"Jeric�"', add
label define br10a_muni5yr_lbl 2507507 `"Jo�o Pessoa"', add
label define br10a_muni5yr_lbl 2507606 `"Juarez T�vora"', add
label define br10a_muni5yr_lbl 2507705 `"Juazeirinho"', add
label define br10a_muni5yr_lbl 2507804 `"Junco do Serid�"', add
label define br10a_muni5yr_lbl 2507903 `"Juripiranga"', add
label define br10a_muni5yr_lbl 2508000 `"Juru"', add
label define br10a_muni5yr_lbl 2508109 `"Lagoa"', add
label define br10a_muni5yr_lbl 2508208 `"Lagoa de Dentro"', add
label define br10a_muni5yr_lbl 2508307 `"Lagoa Seca"', add
label define br10a_muni5yr_lbl 2508406 `"Lastro"', add
label define br10a_muni5yr_lbl 2508505 `"Livramento"', add
label define br10a_muni5yr_lbl 2508554 `"Logradouro"', add
label define br10a_muni5yr_lbl 2508604 `"Lucena"', add
label define br10a_muni5yr_lbl 2508703 `"M�e d'�gua"', add
label define br10a_muni5yr_lbl 2508802 `"Malta"', add
label define br10a_muni5yr_lbl 2508901 `"Mamanguape"', add
label define br10a_muni5yr_lbl 2509008 `"Mana�ra"', add
label define br10a_muni5yr_lbl 2509057 `"Marca��o"', add
label define br10a_muni5yr_lbl 2509107 `"Mari"', add
label define br10a_muni5yr_lbl 2509156 `"Mariz�polis"', add
label define br10a_muni5yr_lbl 2509206 `"Massaranduba"', add
label define br10a_muni5yr_lbl 2509305 `"Mataraca"', add
label define br10a_muni5yr_lbl 2509339 `"Matinhas"', add
label define br10a_muni5yr_lbl 2509370 `"Mato Grosso"', add
label define br10a_muni5yr_lbl 2509396 `"Matur�ia"', add
label define br10a_muni5yr_lbl 2509404 `"Mogeiro"', add
label define br10a_muni5yr_lbl 2509503 `"Montadas"', add
label define br10a_muni5yr_lbl 2509602 `"Monte Horebe"', add
label define br10a_muni5yr_lbl 2509701 `"Monteiro"', add
label define br10a_muni5yr_lbl 2509800 `"Mulungu"', add
label define br10a_muni5yr_lbl 2509909 `"Natuba"', add
label define br10a_muni5yr_lbl 2510006 `"Nazarezinho"', add
label define br10a_muni5yr_lbl 2510105 `"Nova Floresta"', add
label define br10a_muni5yr_lbl 2510204 `"Nova Olinda"', add
label define br10a_muni5yr_lbl 2510303 `"Nova Palmeira"', add
label define br10a_muni5yr_lbl 2510402 `"Olho d'�gua"', add
label define br10a_muni5yr_lbl 2510501 `"Olivedos"', add
label define br10a_muni5yr_lbl 2510600 `"Ouro Velho"', add
label define br10a_muni5yr_lbl 2510659 `"Parari"', add
label define br10a_muni5yr_lbl 2510709 `"Passagem"', add
label define br10a_muni5yr_lbl 2510808 `"Patos"', add
label define br10a_muni5yr_lbl 2510907 `"Paulista"', add
label define br10a_muni5yr_lbl 2511004 `"Pedra Branca"', add
label define br10a_muni5yr_lbl 2511103 `"Pedra Lavrada"', add
label define br10a_muni5yr_lbl 2511202 `"Pedras de Fogo"', add
label define br10a_muni5yr_lbl 2511301 `"Pianc�"', add
label define br10a_muni5yr_lbl 2511400 `"Picu�"', add
label define br10a_muni5yr_lbl 2511509 `"Pilar"', add
label define br10a_muni5yr_lbl 2511608 `"Pil�es"', add
label define br10a_muni5yr_lbl 2511707 `"Pil�ezinhos"', add
label define br10a_muni5yr_lbl 2511806 `"Pirpirituba"', add
label define br10a_muni5yr_lbl 2511905 `"Pitimbu"', add
label define br10a_muni5yr_lbl 2512002 `"Pocinhos"', add
label define br10a_muni5yr_lbl 2512036 `"Po�o Dantas"', add
label define br10a_muni5yr_lbl 2512077 `"Po�o de Jos� de Moura"', add
label define br10a_muni5yr_lbl 2512101 `"Pombal"', add
label define br10a_muni5yr_lbl 2512200 `"Prata"', add
label define br10a_muni5yr_lbl 2512309 `"Princesa Isabel"', add
label define br10a_muni5yr_lbl 2512408 `"Puxinan�"', add
label define br10a_muni5yr_lbl 2512507 `"Queimadas"', add
label define br10a_muni5yr_lbl 2512606 `"Quixab�"', add
label define br10a_muni5yr_lbl 2512705 `"Rem�gio"', add
label define br10a_muni5yr_lbl 2512721 `"Pedro R�gis"', add
label define br10a_muni5yr_lbl 2512747 `"Riach�o"', add
label define br10a_muni5yr_lbl 2512754 `"Riach�o do Bacamarte"', add
label define br10a_muni5yr_lbl 2512762 `"Riach�o do Po�o"', add
label define br10a_muni5yr_lbl 2512788 `"Riacho de Santo Ant�nio"', add
label define br10a_muni5yr_lbl 2512804 `"Riacho dos Cavalos"', add
label define br10a_muni5yr_lbl 2512903 `"Rio Tinto"', add
label define br10a_muni5yr_lbl 2513000 `"Salgadinho"', add
label define br10a_muni5yr_lbl 2513109 `"Salgado de S�o F�lix"', add
label define br10a_muni5yr_lbl 2513158 `"Santa Cec�lia"', add
label define br10a_muni5yr_lbl 2513208 `"Santa Cruz"', add
label define br10a_muni5yr_lbl 2513307 `"Santa Helena"', add
label define br10a_muni5yr_lbl 2513356 `"Santa In�s"', add
label define br10a_muni5yr_lbl 2513406 `"Santa Luzia"', add
label define br10a_muni5yr_lbl 2513505 `"Santana de Mangueira"', add
label define br10a_muni5yr_lbl 2513604 `"Santana dos Garrotes"', add
label define br10a_muni5yr_lbl 2513653 `"Santar�m"', add
label define br10a_muni5yr_lbl 2513703 `"Santa Rita"', add
label define br10a_muni5yr_lbl 2513802 `"Santa Teresinha"', add
label define br10a_muni5yr_lbl 2513851 `"Santo Andr�"', add
label define br10a_muni5yr_lbl 2513901 `"S�o Bento"', add
label define br10a_muni5yr_lbl 2513927 `"S�o Bentinho"', add
label define br10a_muni5yr_lbl 2513943 `"S�o Domingos do Cariri"', add
label define br10a_muni5yr_lbl 2513968 `"S�o Domingos"', add
label define br10a_muni5yr_lbl 2513984 `"S�o Francisco"', add
label define br10a_muni5yr_lbl 2514008 `"S�o Jo�o do Cariri"', add
label define br10a_muni5yr_lbl 2514107 `"S�o Jo�o do Tigre"', add
label define br10a_muni5yr_lbl 2514206 `"S�o Jos� da Lagoa Tapada"', add
label define br10a_muni5yr_lbl 2514305 `"S�o Jos� de Caiana"', add
label define br10a_muni5yr_lbl 2514404 `"S�o Jos� de Espinharas"', add
label define br10a_muni5yr_lbl 2514453 `"S�o Jos� dos Ramos"', add
label define br10a_muni5yr_lbl 2514503 `"S�o Jos� de Piranhas"', add
label define br10a_muni5yr_lbl 2514552 `"S�o Jos� de Princesa"', add
label define br10a_muni5yr_lbl 2514602 `"S�o Jos� do Bonfim"', add
label define br10a_muni5yr_lbl 2514651 `"S�o Jos� do Brejo do Cruz"', add
label define br10a_muni5yr_lbl 2514701 `"S�o Jos� do Sabugi"', add
label define br10a_muni5yr_lbl 2514800 `"S�o Jos� dos Cordeiros"', add
label define br10a_muni5yr_lbl 2514909 `"S�o Mamede"', add
label define br10a_muni5yr_lbl 2515005 `"S�o Miguel de Taipu"', add
label define br10a_muni5yr_lbl 2515104 `"S�o Sebasti�o de Lagoa de Ro�a"', add
label define br10a_muni5yr_lbl 2515203 `"S�o Sebasti�o do Umbuzeiro"', add
label define br10a_muni5yr_lbl 2515302 `"Sap�"', add
label define br10a_muni5yr_lbl 2515401 `"Serid�"', add
label define br10a_muni5yr_lbl 2515500 `"Serra Branca"', add
label define br10a_muni5yr_lbl 2515609 `"Serra da Raiz"', add
label define br10a_muni5yr_lbl 2515708 `"Serra Grande"', add
label define br10a_muni5yr_lbl 2515807 `"Serra Redonda"', add
label define br10a_muni5yr_lbl 2515906 `"Serraria"', add
label define br10a_muni5yr_lbl 2515930 `"Sert�ozinho"', add
label define br10a_muni5yr_lbl 2515971 `"Sobrado"', add
label define br10a_muni5yr_lbl 2516003 `"Sol�nea"', add
label define br10a_muni5yr_lbl 2516102 `"Soledade"', add
label define br10a_muni5yr_lbl 2516151 `"Soss�go"', add
label define br10a_muni5yr_lbl 2516201 `"Sousa"', add
label define br10a_muni5yr_lbl 2516300 `"Sum�"', add
label define br10a_muni5yr_lbl 2516409 `"Tacima"', add
label define br10a_muni5yr_lbl 2516508 `"Tapero�"', add
label define br10a_muni5yr_lbl 2516607 `"Tavares"', add
label define br10a_muni5yr_lbl 2516706 `"Teixeira"', add
label define br10a_muni5yr_lbl 2516755 `"Ten�rio"', add
label define br10a_muni5yr_lbl 2516805 `"Triunfo"', add
label define br10a_muni5yr_lbl 2516904 `"Uira�na"', add
label define br10a_muni5yr_lbl 2517001 `"Umbuzeiro"', add
label define br10a_muni5yr_lbl 2517100 `"V�rzea"', add
label define br10a_muni5yr_lbl 2517209 `"Vieir�polis"', add
label define br10a_muni5yr_lbl 2517407 `"Zabel�"', add
label define br10a_muni5yr_lbl 2599999 `"Para�ba, municipality unknown"', add
label define br10a_muni5yr_lbl 2600054 `"Abreu e Lima"', add
label define br10a_muni5yr_lbl 2600104 `"Afogados da Ingazeira"', add
label define br10a_muni5yr_lbl 2600203 `"Afr�nio"', add
label define br10a_muni5yr_lbl 2600302 `"Agrestina"', add
label define br10a_muni5yr_lbl 2600401 `"�gua Preta"', add
label define br10a_muni5yr_lbl 2600500 `"�guas Belas"', add
label define br10a_muni5yr_lbl 2600609 `"Alagoinha"', add
label define br10a_muni5yr_lbl 2600708 `"Alian�a"', add
label define br10a_muni5yr_lbl 2600807 `"Altinho"', add
label define br10a_muni5yr_lbl 2600906 `"Amaraji"', add
label define br10a_muni5yr_lbl 2601003 `"Angelim"', add
label define br10a_muni5yr_lbl 2601052 `"Ara�oiaba"', add
label define br10a_muni5yr_lbl 2601102 `"Araripina"', add
label define br10a_muni5yr_lbl 2601201 `"Arcoverde"', add
label define br10a_muni5yr_lbl 2601300 `"Barra de Guabiraba"', add
label define br10a_muni5yr_lbl 2601409 `"Barreiros"', add
label define br10a_muni5yr_lbl 2601508 `"Bel�m de Maria"', add
label define br10a_muni5yr_lbl 2601607 `"Bel�m do S�o Francisco"', add
label define br10a_muni5yr_lbl 2601706 `"Belo Jardim"', add
label define br10a_muni5yr_lbl 2601805 `"Bet�nia"', add
label define br10a_muni5yr_lbl 2601904 `"Bezerros"', add
label define br10a_muni5yr_lbl 2602001 `"Bodoc�"', add
label define br10a_muni5yr_lbl 2602100 `"Bom Conselho"', add
label define br10a_muni5yr_lbl 2602209 `"Bom Jardim"', add
label define br10a_muni5yr_lbl 2602308 `"Bonito"', add
label define br10a_muni5yr_lbl 2602407 `"Brej�o"', add
label define br10a_muni5yr_lbl 2602506 `"Brejinho"', add
label define br10a_muni5yr_lbl 2602605 `"Brejo da Madre de Deus"', add
label define br10a_muni5yr_lbl 2602704 `"Buenos Aires"', add
label define br10a_muni5yr_lbl 2602803 `"Bu�que"', add
label define br10a_muni5yr_lbl 2602902 `"Cabo de Santo Agostinho"', add
label define br10a_muni5yr_lbl 2603009 `"Cabrob�"', add
label define br10a_muni5yr_lbl 2603108 `"Cachoeirinha"', add
label define br10a_muni5yr_lbl 2603207 `"Caet�s"', add
label define br10a_muni5yr_lbl 2603306 `"Cal�ado"', add
label define br10a_muni5yr_lbl 2603405 `"Calumbi"', add
label define br10a_muni5yr_lbl 2603454 `"Camaragibe"', add
label define br10a_muni5yr_lbl 2603504 `"Camocim de S�o F�lix"', add
label define br10a_muni5yr_lbl 2603603 `"Camutanga"', add
label define br10a_muni5yr_lbl 2603702 `"Canhotinho"', add
label define br10a_muni5yr_lbl 2603801 `"Capoeiras"', add
label define br10a_muni5yr_lbl 2603900 `"Carna�ba"', add
label define br10a_muni5yr_lbl 2603926 `"Carnaubeira da Penha"', add
label define br10a_muni5yr_lbl 2604007 `"Carpina"', add
label define br10a_muni5yr_lbl 2604106 `"Caruaru"', add
label define br10a_muni5yr_lbl 2604155 `"Casinhas"', add
label define br10a_muni5yr_lbl 2604205 `"Catende"', add
label define br10a_muni5yr_lbl 2604304 `"Cedro"', add
label define br10a_muni5yr_lbl 2604403 `"Ch� de Alegria"', add
label define br10a_muni5yr_lbl 2604502 `"Ch� Grande"', add
label define br10a_muni5yr_lbl 2604601 `"Condado"', add
label define br10a_muni5yr_lbl 2604700 `"Correntes"', add
label define br10a_muni5yr_lbl 2604809 `"Cort�s"', add
label define br10a_muni5yr_lbl 2604908 `"Cumaru"', add
label define br10a_muni5yr_lbl 2605004 `"Cupira"', add
label define br10a_muni5yr_lbl 2605103 `"Cust�dia"', add
label define br10a_muni5yr_lbl 2605152 `"Dormentes"', add
label define br10a_muni5yr_lbl 2605202 `"Escada"', add
label define br10a_muni5yr_lbl 2605301 `"Exu"', add
label define br10a_muni5yr_lbl 2605400 `"Feira Nova"', add
label define br10a_muni5yr_lbl 2605459 `"Fernando de Noronha"', add
label define br10a_muni5yr_lbl 2605509 `"Ferreiros"', add
label define br10a_muni5yr_lbl 2605608 `"Flores"', add
label define br10a_muni5yr_lbl 2605707 `"Floresta"', add
label define br10a_muni5yr_lbl 2605806 `"Frei Miguelinho"', add
label define br10a_muni5yr_lbl 2605905 `"Gameleira"', add
label define br10a_muni5yr_lbl 2606002 `"Garanhuns"', add
label define br10a_muni5yr_lbl 2606101 `"Gl�ria do Goit�"', add
label define br10a_muni5yr_lbl 2606200 `"Goiana"', add
label define br10a_muni5yr_lbl 2606309 `"Granito"', add
label define br10a_muni5yr_lbl 2606408 `"Gravat�"', add
label define br10a_muni5yr_lbl 2606507 `"Iati"', add
label define br10a_muni5yr_lbl 2606606 `"Ibimirim"', add
label define br10a_muni5yr_lbl 2606705 `"Ibirajuba"', add
label define br10a_muni5yr_lbl 2606804 `"Igarassu"', add
label define br10a_muni5yr_lbl 2606903 `"Iguaraci"', add
label define br10a_muni5yr_lbl 2607000 `"Inaj�"', add
label define br10a_muni5yr_lbl 2607109 `"Ingazeira"', add
label define br10a_muni5yr_lbl 2607208 `"Ipojuca"', add
label define br10a_muni5yr_lbl 2607307 `"Ipubi"', add
label define br10a_muni5yr_lbl 2607406 `"Itacuruba"', add
label define br10a_muni5yr_lbl 2607505 `"Ita�ba"', add
label define br10a_muni5yr_lbl 2607604 `"Ilha de Itamarac�"', add
label define br10a_muni5yr_lbl 2607653 `"Itamb�"', add
label define br10a_muni5yr_lbl 2607703 `"Itapetim"', add
label define br10a_muni5yr_lbl 2607752 `"Itapissuma"', add
label define br10a_muni5yr_lbl 2607802 `"Itaquitinga"', add
label define br10a_muni5yr_lbl 2607901 `"Jaboat�o dos Guararapes"', add
label define br10a_muni5yr_lbl 2607950 `"Jaqueira"', add
label define br10a_muni5yr_lbl 2608008 `"Jata�ba"', add
label define br10a_muni5yr_lbl 2608057 `"Jatob�"', add
label define br10a_muni5yr_lbl 2608107 `"Jo�o Alfredo"', add
label define br10a_muni5yr_lbl 2608206 `"Joaquim Nabuco"', add
label define br10a_muni5yr_lbl 2608255 `"Jucati"', add
label define br10a_muni5yr_lbl 2608305 `"Jupi"', add
label define br10a_muni5yr_lbl 2608404 `"Jurema"', add
label define br10a_muni5yr_lbl 2608453 `"Lagoa do Carro"', add
label define br10a_muni5yr_lbl 2608503 `"Lagoa de Itaenga"', add
label define br10a_muni5yr_lbl 2608602 `"Lagoa do Ouro"', add
label define br10a_muni5yr_lbl 2608701 `"Lagoa dos Gatos"', add
label define br10a_muni5yr_lbl 2608750 `"Lagoa Grande"', add
label define br10a_muni5yr_lbl 2608800 `"Lajedo"', add
label define br10a_muni5yr_lbl 2608909 `"Limoeiro"', add
label define br10a_muni5yr_lbl 2609006 `"Macaparana"', add
label define br10a_muni5yr_lbl 2609105 `"Machados"', add
label define br10a_muni5yr_lbl 2609154 `"Manari"', add
label define br10a_muni5yr_lbl 2609204 `"Maraial"', add
label define br10a_muni5yr_lbl 2609303 `"Mirandiba"', add
label define br10a_muni5yr_lbl 2609402 `"Moreno"', add
label define br10a_muni5yr_lbl 2609501 `"Nazar� da Mata"', add
label define br10a_muni5yr_lbl 2609600 `"Olinda"', add
label define br10a_muni5yr_lbl 2609709 `"Orob�"', add
label define br10a_muni5yr_lbl 2609808 `"Oroc�"', add
label define br10a_muni5yr_lbl 2609907 `"Ouricuri"', add
label define br10a_muni5yr_lbl 2610004 `"Palmares"', add
label define br10a_muni5yr_lbl 2610103 `"Palmeirina"', add
label define br10a_muni5yr_lbl 2610202 `"Panelas"', add
label define br10a_muni5yr_lbl 2610301 `"Paranatama"', add
label define br10a_muni5yr_lbl 2610400 `"Parnamirim"', add
label define br10a_muni5yr_lbl 2610509 `"Passira"', add
label define br10a_muni5yr_lbl 2610608 `"Paudalho"', add
label define br10a_muni5yr_lbl 2610707 `"Paulista"', add
label define br10a_muni5yr_lbl 2610806 `"Pedra"', add
label define br10a_muni5yr_lbl 2610905 `"Pesqueira"', add
label define br10a_muni5yr_lbl 2611002 `"Petrol�ndia"', add
label define br10a_muni5yr_lbl 2611101 `"Petrolina"', add
label define br10a_muni5yr_lbl 2611200 `"Po��o"', add
label define br10a_muni5yr_lbl 2611309 `"Pombos"', add
label define br10a_muni5yr_lbl 2611408 `"Primavera"', add
label define br10a_muni5yr_lbl 2611507 `"Quipap�"', add
label define br10a_muni5yr_lbl 2611533 `"Quixaba"', add
label define br10a_muni5yr_lbl 2611606 `"Recife"', add
label define br10a_muni5yr_lbl 2611705 `"Riacho das Almas"', add
label define br10a_muni5yr_lbl 2611804 `"Ribeir�o"', add
label define br10a_muni5yr_lbl 2611903 `"Rio Formoso"', add
label define br10a_muni5yr_lbl 2612000 `"Sair�"', add
label define br10a_muni5yr_lbl 2612109 `"Salgadinho"', add
label define br10a_muni5yr_lbl 2612208 `"Salgueiro"', add
label define br10a_muni5yr_lbl 2612307 `"Salo�"', add
label define br10a_muni5yr_lbl 2612406 `"Sanhar�"', add
label define br10a_muni5yr_lbl 2612455 `"Santa Cruz"', add
label define br10a_muni5yr_lbl 2612471 `"Santa Cruz da Baixa Verde"', add
label define br10a_muni5yr_lbl 2612505 `"Santa Cruz do Capibaribe"', add
label define br10a_muni5yr_lbl 2612554 `"Santa Filomena"', add
label define br10a_muni5yr_lbl 2612604 `"Santa Maria da Boa Vista"', add
label define br10a_muni5yr_lbl 2612703 `"Santa Maria do Cambuc�"', add
label define br10a_muni5yr_lbl 2612802 `"Santa Terezinha"', add
label define br10a_muni5yr_lbl 2612901 `"S�o Benedito do Sul"', add
label define br10a_muni5yr_lbl 2613008 `"S�o Bento do Una"', add
label define br10a_muni5yr_lbl 2613107 `"S�o Caitano"', add
label define br10a_muni5yr_lbl 2613206 `"S�o Jo�o"', add
label define br10a_muni5yr_lbl 2613305 `"S�o Joaquim do Monte"', add
label define br10a_muni5yr_lbl 2613404 `"S�o Jos� da Coroa Grande"', add
label define br10a_muni5yr_lbl 2613503 `"S�o Jos� do Belmonte"', add
label define br10a_muni5yr_lbl 2613602 `"S�o Jos� do Egito"', add
label define br10a_muni5yr_lbl 2613701 `"S�o Louren�o da Mata"', add
label define br10a_muni5yr_lbl 2613800 `"S�o Vicente Ferrer"', add
label define br10a_muni5yr_lbl 2613909 `"Serra Talhada"', add
label define br10a_muni5yr_lbl 2614006 `"Serrita"', add
label define br10a_muni5yr_lbl 2614105 `"Sert�nia"', add
label define br10a_muni5yr_lbl 2614204 `"Sirinha�m"', add
label define br10a_muni5yr_lbl 2614303 `"Moreil�ndia"', add
label define br10a_muni5yr_lbl 2614402 `"Solid�o"', add
label define br10a_muni5yr_lbl 2614501 `"Surubim"', add
label define br10a_muni5yr_lbl 2614600 `"Tabira"', add
label define br10a_muni5yr_lbl 2614709 `"Tacaimb�"', add
label define br10a_muni5yr_lbl 2614808 `"Tacaratu"', add
label define br10a_muni5yr_lbl 2614857 `"Tamandar�"', add
label define br10a_muni5yr_lbl 2615003 `"Taquaritinga do Norte"', add
label define br10a_muni5yr_lbl 2615102 `"Terezinha"', add
label define br10a_muni5yr_lbl 2615201 `"Terra Nova"', add
label define br10a_muni5yr_lbl 2615300 `"Timba�ba"', add
label define br10a_muni5yr_lbl 2615409 `"Toritama"', add
label define br10a_muni5yr_lbl 2615508 `"Tracunha�m"', add
label define br10a_muni5yr_lbl 2615607 `"Trindade"', add
label define br10a_muni5yr_lbl 2615706 `"Triunfo"', add
label define br10a_muni5yr_lbl 2615805 `"Tupanatinga"', add
label define br10a_muni5yr_lbl 2615904 `"Tuparetama"', add
label define br10a_muni5yr_lbl 2616001 `"Venturosa"', add
label define br10a_muni5yr_lbl 2616100 `"Verdejante"', add
label define br10a_muni5yr_lbl 2616183 `"Vertente do L�rio"', add
label define br10a_muni5yr_lbl 2616209 `"Vertentes"', add
label define br10a_muni5yr_lbl 2616308 `"Vic�ncia"', add
label define br10a_muni5yr_lbl 2616407 `"Vit�ria de Santo Ant�o"', add
label define br10a_muni5yr_lbl 2616506 `"Xex�u"', add
label define br10a_muni5yr_lbl 2699999 `"Pernambuco, municipality unknown"', add
label define br10a_muni5yr_lbl 2700102 `"�gua Branca"', add
label define br10a_muni5yr_lbl 2700201 `"Anadia"', add
label define br10a_muni5yr_lbl 2700300 `"Arapiraca"', add
label define br10a_muni5yr_lbl 2700409 `"Atalaia"', add
label define br10a_muni5yr_lbl 2700508 `"Barra de Santo Ant�nio"', add
label define br10a_muni5yr_lbl 2700607 `"Barra de S�o Miguel"', add
label define br10a_muni5yr_lbl 2700706 `"Batalha"', add
label define br10a_muni5yr_lbl 2700805 `"Bel�m"', add
label define br10a_muni5yr_lbl 2700904 `"Belo Monte"', add
label define br10a_muni5yr_lbl 2701001 `"Boca da Mata"', add
label define br10a_muni5yr_lbl 2701100 `"Branquinha"', add
label define br10a_muni5yr_lbl 2701209 `"Cacimbinhas"', add
label define br10a_muni5yr_lbl 2701308 `"Cajueiro"', add
label define br10a_muni5yr_lbl 2701357 `"Campestre"', add
label define br10a_muni5yr_lbl 2701407 `"Campo Alegre"', add
label define br10a_muni5yr_lbl 2701506 `"Campo Grande"', add
label define br10a_muni5yr_lbl 2701605 `"Canapi"', add
label define br10a_muni5yr_lbl 2701704 `"Capela"', add
label define br10a_muni5yr_lbl 2701803 `"Carneiros"', add
label define br10a_muni5yr_lbl 2701902 `"Ch� Preta"', add
label define br10a_muni5yr_lbl 2702009 `"Coit� do N�ia"', add
label define br10a_muni5yr_lbl 2702108 `"Col�nia Leopoldina"', add
label define br10a_muni5yr_lbl 2702207 `"Coqueiro Seco"', add
label define br10a_muni5yr_lbl 2702306 `"Coruripe"', add
label define br10a_muni5yr_lbl 2702355 `"Cra�bas"', add
label define br10a_muni5yr_lbl 2702405 `"Delmiro Gouveia"', add
label define br10a_muni5yr_lbl 2702504 `"Dois Riachos"', add
label define br10a_muni5yr_lbl 2702553 `"Estrela de Alagoas"', add
label define br10a_muni5yr_lbl 2702603 `"Feira Grande"', add
label define br10a_muni5yr_lbl 2702702 `"Feliz Deserto"', add
label define br10a_muni5yr_lbl 2702801 `"Flexeiras"', add
label define br10a_muni5yr_lbl 2702900 `"Girau do Ponciano"', add
label define br10a_muni5yr_lbl 2703007 `"Ibateguara"', add
label define br10a_muni5yr_lbl 2703106 `"Igaci"', add
label define br10a_muni5yr_lbl 2703205 `"Igreja Nova"', add
label define br10a_muni5yr_lbl 2703304 `"Inhapi"', add
label define br10a_muni5yr_lbl 2703403 `"Jacar� dos Homens"', add
label define br10a_muni5yr_lbl 2703502 `"Jacu�pe"', add
label define br10a_muni5yr_lbl 2703601 `"Japaratinga"', add
label define br10a_muni5yr_lbl 2703700 `"Jaramataia"', add
label define br10a_muni5yr_lbl 2703759 `"Jequi� da Praia"', add
label define br10a_muni5yr_lbl 2703809 `"Joaquim Gomes"', add
label define br10a_muni5yr_lbl 2703908 `"Jundi�"', add
label define br10a_muni5yr_lbl 2704005 `"Junqueiro"', add
label define br10a_muni5yr_lbl 2704104 `"Lagoa da Canoa"', add
label define br10a_muni5yr_lbl 2704203 `"Limoeiro de Anadia"', add
label define br10a_muni5yr_lbl 2704302 `"Macei�"', add
label define br10a_muni5yr_lbl 2704401 `"Major Isidoro"', add
label define br10a_muni5yr_lbl 2704500 `"Maragogi"', add
label define br10a_muni5yr_lbl 2704609 `"Maravilha"', add
label define br10a_muni5yr_lbl 2704708 `"Marechal Deodoro"', add
label define br10a_muni5yr_lbl 2704807 `"Maribondo"', add
label define br10a_muni5yr_lbl 2704906 `"Mar Vermelho"', add
label define br10a_muni5yr_lbl 2705002 `"Mata Grande"', add
label define br10a_muni5yr_lbl 2705101 `"Matriz de Camaragibe"', add
label define br10a_muni5yr_lbl 2705200 `"Messias"', add
label define br10a_muni5yr_lbl 2705309 `"Minador do Negr�o"', add
label define br10a_muni5yr_lbl 2705408 `"Monteir�polis"', add
label define br10a_muni5yr_lbl 2705507 `"Murici"', add
label define br10a_muni5yr_lbl 2705606 `"Novo Lino"', add
label define br10a_muni5yr_lbl 2705705 `"Olho d'�gua das Flores"', add
label define br10a_muni5yr_lbl 2705804 `"Olho d'�gua do Casado"', add
label define br10a_muni5yr_lbl 2705903 `"Olho d'�gua Grande"', add
label define br10a_muni5yr_lbl 2706000 `"Oliven�a"', add
label define br10a_muni5yr_lbl 2706109 `"Ouro Branco"', add
label define br10a_muni5yr_lbl 2706208 `"Palestina"', add
label define br10a_muni5yr_lbl 2706307 `"Palmeira dos �ndios"', add
label define br10a_muni5yr_lbl 2706406 `"P�o de A��car"', add
label define br10a_muni5yr_lbl 2706422 `"Pariconha"', add
label define br10a_muni5yr_lbl 2706448 `"Paripueira"', add
label define br10a_muni5yr_lbl 2706505 `"Passo de Camaragibe"', add
label define br10a_muni5yr_lbl 2706604 `"Paulo Jacinto"', add
label define br10a_muni5yr_lbl 2706703 `"Penedo"', add
label define br10a_muni5yr_lbl 2706802 `"Pia�abu�u"', add
label define br10a_muni5yr_lbl 2706901 `"Pilar"', add
label define br10a_muni5yr_lbl 2707008 `"Pindoba"', add
label define br10a_muni5yr_lbl 2707107 `"Piranhas"', add
label define br10a_muni5yr_lbl 2707206 `"Po�o das Trincheiras"', add
label define br10a_muni5yr_lbl 2707305 `"Porto Calvo"', add
label define br10a_muni5yr_lbl 2707404 `"Porto de Pedras"', add
label define br10a_muni5yr_lbl 2707503 `"Porto Real do Col�gio"', add
label define br10a_muni5yr_lbl 2707602 `"Quebrangulo"', add
label define br10a_muni5yr_lbl 2707701 `"Rio Largo"', add
label define br10a_muni5yr_lbl 2707800 `"Roteiro"', add
label define br10a_muni5yr_lbl 2707909 `"Santa Luzia do Norte"', add
label define br10a_muni5yr_lbl 2708006 `"Santana do Ipanema"', add
label define br10a_muni5yr_lbl 2708105 `"Santana do Munda�"', add
label define br10a_muni5yr_lbl 2708204 `"S�o Br�s"', add
label define br10a_muni5yr_lbl 2708303 `"S�o Jos� da Laje"', add
label define br10a_muni5yr_lbl 2708402 `"S�o Jos� da Tapera"', add
label define br10a_muni5yr_lbl 2708501 `"S�o Lu�s do Quitunde"', add
label define br10a_muni5yr_lbl 2708600 `"S�o Miguel dos Campos"', add
label define br10a_muni5yr_lbl 2708709 `"S�o Miguel dos Milagres"', add
label define br10a_muni5yr_lbl 2708808 `"S�o Sebasti�o"', add
label define br10a_muni5yr_lbl 2708907 `"Satuba"', add
label define br10a_muni5yr_lbl 2708956 `"Senador Rui Palmeira"', add
label define br10a_muni5yr_lbl 2709004 `"Tanque d'Arca"', add
label define br10a_muni5yr_lbl 2709103 `"Taquarana"', add
label define br10a_muni5yr_lbl 2709152 `"Teot�nio Vilela"', add
label define br10a_muni5yr_lbl 2709202 `"Traipu"', add
label define br10a_muni5yr_lbl 2709301 `"Uni�o dos Palmares"', add
label define br10a_muni5yr_lbl 2709400 `"Vi�osa"', add
label define br10a_muni5yr_lbl 2799999 `"Alagoas, municipality unknown"', add
label define br10a_muni5yr_lbl 2800100 `"Amparo de S�o Francisco"', add
label define br10a_muni5yr_lbl 2800209 `"Aquidab�"', add
label define br10a_muni5yr_lbl 2800308 `"Aracaju"', add
label define br10a_muni5yr_lbl 2800407 `"Arau�"', add
label define br10a_muni5yr_lbl 2800506 `"Areia Branca"', add
label define br10a_muni5yr_lbl 2800605 `"Barra dos Coqueiros"', add
label define br10a_muni5yr_lbl 2800670 `"Boquim"', add
label define br10a_muni5yr_lbl 2800704 `"Brejo Grande"', add
label define br10a_muni5yr_lbl 2801009 `"Campo do Brito"', add
label define br10a_muni5yr_lbl 2801108 `"Canhoba"', add
label define br10a_muni5yr_lbl 2801207 `"Canind� de S�o Francisco"', add
label define br10a_muni5yr_lbl 2801306 `"Capela"', add
label define br10a_muni5yr_lbl 2801405 `"Carira"', add
label define br10a_muni5yr_lbl 2801504 `"Carm�polis"', add
label define br10a_muni5yr_lbl 2801603 `"Cedro de S�o Jo�o"', add
label define br10a_muni5yr_lbl 2801702 `"Cristin�polis"', add
label define br10a_muni5yr_lbl 2801900 `"Cumbe"', add
label define br10a_muni5yr_lbl 2802007 `"Divina Pastora"', add
label define br10a_muni5yr_lbl 2802106 `"Est�ncia"', add
label define br10a_muni5yr_lbl 2802205 `"Feira Nova"', add
label define br10a_muni5yr_lbl 2802304 `"Frei Paulo"', add
label define br10a_muni5yr_lbl 2802403 `"Gararu"', add
label define br10a_muni5yr_lbl 2802502 `"General Maynard"', add
label define br10a_muni5yr_lbl 2802601 `"Gracho Cardoso"', add
label define br10a_muni5yr_lbl 2802700 `"Ilha das Flores"', add
label define br10a_muni5yr_lbl 2802809 `"Indiaroba"', add
label define br10a_muni5yr_lbl 2802908 `"Itabaiana"', add
label define br10a_muni5yr_lbl 2803005 `"Itabaianinha"', add
label define br10a_muni5yr_lbl 2803104 `"Itabi"', add
label define br10a_muni5yr_lbl 2803203 `"Itaporanga d'Ajuda"', add
label define br10a_muni5yr_lbl 2803302 `"Japaratuba"', add
label define br10a_muni5yr_lbl 2803401 `"Japoat�"', add
label define br10a_muni5yr_lbl 2803500 `"Lagarto"', add
label define br10a_muni5yr_lbl 2803609 `"Laranjeiras"', add
label define br10a_muni5yr_lbl 2803708 `"Macambira"', add
label define br10a_muni5yr_lbl 2803807 `"Malhada dos Bois"', add
label define br10a_muni5yr_lbl 2803906 `"Malhador"', add
label define br10a_muni5yr_lbl 2804003 `"Maruim"', add
label define br10a_muni5yr_lbl 2804102 `"Moita Bonita"', add
label define br10a_muni5yr_lbl 2804201 `"Monte Alegre de Sergipe"', add
label define br10a_muni5yr_lbl 2804300 `"Muribeca"', add
label define br10a_muni5yr_lbl 2804409 `"Ne�polis"', add
label define br10a_muni5yr_lbl 2804458 `"Nossa Senhora Aparecida"', add
label define br10a_muni5yr_lbl 2804508 `"Nossa Senhora da Gl�ria"', add
label define br10a_muni5yr_lbl 2804607 `"Nossa Senhora das Dores"', add
label define br10a_muni5yr_lbl 2804706 `"Nossa Senhora de Lourdes"', add
label define br10a_muni5yr_lbl 2804805 `"Nossa Senhora do Socorro"', add
label define br10a_muni5yr_lbl 2804904 `"Pacatuba"', add
label define br10a_muni5yr_lbl 2805000 `"Pedra Mole"', add
label define br10a_muni5yr_lbl 2805109 `"Pedrinhas"', add
label define br10a_muni5yr_lbl 2805208 `"Pinh�o"', add
label define br10a_muni5yr_lbl 2805307 `"Pirambu"', add
label define br10a_muni5yr_lbl 2805406 `"Po�o Redondo"', add
label define br10a_muni5yr_lbl 2805505 `"Po�o Verde"', add
label define br10a_muni5yr_lbl 2805604 `"Porto da Folha"', add
label define br10a_muni5yr_lbl 2805703 `"Propri�"', add
label define br10a_muni5yr_lbl 2805802 `"Riach�o do Dantas"', add
label define br10a_muni5yr_lbl 2805901 `"Riachuelo"', add
label define br10a_muni5yr_lbl 2806008 `"Ribeir�polis"', add
label define br10a_muni5yr_lbl 2806107 `"Ros�rio do Catete"', add
label define br10a_muni5yr_lbl 2806206 `"Salgado"', add
label define br10a_muni5yr_lbl 2806305 `"Santa Luzia do Itanhy"', add
label define br10a_muni5yr_lbl 2806404 `"Santana do S�o Francisco"', add
label define br10a_muni5yr_lbl 2806503 `"Santa Rosa de Lima"', add
label define br10a_muni5yr_lbl 2806602 `"Santo Amaro das Brotas"', add
label define br10a_muni5yr_lbl 2806701 `"S�o Crist�v�o"', add
label define br10a_muni5yr_lbl 2806800 `"S�o Domingos"', add
label define br10a_muni5yr_lbl 2806909 `"S�o Francisco"', add
label define br10a_muni5yr_lbl 2807006 `"S�o Miguel do Aleixo"', add
label define br10a_muni5yr_lbl 2807105 `"Sim�o Dias"', add
label define br10a_muni5yr_lbl 2807204 `"Siriri"', add
label define br10a_muni5yr_lbl 2807303 `"Telha"', add
label define br10a_muni5yr_lbl 2807402 `"Tobias Barreto"', add
label define br10a_muni5yr_lbl 2807501 `"Tomar do Geru"', add
label define br10a_muni5yr_lbl 2807600 `"Umba�ba"', add
label define br10a_muni5yr_lbl 2899999 `"Sergipe, municipality unknown"', add
label define br10a_muni5yr_lbl 2900108 `"Aba�ra"', add
label define br10a_muni5yr_lbl 2900207 `"Abar�"', add
label define br10a_muni5yr_lbl 2900306 `"Acajutiba"', add
label define br10a_muni5yr_lbl 2900355 `"Adustina"', add
label define br10a_muni5yr_lbl 2900405 `"�gua Fria"', add
label define br10a_muni5yr_lbl 2900504 `"�rico Cardoso"', add
label define br10a_muni5yr_lbl 2900603 `"Aiquara"', add
label define br10a_muni5yr_lbl 2900702 `"Alagoinhas"', add
label define br10a_muni5yr_lbl 2900801 `"Alcoba�a"', add
label define br10a_muni5yr_lbl 2900900 `"Almadina"', add
label define br10a_muni5yr_lbl 2901007 `"Amargosa"', add
label define br10a_muni5yr_lbl 2901106 `"Am�lia Rodrigues"', add
label define br10a_muni5yr_lbl 2901155 `"Am�rica Dourada"', add
label define br10a_muni5yr_lbl 2901205 `"Anag�"', add
label define br10a_muni5yr_lbl 2901304 `"Andara�"', add
label define br10a_muni5yr_lbl 2901353 `"Andorinha"', add
label define br10a_muni5yr_lbl 2901403 `"Angical"', add
label define br10a_muni5yr_lbl 2901502 `"Anguera"', add
label define br10a_muni5yr_lbl 2901601 `"Antas"', add
label define br10a_muni5yr_lbl 2901700 `"Ant�nio Cardoso"', add
label define br10a_muni5yr_lbl 2901809 `"Ant�nio Gon�alves"', add
label define br10a_muni5yr_lbl 2901908 `"Apor�"', add
label define br10a_muni5yr_lbl 2901957 `"Apuarema"', add
label define br10a_muni5yr_lbl 2902005 `"Aracatu"', add
label define br10a_muni5yr_lbl 2902054 `"Ara�as"', add
label define br10a_muni5yr_lbl 2902104 `"Araci"', add
label define br10a_muni5yr_lbl 2902203 `"Aramari"', add
label define br10a_muni5yr_lbl 2902252 `"Arataca"', add
label define br10a_muni5yr_lbl 2902302 `"Aratu�pe"', add
label define br10a_muni5yr_lbl 2902401 `"Aurelino Leal"', add
label define br10a_muni5yr_lbl 2902500 `"Baian�polis"', add
label define br10a_muni5yr_lbl 2902609 `"Baixa Grande"', add
label define br10a_muni5yr_lbl 2902658 `"Banza�"', add
label define br10a_muni5yr_lbl 2902708 `"Barra"', add
label define br10a_muni5yr_lbl 2902807 `"Barra da Estiva"', add
label define br10a_muni5yr_lbl 2902906 `"Barra do Cho�a"', add
label define br10a_muni5yr_lbl 2903003 `"Barra do Mendes"', add
label define br10a_muni5yr_lbl 2903102 `"Barra do Rocha"', add
label define br10a_muni5yr_lbl 2903201 `"Barreiras"', add
label define br10a_muni5yr_lbl 2903235 `"Barro Alto"', add
label define br10a_muni5yr_lbl 2903276 `"Barrocas"', add
label define br10a_muni5yr_lbl 2903300 `"Barro Preto"', add
label define br10a_muni5yr_lbl 2903409 `"Belmonte"', add
label define br10a_muni5yr_lbl 2903508 `"Belo Campo"', add
label define br10a_muni5yr_lbl 2903607 `"Biritinga"', add
label define br10a_muni5yr_lbl 2903706 `"Boa Nova"', add
label define br10a_muni5yr_lbl 2903805 `"Boa Vista do Tupim"', add
label define br10a_muni5yr_lbl 2903904 `"Bom Jesus da Lapa"', add
label define br10a_muni5yr_lbl 2903953 `"Bom Jesus da Serra"', add
label define br10a_muni5yr_lbl 2904001 `"Boninal"', add
label define br10a_muni5yr_lbl 2904050 `"Bonito"', add
label define br10a_muni5yr_lbl 2904100 `"Boquira"', add
label define br10a_muni5yr_lbl 2904209 `"Botupor�"', add
label define br10a_muni5yr_lbl 2904308 `"Brej�es"', add
label define br10a_muni5yr_lbl 2904407 `"Brejol�ndia"', add
label define br10a_muni5yr_lbl 2904506 `"Brotas de Maca�bas"', add
label define br10a_muni5yr_lbl 2904605 `"Brumado"', add
label define br10a_muni5yr_lbl 2904704 `"Buerarema"', add
label define br10a_muni5yr_lbl 2904753 `"Buritirama"', add
label define br10a_muni5yr_lbl 2904803 `"Caatiba"', add
label define br10a_muni5yr_lbl 2904852 `"Cabaceiras do Paragua�u"', add
label define br10a_muni5yr_lbl 2904902 `"Cachoeira"', add
label define br10a_muni5yr_lbl 2905008 `"Cacul�"', add
label define br10a_muni5yr_lbl 2905107 `"Ca�m"', add
label define br10a_muni5yr_lbl 2905156 `"Caetanos"', add
label define br10a_muni5yr_lbl 2905206 `"Caetit�"', add
label define br10a_muni5yr_lbl 2905305 `"Cafarnaum"', add
label define br10a_muni5yr_lbl 2905404 `"Cairu"', add
label define br10a_muni5yr_lbl 2905503 `"Caldeir�o Grande"', add
label define br10a_muni5yr_lbl 2905602 `"Camacan"', add
label define br10a_muni5yr_lbl 2905701 `"Cama�ari"', add
label define br10a_muni5yr_lbl 2905800 `"Camamu"', add
label define br10a_muni5yr_lbl 2905909 `"Campo Alegre de Lourdes"', add
label define br10a_muni5yr_lbl 2906006 `"Campo Formoso"', add
label define br10a_muni5yr_lbl 2906105 `"Can�polis"', add
label define br10a_muni5yr_lbl 2906204 `"Canarana"', add
label define br10a_muni5yr_lbl 2906303 `"Canavieiras"', add
label define br10a_muni5yr_lbl 2906402 `"Candeal"', add
label define br10a_muni5yr_lbl 2906501 `"Candeias"', add
label define br10a_muni5yr_lbl 2906600 `"Candiba"', add
label define br10a_muni5yr_lbl 2906709 `"C�ndido Sales"', add
label define br10a_muni5yr_lbl 2906808 `"Cansan��o"', add
label define br10a_muni5yr_lbl 2906824 `"Canudos"', add
label define br10a_muni5yr_lbl 2906857 `"Capela do Alto Alegre"', add
label define br10a_muni5yr_lbl 2906873 `"Capim Grosso"', add
label define br10a_muni5yr_lbl 2906899 `"Cara�bas"', add
label define br10a_muni5yr_lbl 2906907 `"Caravelas"', add
label define br10a_muni5yr_lbl 2907004 `"Cardeal da Silva"', add
label define br10a_muni5yr_lbl 2907103 `"Carinhanha"', add
label define br10a_muni5yr_lbl 2907202 `"Casa Nova"', add
label define br10a_muni5yr_lbl 2907301 `"Castro Alves"', add
label define br10a_muni5yr_lbl 2907400 `"Catol�ndia"', add
label define br10a_muni5yr_lbl 2907509 `"Catu"', add
label define br10a_muni5yr_lbl 2907558 `"Caturama"', add
label define br10a_muni5yr_lbl 2907608 `"Central"', add
label define br10a_muni5yr_lbl 2907707 `"Chorroch�"', add
label define br10a_muni5yr_lbl 2907806 `"C�cero Dantas"', add
label define br10a_muni5yr_lbl 2907905 `"Cip�"', add
label define br10a_muni5yr_lbl 2908002 `"Coaraci"', add
label define br10a_muni5yr_lbl 2908101 `"Cocos"', add
label define br10a_muni5yr_lbl 2908200 `"Concei��o da Feira"', add
label define br10a_muni5yr_lbl 2908309 `"Concei��o do Almeida"', add
label define br10a_muni5yr_lbl 2908408 `"Concei��o do Coit�"', add
label define br10a_muni5yr_lbl 2908507 `"Concei��o do Jacu�pe"', add
label define br10a_muni5yr_lbl 2908606 `"Conde"', add
label define br10a_muni5yr_lbl 2908705 `"Conde�ba"', add
label define br10a_muni5yr_lbl 2908804 `"Contendas do Sincor�"', add
label define br10a_muni5yr_lbl 2908903 `"Cora��o de Maria"', add
label define br10a_muni5yr_lbl 2909000 `"Cordeiros"', add
label define br10a_muni5yr_lbl 2909109 `"Coribe"', add
label define br10a_muni5yr_lbl 2909208 `"Coronel Jo�o S�"', add
label define br10a_muni5yr_lbl 2909307 `"Correntina"', add
label define br10a_muni5yr_lbl 2909406 `"Cotegipe"', add
label define br10a_muni5yr_lbl 2909505 `"Cravol�ndia"', add
label define br10a_muni5yr_lbl 2909604 `"Cris�polis"', add
label define br10a_muni5yr_lbl 2909703 `"Crist�polis"', add
label define br10a_muni5yr_lbl 2909802 `"Cruz das Almas"', add
label define br10a_muni5yr_lbl 2909901 `"Cura��"', add
label define br10a_muni5yr_lbl 2910008 `"D�rio Meira"', add
label define br10a_muni5yr_lbl 2910057 `"Dias d'�vila"', add
label define br10a_muni5yr_lbl 2910107 `"Dom Bas�lio"', add
label define br10a_muni5yr_lbl 2910206 `"Dom Macedo Costa"', add
label define br10a_muni5yr_lbl 2910305 `"El�sio Medrado"', add
label define br10a_muni5yr_lbl 2910404 `"Encruzilhada"', add
label define br10a_muni5yr_lbl 2910503 `"Entre Rios"', add
label define br10a_muni5yr_lbl 2910602 `"Esplanada"', add
label define br10a_muni5yr_lbl 2910701 `"Euclides da Cunha"', add
label define br10a_muni5yr_lbl 2910727 `"Eun�polis"', add
label define br10a_muni5yr_lbl 2910750 `"F�tima"', add
label define br10a_muni5yr_lbl 2910776 `"Feira da Mata"', add
label define br10a_muni5yr_lbl 2910800 `"Feira de Santana"', add
label define br10a_muni5yr_lbl 2910859 `"Filad�lfia"', add
label define br10a_muni5yr_lbl 2910909 `"Firmino Alves"', add
label define br10a_muni5yr_lbl 2911006 `"Floresta Azul"', add
label define br10a_muni5yr_lbl 2911105 `"Formosa do Rio Preto"', add
label define br10a_muni5yr_lbl 2911204 `"Gandu"', add
label define br10a_muni5yr_lbl 2911253 `"Gavi�o"', add
label define br10a_muni5yr_lbl 2911303 `"Gentio do Ouro"', add
label define br10a_muni5yr_lbl 2911402 `"Gl�ria"', add
label define br10a_muni5yr_lbl 2911501 `"Gongogi"', add
label define br10a_muni5yr_lbl 2911600 `"Governador Mangabeira"', add
label define br10a_muni5yr_lbl 2911659 `"Guajeru"', add
label define br10a_muni5yr_lbl 2911709 `"Guanambi"', add
label define br10a_muni5yr_lbl 2911808 `"Guaratinga"', add
label define br10a_muni5yr_lbl 2911857 `"Heli�polis"', add
label define br10a_muni5yr_lbl 2911907 `"Ia�u"', add
label define br10a_muni5yr_lbl 2912004 `"Ibiassuc�"', add
label define br10a_muni5yr_lbl 2912103 `"Ibicara�"', add
label define br10a_muni5yr_lbl 2912202 `"Ibicoara"', add
label define br10a_muni5yr_lbl 2912301 `"Ibicu�"', add
label define br10a_muni5yr_lbl 2912400 `"Ibipeba"', add
label define br10a_muni5yr_lbl 2912509 `"Ibipitanga"', add
label define br10a_muni5yr_lbl 2912608 `"Ibiquera"', add
label define br10a_muni5yr_lbl 2912707 `"Ibirapitanga"', add
label define br10a_muni5yr_lbl 2912806 `"Ibirapu�"', add
label define br10a_muni5yr_lbl 2912905 `"Ibirataia"', add
label define br10a_muni5yr_lbl 2913002 `"Ibitiara"', add
label define br10a_muni5yr_lbl 2913101 `"Ibitit�"', add
label define br10a_muni5yr_lbl 2913200 `"Ibotirama"', add
label define br10a_muni5yr_lbl 2913309 `"Ichu"', add
label define br10a_muni5yr_lbl 2913408 `"Igapor�"', add
label define br10a_muni5yr_lbl 2913457 `"Igrapi�na"', add
label define br10a_muni5yr_lbl 2913507 `"Igua�"', add
label define br10a_muni5yr_lbl 2913606 `"Ilh�us"', add
label define br10a_muni5yr_lbl 2913705 `"Inhambupe"', add
label define br10a_muni5yr_lbl 2913804 `"Ipecaet�"', add
label define br10a_muni5yr_lbl 2913903 `"Ipia�"', add
label define br10a_muni5yr_lbl 2914000 `"Ipir�"', add
label define br10a_muni5yr_lbl 2914109 `"Ipupiara"', add
label define br10a_muni5yr_lbl 2914208 `"Irajuba"', add
label define br10a_muni5yr_lbl 2914307 `"Iramaia"', add
label define br10a_muni5yr_lbl 2914406 `"Iraquara"', add
label define br10a_muni5yr_lbl 2914505 `"Irar�"', add
label define br10a_muni5yr_lbl 2914604 `"Irec�"', add
label define br10a_muni5yr_lbl 2914653 `"Itabela"', add
label define br10a_muni5yr_lbl 2914703 `"Itaberaba"', add
label define br10a_muni5yr_lbl 2914802 `"Itabuna"', add
label define br10a_muni5yr_lbl 2914901 `"Itacar�"', add
label define br10a_muni5yr_lbl 2915007 `"Itaet�"', add
label define br10a_muni5yr_lbl 2915106 `"Itagi"', add
label define br10a_muni5yr_lbl 2915205 `"Itagib�"', add
label define br10a_muni5yr_lbl 2915304 `"Itagimirim"', add
label define br10a_muni5yr_lbl 2915353 `"Itagua�u da Bahia"', add
label define br10a_muni5yr_lbl 2915403 `"Itaju do Col�nia"', add
label define br10a_muni5yr_lbl 2915502 `"Itaju�pe"', add
label define br10a_muni5yr_lbl 2915601 `"Itamaraju"', add
label define br10a_muni5yr_lbl 2915700 `"Itamari"', add
label define br10a_muni5yr_lbl 2915809 `"Itamb�"', add
label define br10a_muni5yr_lbl 2915908 `"Itanagra"', add
label define br10a_muni5yr_lbl 2916005 `"Itanh�m"', add
label define br10a_muni5yr_lbl 2916104 `"Itaparica"', add
label define br10a_muni5yr_lbl 2916203 `"Itap�"', add
label define br10a_muni5yr_lbl 2916302 `"Itapebi"', add
label define br10a_muni5yr_lbl 2916401 `"Itapetinga"', add
label define br10a_muni5yr_lbl 2916500 `"Itapicuru"', add
label define br10a_muni5yr_lbl 2916609 `"Itapitanga"', add
label define br10a_muni5yr_lbl 2916708 `"Itaquara"', add
label define br10a_muni5yr_lbl 2916807 `"Itarantim"', add
label define br10a_muni5yr_lbl 2916856 `"Itatim"', add
label define br10a_muni5yr_lbl 2916906 `"Itiru�u"', add
label define br10a_muni5yr_lbl 2917003 `"Iti�ba"', add
label define br10a_muni5yr_lbl 2917102 `"Itoror�"', add
label define br10a_muni5yr_lbl 2917201 `"Itua�u"', add
label define br10a_muni5yr_lbl 2917300 `"Ituber�"', add
label define br10a_muni5yr_lbl 2917334 `"Iui�"', add
label define br10a_muni5yr_lbl 2917359 `"Jaborandi"', add
label define br10a_muni5yr_lbl 2917409 `"Jacaraci"', add
label define br10a_muni5yr_lbl 2917508 `"Jacobina"', add
label define br10a_muni5yr_lbl 2917607 `"Jaguaquara"', add
label define br10a_muni5yr_lbl 2917706 `"Jaguarari"', add
label define br10a_muni5yr_lbl 2917805 `"Jaguaripe"', add
label define br10a_muni5yr_lbl 2917904 `"Janda�ra"', add
label define br10a_muni5yr_lbl 2918001 `"Jequi�"', add
label define br10a_muni5yr_lbl 2918100 `"Jeremoabo"', add
label define br10a_muni5yr_lbl 2918209 `"Jiquiri��"', add
label define br10a_muni5yr_lbl 2918308 `"Jita�na"', add
label define br10a_muni5yr_lbl 2918357 `"Jo�o Dourado"', add
label define br10a_muni5yr_lbl 2918407 `"Juazeiro"', add
label define br10a_muni5yr_lbl 2918456 `"Jucuru�u"', add
label define br10a_muni5yr_lbl 2918506 `"Jussara"', add
label define br10a_muni5yr_lbl 2918555 `"Jussari"', add
label define br10a_muni5yr_lbl 2918605 `"Jussiape"', add
label define br10a_muni5yr_lbl 2918704 `"Lafaiete Coutinho"', add
label define br10a_muni5yr_lbl 2918753 `"Lagoa Real"', add
label define br10a_muni5yr_lbl 2918803 `"Laje"', add
label define br10a_muni5yr_lbl 2918902 `"Lajed�o"', add
label define br10a_muni5yr_lbl 2919009 `"Lajedinho"', add
label define br10a_muni5yr_lbl 2919058 `"Lajedo do Tabocal"', add
label define br10a_muni5yr_lbl 2919108 `"Lamar�o"', add
label define br10a_muni5yr_lbl 2919157 `"Lap�o"', add
label define br10a_muni5yr_lbl 2919207 `"Lauro de Freitas"', add
label define br10a_muni5yr_lbl 2919306 `"Len��is"', add
label define br10a_muni5yr_lbl 2919405 `"Lic�nio de Almeida"', add
label define br10a_muni5yr_lbl 2919504 `"Livramento de Nossa Senhora"', add
label define br10a_muni5yr_lbl 2919553 `"Lu�s Eduardo Magalh�es"', add
label define br10a_muni5yr_lbl 2919603 `"Macajuba"', add
label define br10a_muni5yr_lbl 2919702 `"Macarani"', add
label define br10a_muni5yr_lbl 2919801 `"Maca�bas"', add
label define br10a_muni5yr_lbl 2919900 `"Macurur�"', add
label define br10a_muni5yr_lbl 2919926 `"Madre de Deus"', add
label define br10a_muni5yr_lbl 2919959 `"Maetinga"', add
label define br10a_muni5yr_lbl 2920007 `"Maiquinique"', add
label define br10a_muni5yr_lbl 2920106 `"Mairi"', add
label define br10a_muni5yr_lbl 2920205 `"Malhada"', add
label define br10a_muni5yr_lbl 2920304 `"Malhada de Pedras"', add
label define br10a_muni5yr_lbl 2920403 `"Manoel Vitorino"', add
label define br10a_muni5yr_lbl 2920452 `"Mansid�o"', add
label define br10a_muni5yr_lbl 2920502 `"Marac�s"', add
label define br10a_muni5yr_lbl 2920601 `"Maragogipe"', add
label define br10a_muni5yr_lbl 2920700 `"Mara�"', add
label define br10a_muni5yr_lbl 2920809 `"Marcion�lio Souza"', add
label define br10a_muni5yr_lbl 2920908 `"Mascote"', add
label define br10a_muni5yr_lbl 2921005 `"Mata de S�o Jo�o"', add
label define br10a_muni5yr_lbl 2921054 `"Matina"', add
label define br10a_muni5yr_lbl 2921104 `"Medeiros Neto"', add
label define br10a_muni5yr_lbl 2921203 `"Miguel Calmon"', add
label define br10a_muni5yr_lbl 2921302 `"Milagres"', add
label define br10a_muni5yr_lbl 2921401 `"Mirangaba"', add
label define br10a_muni5yr_lbl 2921450 `"Mirante"', add
label define br10a_muni5yr_lbl 2921500 `"Monte Santo"', add
label define br10a_muni5yr_lbl 2921609 `"Morpar�"', add
label define br10a_muni5yr_lbl 2921708 `"Morro do Chap�u"', add
label define br10a_muni5yr_lbl 2921807 `"Mortugaba"', add
label define br10a_muni5yr_lbl 2921906 `"Mucug�"', add
label define br10a_muni5yr_lbl 2922003 `"Mucuri"', add
label define br10a_muni5yr_lbl 2922052 `"Mulungu do Morro"', add
label define br10a_muni5yr_lbl 2922102 `"Mundo Novo"', add
label define br10a_muni5yr_lbl 2922201 `"Muniz Ferreira"', add
label define br10a_muni5yr_lbl 2922250 `"Muqu�m de S�o Francisco"', add
label define br10a_muni5yr_lbl 2922300 `"Muritiba"', add
label define br10a_muni5yr_lbl 2922409 `"Mutu�pe"', add
label define br10a_muni5yr_lbl 2922508 `"Nazar�"', add
label define br10a_muni5yr_lbl 2922607 `"Nilo Pe�anha"', add
label define br10a_muni5yr_lbl 2922656 `"Nordestina"', add
label define br10a_muni5yr_lbl 2922706 `"Nova Cana�"', add
label define br10a_muni5yr_lbl 2922730 `"Nova F�tima"', add
label define br10a_muni5yr_lbl 2922755 `"Nova Ibi�"', add
label define br10a_muni5yr_lbl 2922805 `"Nova Itarana"', add
label define br10a_muni5yr_lbl 2922854 `"Nova Reden��o"', add
label define br10a_muni5yr_lbl 2922904 `"Nova Soure"', add
label define br10a_muni5yr_lbl 2923001 `"Nova Vi�osa"', add
label define br10a_muni5yr_lbl 2923035 `"Novo Horizonte"', add
label define br10a_muni5yr_lbl 2923050 `"Novo Triunfo"', add
label define br10a_muni5yr_lbl 2923100 `"Olindina"', add
label define br10a_muni5yr_lbl 2923209 `"Oliveira dos Brejinhos"', add
label define br10a_muni5yr_lbl 2923308 `"Ouri�angas"', add
label define br10a_muni5yr_lbl 2923357 `"Ourol�ndia"', add
label define br10a_muni5yr_lbl 2923407 `"Palmas de Monte Alto"', add
label define br10a_muni5yr_lbl 2923506 `"Palmeiras"', add
label define br10a_muni5yr_lbl 2923605 `"Paramirim"', add
label define br10a_muni5yr_lbl 2923704 `"Paratinga"', add
label define br10a_muni5yr_lbl 2923803 `"Paripiranga"', add
label define br10a_muni5yr_lbl 2923902 `"Pau Brasil"', add
label define br10a_muni5yr_lbl 2924009 `"Paulo Afonso"', add
label define br10a_muni5yr_lbl 2924058 `"P� de Serra"', add
label define br10a_muni5yr_lbl 2924108 `"Pedr�o"', add
label define br10a_muni5yr_lbl 2924207 `"Pedro Alexandre"', add
label define br10a_muni5yr_lbl 2924306 `"Piat�"', add
label define br10a_muni5yr_lbl 2924405 `"Pil�o Arcado"', add
label define br10a_muni5yr_lbl 2924504 `"Pinda�"', add
label define br10a_muni5yr_lbl 2924603 `"Pindoba�u"', add
label define br10a_muni5yr_lbl 2924652 `"Pintadas"', add
label define br10a_muni5yr_lbl 2924678 `"Pira� do Norte"', add
label define br10a_muni5yr_lbl 2924702 `"Pirip�"', add
label define br10a_muni5yr_lbl 2924801 `"Piritiba"', add
label define br10a_muni5yr_lbl 2924900 `"Planaltino"', add
label define br10a_muni5yr_lbl 2925006 `"Planalto"', add
label define br10a_muni5yr_lbl 2925105 `"Po��es"', add
label define br10a_muni5yr_lbl 2925204 `"Pojuca"', add
label define br10a_muni5yr_lbl 2925253 `"Ponto Novo"', add
label define br10a_muni5yr_lbl 2925303 `"Porto Seguro"', add
label define br10a_muni5yr_lbl 2925402 `"Potiragu�"', add
label define br10a_muni5yr_lbl 2925501 `"Prado"', add
label define br10a_muni5yr_lbl 2925600 `"Presidente Dutra"', add
label define br10a_muni5yr_lbl 2925709 `"Presidente J�nio Quadros"', add
label define br10a_muni5yr_lbl 2925758 `"Presidente Tancredo Neves"', add
label define br10a_muni5yr_lbl 2925808 `"Queimadas"', add
label define br10a_muni5yr_lbl 2925907 `"Quijingue"', add
label define br10a_muni5yr_lbl 2925931 `"Quixabeira"', add
label define br10a_muni5yr_lbl 2925956 `"Rafael Jambeiro"', add
label define br10a_muni5yr_lbl 2926004 `"Remanso"', add
label define br10a_muni5yr_lbl 2926103 `"Retirol�ndia"', add
label define br10a_muni5yr_lbl 2926202 `"Riach�o das Neves"', add
label define br10a_muni5yr_lbl 2926301 `"Riach�o do Jacu�pe"', add
label define br10a_muni5yr_lbl 2926400 `"Riacho de Santana"', add
label define br10a_muni5yr_lbl 2926509 `"Ribeira do Amparo"', add
label define br10a_muni5yr_lbl 2926608 `"Ribeira do Pombal"', add
label define br10a_muni5yr_lbl 2926657 `"Ribeir�o do Largo"', add
label define br10a_muni5yr_lbl 2926707 `"Rio de Contas"', add
label define br10a_muni5yr_lbl 2926806 `"Rio do Ant�nio"', add
label define br10a_muni5yr_lbl 2926905 `"Rio do Pires"', add
label define br10a_muni5yr_lbl 2927002 `"Rio Real"', add
label define br10a_muni5yr_lbl 2927101 `"Rodelas"', add
label define br10a_muni5yr_lbl 2927200 `"Ruy Barbosa"', add
label define br10a_muni5yr_lbl 2927309 `"Salinas da Margarida"', add
label define br10a_muni5yr_lbl 2927408 `"Salvador"', add
label define br10a_muni5yr_lbl 2927507 `"Santa B�rbara"', add
label define br10a_muni5yr_lbl 2927606 `"Santa Br�gida"', add
label define br10a_muni5yr_lbl 2927705 `"Santa Cruz Cabr�lia"', add
label define br10a_muni5yr_lbl 2927804 `"Santa Cruz da Vit�ria"', add
label define br10a_muni5yr_lbl 2927903 `"Santa In�s"', add
label define br10a_muni5yr_lbl 2928000 `"Santaluz"', add
label define br10a_muni5yr_lbl 2928059 `"Santa Luzia"', add
label define br10a_muni5yr_lbl 2928109 `"Santa Maria da Vit�ria"', add
label define br10a_muni5yr_lbl 2928208 `"Santana"', add
label define br10a_muni5yr_lbl 2928307 `"Santan�polis"', add
label define br10a_muni5yr_lbl 2928406 `"Santa Rita de C�ssia"', add
label define br10a_muni5yr_lbl 2928505 `"Santa Teresinha"', add
label define br10a_muni5yr_lbl 2928604 `"Santo Amaro"', add
label define br10a_muni5yr_lbl 2928703 `"Santo Ant�nio de Jesus"', add
label define br10a_muni5yr_lbl 2928802 `"Santo Est�v�o"', add
label define br10a_muni5yr_lbl 2928901 `"S�o Desid�rio"', add
label define br10a_muni5yr_lbl 2928950 `"S�o Domingos"', add
label define br10a_muni5yr_lbl 2929008 `"S�o F�lix"', add
label define br10a_muni5yr_lbl 2929057 `"S�o F�lix do Coribe"', add
label define br10a_muni5yr_lbl 2929107 `"S�o Felipe"', add
label define br10a_muni5yr_lbl 2929206 `"S�o Francisco do Conde"', add
label define br10a_muni5yr_lbl 2929255 `"S�o Gabriel"', add
label define br10a_muni5yr_lbl 2929305 `"S�o Gon�alo dos Campos"', add
label define br10a_muni5yr_lbl 2929354 `"S�o Jos� da Vit�ria"', add
label define br10a_muni5yr_lbl 2929370 `"S�o Jos� do Jacu�pe"', add
label define br10a_muni5yr_lbl 2929404 `"S�o Miguel das Matas"', add
label define br10a_muni5yr_lbl 2929503 `"S�o Sebasti�o do Pass�"', add
label define br10a_muni5yr_lbl 2929602 `"Sapea�u"', add
label define br10a_muni5yr_lbl 2929701 `"S�tiro Dias"', add
label define br10a_muni5yr_lbl 2929750 `"Saubara"', add
label define br10a_muni5yr_lbl 2929800 `"Sa�de"', add
label define br10a_muni5yr_lbl 2929909 `"Seabra"', add
label define br10a_muni5yr_lbl 2930006 `"Sebasti�o Laranjeiras"', add
label define br10a_muni5yr_lbl 2930105 `"Senhor do Bonfim"', add
label define br10a_muni5yr_lbl 2930154 `"Serra do Ramalho"', add
label define br10a_muni5yr_lbl 2930204 `"Sento S�"', add
label define br10a_muni5yr_lbl 2930303 `"Serra Dourada"', add
label define br10a_muni5yr_lbl 2930402 `"Serra Preta"', add
label define br10a_muni5yr_lbl 2930501 `"Serrinha"', add
label define br10a_muni5yr_lbl 2930600 `"Serrol�ndia"', add
label define br10a_muni5yr_lbl 2930709 `"Sim�es Filho"', add
label define br10a_muni5yr_lbl 2930758 `"S�tio do Mato"', add
label define br10a_muni5yr_lbl 2930766 `"S�tio do Quinto"', add
label define br10a_muni5yr_lbl 2930774 `"Sobradinho"', add
label define br10a_muni5yr_lbl 2930808 `"Souto Soares"', add
label define br10a_muni5yr_lbl 2930907 `"Tabocas do Brejo Velho"', add
label define br10a_muni5yr_lbl 2931004 `"Tanha�u"', add
label define br10a_muni5yr_lbl 2931053 `"Tanque Novo"', add
label define br10a_muni5yr_lbl 2931103 `"Tanquinho"', add
label define br10a_muni5yr_lbl 2931202 `"Tapero�"', add
label define br10a_muni5yr_lbl 2931301 `"Tapiramut�"', add
label define br10a_muni5yr_lbl 2931350 `"Teixeira de Freitas"', add
label define br10a_muni5yr_lbl 2931400 `"Teodoro Sampaio"', add
label define br10a_muni5yr_lbl 2931509 `"Teofil�ndia"', add
label define br10a_muni5yr_lbl 2931608 `"Teol�ndia"', add
label define br10a_muni5yr_lbl 2931707 `"Terra Nova"', add
label define br10a_muni5yr_lbl 2931806 `"Tremedal"', add
label define br10a_muni5yr_lbl 2931905 `"Tucano"', add
label define br10a_muni5yr_lbl 2932002 `"Uau�"', add
label define br10a_muni5yr_lbl 2932101 `"Uba�ra"', add
label define br10a_muni5yr_lbl 2932200 `"Ubaitaba"', add
label define br10a_muni5yr_lbl 2932309 `"Ubat�"', add
label define br10a_muni5yr_lbl 2932408 `"Uiba�"', add
label define br10a_muni5yr_lbl 2932457 `"Umburanas"', add
label define br10a_muni5yr_lbl 2932507 `"Una"', add
label define br10a_muni5yr_lbl 2932606 `"Urandi"', add
label define br10a_muni5yr_lbl 2932705 `"Uru�uca"', add
label define br10a_muni5yr_lbl 2932804 `"Utinga"', add
label define br10a_muni5yr_lbl 2932903 `"Valen�a"', add
label define br10a_muni5yr_lbl 2933000 `"Valente"', add
label define br10a_muni5yr_lbl 2933059 `"V�rzea da Ro�a"', add
label define br10a_muni5yr_lbl 2933109 `"V�rzea do Po�o"', add
label define br10a_muni5yr_lbl 2933158 `"V�rzea Nova"', add
label define br10a_muni5yr_lbl 2933174 `"Varzedo"', add
label define br10a_muni5yr_lbl 2933208 `"Vera Cruz"', add
label define br10a_muni5yr_lbl 2933257 `"Vereda"', add
label define br10a_muni5yr_lbl 2933307 `"Vit�ria da Conquista"', add
label define br10a_muni5yr_lbl 2933406 `"Wagner"', add
label define br10a_muni5yr_lbl 2933455 `"Wanderley"', add
label define br10a_muni5yr_lbl 2933505 `"Wenceslau Guimar�es"', add
label define br10a_muni5yr_lbl 2933604 `"Xique-Xique"', add
label define br10a_muni5yr_lbl 2999999 `"Bahia, municipality unknown"', add
label define br10a_muni5yr_lbl 3100104 `"Abadia dos Dourados"', add
label define br10a_muni5yr_lbl 3100203 `"Abaet�"', add
label define br10a_muni5yr_lbl 3100302 `"Abre Campo"', add
label define br10a_muni5yr_lbl 3100401 `"Acaiaca"', add
label define br10a_muni5yr_lbl 3100500 `"A�ucena"', add
label define br10a_muni5yr_lbl 3100609 `"�gua Boa"', add
label define br10a_muni5yr_lbl 3100708 `"�gua Comprida"', add
label define br10a_muni5yr_lbl 3100807 `"Aguanil"', add
label define br10a_muni5yr_lbl 3100906 `"�guas Formosas"', add
label define br10a_muni5yr_lbl 3101003 `"�guas Vermelhas"', add
label define br10a_muni5yr_lbl 3101102 `"Aimor�s"', add
label define br10a_muni5yr_lbl 3101201 `"Aiuruoca"', add
label define br10a_muni5yr_lbl 3101300 `"Alagoa"', add
label define br10a_muni5yr_lbl 3101409 `"Albertina"', add
label define br10a_muni5yr_lbl 3101508 `"Al�m Para�ba"', add
label define br10a_muni5yr_lbl 3101607 `"Alfenas"', add
label define br10a_muni5yr_lbl 3101631 `"Alfredo Vasconcelos"', add
label define br10a_muni5yr_lbl 3101706 `"Almenara"', add
label define br10a_muni5yr_lbl 3101805 `"Alpercata"', add
label define br10a_muni5yr_lbl 3101904 `"Alpin�polis"', add
label define br10a_muni5yr_lbl 3102001 `"Alterosa"', add
label define br10a_muni5yr_lbl 3102050 `"Alto Capara�"', add
label define br10a_muni5yr_lbl 3102100 `"Alto Rio Doce"', add
label define br10a_muni5yr_lbl 3102209 `"Alvarenga"', add
label define br10a_muni5yr_lbl 3102308 `"Alvin�polis"', add
label define br10a_muni5yr_lbl 3102407 `"Alvorada de Minas"', add
label define br10a_muni5yr_lbl 3102506 `"Amparo do Serra"', add
label define br10a_muni5yr_lbl 3102605 `"Andradas"', add
label define br10a_muni5yr_lbl 3102704 `"Cachoeira de Paje�"', add
label define br10a_muni5yr_lbl 3102803 `"Andrel�ndia"', add
label define br10a_muni5yr_lbl 3102852 `"Angel�ndia"', add
label define br10a_muni5yr_lbl 3102902 `"Ant�nio Carlos"', add
label define br10a_muni5yr_lbl 3103009 `"Ant�nio Dias"', add
label define br10a_muni5yr_lbl 3103108 `"Ant�nio Prado de Minas"', add
label define br10a_muni5yr_lbl 3103207 `"Ara�a�"', add
label define br10a_muni5yr_lbl 3103306 `"Aracitaba"', add
label define br10a_muni5yr_lbl 3103405 `"Ara�ua�"', add
label define br10a_muni5yr_lbl 3103504 `"Araguari"', add
label define br10a_muni5yr_lbl 3103603 `"Arantina"', add
label define br10a_muni5yr_lbl 3103702 `"Araponga"', add
label define br10a_muni5yr_lbl 3103751 `"Arapor�"', add
label define br10a_muni5yr_lbl 3103801 `"Arapu�"', add
label define br10a_muni5yr_lbl 3103900 `"Ara�jos"', add
label define br10a_muni5yr_lbl 3104007 `"Arax�"', add
label define br10a_muni5yr_lbl 3104106 `"Arceburgo"', add
label define br10a_muni5yr_lbl 3104205 `"Arcos"', add
label define br10a_muni5yr_lbl 3104304 `"Areado"', add
label define br10a_muni5yr_lbl 3104403 `"Argirita"', add
label define br10a_muni5yr_lbl 3104452 `"Aricanduva"', add
label define br10a_muni5yr_lbl 3104502 `"Arinos"', add
label define br10a_muni5yr_lbl 3104601 `"Astolfo Dutra"', add
label define br10a_muni5yr_lbl 3104700 `"Atal�ia"', add
label define br10a_muni5yr_lbl 3104809 `"Augusto de Lima"', add
label define br10a_muni5yr_lbl 3104908 `"Baependi"', add
label define br10a_muni5yr_lbl 3105004 `"Baldim"', add
label define br10a_muni5yr_lbl 3105103 `"Bambu�"', add
label define br10a_muni5yr_lbl 3105202 `"Bandeira"', add
label define br10a_muni5yr_lbl 3105301 `"Bandeira do Sul"', add
label define br10a_muni5yr_lbl 3105400 `"Bar�o de Cocais"', add
label define br10a_muni5yr_lbl 3105509 `"Bar�o de Monte Alto"', add
label define br10a_muni5yr_lbl 3105608 `"Barbacena"', add
label define br10a_muni5yr_lbl 3105707 `"Barra Longa"', add
label define br10a_muni5yr_lbl 3105905 `"Barroso"', add
label define br10a_muni5yr_lbl 3106002 `"Bela Vista de Minas"', add
label define br10a_muni5yr_lbl 3106101 `"Belmiro Braga"', add
label define br10a_muni5yr_lbl 3106200 `"Belo Horizonte"', add
label define br10a_muni5yr_lbl 3106309 `"Belo Oriente"', add
label define br10a_muni5yr_lbl 3106408 `"Belo Vale"', add
label define br10a_muni5yr_lbl 3106507 `"Berilo"', add
label define br10a_muni5yr_lbl 3106606 `"Bert�polis"', add
label define br10a_muni5yr_lbl 3106655 `"Berizal"', add
label define br10a_muni5yr_lbl 3106705 `"Betim"', add
label define br10a_muni5yr_lbl 3106804 `"Bias Fortes"', add
label define br10a_muni5yr_lbl 3106903 `"Bicas"', add
label define br10a_muni5yr_lbl 3107000 `"Biquinhas"', add
label define br10a_muni5yr_lbl 3107109 `"Boa Esperan�a"', add
label define br10a_muni5yr_lbl 3107208 `"Bocaina de Minas"', add
label define br10a_muni5yr_lbl 3107307 `"Bocai�va"', add
label define br10a_muni5yr_lbl 3107406 `"Bom Despacho"', add
label define br10a_muni5yr_lbl 3107505 `"Bom Jardim de Minas"', add
label define br10a_muni5yr_lbl 3107604 `"Bom Jesus da Penha"', add
label define br10a_muni5yr_lbl 3107703 `"Bom Jesus do Amparo"', add
label define br10a_muni5yr_lbl 3107802 `"Bom Jesus do Galho"', add
label define br10a_muni5yr_lbl 3107901 `"Bom Repouso"', add
label define br10a_muni5yr_lbl 3108008 `"Bom Sucesso"', add
label define br10a_muni5yr_lbl 3108107 `"Bonfim"', add
label define br10a_muni5yr_lbl 3108206 `"Bonfin�polis de Minas"', add
label define br10a_muni5yr_lbl 3108255 `"Bonito de Minas"', add
label define br10a_muni5yr_lbl 3108305 `"Borda da Mata"', add
label define br10a_muni5yr_lbl 3108404 `"Botelhos"', add
label define br10a_muni5yr_lbl 3108503 `"Botumirim"', add
label define br10a_muni5yr_lbl 3108552 `"Brasil�ndia de Minas"', add
label define br10a_muni5yr_lbl 3108602 `"Bras�lia de Minas"', add
label define br10a_muni5yr_lbl 3108701 `"Br�s Pires"', add
label define br10a_muni5yr_lbl 3108800 `"Bra�nas"', add
label define br10a_muni5yr_lbl 3108909 `"Bras�polis"', add
label define br10a_muni5yr_lbl 3109006 `"Brumadinho"', add
label define br10a_muni5yr_lbl 3109105 `"Bueno Brand�o"', add
label define br10a_muni5yr_lbl 3109204 `"Buen�polis"', add
label define br10a_muni5yr_lbl 3109253 `"Bugre"', add
label define br10a_muni5yr_lbl 3109303 `"Buritis"', add
label define br10a_muni5yr_lbl 3109402 `"Buritizeiro"', add
label define br10a_muni5yr_lbl 3109451 `"Cabeceira Grande"', add
label define br10a_muni5yr_lbl 3109501 `"Cabo Verde"', add
label define br10a_muni5yr_lbl 3109600 `"Cachoeira da Prata"', add
label define br10a_muni5yr_lbl 3109709 `"Cachoeira de Minas"', add
label define br10a_muni5yr_lbl 3109808 `"Cachoeira Dourada"', add
label define br10a_muni5yr_lbl 3109907 `"Caetan�polis"', add
label define br10a_muni5yr_lbl 3110004 `"Caet�"', add
label define br10a_muni5yr_lbl 3110103 `"Caiana"', add
label define br10a_muni5yr_lbl 3110202 `"Cajuri"', add
label define br10a_muni5yr_lbl 3110301 `"Caldas"', add
label define br10a_muni5yr_lbl 3110400 `"Camacho"', add
label define br10a_muni5yr_lbl 3110509 `"Camanducaia"', add
label define br10a_muni5yr_lbl 3110608 `"Cambu�"', add
label define br10a_muni5yr_lbl 3110707 `"Cambuquira"', add
label define br10a_muni5yr_lbl 3110806 `"Campan�rio"', add
label define br10a_muni5yr_lbl 3110905 `"Campanha"', add
label define br10a_muni5yr_lbl 3111002 `"Campestre"', add
label define br10a_muni5yr_lbl 3111101 `"Campina Verde"', add
label define br10a_muni5yr_lbl 3111150 `"Campo Azul"', add
label define br10a_muni5yr_lbl 3111200 `"Campo Belo"', add
label define br10a_muni5yr_lbl 3111309 `"Campo do Meio"', add
label define br10a_muni5yr_lbl 3111408 `"Campo Florido"', add
label define br10a_muni5yr_lbl 3111507 `"Campos Altos"', add
label define br10a_muni5yr_lbl 3111606 `"Campos Gerais"', add
label define br10a_muni5yr_lbl 3111705 `"Cana�"', add
label define br10a_muni5yr_lbl 3111804 `"Can�polis"', add
label define br10a_muni5yr_lbl 3111903 `"Cana Verde"', add
label define br10a_muni5yr_lbl 3112000 `"Candeias"', add
label define br10a_muni5yr_lbl 3112059 `"Cantagalo"', add
label define br10a_muni5yr_lbl 3112109 `"Capara�"', add
label define br10a_muni5yr_lbl 3112208 `"Capela Nova"', add
label define br10a_muni5yr_lbl 3112307 `"Capelinha"', add
label define br10a_muni5yr_lbl 3112406 `"Capetinga"', add
label define br10a_muni5yr_lbl 3112505 `"Capim Branco"', add
label define br10a_muni5yr_lbl 3112604 `"Capin�polis"', add
label define br10a_muni5yr_lbl 3112653 `"Capit�o Andrade"', add
label define br10a_muni5yr_lbl 3112703 `"Capit�o En�as"', add
label define br10a_muni5yr_lbl 3112802 `"Capit�lio"', add
label define br10a_muni5yr_lbl 3112901 `"Caputira"', add
label define br10a_muni5yr_lbl 3113008 `"Cara�"', add
label define br10a_muni5yr_lbl 3113107 `"Carana�ba"', add
label define br10a_muni5yr_lbl 3113206 `"Caranda�"', add
label define br10a_muni5yr_lbl 3113305 `"Carangola"', add
label define br10a_muni5yr_lbl 3113404 `"Caratinga"', add
label define br10a_muni5yr_lbl 3113503 `"Carbonita"', add
label define br10a_muni5yr_lbl 3113602 `"Carea�u"', add
label define br10a_muni5yr_lbl 3113701 `"Carlos Chagas"', add
label define br10a_muni5yr_lbl 3113800 `"Carm�sia"', add
label define br10a_muni5yr_lbl 3113909 `"Carmo da Cachoeira"', add
label define br10a_muni5yr_lbl 3114006 `"Carmo da Mata"', add
label define br10a_muni5yr_lbl 3114105 `"Carmo de Minas"', add
label define br10a_muni5yr_lbl 3114204 `"Carmo do Cajuru"', add
label define br10a_muni5yr_lbl 3114303 `"Carmo do Parana�ba"', add
label define br10a_muni5yr_lbl 3114402 `"Carmo do Rio Claro"', add
label define br10a_muni5yr_lbl 3114501 `"Carm�polis de Minas"', add
label define br10a_muni5yr_lbl 3114550 `"Carneirinho"', add
label define br10a_muni5yr_lbl 3114600 `"Carrancas"', add
label define br10a_muni5yr_lbl 3114709 `"Carvalh�polis"', add
label define br10a_muni5yr_lbl 3114808 `"Carvalhos"', add
label define br10a_muni5yr_lbl 3114907 `"Casa Grande"', add
label define br10a_muni5yr_lbl 3115003 `"Cascalho Rico"', add
label define br10a_muni5yr_lbl 3115102 `"C�ssia"', add
label define br10a_muni5yr_lbl 3115201 `"Concei��o da Barra de Minas"', add
label define br10a_muni5yr_lbl 3115300 `"Cataguases"', add
label define br10a_muni5yr_lbl 3115359 `"Catas Altas"', add
label define br10a_muni5yr_lbl 3115409 `"Catas Altas da Noruega"', add
label define br10a_muni5yr_lbl 3115458 `"Catuji"', add
label define br10a_muni5yr_lbl 3115474 `"Catuti"', add
label define br10a_muni5yr_lbl 3115508 `"Caxambu"', add
label define br10a_muni5yr_lbl 3115607 `"Cedro do Abaet�"', add
label define br10a_muni5yr_lbl 3115706 `"Central de Minas"', add
label define br10a_muni5yr_lbl 3115805 `"Centralina"', add
label define br10a_muni5yr_lbl 3115904 `"Ch�cara"', add
label define br10a_muni5yr_lbl 3116001 `"Chal�"', add
label define br10a_muni5yr_lbl 3116100 `"Chapada do Norte"', add
label define br10a_muni5yr_lbl 3116159 `"Chapada Ga�cha"', add
label define br10a_muni5yr_lbl 3116209 `"Chiador"', add
label define br10a_muni5yr_lbl 3116308 `"Cipot�nea"', add
label define br10a_muni5yr_lbl 3116407 `"Claraval"', add
label define br10a_muni5yr_lbl 3116506 `"Claro dos Po��es"', add
label define br10a_muni5yr_lbl 3116605 `"Cl�udio"', add
label define br10a_muni5yr_lbl 3116704 `"Coimbra"', add
label define br10a_muni5yr_lbl 3116803 `"Coluna"', add
label define br10a_muni5yr_lbl 3116902 `"Comendador Gomes"', add
label define br10a_muni5yr_lbl 3117009 `"Comercinho"', add
label define br10a_muni5yr_lbl 3117108 `"Concei��o da Aparecida"', add
label define br10a_muni5yr_lbl 3117207 `"Concei��o das Pedras"', add
label define br10a_muni5yr_lbl 3117306 `"Concei��o das Alagoas"', add
label define br10a_muni5yr_lbl 3117405 `"Concei��o de Ipanema"', add
label define br10a_muni5yr_lbl 3117504 `"Concei��o do Mato Dentro"', add
label define br10a_muni5yr_lbl 3117603 `"Concei��o do Par�"', add
label define br10a_muni5yr_lbl 3117702 `"Concei��o do Rio Verde"', add
label define br10a_muni5yr_lbl 3117801 `"Concei��o dos Ouros"', add
label define br10a_muni5yr_lbl 3117836 `"C�nego Marinho"', add
label define br10a_muni5yr_lbl 3117876 `"Confins"', add
label define br10a_muni5yr_lbl 3117900 `"Congonhal"', add
label define br10a_muni5yr_lbl 3118007 `"Congonhas"', add
label define br10a_muni5yr_lbl 3118106 `"Congonhas do Norte"', add
label define br10a_muni5yr_lbl 3118205 `"Conquista"', add
label define br10a_muni5yr_lbl 3118304 `"Conselheiro Lafaiete"', add
label define br10a_muni5yr_lbl 3118403 `"Conselheiro Pena"', add
label define br10a_muni5yr_lbl 3118502 `"Consola��o"', add
label define br10a_muni5yr_lbl 3118601 `"Contagem"', add
label define br10a_muni5yr_lbl 3118700 `"Coqueiral"', add
label define br10a_muni5yr_lbl 3118809 `"Cora��o de Jesus"', add
label define br10a_muni5yr_lbl 3118908 `"Cordisburgo"', add
label define br10a_muni5yr_lbl 3119005 `"Cordisl�ndia"', add
label define br10a_muni5yr_lbl 3119104 `"Corinto"', add
label define br10a_muni5yr_lbl 3119203 `"Coroaci"', add
label define br10a_muni5yr_lbl 3119302 `"Coromandel"', add
label define br10a_muni5yr_lbl 3119401 `"Coronel Fabriciano"', add
label define br10a_muni5yr_lbl 3119500 `"Coronel Murta"', add
label define br10a_muni5yr_lbl 3119609 `"Coronel Pacheco"', add
label define br10a_muni5yr_lbl 3119708 `"Coronel Xavier Chaves"', add
label define br10a_muni5yr_lbl 3119807 `"C�rrego Danta"', add
label define br10a_muni5yr_lbl 3119906 `"C�rrego do Bom Jesus"', add
label define br10a_muni5yr_lbl 3119955 `"C�rrego Fundo"', add
label define br10a_muni5yr_lbl 3120003 `"C�rrego Novo"', add
label define br10a_muni5yr_lbl 3120102 `"Couto de Magalh�es de Minas"', add
label define br10a_muni5yr_lbl 3120151 `"Cris�lita"', add
label define br10a_muni5yr_lbl 3120201 `"Cristais"', add
label define br10a_muni5yr_lbl 3120300 `"Crist�lia"', add
label define br10a_muni5yr_lbl 3120409 `"Cristiano Otoni"', add
label define br10a_muni5yr_lbl 3120508 `"Cristina"', add
label define br10a_muni5yr_lbl 3120607 `"Crucil�ndia"', add
label define br10a_muni5yr_lbl 3120706 `"Cruzeiro da Fortaleza"', add
label define br10a_muni5yr_lbl 3120805 `"Cruz�lia"', add
label define br10a_muni5yr_lbl 3120839 `"Cuparaque"', add
label define br10a_muni5yr_lbl 3120870 `"Curral de Dentro"', add
label define br10a_muni5yr_lbl 3120904 `"Curvelo"', add
label define br10a_muni5yr_lbl 3121001 `"Datas"', add
label define br10a_muni5yr_lbl 3121100 `"Delfim Moreira"', add
label define br10a_muni5yr_lbl 3121209 `"Delfin�polis"', add
label define br10a_muni5yr_lbl 3121258 `"Delta"', add
label define br10a_muni5yr_lbl 3121308 `"Descoberto"', add
label define br10a_muni5yr_lbl 3121407 `"Desterro de Entre Rios"', add
label define br10a_muni5yr_lbl 3121506 `"Desterro do Melo"', add
label define br10a_muni5yr_lbl 3121605 `"Diamantina"', add
label define br10a_muni5yr_lbl 3121704 `"Diogo de Vasconcelos"', add
label define br10a_muni5yr_lbl 3121803 `"Dion�sio"', add
label define br10a_muni5yr_lbl 3121902 `"Divin�sia"', add
label define br10a_muni5yr_lbl 3122009 `"Divino"', add
label define br10a_muni5yr_lbl 3122108 `"Divino das Laranjeiras"', add
label define br10a_muni5yr_lbl 3122207 `"Divinol�ndia de Minas"', add
label define br10a_muni5yr_lbl 3122306 `"Divin�polis"', add
label define br10a_muni5yr_lbl 3122355 `"Divisa Alegre"', add
label define br10a_muni5yr_lbl 3122405 `"Divisa Nova"', add
label define br10a_muni5yr_lbl 3122454 `"Divis�polis"', add
label define br10a_muni5yr_lbl 3122470 `"Dom Bosco"', add
label define br10a_muni5yr_lbl 3122504 `"Dom Cavati"', add
label define br10a_muni5yr_lbl 3122603 `"Dom Joaquim"', add
label define br10a_muni5yr_lbl 3122702 `"Dom Silv�rio"', add
label define br10a_muni5yr_lbl 3122801 `"Dom Vi�oso"', add
label define br10a_muni5yr_lbl 3122900 `"Dona Eus�bia"', add
label define br10a_muni5yr_lbl 3123007 `"Dores de Campos"', add
label define br10a_muni5yr_lbl 3123106 `"Dores de Guanh�es"', add
label define br10a_muni5yr_lbl 3123205 `"Dores do Indai�"', add
label define br10a_muni5yr_lbl 3123304 `"Dores do Turvo"', add
label define br10a_muni5yr_lbl 3123403 `"Dores�polis"', add
label define br10a_muni5yr_lbl 3123502 `"Douradoquara"', add
label define br10a_muni5yr_lbl 3123528 `"Durand�"', add
label define br10a_muni5yr_lbl 3123601 `"El�i Mendes"', add
label define br10a_muni5yr_lbl 3123700 `"Engenheiro Caldas"', add
label define br10a_muni5yr_lbl 3123809 `"Engenheiro Navarro"', add
label define br10a_muni5yr_lbl 3123858 `"Entre Folhas"', add
label define br10a_muni5yr_lbl 3123908 `"Entre Rios de Minas"', add
label define br10a_muni5yr_lbl 3124005 `"Erv�lia"', add
label define br10a_muni5yr_lbl 3124104 `"Esmeraldas"', add
label define br10a_muni5yr_lbl 3124203 `"Espera Feliz"', add
label define br10a_muni5yr_lbl 3124302 `"Espinosa"', add
label define br10a_muni5yr_lbl 3124401 `"Esp�rito Santo do Dourado"', add
label define br10a_muni5yr_lbl 3124500 `"Estiva"', add
label define br10a_muni5yr_lbl 3124609 `"Estrela Dalva"', add
label define br10a_muni5yr_lbl 3124708 `"Estrela do Indai�"', add
label define br10a_muni5yr_lbl 3124807 `"Estrela do Sul"', add
label define br10a_muni5yr_lbl 3124906 `"Eugen�polis"', add
label define br10a_muni5yr_lbl 3125002 `"Ewbank da C�mara"', add
label define br10a_muni5yr_lbl 3125101 `"Extrema"', add
label define br10a_muni5yr_lbl 3125200 `"Fama"', add
label define br10a_muni5yr_lbl 3125309 `"Faria Lemos"', add
label define br10a_muni5yr_lbl 3125408 `"Fel�cio dos Santos"', add
label define br10a_muni5yr_lbl 3125507 `"S�o Gon�alo do Rio Preto"', add
label define br10a_muni5yr_lbl 3125606 `"Felisburgo"', add
label define br10a_muni5yr_lbl 3125705 `"Felixl�ndia"', add
label define br10a_muni5yr_lbl 3125804 `"Fernandes Tourinho"', add
label define br10a_muni5yr_lbl 3125903 `"Ferros"', add
label define br10a_muni5yr_lbl 3125952 `"Fervedouro"', add
label define br10a_muni5yr_lbl 3126000 `"Florestal"', add
label define br10a_muni5yr_lbl 3126109 `"Formiga"', add
label define br10a_muni5yr_lbl 3126208 `"Formoso"', add
label define br10a_muni5yr_lbl 3126307 `"Fortaleza de Minas"', add
label define br10a_muni5yr_lbl 3126406 `"Fortuna de Minas"', add
label define br10a_muni5yr_lbl 3126505 `"Francisco Badar�"', add
label define br10a_muni5yr_lbl 3126604 `"Francisco Dumont"', add
label define br10a_muni5yr_lbl 3126703 `"Francisco S�"', add
label define br10a_muni5yr_lbl 3126752 `"Francisc�polis"', add
label define br10a_muni5yr_lbl 3126802 `"Frei Gaspar"', add
label define br10a_muni5yr_lbl 3126901 `"Frei Inoc�ncio"', add
label define br10a_muni5yr_lbl 3126950 `"Frei Lagonegro"', add
label define br10a_muni5yr_lbl 3127008 `"Fronteira"', add
label define br10a_muni5yr_lbl 3127057 `"Fronteira dos Vales"', add
label define br10a_muni5yr_lbl 3127073 `"Fruta de Leite"', add
label define br10a_muni5yr_lbl 3127107 `"Frutal"', add
label define br10a_muni5yr_lbl 3127206 `"Funil�ndia"', add
label define br10a_muni5yr_lbl 3127305 `"Galil�ia"', add
label define br10a_muni5yr_lbl 3127339 `"Gameleiras"', add
label define br10a_muni5yr_lbl 3127354 `"Glaucil�ndia"', add
label define br10a_muni5yr_lbl 3127370 `"Goiabeira"', add
label define br10a_muni5yr_lbl 3127388 `"Goian�"', add
label define br10a_muni5yr_lbl 3127404 `"Gon�alves"', add
label define br10a_muni5yr_lbl 3127503 `"Gonzaga"', add
label define br10a_muni5yr_lbl 3127602 `"Gouveia"', add
label define br10a_muni5yr_lbl 3127701 `"Governador Valadares"', add
label define br10a_muni5yr_lbl 3127800 `"Gr�o Mogol"', add
label define br10a_muni5yr_lbl 3127909 `"Grupiara"', add
label define br10a_muni5yr_lbl 3128006 `"Guanh�es"', add
label define br10a_muni5yr_lbl 3128105 `"Guap�"', add
label define br10a_muni5yr_lbl 3128204 `"Guaraciaba"', add
label define br10a_muni5yr_lbl 3128253 `"Guaraciama"', add
label define br10a_muni5yr_lbl 3128303 `"Guaran�sia"', add
label define br10a_muni5yr_lbl 3128402 `"Guarani"', add
label define br10a_muni5yr_lbl 3128501 `"Guarar�"', add
label define br10a_muni5yr_lbl 3128600 `"Guarda-Mor"', add
label define br10a_muni5yr_lbl 3128709 `"Guaxup�"', add
label define br10a_muni5yr_lbl 3128808 `"Guidoval"', add
label define br10a_muni5yr_lbl 3128907 `"Guimar�nia"', add
label define br10a_muni5yr_lbl 3129004 `"Guiricema"', add
label define br10a_muni5yr_lbl 3129103 `"Gurinhat�"', add
label define br10a_muni5yr_lbl 3129202 `"Heliodora"', add
label define br10a_muni5yr_lbl 3129301 `"Iapu"', add
label define br10a_muni5yr_lbl 3129400 `"Ibertioga"', add
label define br10a_muni5yr_lbl 3129509 `"Ibi�"', add
label define br10a_muni5yr_lbl 3129608 `"Ibia�"', add
label define br10a_muni5yr_lbl 3129657 `"Ibiracatu"', add
label define br10a_muni5yr_lbl 3129707 `"Ibiraci"', add
label define br10a_muni5yr_lbl 3129806 `"Ibirit�"', add
label define br10a_muni5yr_lbl 3129905 `"Ibiti�ra de Minas"', add
label define br10a_muni5yr_lbl 3130002 `"Ibituruna"', add
label define br10a_muni5yr_lbl 3130051 `"Icara� de Minas"', add
label define br10a_muni5yr_lbl 3130101 `"Igarap�"', add
label define br10a_muni5yr_lbl 3130200 `"Igaratinga"', add
label define br10a_muni5yr_lbl 3130309 `"Iguatama"', add
label define br10a_muni5yr_lbl 3130408 `"Ijaci"', add
label define br10a_muni5yr_lbl 3130507 `"Ilic�nea"', add
label define br10a_muni5yr_lbl 3130556 `"Imb� de Minas"', add
label define br10a_muni5yr_lbl 3130606 `"Inconfidentes"', add
label define br10a_muni5yr_lbl 3130655 `"Indaiabira"', add
label define br10a_muni5yr_lbl 3130705 `"Indian�polis"', add
label define br10a_muni5yr_lbl 3130804 `"Inga�"', add
label define br10a_muni5yr_lbl 3130903 `"Inhapim"', add
label define br10a_muni5yr_lbl 3131000 `"Inha�ma"', add
label define br10a_muni5yr_lbl 3131109 `"Inimutaba"', add
label define br10a_muni5yr_lbl 3131158 `"Ipaba"', add
label define br10a_muni5yr_lbl 3131208 `"Ipanema"', add
label define br10a_muni5yr_lbl 3131307 `"Ipatinga"', add
label define br10a_muni5yr_lbl 3131406 `"Ipia�u"', add
label define br10a_muni5yr_lbl 3131505 `"Ipui�na"', add
label define br10a_muni5yr_lbl 3131604 `"Ira� de Minas"', add
label define br10a_muni5yr_lbl 3131703 `"Itabira"', add
label define br10a_muni5yr_lbl 3131802 `"Itabirinha"', add
label define br10a_muni5yr_lbl 3131901 `"Itabirito"', add
label define br10a_muni5yr_lbl 3132008 `"Itacambira"', add
label define br10a_muni5yr_lbl 3132107 `"Itacarambi"', add
label define br10a_muni5yr_lbl 3132206 `"Itaguara"', add
label define br10a_muni5yr_lbl 3132305 `"Itaip�"', add
label define br10a_muni5yr_lbl 3132404 `"Itajub�"', add
label define br10a_muni5yr_lbl 3132503 `"Itamarandiba"', add
label define br10a_muni5yr_lbl 3132602 `"Itamarati de Minas"', add
label define br10a_muni5yr_lbl 3132701 `"Itambacuri"', add
label define br10a_muni5yr_lbl 3132800 `"Itamb� do Mato Dentro"', add
label define br10a_muni5yr_lbl 3132909 `"Itamogi"', add
label define br10a_muni5yr_lbl 3133006 `"Itamonte"', add
label define br10a_muni5yr_lbl 3133105 `"Itanhandu"', add
label define br10a_muni5yr_lbl 3133204 `"Itanhomi"', add
label define br10a_muni5yr_lbl 3133303 `"Itaobim"', add
label define br10a_muni5yr_lbl 3133402 `"Itapagipe"', add
label define br10a_muni5yr_lbl 3133501 `"Itapecerica"', add
label define br10a_muni5yr_lbl 3133600 `"Itapeva"', add
label define br10a_muni5yr_lbl 3133709 `"Itatiaiu�u"', add
label define br10a_muni5yr_lbl 3133758 `"Ita� de Minas"', add
label define br10a_muni5yr_lbl 3133808 `"Ita�na"', add
label define br10a_muni5yr_lbl 3133907 `"Itaverava"', add
label define br10a_muni5yr_lbl 3134004 `"Itinga"', add
label define br10a_muni5yr_lbl 3134103 `"Itueta"', add
label define br10a_muni5yr_lbl 3134202 `"Ituiutaba"', add
label define br10a_muni5yr_lbl 3134301 `"Itumirim"', add
label define br10a_muni5yr_lbl 3134400 `"Iturama"', add
label define br10a_muni5yr_lbl 3134509 `"Itutinga"', add
label define br10a_muni5yr_lbl 3134608 `"Jaboticatubas"', add
label define br10a_muni5yr_lbl 3134707 `"Jacinto"', add
label define br10a_muni5yr_lbl 3134806 `"Jacu�"', add
label define br10a_muni5yr_lbl 3134905 `"Jacutinga"', add
label define br10a_muni5yr_lbl 3135001 `"Jaguara�u"', add
label define br10a_muni5yr_lbl 3135050 `"Ja�ba"', add
label define br10a_muni5yr_lbl 3135076 `"Jampruca"', add
label define br10a_muni5yr_lbl 3135100 `"Jana�ba"', add
label define br10a_muni5yr_lbl 3135209 `"Janu�ria"', add
label define br10a_muni5yr_lbl 3135308 `"Japara�ba"', add
label define br10a_muni5yr_lbl 3135357 `"Japonvar"', add
label define br10a_muni5yr_lbl 3135407 `"Jeceaba"', add
label define br10a_muni5yr_lbl 3135456 `"Jenipapo de Minas"', add
label define br10a_muni5yr_lbl 3135506 `"Jequeri"', add
label define br10a_muni5yr_lbl 3135605 `"Jequita�"', add
label define br10a_muni5yr_lbl 3135704 `"Jequitib�"', add
label define br10a_muni5yr_lbl 3135803 `"Jequitinhonha"', add
label define br10a_muni5yr_lbl 3135902 `"Jesu�nia"', add
label define br10a_muni5yr_lbl 3136009 `"Joa�ma"', add
label define br10a_muni5yr_lbl 3136108 `"Joan�sia"', add
label define br10a_muni5yr_lbl 3136207 `"Jo�o Monlevade"', add
label define br10a_muni5yr_lbl 3136306 `"Jo�o Pinheiro"', add
label define br10a_muni5yr_lbl 3136405 `"Joaquim Fel�cio"', add
label define br10a_muni5yr_lbl 3136504 `"Jord�nia"', add
label define br10a_muni5yr_lbl 3136520 `"Jos� Gon�alves de Minas"', add
label define br10a_muni5yr_lbl 3136553 `"Jos� Raydan"', add
label define br10a_muni5yr_lbl 3136579 `"Josen�polis"', add
label define br10a_muni5yr_lbl 3136603 `"Nova Uni�o"', add
label define br10a_muni5yr_lbl 3136652 `"Juatuba"', add
label define br10a_muni5yr_lbl 3136702 `"Juiz de Fora"', add
label define br10a_muni5yr_lbl 3136801 `"Juramento"', add
label define br10a_muni5yr_lbl 3136900 `"Juruaia"', add
label define br10a_muni5yr_lbl 3136959 `"Juven�lia"', add
label define br10a_muni5yr_lbl 3137007 `"Ladainha"', add
label define br10a_muni5yr_lbl 3137106 `"Lagamar"', add
label define br10a_muni5yr_lbl 3137205 `"Lagoa da Prata"', add
label define br10a_muni5yr_lbl 3137304 `"Lagoa dos Patos"', add
label define br10a_muni5yr_lbl 3137403 `"Lagoa Dourada"', add
label define br10a_muni5yr_lbl 3137502 `"Lagoa Formosa"', add
label define br10a_muni5yr_lbl 3137536 `"Lagoa Grande"', add
label define br10a_muni5yr_lbl 3137601 `"Lagoa Santa"', add
label define br10a_muni5yr_lbl 3137700 `"Lajinha"', add
label define br10a_muni5yr_lbl 3137809 `"Lambari"', add
label define br10a_muni5yr_lbl 3137908 `"Lamim"', add
label define br10a_muni5yr_lbl 3138005 `"Laranjal"', add
label define br10a_muni5yr_lbl 3138104 `"Lassance"', add
label define br10a_muni5yr_lbl 3138203 `"Lavras"', add
label define br10a_muni5yr_lbl 3138302 `"Leandro Ferreira"', add
label define br10a_muni5yr_lbl 3138351 `"Leme do Prado"', add
label define br10a_muni5yr_lbl 3138401 `"Leopoldina"', add
label define br10a_muni5yr_lbl 3138500 `"Liberdade"', add
label define br10a_muni5yr_lbl 3138609 `"Lima Duarte"', add
label define br10a_muni5yr_lbl 3138625 `"Limeira do Oeste"', add
label define br10a_muni5yr_lbl 3138658 `"Lontra"', add
label define br10a_muni5yr_lbl 3138674 `"Luisburgo"', add
label define br10a_muni5yr_lbl 3138682 `"Luisl�ndia"', add
label define br10a_muni5yr_lbl 3138708 `"Lumin�rias"', add
label define br10a_muni5yr_lbl 3138807 `"Luz"', add
label define br10a_muni5yr_lbl 3138906 `"Machacalis"', add
label define br10a_muni5yr_lbl 3139003 `"Machado"', add
label define br10a_muni5yr_lbl 3139102 `"Madre de Deus de Minas"', add
label define br10a_muni5yr_lbl 3139201 `"Malacacheta"', add
label define br10a_muni5yr_lbl 3139250 `"Mamonas"', add
label define br10a_muni5yr_lbl 3139300 `"Manga"', add
label define br10a_muni5yr_lbl 3139409 `"Manhua�u"', add
label define br10a_muni5yr_lbl 3139508 `"Manhumirim"', add
label define br10a_muni5yr_lbl 3139607 `"Mantena"', add
label define br10a_muni5yr_lbl 3139706 `"Maravilhas"', add
label define br10a_muni5yr_lbl 3139805 `"Mar de Espanha"', add
label define br10a_muni5yr_lbl 3139904 `"Maria da F�"', add
label define br10a_muni5yr_lbl 3140001 `"Mariana"', add
label define br10a_muni5yr_lbl 3140100 `"Marilac"', add
label define br10a_muni5yr_lbl 3140159 `"M�rio Campos"', add
label define br10a_muni5yr_lbl 3140209 `"Marip� de Minas"', add
label define br10a_muni5yr_lbl 3140308 `"Marli�ria"', add
label define br10a_muni5yr_lbl 3140407 `"Marmel�polis"', add
label define br10a_muni5yr_lbl 3140506 `"Martinho Campos"', add
label define br10a_muni5yr_lbl 3140530 `"Martins Soares"', add
label define br10a_muni5yr_lbl 3140555 `"Mata Verde"', add
label define br10a_muni5yr_lbl 3140605 `"Materl�ndia"', add
label define br10a_muni5yr_lbl 3140704 `"Mateus Leme"', add
label define br10a_muni5yr_lbl 3140803 `"Matias Barbosa"', add
label define br10a_muni5yr_lbl 3140852 `"Matias Cardoso"', add
label define br10a_muni5yr_lbl 3140902 `"Matip�"', add
label define br10a_muni5yr_lbl 3141009 `"Mato Verde"', add
label define br10a_muni5yr_lbl 3141108 `"Matozinhos"', add
label define br10a_muni5yr_lbl 3141207 `"Matutina"', add
label define br10a_muni5yr_lbl 3141306 `"Medeiros"', add
label define br10a_muni5yr_lbl 3141405 `"Medina"', add
label define br10a_muni5yr_lbl 3141504 `"Mendes Pimentel"', add
label define br10a_muni5yr_lbl 3141603 `"Merc�s"', add
label define br10a_muni5yr_lbl 3141702 `"Mesquita"', add
label define br10a_muni5yr_lbl 3141801 `"Minas Novas"', add
label define br10a_muni5yr_lbl 3141900 `"Minduri"', add
label define br10a_muni5yr_lbl 3142007 `"Mirabela"', add
label define br10a_muni5yr_lbl 3142106 `"Miradouro"', add
label define br10a_muni5yr_lbl 3142205 `"Mira�"', add
label define br10a_muni5yr_lbl 3142254 `"Mirav�nia"', add
label define br10a_muni5yr_lbl 3142304 `"Moeda"', add
label define br10a_muni5yr_lbl 3142403 `"Moema"', add
label define br10a_muni5yr_lbl 3142502 `"Monjolos"', add
label define br10a_muni5yr_lbl 3142601 `"Monsenhor Paulo"', add
label define br10a_muni5yr_lbl 3142700 `"Montalv�nia"', add
label define br10a_muni5yr_lbl 3142809 `"Monte Alegre de Minas"', add
label define br10a_muni5yr_lbl 3142908 `"Monte Azul"', add
label define br10a_muni5yr_lbl 3143005 `"Monte Belo"', add
label define br10a_muni5yr_lbl 3143104 `"Monte Carmelo"', add
label define br10a_muni5yr_lbl 3143153 `"Monte Formoso"', add
label define br10a_muni5yr_lbl 3143203 `"Monte Santo de Minas"', add
label define br10a_muni5yr_lbl 3143302 `"Montes Claros"', add
label define br10a_muni5yr_lbl 3143401 `"Monte Si�o"', add
label define br10a_muni5yr_lbl 3143450 `"Montezuma"', add
label define br10a_muni5yr_lbl 3143500 `"Morada Nova de Minas"', add
label define br10a_muni5yr_lbl 3143609 `"Morro da Gar�a"', add
label define br10a_muni5yr_lbl 3143708 `"Morro do Pilar"', add
label define br10a_muni5yr_lbl 3143807 `"Munhoz"', add
label define br10a_muni5yr_lbl 3143906 `"Muria�"', add
label define br10a_muni5yr_lbl 3144003 `"Mutum"', add
label define br10a_muni5yr_lbl 3144102 `"Muzambinho"', add
label define br10a_muni5yr_lbl 3144201 `"Nacip Raydan"', add
label define br10a_muni5yr_lbl 3144300 `"Nanuque"', add
label define br10a_muni5yr_lbl 3144359 `"Naque"', add
label define br10a_muni5yr_lbl 3144375 `"Natal�ndia"', add
label define br10a_muni5yr_lbl 3144409 `"Nat�rcia"', add
label define br10a_muni5yr_lbl 3144508 `"Nazareno"', add
label define br10a_muni5yr_lbl 3144607 `"Nepomuceno"', add
label define br10a_muni5yr_lbl 3144656 `"Ninheira"', add
label define br10a_muni5yr_lbl 3144672 `"Nova Bel�m"', add
label define br10a_muni5yr_lbl 3144706 `"Nova Era"', add
label define br10a_muni5yr_lbl 3144805 `"Nova Lima"', add
label define br10a_muni5yr_lbl 3144904 `"Nova M�dica"', add
label define br10a_muni5yr_lbl 3145000 `"Nova Ponte"', add
label define br10a_muni5yr_lbl 3145059 `"Nova Porteirinha"', add
label define br10a_muni5yr_lbl 3145109 `"Nova Resende"', add
label define br10a_muni5yr_lbl 3145208 `"Nova Serrana"', add
label define br10a_muni5yr_lbl 3145307 `"Novo Cruzeiro"', add
label define br10a_muni5yr_lbl 3145356 `"Novo Oriente de Minas"', add
label define br10a_muni5yr_lbl 3145372 `"Novorizonte"', add
label define br10a_muni5yr_lbl 3145406 `"Olaria"', add
label define br10a_muni5yr_lbl 3145455 `"Olhos-d'�gua"', add
label define br10a_muni5yr_lbl 3145505 `"Ol�mpio Noronha"', add
label define br10a_muni5yr_lbl 3145604 `"Oliveira"', add
label define br10a_muni5yr_lbl 3145703 `"Oliveira Fortes"', add
label define br10a_muni5yr_lbl 3145802 `"On�a de Pitangui"', add
label define br10a_muni5yr_lbl 3145851 `"Orat�rios"', add
label define br10a_muni5yr_lbl 3145877 `"Oriz�nia"', add
label define br10a_muni5yr_lbl 3145901 `"Ouro Branco"', add
label define br10a_muni5yr_lbl 3146008 `"Ouro Fino"', add
label define br10a_muni5yr_lbl 3146107 `"Ouro Preto"', add
label define br10a_muni5yr_lbl 3146206 `"Ouro Verde de Minas"', add
label define br10a_muni5yr_lbl 3146255 `"Padre Carvalho"', add
label define br10a_muni5yr_lbl 3146305 `"Padre Para�so"', add
label define br10a_muni5yr_lbl 3146404 `"Paineiras"', add
label define br10a_muni5yr_lbl 3146503 `"Pains"', add
label define br10a_muni5yr_lbl 3146552 `"Pai Pedro"', add
label define br10a_muni5yr_lbl 3146602 `"Paiva"', add
label define br10a_muni5yr_lbl 3146701 `"Palma"', add
label define br10a_muni5yr_lbl 3146750 `"Palm�polis"', add
label define br10a_muni5yr_lbl 3146909 `"Papagaios"', add
label define br10a_muni5yr_lbl 3147006 `"Paracatu"', add
label define br10a_muni5yr_lbl 3147105 `"Par� de Minas"', add
label define br10a_muni5yr_lbl 3147204 `"Paragua�u"', add
label define br10a_muni5yr_lbl 3147303 `"Parais�polis"', add
label define br10a_muni5yr_lbl 3147402 `"Paraopeba"', add
label define br10a_muni5yr_lbl 3147501 `"Passab�m"', add
label define br10a_muni5yr_lbl 3147600 `"Passa Quatro"', add
label define br10a_muni5yr_lbl 3147709 `"Passa Tempo"', add
label define br10a_muni5yr_lbl 3147808 `"Passa-Vinte"', add
label define br10a_muni5yr_lbl 3147907 `"Passos"', add
label define br10a_muni5yr_lbl 3147956 `"Patis"', add
label define br10a_muni5yr_lbl 3148004 `"Patos de Minas"', add
label define br10a_muni5yr_lbl 3148103 `"Patroc�nio"', add
label define br10a_muni5yr_lbl 3148202 `"Patroc�nio do Muria�"', add
label define br10a_muni5yr_lbl 3148301 `"Paula C�ndido"', add
label define br10a_muni5yr_lbl 3148400 `"Paulistas"', add
label define br10a_muni5yr_lbl 3148509 `"Pav�o"', add
label define br10a_muni5yr_lbl 3148608 `"Pe�anha"', add
label define br10a_muni5yr_lbl 3148707 `"Pedra Azul"', add
label define br10a_muni5yr_lbl 3148756 `"Pedra Bonita"', add
label define br10a_muni5yr_lbl 3148806 `"Pedra do Anta"', add
label define br10a_muni5yr_lbl 3148905 `"Pedra do Indai�"', add
label define br10a_muni5yr_lbl 3149002 `"Pedra Dourada"', add
label define br10a_muni5yr_lbl 3149101 `"Pedralva"', add
label define br10a_muni5yr_lbl 3149150 `"Pedras de Maria da Cruz"', add
label define br10a_muni5yr_lbl 3149200 `"Pedrin�polis"', add
label define br10a_muni5yr_lbl 3149309 `"Pedro Leopoldo"', add
label define br10a_muni5yr_lbl 3149408 `"Pedro Teixeira"', add
label define br10a_muni5yr_lbl 3149507 `"Pequeri"', add
label define br10a_muni5yr_lbl 3149606 `"Pequi"', add
label define br10a_muni5yr_lbl 3149705 `"Perdig�o"', add
label define br10a_muni5yr_lbl 3149804 `"Perdizes"', add
label define br10a_muni5yr_lbl 3149903 `"Perd�es"', add
label define br10a_muni5yr_lbl 3149952 `"Periquito"', add
label define br10a_muni5yr_lbl 3150000 `"Pescador"', add
label define br10a_muni5yr_lbl 3150109 `"Piau"', add
label define br10a_muni5yr_lbl 3150158 `"Piedade de Caratinga"', add
label define br10a_muni5yr_lbl 3150208 `"Piedade de Ponte Nova"', add
label define br10a_muni5yr_lbl 3150307 `"Piedade do Rio Grande"', add
label define br10a_muni5yr_lbl 3150406 `"Piedade dos Gerais"', add
label define br10a_muni5yr_lbl 3150505 `"Pimenta"', add
label define br10a_muni5yr_lbl 3150539 `"Pingo-d'�gua"', add
label define br10a_muni5yr_lbl 3150570 `"Pint�polis"', add
label define br10a_muni5yr_lbl 3150604 `"Piracema"', add
label define br10a_muni5yr_lbl 3150703 `"Pirajuba"', add
label define br10a_muni5yr_lbl 3150802 `"Piranga"', add
label define br10a_muni5yr_lbl 3150901 `"Pirangu�u"', add
label define br10a_muni5yr_lbl 3151008 `"Piranguinho"', add
label define br10a_muni5yr_lbl 3151107 `"Pirapetinga"', add
label define br10a_muni5yr_lbl 3151206 `"Pirapora"', add
label define br10a_muni5yr_lbl 3151305 `"Pira�ba"', add
label define br10a_muni5yr_lbl 3151404 `"Pitangui"', add
label define br10a_muni5yr_lbl 3151503 `"Piumhi"', add
label define br10a_muni5yr_lbl 3151602 `"Planura"', add
label define br10a_muni5yr_lbl 3151701 `"Po�o Fundo"', add
label define br10a_muni5yr_lbl 3151800 `"Po�os de Caldas"', add
label define br10a_muni5yr_lbl 3151909 `"Pocrane"', add
label define br10a_muni5yr_lbl 3152006 `"Pomp�u"', add
label define br10a_muni5yr_lbl 3152105 `"Ponte Nova"', add
label define br10a_muni5yr_lbl 3152131 `"Ponto Chique"', add
label define br10a_muni5yr_lbl 3152170 `"Ponto dos Volantes"', add
label define br10a_muni5yr_lbl 3152204 `"Porteirinha"', add
label define br10a_muni5yr_lbl 3152303 `"Porto Firme"', add
label define br10a_muni5yr_lbl 3152402 `"Pot�"', add
label define br10a_muni5yr_lbl 3152501 `"Pouso Alegre"', add
label define br10a_muni5yr_lbl 3152600 `"Pouso Alto"', add
label define br10a_muni5yr_lbl 3152709 `"Prados"', add
label define br10a_muni5yr_lbl 3152808 `"Prata"', add
label define br10a_muni5yr_lbl 3152907 `"Prat�polis"', add
label define br10a_muni5yr_lbl 3153004 `"Pratinha"', add
label define br10a_muni5yr_lbl 3153103 `"Presidente Bernardes"', add
label define br10a_muni5yr_lbl 3153202 `"Presidente Juscelino"', add
label define br10a_muni5yr_lbl 3153301 `"Presidente Kubitschek"', add
label define br10a_muni5yr_lbl 3153400 `"Presidente Oleg�rio"', add
label define br10a_muni5yr_lbl 3153509 `"Alto Jequitib�"', add
label define br10a_muni5yr_lbl 3153608 `"Prudente de Morais"', add
label define br10a_muni5yr_lbl 3153707 `"Quartel Geral"', add
label define br10a_muni5yr_lbl 3153806 `"Queluzito"', add
label define br10a_muni5yr_lbl 3153905 `"Raposos"', add
label define br10a_muni5yr_lbl 3154002 `"Raul Soares"', add
label define br10a_muni5yr_lbl 3154101 `"Recreio"', add
label define br10a_muni5yr_lbl 3154150 `"Reduto"', add
label define br10a_muni5yr_lbl 3154200 `"Resende Costa"', add
label define br10a_muni5yr_lbl 3154309 `"Resplendor"', add
label define br10a_muni5yr_lbl 3154408 `"Ressaquinha"', add
label define br10a_muni5yr_lbl 3154457 `"Riachinho"', add
label define br10a_muni5yr_lbl 3154507 `"Riacho dos Machados"', add
label define br10a_muni5yr_lbl 3154606 `"Ribeir�o das Neves"', add
label define br10a_muni5yr_lbl 3154705 `"Ribeir�o Vermelho"', add
label define br10a_muni5yr_lbl 3154804 `"Rio Acima"', add
label define br10a_muni5yr_lbl 3154903 `"Rio Casca"', add
label define br10a_muni5yr_lbl 3155009 `"Rio Doce"', add
label define br10a_muni5yr_lbl 3155108 `"Rio do Prado"', add
label define br10a_muni5yr_lbl 3155207 `"Rio Espera"', add
label define br10a_muni5yr_lbl 3155306 `"Rio Manso"', add
label define br10a_muni5yr_lbl 3155405 `"Rio Novo"', add
label define br10a_muni5yr_lbl 3155504 `"Rio Parana�ba"', add
label define br10a_muni5yr_lbl 3155603 `"Rio Pardo de Minas"', add
label define br10a_muni5yr_lbl 3155702 `"Rio Piracicaba"', add
label define br10a_muni5yr_lbl 3155801 `"Rio Pomba"', add
label define br10a_muni5yr_lbl 3155900 `"Rio Preto"', add
label define br10a_muni5yr_lbl 3156007 `"Rio Vermelho"', add
label define br10a_muni5yr_lbl 3156106 `"Rit�polis"', add
label define br10a_muni5yr_lbl 3156205 `"Rochedo de Minas"', add
label define br10a_muni5yr_lbl 3156304 `"Rodeiro"', add
label define br10a_muni5yr_lbl 3156403 `"Romaria"', add
label define br10a_muni5yr_lbl 3156452 `"Ros�rio da Limeira"', add
label define br10a_muni5yr_lbl 3156502 `"Rubelita"', add
label define br10a_muni5yr_lbl 3156601 `"Rubim"', add
label define br10a_muni5yr_lbl 3156700 `"Sabar�"', add
label define br10a_muni5yr_lbl 3156809 `"Sabin�polis"', add
label define br10a_muni5yr_lbl 3156908 `"Sacramento"', add
label define br10a_muni5yr_lbl 3157005 `"Salinas"', add
label define br10a_muni5yr_lbl 3157104 `"Salto da Divisa"', add
label define br10a_muni5yr_lbl 3157203 `"Santa B�rbara"', add
label define br10a_muni5yr_lbl 3157252 `"Santa B�rbara do Leste"', add
label define br10a_muni5yr_lbl 3157278 `"Santa B�rbara do Monte Verde"', add
label define br10a_muni5yr_lbl 3157302 `"Santa B�rbara do Tug�rio"', add
label define br10a_muni5yr_lbl 3157336 `"Santa Cruz de Minas"', add
label define br10a_muni5yr_lbl 3157377 `"Santa Cruz de Salinas"', add
label define br10a_muni5yr_lbl 3157401 `"Santa Cruz do Escalvado"', add
label define br10a_muni5yr_lbl 3157500 `"Santa Efig�nia de Minas"', add
label define br10a_muni5yr_lbl 3157609 `"Santa F� de Minas"', add
label define br10a_muni5yr_lbl 3157658 `"Santa Helena de Minas"', add
label define br10a_muni5yr_lbl 3157708 `"Santa Juliana"', add
label define br10a_muni5yr_lbl 3157807 `"Santa Luzia"', add
label define br10a_muni5yr_lbl 3157906 `"Santa Margarida"', add
label define br10a_muni5yr_lbl 3158003 `"Santa Maria de Itabira"', add
label define br10a_muni5yr_lbl 3158102 `"Santa Maria do Salto"', add
label define br10a_muni5yr_lbl 3158201 `"Santa Maria do Sua�u�"', add
label define br10a_muni5yr_lbl 3158300 `"Santana da Vargem"', add
label define br10a_muni5yr_lbl 3158409 `"Santana de Cataguases"', add
label define br10a_muni5yr_lbl 3158508 `"Santana de Pirapama"', add
label define br10a_muni5yr_lbl 3158607 `"Santana do Deserto"', add
label define br10a_muni5yr_lbl 3158706 `"Santana do Garamb�u"', add
label define br10a_muni5yr_lbl 3158805 `"Santana do Jacar�"', add
label define br10a_muni5yr_lbl 3158904 `"Santana do Manhua�u"', add
label define br10a_muni5yr_lbl 3158953 `"Santana do Para�so"', add
label define br10a_muni5yr_lbl 3159001 `"Santana do Riacho"', add
label define br10a_muni5yr_lbl 3159100 `"Santana dos Montes"', add
label define br10a_muni5yr_lbl 3159209 `"Santa Rita de Caldas"', add
label define br10a_muni5yr_lbl 3159308 `"Santa Rita de Jacutinga"', add
label define br10a_muni5yr_lbl 3159357 `"Santa Rita de Minas"', add
label define br10a_muni5yr_lbl 3159407 `"Santa Rita de Ibitipoca"', add
label define br10a_muni5yr_lbl 3159506 `"Santa Rita do Itueto"', add
label define br10a_muni5yr_lbl 3159605 `"Santa Rita do Sapuca�"', add
label define br10a_muni5yr_lbl 3159704 `"Santa Rosa da Serra"', add
label define br10a_muni5yr_lbl 3159803 `"Santa Vit�ria"', add
label define br10a_muni5yr_lbl 3159902 `"Santo Ant�nio do Amparo"', add
label define br10a_muni5yr_lbl 3160009 `"Santo Ant�nio do Aventureiro"', add
label define br10a_muni5yr_lbl 3160108 `"Santo Ant�nio do Grama"', add
label define br10a_muni5yr_lbl 3160207 `"Santo Ant�nio do Itamb�"', add
label define br10a_muni5yr_lbl 3160306 `"Santo Ant�nio do Jacinto"', add
label define br10a_muni5yr_lbl 3160405 `"Santo Ant�nio do Monte"', add
label define br10a_muni5yr_lbl 3160454 `"Santo Ant�nio do Retiro"', add
label define br10a_muni5yr_lbl 3160504 `"Santo Ant�nio do Rio Abaixo"', add
label define br10a_muni5yr_lbl 3160603 `"Santo Hip�lito"', add
label define br10a_muni5yr_lbl 3160702 `"Santos Dumont"', add
label define br10a_muni5yr_lbl 3160801 `"S�o Bento Abade"', add
label define br10a_muni5yr_lbl 3160900 `"S�o Br�s do Sua�u�"', add
label define br10a_muni5yr_lbl 3160959 `"S�o Domingos das Dores"', add
label define br10a_muni5yr_lbl 3161007 `"S�o Domingos do Prata"', add
label define br10a_muni5yr_lbl 3161056 `"S�o F�lix de Minas"', add
label define br10a_muni5yr_lbl 3161106 `"S�o Francisco"', add
label define br10a_muni5yr_lbl 3161205 `"S�o Francisco de Paula"', add
label define br10a_muni5yr_lbl 3161304 `"S�o Francisco de Sales"', add
label define br10a_muni5yr_lbl 3161403 `"S�o Francisco do Gl�ria"', add
label define br10a_muni5yr_lbl 3161502 `"S�o Geraldo"', add
label define br10a_muni5yr_lbl 3161601 `"S�o Geraldo da Piedade"', add
label define br10a_muni5yr_lbl 3161650 `"S�o Geraldo do Baixio"', add
label define br10a_muni5yr_lbl 3161700 `"S�o Gon�alo do Abaet�"', add
label define br10a_muni5yr_lbl 3161809 `"S�o Gon�alo do Par�"', add
label define br10a_muni5yr_lbl 3161908 `"S�o Gon�alo do Rio Abaixo"', add
label define br10a_muni5yr_lbl 3162005 `"S�o Gon�alo do Sapuca�"', add
label define br10a_muni5yr_lbl 3162104 `"S�o Gotardo"', add
label define br10a_muni5yr_lbl 3162203 `"S�o Jo�o Batista do Gl�ria"', add
label define br10a_muni5yr_lbl 3162252 `"S�o Jo�o da Lagoa"', add
label define br10a_muni5yr_lbl 3162302 `"S�o Jo�o da Mata"', add
label define br10a_muni5yr_lbl 3162401 `"S�o Jo�o da Ponte"', add
label define br10a_muni5yr_lbl 3162450 `"S�o Jo�o das Miss�es"', add
label define br10a_muni5yr_lbl 3162500 `"S�o Jo�o del Rei"', add
label define br10a_muni5yr_lbl 3162559 `"S�o Jo�o do Manhua�u"', add
label define br10a_muni5yr_lbl 3162575 `"S�o Jo�o do Manteninha"', add
label define br10a_muni5yr_lbl 3162609 `"S�o Jo�o do Oriente"', add
label define br10a_muni5yr_lbl 3162658 `"S�o Jo�o do Pacu�"', add
label define br10a_muni5yr_lbl 3162708 `"S�o Jo�o do Para�so"', add
label define br10a_muni5yr_lbl 3162807 `"S�o Jo�o Evangelista"', add
label define br10a_muni5yr_lbl 3162906 `"S�o Jo�o Nepomuceno"', add
label define br10a_muni5yr_lbl 3162922 `"S�o Joaquim de Bicas"', add
label define br10a_muni5yr_lbl 3162948 `"S�o Jos� da Barra"', add
label define br10a_muni5yr_lbl 3162955 `"S�o Jos� da Lapa"', add
label define br10a_muni5yr_lbl 3163003 `"S�o Jos� da Safira"', add
label define br10a_muni5yr_lbl 3163102 `"S�o Jos� da Varginha"', add
label define br10a_muni5yr_lbl 3163201 `"S�o Jos� do Alegre"', add
label define br10a_muni5yr_lbl 3163300 `"S�o Jos� do Divino"', add
label define br10a_muni5yr_lbl 3163409 `"S�o Jos� do Goiabal"', add
label define br10a_muni5yr_lbl 3163508 `"S�o Jos� do Jacuri"', add
label define br10a_muni5yr_lbl 3163607 `"S�o Jos� do Mantimento"', add
label define br10a_muni5yr_lbl 3163706 `"S�o Louren�o"', add
label define br10a_muni5yr_lbl 3163805 `"S�o Miguel do Anta"', add
label define br10a_muni5yr_lbl 3163904 `"S�o Pedro da Uni�o"', add
label define br10a_muni5yr_lbl 3164001 `"S�o Pedro dos Ferros"', add
label define br10a_muni5yr_lbl 3164100 `"S�o Pedro do Sua�u�"', add
label define br10a_muni5yr_lbl 3164209 `"S�o Rom�o"', add
label define br10a_muni5yr_lbl 3164308 `"S�o Roque de Minas"', add
label define br10a_muni5yr_lbl 3164407 `"S�o Sebasti�o da Bela Vista"', add
label define br10a_muni5yr_lbl 3164431 `"S�o Sebasti�o da Vargem Alegre"', add
label define br10a_muni5yr_lbl 3164472 `"S�o Sebasti�o do Anta"', add
label define br10a_muni5yr_lbl 3164506 `"S�o Sebasti�o do Maranh�o"', add
label define br10a_muni5yr_lbl 3164605 `"S�o Sebasti�o do Oeste"', add
label define br10a_muni5yr_lbl 3164704 `"S�o Sebasti�o do Para�so"', add
label define br10a_muni5yr_lbl 3164803 `"S�o Sebasti�o do Rio Preto"', add
label define br10a_muni5yr_lbl 3164902 `"S�o Sebasti�o do Rio Verde"', add
label define br10a_muni5yr_lbl 3165008 `"S�o Tiago"', add
label define br10a_muni5yr_lbl 3165107 `"S�o Tom�s de Aquino"', add
label define br10a_muni5yr_lbl 3165206 `"S�o Thom� das Letras"', add
label define br10a_muni5yr_lbl 3165305 `"S�o Vicente de Minas"', add
label define br10a_muni5yr_lbl 3165404 `"Sapuca�-Mirim"', add
label define br10a_muni5yr_lbl 3165503 `"Sardo�"', add
label define br10a_muni5yr_lbl 3165537 `"Sarzedo"', add
label define br10a_muni5yr_lbl 3165552 `"Setubinha"', add
label define br10a_muni5yr_lbl 3165560 `"Sem-Peixe"', add
label define br10a_muni5yr_lbl 3165578 `"Senador Amaral"', add
label define br10a_muni5yr_lbl 3165602 `"Senador Cortes"', add
label define br10a_muni5yr_lbl 3165701 `"Senador Firmino"', add
label define br10a_muni5yr_lbl 3165800 `"Senador Jos� Bento"', add
label define br10a_muni5yr_lbl 3165909 `"Senador Modestino Gon�alves"', add
label define br10a_muni5yr_lbl 3166006 `"Senhora de Oliveira"', add
label define br10a_muni5yr_lbl 3166105 `"Senhora do Porto"', add
label define br10a_muni5yr_lbl 3166204 `"Senhora dos Rem�dios"', add
label define br10a_muni5yr_lbl 3166303 `"Sericita"', add
label define br10a_muni5yr_lbl 3166402 `"Seritinga"', add
label define br10a_muni5yr_lbl 3166501 `"Serra Azul de Minas"', add
label define br10a_muni5yr_lbl 3166600 `"Serra da Saudade"', add
label define br10a_muni5yr_lbl 3166709 `"Serra dos Aimor�s"', add
label define br10a_muni5yr_lbl 3166808 `"Serra do Salitre"', add
label define br10a_muni5yr_lbl 3166907 `"Serrania"', add
label define br10a_muni5yr_lbl 3166956 `"Serran�polis de Minas"', add
label define br10a_muni5yr_lbl 3167004 `"Serranos"', add
label define br10a_muni5yr_lbl 3167103 `"Serro"', add
label define br10a_muni5yr_lbl 3167202 `"Sete Lagoas"', add
label define br10a_muni5yr_lbl 3167301 `"Silveir�nia"', add
label define br10a_muni5yr_lbl 3167400 `"Silvian�polis"', add
label define br10a_muni5yr_lbl 3167509 `"Sim�o Pereira"', add
label define br10a_muni5yr_lbl 3167608 `"Simon�sia"', add
label define br10a_muni5yr_lbl 3167707 `"Sobr�lia"', add
label define br10a_muni5yr_lbl 3167806 `"Soledade de Minas"', add
label define br10a_muni5yr_lbl 3167905 `"Tabuleiro"', add
label define br10a_muni5yr_lbl 3168002 `"Taiobeiras"', add
label define br10a_muni5yr_lbl 3168051 `"Taparuba"', add
label define br10a_muni5yr_lbl 3168101 `"Tapira"', add
label define br10a_muni5yr_lbl 3168200 `"Tapira�"', add
label define br10a_muni5yr_lbl 3168309 `"Taquara�u de Minas"', add
label define br10a_muni5yr_lbl 3168408 `"Tarumirim"', add
label define br10a_muni5yr_lbl 3168507 `"Teixeiras"', add
label define br10a_muni5yr_lbl 3168606 `"Te�filo Otoni"', add
label define br10a_muni5yr_lbl 3168705 `"Tim�teo"', add
label define br10a_muni5yr_lbl 3168804 `"Tiradentes"', add
label define br10a_muni5yr_lbl 3168903 `"Tiros"', add
label define br10a_muni5yr_lbl 3169000 `"Tocantins"', add
label define br10a_muni5yr_lbl 3169059 `"Tocos do Moji"', add
label define br10a_muni5yr_lbl 3169109 `"Toledo"', add
label define br10a_muni5yr_lbl 3169208 `"Tombos"', add
label define br10a_muni5yr_lbl 3169307 `"Tr�s Cora��es"', add
label define br10a_muni5yr_lbl 3169356 `"Tr�s Marias"', add
label define br10a_muni5yr_lbl 3169406 `"Tr�s Pontas"', add
label define br10a_muni5yr_lbl 3169505 `"Tumiritinga"', add
label define br10a_muni5yr_lbl 3169604 `"Tupaciguara"', add
label define br10a_muni5yr_lbl 3169703 `"Turmalina"', add
label define br10a_muni5yr_lbl 3169802 `"Turvol�ndia"', add
label define br10a_muni5yr_lbl 3169901 `"Ub�"', add
label define br10a_muni5yr_lbl 3170008 `"Uba�"', add
label define br10a_muni5yr_lbl 3170057 `"Ubaporanga"', add
label define br10a_muni5yr_lbl 3170107 `"Uberaba"', add
label define br10a_muni5yr_lbl 3170206 `"Uberl�ndia"', add
label define br10a_muni5yr_lbl 3170305 `"Umburatiba"', add
label define br10a_muni5yr_lbl 3170404 `"Una�"', add
label define br10a_muni5yr_lbl 3170438 `"Uni�o de Minas"', add
label define br10a_muni5yr_lbl 3170479 `"Uruana de Minas"', add
label define br10a_muni5yr_lbl 3170503 `"Uruc�nia"', add
label define br10a_muni5yr_lbl 3170529 `"Urucuia"', add
label define br10a_muni5yr_lbl 3170578 `"Vargem Alegre"', add
label define br10a_muni5yr_lbl 3170602 `"Vargem Bonita"', add
label define br10a_muni5yr_lbl 3170651 `"Vargem Grande do Rio Pardo"', add
label define br10a_muni5yr_lbl 3170701 `"Varginha"', add
label define br10a_muni5yr_lbl 3170750 `"Varj�o de Minas"', add
label define br10a_muni5yr_lbl 3170800 `"V�rzea da Palma"', add
label define br10a_muni5yr_lbl 3170909 `"Varzel�ndia"', add
label define br10a_muni5yr_lbl 3171006 `"Vazante"', add
label define br10a_muni5yr_lbl 3171030 `"Verdel�ndia"', add
label define br10a_muni5yr_lbl 3171071 `"Veredinha"', add
label define br10a_muni5yr_lbl 3171105 `"Ver�ssimo"', add
label define br10a_muni5yr_lbl 3171154 `"Vermelho Novo"', add
label define br10a_muni5yr_lbl 3171204 `"Vespasiano"', add
label define br10a_muni5yr_lbl 3171303 `"Vi�osa"', add
label define br10a_muni5yr_lbl 3171402 `"Vieiras"', add
label define br10a_muni5yr_lbl 3171501 `"Mathias Lobato"', add
label define br10a_muni5yr_lbl 3171600 `"Virgem da Lapa"', add
label define br10a_muni5yr_lbl 3171709 `"Virg�nia"', add
label define br10a_muni5yr_lbl 3171808 `"Virgin�polis"', add
label define br10a_muni5yr_lbl 3171907 `"Virgol�ndia"', add
label define br10a_muni5yr_lbl 3172004 `"Visconde do Rio Branco"', add
label define br10a_muni5yr_lbl 3172103 `"Volta Grande"', add
label define br10a_muni5yr_lbl 3172202 `"Wenceslau Braz"', add
label define br10a_muni5yr_lbl 3199999 `"Minas Gerais, municipality unknown"', add
label define br10a_muni5yr_lbl 3200102 `"Afonso Cl�udio"', add
label define br10a_muni5yr_lbl 3200136 `"�guia Branca"', add
label define br10a_muni5yr_lbl 3200169 `"�gua Doce do Norte"', add
label define br10a_muni5yr_lbl 3200201 `"Alegre"', add
label define br10a_muni5yr_lbl 3200300 `"Alfredo Chaves"', add
label define br10a_muni5yr_lbl 3200359 `"Alto Rio Novo"', add
label define br10a_muni5yr_lbl 3200409 `"Anchieta"', add
label define br10a_muni5yr_lbl 3200508 `"Apiac�"', add
label define br10a_muni5yr_lbl 3200607 `"Aracruz"', add
label define br10a_muni5yr_lbl 3200706 `"Atilio Vivacqua"', add
label define br10a_muni5yr_lbl 3200805 `"Baixo Guandu"', add
label define br10a_muni5yr_lbl 3200904 `"Barra de S�o Francisco"', add
label define br10a_muni5yr_lbl 3201001 `"Boa Esperan�a"', add
label define br10a_muni5yr_lbl 3201100 `"Bom Jesus do Norte"', add
label define br10a_muni5yr_lbl 3201159 `"Brejetuba"', add
label define br10a_muni5yr_lbl 3201209 `"Cachoeiro de Itapemirim"', add
label define br10a_muni5yr_lbl 3201308 `"Cariacica"', add
label define br10a_muni5yr_lbl 3201407 `"Castelo"', add
label define br10a_muni5yr_lbl 3201506 `"Colatina"', add
label define br10a_muni5yr_lbl 3201605 `"Concei��o da Barra"', add
label define br10a_muni5yr_lbl 3201704 `"Concei��o do Castelo"', add
label define br10a_muni5yr_lbl 3201803 `"Divino de S�o Louren�o"', add
label define br10a_muni5yr_lbl 3201902 `"Domingos Martins"', add
label define br10a_muni5yr_lbl 3202009 `"Dores do Rio Preto"', add
label define br10a_muni5yr_lbl 3202108 `"Ecoporanga"', add
label define br10a_muni5yr_lbl 3202207 `"Fund�o"', add
label define br10a_muni5yr_lbl 3202256 `"Governador Lindenberg"', add
label define br10a_muni5yr_lbl 3202306 `"Gua�u�"', add
label define br10a_muni5yr_lbl 3202405 `"Guarapari"', add
label define br10a_muni5yr_lbl 3202454 `"Ibatiba"', add
label define br10a_muni5yr_lbl 3202504 `"Ibira�u"', add
label define br10a_muni5yr_lbl 3202553 `"Ibitirama"', add
label define br10a_muni5yr_lbl 3202603 `"Iconha"', add
label define br10a_muni5yr_lbl 3202652 `"Irupi"', add
label define br10a_muni5yr_lbl 3202702 `"Itagua�u"', add
label define br10a_muni5yr_lbl 3202801 `"Itapemirim"', add
label define br10a_muni5yr_lbl 3202900 `"Itarana"', add
label define br10a_muni5yr_lbl 3203007 `"I�na"', add
label define br10a_muni5yr_lbl 3203056 `"Jaguar�"', add
label define br10a_muni5yr_lbl 3203106 `"Jer�nimo Monteiro"', add
label define br10a_muni5yr_lbl 3203130 `"Jo�o Neiva"', add
label define br10a_muni5yr_lbl 3203163 `"Laranja da Terra"', add
label define br10a_muni5yr_lbl 3203205 `"Linhares"', add
label define br10a_muni5yr_lbl 3203304 `"Manten�polis"', add
label define br10a_muni5yr_lbl 3203320 `"Marata�zes"', add
label define br10a_muni5yr_lbl 3203346 `"Marechal Floriano"', add
label define br10a_muni5yr_lbl 3203353 `"Maril�ndia"', add
label define br10a_muni5yr_lbl 3203403 `"Mimoso do Sul"', add
label define br10a_muni5yr_lbl 3203502 `"Montanha"', add
label define br10a_muni5yr_lbl 3203601 `"Mucurici"', add
label define br10a_muni5yr_lbl 3203700 `"Muniz Freire"', add
label define br10a_muni5yr_lbl 3203809 `"Muqui"', add
label define br10a_muni5yr_lbl 3203908 `"Nova Ven�cia"', add
label define br10a_muni5yr_lbl 3204005 `"Pancas"', add
label define br10a_muni5yr_lbl 3204054 `"Pedro Can�rio"', add
label define br10a_muni5yr_lbl 3204104 `"Pinheiros"', add
label define br10a_muni5yr_lbl 3204203 `"Pi�ma"', add
label define br10a_muni5yr_lbl 3204252 `"Ponto Belo"', add
label define br10a_muni5yr_lbl 3204302 `"Presidente Kennedy"', add
label define br10a_muni5yr_lbl 3204351 `"Rio Bananal"', add
label define br10a_muni5yr_lbl 3204401 `"Rio Novo do Sul"', add
label define br10a_muni5yr_lbl 3204500 `"Santa Leopoldina"', add
label define br10a_muni5yr_lbl 3204559 `"Santa Maria de Jetib�"', add
label define br10a_muni5yr_lbl 3204609 `"Santa Teresa"', add
label define br10a_muni5yr_lbl 3204658 `"S�o Domingos do Norte"', add
label define br10a_muni5yr_lbl 3204708 `"S�o Gabriel da Palha"', add
label define br10a_muni5yr_lbl 3204807 `"S�o Jos� do Cal�ado"', add
label define br10a_muni5yr_lbl 3204906 `"S�o Mateus"', add
label define br10a_muni5yr_lbl 3204955 `"S�o Roque do Cana�"', add
label define br10a_muni5yr_lbl 3205002 `"Serra"', add
label define br10a_muni5yr_lbl 3205010 `"Sooretama"', add
label define br10a_muni5yr_lbl 3205036 `"Vargem Alta"', add
label define br10a_muni5yr_lbl 3205069 `"Venda Nova do Imigrante"', add
label define br10a_muni5yr_lbl 3205101 `"Viana"', add
label define br10a_muni5yr_lbl 3205150 `"Vila Pav�o"', add
label define br10a_muni5yr_lbl 3205176 `"Vila Val�rio"', add
label define br10a_muni5yr_lbl 3205200 `"Vila Velha"', add
label define br10a_muni5yr_lbl 3205309 `"Vit�ria"', add
label define br10a_muni5yr_lbl 3299999 `"Esp�rito Santo, municipality unknown"', add
label define br10a_muni5yr_lbl 3300100 `"Angra dos Reis"', add
label define br10a_muni5yr_lbl 3300159 `"Aperib�"', add
label define br10a_muni5yr_lbl 3300209 `"Araruama"', add
label define br10a_muni5yr_lbl 3300225 `"Areal"', add
label define br10a_muni5yr_lbl 3300233 `"Arma��o dos B�zios"', add
label define br10a_muni5yr_lbl 3300258 `"Arraial do Cabo"', add
label define br10a_muni5yr_lbl 3300308 `"Barra do Pira�"', add
label define br10a_muni5yr_lbl 3300407 `"Barra Mansa"', add
label define br10a_muni5yr_lbl 3300456 `"Belford Roxo"', add
label define br10a_muni5yr_lbl 3300506 `"Bom Jardim"', add
label define br10a_muni5yr_lbl 3300605 `"Bom Jesus do Itabapoana"', add
label define br10a_muni5yr_lbl 3300704 `"Cabo Frio"', add
label define br10a_muni5yr_lbl 3300803 `"Cachoeiras de Macacu"', add
label define br10a_muni5yr_lbl 3300902 `"Cambuci"', add
label define br10a_muni5yr_lbl 3300936 `"Carapebus"', add
label define br10a_muni5yr_lbl 3300951 `"Comendador Levy Gasparian"', add
label define br10a_muni5yr_lbl 3301009 `"Campos dos Goytacazes"', add
label define br10a_muni5yr_lbl 3301108 `"Cantagalo"', add
label define br10a_muni5yr_lbl 3301157 `"Cardoso Moreira"', add
label define br10a_muni5yr_lbl 3301207 `"Carmo"', add
label define br10a_muni5yr_lbl 3301306 `"Casimiro de Abreu"', add
label define br10a_muni5yr_lbl 3301405 `"Concei��o de Macabu"', add
label define br10a_muni5yr_lbl 3301504 `"Cordeiro"', add
label define br10a_muni5yr_lbl 3301603 `"Duas Barras"', add
label define br10a_muni5yr_lbl 3301702 `"Duque de Caxias"', add
label define br10a_muni5yr_lbl 3301801 `"Engenheiro Paulo de Frontin"', add
label define br10a_muni5yr_lbl 3301850 `"Guapimirim"', add
label define br10a_muni5yr_lbl 3301876 `"Iguaba Grande"', add
label define br10a_muni5yr_lbl 3301900 `"Itabora�"', add
label define br10a_muni5yr_lbl 3302007 `"Itagua�"', add
label define br10a_muni5yr_lbl 3302056 `"Italva"', add
label define br10a_muni5yr_lbl 3302106 `"Itaocara"', add
label define br10a_muni5yr_lbl 3302205 `"Itaperuna"', add
label define br10a_muni5yr_lbl 3302254 `"Itatiaia"', add
label define br10a_muni5yr_lbl 3302270 `"Japeri"', add
label define br10a_muni5yr_lbl 3302304 `"Laje do Muria�"', add
label define br10a_muni5yr_lbl 3302403 `"Maca�"', add
label define br10a_muni5yr_lbl 3302452 `"Macuco"', add
label define br10a_muni5yr_lbl 3302502 `"Mag�"', add
label define br10a_muni5yr_lbl 3302601 `"Mangaratiba"', add
label define br10a_muni5yr_lbl 3302700 `"Maric�"', add
label define br10a_muni5yr_lbl 3302809 `"Mendes"', add
label define br10a_muni5yr_lbl 3302858 `"Mesquita"', add
label define br10a_muni5yr_lbl 3302908 `"Miguel Pereira"', add
label define br10a_muni5yr_lbl 3303005 `"Miracema"', add
label define br10a_muni5yr_lbl 3303104 `"Natividade"', add
label define br10a_muni5yr_lbl 3303203 `"Nil�polis"', add
label define br10a_muni5yr_lbl 3303302 `"Niter�i"', add
label define br10a_muni5yr_lbl 3303401 `"Nova Friburgo"', add
label define br10a_muni5yr_lbl 3303500 `"Nova Igua�u"', add
label define br10a_muni5yr_lbl 3303609 `"Paracambi"', add
label define br10a_muni5yr_lbl 3303708 `"Para�ba do Sul"', add
label define br10a_muni5yr_lbl 3303807 `"Paraty"', add
label define br10a_muni5yr_lbl 3303856 `"Paty do Alferes"', add
label define br10a_muni5yr_lbl 3303906 `"Petr�polis"', add
label define br10a_muni5yr_lbl 3303955 `"Pinheiral"', add
label define br10a_muni5yr_lbl 3304003 `"Pira�"', add
label define br10a_muni5yr_lbl 3304102 `"Porci�ncula"', add
label define br10a_muni5yr_lbl 3304110 `"Porto Real"', add
label define br10a_muni5yr_lbl 3304128 `"Quatis"', add
label define br10a_muni5yr_lbl 3304144 `"Queimados"', add
label define br10a_muni5yr_lbl 3304151 `"Quissam�"', add
label define br10a_muni5yr_lbl 3304201 `"Resende"', add
label define br10a_muni5yr_lbl 3304300 `"Rio Bonito"', add
label define br10a_muni5yr_lbl 3304409 `"Rio Claro"', add
label define br10a_muni5yr_lbl 3304508 `"Rio das Flores"', add
label define br10a_muni5yr_lbl 3304524 `"Rio das Ostras"', add
label define br10a_muni5yr_lbl 3304557 `"Rio de Janeiro"', add
label define br10a_muni5yr_lbl 3304607 `"Santa Maria Madalena"', add
label define br10a_muni5yr_lbl 3304706 `"Santo Ant�nio de P�dua"', add
label define br10a_muni5yr_lbl 3304755 `"S�o Francisco de Itabapoana"', add
label define br10a_muni5yr_lbl 3304805 `"S�o Fid�lis"', add
label define br10a_muni5yr_lbl 3304904 `"S�o Gon�alo"', add
label define br10a_muni5yr_lbl 3305000 `"S�o Jo�o da Barra"', add
label define br10a_muni5yr_lbl 3305109 `"S�o Jo�o de Meriti"', add
label define br10a_muni5yr_lbl 3305133 `"S�o Jos� de Ub�"', add
label define br10a_muni5yr_lbl 3305158 `"S�o Jos� do Vale do Rio Preto"', add
label define br10a_muni5yr_lbl 3305208 `"S�o Pedro da Aldeia"', add
label define br10a_muni5yr_lbl 3305307 `"S�o Sebasti�o do Alto"', add
label define br10a_muni5yr_lbl 3305406 `"Sapucaia"', add
label define br10a_muni5yr_lbl 3305505 `"Saquarema"', add
label define br10a_muni5yr_lbl 3305554 `"Serop�dica"', add
label define br10a_muni5yr_lbl 3305604 `"Silva Jardim"', add
label define br10a_muni5yr_lbl 3305703 `"Sumidouro"', add
label define br10a_muni5yr_lbl 3305752 `"Tangu�"', add
label define br10a_muni5yr_lbl 3305802 `"Teres�polis"', add
label define br10a_muni5yr_lbl 3305901 `"Trajano de Moraes"', add
label define br10a_muni5yr_lbl 3306008 `"Tr�s Rios"', add
label define br10a_muni5yr_lbl 3306107 `"Valen�a"', add
label define br10a_muni5yr_lbl 3306156 `"Varre-Sai"', add
label define br10a_muni5yr_lbl 3306206 `"Vassouras"', add
label define br10a_muni5yr_lbl 3306305 `"Volta Redonda"', add
label define br10a_muni5yr_lbl 3399999 `"Rio de Janeiro, municipality unknown"', add
label define br10a_muni5yr_lbl 3500105 `"Adamantina"', add
label define br10a_muni5yr_lbl 3500204 `"Adolfo"', add
label define br10a_muni5yr_lbl 3500303 `"Agua�"', add
label define br10a_muni5yr_lbl 3500402 `"�guas da Prata"', add
label define br10a_muni5yr_lbl 3500501 `"�guas de Lind�ia"', add
label define br10a_muni5yr_lbl 3500550 `"�guas de Santa B�rbara"', add
label define br10a_muni5yr_lbl 3500600 `"�guas de S�o Pedro"', add
label define br10a_muni5yr_lbl 3500709 `"Agudos"', add
label define br10a_muni5yr_lbl 3500758 `"Alambari"', add
label define br10a_muni5yr_lbl 3500808 `"Alfredo Marcondes"', add
label define br10a_muni5yr_lbl 3500907 `"Altair"', add
label define br10a_muni5yr_lbl 3501004 `"Altin�polis"', add
label define br10a_muni5yr_lbl 3501103 `"Alto Alegre"', add
label define br10a_muni5yr_lbl 3501152 `"Alum�nio"', add
label define br10a_muni5yr_lbl 3501202 `"�lvares Florence"', add
label define br10a_muni5yr_lbl 3501301 `"�lvares Machado"', add
label define br10a_muni5yr_lbl 3501400 `"�lvaro de Carvalho"', add
label define br10a_muni5yr_lbl 3501509 `"Alvinl�ndia"', add
label define br10a_muni5yr_lbl 3501608 `"Americana"', add
label define br10a_muni5yr_lbl 3501707 `"Am�rico Brasiliense"', add
label define br10a_muni5yr_lbl 3501806 `"Am�rico de Campos"', add
label define br10a_muni5yr_lbl 3501905 `"Amparo"', add
label define br10a_muni5yr_lbl 3502002 `"Anal�ndia"', add
label define br10a_muni5yr_lbl 3502101 `"Andradina"', add
label define br10a_muni5yr_lbl 3502200 `"Angatuba"', add
label define br10a_muni5yr_lbl 3502309 `"Anhembi"', add
label define br10a_muni5yr_lbl 3502408 `"Anhumas"', add
label define br10a_muni5yr_lbl 3502507 `"Aparecida"', add
label define br10a_muni5yr_lbl 3502606 `"Aparecida d'Oeste"', add
label define br10a_muni5yr_lbl 3502705 `"Apia�"', add
label define br10a_muni5yr_lbl 3502754 `"Ara�ariguama"', add
label define br10a_muni5yr_lbl 3502804 `"Ara�atuba"', add
label define br10a_muni5yr_lbl 3502903 `"Ara�oiaba da Serra"', add
label define br10a_muni5yr_lbl 3503000 `"Aramina"', add
label define br10a_muni5yr_lbl 3503109 `"Arandu"', add
label define br10a_muni5yr_lbl 3503158 `"Arape�"', add
label define br10a_muni5yr_lbl 3503208 `"Araraquara"', add
label define br10a_muni5yr_lbl 3503307 `"Araras"', add
label define br10a_muni5yr_lbl 3503356 `"Arco-�ris"', add
label define br10a_muni5yr_lbl 3503406 `"Arealva"', add
label define br10a_muni5yr_lbl 3503505 `"Areias"', add
label define br10a_muni5yr_lbl 3503604 `"Arei�polis"', add
label define br10a_muni5yr_lbl 3503703 `"Ariranha"', add
label define br10a_muni5yr_lbl 3503802 `"Artur Nogueira"', add
label define br10a_muni5yr_lbl 3503901 `"Aruj�"', add
label define br10a_muni5yr_lbl 3503950 `"Asp�sia"', add
label define br10a_muni5yr_lbl 3504008 `"Assis"', add
label define br10a_muni5yr_lbl 3504107 `"Atibaia"', add
label define br10a_muni5yr_lbl 3504206 `"Auriflama"', add
label define br10a_muni5yr_lbl 3504305 `"Ava�"', add
label define br10a_muni5yr_lbl 3504404 `"Avanhandava"', add
label define br10a_muni5yr_lbl 3504503 `"Avar�"', add
label define br10a_muni5yr_lbl 3504602 `"Bady Bassitt"', add
label define br10a_muni5yr_lbl 3504701 `"Balbinos"', add
label define br10a_muni5yr_lbl 3504800 `"B�lsamo"', add
label define br10a_muni5yr_lbl 3504909 `"Bananal"', add
label define br10a_muni5yr_lbl 3505005 `"Bar�o de Antonina"', add
label define br10a_muni5yr_lbl 3505104 `"Barbosa"', add
label define br10a_muni5yr_lbl 3505203 `"Bariri"', add
label define br10a_muni5yr_lbl 3505302 `"Barra Bonita"', add
label define br10a_muni5yr_lbl 3505351 `"Barra do Chap�u"', add
label define br10a_muni5yr_lbl 3505401 `"Barra do Turvo"', add
label define br10a_muni5yr_lbl 3505500 `"Barretos"', add
label define br10a_muni5yr_lbl 3505609 `"Barrinha"', add
label define br10a_muni5yr_lbl 3505708 `"Barueri"', add
label define br10a_muni5yr_lbl 3505807 `"Bastos"', add
label define br10a_muni5yr_lbl 3505906 `"Batatais"', add
label define br10a_muni5yr_lbl 3506003 `"Bauru"', add
label define br10a_muni5yr_lbl 3506102 `"Bebedouro"', add
label define br10a_muni5yr_lbl 3506201 `"Bento de Abreu"', add
label define br10a_muni5yr_lbl 3506300 `"Bernardino de Campos"', add
label define br10a_muni5yr_lbl 3506359 `"Bertioga"', add
label define br10a_muni5yr_lbl 3506409 `"Bilac"', add
label define br10a_muni5yr_lbl 3506508 `"Birigui"', add
label define br10a_muni5yr_lbl 3506607 `"Biritiba-Mirim"', add
label define br10a_muni5yr_lbl 3506706 `"Boa Esperan�a do Sul"', add
label define br10a_muni5yr_lbl 3506805 `"Bocaina"', add
label define br10a_muni5yr_lbl 3506904 `"Bofete"', add
label define br10a_muni5yr_lbl 3507001 `"Boituva"', add
label define br10a_muni5yr_lbl 3507100 `"Bom Jesus dos Perd�es"', add
label define br10a_muni5yr_lbl 3507159 `"Bom Sucesso de Itarar�"', add
label define br10a_muni5yr_lbl 3507209 `"Bor�"', add
label define br10a_muni5yr_lbl 3507308 `"Borac�ia"', add
label define br10a_muni5yr_lbl 3507407 `"Borborema"', add
label define br10a_muni5yr_lbl 3507456 `"Borebi"', add
label define br10a_muni5yr_lbl 3507506 `"Botucatu"', add
label define br10a_muni5yr_lbl 3507605 `"Bragan�a Paulista"', add
label define br10a_muni5yr_lbl 3507704 `"Bra�na"', add
label define br10a_muni5yr_lbl 3507753 `"Brejo Alegre"', add
label define br10a_muni5yr_lbl 3507803 `"Brodowski"', add
label define br10a_muni5yr_lbl 3507902 `"Brotas"', add
label define br10a_muni5yr_lbl 3508009 `"Buri"', add
label define br10a_muni5yr_lbl 3508108 `"Buritama"', add
label define br10a_muni5yr_lbl 3508207 `"Buritizal"', add
label define br10a_muni5yr_lbl 3508306 `"Cabr�lia Paulista"', add
label define br10a_muni5yr_lbl 3508405 `"Cabre�va"', add
label define br10a_muni5yr_lbl 3508504 `"Ca�apava"', add
label define br10a_muni5yr_lbl 3508603 `"Cachoeira Paulista"', add
label define br10a_muni5yr_lbl 3508702 `"Caconde"', add
label define br10a_muni5yr_lbl 3508801 `"Cafel�ndia"', add
label define br10a_muni5yr_lbl 3508900 `"Caiabu"', add
label define br10a_muni5yr_lbl 3509007 `"Caieiras"', add
label define br10a_muni5yr_lbl 3509106 `"Caiu�"', add
label define br10a_muni5yr_lbl 3509205 `"Cajamar"', add
label define br10a_muni5yr_lbl 3509254 `"Cajati"', add
label define br10a_muni5yr_lbl 3509304 `"Cajobi"', add
label define br10a_muni5yr_lbl 3509403 `"Cajuru"', add
label define br10a_muni5yr_lbl 3509452 `"Campina do Monte Alegre"', add
label define br10a_muni5yr_lbl 3509502 `"Campinas"', add
label define br10a_muni5yr_lbl 3509601 `"Campo Limpo Paulista"', add
label define br10a_muni5yr_lbl 3509700 `"Campos do Jord�o"', add
label define br10a_muni5yr_lbl 3509809 `"Campos Novos Paulista"', add
label define br10a_muni5yr_lbl 3509908 `"Canan�ia"', add
label define br10a_muni5yr_lbl 3509957 `"Canas"', add
label define br10a_muni5yr_lbl 3510005 `"C�ndido Mota"', add
label define br10a_muni5yr_lbl 3510104 `"C�ndido Rodrigues"', add
label define br10a_muni5yr_lbl 3510153 `"Canitar"', add
label define br10a_muni5yr_lbl 3510203 `"Cap�o Bonito"', add
label define br10a_muni5yr_lbl 3510302 `"Capela do Alto"', add
label define br10a_muni5yr_lbl 3510401 `"Capivari"', add
label define br10a_muni5yr_lbl 3510500 `"Caraguatatuba"', add
label define br10a_muni5yr_lbl 3510609 `"Carapicu�ba"', add
label define br10a_muni5yr_lbl 3510708 `"Cardoso"', add
label define br10a_muni5yr_lbl 3510807 `"Casa Branca"', add
label define br10a_muni5yr_lbl 3510906 `"C�ssia dos Coqueiros"', add
label define br10a_muni5yr_lbl 3511003 `"Castilho"', add
label define br10a_muni5yr_lbl 3511102 `"Catanduva"', add
label define br10a_muni5yr_lbl 3511201 `"Catigu�"', add
label define br10a_muni5yr_lbl 3511300 `"Cedral"', add
label define br10a_muni5yr_lbl 3511409 `"Cerqueira C�sar"', add
label define br10a_muni5yr_lbl 3511508 `"Cerquilho"', add
label define br10a_muni5yr_lbl 3511607 `"Ces�rio Lange"', add
label define br10a_muni5yr_lbl 3511706 `"Charqueada"', add
label define br10a_muni5yr_lbl 3511904 `"Clementina"', add
label define br10a_muni5yr_lbl 3512001 `"Colina"', add
label define br10a_muni5yr_lbl 3512100 `"Col�mbia"', add
label define br10a_muni5yr_lbl 3512209 `"Conchal"', add
label define br10a_muni5yr_lbl 3512308 `"Conchas"', add
label define br10a_muni5yr_lbl 3512407 `"Cordeir�polis"', add
label define br10a_muni5yr_lbl 3512506 `"Coroados"', add
label define br10a_muni5yr_lbl 3512605 `"Coronel Macedo"', add
label define br10a_muni5yr_lbl 3512704 `"Corumbata�"', add
label define br10a_muni5yr_lbl 3512803 `"Cosm�polis"', add
label define br10a_muni5yr_lbl 3512902 `"Cosmorama"', add
label define br10a_muni5yr_lbl 3513009 `"Cotia"', add
label define br10a_muni5yr_lbl 3513108 `"Cravinhos"', add
label define br10a_muni5yr_lbl 3513207 `"Cristais Paulista"', add
label define br10a_muni5yr_lbl 3513306 `"Cruz�lia"', add
label define br10a_muni5yr_lbl 3513405 `"Cruzeiro"', add
label define br10a_muni5yr_lbl 3513504 `"Cubat�o"', add
label define br10a_muni5yr_lbl 3513603 `"Cunha"', add
label define br10a_muni5yr_lbl 3513702 `"Descalvado"', add
label define br10a_muni5yr_lbl 3513801 `"Diadema"', add
label define br10a_muni5yr_lbl 3513850 `"Dirce Reis"', add
label define br10a_muni5yr_lbl 3513900 `"Divinol�ndia"', add
label define br10a_muni5yr_lbl 3514007 `"Dobrada"', add
label define br10a_muni5yr_lbl 3514106 `"Dois C�rregos"', add
label define br10a_muni5yr_lbl 3514205 `"Dolcin�polis"', add
label define br10a_muni5yr_lbl 3514304 `"Dourado"', add
label define br10a_muni5yr_lbl 3514403 `"Dracena"', add
label define br10a_muni5yr_lbl 3514502 `"Duartina"', add
label define br10a_muni5yr_lbl 3514601 `"Dumont"', add
label define br10a_muni5yr_lbl 3514700 `"Echapor�"', add
label define br10a_muni5yr_lbl 3514809 `"Eldorado"', add
label define br10a_muni5yr_lbl 3514908 `"Elias Fausto"', add
label define br10a_muni5yr_lbl 3514924 `"Elisi�rio"', add
label define br10a_muni5yr_lbl 3514957 `"Emba�ba"', add
label define br10a_muni5yr_lbl 3515004 `"Embu"', add
label define br10a_muni5yr_lbl 3515103 `"Embu-Gua�u"', add
label define br10a_muni5yr_lbl 3515129 `"Emilian�polis"', add
label define br10a_muni5yr_lbl 3515152 `"Engenheiro Coelho"', add
label define br10a_muni5yr_lbl 3515186 `"Esp�rito Santo do Pinhal"', add
label define br10a_muni5yr_lbl 3515194 `"Esp�rito Santo do Turvo"', add
label define br10a_muni5yr_lbl 3515202 `"Estrela d'Oeste"', add
label define br10a_muni5yr_lbl 3515301 `"Estrela do Norte"', add
label define br10a_muni5yr_lbl 3515350 `"Euclides da Cunha Paulista"', add
label define br10a_muni5yr_lbl 3515400 `"Fartura"', add
label define br10a_muni5yr_lbl 3515509 `"Fernand�polis"', add
label define br10a_muni5yr_lbl 3515608 `"Fernando Prestes"', add
label define br10a_muni5yr_lbl 3515657 `"Fern�o"', add
label define br10a_muni5yr_lbl 3515707 `"Ferraz de Vasconcelos"', add
label define br10a_muni5yr_lbl 3515806 `"Flora Rica"', add
label define br10a_muni5yr_lbl 3515905 `"Floreal"', add
label define br10a_muni5yr_lbl 3516002 `"Fl�rida Paulista"', add
label define br10a_muni5yr_lbl 3516101 `"Flor�nia"', add
label define br10a_muni5yr_lbl 3516200 `"Franca"', add
label define br10a_muni5yr_lbl 3516309 `"Francisco Morato"', add
label define br10a_muni5yr_lbl 3516408 `"Franco da Rocha"', add
label define br10a_muni5yr_lbl 3516507 `"Gabriel Monteiro"', add
label define br10a_muni5yr_lbl 3516606 `"G�lia"', add
label define br10a_muni5yr_lbl 3516705 `"Gar�a"', add
label define br10a_muni5yr_lbl 3516804 `"Gast�o Vidigal"', add
label define br10a_muni5yr_lbl 3516853 `"Gavi�o Peixoto"', add
label define br10a_muni5yr_lbl 3516903 `"General Salgado"', add
label define br10a_muni5yr_lbl 3517000 `"Getulina"', add
label define br10a_muni5yr_lbl 3517109 `"Glic�rio"', add
label define br10a_muni5yr_lbl 3517208 `"Guai�ara"', add
label define br10a_muni5yr_lbl 3517307 `"Guaimb�"', add
label define br10a_muni5yr_lbl 3517406 `"Gua�ra"', add
label define br10a_muni5yr_lbl 3517505 `"Guapia�u"', add
label define br10a_muni5yr_lbl 3517604 `"Guapiara"', add
label define br10a_muni5yr_lbl 3517703 `"Guar�"', add
label define br10a_muni5yr_lbl 3517802 `"Guara�a�"', add
label define br10a_muni5yr_lbl 3517901 `"Guaraci"', add
label define br10a_muni5yr_lbl 3518008 `"Guarani d'Oeste"', add
label define br10a_muni5yr_lbl 3518107 `"Guarant�"', add
label define br10a_muni5yr_lbl 3518206 `"Guararapes"', add
label define br10a_muni5yr_lbl 3518305 `"Guararema"', add
label define br10a_muni5yr_lbl 3518404 `"Guaratinguet�"', add
label define br10a_muni5yr_lbl 3518503 `"Guare�"', add
label define br10a_muni5yr_lbl 3518602 `"Guariba"', add
label define br10a_muni5yr_lbl 3518701 `"Guaruj�"', add
label define br10a_muni5yr_lbl 3518800 `"Guarulhos"', add
label define br10a_muni5yr_lbl 3518859 `"Guatapar�"', add
label define br10a_muni5yr_lbl 3518909 `"Guzol�ndia"', add
label define br10a_muni5yr_lbl 3519006 `"Hercul�ndia"', add
label define br10a_muni5yr_lbl 3519055 `"Holambra"', add
label define br10a_muni5yr_lbl 3519071 `"Hortol�ndia"', add
label define br10a_muni5yr_lbl 3519105 `"Iacanga"', add
label define br10a_muni5yr_lbl 3519204 `"Iacri"', add
label define br10a_muni5yr_lbl 3519253 `"Iaras"', add
label define br10a_muni5yr_lbl 3519303 `"Ibat�"', add
label define br10a_muni5yr_lbl 3519402 `"Ibir�"', add
label define br10a_muni5yr_lbl 3519501 `"Ibirarema"', add
label define br10a_muni5yr_lbl 3519600 `"Ibitinga"', add
label define br10a_muni5yr_lbl 3519709 `"Ibi�na"', add
label define br10a_muni5yr_lbl 3519808 `"Ic�m"', add
label define br10a_muni5yr_lbl 3519907 `"Iep�"', add
label define br10a_muni5yr_lbl 3520004 `"Igara�u do Tiet�"', add
label define br10a_muni5yr_lbl 3520103 `"Igarapava"', add
label define br10a_muni5yr_lbl 3520202 `"Igarat�"', add
label define br10a_muni5yr_lbl 3520301 `"Iguape"', add
label define br10a_muni5yr_lbl 3520400 `"Ilhabela"', add
label define br10a_muni5yr_lbl 3520426 `"Ilha Comprida"', add
label define br10a_muni5yr_lbl 3520442 `"Ilha Solteira"', add
label define br10a_muni5yr_lbl 3520509 `"Indaiatuba"', add
label define br10a_muni5yr_lbl 3520608 `"Indiana"', add
label define br10a_muni5yr_lbl 3520707 `"Indiapor�"', add
label define br10a_muni5yr_lbl 3520806 `"In�bia Paulista"', add
label define br10a_muni5yr_lbl 3520905 `"Ipaussu"', add
label define br10a_muni5yr_lbl 3521002 `"Iper�"', add
label define br10a_muni5yr_lbl 3521101 `"Ipe�na"', add
label define br10a_muni5yr_lbl 3521150 `"Ipigu�"', add
label define br10a_muni5yr_lbl 3521200 `"Iporanga"', add
label define br10a_muni5yr_lbl 3521309 `"Ipu�"', add
label define br10a_muni5yr_lbl 3521408 `"Iracem�polis"', add
label define br10a_muni5yr_lbl 3521507 `"Irapu�"', add
label define br10a_muni5yr_lbl 3521606 `"Irapuru"', add
label define br10a_muni5yr_lbl 3521705 `"Itaber�"', add
label define br10a_muni5yr_lbl 3521804 `"Ita�"', add
label define br10a_muni5yr_lbl 3521903 `"Itajobi"', add
label define br10a_muni5yr_lbl 3522000 `"Itaju"', add
label define br10a_muni5yr_lbl 3522109 `"Itanha�m"', add
label define br10a_muni5yr_lbl 3522158 `"Ita�ca"', add
label define br10a_muni5yr_lbl 3522208 `"Itapecerica da Serra"', add
label define br10a_muni5yr_lbl 3522307 `"Itapetininga"', add
label define br10a_muni5yr_lbl 3522406 `"Itapeva"', add
label define br10a_muni5yr_lbl 3522505 `"Itapevi"', add
label define br10a_muni5yr_lbl 3522604 `"Itapira"', add
label define br10a_muni5yr_lbl 3522653 `"Itapirapu� Paulista"', add
label define br10a_muni5yr_lbl 3522703 `"It�polis"', add
label define br10a_muni5yr_lbl 3522802 `"Itaporanga"', add
label define br10a_muni5yr_lbl 3522901 `"Itapu�"', add
label define br10a_muni5yr_lbl 3523008 `"Itapura"', add
label define br10a_muni5yr_lbl 3523107 `"Itaquaquecetuba"', add
label define br10a_muni5yr_lbl 3523206 `"Itarar�"', add
label define br10a_muni5yr_lbl 3523305 `"Itariri"', add
label define br10a_muni5yr_lbl 3523404 `"Itatiba"', add
label define br10a_muni5yr_lbl 3523503 `"Itatinga"', add
label define br10a_muni5yr_lbl 3523602 `"Itirapina"', add
label define br10a_muni5yr_lbl 3523701 `"Itirapu�"', add
label define br10a_muni5yr_lbl 3523800 `"Itobi"', add
label define br10a_muni5yr_lbl 3523909 `"Itu"', add
label define br10a_muni5yr_lbl 3524006 `"Itupeva"', add
label define br10a_muni5yr_lbl 3524105 `"Ituverava"', add
label define br10a_muni5yr_lbl 3524204 `"Jaborandi"', add
label define br10a_muni5yr_lbl 3524303 `"Jaboticabal"', add
label define br10a_muni5yr_lbl 3524402 `"Jacare�"', add
label define br10a_muni5yr_lbl 3524501 `"Jaci"', add
label define br10a_muni5yr_lbl 3524600 `"Jacupiranga"', add
label define br10a_muni5yr_lbl 3524709 `"Jaguari�na"', add
label define br10a_muni5yr_lbl 3524808 `"Jales"', add
label define br10a_muni5yr_lbl 3524907 `"Jambeiro"', add
label define br10a_muni5yr_lbl 3525003 `"Jandira"', add
label define br10a_muni5yr_lbl 3525102 `"Jardin�polis"', add
label define br10a_muni5yr_lbl 3525201 `"Jarinu"', add
label define br10a_muni5yr_lbl 3525300 `"Ja�"', add
label define br10a_muni5yr_lbl 3525409 `"Jeriquara"', add
label define br10a_muni5yr_lbl 3525508 `"Joan�polis"', add
label define br10a_muni5yr_lbl 3525607 `"Jo�o Ramalho"', add
label define br10a_muni5yr_lbl 3525706 `"Jos� Bonif�cio"', add
label define br10a_muni5yr_lbl 3525805 `"J�lio Mesquita"', add
label define br10a_muni5yr_lbl 3525854 `"Jumirim"', add
label define br10a_muni5yr_lbl 3525904 `"Jundia�"', add
label define br10a_muni5yr_lbl 3526001 `"Junqueir�polis"', add
label define br10a_muni5yr_lbl 3526100 `"Juqui�"', add
label define br10a_muni5yr_lbl 3526209 `"Juquitiba"', add
label define br10a_muni5yr_lbl 3526308 `"Lagoinha"', add
label define br10a_muni5yr_lbl 3526407 `"Laranjal Paulista"', add
label define br10a_muni5yr_lbl 3526506 `"Lav�nia"', add
label define br10a_muni5yr_lbl 3526605 `"Lavrinhas"', add
label define br10a_muni5yr_lbl 3526704 `"Leme"', add
label define br10a_muni5yr_lbl 3526803 `"Len��is Paulista"', add
label define br10a_muni5yr_lbl 3526902 `"Limeira"', add
label define br10a_muni5yr_lbl 3527009 `"Lind�ia"', add
label define br10a_muni5yr_lbl 3527108 `"Lins"', add
label define br10a_muni5yr_lbl 3527207 `"Lorena"', add
label define br10a_muni5yr_lbl 3527256 `"Lourdes"', add
label define br10a_muni5yr_lbl 3527306 `"Louveira"', add
label define br10a_muni5yr_lbl 3527405 `"Luc�lia"', add
label define br10a_muni5yr_lbl 3527504 `"Lucian�polis"', add
label define br10a_muni5yr_lbl 3527603 `"Lu�s Ant�nio"', add
label define br10a_muni5yr_lbl 3527702 `"Luizi�nia"', add
label define br10a_muni5yr_lbl 3527801 `"Lup�rcio"', add
label define br10a_muni5yr_lbl 3527900 `"Lut�cia"', add
label define br10a_muni5yr_lbl 3528007 `"Macatuba"', add
label define br10a_muni5yr_lbl 3528106 `"Macaubal"', add
label define br10a_muni5yr_lbl 3528205 `"Maced�nia"', add
label define br10a_muni5yr_lbl 3528304 `"Magda"', add
label define br10a_muni5yr_lbl 3528403 `"Mairinque"', add
label define br10a_muni5yr_lbl 3528502 `"Mairipor�"', add
label define br10a_muni5yr_lbl 3528601 `"Manduri"', add
label define br10a_muni5yr_lbl 3528700 `"Marab� Paulista"', add
label define br10a_muni5yr_lbl 3528809 `"Maraca�"', add
label define br10a_muni5yr_lbl 3528858 `"Marapoama"', add
label define br10a_muni5yr_lbl 3528908 `"Mari�polis"', add
label define br10a_muni5yr_lbl 3529005 `"Mar�lia"', add
label define br10a_muni5yr_lbl 3529104 `"Marin�polis"', add
label define br10a_muni5yr_lbl 3529203 `"Martin�polis"', add
label define br10a_muni5yr_lbl 3529302 `"Mat�o"', add
label define br10a_muni5yr_lbl 3529401 `"Mau�"', add
label define br10a_muni5yr_lbl 3529500 `"Mendon�a"', add
label define br10a_muni5yr_lbl 3529609 `"Meridiano"', add
label define br10a_muni5yr_lbl 3529658 `"Mes�polis"', add
label define br10a_muni5yr_lbl 3529708 `"Miguel�polis"', add
label define br10a_muni5yr_lbl 3529807 `"Mineiros do Tiet�"', add
label define br10a_muni5yr_lbl 3529906 `"Miracatu"', add
label define br10a_muni5yr_lbl 3530003 `"Mira Estrela"', add
label define br10a_muni5yr_lbl 3530102 `"Mirand�polis"', add
label define br10a_muni5yr_lbl 3530201 `"Mirante do Paranapanema"', add
label define br10a_muni5yr_lbl 3530300 `"Mirassol"', add
label define br10a_muni5yr_lbl 3530409 `"Mirassol�ndia"', add
label define br10a_muni5yr_lbl 3530508 `"Mococa"', add
label define br10a_muni5yr_lbl 3530607 `"Mogi das Cruzes"', add
label define br10a_muni5yr_lbl 3530706 `"Mogi Gua�u"', add
label define br10a_muni5yr_lbl 3530805 `"Moji Mirim"', add
label define br10a_muni5yr_lbl 3530904 `"Mombuca"', add
label define br10a_muni5yr_lbl 3531001 `"Mon��es"', add
label define br10a_muni5yr_lbl 3531100 `"Mongagu�"', add
label define br10a_muni5yr_lbl 3531209 `"Monte Alegre do Sul"', add
label define br10a_muni5yr_lbl 3531308 `"Monte Alto"', add
label define br10a_muni5yr_lbl 3531407 `"Monte Apraz�vel"', add
label define br10a_muni5yr_lbl 3531506 `"Monte Azul Paulista"', add
label define br10a_muni5yr_lbl 3531605 `"Monte Castelo"', add
label define br10a_muni5yr_lbl 3531704 `"Monteiro Lobato"', add
label define br10a_muni5yr_lbl 3531803 `"Monte Mor"', add
label define br10a_muni5yr_lbl 3531902 `"Morro Agudo"', add
label define br10a_muni5yr_lbl 3532009 `"Morungaba"', add
label define br10a_muni5yr_lbl 3532058 `"Motuca"', add
label define br10a_muni5yr_lbl 3532108 `"Murutinga do Sul"', add
label define br10a_muni5yr_lbl 3532157 `"Nantes"', add
label define br10a_muni5yr_lbl 3532207 `"Narandiba"', add
label define br10a_muni5yr_lbl 3532306 `"Natividade da Serra"', add
label define br10a_muni5yr_lbl 3532405 `"Nazar� Paulista"', add
label define br10a_muni5yr_lbl 3532504 `"Neves Paulista"', add
label define br10a_muni5yr_lbl 3532603 `"Nhandeara"', add
label define br10a_muni5yr_lbl 3532702 `"Nipo�"', add
label define br10a_muni5yr_lbl 3532801 `"Nova Alian�a"', add
label define br10a_muni5yr_lbl 3532827 `"Nova Campina"', add
label define br10a_muni5yr_lbl 3532843 `"Nova Cana� Paulista"', add
label define br10a_muni5yr_lbl 3532868 `"Nova Castilho"', add
label define br10a_muni5yr_lbl 3532900 `"Nova Europa"', add
label define br10a_muni5yr_lbl 3533007 `"Nova Granada"', add
label define br10a_muni5yr_lbl 3533106 `"Nova Guataporanga"', add
label define br10a_muni5yr_lbl 3533205 `"Nova Independ�ncia"', add
label define br10a_muni5yr_lbl 3533254 `"Novais"', add
label define br10a_muni5yr_lbl 3533304 `"Nova Luzit�nia"', add
label define br10a_muni5yr_lbl 3533403 `"Nova Odessa"', add
label define br10a_muni5yr_lbl 3533502 `"Novo Horizonte"', add
label define br10a_muni5yr_lbl 3533601 `"Nuporanga"', add
label define br10a_muni5yr_lbl 3533700 `"Ocau�u"', add
label define br10a_muni5yr_lbl 3533809 `"�leo"', add
label define br10a_muni5yr_lbl 3533908 `"Ol�mpia"', add
label define br10a_muni5yr_lbl 3534005 `"Onda Verde"', add
label define br10a_muni5yr_lbl 3534104 `"Oriente"', add
label define br10a_muni5yr_lbl 3534203 `"Orindi�va"', add
label define br10a_muni5yr_lbl 3534302 `"Orl�ndia"', add
label define br10a_muni5yr_lbl 3534401 `"Osasco"', add
label define br10a_muni5yr_lbl 3534500 `"Oscar Bressane"', add
label define br10a_muni5yr_lbl 3534609 `"Osvaldo Cruz"', add
label define br10a_muni5yr_lbl 3534708 `"Ourinhos"', add
label define br10a_muni5yr_lbl 3534757 `"Ouroeste"', add
label define br10a_muni5yr_lbl 3534807 `"Ouro Verde"', add
label define br10a_muni5yr_lbl 3534906 `"Pacaembu"', add
label define br10a_muni5yr_lbl 3535002 `"Palestina"', add
label define br10a_muni5yr_lbl 3535101 `"Palmares Paulista"', add
label define br10a_muni5yr_lbl 3535200 `"Palmeira d'Oeste"', add
label define br10a_muni5yr_lbl 3535309 `"Palmital"', add
label define br10a_muni5yr_lbl 3535408 `"Panorama"', add
label define br10a_muni5yr_lbl 3535507 `"Paragua�u Paulista"', add
label define br10a_muni5yr_lbl 3535606 `"Paraibuna"', add
label define br10a_muni5yr_lbl 3535705 `"Para�so"', add
label define br10a_muni5yr_lbl 3535804 `"Paranapanema"', add
label define br10a_muni5yr_lbl 3535903 `"Paranapu�"', add
label define br10a_muni5yr_lbl 3536000 `"Parapu�"', add
label define br10a_muni5yr_lbl 3536109 `"Pardinho"', add
label define br10a_muni5yr_lbl 3536208 `"Pariquera-A�u"', add
label define br10a_muni5yr_lbl 3536257 `"Parisi"', add
label define br10a_muni5yr_lbl 3536307 `"Patroc�nio Paulista"', add
label define br10a_muni5yr_lbl 3536406 `"Paulic�ia"', add
label define br10a_muni5yr_lbl 3536505 `"Paul�nia"', add
label define br10a_muni5yr_lbl 3536570 `"Paulist�nia"', add
label define br10a_muni5yr_lbl 3536604 `"Paulo de Faria"', add
label define br10a_muni5yr_lbl 3536703 `"Pederneiras"', add
label define br10a_muni5yr_lbl 3536802 `"Pedra Bela"', add
label define br10a_muni5yr_lbl 3536901 `"Pedran�polis"', add
label define br10a_muni5yr_lbl 3537008 `"Pedregulho"', add
label define br10a_muni5yr_lbl 3537107 `"Pedreira"', add
label define br10a_muni5yr_lbl 3537156 `"Pedrinhas Paulista"', add
label define br10a_muni5yr_lbl 3537206 `"Pedro de Toledo"', add
label define br10a_muni5yr_lbl 3537305 `"Pen�polis"', add
label define br10a_muni5yr_lbl 3537404 `"Pereira Barreto"', add
label define br10a_muni5yr_lbl 3537503 `"Pereiras"', add
label define br10a_muni5yr_lbl 3537602 `"Peru�be"', add
label define br10a_muni5yr_lbl 3537701 `"Piacatu"', add
label define br10a_muni5yr_lbl 3537800 `"Piedade"', add
label define br10a_muni5yr_lbl 3537909 `"Pilar do Sul"', add
label define br10a_muni5yr_lbl 3538006 `"Pindamonhangaba"', add
label define br10a_muni5yr_lbl 3538105 `"Pindorama"', add
label define br10a_muni5yr_lbl 3538204 `"Pinhalzinho"', add
label define br10a_muni5yr_lbl 3538303 `"Piquerobi"', add
label define br10a_muni5yr_lbl 3538501 `"Piquete"', add
label define br10a_muni5yr_lbl 3538600 `"Piracaia"', add
label define br10a_muni5yr_lbl 3538709 `"Piracicaba"', add
label define br10a_muni5yr_lbl 3538808 `"Piraju"', add
label define br10a_muni5yr_lbl 3538907 `"Piraju�"', add
label define br10a_muni5yr_lbl 3539004 `"Pirangi"', add
label define br10a_muni5yr_lbl 3539103 `"Pirapora do Bom Jesus"', add
label define br10a_muni5yr_lbl 3539202 `"Pirapozinho"', add
label define br10a_muni5yr_lbl 3539301 `"Pirassununga"', add
label define br10a_muni5yr_lbl 3539400 `"Piratininga"', add
label define br10a_muni5yr_lbl 3539509 `"Pitangueiras"', add
label define br10a_muni5yr_lbl 3539608 `"Planalto"', add
label define br10a_muni5yr_lbl 3539707 `"Platina"', add
label define br10a_muni5yr_lbl 3539806 `"Po�"', add
label define br10a_muni5yr_lbl 3539905 `"Poloni"', add
label define br10a_muni5yr_lbl 3540002 `"Pomp�ia"', add
label define br10a_muni5yr_lbl 3540101 `"Ponga�"', add
label define br10a_muni5yr_lbl 3540200 `"Pontal"', add
label define br10a_muni5yr_lbl 3540259 `"Pontalinda"', add
label define br10a_muni5yr_lbl 3540309 `"Pontes Gestal"', add
label define br10a_muni5yr_lbl 3540408 `"Populina"', add
label define br10a_muni5yr_lbl 3540507 `"Porangaba"', add
label define br10a_muni5yr_lbl 3540606 `"Porto Feliz"', add
label define br10a_muni5yr_lbl 3540705 `"Porto Ferreira"', add
label define br10a_muni5yr_lbl 3540754 `"Potim"', add
label define br10a_muni5yr_lbl 3540804 `"Potirendaba"', add
label define br10a_muni5yr_lbl 3540853 `"Pracinha"', add
label define br10a_muni5yr_lbl 3540903 `"Prad�polis"', add
label define br10a_muni5yr_lbl 3541000 `"Praia Grande"', add
label define br10a_muni5yr_lbl 3541059 `"Prat�nia"', add
label define br10a_muni5yr_lbl 3541109 `"Presidente Alves"', add
label define br10a_muni5yr_lbl 3541208 `"Presidente Bernardes"', add
label define br10a_muni5yr_lbl 3541307 `"Presidente Epit�cio"', add
label define br10a_muni5yr_lbl 3541406 `"Presidente Prudente"', add
label define br10a_muni5yr_lbl 3541505 `"Presidente Venceslau"', add
label define br10a_muni5yr_lbl 3541604 `"Promiss�o"', add
label define br10a_muni5yr_lbl 3541653 `"Quadra"', add
label define br10a_muni5yr_lbl 3541703 `"Quat�"', add
label define br10a_muni5yr_lbl 3541802 `"Queiroz"', add
label define br10a_muni5yr_lbl 3541901 `"Queluz"', add
label define br10a_muni5yr_lbl 3542008 `"Quintana"', add
label define br10a_muni5yr_lbl 3542107 `"Rafard"', add
label define br10a_muni5yr_lbl 3542206 `"Rancharia"', add
label define br10a_muni5yr_lbl 3542305 `"Reden��o da Serra"', add
label define br10a_muni5yr_lbl 3542404 `"Regente Feij�"', add
label define br10a_muni5yr_lbl 3542503 `"Regin�polis"', add
label define br10a_muni5yr_lbl 3542602 `"Registro"', add
label define br10a_muni5yr_lbl 3542701 `"Restinga"', add
label define br10a_muni5yr_lbl 3542800 `"Ribeira"', add
label define br10a_muni5yr_lbl 3542909 `"Ribeir�o Bonito"', add
label define br10a_muni5yr_lbl 3543006 `"Ribeir�o Branco"', add
label define br10a_muni5yr_lbl 3543105 `"Ribeir�o Corrente"', add
label define br10a_muni5yr_lbl 3543204 `"Ribeir�o do Sul"', add
label define br10a_muni5yr_lbl 3543238 `"Ribeir�o dos �ndios"', add
label define br10a_muni5yr_lbl 3543253 `"Ribeir�o Grande"', add
label define br10a_muni5yr_lbl 3543303 `"Ribeir�o Pires"', add
label define br10a_muni5yr_lbl 3543402 `"Ribeir�o Preto"', add
label define br10a_muni5yr_lbl 3543501 `"Riversul"', add
label define br10a_muni5yr_lbl 3543600 `"Rifaina"', add
label define br10a_muni5yr_lbl 3543709 `"Rinc�o"', add
label define br10a_muni5yr_lbl 3543808 `"Rin�polis"', add
label define br10a_muni5yr_lbl 3543907 `"Rio Claro"', add
label define br10a_muni5yr_lbl 3544004 `"Rio das Pedras"', add
label define br10a_muni5yr_lbl 3544103 `"Rio Grande da Serra"', add
label define br10a_muni5yr_lbl 3544202 `"Riol�ndia"', add
label define br10a_muni5yr_lbl 3544251 `"Rosana"', add
label define br10a_muni5yr_lbl 3544301 `"Roseira"', add
label define br10a_muni5yr_lbl 3544400 `"Rubi�cea"', add
label define br10a_muni5yr_lbl 3544509 `"Rubin�ia"', add
label define br10a_muni5yr_lbl 3544608 `"Sabino"', add
label define br10a_muni5yr_lbl 3544707 `"Sagres"', add
label define br10a_muni5yr_lbl 3544806 `"Sales"', add
label define br10a_muni5yr_lbl 3544905 `"Sales Oliveira"', add
label define br10a_muni5yr_lbl 3545001 `"Sales�polis"', add
label define br10a_muni5yr_lbl 3545100 `"Salmour�o"', add
label define br10a_muni5yr_lbl 3545159 `"Saltinho"', add
label define br10a_muni5yr_lbl 3545209 `"Salto"', add
label define br10a_muni5yr_lbl 3545308 `"Salto de Pirapora"', add
label define br10a_muni5yr_lbl 3545407 `"Salto Grande"', add
label define br10a_muni5yr_lbl 3545506 `"Sandovalina"', add
label define br10a_muni5yr_lbl 3545605 `"Santa Ad�lia"', add
label define br10a_muni5yr_lbl 3545704 `"Santa Albertina"', add
label define br10a_muni5yr_lbl 3545803 `"Santa B�rbara d'Oeste"', add
label define br10a_muni5yr_lbl 3546009 `"Santa Branca"', add
label define br10a_muni5yr_lbl 3546108 `"Santa Clara d'Oeste"', add
label define br10a_muni5yr_lbl 3546207 `"Santa Cruz da Concei��o"', add
label define br10a_muni5yr_lbl 3546256 `"Santa Cruz da Esperan�a"', add
label define br10a_muni5yr_lbl 3546306 `"Santa Cruz das Palmeiras"', add
label define br10a_muni5yr_lbl 3546405 `"Santa Cruz do Rio Pardo"', add
label define br10a_muni5yr_lbl 3546504 `"Santa Ernestina"', add
label define br10a_muni5yr_lbl 3546603 `"Santa F� do Sul"', add
label define br10a_muni5yr_lbl 3546702 `"Santa Gertrudes"', add
label define br10a_muni5yr_lbl 3546801 `"Santa Isabel"', add
label define br10a_muni5yr_lbl 3546900 `"Santa L�cia"', add
label define br10a_muni5yr_lbl 3547007 `"Santa Maria da Serra"', add
label define br10a_muni5yr_lbl 3547106 `"Santa Mercedes"', add
label define br10a_muni5yr_lbl 3547205 `"Santana da Ponte Pensa"', add
label define br10a_muni5yr_lbl 3547304 `"Santana de Parna�ba"', add
label define br10a_muni5yr_lbl 3547403 `"Santa Rita d'Oeste"', add
label define br10a_muni5yr_lbl 3547502 `"Santa Rita do Passa Quatro"', add
label define br10a_muni5yr_lbl 3547601 `"Santa Rosa de Viterbo"', add
label define br10a_muni5yr_lbl 3547650 `"Santa Salete"', add
label define br10a_muni5yr_lbl 3547700 `"Santo Anast�cio"', add
label define br10a_muni5yr_lbl 3547809 `"Santo Andr�"', add
label define br10a_muni5yr_lbl 3547908 `"Santo Ant�nio da Alegria"', add
label define br10a_muni5yr_lbl 3548005 `"Santo Ant�nio de Posse"', add
label define br10a_muni5yr_lbl 3548054 `"Santo Ant�nio do Aracangu�"', add
label define br10a_muni5yr_lbl 3548104 `"Santo Ant�nio do Jardim"', add
label define br10a_muni5yr_lbl 3548203 `"Santo Ant�nio do Pinhal"', add
label define br10a_muni5yr_lbl 3548302 `"Santo Expedito"', add
label define br10a_muni5yr_lbl 3548401 `"Sant�polis do Aguape�"', add
label define br10a_muni5yr_lbl 3548500 `"Santos"', add
label define br10a_muni5yr_lbl 3548609 `"S�o Bento do Sapuca�"', add
label define br10a_muni5yr_lbl 3548708 `"S�o Bernardo do Campo"', add
label define br10a_muni5yr_lbl 3548807 `"S�o Caetano do Sul"', add
label define br10a_muni5yr_lbl 3548906 `"S�o Carlos"', add
label define br10a_muni5yr_lbl 3549003 `"S�o Francisco"', add
label define br10a_muni5yr_lbl 3549102 `"S�o Jo�o da Boa Vista"', add
label define br10a_muni5yr_lbl 3549201 `"S�o Jo�o das Duas Pontes"', add
label define br10a_muni5yr_lbl 3549250 `"S�o Jo�o de Iracema"', add
label define br10a_muni5yr_lbl 3549300 `"S�o Jo�o do Pau d'Alho"', add
label define br10a_muni5yr_lbl 3549409 `"S�o Joaquim da Barra"', add
label define br10a_muni5yr_lbl 3549508 `"S�o Jos� da Bela Vista"', add
label define br10a_muni5yr_lbl 3549607 `"S�o Jos� do Barreiro"', add
label define br10a_muni5yr_lbl 3549706 `"S�o Jos� do Rio Pardo"', add
label define br10a_muni5yr_lbl 3549805 `"S�o Jos� do Rio Preto"', add
label define br10a_muni5yr_lbl 3549904 `"S�o Jos� dos Campos"', add
label define br10a_muni5yr_lbl 3549953 `"S�o Louren�o da Serra"', add
label define br10a_muni5yr_lbl 3550001 `"S�o Lu�s do Paraitinga"', add
label define br10a_muni5yr_lbl 3550100 `"S�o Manuel"', add
label define br10a_muni5yr_lbl 3550209 `"S�o Miguel Arcanjo"', add
label define br10a_muni5yr_lbl 3550308 `"S�o Paulo"', add
label define br10a_muni5yr_lbl 3550407 `"S�o Pedro"', add
label define br10a_muni5yr_lbl 3550506 `"S�o Pedro do Turvo"', add
label define br10a_muni5yr_lbl 3550605 `"S�o Roque"', add
label define br10a_muni5yr_lbl 3550704 `"S�o Sebasti�o"', add
label define br10a_muni5yr_lbl 3550803 `"S�o Sebasti�o da Grama"', add
label define br10a_muni5yr_lbl 3550902 `"S�o Sim�o"', add
label define br10a_muni5yr_lbl 3551009 `"S�o Vicente"', add
label define br10a_muni5yr_lbl 3551108 `"Sarapu�"', add
label define br10a_muni5yr_lbl 3551207 `"Sarutai�"', add
label define br10a_muni5yr_lbl 3551306 `"Sebastian�polis do Sul"', add
label define br10a_muni5yr_lbl 3551405 `"Serra Azul"', add
label define br10a_muni5yr_lbl 3551504 `"Serrana"', add
label define br10a_muni5yr_lbl 3551603 `"Serra Negra"', add
label define br10a_muni5yr_lbl 3551702 `"Sert�ozinho"', add
label define br10a_muni5yr_lbl 3551801 `"Sete Barras"', add
label define br10a_muni5yr_lbl 3551900 `"Sever�nia"', add
label define br10a_muni5yr_lbl 3552007 `"Silveiras"', add
label define br10a_muni5yr_lbl 3552106 `"Socorro"', add
label define br10a_muni5yr_lbl 3552205 `"Sorocaba"', add
label define br10a_muni5yr_lbl 3552304 `"Sud Mennucci"', add
label define br10a_muni5yr_lbl 3552403 `"Sumar�"', add
label define br10a_muni5yr_lbl 3552502 `"Suzano"', add
label define br10a_muni5yr_lbl 3552551 `"Suzan�polis"', add
label define br10a_muni5yr_lbl 3552601 `"Tabapu�"', add
label define br10a_muni5yr_lbl 3552700 `"Tabatinga"', add
label define br10a_muni5yr_lbl 3552809 `"Tabo�o da Serra"', add
label define br10a_muni5yr_lbl 3552908 `"Taciba"', add
label define br10a_muni5yr_lbl 3553005 `"Tagua�"', add
label define br10a_muni5yr_lbl 3553104 `"Taia�u"', add
label define br10a_muni5yr_lbl 3553203 `"Tai�va"', add
label define br10a_muni5yr_lbl 3553302 `"Tamba�"', add
label define br10a_muni5yr_lbl 3553401 `"Tanabi"', add
label define br10a_muni5yr_lbl 3553500 `"Tapira�"', add
label define br10a_muni5yr_lbl 3553609 `"Tapiratiba"', add
label define br10a_muni5yr_lbl 3553658 `"Taquaral"', add
label define br10a_muni5yr_lbl 3553708 `"Taquaritinga"', add
label define br10a_muni5yr_lbl 3553807 `"Taquarituba"', add
label define br10a_muni5yr_lbl 3553856 `"Taquariva�"', add
label define br10a_muni5yr_lbl 3553906 `"Tarabai"', add
label define br10a_muni5yr_lbl 3553955 `"Tarum�"', add
label define br10a_muni5yr_lbl 3554003 `"Tatu�"', add
label define br10a_muni5yr_lbl 3554102 `"Taubat�"', add
label define br10a_muni5yr_lbl 3554201 `"Tejup�"', add
label define br10a_muni5yr_lbl 3554300 `"Teodoro Sampaio"', add
label define br10a_muni5yr_lbl 3554409 `"Terra Roxa"', add
label define br10a_muni5yr_lbl 3554508 `"Tiet�"', add
label define br10a_muni5yr_lbl 3554607 `"Timburi"', add
label define br10a_muni5yr_lbl 3554656 `"Torre de Pedra"', add
label define br10a_muni5yr_lbl 3554706 `"Torrinha"', add
label define br10a_muni5yr_lbl 3554755 `"Trabiju"', add
label define br10a_muni5yr_lbl 3554805 `"Trememb�"', add
label define br10a_muni5yr_lbl 3554904 `"Tr�s Fronteiras"', add
label define br10a_muni5yr_lbl 3554953 `"Tuiuti"', add
label define br10a_muni5yr_lbl 3555000 `"Tup�"', add
label define br10a_muni5yr_lbl 3555109 `"Tupi Paulista"', add
label define br10a_muni5yr_lbl 3555208 `"Turi�ba"', add
label define br10a_muni5yr_lbl 3555307 `"Turmalina"', add
label define br10a_muni5yr_lbl 3555356 `"Ubarana"', add
label define br10a_muni5yr_lbl 3555406 `"Ubatuba"', add
label define br10a_muni5yr_lbl 3555505 `"Ubirajara"', add
label define br10a_muni5yr_lbl 3555604 `"Uchoa"', add
label define br10a_muni5yr_lbl 3555703 `"Uni�o Paulista"', add
label define br10a_muni5yr_lbl 3555802 `"Ur�nia"', add
label define br10a_muni5yr_lbl 3555901 `"Uru"', add
label define br10a_muni5yr_lbl 3556008 `"Urup�s"', add
label define br10a_muni5yr_lbl 3556107 `"Valentim Gentil"', add
label define br10a_muni5yr_lbl 3556206 `"Valinhos"', add
label define br10a_muni5yr_lbl 3556305 `"Valpara�so"', add
label define br10a_muni5yr_lbl 3556354 `"Vargem"', add
label define br10a_muni5yr_lbl 3556404 `"Vargem Grande do Sul"', add
label define br10a_muni5yr_lbl 3556453 `"Vargem Grande Paulista"', add
label define br10a_muni5yr_lbl 3556503 `"V�rzea Paulista"', add
label define br10a_muni5yr_lbl 3556602 `"Vera Cruz"', add
label define br10a_muni5yr_lbl 3556701 `"Vinhedo"', add
label define br10a_muni5yr_lbl 3556800 `"Viradouro"', add
label define br10a_muni5yr_lbl 3556909 `"Vista Alegre do Alto"', add
label define br10a_muni5yr_lbl 3556958 `"Vit�ria Brasil"', add
label define br10a_muni5yr_lbl 3557006 `"Votorantim"', add
label define br10a_muni5yr_lbl 3557105 `"Votuporanga"', add
label define br10a_muni5yr_lbl 3557154 `"Zacarias"', add
label define br10a_muni5yr_lbl 3557204 `"Chavantes"', add
label define br10a_muni5yr_lbl 3557303 `"Estiva Gerbi"', add
label define br10a_muni5yr_lbl 3599999 `"S�o Paulo, municipality unknown"', add
label define br10a_muni5yr_lbl 4100103 `"Abati�"', add
label define br10a_muni5yr_lbl 4100202 `"Adrian�polis"', add
label define br10a_muni5yr_lbl 4100301 `"Agudos do Sul"', add
label define br10a_muni5yr_lbl 4100400 `"Almirante Tamandar�"', add
label define br10a_muni5yr_lbl 4100459 `"Altamira do Paran�"', add
label define br10a_muni5yr_lbl 4100509 `"Alt�nia"', add
label define br10a_muni5yr_lbl 4100608 `"Alto Paran�"', add
label define br10a_muni5yr_lbl 4100707 `"Alto Piquiri"', add
label define br10a_muni5yr_lbl 4100806 `"Alvorada do Sul"', add
label define br10a_muni5yr_lbl 4100905 `"Amapor�"', add
label define br10a_muni5yr_lbl 4101002 `"Amp�re"', add
label define br10a_muni5yr_lbl 4101051 `"Anahy"', add
label define br10a_muni5yr_lbl 4101101 `"Andir�"', add
label define br10a_muni5yr_lbl 4101150 `"�ngulo"', add
label define br10a_muni5yr_lbl 4101200 `"Antonina"', add
label define br10a_muni5yr_lbl 4101309 `"Ant�nio Olinto"', add
label define br10a_muni5yr_lbl 4101408 `"Apucarana"', add
label define br10a_muni5yr_lbl 4101507 `"Arapongas"', add
label define br10a_muni5yr_lbl 4101606 `"Arapoti"', add
label define br10a_muni5yr_lbl 4101655 `"Arapu�"', add
label define br10a_muni5yr_lbl 4101705 `"Araruna"', add
label define br10a_muni5yr_lbl 4101804 `"Arauc�ria"', add
label define br10a_muni5yr_lbl 4101853 `"Ariranha do Iva�"', add
label define br10a_muni5yr_lbl 4101903 `"Assa�"', add
label define br10a_muni5yr_lbl 4102000 `"Assis Chateaubriand"', add
label define br10a_muni5yr_lbl 4102109 `"Astorga"', add
label define br10a_muni5yr_lbl 4102208 `"Atalaia"', add
label define br10a_muni5yr_lbl 4102307 `"Balsa Nova"', add
label define br10a_muni5yr_lbl 4102406 `"Bandeirantes"', add
label define br10a_muni5yr_lbl 4102505 `"Barbosa Ferraz"', add
label define br10a_muni5yr_lbl 4102604 `"Barrac�o"', add
label define br10a_muni5yr_lbl 4102703 `"Barra do Jacar�"', add
label define br10a_muni5yr_lbl 4102752 `"Bela Vista da Caroba"', add
label define br10a_muni5yr_lbl 4102802 `"Bela Vista do Para�so"', add
label define br10a_muni5yr_lbl 4102901 `"Bituruna"', add
label define br10a_muni5yr_lbl 4103008 `"Boa Esperan�a"', add
label define br10a_muni5yr_lbl 4103024 `"Boa Esperan�a do Igua�u"', add
label define br10a_muni5yr_lbl 4103040 `"Boa Ventura de S�o Roque"', add
label define br10a_muni5yr_lbl 4103057 `"Boa Vista da Aparecida"', add
label define br10a_muni5yr_lbl 4103107 `"Bocai�va do Sul"', add
label define br10a_muni5yr_lbl 4103156 `"Bom Jesus do Sul"', add
label define br10a_muni5yr_lbl 4103206 `"Bom Sucesso"', add
label define br10a_muni5yr_lbl 4103222 `"Bom Sucesso do Sul"', add
label define br10a_muni5yr_lbl 4103305 `"Borraz�polis"', add
label define br10a_muni5yr_lbl 4103354 `"Braganey"', add
label define br10a_muni5yr_lbl 4103370 `"Brasil�ndia do Sul"', add
label define br10a_muni5yr_lbl 4103404 `"Cafeara"', add
label define br10a_muni5yr_lbl 4103453 `"Cafel�ndia"', add
label define br10a_muni5yr_lbl 4103479 `"Cafezal do Sul"', add
label define br10a_muni5yr_lbl 4103503 `"Calif�rnia"', add
label define br10a_muni5yr_lbl 4103602 `"Cambar�"', add
label define br10a_muni5yr_lbl 4103701 `"Camb�"', add
label define br10a_muni5yr_lbl 4103800 `"Cambira"', add
label define br10a_muni5yr_lbl 4103909 `"Campina da Lagoa"', add
label define br10a_muni5yr_lbl 4103958 `"Campina do Sim�o"', add
label define br10a_muni5yr_lbl 4104006 `"Campina Grande do Sul"', add
label define br10a_muni5yr_lbl 4104055 `"Campo Bonito"', add
label define br10a_muni5yr_lbl 4104105 `"Campo do Tenente"', add
label define br10a_muni5yr_lbl 4104204 `"Campo Largo"', add
label define br10a_muni5yr_lbl 4104253 `"Campo Magro"', add
label define br10a_muni5yr_lbl 4104303 `"Campo Mour�o"', add
label define br10a_muni5yr_lbl 4104402 `"C�ndido de Abreu"', add
label define br10a_muni5yr_lbl 4104428 `"Cand�i"', add
label define br10a_muni5yr_lbl 4104451 `"Cantagalo"', add
label define br10a_muni5yr_lbl 4104501 `"Capanema"', add
label define br10a_muni5yr_lbl 4104600 `"Capit�o Le�nidas Marques"', add
label define br10a_muni5yr_lbl 4104659 `"Carambe�"', add
label define br10a_muni5yr_lbl 4104709 `"Carl�polis"', add
label define br10a_muni5yr_lbl 4104808 `"Cascavel"', add
label define br10a_muni5yr_lbl 4104907 `"Castro"', add
label define br10a_muni5yr_lbl 4105003 `"Catanduvas"', add
label define br10a_muni5yr_lbl 4105102 `"Centen�rio do Sul"', add
label define br10a_muni5yr_lbl 4105201 `"Cerro Azul"', add
label define br10a_muni5yr_lbl 4105300 `"C�u Azul"', add
label define br10a_muni5yr_lbl 4105409 `"Chopinzinho"', add
label define br10a_muni5yr_lbl 4105508 `"Cianorte"', add
label define br10a_muni5yr_lbl 4105607 `"Cidade Ga�cha"', add
label define br10a_muni5yr_lbl 4105706 `"Clevel�ndia"', add
label define br10a_muni5yr_lbl 4105805 `"Colombo"', add
label define br10a_muni5yr_lbl 4105904 `"Colorado"', add
label define br10a_muni5yr_lbl 4106001 `"Congonhinhas"', add
label define br10a_muni5yr_lbl 4106100 `"Conselheiro Mairinck"', add
label define br10a_muni5yr_lbl 4106209 `"Contenda"', add
label define br10a_muni5yr_lbl 4106308 `"Corb�lia"', add
label define br10a_muni5yr_lbl 4106407 `"Corn�lio Proc�pio"', add
label define br10a_muni5yr_lbl 4106456 `"Coronel Domingos Soares"', add
label define br10a_muni5yr_lbl 4106506 `"Coronel Vivida"', add
label define br10a_muni5yr_lbl 4106555 `"Corumbata� do Sul"', add
label define br10a_muni5yr_lbl 4106571 `"Cruzeiro do Igua�u"', add
label define br10a_muni5yr_lbl 4106605 `"Cruzeiro do Oeste"', add
label define br10a_muni5yr_lbl 4106704 `"Cruzeiro do Sul"', add
label define br10a_muni5yr_lbl 4106803 `"Cruz Machado"', add
label define br10a_muni5yr_lbl 4106852 `"Cruzmaltina"', add
label define br10a_muni5yr_lbl 4106902 `"Curitiba"', add
label define br10a_muni5yr_lbl 4107009 `"Curi�va"', add
label define br10a_muni5yr_lbl 4107108 `"Diamante do Norte"', add
label define br10a_muni5yr_lbl 4107124 `"Diamante do Sul"', add
label define br10a_muni5yr_lbl 4107157 `"Diamante D'Oeste"', add
label define br10a_muni5yr_lbl 4107207 `"Dois Vizinhos"', add
label define br10a_muni5yr_lbl 4107256 `"Douradina"', add
label define br10a_muni5yr_lbl 4107306 `"Doutor Camargo"', add
label define br10a_muni5yr_lbl 4107405 `"En�as Marques"', add
label define br10a_muni5yr_lbl 4107504 `"Engenheiro Beltr�o"', add
label define br10a_muni5yr_lbl 4107520 `"Esperan�a Nova"', add
label define br10a_muni5yr_lbl 4107538 `"Entre Rios do Oeste"', add
label define br10a_muni5yr_lbl 4107546 `"Espig�o Alto do Igua�u"', add
label define br10a_muni5yr_lbl 4107553 `"Farol"', add
label define br10a_muni5yr_lbl 4107603 `"Faxinal"', add
label define br10a_muni5yr_lbl 4107652 `"Fazenda Rio Grande"', add
label define br10a_muni5yr_lbl 4107702 `"F�nix"', add
label define br10a_muni5yr_lbl 4107736 `"Fernandes Pinheiro"', add
label define br10a_muni5yr_lbl 4107751 `"Figueira"', add
label define br10a_muni5yr_lbl 4107801 `"Flora�"', add
label define br10a_muni5yr_lbl 4107850 `"Flor da Serra do Sul"', add
label define br10a_muni5yr_lbl 4107900 `"Floresta"', add
label define br10a_muni5yr_lbl 4108007 `"Florest�polis"', add
label define br10a_muni5yr_lbl 4108106 `"Fl�rida"', add
label define br10a_muni5yr_lbl 4108205 `"Formosa do Oeste"', add
label define br10a_muni5yr_lbl 4108304 `"Foz do Igua�u"', add
label define br10a_muni5yr_lbl 4108320 `"Francisco Alves"', add
label define br10a_muni5yr_lbl 4108403 `"Francisco Beltr�o"', add
label define br10a_muni5yr_lbl 4108452 `"Foz do Jord�o"', add
label define br10a_muni5yr_lbl 4108502 `"General Carneiro"', add
label define br10a_muni5yr_lbl 4108551 `"Godoy Moreira"', add
label define br10a_muni5yr_lbl 4108601 `"Goioer�"', add
label define br10a_muni5yr_lbl 4108650 `"Goioxim"', add
label define br10a_muni5yr_lbl 4108700 `"Grandes Rios"', add
label define br10a_muni5yr_lbl 4108809 `"Gua�ra"', add
label define br10a_muni5yr_lbl 4108908 `"Guaira��"', add
label define br10a_muni5yr_lbl 4108957 `"Guamiranga"', add
label define br10a_muni5yr_lbl 4109005 `"Guapirama"', add
label define br10a_muni5yr_lbl 4109104 `"Guaporema"', add
label define br10a_muni5yr_lbl 4109203 `"Guaraci"', add
label define br10a_muni5yr_lbl 4109302 `"Guarania�u"', add
label define br10a_muni5yr_lbl 4109401 `"Guarapuava"', add
label define br10a_muni5yr_lbl 4109500 `"Guaraque�aba"', add
label define br10a_muni5yr_lbl 4109609 `"Guaratuba"', add
label define br10a_muni5yr_lbl 4109658 `"Hon�rio Serpa"', add
label define br10a_muni5yr_lbl 4109708 `"Ibaiti"', add
label define br10a_muni5yr_lbl 4109757 `"Ibema"', add
label define br10a_muni5yr_lbl 4109807 `"Ibipor�"', add
label define br10a_muni5yr_lbl 4109906 `"Icara�ma"', add
label define br10a_muni5yr_lbl 4110003 `"Iguara�u"', add
label define br10a_muni5yr_lbl 4110052 `"Iguatu"', add
label define br10a_muni5yr_lbl 4110078 `"Imba�"', add
label define br10a_muni5yr_lbl 4110102 `"Imbituva"', add
label define br10a_muni5yr_lbl 4110201 `"In�cio Martins"', add
label define br10a_muni5yr_lbl 4110300 `"Inaj�"', add
label define br10a_muni5yr_lbl 4110409 `"Indian�polis"', add
label define br10a_muni5yr_lbl 4110508 `"Ipiranga"', add
label define br10a_muni5yr_lbl 4110607 `"Ipor�"', add
label define br10a_muni5yr_lbl 4110656 `"Iracema do Oeste"', add
label define br10a_muni5yr_lbl 4110706 `"Irati"', add
label define br10a_muni5yr_lbl 4110805 `"Iretama"', add
label define br10a_muni5yr_lbl 4110904 `"Itaguaj�"', add
label define br10a_muni5yr_lbl 4110953 `"Itaipul�ndia"', add
label define br10a_muni5yr_lbl 4111001 `"Itambarac�"', add
label define br10a_muni5yr_lbl 4111100 `"Itamb�"', add
label define br10a_muni5yr_lbl 4111209 `"Itapejara d'Oeste"', add
label define br10a_muni5yr_lbl 4111258 `"Itaperu�u"', add
label define br10a_muni5yr_lbl 4111308 `"Ita�na do Sul"', add
label define br10a_muni5yr_lbl 4111407 `"Iva�"', add
label define br10a_muni5yr_lbl 4111506 `"Ivaipor�"', add
label define br10a_muni5yr_lbl 4111555 `"Ivat�"', add
label define br10a_muni5yr_lbl 4111605 `"Ivatuba"', add
label define br10a_muni5yr_lbl 4111704 `"Jaboti"', add
label define br10a_muni5yr_lbl 4111803 `"Jacarezinho"', add
label define br10a_muni5yr_lbl 4111902 `"Jaguapit�"', add
label define br10a_muni5yr_lbl 4112009 `"Jaguaria�va"', add
label define br10a_muni5yr_lbl 4112108 `"Jandaia do Sul"', add
label define br10a_muni5yr_lbl 4112207 `"Jani�polis"', add
label define br10a_muni5yr_lbl 4112306 `"Japira"', add
label define br10a_muni5yr_lbl 4112405 `"Japur�"', add
label define br10a_muni5yr_lbl 4112504 `"Jardim Alegre"', add
label define br10a_muni5yr_lbl 4112603 `"Jardim Olinda"', add
label define br10a_muni5yr_lbl 4112702 `"Jataizinho"', add
label define br10a_muni5yr_lbl 4112751 `"Jesu�tas"', add
label define br10a_muni5yr_lbl 4112801 `"Joaquim T�vora"', add
label define br10a_muni5yr_lbl 4112900 `"Jundia� do Sul"', add
label define br10a_muni5yr_lbl 4112959 `"Juranda"', add
label define br10a_muni5yr_lbl 4113007 `"Jussara"', add
label define br10a_muni5yr_lbl 4113106 `"Kalor�"', add
label define br10a_muni5yr_lbl 4113205 `"Lapa"', add
label define br10a_muni5yr_lbl 4113254 `"Laranjal"', add
label define br10a_muni5yr_lbl 4113304 `"Laranjeiras do Sul"', add
label define br10a_muni5yr_lbl 4113403 `"Le�polis"', add
label define br10a_muni5yr_lbl 4113429 `"Lidian�polis"', add
label define br10a_muni5yr_lbl 4113452 `"Lindoeste"', add
label define br10a_muni5yr_lbl 4113502 `"Loanda"', add
label define br10a_muni5yr_lbl 4113601 `"Lobato"', add
label define br10a_muni5yr_lbl 4113700 `"Londrina"', add
label define br10a_muni5yr_lbl 4113734 `"Luiziana"', add
label define br10a_muni5yr_lbl 4113759 `"Lunardelli"', add
label define br10a_muni5yr_lbl 4113809 `"Lupion�polis"', add
label define br10a_muni5yr_lbl 4113908 `"Mallet"', add
label define br10a_muni5yr_lbl 4114005 `"Mambor�"', add
label define br10a_muni5yr_lbl 4114104 `"Mandagua�u"', add
label define br10a_muni5yr_lbl 4114203 `"Mandaguari"', add
label define br10a_muni5yr_lbl 4114302 `"Mandirituba"', add
label define br10a_muni5yr_lbl 4114351 `"Manfrin�polis"', add
label define br10a_muni5yr_lbl 4114401 `"Mangueirinha"', add
label define br10a_muni5yr_lbl 4114500 `"Manoel Ribas"', add
label define br10a_muni5yr_lbl 4114609 `"Marechal C�ndido Rondon"', add
label define br10a_muni5yr_lbl 4114708 `"Maria Helena"', add
label define br10a_muni5yr_lbl 4114807 `"Marialva"', add
label define br10a_muni5yr_lbl 4114906 `"Maril�ndia do Sul"', add
label define br10a_muni5yr_lbl 4115002 `"Marilena"', add
label define br10a_muni5yr_lbl 4115101 `"Mariluz"', add
label define br10a_muni5yr_lbl 4115200 `"Maring�"', add
label define br10a_muni5yr_lbl 4115309 `"Mari�polis"', add
label define br10a_muni5yr_lbl 4115358 `"Marip�"', add
label define br10a_muni5yr_lbl 4115408 `"Marmeleiro"', add
label define br10a_muni5yr_lbl 4115457 `"Marquinho"', add
label define br10a_muni5yr_lbl 4115507 `"Marumbi"', add
label define br10a_muni5yr_lbl 4115606 `"Matel�ndia"', add
label define br10a_muni5yr_lbl 4115705 `"Matinhos"', add
label define br10a_muni5yr_lbl 4115739 `"Mato Rico"', add
label define br10a_muni5yr_lbl 4115754 `"Mau� da Serra"', add
label define br10a_muni5yr_lbl 4115804 `"Medianeira"', add
label define br10a_muni5yr_lbl 4115853 `"Mercedes"', add
label define br10a_muni5yr_lbl 4115903 `"Mirador"', add
label define br10a_muni5yr_lbl 4116000 `"Miraselva"', add
label define br10a_muni5yr_lbl 4116059 `"Missal"', add
label define br10a_muni5yr_lbl 4116109 `"Moreira Sales"', add
label define br10a_muni5yr_lbl 4116208 `"Morretes"', add
label define br10a_muni5yr_lbl 4116307 `"Munhoz de Melo"', add
label define br10a_muni5yr_lbl 4116406 `"Nossa Senhora das Gra�as"', add
label define br10a_muni5yr_lbl 4116505 `"Nova Alian�a do Iva�"', add
label define br10a_muni5yr_lbl 4116604 `"Nova Am�rica da Colina"', add
label define br10a_muni5yr_lbl 4116703 `"Nova Aurora"', add
label define br10a_muni5yr_lbl 4116802 `"Nova Cantu"', add
label define br10a_muni5yr_lbl 4116901 `"Nova Esperan�a"', add
label define br10a_muni5yr_lbl 4116950 `"Nova Esperan�a do Sudoeste"', add
label define br10a_muni5yr_lbl 4117008 `"Nova F�tima"', add
label define br10a_muni5yr_lbl 4117057 `"Nova Laranjeiras"', add
label define br10a_muni5yr_lbl 4117107 `"Nova Londrina"', add
label define br10a_muni5yr_lbl 4117206 `"Nova Ol�mpia"', add
label define br10a_muni5yr_lbl 4117214 `"Nova Santa B�rbara"', add
label define br10a_muni5yr_lbl 4117222 `"Nova Santa Rosa"', add
label define br10a_muni5yr_lbl 4117255 `"Nova Prata do Igua�u"', add
label define br10a_muni5yr_lbl 4117271 `"Nova Tebas"', add
label define br10a_muni5yr_lbl 4117297 `"Novo Itacolomi"', add
label define br10a_muni5yr_lbl 4117305 `"Ortigueira"', add
label define br10a_muni5yr_lbl 4117404 `"Ourizona"', add
label define br10a_muni5yr_lbl 4117453 `"Ouro Verde do Oeste"', add
label define br10a_muni5yr_lbl 4117503 `"Pai�andu"', add
label define br10a_muni5yr_lbl 4117602 `"Palmas"', add
label define br10a_muni5yr_lbl 4117701 `"Palmeira"', add
label define br10a_muni5yr_lbl 4117800 `"Palmital"', add
label define br10a_muni5yr_lbl 4117909 `"Palotina"', add
label define br10a_muni5yr_lbl 4118006 `"Para�so do Norte"', add
label define br10a_muni5yr_lbl 4118105 `"Paranacity"', add
label define br10a_muni5yr_lbl 4118204 `"Paranagu�"', add
label define br10a_muni5yr_lbl 4118303 `"Paranapoema"', add
label define br10a_muni5yr_lbl 4118402 `"Paranava�"', add
label define br10a_muni5yr_lbl 4118451 `"Pato Bragado"', add
label define br10a_muni5yr_lbl 4118501 `"Pato Branco"', add
label define br10a_muni5yr_lbl 4118600 `"Paula Freitas"', add
label define br10a_muni5yr_lbl 4118709 `"Paulo Frontin"', add
label define br10a_muni5yr_lbl 4118808 `"Peabiru"', add
label define br10a_muni5yr_lbl 4118857 `"Perobal"', add
label define br10a_muni5yr_lbl 4118907 `"P�rola"', add
label define br10a_muni5yr_lbl 4119004 `"P�rola d'Oeste"', add
label define br10a_muni5yr_lbl 4119103 `"Pi�n"', add
label define br10a_muni5yr_lbl 4119152 `"Pinhais"', add
label define br10a_muni5yr_lbl 4119202 `"Pinhal�o"', add
label define br10a_muni5yr_lbl 4119251 `"Pinhal de S�o Bento"', add
label define br10a_muni5yr_lbl 4119301 `"Pinh�o"', add
label define br10a_muni5yr_lbl 4119400 `"Pira� do Sul"', add
label define br10a_muni5yr_lbl 4119509 `"Piraquara"', add
label define br10a_muni5yr_lbl 4119608 `"Pitanga"', add
label define br10a_muni5yr_lbl 4119657 `"Pitangueiras"', add
label define br10a_muni5yr_lbl 4119707 `"Planaltina do Paran�"', add
label define br10a_muni5yr_lbl 4119806 `"Planalto"', add
label define br10a_muni5yr_lbl 4119905 `"Ponta Grossa"', add
label define br10a_muni5yr_lbl 4119954 `"Pontal do Paran�"', add
label define br10a_muni5yr_lbl 4120002 `"Porecatu"', add
label define br10a_muni5yr_lbl 4120101 `"Porto Amazonas"', add
label define br10a_muni5yr_lbl 4120150 `"Porto Barreiro"', add
label define br10a_muni5yr_lbl 4120200 `"Porto Rico"', add
label define br10a_muni5yr_lbl 4120309 `"Porto Vit�ria"', add
label define br10a_muni5yr_lbl 4120333 `"Prado Ferreira"', add
label define br10a_muni5yr_lbl 4120358 `"Pranchita"', add
label define br10a_muni5yr_lbl 4120408 `"Presidente Castelo Branco"', add
label define br10a_muni5yr_lbl 4120507 `"Primeiro de Maio"', add
label define br10a_muni5yr_lbl 4120606 `"Prudent�polis"', add
label define br10a_muni5yr_lbl 4120655 `"Quarto Centen�rio"', add
label define br10a_muni5yr_lbl 4120705 `"Quatigu�"', add
label define br10a_muni5yr_lbl 4120804 `"Quatro Barras"', add
label define br10a_muni5yr_lbl 4120853 `"Quatro Pontes"', add
label define br10a_muni5yr_lbl 4120903 `"Quedas do Igua�u"', add
label define br10a_muni5yr_lbl 4121000 `"Quer�ncia do Norte"', add
label define br10a_muni5yr_lbl 4121109 `"Quinta do Sol"', add
label define br10a_muni5yr_lbl 4121208 `"Quitandinha"', add
label define br10a_muni5yr_lbl 4121257 `"Ramil�ndia"', add
label define br10a_muni5yr_lbl 4121307 `"Rancho Alegre"', add
label define br10a_muni5yr_lbl 4121356 `"Rancho Alegre D'Oeste"', add
label define br10a_muni5yr_lbl 4121406 `"Realeza"', add
label define br10a_muni5yr_lbl 4121505 `"Rebou�as"', add
label define br10a_muni5yr_lbl 4121604 `"Renascen�a"', add
label define br10a_muni5yr_lbl 4121703 `"Reserva"', add
label define br10a_muni5yr_lbl 4121752 `"Reserva do Igua�u"', add
label define br10a_muni5yr_lbl 4121802 `"Ribeir�o Claro"', add
label define br10a_muni5yr_lbl 4121901 `"Ribeir�o do Pinhal"', add
label define br10a_muni5yr_lbl 4122008 `"Rio Azul"', add
label define br10a_muni5yr_lbl 4122107 `"Rio Bom"', add
label define br10a_muni5yr_lbl 4122156 `"Rio Bonito do Igua�u"', add
label define br10a_muni5yr_lbl 4122172 `"Rio Branco do Iva�"', add
label define br10a_muni5yr_lbl 4122206 `"Rio Branco do Sul"', add
label define br10a_muni5yr_lbl 4122305 `"Rio Negro"', add
label define br10a_muni5yr_lbl 4122404 `"Rol�ndia"', add
label define br10a_muni5yr_lbl 4122503 `"Roncador"', add
label define br10a_muni5yr_lbl 4122602 `"Rondon"', add
label define br10a_muni5yr_lbl 4122651 `"Ros�rio do Iva�"', add
label define br10a_muni5yr_lbl 4122701 `"Sab�udia"', add
label define br10a_muni5yr_lbl 4122800 `"Salgado Filho"', add
label define br10a_muni5yr_lbl 4122909 `"Salto do Itarar�"', add
label define br10a_muni5yr_lbl 4123006 `"Salto do Lontra"', add
label define br10a_muni5yr_lbl 4123105 `"Santa Am�lia"', add
label define br10a_muni5yr_lbl 4123204 `"Santa Cec�lia do Pav�o"', add
label define br10a_muni5yr_lbl 4123303 `"Santa Cruz de Monte Castelo"', add
label define br10a_muni5yr_lbl 4123402 `"Santa F�"', add
label define br10a_muni5yr_lbl 4123501 `"Santa Helena"', add
label define br10a_muni5yr_lbl 4123600 `"Santa In�s"', add
label define br10a_muni5yr_lbl 4123709 `"Santa Isabel do Iva�"', add
label define br10a_muni5yr_lbl 4123808 `"Santa Izabel do Oeste"', add
label define br10a_muni5yr_lbl 4123824 `"Santa L�cia"', add
label define br10a_muni5yr_lbl 4123857 `"Santa Maria do Oeste"', add
label define br10a_muni5yr_lbl 4123907 `"Santa Mariana"', add
label define br10a_muni5yr_lbl 4123956 `"Santa M�nica"', add
label define br10a_muni5yr_lbl 4124004 `"Santana do Itarar�"', add
label define br10a_muni5yr_lbl 4124020 `"Santa Tereza do Oeste"', add
label define br10a_muni5yr_lbl 4124053 `"Santa Terezinha de Itaipu"', add
label define br10a_muni5yr_lbl 4124103 `"Santo Ant�nio da Platina"', add
label define br10a_muni5yr_lbl 4124202 `"Santo Ant�nio do Caiu�"', add
label define br10a_muni5yr_lbl 4124301 `"Santo Ant�nio do Para�so"', add
label define br10a_muni5yr_lbl 4124400 `"Santo Ant�nio do Sudoeste"', add
label define br10a_muni5yr_lbl 4124509 `"Santo In�cio"', add
label define br10a_muni5yr_lbl 4124608 `"S�o Carlos do Iva�"', add
label define br10a_muni5yr_lbl 4124707 `"S�o Jer�nimo da Serra"', add
label define br10a_muni5yr_lbl 4124806 `"S�o Jo�o"', add
label define br10a_muni5yr_lbl 4124905 `"S�o Jo�o do Caiu�"', add
label define br10a_muni5yr_lbl 4125001 `"S�o Jo�o do Iva�"', add
label define br10a_muni5yr_lbl 4125100 `"S�o Jo�o do Triunfo"', add
label define br10a_muni5yr_lbl 4125209 `"S�o Jorge d'Oeste"', add
label define br10a_muni5yr_lbl 4125308 `"S�o Jorge do Iva�"', add
label define br10a_muni5yr_lbl 4125357 `"S�o Jorge do Patroc�nio"', add
label define br10a_muni5yr_lbl 4125407 `"S�o Jos� da Boa Vista"', add
label define br10a_muni5yr_lbl 4125456 `"S�o Jos� das Palmeiras"', add
label define br10a_muni5yr_lbl 4125506 `"S�o Jos� dos Pinhais"', add
label define br10a_muni5yr_lbl 4125555 `"S�o Manoel do Paran�"', add
label define br10a_muni5yr_lbl 4125605 `"S�o Mateus do Sul"', add
label define br10a_muni5yr_lbl 4125704 `"S�o Miguel do Igua�u"', add
label define br10a_muni5yr_lbl 4125753 `"S�o Pedro do Igua�u"', add
label define br10a_muni5yr_lbl 4125803 `"S�o Pedro do Iva�"', add
label define br10a_muni5yr_lbl 4125902 `"S�o Pedro do Paran�"', add
label define br10a_muni5yr_lbl 4126009 `"S�o Sebasti�o da Amoreira"', add
label define br10a_muni5yr_lbl 4126108 `"S�o Tom�"', add
label define br10a_muni5yr_lbl 4126207 `"Sapopema"', add
label define br10a_muni5yr_lbl 4126256 `"Sarandi"', add
label define br10a_muni5yr_lbl 4126272 `"Saudade do Igua�u"', add
label define br10a_muni5yr_lbl 4126306 `"Seng�s"', add
label define br10a_muni5yr_lbl 4126355 `"Serran�polis do Igua�u"', add
label define br10a_muni5yr_lbl 4126405 `"Sertaneja"', add
label define br10a_muni5yr_lbl 4126504 `"Sertan�polis"', add
label define br10a_muni5yr_lbl 4126603 `"Siqueira Campos"', add
label define br10a_muni5yr_lbl 4126652 `"Sulina"', add
label define br10a_muni5yr_lbl 4126678 `"Tamarana"', add
label define br10a_muni5yr_lbl 4126702 `"Tamboara"', add
label define br10a_muni5yr_lbl 4126801 `"Tapejara"', add
label define br10a_muni5yr_lbl 4126900 `"Tapira"', add
label define br10a_muni5yr_lbl 4127007 `"Teixeira Soares"', add
label define br10a_muni5yr_lbl 4127106 `"Tel�maco Borba"', add
label define br10a_muni5yr_lbl 4127205 `"Terra Boa"', add
label define br10a_muni5yr_lbl 4127304 `"Terra Rica"', add
label define br10a_muni5yr_lbl 4127403 `"Terra Roxa"', add
label define br10a_muni5yr_lbl 4127502 `"Tibagi"', add
label define br10a_muni5yr_lbl 4127601 `"Tijucas do Sul"', add
label define br10a_muni5yr_lbl 4127700 `"Toledo"', add
label define br10a_muni5yr_lbl 4127809 `"Tomazina"', add
label define br10a_muni5yr_lbl 4127858 `"Tr�s Barras do Paran�"', add
label define br10a_muni5yr_lbl 4127882 `"Tunas do Paran�"', add
label define br10a_muni5yr_lbl 4127908 `"Tuneiras do Oeste"', add
label define br10a_muni5yr_lbl 4127957 `"Tup�ssi"', add
label define br10a_muni5yr_lbl 4127965 `"Turvo"', add
label define br10a_muni5yr_lbl 4128005 `"Ubirat�"', add
label define br10a_muni5yr_lbl 4128104 `"Umuarama"', add
label define br10a_muni5yr_lbl 4128203 `"Uni�o da Vit�ria"', add
label define br10a_muni5yr_lbl 4128302 `"Uniflor"', add
label define br10a_muni5yr_lbl 4128401 `"Ura�"', add
label define br10a_muni5yr_lbl 4128500 `"Wenceslau Braz"', add
label define br10a_muni5yr_lbl 4128534 `"Ventania"', add
label define br10a_muni5yr_lbl 4128559 `"Vera Cruz do Oeste"', add
label define br10a_muni5yr_lbl 4128609 `"Ver�"', add
label define br10a_muni5yr_lbl 4128625 `"Alto Para�so"', add
label define br10a_muni5yr_lbl 4128633 `"Doutor Ulysses"', add
label define br10a_muni5yr_lbl 4128658 `"Virmond"', add
label define br10a_muni5yr_lbl 4128708 `"Vitorino"', add
label define br10a_muni5yr_lbl 4128807 `"Xambr�"', add
label define br10a_muni5yr_lbl 4199999 `"Paran�, municipality unknown"', add
label define br10a_muni5yr_lbl 4200051 `"Abdon Batista"', add
label define br10a_muni5yr_lbl 4200101 `"Abelardo Luz"', add
label define br10a_muni5yr_lbl 4200200 `"Agrol�ndia"', add
label define br10a_muni5yr_lbl 4200309 `"Agron�mica"', add
label define br10a_muni5yr_lbl 4200408 `"�gua Doce"', add
label define br10a_muni5yr_lbl 4200507 `"�guas de Chapec�"', add
label define br10a_muni5yr_lbl 4200556 `"�guas Frias"', add
label define br10a_muni5yr_lbl 4200606 `"�guas Mornas"', add
label define br10a_muni5yr_lbl 4200705 `"Alfredo Wagner"', add
label define br10a_muni5yr_lbl 4200754 `"Alto Bela Vista"', add
label define br10a_muni5yr_lbl 4200804 `"Anchieta"', add
label define br10a_muni5yr_lbl 4200903 `"Angelina"', add
label define br10a_muni5yr_lbl 4201000 `"Anita Garibaldi"', add
label define br10a_muni5yr_lbl 4201109 `"Anit�polis"', add
label define br10a_muni5yr_lbl 4201208 `"Ant�nio Carlos"', add
label define br10a_muni5yr_lbl 4201257 `"Api�na"', add
label define br10a_muni5yr_lbl 4201273 `"Arabut�"', add
label define br10a_muni5yr_lbl 4201307 `"Araquari"', add
label define br10a_muni5yr_lbl 4201406 `"Ararangu�"', add
label define br10a_muni5yr_lbl 4201505 `"Armaz�m"', add
label define br10a_muni5yr_lbl 4201604 `"Arroio Trinta"', add
label define br10a_muni5yr_lbl 4201653 `"Arvoredo"', add
label define br10a_muni5yr_lbl 4201703 `"Ascurra"', add
label define br10a_muni5yr_lbl 4201802 `"Atalanta"', add
label define br10a_muni5yr_lbl 4201901 `"Aurora"', add
label define br10a_muni5yr_lbl 4201950 `"Balne�rio Arroio do Silva"', add
label define br10a_muni5yr_lbl 4202008 `"Balne�rio Cambori�"', add
label define br10a_muni5yr_lbl 4202057 `"Balne�rio Barra do Sul"', add
label define br10a_muni5yr_lbl 4202073 `"Balne�rio Gaivota"', add
label define br10a_muni5yr_lbl 4202081 `"Bandeirante"', add
label define br10a_muni5yr_lbl 4202099 `"Barra Bonita"', add
label define br10a_muni5yr_lbl 4202107 `"Barra Velha"', add
label define br10a_muni5yr_lbl 4202131 `"Bela Vista do Toldo"', add
label define br10a_muni5yr_lbl 4202156 `"Belmonte"', add
label define br10a_muni5yr_lbl 4202206 `"Benedito Novo"', add
label define br10a_muni5yr_lbl 4202305 `"Bigua�u"', add
label define br10a_muni5yr_lbl 4202404 `"Blumenau"', add
label define br10a_muni5yr_lbl 4202438 `"Bocaina do Sul"', add
label define br10a_muni5yr_lbl 4202453 `"Bombinhas"', add
label define br10a_muni5yr_lbl 4202503 `"Bom Jardim da Serra"', add
label define br10a_muni5yr_lbl 4202537 `"Bom Jesus"', add
label define br10a_muni5yr_lbl 4202578 `"Bom Jesus do Oeste"', add
label define br10a_muni5yr_lbl 4202602 `"Bom Retiro"', add
label define br10a_muni5yr_lbl 4202701 `"Botuver�"', add
label define br10a_muni5yr_lbl 4202800 `"Bra�o do Norte"', add
label define br10a_muni5yr_lbl 4202859 `"Bra�o do Trombudo"', add
label define br10a_muni5yr_lbl 4202875 `"Brun�polis"', add
label define br10a_muni5yr_lbl 4202909 `"Brusque"', add
label define br10a_muni5yr_lbl 4203006 `"Ca�ador"', add
label define br10a_muni5yr_lbl 4203105 `"Caibi"', add
label define br10a_muni5yr_lbl 4203154 `"Calmon"', add
label define br10a_muni5yr_lbl 4203204 `"Cambori�"', add
label define br10a_muni5yr_lbl 4203253 `"Cap�o Alto"', add
label define br10a_muni5yr_lbl 4203303 `"Campo Alegre"', add
label define br10a_muni5yr_lbl 4203402 `"Campo Belo do Sul"', add
label define br10a_muni5yr_lbl 4203501 `"Campo Er�"', add
label define br10a_muni5yr_lbl 4203600 `"Campos Novos"', add
label define br10a_muni5yr_lbl 4203709 `"Canelinha"', add
label define br10a_muni5yr_lbl 4203808 `"Canoinhas"', add
label define br10a_muni5yr_lbl 4203907 `"Capinzal"', add
label define br10a_muni5yr_lbl 4203956 `"Capivari de Baixo"', add
label define br10a_muni5yr_lbl 4204004 `"Catanduvas"', add
label define br10a_muni5yr_lbl 4204103 `"Caxambu do Sul"', add
label define br10a_muni5yr_lbl 4204152 `"Celso Ramos"', add
label define br10a_muni5yr_lbl 4204178 `"Cerro Negro"', add
label define br10a_muni5yr_lbl 4204194 `"Chapad�o do Lageado"', add
label define br10a_muni5yr_lbl 4204202 `"Chapec�"', add
label define br10a_muni5yr_lbl 4204251 `"Cocal do Sul"', add
label define br10a_muni5yr_lbl 4204301 `"Conc�rdia"', add
label define br10a_muni5yr_lbl 4204350 `"Cordilheira Alta"', add
label define br10a_muni5yr_lbl 4204400 `"Coronel Freitas"', add
label define br10a_muni5yr_lbl 4204459 `"Coronel Martins"', add
label define br10a_muni5yr_lbl 4204509 `"Corup�"', add
label define br10a_muni5yr_lbl 4204558 `"Correia Pinto"', add
label define br10a_muni5yr_lbl 4204608 `"Crici�ma"', add
label define br10a_muni5yr_lbl 4204707 `"Cunha Por�"', add
label define br10a_muni5yr_lbl 4204756 `"Cunhata�"', add
label define br10a_muni5yr_lbl 4204806 `"Curitibanos"', add
label define br10a_muni5yr_lbl 4204905 `"Descanso"', add
label define br10a_muni5yr_lbl 4205001 `"Dion�sio Cerqueira"', add
label define br10a_muni5yr_lbl 4205100 `"Dona Emma"', add
label define br10a_muni5yr_lbl 4205159 `"Doutor Pedrinho"', add
label define br10a_muni5yr_lbl 4205175 `"Entre Rios"', add
label define br10a_muni5yr_lbl 4205191 `"Ermo"', add
label define br10a_muni5yr_lbl 4205209 `"Erval Velho"', add
label define br10a_muni5yr_lbl 4205308 `"Faxinal dos Guedes"', add
label define br10a_muni5yr_lbl 4205357 `"Flor do Sert�o"', add
label define br10a_muni5yr_lbl 4205407 `"Florian�polis"', add
label define br10a_muni5yr_lbl 4205431 `"Formosa do Sul"', add
label define br10a_muni5yr_lbl 4205456 `"Forquilhinha"', add
label define br10a_muni5yr_lbl 4205506 `"Fraiburgo"', add
label define br10a_muni5yr_lbl 4205555 `"Frei Rog�rio"', add
label define br10a_muni5yr_lbl 4205605 `"Galv�o"', add
label define br10a_muni5yr_lbl 4205704 `"Garopaba"', add
label define br10a_muni5yr_lbl 4205803 `"Garuva"', add
label define br10a_muni5yr_lbl 4205902 `"Gaspar"', add
label define br10a_muni5yr_lbl 4206009 `"Governador Celso Ramos"', add
label define br10a_muni5yr_lbl 4206108 `"Gr�o Par�"', add
label define br10a_muni5yr_lbl 4206207 `"Gravatal"', add
label define br10a_muni5yr_lbl 4206306 `"Guabiruba"', add
label define br10a_muni5yr_lbl 4206405 `"Guaraciaba"', add
label define br10a_muni5yr_lbl 4206504 `"Guaramirim"', add
label define br10a_muni5yr_lbl 4206603 `"Guaruj� do Sul"', add
label define br10a_muni5yr_lbl 4206652 `"Guatamb�"', add
label define br10a_muni5yr_lbl 4206702 `"Herval d'Oeste"', add
label define br10a_muni5yr_lbl 4206751 `"Ibiam"', add
label define br10a_muni5yr_lbl 4206801 `"Ibicar�"', add
label define br10a_muni5yr_lbl 4206900 `"Ibirama"', add
label define br10a_muni5yr_lbl 4207007 `"I�ara"', add
label define br10a_muni5yr_lbl 4207106 `"Ilhota"', add
label define br10a_muni5yr_lbl 4207205 `"Imaru�"', add
label define br10a_muni5yr_lbl 4207304 `"Imbituba"', add
label define br10a_muni5yr_lbl 4207403 `"Imbuia"', add
label define br10a_muni5yr_lbl 4207502 `"Indaial"', add
label define br10a_muni5yr_lbl 4207577 `"Iomer�"', add
label define br10a_muni5yr_lbl 4207601 `"Ipira"', add
label define br10a_muni5yr_lbl 4207650 `"Ipor� do Oeste"', add
label define br10a_muni5yr_lbl 4207684 `"Ipua�u"', add
label define br10a_muni5yr_lbl 4207700 `"Ipumirim"', add
label define br10a_muni5yr_lbl 4207759 `"Iraceminha"', add
label define br10a_muni5yr_lbl 4207809 `"Irani"', add
label define br10a_muni5yr_lbl 4207858 `"Irati"', add
label define br10a_muni5yr_lbl 4207908 `"Irine�polis"', add
label define br10a_muni5yr_lbl 4208005 `"It�"', add
label define br10a_muni5yr_lbl 4208104 `"Itai�polis"', add
label define br10a_muni5yr_lbl 4208203 `"Itaja�"', add
label define br10a_muni5yr_lbl 4208302 `"Itapema"', add
label define br10a_muni5yr_lbl 4208401 `"Itapiranga"', add
label define br10a_muni5yr_lbl 4208450 `"Itapo�"', add
label define br10a_muni5yr_lbl 4208500 `"Ituporanga"', add
label define br10a_muni5yr_lbl 4208609 `"Jabor�"', add
label define br10a_muni5yr_lbl 4208708 `"Jacinto Machado"', add
label define br10a_muni5yr_lbl 4208807 `"Jaguaruna"', add
label define br10a_muni5yr_lbl 4208906 `"Jaragu� do Sul"', add
label define br10a_muni5yr_lbl 4208955 `"Jardin�polis"', add
label define br10a_muni5yr_lbl 4209003 `"Joa�aba"', add
label define br10a_muni5yr_lbl 4209102 `"Joinville"', add
label define br10a_muni5yr_lbl 4209151 `"Jos� Boiteux"', add
label define br10a_muni5yr_lbl 4209177 `"Jupi�"', add
label define br10a_muni5yr_lbl 4209201 `"Lacerd�polis"', add
label define br10a_muni5yr_lbl 4209300 `"Lages"', add
label define br10a_muni5yr_lbl 4209409 `"Laguna"', add
label define br10a_muni5yr_lbl 4209458 `"Lajeado Grande"', add
label define br10a_muni5yr_lbl 4209508 `"Laurentino"', add
label define br10a_muni5yr_lbl 4209607 `"Lauro Muller"', add
label define br10a_muni5yr_lbl 4209706 `"Lebon R�gis"', add
label define br10a_muni5yr_lbl 4209805 `"Leoberto Leal"', add
label define br10a_muni5yr_lbl 4209854 `"Lind�ia do Sul"', add
label define br10a_muni5yr_lbl 4209904 `"Lontras"', add
label define br10a_muni5yr_lbl 4210001 `"Luiz Alves"', add
label define br10a_muni5yr_lbl 4210035 `"Luzerna"', add
label define br10a_muni5yr_lbl 4210050 `"Macieira"', add
label define br10a_muni5yr_lbl 4210100 `"Mafra"', add
label define br10a_muni5yr_lbl 4210209 `"Major Gercino"', add
label define br10a_muni5yr_lbl 4210308 `"Major Vieira"', add
label define br10a_muni5yr_lbl 4210407 `"Maracaj�"', add
label define br10a_muni5yr_lbl 4210506 `"Maravilha"', add
label define br10a_muni5yr_lbl 4210555 `"Marema"', add
label define br10a_muni5yr_lbl 4210605 `"Massaranduba"', add
label define br10a_muni5yr_lbl 4210704 `"Matos Costa"', add
label define br10a_muni5yr_lbl 4210803 `"Meleiro"', add
label define br10a_muni5yr_lbl 4210852 `"Mirim Doce"', add
label define br10a_muni5yr_lbl 4210902 `"Modelo"', add
label define br10a_muni5yr_lbl 4211009 `"Monda�"', add
label define br10a_muni5yr_lbl 4211058 `"Monte Carlo"', add
label define br10a_muni5yr_lbl 4211108 `"Monte Castelo"', add
label define br10a_muni5yr_lbl 4211207 `"Morro da Fuma�a"', add
label define br10a_muni5yr_lbl 4211256 `"Morro Grande"', add
label define br10a_muni5yr_lbl 4211306 `"Navegantes"', add
label define br10a_muni5yr_lbl 4211405 `"Nova Erechim"', add
label define br10a_muni5yr_lbl 4211454 `"Nova Itaberaba"', add
label define br10a_muni5yr_lbl 4211504 `"Nova Trento"', add
label define br10a_muni5yr_lbl 4211603 `"Nova Veneza"', add
label define br10a_muni5yr_lbl 4211652 `"Novo Horizonte"', add
label define br10a_muni5yr_lbl 4211702 `"Orleans"', add
label define br10a_muni5yr_lbl 4211751 `"Otac�lio Costa"', add
label define br10a_muni5yr_lbl 4211801 `"Ouro"', add
label define br10a_muni5yr_lbl 4211850 `"Ouro Verde"', add
label define br10a_muni5yr_lbl 4211876 `"Paial"', add
label define br10a_muni5yr_lbl 4211892 `"Painel"', add
label define br10a_muni5yr_lbl 4211900 `"Palho�a"', add
label define br10a_muni5yr_lbl 4212007 `"Palma Sola"', add
label define br10a_muni5yr_lbl 4212056 `"Palmeira"', add
label define br10a_muni5yr_lbl 4212106 `"Palmitos"', add
label define br10a_muni5yr_lbl 4212205 `"Papanduva"', add
label define br10a_muni5yr_lbl 4212239 `"Para�so"', add
label define br10a_muni5yr_lbl 4212254 `"Passo de Torres"', add
label define br10a_muni5yr_lbl 4212270 `"Passos Maia"', add
label define br10a_muni5yr_lbl 4212304 `"Paulo Lopes"', add
label define br10a_muni5yr_lbl 4212403 `"Pedras Grandes"', add
label define br10a_muni5yr_lbl 4212502 `"Penha"', add
label define br10a_muni5yr_lbl 4212601 `"Peritiba"', add
label define br10a_muni5yr_lbl 4212700 `"Petrol�ndia"', add
label define br10a_muni5yr_lbl 4212809 `"Balne�rio Pi�arras"', add
label define br10a_muni5yr_lbl 4212908 `"Pinhalzinho"', add
label define br10a_muni5yr_lbl 4213005 `"Pinheiro Preto"', add
label define br10a_muni5yr_lbl 4213104 `"Piratuba"', add
label define br10a_muni5yr_lbl 4213153 `"Planalto Alegre"', add
label define br10a_muni5yr_lbl 4213203 `"Pomerode"', add
label define br10a_muni5yr_lbl 4213302 `"Ponte Alta"', add
label define br10a_muni5yr_lbl 4213351 `"Ponte Alta do Norte"', add
label define br10a_muni5yr_lbl 4213401 `"Ponte Serrada"', add
label define br10a_muni5yr_lbl 4213500 `"Porto Belo"', add
label define br10a_muni5yr_lbl 4213609 `"Porto Uni�o"', add
label define br10a_muni5yr_lbl 4213708 `"Pouso Redondo"', add
label define br10a_muni5yr_lbl 4213807 `"Praia Grande"', add
label define br10a_muni5yr_lbl 4213906 `"Presidente Castello Branco"', add
label define br10a_muni5yr_lbl 4214003 `"Presidente Get�lio"', add
label define br10a_muni5yr_lbl 4214102 `"Presidente Nereu"', add
label define br10a_muni5yr_lbl 4214151 `"Princesa"', add
label define br10a_muni5yr_lbl 4214201 `"Quilombo"', add
label define br10a_muni5yr_lbl 4214300 `"Rancho Queimado"', add
label define br10a_muni5yr_lbl 4214409 `"Rio das Antas"', add
label define br10a_muni5yr_lbl 4214508 `"Rio do Campo"', add
label define br10a_muni5yr_lbl 4214607 `"Rio do Oeste"', add
label define br10a_muni5yr_lbl 4214706 `"Rio dos Cedros"', add
label define br10a_muni5yr_lbl 4214805 `"Rio do Sul"', add
label define br10a_muni5yr_lbl 4214904 `"Rio Fortuna"', add
label define br10a_muni5yr_lbl 4215000 `"Rio Negrinho"', add
label define br10a_muni5yr_lbl 4215059 `"Rio Rufino"', add
label define br10a_muni5yr_lbl 4215075 `"Riqueza"', add
label define br10a_muni5yr_lbl 4215109 `"Rodeio"', add
label define br10a_muni5yr_lbl 4215208 `"Romel�ndia"', add
label define br10a_muni5yr_lbl 4215307 `"Salete"', add
label define br10a_muni5yr_lbl 4215356 `"Saltinho"', add
label define br10a_muni5yr_lbl 4215406 `"Salto Veloso"', add
label define br10a_muni5yr_lbl 4215455 `"Sang�o"', add
label define br10a_muni5yr_lbl 4215505 `"Santa Cec�lia"', add
label define br10a_muni5yr_lbl 4215554 `"Santa Helena"', add
label define br10a_muni5yr_lbl 4215604 `"Santa Rosa de Lima"', add
label define br10a_muni5yr_lbl 4215653 `"Santa Rosa do Sul"', add
label define br10a_muni5yr_lbl 4215679 `"Santa Terezinha"', add
label define br10a_muni5yr_lbl 4215687 `"Santa Terezinha do Progresso"', add
label define br10a_muni5yr_lbl 4215695 `"Santiago do Sul"', add
label define br10a_muni5yr_lbl 4215703 `"Santo Amaro da Imperatriz"', add
label define br10a_muni5yr_lbl 4215752 `"S�o Bernardino"', add
label define br10a_muni5yr_lbl 4215802 `"S�o Bento do Sul"', add
label define br10a_muni5yr_lbl 4215901 `"S�o Bonif�cio"', add
label define br10a_muni5yr_lbl 4216008 `"S�o Carlos"', add
label define br10a_muni5yr_lbl 4216057 `"S�o Cristov�o do Sul"', add
label define br10a_muni5yr_lbl 4216107 `"S�o Domingos"', add
label define br10a_muni5yr_lbl 4216206 `"S�o Francisco do Sul"', add
label define br10a_muni5yr_lbl 4216255 `"S�o Jo�o do Oeste"', add
label define br10a_muni5yr_lbl 4216305 `"S�o Jo�o Batista"', add
label define br10a_muni5yr_lbl 4216354 `"S�o Jo�o do Itaperi�"', add
label define br10a_muni5yr_lbl 4216404 `"S�o Jo�o do Sul"', add
label define br10a_muni5yr_lbl 4216503 `"S�o Joaquim"', add
label define br10a_muni5yr_lbl 4216602 `"S�o Jos�"', add
label define br10a_muni5yr_lbl 4216701 `"S�o Jos� do Cedro"', add
label define br10a_muni5yr_lbl 4216800 `"S�o Jos� do Cerrito"', add
label define br10a_muni5yr_lbl 4216909 `"S�o Louren�o do Oeste"', add
label define br10a_muni5yr_lbl 4217006 `"S�o Ludgero"', add
label define br10a_muni5yr_lbl 4217105 `"S�o Martinho"', add
label define br10a_muni5yr_lbl 4217154 `"S�o Miguel da Boa Vista"', add
label define br10a_muni5yr_lbl 4217204 `"S�o Miguel do Oeste"', add
label define br10a_muni5yr_lbl 4217253 `"S�o Pedro de Alc�ntara"', add
label define br10a_muni5yr_lbl 4217303 `"Saudades"', add
label define br10a_muni5yr_lbl 4217402 `"Schroeder"', add
label define br10a_muni5yr_lbl 4217501 `"Seara"', add
label define br10a_muni5yr_lbl 4217550 `"Serra Alta"', add
label define br10a_muni5yr_lbl 4217600 `"Sider�polis"', add
label define br10a_muni5yr_lbl 4217709 `"Sombrio"', add
label define br10a_muni5yr_lbl 4217758 `"Sul Brasil"', add
label define br10a_muni5yr_lbl 4217808 `"Tai�"', add
label define br10a_muni5yr_lbl 4217907 `"Tangar�"', add
label define br10a_muni5yr_lbl 4217956 `"Tigrinhos"', add
label define br10a_muni5yr_lbl 4218004 `"Tijucas"', add
label define br10a_muni5yr_lbl 4218103 `"Timb� do Sul"', add
label define br10a_muni5yr_lbl 4218202 `"Timb�"', add
label define br10a_muni5yr_lbl 4218251 `"Timb� Grande"', add
label define br10a_muni5yr_lbl 4218301 `"Tr�s Barras"', add
label define br10a_muni5yr_lbl 4218350 `"Treviso"', add
label define br10a_muni5yr_lbl 4218400 `"Treze de Maio"', add
label define br10a_muni5yr_lbl 4218509 `"Treze T�lias"', add
label define br10a_muni5yr_lbl 4218608 `"Trombudo Central"', add
label define br10a_muni5yr_lbl 4218707 `"Tubar�o"', add
label define br10a_muni5yr_lbl 4218756 `"Tun�polis"', add
label define br10a_muni5yr_lbl 4218806 `"Turvo"', add
label define br10a_muni5yr_lbl 4218855 `"Uni�o do Oeste"', add
label define br10a_muni5yr_lbl 4218905 `"Urubici"', add
label define br10a_muni5yr_lbl 4218954 `"Urupema"', add
label define br10a_muni5yr_lbl 4219002 `"Urussanga"', add
label define br10a_muni5yr_lbl 4219101 `"Varge�o"', add
label define br10a_muni5yr_lbl 4219150 `"Vargem"', add
label define br10a_muni5yr_lbl 4219176 `"Vargem Bonita"', add
label define br10a_muni5yr_lbl 4219200 `"Vidal Ramos"', add
label define br10a_muni5yr_lbl 4219309 `"Videira"', add
label define br10a_muni5yr_lbl 4219358 `"Vitor Meireles"', add
label define br10a_muni5yr_lbl 4219408 `"Witmarsum"', add
label define br10a_muni5yr_lbl 4219507 `"Xanxer�"', add
label define br10a_muni5yr_lbl 4219606 `"Xavantina"', add
label define br10a_muni5yr_lbl 4219705 `"Xaxim"', add
label define br10a_muni5yr_lbl 4219853 `"Zort�a"', add
label define br10a_muni5yr_lbl 4299999 `"Santa Catarina, municipality unknown"', add
label define br10a_muni5yr_lbl 4300034 `"Acegu�"', add
label define br10a_muni5yr_lbl 4300059 `"�gua Santa"', add
label define br10a_muni5yr_lbl 4300109 `"Agudo"', add
label define br10a_muni5yr_lbl 4300208 `"Ajuricaba"', add
label define br10a_muni5yr_lbl 4300307 `"Alecrim"', add
label define br10a_muni5yr_lbl 4300406 `"Alegrete"', add
label define br10a_muni5yr_lbl 4300455 `"Alegria"', add
label define br10a_muni5yr_lbl 4300471 `"Almirante Tamandar� do Sul"', add
label define br10a_muni5yr_lbl 4300505 `"Alpestre"', add
label define br10a_muni5yr_lbl 4300554 `"Alto Alegre"', add
label define br10a_muni5yr_lbl 4300570 `"Alto Feliz"', add
label define br10a_muni5yr_lbl 4300604 `"Alvorada"', add
label define br10a_muni5yr_lbl 4300638 `"Amaral Ferrador"', add
label define br10a_muni5yr_lbl 4300646 `"Ametista do Sul"', add
label define br10a_muni5yr_lbl 4300661 `"Andr� da Rocha"', add
label define br10a_muni5yr_lbl 4300703 `"Anta Gorda"', add
label define br10a_muni5yr_lbl 4300802 `"Ant�nio Prado"', add
label define br10a_muni5yr_lbl 4300851 `"Arambar�"', add
label define br10a_muni5yr_lbl 4300877 `"Araric�"', add
label define br10a_muni5yr_lbl 4300901 `"Aratiba"', add
label define br10a_muni5yr_lbl 4301008 `"Arroio do Meio"', add
label define br10a_muni5yr_lbl 4301057 `"Arroio do Sal"', add
label define br10a_muni5yr_lbl 4301073 `"Arroio do Padre"', add
label define br10a_muni5yr_lbl 4301107 `"Arroio dos Ratos"', add
label define br10a_muni5yr_lbl 4301206 `"Arroio do Tigre"', add
label define br10a_muni5yr_lbl 4301305 `"Arroio Grande"', add
label define br10a_muni5yr_lbl 4301404 `"Arvorezinha"', add
label define br10a_muni5yr_lbl 4301503 `"Augusto Pestana"', add
label define br10a_muni5yr_lbl 4301552 `"�urea"', add
label define br10a_muni5yr_lbl 4301602 `"Bag�"', add
label define br10a_muni5yr_lbl 4301636 `"Balne�rio Pinhal"', add
label define br10a_muni5yr_lbl 4301651 `"Bar�o"', add
label define br10a_muni5yr_lbl 4301701 `"Bar�o de Cotegipe"', add
label define br10a_muni5yr_lbl 4301750 `"Bar�o do Triunfo"', add
label define br10a_muni5yr_lbl 4301800 `"Barrac�o"', add
label define br10a_muni5yr_lbl 4301859 `"Barra do Guarita"', add
label define br10a_muni5yr_lbl 4301875 `"Barra do Quara�"', add
label define br10a_muni5yr_lbl 4301909 `"Barra do Ribeiro"', add
label define br10a_muni5yr_lbl 4301925 `"Barra do Rio Azul"', add
label define br10a_muni5yr_lbl 4301958 `"Barra Funda"', add
label define br10a_muni5yr_lbl 4302006 `"Barros Cassal"', add
label define br10a_muni5yr_lbl 4302055 `"Benjamin Constant do Sul"', add
label define br10a_muni5yr_lbl 4302105 `"Bento Gon�alves"', add
label define br10a_muni5yr_lbl 4302154 `"Boa Vista das Miss�es"', add
label define br10a_muni5yr_lbl 4302204 `"Boa Vista do Buric�"', add
label define br10a_muni5yr_lbl 4302220 `"Boa Vista do Cadeado"', add
label define br10a_muni5yr_lbl 4302238 `"Boa Vista do Incra"', add
label define br10a_muni5yr_lbl 4302253 `"Boa Vista do Sul"', add
label define br10a_muni5yr_lbl 4302303 `"Bom Jesus"', add
label define br10a_muni5yr_lbl 4302352 `"Bom Princ�pio"', add
label define br10a_muni5yr_lbl 4302378 `"Bom Progresso"', add
label define br10a_muni5yr_lbl 4302402 `"Bom Retiro do Sul"', add
label define br10a_muni5yr_lbl 4302451 `"Boqueir�o do Le�o"', add
label define br10a_muni5yr_lbl 4302501 `"Bossoroca"', add
label define br10a_muni5yr_lbl 4302584 `"Bozano"', add
label define br10a_muni5yr_lbl 4302600 `"Braga"', add
label define br10a_muni5yr_lbl 4302659 `"Brochier"', add
label define br10a_muni5yr_lbl 4302709 `"Buti�"', add
label define br10a_muni5yr_lbl 4302808 `"Ca�apava do Sul"', add
label define br10a_muni5yr_lbl 4302907 `"Cacequi"', add
label define br10a_muni5yr_lbl 4303004 `"Cachoeira do Sul"', add
label define br10a_muni5yr_lbl 4303103 `"Cachoeirinha"', add
label define br10a_muni5yr_lbl 4303202 `"Cacique Doble"', add
label define br10a_muni5yr_lbl 4303301 `"Caibat�"', add
label define br10a_muni5yr_lbl 4303400 `"Cai�ara"', add
label define br10a_muni5yr_lbl 4303509 `"Camaqu�"', add
label define br10a_muni5yr_lbl 4303558 `"Camargo"', add
label define br10a_muni5yr_lbl 4303608 `"Cambar� do Sul"', add
label define br10a_muni5yr_lbl 4303673 `"Campestre da Serra"', add
label define br10a_muni5yr_lbl 4303707 `"Campina das Miss�es"', add
label define br10a_muni5yr_lbl 4303806 `"Campinas do Sul"', add
label define br10a_muni5yr_lbl 4303905 `"Campo Bom"', add
label define br10a_muni5yr_lbl 4304002 `"Campo Novo"', add
label define br10a_muni5yr_lbl 4304101 `"Campos Borges"', add
label define br10a_muni5yr_lbl 4304200 `"Candel�ria"', add
label define br10a_muni5yr_lbl 4304309 `"C�ndido God�i"', add
label define br10a_muni5yr_lbl 4304358 `"Candiota"', add
label define br10a_muni5yr_lbl 4304408 `"Canela"', add
label define br10a_muni5yr_lbl 4304507 `"Cangu�u"', add
label define br10a_muni5yr_lbl 4304606 `"Canoas"', add
label define br10a_muni5yr_lbl 4304614 `"Canudos do Vale"', add
label define br10a_muni5yr_lbl 4304622 `"Cap�o Bonito do Sul"', add
label define br10a_muni5yr_lbl 4304630 `"Cap�o da Canoa"', add
label define br10a_muni5yr_lbl 4304655 `"Cap�o do Cip�"', add
label define br10a_muni5yr_lbl 4304663 `"Cap�o do Le�o"', add
label define br10a_muni5yr_lbl 4304671 `"Capivari do Sul"', add
label define br10a_muni5yr_lbl 4304689 `"Capela de Santana"', add
label define br10a_muni5yr_lbl 4304697 `"Capit�o"', add
label define br10a_muni5yr_lbl 4304705 `"Carazinho"', add
label define br10a_muni5yr_lbl 4304713 `"Cara�"', add
label define br10a_muni5yr_lbl 4304804 `"Carlos Barbosa"', add
label define br10a_muni5yr_lbl 4304853 `"Carlos Gomes"', add
label define br10a_muni5yr_lbl 4304903 `"Casca"', add
label define br10a_muni5yr_lbl 4304952 `"Caseiros"', add
label define br10a_muni5yr_lbl 4305009 `"Catu�pe"', add
label define br10a_muni5yr_lbl 4305108 `"Caxias do Sul"', add
label define br10a_muni5yr_lbl 4305116 `"Centen�rio"', add
label define br10a_muni5yr_lbl 4305124 `"Cerrito"', add
label define br10a_muni5yr_lbl 4305132 `"Cerro Branco"', add
label define br10a_muni5yr_lbl 4305157 `"Cerro Grande"', add
label define br10a_muni5yr_lbl 4305173 `"Cerro Grande do Sul"', add
label define br10a_muni5yr_lbl 4305207 `"Cerro Largo"', add
label define br10a_muni5yr_lbl 4305306 `"Chapada"', add
label define br10a_muni5yr_lbl 4305355 `"Charqueadas"', add
label define br10a_muni5yr_lbl 4305371 `"Charrua"', add
label define br10a_muni5yr_lbl 4305405 `"Chiapetta"', add
label define br10a_muni5yr_lbl 4305439 `"Chu�"', add
label define br10a_muni5yr_lbl 4305447 `"Chuvisca"', add
label define br10a_muni5yr_lbl 4305454 `"Cidreira"', add
label define br10a_muni5yr_lbl 4305504 `"Cir�aco"', add
label define br10a_muni5yr_lbl 4305587 `"Colinas"', add
label define br10a_muni5yr_lbl 4305603 `"Colorado"', add
label define br10a_muni5yr_lbl 4305702 `"Condor"', add
label define br10a_muni5yr_lbl 4305801 `"Constantina"', add
label define br10a_muni5yr_lbl 4305835 `"Coqueiro Baixo"', add
label define br10a_muni5yr_lbl 4305850 `"Coqueiros do Sul"', add
label define br10a_muni5yr_lbl 4305871 `"Coronel Barros"', add
label define br10a_muni5yr_lbl 4305900 `"Coronel Bicaco"', add
label define br10a_muni5yr_lbl 4305934 `"Coronel Pilar"', add
label define br10a_muni5yr_lbl 4305959 `"Cotipor�"', add
label define br10a_muni5yr_lbl 4305975 `"Coxilha"', add
label define br10a_muni5yr_lbl 4306007 `"Crissiumal"', add
label define br10a_muni5yr_lbl 4306056 `"Cristal"', add
label define br10a_muni5yr_lbl 4306072 `"Cristal do Sul"', add
label define br10a_muni5yr_lbl 4306106 `"Cruz Alta"', add
label define br10a_muni5yr_lbl 4306130 `"Cruzaltense"', add
label define br10a_muni5yr_lbl 4306205 `"Cruzeiro do Sul"', add
label define br10a_muni5yr_lbl 4306304 `"David Canabarro"', add
label define br10a_muni5yr_lbl 4306320 `"Derrubadas"', add
label define br10a_muni5yr_lbl 4306353 `"Dezesseis de Novembro"', add
label define br10a_muni5yr_lbl 4306379 `"Dilermando de Aguiar"', add
label define br10a_muni5yr_lbl 4306403 `"Dois Irm�os"', add
label define br10a_muni5yr_lbl 4306429 `"Dois Irm�os das Miss�es"', add
label define br10a_muni5yr_lbl 4306452 `"Dois Lajeados"', add
label define br10a_muni5yr_lbl 4306502 `"Dom Feliciano"', add
label define br10a_muni5yr_lbl 4306551 `"Dom Pedro de Alc�ntara"', add
label define br10a_muni5yr_lbl 4306601 `"Dom Pedrito"', add
label define br10a_muni5yr_lbl 4306700 `"Dona Francisca"', add
label define br10a_muni5yr_lbl 4306734 `"Doutor Maur�cio Cardoso"', add
label define br10a_muni5yr_lbl 4306759 `"Doutor Ricardo"', add
label define br10a_muni5yr_lbl 4306767 `"Eldorado do Sul"', add
label define br10a_muni5yr_lbl 4306809 `"Encantado"', add
label define br10a_muni5yr_lbl 4306908 `"Encruzilhada do Sul"', add
label define br10a_muni5yr_lbl 4306924 `"Engenho Velho"', add
label define br10a_muni5yr_lbl 4306932 `"Entre-Iju�s"', add
label define br10a_muni5yr_lbl 4306957 `"Entre Rios do Sul"', add
label define br10a_muni5yr_lbl 4306973 `"Erebango"', add
label define br10a_muni5yr_lbl 4307005 `"Erechim"', add
label define br10a_muni5yr_lbl 4307054 `"Ernestina"', add
label define br10a_muni5yr_lbl 4307104 `"Herval"', add
label define br10a_muni5yr_lbl 4307203 `"Erval Grande"', add
label define br10a_muni5yr_lbl 4307302 `"Erval Seco"', add
label define br10a_muni5yr_lbl 4307401 `"Esmeralda"', add
label define br10a_muni5yr_lbl 4307450 `"Esperan�a do Sul"', add
label define br10a_muni5yr_lbl 4307500 `"Espumoso"', add
label define br10a_muni5yr_lbl 4307559 `"Esta��o"', add
label define br10a_muni5yr_lbl 4307609 `"Est�ncia Velha"', add
label define br10a_muni5yr_lbl 4307708 `"Esteio"', add
label define br10a_muni5yr_lbl 4307807 `"Estrela"', add
label define br10a_muni5yr_lbl 4307815 `"Estrela Velha"', add
label define br10a_muni5yr_lbl 4307831 `"Eug�nio de Castro"', add
label define br10a_muni5yr_lbl 4307864 `"Fagundes Varela"', add
label define br10a_muni5yr_lbl 4307906 `"Farroupilha"', add
label define br10a_muni5yr_lbl 4308003 `"Faxinal do Soturno"', add
label define br10a_muni5yr_lbl 4308052 `"Faxinalzinho"', add
label define br10a_muni5yr_lbl 4308078 `"Fazenda Vilanova"', add
label define br10a_muni5yr_lbl 4308102 `"Feliz"', add
label define br10a_muni5yr_lbl 4308201 `"Flores da Cunha"', add
label define br10a_muni5yr_lbl 4308250 `"Floriano Peixoto"', add
label define br10a_muni5yr_lbl 4308300 `"Fontoura Xavier"', add
label define br10a_muni5yr_lbl 4308409 `"Formigueiro"', add
label define br10a_muni5yr_lbl 4308433 `"Forquetinha"', add
label define br10a_muni5yr_lbl 4308458 `"Fortaleza dos Valos"', add
label define br10a_muni5yr_lbl 4308508 `"Frederico Westphalen"', add
label define br10a_muni5yr_lbl 4308607 `"Garibaldi"', add
label define br10a_muni5yr_lbl 4308656 `"Garruchos"', add
label define br10a_muni5yr_lbl 4308706 `"Gaurama"', add
label define br10a_muni5yr_lbl 4308805 `"General C�mara"', add
label define br10a_muni5yr_lbl 4308854 `"Gentil"', add
label define br10a_muni5yr_lbl 4308904 `"Get�lio Vargas"', add
label define br10a_muni5yr_lbl 4309001 `"Giru�"', add
label define br10a_muni5yr_lbl 4309050 `"Glorinha"', add
label define br10a_muni5yr_lbl 4309100 `"Gramado"', add
label define br10a_muni5yr_lbl 4309126 `"Gramado dos Loureiros"', add
label define br10a_muni5yr_lbl 4309159 `"Gramado Xavier"', add
label define br10a_muni5yr_lbl 4309209 `"Gravata�"', add
label define br10a_muni5yr_lbl 4309258 `"Guabiju"', add
label define br10a_muni5yr_lbl 4309308 `"Gua�ba"', add
label define br10a_muni5yr_lbl 4309407 `"Guapor�"', add
label define br10a_muni5yr_lbl 4309506 `"Guarani das Miss�es"', add
label define br10a_muni5yr_lbl 4309555 `"Harmonia"', add
label define br10a_muni5yr_lbl 4309571 `"Herveiras"', add
label define br10a_muni5yr_lbl 4309605 `"Horizontina"', add
label define br10a_muni5yr_lbl 4309654 `"Hulha Negra"', add
label define br10a_muni5yr_lbl 4309704 `"Humait�"', add
label define br10a_muni5yr_lbl 4309753 `"Ibarama"', add
label define br10a_muni5yr_lbl 4309803 `"Ibia��"', add
label define br10a_muni5yr_lbl 4309902 `"Ibiraiaras"', add
label define br10a_muni5yr_lbl 4309951 `"Ibirapuit�"', add
label define br10a_muni5yr_lbl 4310009 `"Ibirub�"', add
label define br10a_muni5yr_lbl 4310108 `"Igrejinha"', add
label define br10a_muni5yr_lbl 4310207 `"Iju�"', add
label define br10a_muni5yr_lbl 4310306 `"Il�polis"', add
label define br10a_muni5yr_lbl 4310330 `"Imb�"', add
label define br10a_muni5yr_lbl 4310363 `"Imigrante"', add
label define br10a_muni5yr_lbl 4310405 `"Independ�ncia"', add
label define br10a_muni5yr_lbl 4310413 `"Inhacor�"', add
label define br10a_muni5yr_lbl 4310439 `"Ip�"', add
label define br10a_muni5yr_lbl 4310462 `"Ipiranga do Sul"', add
label define br10a_muni5yr_lbl 4310504 `"Ira�"', add
label define br10a_muni5yr_lbl 4310538 `"Itaara"', add
label define br10a_muni5yr_lbl 4310553 `"Itacurubi"', add
label define br10a_muni5yr_lbl 4310579 `"Itapuca"', add
label define br10a_muni5yr_lbl 4310603 `"Itaqui"', add
label define br10a_muni5yr_lbl 4310652 `"Itati"', add
label define br10a_muni5yr_lbl 4310702 `"Itatiba do Sul"', add
label define br10a_muni5yr_lbl 4310751 `"Ivor�"', add
label define br10a_muni5yr_lbl 4310801 `"Ivoti"', add
label define br10a_muni5yr_lbl 4310850 `"Jaboticaba"', add
label define br10a_muni5yr_lbl 4310876 `"Jacuizinho"', add
label define br10a_muni5yr_lbl 4310900 `"Jacutinga"', add
label define br10a_muni5yr_lbl 4311007 `"Jaguar�o"', add
label define br10a_muni5yr_lbl 4311106 `"Jaguari"', add
label define br10a_muni5yr_lbl 4311122 `"Jaquirana"', add
label define br10a_muni5yr_lbl 4311130 `"Jari"', add
label define br10a_muni5yr_lbl 4311155 `"J�ia"', add
label define br10a_muni5yr_lbl 4311205 `"J�lio de Castilhos"', add
label define br10a_muni5yr_lbl 4311239 `"Lagoa Bonita do Sul"', add
label define br10a_muni5yr_lbl 4311254 `"Lago�o"', add
label define br10a_muni5yr_lbl 4311270 `"Lagoa dos Tr�s Cantos"', add
label define br10a_muni5yr_lbl 4311304 `"Lagoa Vermelha"', add
label define br10a_muni5yr_lbl 4311403 `"Lajeado"', add
label define br10a_muni5yr_lbl 4311429 `"Lajeado do Bugre"', add
label define br10a_muni5yr_lbl 4311502 `"Lavras do Sul"', add
label define br10a_muni5yr_lbl 4311601 `"Liberato Salzano"', add
label define br10a_muni5yr_lbl 4311627 `"Lindolfo Collor"', add
label define br10a_muni5yr_lbl 4311643 `"Linha Nova"', add
label define br10a_muni5yr_lbl 4311700 `"Machadinho"', add
label define br10a_muni5yr_lbl 4311718 `"Ma�ambar�"', add
label define br10a_muni5yr_lbl 4311734 `"Mampituba"', add
label define br10a_muni5yr_lbl 4311759 `"Manoel Viana"', add
label define br10a_muni5yr_lbl 4311775 `"Maquin�"', add
label define br10a_muni5yr_lbl 4311791 `"Marat�"', add
label define br10a_muni5yr_lbl 4311809 `"Marau"', add
label define br10a_muni5yr_lbl 4311908 `"Marcelino Ramos"', add
label define br10a_muni5yr_lbl 4311981 `"Mariana Pimentel"', add
label define br10a_muni5yr_lbl 4312005 `"Mariano Moro"', add
label define br10a_muni5yr_lbl 4312054 `"Marques de Souza"', add
label define br10a_muni5yr_lbl 4312104 `"Mata"', add
label define br10a_muni5yr_lbl 4312138 `"Mato Castelhano"', add
label define br10a_muni5yr_lbl 4312153 `"Mato Leit�o"', add
label define br10a_muni5yr_lbl 4312179 `"Mato Queimado"', add
label define br10a_muni5yr_lbl 4312203 `"Maximiliano de Almeida"', add
label define br10a_muni5yr_lbl 4312252 `"Minas do Le�o"', add
label define br10a_muni5yr_lbl 4312302 `"Miragua�"', add
label define br10a_muni5yr_lbl 4312351 `"Montauri"', add
label define br10a_muni5yr_lbl 4312377 `"Monte Alegre dos Campos"', add
label define br10a_muni5yr_lbl 4312385 `"Monte Belo do Sul"', add
label define br10a_muni5yr_lbl 4312401 `"Montenegro"', add
label define br10a_muni5yr_lbl 4312427 `"Morma�o"', add
label define br10a_muni5yr_lbl 4312443 `"Morrinhos do Sul"', add
label define br10a_muni5yr_lbl 4312450 `"Morro Redondo"', add
label define br10a_muni5yr_lbl 4312476 `"Morro Reuter"', add
label define br10a_muni5yr_lbl 4312500 `"Mostardas"', add
label define br10a_muni5yr_lbl 4312609 `"Mu�um"', add
label define br10a_muni5yr_lbl 4312617 `"Muitos Cap�es"', add
label define br10a_muni5yr_lbl 4312625 `"Muliterno"', add
label define br10a_muni5yr_lbl 4312658 `"N�o-Me-Toque"', add
label define br10a_muni5yr_lbl 4312674 `"Nicolau Vergueiro"', add
label define br10a_muni5yr_lbl 4312708 `"Nonoai"', add
label define br10a_muni5yr_lbl 4312757 `"Nova Alvorada"', add
label define br10a_muni5yr_lbl 4312807 `"Nova Ara��"', add
label define br10a_muni5yr_lbl 4312906 `"Nova Bassano"', add
label define br10a_muni5yr_lbl 4312955 `"Nova Boa Vista"', add
label define br10a_muni5yr_lbl 4313003 `"Nova Br�scia"', add
label define br10a_muni5yr_lbl 4313011 `"Nova Candel�ria"', add
label define br10a_muni5yr_lbl 4313037 `"Nova Esperan�a do Sul"', add
label define br10a_muni5yr_lbl 4313060 `"Nova Hartz"', add
label define br10a_muni5yr_lbl 4313086 `"Nova P�dua"', add
label define br10a_muni5yr_lbl 4313102 `"Nova Palma"', add
label define br10a_muni5yr_lbl 4313201 `"Nova Petr�polis"', add
label define br10a_muni5yr_lbl 4313300 `"Nova Prata"', add
label define br10a_muni5yr_lbl 4313334 `"Nova Ramada"', add
label define br10a_muni5yr_lbl 4313359 `"Nova Roma do Sul"', add
label define br10a_muni5yr_lbl 4313375 `"Nova Santa Rita"', add
label define br10a_muni5yr_lbl 4313391 `"Novo Cabrais"', add
label define br10a_muni5yr_lbl 4313409 `"Novo Hamburgo"', add
label define br10a_muni5yr_lbl 4313425 `"Novo Machado"', add
label define br10a_muni5yr_lbl 4313441 `"Novo Tiradentes"', add
label define br10a_muni5yr_lbl 4313466 `"Novo Xingu"', add
label define br10a_muni5yr_lbl 4313490 `"Novo Barreiro"', add
label define br10a_muni5yr_lbl 4313508 `"Os�rio"', add
label define br10a_muni5yr_lbl 4313607 `"Paim Filho"', add
label define br10a_muni5yr_lbl 4313656 `"Palmares do Sul"', add
label define br10a_muni5yr_lbl 4313706 `"Palmeira das Miss�es"', add
label define br10a_muni5yr_lbl 4313805 `"Palmitinho"', add
label define br10a_muni5yr_lbl 4313904 `"Panambi"', add
label define br10a_muni5yr_lbl 4313953 `"Pantano Grande"', add
label define br10a_muni5yr_lbl 4314001 `"Para�"', add
label define br10a_muni5yr_lbl 4314027 `"Para�so do Sul"', add
label define br10a_muni5yr_lbl 4314035 `"Pareci Novo"', add
label define br10a_muni5yr_lbl 4314050 `"Parob�"', add
label define br10a_muni5yr_lbl 4314068 `"Passa Sete"', add
label define br10a_muni5yr_lbl 4314076 `"Passo do Sobrado"', add
label define br10a_muni5yr_lbl 4314100 `"Passo Fundo"', add
label define br10a_muni5yr_lbl 4314134 `"Paulo Bento"', add
label define br10a_muni5yr_lbl 4314159 `"Paverama"', add
label define br10a_muni5yr_lbl 4314175 `"Pedras Altas"', add
label define br10a_muni5yr_lbl 4314209 `"Pedro Os�rio"', add
label define br10a_muni5yr_lbl 4314308 `"Peju�ara"', add
label define br10a_muni5yr_lbl 4314407 `"Pelotas"', add
label define br10a_muni5yr_lbl 4314423 `"Picada Caf�"', add
label define br10a_muni5yr_lbl 4314456 `"Pinhal"', add
label define br10a_muni5yr_lbl 4314464 `"Pinhal da Serra"', add
label define br10a_muni5yr_lbl 4314472 `"Pinhal Grande"', add
label define br10a_muni5yr_lbl 4314498 `"Pinheirinho do Vale"', add
label define br10a_muni5yr_lbl 4314506 `"Pinheiro Machado"', add
label define br10a_muni5yr_lbl 4314555 `"Pirap�"', add
label define br10a_muni5yr_lbl 4314605 `"Piratini"', add
label define br10a_muni5yr_lbl 4314704 `"Planalto"', add
label define br10a_muni5yr_lbl 4314753 `"Po�o das Antas"', add
label define br10a_muni5yr_lbl 4314779 `"Pont�o"', add
label define br10a_muni5yr_lbl 4314787 `"Ponte Preta"', add
label define br10a_muni5yr_lbl 4314803 `"Port�o"', add
label define br10a_muni5yr_lbl 4314902 `"Porto Alegre"', add
label define br10a_muni5yr_lbl 4315008 `"Porto Lucena"', add
label define br10a_muni5yr_lbl 4315057 `"Porto Mau�"', add
label define br10a_muni5yr_lbl 4315073 `"Porto Vera Cruz"', add
label define br10a_muni5yr_lbl 4315107 `"Porto Xavier"', add
label define br10a_muni5yr_lbl 4315131 `"Pouso Novo"', add
label define br10a_muni5yr_lbl 4315149 `"Presidente Lucena"', add
label define br10a_muni5yr_lbl 4315156 `"Progresso"', add
label define br10a_muni5yr_lbl 4315172 `"Prot�sio Alves"', add
label define br10a_muni5yr_lbl 4315206 `"Putinga"', add
label define br10a_muni5yr_lbl 4315305 `"Quara�"', add
label define br10a_muni5yr_lbl 4315313 `"Quatro Irm�os"', add
label define br10a_muni5yr_lbl 4315321 `"Quevedos"', add
label define br10a_muni5yr_lbl 4315354 `"Quinze de Novembro"', add
label define br10a_muni5yr_lbl 4315404 `"Redentora"', add
label define br10a_muni5yr_lbl 4315453 `"Relvado"', add
label define br10a_muni5yr_lbl 4315503 `"Restinga Seca"', add
label define br10a_muni5yr_lbl 4315552 `"Rio dos �ndios"', add
label define br10a_muni5yr_lbl 4315602 `"Rio Grande"', add
label define br10a_muni5yr_lbl 4315701 `"Rio Pardo"', add
label define br10a_muni5yr_lbl 4315750 `"Riozinho"', add
label define br10a_muni5yr_lbl 4315800 `"Roca Sales"', add
label define br10a_muni5yr_lbl 4315909 `"Rodeio Bonito"', add
label define br10a_muni5yr_lbl 4315958 `"Rolador"', add
label define br10a_muni5yr_lbl 4316006 `"Rolante"', add
label define br10a_muni5yr_lbl 4316105 `"Ronda Alta"', add
label define br10a_muni5yr_lbl 4316204 `"Rondinha"', add
label define br10a_muni5yr_lbl 4316303 `"Roque Gonzales"', add
label define br10a_muni5yr_lbl 4316402 `"Ros�rio do Sul"', add
label define br10a_muni5yr_lbl 4316428 `"Sagrada Fam�lia"', add
label define br10a_muni5yr_lbl 4316436 `"Saldanha Marinho"', add
label define br10a_muni5yr_lbl 4316451 `"Salto do Jacu�"', add
label define br10a_muni5yr_lbl 4316477 `"Salvador das Miss�es"', add
label define br10a_muni5yr_lbl 4316501 `"Salvador do Sul"', add
label define br10a_muni5yr_lbl 4316600 `"Sananduva"', add
label define br10a_muni5yr_lbl 4316709 `"Santa B�rbara do Sul"', add
label define br10a_muni5yr_lbl 4316733 `"Santa Cec�lia do Sul"', add
label define br10a_muni5yr_lbl 4316758 `"Santa Clara do Sul"', add
label define br10a_muni5yr_lbl 4316808 `"Santa Cruz do Sul"', add
label define br10a_muni5yr_lbl 4316907 `"Santa Maria"', add
label define br10a_muni5yr_lbl 4316956 `"Santa Maria do Herval"', add
label define br10a_muni5yr_lbl 4316972 `"Santa Margarida do Sul"', add
label define br10a_muni5yr_lbl 4317004 `"Santana da Boa Vista"', add
label define br10a_muni5yr_lbl 4317103 `"Sant'Ana do Livramento"', add
label define br10a_muni5yr_lbl 4317202 `"Santa Rosa"', add
label define br10a_muni5yr_lbl 4317251 `"Santa Tereza"', add
label define br10a_muni5yr_lbl 4317301 `"Santa Vit�ria do Palmar"', add
label define br10a_muni5yr_lbl 4317400 `"Santiago"', add
label define br10a_muni5yr_lbl 4317509 `"Santo �ngelo"', add
label define br10a_muni5yr_lbl 4317558 `"Santo Ant�nio do Palma"', add
label define br10a_muni5yr_lbl 4317608 `"Santo Ant�nio da Patrulha"', add
label define br10a_muni5yr_lbl 4317707 `"Santo Ant�nio das Miss�es"', add
label define br10a_muni5yr_lbl 4317756 `"Santo Ant�nio do Planalto"', add
label define br10a_muni5yr_lbl 4317806 `"Santo Augusto"', add
label define br10a_muni5yr_lbl 4317905 `"Santo Cristo"', add
label define br10a_muni5yr_lbl 4317954 `"Santo Expedito do Sul"', add
label define br10a_muni5yr_lbl 4318002 `"S�o Borja"', add
label define br10a_muni5yr_lbl 4318051 `"S�o Domingos do Sul"', add
label define br10a_muni5yr_lbl 4318101 `"S�o Francisco de Assis"', add
label define br10a_muni5yr_lbl 4318200 `"S�o Francisco de Paula"', add
label define br10a_muni5yr_lbl 4318309 `"S�o Gabriel"', add
label define br10a_muni5yr_lbl 4318408 `"S�o Jer�nimo"', add
label define br10a_muni5yr_lbl 4318424 `"S�o Jo�o da Urtiga"', add
label define br10a_muni5yr_lbl 4318432 `"S�o Jo�o do Pol�sine"', add
label define br10a_muni5yr_lbl 4318440 `"S�o Jorge"', add
label define br10a_muni5yr_lbl 4318457 `"S�o Jos� das Miss�es"', add
label define br10a_muni5yr_lbl 4318465 `"S�o Jos� do Herval"', add
label define br10a_muni5yr_lbl 4318481 `"S�o Jos� do Hort�ncio"', add
label define br10a_muni5yr_lbl 4318499 `"S�o Jos� do Inhacor�"', add
label define br10a_muni5yr_lbl 4318507 `"S�o Jos� do Norte"', add
label define br10a_muni5yr_lbl 4318606 `"S�o Jos� do Ouro"', add
label define br10a_muni5yr_lbl 4318614 `"S�o Jos� do Sul"', add
label define br10a_muni5yr_lbl 4318622 `"S�o Jos� dos Ausentes"', add
label define br10a_muni5yr_lbl 4318705 `"S�o Leopoldo"', add
label define br10a_muni5yr_lbl 4318804 `"S�o Louren�o do Sul"', add
label define br10a_muni5yr_lbl 4318903 `"S�o Luiz Gonzaga"', add
label define br10a_muni5yr_lbl 4319000 `"S�o Marcos"', add
label define br10a_muni5yr_lbl 4319109 `"S�o Martinho"', add
label define br10a_muni5yr_lbl 4319125 `"S�o Martinho da Serra"', add
label define br10a_muni5yr_lbl 4319158 `"S�o Miguel das Miss�es"', add
label define br10a_muni5yr_lbl 4319208 `"S�o Nicolau"', add
label define br10a_muni5yr_lbl 4319307 `"S�o Paulo das Miss�es"', add
label define br10a_muni5yr_lbl 4319356 `"S�o Pedro da Serra"', add
label define br10a_muni5yr_lbl 4319364 `"S�o Pedro das Miss�es"', add
label define br10a_muni5yr_lbl 4319372 `"S�o Pedro do Buti�"', add
label define br10a_muni5yr_lbl 4319406 `"S�o Pedro do Sul"', add
label define br10a_muni5yr_lbl 4319505 `"S�o Sebasti�o do Ca�"', add
label define br10a_muni5yr_lbl 4319604 `"S�o Sep�"', add
label define br10a_muni5yr_lbl 4319703 `"S�o Valentim"', add
label define br10a_muni5yr_lbl 4319711 `"S�o Valentim do Sul"', add
label define br10a_muni5yr_lbl 4319737 `"S�o Val�rio do Sul"', add
label define br10a_muni5yr_lbl 4319752 `"S�o Vendelino"', add
label define br10a_muni5yr_lbl 4319802 `"S�o Vicente do Sul"', add
label define br10a_muni5yr_lbl 4319901 `"Sapiranga"', add
label define br10a_muni5yr_lbl 4320008 `"Sapucaia do Sul"', add
label define br10a_muni5yr_lbl 4320107 `"Sarandi"', add
label define br10a_muni5yr_lbl 4320206 `"Seberi"', add
label define br10a_muni5yr_lbl 4320230 `"Sede Nova"', add
label define br10a_muni5yr_lbl 4320263 `"Segredo"', add
label define br10a_muni5yr_lbl 4320305 `"Selbach"', add
label define br10a_muni5yr_lbl 4320321 `"Senador Salgado Filho"', add
label define br10a_muni5yr_lbl 4320354 `"Sentinela do Sul"', add
label define br10a_muni5yr_lbl 4320404 `"Serafina Corr�a"', add
label define br10a_muni5yr_lbl 4320453 `"S�rio"', add
label define br10a_muni5yr_lbl 4320503 `"Sert�o"', add
label define br10a_muni5yr_lbl 4320552 `"Sert�o Santana"', add
label define br10a_muni5yr_lbl 4320578 `"Sete de Setembro"', add
label define br10a_muni5yr_lbl 4320602 `"Severiano de Almeida"', add
label define br10a_muni5yr_lbl 4320651 `"Silveira Martins"', add
label define br10a_muni5yr_lbl 4320677 `"Sinimbu"', add
label define br10a_muni5yr_lbl 4320701 `"Sobradinho"', add
label define br10a_muni5yr_lbl 4320800 `"Soledade"', add
label define br10a_muni5yr_lbl 4320859 `"Taba�"', add
label define br10a_muni5yr_lbl 4320909 `"Tapejara"', add
label define br10a_muni5yr_lbl 4321006 `"Tapera"', add
label define br10a_muni5yr_lbl 4321105 `"Tapes"', add
label define br10a_muni5yr_lbl 4321204 `"Taquara"', add
label define br10a_muni5yr_lbl 4321303 `"Taquari"', add
label define br10a_muni5yr_lbl 4321329 `"Taquaru�u do Sul"', add
label define br10a_muni5yr_lbl 4321352 `"Tavares"', add
label define br10a_muni5yr_lbl 4321402 `"Tenente Portela"', add
label define br10a_muni5yr_lbl 4321436 `"Terra de Areia"', add
label define br10a_muni5yr_lbl 4321451 `"Teut�nia"', add
label define br10a_muni5yr_lbl 4321469 `"Tio Hugo"', add
label define br10a_muni5yr_lbl 4321477 `"Tiradentes do Sul"', add
label define br10a_muni5yr_lbl 4321493 `"Toropi"', add
label define br10a_muni5yr_lbl 4321501 `"Torres"', add
label define br10a_muni5yr_lbl 4321600 `"Tramanda�"', add
label define br10a_muni5yr_lbl 4321626 `"Travesseiro"', add
label define br10a_muni5yr_lbl 4321634 `"Tr�s Arroios"', add
label define br10a_muni5yr_lbl 4321667 `"Tr�s Cachoeiras"', add
label define br10a_muni5yr_lbl 4321709 `"Tr�s Coroas"', add
label define br10a_muni5yr_lbl 4321808 `"Tr�s de Maio"', add
label define br10a_muni5yr_lbl 4321832 `"Tr�s Forquilhas"', add
label define br10a_muni5yr_lbl 4321857 `"Tr�s Palmeiras"', add
label define br10a_muni5yr_lbl 4321907 `"Tr�s Passos"', add
label define br10a_muni5yr_lbl 4321956 `"Trindade do Sul"', add
label define br10a_muni5yr_lbl 4322004 `"Triunfo"', add
label define br10a_muni5yr_lbl 4322103 `"Tucunduva"', add
label define br10a_muni5yr_lbl 4322152 `"Tunas"', add
label define br10a_muni5yr_lbl 4322186 `"Tupanci do Sul"', add
label define br10a_muni5yr_lbl 4322202 `"Tupanciret�"', add
label define br10a_muni5yr_lbl 4322251 `"Tupandi"', add
label define br10a_muni5yr_lbl 4322301 `"Tuparendi"', add
label define br10a_muni5yr_lbl 4322327 `"Turu�u"', add
label define br10a_muni5yr_lbl 4322343 `"Ubiretama"', add
label define br10a_muni5yr_lbl 4322350 `"Uni�o da Serra"', add
label define br10a_muni5yr_lbl 4322376 `"Unistalda"', add
label define br10a_muni5yr_lbl 4322400 `"Uruguaiana"', add
label define br10a_muni5yr_lbl 4322509 `"Vacaria"', add
label define br10a_muni5yr_lbl 4322525 `"Vale Verde"', add
label define br10a_muni5yr_lbl 4322533 `"Vale do Sol"', add
label define br10a_muni5yr_lbl 4322541 `"Vale Real"', add
label define br10a_muni5yr_lbl 4322558 `"Vanini"', add
label define br10a_muni5yr_lbl 4322608 `"Ven�ncio Aires"', add
label define br10a_muni5yr_lbl 4322707 `"Vera Cruz"', add
label define br10a_muni5yr_lbl 4322806 `"Veran�polis"', add
label define br10a_muni5yr_lbl 4322855 `"Vespasiano Correa"', add
label define br10a_muni5yr_lbl 4322905 `"Viadutos"', add
label define br10a_muni5yr_lbl 4323002 `"Viam�o"', add
label define br10a_muni5yr_lbl 4323101 `"Vicente Dutra"', add
label define br10a_muni5yr_lbl 4323200 `"Victor Graeff"', add
label define br10a_muni5yr_lbl 4323309 `"Vila Flores"', add
label define br10a_muni5yr_lbl 4323358 `"Vila L�ngaro"', add
label define br10a_muni5yr_lbl 4323408 `"Vila Maria"', add
label define br10a_muni5yr_lbl 4323457 `"Vila Nova do Sul"', add
label define br10a_muni5yr_lbl 4323507 `"Vista Alegre"', add
label define br10a_muni5yr_lbl 4323606 `"Vista Alegre do Prata"', add
label define br10a_muni5yr_lbl 4323705 `"Vista Ga�cha"', add
label define br10a_muni5yr_lbl 4323754 `"Vit�ria das Miss�es"', add
label define br10a_muni5yr_lbl 4323770 `"Westfalia"', add
label define br10a_muni5yr_lbl 4323804 `"Xangri-l�"', add
label define br10a_muni5yr_lbl 4399999 `"Rio Grande do Sul, municipality unknown"', add
label define br10a_muni5yr_lbl 5000203 `"�gua Clara"', add
label define br10a_muni5yr_lbl 5000252 `"Alcin�polis"', add
label define br10a_muni5yr_lbl 5000609 `"Amambai"', add
label define br10a_muni5yr_lbl 5000708 `"Anast�cio"', add
label define br10a_muni5yr_lbl 5000807 `"Anauril�ndia"', add
label define br10a_muni5yr_lbl 5000856 `"Ang�lica"', add
label define br10a_muni5yr_lbl 5000906 `"Ant�nio Jo�o"', add
label define br10a_muni5yr_lbl 5001003 `"Aparecida do Taboado"', add
label define br10a_muni5yr_lbl 5001102 `"Aquidauana"', add
label define br10a_muni5yr_lbl 5001243 `"Aral Moreira"', add
label define br10a_muni5yr_lbl 5001508 `"Bandeirantes"', add
label define br10a_muni5yr_lbl 5001904 `"Bataguassu"', add
label define br10a_muni5yr_lbl 5002001 `"Bataypor�"', add
label define br10a_muni5yr_lbl 5002100 `"Bela Vista"', add
label define br10a_muni5yr_lbl 5002159 `"Bodoquena"', add
label define br10a_muni5yr_lbl 5002209 `"Bonito"', add
label define br10a_muni5yr_lbl 5002308 `"Brasil�ndia"', add
label define br10a_muni5yr_lbl 5002407 `"Caarap�"', add
label define br10a_muni5yr_lbl 5002605 `"Camapu�"', add
label define br10a_muni5yr_lbl 5002704 `"Campo Grande"', add
label define br10a_muni5yr_lbl 5002803 `"Caracol"', add
label define br10a_muni5yr_lbl 5002902 `"Cassil�ndia"', add
label define br10a_muni5yr_lbl 5002951 `"Chapad�o do Sul"', add
label define br10a_muni5yr_lbl 5003108 `"Corguinho"', add
label define br10a_muni5yr_lbl 5003157 `"Coronel Sapucaia"', add
label define br10a_muni5yr_lbl 5003207 `"Corumb�"', add
label define br10a_muni5yr_lbl 5003256 `"Costa Rica"', add
label define br10a_muni5yr_lbl 5003306 `"Coxim"', add
label define br10a_muni5yr_lbl 5003454 `"Deod�polis"', add
label define br10a_muni5yr_lbl 5003488 `"Dois Irm�os do Buriti"', add
label define br10a_muni5yr_lbl 5003504 `"Douradina"', add
label define br10a_muni5yr_lbl 5003702 `"Dourados"', add
label define br10a_muni5yr_lbl 5003751 `"Eldorado"', add
label define br10a_muni5yr_lbl 5003801 `"F�tima do Sul"', add
label define br10a_muni5yr_lbl 5003900 `"Figueir�o"', add
label define br10a_muni5yr_lbl 5004007 `"Gl�ria de Dourados"', add
label define br10a_muni5yr_lbl 5004106 `"Guia Lopes da Laguna"', add
label define br10a_muni5yr_lbl 5004304 `"Iguatemi"', add
label define br10a_muni5yr_lbl 5004403 `"Inoc�ncia"', add
label define br10a_muni5yr_lbl 5004502 `"Itapor�"', add
label define br10a_muni5yr_lbl 5004601 `"Itaquira�"', add
label define br10a_muni5yr_lbl 5004700 `"Ivinhema"', add
label define br10a_muni5yr_lbl 5004809 `"Japor�"', add
label define br10a_muni5yr_lbl 5004908 `"Jaraguari"', add
label define br10a_muni5yr_lbl 5005004 `"Jardim"', add
label define br10a_muni5yr_lbl 5005103 `"Jate�"', add
label define br10a_muni5yr_lbl 5005152 `"Juti"', add
label define br10a_muni5yr_lbl 5005202 `"Lad�rio"', add
label define br10a_muni5yr_lbl 5005251 `"Laguna Carap�"', add
label define br10a_muni5yr_lbl 5005400 `"Maracaju"', add
label define br10a_muni5yr_lbl 5005608 `"Miranda"', add
label define br10a_muni5yr_lbl 5005681 `"Mundo Novo"', add
label define br10a_muni5yr_lbl 5005707 `"Navira�"', add
label define br10a_muni5yr_lbl 5005806 `"Nioaque"', add
label define br10a_muni5yr_lbl 5006002 `"Nova Alvorada do Sul"', add
label define br10a_muni5yr_lbl 5006200 `"Nova Andradina"', add
label define br10a_muni5yr_lbl 5006259 `"Novo Horizonte do Sul"', add
label define br10a_muni5yr_lbl 5006309 `"Parana�ba"', add
label define br10a_muni5yr_lbl 5006358 `"Paranhos"', add
label define br10a_muni5yr_lbl 5006408 `"Pedro Gomes"', add
label define br10a_muni5yr_lbl 5006606 `"Ponta Por�"', add
label define br10a_muni5yr_lbl 5006903 `"Porto Murtinho"', add
label define br10a_muni5yr_lbl 5007109 `"Ribas do Rio Pardo"', add
label define br10a_muni5yr_lbl 5007208 `"Rio Brilhante"', add
label define br10a_muni5yr_lbl 5007307 `"Rio Negro"', add
label define br10a_muni5yr_lbl 5007406 `"Rio Verde de Mato Grosso"', add
label define br10a_muni5yr_lbl 5007505 `"Rochedo"', add
label define br10a_muni5yr_lbl 5007554 `"Santa Rita do Pardo"', add
label define br10a_muni5yr_lbl 5007695 `"S�o Gabriel do Oeste"', add
label define br10a_muni5yr_lbl 5007703 `"Sete Quedas"', add
label define br10a_muni5yr_lbl 5007802 `"Selv�ria"', add
label define br10a_muni5yr_lbl 5007901 `"Sidrol�ndia"', add
label define br10a_muni5yr_lbl 5007935 `"Sonora"', add
label define br10a_muni5yr_lbl 5007950 `"Tacuru"', add
label define br10a_muni5yr_lbl 5007976 `"Taquarussu"', add
label define br10a_muni5yr_lbl 5008008 `"Terenos"', add
label define br10a_muni5yr_lbl 5008305 `"Tr�s Lagoas"', add
label define br10a_muni5yr_lbl 5008404 `"Vicentina"', add
label define br10a_muni5yr_lbl 5099999 `"Mato Grosso do Sul, municipality unknown"', add
label define br10a_muni5yr_lbl 5100102 `"Acorizal"', add
label define br10a_muni5yr_lbl 5100201 `"�gua Boa"', add
label define br10a_muni5yr_lbl 5100250 `"Alta Floresta"', add
label define br10a_muni5yr_lbl 5100300 `"Alto Araguaia"', add
label define br10a_muni5yr_lbl 5100359 `"Alto Boa Vista"', add
label define br10a_muni5yr_lbl 5100409 `"Alto Gar�as"', add
label define br10a_muni5yr_lbl 5100508 `"Alto Paraguai"', add
label define br10a_muni5yr_lbl 5100607 `"Alto Taquari"', add
label define br10a_muni5yr_lbl 5100805 `"Apiac�s"', add
label define br10a_muni5yr_lbl 5101001 `"Araguaiana"', add
label define br10a_muni5yr_lbl 5101209 `"Araguainha"', add
label define br10a_muni5yr_lbl 5101258 `"Araputanga"', add
label define br10a_muni5yr_lbl 5101308 `"Aren�polis"', add
label define br10a_muni5yr_lbl 5101407 `"Aripuan�"', add
label define br10a_muni5yr_lbl 5101605 `"Bar�o de Melga�o"', add
label define br10a_muni5yr_lbl 5101704 `"Barra do Bugres"', add
label define br10a_muni5yr_lbl 5101803 `"Barra do Gar�as"', add
label define br10a_muni5yr_lbl 5101852 `"Bom Jesus do Araguaia"', add
label define br10a_muni5yr_lbl 5101902 `"Brasnorte"', add
label define br10a_muni5yr_lbl 5102504 `"C�ceres"', add
label define br10a_muni5yr_lbl 5102603 `"Campin�polis"', add
label define br10a_muni5yr_lbl 5102637 `"Campo Novo do Parecis"', add
label define br10a_muni5yr_lbl 5102678 `"Campo Verde"', add
label define br10a_muni5yr_lbl 5102686 `"Campos de J�lio"', add
label define br10a_muni5yr_lbl 5102694 `"Canabrava do Norte"', add
label define br10a_muni5yr_lbl 5102702 `"Canarana"', add
label define br10a_muni5yr_lbl 5102793 `"Carlinda"', add
label define br10a_muni5yr_lbl 5102850 `"Castanheira"', add
label define br10a_muni5yr_lbl 5103007 `"Chapada dos Guimar�es"', add
label define br10a_muni5yr_lbl 5103056 `"Cl�udia"', add
label define br10a_muni5yr_lbl 5103106 `"Cocalinho"', add
label define br10a_muni5yr_lbl 5103205 `"Col�der"', add
label define br10a_muni5yr_lbl 5103254 `"Colniza"', add
label define br10a_muni5yr_lbl 5103304 `"Comodoro"', add
label define br10a_muni5yr_lbl 5103353 `"Confresa"', add
label define br10a_muni5yr_lbl 5103361 `"Conquista D'Oeste"', add
label define br10a_muni5yr_lbl 5103379 `"Cotrigua�u"', add
label define br10a_muni5yr_lbl 5103403 `"Cuiab�"', add
label define br10a_muni5yr_lbl 5103437 `"Curvel�ndia"', add
label define br10a_muni5yr_lbl 5103452 `"Denise"', add
label define br10a_muni5yr_lbl 5103502 `"Diamantino"', add
label define br10a_muni5yr_lbl 5103601 `"Dom Aquino"', add
label define br10a_muni5yr_lbl 5103700 `"Feliz Natal"', add
label define br10a_muni5yr_lbl 5103809 `"Figueir�polis D'Oeste"', add
label define br10a_muni5yr_lbl 5103858 `"Ga�cha do Norte"', add
label define br10a_muni5yr_lbl 5103908 `"General Carneiro"', add
label define br10a_muni5yr_lbl 5103957 `"Gl�ria D'Oeste"', add
label define br10a_muni5yr_lbl 5104104 `"Guarant� do Norte"', add
label define br10a_muni5yr_lbl 5104203 `"Guiratinga"', add
label define br10a_muni5yr_lbl 5104500 `"Indiava�"', add
label define br10a_muni5yr_lbl 5104526 `"Ipiranga do Norte"', add
label define br10a_muni5yr_lbl 5104542 `"Itanhang�"', add
label define br10a_muni5yr_lbl 5104559 `"Ita�ba"', add
label define br10a_muni5yr_lbl 5104609 `"Itiquira"', add
label define br10a_muni5yr_lbl 5104807 `"Jaciara"', add
label define br10a_muni5yr_lbl 5104906 `"Jangada"', add
label define br10a_muni5yr_lbl 5105002 `"Jauru"', add
label define br10a_muni5yr_lbl 5105101 `"Juara"', add
label define br10a_muni5yr_lbl 5105150 `"Ju�na"', add
label define br10a_muni5yr_lbl 5105176 `"Juruena"', add
label define br10a_muni5yr_lbl 5105200 `"Juscimeira"', add
label define br10a_muni5yr_lbl 5105234 `"Lambari D'Oeste"', add
label define br10a_muni5yr_lbl 5105259 `"Lucas do Rio Verde"', add
label define br10a_muni5yr_lbl 5105309 `"Luciara"', add
label define br10a_muni5yr_lbl 5105507 `"Vila Bela da Sant�ssima Trindade"', add
label define br10a_muni5yr_lbl 5105580 `"Marcel�ndia"', add
label define br10a_muni5yr_lbl 5105606 `"Matup�"', add
label define br10a_muni5yr_lbl 5105622 `"Mirassol d'Oeste"', add
label define br10a_muni5yr_lbl 5105903 `"Nobres"', add
label define br10a_muni5yr_lbl 5106000 `"Nortel�ndia"', add
label define br10a_muni5yr_lbl 5106109 `"Nossa Senhora do Livramento"', add
label define br10a_muni5yr_lbl 5106158 `"Nova Bandeirantes"', add
label define br10a_muni5yr_lbl 5106174 `"Nova Nazar�"', add
label define br10a_muni5yr_lbl 5106182 `"Nova Lacerda"', add
label define br10a_muni5yr_lbl 5106190 `"Nova Santa Helena"', add
label define br10a_muni5yr_lbl 5106208 `"Nova Brasil�ndia"', add
label define br10a_muni5yr_lbl 5106216 `"Nova Cana� do Norte"', add
label define br10a_muni5yr_lbl 5106224 `"Nova Mutum"', add
label define br10a_muni5yr_lbl 5106232 `"Nova Ol�mpia"', add
label define br10a_muni5yr_lbl 5106240 `"Nova Ubirat�"', add
label define br10a_muni5yr_lbl 5106257 `"Nova Xavantina"', add
label define br10a_muni5yr_lbl 5106265 `"Novo Mundo"', add
label define br10a_muni5yr_lbl 5106273 `"Novo Horizonte do Norte"', add
label define br10a_muni5yr_lbl 5106281 `"Novo S�o Joaquim"', add
label define br10a_muni5yr_lbl 5106299 `"Parana�ta"', add
label define br10a_muni5yr_lbl 5106307 `"Paranatinga"', add
label define br10a_muni5yr_lbl 5106315 `"Novo Santo Ant�nio"', add
label define br10a_muni5yr_lbl 5106372 `"Pedra Preta"', add
label define br10a_muni5yr_lbl 5106422 `"Peixoto de Azevedo"', add
label define br10a_muni5yr_lbl 5106455 `"Planalto da Serra"', add
label define br10a_muni5yr_lbl 5106505 `"Pocon�"', add
label define br10a_muni5yr_lbl 5106653 `"Pontal do Araguaia"', add
label define br10a_muni5yr_lbl 5106703 `"Ponte Branca"', add
label define br10a_muni5yr_lbl 5106752 `"Pontes e Lacerda"', add
label define br10a_muni5yr_lbl 5106778 `"Porto Alegre do Norte"', add
label define br10a_muni5yr_lbl 5106802 `"Porto dos Ga�chos"', add
label define br10a_muni5yr_lbl 5106828 `"Porto Esperidi�o"', add
label define br10a_muni5yr_lbl 5106851 `"Porto Estrela"', add
label define br10a_muni5yr_lbl 5107008 `"Poxor�o"', add
label define br10a_muni5yr_lbl 5107040 `"Primavera do Leste"', add
label define br10a_muni5yr_lbl 5107065 `"Quer�ncia"', add
label define br10a_muni5yr_lbl 5107107 `"S�o Jos� dos Quatro Marcos"', add
label define br10a_muni5yr_lbl 5107156 `"Reserva do Caba�al"', add
label define br10a_muni5yr_lbl 5107180 `"Ribeir�o Cascalheira"', add
label define br10a_muni5yr_lbl 5107198 `"Ribeir�ozinho"', add
label define br10a_muni5yr_lbl 5107206 `"Rio Branco"', add
label define br10a_muni5yr_lbl 5107248 `"Santa Carmem"', add
label define br10a_muni5yr_lbl 5107263 `"Santo Afonso"', add
label define br10a_muni5yr_lbl 5107297 `"S�o Jos� do Povo"', add
label define br10a_muni5yr_lbl 5107305 `"S�o Jos� do Rio Claro"', add
label define br10a_muni5yr_lbl 5107354 `"S�o Jos� do Xingu"', add
label define br10a_muni5yr_lbl 5107404 `"S�o Pedro da Cipa"', add
label define br10a_muni5yr_lbl 5107578 `"Rondol�ndia"', add
label define br10a_muni5yr_lbl 5107602 `"Rondon�polis"', add
label define br10a_muni5yr_lbl 5107701 `"Ros�rio Oeste"', add
label define br10a_muni5yr_lbl 5107743 `"Santa Cruz do Xingu"', add
label define br10a_muni5yr_lbl 5107750 `"Salto do C�u"', add
label define br10a_muni5yr_lbl 5107768 `"Santa Rita do Trivelato"', add
label define br10a_muni5yr_lbl 5107776 `"Santa Terezinha"', add
label define br10a_muni5yr_lbl 5107792 `"Santo Ant�nio do Leste"', add
label define br10a_muni5yr_lbl 5107800 `"Santo Ant�nio do Leverger"', add
label define br10a_muni5yr_lbl 5107859 `"S�o F�lix do Araguaia"', add
label define br10a_muni5yr_lbl 5107875 `"Sapezal"', add
label define br10a_muni5yr_lbl 5107883 `"Serra Nova Dourada"', add
label define br10a_muni5yr_lbl 5107909 `"Sinop"', add
label define br10a_muni5yr_lbl 5107925 `"Sorriso"', add
label define br10a_muni5yr_lbl 5107941 `"Tabapor�"', add
label define br10a_muni5yr_lbl 5107958 `"Tangar� da Serra"', add
label define br10a_muni5yr_lbl 5108006 `"Tapurah"', add
label define br10a_muni5yr_lbl 5108055 `"Terra Nova do Norte"', add
label define br10a_muni5yr_lbl 5108105 `"Tesouro"', add
label define br10a_muni5yr_lbl 5108204 `"Torixor�u"', add
label define br10a_muni5yr_lbl 5108303 `"Uni�o do Sul"', add
label define br10a_muni5yr_lbl 5108352 `"Vale de S�o Domingos"', add
label define br10a_muni5yr_lbl 5108402 `"V�rzea Grande"', add
label define br10a_muni5yr_lbl 5108501 `"Vera"', add
label define br10a_muni5yr_lbl 5108600 `"Vila Rica"', add
label define br10a_muni5yr_lbl 5108808 `"Nova Guarita"', add
label define br10a_muni5yr_lbl 5108857 `"Nova Maril�ndia"', add
label define br10a_muni5yr_lbl 5108907 `"Nova Maring�"', add
label define br10a_muni5yr_lbl 5108956 `"Nova Monte Verde"', add
label define br10a_muni5yr_lbl 5199999 `"Mato Grosso, municipality unknown"', add
label define br10a_muni5yr_lbl 5200050 `"Abadia de Goi�s"', add
label define br10a_muni5yr_lbl 5200100 `"Abadi�nia"', add
label define br10a_muni5yr_lbl 5200134 `"Acre�na"', add
label define br10a_muni5yr_lbl 5200159 `"Adel�ndia"', add
label define br10a_muni5yr_lbl 5200175 `"�gua Fria de Goi�s"', add
label define br10a_muni5yr_lbl 5200209 `"�gua Limpa"', add
label define br10a_muni5yr_lbl 5200258 `"�guas Lindas de Goi�s"', add
label define br10a_muni5yr_lbl 5200308 `"Alex�nia"', add
label define br10a_muni5yr_lbl 5200506 `"Alo�ndia"', add
label define br10a_muni5yr_lbl 5200555 `"Alto Horizonte"', add
label define br10a_muni5yr_lbl 5200605 `"Alto Para�so de Goi�s"', add
label define br10a_muni5yr_lbl 5200803 `"Alvorada do Norte"', add
label define br10a_muni5yr_lbl 5200829 `"Amaralina"', add
label define br10a_muni5yr_lbl 5200852 `"Americano do Brasil"', add
label define br10a_muni5yr_lbl 5200902 `"Amorin�polis"', add
label define br10a_muni5yr_lbl 5201108 `"An�polis"', add
label define br10a_muni5yr_lbl 5201207 `"Anhanguera"', add
label define br10a_muni5yr_lbl 5201306 `"Anicuns"', add
label define br10a_muni5yr_lbl 5201405 `"Aparecida de Goi�nia"', add
label define br10a_muni5yr_lbl 5201454 `"Aparecida do Rio Doce"', add
label define br10a_muni5yr_lbl 5201504 `"Apor�"', add
label define br10a_muni5yr_lbl 5201603 `"Ara�u"', add
label define br10a_muni5yr_lbl 5201702 `"Aragar�as"', add
label define br10a_muni5yr_lbl 5201801 `"Aragoi�nia"', add
label define br10a_muni5yr_lbl 5202155 `"Araguapaz"', add
label define br10a_muni5yr_lbl 5202353 `"Aren�polis"', add
label define br10a_muni5yr_lbl 5202502 `"Aruan�"', add
label define br10a_muni5yr_lbl 5202601 `"Auril�ndia"', add
label define br10a_muni5yr_lbl 5202809 `"Avelin�polis"', add
label define br10a_muni5yr_lbl 5203104 `"Baliza"', add
label define br10a_muni5yr_lbl 5203203 `"Barro Alto"', add
label define br10a_muni5yr_lbl 5203302 `"Bela Vista de Goi�s"', add
label define br10a_muni5yr_lbl 5203401 `"Bom Jardim de Goi�s"', add
label define br10a_muni5yr_lbl 5203500 `"Bom Jesus de Goi�s"', add
label define br10a_muni5yr_lbl 5203559 `"Bonfin�polis"', add
label define br10a_muni5yr_lbl 5203575 `"Bon�polis"', add
label define br10a_muni5yr_lbl 5203609 `"Brazabrantes"', add
label define br10a_muni5yr_lbl 5203807 `"Brit�nia"', add
label define br10a_muni5yr_lbl 5203906 `"Buriti Alegre"', add
label define br10a_muni5yr_lbl 5203939 `"Buriti de Goi�s"', add
label define br10a_muni5yr_lbl 5203962 `"Buritin�polis"', add
label define br10a_muni5yr_lbl 5204003 `"Cabeceiras"', add
label define br10a_muni5yr_lbl 5204102 `"Cachoeira Alta"', add
label define br10a_muni5yr_lbl 5204201 `"Cachoeira de Goi�s"', add
label define br10a_muni5yr_lbl 5204250 `"Cachoeira Dourada"', add
label define br10a_muni5yr_lbl 5204300 `"Ca�u"', add
label define br10a_muni5yr_lbl 5204409 `"Caiap�nia"', add
label define br10a_muni5yr_lbl 5204508 `"Caldas Novas"', add
label define br10a_muni5yr_lbl 5204557 `"Caldazinha"', add
label define br10a_muni5yr_lbl 5204607 `"Campestre de Goi�s"', add
label define br10a_muni5yr_lbl 5204656 `"Campina�u"', add
label define br10a_muni5yr_lbl 5204706 `"Campinorte"', add
label define br10a_muni5yr_lbl 5204805 `"Campo Alegre de Goi�s"', add
label define br10a_muni5yr_lbl 5204854 `"Campo Limpo de Goi�s"', add
label define br10a_muni5yr_lbl 5204904 `"Campos Belos"', add
label define br10a_muni5yr_lbl 5204953 `"Campos Verdes"', add
label define br10a_muni5yr_lbl 5205000 `"Carmo do Rio Verde"', add
label define br10a_muni5yr_lbl 5205059 `"Castel�ndia"', add
label define br10a_muni5yr_lbl 5205109 `"Catal�o"', add
label define br10a_muni5yr_lbl 5205208 `"Catura�"', add
label define br10a_muni5yr_lbl 5205307 `"Cavalcante"', add
label define br10a_muni5yr_lbl 5205406 `"Ceres"', add
label define br10a_muni5yr_lbl 5205455 `"Cezarina"', add
label define br10a_muni5yr_lbl 5205471 `"Chapad�o do C�u"', add
label define br10a_muni5yr_lbl 5205497 `"Cidade Ocidental"', add
label define br10a_muni5yr_lbl 5205513 `"Cocalzinho de Goi�s"', add
label define br10a_muni5yr_lbl 5205521 `"Colinas do Sul"', add
label define br10a_muni5yr_lbl 5205703 `"C�rrego do Ouro"', add
label define br10a_muni5yr_lbl 5205802 `"Corumb� de Goi�s"', add
label define br10a_muni5yr_lbl 5205901 `"Corumba�ba"', add
label define br10a_muni5yr_lbl 5206206 `"Cristalina"', add
label define br10a_muni5yr_lbl 5206305 `"Cristian�polis"', add
label define br10a_muni5yr_lbl 5206404 `"Crix�s"', add
label define br10a_muni5yr_lbl 5206503 `"Crom�nia"', add
label define br10a_muni5yr_lbl 5206602 `"Cumari"', add
label define br10a_muni5yr_lbl 5206701 `"Damian�polis"', add
label define br10a_muni5yr_lbl 5206800 `"Damol�ndia"', add
label define br10a_muni5yr_lbl 5206909 `"Davin�polis"', add
label define br10a_muni5yr_lbl 5207105 `"Diorama"', add
label define br10a_muni5yr_lbl 5207253 `"Doverl�ndia"', add
label define br10a_muni5yr_lbl 5207352 `"Edealina"', add
label define br10a_muni5yr_lbl 5207402 `"Ed�ia"', add
label define br10a_muni5yr_lbl 5207501 `"Estrela do Norte"', add
label define br10a_muni5yr_lbl 5207535 `"Faina"', add
label define br10a_muni5yr_lbl 5207600 `"Fazenda Nova"', add
label define br10a_muni5yr_lbl 5207808 `"Firmin�polis"', add
label define br10a_muni5yr_lbl 5207907 `"Flores de Goi�s"', add
label define br10a_muni5yr_lbl 5208004 `"Formosa"', add
label define br10a_muni5yr_lbl 5208103 `"Formoso"', add
label define br10a_muni5yr_lbl 5208152 `"Gameleira de Goi�s"', add
label define br10a_muni5yr_lbl 5208301 `"Divin�polis de Goi�s"', add
label define br10a_muni5yr_lbl 5208400 `"Goian�polis"', add
label define br10a_muni5yr_lbl 5208509 `"Goiandira"', add
label define br10a_muni5yr_lbl 5208608 `"Goian�sia"', add
label define br10a_muni5yr_lbl 5208707 `"Goi�nia"', add
label define br10a_muni5yr_lbl 5208806 `"Goianira"', add
label define br10a_muni5yr_lbl 5208905 `"Goi�s"', add
label define br10a_muni5yr_lbl 5209101 `"Goiatuba"', add
label define br10a_muni5yr_lbl 5209150 `"Gouvel�ndia"', add
label define br10a_muni5yr_lbl 5209200 `"Guap�"', add
label define br10a_muni5yr_lbl 5209291 `"Guara�ta"', add
label define br10a_muni5yr_lbl 5209408 `"Guarani de Goi�s"', add
label define br10a_muni5yr_lbl 5209457 `"Guarinos"', add
label define br10a_muni5yr_lbl 5209606 `"Heitora�"', add
label define br10a_muni5yr_lbl 5209705 `"Hidrol�ndia"', add
label define br10a_muni5yr_lbl 5209804 `"Hidrolina"', add
label define br10a_muni5yr_lbl 5209903 `"Iaciara"', add
label define br10a_muni5yr_lbl 5209937 `"Inaciol�ndia"', add
label define br10a_muni5yr_lbl 5209952 `"Indiara"', add
label define br10a_muni5yr_lbl 5210000 `"Inhumas"', add
label define br10a_muni5yr_lbl 5210109 `"Ipameri"', add
label define br10a_muni5yr_lbl 5210158 `"Ipiranga de Goi�s"', add
label define br10a_muni5yr_lbl 5210208 `"Ipor�"', add
label define br10a_muni5yr_lbl 5210307 `"Israel�ndia"', add
label define br10a_muni5yr_lbl 5210406 `"Itabera�"', add
label define br10a_muni5yr_lbl 5210562 `"Itaguari"', add
label define br10a_muni5yr_lbl 5210604 `"Itaguaru"', add
label define br10a_muni5yr_lbl 5210802 `"Itaj�"', add
label define br10a_muni5yr_lbl 5210901 `"Itapaci"', add
label define br10a_muni5yr_lbl 5211008 `"Itapirapu�"', add
label define br10a_muni5yr_lbl 5211206 `"Itapuranga"', add
label define br10a_muni5yr_lbl 5211305 `"Itarum�"', add
label define br10a_muni5yr_lbl 5211404 `"Itau�u"', add
label define br10a_muni5yr_lbl 5211503 `"Itumbiara"', add
label define br10a_muni5yr_lbl 5211602 `"Ivol�ndia"', add
label define br10a_muni5yr_lbl 5211701 `"Jandaia"', add
label define br10a_muni5yr_lbl 5211800 `"Jaragu�"', add
label define br10a_muni5yr_lbl 5211909 `"Jata�"', add
label define br10a_muni5yr_lbl 5212006 `"Jaupaci"', add
label define br10a_muni5yr_lbl 5212055 `"Jes�polis"', add
label define br10a_muni5yr_lbl 5212105 `"Jovi�nia"', add
label define br10a_muni5yr_lbl 5212204 `"Jussara"', add
label define br10a_muni5yr_lbl 5212253 `"Lagoa Santa"', add
label define br10a_muni5yr_lbl 5212303 `"Leopoldo de Bulh�es"', add
label define br10a_muni5yr_lbl 5212501 `"Luzi�nia"', add
label define br10a_muni5yr_lbl 5212600 `"Mairipotaba"', add
label define br10a_muni5yr_lbl 5212709 `"Mamba�"', add
label define br10a_muni5yr_lbl 5212808 `"Mara Rosa"', add
label define br10a_muni5yr_lbl 5212907 `"Marzag�o"', add
label define br10a_muni5yr_lbl 5212956 `"Matrinch�"', add
label define br10a_muni5yr_lbl 5213004 `"Mauril�ndia"', add
label define br10a_muni5yr_lbl 5213053 `"Mimoso de Goi�s"', add
label define br10a_muni5yr_lbl 5213087 `"Mina�u"', add
label define br10a_muni5yr_lbl 5213103 `"Mineiros"', add
label define br10a_muni5yr_lbl 5213400 `"Moipor�"', add
label define br10a_muni5yr_lbl 5213509 `"Monte Alegre de Goi�s"', add
label define br10a_muni5yr_lbl 5213707 `"Montes Claros de Goi�s"', add
label define br10a_muni5yr_lbl 5213756 `"Montividiu"', add
label define br10a_muni5yr_lbl 5213772 `"Montividiu do Norte"', add
label define br10a_muni5yr_lbl 5213806 `"Morrinhos"', add
label define br10a_muni5yr_lbl 5213855 `"Morro Agudo de Goi�s"', add
label define br10a_muni5yr_lbl 5213905 `"Moss�medes"', add
label define br10a_muni5yr_lbl 5214002 `"Mozarl�ndia"', add
label define br10a_muni5yr_lbl 5214051 `"Mundo Novo"', add
label define br10a_muni5yr_lbl 5214101 `"Mutun�polis"', add
label define br10a_muni5yr_lbl 5214408 `"Naz�rio"', add
label define br10a_muni5yr_lbl 5214507 `"Ner�polis"', add
label define br10a_muni5yr_lbl 5214606 `"Niquel�ndia"', add
label define br10a_muni5yr_lbl 5214705 `"Nova Am�rica"', add
label define br10a_muni5yr_lbl 5214804 `"Nova Aurora"', add
label define br10a_muni5yr_lbl 5214838 `"Nova Crix�s"', add
label define br10a_muni5yr_lbl 5214861 `"Nova Gl�ria"', add
label define br10a_muni5yr_lbl 5214879 `"Nova Igua�u de Goi�s"', add
label define br10a_muni5yr_lbl 5214903 `"Nova Roma"', add
label define br10a_muni5yr_lbl 5215009 `"Nova Veneza"', add
label define br10a_muni5yr_lbl 5215207 `"Novo Brasil"', add
label define br10a_muni5yr_lbl 5215231 `"Novo Gama"', add
label define br10a_muni5yr_lbl 5215256 `"Novo Planalto"', add
label define br10a_muni5yr_lbl 5215306 `"Orizona"', add
label define br10a_muni5yr_lbl 5215405 `"Ouro Verde de Goi�s"', add
label define br10a_muni5yr_lbl 5215504 `"Ouvidor"', add
label define br10a_muni5yr_lbl 5215603 `"Padre Bernardo"', add
label define br10a_muni5yr_lbl 5215652 `"Palestina de Goi�s"', add
label define br10a_muni5yr_lbl 5215702 `"Palmeiras de Goi�s"', add
label define br10a_muni5yr_lbl 5215801 `"Palmelo"', add
label define br10a_muni5yr_lbl 5215900 `"Palmin�polis"', add
label define br10a_muni5yr_lbl 5216007 `"Panam�"', add
label define br10a_muni5yr_lbl 5216304 `"Paranaiguara"', add
label define br10a_muni5yr_lbl 5216403 `"Para�na"', add
label define br10a_muni5yr_lbl 5216452 `"Perol�ndia"', add
label define br10a_muni5yr_lbl 5216809 `"Petrolina de Goi�s"', add
label define br10a_muni5yr_lbl 5216908 `"Pilar de Goi�s"', add
label define br10a_muni5yr_lbl 5217104 `"Piracanjuba"', add
label define br10a_muni5yr_lbl 5217203 `"Piranhas"', add
label define br10a_muni5yr_lbl 5217302 `"Piren�polis"', add
label define br10a_muni5yr_lbl 5217401 `"Pires do Rio"', add
label define br10a_muni5yr_lbl 5217609 `"Planaltina"', add
label define br10a_muni5yr_lbl 5217708 `"Pontalina"', add
label define br10a_muni5yr_lbl 5218003 `"Porangatu"', add
label define br10a_muni5yr_lbl 5218052 `"Porteir�o"', add
label define br10a_muni5yr_lbl 5218102 `"Portel�ndia"', add
label define br10a_muni5yr_lbl 5218300 `"Posse"', add
label define br10a_muni5yr_lbl 5218391 `"Professor Jamil"', add
label define br10a_muni5yr_lbl 5218508 `"Quirin�polis"', add
label define br10a_muni5yr_lbl 5218607 `"Rialma"', add
label define br10a_muni5yr_lbl 5218706 `"Rian�polis"', add
label define br10a_muni5yr_lbl 5218789 `"Rio Quente"', add
label define br10a_muni5yr_lbl 5218805 `"Rio Verde"', add
label define br10a_muni5yr_lbl 5218904 `"Rubiataba"', add
label define br10a_muni5yr_lbl 5219001 `"Sanclerl�ndia"', add
label define br10a_muni5yr_lbl 5219100 `"Santa B�rbara de Goi�s"', add
label define br10a_muni5yr_lbl 5219209 `"Santa Cruz de Goi�s"', add
label define br10a_muni5yr_lbl 5219258 `"Santa F� de Goi�s"', add
label define br10a_muni5yr_lbl 5219308 `"Santa Helena de Goi�s"', add
label define br10a_muni5yr_lbl 5219357 `"Santa Isabel"', add
label define br10a_muni5yr_lbl 5219407 `"Santa Rita do Araguaia"', add
label define br10a_muni5yr_lbl 5219456 `"Santa Rita do Novo Destino"', add
label define br10a_muni5yr_lbl 5219506 `"Santa Rosa de Goi�s"', add
label define br10a_muni5yr_lbl 5219605 `"Santa Tereza de Goi�s"', add
label define br10a_muni5yr_lbl 5219704 `"Santa Terezinha de Goi�s"', add
label define br10a_muni5yr_lbl 5219712 `"Santo Ant�nio da Barra"', add
label define br10a_muni5yr_lbl 5219738 `"Santo Ant�nio de Goi�s"', add
label define br10a_muni5yr_lbl 5219753 `"Santo Ant�nio do Descoberto"', add
label define br10a_muni5yr_lbl 5219803 `"S�o Domingos"', add
label define br10a_muni5yr_lbl 5219902 `"S�o Francisco de Goi�s"', add
label define br10a_muni5yr_lbl 5220009 `"S�o Jo�o d'Alian�a"', add
label define br10a_muni5yr_lbl 5220058 `"S�o Jo�o da Para�na"', add
label define br10a_muni5yr_lbl 5220108 `"S�o Lu�s de Montes Belos"', add
label define br10a_muni5yr_lbl 5220157 `"S�o Lu�z do Norte"', add
label define br10a_muni5yr_lbl 5220207 `"S�o Miguel do Araguaia"', add
label define br10a_muni5yr_lbl 5220264 `"S�o Miguel do Passa Quatro"', add
label define br10a_muni5yr_lbl 5220280 `"S�o Patr�cio"', add
label define br10a_muni5yr_lbl 5220405 `"S�o Sim�o"', add
label define br10a_muni5yr_lbl 5220454 `"Senador Canedo"', add
label define br10a_muni5yr_lbl 5220504 `"Serran�polis"', add
label define br10a_muni5yr_lbl 5220603 `"Silv�nia"', add
label define br10a_muni5yr_lbl 5220686 `"Simol�ndia"', add
label define br10a_muni5yr_lbl 5220702 `"S�tio d'Abadia"', add
label define br10a_muni5yr_lbl 5221007 `"Taquaral de Goi�s"', add
label define br10a_muni5yr_lbl 5221080 `"Teresina de Goi�s"', add
label define br10a_muni5yr_lbl 5221197 `"Terez�polis de Goi�s"', add
label define br10a_muni5yr_lbl 5221304 `"Tr�s Ranchos"', add
label define br10a_muni5yr_lbl 5221403 `"Trindade"', add
label define br10a_muni5yr_lbl 5221452 `"Trombas"', add
label define br10a_muni5yr_lbl 5221502 `"Turv�nia"', add
label define br10a_muni5yr_lbl 5221551 `"Turvel�ndia"', add
label define br10a_muni5yr_lbl 5221577 `"Uirapuru"', add
label define br10a_muni5yr_lbl 5221601 `"Urua�u"', add
label define br10a_muni5yr_lbl 5221700 `"Uruana"', add
label define br10a_muni5yr_lbl 5221809 `"Uruta�"', add
label define br10a_muni5yr_lbl 5221858 `"Valpara�so de Goi�s"', add
label define br10a_muni5yr_lbl 5221908 `"Varj�o"', add
label define br10a_muni5yr_lbl 5222005 `"Vian�polis"', add
label define br10a_muni5yr_lbl 5222054 `"Vicentin�polis"', add
label define br10a_muni5yr_lbl 5222203 `"Vila Boa"', add
label define br10a_muni5yr_lbl 5222302 `"Vila Prop�cio"', add
label define br10a_muni5yr_lbl 5299999 `"Goi�s, municipality unknown"', add
label define br10a_muni5yr_lbl 5300108 `"Bras�lia"', add
label define br10a_muni5yr_lbl 9999998 `"Unknown"', add
label define br10a_muni5yr_lbl 9999999 `"NIU (not in universe)"', add
label values br10a_muni5yr br10a_muni5yr_lbl

label define br10a_cntry5yr_lbl 024 `"Angola"'
label define br10a_cntry5yr_lbl 032 `"Argentina"', add
label define br10a_cntry5yr_lbl 036 `"Australia"', add
label define br10a_cntry5yr_lbl 040 `"Austria"', add
label define br10a_cntry5yr_lbl 056 `"Belgium"', add
label define br10a_cntry5yr_lbl 068 `"Bolivia"', add
label define br10a_cntry5yr_lbl 124 `"Canada"', add
label define br10a_cntry5yr_lbl 132 `"Cape Verde"', add
label define br10a_cntry5yr_lbl 152 `"Chile"', add
label define br10a_cntry5yr_lbl 156 `"China"', add
label define br10a_cntry5yr_lbl 170 `"Colombia"', add
label define br10a_cntry5yr_lbl 192 `"Cuba"', add
label define br10a_cntry5yr_lbl 218 `"Ecuador"', add
label define br10a_cntry5yr_lbl 250 `"France"', add
label define br10a_cntry5yr_lbl 254 `"French Guiana"', add
label define br10a_cntry5yr_lbl 276 `"Germany"', add
label define br10a_cntry5yr_lbl 328 `"Guyana"', add
label define br10a_cntry5yr_lbl 372 `"Ireland"', add
label define br10a_cntry5yr_lbl 376 `"Israel"', add
label define br10a_cntry5yr_lbl 380 `"Italy"', add
label define br10a_cntry5yr_lbl 392 `"Japan"', add
label define br10a_cntry5yr_lbl 410 `"Republic of Korea"', add
label define br10a_cntry5yr_lbl 422 `"Lebanon"', add
label define br10a_cntry5yr_lbl 484 `"Mexico"', add
label define br10a_cntry5yr_lbl 508 `"Mozambique"', add
label define br10a_cntry5yr_lbl 528 `"Netherlands"', add
label define br10a_cntry5yr_lbl 554 `"New Zealand"', add
label define br10a_cntry5yr_lbl 566 `"Nigeria"', add
label define br10a_cntry5yr_lbl 578 `"Norway"', add
label define br10a_cntry5yr_lbl 600 `"Paraguay"', add
label define br10a_cntry5yr_lbl 604 `"Peru"', add
label define br10a_cntry5yr_lbl 620 `"Portugal"', add
label define br10a_cntry5yr_lbl 624 `"Guinea Bissau"', add
label define br10a_cntry5yr_lbl 643 `"Russia"', add
label define br10a_cntry5yr_lbl 710 `"South Africa"', add
label define br10a_cntry5yr_lbl 724 `"Spain"', add
label define br10a_cntry5yr_lbl 740 `"Suriname"', add
label define br10a_cntry5yr_lbl 756 `"Switzerland"', add
label define br10a_cntry5yr_lbl 826 `"United Kingdom"', add
label define br10a_cntry5yr_lbl 840 `"United States"', add
label define br10a_cntry5yr_lbl 858 `"Uruguay"', add
label define br10a_cntry5yr_lbl 862 `"Venezuela"', add
label define br10a_cntry5yr_lbl 900 `"Response suppressed"', add
label define br10a_cntry5yr_lbl 998 `"Unknown"', add
label define br10a_cntry5yr_lbl 999 `"NIU (not in universe)"', add
label values br10a_cntry5yr br10a_cntry5yr_lbl

label define br10a_lit_lbl 1 `"Yes"'
label define br10a_lit_lbl 2 `"No"', add
label define br10a_lit_lbl 9 `"NIU (not in universe)"', add
label values br10a_lit br10a_lit_lbl

label define br10a_school_lbl 1 `"Yes, public"'
label define br10a_school_lbl 2 `"Yes, private"', add
label define br10a_school_lbl 3 `"No, not attending"', add
label define br10a_school_lbl 4 `"No, never attended"', add
label values br10a_school br10a_school_lbl

label define br10a_edlevel1_lbl 01 `"Nursery"'
label define br10a_edlevel1_lbl 02 `"Pre-school (nursery and kindergarten)"', add
label define br10a_edlevel1_lbl 03 `"Literacy class"', add
label define br10a_edlevel1_lbl 04 `"Literacy for youth and adults"', add
label define br10a_edlevel1_lbl 05 `"Regular elementary school"', add
label define br10a_edlevel1_lbl 06 `"Youth and adults education or supplementary elementary school"', add
label define br10a_edlevel1_lbl 07 `"Regular high school"', add
label define br10a_edlevel1_lbl 08 `"Youth and adults education or supplementary high school"', add
label define br10a_edlevel1_lbl 09 `"Undergraduate"', add
label define br10a_edlevel1_lbl 10 `"Postgraduate (minimum 360 hours)"', add
label define br10a_edlevel1_lbl 11 `"Masters"', add
label define br10a_edlevel1_lbl 12 `"Doctorate"', add
label define br10a_edlevel1_lbl 99 `"NIU (not in universe)"', add
label values br10a_edlevel1 br10a_edlevel1_lbl

label define br10a_grade1_lbl 01 `"First year"'
label define br10a_grade1_lbl 02 `"First grade / second year"', add
label define br10a_grade1_lbl 03 `"Second grade / third Year"', add
label define br10a_grade1_lbl 04 `"Third grade / fourth year"', add
label define br10a_grade1_lbl 05 `"Fourth grade / fifth year"', add
label define br10a_grade1_lbl 06 `"Fifth grade / sixth year"', add
label define br10a_grade1_lbl 07 `"Sixth grade / seventh year"', add
label define br10a_grade1_lbl 08 `"Seventh grade / eighth year"', add
label define br10a_grade1_lbl 09 `"Eighth grade / ninth year"', add
label define br10a_grade1_lbl 10 `"Not in a graded course"', add
label define br10a_grade1_lbl 99 `"NIU (not in universe)"', add
label values br10a_grade1 br10a_grade1_lbl

label define br10a_grade2_lbl 1 `"First grade"'
label define br10a_grade2_lbl 2 `"Second grade"', add
label define br10a_grade2_lbl 3 `"Third grade"', add
label define br10a_grade2_lbl 4 `"Fourth grade"', add
label define br10a_grade2_lbl 5 `"Not in a graded course"', add
label define br10a_grade2_lbl 9 `"NIU (not in universe)"', add
label values br10a_grade2 br10a_grade2_lbl

label define br10a_college_lbl 1 `"Yes"'
label define br10a_college_lbl 2 `"No"', add
label define br10a_college_lbl 9 `"NIU (not in universe)"', add
label values br10a_college br10a_college_lbl

label define br10a_edattain_lbl 01 `"Daycare, pre-school (nursery and kindergarten), literacy class"'
label define br10a_edattain_lbl 02 `"Literacy for youth and adults"', add
label define br10a_edattain_lbl 03 `"Former primary (elementary)"', add
label define br10a_edattain_lbl 04 `"Former ginasio (middle school)"', add
label define br10a_edattain_lbl 05 `"Elementary school (1st to 3rd grade / 1st to 4th year)"', add
label define br10a_edattain_lbl 06 `"Elementary school (4th grade / 5th grade)"', add
label define br10a_edattain_lbl 07 `"Elementary school (5th to 8th grade / 6th to 9th year)"', add
label define br10a_edattain_lbl 08 `"Supplementary elementary school degree"', add
label define br10a_edattain_lbl 09 `"Former scientific, classical, etc. (high school)"', add
label define br10a_edattain_lbl 10 `"Regular high school"', add
label define br10a_edattain_lbl 11 `"Undergraduate"', add
label define br10a_edattain_lbl 12 `"Postgraduate (minimum 360 hours)"', add
label define br10a_edattain_lbl 13 `"Masters"', add
label define br10a_edattain_lbl 14 `"Doctorate"', add
label define br10a_edattain_lbl 99 `"NIU (not in universe)"', add
label values br10a_edattain br10a_edattain_lbl

label define br10a_edcompl_lbl 1 `"Yes"'
label define br10a_edcompl_lbl 2 `"No"', add
label define br10a_edcompl_lbl 9 `"NIU (not in universe)"', add
label values br10a_edcompl br10a_edcompl_lbl

label define br10a_degtyp_lbl 1 `"Undergraduate"'
label define br10a_degtyp_lbl 2 `"Masters"', add
label define br10a_degtyp_lbl 3 `"Doctorate"', add
label define br10a_degtyp_lbl 9 `"NIU (not in universe)"', add
label values br10a_degtyp br10a_degtyp_lbl

label define br10a_edlevel2_lbl 1 `"No education / incomplete primary education"'
label define br10a_edlevel2_lbl 2 `"Complete primary / incomplete secondary education"', add
label define br10a_edlevel2_lbl 3 `"Complete high school / incomplete undergraduate"', add
label define br10a_edlevel2_lbl 4 `"Undergraduate degree completed"', add
label define br10a_edlevel2_lbl 9 `"Unknown"', add
label values br10a_edlevel2 br10a_edlevel2_lbl

label define br10a_undergrd_lbl 085 `"Environmental protection"'
label define br10a_undergrd_lbl 140 `"Teacher training and educational sciences (general course)"', add
label define br10a_undergrd_lbl 142 `"Educational science"', add
label define br10a_undergrd_lbl 143 `"Teacher of early childhood education (pre-k education)"', add
label define br10a_undergrd_lbl 144 `"Teacher of basic education (k-12)"', add
label define br10a_undergrd_lbl 145 `"Teacher with expertise in specific subjects"', add
label define br10a_undergrd_lbl 146 `"Teacher of professional subjects"', add
label define br10a_undergrd_lbl 210 `"Arts (general course)"', add
label define br10a_undergrd_lbl 211 `"Fine arts"', add
label define br10a_undergrd_lbl 212 `"Music and performing arts"', add
label define br10a_undergrd_lbl 213 `"Audiovisual techniques and media production"', add
label define br10a_undergrd_lbl 214 `"Design and style"', add
label define br10a_undergrd_lbl 215 `"Craft"', add
label define br10a_undergrd_lbl 221 `"Religion"', add
label define br10a_undergrd_lbl 222 `"Foreign languages and cultures"', add
label define br10a_undergrd_lbl 223 `"Mother tongue (vernacular)"', add
label define br10a_undergrd_lbl 225 `"History and archaeology"', add
label define br10a_undergrd_lbl 226 `"Philosophy and ethics"', add
label define br10a_undergrd_lbl 310 `"Behavioral and social sciences (general courses)"', add
label define br10a_undergrd_lbl 311 `"Psychology"', add
label define br10a_undergrd_lbl 312 `"Sociology and cultural studies"', add
label define br10a_undergrd_lbl 313 `"Political science and civics"', add
label define br10a_undergrd_lbl 314 `"Economics"', add
label define br10a_undergrd_lbl 321 `"Journalism and reporting"', add
label define br10a_undergrd_lbl 322 `"Library science, information, archive"', add
label define br10a_undergrd_lbl 340 `"Trade and administration (general course)"', add
label define br10a_undergrd_lbl 341 `"Wholesale and retail sales"', add
label define br10a_undergrd_lbl 342 `"Marketing and advertising"', add
label define br10a_undergrd_lbl 343 `"Finance, banking, insurance"', add
label define br10a_undergrd_lbl 344 `"Accounting and taxation"', add
label define br10a_undergrd_lbl 345 `"Management and administration"', add
label define br10a_undergrd_lbl 346 `"Secretarial and office work"', add
label define br10a_undergrd_lbl 347 `"Working life"', add
label define br10a_undergrd_lbl 380 `"Law"', add
label define br10a_undergrd_lbl 420 `"Life sciences (general course)"', add
label define br10a_undergrd_lbl 421 `"Biology and biochemistry"', add
label define br10a_undergrd_lbl 422 `"Environmental sciences"', add
label define br10a_undergrd_lbl 440 `"Physical sciences (general course)"', add
label define br10a_undergrd_lbl 441 `"Physical"', add
label define br10a_undergrd_lbl 442 `"Chemistry"', add
label define br10a_undergrd_lbl 443 `"Earth science"', add
label define br10a_undergrd_lbl 461 `"Mathematics"', add
label define br10a_undergrd_lbl 462 `"Statistics"', add
label define br10a_undergrd_lbl 481 `"Computer science"', add
label define br10a_undergrd_lbl 482 `"Use of computers"', add
label define br10a_undergrd_lbl 483 `"Processing of information"', add
label define br10a_undergrd_lbl 520 `"Engineering and engineering professions (general courses)"', add
label define br10a_undergrd_lbl 521 `"Engineering and metallurgy"', add
label define br10a_undergrd_lbl 522 `"Electricity and energy"', add
label define br10a_undergrd_lbl 523 `"Electronics and automation"', add
label define br10a_undergrd_lbl 524 `"Chemical and process engineering"', add
label define br10a_undergrd_lbl 525 `"Motor vehicles, aircraft and shipbuilding"', add
label define br10a_undergrd_lbl 540 `"Manufacturing and processing (courses)"', add
label define br10a_undergrd_lbl 541 `"Food processing"', add
label define br10a_undergrd_lbl 542 `"Textile, clothing, footwear, leather"', add
label define br10a_undergrd_lbl 543 `"Material (wood, paper, plastic, glass)"', add
label define br10a_undergrd_lbl 544 `"Mining and extraction"', add
label define br10a_undergrd_lbl 581 `"Architecture and urban planning"', add
label define br10a_undergrd_lbl 582 `"Civil engineering and construction"', add
label define br10a_undergrd_lbl 621 `"Agricultural and livestock production"', add
label define br10a_undergrd_lbl 623 `"Engineering forestry, forestry"', add
label define br10a_undergrd_lbl 624 `"Fisheries resource"', add
label define br10a_undergrd_lbl 641 `"Veterinary"', add
label define br10a_undergrd_lbl 720 `"Health (general course)"', add
label define br10a_undergrd_lbl 721 `"Medicine"', add
label define br10a_undergrd_lbl 723 `"Nursing and primary care"', add
label define br10a_undergrd_lbl 724 `"Dentistry"', add
label define br10a_undergrd_lbl 725 `"Technologies for medical diagnosis and treatment"', add
label define br10a_undergrd_lbl 726 `"Therapy and rehabilitation"', add
label define br10a_undergrd_lbl 727 `"Pharmaceutical sciences"', add
label define br10a_undergrd_lbl 762 `"Social service and orientation"', add
label define br10a_undergrd_lbl 811 `"Hotel, restaurant and food services"', add
label define br10a_undergrd_lbl 812 `"Travel, tourism and leisure"', add
label define br10a_undergrd_lbl 813 `"Sports"', add
label define br10a_undergrd_lbl 814 `"Domestic science"', add
label define br10a_undergrd_lbl 815 `"Beauty services"', add
label define br10a_undergrd_lbl 840 `"Transport services (general course)"', add
label define br10a_undergrd_lbl 850 `"Environmental protection (general course)"', add
label define br10a_undergrd_lbl 853 `"Sanitation community services"', add
label define br10a_undergrd_lbl 861 `"Protecting people and property"', add
label define br10a_undergrd_lbl 862 `"Health and work safety"', add
label define br10a_undergrd_lbl 863 `"Military and defense sector"', add
label define br10a_undergrd_lbl 900 `"Response suppressed"', add
label define br10a_undergrd_lbl 999 `"NIU (not in universe)"', add
label values br10a_undergrd br10a_undergrd_lbl

label define br10a_masters_lbl 142 `"Educational science"'
label define br10a_masters_lbl 145 `"Teacher with expertise in specific subjects"', add
label define br10a_masters_lbl 146 `"Teacher of professional subjects"', add
label define br10a_masters_lbl 210 `"Arts (general course)"', add
label define br10a_masters_lbl 211 `"Fine arts"', add
label define br10a_masters_lbl 212 `"Music and performing arts"', add
label define br10a_masters_lbl 213 `"Audiovisual techniques and media production"', add
label define br10a_masters_lbl 214 `"Design and style"', add
label define br10a_masters_lbl 220 `"Languages and humanities (general course)"', add
label define br10a_masters_lbl 221 `"Religion"', add
label define br10a_masters_lbl 222 `"Foreign languages and cultures"', add
label define br10a_masters_lbl 223 `"Mother tongue (vernacular)"', add
label define br10a_masters_lbl 225 `"History and archaeology"', add
label define br10a_masters_lbl 226 `"Philosophy and ethics"', add
label define br10a_masters_lbl 310 `"Behavioral and social sciences (general courses)"', add
label define br10a_masters_lbl 311 `"Psychology"', add
label define br10a_masters_lbl 312 `"Sociology and cultural studies"', add
label define br10a_masters_lbl 313 `"Political science and civics"', add
label define br10a_masters_lbl 314 `"Economics"', add
label define br10a_masters_lbl 321 `"Journalism and reporting"', add
label define br10a_masters_lbl 322 `"Library science, information, files"', add
label define br10a_masters_lbl 342 `"Marketing and advertising"', add
label define br10a_masters_lbl 344 `"Accounting and taxation"', add
label define br10a_masters_lbl 345 `"Management and administration"', add
label define br10a_masters_lbl 347 `"Working life"', add
label define br10a_masters_lbl 380 `"Law"', add
label define br10a_masters_lbl 421 `"Biology and biochemistry"', add
label define br10a_masters_lbl 422 `"Environmental sciences"', add
label define br10a_masters_lbl 440 `"Physical sciences (general course)"', add
label define br10a_masters_lbl 441 `"Physical"', add
label define br10a_masters_lbl 442 `"Chemistry"', add
label define br10a_masters_lbl 443 `"Earth science"', add
label define br10a_masters_lbl 461 `"Mathematics"', add
label define br10a_masters_lbl 462 `"Statistics"', add
label define br10a_masters_lbl 481 `"Computer science"', add
label define br10a_masters_lbl 520 `"Engineering and engineering professions (general courses)"', add
label define br10a_masters_lbl 521 `"Engineering and metallurgy"', add
label define br10a_masters_lbl 522 `"Electricity and energy"', add
label define br10a_masters_lbl 523 `"Electronics and automation"', add
label define br10a_masters_lbl 524 `"Chemical and process engineering"', add
label define br10a_masters_lbl 525 `"Motor vehicles, aircraft and shipbuilding"', add
label define br10a_masters_lbl 541 `"Food processing"', add
label define br10a_masters_lbl 543 `"Material (wood, paper, plastic, glass)"', add
label define br10a_masters_lbl 544 `"Mining and extraction"', add
label define br10a_masters_lbl 581 `"Architecture and urban planning"', add
label define br10a_masters_lbl 582 `"Civil engineering and construction"', add
label define br10a_masters_lbl 620 `"Agriculture, forestry, fisheries resources (courses)"', add
label define br10a_masters_lbl 621 `"Agricultural and livestock production"', add
label define br10a_masters_lbl 623 `"Engineering forestry - forestry"', add
label define br10a_masters_lbl 624 `"Fisheries resource"', add
label define br10a_masters_lbl 641 `"Veterinary"', add
label define br10a_masters_lbl 720 `"Health (general course)"', add
label define br10a_masters_lbl 721 `"Medicine"', add
label define br10a_masters_lbl 723 `"Nursing and primary care"', add
label define br10a_masters_lbl 724 `"Dentistry"', add
label define br10a_masters_lbl 725 `"Technologies for medical diagnosis and treatment"', add
label define br10a_masters_lbl 726 `"Therapy and rehabilitation"', add
label define br10a_masters_lbl 727 `"Pharmaceutical sciences"', add
label define br10a_masters_lbl 762 `"Social service and orientation"', add
label define br10a_masters_lbl 812 `"Travel, tourism and leisure"', add
label define br10a_masters_lbl 840 `"Transport services (general course)"', add
label define br10a_masters_lbl 850 `"Environmental protection (general course)"', add
label define br10a_masters_lbl 853 `"Sanitation community services"', add
label define br10a_masters_lbl 863 `"Military and defense sector"', add
label define br10a_masters_lbl 900 `"Response suppressed"', add
label define br10a_masters_lbl 989 `"Unknown"', add
label define br10a_masters_lbl 999 `"NIU (not in universe)"', add
label values br10a_masters br10a_masters_lbl

label define br10a_doctoral_lbl 142 `"Educational science"'
label define br10a_doctoral_lbl 145 `"Teacher with expertise in specific subjects"', add
label define br10a_doctoral_lbl 211 `"Fine arts"', add
label define br10a_doctoral_lbl 212 `"Music and performing arts"', add
label define br10a_doctoral_lbl 220 `"Languages and humanities (general course)"', add
label define br10a_doctoral_lbl 221 `"Religion"', add
label define br10a_doctoral_lbl 222 `"Foreign languages and cultures"', add
label define br10a_doctoral_lbl 223 `"Mother tongue (vernacular)"', add
label define br10a_doctoral_lbl 225 `"History and archaeology"', add
label define br10a_doctoral_lbl 226 `"Philosophy and ethics"', add
label define br10a_doctoral_lbl 310 `"Behavioral and social sciences (general courses)"', add
label define br10a_doctoral_lbl 311 `"Psychology"', add
label define br10a_doctoral_lbl 312 `"Sociology and cultural studies"', add
label define br10a_doctoral_lbl 313 `"Political science and civics"', add
label define br10a_doctoral_lbl 314 `"Economics"', add
label define br10a_doctoral_lbl 321 `"Journalism and reporting"', add
label define br10a_doctoral_lbl 342 `"Marketing and advertising"', add
label define br10a_doctoral_lbl 344 `"Accounting and taxation"', add
label define br10a_doctoral_lbl 345 `"Management and administration"', add
label define br10a_doctoral_lbl 380 `"Law"', add
label define br10a_doctoral_lbl 421 `"Biology and biochemistry"', add
label define br10a_doctoral_lbl 422 `"Environmental sciences"', add
label define br10a_doctoral_lbl 440 `"Physical sciences (general course)"', add
label define br10a_doctoral_lbl 441 `"Physical"', add
label define br10a_doctoral_lbl 442 `"Chemistry"', add
label define br10a_doctoral_lbl 443 `"Earth science"', add
label define br10a_doctoral_lbl 461 `"Mathematics"', add
label define br10a_doctoral_lbl 462 `"Statistics"', add
label define br10a_doctoral_lbl 481 `"Computer science"', add
label define br10a_doctoral_lbl 520 `"Engineering and engineering professions (general courses)"', add
label define br10a_doctoral_lbl 521 `"Engineering and metallurgy"', add
label define br10a_doctoral_lbl 522 `"Electricity and energy"', add
label define br10a_doctoral_lbl 523 `"Electronics and automation"', add
label define br10a_doctoral_lbl 524 `"Chemical and process engineering"', add
label define br10a_doctoral_lbl 525 `"Motor vehicles, aircraft and shipbuilding"', add
label define br10a_doctoral_lbl 541 `"Food processing"', add
label define br10a_doctoral_lbl 543 `"Material (wood, paper, plastic, glass)"', add
label define br10a_doctoral_lbl 581 `"Architecture and urban planning"', add
label define br10a_doctoral_lbl 582 `"Civil engineering and construction"', add
label define br10a_doctoral_lbl 621 `"Agricultural and livestock production"', add
label define br10a_doctoral_lbl 623 `"Engineering forestry - forestry"', add
label define br10a_doctoral_lbl 641 `"Veterinary"', add
label define br10a_doctoral_lbl 720 `"Health (general course)"', add
label define br10a_doctoral_lbl 721 `"Medicine"', add
label define br10a_doctoral_lbl 723 `"Nursing and primary care"', add
label define br10a_doctoral_lbl 724 `"Dentistry"', add
label define br10a_doctoral_lbl 725 `"Technologies for medical diagnosis and treatment"', add
label define br10a_doctoral_lbl 726 `"Therapy and rehabilitation"', add
label define br10a_doctoral_lbl 727 `"Pharmaceutical sciences"', add
label define br10a_doctoral_lbl 762 `"Social service and orientation"', add
label define br10a_doctoral_lbl 850 `"Environmental protection (general course)"', add
label define br10a_doctoral_lbl 863 `"Military and defense sector"', add
label define br10a_doctoral_lbl 900 `"Response suppressed"', add
label define br10a_doctoral_lbl 998 `"Unknown"', add
label define br10a_doctoral_lbl 999 `"NIU (not in universe)"', add
label values br10a_doctoral br10a_doctoral_lbl

label define br10a_edloc_lbl 1 `"In this municipality"'
label define br10a_edloc_lbl 2 `"In other municipality"', add
label define br10a_edloc_lbl 3 `"In a foreign country"', add
label define br10a_edloc_lbl 9 `"NIU (not in universe)"', add
label values br10a_edloc br10a_edloc_lbl

label define br10a_edstate_lbl 11 `"R�ndonia"'
label define br10a_edstate_lbl 12 `"Acre"', add
label define br10a_edstate_lbl 13 `"Amazonas"', add
label define br10a_edstate_lbl 14 `"Roraima"', add
label define br10a_edstate_lbl 15 `"Par�"', add
label define br10a_edstate_lbl 16 `"Amap�"', add
label define br10a_edstate_lbl 17 `"Tocantins"', add
label define br10a_edstate_lbl 21 `"Maranh�o"', add
label define br10a_edstate_lbl 22 `"Piau�"', add
label define br10a_edstate_lbl 23 `"Cear�"', add
label define br10a_edstate_lbl 24 `"Rio Grande Do Norte"', add
label define br10a_edstate_lbl 25 `"Para�ba"', add
label define br10a_edstate_lbl 26 `"Pernambuco"', add
label define br10a_edstate_lbl 27 `"Alagoas"', add
label define br10a_edstate_lbl 28 `"Sergipe"', add
label define br10a_edstate_lbl 29 `"Bahia"', add
label define br10a_edstate_lbl 31 `"Minas Gerais"', add
label define br10a_edstate_lbl 32 `"Esp�rito Santo"', add
label define br10a_edstate_lbl 33 `"Rio De Janeiro"', add
label define br10a_edstate_lbl 35 `"S�o Paulo"', add
label define br10a_edstate_lbl 41 `"Paran�"', add
label define br10a_edstate_lbl 42 `"Santa Catarina"', add
label define br10a_edstate_lbl 43 `"Rio Grande Do Sul"', add
label define br10a_edstate_lbl 50 `"Mato Grosso Do Sul"', add
label define br10a_edstate_lbl 51 `"Mato Grosso"', add
label define br10a_edstate_lbl 52 `"Goi�s"', add
label define br10a_edstate_lbl 53 `"Distrito Federal"', add
label define br10a_edstate_lbl 98 `"Unknown"', add
label define br10a_edstate_lbl 99 `"NIU (not in universe)"', add
label values br10a_edstate br10a_edstate_lbl

label define br10a_schctry_lbl 032 `"Argentina"'
label define br10a_schctry_lbl 068 `"Bolivia"', add
label define br10a_schctry_lbl 152 `"Chile"', add
label define br10a_schctry_lbl 156 `"China"', add
label define br10a_schctry_lbl 170 `"Colombia"', add
label define br10a_schctry_lbl 192 `"Cuba"', add
label define br10a_schctry_lbl 250 `"France"', add
label define br10a_schctry_lbl 276 `"Germany"', add
label define br10a_schctry_lbl 380 `"Italy"', add
label define br10a_schctry_lbl 392 `"Japan"', add
label define br10a_schctry_lbl 410 `"Republic of Korea"', add
label define br10a_schctry_lbl 600 `"Paraguay"', add
label define br10a_schctry_lbl 604 `"Peru"', add
label define br10a_schctry_lbl 620 `"Portugal"', add
label define br10a_schctry_lbl 724 `"Spain"', add
label define br10a_schctry_lbl 826 `"Scotland"', add
label define br10a_schctry_lbl 840 `"United States"', add
label define br10a_schctry_lbl 858 `"Uruguay"', add
label define br10a_schctry_lbl 900 `"Response suppressed"', add
label define br10a_schctry_lbl 998 `"Unknown"', add
label define br10a_schctry_lbl 999 `"NIU (not in universe)"', add
label values br10a_schctry br10a_schctry_lbl

label define br10a_livesp_lbl 1 `"Yes"'
label define br10a_livesp_lbl 2 `"No, but lived with in past"', add
label define br10a_livesp_lbl 3 `"No, never lived with"', add
label define br10a_livesp_lbl 9 `"NIU (not in universe)"', add
label values br10a_livesp br10a_livesp_lbl

label define br10a_sploc_lbl 01 `"1"'
label define br10a_sploc_lbl 02 `"2"', add
label define br10a_sploc_lbl 03 `"3"', add
label define br10a_sploc_lbl 04 `"4"', add
label define br10a_sploc_lbl 05 `"5"', add
label define br10a_sploc_lbl 06 `"6"', add
label define br10a_sploc_lbl 07 `"7"', add
label define br10a_sploc_lbl 08 `"8"', add
label define br10a_sploc_lbl 09 `"9"', add
label define br10a_sploc_lbl 10 `"10"', add
label define br10a_sploc_lbl 11 `"11"', add
label define br10a_sploc_lbl 12 `"12"', add
label define br10a_sploc_lbl 13 `"13"', add
label define br10a_sploc_lbl 14 `"14"', add
label define br10a_sploc_lbl 15 `"15"', add
label define br10a_sploc_lbl 16 `"16"', add
label define br10a_sploc_lbl 17 `"17"', add
label define br10a_sploc_lbl 18 `"18"', add
label define br10a_sploc_lbl 19 `"19"', add
label define br10a_sploc_lbl 20 `"20"', add
label define br10a_sploc_lbl 21 `"21"', add
label define br10a_sploc_lbl 22 `"22"', add
label define br10a_sploc_lbl 23 `"23"', add
label define br10a_sploc_lbl 25 `"25"', add
label define br10a_sploc_lbl 26 `"26"', add
label define br10a_sploc_lbl 27 `"27"', add
label define br10a_sploc_lbl 98 `"Unknown"', add
label define br10a_sploc_lbl 99 `"NIU (not in universe)"', add
label values br10a_sploc br10a_sploc_lbl

label define br10a_union_lbl 1 `"Civil and religious marriage"'
label define br10a_union_lbl 2 `"Only civil marriage"', add
label define br10a_union_lbl 3 `"Only religious marriage"', add
label define br10a_union_lbl 4 `"Consensual union"', add
label define br10a_union_lbl 9 `"NIU (not in universe)"', add
label values br10a_union br10a_union_lbl

label define br10a_marst_lbl 1 `"Married"'
label define br10a_marst_lbl 2 `"Separated or legally separated"', add
label define br10a_marst_lbl 3 `"Divorced"', add
label define br10a_marst_lbl 4 `"Widowed"', add
label define br10a_marst_lbl 5 `"Single"', add
label define br10a_marst_lbl 9 `"NIU (not in universe)"', add
label values br10a_marst br10a_marst_lbl

label define br10a_wklstwk_lbl 1 `"Yes"'
label define br10a_wklstwk_lbl 2 `"No"', add
label define br10a_wklstwk_lbl 9 `"NIU (not in universe)"', add
label values br10a_wklstwk br10a_wklstwk_lbl

label define br10a_paidaway_lbl 1 `"Yes"'
label define br10a_paidaway_lbl 2 `"No"', add
label define br10a_paidaway_lbl 9 `"NIU (not in universe)"', add
label values br10a_paidaway br10a_paidaway_lbl

label define br10a_wknopay_lbl 1 `"Yes"'
label define br10a_wknopay_lbl 2 `"No"', add
label define br10a_wknopay_lbl 9 `"NIU (not in universe)"', add
label values br10a_wknopay br10a_wknopay_lbl

label define br10a_subsist_lbl 1 `"Yes"'
label define br10a_subsist_lbl 2 `"No"', add
label define br10a_subsist_lbl 9 `"NIU (not in universe)"', add
label values br10a_subsist br10a_subsist_lbl

label define br10a_njobs_lbl 1 `"One"'
label define br10a_njobs_lbl 2 `"Two or more"', add
label define br10a_njobs_lbl 9 `"NIU (not in universe)"', add
label values br10a_njobs br10a_njobs_lbl

label define br10a_occ_lbl 0000 `"Poorly specified occupation"'
label define br10a_occ_lbl 0110 `"Commissioned armed forces officers"', add
label define br10a_occ_lbl 0210 `"Non-commissioned armed forces officers"', add
label define br10a_occ_lbl 0299 `"Non-specified non-commisioned armed forces officers"', add
label define br10a_occ_lbl 0411 `"Non-specified armed forces officer"', add
label define br10a_occ_lbl 0412 `"Military police pra�as"', add
label define br10a_occ_lbl 0511 `"Fire department captains"', add
label define br10a_occ_lbl 0512 `"Fire department lieutenants"', add
label define br10a_occ_lbl 0599 `"Non-specified fire department and police officers"', add
label define br10a_occ_lbl 0999 `"Non-specified members of the armed forces, police and fire department"', add
label define br10a_occ_lbl 1111 `"Legislators"', add
label define br10a_occ_lbl 1112 `"Senior government officials"', add
label define br10a_occ_lbl 1114 `"Senior officials of special-interest organizations"', add
label define br10a_occ_lbl 1120 `"Managing directors and chief executives"', add
label define br10a_occ_lbl 1211 `"Finance managers"', add
label define br10a_occ_lbl 1212 `"Human resource managers"', add
label define br10a_occ_lbl 1213 `"Policy and planning managers"', add
label define br10a_occ_lbl 1219 `"Business services and administration managers not elsewhere classified"', add
label define br10a_occ_lbl 1221 `"Sales and marketing managers"', add
label define br10a_occ_lbl 1222 `"Advertising and public relations managers"', add
label define br10a_occ_lbl 1223 `"Research and development managers"', add
label define br10a_occ_lbl 1311 `"Agricultural and forestry production managers"', add
label define br10a_occ_lbl 1312 `"Aquaculture and fisheries production managers"', add
label define br10a_occ_lbl 1321 `"Manufacturing managers"', add
label define br10a_occ_lbl 1322 `"Mining managers"', add
label define br10a_occ_lbl 1323 `"Construction managers"', add
label define br10a_occ_lbl 1324 `"Supply, distribution and related managers"', add
label define br10a_occ_lbl 1330 `"Information and communications technology service managers"', add
label define br10a_occ_lbl 1341 `"Child care service managers"', add
label define br10a_occ_lbl 1342 `"Health service managers"', add
label define br10a_occ_lbl 1343 `"Aged care service managers"', add
label define br10a_occ_lbl 1344 `"Social welfare managers"', add
label define br10a_occ_lbl 1345 `"Education managers"', add
label define br10a_occ_lbl 1346 `"Financial and insurance services branch managers"', add
label define br10a_occ_lbl 1349 `"Professional services managers not elsewhere classified"', add
label define br10a_occ_lbl 1411 `"Hotel managers"', add
label define br10a_occ_lbl 1412 `"Restaurant managers"', add
label define br10a_occ_lbl 1420 `"Retail and wholesale trade managers"', add
label define br10a_occ_lbl 1431 `"Sports, recreation and cultural centre managers"', add
label define br10a_occ_lbl 1439 `"Services managers not elsewhere classified"', add
label define br10a_occ_lbl 2111 `"Physicists and astronomers"', add
label define br10a_occ_lbl 2112 `"Meteorologists"', add
label define br10a_occ_lbl 2113 `"Chemists"', add
label define br10a_occ_lbl 2114 `"Geologists and geophysicists"', add
label define br10a_occ_lbl 2120 `"Mathematicians, actuaries and statisticians"', add
label define br10a_occ_lbl 2131 `"Biologists, botanists, zoologists and related professionals"', add
label define br10a_occ_lbl 2132 `"Farming, forestry and fisheries advisers"', add
label define br10a_occ_lbl 2133 `"Environmental protection professionals"', add
label define br10a_occ_lbl 2141 `"Industrial and production engineers"', add
label define br10a_occ_lbl 2142 `"Civil engineers"', add
label define br10a_occ_lbl 2143 `"Environmental engineers"', add
label define br10a_occ_lbl 2144 `"Mechanical engineers"', add
label define br10a_occ_lbl 2145 `"Chemical engineers"', add
label define br10a_occ_lbl 2146 `"Mining engineers, metallurgists and related professionals"', add
label define br10a_occ_lbl 2149 `"Engineering professionals not elsewhere classified"', add
label define br10a_occ_lbl 2151 `"Electrical engineers"', add
label define br10a_occ_lbl 2152 `"Electronics engineers"', add
label define br10a_occ_lbl 2153 `"Telecommunications engineers"', add
label define br10a_occ_lbl 2161 `"Building architects"', add
label define br10a_occ_lbl 2162 `"Landscape architects"', add
label define br10a_occ_lbl 2163 `"Product and garment designers"', add
label define br10a_occ_lbl 2164 `"Town and traffic planners"', add
label define br10a_occ_lbl 2165 `"Cartographers and surveyors"', add
label define br10a_occ_lbl 2166 `"Graphic and multimedia designers"', add
label define br10a_occ_lbl 2211 `"Generalist medical practitioners"', add
label define br10a_occ_lbl 2212 `"Specialist medical practitioners"', add
label define br10a_occ_lbl 2221 `"Nursing professionals"', add
label define br10a_occ_lbl 2230 `"Traditional and complementary medicine professionals"', add
label define br10a_occ_lbl 2240 `"Paramedical practitioners"', add
label define br10a_occ_lbl 2250 `"Veterinarians"', add
label define br10a_occ_lbl 2261 `"Dentists"', add
label define br10a_occ_lbl 2262 `"Pharmacists"', add
label define br10a_occ_lbl 2263 `"Environmental and occupational health and hygiene professionals"', add
label define br10a_occ_lbl 2264 `"Physiotherapists"', add
label define br10a_occ_lbl 2265 `"Dieticians and nutritionists"', add
label define br10a_occ_lbl 2266 `"Audiologists and speech therapists"', add
label define br10a_occ_lbl 2267 `"Optometrists and ophthalmic opticians"', add
label define br10a_occ_lbl 2269 `"Health professionals not elsewhere classified"', add
label define br10a_occ_lbl 2310 `"University and higher education teachers"', add
label define br10a_occ_lbl 2320 `"Vocational education teachers"', add
label define br10a_occ_lbl 2330 `"Secondary education teachers"', add
label define br10a_occ_lbl 2341 `"Primary school teachers"', add
label define br10a_occ_lbl 2342 `"Early childhood educators"', add
label define br10a_occ_lbl 2351 `"Education methods specialists"', add
label define br10a_occ_lbl 2352 `"Special needs teachers"', add
label define br10a_occ_lbl 2353 `"Other language teachers"', add
label define br10a_occ_lbl 2354 `"Other music teachers"', add
label define br10a_occ_lbl 2355 `"Other arts teachers"', add
label define br10a_occ_lbl 2356 `"Information technology trainers"', add
label define br10a_occ_lbl 2359 `"Teaching professionals not elsewhere classified"', add
label define br10a_occ_lbl 2411 `"Accountants"', add
label define br10a_occ_lbl 2412 `"Financial and investment advisers"', add
label define br10a_occ_lbl 2413 `"Financial analysts"', add
label define br10a_occ_lbl 2421 `"Management and organization analysts"', add
label define br10a_occ_lbl 2422 `"Policy administration professionals"', add
label define br10a_occ_lbl 2423 `"Personnel and careers professionals"', add
label define br10a_occ_lbl 2424 `"Training and staff development professionals"', add
label define br10a_occ_lbl 2431 `"Advertising and marketing professionals"', add
label define br10a_occ_lbl 2432 `"Public relations professionals"', add
label define br10a_occ_lbl 2433 `"Technical and medical sales professionals (excluding ICT)"', add
label define br10a_occ_lbl 2434 `"Information and communications technology sales professionals"', add
label define br10a_occ_lbl 2511 `"Systems analysts"', add
label define br10a_occ_lbl 2512 `"Software developers"', add
label define br10a_occ_lbl 2513 `"Web and multimedia developers"', add
label define br10a_occ_lbl 2514 `"Applications programmers"', add
label define br10a_occ_lbl 2519 `"Software and applications developers and analysts not elsewhere classified"', add
label define br10a_occ_lbl 2521 `"Database designers and administrators"', add
label define br10a_occ_lbl 2522 `"Systems administrators"', add
label define br10a_occ_lbl 2523 `"Computer network professionals"', add
label define br10a_occ_lbl 2529 `"Database and network professionals not elsewhere classified"', add
label define br10a_occ_lbl 2611 `"Lawyers"', add
label define br10a_occ_lbl 2612 `"Judges"', add
label define br10a_occ_lbl 2619 `"Legal professionals not elsewhere classified"', add
label define br10a_occ_lbl 2621 `"Archivists and curators"', add
label define br10a_occ_lbl 2622 `"Librarians and related information professionals"', add
label define br10a_occ_lbl 2631 `"Economists"', add
label define br10a_occ_lbl 2632 `"Sociologists, anthropologists and related professionals"', add
label define br10a_occ_lbl 2633 `"Philosophers, historians and political scientists"', add
label define br10a_occ_lbl 2634 `"Psychologists"', add
label define br10a_occ_lbl 2635 `"Social work and counselling professionals"', add
label define br10a_occ_lbl 2636 `"Religious professionals"', add
label define br10a_occ_lbl 2641 `"Authors and related writers"', add
label define br10a_occ_lbl 2642 `"Journalists"', add
label define br10a_occ_lbl 2643 `"Translators, interpreters and other linguists"', add
label define br10a_occ_lbl 2651 `"Visual artists"', add
label define br10a_occ_lbl 2652 `"Musicians, singers and composers"', add
label define br10a_occ_lbl 2653 `"Dancers and choreographers"', add
label define br10a_occ_lbl 2654 `"Film, stage and related directors and producers"', add
label define br10a_occ_lbl 2655 `"Actors"', add
label define br10a_occ_lbl 2656 `"Announcers on radio, television and other media"', add
label define br10a_occ_lbl 2659 `"Creative and performing artists not elsewhere classified"', add
label define br10a_occ_lbl 3111 `"Chemical and physical science technicians"', add
label define br10a_occ_lbl 3112 `"Civil engineering technicians"', add
label define br10a_occ_lbl 3113 `"Electrical engineering technicians"', add
label define br10a_occ_lbl 3114 `"Electronics engineering technicians"', add
label define br10a_occ_lbl 3115 `"Mechanical engineering technicians"', add
label define br10a_occ_lbl 3116 `"Chemical engineering technicians"', add
label define br10a_occ_lbl 3117 `"Mining and metallurgical technicians"', add
label define br10a_occ_lbl 3118 `"Draughtspersons"', add
label define br10a_occ_lbl 3119 `"Physical and engineering science technicians not elsewhere classified"', add
label define br10a_occ_lbl 3121 `"Mining supervisors"', add
label define br10a_occ_lbl 3122 `"Manufacturing supervisors"', add
label define br10a_occ_lbl 3123 `"Construction supervisors"', add
label define br10a_occ_lbl 3131 `"Power production plant operators"', add
label define br10a_occ_lbl 3132 `"Incinerator and water treatment plant operators"', add
label define br10a_occ_lbl 3133 `"Chemical processing plant controllers"', add
label define br10a_occ_lbl 3134 `"Petroleum and natural gas refining plant operators"', add
label define br10a_occ_lbl 3135 `"Metal production process controllers"', add
label define br10a_occ_lbl 3139 `"Process control technicians not elsewhere classified"', add
label define br10a_occ_lbl 3141 `"Life science technicians (excluding medical)"', add
label define br10a_occ_lbl 3142 `"Agricultural technicians"', add
label define br10a_occ_lbl 3143 `"Forestry technicians"', add
label define br10a_occ_lbl 3151 `"Ships' engineers"', add
label define br10a_occ_lbl 3152 `"Ships' deck officers and pilots"', add
label define br10a_occ_lbl 3153 `"Aircraft pilots and related associate professionals"', add
label define br10a_occ_lbl 3154 `"Air traffic controllers"', add
label define br10a_occ_lbl 3155 `"Air traffic safety electronics technicians"', add
label define br10a_occ_lbl 3211 `"Medical imaging and therapeutic equipment technicians"', add
label define br10a_occ_lbl 3212 `"Medical and pathology laboratory technicians"', add
label define br10a_occ_lbl 3213 `"Pharmaceutical technicians and assistants"', add
label define br10a_occ_lbl 3214 `"Medical and dental prosthetic technicians"', add
label define br10a_occ_lbl 3221 `"	Nursing associate professionals"', add
label define br10a_occ_lbl 3222 `"Midwifery associate professionals"', add
label define br10a_occ_lbl 3230 `"Traditional and complementary medicine associate professionals"', add
label define br10a_occ_lbl 3240 `"Veterinary technicians and assistants"', add
label define br10a_occ_lbl 3251 `"Dental assistants and therapists"', add
label define br10a_occ_lbl 3252 `"Medical records and health information technicians"', add
label define br10a_occ_lbl 3253 `"Community health workers"', add
label define br10a_occ_lbl 3254 `"Dispensing opticians"', add
label define br10a_occ_lbl 3255 `"Physiotherapy technicians and assistants"', add
label define br10a_occ_lbl 3256 `"Medical assistants"', add
label define br10a_occ_lbl 3257 `"Environmental and occupational health inspectors and associates"', add
label define br10a_occ_lbl 3258 `"Ambulance workers"', add
label define br10a_occ_lbl 3259 `"Health associate professionals not elsewhere classified"', add
label define br10a_occ_lbl 3311 `"Securities and finance dealers and brokers"', add
label define br10a_occ_lbl 3312 `"Credit and loans officers"', add
label define br10a_occ_lbl 3313 `"Accounting associate professionals"', add
label define br10a_occ_lbl 3314 `"Statistical, mathematical and related associate professionals"', add
label define br10a_occ_lbl 3315 `"Valuers and loss assessors"', add
label define br10a_occ_lbl 3321 `"Insurance representatives"', add
label define br10a_occ_lbl 3322 `"Commercial sales representatives"', add
label define br10a_occ_lbl 3323 `"Buyers"', add
label define br10a_occ_lbl 3324 `"Trade brokers"', add
label define br10a_occ_lbl 3331 `"Clearing and forwarding agents"', add
label define br10a_occ_lbl 3332 `"Conference and event planners"', add
label define br10a_occ_lbl 3333 `"Employment agents and contractors"', add
label define br10a_occ_lbl 3334 `"Real estate agents and property managers"', add
label define br10a_occ_lbl 3339 `"Business services agents not elsewhere classified"', add
label define br10a_occ_lbl 3341 `"office supervisors"', add
label define br10a_occ_lbl 3342 `"Legal secretaries"', add
label define br10a_occ_lbl 3343 `"Administrative and executive secretaries"', add
label define br10a_occ_lbl 3344 `"Medical secretaries"', add
label define br10a_occ_lbl 3351 `"Customs and border inspectors"', add
label define br10a_occ_lbl 3352 `"Government tax and excise officials"', add
label define br10a_occ_lbl 3353 `"Government social benefits officials"', add
label define br10a_occ_lbl 3354 `"Government licensing officials"', add
label define br10a_occ_lbl 3355 `"Police inspectors and detectives"', add
label define br10a_occ_lbl 3359 `"Government regulatory associate professionals not elsewhere classified"', add
label define br10a_occ_lbl 3411 `"Legal and related associate professionals"', add
label define br10a_occ_lbl 3412 `"Social work associate professionals"', add
label define br10a_occ_lbl 3413 `"Religious associate professionals"', add
label define br10a_occ_lbl 3421 `"Athletes and sports players"', add
label define br10a_occ_lbl 3422 `"Sports coaches, instructors and officials"', add
label define br10a_occ_lbl 3423 `"Fitness and recreation instructors and program leaders"', add
label define br10a_occ_lbl 3431 `"Photographers"', add
label define br10a_occ_lbl 3432 `"Interior designers and decorators"', add
label define br10a_occ_lbl 3433 `"Gallery, museum and library technicians"', add
label define br10a_occ_lbl 3434 `"Chefs"', add
label define br10a_occ_lbl 3435 `"Artistic and cultural associate professionals not elsewhere classified"', add
label define br10a_occ_lbl 3511 `"Information and communications technology operations technicians"', add
label define br10a_occ_lbl 3512 `"Information and communications technology user support technicians"', add
label define br10a_occ_lbl 3513 `"Computer network and systems technicians"', add
label define br10a_occ_lbl 3514 `"Web technicians"', add
label define br10a_occ_lbl 3521 `"Broadcasting and audio-visual technicians"', add
label define br10a_occ_lbl 3522 `"Telecommunications engineering technicians"', add
label define br10a_occ_lbl 4110 `"General office clerks"', add
label define br10a_occ_lbl 4120 `"Secretaries (general)"', add
label define br10a_occ_lbl 4131 `"Typists and word processing operators"', add
label define br10a_occ_lbl 4132 `"Data entry clerks"', add
label define br10a_occ_lbl 4211 `"Bank tellers and related clerks"', add
label define br10a_occ_lbl 4212 `"Bookmakers, croupiers and related gaming workers"', add
label define br10a_occ_lbl 4213 `"Pawnbrokers and money-lenders"', add
label define br10a_occ_lbl 4214 `"Debt-collectors and related workers"', add
label define br10a_occ_lbl 4221 `"Travel consultants and clerks"', add
label define br10a_occ_lbl 4222 `"Contact centre information clerks"', add
label define br10a_occ_lbl 4223 `"Telephone switchboard operators"', add
label define br10a_occ_lbl 4224 `"Hotel receptionists"', add
label define br10a_occ_lbl 4225 `"Enquiry clerks"', add
label define br10a_occ_lbl 4226 `"Receptionists (general)"', add
label define br10a_occ_lbl 4227 `"Survey and market research interviewers"', add
label define br10a_occ_lbl 4229 `"Client information workers not elsewhere classified"', add
label define br10a_occ_lbl 4311 `"Accounting and bookkeeping clerks"', add
label define br10a_occ_lbl 4312 `"Statistical, finance and insurance clerks"', add
label define br10a_occ_lbl 4313 `"Payroll clerks"', add
label define br10a_occ_lbl 4321 `"Stock clerks"', add
label define br10a_occ_lbl 4322 `"Production clerks"', add
label define br10a_occ_lbl 4323 `"Transport clerks"', add
label define br10a_occ_lbl 4411 `"Library clerks"', add
label define br10a_occ_lbl 4412 `"Mail carriers and sorting clerks"', add
label define br10a_occ_lbl 4413 `"Coding, proof-reading and related clerks"', add
label define br10a_occ_lbl 4414 `"Scribes and related workers"', add
label define br10a_occ_lbl 4415 `"Filing and copying clerks"', add
label define br10a_occ_lbl 4416 `"Personnel clerks"', add
label define br10a_occ_lbl 4419 `"Clerical support workers not elsewhere classified"', add
label define br10a_occ_lbl 5111 `"Travel attendants and travel stewards"', add
label define br10a_occ_lbl 5112 `"Transport conductors"', add
label define br10a_occ_lbl 5113 `"Travel guides"', add
label define br10a_occ_lbl 5120 `"Cooks"', add
label define br10a_occ_lbl 5131 `"Waiters"', add
label define br10a_occ_lbl 5132 `"Bartenders"', add
label define br10a_occ_lbl 5141 `"Hairdressers"', add
label define br10a_occ_lbl 5142 `"Beauticians and related workers"', add
label define br10a_occ_lbl 5151 `"Cleaning and housekeeping supervisors in offices, hotels and other establishments"', add
label define br10a_occ_lbl 5152 `"Domestic housekeepers"', add
label define br10a_occ_lbl 5153 `"Building caretakers"', add
label define br10a_occ_lbl 5161 `"Astrologers, fortune-tellers and related workers"', add
label define br10a_occ_lbl 5162 `"Companions and valets"', add
label define br10a_occ_lbl 5163 `"Undertakers and embalmers"', add
label define br10a_occ_lbl 5164 `"Pet groomers and animal care workers"', add
label define br10a_occ_lbl 5165 `"Driving instructors"', add
label define br10a_occ_lbl 5168 `"Sexual Workers"', add
label define br10a_occ_lbl 5169 `"Personal services workers not elsewhere classified"', add
label define br10a_occ_lbl 5211 `"Stall and market salespersons"', add
label define br10a_occ_lbl 5212 `"Street food salespersons"', add
label define br10a_occ_lbl 5221 `"Shopkeepers"', add
label define br10a_occ_lbl 5222 `"Shop supervisors"', add
label define br10a_occ_lbl 5223 `"Shop sales assistants"', add
label define br10a_occ_lbl 5230 `"Cashiers and ticket clerks"', add
label define br10a_occ_lbl 5241 `"Fashion and other models"', add
label define br10a_occ_lbl 5242 `"Sales demonstrators"', add
label define br10a_occ_lbl 5243 `"Door to door salespersons"', add
label define br10a_occ_lbl 5244 `"Contact centre salespersons"', add
label define br10a_occ_lbl 5245 `"Service station attendants"', add
label define br10a_occ_lbl 5246 `"Food service counter attendants"', add
label define br10a_occ_lbl 5249 `"Sales workers not elsewhere classified"', add
label define br10a_occ_lbl 5311 `"Child care workers"', add
label define br10a_occ_lbl 5312 `"Teachers' aides"', add
label define br10a_occ_lbl 5321 `"Health care assistants"', add
label define br10a_occ_lbl 5322 `"Home-based personal care workers"', add
label define br10a_occ_lbl 5329 `"Personal care workers in health services not elsewhere classified"', add
label define br10a_occ_lbl 5411 `"Firefighters"', add
label define br10a_occ_lbl 5412 `"Police officers"', add
label define br10a_occ_lbl 5413 `"Prison guards"', add
label define br10a_occ_lbl 5414 `"Security guards"', add
label define br10a_occ_lbl 5419 `"Protective services workers not elsewhere classified"', add
label define br10a_occ_lbl 6111 `"Field crop and vegetable growers"', add
label define br10a_occ_lbl 6112 `"Tree and shrub crop growers"', add
label define br10a_occ_lbl 6114 `"Mixed crop growers"', add
label define br10a_occ_lbl 6121 `"Livestock and dairy producers"', add
label define br10a_occ_lbl 6122 `"Poultry producers"', add
label define br10a_occ_lbl 6123 `"Apiarists and sericulturists"', add
label define br10a_occ_lbl 6129 `"Animal producers not elsewhere classified"', add
label define br10a_occ_lbl 6130 `"Mixed crop and animal producers"', add
label define br10a_occ_lbl 6210 `"Forestry and related workers"', add
label define br10a_occ_lbl 6221 `"Aquaculture workers"', add
label define br10a_occ_lbl 6224 `"Hunters and trappers"', add
label define br10a_occ_lbl 6225 `"Fishermen"', add
label define br10a_occ_lbl 7111 `"House builders"', add
label define br10a_occ_lbl 7112 `"Bricklayers and related workers"', add
label define br10a_occ_lbl 7113 `"Stonemasons, stone cutters, splitters and carvers"', add
label define br10a_occ_lbl 7114 `"Concrete placers, concrete finishers and related workers"', add
label define br10a_occ_lbl 7115 `"Carpenters and joiners"', add
label define br10a_occ_lbl 7119 `"Building frame and related trades workers not elsewhere classified"', add
label define br10a_occ_lbl 7121 `"Roofers"', add
label define br10a_occ_lbl 7122 `"Floor layers and tile setters"', add
label define br10a_occ_lbl 7123 `"Plasterers"', add
label define br10a_occ_lbl 7124 `"Insulation workers"', add
label define br10a_occ_lbl 7125 `"Glaziers"', add
label define br10a_occ_lbl 7126 `"Plumbers and pipe fitters"', add
label define br10a_occ_lbl 7127 `"Air conditioning and refrigeration mechanics"', add
label define br10a_occ_lbl 7131 `"Painters and related workers"', add
label define br10a_occ_lbl 7132 `"Spray painters and varnishers"', add
label define br10a_occ_lbl 7211 `"Metal moulders and coremakers"', add
label define br10a_occ_lbl 7212 `"Welders and flame cutters"', add
label define br10a_occ_lbl 7213 `"Sheet metal workers"', add
label define br10a_occ_lbl 7214 `"Structural metal preparers and erectors"', add
label define br10a_occ_lbl 7215 `"Riggers and cable splicers"', add
label define br10a_occ_lbl 7221 `"Blacksmiths, hammersmiths and forging press workers"', add
label define br10a_occ_lbl 7222 `"Toolmakers and related workers"', add
label define br10a_occ_lbl 7223 `"Metal working machine tool setters and operators"', add
label define br10a_occ_lbl 7224 `"Metal polishers, wheel grinders and tool sharpeners"', add
label define br10a_occ_lbl 7231 `"Motor vehicle mechanics and repairers"', add
label define br10a_occ_lbl 7232 `"Aircraft engine mechanics and repairers"', add
label define br10a_occ_lbl 7233 `"Agricultural and industrial machinery mechanics and repairers"', add
label define br10a_occ_lbl 7234 `"Bicycle and related repairers"', add
label define br10a_occ_lbl 7311 `"Precision-instrument makers and repairers"', add
label define br10a_occ_lbl 7312 `"Musical instrument makers and tuners"', add
label define br10a_occ_lbl 7313 `"Jewellery and precious metal workers"', add
label define br10a_occ_lbl 7314 `"Potters and related workers"', add
label define br10a_occ_lbl 7315 `"Glass makers, cutters, grinders and finishers"', add
label define br10a_occ_lbl 7316 `"Sign writers, decorative painters, engravers and etchers"', add
label define br10a_occ_lbl 7317 `"Handicraft workers in wood, basketry and related materials"', add
label define br10a_occ_lbl 7318 `"Handicraft workers in textile, leather and related materials"', add
label define br10a_occ_lbl 7319 `"Handicraft workers not elsewhere classified"', add
label define br10a_occ_lbl 7321 `"Pre-press technicians"', add
label define br10a_occ_lbl 7322 `"Printers"', add
label define br10a_occ_lbl 7323 `"	Print finishing and binding workers"', add
label define br10a_occ_lbl 7411 `"Building and related electricians"', add
label define br10a_occ_lbl 7412 `"Electrical mechanics and fitters"', add
label define br10a_occ_lbl 7413 `"Electrical line installers and repairers"', add
label define br10a_occ_lbl 7421 `"Electronics mechanics and servicers"', add
label define br10a_occ_lbl 7422 `"Information and communications technology installers and servicers"', add
label define br10a_occ_lbl 7511 `"Butchers, fishmongers and related food preparers"', add
label define br10a_occ_lbl 7512 `"Bakers, pastry-cooks and confectionery makers"', add
label define br10a_occ_lbl 7513 `"Dairy products makers"', add
label define br10a_occ_lbl 7514 `"Fruit, vegetable and related preservers"', add
label define br10a_occ_lbl 7515 `"Food and beverage tasters and graders"', add
label define br10a_occ_lbl 7516 `"Tobacco preparers and tobacco products makers"', add
label define br10a_occ_lbl 7521 `"Wood treaters"', add
label define br10a_occ_lbl 7522 `"Cabinet-makers and related workers"', add
label define br10a_occ_lbl 7523 `"Woodworking machine tool setters and operators"', add
label define br10a_occ_lbl 7531 `"Tailors, dressmakers, furriers and hatters"', add
label define br10a_occ_lbl 7532 `"Garment and related patternmakers and cutters"', add
label define br10a_occ_lbl 7533 `"Sewing, embroidery and related workers"', add
label define br10a_occ_lbl 7534 `"Upholsterers and related workers"', add
label define br10a_occ_lbl 7535 `"Pelt dressers, tanners and fellmongers"', add
label define br10a_occ_lbl 7536 `"Shoemakers and related workers"', add
label define br10a_occ_lbl 7541 `"Underwater divers"', add
label define br10a_occ_lbl 7542 `"Shotfirers and blasters"', add
label define br10a_occ_lbl 7543 `"Product graders and testers (except foods and beverages)"', add
label define br10a_occ_lbl 7544 `"Fumigators and other pest and weed controllers"', add
label define br10a_occ_lbl 7549 `"Craft and related workers not elsewhere classified"', add
label define br10a_occ_lbl 8111 `"Miners and quarriers"', add
label define br10a_occ_lbl 8112 `"Mineral and stone processing plant operators"', add
label define br10a_occ_lbl 8113 `"Well drillers and borers and related workers"', add
label define br10a_occ_lbl 8114 `"Cement, stone and other mineral products machine operators"', add
label define br10a_occ_lbl 8121 `"Metal processing plant operators"', add
label define br10a_occ_lbl 8122 `"Metal finishing, plating and coating machine operators"', add
label define br10a_occ_lbl 8131 `"Chemical products plant and machine operators"', add
label define br10a_occ_lbl 8132 `"Photographic products machine operators"', add
label define br10a_occ_lbl 8141 `"Rubber products machine operators"', add
label define br10a_occ_lbl 8142 `"Plastic products machine operators"', add
label define br10a_occ_lbl 8143 `"Paper products machine operators"', add
label define br10a_occ_lbl 8151 `"Fibre preparing, spinning and winding machine operators"', add
label define br10a_occ_lbl 8152 `"Weaving and knitting machine operators"', add
label define br10a_occ_lbl 8153 `"Sewing machine operators"', add
label define br10a_occ_lbl 8154 `"Bleaching, dyeing and fabric cleaning machine operators"', add
label define br10a_occ_lbl 8155 `"Fur and leather preparing machine operators"', add
label define br10a_occ_lbl 8156 `"Shoemaking and related machine operators"', add
label define br10a_occ_lbl 8157 `"Laundry machine operators"', add
label define br10a_occ_lbl 8159 `"Textile, fur and leather products machine operators not elsewhere classified"', add
label define br10a_occ_lbl 8160 `"Food and related products machine operators"', add
label define br10a_occ_lbl 8171 `"Pulp and papermaking plant operators"', add
label define br10a_occ_lbl 8172 `"Wood processing plant operators"', add
label define br10a_occ_lbl 8181 `"Glass and ceramics plant operators"', add
label define br10a_occ_lbl 8182 `"Steam engine and boiler operators"', add
label define br10a_occ_lbl 8183 `"Packing, bottling and labelling machine operators"', add
label define br10a_occ_lbl 8189 `"Stationary plant and machine operators not elsewhere classified"', add
label define br10a_occ_lbl 8211 `"Mechanical machinery assemblers"', add
label define br10a_occ_lbl 8212 `"Electrical and electronic equipment assemblers"', add
label define br10a_occ_lbl 8219 `"Assemblers not elsewhere classified"', add
label define br10a_occ_lbl 8311 `"Locomotive engine drivers"', add
label define br10a_occ_lbl 8312 `"Railway brake, signal and switch operators"', add
label define br10a_occ_lbl 8321 `"Motorcycle drivers"', add
label define br10a_occ_lbl 8322 `"Car, taxi and van drivers"', add
label define br10a_occ_lbl 8331 `"Bus and tram drivers"', add
label define br10a_occ_lbl 8332 `"Heavy truck and lorry drivers"', add
label define br10a_occ_lbl 8341 `"Mobile farm and forestry plant operators"', add
label define br10a_occ_lbl 8342 `"Earthmoving and related plant operators"', add
label define br10a_occ_lbl 8343 `"Crane, hoist and related plant operators"', add
label define br10a_occ_lbl 8344 `"Lifting truck operators"', add
label define br10a_occ_lbl 8350 `"Ships' deck crews and related workers"', add
label define br10a_occ_lbl 9111 `"Domestic cleaners and helpers"', add
label define br10a_occ_lbl 9112 `"Cleaners and helpers in offices, hotels and other establishments"', add
label define br10a_occ_lbl 9121 `"Hand launderers and pressers"', add
label define br10a_occ_lbl 9122 `"Vehicle cleaners"', add
label define br10a_occ_lbl 9123 `"Window cleaners"', add
label define br10a_occ_lbl 9129 `"Other cleaning workers"', add
label define br10a_occ_lbl 9211 `"Crop farm labourers"', add
label define br10a_occ_lbl 9212 `"Livestock farm labourers"', add
label define br10a_occ_lbl 9213 `"Mixed crop and livestock farm labourers"', add
label define br10a_occ_lbl 9214 `"Garden and horticultural labourers"', add
label define br10a_occ_lbl 9215 `"Forestry labourers"', add
label define br10a_occ_lbl 9216 `"Fishery and aquaculture labourers"', add
label define br10a_occ_lbl 9311 `"Mining and quarrying labourers"', add
label define br10a_occ_lbl 9312 `"Civil engineering labourers"', add
label define br10a_occ_lbl 9313 `"Building construction labourers"', add
label define br10a_occ_lbl 9321 `"Hand packers"', add
label define br10a_occ_lbl 9329 `"Manufacturing labourers not elsewhere classified"', add
label define br10a_occ_lbl 9331 `"Hand and pedal vehicle drivers"', add
label define br10a_occ_lbl 9332 `"Drivers of animal-drawn vehicles and machinery"', add
label define br10a_occ_lbl 9333 `"Freight handlers"', add
label define br10a_occ_lbl 9334 `"Shelf fillers"', add
label define br10a_occ_lbl 9411 `"Fast food preparers"', add
label define br10a_occ_lbl 9412 `"Kitchen helpers"', add
label define br10a_occ_lbl 9510 `"Street and related service workers"', add
label define br10a_occ_lbl 9520 `"Street vendors (excluding food)"', add
label define br10a_occ_lbl 9611 `"Garbage and recycling collectors"', add
label define br10a_occ_lbl 9612 `"Refuse sorters"', add
label define br10a_occ_lbl 9613 `"Sweepers and related labourers"', add
label define br10a_occ_lbl 9621 `"Messengers, package deliverers and luggage porters"', add
label define br10a_occ_lbl 9622 `"Odd job persons"', add
label define br10a_occ_lbl 9623 `"Meter readers and vending-machine collectors"', add
label define br10a_occ_lbl 9624 `"Water and firewood collectors"', add
label define br10a_occ_lbl 9629 `"Elementary workers not elsewhere classified"', add
label define br10a_occ_lbl 9990 `"RESPONSE SUPPRESSED"', add
label define br10a_occ_lbl 9999 `"NIU (not in universe)"', add
label values br10a_occ br10a_occ_lbl

label define br10a_ind_lbl 00000 `"Poorly specified activities"'
label define br10a_ind_lbl 01101 `"Cultivation of rice"', add
label define br10a_ind_lbl 01102 `"Cultivation of corn"', add
label define br10a_ind_lbl 01103 `"Cultivation of other cereals for grains"', add
label define br10a_ind_lbl 01104 `"Cultivation of herbaceous cotton"', add
label define br10a_ind_lbl 01105 `"Cultivation of sugar cane"', add
label define br10a_ind_lbl 01106 `"Cultivation of tobacco"', add
label define br10a_ind_lbl 01107 `"Cultivation of soybeans"', add
label define br10a_ind_lbl 01108 `"Cultivation of manioc root"', add
label define br10a_ind_lbl 01109 `"Cultivation of other temporary agricultural farm products"', add
label define br10a_ind_lbl 01110 `"Cultivation of salad greens, vegetables and other such plant products"', add
label define br10a_ind_lbl 01111 `"Cultivation of flowers, ornamental plants and greenhouse products"', add
label define br10a_ind_lbl 01112 `"Cultivation of citric fruits"', add
label define br10a_ind_lbl 01113 `"Cultivation of coffee"', add
label define br10a_ind_lbl 01114 `"Cultivation of cocoa beans"', add
label define br10a_ind_lbl 01115 `"Cultivation of grapes"', add
label define br10a_ind_lbl 01116 `"Cultivation of bananas"', add
label define br10a_ind_lbl 01117 `"Cultivation of other permanent farming products"', add
label define br10a_ind_lbl 01118 `"Poorly specified farm crops"', add
label define br10a_ind_lbl 01119 `"Non-specified crop"', add
label define br10a_ind_lbl 01201 `"Cattle raising"', add
label define br10a_ind_lbl 01202 `"Raising of other large animals"', add
label define br10a_ind_lbl 01203 `"Sheep raising"', add
label define br10a_ind_lbl 01204 `"Swine raising"', add
label define br10a_ind_lbl 01205 `"Poultry raising"', add
label define br10a_ind_lbl 01206 `"Bee raising"', add
label define br10a_ind_lbl 01207 `"Silk production"', add
label define br10a_ind_lbl 01208 `"Raising of other animals"', add
label define br10a_ind_lbl 01209 `"Raising of poorly specified animals"', add
label define br10a_ind_lbl 01401 `"Activities in services related to agriculture"', add
label define br10a_ind_lbl 01402 `"Activities in services related to cattle raising - except veterinary activities"', add
label define br10a_ind_lbl 01500 `"Hunting, animal resettlement and related services"', add
label define br10a_ind_lbl 01999 `"Agriculture"', add
label define br10a_ind_lbl 02000 `"Lumber industry and forest exploitation"', add
label define br10a_ind_lbl 03001 `"Fishing and related services"', add
label define br10a_ind_lbl 03002 `"Aquiculture and related services"', add
label define br10a_ind_lbl 05000 `"Coal mining"', add
label define br10a_ind_lbl 06000 `"Extraction of oil and natural gas and related services"', add
label define br10a_ind_lbl 07001 `"Extraction of ores of precious metals"', add
label define br10a_ind_lbl 07002 `"Extraction of non-specified precious metals"', add
label define br10a_ind_lbl 08001 `"Extraction of stones and other construction materials"', add
label define br10a_ind_lbl 08002 `"Extraction of precious and semi-precious stones"', add
label define br10a_ind_lbl 08009 `"Extraction of non-specified mineral metals"', add
label define br10a_ind_lbl 08999 `"Extraction of non-specified mineral metals"', add
label define br10a_ind_lbl 09000 `"Activities in services related to extraction of metallic minerals"', add
label define br10a_ind_lbl 10010 `"Slaughtering and preparation of meat and fish"', add
label define br10a_ind_lbl 10021 `"Production of preserves of fruit, vegetables and other vegetable products"', add
label define br10a_ind_lbl 10022 `"Production of vegetable fat and oil"', add
label define br10a_ind_lbl 10030 `"Manufacturing of dairy products"', add
label define br10a_ind_lbl 10091 `"Manufacturing of animal feed"', add
label define br10a_ind_lbl 10092 `"Manufacturing and refining of sugar"', add
label define br10a_ind_lbl 10093 `"Roasting and grinding of coffee"', add
label define br10a_ind_lbl 10099 `"Manufacturing of other food products"', add
label define br10a_ind_lbl 10999 `"Manufacturing of non-spacified food products"', add
label define br10a_ind_lbl 11000 `"Manufacturing of beverages"', add
label define br10a_ind_lbl 12000 `"Manufacturing of tobacco products"', add
label define br10a_ind_lbl 13001 `"Processing of fibers, weaving and cloth making"', add
label define br10a_ind_lbl 13002 `"Manufacturing of textile objects based on cloth - except for garments"', add
label define br10a_ind_lbl 13999 `"Manufacturing of textiles (Non-specified)"', add
label define br10a_ind_lbl 14001 `"Making of clothing articles and accessories - except on order"', add
label define br10a_ind_lbl 14002 `"Making clothing articles and accessories - on order"', add
label define br10a_ind_lbl 14999 `"Making of clothing articles and accessories - on order or not"', add
label define br10a_ind_lbl 15011 `"Tanning and other preparations of leather"', add
label define br10a_ind_lbl 15012 `"Manufacturing of leather objects"', add
label define br10a_ind_lbl 15020 `"Manufacturing of footwear"', add
label define br10a_ind_lbl 16001 `"Sawmills"', add
label define br10a_ind_lbl 16002 `"Manufacturing of wooden products"', add
label define br10a_ind_lbl 17001 `"Manufacturing of pulp, paper and smooth cardboard, poster paper and card paper"', add
label define br10a_ind_lbl 17002 `"Manufacturing of corrugated cardboard and of packaging, and of paper and cardboard objects"', add
label define br10a_ind_lbl 18000 `"Editing, printing and reproduction of recordings"', add
label define br10a_ind_lbl 19010 `"Coke plants"', add
label define br10a_ind_lbl 19020 `"Manufacturing of products in oil refining"', add
label define br10a_ind_lbl 19030 `"Biofuels production"', add
label define br10a_ind_lbl 20010 `"Manufacturing of paints, dyes, varnish, enamels and lacquers"', add
label define br10a_ind_lbl 20020 `"Manufacturing of soap, detergents, cleaning products and toiletries"', add
label define br10a_ind_lbl 20090 `"Manufacturing of miscellaneous chemical products"', add
label define br10a_ind_lbl 20999 `"Manufacturing of non-specified chemical products"', add
label define br10a_ind_lbl 21000 `"Manufacturing of pharmaceutical products"', add
label define br10a_ind_lbl 22010 `"Manufacturing of rubber products"', add
label define br10a_ind_lbl 22020 `"Manufacturing of plastic products"', add
label define br10a_ind_lbl 23010 `"Manufacturing of glass and glass products"', add
label define br10a_ind_lbl 23091 `"Manufacturing of ceramic products"', add
label define br10a_ind_lbl 23099 `"Manufacturing of other mineral non-metallic products"', add
label define br10a_ind_lbl 24001 `"Manufacturing of miscellaneous products of non-metallic minerals"', add
label define br10a_ind_lbl 24002 `"Metallurgy of non-ferrous metals"', add
label define br10a_ind_lbl 24003 `"Foundries"', add
label define br10a_ind_lbl 24999 `"Manufacturing of non-specified metallurgy products"', add
label define br10a_ind_lbl 25001 `"Manufacturing of metal products - except machines and equipment"', add
label define br10a_ind_lbl 25002 `"Foundries, stamping shops, powder metallurgy and metal treatment services"', add
label define br10a_ind_lbl 26010 `"Manufacturing of electronic material"', add
label define br10a_ind_lbl 26020 `"Manufacturing of office machines and data-processing equipment"', add
label define br10a_ind_lbl 26030 `"Manufacturing of electronic material and communications equipment"', add
label define br10a_ind_lbl 26041 `"Manufacturing of measuring, testing and control equipment - except for controlling industrial processes"', add
label define br10a_ind_lbl 26042 `"Manufacturing of equipment, instruments and optical, photographic and cinematographic material"', add
label define br10a_ind_lbl 26999 `"Manufacturing of non-specified electronic products"', add
label define br10a_ind_lbl 27010 `"Manufacturing of appliances"', add
label define br10a_ind_lbl 27090 `"Manufacturing of machines, equipment and miscellaneous electric material - except for appliances"', add
label define br10a_ind_lbl 27999 `"Manufacturing of non-specified electronic products"', add
label define br10a_ind_lbl 28000 `"Manufacturing of machines and equipment - except appliances"', add
label define br10a_ind_lbl 29001 `"Manufacturing and assembly of motor vehicles"', add
label define br10a_ind_lbl 29002 `"Manufacturing of cabins, car bodies, trailers and parts for motor vehicles"', add
label define br10a_ind_lbl 30010 `"Construction and repair of boats"', add
label define br10a_ind_lbl 30020 `"Construction and assembly of locomotives, cars and other rolling stock"', add
label define br10a_ind_lbl 30030 `"Construction, assembly and repair of airplanes"', add
label define br10a_ind_lbl 30090 `"Manufacturing of miscellaneous transportation equipment"', add
label define br10a_ind_lbl 31000 `"Manufacturing of pieces of furniture"', add
label define br10a_ind_lbl 32001 `"Manufacturing of pieces of jewelry"', add
label define br10a_ind_lbl 32002 `"Manufacturing of musical instruments"', add
label define br10a_ind_lbl 32003 `"Manufacturing of sport equipment"', add
label define br10a_ind_lbl 32009 `"Manufacturing of miscellaneous products"', add
label define br10a_ind_lbl 32999 `"Manufacturing of non-specified industrial products"', add
label define br10a_ind_lbl 33001 `"Repairing and maintenance of machinery and equipment"', add
label define br10a_ind_lbl 33002 `"Installation of machinery and equipment"', add
label define br10a_ind_lbl 35010 `"Production and distribution of electric energy"', add
label define br10a_ind_lbl 35021 `"Production and distribution of piped gas"', add
label define br10a_ind_lbl 36000 `"Water catchment, treatment and distribution"', add
label define br10a_ind_lbl 37000 `"Sewage and related activities"', add
label define br10a_ind_lbl 38000 `"Recycling"', add
label define br10a_ind_lbl 39000 `"Waste management"', add
label define br10a_ind_lbl 41000 `"Construction of buildings"', add
label define br10a_ind_lbl 42000 `"Construction of civil engineering works"', add
label define br10a_ind_lbl 43000 `"Activities in services related to construction"', add
label define br10a_ind_lbl 43999 `"Non-specified construction activities"', add
label define br10a_ind_lbl 45010 `"Commerce of motor vehicles"', add
label define br10a_ind_lbl 45020 `"Repair and maintenance services for motor vehicles"', add
label define br10a_ind_lbl 45030 `"Commerce of parts and accessories for motor vehicles"', add
label define br10a_ind_lbl 45040 `"Commerce, maintenance and repair of motorcycles"', add
label define br10a_ind_lbl 48010 `"Sales representatives and agents in commerce"', add
label define br10a_ind_lbl 48020 `"Commerce of farm products"', add
label define br10a_ind_lbl 48030 `"Commerce of products of food, beverages and tobacco"', add
label define br10a_ind_lbl 48041 `"Commerce of textile thread, cloth, cloth artifacts and notions"', add
label define br10a_ind_lbl 48042 `"Commerce of articles of clothing, supplements and footwear"', add
label define br10a_ind_lbl 48050 `"Commerce of wood, construction material, hardware and tools"', add
label define br10a_ind_lbl 48060 `"Commerce of fuels for vehicles"', add
label define br10a_ind_lbl 48071 `"Commerce of pharmaceutical, medical, orthopedic, dental and cosmetic products, and toiletries"', add
label define br10a_ind_lbl 48072 `"Commerce of books, newspapers, magazines and stationery"', add
label define br10a_ind_lbl 48073 `"Commerce of appliances, furniture and other home articles"', add
label define br10a_ind_lbl 48074 `"Commerce of products and equipment for infromation technologies and communications"', add
label define br10a_ind_lbl 48075 `"Commerce of machines and equipment - except home appliances"', add
label define br10a_ind_lbl 48076 `"Commerce of fuels - except for vehicles"', add
label define br10a_ind_lbl 48077 `"Commerce of used merchandise"', add
label define br10a_ind_lbl 48078 `"Commerce of scrap and junk"', add
label define br10a_ind_lbl 48079 `"Commerce of non-specified products"', add
label define br10a_ind_lbl 48080 `"Supermarkets and hypermarkets"', add
label define br10a_ind_lbl 48090 `"Department stores and other non-specialized commerce, without predominance of food products"', add
label define br10a_ind_lbl 48100 `"Retail commerce carried out at movable points installed on public streets or in markets"', add
label define br10a_ind_lbl 48999 `"Other types of retail commerce not carried out in stores"', add
label define br10a_ind_lbl 49010 `"Railroad transportation"', add
label define br10a_ind_lbl 49030 `"Highway passenger transportation"', add
label define br10a_ind_lbl 49040 `"Highway cargo transportation"', add
label define br10a_ind_lbl 49090 `"Land transportation - unspecified type"', add
label define br10a_ind_lbl 49999 `"Non-specified transportation activities"', add
label define br10a_ind_lbl 50000 `"Water transportation"', add
label define br10a_ind_lbl 51000 `"Air transportation"', add
label define br10a_ind_lbl 52010 `"Loading and unloading, storing and warehouses"', add
label define br10a_ind_lbl 52020 `"Auxiliary activities in transportation"', add
label define br10a_ind_lbl 53001 `"Post office activities"', add
label define br10a_ind_lbl 53002 `"Delivery services"', add
label define br10a_ind_lbl 55000 `"Lodgings"', add
label define br10a_ind_lbl 56011 `"Restaurants and other food services establishments"', add
label define br10a_ind_lbl 56012 `"Caterings and other prepared food services"', add
label define br10a_ind_lbl 56020 `"Food peddlers"', add
label define br10a_ind_lbl 56999 `"Other food services - except peddlers"', add
label define br10a_ind_lbl 58000 `"Activities in services related to editing"', add
label define br10a_ind_lbl 59000 `"Activities in services related to filmmaking"', add
label define br10a_ind_lbl 60001 `"Radio activities"', add
label define br10a_ind_lbl 60002 `"Television activities"', add
label define br10a_ind_lbl 61000 `"Telecommunications"', add
label define br10a_ind_lbl 62000 `"Activities in services related to information technologies"', add
label define br10a_ind_lbl 63000 `"Activities in services related to information services"', add
label define br10a_ind_lbl 64000 `"Financial services"', add
label define br10a_ind_lbl 65000 `"Insurance and private social security"', add
label define br10a_ind_lbl 66001 `"Auxiliary activities for financial intermediation"', add
label define br10a_ind_lbl 66002 `"Auxiliary activities for insurance and private social security"', add
label define br10a_ind_lbl 68000 `"Real-estate activities"', add
label define br10a_ind_lbl 69000 `"Legal and accounting activities and market and opinion surveys"', add
label define br10a_ind_lbl 70000 `"Consultancy activities in business management"', add
label define br10a_ind_lbl 71000 `"Architecture and engineering services and specialized technical consultancy"', add
label define br10a_ind_lbl 72000 `"Research and development"', add
label define br10a_ind_lbl 73010 `"Advertising activities"', add
label define br10a_ind_lbl 73020 `"Tests on materials and products, and quality analysis"', add
label define br10a_ind_lbl 74000 `"Other professional, technical and scientific activities"', add
label define br10a_ind_lbl 75000 `"Veterinary services"', add
label define br10a_ind_lbl 77010 `"Rental of personal and domestic objects"', add
label define br10a_ind_lbl 77020 `"Rental of vehicles, machines and equipment"', add
label define br10a_ind_lbl 78000 `"Selection, processing and outsourcing of personnel"', add
label define br10a_ind_lbl 79000 `"Travel agencies and travel organizers"', add
label define br10a_ind_lbl 80000 `"Investigation, security and safety"', add
label define br10a_ind_lbl 81011 `"Activities in immunization, disinfecting and cleaning in buildings and homes"', add
label define br10a_ind_lbl 81012 `"Construction of Condos"', add
label define br10a_ind_lbl 81020 `"Activities in services related to landscaping"', add
label define br10a_ind_lbl 82001 `"Services to companies and administrative support"', add
label define br10a_ind_lbl 82002 `"Teleservice"', add
label define br10a_ind_lbl 82003 `"Event planning, except for cultural and sport events"', add
label define br10a_ind_lbl 82009 `"Other services rendered to companies"', add
label define br10a_ind_lbl 84011 `"Administration of the state and of economic and social policy - Federal"', add
label define br10a_ind_lbl 84012 `"Administration of the state and of economic and social policy - State"', add
label define br10a_ind_lbl 84013 `"Administration of the state and of economic and social policy - Municipal"', add
label define br10a_ind_lbl 84014 `"Armed forces"', add
label define br10a_ind_lbl 84015 `"Other collective services rendered by public administration - Federal"', add
label define br10a_ind_lbl 84016 `"Other collective services rendered by public administration - State"', add
label define br10a_ind_lbl 84017 `"Other collective services rendered by public administration - Municipal"', add
label define br10a_ind_lbl 84020 `"Social security"', add
label define br10a_ind_lbl 84999 `"Public administration, unspecified sphere of administration"', add
label define br10a_ind_lbl 85011 `"Education - Daycare"', add
label define br10a_ind_lbl 85012 `"Education - Preschool and Elementary"', add
label define br10a_ind_lbl 85013 `"Education - Secondary"', add
label define br10a_ind_lbl 85014 `"Education - Higher education"', add
label define br10a_ind_lbl 85021 `"Auxiliary education services"', add
label define br10a_ind_lbl 85029 `"Other educational activities"', add
label define br10a_ind_lbl 85999 `"Unspecified educational activities"', add
label define br10a_ind_lbl 86001 `"Activities in services related to health - hospital care"', add
label define br10a_ind_lbl 86002 `"Activities in services related to health - primary care provided by physicians and dentists"', add
label define br10a_ind_lbl 86003 `"Activities in services related to health - theraphy and diagnostic"', add
label define br10a_ind_lbl 86004 `"Activities in services related to health - except for physicians and dentists"', add
label define br10a_ind_lbl 86009 `"Activities in services related to human health - unspecified"', add
label define br10a_ind_lbl 86999 `"Activities in services related to health - unspecified"', add
label define br10a_ind_lbl 87000 `"Activities in services related to human health care and social assistance"', add
label define br10a_ind_lbl 88000 `"Social assistance services - no lodging"', add
label define br10a_ind_lbl 90000 `"Activities related to the arts and entertainment"', add
label define br10a_ind_lbl 91000 `"Activities related to the cultural and environmental heritage"', add
label define br10a_ind_lbl 92000 `"Activities in services related to gambling"', add
label define br10a_ind_lbl 93011 `"Athletic activities"', add
label define br10a_ind_lbl 93012 `"Activities in physical fitness"', add
label define br10a_ind_lbl 93020 `"Activities of recreation and leisure"', add
label define br10a_ind_lbl 94010 `"Activities of business, employers', and professional organizations"', add
label define br10a_ind_lbl 94020 `"Activities of labor unions"', add
label define br10a_ind_lbl 94091 `"Activities of religious and philosophical organizations"', add
label define br10a_ind_lbl 94099 `"Other associative activities"', add
label define br10a_ind_lbl 95010 `"Maintenance and repair of informatic and communications equipment"', add
label define br10a_ind_lbl 95030 `"Maintenance and repair of appliances and personal equipment"', add
label define br10a_ind_lbl 96010 `"Laundries and dry cleaners"', add
label define br10a_ind_lbl 96020 `"Hairdressers and other beauty treatments"', add
label define br10a_ind_lbl 96030 `"Funeral activities"', add
label define br10a_ind_lbl 96090 `"Other activities of personal services"', add
label define br10a_ind_lbl 97000 `"Domestic services"', add
label define br10a_ind_lbl 99000 `"International organizations and other extra-territorial institutions"', add
label define br10a_ind_lbl 99900 `"RESPONSE SUPPRESSED"', add
label define br10a_ind_lbl 99999 `"NIU (not in universe)"', add
label values br10a_ind br10a_ind_lbl

label define br10a_classwkr_lbl 1 `"Employee with a formal contract"'
label define br10a_classwkr_lbl 2 `"Military army, navy, aerospace, military police or fire department"', add
label define br10a_classwkr_lbl 3 `"Employed by the legal regime of civil servants"', add
label define br10a_classwkr_lbl 4 `"Employee without a formal contract"', add
label define br10a_classwkr_lbl 5 `"Self-employed"', add
label define br10a_classwkr_lbl 6 `"Employer"', add
label define br10a_classwkr_lbl 7 `"Unpaid worker"', add
label define br10a_classwkr_lbl 9 `"NIU (not in universe)"', add
label values br10a_classwkr br10a_classwkr_lbl

label define br10a_nemps_lbl 1 `"1 to 5 persons"'
label define br10a_nemps_lbl 2 `"6 persons or more"', add
label define br10a_nemps_lbl 9 `"NIU (not in universe)"', add
label values br10a_nemps br10a_nemps_lbl

label define br10a_socsec_lbl 1 `"Yes, in the main job"'
label define br10a_socsec_lbl 2 `"Yes, in another job"', add
label define br10a_socsec_lbl 3 `"No"', add
label define br10a_socsec_lbl 9 `"NIU (not in universe)"', add
label values br10a_socsec br10a_socsec_lbl

label define br10a_paysrc_lbl 1 `"Money or in kind (products, goods)"'
label define br10a_paysrc_lbl 2 `"Only in kind"', add
label define br10a_paysrc_lbl 3 `"No source of income"', add
label define br10a_paysrc_lbl 9 `"NIU (not in universe)"', add
label values br10a_paysrc br10a_paysrc_lbl

label define br10a_incgross_lbl 000000 `"0"'
label define br10a_incgross_lbl 999999 `"NIU (not in universe)"', add
label values br10a_incgross br10a_incgross_lbl

label define br10a_incjob_lbl 000000 `"0"'
label define br10a_incjob_lbl 999999 `"NIU (not in universe)"', add
label values br10a_incjob br10a_incjob_lbl

label define br10a_incjobmw_lbl 000000 `"0"'
label define br10a_incjobmw_lbl 999999 `"NIU (not in universe)"', add
label values br10a_incjobmw br10a_incjobmw_lbl

label define br10a_incothjb_lbl 0 `"No"'
label define br10a_incothjb_lbl 1 `"Money or in kind (products, goods)"', add
label define br10a_incothjb_lbl 2 `"Only in kind"', add
label define br10a_incothjb_lbl 9 `"NIU (not in universe)"', add
label values br10a_incothjb br10a_incothjb_lbl

label define br10a_incjb2gr_lbl 999999 `"NIU (not in universe)"'
label values br10a_incjb2gr br10a_incjb2gr_lbl

label define br10a_incjb2mw_lbl 000000000 `"0"'
label define br10a_incjb2mw_lbl 999999999 `"NIU (not in universe)"', add
label values br10a_incjb2mw br10a_incjb2mw_lbl

label define br10a_incjobs_lbl 0000000 `"0"'
label define br10a_incjobs_lbl 9999999 `"NIU (not in universe)"', add
label values br10a_incjobs br10a_incjobs_lbl

label define br10a_incjbsmw_lbl 000000000 `"0"'
label define br10a_incjbsmw_lbl 999999999 `"NIU (not in universe)"', add
label values br10a_incjbsmw br10a_incjbsmw_lbl

label define br10a_inctotmo_lbl 9999999 `"NIU (not in universe)"'
label values br10a_inctotmo br10a_inctotmo_lbl

label define br10a_inctotmw_lbl 999999999 `"NIU (not in universe)"'
label values br10a_inctotmw br10a_inctotmw_lbl

label define br10a_inchh_lbl 9999999 `"NIU (not in universe)"'
label values br10a_inchh br10a_inchh_lbl

label define br10a_inchhmw_lbl 9999999999 `"NIU (not in universe)"'
label values br10a_inchhmw br10a_inchhmw_lbl

label define br10a_inchhpc_lbl 99999999 `"NIU (not in universe)"'
label values br10a_inchhpc br10a_inchhpc_lbl

label define br10a_inchpcmw_lbl 999999999 `"NIU (not in universe)"'
label values br10a_inchpcmw br10a_inchpcmw_lbl

label define br10a_hours_lbl 001 `"1"'
label define br10a_hours_lbl 002 `"2"', add
label define br10a_hours_lbl 003 `"3"', add
label define br10a_hours_lbl 004 `"4"', add
label define br10a_hours_lbl 005 `"5"', add
label define br10a_hours_lbl 006 `"6"', add
label define br10a_hours_lbl 007 `"7"', add
label define br10a_hours_lbl 008 `"8"', add
label define br10a_hours_lbl 009 `"9"', add
label define br10a_hours_lbl 010 `"10"', add
label define br10a_hours_lbl 011 `"11"', add
label define br10a_hours_lbl 012 `"12"', add
label define br10a_hours_lbl 013 `"13"', add
label define br10a_hours_lbl 014 `"14"', add
label define br10a_hours_lbl 015 `"15"', add
label define br10a_hours_lbl 016 `"16"', add
label define br10a_hours_lbl 017 `"17"', add
label define br10a_hours_lbl 018 `"18"', add
label define br10a_hours_lbl 019 `"19"', add
label define br10a_hours_lbl 020 `"20"', add
label define br10a_hours_lbl 021 `"21"', add
label define br10a_hours_lbl 022 `"22"', add
label define br10a_hours_lbl 023 `"23"', add
label define br10a_hours_lbl 024 `"24"', add
label define br10a_hours_lbl 025 `"25"', add
label define br10a_hours_lbl 026 `"26"', add
label define br10a_hours_lbl 027 `"27"', add
label define br10a_hours_lbl 028 `"28"', add
label define br10a_hours_lbl 029 `"29"', add
label define br10a_hours_lbl 030 `"30"', add
label define br10a_hours_lbl 031 `"31"', add
label define br10a_hours_lbl 032 `"32"', add
label define br10a_hours_lbl 033 `"33"', add
label define br10a_hours_lbl 034 `"34"', add
label define br10a_hours_lbl 035 `"35"', add
label define br10a_hours_lbl 036 `"36"', add
label define br10a_hours_lbl 037 `"37"', add
label define br10a_hours_lbl 038 `"38"', add
label define br10a_hours_lbl 039 `"39"', add
label define br10a_hours_lbl 040 `"40"', add
label define br10a_hours_lbl 041 `"41"', add
label define br10a_hours_lbl 042 `"42"', add
label define br10a_hours_lbl 043 `"43"', add
label define br10a_hours_lbl 044 `"44"', add
label define br10a_hours_lbl 045 `"45"', add
label define br10a_hours_lbl 046 `"46"', add
label define br10a_hours_lbl 047 `"47"', add
label define br10a_hours_lbl 048 `"48"', add
label define br10a_hours_lbl 049 `"49"', add
label define br10a_hours_lbl 050 `"50"', add
label define br10a_hours_lbl 051 `"51"', add
label define br10a_hours_lbl 052 `"52"', add
label define br10a_hours_lbl 053 `"53"', add
label define br10a_hours_lbl 054 `"54"', add
label define br10a_hours_lbl 055 `"55"', add
label define br10a_hours_lbl 056 `"56"', add
label define br10a_hours_lbl 057 `"57"', add
label define br10a_hours_lbl 058 `"58"', add
label define br10a_hours_lbl 059 `"59"', add
label define br10a_hours_lbl 060 `"60"', add
label define br10a_hours_lbl 061 `"61"', add
label define br10a_hours_lbl 062 `"62"', add
label define br10a_hours_lbl 063 `"63"', add
label define br10a_hours_lbl 064 `"64"', add
label define br10a_hours_lbl 065 `"65"', add
label define br10a_hours_lbl 066 `"66"', add
label define br10a_hours_lbl 067 `"67"', add
label define br10a_hours_lbl 068 `"68"', add
label define br10a_hours_lbl 069 `"69"', add
label define br10a_hours_lbl 070 `"70"', add
label define br10a_hours_lbl 071 `"71"', add
label define br10a_hours_lbl 072 `"72"', add
label define br10a_hours_lbl 073 `"73"', add
label define br10a_hours_lbl 074 `"74"', add
label define br10a_hours_lbl 075 `"75"', add
label define br10a_hours_lbl 076 `"76"', add
label define br10a_hours_lbl 077 `"77"', add
label define br10a_hours_lbl 078 `"78"', add
label define br10a_hours_lbl 079 `"79"', add
label define br10a_hours_lbl 080 `"80"', add
label define br10a_hours_lbl 081 `"81"', add
label define br10a_hours_lbl 082 `"82"', add
label define br10a_hours_lbl 083 `"83"', add
label define br10a_hours_lbl 084 `"84"', add
label define br10a_hours_lbl 085 `"85"', add
label define br10a_hours_lbl 086 `"86"', add
label define br10a_hours_lbl 087 `"87"', add
label define br10a_hours_lbl 088 `"88"', add
label define br10a_hours_lbl 089 `"89"', add
label define br10a_hours_lbl 090 `"90"', add
label define br10a_hours_lbl 091 `"91"', add
label define br10a_hours_lbl 092 `"92"', add
label define br10a_hours_lbl 093 `"93"', add
label define br10a_hours_lbl 094 `"94"', add
label define br10a_hours_lbl 095 `"95"', add
label define br10a_hours_lbl 096 `"96"', add
label define br10a_hours_lbl 097 `"97"', add
label define br10a_hours_lbl 098 `"98"', add
label define br10a_hours_lbl 099 `"99"', add
label define br10a_hours_lbl 100 `"100"', add
label define br10a_hours_lbl 101 `"101"', add
label define br10a_hours_lbl 102 `"102"', add
label define br10a_hours_lbl 103 `"103"', add
label define br10a_hours_lbl 104 `"104"', add
label define br10a_hours_lbl 105 `"105"', add
label define br10a_hours_lbl 106 `"106"', add
label define br10a_hours_lbl 107 `"107"', add
label define br10a_hours_lbl 108 `"108"', add
label define br10a_hours_lbl 109 `"109"', add
label define br10a_hours_lbl 110 `"110"', add
label define br10a_hours_lbl 111 `"111"', add
label define br10a_hours_lbl 112 `"112"', add
label define br10a_hours_lbl 113 `"113"', add
label define br10a_hours_lbl 114 `"114"', add
label define br10a_hours_lbl 115 `"115"', add
label define br10a_hours_lbl 116 `"116"', add
label define br10a_hours_lbl 117 `"117"', add
label define br10a_hours_lbl 118 `"118"', add
label define br10a_hours_lbl 119 `"119"', add
label define br10a_hours_lbl 120 `"120"', add
label define br10a_hours_lbl 121 `"121"', add
label define br10a_hours_lbl 122 `"122"', add
label define br10a_hours_lbl 123 `"123"', add
label define br10a_hours_lbl 124 `"124"', add
label define br10a_hours_lbl 125 `"125"', add
label define br10a_hours_lbl 126 `"126"', add
label define br10a_hours_lbl 127 `"127"', add
label define br10a_hours_lbl 128 `"128"', add
label define br10a_hours_lbl 129 `"129"', add
label define br10a_hours_lbl 130 `"130"', add
label define br10a_hours_lbl 131 `"131"', add
label define br10a_hours_lbl 132 `"132"', add
label define br10a_hours_lbl 133 `"133"', add
label define br10a_hours_lbl 134 `"134"', add
label define br10a_hours_lbl 135 `"135"', add
label define br10a_hours_lbl 136 `"136"', add
label define br10a_hours_lbl 138 `"138"', add
label define br10a_hours_lbl 139 `"139"', add
label define br10a_hours_lbl 140 `"140"', add
label define br10a_hours_lbl 999 `"NIU (not in universe)"', add
label values br10a_hours br10a_hours_lbl

label define br10a_seekwork_lbl 1 `"Yes"'
label define br10a_seekwork_lbl 2 `"No"', add
label define br10a_seekwork_lbl 9 `"NIU (not in universe)"', add
label values br10a_seekwork br10a_seekwork_lbl

label define br10a_canwork_lbl 1 `"Yes"'
label define br10a_canwork_lbl 2 `"No"', add
label define br10a_canwork_lbl 9 `"NIU (not in universe)"', add
label values br10a_canwork br10a_canwork_lbl

label define br10a_incretir_lbl 0 `"No"'
label define br10a_incretir_lbl 1 `"Yes"', add
label define br10a_incretir_lbl 8 `"Unknown"', add
label define br10a_incretir_lbl 9 `"NIU (not in universe)"', add
label values br10a_incretir br10a_incretir_lbl

label define br10a_incfamss_lbl 0 `"No"'
label define br10a_incfamss_lbl 1 `"Yes"', add
label define br10a_incfamss_lbl 8 `"Unknown"', add
label define br10a_incfamss_lbl 9 `"NIU (not in universe)"', add
label values br10a_incfamss br10a_incfamss_lbl

label define br10a_inctran_lbl 0 `"No"'
label define br10a_inctran_lbl 1 `"Yes"', add
label define br10a_inctran_lbl 8 `"Unknown"', add
label define br10a_inctran_lbl 9 `"NIU (not in universe)"', add
label values br10a_inctran br10a_inctran_lbl

label define br10a_incoth_lbl 0 `"No"'
label define br10a_incoth_lbl 1 `"Yes"', add
label define br10a_incoth_lbl 8 `"Unknown"', add
label define br10a_incoth_lbl 9 `"NIU (not in universe)"', add
label values br10a_incoth br10a_incoth_lbl

label define br10a_incvalue_lbl 999999 `"NIU (not in universe)"'
label values br10a_incvalue br10a_incvalue_lbl

label define br10a_wherewk_lbl 1 `"At home"'
label define br10a_wherewk_lbl 2 `"In this municipality, but not at home"', add
label define br10a_wherewk_lbl 3 `"In another municipality"', add
label define br10a_wherewk_lbl 4 `"In a foreign country"', add
label define br10a_wherewk_lbl 5 `"In more than one municipality or country"', add
label define br10a_wherewk_lbl 9 `"NIU (not in universe)"', add
label values br10a_wherewk br10a_wherewk_lbl

label define br10a_wkstate_lbl 11 `"R�ndonia"'
label define br10a_wkstate_lbl 12 `"Acre"', add
label define br10a_wkstate_lbl 13 `"Amazonas"', add
label define br10a_wkstate_lbl 14 `"Roraima"', add
label define br10a_wkstate_lbl 15 `"Par�"', add
label define br10a_wkstate_lbl 16 `"Amap�"', add
label define br10a_wkstate_lbl 17 `"Tocantins"', add
label define br10a_wkstate_lbl 21 `"Maranh�o"', add
label define br10a_wkstate_lbl 22 `"Piau�"', add
label define br10a_wkstate_lbl 23 `"Cear�"', add
label define br10a_wkstate_lbl 24 `"Rio Grande do Norte"', add
label define br10a_wkstate_lbl 25 `"Para�ba"', add
label define br10a_wkstate_lbl 26 `"Pernambuco"', add
label define br10a_wkstate_lbl 27 `"Alagoas"', add
label define br10a_wkstate_lbl 28 `"Sergipe"', add
label define br10a_wkstate_lbl 29 `"Bahia"', add
label define br10a_wkstate_lbl 31 `"Minas Gerais"', add
label define br10a_wkstate_lbl 32 `"Esp�rito Santo"', add
label define br10a_wkstate_lbl 33 `"Rio De Janeiro"', add
label define br10a_wkstate_lbl 35 `"S�o Paulo"', add
label define br10a_wkstate_lbl 41 `"Paran�"', add
label define br10a_wkstate_lbl 42 `"Santa Catarina"', add
label define br10a_wkstate_lbl 43 `"Rio Grande do Sul"', add
label define br10a_wkstate_lbl 50 `"Mato Grosso do Sul"', add
label define br10a_wkstate_lbl 51 `"Mato Grosso"', add
label define br10a_wkstate_lbl 52 `"Goi�s"', add
label define br10a_wkstate_lbl 53 `"Distrito Federal"', add
label define br10a_wkstate_lbl 98 `"Unknown"', add
label define br10a_wkstate_lbl 99 `"NIU (not in universe)"', add
label values br10a_wkstate br10a_wkstate_lbl

label define br10a_wkcntry_lbl 8000024 `"Angola"'
label define br10a_wkcntry_lbl 8000032 `"Argentina"', add
label define br10a_wkcntry_lbl 8000068 `"Bolivia"', add
label define br10a_wkcntry_lbl 8000152 `"Chile"', add
label define br10a_wkcntry_lbl 8000156 `"China"', add
label define br10a_wkcntry_lbl 8000170 `"Colombia"', add
label define br10a_wkcntry_lbl 8000250 `"France"', add
label define br10a_wkcntry_lbl 8000254 `"French Guiana"', add
label define br10a_wkcntry_lbl 8000276 `"Germany"', add
label define br10a_wkcntry_lbl 8000328 `"Guyana"', add
label define br10a_wkcntry_lbl 8000332 `"Haiti"', add
label define br10a_wkcntry_lbl 8000380 `"Italy"', add
label define br10a_wkcntry_lbl 8000392 `"Japan"', add
label define br10a_wkcntry_lbl 8000600 `"Paraguay"', add
label define br10a_wkcntry_lbl 8000604 `"Peru"', add
label define br10a_wkcntry_lbl 8000620 `"Portugal"', add
label define br10a_wkcntry_lbl 8000710 `"South Africa"', add
label define br10a_wkcntry_lbl 8000724 `"Spain"', add
label define br10a_wkcntry_lbl 8000740 `"Suriname"', add
label define br10a_wkcntry_lbl 8000756 `"Switzerland"', add
label define br10a_wkcntry_lbl 8000826 `"Scotland"', add
label define br10a_wkcntry_lbl 8000840 `"United States"', add
label define br10a_wkcntry_lbl 8000858 `"Uruguay"', add
label define br10a_wkcntry_lbl 8000862 `"Venezuela"', add
label define br10a_wkcntry_lbl 9000000 `"Response suppressed"', add
label define br10a_wkcntry_lbl 9999998 `"Unknown"', add
label define br10a_wkcntry_lbl 9999999 `"NIU (not in universe)"', add
label values br10a_wkcntry br10a_wkcntry_lbl

label define br10a_homqday_lbl 1 `"Yes"'
label define br10a_homqday_lbl 2 `"No"', add
label define br10a_homqday_lbl 9 `"NIU (not in universe)"', add
label values br10a_homqday br10a_homqday_lbl

label define br10a_commute_lbl 1 `"Up to five minutes"'
label define br10a_commute_lbl 2 `"From six minutes to half an hour"', add
label define br10a_commute_lbl 3 `"More than half an hour to an hour"', add
label define br10a_commute_lbl 4 `"More than an hour to two hours"', add
label define br10a_commute_lbl 5 `"More than two hours"', add
label define br10a_commute_lbl 9 `"NIU (not in universe)"', add
label values br10a_commute br10a_commute_lbl

label define br10a_everborn_lbl 1 `"Had live births"'
label define br10a_everborn_lbl 2 `"Had no children born alive"', add
label define br10a_everborn_lbl 9 `"NIU (not in universe)"', add
label values br10a_everborn br10a_everborn_lbl

label define br10a_chbornm_lbl 00 `"0"'
label define br10a_chbornm_lbl 01 `"1"', add
label define br10a_chbornm_lbl 02 `"2"', add
label define br10a_chbornm_lbl 03 `"3"', add
label define br10a_chbornm_lbl 04 `"4"', add
label define br10a_chbornm_lbl 05 `"5"', add
label define br10a_chbornm_lbl 06 `"6"', add
label define br10a_chbornm_lbl 07 `"7"', add
label define br10a_chbornm_lbl 08 `"8"', add
label define br10a_chbornm_lbl 09 `"9"', add
label define br10a_chbornm_lbl 10 `"10"', add
label define br10a_chbornm_lbl 11 `"11"', add
label define br10a_chbornm_lbl 12 `"12"', add
label define br10a_chbornm_lbl 13 `"13"', add
label define br10a_chbornm_lbl 14 `"14"', add
label define br10a_chbornm_lbl 15 `"15"', add
label define br10a_chbornm_lbl 16 `"16"', add
label define br10a_chbornm_lbl 17 `"17"', add
label define br10a_chbornm_lbl 18 `"18"', add
label define br10a_chbornm_lbl 19 `"19"', add
label define br10a_chbornm_lbl 20 `"20"', add
label define br10a_chbornm_lbl 21 `"21"', add
label define br10a_chbornm_lbl 22 `"22+"', add
label define br10a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values br10a_chbornm br10a_chbornm_lbl

label define br10a_chbornf_lbl 00 `"0"'
label define br10a_chbornf_lbl 01 `"1"', add
label define br10a_chbornf_lbl 02 `"2"', add
label define br10a_chbornf_lbl 03 `"3"', add
label define br10a_chbornf_lbl 04 `"4"', add
label define br10a_chbornf_lbl 05 `"5"', add
label define br10a_chbornf_lbl 06 `"6"', add
label define br10a_chbornf_lbl 07 `"7"', add
label define br10a_chbornf_lbl 08 `"8"', add
label define br10a_chbornf_lbl 09 `"9"', add
label define br10a_chbornf_lbl 10 `"10"', add
label define br10a_chbornf_lbl 11 `"11"', add
label define br10a_chbornf_lbl 12 `"12"', add
label define br10a_chbornf_lbl 13 `"13"', add
label define br10a_chbornf_lbl 14 `"14"', add
label define br10a_chbornf_lbl 15 `"15"', add
label define br10a_chbornf_lbl 16 `"16"', add
label define br10a_chbornf_lbl 17 `"17"', add
label define br10a_chbornf_lbl 18 `"18"', add
label define br10a_chbornf_lbl 19 `"19"', add
label define br10a_chbornf_lbl 20 `"20"', add
label define br10a_chbornf_lbl 21 `"21"', add
label define br10a_chbornf_lbl 22 `"22+"', add
label define br10a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values br10a_chbornf br10a_chbornf_lbl

label define br10a_chborn_lbl 00 `"0"'
label define br10a_chborn_lbl 01 `"1"', add
label define br10a_chborn_lbl 02 `"2"', add
label define br10a_chborn_lbl 03 `"3"', add
label define br10a_chborn_lbl 04 `"4"', add
label define br10a_chborn_lbl 05 `"5"', add
label define br10a_chborn_lbl 06 `"6"', add
label define br10a_chborn_lbl 07 `"7"', add
label define br10a_chborn_lbl 08 `"8"', add
label define br10a_chborn_lbl 09 `"9"', add
label define br10a_chborn_lbl 10 `"10"', add
label define br10a_chborn_lbl 11 `"11"', add
label define br10a_chborn_lbl 12 `"12"', add
label define br10a_chborn_lbl 13 `"13"', add
label define br10a_chborn_lbl 14 `"14"', add
label define br10a_chborn_lbl 15 `"15"', add
label define br10a_chborn_lbl 16 `"16"', add
label define br10a_chborn_lbl 17 `"17"', add
label define br10a_chborn_lbl 18 `"18"', add
label define br10a_chborn_lbl 19 `"19"', add
label define br10a_chborn_lbl 20 `"20"', add
label define br10a_chborn_lbl 21 `"21"', add
label define br10a_chborn_lbl 22 `"22"', add
label define br10a_chborn_lbl 23 `"23"', add
label define br10a_chborn_lbl 24 `"24"', add
label define br10a_chborn_lbl 25 `"25"', add
label define br10a_chborn_lbl 26 `"26"', add
label define br10a_chborn_lbl 27 `"27"', add
label define br10a_chborn_lbl 28 `"28"', add
label define br10a_chborn_lbl 29 `"29"', add
label define br10a_chborn_lbl 30 `"30+"', add
label define br10a_chborn_lbl 99 `"NIU (not in universe)"', add
label values br10a_chborn br10a_chborn_lbl

label define br10a_chsurvm_lbl 00 `"0"'
label define br10a_chsurvm_lbl 01 `"1"', add
label define br10a_chsurvm_lbl 02 `"2"', add
label define br10a_chsurvm_lbl 03 `"3"', add
label define br10a_chsurvm_lbl 04 `"4"', add
label define br10a_chsurvm_lbl 05 `"5"', add
label define br10a_chsurvm_lbl 06 `"6"', add
label define br10a_chsurvm_lbl 07 `"7"', add
label define br10a_chsurvm_lbl 08 `"8"', add
label define br10a_chsurvm_lbl 09 `"9"', add
label define br10a_chsurvm_lbl 10 `"10"', add
label define br10a_chsurvm_lbl 11 `"11"', add
label define br10a_chsurvm_lbl 12 `"12"', add
label define br10a_chsurvm_lbl 13 `"13"', add
label define br10a_chsurvm_lbl 14 `"14"', add
label define br10a_chsurvm_lbl 15 `"15+"', add
label define br10a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values br10a_chsurvm br10a_chsurvm_lbl

label define br10a_chsurvf_lbl 00 `"0"'
label define br10a_chsurvf_lbl 01 `"1"', add
label define br10a_chsurvf_lbl 02 `"2"', add
label define br10a_chsurvf_lbl 03 `"3"', add
label define br10a_chsurvf_lbl 04 `"4"', add
label define br10a_chsurvf_lbl 05 `"5"', add
label define br10a_chsurvf_lbl 06 `"6"', add
label define br10a_chsurvf_lbl 07 `"7"', add
label define br10a_chsurvf_lbl 08 `"8"', add
label define br10a_chsurvf_lbl 09 `"9"', add
label define br10a_chsurvf_lbl 10 `"10"', add
label define br10a_chsurvf_lbl 11 `"11"', add
label define br10a_chsurvf_lbl 12 `"12"', add
label define br10a_chsurvf_lbl 13 `"13"', add
label define br10a_chsurvf_lbl 14 `"14"', add
label define br10a_chsurvf_lbl 15 `"15+"', add
label define br10a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values br10a_chsurvf br10a_chsurvf_lbl

label define br10a_chsurv_lbl 00 `"0"'
label define br10a_chsurv_lbl 01 `"1"', add
label define br10a_chsurv_lbl 02 `"2"', add
label define br10a_chsurv_lbl 03 `"3"', add
label define br10a_chsurv_lbl 04 `"4"', add
label define br10a_chsurv_lbl 05 `"5"', add
label define br10a_chsurv_lbl 06 `"6"', add
label define br10a_chsurv_lbl 07 `"7"', add
label define br10a_chsurv_lbl 08 `"8"', add
label define br10a_chsurv_lbl 09 `"9"', add
label define br10a_chsurv_lbl 10 `"10"', add
label define br10a_chsurv_lbl 11 `"11"', add
label define br10a_chsurv_lbl 12 `"12"', add
label define br10a_chsurv_lbl 13 `"13"', add
label define br10a_chsurv_lbl 14 `"14"', add
label define br10a_chsurv_lbl 15 `"15"', add
label define br10a_chsurv_lbl 16 `"16"', add
label define br10a_chsurv_lbl 17 `"17"', add
label define br10a_chsurv_lbl 18 `"18"', add
label define br10a_chsurv_lbl 19 `"19"', add
label define br10a_chsurv_lbl 20 `"20+"', add
label define br10a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values br10a_chsurv br10a_chsurv_lbl

label define br10a_lbthsex_lbl 1 `"Male"'
label define br10a_lbthsex_lbl 2 `"Female"', add
label define br10a_lbthsex_lbl 9 `"NIU (not in universe)"', add
label values br10a_lbthsex br10a_lbthsex_lbl

label define br10a_lbthage_lbl 00 `"0"'
label define br10a_lbthage_lbl 01 `"1"', add
label define br10a_lbthage_lbl 02 `"2"', add
label define br10a_lbthage_lbl 03 `"3"', add
label define br10a_lbthage_lbl 04 `"4"', add
label define br10a_lbthage_lbl 05 `"5"', add
label define br10a_lbthage_lbl 06 `"6"', add
label define br10a_lbthage_lbl 07 `"7"', add
label define br10a_lbthage_lbl 08 `"8"', add
label define br10a_lbthage_lbl 09 `"9"', add
label define br10a_lbthage_lbl 10 `"10"', add
label define br10a_lbthage_lbl 11 `"11"', add
label define br10a_lbthage_lbl 12 `"12"', add
label define br10a_lbthage_lbl 13 `"13"', add
label define br10a_lbthage_lbl 14 `"14"', add
label define br10a_lbthage_lbl 15 `"15"', add
label define br10a_lbthage_lbl 16 `"16"', add
label define br10a_lbthage_lbl 17 `"17"', add
label define br10a_lbthage_lbl 18 `"18"', add
label define br10a_lbthage_lbl 19 `"19"', add
label define br10a_lbthage_lbl 20 `"20"', add
label define br10a_lbthage_lbl 21 `"21"', add
label define br10a_lbthage_lbl 22 `"22"', add
label define br10a_lbthage_lbl 23 `"23"', add
label define br10a_lbthage_lbl 24 `"24"', add
label define br10a_lbthage_lbl 25 `"25"', add
label define br10a_lbthage_lbl 26 `"26"', add
label define br10a_lbthage_lbl 27 `"27"', add
label define br10a_lbthage_lbl 28 `"28"', add
label define br10a_lbthage_lbl 29 `"29"', add
label define br10a_lbthage_lbl 30 `"30"', add
label define br10a_lbthage_lbl 31 `"31"', add
label define br10a_lbthage_lbl 32 `"32"', add
label define br10a_lbthage_lbl 33 `"33"', add
label define br10a_lbthage_lbl 34 `"34"', add
label define br10a_lbthage_lbl 35 `"35"', add
label define br10a_lbthage_lbl 36 `"36"', add
label define br10a_lbthage_lbl 37 `"37"', add
label define br10a_lbthage_lbl 38 `"38"', add
label define br10a_lbthage_lbl 39 `"39"', add
label define br10a_lbthage_lbl 40 `"40"', add
label define br10a_lbthage_lbl 41 `"41"', add
label define br10a_lbthage_lbl 42 `"42"', add
label define br10a_lbthage_lbl 43 `"43"', add
label define br10a_lbthage_lbl 44 `"44"', add
label define br10a_lbthage_lbl 45 `"45"', add
label define br10a_lbthage_lbl 46 `"46"', add
label define br10a_lbthage_lbl 47 `"47"', add
label define br10a_lbthage_lbl 48 `"48"', add
label define br10a_lbthage_lbl 49 `"49"', add
label define br10a_lbthage_lbl 50 `"50"', add
label define br10a_lbthage_lbl 51 `"51"', add
label define br10a_lbthage_lbl 52 `"52"', add
label define br10a_lbthage_lbl 53 `"53"', add
label define br10a_lbthage_lbl 54 `"54"', add
label define br10a_lbthage_lbl 55 `"55"', add
label define br10a_lbthage_lbl 56 `"56"', add
label define br10a_lbthage_lbl 57 `"57"', add
label define br10a_lbthage_lbl 58 `"58"', add
label define br10a_lbthage_lbl 59 `"59"', add
label define br10a_lbthage_lbl 60 `"60"', add
label define br10a_lbthage_lbl 61 `"61"', add
label define br10a_lbthage_lbl 62 `"62"', add
label define br10a_lbthage_lbl 63 `"63"', add
label define br10a_lbthage_lbl 64 `"64"', add
label define br10a_lbthage_lbl 65 `"65"', add
label define br10a_lbthage_lbl 66 `"66"', add
label define br10a_lbthage_lbl 67 `"67"', add
label define br10a_lbthage_lbl 68 `"68"', add
label define br10a_lbthage_lbl 69 `"69"', add
label define br10a_lbthage_lbl 70 `"70"', add
label define br10a_lbthage_lbl 71 `"71"', add
label define br10a_lbthage_lbl 72 `"72"', add
label define br10a_lbthage_lbl 73 `"73"', add
label define br10a_lbthage_lbl 74 `"74"', add
label define br10a_lbthage_lbl 75 `"75"', add
label define br10a_lbthage_lbl 76 `"76"', add
label define br10a_lbthage_lbl 77 `"77"', add
label define br10a_lbthage_lbl 78 `"78"', add
label define br10a_lbthage_lbl 79 `"79"', add
label define br10a_lbthage_lbl 80 `"80+"', add
label define br10a_lbthage_lbl 99 `"NIU (not in universe)"', add
label values br10a_lbthage br10a_lbthage_lbl

label define br10a_chbnyr_lbl 1 `"Yes"'
label define br10a_chbnyr_lbl 2 `"No"', add
label define br10a_chbnyr_lbl 9 `"NIU (not in universe)"', add
label values br10a_chbnyr br10a_chbnyr_lbl

label define br10a_chliveyr_lbl 1 `"Yes"'
label define br10a_chliveyr_lbl 2 `"No"', add
label define br10a_chliveyr_lbl 8 `"Unknown"', add
label define br10a_chliveyr_lbl 9 `"NIU (not in universe)"', add
label values br10a_chliveyr br10a_chliveyr_lbl

label define br10a_chdeadyr_lbl 1 `"Knows month and year, or year only"'
label define br10a_chdeadyr_lbl 2 `"Unknown"', add
label define br10a_chdeadyr_lbl 9 `"NIU (not in universe)"', add
label values br10a_chdeadyr br10a_chdeadyr_lbl

label define br10a_chdthmo_lbl 01 `"January"'
label define br10a_chdthmo_lbl 02 `"February"', add
label define br10a_chdthmo_lbl 03 `"March"', add
label define br10a_chdthmo_lbl 04 `"April"', add
label define br10a_chdthmo_lbl 05 `"May"', add
label define br10a_chdthmo_lbl 06 `"June"', add
label define br10a_chdthmo_lbl 07 `"July"', add
label define br10a_chdthmo_lbl 08 `"August"', add
label define br10a_chdthmo_lbl 09 `"September"', add
label define br10a_chdthmo_lbl 10 `"October"', add
label define br10a_chdthmo_lbl 11 `"November"', add
label define br10a_chdthmo_lbl 12 `"December"', add
label define br10a_chdthmo_lbl 98 `"Unknown"', add
label define br10a_chdthmo_lbl 99 `"NIU (not in universe)"', add
label values br10a_chdthmo br10a_chdthmo_lbl

label define br10a_chdthyr_lbl 1932 `"1932"'
label define br10a_chdthyr_lbl 1933 `"1933"', add
label define br10a_chdthyr_lbl 1936 `"1936"', add
label define br10a_chdthyr_lbl 1937 `"1937"', add
label define br10a_chdthyr_lbl 1939 `"1939"', add
label define br10a_chdthyr_lbl 1940 `"1940"', add
label define br10a_chdthyr_lbl 1941 `"1941"', add
label define br10a_chdthyr_lbl 1942 `"1942"', add
label define br10a_chdthyr_lbl 1943 `"1943"', add
label define br10a_chdthyr_lbl 1944 `"1944"', add
label define br10a_chdthyr_lbl 1945 `"1945"', add
label define br10a_chdthyr_lbl 1946 `"1946"', add
label define br10a_chdthyr_lbl 1947 `"1947"', add
label define br10a_chdthyr_lbl 1948 `"1948"', add
label define br10a_chdthyr_lbl 1949 `"1949"', add
label define br10a_chdthyr_lbl 1950 `"1950"', add
label define br10a_chdthyr_lbl 1951 `"1951"', add
label define br10a_chdthyr_lbl 1952 `"1952"', add
label define br10a_chdthyr_lbl 1953 `"1953"', add
label define br10a_chdthyr_lbl 1954 `"1954"', add
label define br10a_chdthyr_lbl 1955 `"1955"', add
label define br10a_chdthyr_lbl 1956 `"1956"', add
label define br10a_chdthyr_lbl 1957 `"1957"', add
label define br10a_chdthyr_lbl 1958 `"1958"', add
label define br10a_chdthyr_lbl 1959 `"1959"', add
label define br10a_chdthyr_lbl 1960 `"1960"', add
label define br10a_chdthyr_lbl 1961 `"1961"', add
label define br10a_chdthyr_lbl 1962 `"1962"', add
label define br10a_chdthyr_lbl 1963 `"1963"', add
label define br10a_chdthyr_lbl 1964 `"1964"', add
label define br10a_chdthyr_lbl 1965 `"1965"', add
label define br10a_chdthyr_lbl 1966 `"1966"', add
label define br10a_chdthyr_lbl 1967 `"1967"', add
label define br10a_chdthyr_lbl 1968 `"1968"', add
label define br10a_chdthyr_lbl 1969 `"1969"', add
label define br10a_chdthyr_lbl 1970 `"1970"', add
label define br10a_chdthyr_lbl 1971 `"1971"', add
label define br10a_chdthyr_lbl 1972 `"1972"', add
label define br10a_chdthyr_lbl 1973 `"1973"', add
label define br10a_chdthyr_lbl 1974 `"1974"', add
label define br10a_chdthyr_lbl 1975 `"1975"', add
label define br10a_chdthyr_lbl 1976 `"1976"', add
label define br10a_chdthyr_lbl 1977 `"1977"', add
label define br10a_chdthyr_lbl 1978 `"1978"', add
label define br10a_chdthyr_lbl 1979 `"1979"', add
label define br10a_chdthyr_lbl 1980 `"1980"', add
label define br10a_chdthyr_lbl 1981 `"1981"', add
label define br10a_chdthyr_lbl 1982 `"1982"', add
label define br10a_chdthyr_lbl 1983 `"1983"', add
label define br10a_chdthyr_lbl 1984 `"1984"', add
label define br10a_chdthyr_lbl 1985 `"1985"', add
label define br10a_chdthyr_lbl 1986 `"1986"', add
label define br10a_chdthyr_lbl 1987 `"1987"', add
label define br10a_chdthyr_lbl 1988 `"1988"', add
label define br10a_chdthyr_lbl 1989 `"1989"', add
label define br10a_chdthyr_lbl 1990 `"1990"', add
label define br10a_chdthyr_lbl 1991 `"1991"', add
label define br10a_chdthyr_lbl 1992 `"1992"', add
label define br10a_chdthyr_lbl 1993 `"1993"', add
label define br10a_chdthyr_lbl 1994 `"1994"', add
label define br10a_chdthyr_lbl 1995 `"1995"', add
label define br10a_chdthyr_lbl 1996 `"1996"', add
label define br10a_chdthyr_lbl 1997 `"1997"', add
label define br10a_chdthyr_lbl 1998 `"1998"', add
label define br10a_chdthyr_lbl 1999 `"1999"', add
label define br10a_chdthyr_lbl 2000 `"2000"', add
label define br10a_chdthyr_lbl 2001 `"2001"', add
label define br10a_chdthyr_lbl 2002 `"2002"', add
label define br10a_chdthyr_lbl 2003 `"2003"', add
label define br10a_chdthyr_lbl 2004 `"2004"', add
label define br10a_chdthyr_lbl 2005 `"2005"', add
label define br10a_chdthyr_lbl 2006 `"2006"', add
label define br10a_chdthyr_lbl 2007 `"2007"', add
label define br10a_chdthyr_lbl 2008 `"2008"', add
label define br10a_chdthyr_lbl 2009 `"2009"', add
label define br10a_chdthyr_lbl 2010 `"2010"', add
label define br10a_chdthyr_lbl 9998 `"Unknown"', add
label define br10a_chdthyr_lbl 9999 `"NIU (not in universe)"', add
label values br10a_chdthyr br10a_chdthyr_lbl

label define br10a_stillbth_lbl 1 `"Had a stillbirth"'
label define br10a_stillbth_lbl 2 `"Had no stillbirth"', add
label define br10a_stillbth_lbl 3 `"Unknown"', add
label define br10a_stillbth_lbl 9 `"NIU (not in universe)"', add
label values br10a_stillbth br10a_stillbth_lbl

label define br10a_nstillb_lbl 00 `"0"'
label define br10a_nstillb_lbl 01 `"1"', add
label define br10a_nstillb_lbl 02 `"2"', add
label define br10a_nstillb_lbl 03 `"3"', add
label define br10a_nstillb_lbl 04 `"4"', add
label define br10a_nstillb_lbl 05 `"5"', add
label define br10a_nstillb_lbl 06 `"6"', add
label define br10a_nstillb_lbl 07 `"7"', add
label define br10a_nstillb_lbl 08 `"8"', add
label define br10a_nstillb_lbl 09 `"9"', add
label define br10a_nstillb_lbl 98 `"Unknown"', add
label define br10a_nstillb_lbl 99 `"NIU (not in universe)"', add
label values br10a_nstillb br10a_nstillb_lbl

label define br10a_stilbnf_lbl 00 `"0"'
label define br10a_stilbnf_lbl 01 `"1"', add
label define br10a_stilbnf_lbl 02 `"2"', add
label define br10a_stilbnf_lbl 03 `"3"', add
label define br10a_stilbnf_lbl 04 `"4"', add
label define br10a_stilbnf_lbl 05 `"5"', add
label define br10a_stilbnf_lbl 06 `"6"', add
label define br10a_stilbnf_lbl 07 `"7"', add
label define br10a_stilbnf_lbl 08 `"8+"', add
label define br10a_stilbnf_lbl 98 `"Unknown"', add
label define br10a_stilbnf_lbl 99 `"NIU (not in universe)"', add
label values br10a_stilbnf br10a_stilbnf_lbl

label define br10a_stilbnm_lbl 00 `"Had no stillbirths"'
label define br10a_stilbnm_lbl 01 `"1"', add
label define br10a_stilbnm_lbl 02 `"2"', add
label define br10a_stilbnm_lbl 03 `"3"', add
label define br10a_stilbnm_lbl 04 `"4"', add
label define br10a_stilbnm_lbl 05 `"5"', add
label define br10a_stilbnm_lbl 06 `"6"', add
label define br10a_stilbnm_lbl 07 `"7"', add
label define br10a_stilbnm_lbl 08 `"8"', add
label define br10a_stilbnm_lbl 09 `"9"', add
label define br10a_stilbnm_lbl 99 `"NIU (not in universe)"', add
label values br10a_stilbnm br10a_stilbnm_lbl

label define br10a_nstilbth_lbl 00 `"0"'
label define br10a_nstilbth_lbl 01 `"1"', add
label define br10a_nstilbth_lbl 02 `"2"', add
label define br10a_nstilbth_lbl 03 `"3"', add
label define br10a_nstilbth_lbl 04 `"4"', add
label define br10a_nstilbth_lbl 05 `"5"', add
label define br10a_nstilbth_lbl 06 `"6"', add
label define br10a_nstilbth_lbl 07 `"7"', add
label define br10a_nstilbth_lbl 08 `"8"', add
label define br10a_nstilbth_lbl 09 `"9"', add
label define br10a_nstilbth_lbl 10 `"10"', add
label define br10a_nstilbth_lbl 11 `"11"', add
label define br10a_nstilbth_lbl 12 `"12"', add
label define br10a_nstilbth_lbl 13 `"13"', add
label define br10a_nstilbth_lbl 14 `"14"', add
label define br10a_nstilbth_lbl 15 `"15"', add
label define br10a_nstilbth_lbl 16 `"16"', add
label define br10a_nstilbth_lbl 17 `"17"', add
label define br10a_nstilbth_lbl 18 `"18"', add
label define br10a_nstilbth_lbl 19 `"19"', add
label define br10a_nstilbth_lbl 20 `"20"', add
label define br10a_nstilbth_lbl 21 `"21"', add
label define br10a_nstilbth_lbl 22 `"22"', add
label define br10a_nstilbth_lbl 23 `"23"', add
label define br10a_nstilbth_lbl 24 `"24"', add
label define br10a_nstilbth_lbl 25 `"25"', add
label define br10a_nstilbth_lbl 26 `"26"', add
label define br10a_nstilbth_lbl 27 `"27"', add
label define br10a_nstilbth_lbl 28 `"28"', add
label define br10a_nstilbth_lbl 29 `"29"', add
label define br10a_nstilbth_lbl 30 `"30"', add
label define br10a_nstilbth_lbl 31 `"31"', add
label define br10a_nstilbth_lbl 99 `"NIU (not in universe)"', add
label values br10a_nstilbth br10a_nstilbth_lbl

label define br10a_respond_lbl 1 `"The person himself/herself"'
label define br10a_respond_lbl 2 `"Another resident"', add
label define br10a_respond_lbl 3 `"Not resident"', add
label define br10a_respond_lbl 9 `"Unknown"', add
label values br10a_respond br10a_respond_lbl

label define br10a_respnum_lbl 01 `"1"'
label define br10a_respnum_lbl 02 `"2"', add
label define br10a_respnum_lbl 03 `"3"', add
label define br10a_respnum_lbl 04 `"4"', add
label define br10a_respnum_lbl 05 `"5"', add
label define br10a_respnum_lbl 06 `"6"', add
label define br10a_respnum_lbl 07 `"7"', add
label define br10a_respnum_lbl 08 `"8"', add
label define br10a_respnum_lbl 09 `"9"', add
label define br10a_respnum_lbl 10 `"10"', add
label define br10a_respnum_lbl 11 `"11"', add
label define br10a_respnum_lbl 12 `"12"', add
label define br10a_respnum_lbl 13 `"13"', add
label define br10a_respnum_lbl 14 `"14"', add
label define br10a_respnum_lbl 15 `"15"', add
label define br10a_respnum_lbl 16 `"16"', add
label define br10a_respnum_lbl 17 `"17"', add
label define br10a_respnum_lbl 18 `"18"', add
label define br10a_respnum_lbl 19 `"19"', add
label define br10a_respnum_lbl 20 `"20"', add
label define br10a_respnum_lbl 21 `"21"', add
label define br10a_respnum_lbl 99 `"NIU (not in universe)"', add
label values br10a_respnum br10a_respnum_lbl

label define br10a_labforce_lbl 1 `"Economically active"'
label define br10a_labforce_lbl 2 `"Not economically active"', add
label define br10a_labforce_lbl 9 `"NIU (not in universe)"', add
label values br10a_labforce br10a_labforce_lbl

label define br10a_empstat_lbl 1 `"Employed"'
label define br10a_empstat_lbl 2 `"Unemployed"', add
label define br10a_empstat_lbl 9 `"NIU (not in universe)"', add
label values br10a_empstat br10a_empstat_lbl

label define br10a_empstat2_lbl 1 `"Employed"'
label define br10a_empstat2_lbl 2 `"Unemployed and unoccupied"', add
label define br10a_empstat2_lbl 9 `"NIU (not in universe)"', add
label values br10a_empstat2 br10a_empstat2_lbl

label define br10a_classwk2_lbl 1 `"Employee with a formal contract"'
label define br10a_classwk2_lbl 2 `"Military or civil servant"', add
label define br10a_classwk2_lbl 3 `"Employee without a formal contract"', add
label define br10a_classwk2_lbl 4 `"Self-employed"', add
label define br10a_classwk2_lbl 5 `"Employers"', add
label define br10a_classwk2_lbl 6 `"Unpaid worker"', add
label define br10a_classwk2_lbl 7 `"Subsistence work"', add
label define br10a_classwk2_lbl 9 `"NIU (not in universe)"', add
label values br10a_classwk2 br10a_classwk2_lbl

label define br10a_contract_lbl 1 `"Domestic employees with formal contract"'
label define br10a_contract_lbl 2 `"Domestic employees without a formal contract"', add
label define br10a_contract_lbl 3 `"Other employees with formal contract"', add
label define br10a_contract_lbl 4 `"Military and civil servants"', add
label define br10a_contract_lbl 5 `"Other employees without a formal contract"', add
label define br10a_contract_lbl 9 `"NIU (not in universe)"', add
label values br10a_contract br10a_contract_lbl

label define br10a_relig_lbl 00 `"No religion"'
label define br10a_relig_lbl 11 `"Roman catholic apostolic"', add
label define br10a_relig_lbl 12 `"Brazilian catholic apostolic"', add
label define br10a_relig_lbl 13 `"Orthodox catholic"', add
label define br10a_relig_lbl 14 `"Christian orthodox"', add
label define br10a_relig_lbl 19 `"Other catholic"', add
label define br10a_relig_lbl 21 `"Evangelical protestant, Lutheran"', add
label define br10a_relig_lbl 22 `"Evangelical protestant, Presbyterian"', add
label define br10a_relig_lbl 23 `"Protestant evangelical,Methodist"', add
label define br10a_relig_lbl 24 `"Evangelical protestant, Baptist"', add
label define br10a_relig_lbl 25 `"Evangelical protestant, Congregational"', add
label define br10a_relig_lbl 26 `"Evangelical protestant, Adventist"', add
label define br10a_relig_lbl 27 `"Evangelical protestant, Anglican Episcopalian"', add
label define br10a_relig_lbl 28 `"Evangelical protestant, Mennonite"', add
label define br10a_relig_lbl 30 `"Salvation army"', add
label define br10a_relig_lbl 31 `"Evangelical protestant, Assembly of God Pentecostal"', add
label define br10a_relig_lbl 32 `"Evangelical protestant, Congregational Christian of Brazil, Pentecostal"', add
label define br10a_relig_lbl 33 `"Evangelical protestant Brazil for Christ, Pentecostal origin"', add
label define br10a_relig_lbl 34 `"Evangelical protestant, foursquare gospel church of Pentecostal origin"', add
label define br10a_relig_lbl 35 `"Evangelical protestant universal of the kingdom of God of Pentecostal origin"', add
label define br10a_relig_lbl 36 `"Evangelical protestant house of the blessing of Pentecostal origin"', add
label define br10a_relig_lbl 37 `"Evangelical protestant house of prayer of Pentecostal origin"', add
label define br10a_relig_lbl 38 `"Evangelical protestant God is love of origin Pentecostal"', add
label define br10a_relig_lbl 39 `"Evangelical protestant maranata of Pentecostal origin"', add
label define br10a_relig_lbl 40 `"Renewed evangelical protestant without institutional ties"', add
label define br10a_relig_lbl 42 `"Evangelical protestant Christian community of Pentecostal origin"', add
label define br10a_relig_lbl 43 `"New life evangelical protestant of Pentecostal origin"', add
label define br10a_relig_lbl 44 `"Evangelical protestant community of Pentecostal origin"', add
label define br10a_relig_lbl 45 `"Other evangelical protestant churches of Pentecostal origin"', add
label define br10a_relig_lbl 46 `"Evangelical protestant biblical revival of Pentecostal origin"', add
label define br10a_relig_lbl 47 `"Evangelical protestant chain of prayer of origin Pentecostal"', add
label define br10a_relig_lbl 48 `"Evangelical protestant church of the Nazarene of Pentecostal origin"', add
label define br10a_relig_lbl 49 `"Undetermined evangelical protestant"', add
label define br10a_relig_lbl 51 `"Church of Jesus Christ of the latter day saints"', add
label define br10a_relig_lbl 52 `"Evangelical protestant Jehovah's witnesses"', add
label define br10a_relig_lbl 53 `"Lbv/religion of God"', add
label define br10a_relig_lbl 59 `"Spiritualist [espiritualista]"', add
label define br10a_relig_lbl 61 `"Spiritualist [esp�rita]"', add
label define br10a_relig_lbl 62 `"Umbanda"', add
label define br10a_relig_lbl 63 `"Candombl�"', add
label define br10a_relig_lbl 64 `"Other declarations of African-Brazilian religiosity"', add
label define br10a_relig_lbl 71 `"Judaism"', add
label define br10a_relig_lbl 74 `"Hinduism"', add
label define br10a_relig_lbl 75 `"Buddhism"', add
label define br10a_relig_lbl 76 `"New eastern religions"', add
label define br10a_relig_lbl 79 `"Other eastern religions"', add
label define br10a_relig_lbl 81 `"Islam"', add
label define br10a_relig_lbl 82 `"Esoteric traditions"', add
label define br10a_relig_lbl 83 `"Brazilian indigenous traditions"', add
label define br10a_relig_lbl 85 `"Christian religiosity without institutional ties"', add
label define br10a_relig_lbl 89 `"Undetermined"', add
label define br10a_relig_lbl 98 `"Unknown"', add
label values br10a_relig br10a_relig_lbl

label define br10a_qrelate_lbl 1 `"Yes"'
label define br10a_qrelate_lbl 2 `"No"', add
label values br10a_qrelate br10a_qrelate_lbl

label define br10a_qsex_lbl 1 `"Yes"'
label define br10a_qsex_lbl 2 `"No"', add
label values br10a_qsex br10a_qsex_lbl

label define br10a_qageyrmo_lbl 1 `"Yes"'
label define br10a_qageyrmo_lbl 2 `"No"', add
label values br10a_qageyrmo br10a_qageyrmo_lbl

label define br10a_qmothaliv_lbl 1 `"Yes"'
label define br10a_qmothaliv_lbl 2 `"No"', add
label values br10a_qmothaliv br10a_qmothaliv_lbl

label define br10a_qrace_lbl 1 `"Yes"'
label define br10a_qrace_lbl 2 `"No"', add
label values br10a_qrace br10a_qrace_lbl

label define br10a_qbirthrec_lbl 1 `"Yes"'
label define br10a_qbirthrec_lbl 2 `"No"', add
label values br10a_qbirthrec br10a_qbirthrec_lbl

label define br10a_qdissee_lbl 1 `"Yes"'
label define br10a_qdissee_lbl 2 `"No"', add
label values br10a_qdissee br10a_qdissee_lbl

label define br10a_qdishear_lbl 1 `"Yes"'
label define br10a_qdishear_lbl 2 `"No"', add
label values br10a_qdishear br10a_qdishear_lbl

label define br10a_qdismob_lbl 1 `"Yes"'
label define br10a_qdismob_lbl 2 `"No"', add
label values br10a_qdismob br10a_qdismob_lbl

label define br10a_qdismntl_lbl 1 `"Yes"'
label define br10a_qdismntl_lbl 2 `"No"', add
label values br10a_qdismntl br10a_qdismntl_lbl

label define br10a_qbornmuni_lbl 1 `"Yes"'
label define br10a_qbornmuni_lbl 2 `"No"', add
label values br10a_qbornmuni br10a_qbornmuni_lbl

label define br10a_qbornstat_lbl 1 `"Yes"'
label define br10a_qbornstat_lbl 2 `"No"', add
label values br10a_qbornstat br10a_qbornstat_lbl

label define br10a_qnation_lbl 1 `"Yes"'
label define br10a_qnation_lbl 2 `"No"', add
label values br10a_qnation br10a_qnation_lbl

label define br10a_qmoveyr_lbl 1 `"Yes"'
label define br10a_qmoveyr_lbl 2 `"No"', add
label values br10a_qmoveyr br10a_qmoveyr_lbl

label define br10a_qbpl_lbl 1 `"Yes"'
label define br10a_qbpl_lbl 2 `"No"', add
label values br10a_qbpl br10a_qbpl_lbl

label define br10a_qbplstate_lbl 1 `"Yes"'
label define br10a_qbplstate_lbl 2 `"No"', add
label values br10a_qbplstate br10a_qbplstate_lbl

label define br10a_qbplctry_lbl 1 `"Yes"'
label define br10a_qbplctry_lbl 2 `"No"', add
label values br10a_qbplctry br10a_qbplctry_lbl

label define br10a_qyrsstate_lbl 1 `"Yes"'
label define br10a_qyrsstate_lbl 2 `"No"', add
label values br10a_qyrsstate br10a_qyrsstate_lbl

label define br10a_qyrsmuni_lbl 1 `"Yes"'
label define br10a_qyrsmuni_lbl 2 `"No"', add
label values br10a_qyrsmuni br10a_qyrsmuni_lbl

label define br10a_qprevres_lbl 1 `"Yes"'
label define br10a_qprevres_lbl 2 `"No"', add
label values br10a_qprevres br10a_qprevres_lbl

label define br10a_qprevstat_lbl 1 `"Yes"'
label define br10a_qprevstat_lbl 2 `"No"', add
label values br10a_qprevstat br10a_qprevstat_lbl

label define br10a_qprevmuni_lbl 1 `"Yes"'
label define br10a_qprevmuni_lbl 2 `"No"', add
label values br10a_qprevmuni br10a_qprevmuni_lbl

label define br10a_qprevctry_lbl 1 `"Yes"'
label define br10a_qprevctry_lbl 2 `"No"', add
label values br10a_qprevctry br10a_qprevctry_lbl

label define br10a_qres5yr_lbl 1 `"Yes"'
label define br10a_qres5yr_lbl 2 `"No"', add
label values br10a_qres5yr br10a_qres5yr_lbl

label define br10a_qstate5yr_lbl 1 `"Yes"'
label define br10a_qstate5yr_lbl 2 `"No"', add
label values br10a_qstate5yr br10a_qstate5yr_lbl

label define br10a_qmuni5yr_lbl 1 `"Yes"'
label define br10a_qmuni5yr_lbl 2 `"No"', add
label values br10a_qmuni5yr br10a_qmuni5yr_lbl

label define br10a_qcntry5yr_lbl 1 `"Yes"'
label define br10a_qcntry5yr_lbl 2 `"No"', add
label values br10a_qcntry5yr br10a_qcntry5yr_lbl

label define br10a_qlit_lbl 1 `"Yes"'
label define br10a_qlit_lbl 2 `"No"', add
label values br10a_qlit br10a_qlit_lbl

label define br10a_qschool_lbl 1 `"Yes"'
label define br10a_qschool_lbl 2 `"No"', add
label values br10a_qschool br10a_qschool_lbl

label define br10a_qedlevel1_lbl 1 `"Yes"'
label define br10a_qedlevel1_lbl 2 `"No"', add
label values br10a_qedlevel1 br10a_qedlevel1_lbl

label define br10a_qgrade1_lbl 1 `"Yes"'
label define br10a_qgrade1_lbl 2 `"No"', add
label values br10a_qgrade1 br10a_qgrade1_lbl

label define br10a_qgrade2_lbl 1 `"Yes"'
label define br10a_qgrade2_lbl 2 `"No"', add
label values br10a_qgrade2 br10a_qgrade2_lbl

label define br10a_qcollege_lbl 1 `"Yes"'
label define br10a_qcollege_lbl 2 `"No"', add
label values br10a_qcollege br10a_qcollege_lbl

label define br10a_qedattain_lbl 1 `"Yes"'
label define br10a_qedattain_lbl 2 `"No"', add
label values br10a_qedattain br10a_qedattain_lbl

label define br10a_qedcompl_lbl 1 `"Yes"'
label define br10a_qedcompl_lbl 2 `"No"', add
label values br10a_qedcompl br10a_qedcompl_lbl

label define br10a_qdegtyp_lbl 1 `"Yes"'
label define br10a_qdegtyp_lbl 2 `"No"', add
label values br10a_qdegtyp br10a_qdegtyp_lbl

label define br10a_qundergrd_lbl 1 `"Yes"'
label define br10a_qundergrd_lbl 2 `"No"', add
label values br10a_qundergrd br10a_qundergrd_lbl

label define br10a_qmasters_lbl 1 `"Yes"'
label define br10a_qmasters_lbl 2 `"No"', add
label values br10a_qmasters br10a_qmasters_lbl

label define br10a_qdoctoral_lbl 1 `"Yes"'
label define br10a_qdoctoral_lbl 2 `"No"', add
label values br10a_qdoctoral br10a_qdoctoral_lbl

label define br10a_qedloc_lbl 1 `"Yes"'
label define br10a_qedloc_lbl 2 `"No"', add
label values br10a_qedloc br10a_qedloc_lbl

label define br10a_qedstate_lbl 1 `"Yes"'
label define br10a_qedstate_lbl 2 `"No"', add
label values br10a_qedstate br10a_qedstate_lbl

label define br10a_qedmuni_lbl 1 `"Yes"'
label define br10a_qedmuni_lbl 2 `"No"', add
label values br10a_qedmuni br10a_qedmuni_lbl

label define br10a_qschctry_lbl 1 `"Yes"'
label define br10a_qschctry_lbl 2 `"No"', add
label values br10a_qschctry br10a_qschctry_lbl

label define br10a_qlivesp_lbl 1 `"Yes"'
label define br10a_qlivesp_lbl 2 `"No"', add
label values br10a_qlivesp br10a_qlivesp_lbl

label define br10a_qsploc_lbl 1 `"Yes"'
label define br10a_qsploc_lbl 2 `"No"', add
label values br10a_qsploc br10a_qsploc_lbl

label define br10a_qunion_lbl 1 `"Yes"'
label define br10a_qunion_lbl 2 `"No"', add
label values br10a_qunion br10a_qunion_lbl

label define br10a_qmarst_lbl 1 `"Yes"'
label define br10a_qmarst_lbl 2 `"No"', add
label values br10a_qmarst br10a_qmarst_lbl

label define br10a_qwklstwk_lbl 1 `"Yes"'
label define br10a_qwklstwk_lbl 2 `"No"', add
label values br10a_qwklstwk br10a_qwklstwk_lbl

label define br10a_qpaidaway_lbl 1 `"Yes"'
label define br10a_qpaidaway_lbl 2 `"No"', add
label values br10a_qpaidaway br10a_qpaidaway_lbl

label define br10a_qwknopay_lbl 1 `"Yes"'
label define br10a_qwknopay_lbl 2 `"No"', add
label values br10a_qwknopay br10a_qwknopay_lbl

label define br10a_qsubsist_lbl 1 `"Yes"'
label define br10a_qsubsist_lbl 2 `"No"', add
label values br10a_qsubsist br10a_qsubsist_lbl

label define br10a_qnjobs_lbl 1 `"Yes"'
label define br10a_qnjobs_lbl 2 `"No"', add
label values br10a_qnjobs br10a_qnjobs_lbl

label define br10a_qocc_lbl 1 `"Yes"'
label define br10a_qocc_lbl 2 `"No"', add
label values br10a_qocc br10a_qocc_lbl

label define br10a_qind_lbl 1 `"Yes"'
label define br10a_qind_lbl 2 `"No"', add
label values br10a_qind br10a_qind_lbl

label define br10a_qclasswkr_lbl 1 `"Yes"'
label define br10a_qclasswkr_lbl 2 `"No"', add
label values br10a_qclasswkr br10a_qclasswkr_lbl

label define br10a_qnemps_lbl 1 `"Yes"'
label define br10a_qnemps_lbl 2 `"No"', add
label values br10a_qnemps br10a_qnemps_lbl

label define br10a_qsocsec_lbl 1 `"Yes"'
label define br10a_qsocsec_lbl 2 `"No"', add
label values br10a_qsocsec br10a_qsocsec_lbl

label define br10a_qpaysrc_lbl 1 `"Yes"'
label define br10a_qpaysrc_lbl 2 `"No"', add
label values br10a_qpaysrc br10a_qpaysrc_lbl

label define br10a_qincgross_lbl 1 `"Yes"'
label define br10a_qincgross_lbl 2 `"No"', add
label values br10a_qincgross br10a_qincgross_lbl

label define br10a_qincothjb_lbl 1 `"Yes"'
label define br10a_qincothjb_lbl 2 `"No"', add
label values br10a_qincothjb br10a_qincothjb_lbl

label define br10a_qincjb2gr_lbl 1 `"Yes"'
label define br10a_qincjb2gr_lbl 2 `"No"', add
label values br10a_qincjb2gr br10a_qincjb2gr_lbl

label define br10a_qhours_lbl 1 `"Yes"'
label define br10a_qhours_lbl 2 `"No"', add
label values br10a_qhours br10a_qhours_lbl

label define br10a_qseekwork_lbl 1 `"Yes"'
label define br10a_qseekwork_lbl 2 `"No"', add
label values br10a_qseekwork br10a_qseekwork_lbl

label define br10a_qcanwork_lbl 1 `"Yes"'
label define br10a_qcanwork_lbl 2 `"No"', add
label values br10a_qcanwork br10a_qcanwork_lbl

label define br10a_qincretir_lbl 1 `"Yes"'
label define br10a_qincretir_lbl 2 `"No"', add
label values br10a_qincretir br10a_qincretir_lbl

label define br10a_qincfamss_lbl 1 `"Yes"'
label define br10a_qincfamss_lbl 2 `"No"', add
label values br10a_qincfamss br10a_qincfamss_lbl

label define br10a_qinctran_lbl 1 `"Yes"'
label define br10a_qinctran_lbl 2 `"No"', add
label values br10a_qinctran br10a_qinctran_lbl

label define br10a_qincoth_lbl 1 `"Yes"'
label define br10a_qincoth_lbl 2 `"No"', add
label values br10a_qincoth br10a_qincoth_lbl

label define br10a_qincvalue_lbl 1 `"Yes"'
label define br10a_qincvalue_lbl 2 `"No"', add
label values br10a_qincvalue br10a_qincvalue_lbl

label define br10a_qwherewk_lbl 1 `"Yes"'
label define br10a_qwherewk_lbl 2 `"No"', add
label values br10a_qwherewk br10a_qwherewk_lbl

label define br10a_qwkstate_lbl 1 `"Yes"'
label define br10a_qwkstate_lbl 2 `"No"', add
label values br10a_qwkstate br10a_qwkstate_lbl

label define br10a_qwkmuni_lbl 1 `"Yes"'
label define br10a_qwkmuni_lbl 2 `"No"', add
label values br10a_qwkmuni br10a_qwkmuni_lbl

label define br10a_qwkcntry_lbl 1 `"Yes"'
label define br10a_qwkcntry_lbl 2 `"No"', add
label values br10a_qwkcntry br10a_qwkcntry_lbl

label define br10a_qhomqday_lbl 1 `"Yes"'
label define br10a_qhomqday_lbl 2 `"No"', add
label values br10a_qhomqday br10a_qhomqday_lbl

label define br10a_qcommute_lbl 1 `"Yes"'
label define br10a_qcommute_lbl 2 `"No"', add
label values br10a_qcommute br10a_qcommute_lbl

label define br10a_qeverborn_lbl 1 `"Yes"'
label define br10a_qeverborn_lbl 2 `"No"', add
label values br10a_qeverborn br10a_qeverborn_lbl

label define br10a_qchbornm_lbl 1 `"Yes"'
label define br10a_qchbornm_lbl 2 `"No"', add
label values br10a_qchbornm br10a_qchbornm_lbl

label define br10a_qchbornf_lbl 1 `"Yes"'
label define br10a_qchbornf_lbl 2 `"No"', add
label values br10a_qchbornf br10a_qchbornf_lbl

label define br10a_qchborn_lbl 1 `"Yes"'
label define br10a_qchborn_lbl 2 `"No"', add
label values br10a_qchborn br10a_qchborn_lbl

label define br10a_qchlive_lbl 1 `"Yes"'
label define br10a_qchlive_lbl 2 `"No"', add
label values br10a_qchlive br10a_qchlive_lbl

label define br10a_qchsurvm_lbl 1 `"Yes"'
label define br10a_qchsurvm_lbl 2 `"No"', add
label values br10a_qchsurvm br10a_qchsurvm_lbl

label define br10a_qchsurvf_lbl 1 `"Yes"'
label define br10a_qchsurvf_lbl 2 `"No"', add
label values br10a_qchsurvf br10a_qchsurvf_lbl

label define br10a_qchsurv_lbl 1 `"Yes"'
label define br10a_qchsurv_lbl 2 `"No"', add
label values br10a_qchsurv br10a_qchsurv_lbl

label define br10a_qlbthsex_lbl 1 `"Yes"'
label define br10a_qlbthsex_lbl 2 `"No"', add
label values br10a_qlbthsex br10a_qlbthsex_lbl

label define br10a_qlbthage_lbl 1 `"Yes"'
label define br10a_qlbthage_lbl 2 `"No"', add
label values br10a_qlbthage br10a_qlbthage_lbl

label define br10a_qchliveyr_lbl 1 `"Yes"'
label define br10a_qchliveyr_lbl 2 `"No"', add
label values br10a_qchliveyr br10a_qchliveyr_lbl

label define br10a_qchdeadyr_lbl 1 `"Yes"'
label define br10a_qchdeadyr_lbl 2 `"No"', add
label values br10a_qchdeadyr br10a_qchdeadyr_lbl

label define br10a_qchdthmo_lbl 1 `"Yes"'
label define br10a_qchdthmo_lbl 2 `"No"', add
label values br10a_qchdthmo br10a_qchdthmo_lbl

label define br10a_qchdthyr_lbl 1 `"Yes"'
label define br10a_qchdthyr_lbl 2 `"No"', add
label values br10a_qchdthyr br10a_qchdthyr_lbl

label define br10a_qstillbth_lbl 1 `"Yes"'
label define br10a_qstillbth_lbl 2 `"No"', add
label values br10a_qstillbth br10a_qstillbth_lbl

label define br10a_qnstillb_lbl 1 `"Yes"'
label define br10a_qnstillb_lbl 2 `"No"', add
label values br10a_qnstillb br10a_qnstillb_lbl

label define br10a_qstilbnf_lbl 1 `"Yes"'
label define br10a_qstilbnf_lbl 2 `"No"', add
label values br10a_qstilbnf br10a_qstilbnf_lbl

label define br10a_qstilbnm_lbl 1 `"Yes"'
label define br10a_qstilbnm_lbl 2 `"No"', add
label values br10a_qstilbnm br10a_qstilbnm_lbl

label define br10a_qrespond_lbl 1 `"Yes"'
label define br10a_qrespond_lbl 2 `"No"', add
label values br10a_qrespond br10a_qrespond_lbl

label define br10a_qrespnum_lbl 1 `"Yes"'
label define br10a_qrespnum_lbl 2 `"No"', add
label values br10a_qrespnum br10a_qrespnum_lbl

label define br10a_qnstilbth_lbl 1 `"Yes"'
label define br10a_qnstilbth_lbl 2 `"No"', add
label values br10a_qnstilbth br10a_qnstilbth_lbl

label define br10a_qrelig_lbl 1 `"Yes"'
label define br10a_qrelig_lbl 2 `"No"', add
label values br10a_qrelig br10a_qrelig_lbl


