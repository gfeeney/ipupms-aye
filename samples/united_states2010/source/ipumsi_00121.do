* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                           ///
  int     cntry              1-3        ///
  int     year               4-7        ///
  int     sample             8-11       ///
  double  serial             12-21      ///
  long    us10a_dwnum        22-28      ///
  byte    us10a_pern         29-30      ///
  double  us10a_serial       31-38      ///
  byte    us10a_numprec      39-40      ///
  byte    us10a_subsamp      41-42      ///
  int     us10a_hhwtreg      43-46      ///
  byte    us10a_stateicp     47-48      ///
  byte    us10a_statefip     49-50      ///
  int     us10a_puma         51-54      ///
  byte    us10a_metro        55-55      ///
  int     us10a_metarea      56-59      ///
  int     us10a_city         60-63      ///
  long    us10a_citypop      64-68      ///
  byte    us10a_gq           69-69      ///
  int     us10a_gqtype       70-72      ///
  byte    us10a_farm         73-73      ///
  byte    us10a_farmprod     74-74      ///
  byte    us10a_ownershp     75-76      ///
  byte    us10a_mortgage     77-77      ///
  byte    us10a_mortgag2     78-78      ///
  int     us10a_mortamt1     79-82      ///
  byte    us10a_commuse      83-83      ///
  byte    us10a_acrehous     84-84      ///
  byte    us10a_taxincl      85-85      ///
  byte    us10a_insincl      86-86      ///
  int     us10a_propinsr     87-90      ///
  byte    us10a_proptx99     91-92      ///
  int     us10a_rentgrs      93-96      ///
  byte    us10a_rentmeal     97-97      ///
  int     us10a_condofee     98-101     ///
  int     us10a_moblhome     102-105    ///
  int     us10a_costelec     106-109    ///
  int     us10a_costgas      110-113    ///
  int     us10a_costwatr     114-117    ///
  int     us10a_costfuel     118-121    ///
  byte    us10a_vacancy      122-122    ///
  byte    us10a_kitchen      123-123    ///
  byte    us10a_hotwater     124-124    ///
  byte    us10a_shower       125-125    ///
  byte    us10a_toilet       126-126    ///
  byte    us10a_unitsstr     127-128    ///
  byte    us10a_phone        129-129    ///
  int     us10a_mortamt2     130-133    ///
  byte    us10a_lingisol     134-134    ///
  byte    us10a_fuelheat     135-135    ///
  byte    us10a_vehicles     136-136    ///
  byte    us10a_nfams        137-138    ///
  byte    us10a_ncouples     139-139    ///
  byte    us10a_nmothers     140-140    ///
  byte    us10a_nfathers     141-141    ///
  byte    us10a_qacrehou     142-142    ///
  byte    us10a_qmoblhom     143-143    ///
  byte    us10a_qmortam1     144-144    ///
  byte    us10a_qinsincl     145-145    ///
  byte    us10a_qmortam2     146-146    ///
  byte    us10a_qbedroom     147-147    ///
  byte    us10a_qcommuse     148-148    ///
  byte    us10a_qmortga2     149-149    ///
  byte    us10a_qcostele     150-150    ///
  byte    us10a_qmortgag     151-151    ///
  byte    us10a_qcostfue     152-152    ///
  byte    us10a_qcostgas     153-153    ///
  byte    us10a_qpropins     154-154    ///
  byte    us10a_qcostwat     155-155    ///
  byte    us10a_qprotx99     156-156    ///
  byte    us10a_qrentmea     157-157    ///
  byte    us10a_qfuelhea     158-158    ///
  byte    us10a_qplumbin     159-159    ///
  byte    us10a_qownersh     160-160    ///
  byte    us10a_qphone       161-161    ///
  byte    us10a_qrent        162-162    ///
  byte    us10a_qrooms       163-163    ///
  byte    us10a_qshower      164-164    ///
  byte    us10a_qunitsst     165-165    ///
  byte    us10a_qvacancy     166-166    ///
  byte    us10a_qvalueh      167-167    ///
  byte    us10a_qcondofe     168-168    ///
  byte    us10a_qtaxincl     169-169    ///
  byte    us10a_qfoodstm     170-170    ///
  byte    us10a_qmortg2a     171-171    ///
  long    us10a_pumasupr     172-176    ///
  byte    us10a_builtyr2     177-178    ///
  byte    us10a_qbuilty2     179-179    ///
  byte    us10a_nfams2       180-181    ///
  byte    us10a_ncouple2     182-182    ///
  byte    us10a_nmother2     183-183    ///
  byte    us10a_nfather2     184-184    ///
  byte    us10a_hhtype       185-185    ///
  int     us10a_conspuma     186-188    ///
  int     us10a_repwt1       189-192    ///
  int     us10a_repwt2       193-196    ///
  int     us10a_repwt3       197-200    ///
  int     us10a_repwt4       201-204    ///
  int     us10a_repwt5       205-208    ///
  int     us10a_repwt6       209-212    ///
  int     us10a_repwt7       213-216    ///
  int     us10a_repwt8       217-220    ///
  int     us10a_repwt9       221-224    ///
  int     us10a_repwt10      225-228    ///
  int     us10a_repwt11      229-232    ///
  int     us10a_repwt12      233-236    ///
  int     us10a_repwt13      237-240    ///
  int     us10a_repwt14      241-244    ///
  int     us10a_repwt15      245-248    ///
  int     us10a_repwt16      249-252    ///
  int     us10a_repwt17      253-256    ///
  int     us10a_repwt18      257-260    ///
  int     us10a_repwt19      261-264    ///
  int     us10a_repwt20      265-268    ///
  int     us10a_repwt21      269-272    ///
  int     us10a_repwt22      273-276    ///
  int     us10a_repwt23      277-280    ///
  int     us10a_repwt24      281-284    ///
  int     us10a_repwt25      285-288    ///
  int     us10a_repwt26      289-292    ///
  int     us10a_repwt27      293-296    ///
  int     us10a_repwt28      297-300    ///
  int     us10a_repwt29      301-304    ///
  int     us10a_repwt30      305-308    ///
  int     us10a_repwt31      309-312    ///
  int     us10a_repwt32      313-316    ///
  int     us10a_repwt33      317-320    ///
  int     us10a_repwt34      321-324    ///
  int     us10a_repwt35      325-328    ///
  int     us10a_repwt36      329-332    ///
  int     us10a_repwt37      333-336    ///
  int     us10a_repwt38      337-340    ///
  int     us10a_repwt39      341-344    ///
  int     us10a_repwt40      345-348    ///
  int     us10a_repwt41      349-352    ///
  int     us10a_repwt42      353-356    ///
  int     us10a_repwt43      357-360    ///
  int     us10a_repwt44      361-364    ///
  int     us10a_repwt45      365-368    ///
  int     us10a_repwt46      369-372    ///
  int     us10a_repwt47      373-376    ///
  int     us10a_repwt48      377-380    ///
  int     us10a_repwt49      381-384    ///
  int     us10a_repwt50      385-388    ///
  int     us10a_repwt51      389-392    ///
  int     us10a_repwt52      393-396    ///
  int     us10a_repwt53      397-400    ///
  int     us10a_repwt54      401-404    ///
  int     us10a_repwt55      405-408    ///
  int     us10a_repwt56      409-412    ///
  int     us10a_repwt57      413-416    ///
  int     us10a_repwt58      417-420    ///
  int     us10a_repwt59      421-424    ///
  int     us10a_repwt60      425-428    ///
  int     us10a_repwt61      429-432    ///
  int     us10a_repwt62      433-436    ///
  int     us10a_repwt63      437-440    ///
  int     us10a_repwt64      441-444    ///
  int     us10a_repwt65      445-448    ///
  int     us10a_repwt66      449-452    ///
  int     us10a_repwt67      453-456    ///
  int     us10a_repwt68      457-460    ///
  int     us10a_repwt69      461-464    ///
  int     us10a_repwt70      465-468    ///
  int     us10a_repwt71      469-472    ///
  int     us10a_repwt72      473-476    ///
  int     us10a_repwt73      477-480    ///
  int     us10a_repwt74      481-484    ///
  int     us10a_repwt75      485-488    ///
  int     us10a_repwt76      489-492    ///
  int     us10a_repwt77      493-496    ///
  int     us10a_repwt78      497-500    ///
  int     us10a_repwt79      501-504    ///
  int     us10a_repwt80      505-508    ///
  byte    us10a_repwt        509-509    ///
  byte    us10a_qvehicle     510-510    ///
  long    us10a_owncost      511-515    ///
  byte    us10a_nsubfam      516-516    ///
  long    us10a_hhincome     517-523    ///
  byte    us10a_headloc      524-524    ///
  byte    us10a_fridge       525-525    ///
  byte    us10a_qfridge      526-526    ///
  byte    us10a_sink         527-527    ///
  byte    us10a_qsink        528-528    ///
  byte    us10a_stove        529-529    ///
  byte    us10a_qstove       530-530    ///
  long    us10a_valueh       531-537    ///
  byte    us10a_multgen      538-539    ///
  byte    us10a_bedrooms     540-541    ///
  byte    us10a_rooms        542-543    ///
  byte    us10a_homeland     544-544    ///
  float   us10a_adjust       545-551    ///
  float   us10a_cpi99        552-554    ///
  byte    us10a_respmode     555-555    ///
  byte    us10a_appal        556-557    ///
  byte    us10a_validco      558-558    ///
  int     us10a_county       559-562    ///
  byte    us10a_cbnsubfam    563-563    ///
  float   us10a_hhwt         564-573    ///
  int     us10a_pumares2mig  574-576    ///
  double  us10a_strata       577-588    ///
  double  us10a_cluster      589-601    ///
  int     us10a_rent         602-605    ///
  byte    us10a_qfarmpro     606-606    ///
  int     pernum             607-609    ///
  float   wtper              610-617    ///
  byte    us10a_pernum2      618-619    ///
  int     us10a_slwtreg      620-623    ///
  int     us10a_perwtreg     624-627    ///
  byte    us10a_momloc       628-629    ///
  byte    us10a_stepmom      630-630    ///
  byte    us10a_poploc       631-632    ///
  byte    us10a_steppop      633-633    ///
  byte    us10a_poprule      634-634    ///
  byte    us10a_sploc        635-636    ///
  byte    us10a_sprule       637-637    ///
  byte    us10a_famsize      638-639    ///
  byte    us10a_famsize      640-641    ///
  byte    us10a_nchild       642-642    ///
  byte    us10a_nchlt5       643-643    ///
  byte    us10a_famunit      644-645    ///
  byte    us10a_eldch        646-647    ///
  byte    us10a_yngch        648-649    ///
  byte    us10a_nsibs        650-650    ///
  int     us10a_relate       651-654    ///
  byte    us10a_age          655-656    ///
  byte    us10a_sex          657-657    ///
  byte    us10a_sex          658-658    ///
  int     us10a_race         659-661    ///
  byte    us10a_marst        662-662    ///
  byte    us10a_marrno       663-663    ///
  byte    us10a_marrinyr     664-664    ///
  long    us10a_bpl          665-669    ///
  long    us10a_bpl          670-674    ///
  int     us10a_ancestr1     675-678    ///
  int     us10a_ancestr2     679-682    ///
  byte    us10a_citizen      683-683    ///
  int     us10a_hispan       684-686    ///
  byte    us10a_yrsusa2      687-687    ///
  int     us10a_language     688-691    ///
  byte    us10a_speakeng     692-692    ///
  byte    us10a_school       693-693    ///
  byte    us10a_school       694-694    ///
  byte    us10a_schltype     695-695    ///
  byte    us10a_empstat      696-697    ///
  byte    us10a_labforce     698-698    ///
  int     us10a_occ1950      699-701    ///
  byte    us10a_occscore     702-703    ///
  byte    us10a_sei          704-705    ///
  int     us10a_ind1950      706-708    ///
  byte    us10a_classwkr     709-710    ///
  byte    us10a_wkswork2     711-711    ///
  byte    us10a_uhrswork     712-713    ///
  byte    us10a_yrsusa1      714-715    ///
  byte    us10a_workedyr     716-716    ///
  byte    us10a_absent       717-717    ///
  byte    us10a_looking      718-718    ///
  byte    us10a_availble     719-719    ///
  long    us10a_incwage      720-725    ///
  int     us10a_poverty      726-728    ///
  long    us10a_incss        729-733    ///
  long    us10a_incwelfr     734-738    ///
  long    us10a_incinvst     739-744    ///
  long    us10a_incother     745-749    ///
  byte    us10a_migrate1     750-751    ///
  int     us10a_migplac1     752-754    ///
  int     us10a_migmet1      755-758    ///
  int     us10a_migmet1      759-762    ///
  byte    us10a_migtype1     763-763    ///
  byte    us10a_movedin      764-764    ///
  byte    us10a_pwtype       765-765    ///
  byte    us10a_pwtype       766-766    ///
  byte    us10a_pwstate2     767-768    ///
  byte    us10a_diffmob      769-769    ///
  byte    us10a_diffmob      770-770    ///
  byte    us10a_diffmob      771-771    ///
  byte    us10a_diffcare     772-772    ///
  byte    us10a_vet80x90     773-773    ///
  byte    us10a_vet80x90     774-774    ///
  byte    us10a_vet75x80     775-775    ///
  byte    us10a_vetvietn     776-776    ///
  byte    us10a_vet55x64     777-777    ///
  byte    us10a_vetkorea     778-778    ///
  byte    us10a_vetwwii      779-779    ///
  byte    us10a_vetother     780-780    ///
  byte    us10a_tranwork     781-782    ///
  byte    us10a_carpool      783-783    ///
  byte    us10a_riders       784-784    ///
  int     us10a_departs      785-788    ///
  int     us10a_pwcity       789-792    ///
  byte    us10a_qage         793-793    ///
  byte    us10a_qdeparts     794-794    ///
  byte    us10a_qbpl         795-795    ///
  byte    us10a_qcarpool     796-796    ///
  byte    us10a_qmarinyr     797-797    ///
  byte    us10a_qclasswk     798-798    ///
  byte    us10a_qlanguag     799-799    ///
  byte    us10a_qyrnatur     800-800    ///
  byte    us10a_qempstat     801-801    ///
  byte    us10a_qeduc        802-802    ///
  byte    us10a_qincbus      803-803    ///
  byte    us10a_qincinvs     804-804    ///
  byte    us10a_qincss       805-805    ///
  byte    us10a_qincwage     806-806    ///
  byte    us10a_qincwelf     807-807    ///
  byte    us10a_qind         808-808    ///
  byte    us10a_qdifmob      809-809    ///
  byte    us10a_qmarrno      810-810    ///
  byte    us10a_qpwstat2     811-811    ///
  byte    us10a_qmarst       812-812    ///
  byte    us10a_qincreti     813-813    ///
  byte    us10a_qmigplc1     814-814    ///
  byte    us10a_qmigrat1     815-815    ///
  byte    us10a_qmovedin     816-816    ///
  byte    us10a_qocc         817-817    ///
  byte    us10a_qrace        818-818    ///
  byte    us10a_qrelate      819-819    ///
  byte    us10a_qriders      820-820    ///
  byte    us10a_qschool      821-821    ///
  byte    us10a_qsex         822-822    ///
  byte    us10a_qspeaken     823-823    ///
  byte    us10a_qtrantim     824-824    ///
  byte    us10a_qtranwor     825-825    ///
  byte    us10a_quhrswor     826-826    ///
  byte    us10a_qvetper      827-827    ///
  byte    us10a_qvetstat     828-828    ///
  byte    us10a_qvetstat     829-829    ///
  byte    us10a_qwkswork     830-830    ///
  byte    us10a_qworkedy     831-831    ///
  byte    us10a_qyrimm       832-832    ///
  byte    us10a_gchouse      833-833    ///
  byte    us10a_racamind     834-834    ///
  byte    us10a_racasian     835-835    ///
  byte    us10a_racblk       836-836    ///
  byte    us10a_racnum       837-837    ///
  byte    us10a_racother     838-838    ///
  byte    us10a_racwht       839-839    ///
  byte    us10a_racwht       840-840    ///
  long    us10a_indnaics     841-846    ///
  long    us10a_occsoc       847-852    ///
  byte    us10a_wrklstwk     853-853    ///
  byte    us10a_wrkrecal     854-854    ///
  long    us10a_incsupp      855-859    ///
  long    us10a_incsupp      860-864    ///
  byte    us10a_diffphys     865-865    ///
  byte    us10a_gcmonths     866-866    ///
  byte    us10a_gcrespon     867-867    ///
  byte    us10a_qdifsens     868-868    ///
  byte    us10a_qincsupp     869-869    ///
  byte    us10a_qdifphys     870-870    ///
  byte    us10a_qdifphys     871-871    ///
  byte    us10a_qdifrem      872-872    ///
  byte    us10a_qgchouse     873-873    ///
  byte    us10a_qgcmonth     874-874    ///
  byte    us10a_qgcrespo     875-875    ///
  byte    us10a_qgradeat     876-876    ///
  int     us10a_pov2000      877-879    ///
  long    us10a_incbus00     880-885    ///
  int     us10a_oldpov20     886-888    ///
  int     us10a_oldpov20     889-891    ///
  int     us10a_pwpuma00     892-895    ///
  long    us10a_incretir     896-901    ///
  int     us10a_pwpumas      902-904    ///
  byte    us10a_vet01ltr     905-905    ///
  byte    us10a_vet90x01     906-906    ///
  byte    us10a_vet47x50     907-907    ///
  byte    us10a_vet47x50     908-908    ///
  byte    us10a_stepmom2     909-909    ///
  byte    us10a_momrule2     910-910    ///
  byte    us10a_poploc2      911-912    ///
  byte    us10a_steppop2     913-913    ///
  byte    us10a_steppop2     914-914    ///
  byte    us10a_sprule2      915-915    ///
  byte    us10a_famsize2     916-917    ///
  byte    us10a_nchild2      918-918    ///
  byte    us10a_nchlt52      919-919    ///
  byte    us10a_famunit2     920-921    ///
  byte    us10a_eldch2       922-923    ///
  byte    us10a_yngch2       924-925    ///
  byte    us10a_nsibs2       926-926    ///
  int     us10a_ind1990      927-929    ///
  int     us10a_ind1990      930-932    ///
  byte    us10a_qhispan      933-933    ///
  byte    us10a_racesing     934-935    ///
  int     us10a_probwht      936-938    ///
  int     us10a_proboth      939-941    ///
  int     us10a_probblk      942-944    ///
  int     us10a_probapi      945-947    ///
  int     us10a_probai       948-950    ///
  int     us10a_occ1990      951-953    ///
  byte    us10a_migpuma1     954-955    ///
  int     us10a_arrives      956-959    ///
  int     us10a_migpums1     960-962    ///
  int     us10a_migpums1     963-965    ///
  int     us10a_migcity1     966-969    ///
  long    us10a_tribe        970-975    ///
  byte    us10a_racgen00     976-976    ///
  float   us10a_hwsei        977-980    ///
  float   us10a_presgl       981-983    ///
  float   us10a_prent        984-986    ///
  float   us10a_prent        987-989    ///
  float   us10a_erscor50     990-993    ///
  float   us10a_erscor90     994-997    ///
  float   us10a_edscor50     998-1001   ///
  float   us10a_edscor90     1002-1005  ///
  float   us10a_npboss50     1006-1009  ///
  float   us10a_npboss90     1010-1013  ///
  int     us10a_repwtp1      1014-1017  ///
  int     us10a_repwtp2      1018-1021  ///
  int     us10a_repwtp3      1022-1025  ///
  int     us10a_repwtp4      1026-1029  ///
  int     us10a_repwtp5      1030-1033  ///
  int     us10a_repwtp6      1034-1037  ///
  int     us10a_repwtp7      1038-1041  ///
  int     us10a_repwtp9      1042-1045  ///
  int     us10a_repwtp10     1046-1049  ///
  int     us10a_repwtp11     1050-1053  ///
  int     us10a_repwtp12     1054-1057  ///
  int     us10a_repwtp13     1058-1061  ///
  int     us10a_repwtp14     1062-1065  ///
  int     us10a_repwtp15     1066-1069  ///
  int     us10a_repwtp16     1070-1073  ///
  int     us10a_repwtp17     1074-1077  ///
  int     us10a_repwtp18     1078-1081  ///
  int     us10a_repwtp19     1082-1085  ///
  int     us10a_repwtp20     1086-1089  ///
  int     us10a_repwtp21     1090-1093  ///
  int     us10a_repwtp22     1094-1097  ///
  int     us10a_repwtp23     1098-1101  ///
  int     us10a_repwtp24     1102-1105  ///
  int     us10a_repwtp25     1106-1109  ///
  int     us10a_repwtp27     1110-1113  ///
  int     us10a_repwtp28     1114-1117  ///
  int     us10a_repwtp29     1118-1121  ///
  int     us10a_repwtp30     1122-1125  ///
  int     us10a_repwtp31     1126-1129  ///
  int     us10a_repwtp32     1130-1133  ///
  int     us10a_repwtp33     1134-1137  ///
  int     us10a_repwtp34     1138-1141  ///
  int     us10a_repwtp35     1142-1145  ///
  int     us10a_repwtp36     1146-1149  ///
  int     us10a_repwtp37     1150-1153  ///
  int     us10a_repwtp38     1154-1157  ///
  int     us10a_repwtp39     1158-1161  ///
  int     us10a_repwtp40     1162-1165  ///
  int     us10a_repwtp41     1166-1169  ///
  int     us10a_repwtp42     1170-1173  ///
  int     us10a_repwtp43     1174-1177  ///
  int     us10a_repwtp44     1178-1181  ///
  int     us10a_repwtp45     1182-1185  ///
  int     us10a_repwtp46     1186-1189  ///
  int     us10a_repwtp47     1190-1193  ///
  int     us10a_repwtp48     1194-1197  ///
  int     us10a_repwtp49     1198-1201  ///
  int     us10a_repwtp50     1202-1205  ///
  int     us10a_repwtp51     1206-1209  ///
  int     us10a_repwtp53     1210-1213  ///
  int     us10a_repwtp54     1214-1217  ///
  int     us10a_repwtp55     1218-1221  ///
  int     us10a_repwtp56     1222-1225  ///
  int     us10a_repwtp57     1226-1229  ///
  int     us10a_repwtp58     1230-1233  ///
  int     us10a_repwtp59     1234-1237  ///
  int     us10a_repwtp60     1238-1241  ///
  int     us10a_repwtp61     1242-1245  ///
  int     us10a_repwtp62     1246-1249  ///
  int     us10a_repwtp63     1250-1253  ///
  int     us10a_repwtp64     1254-1257  ///
  int     us10a_repwtp65     1258-1261  ///
  int     us10a_repwtp66     1262-1265  ///
  int     us10a_repwtp67     1266-1269  ///
  int     us10a_repwtp68     1270-1273  ///
  int     us10a_repwtp69     1274-1277  ///
  int     us10a_repwtp70     1278-1281  ///
  int     us10a_repwtp71     1282-1285  ///
  int     us10a_repwtp72     1286-1289  ///
  int     us10a_repwtp73     1290-1293  ///
  int     us10a_repwtp74     1294-1297  ///
  int     us10a_repwtp75     1298-1301  ///
  int     us10a_repwtp77     1302-1305  ///
  int     us10a_repwtp78     1306-1309  ///
  int     us10a_repwtp79     1310-1313  ///
  int     us10a_repwtp80     1314-1317  ///
  byte    us10a_repwtp       1318-1318  ///
  byte    us10a_subfam       1319-1319  ///
  byte    us10a_sftype       1320-1320  ///
  byte    us10a_sfrelate     1321-1321  ///
  byte    us10a_subfam2      1322-1322  ///
  byte    us10a_sftype2      1323-1323  ///
  byte    us10a_sfrelate2    1324-1324  ///
  long    us10a_ftotinc      1325-1331  ///
  long    us10a_ftotinc2     1332-1338  ///
  byte    us10a_diffeye      1339-1339  ///
  byte    us10a_diffhear     1340-1340  ///
  byte    us10a_divinyr      1341-1341  ///
  byte    us10a_hcovany      1342-1342  ///
  byte    us10a_hinsemp      1343-1343  ///
  byte    us10a_hinsemp      1344-1344  ///
  byte    us10a_hinspur      1345-1345  ///
  byte    us10a_hinstri      1346-1346  ///
  byte    us10a_hcovpub      1347-1347  ///
  byte    us10a_hinscaid     1348-1348  ///
  byte    us10a_hinscare     1349-1349  ///
  byte    us10a_hinsva       1350-1350  ///
  byte    us10a_hinsihs      1351-1351  ///
  byte    us10a_vetdisab     1352-1352  ///
  byte    us10a_widinyr      1353-1353  ///
  int     us10a_yrmarr       1354-1357  ///
  byte    us10a_qdifeye      1358-1358  ///
  byte    us10a_qdifhear     1359-1359  ///
  byte    us10a_qdivinyr     1360-1360  ///
  byte    us10a_qhcovany     1361-1361  ///
  byte    us10a_qhcovpri     1362-1362  ///
  byte    us10a_qhinsemp     1363-1363  ///
  byte    us10a_qhinsemp     1364-1364  ///
  byte    us10a_qhinspur     1365-1365  ///
  byte    us10a_qhinstri     1366-1366  ///
  byte    us10a_qhinscai     1367-1367  ///
  byte    us10a_qhinscar     1368-1368  ///
  byte    us10a_qhinsva      1369-1369  ///
  byte    us10a_qhinsihs     1370-1370  ///
  byte    us10a_qvetdisb     1371-1371  ///
  byte    us10a_qwidinyr     1372-1372  ///
  byte    us10a_qyrmarr      1373-1373  ///
  int     us10a_yrnatur      1374-1377  ///
  byte    us10a_gradeatt     1378-1379  ///
  int     us10a_educ         1380-1382  ///
  long    us10a_inctot       1383-1389  ///
  long    us10a_incearn      1390-1396  ///
  int     us10a_trantime     1397-1399  ///
  int     us10a_yrimmig      1400-1403  ///
  byte    us10a_vetstat      1404-1405  ///
  int     us10a_ind          1406-1409  ///
  int     us10a_degfield     1410-1413  ///
  int     us10a_degfield2    1414-1417  ///
  byte    us10a_qdegfield    1418-1418  ///
  byte    us10a_qwrklstwk    1419-1419  ///
  byte    us10a_cbsubfam     1420-1420  ///
  byte    us10a_cbsftype     1421-1421  ///
  byte    us10a_cbsfrelate   1422-1422  ///
  float   us10a_perwt        1423-1432  ///
  int     us10a_birthyr      1433-1436  ///
  int     us10a_cbpoverty    1437-1439  ///
  int     us10a_occ          1440-1443  ///
  byte    us10a_qdifcare     1444-1444  ///
  long    us10a_hiufpgbase   1445-1449  ///
  int     us10a_hiufpginc    1450-1453  ///
  byte    us10a_hiurule      1454-1454  ///
  double  us10a_hiuid        1455-1463  ///
  using `"ipumsi_00121.dat"'

replace us10a_adjust      = us10a_adjust      / 1000000
replace us10a_cpi99       = us10a_cpi99       / 1000
replace us10a_hhwt        = us10a_hhwt        / 100
replace wtper             = wtper             / 100
replace us10a_hwsei       = us10a_hwsei       / 100
replace us10a_presgl      = us10a_presgl      / 10
replace us10a_prent       = us10a_prent       / 10
replace us10a_prent       = us10a_prent       / 10
replace us10a_erscor50    = us10a_erscor50    / 10
replace us10a_erscor90    = us10a_erscor90    / 10
replace us10a_edscor50    = us10a_edscor50    / 10
replace us10a_edscor90    = us10a_edscor90    / 10
replace us10a_npboss50    = us10a_npboss50    / 10
replace us10a_npboss90    = us10a_npboss90    / 10
replace us10a_perwt       = us10a_perwt       / 100

format serial            %10.0f
format us10a_serial      %8.0f
format us10a_adjust      %7.6f
format us10a_cpi99       %3.3f
format us10a_hhwt        %10.2f
format us10a_strata      %12.0f
format us10a_cluster     %13.0f
format wtper             %8.2f
format us10a_hwsei       %4.2f
format us10a_presgl      %3.1f
format us10a_prent       %3.1f
format us10a_prent       %3.1f
format us10a_erscor50    %4.1f
format us10a_erscor90    %4.1f
format us10a_edscor50    %4.1f
format us10a_edscor90    %4.1f
format us10a_npboss50    %4.1f
format us10a_npboss90    %4.1f
format us10a_perwt       %10.2f
format us10a_hiuid       %9.0f

label var cntry             `"Country"'
label var year              `"Year"'
label var sample            `"IPUMS sample identifier"'
label var serial            `"Household serial number"'
label var us10a_dwnum       `"Dwelling number"'
label var us10a_pern        `"Number of persons in household"'
label var us10a_serial      `"Household serial number"'
label var us10a_numprec     `"Number of person records following"'
label var us10a_subsamp     `"Subsample number"'
label var us10a_hhwtreg     `"Household weight (integer)"'
label var us10a_stateicp    `"State (ICPSR code)"'
label var us10a_statefip    `"State (FIPS code)"'
label var us10a_puma        `"Public use microdata area"'
label var us10a_metro       `"Metropolitan status"'
label var us10a_metarea     `"Metropolitan area"'
label var us10a_city        `"City"'
label var us10a_citypop     `"City population (hundreds)"'
label var us10a_gq          `"Group quarters status"'
label var us10a_gqtype      `"Group quarters type"'
label var us10a_farm        `"Farm status"'
label var us10a_farmprod    `"Sales of farm products (US$)"'
label var us10a_ownershp    `"Ownership of dwelling (tenure)"'
label var us10a_mortgage    `"Mortgage status"'
label var us10a_mortgag2    `"Second mortgage status"'
label var us10a_mortamt1    `"First mortgage monthly payment (US$)"'
label var us10a_commuse     `"Commercial use"'
label var us10a_acrehous    `"House acreage"'
label var us10a_taxincl     `"Mortgage payment includes property taxes"'
label var us10a_insincl     `"Mortgage payment includes property insurance"'
label var us10a_propinsr    `"Annual property insurance cost (US$)"'
label var us10a_proptx99    `"Annual property taxes (US$), 1990"'
label var us10a_rentgrs     `"Monthly gross rent (US$)"'
label var us10a_rentmeal    `"Meals included in rent"'
label var us10a_condofee    `"Monthly condominium fee (US$)"'
label var us10a_moblhome    `"Annual mobile home costs (US$)"'
label var us10a_costelec    `"Annual electricity cost (US$)"'
label var us10a_costgas     `"Annual gas cost (US$)"'
label var us10a_costwatr    `"Annual water cost (US$)"'
label var us10a_costfuel    `"Annual home heating fuel cost (US$)"'
label var us10a_vacancy     `"Vacancy status"'
label var us10a_kitchen     `"Kitchen or cooking facilities"'
label var us10a_hotwater    `"Hot and cold piped water"'
label var us10a_shower      `"Bathtub or shower"'
label var us10a_toilet      `"Flush toilet"'
label var us10a_unitsstr    `"Units in structure"'
label var us10a_phone       `"Telephone availability"'
label var us10a_mortamt2    `"Second mortgage monthly payment (US$)"'
label var us10a_lingisol    `"Linguistic isolation"'
label var us10a_fuelheat    `"Home heating fuel"'
label var us10a_vehicles    `"Vehicles available"'
label var us10a_nfams       `"Number of families in household"'
label var us10a_ncouples    `"Number of married couples in household"'
label var us10a_nmothers    `"Number of mothers in household"'
label var us10a_nfathers    `"Number of fathers in household"'
label var us10a_qacrehou    `"Flag for acrehous"'
label var us10a_qmoblhom    `"Flag for moblhome, moblhom2"'
label var us10a_qmortam1    `"Flag for mortamt1"'
label var us10a_qinsincl    `"Flag for insrincl"'
label var us10a_qmortam2    `"Flag for mortamt2"'
label var us10a_qbedroom    `"Flag for bedrooms"'
label var us10a_qcommuse    `"Flag for commuse"'
label var us10a_qmortga2    `"Flag for mortgag2"'
label var us10a_qcostele    `"Flag for costelec"'
label var us10a_qmortgag    `"Flag for mortgage"'
label var us10a_qcostfue    `"Flag for costfuel"'
label var us10a_qcostgas    `"Flag for costgas"'
label var us10a_qpropins    `"Flag for propinsr"'
label var us10a_qcostwat    `"Flag for costwatr"'
label var us10a_qprotx99    `"Flag for proptx99"'
label var us10a_qrentmea    `"Flag for rentmeal"'
label var us10a_qfuelhea    `"Flag for fuelheat"'
label var us10a_qplumbin    `"Flag for plumbing"'
label var us10a_qownersh    `"Flag for ownershp"'
label var us10a_qphone      `"Flag for phone"'
label var us10a_qrent       `"Flag for rent, rent30"'
label var us10a_qrooms      `"Flag for rooms"'
label var us10a_qshower     `"Flag for shower"'
label var us10a_qunitsst    `"Flag for unitsstr"'
label var us10a_qvacancy    `"Flag for vacancy"'
label var us10a_qvalueh     `"Flag for valueh"'
label var us10a_qcondofe    `"Flag for condofee"'
label var us10a_qtaxincl    `"Flag for taxincl"'
label var us10a_qfoodstm    `"Flag for foodstmp and fdstpamt"'
label var us10a_qmortg2a    `"Flag for mortgag2"'
label var us10a_pumasupr    `"Super Public Use Microdata Area"'
label var us10a_builtyr2    `"Age of structure, decade"'
label var us10a_qbuilty2    `"Flag for builtyr2"'
label var us10a_nfams2      `"Number of families in household (alt)"'
label var us10a_ncouple2    `"Number ofmarried couples in household (alt)"'
label var us10a_nmother2    `"Number of mothers in household (alt)"'
label var us10a_nfather2    `"Number of fathers in household (alt)"'
label var us10a_hhtype      `"Household type"'
label var us10a_conspuma    `"Consistent Public Use Microdata Area"'
label var us10a_repwt1      `"Household replicate weight 1"'
label var us10a_repwt2      `"Household replicate weight 2"'
label var us10a_repwt3      `"Household replicate weight 3"'
label var us10a_repwt4      `"Household replicate weight 4"'
label var us10a_repwt5      `"Household replicate weight 5"'
label var us10a_repwt6      `"Household replicate weight 6"'
label var us10a_repwt7      `"Household replicate weight 7"'
label var us10a_repwt8      `"Household replicate weight 8"'
label var us10a_repwt9      `"Household replicate weight 9"'
label var us10a_repwt10     `"Household replicate weight 10"'
label var us10a_repwt11     `"Household replicate weight 11"'
label var us10a_repwt12     `"Household replicate weight 12"'
label var us10a_repwt13     `"Household replicate weight 13"'
label var us10a_repwt14     `"Household replicate weight 14"'
label var us10a_repwt15     `"Household replicate weight 15"'
label var us10a_repwt16     `"Household replicate weight 16"'
label var us10a_repwt17     `"Household replicate weight 17"'
label var us10a_repwt18     `"Household replicate weight 18"'
label var us10a_repwt19     `"Household replicate weight 19"'
label var us10a_repwt20     `"Household replicate weight 20"'
label var us10a_repwt21     `"Household replicate weight 21"'
label var us10a_repwt22     `"Household replicate weight 22"'
label var us10a_repwt23     `"Household replicate weight 23"'
label var us10a_repwt24     `"Household replicate weight 24"'
label var us10a_repwt25     `"Household replicate weight 25"'
label var us10a_repwt26     `"Household replicate weight 26"'
label var us10a_repwt27     `"Household replicate weight 27"'
label var us10a_repwt28     `"Household replicate weight 28"'
label var us10a_repwt29     `"Household replicate weight 29"'
label var us10a_repwt30     `"Household replicate weight 30"'
label var us10a_repwt31     `"Household replicate weight 31"'
label var us10a_repwt32     `"Household replicate weight 32"'
label var us10a_repwt33     `"Household replicate weight 33"'
label var us10a_repwt34     `"Household replicate weight 34"'
label var us10a_repwt35     `"Household replicate weight 35"'
label var us10a_repwt36     `"Household replicate weight 36"'
label var us10a_repwt37     `"Household replicate weight 37"'
label var us10a_repwt38     `"Household replicate weight 38"'
label var us10a_repwt39     `"Household replicate weight 39"'
label var us10a_repwt40     `"Household replicate weight 40"'
label var us10a_repwt41     `"Household replicate weight 41"'
label var us10a_repwt42     `"Household replicate weight 42"'
label var us10a_repwt43     `"Household replicate weight 43"'
label var us10a_repwt44     `"Household replicate weight 44"'
label var us10a_repwt45     `"Household replicate weight 45"'
label var us10a_repwt46     `"Household replicate weight 46"'
label var us10a_repwt47     `"Household replicate weight 47"'
label var us10a_repwt48     `"Household replicate weight 48"'
label var us10a_repwt49     `"Household replicate weight 49"'
label var us10a_repwt50     `"Household replicate weight 50"'
label var us10a_repwt51     `"Household replicate weight 51"'
label var us10a_repwt52     `"Household replicate weight 52"'
label var us10a_repwt53     `"Household replicate weight 53"'
label var us10a_repwt54     `"Household replicate weight 54"'
label var us10a_repwt55     `"Household replicate weight 55"'
label var us10a_repwt56     `"Household replicate weight 56"'
label var us10a_repwt57     `"Household replicate weight 57"'
label var us10a_repwt58     `"Household replicate weight 58"'
label var us10a_repwt59     `"Household replicate weight 59"'
label var us10a_repwt60     `"Household replicate weight 60"'
label var us10a_repwt61     `"Household replicate weight 61"'
label var us10a_repwt62     `"Household replicate weight 62"'
label var us10a_repwt63     `"Household replicate weight 63"'
label var us10a_repwt64     `"Household replicate weight 64"'
label var us10a_repwt65     `"Household replicate weight 65"'
label var us10a_repwt66     `"Household replicate weight 66"'
label var us10a_repwt67     `"Household replicate weight 67"'
label var us10a_repwt68     `"Household replicate weight 68"'
label var us10a_repwt69     `"Household replicate weight 69"'
label var us10a_repwt70     `"Household replicate weight 70"'
label var us10a_repwt71     `"Household replicate weight 71"'
label var us10a_repwt72     `"Household replicate weight 72"'
label var us10a_repwt73     `"Household replicate weight 73"'
label var us10a_repwt74     `"Household replicate weight 74"'
label var us10a_repwt75     `"Household replicate weight 75"'
label var us10a_repwt76     `"Household replicate weight 76"'
label var us10a_repwt77     `"Household replicate weight 77"'
label var us10a_repwt78     `"Household replicate weight 78"'
label var us10a_repwt79     `"Household replicate weight 79"'
label var us10a_repwt80     `"Household replicate weight 80"'
label var us10a_repwt       `"Household replicate weights"'
label var us10a_qvehicle    `"Data quality flag for vehicle"'
label var us10a_owncost     `"Selected monthly owner costs (US$)"'
label var us10a_nsubfam     `"Number of subfamilies in household"'
label var us10a_hhincome    `"Total household income (US$)"'
label var us10a_headloc     `"Location of household head"'
label var us10a_fridge      `"Refrigerator"'
label var us10a_qfridge     `"Data quality flag for fridge"'
label var us10a_sink        `"Sink with faucet"'
label var us10a_qsink       `"Data quality flag for sink"'
label var us10a_stove       `"Stove or range"'
label var us10a_qstove      `"Data quality flag for stove"'
label var us10a_valueh      `"House value (US$)"'
label var us10a_multgen     `"Multigenerational household"'
label var us10a_bedrooms    `"Number of bedrooms"'
label var us10a_rooms       `"Number of rooms"'
label var us10a_homeland    `"American Indian, Alaska Native, or Native Hawaiian homeland area"'
label var us10a_adjust      `"Adjustment factor, ACS/PRCS"'
label var us10a_cpi99       `"CPI-U adjustment factor to 1999 dollars"'
label var us10a_respmode    `"Response mode"'
label var us10a_appal       `"Appalachian region"'
label var us10a_validco     `"County (precursor)"'
label var us10a_county      `"County"'
label var us10a_cbnsubfam   `"Number of subfamilies in household (original Census Bureau classification)"'
label var us10a_hhwt        `"Household weight"'
label var us10a_pumares2mig `"Public Use Microdata Area matching MIGPUMA"'
label var us10a_strata      `"Household strata for variance estimation"'
label var us10a_cluster     `"Household cluster for variance estimation"'
label var us10a_rent        `"Monthly contract rent (US$)"'
label var us10a_qfarmpro    `"Flag for Farmprod, Farm"'
label var pernum            `"Person number"'
label var wtper             `"Person weight"'
label var us10a_pernum2     `"Person number in sample unit"'
label var us10a_slwtreg     `"Sample"'
label var us10a_perwtreg    `"Person weight (integer)"'
label var us10a_momloc      `"Mother's location in the household"'
label var us10a_stepmom     `"Probable step/adopted mother"'
label var us10a_poploc      `"Father's location in the household"'
label var us10a_steppop     `"Probable step/adopted father"'
label var us10a_poprule     `"Rule for linking father"'
label var us10a_sploc       `"Spouse's location in household"'
label var us10a_sprule      `"Rule for linking spouse"'
label var us10a_famsize     `"Number of own family members in household"'
label var us10a_famsize     `"Number of own family members in household"'
label var us10a_nchild      `"Number of own children in the household"'
label var us10a_nchlt5      `"Number of own children under age 5 in household"'
label var us10a_famunit     `"Family unit membership"'
label var us10a_eldch       `"Age of eldest own child in household"'
label var us10a_yngch       `"Age of youngest own child in household"'
label var us10a_nsibs       `"Number of own siblings in household"'
label var us10a_relate      `"Relationship to household head"'
label var us10a_age         `"Age"'
label var us10a_sex         `"Sex"'
label var us10a_sex         `"Sex"'
label var us10a_race        `"Race"'
label var us10a_marst       `"Marital status"'
label var us10a_marrno      `"Times married"'
label var us10a_marrinyr    `"Married within the past year"'
label var us10a_bpl         `"Birthplace"'
label var us10a_bpl         `"Birthplace"'
label var us10a_ancestr1    `"Ancestry, first response"'
label var us10a_ancestr2    `"Ancestry, second response"'
label var us10a_citizen     `"Citizenship status"'
label var us10a_hispan      `"Hispanic origin"'
label var us10a_yrsusa2     `"Years in the United States, intervalled"'
label var us10a_language    `"Language spoken"'
label var us10a_speakeng    `"Speaks English"'
label var us10a_school      `"School attendance"'
label var us10a_school      `"School attendance"'
label var us10a_schltype    `"Public or private school"'
label var us10a_empstat     `"Employment status"'
label var us10a_labforce    `"Labor force status"'
label var us10a_occ1950     `"Occupation, 1950 basis"'
label var us10a_occscore    `"Occupational income score"'
label var us10a_sei         `"Duncan socioeconomic index"'
label var us10a_ind1950     `"Industry, 1950 basis"'
label var us10a_classwkr    `"Class of worker"'
label var us10a_wkswork2    `"Weeks worked last year, intervalled"'
label var us10a_uhrswork    `"Usual hours worked per week"'
label var us10a_yrsusa1     `"Years in the United States"'
label var us10a_workedyr    `"Worked last year"'
label var us10a_absent      `"Absent from work last week"'
label var us10a_looking     `"Looking for work last week"'
label var us10a_availble    `"Available for work last week"'
label var us10a_incwage     `"Wage and salary income (US$)"'
label var us10a_poverty     `"Poverty status"'
label var us10a_incss       `"Social Security income (US$)"'
label var us10a_incwelfr    `"Welfare (public assistance) income (US$)"'
label var us10a_incinvst    `"Interest, dividend, and rental income (US$)"'
label var us10a_incother    `"Other income (US$)"'
label var us10a_migrate1    `"Migration status, 1 year"'
label var us10a_migplac1    `"State or country of residence 1 year ago"'
label var us10a_migmet1     `"Metropolitan area of residence 1 year ago"'
label var us10a_migmet1     `"Metropolitan area of residence 1 year ago"'
label var us10a_migtype1    `"Metropolitan status 1 year ago"'
label var us10a_movedin     `"When occupant moved into residence"'
label var us10a_pwtype      `"Place of work: metropolitan status"'
label var us10a_pwtype      `"Place of work: metropolitan status"'
label var us10a_pwstate2    `"Place of work: state"'
label var us10a_diffmob     `"Independent living difficulty"'
label var us10a_diffmob     `"Independent living difficulty"'
label var us10a_diffmob     `"Independent living difficulty"'
label var us10a_diffcare    `"Self-care difficulty"'
label var us10a_vet80x90    `"Veteran, served 1980 to 1990"'
label var us10a_vet80x90    `"Veteran, served 1980 to 1990"'
label var us10a_vet75x80    `"Veteran, served 1975 to 1980"'
label var us10a_vetvietn    `"Veteran, served during Vietnam era"'
label var us10a_vet55x64    `"Veteran, served 1955 to 1964"'
label var us10a_vetkorea    `"Veteran, served during Korean conflict era"'
label var us10a_vetwwii     `"Veteran, served during WWII era"'
label var us10a_vetother    `"Veteran of other period"'
label var us10a_tranwork    `"Means of transportation to work"'
label var us10a_carpool     `"Carpooling"'
label var us10a_riders      `"Vehicle occupancy"'
label var us10a_departs     `"Time of departure for work last week"'
label var us10a_pwcity      `"Place of work: city"'
label var us10a_qage        `"Flag for age"'
label var us10a_qdeparts    `"Flag for departs"'
label var us10a_qbpl        `"Flag for bpl, nativity"'
label var us10a_qcarpool    `"Flag for carpool"'
label var us10a_qmarinyr    `"Flag for maryr"'
label var us10a_qclasswk    `"Flag for classwkr"'
label var us10a_qlanguag    `"Flag for language, speakeng"'
label var us10a_qyrnatur    `"Flag for natur"'
label var us10a_qempstat    `"Flag for empstat, labforce"'
label var us10a_qeduc       `"Flag for educrec, higrade, educ99"'
label var us10a_qincbus     `"Flag for incbus, inctot, incearn"'
label var us10a_qincinvs    `"Flag for incinvst, inctot"'
label var us10a_qincss      `"Flag for incss, inctot"'
label var us10a_qincwage    `"Flag for incwage, inctot, incearn"'
label var us10a_qincwelf    `"Flag for incwelfr, inctot"'
label var us10a_qind        `"Flag for ind, ind1950"'
label var us10a_qdifmob     `"Flag for diffmob"'
label var us10a_qmarrno     `"Flag for marrno"'
label var us10a_qpwstat2    `"Flag for pwstate2"'
label var us10a_qmarst      `"Flag for marst"'
label var us10a_qincreti    `"Flag for incretir, inctot"'
label var us10a_qmigplc1    `"Flag for migplac1"'
label var us10a_qmigrat1    `"Flag for migrate1"'
label var us10a_qmovedin    `"Flag for movedin"'
label var us10a_qocc        `"Flag for occ, occ1950, sei, occscore, occsoc, labforce"'
label var us10a_qrace       `"Flag for race, racamind, racasian, racblk, racpais, racwht, racoth, racnum, race"'
label var us10a_qrelate     `"Flag for relate"'
label var us10a_qriders     `"Flag for riders"'
label var us10a_qschool     `"Flag for school, schltype"'
label var us10a_qsex        `"Flag for sex"'
label var us10a_qspeaken    `"Flag for speakeng"'
label var us10a_qtrantim    `"Flag for trantime"'
label var us10a_qtranwor    `"Flag for tranwork"'
label var us10a_quhrswor    `"Flag for uhrswork"'
label var us10a_qvetper     `"Flag for vetper, vetstat, vet55x64, vet75x80, vet80x90, vet90x95, vet95x00, vetk"'
label var us10a_qvetstat    `"Flag for vetstat, vet55x64, vet75x80, vet80x90, vet90x95, vetkorea, vetother, ve"'
label var us10a_qvetstat    `"Flag for vetstat, vet55x64, vet75x80, vet80x90, vet90x95, vetkorea, vetother, ve"'
label var us10a_qwkswork    `"Flag for wkswork1, wkswork2"'
label var us10a_qworkedy    `"Flag for workedyr"'
label var us10a_qyrimm      `"Flag for yrimmig, yrsusa1, yrsusa2"'
label var us10a_gchouse     `"Own grandchildren living in household"'
label var us10a_racamind    `"Race: American Indian or Alaska Native"'
label var us10a_racasian    `"Race: Asian"'
label var us10a_racblk      `"Race: black or African American"'
label var us10a_racnum      `"Number of major race groups"'
label var us10a_racother    `"Race: some other race"'
label var us10a_racwht      `"Race: white"'
label var us10a_racwht      `"Race: white"'
label var us10a_indnaics    `"Industry, NAICS classification"'
label var us10a_occsoc      `"Occupation, SOC classification"'
label var us10a_wrklstwk    `"Worked last week"'
label var us10a_wrkrecal    `"Informed of work recall"'
label var us10a_incsupp     `"Supplementary Security income (US$)"'
label var us10a_incsupp     `"Supplementary Security income (US$)"'
label var us10a_diffphys    `"Ambulatory difficulty"'
label var us10a_gcmonths    `"Months responsible for grandchildren"'
label var us10a_gcrespon    `"Responsible for grandchildren"'
label var us10a_qdifsens    `"Flag for diffsens"'
label var us10a_qincsupp    `"Flag for incsupp"'
label var us10a_qdifphys    `"Flag for diffphys"'
label var us10a_qdifphys    `"Flag for diffphys"'
label var us10a_qdifrem     `"Flag for diffrem"'
label var us10a_qgchouse    `"Flag for gchouse"'
label var us10a_qgcmonth    `"Flag for gcmonths"'
label var us10a_qgcrespo    `"Flag for gcrespon"'
label var us10a_qgradeat    `"Flag for gradeatt"'
label var us10a_pov2000     `"Poverty status, 2000 criteria"'
label var us10a_incbus00    `"Business and farm income, 2000 (US$)"'
label var us10a_oldpov20    `"Poverty status, original 2000 PUMS"'
label var us10a_oldpov20    `"Poverty status, original 2000 PUMS"'
label var us10a_pwpuma00    `"Place of work: PUMA"'
label var us10a_incretir    `"Retirement income (US$)"'
label var us10a_pwpumas     `"Super-PUMA of work"'
label var us10a_vet01ltr    `"Veteran, served 2001 or later"'
label var us10a_vet90x01    `"Veteran, served 1990"'
label var us10a_vet47x50    `"Veteran, served 1947"'
label var us10a_vet47x50    `"Veteran, served 1947"'
label var us10a_stepmom2    `"Probable step/adopted mother (alt)"'
label var us10a_momrule2    `"Rule for linking mother (alt)"'
label var us10a_poploc2     `"Father's location in the household (alt)"'
label var us10a_steppop2    `"Probable step/adopted father (alt)"'
label var us10a_steppop2    `"Probable step/adopted father (alt)"'
label var us10a_sprule2     `"Rule for linking spouse (alt)"'
label var us10a_famsize2    `"Number of own family members in household (alt)"'
label var us10a_nchild2     `"Number of own children in the household (alt)"'
label var us10a_nchlt52     `"Number of own children under age 5 in household (alt)"'
label var us10a_famunit2    `"Family unit membership (alt)"'
label var us10a_eldch2      `"Age of eldest own child in household (alt)"'
label var us10a_yngch2      `"Age of youngest own child in household (alt)"'
label var us10a_nsibs2      `"Number of own siblings in household (alt)"'
label var us10a_ind1990     `"Industry, 1990 basis"'
label var us10a_ind1990     `"Industry, 1990 basis"'
label var us10a_qhispan     `"Flag for Hispan"'
label var us10a_racesing    `"Race: Single race identification"'
label var us10a_probwht     `"Probability of white race response"'
label var us10a_proboth     `"Probability of 'other race' race response"'
label var us10a_probblk     `"Probability of black race response"'
label var us10a_probapi     `"Probability of Asian/Pacific Islander race response"'
label var us10a_probai      `"Probability of American Indian race response"'
label var us10a_occ1990     `"Occupation, 1990 basis"'
label var us10a_migpuma1    `"PUMA of residence 1 year ago"'
label var us10a_arrives     `"Time of arrival at work last week"'
label var us10a_migpums1    `"Super-PUMA of residence 1 year ago"'
label var us10a_migpums1    `"Super-PUMA of residence 1 year ago"'
label var us10a_migcity1    `"City of residence 1 year ago"'
label var us10a_tribe       `"Tribe"'
label var us10a_racgen00    `"Internal version of race from the PUMS"'
label var us10a_hwsei       `"Socioeconomic Index, Hauser and Warren"'
label var us10a_presgl      `"Occupational prestige score, Siegel"'
label var us10a_prent       `"Occupational prestige score, Nakao and Treas"'
label var us10a_prent       `"Occupational prestige score, Nakao and Treas"'
label var us10a_erscor50    `"Occupational earnings score, 1950 basis"'
label var us10a_erscor90    `"Occupational earnings score, 1990 basis"'
label var us10a_edscor50    `"Occupational education score, 1950 basis"'
label var us10a_edscor90    `"Occupational education score, 1990 basis"'
label var us10a_npboss50    `"Nam-Powers-Boyd occupational status score, 1950 basis"'
label var us10a_npboss90    `"Nam-Powers-Boyd occupational status score, 1990 basis"'
label var us10a_repwtp1     `"Person replicate weight 1"'
label var us10a_repwtp2     `"Person replicate weight 2"'
label var us10a_repwtp3     `"Person replicate weight 3"'
label var us10a_repwtp4     `"Person replicate weight 4"'
label var us10a_repwtp5     `"Person replicate weight 5"'
label var us10a_repwtp6     `"Person replicate weight 6"'
label var us10a_repwtp7     `"Person replicate weight 7"'
label var us10a_repwtp9     `"Person replicate weight 9"'
label var us10a_repwtp10    `"Person replicate weight 10"'
label var us10a_repwtp11    `"Person replicate weight 11"'
label var us10a_repwtp12    `"Person replicate weight 12"'
label var us10a_repwtp13    `"Person replicate weight 13"'
label var us10a_repwtp14    `"Person replicate weight 14"'
label var us10a_repwtp15    `"Person replicate weight 15"'
label var us10a_repwtp16    `"Person replicate weight 16"'
label var us10a_repwtp17    `"Person replicate weight 17"'
label var us10a_repwtp18    `"Person replicate weight 18"'
label var us10a_repwtp19    `"Person replicate weight 19"'
label var us10a_repwtp20    `"Person replicate weight 20"'
label var us10a_repwtp21    `"Person replicate weight 21"'
label var us10a_repwtp22    `"Person replicate weight 22"'
label var us10a_repwtp23    `"Person replicate weight 23"'
label var us10a_repwtp24    `"Person replicate weight 24"'
label var us10a_repwtp25    `"Person replicate weight 25"'
label var us10a_repwtp27    `"Person replicate weight 27"'
label var us10a_repwtp28    `"Person replicate weight 28"'
label var us10a_repwtp29    `"Person replicate weight 29"'
label var us10a_repwtp30    `"Person replicate weight 30"'
label var us10a_repwtp31    `"Person replicate weight 31"'
label var us10a_repwtp32    `"Person replicate weight 32"'
label var us10a_repwtp33    `"Person replicate weight 33"'
label var us10a_repwtp34    `"Person replicate weight 34"'
label var us10a_repwtp35    `"Person replicate weight 35"'
label var us10a_repwtp36    `"Person replicate weight 36"'
label var us10a_repwtp37    `"Person replicate weight 37"'
label var us10a_repwtp38    `"Person replicate weight 38"'
label var us10a_repwtp39    `"Person replicate weight 39"'
label var us10a_repwtp40    `"Person replicate weight 40"'
label var us10a_repwtp41    `"Person replicate weight 41"'
label var us10a_repwtp42    `"Person replicate weight 42"'
label var us10a_repwtp43    `"Person replicate weight 43"'
label var us10a_repwtp44    `"Person replicate weight 44"'
label var us10a_repwtp45    `"Person replicate weight 45"'
label var us10a_repwtp46    `"Person replicate weight 46"'
label var us10a_repwtp47    `"Person replicate weight 47"'
label var us10a_repwtp48    `"Person replicate weight 48"'
label var us10a_repwtp49    `"Person replicate weight 49"'
label var us10a_repwtp50    `"Person replicate weight 50"'
label var us10a_repwtp51    `"Person replicate weight 51"'
label var us10a_repwtp53    `"Person replicate weight 53"'
label var us10a_repwtp54    `"Person replicate weight 54"'
label var us10a_repwtp55    `"Person replicate weight 55"'
label var us10a_repwtp56    `"Person replicate weight 56"'
label var us10a_repwtp57    `"Person replicate weight 57"'
label var us10a_repwtp58    `"Person replicate weight 58"'
label var us10a_repwtp59    `"Person replicate weight 59"'
label var us10a_repwtp60    `"Person replicate weight 60"'
label var us10a_repwtp61    `"Person replicate weight 61"'
label var us10a_repwtp62    `"Person replicate weight 62"'
label var us10a_repwtp63    `"Person replicate weight 63"'
label var us10a_repwtp64    `"Person replicate weight 64"'
label var us10a_repwtp65    `"Person replicate weight 65"'
label var us10a_repwtp66    `"Person replicate weight 66"'
label var us10a_repwtp67    `"Person replicate weight 67"'
label var us10a_repwtp68    `"Person replicate weight 68"'
label var us10a_repwtp69    `"Person replicate weight 69"'
label var us10a_repwtp70    `"Person replicate weight 70"'
label var us10a_repwtp71    `"Person replicate weight 71"'
label var us10a_repwtp72    `"Person replicate weight 72"'
label var us10a_repwtp73    `"Person replicate weight 73"'
label var us10a_repwtp74    `"Person replicate weight 74"'
label var us10a_repwtp75    `"Person replicate weight 75"'
label var us10a_repwtp77    `"Person replicate weight 77"'
label var us10a_repwtp78    `"Person replicate weight 78"'
label var us10a_repwtp79    `"Person replicate weight 79"'
label var us10a_repwtp80    `"Person replicate weight 80"'
label var us10a_repwtp      `"Person replicate weights"'
label var us10a_subfam      `"Subfamily membership"'
label var us10a_sftype      `"Subfamily type"'
label var us10a_sfrelate    `"Relationship within subfamily"'
label var us10a_subfam2     `"Subfamily membership (alt)"'
label var us10a_sftype2     `"Subfamily type (alt)"'
label var us10a_sfrelate2   `"Relationship within subfamily (alt)"'
label var us10a_ftotinc     `"Total family income (US$)"'
label var us10a_ftotinc2    `"Total family income (alt, US$))"'
label var us10a_diffeye     `"Vision difficulty"'
label var us10a_diffhear    `"Hearing difficulty"'
label var us10a_divinyr     `"Divorced in the past year"'
label var us10a_hcovany     `"Any health insurance coverage"'
label var us10a_hinsemp     `"Health insurance through employer/union"'
label var us10a_hinsemp     `"Health insurance through employer/union"'
label var us10a_hinspur     `"Health insurance purchased directly"'
label var us10a_hinstri     `"Health insurance through Tricare"'
label var us10a_hcovpub     `"Public health insurance coverage"'
label var us10a_hinscaid    `"Health insurance through Medicaid"'
label var us10a_hinscare    `"Health insurance through Medicare"'
label var us10a_hinsva      `"Health insurance through VA"'
label var us10a_hinsihs     `"Health insurance through Indian Health Services"'
label var us10a_vetdisab    `"VA service-connected disability rating"'
label var us10a_widinyr     `"Widowed in the past year"'
label var us10a_yrmarr      `"Year married"'
label var us10a_qdifeye     `"Data quality flag for diffeye"'
label var us10a_qdifhear    `"Data quality flag for diffhear"'
label var us10a_qdivinyr    `"Data quality flag for divinyr"'
label var us10a_qhcovany    `"Data quality flag for hcovany"'
label var us10a_qhcovpri    `"Data quality flag for hcovpriv"'
label var us10a_qhinsemp    `"Data quality flag for hinsemp"'
label var us10a_qhinsemp    `"Data quality flag for hinsemp"'
label var us10a_qhinspur    `"Data quality flag for hinspur"'
label var us10a_qhinstri    `"Data quality flag for hinstri"'
label var us10a_qhinscai    `"Data quality flag for hinscaid"'
label var us10a_qhinscar    `"Data quality flag for hinscare"'
label var us10a_qhinsva     `"Data quality flag for hinsva"'
label var us10a_qhinsihs    `"Data quality flag for hinsihs"'
label var us10a_qvetdisb    `"Data quality flag for vetdisab"'
label var us10a_qwidinyr    `"Data quality flag for widinyr"'
label var us10a_qyrmarr     `"Data quality flag for yrlstmar"'
label var us10a_yrnatur     `"Year naturalized"'
label var us10a_gradeatt    `"Grade level attending"'
label var us10a_educ        `"Educational attainment"'
label var us10a_inctot      `"Total personal income (US$)"'
label var us10a_incearn     `"Total personal earned income (US$)"'
label var us10a_trantime    `"Travel time to work last week (minutes)"'
label var us10a_yrimmig     `"Year of immigration"'
label var us10a_vetstat     `"Veteran status"'
label var us10a_ind         `"Industry"'
label var us10a_degfield    `"Field of degree"'
label var us10a_degfield2   `"Field of degree (second)"'
label var us10a_qdegfield   `"Data quality flag for degfield and degfield2"'
label var us10a_qwrklstwk   `"Data quality flag for wrklstwk"'
label var us10a_cbsubfam    `"Subfamily number (original Census Bureau classification)"'
label var us10a_cbsftype    `"Subfamily type (original Census Bureau classification)"'
label var us10a_cbsfrelate  `"Subfamily relationship (original Census Bureau classification)"'
label var us10a_perwt       `"Person weight"'
label var us10a_birthyr     `"Year of birth"'
label var us10a_cbpoverty   `"Poverty status (original Census Bureau calculation)"'
label var us10a_occ         `"Occupation"'
label var us10a_qdifcare    `"Flag for diffcare"'
label var us10a_hiufpgbase  `"Federal poverty guidelines (base)"'
label var us10a_hiufpginc   `"Federal poverty guidelines (increment)"'
label var us10a_hiurule     `"Health insurance unit (hiu) pointer rule"'
label var us10a_hiuid       `"Health insurance unit (hiu) identification"'

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

label define us10a_pern_lbl 00 `"0"'
label define us10a_pern_lbl 01 `"1"', add
label define us10a_pern_lbl 02 `"2"', add
label define us10a_pern_lbl 03 `"3"', add
label define us10a_pern_lbl 04 `"4"', add
label define us10a_pern_lbl 05 `"5"', add
label define us10a_pern_lbl 06 `"6"', add
label define us10a_pern_lbl 07 `"7"', add
label define us10a_pern_lbl 08 `"8"', add
label define us10a_pern_lbl 09 `"9"', add
label define us10a_pern_lbl 10 `"10"', add
label define us10a_pern_lbl 11 `"11"', add
label define us10a_pern_lbl 12 `"12"', add
label define us10a_pern_lbl 13 `"13"', add
label define us10a_pern_lbl 14 `"14"', add
label define us10a_pern_lbl 15 `"15"', add
label define us10a_pern_lbl 16 `"16"', add
label define us10a_pern_lbl 17 `"17"', add
label define us10a_pern_lbl 19 `"19"', add
label define us10a_pern_lbl 20 `"20"', add
label values us10a_pern us10a_pern_lbl

label define us10a_numprec_lbl 00 `"Vacant household"'
label define us10a_numprec_lbl 01 `"1 person record"', add
label define us10a_numprec_lbl 02 `"2"', add
label define us10a_numprec_lbl 03 `"3"', add
label define us10a_numprec_lbl 04 `"4"', add
label define us10a_numprec_lbl 05 `"5"', add
label define us10a_numprec_lbl 06 `"6"', add
label define us10a_numprec_lbl 07 `"7"', add
label define us10a_numprec_lbl 08 `"8"', add
label define us10a_numprec_lbl 09 `"9"', add
label define us10a_numprec_lbl 10 `"10"', add
label define us10a_numprec_lbl 11 `"11"', add
label define us10a_numprec_lbl 12 `"12"', add
label define us10a_numprec_lbl 13 `"13"', add
label define us10a_numprec_lbl 14 `"14"', add
label define us10a_numprec_lbl 15 `"15"', add
label define us10a_numprec_lbl 16 `"16"', add
label define us10a_numprec_lbl 17 `"17"', add
label define us10a_numprec_lbl 19 `"19"', add
label define us10a_numprec_lbl 20 `"20"', add
label values us10a_numprec us10a_numprec_lbl

label define us10a_subsamp_lbl 00 `"First 1% subsample"'
label define us10a_subsamp_lbl 01 `"2nd 1% subsample"', add
label define us10a_subsamp_lbl 02 `"2"', add
label define us10a_subsamp_lbl 03 `"3"', add
label define us10a_subsamp_lbl 04 `"4"', add
label define us10a_subsamp_lbl 05 `"5"', add
label define us10a_subsamp_lbl 06 `"6"', add
label define us10a_subsamp_lbl 07 `"7"', add
label define us10a_subsamp_lbl 08 `"8"', add
label define us10a_subsamp_lbl 09 `"9"', add
label define us10a_subsamp_lbl 10 `"10"', add
label define us10a_subsamp_lbl 11 `"11"', add
label define us10a_subsamp_lbl 12 `"12"', add
label define us10a_subsamp_lbl 13 `"13"', add
label define us10a_subsamp_lbl 14 `"14"', add
label define us10a_subsamp_lbl 15 `"15"', add
label define us10a_subsamp_lbl 16 `"16"', add
label define us10a_subsamp_lbl 17 `"17"', add
label define us10a_subsamp_lbl 18 `"18"', add
label define us10a_subsamp_lbl 19 `"19"', add
label define us10a_subsamp_lbl 20 `"20"', add
label define us10a_subsamp_lbl 21 `"21"', add
label define us10a_subsamp_lbl 22 `"22"', add
label define us10a_subsamp_lbl 23 `"23"', add
label define us10a_subsamp_lbl 24 `"24"', add
label define us10a_subsamp_lbl 25 `"25"', add
label define us10a_subsamp_lbl 26 `"26"', add
label define us10a_subsamp_lbl 27 `"27"', add
label define us10a_subsamp_lbl 28 `"28"', add
label define us10a_subsamp_lbl 29 `"29"', add
label define us10a_subsamp_lbl 30 `"30"', add
label define us10a_subsamp_lbl 31 `"31"', add
label define us10a_subsamp_lbl 32 `"32"', add
label define us10a_subsamp_lbl 33 `"33"', add
label define us10a_subsamp_lbl 34 `"34"', add
label define us10a_subsamp_lbl 35 `"35"', add
label define us10a_subsamp_lbl 36 `"36"', add
label define us10a_subsamp_lbl 37 `"37"', add
label define us10a_subsamp_lbl 38 `"38"', add
label define us10a_subsamp_lbl 39 `"39"', add
label define us10a_subsamp_lbl 40 `"40"', add
label define us10a_subsamp_lbl 41 `"41"', add
label define us10a_subsamp_lbl 42 `"42"', add
label define us10a_subsamp_lbl 43 `"43"', add
label define us10a_subsamp_lbl 44 `"44"', add
label define us10a_subsamp_lbl 45 `"45"', add
label define us10a_subsamp_lbl 46 `"46"', add
label define us10a_subsamp_lbl 47 `"47"', add
label define us10a_subsamp_lbl 48 `"48"', add
label define us10a_subsamp_lbl 49 `"49"', add
label define us10a_subsamp_lbl 50 `"50"', add
label define us10a_subsamp_lbl 51 `"51"', add
label define us10a_subsamp_lbl 52 `"52"', add
label define us10a_subsamp_lbl 53 `"53"', add
label define us10a_subsamp_lbl 54 `"54"', add
label define us10a_subsamp_lbl 55 `"55"', add
label define us10a_subsamp_lbl 56 `"56"', add
label define us10a_subsamp_lbl 57 `"57"', add
label define us10a_subsamp_lbl 58 `"58"', add
label define us10a_subsamp_lbl 59 `"59"', add
label define us10a_subsamp_lbl 60 `"60"', add
label define us10a_subsamp_lbl 61 `"61"', add
label define us10a_subsamp_lbl 62 `"62"', add
label define us10a_subsamp_lbl 63 `"63"', add
label define us10a_subsamp_lbl 64 `"64"', add
label define us10a_subsamp_lbl 65 `"65"', add
label define us10a_subsamp_lbl 66 `"66"', add
label define us10a_subsamp_lbl 67 `"67"', add
label define us10a_subsamp_lbl 68 `"68"', add
label define us10a_subsamp_lbl 69 `"69"', add
label define us10a_subsamp_lbl 70 `"70"', add
label define us10a_subsamp_lbl 71 `"71"', add
label define us10a_subsamp_lbl 72 `"72"', add
label define us10a_subsamp_lbl 73 `"73"', add
label define us10a_subsamp_lbl 74 `"74"', add
label define us10a_subsamp_lbl 75 `"75"', add
label define us10a_subsamp_lbl 76 `"76"', add
label define us10a_subsamp_lbl 77 `"77"', add
label define us10a_subsamp_lbl 78 `"78"', add
label define us10a_subsamp_lbl 79 `"79"', add
label define us10a_subsamp_lbl 80 `"80"', add
label define us10a_subsamp_lbl 81 `"81"', add
label define us10a_subsamp_lbl 82 `"82"', add
label define us10a_subsamp_lbl 83 `"83"', add
label define us10a_subsamp_lbl 84 `"84"', add
label define us10a_subsamp_lbl 85 `"85"', add
label define us10a_subsamp_lbl 86 `"86"', add
label define us10a_subsamp_lbl 87 `"87"', add
label define us10a_subsamp_lbl 88 `"88"', add
label define us10a_subsamp_lbl 89 `"89"', add
label define us10a_subsamp_lbl 90 `"90"', add
label define us10a_subsamp_lbl 91 `"91"', add
label define us10a_subsamp_lbl 92 `"92"', add
label define us10a_subsamp_lbl 93 `"93"', add
label define us10a_subsamp_lbl 94 `"94"', add
label define us10a_subsamp_lbl 95 `"95"', add
label define us10a_subsamp_lbl 96 `"96"', add
label define us10a_subsamp_lbl 97 `"97"', add
label define us10a_subsamp_lbl 98 `"98"', add
label define us10a_subsamp_lbl 99 `"99"', add
label values us10a_subsamp us10a_subsamp_lbl

label define us10a_stateicp_lbl 01 `"Connecticut"'
label define us10a_stateicp_lbl 02 `"Maine"', add
label define us10a_stateicp_lbl 03 `"Massachusetts"', add
label define us10a_stateicp_lbl 04 `"New Hampshire"', add
label define us10a_stateicp_lbl 05 `"Rhode Island"', add
label define us10a_stateicp_lbl 06 `"Vermont"', add
label define us10a_stateicp_lbl 11 `"Delaware"', add
label define us10a_stateicp_lbl 12 `"New Jersey"', add
label define us10a_stateicp_lbl 13 `"New York"', add
label define us10a_stateicp_lbl 14 `"Pennsylvania"', add
label define us10a_stateicp_lbl 21 `"Illinois"', add
label define us10a_stateicp_lbl 22 `"Indiana"', add
label define us10a_stateicp_lbl 23 `"Michigan"', add
label define us10a_stateicp_lbl 24 `"Ohio"', add
label define us10a_stateicp_lbl 25 `"Wisconsin"', add
label define us10a_stateicp_lbl 31 `"Iowa"', add
label define us10a_stateicp_lbl 32 `"Kansas"', add
label define us10a_stateicp_lbl 33 `"Minnesota"', add
label define us10a_stateicp_lbl 34 `"Missouri"', add
label define us10a_stateicp_lbl 35 `"Nebraska"', add
label define us10a_stateicp_lbl 36 `"North Dakota"', add
label define us10a_stateicp_lbl 37 `"South Dakota"', add
label define us10a_stateicp_lbl 40 `"Virginia"', add
label define us10a_stateicp_lbl 41 `"Alabama"', add
label define us10a_stateicp_lbl 42 `"Arkansas"', add
label define us10a_stateicp_lbl 43 `"Florida"', add
label define us10a_stateicp_lbl 44 `"Georgia"', add
label define us10a_stateicp_lbl 45 `"Louisiana"', add
label define us10a_stateicp_lbl 46 `"Mississippi"', add
label define us10a_stateicp_lbl 47 `"North Carolina"', add
label define us10a_stateicp_lbl 48 `"South Carolina"', add
label define us10a_stateicp_lbl 49 `"Texas"', add
label define us10a_stateicp_lbl 51 `"Kentucky"', add
label define us10a_stateicp_lbl 52 `"Maryland"', add
label define us10a_stateicp_lbl 53 `"Oklahoma"', add
label define us10a_stateicp_lbl 54 `"Tennessee"', add
label define us10a_stateicp_lbl 56 `"West Virginia"', add
label define us10a_stateicp_lbl 61 `"Arizona"', add
label define us10a_stateicp_lbl 62 `"Colorado"', add
label define us10a_stateicp_lbl 63 `"Idaho"', add
label define us10a_stateicp_lbl 64 `"Montana"', add
label define us10a_stateicp_lbl 65 `"Nevada"', add
label define us10a_stateicp_lbl 66 `"New Mexico"', add
label define us10a_stateicp_lbl 67 `"Utah"', add
label define us10a_stateicp_lbl 68 `"Wyoming"', add
label define us10a_stateicp_lbl 71 `"California"', add
label define us10a_stateicp_lbl 72 `"Oregon"', add
label define us10a_stateicp_lbl 73 `"Washington"', add
label define us10a_stateicp_lbl 81 `"Alaska"', add
label define us10a_stateicp_lbl 82 `"Hawaii"', add
label define us10a_stateicp_lbl 98 `"District of Columbia"', add
label values us10a_stateicp us10a_stateicp_lbl

label define us10a_statefip_lbl 01 `"Alabama"'
label define us10a_statefip_lbl 02 `"Alaska"', add
label define us10a_statefip_lbl 04 `"Arizona"', add
label define us10a_statefip_lbl 05 `"Arkansas"', add
label define us10a_statefip_lbl 06 `"California"', add
label define us10a_statefip_lbl 08 `"Colorado"', add
label define us10a_statefip_lbl 09 `"Connecticut"', add
label define us10a_statefip_lbl 10 `"Delaware"', add
label define us10a_statefip_lbl 11 `"District of Columbia"', add
label define us10a_statefip_lbl 12 `"Florida"', add
label define us10a_statefip_lbl 13 `"Georgia"', add
label define us10a_statefip_lbl 15 `"Hawaii"', add
label define us10a_statefip_lbl 16 `"Idaho"', add
label define us10a_statefip_lbl 17 `"Illinois"', add
label define us10a_statefip_lbl 18 `"Indiana"', add
label define us10a_statefip_lbl 19 `"Iowa"', add
label define us10a_statefip_lbl 20 `"Kansas"', add
label define us10a_statefip_lbl 21 `"Kentucky"', add
label define us10a_statefip_lbl 22 `"Louisiana"', add
label define us10a_statefip_lbl 23 `"Maine"', add
label define us10a_statefip_lbl 24 `"Maryland"', add
label define us10a_statefip_lbl 25 `"Massachusetts"', add
label define us10a_statefip_lbl 26 `"Michigan"', add
label define us10a_statefip_lbl 27 `"Minnesota"', add
label define us10a_statefip_lbl 28 `"Mississippi"', add
label define us10a_statefip_lbl 29 `"Missouri"', add
label define us10a_statefip_lbl 30 `"Montana"', add
label define us10a_statefip_lbl 31 `"Nebraska"', add
label define us10a_statefip_lbl 32 `"Nevada"', add
label define us10a_statefip_lbl 33 `"New Hampshire"', add
label define us10a_statefip_lbl 34 `"New Jersey"', add
label define us10a_statefip_lbl 35 `"New Mexico"', add
label define us10a_statefip_lbl 36 `"New York"', add
label define us10a_statefip_lbl 37 `"North Carolina"', add
label define us10a_statefip_lbl 38 `"North Dakota"', add
label define us10a_statefip_lbl 39 `"Ohio"', add
label define us10a_statefip_lbl 40 `"Oklahoma"', add
label define us10a_statefip_lbl 41 `"Oregon"', add
label define us10a_statefip_lbl 42 `"Pennsylvania"', add
label define us10a_statefip_lbl 44 `"Rhode Island"', add
label define us10a_statefip_lbl 45 `"South Carolina"', add
label define us10a_statefip_lbl 46 `"South Dakota"', add
label define us10a_statefip_lbl 47 `"Tennessee"', add
label define us10a_statefip_lbl 48 `"Texas"', add
label define us10a_statefip_lbl 49 `"Utah"', add
label define us10a_statefip_lbl 50 `"Vermont"', add
label define us10a_statefip_lbl 51 `"Virginia"', add
label define us10a_statefip_lbl 53 `"Washington"', add
label define us10a_statefip_lbl 54 `"West Virginia"', add
label define us10a_statefip_lbl 55 `"Wisconsin"', add
label define us10a_statefip_lbl 56 `"Wyoming"', add
label values us10a_statefip us10a_statefip_lbl

label define us10a_metro_lbl 0 `"Not identifiable"'
label define us10a_metro_lbl 1 `"Not in metro area"', add
label define us10a_metro_lbl 2 `"Central city"', add
label define us10a_metro_lbl 3 `"Outside central city"', add
label define us10a_metro_lbl 4 `"Central city status unknown"', add
label values us10a_metro us10a_metro_lbl

label define us10a_metarea_lbl 0000 `"NIU (not in universe)"'
label define us10a_metarea_lbl 0040 `"Abilene, TX"', add
label define us10a_metarea_lbl 0080 `"Akron, OH"', add
label define us10a_metarea_lbl 0120 `"Albany, GA"', add
label define us10a_metarea_lbl 0160 `"Albany-Schenectady-Troy, NY"', add
label define us10a_metarea_lbl 0200 `"Albuquerque, NM"', add
label define us10a_metarea_lbl 0220 `"Alexandria, LA"', add
label define us10a_metarea_lbl 0240 `"Allentown-Bethlehem-Easton, PA/NJ"', add
label define us10a_metarea_lbl 0280 `"Altoona, PA"', add
label define us10a_metarea_lbl 0320 `"Amarillo, TX"', add
label define us10a_metarea_lbl 0380 `"Anchorage, AK"', add
label define us10a_metarea_lbl 0440 `"Ann Arbor, MI"', add
label define us10a_metarea_lbl 0450 `"Anniston, AL"', add
label define us10a_metarea_lbl 0460 `"Appleton-Oshkosh-Neenah, WI"', add
label define us10a_metarea_lbl 0480 `"Asheville, NC"', add
label define us10a_metarea_lbl 0500 `"Athens, GA"', add
label define us10a_metarea_lbl 0520 `"Atlanta, GA"', add
label define us10a_metarea_lbl 0560 `"Atlantic City, NJ"', add
label define us10a_metarea_lbl 0580 `"Auburn-Opelika, AL"', add
label define us10a_metarea_lbl 0600 `"Augusta-Aiken, GA-SC"', add
label define us10a_metarea_lbl 0640 `"Austin, TX"', add
label define us10a_metarea_lbl 0680 `"Bakersfield, CA"', add
label define us10a_metarea_lbl 0720 `"Baltimore, MD"', add
label define us10a_metarea_lbl 0740 `"Barnstable-Yarmouth, MA"', add
label define us10a_metarea_lbl 0760 `"Baton Rouge, LA"', add
label define us10a_metarea_lbl 0840 `"Beaumont-Port Arthur-Orange, TX"', add
label define us10a_metarea_lbl 0860 `"Bellingham, WA"', add
label define us10a_metarea_lbl 0870 `"Benton Harbor, MI"', add
label define us10a_metarea_lbl 0880 `"Billings, MT"', add
label define us10a_metarea_lbl 0920 `"Biloxi-Gulfport, MS"', add
label define us10a_metarea_lbl 0960 `"Binghamton, NY"', add
label define us10a_metarea_lbl 1000 `"Birmingham, AL"', add
label define us10a_metarea_lbl 1020 `"Bloomington, IN"', add
label define us10a_metarea_lbl 1040 `"Bloomington-Normal, IL"', add
label define us10a_metarea_lbl 1080 `"Boise City, ID"', add
label define us10a_metarea_lbl 1120 `"Boston, MA"', add
label define us10a_metarea_lbl 1121 `"Lawrence-Haverhill, MA/NH"', add
label define us10a_metarea_lbl 1122 `"Lowell, MA/NH"', add
label define us10a_metarea_lbl 1150 `"Bremerton, WA"', add
label define us10a_metarea_lbl 1160 `"Bridgeport, CT"', add
label define us10a_metarea_lbl 1200 `"Brockton, MA"', add
label define us10a_metarea_lbl 1240 `"Brownsville - Harlingen-San Benito, TX"', add
label define us10a_metarea_lbl 1260 `"Bryan-College Station, TX"', add
label define us10a_metarea_lbl 1280 `"Buffalo-Niagara Falls, NY"', add
label define us10a_metarea_lbl 1320 `"Canton, OH"', add
label define us10a_metarea_lbl 1360 `"Cedar Rapids, IA"', add
label define us10a_metarea_lbl 1400 `"Champaign-Urbana-Rantoul, IL"', add
label define us10a_metarea_lbl 1440 `"Charleston-N.Charleston, SC"', add
label define us10a_metarea_lbl 1520 `"Charlotte-Gastonia-Rock Hill, SC"', add
label define us10a_metarea_lbl 1540 `"Charlottesville, VA"', add
label define us10a_metarea_lbl 1560 `"Chattanooga, TN/GA"', add
label define us10a_metarea_lbl 1600 `"Chicago-Gary-Lake IL"', add
label define us10a_metarea_lbl 1602 `"Gary-Hammond-East Chicago, IN"', add
label define us10a_metarea_lbl 1620 `"Chico, CA"', add
label define us10a_metarea_lbl 1640 `"Cincinnati, OH/KY/IN"', add
label define us10a_metarea_lbl 1660 `"Clarksville- Hopkinsville, TN/KY"', add
label define us10a_metarea_lbl 1680 `"Cleveland, OH"', add
label define us10a_metarea_lbl 1720 `"Colorado Springs, CO"', add
label define us10a_metarea_lbl 1740 `"Columbia, MO"', add
label define us10a_metarea_lbl 1760 `"Columbia, SC"', add
label define us10a_metarea_lbl 1800 `"Columbus, GA/AL"', add
label define us10a_metarea_lbl 1840 `"Columbus, OH"', add
label define us10a_metarea_lbl 1880 `"Corpus Christi, TX"', add
label define us10a_metarea_lbl 1920 `"Dallas-Fort Worth, TX"', add
label define us10a_metarea_lbl 1921 `"Fort Worth-Arlington, TX"', add
label define us10a_metarea_lbl 1930 `"Danbury, CT"', add
label define us10a_metarea_lbl 1950 `"Danville, VA"', add
label define us10a_metarea_lbl 1960 `"Davenport, IA-Rock Island-Moline, IL"', add
label define us10a_metarea_lbl 2000 `"Dayton-Springfield, OH"', add
label define us10a_metarea_lbl 2020 `"Daytona Beach, FL"', add
label define us10a_metarea_lbl 2030 `"Decatur, AL"', add
label define us10a_metarea_lbl 2040 `"Decatur, IL"', add
label define us10a_metarea_lbl 2080 `"Denver-Boulder-Longmont, CO"', add
label define us10a_metarea_lbl 2081 `"Boulder-Longmont, CO"', add
label define us10a_metarea_lbl 2120 `"Des Moines, IA"', add
label define us10a_metarea_lbl 2160 `"Detroit, MI"', add
label define us10a_metarea_lbl 2180 `"Dothan, AL"', add
label define us10a_metarea_lbl 2190 `"Dover, DE"', add
label define us10a_metarea_lbl 2240 `"Duluth-Superior, MN/WI"', add
label define us10a_metarea_lbl 2281 `"Dutchess County, NY"', add
label define us10a_metarea_lbl 2290 `"Eau Claire, WI"', add
label define us10a_metarea_lbl 2310 `"El Paso, TX"', add
label define us10a_metarea_lbl 2320 `"Elkhart-Goshen, IN"', add
label define us10a_metarea_lbl 2360 `"Erie, PA"', add
label define us10a_metarea_lbl 2400 `"Eugene-Springfield, OR"', add
label define us10a_metarea_lbl 2440 `"Evansville, IN/KY"', add
label define us10a_metarea_lbl 2520 `"Fargo-Moorhead, ND/MN"', add
label define us10a_metarea_lbl 2560 `"Fayetteville, NC"', add
label define us10a_metarea_lbl 2580 `"Fayetteville-Springdale, AR"', add
label define us10a_metarea_lbl 2600 `"Fitchburg-Leominster, MA"', add
label define us10a_metarea_lbl 2620 `"Flagstaff, AZ"', add
label define us10a_metarea_lbl 2640 `"Flint, MI"', add
label define us10a_metarea_lbl 2650 `"Florence, AL"', add
label define us10a_metarea_lbl 2670 `"Fort Collins-Loveland, CO"', add
label define us10a_metarea_lbl 2680 `"Fort Lauderdale-Hollywood-Pompano Beach, FL"', add
label define us10a_metarea_lbl 2700 `"Fort Myers-Cape Coral, FL"', add
label define us10a_metarea_lbl 2710 `"Fort Pierce, FL"', add
label define us10a_metarea_lbl 2720 `"Fort Smith, AR/OK"', add
label define us10a_metarea_lbl 2750 `"Fort Walton Beach, FL"', add
label define us10a_metarea_lbl 2760 `"Fort Wayne, IN"', add
label define us10a_metarea_lbl 2840 `"Fresno, CA"', add
label define us10a_metarea_lbl 2880 `"Gadsden, AL"', add
label define us10a_metarea_lbl 2900 `"Gainesville, FL"', add
label define us10a_metarea_lbl 2920 `"Galveston-Texas City, TX"', add
label define us10a_metarea_lbl 2970 `"Glens Falls, NY"', add
label define us10a_metarea_lbl 2980 `"Goldsboro, NC"', add
label define us10a_metarea_lbl 3000 `"Grand Rapids, MI"', add
label define us10a_metarea_lbl 3010 `"Grand Junction, CO"', add
label define us10a_metarea_lbl 3060 `"Greeley, CO"', add
label define us10a_metarea_lbl 3080 `"Green Bay, WI"', add
label define us10a_metarea_lbl 3120 `"Greensboro-Winston Salem-High Point, NC"', add
label define us10a_metarea_lbl 3150 `"Greenville, NC"', add
label define us10a_metarea_lbl 3160 `"Greenville-Spartenburg-Anderson, SC"', add
label define us10a_metarea_lbl 3180 `"Hagerstown, MD"', add
label define us10a_metarea_lbl 3200 `"Hamilton-Middleton, OH"', add
label define us10a_metarea_lbl 3240 `"Harrisburg-Lebanon-Carlisle, PA"', add
label define us10a_metarea_lbl 3280 `"Hartford-Bristol-Middletown-New Britian, CT"', add
label define us10a_metarea_lbl 3290 `"Hickory-Morgantown, NC"', add
label define us10a_metarea_lbl 3300 `"Hattiesburg, MS"', add
label define us10a_metarea_lbl 3320 `"Honolulu, HI"', add
label define us10a_metarea_lbl 3350 `"Houma-Thibodoux, LA"', add
label define us10a_metarea_lbl 3360 `"Houston-Brazoria, TX"', add
label define us10a_metarea_lbl 3361 `"Brazoria, TX"', add
label define us10a_metarea_lbl 3440 `"Huntsville, AL"', add
label define us10a_metarea_lbl 3480 `"Indianapolis, IN"', add
label define us10a_metarea_lbl 3500 `"Iowa City, IA"', add
label define us10a_metarea_lbl 3520 `"Jackson, MI"', add
label define us10a_metarea_lbl 3560 `"Jackson, MS"', add
label define us10a_metarea_lbl 3580 `"Jackson, TN"', add
label define us10a_metarea_lbl 3590 `"Jacksonville, FL"', add
label define us10a_metarea_lbl 3600 `"Jacksonville, NC"', add
label define us10a_metarea_lbl 3610 `"Jamestown-Dunkirk, NY"', add
label define us10a_metarea_lbl 3620 `"Janesville-Beloit, WI"', add
label define us10a_metarea_lbl 3660 `"Johnson City-Kingsport-Bristol, TN/VA"', add
label define us10a_metarea_lbl 3680 `"Johnstown, PA"', add
label define us10a_metarea_lbl 3710 `"Joplin, MO"', add
label define us10a_metarea_lbl 3720 `"Kalamazoo-Portage, MI"', add
label define us10a_metarea_lbl 3740 `"Kankakee, IL"', add
label define us10a_metarea_lbl 3760 `"Kansas City, MO-KS"', add
label define us10a_metarea_lbl 3800 `"Kenosha, WI"', add
label define us10a_metarea_lbl 3810 `"Killeen-Temple, TX"', add
label define us10a_metarea_lbl 3840 `"Knoxville, TN"', add
label define us10a_metarea_lbl 3850 `"Kokomo, IN"', add
label define us10a_metarea_lbl 3870 `"LaCrosse, WI"', add
label define us10a_metarea_lbl 3880 `"Lafayette, LA"', add
label define us10a_metarea_lbl 3920 `"Lafayette-W. Lafayette, IN"', add
label define us10a_metarea_lbl 3960 `"Lake Charles, LA"', add
label define us10a_metarea_lbl 3980 `"Lakeland-Winterhaven, FL"', add
label define us10a_metarea_lbl 4000 `"Lancaster, PA"', add
label define us10a_metarea_lbl 4040 `"Lansing-E. Lansing, MI"', add
label define us10a_metarea_lbl 4080 `"Laredo, TX"', add
label define us10a_metarea_lbl 4100 `"Las Cruces, NM"', add
label define us10a_metarea_lbl 4120 `"Las Vegas, NV"', add
label define us10a_metarea_lbl 4280 `"Lexington-Fayette, KY"', add
label define us10a_metarea_lbl 4320 `"Lima, OH"', add
label define us10a_metarea_lbl 4360 `"Lincoln, NE"', add
label define us10a_metarea_lbl 4400 `"Little Rock-North Little Rock, AR"', add
label define us10a_metarea_lbl 4420 `"Longview-Marshall, TX"', add
label define us10a_metarea_lbl 4480 `"Los Angeles-Long Beach, CA"', add
label define us10a_metarea_lbl 4482 `"Orange County, CA"', add
label define us10a_metarea_lbl 4520 `"Louisville, KY/IN"', add
label define us10a_metarea_lbl 4600 `"Lubbock, TX"', add
label define us10a_metarea_lbl 4640 `"Lynchburg, VA"', add
label define us10a_metarea_lbl 4680 `"Macon-Warner Robins, GA"', add
label define us10a_metarea_lbl 4720 `"Madison, WI"', add
label define us10a_metarea_lbl 4760 `"Manchester, NH"', add
label define us10a_metarea_lbl 4800 `"Mansfield, OH"', add
label define us10a_metarea_lbl 4880 `"McAllen-Edinburg-Pharr-Mission, TX"', add
label define us10a_metarea_lbl 4890 `"Medford, OR"', add
label define us10a_metarea_lbl 4900 `"Melbourne-Titusville-Cocoa-Palm Bay, FL"', add
label define us10a_metarea_lbl 4920 `"Memphis, TN/AR/MS"', add
label define us10a_metarea_lbl 4940 `"Merced, CA"', add
label define us10a_metarea_lbl 5000 `"Miami-Hialeah, FL"', add
label define us10a_metarea_lbl 5080 `"Milwaukee, WI"', add
label define us10a_metarea_lbl 5120 `"Minneapolis-St. Paul, MN"', add
label define us10a_metarea_lbl 5160 `"Mobile, AL"', add
label define us10a_metarea_lbl 5170 `"Modesto, CA"', add
label define us10a_metarea_lbl 5190 `"Monmouth-Ocean, NJ"', add
label define us10a_metarea_lbl 5200 `"Monroe, LA"', add
label define us10a_metarea_lbl 5240 `"Montgomery, AL"', add
label define us10a_metarea_lbl 5280 `"Muncie, IN"', add
label define us10a_metarea_lbl 5330 `"Myrtle Beach, SC"', add
label define us10a_metarea_lbl 5340 `"Naples, FL"', add
label define us10a_metarea_lbl 5350 `"Nashua, NH"', add
label define us10a_metarea_lbl 5360 `"Nashville, TN"', add
label define us10a_metarea_lbl 5400 `"New Bedford, MA"', add
label define us10a_metarea_lbl 5480 `"New Haven-Meriden, CT"', add
label define us10a_metarea_lbl 5560 `"New Orleans, LA"', add
label define us10a_metarea_lbl 5600 `"New York-Northeastern NJ"', add
label define us10a_metarea_lbl 5601 `"Nassau Co., NY"', add
label define us10a_metarea_lbl 5602 `"Bergen-Passaic, NJ"', add
label define us10a_metarea_lbl 5603 `"Jersey City, NJ"', add
label define us10a_metarea_lbl 5604 `"Middlesex-Somerset-Hunterdon, NJ"', add
label define us10a_metarea_lbl 5605 `"Newark, NJ"', add
label define us10a_metarea_lbl 5660 `"Newburgh-Middletown, NY"', add
label define us10a_metarea_lbl 5720 `"Norfolk-VA Beach-Newport News, VA"', add
label define us10a_metarea_lbl 5790 `"Ocala, FL"', add
label define us10a_metarea_lbl 5800 `"Odessa, TX"', add
label define us10a_metarea_lbl 5880 `"Oklahoma City, OK"', add
label define us10a_metarea_lbl 5910 `"Olympia, WA"', add
label define us10a_metarea_lbl 5920 `"Omaha, NE/IA"', add
label define us10a_metarea_lbl 5960 `"Orlando, FL"', add
label define us10a_metarea_lbl 6010 `"Panama City, FL"', add
label define us10a_metarea_lbl 6080 `"Pensacola, FL"', add
label define us10a_metarea_lbl 6120 `"Peoria, IL"', add
label define us10a_metarea_lbl 6160 `"Philadelphia, PA/NJ"', add
label define us10a_metarea_lbl 6200 `"Phoenix, AZ"', add
label define us10a_metarea_lbl 6280 `"Pittsburgh-Beaver Valley, PA"', add
label define us10a_metarea_lbl 6400 `"Portland, ME"', add
label define us10a_metarea_lbl 6440 `"Portland-Vancouver, OR"', add
label define us10a_metarea_lbl 6480 `"Providence-Fall River-Pawtuckett, MA"', add
label define us10a_metarea_lbl 6520 `"Provo-Orem, UT"', add
label define us10a_metarea_lbl 6560 `"Pueblo, CO"', add
label define us10a_metarea_lbl 6580 `"Punta Gorda, FL"', add
label define us10a_metarea_lbl 6600 `"Racine, WI"', add
label define us10a_metarea_lbl 6640 `"Raleigh-Durham, NC"', add
label define us10a_metarea_lbl 6680 `"Reading, PA"', add
label define us10a_metarea_lbl 6690 `"Redding, CA"', add
label define us10a_metarea_lbl 6720 `"Reno, NV"', add
label define us10a_metarea_lbl 6740 `"Richland-Kennewick-Pasco, WA"', add
label define us10a_metarea_lbl 6760 `"Richmond-Petersburg, VA"', add
label define us10a_metarea_lbl 6780 `"Riverside-San Bernardino,CA"', add
label define us10a_metarea_lbl 6800 `"Roanoke, VA"', add
label define us10a_metarea_lbl 6820 `"Rochester, MN"', add
label define us10a_metarea_lbl 6840 `"Rochester, NY"', add
label define us10a_metarea_lbl 6880 `"Rockford, IL"', add
label define us10a_metarea_lbl 6895 `"Rocky Mount, NC"', add
label define us10a_metarea_lbl 6920 `"Sacramento, CA"', add
label define us10a_metarea_lbl 6960 `"Saginaw-Bay City-Midland, MI"', add
label define us10a_metarea_lbl 6980 `"St. Cloud, MN"', add
label define us10a_metarea_lbl 7000 `"St. Joseph, MO"', add
label define us10a_metarea_lbl 7040 `"St. Louis, MO-IL"', add
label define us10a_metarea_lbl 7080 `"Salem, OR"', add
label define us10a_metarea_lbl 7120 `"Salinas-Sea Side-Monterey, CA"', add
label define us10a_metarea_lbl 7160 `"Salt Lake City-Ogden, UT"', add
label define us10a_metarea_lbl 7240 `"San Antonio, TX"', add
label define us10a_metarea_lbl 7320 `"San Diego, CA"', add
label define us10a_metarea_lbl 7360 `"San Francisco-Oakland-Vallejo, CA"', add
label define us10a_metarea_lbl 7361 `"Oakland, CA"', add
label define us10a_metarea_lbl 7362 `"Vallejo-Fairfield-Napa, CA"', add
label define us10a_metarea_lbl 7400 `"San Jose, CA"', add
label define us10a_metarea_lbl 7460 `"San Luis Obispo-Atascad-P Robles, CA"', add
label define us10a_metarea_lbl 7470 `"Santa Barbara-Santa Maria-Lompoc, CA"', add
label define us10a_metarea_lbl 7480 `"Santa Cruz, CA"', add
label define us10a_metarea_lbl 7490 `"Santa Fe, NM"', add
label define us10a_metarea_lbl 7500 `"Santa Rosa-Petaluma, CA"', add
label define us10a_metarea_lbl 7510 `"Sarasota, FL"', add
label define us10a_metarea_lbl 7520 `"Savannah, GA"', add
label define us10a_metarea_lbl 7560 `"Scranton-Wilkes-Barre, PA"', add
label define us10a_metarea_lbl 7600 `"Seattle-Everett, WA"', add
label define us10a_metarea_lbl 7610 `"Sharon, PA"', add
label define us10a_metarea_lbl 7620 `"Sheboygan, WI"', add
label define us10a_metarea_lbl 7680 `"Shreveport, LA"', add
label define us10a_metarea_lbl 7720 `"Sioux City, IA/NE"', add
label define us10a_metarea_lbl 7760 `"Sioux Falls, SD"', add
label define us10a_metarea_lbl 7800 `"South Bend-Mishawaka, IN"', add
label define us10a_metarea_lbl 7840 `"Spokane, WA"', add
label define us10a_metarea_lbl 7880 `"Springfield, IL"', add
label define us10a_metarea_lbl 7920 `"Springfield, MO"', add
label define us10a_metarea_lbl 8000 `"Springfield-Holyoke-Chicopee, MA"', add
label define us10a_metarea_lbl 8040 `"Stamford, CT"', add
label define us10a_metarea_lbl 8050 `"State College, PA"', add
label define us10a_metarea_lbl 8120 `"Stockton, CA"', add
label define us10a_metarea_lbl 8140 `"Sumter, SC"', add
label define us10a_metarea_lbl 8160 `"Syracuse, NY"', add
label define us10a_metarea_lbl 8200 `"Tacoma, WA"', add
label define us10a_metarea_lbl 8240 `"Tallahassee, FL"', add
label define us10a_metarea_lbl 8280 `"Tampa-St. Petersburg-Clearwater, FL"', add
label define us10a_metarea_lbl 8320 `"Terre Haute, IN"', add
label define us10a_metarea_lbl 8400 `"Toledo, OH/MI"', add
label define us10a_metarea_lbl 8440 `"Topeka, KS"', add
label define us10a_metarea_lbl 8480 `"Trenton, NJ"', add
label define us10a_metarea_lbl 8520 `"Tucson, AZ"', add
label define us10a_metarea_lbl 8560 `"Tulsa, OK"', add
label define us10a_metarea_lbl 8600 `"Tuscaloosa, AL"', add
label define us10a_metarea_lbl 8640 `"Tyler, TX"', add
label define us10a_metarea_lbl 8680 `"Utica-Rome, NY"', add
label define us10a_metarea_lbl 8730 `"Ventura-Oxnard-Simi Valley, CA"', add
label define us10a_metarea_lbl 8760 `"Vineland-Milville-Bridgetown, NJ"', add
label define us10a_metarea_lbl 8780 `"Visalia-Tulare -Porterville, CA"', add
label define us10a_metarea_lbl 8800 `"Waco, TX"', add
label define us10a_metarea_lbl 8840 `"Washington, DC/MD/VA"', add
label define us10a_metarea_lbl 8880 `"Waterbury, CT"', add
label define us10a_metarea_lbl 8920 `"Waterloo-Cedar Falls, IA"', add
label define us10a_metarea_lbl 8940 `"Wausau, WI"', add
label define us10a_metarea_lbl 8960 `"West Palm Beach-Boca Raton -Delray Beach, FL"', add
label define us10a_metarea_lbl 9040 `"Wichita, KS"', add
label define us10a_metarea_lbl 9080 `"Wichita Falls, TX"', add
label define us10a_metarea_lbl 9140 `"Williamsport, PA"', add
label define us10a_metarea_lbl 9160 `"Wilmington, DE/NJ/MD"', add
label define us10a_metarea_lbl 9200 `"Wilmington, NC"', add
label define us10a_metarea_lbl 9240 `"Worcester, MA"', add
label define us10a_metarea_lbl 9260 `"Yakima, WA"', add
label define us10a_metarea_lbl 9270 `"Yolo, CA"', add
label define us10a_metarea_lbl 9280 `"York, PA"', add
label define us10a_metarea_lbl 9320 `"Youngstown-Warren, OH-PA"', add
label define us10a_metarea_lbl 9340 `"Yuba City, CA"', add
label define us10a_metarea_lbl 9360 `"Yuma, AZ"', add
label define us10a_metarea_lbl 9999 `"Unknown"', add
label values us10a_metarea us10a_metarea_lbl

label define us10a_city_lbl 0000 `"Not in identifiable city (or size group)"'
label define us10a_city_lbl 0010 `"Akron, OH"', add
label define us10a_city_lbl 0090 `"Alexandria, VA"', add
label define us10a_city_lbl 0130 `"Allentown, PA"', add
label define us10a_city_lbl 0190 `"Anaheim, CA"', add
label define us10a_city_lbl 0210 `"Anchorage, AK"', add
label define us10a_city_lbl 0270 `"Ann Arbor, MI"', add
label define us10a_city_lbl 0310 `"Arlington, VA"', add
label define us10a_city_lbl 0510 `"Bakersfield, CA"', add
label define us10a_city_lbl 0530 `"Baltimore, MD"', add
label define us10a_city_lbl 0590 `"Baton Rouge, LA"', add
label define us10a_city_lbl 0670 `"Beaumont, TX"', add
label define us10a_city_lbl 0680 `"Bellevue, WA"', add
label define us10a_city_lbl 0800 `"Boise, ID"', add
label define us10a_city_lbl 0810 `"Boston, MA"', add
label define us10a_city_lbl 0830 `"Bridgeport, CT"', add
label define us10a_city_lbl 0880 `"Brownsville, TX"', add
label define us10a_city_lbl 0890 `"Buffalo, NY"', add
label define us10a_city_lbl 0920 `"Burbank, CA"', add
label define us10a_city_lbl 0930 `"Cambridge, MA"', add
label define us10a_city_lbl 1000 `"Cape Coral, FL"', add
label define us10a_city_lbl 1090 `"Charlotte, NC"', add
label define us10a_city_lbl 1110 `"Chattanooga, TN"', add
label define us10a_city_lbl 1150 `"Chesapeake, VA"', add
label define us10a_city_lbl 1190 `"Chicago, IL"', add
label define us10a_city_lbl 1290 `"Cincinnati, OH"', add
label define us10a_city_lbl 1330 `"Cleveland, OH"', add
label define us10a_city_lbl 1410 `"Columbia, SC"', add
label define us10a_city_lbl 1430 `"Columbus, GA"', add
label define us10a_city_lbl 1500 `"Corona, CA"', add
label define us10a_city_lbl 1520 `"Corpus Christi, TX"', add
label define us10a_city_lbl 1540 `"Costa Mesa, CA"', add
label define us10a_city_lbl 1670 `"Dayton, OH"', add
label define us10a_city_lbl 1730 `"Des Moines, IA"', add
label define us10a_city_lbl 1750 `"Detroit, MI"', add
label define us10a_city_lbl 1800 `"Downey, CA"', add
label define us10a_city_lbl 1990 `"El Monte, CA"', add
label define us10a_city_lbl 2050 `"Elizabeth, NJ"', add
label define us10a_city_lbl 2090 `"Erie, PA"', add
label define us10a_city_lbl 2170 `"Evansville, IN"', add
label define us10a_city_lbl 2240 `"Fayetteville, NC"', add
label define us10a_city_lbl 2260 `"Fontana, CA"', add
label define us10a_city_lbl 2270 `"Flint, MI"', add
label define us10a_city_lbl 2300 `"Fort Collins, CO"', add
label define us10a_city_lbl 2330 `"Fort Wayne, IN"', add
label define us10a_city_lbl 2370 `"Fresno, CA"', add
label define us10a_city_lbl 2390 `"Fullerton, CA"', add
label define us10a_city_lbl 2430 `"Garden Grove, CA"', add
label define us10a_city_lbl 2470 `"Gary, IN"', add
label define us10a_city_lbl 2490 `"Glendale, CA"', add
label define us10a_city_lbl 2530 `"Grand Rapids, MI"', add
label define us10a_city_lbl 2550 `"Green Bay, WI"', add
label define us10a_city_lbl 2570 `"Greensboro, NC"', add
label define us10a_city_lbl 2650 `"Hampton, VA"', add
label define us10a_city_lbl 2710 `"Hartford, CT"', add
label define us10a_city_lbl 2930 `"Huntington Beach, CA"', add
label define us10a_city_lbl 2950 `"Huntsville, AL"', add
label define us10a_city_lbl 2970 `"Independence, MO"', add
label define us10a_city_lbl 3010 `"Inglewood, CA"', add
label define us10a_city_lbl 3020 `"Irvine, CA"', add
label define us10a_city_lbl 3030 `"Irving, TX"', add
label define us10a_city_lbl 3090 `"Jackson, MS"', add
label define us10a_city_lbl 3150 `"Jersey City, NJ"', add
label define us10a_city_lbl 3260 `"Kansas City, MO"', add
label define us10a_city_lbl 3330 `"Knoxville, TN"', add
label define us10a_city_lbl 3390 `"Lafayette, LA"', add
label define us10a_city_lbl 3440 `"Lancaster, CA"', add
label define us10a_city_lbl 3470 `"Lansing, MI"', add
label define us10a_city_lbl 3590 `"Lexington-Fayette, KY"', add
label define us10a_city_lbl 3650 `"Little Rock, AR"', add
label define us10a_city_lbl 3670 `"Livonia, MI"', add
label define us10a_city_lbl 3690 `"Long Beach, CA"', add
label define us10a_city_lbl 3730 `"Los Angeles, CA"', add
label define us10a_city_lbl 3770 `"Lowell, MA"', add
label define us10a_city_lbl 3870 `"Madison, WI"', add
label define us10a_city_lbl 3910 `"Manchester, NH"', add
label define us10a_city_lbl 3960 `"McAllen, TX"', add
label define us10a_city_lbl 4010 `"Memphis, TN"', add
label define us10a_city_lbl 4130 `"Milwaukee, WI"', add
label define us10a_city_lbl 4150 `"Minneapolis, MN"', add
label define us10a_city_lbl 4170 `"Mobile, AL"', add
label define us10a_city_lbl 4190 `"Modesto, CA"', add
label define us10a_city_lbl 4250 `"Montgomery, AL"', add
label define us10a_city_lbl 4270 `"Moreno Valley, CA"', add
label define us10a_city_lbl 4530 `"New Haven, CT"', add
label define us10a_city_lbl 4610 `"New York, NY"', add
label define us10a_city_lbl 4630 `"Newark, NJ"', add
label define us10a_city_lbl 4750 `"Newport News, VA"', add
label define us10a_city_lbl 4810 `"Norfolk, VA"', add
label define us10a_city_lbl 4820 `"North Las Vegas, NV"', add
label define us10a_city_lbl 4860 `"Norwalk, CA"', add
label define us10a_city_lbl 4990 `"Oklahoma City, OK"', add
label define us10a_city_lbl 5030 `"Ontario, CA"', add
label define us10a_city_lbl 5040 `"Orange, CA"', add
label define us10a_city_lbl 5130 `"Oxnard, CA"', add
label define us10a_city_lbl 5140 `"Palmdale, CA"', add
label define us10a_city_lbl 5150 `"Pasadena, CA"', add
label define us10a_city_lbl 5170 `"Pasadena, TX"', add
label define us10a_city_lbl 5210 `"Paterson, NJ"', add
label define us10a_city_lbl 5270 `"Peoria, IL"', add
label define us10a_city_lbl 5330 `"Philadelphia, PA"', add
label define us10a_city_lbl 5370 `"Pittsburgh, PA"', add
label define us10a_city_lbl 5430 `"Plano, TX"', add
label define us10a_city_lbl 5450 `"Pomona, CA"', add
label define us10a_city_lbl 5650 `"Providence, RI"', add
label define us10a_city_lbl 5660 `"Provo, UT"', add
label define us10a_city_lbl 5750 `"Raleigh, NC"', add
label define us10a_city_lbl 5770 `"Rancho Cucamonga, CA"', add
label define us10a_city_lbl 5810 `"Reno, NV"', add
label define us10a_city_lbl 5870 `"Richmond, VA"', add
label define us10a_city_lbl 5890 `"Riverside, CA"', add
label define us10a_city_lbl 5930 `"Rochester, NY"', add
label define us10a_city_lbl 5970 `"Rockford, IL"', add
label define us10a_city_lbl 6030 `"Sacramento, CA"', add
label define us10a_city_lbl 6090 `"Saint Louis, MO"', add
label define us10a_city_lbl 6110 `"Saint Paul, MN"', add
label define us10a_city_lbl 6190 `"Salinas, CA"', add
label define us10a_city_lbl 6210 `"Salt Lake City, UT"', add
label define us10a_city_lbl 6250 `"San Bernardino, CA"', add
label define us10a_city_lbl 6260 `"San Buenaventura (Ventura), CA"', add
label define us10a_city_lbl 6290 `"San Francisco, CA"', add
label define us10a_city_lbl 6330 `"Santa Ana, CA"', add
label define us10a_city_lbl 6340 `"Santa Clarita, CA"', add
label define us10a_city_lbl 6370 `"Savannah, GA"', add
label define us10a_city_lbl 6430 `"Seattle, WA"', add
label define us10a_city_lbl 6500 `"Simi Valley, CA"', add
label define us10a_city_lbl 6530 `"Sioux Falls, SD"', add
label define us10a_city_lbl 6590 `"South Bend, IN"', add
label define us10a_city_lbl 6630 `"Spokane, WA"', add
label define us10a_city_lbl 6650 `"Springfield, IL"', add
label define us10a_city_lbl 6670 `"Springfield, MA"', add
label define us10a_city_lbl 6690 `"Springfield, MO"', add
label define us10a_city_lbl 6730 `"Stamford, CT"', add
label define us10a_city_lbl 6750 `"Sterling Heights, MI"', add
label define us10a_city_lbl 6790 `"Stockton, CA"', add
label define us10a_city_lbl 6850 `"Syracuse, NY"', add
label define us10a_city_lbl 6870 `"Tacoma, WA"', add
label define us10a_city_lbl 6960 `"Thousand Oaks, CA"', add
label define us10a_city_lbl 6970 `"Toledo, OH"', add
label define us10a_city_lbl 7000 `"Torrance, CA"', add
label define us10a_city_lbl 7070 `"Tulsa, OK"', add
label define us10a_city_lbl 7100 `"Vancouver, WA"', add
label define us10a_city_lbl 7130 `"Virginia Beach, VA"', add
label define us10a_city_lbl 7180 `"Warren, MI"', add
label define us10a_city_lbl 7230 `"Washington, DC"', add
label define us10a_city_lbl 7250 `"Waterbury, CT"', add
label define us10a_city_lbl 7320 `"West Covina, CA"', add
label define us10a_city_lbl 7410 `"Wichita, KS"', add
label define us10a_city_lbl 7530 `"Winston-Salem, NC"', add
label define us10a_city_lbl 7570 `"Worcester, MA"', add
label define us10a_city_lbl 7590 `"Yonkers, NY"', add
label values us10a_city us10a_city_lbl

label define us10a_citypop_lbl 00000 `"NIU (not in universe)"'
label define us10a_citypop_lbl 00967 `"967"', add
label define us10a_citypop_lbl 00977 `"977"', add
label define us10a_citypop_lbl 01004 `"1004"', add
label define us10a_citypop_lbl 01014 `"1014"', add
label define us10a_citypop_lbl 01020 `"1020"', add
label define us10a_citypop_lbl 01032 `"1032"', add
label define us10a_citypop_lbl 01041 `"1041"', add
label define us10a_citypop_lbl 01043 `"1043"', add
label define us10a_citypop_lbl 01049 `"1049"', add
label define us10a_citypop_lbl 01052 `"1052"', add
label define us10a_citypop_lbl 01073 `"1073"', add
label define us10a_citypop_lbl 01077 `"1077"', add
label define us10a_citypop_lbl 01094 `"1094"', add
label define us10a_citypop_lbl 01095 `"1095"', add
label define us10a_citypop_lbl 01098 `"1098"', add
label define us10a_citypop_lbl 01099 `"1099"', add
label define us10a_citypop_lbl 01131 `"1131"', add
label define us10a_citypop_lbl 01132 `"1132"', add
label define us10a_citypop_lbl 01140 `"1140"', add
label define us10a_citypop_lbl 01142 `"1142"', add
label define us10a_citypop_lbl 01143 `"1143"', add
label define us10a_citypop_lbl 01149 `"1149"', add
label define us10a_citypop_lbl 01157 `"1157"', add
label define us10a_citypop_lbl 01165 `"1165"', add
label define us10a_citypop_lbl 01171 `"1171"', add
label define us10a_citypop_lbl 01182 `"1182"', add
label define us10a_citypop_lbl 01193 `"1193"', add
label define us10a_citypop_lbl 01200 `"1200"', add
label define us10a_citypop_lbl 01213 `"1213"', add
label define us10a_citypop_lbl 01232 `"1232"', add
label define us10a_citypop_lbl 01240 `"1240"', add
label define us10a_citypop_lbl 01242 `"1242"', add
label define us10a_citypop_lbl 01245 `"1245"', add
label define us10a_citypop_lbl 01262 `"1262"', add
label define us10a_citypop_lbl 01264 `"1264"', add
label define us10a_citypop_lbl 01279 `"1279"', add
label define us10a_citypop_lbl 01280 `"1280"', add
label define us10a_citypop_lbl 01295 `"1295"', add
label define us10a_citypop_lbl 01329 `"1329"', add
label define us10a_citypop_lbl 01346 `"1346"', add
label define us10a_citypop_lbl 01351 `"1351"', add
label define us10a_citypop_lbl 01370 `"1370"', add
label define us10a_citypop_lbl 01379 `"1379"', add
label define us10a_citypop_lbl 01388 `"1388"', add
label define us10a_citypop_lbl 01407 `"1407"', add
label define us10a_citypop_lbl 01408 `"1408"', add
label define us10a_citypop_lbl 01424 `"1424"', add
label define us10a_citypop_lbl 01441 `"1441"', add
label define us10a_citypop_lbl 01448 `"1448"', add
label define us10a_citypop_lbl 01450 `"1450"', add
label define us10a_citypop_lbl 01487 `"1487"', add
label define us10a_citypop_lbl 01503 `"1503"', add
label define us10a_citypop_lbl 01508 `"1508"', add
label define us10a_citypop_lbl 01512 `"1512"', add
label define us10a_citypop_lbl 01514 `"1514"', add
label define us10a_citypop_lbl 01543 `"1543"', add
label define us10a_citypop_lbl 01551 `"1551"', add
label define us10a_citypop_lbl 01552 `"1552"', add
label define us10a_citypop_lbl 01568 `"1568"', add
label define us10a_citypop_lbl 01589 `"1589"', add
label define us10a_citypop_lbl 01663 `"1663"', add
label define us10a_citypop_lbl 01680 `"1680"', add
label define us10a_citypop_lbl 01681 `"1681"', add
label define us10a_citypop_lbl 01701 `"1701"', add
label define us10a_citypop_lbl 01707 `"1707"', add
label define us10a_citypop_lbl 01724 `"1724"', add
label define us10a_citypop_lbl 01734 `"1734"', add
label define us10a_citypop_lbl 01753 `"1753"', add
label define us10a_citypop_lbl 01755 `"1755"', add
label define us10a_citypop_lbl 01766 `"1766"', add
label define us10a_citypop_lbl 01783 `"1783"', add
label define us10a_citypop_lbl 01789 `"1789"', add
label define us10a_citypop_lbl 01823 `"1823"', add
label define us10a_citypop_lbl 01836 `"1836"', add
label define us10a_citypop_lbl 01844 `"1844"', add
label define us10a_citypop_lbl 01845 `"1845"', add
label define us10a_citypop_lbl 01887 `"1887"', add
label define us10a_citypop_lbl 01900 `"1900"', add
label define us10a_citypop_lbl 01928 `"1928"', add
label define us10a_citypop_lbl 01929 `"1929"', add
label define us10a_citypop_lbl 01931 `"1931"', add
label define us10a_citypop_lbl 01939 `"1939"', add
label define us10a_citypop_lbl 01940 `"1940"', add
label define us10a_citypop_lbl 01944 `"1944"', add
label define us10a_citypop_lbl 01961 `"1961"', add
label define us10a_citypop_lbl 01965 `"1965"', add
label define us10a_citypop_lbl 01970 `"1970"', add
label define us10a_citypop_lbl 01976 `"1976"', add
label define us10a_citypop_lbl 01979 `"1979"', add
label define us10a_citypop_lbl 01981 `"1981"', add
label define us10a_citypop_lbl 01986 `"1986"', add
label define us10a_citypop_lbl 01995 `"1995"', add
label define us10a_citypop_lbl 01998 `"1998"', add
label define us10a_citypop_lbl 02020 `"2020"', add
label define us10a_citypop_lbl 02057 `"2057"', add
label define us10a_citypop_lbl 02081 `"2081"', add
label define us10a_citypop_lbl 02097 `"2097"', add
label define us10a_citypop_lbl 02103 `"2103"', add
label define us10a_citypop_lbl 02206 `"2206"', add
label define us10a_citypop_lbl 02234 `"2234"', add
label define us10a_citypop_lbl 02291 `"2291"', add
label define us10a_citypop_lbl 02296 `"2296"', add
label define us10a_citypop_lbl 02369 `"2369"', add
label define us10a_citypop_lbl 02418 `"2418"', add
label define us10a_citypop_lbl 02486 `"2486"', add
label define us10a_citypop_lbl 02550 `"2550"', add
label define us10a_citypop_lbl 02708 `"2708"', add
label define us10a_citypop_lbl 02735 `"2735"', add
label define us10a_citypop_lbl 02761 `"2761"', add
label define us10a_citypop_lbl 02787 `"2787"', add
label define us10a_citypop_lbl 02814 `"2814"', add
label define us10a_citypop_lbl 02853 `"2853"', add
label define us10a_citypop_lbl 02901 `"2901"', add
label define us10a_citypop_lbl 02938 `"2938"', add
label define us10a_citypop_lbl 02984 `"2984"', add
label define us10a_citypop_lbl 03084 `"3084"', add
label define us10a_citypop_lbl 03128 `"3128"', add
label define us10a_citypop_lbl 03323 `"3323"', add
label define us10a_citypop_lbl 03344 `"3344"', add
label define us10a_citypop_lbl 03440 `"3440"', add
label define us10a_citypop_lbl 03472 `"3472"', add
label define us10a_citypop_lbl 03563 `"3563"', add
label define us10a_citypop_lbl 03577 `"3577"', add
label define us10a_citypop_lbl 03728 `"3728"', add
label define us10a_citypop_lbl 03829 `"3829"', add
label define us10a_citypop_lbl 04356 `"4356"', add
label define us10a_citypop_lbl 04443 `"4443"', add
label define us10a_citypop_lbl 04473 `"4473"', add
label define us10a_citypop_lbl 04538 `"4538"', add
label define us10a_citypop_lbl 04667 `"4667"', add
label define us10a_citypop_lbl 04725 `"4725"', add
label define us10a_citypop_lbl 05377 `"5377"', add
label define us10a_citypop_lbl 05734 `"5734"', add
label define us10a_citypop_lbl 05815 `"5815"', add
label define us10a_citypop_lbl 05825 `"5825"', add
label define us10a_citypop_lbl 05908 `"5908"', add
label define us10a_citypop_lbl 06305 `"6305"', add
label define us10a_citypop_lbl 06314 `"6314"', add
label define us10a_citypop_lbl 06709 `"6709"', add
label define us10a_citypop_lbl 07440 `"7440"', add
label define us10a_citypop_lbl 08711 `"8711"', add
label define us10a_citypop_lbl 14484 `"14484"', add
label define us10a_citypop_lbl 28333 `"28333"', add
label define us10a_citypop_lbl 38494 `"38494"', add
label define us10a_citypop_lbl 82144 `"82144"', add
label values us10a_citypop us10a_citypop_lbl

label define us10a_gq_lbl 0 `"Vacant unit"'
label define us10a_gq_lbl 1 `"Households under 1970 definition"', add
label define us10a_gq_lbl 2 `"Additional households under 1990 definition"', add
label define us10a_gq_lbl 3 `"Institutions"', add
label define us10a_gq_lbl 4 `"Other group quarter"', add
label define us10a_gq_lbl 5 `"Additional households under 2000 definition"', add
label values us10a_gq us10a_gq_lbl

label define us10a_gqtype_lbl 000 `"NIU (not in universe)"'
label define us10a_gqtype_lbl 100 `"Institution"', add
label define us10a_gqtype_lbl 500 `"Non-institutional group quarters"', add
label define us10a_gqtype_lbl 900 `"Other non-Institutional group quarters and unknown"', add
label values us10a_gqtype us10a_gqtype_lbl

label define us10a_farm_lbl 1 `"Non-farm"'
label define us10a_farm_lbl 2 `"Farm"', add
label values us10a_farm us10a_farm_lbl

label define us10a_farmprod_lbl 0 `"NIU (not in universe)"'
label define us10a_farmprod_lbl 1 `"0"', add
label define us10a_farmprod_lbl 2 `"$1-$999"', add
label define us10a_farmprod_lbl 3 `"$1,000-$2,499"', add
label define us10a_farmprod_lbl 4 `"$2,500 - $4,999"', add
label define us10a_farmprod_lbl 5 `"$5,000 - $9,999"', add
label define us10a_farmprod_lbl 6 `"$10,000 or more"', add
label values us10a_farmprod us10a_farmprod_lbl

label define us10a_ownershp_lbl 00 `"NIU (not in universe)"'
label define us10a_ownershp_lbl 12 `"Owned free and clear"', add
label define us10a_ownershp_lbl 13 `"Owned with mortgage or loan"', add
label define us10a_ownershp_lbl 21 `"No cash rent"', add
label define us10a_ownershp_lbl 22 `"With cash rent"', add
label values us10a_ownershp us10a_ownershp_lbl

label define us10a_mortgage_lbl 0 `"NIU (not in universe)"'
label define us10a_mortgage_lbl 1 `"No, owned free and clear"', add
label define us10a_mortgage_lbl 3 `"Yes, mortgaged/ deed of trust or similar debt"', add
label define us10a_mortgage_lbl 4 `"Yes, contract to purchase"', add
label values us10a_mortgage us10a_mortgage_lbl

label define us10a_mortgag2_lbl 0 `"NIU (not in universe)"'
label define us10a_mortgag2_lbl 1 `"No"', add
label define us10a_mortgag2_lbl 3 `"Yes, 2nd mortgage"', add
label define us10a_mortgag2_lbl 4 `"Yes, home equity loan"', add
label define us10a_mortgag2_lbl 5 `"Yes, 2nd mortgage and home equity loan"', add
label values us10a_mortgag2 us10a_mortgag2_lbl

label define us10a_mortamt1_lbl 0000 `"NIU (not in universe)"'
label define us10a_mortamt1_lbl 0004 `"4"', add
label define us10a_mortamt1_lbl 0010 `"10"', add
label define us10a_mortamt1_lbl 0020 `"20"', add
label define us10a_mortamt1_lbl 0030 `"30"', add
label define us10a_mortamt1_lbl 0040 `"40"', add
label define us10a_mortamt1_lbl 0050 `"50"', add
label define us10a_mortamt1_lbl 0060 `"60"', add
label define us10a_mortamt1_lbl 0070 `"70"', add
label define us10a_mortamt1_lbl 0080 `"80"', add
label define us10a_mortamt1_lbl 0090 `"90"', add
label define us10a_mortamt1_lbl 0100 `"100"', add
label define us10a_mortamt1_lbl 0110 `"110"', add
label define us10a_mortamt1_lbl 0120 `"120"', add
label define us10a_mortamt1_lbl 0130 `"130"', add
label define us10a_mortamt1_lbl 0140 `"140"', add
label define us10a_mortamt1_lbl 0150 `"150"', add
label define us10a_mortamt1_lbl 0160 `"160"', add
label define us10a_mortamt1_lbl 0170 `"170"', add
label define us10a_mortamt1_lbl 0180 `"180"', add
label define us10a_mortamt1_lbl 0190 `"190"', add
label define us10a_mortamt1_lbl 0200 `"200"', add
label define us10a_mortamt1_lbl 0210 `"210"', add
label define us10a_mortamt1_lbl 0220 `"220"', add
label define us10a_mortamt1_lbl 0230 `"230"', add
label define us10a_mortamt1_lbl 0240 `"240"', add
label define us10a_mortamt1_lbl 0250 `"250"', add
label define us10a_mortamt1_lbl 0260 `"260"', add
label define us10a_mortamt1_lbl 0270 `"270"', add
label define us10a_mortamt1_lbl 0280 `"280"', add
label define us10a_mortamt1_lbl 0290 `"290"', add
label define us10a_mortamt1_lbl 0300 `"300"', add
label define us10a_mortamt1_lbl 0310 `"310"', add
label define us10a_mortamt1_lbl 0320 `"320"', add
label define us10a_mortamt1_lbl 0330 `"330"', add
label define us10a_mortamt1_lbl 0340 `"340"', add
label define us10a_mortamt1_lbl 0350 `"350"', add
label define us10a_mortamt1_lbl 0360 `"360"', add
label define us10a_mortamt1_lbl 0370 `"370"', add
label define us10a_mortamt1_lbl 0380 `"380"', add
label define us10a_mortamt1_lbl 0390 `"390"', add
label define us10a_mortamt1_lbl 0400 `"400"', add
label define us10a_mortamt1_lbl 0410 `"410"', add
label define us10a_mortamt1_lbl 0420 `"420"', add
label define us10a_mortamt1_lbl 0430 `"430"', add
label define us10a_mortamt1_lbl 0440 `"440"', add
label define us10a_mortamt1_lbl 0450 `"450"', add
label define us10a_mortamt1_lbl 0460 `"460"', add
label define us10a_mortamt1_lbl 0470 `"470"', add
label define us10a_mortamt1_lbl 0480 `"480"', add
label define us10a_mortamt1_lbl 0490 `"490"', add
label define us10a_mortamt1_lbl 0500 `"500"', add
label define us10a_mortamt1_lbl 0510 `"510"', add
label define us10a_mortamt1_lbl 0520 `"520"', add
label define us10a_mortamt1_lbl 0530 `"530"', add
label define us10a_mortamt1_lbl 0540 `"540"', add
label define us10a_mortamt1_lbl 0550 `"550"', add
label define us10a_mortamt1_lbl 0560 `"560"', add
label define us10a_mortamt1_lbl 0570 `"570"', add
label define us10a_mortamt1_lbl 0580 `"580"', add
label define us10a_mortamt1_lbl 0590 `"590"', add
label define us10a_mortamt1_lbl 0600 `"600"', add
label define us10a_mortamt1_lbl 0610 `"610"', add
label define us10a_mortamt1_lbl 0620 `"620"', add
label define us10a_mortamt1_lbl 0630 `"630"', add
label define us10a_mortamt1_lbl 0640 `"640"', add
label define us10a_mortamt1_lbl 0650 `"650"', add
label define us10a_mortamt1_lbl 0660 `"660"', add
label define us10a_mortamt1_lbl 0670 `"670"', add
label define us10a_mortamt1_lbl 0680 `"680"', add
label define us10a_mortamt1_lbl 0690 `"690"', add
label define us10a_mortamt1_lbl 0700 `"700"', add
label define us10a_mortamt1_lbl 0710 `"710"', add
label define us10a_mortamt1_lbl 0720 `"720"', add
label define us10a_mortamt1_lbl 0730 `"730"', add
label define us10a_mortamt1_lbl 0740 `"740"', add
label define us10a_mortamt1_lbl 0750 `"750"', add
label define us10a_mortamt1_lbl 0760 `"760"', add
label define us10a_mortamt1_lbl 0770 `"770"', add
label define us10a_mortamt1_lbl 0780 `"780"', add
label define us10a_mortamt1_lbl 0790 `"790"', add
label define us10a_mortamt1_lbl 0800 `"800"', add
label define us10a_mortamt1_lbl 0810 `"810"', add
label define us10a_mortamt1_lbl 0820 `"820"', add
label define us10a_mortamt1_lbl 0830 `"830"', add
label define us10a_mortamt1_lbl 0840 `"840"', add
label define us10a_mortamt1_lbl 0850 `"850"', add
label define us10a_mortamt1_lbl 0860 `"860"', add
label define us10a_mortamt1_lbl 0870 `"870"', add
label define us10a_mortamt1_lbl 0880 `"880"', add
label define us10a_mortamt1_lbl 0890 `"890"', add
label define us10a_mortamt1_lbl 0900 `"900"', add
label define us10a_mortamt1_lbl 0910 `"910"', add
label define us10a_mortamt1_lbl 0920 `"920"', add
label define us10a_mortamt1_lbl 0930 `"930"', add
label define us10a_mortamt1_lbl 0940 `"940"', add
label define us10a_mortamt1_lbl 0950 `"950"', add
label define us10a_mortamt1_lbl 0960 `"960"', add
label define us10a_mortamt1_lbl 0970 `"970"', add
label define us10a_mortamt1_lbl 0980 `"980"', add
label define us10a_mortamt1_lbl 0990 `"990"', add
label define us10a_mortamt1_lbl 1000 `"1000"', add
label define us10a_mortamt1_lbl 1100 `"1100"', add
label define us10a_mortamt1_lbl 1200 `"1200"', add
label define us10a_mortamt1_lbl 1300 `"1300"', add
label define us10a_mortamt1_lbl 1400 `"1400"', add
label define us10a_mortamt1_lbl 1500 `"1500"', add
label define us10a_mortamt1_lbl 1600 `"1600"', add
label define us10a_mortamt1_lbl 1700 `"1700"', add
label define us10a_mortamt1_lbl 1800 `"1800"', add
label define us10a_mortamt1_lbl 1900 `"1900"', add
label define us10a_mortamt1_lbl 2000 `"2000"', add
label define us10a_mortamt1_lbl 2100 `"2100"', add
label define us10a_mortamt1_lbl 2200 `"2200"', add
label define us10a_mortamt1_lbl 2300 `"2300"', add
label define us10a_mortamt1_lbl 2400 `"2400"', add
label define us10a_mortamt1_lbl 2500 `"2500"', add
label define us10a_mortamt1_lbl 2600 `"2600"', add
label define us10a_mortamt1_lbl 2700 `"2700"', add
label define us10a_mortamt1_lbl 2800 `"2800"', add
label define us10a_mortamt1_lbl 2900 `"2900"', add
label define us10a_mortamt1_lbl 3000 `"3000"', add
label define us10a_mortamt1_lbl 3100 `"3100"', add
label define us10a_mortamt1_lbl 3200 `"3200"', add
label define us10a_mortamt1_lbl 3300 `"3300"', add
label define us10a_mortamt1_lbl 3400 `"3400"', add
label define us10a_mortamt1_lbl 3500 `"3500"', add
label define us10a_mortamt1_lbl 3600 `"3600"', add
label define us10a_mortamt1_lbl 3700 `"3700"', add
label define us10a_mortamt1_lbl 3800 `"3800"', add
label define us10a_mortamt1_lbl 3900 `"3900"', add
label define us10a_mortamt1_lbl 4000 `"4000"', add
label define us10a_mortamt1_lbl 4100 `"4100"', add
label define us10a_mortamt1_lbl 4200 `"4200"', add
label define us10a_mortamt1_lbl 4300 `"4300"', add
label define us10a_mortamt1_lbl 4400 `"4400"', add
label define us10a_mortamt1_lbl 4500 `"4500"', add
label define us10a_mortamt1_lbl 4600 `"4600"', add
label define us10a_mortamt1_lbl 4700 `"4700"', add
label define us10a_mortamt1_lbl 4800 `"4800"', add
label define us10a_mortamt1_lbl 4900 `"4900"', add
label define us10a_mortamt1_lbl 5000 `"5000"', add
label define us10a_mortamt1_lbl 5100 `"5100"', add
label define us10a_mortamt1_lbl 5200 `"5200"', add
label define us10a_mortamt1_lbl 5300 `"5300"', add
label define us10a_mortamt1_lbl 5400 `"5400"', add
label define us10a_mortamt1_lbl 5500 `"5500"', add
label define us10a_mortamt1_lbl 5600 `"5600"', add
label define us10a_mortamt1_lbl 5700 `"5700"', add
label define us10a_mortamt1_lbl 5800 `"5800"', add
label define us10a_mortamt1_lbl 5900 `"5900"', add
label define us10a_mortamt1_lbl 6000 `"6000"', add
label define us10a_mortamt1_lbl 6300 `"6300"', add
label define us10a_mortamt1_lbl 6600 `"6600"', add
label define us10a_mortamt1_lbl 6700 `"6700"', add
label define us10a_mortamt1_lbl 6800 `"6800"', add
label define us10a_mortamt1_lbl 7000 `"7000"', add
label define us10a_mortamt1_lbl 7400 `"7400"', add
label values us10a_mortamt1 us10a_mortamt1_lbl

label define us10a_commuse_lbl 0 `"NIU (not in universe)"'
label define us10a_commuse_lbl 1 `"No commercial use"', add
label define us10a_commuse_lbl 2 `"Yes, used commercially"', add
label values us10a_commuse us10a_commuse_lbl

label define us10a_acrehous_lbl 0 `"NIU (not in universe)"'
label define us10a_acrehous_lbl 1 `"House on less than 10 acres"', add
label define us10a_acrehous_lbl 2 `"House on 10 acres or more"', add
label values us10a_acrehous us10a_acrehous_lbl

label define us10a_taxincl_lbl 0 `"NIU (not in universe)"'
label define us10a_taxincl_lbl 1 `"No"', add
label define us10a_taxincl_lbl 2 `"Yes"', add
label values us10a_taxincl us10a_taxincl_lbl

label define us10a_insincl_lbl 0 `"NIU (not in universe)"'
label define us10a_insincl_lbl 1 `"No"', add
label define us10a_insincl_lbl 2 `"Yes, payment includes insurance premiums"', add
label values us10a_insincl us10a_insincl_lbl

label define us10a_propinsr_lbl 0000 `"NIU (not in universe)"'
label define us10a_propinsr_lbl 0001 `"None"', add
label define us10a_propinsr_lbl 0004 `"4"', add
label define us10a_propinsr_lbl 0010 `"10"', add
label define us10a_propinsr_lbl 0020 `"20"', add
label define us10a_propinsr_lbl 0030 `"30"', add
label define us10a_propinsr_lbl 0040 `"40"', add
label define us10a_propinsr_lbl 0050 `"50"', add
label define us10a_propinsr_lbl 0060 `"60"', add
label define us10a_propinsr_lbl 0070 `"70"', add
label define us10a_propinsr_lbl 0080 `"80"', add
label define us10a_propinsr_lbl 0090 `"90"', add
label define us10a_propinsr_lbl 0100 `"100"', add
label define us10a_propinsr_lbl 0110 `"110"', add
label define us10a_propinsr_lbl 0120 `"120"', add
label define us10a_propinsr_lbl 0130 `"130"', add
label define us10a_propinsr_lbl 0140 `"140"', add
label define us10a_propinsr_lbl 0150 `"150"', add
label define us10a_propinsr_lbl 0160 `"160"', add
label define us10a_propinsr_lbl 0170 `"170"', add
label define us10a_propinsr_lbl 0180 `"180"', add
label define us10a_propinsr_lbl 0190 `"190"', add
label define us10a_propinsr_lbl 0200 `"200"', add
label define us10a_propinsr_lbl 0210 `"210"', add
label define us10a_propinsr_lbl 0220 `"220"', add
label define us10a_propinsr_lbl 0230 `"230"', add
label define us10a_propinsr_lbl 0240 `"240"', add
label define us10a_propinsr_lbl 0250 `"250"', add
label define us10a_propinsr_lbl 0260 `"260"', add
label define us10a_propinsr_lbl 0270 `"270"', add
label define us10a_propinsr_lbl 0280 `"280"', add
label define us10a_propinsr_lbl 0290 `"290"', add
label define us10a_propinsr_lbl 0300 `"300"', add
label define us10a_propinsr_lbl 0310 `"310"', add
label define us10a_propinsr_lbl 0320 `"320"', add
label define us10a_propinsr_lbl 0330 `"330"', add
label define us10a_propinsr_lbl 0340 `"340"', add
label define us10a_propinsr_lbl 0350 `"350"', add
label define us10a_propinsr_lbl 0360 `"360"', add
label define us10a_propinsr_lbl 0370 `"370"', add
label define us10a_propinsr_lbl 0380 `"380"', add
label define us10a_propinsr_lbl 0390 `"390"', add
label define us10a_propinsr_lbl 0400 `"400"', add
label define us10a_propinsr_lbl 0410 `"410"', add
label define us10a_propinsr_lbl 0420 `"420"', add
label define us10a_propinsr_lbl 0430 `"430"', add
label define us10a_propinsr_lbl 0440 `"440"', add
label define us10a_propinsr_lbl 0450 `"450"', add
label define us10a_propinsr_lbl 0460 `"460"', add
label define us10a_propinsr_lbl 0470 `"470"', add
label define us10a_propinsr_lbl 0480 `"480"', add
label define us10a_propinsr_lbl 0490 `"490"', add
label define us10a_propinsr_lbl 0500 `"500"', add
label define us10a_propinsr_lbl 0510 `"510"', add
label define us10a_propinsr_lbl 0520 `"520"', add
label define us10a_propinsr_lbl 0530 `"530"', add
label define us10a_propinsr_lbl 0540 `"540"', add
label define us10a_propinsr_lbl 0550 `"550"', add
label define us10a_propinsr_lbl 0560 `"560"', add
label define us10a_propinsr_lbl 0570 `"570"', add
label define us10a_propinsr_lbl 0580 `"580"', add
label define us10a_propinsr_lbl 0590 `"590"', add
label define us10a_propinsr_lbl 0600 `"600"', add
label define us10a_propinsr_lbl 0610 `"610"', add
label define us10a_propinsr_lbl 0620 `"620"', add
label define us10a_propinsr_lbl 0630 `"630"', add
label define us10a_propinsr_lbl 0640 `"640"', add
label define us10a_propinsr_lbl 0650 `"650"', add
label define us10a_propinsr_lbl 0660 `"660"', add
label define us10a_propinsr_lbl 0670 `"670"', add
label define us10a_propinsr_lbl 0680 `"680"', add
label define us10a_propinsr_lbl 0690 `"690"', add
label define us10a_propinsr_lbl 0700 `"700"', add
label define us10a_propinsr_lbl 0710 `"710"', add
label define us10a_propinsr_lbl 0720 `"720"', add
label define us10a_propinsr_lbl 0730 `"730"', add
label define us10a_propinsr_lbl 0740 `"740"', add
label define us10a_propinsr_lbl 0750 `"750"', add
label define us10a_propinsr_lbl 0760 `"760"', add
label define us10a_propinsr_lbl 0770 `"770"', add
label define us10a_propinsr_lbl 0780 `"780"', add
label define us10a_propinsr_lbl 0790 `"790"', add
label define us10a_propinsr_lbl 0800 `"800"', add
label define us10a_propinsr_lbl 0810 `"810"', add
label define us10a_propinsr_lbl 0820 `"820"', add
label define us10a_propinsr_lbl 0830 `"830"', add
label define us10a_propinsr_lbl 0840 `"840"', add
label define us10a_propinsr_lbl 0850 `"850"', add
label define us10a_propinsr_lbl 0860 `"860"', add
label define us10a_propinsr_lbl 0870 `"870"', add
label define us10a_propinsr_lbl 0880 `"880"', add
label define us10a_propinsr_lbl 0890 `"890"', add
label define us10a_propinsr_lbl 0900 `"900"', add
label define us10a_propinsr_lbl 0910 `"910"', add
label define us10a_propinsr_lbl 0920 `"920"', add
label define us10a_propinsr_lbl 0930 `"930"', add
label define us10a_propinsr_lbl 0940 `"940"', add
label define us10a_propinsr_lbl 0950 `"950"', add
label define us10a_propinsr_lbl 0960 `"960"', add
label define us10a_propinsr_lbl 0970 `"970"', add
label define us10a_propinsr_lbl 0980 `"980"', add
label define us10a_propinsr_lbl 0990 `"990"', add
label define us10a_propinsr_lbl 1000 `"1000"', add
label define us10a_propinsr_lbl 1100 `"1100"', add
label define us10a_propinsr_lbl 1200 `"1200"', add
label define us10a_propinsr_lbl 1300 `"1300"', add
label define us10a_propinsr_lbl 1400 `"1400"', add
label define us10a_propinsr_lbl 1500 `"1500"', add
label define us10a_propinsr_lbl 1600 `"1600"', add
label define us10a_propinsr_lbl 1700 `"1700"', add
label define us10a_propinsr_lbl 1800 `"1800"', add
label define us10a_propinsr_lbl 1900 `"1900"', add
label define us10a_propinsr_lbl 2000 `"2000"', add
label define us10a_propinsr_lbl 2100 `"2100"', add
label define us10a_propinsr_lbl 2200 `"2200"', add
label define us10a_propinsr_lbl 2300 `"2300"', add
label define us10a_propinsr_lbl 2400 `"2400"', add
label define us10a_propinsr_lbl 2500 `"2500"', add
label define us10a_propinsr_lbl 2600 `"2600"', add
label define us10a_propinsr_lbl 2700 `"2700"', add
label define us10a_propinsr_lbl 2800 `"2800"', add
label define us10a_propinsr_lbl 2900 `"2900"', add
label define us10a_propinsr_lbl 3000 `"3000"', add
label define us10a_propinsr_lbl 3100 `"3100"', add
label define us10a_propinsr_lbl 3200 `"3200"', add
label define us10a_propinsr_lbl 3300 `"3300"', add
label define us10a_propinsr_lbl 3400 `"3400"', add
label define us10a_propinsr_lbl 3500 `"3500"', add
label define us10a_propinsr_lbl 3600 `"3600"', add
label define us10a_propinsr_lbl 3700 `"3700"', add
label define us10a_propinsr_lbl 3800 `"3800"', add
label define us10a_propinsr_lbl 3900 `"3900"', add
label define us10a_propinsr_lbl 4000 `"4000"', add
label define us10a_propinsr_lbl 4100 `"4100"', add
label define us10a_propinsr_lbl 4200 `"4200"', add
label define us10a_propinsr_lbl 4300 `"4300"', add
label define us10a_propinsr_lbl 4400 `"4400"', add
label define us10a_propinsr_lbl 4500 `"4500"', add
label define us10a_propinsr_lbl 4600 `"4600"', add
label define us10a_propinsr_lbl 4700 `"4700"', add
label define us10a_propinsr_lbl 4800 `"4800"', add
label define us10a_propinsr_lbl 4900 `"4900"', add
label define us10a_propinsr_lbl 5000 `"5000"', add
label define us10a_propinsr_lbl 5100 `"5100"', add
label define us10a_propinsr_lbl 5200 `"5200"', add
label define us10a_propinsr_lbl 5300 `"5300"', add
label define us10a_propinsr_lbl 5400 `"5400"', add
label define us10a_propinsr_lbl 5500 `"5500"', add
label define us10a_propinsr_lbl 5600 `"5600"', add
label define us10a_propinsr_lbl 5700 `"5700"', add
label define us10a_propinsr_lbl 5800 `"5800"', add
label define us10a_propinsr_lbl 5900 `"5900"', add
label define us10a_propinsr_lbl 6000 `"6000"', add
label define us10a_propinsr_lbl 6100 `"6100"', add
label define us10a_propinsr_lbl 6200 `"6200"', add
label define us10a_propinsr_lbl 6300 `"6300"', add
label define us10a_propinsr_lbl 6400 `"6400"', add
label define us10a_propinsr_lbl 6500 `"6500"', add
label define us10a_propinsr_lbl 6800 `"6800"', add
label define us10a_propinsr_lbl 6900 `"6900"', add
label define us10a_propinsr_lbl 7200 `"7200"', add
label define us10a_propinsr_lbl 8000 `"8000"', add
label define us10a_propinsr_lbl 8400 `"8400"', add
label values us10a_propinsr us10a_propinsr_lbl

label define us10a_proptx99_lbl 00 `"NIU (not in universe)"'
label define us10a_proptx99_lbl 01 `"None"', add
label define us10a_proptx99_lbl 02 `"$1-49"', add
label define us10a_proptx99_lbl 03 `"$50-99"', add
label define us10a_proptx99_lbl 04 `"$100-149"', add
label define us10a_proptx99_lbl 05 `"$150-199"', add
label define us10a_proptx99_lbl 06 `"$200-249"', add
label define us10a_proptx99_lbl 07 `"$250-299"', add
label define us10a_proptx99_lbl 08 `"$300-349"', add
label define us10a_proptx99_lbl 09 `"$350-399"', add
label define us10a_proptx99_lbl 10 `"$400-449"', add
label define us10a_proptx99_lbl 11 `"$450-499"', add
label define us10a_proptx99_lbl 12 `"$500-549"', add
label define us10a_proptx99_lbl 13 `"$550-599"', add
label define us10a_proptx99_lbl 14 `"$600-649"', add
label define us10a_proptx99_lbl 15 `"$650-699"', add
label define us10a_proptx99_lbl 16 `"$700-749"', add
label define us10a_proptx99_lbl 17 `"$750-799"', add
label define us10a_proptx99_lbl 18 `"$800-849"', add
label define us10a_proptx99_lbl 19 `"$850-899"', add
label define us10a_proptx99_lbl 20 `"$900-949"', add
label define us10a_proptx99_lbl 21 `"$950-999"', add
label define us10a_proptx99_lbl 22 `"$1000-1099"', add
label define us10a_proptx99_lbl 23 `"$1100-1199"', add
label define us10a_proptx99_lbl 24 `"$1200-1299"', add
label define us10a_proptx99_lbl 25 `"$1300-1399"', add
label define us10a_proptx99_lbl 26 `"$1400-1499"', add
label define us10a_proptx99_lbl 27 `"$1500-1599"', add
label define us10a_proptx99_lbl 28 `"$1600-1699"', add
label define us10a_proptx99_lbl 29 `"$1700-1799"', add
label define us10a_proptx99_lbl 30 `"$1800-1899"', add
label define us10a_proptx99_lbl 31 `"$1900-1999"', add
label define us10a_proptx99_lbl 32 `"$2000-2099"', add
label define us10a_proptx99_lbl 33 `"$2100-2199"', add
label define us10a_proptx99_lbl 34 `"$2200-2299"', add
label define us10a_proptx99_lbl 35 `"$2300-2399"', add
label define us10a_proptx99_lbl 36 `"$2400-2499"', add
label define us10a_proptx99_lbl 37 `"$2500-2599"', add
label define us10a_proptx99_lbl 38 `"$2600-2699"', add
label define us10a_proptx99_lbl 39 `"$2700-2799"', add
label define us10a_proptx99_lbl 40 `"$2800-2899"', add
label define us10a_proptx99_lbl 41 `"$2900-2999"', add
label define us10a_proptx99_lbl 42 `"$3000-3099"', add
label define us10a_proptx99_lbl 43 `"$3100-3199"', add
label define us10a_proptx99_lbl 44 `"$3200-3299"', add
label define us10a_proptx99_lbl 45 `"$3300-3399"', add
label define us10a_proptx99_lbl 46 `"$3400-3499"', add
label define us10a_proptx99_lbl 47 `"$3500-3599"', add
label define us10a_proptx99_lbl 48 `"$3600-3699"', add
label define us10a_proptx99_lbl 49 `"$3700-3799"', add
label define us10a_proptx99_lbl 50 `"$3800-3899"', add
label define us10a_proptx99_lbl 51 `"$3900-3999"', add
label define us10a_proptx99_lbl 52 `"$4000-4099"', add
label define us10a_proptx99_lbl 53 `"$4100-4199"', add
label define us10a_proptx99_lbl 54 `"$4200-4299"', add
label define us10a_proptx99_lbl 55 `"$4300-4399"', add
label define us10a_proptx99_lbl 56 `"$4400-4499"', add
label define us10a_proptx99_lbl 58 `"$4500-4599"', add
label define us10a_proptx99_lbl 59 `"$4600-4699"', add
label define us10a_proptx99_lbl 60 `"$4700-4799"', add
label define us10a_proptx99_lbl 61 `"$4800-4899"', add
label define us10a_proptx99_lbl 62 `"$4900-4999"', add
label define us10a_proptx99_lbl 63 `"$5000-5499"', add
label define us10a_proptx99_lbl 64 `"$5500-5999"', add
label define us10a_proptx99_lbl 65 `"$6000-6999"', add
label define us10a_proptx99_lbl 66 `"$7000-7999"', add
label define us10a_proptx99_lbl 67 `"$8000-8999"', add
label define us10a_proptx99_lbl 68 `"$9000-9999"', add
label define us10a_proptx99_lbl 69 `"$10,000+"', add
label values us10a_proptx99 us10a_proptx99_lbl

label define us10a_rentgrs_lbl 0000 `"NIU (not in universe)"'
label values us10a_rentgrs us10a_rentgrs_lbl

label define us10a_rentmeal_lbl 0 `"NIU (not in universe)"'
label define us10a_rentmeal_lbl 1 `"No, meals not included"', add
label define us10a_rentmeal_lbl 2 `"Yes"', add
label values us10a_rentmeal us10a_rentmeal_lbl

label define us10a_condofee_lbl 0000 `"NIU (not in universe)"'
label define us10a_condofee_lbl 0004 `"4"', add
label define us10a_condofee_lbl 0010 `"10"', add
label define us10a_condofee_lbl 0020 `"20"', add
label define us10a_condofee_lbl 0030 `"30"', add
label define us10a_condofee_lbl 0040 `"40"', add
label define us10a_condofee_lbl 0050 `"50"', add
label define us10a_condofee_lbl 0060 `"60"', add
label define us10a_condofee_lbl 0070 `"70"', add
label define us10a_condofee_lbl 0080 `"80"', add
label define us10a_condofee_lbl 0090 `"90"', add
label define us10a_condofee_lbl 0100 `"100"', add
label define us10a_condofee_lbl 0110 `"110"', add
label define us10a_condofee_lbl 0120 `"120"', add
label define us10a_condofee_lbl 0130 `"130"', add
label define us10a_condofee_lbl 0140 `"140"', add
label define us10a_condofee_lbl 0150 `"150"', add
label define us10a_condofee_lbl 0160 `"160"', add
label define us10a_condofee_lbl 0170 `"170"', add
label define us10a_condofee_lbl 0180 `"180"', add
label define us10a_condofee_lbl 0190 `"190"', add
label define us10a_condofee_lbl 0200 `"200"', add
label define us10a_condofee_lbl 0210 `"210"', add
label define us10a_condofee_lbl 0220 `"220"', add
label define us10a_condofee_lbl 0230 `"230"', add
label define us10a_condofee_lbl 0240 `"240"', add
label define us10a_condofee_lbl 0250 `"250"', add
label define us10a_condofee_lbl 0260 `"260"', add
label define us10a_condofee_lbl 0270 `"270"', add
label define us10a_condofee_lbl 0280 `"280"', add
label define us10a_condofee_lbl 0290 `"290"', add
label define us10a_condofee_lbl 0300 `"300"', add
label define us10a_condofee_lbl 0310 `"310"', add
label define us10a_condofee_lbl 0320 `"320"', add
label define us10a_condofee_lbl 0330 `"330"', add
label define us10a_condofee_lbl 0340 `"340"', add
label define us10a_condofee_lbl 0350 `"350"', add
label define us10a_condofee_lbl 0360 `"360"', add
label define us10a_condofee_lbl 0370 `"370"', add
label define us10a_condofee_lbl 0380 `"380"', add
label define us10a_condofee_lbl 0390 `"390"', add
label define us10a_condofee_lbl 0400 `"400"', add
label define us10a_condofee_lbl 0410 `"410"', add
label define us10a_condofee_lbl 0420 `"420"', add
label define us10a_condofee_lbl 0430 `"430"', add
label define us10a_condofee_lbl 0440 `"440"', add
label define us10a_condofee_lbl 0450 `"450"', add
label define us10a_condofee_lbl 0460 `"460"', add
label define us10a_condofee_lbl 0470 `"470"', add
label define us10a_condofee_lbl 0480 `"480"', add
label define us10a_condofee_lbl 0490 `"490"', add
label define us10a_condofee_lbl 0500 `"500"', add
label define us10a_condofee_lbl 0510 `"510"', add
label define us10a_condofee_lbl 0520 `"520"', add
label define us10a_condofee_lbl 0530 `"530"', add
label define us10a_condofee_lbl 0540 `"540"', add
label define us10a_condofee_lbl 0550 `"550"', add
label define us10a_condofee_lbl 0560 `"560"', add
label define us10a_condofee_lbl 0570 `"570"', add
label define us10a_condofee_lbl 0580 `"580"', add
label define us10a_condofee_lbl 0590 `"590"', add
label define us10a_condofee_lbl 0600 `"600"', add
label define us10a_condofee_lbl 0610 `"610"', add
label define us10a_condofee_lbl 0620 `"620"', add
label define us10a_condofee_lbl 0630 `"630"', add
label define us10a_condofee_lbl 0640 `"640"', add
label define us10a_condofee_lbl 0650 `"650"', add
label define us10a_condofee_lbl 0660 `"660"', add
label define us10a_condofee_lbl 0670 `"670"', add
label define us10a_condofee_lbl 0680 `"680"', add
label define us10a_condofee_lbl 0690 `"690"', add
label define us10a_condofee_lbl 0700 `"700"', add
label define us10a_condofee_lbl 0710 `"710"', add
label define us10a_condofee_lbl 0720 `"720"', add
label define us10a_condofee_lbl 0730 `"730"', add
label define us10a_condofee_lbl 0740 `"740"', add
label define us10a_condofee_lbl 0750 `"750"', add
label define us10a_condofee_lbl 0760 `"760"', add
label define us10a_condofee_lbl 0770 `"770"', add
label define us10a_condofee_lbl 0780 `"780"', add
label define us10a_condofee_lbl 0790 `"790"', add
label define us10a_condofee_lbl 0800 `"800"', add
label define us10a_condofee_lbl 0810 `"810"', add
label define us10a_condofee_lbl 0820 `"820"', add
label define us10a_condofee_lbl 0830 `"830"', add
label define us10a_condofee_lbl 0840 `"840"', add
label define us10a_condofee_lbl 0850 `"850"', add
label define us10a_condofee_lbl 0860 `"860"', add
label define us10a_condofee_lbl 0870 `"870"', add
label define us10a_condofee_lbl 0880 `"880"', add
label define us10a_condofee_lbl 0890 `"890"', add
label define us10a_condofee_lbl 0900 `"900"', add
label define us10a_condofee_lbl 0910 `"910"', add
label define us10a_condofee_lbl 0920 `"920"', add
label define us10a_condofee_lbl 0930 `"930"', add
label define us10a_condofee_lbl 0940 `"940"', add
label define us10a_condofee_lbl 0950 `"950"', add
label define us10a_condofee_lbl 0960 `"960"', add
label define us10a_condofee_lbl 0970 `"970"', add
label define us10a_condofee_lbl 0980 `"980"', add
label define us10a_condofee_lbl 0990 `"990"', add
label define us10a_condofee_lbl 1000 `"1000"', add
label define us10a_condofee_lbl 1100 `"1100"', add
label define us10a_condofee_lbl 1200 `"1200"', add
label define us10a_condofee_lbl 1300 `"1300"', add
label define us10a_condofee_lbl 1400 `"1400"', add
label define us10a_condofee_lbl 1500 `"1500"', add
label define us10a_condofee_lbl 1600 `"1600"', add
label values us10a_condofee us10a_condofee_lbl

label define us10a_moblhome_lbl 0000 `"0"'
label define us10a_moblhome_lbl 9999 `"NIU (not in universe)"', add
label values us10a_moblhome us10a_moblhome_lbl

label define us10a_costelec_lbl 0000 `"NIU (not in universe)"'
label define us10a_costelec_lbl 0048 `"48"', add
label define us10a_costelec_lbl 0120 `"120"', add
label define us10a_costelec_lbl 0240 `"240"', add
label define us10a_costelec_lbl 0360 `"360"', add
label define us10a_costelec_lbl 0480 `"480"', add
label define us10a_costelec_lbl 0600 `"600"', add
label define us10a_costelec_lbl 0720 `"720"', add
label define us10a_costelec_lbl 0840 `"840"', add
label define us10a_costelec_lbl 0960 `"960"', add
label define us10a_costelec_lbl 1080 `"1080"', add
label define us10a_costelec_lbl 1200 `"1200"', add
label define us10a_costelec_lbl 1320 `"1320"', add
label define us10a_costelec_lbl 1440 `"1440"', add
label define us10a_costelec_lbl 1560 `"1560"', add
label define us10a_costelec_lbl 1680 `"1680"', add
label define us10a_costelec_lbl 1800 `"1800"', add
label define us10a_costelec_lbl 1920 `"1920"', add
label define us10a_costelec_lbl 2040 `"2040"', add
label define us10a_costelec_lbl 2160 `"2160"', add
label define us10a_costelec_lbl 2280 `"2280"', add
label define us10a_costelec_lbl 2400 `"2400"', add
label define us10a_costelec_lbl 2520 `"2520"', add
label define us10a_costelec_lbl 2640 `"2640"', add
label define us10a_costelec_lbl 2760 `"2760"', add
label define us10a_costelec_lbl 2880 `"2880"', add
label define us10a_costelec_lbl 3000 `"3000"', add
label define us10a_costelec_lbl 3120 `"3120"', add
label define us10a_costelec_lbl 3240 `"3240"', add
label define us10a_costelec_lbl 3360 `"3360"', add
label define us10a_costelec_lbl 3480 `"3480"', add
label define us10a_costelec_lbl 3600 `"3600"', add
label define us10a_costelec_lbl 3720 `"3720"', add
label define us10a_costelec_lbl 3840 `"3840"', add
label define us10a_costelec_lbl 3960 `"3960"', add
label define us10a_costelec_lbl 4080 `"4080"', add
label define us10a_costelec_lbl 4200 `"4200"', add
label define us10a_costelec_lbl 4320 `"4320"', add
label define us10a_costelec_lbl 4440 `"4440"', add
label define us10a_costelec_lbl 4560 `"4560"', add
label define us10a_costelec_lbl 4680 `"4680"', add
label define us10a_costelec_lbl 4800 `"4800"', add
label define us10a_costelec_lbl 4920 `"4920"', add
label define us10a_costelec_lbl 5040 `"5040"', add
label define us10a_costelec_lbl 5160 `"5160"', add
label define us10a_costelec_lbl 5280 `"5280"', add
label define us10a_costelec_lbl 5400 `"5400"', add
label define us10a_costelec_lbl 5520 `"5520"', add
label define us10a_costelec_lbl 5640 `"5640"', add
label define us10a_costelec_lbl 5760 `"5760"', add
label define us10a_costelec_lbl 5880 `"5880"', add
label define us10a_costelec_lbl 6000 `"6000"', add
label define us10a_costelec_lbl 6120 `"6120"', add
label define us10a_costelec_lbl 6240 `"6240"', add
label define us10a_costelec_lbl 6360 `"6360"', add
label define us10a_costelec_lbl 6480 `"6480"', add
label define us10a_costelec_lbl 6600 `"6600"', add
label define us10a_costelec_lbl 6720 `"6720"', add
label define us10a_costelec_lbl 6840 `"6840"', add
label define us10a_costelec_lbl 6960 `"6960"', add
label define us10a_costelec_lbl 7080 `"7080"', add
label define us10a_costelec_lbl 7200 `"7200"', add
label define us10a_costelec_lbl 9993 `"No charge or not used"', add
label define us10a_costelec_lbl 9997 `"Electricity included in rent or condo fee"', add
label values us10a_costelec us10a_costelec_lbl

label define us10a_costgas_lbl 0000 `"NIU (not in universe)"'
label define us10a_costgas_lbl 0048 `"48"', add
label define us10a_costgas_lbl 0120 `"120"', add
label define us10a_costgas_lbl 0240 `"240"', add
label define us10a_costgas_lbl 0360 `"360"', add
label define us10a_costgas_lbl 0480 `"480"', add
label define us10a_costgas_lbl 0600 `"600"', add
label define us10a_costgas_lbl 0720 `"720"', add
label define us10a_costgas_lbl 0840 `"840"', add
label define us10a_costgas_lbl 0960 `"960"', add
label define us10a_costgas_lbl 1080 `"1080"', add
label define us10a_costgas_lbl 1200 `"1200"', add
label define us10a_costgas_lbl 1320 `"1320"', add
label define us10a_costgas_lbl 1440 `"1440"', add
label define us10a_costgas_lbl 1560 `"1560"', add
label define us10a_costgas_lbl 1680 `"1680"', add
label define us10a_costgas_lbl 1800 `"1800"', add
label define us10a_costgas_lbl 1920 `"1920"', add
label define us10a_costgas_lbl 2040 `"2040"', add
label define us10a_costgas_lbl 2160 `"2160"', add
label define us10a_costgas_lbl 2280 `"2280"', add
label define us10a_costgas_lbl 2400 `"2400"', add
label define us10a_costgas_lbl 2520 `"2520"', add
label define us10a_costgas_lbl 2640 `"2640"', add
label define us10a_costgas_lbl 2760 `"2760"', add
label define us10a_costgas_lbl 2880 `"2880"', add
label define us10a_costgas_lbl 3000 `"3000"', add
label define us10a_costgas_lbl 3120 `"3120"', add
label define us10a_costgas_lbl 3240 `"3240"', add
label define us10a_costgas_lbl 3360 `"3360"', add
label define us10a_costgas_lbl 3480 `"3480"', add
label define us10a_costgas_lbl 3600 `"3600"', add
label define us10a_costgas_lbl 3720 `"3720"', add
label define us10a_costgas_lbl 3840 `"3840"', add
label define us10a_costgas_lbl 3960 `"3960"', add
label define us10a_costgas_lbl 4080 `"4080"', add
label define us10a_costgas_lbl 4200 `"4200"', add
label define us10a_costgas_lbl 4320 `"4320"', add
label define us10a_costgas_lbl 4440 `"4440"', add
label define us10a_costgas_lbl 4560 `"4560"', add
label define us10a_costgas_lbl 4680 `"4680"', add
label define us10a_costgas_lbl 4800 `"4800"', add
label define us10a_costgas_lbl 4920 `"4920"', add
label define us10a_costgas_lbl 5040 `"5040"', add
label define us10a_costgas_lbl 5160 `"5160"', add
label define us10a_costgas_lbl 5280 `"5280"', add
label define us10a_costgas_lbl 5400 `"5400"', add
label define us10a_costgas_lbl 5520 `"5520"', add
label define us10a_costgas_lbl 5640 `"5640"', add
label define us10a_costgas_lbl 5760 `"5760"', add
label define us10a_costgas_lbl 5880 `"5880"', add
label define us10a_costgas_lbl 6000 `"6000"', add
label define us10a_costgas_lbl 6120 `"6120"', add
label define us10a_costgas_lbl 6240 `"6240"', add
label define us10a_costgas_lbl 6360 `"6360"', add
label define us10a_costgas_lbl 6480 `"6480"', add
label define us10a_costgas_lbl 9992 `"Included in electricity payment"', add
label define us10a_costgas_lbl 9993 `"No charge or not used"', add
label define us10a_costgas_lbl 9997 `"Gas included in rent or condo fee"', add
label values us10a_costgas us10a_costgas_lbl

label define us10a_costwatr_lbl 0000 `"NIU (not in universe)"'
label define us10a_costwatr_lbl 0004 `"4"', add
label define us10a_costwatr_lbl 0010 `"10"', add
label define us10a_costwatr_lbl 0020 `"20"', add
label define us10a_costwatr_lbl 0030 `"30"', add
label define us10a_costwatr_lbl 0040 `"40"', add
label define us10a_costwatr_lbl 0050 `"50"', add
label define us10a_costwatr_lbl 0060 `"60"', add
label define us10a_costwatr_lbl 0070 `"70"', add
label define us10a_costwatr_lbl 0080 `"80"', add
label define us10a_costwatr_lbl 0090 `"90"', add
label define us10a_costwatr_lbl 0100 `"100"', add
label define us10a_costwatr_lbl 0110 `"110"', add
label define us10a_costwatr_lbl 0120 `"120"', add
label define us10a_costwatr_lbl 0130 `"130"', add
label define us10a_costwatr_lbl 0140 `"140"', add
label define us10a_costwatr_lbl 0150 `"150"', add
label define us10a_costwatr_lbl 0160 `"160"', add
label define us10a_costwatr_lbl 0170 `"170"', add
label define us10a_costwatr_lbl 0180 `"180"', add
label define us10a_costwatr_lbl 0190 `"190"', add
label define us10a_costwatr_lbl 0200 `"200"', add
label define us10a_costwatr_lbl 0210 `"210"', add
label define us10a_costwatr_lbl 0220 `"220"', add
label define us10a_costwatr_lbl 0230 `"230"', add
label define us10a_costwatr_lbl 0240 `"240"', add
label define us10a_costwatr_lbl 0250 `"250"', add
label define us10a_costwatr_lbl 0260 `"260"', add
label define us10a_costwatr_lbl 0270 `"270"', add
label define us10a_costwatr_lbl 0280 `"280"', add
label define us10a_costwatr_lbl 0290 `"290"', add
label define us10a_costwatr_lbl 0300 `"300"', add
label define us10a_costwatr_lbl 0310 `"310"', add
label define us10a_costwatr_lbl 0320 `"320"', add
label define us10a_costwatr_lbl 0330 `"330"', add
label define us10a_costwatr_lbl 0340 `"340"', add
label define us10a_costwatr_lbl 0350 `"350"', add
label define us10a_costwatr_lbl 0360 `"360"', add
label define us10a_costwatr_lbl 0370 `"370"', add
label define us10a_costwatr_lbl 0380 `"380"', add
label define us10a_costwatr_lbl 0390 `"390"', add
label define us10a_costwatr_lbl 0400 `"400"', add
label define us10a_costwatr_lbl 0410 `"410"', add
label define us10a_costwatr_lbl 0420 `"420"', add
label define us10a_costwatr_lbl 0430 `"430"', add
label define us10a_costwatr_lbl 0440 `"440"', add
label define us10a_costwatr_lbl 0450 `"450"', add
label define us10a_costwatr_lbl 0460 `"460"', add
label define us10a_costwatr_lbl 0470 `"470"', add
label define us10a_costwatr_lbl 0480 `"480"', add
label define us10a_costwatr_lbl 0490 `"490"', add
label define us10a_costwatr_lbl 0500 `"500"', add
label define us10a_costwatr_lbl 0510 `"510"', add
label define us10a_costwatr_lbl 0520 `"520"', add
label define us10a_costwatr_lbl 0530 `"530"', add
label define us10a_costwatr_lbl 0540 `"540"', add
label define us10a_costwatr_lbl 0550 `"550"', add
label define us10a_costwatr_lbl 0560 `"560"', add
label define us10a_costwatr_lbl 0570 `"570"', add
label define us10a_costwatr_lbl 0580 `"580"', add
label define us10a_costwatr_lbl 0590 `"590"', add
label define us10a_costwatr_lbl 0600 `"600"', add
label define us10a_costwatr_lbl 0610 `"610"', add
label define us10a_costwatr_lbl 0620 `"620"', add
label define us10a_costwatr_lbl 0630 `"630"', add
label define us10a_costwatr_lbl 0640 `"640"', add
label define us10a_costwatr_lbl 0650 `"650"', add
label define us10a_costwatr_lbl 0660 `"660"', add
label define us10a_costwatr_lbl 0670 `"670"', add
label define us10a_costwatr_lbl 0680 `"680"', add
label define us10a_costwatr_lbl 0690 `"690"', add
label define us10a_costwatr_lbl 0700 `"700"', add
label define us10a_costwatr_lbl 0710 `"710"', add
label define us10a_costwatr_lbl 0720 `"720"', add
label define us10a_costwatr_lbl 0730 `"730"', add
label define us10a_costwatr_lbl 0740 `"740"', add
label define us10a_costwatr_lbl 0750 `"750"', add
label define us10a_costwatr_lbl 0760 `"760"', add
label define us10a_costwatr_lbl 0770 `"770"', add
label define us10a_costwatr_lbl 0780 `"780"', add
label define us10a_costwatr_lbl 0790 `"790"', add
label define us10a_costwatr_lbl 0800 `"800"', add
label define us10a_costwatr_lbl 0810 `"810"', add
label define us10a_costwatr_lbl 0820 `"820"', add
label define us10a_costwatr_lbl 0830 `"830"', add
label define us10a_costwatr_lbl 0840 `"840"', add
label define us10a_costwatr_lbl 0850 `"850"', add
label define us10a_costwatr_lbl 0860 `"860"', add
label define us10a_costwatr_lbl 0870 `"870"', add
label define us10a_costwatr_lbl 0880 `"880"', add
label define us10a_costwatr_lbl 0890 `"890"', add
label define us10a_costwatr_lbl 0900 `"900"', add
label define us10a_costwatr_lbl 0910 `"910"', add
label define us10a_costwatr_lbl 0920 `"920"', add
label define us10a_costwatr_lbl 0930 `"930"', add
label define us10a_costwatr_lbl 0940 `"940"', add
label define us10a_costwatr_lbl 0950 `"950"', add
label define us10a_costwatr_lbl 0960 `"960"', add
label define us10a_costwatr_lbl 0970 `"970"', add
label define us10a_costwatr_lbl 0980 `"980"', add
label define us10a_costwatr_lbl 0990 `"990"', add
label define us10a_costwatr_lbl 1000 `"1000"', add
label define us10a_costwatr_lbl 1100 `"1100"', add
label define us10a_costwatr_lbl 1200 `"1200"', add
label define us10a_costwatr_lbl 1300 `"1300"', add
label define us10a_costwatr_lbl 1400 `"1400"', add
label define us10a_costwatr_lbl 1500 `"1500"', add
label define us10a_costwatr_lbl 1600 `"1600"', add
label define us10a_costwatr_lbl 1700 `"1700"', add
label define us10a_costwatr_lbl 1800 `"1800"', add
label define us10a_costwatr_lbl 1900 `"1900"', add
label define us10a_costwatr_lbl 2000 `"2000"', add
label define us10a_costwatr_lbl 2100 `"2100"', add
label define us10a_costwatr_lbl 2200 `"2200"', add
label define us10a_costwatr_lbl 2300 `"2300"', add
label define us10a_costwatr_lbl 2400 `"2400"', add
label define us10a_costwatr_lbl 2500 `"2500"', add
label define us10a_costwatr_lbl 2600 `"2600"', add
label define us10a_costwatr_lbl 2700 `"2700"', add
label define us10a_costwatr_lbl 2800 `"2800"', add
label define us10a_costwatr_lbl 2900 `"2900"', add
label define us10a_costwatr_lbl 3000 `"3000"', add
label define us10a_costwatr_lbl 3100 `"3100"', add
label define us10a_costwatr_lbl 3200 `"3200"', add
label define us10a_costwatr_lbl 3300 `"3300"', add
label define us10a_costwatr_lbl 3400 `"3400"', add
label define us10a_costwatr_lbl 3500 `"3500"', add
label define us10a_costwatr_lbl 3600 `"3600"', add
label define us10a_costwatr_lbl 4200 `"4200"', add
label define us10a_costwatr_lbl 9993 `"No charge or not used"', add
label define us10a_costwatr_lbl 9997 `"Water included in rent or condo fee"', add
label values us10a_costwatr us10a_costwatr_lbl

label define us10a_costfuel_lbl 0000 `"NIU (not in universe)"'
label define us10a_costfuel_lbl 0004 `"4"', add
label define us10a_costfuel_lbl 0010 `"10"', add
label define us10a_costfuel_lbl 0020 `"20"', add
label define us10a_costfuel_lbl 0030 `"30"', add
label define us10a_costfuel_lbl 0040 `"40"', add
label define us10a_costfuel_lbl 0050 `"50"', add
label define us10a_costfuel_lbl 0060 `"60"', add
label define us10a_costfuel_lbl 0070 `"70"', add
label define us10a_costfuel_lbl 0080 `"80"', add
label define us10a_costfuel_lbl 0090 `"90"', add
label define us10a_costfuel_lbl 0100 `"100"', add
label define us10a_costfuel_lbl 0110 `"110"', add
label define us10a_costfuel_lbl 0120 `"120"', add
label define us10a_costfuel_lbl 0130 `"130"', add
label define us10a_costfuel_lbl 0140 `"140"', add
label define us10a_costfuel_lbl 0150 `"150"', add
label define us10a_costfuel_lbl 0160 `"160"', add
label define us10a_costfuel_lbl 0170 `"170"', add
label define us10a_costfuel_lbl 0180 `"180"', add
label define us10a_costfuel_lbl 0190 `"190"', add
label define us10a_costfuel_lbl 0200 `"200"', add
label define us10a_costfuel_lbl 0210 `"210"', add
label define us10a_costfuel_lbl 0220 `"220"', add
label define us10a_costfuel_lbl 0230 `"230"', add
label define us10a_costfuel_lbl 0240 `"240"', add
label define us10a_costfuel_lbl 0250 `"250"', add
label define us10a_costfuel_lbl 0260 `"260"', add
label define us10a_costfuel_lbl 0270 `"270"', add
label define us10a_costfuel_lbl 0280 `"280"', add
label define us10a_costfuel_lbl 0290 `"290"', add
label define us10a_costfuel_lbl 0300 `"300"', add
label define us10a_costfuel_lbl 0310 `"310"', add
label define us10a_costfuel_lbl 0320 `"320"', add
label define us10a_costfuel_lbl 0330 `"330"', add
label define us10a_costfuel_lbl 0340 `"340"', add
label define us10a_costfuel_lbl 0350 `"350"', add
label define us10a_costfuel_lbl 0360 `"360"', add
label define us10a_costfuel_lbl 0370 `"370"', add
label define us10a_costfuel_lbl 0380 `"380"', add
label define us10a_costfuel_lbl 0390 `"390"', add
label define us10a_costfuel_lbl 0400 `"400"', add
label define us10a_costfuel_lbl 0410 `"410"', add
label define us10a_costfuel_lbl 0420 `"420"', add
label define us10a_costfuel_lbl 0430 `"430"', add
label define us10a_costfuel_lbl 0440 `"440"', add
label define us10a_costfuel_lbl 0450 `"450"', add
label define us10a_costfuel_lbl 0460 `"460"', add
label define us10a_costfuel_lbl 0470 `"470"', add
label define us10a_costfuel_lbl 0480 `"480"', add
label define us10a_costfuel_lbl 0490 `"490"', add
label define us10a_costfuel_lbl 0500 `"500"', add
label define us10a_costfuel_lbl 0510 `"510"', add
label define us10a_costfuel_lbl 0520 `"520"', add
label define us10a_costfuel_lbl 0530 `"530"', add
label define us10a_costfuel_lbl 0540 `"540"', add
label define us10a_costfuel_lbl 0550 `"550"', add
label define us10a_costfuel_lbl 0560 `"560"', add
label define us10a_costfuel_lbl 0570 `"570"', add
label define us10a_costfuel_lbl 0580 `"580"', add
label define us10a_costfuel_lbl 0590 `"590"', add
label define us10a_costfuel_lbl 0600 `"600"', add
label define us10a_costfuel_lbl 0610 `"610"', add
label define us10a_costfuel_lbl 0620 `"620"', add
label define us10a_costfuel_lbl 0630 `"630"', add
label define us10a_costfuel_lbl 0640 `"640"', add
label define us10a_costfuel_lbl 0650 `"650"', add
label define us10a_costfuel_lbl 0660 `"660"', add
label define us10a_costfuel_lbl 0670 `"670"', add
label define us10a_costfuel_lbl 0680 `"680"', add
label define us10a_costfuel_lbl 0690 `"690"', add
label define us10a_costfuel_lbl 0700 `"700"', add
label define us10a_costfuel_lbl 0710 `"710"', add
label define us10a_costfuel_lbl 0720 `"720"', add
label define us10a_costfuel_lbl 0730 `"730"', add
label define us10a_costfuel_lbl 0740 `"740"', add
label define us10a_costfuel_lbl 0750 `"750"', add
label define us10a_costfuel_lbl 0760 `"760"', add
label define us10a_costfuel_lbl 0770 `"770"', add
label define us10a_costfuel_lbl 0780 `"780"', add
label define us10a_costfuel_lbl 0790 `"790"', add
label define us10a_costfuel_lbl 0800 `"800"', add
label define us10a_costfuel_lbl 0810 `"810"', add
label define us10a_costfuel_lbl 0820 `"820"', add
label define us10a_costfuel_lbl 0830 `"830"', add
label define us10a_costfuel_lbl 0840 `"840"', add
label define us10a_costfuel_lbl 0850 `"850"', add
label define us10a_costfuel_lbl 0860 `"860"', add
label define us10a_costfuel_lbl 0870 `"870"', add
label define us10a_costfuel_lbl 0880 `"880"', add
label define us10a_costfuel_lbl 0890 `"890"', add
label define us10a_costfuel_lbl 0900 `"900"', add
label define us10a_costfuel_lbl 0910 `"910"', add
label define us10a_costfuel_lbl 0920 `"920"', add
label define us10a_costfuel_lbl 0930 `"930"', add
label define us10a_costfuel_lbl 0940 `"940"', add
label define us10a_costfuel_lbl 0950 `"950"', add
label define us10a_costfuel_lbl 0960 `"960"', add
label define us10a_costfuel_lbl 0970 `"970"', add
label define us10a_costfuel_lbl 0980 `"980"', add
label define us10a_costfuel_lbl 0990 `"990"', add
label define us10a_costfuel_lbl 1000 `"1000"', add
label define us10a_costfuel_lbl 1100 `"1100"', add
label define us10a_costfuel_lbl 1200 `"1200"', add
label define us10a_costfuel_lbl 1300 `"1300"', add
label define us10a_costfuel_lbl 1400 `"1400"', add
label define us10a_costfuel_lbl 1500 `"1500"', add
label define us10a_costfuel_lbl 1600 `"1600"', add
label define us10a_costfuel_lbl 1700 `"1700"', add
label define us10a_costfuel_lbl 1800 `"1800"', add
label define us10a_costfuel_lbl 1900 `"1900"', add
label define us10a_costfuel_lbl 2000 `"2000"', add
label define us10a_costfuel_lbl 2100 `"2100"', add
label define us10a_costfuel_lbl 2200 `"2200"', add
label define us10a_costfuel_lbl 2300 `"2300"', add
label define us10a_costfuel_lbl 2400 `"2400"', add
label define us10a_costfuel_lbl 2500 `"2500"', add
label define us10a_costfuel_lbl 2600 `"2600"', add
label define us10a_costfuel_lbl 2700 `"2700"', add
label define us10a_costfuel_lbl 2800 `"2800"', add
label define us10a_costfuel_lbl 2900 `"2900"', add
label define us10a_costfuel_lbl 3000 `"3000"', add
label define us10a_costfuel_lbl 3100 `"3100"', add
label define us10a_costfuel_lbl 3200 `"3200"', add
label define us10a_costfuel_lbl 3300 `"3300"', add
label define us10a_costfuel_lbl 3400 `"3400"', add
label define us10a_costfuel_lbl 3500 `"3500"', add
label define us10a_costfuel_lbl 3600 `"3600"', add
label define us10a_costfuel_lbl 3700 `"3700"', add
label define us10a_costfuel_lbl 3800 `"3800"', add
label define us10a_costfuel_lbl 3900 `"3900"', add
label define us10a_costfuel_lbl 4000 `"4000"', add
label define us10a_costfuel_lbl 4100 `"4100"', add
label define us10a_costfuel_lbl 4200 `"4200"', add
label define us10a_costfuel_lbl 4300 `"4300"', add
label define us10a_costfuel_lbl 4400 `"4400"', add
label define us10a_costfuel_lbl 4500 `"4500"', add
label define us10a_costfuel_lbl 4600 `"4600"', add
label define us10a_costfuel_lbl 4700 `"4700"', add
label define us10a_costfuel_lbl 4800 `"4800"', add
label define us10a_costfuel_lbl 4900 `"4900"', add
label define us10a_costfuel_lbl 5000 `"5000"', add
label define us10a_costfuel_lbl 5100 `"5100"', add
label define us10a_costfuel_lbl 5200 `"5200"', add
label define us10a_costfuel_lbl 5300 `"5300"', add
label define us10a_costfuel_lbl 5400 `"5400"', add
label define us10a_costfuel_lbl 5500 `"5500"', add
label define us10a_costfuel_lbl 5600 `"5600"', add
label define us10a_costfuel_lbl 5700 `"5700"', add
label define us10a_costfuel_lbl 5900 `"5900"', add
label define us10a_costfuel_lbl 6300 `"6300"', add
label define us10a_costfuel_lbl 6400 `"6400"', add
label define us10a_costfuel_lbl 9993 `"No charge or not used"', add
label define us10a_costfuel_lbl 9997 `"Fuel included in rent or condo fee"', add
label values us10a_costfuel us10a_costfuel_lbl

label define us10a_vacancy_lbl 0 `"NIU (not in universe)"'
label define us10a_vacancy_lbl 1 `"For rent"', add
label define us10a_vacancy_lbl 2 `"For sale only"', add
label define us10a_vacancy_lbl 3 `"Rented or sold but not (yet) occupied"', add
label define us10a_vacancy_lbl 4 `"For seasonal, recreational or other occasional use"', add
label define us10a_vacancy_lbl 7 `"For migratory workers"', add
label define us10a_vacancy_lbl 9 `"Other vacant"', add
label values us10a_vacancy us10a_vacancy_lbl

label define us10a_kitchen_lbl 0 `"NIU (not in universe)"'
label define us10a_kitchen_lbl 1 `"No"', add
label define us10a_kitchen_lbl 4 `"Yes (shared or exclusive use)"', add
label values us10a_kitchen us10a_kitchen_lbl

label define us10a_hotwater_lbl 0 `"NIU (not in universe)"'
label define us10a_hotwater_lbl 3 `"No piped water or cold piped water only"', add
label define us10a_hotwater_lbl 4 `"Hot and cold piped water"', add
label values us10a_hotwater us10a_hotwater_lbl

label define us10a_shower_lbl 0 `"NIU (not in universe)"'
label define us10a_shower_lbl 1 `"No, no bathtub or shower"', add
label define us10a_shower_lbl 4 `"Yes (exclusive or shared use)"', add
label values us10a_shower us10a_shower_lbl

label define us10a_toilet_lbl 0 `"NIU (not in universe)"'
label define us10a_toilet_lbl 1 `"No, no indoor flush toilet"', add
label define us10a_toilet_lbl 4 `"Yes, shared or exclusive use"', add
label values us10a_toilet us10a_toilet_lbl

label define us10a_unitsstr_lbl 00 `"NIU (not in universe)"'
label define us10a_unitsstr_lbl 01 `"Mobile home or trailer"', add
label define us10a_unitsstr_lbl 02 `"Boat, tent, van, other"', add
label define us10a_unitsstr_lbl 03 `"1-family house, detached"', add
label define us10a_unitsstr_lbl 04 `"1-family house, attached"', add
label define us10a_unitsstr_lbl 05 `"2-family building"', add
label define us10a_unitsstr_lbl 06 `"3-4 family building"', add
label define us10a_unitsstr_lbl 07 `"5-9 family building"', add
label define us10a_unitsstr_lbl 08 `"10-19 family building"', add
label define us10a_unitsstr_lbl 09 `"20-49 family building"', add
label define us10a_unitsstr_lbl 10 `"50+ family building"', add
label values us10a_unitsstr us10a_unitsstr_lbl

label define us10a_phone_lbl 0 `"NIU (not in universe)"'
label define us10a_phone_lbl 1 `"No, no phone available"', add
label define us10a_phone_lbl 2 `"Yes, phone available"', add
label values us10a_phone us10a_phone_lbl

label define us10a_mortamt2_lbl 0000 `"NIU (not in universe)"'
label define us10a_mortamt2_lbl 0004 `"4"', add
label define us10a_mortamt2_lbl 0010 `"10"', add
label define us10a_mortamt2_lbl 0020 `"20"', add
label define us10a_mortamt2_lbl 0030 `"30"', add
label define us10a_mortamt2_lbl 0040 `"40"', add
label define us10a_mortamt2_lbl 0050 `"50"', add
label define us10a_mortamt2_lbl 0060 `"60"', add
label define us10a_mortamt2_lbl 0070 `"70"', add
label define us10a_mortamt2_lbl 0080 `"80"', add
label define us10a_mortamt2_lbl 0090 `"90"', add
label define us10a_mortamt2_lbl 0100 `"100"', add
label define us10a_mortamt2_lbl 0110 `"110"', add
label define us10a_mortamt2_lbl 0120 `"120"', add
label define us10a_mortamt2_lbl 0130 `"130"', add
label define us10a_mortamt2_lbl 0140 `"140"', add
label define us10a_mortamt2_lbl 0150 `"150"', add
label define us10a_mortamt2_lbl 0160 `"160"', add
label define us10a_mortamt2_lbl 0170 `"170"', add
label define us10a_mortamt2_lbl 0180 `"180"', add
label define us10a_mortamt2_lbl 0190 `"190"', add
label define us10a_mortamt2_lbl 0200 `"200"', add
label define us10a_mortamt2_lbl 0210 `"210"', add
label define us10a_mortamt2_lbl 0220 `"220"', add
label define us10a_mortamt2_lbl 0230 `"230"', add
label define us10a_mortamt2_lbl 0240 `"240"', add
label define us10a_mortamt2_lbl 0250 `"250"', add
label define us10a_mortamt2_lbl 0260 `"260"', add
label define us10a_mortamt2_lbl 0270 `"270"', add
label define us10a_mortamt2_lbl 0280 `"280"', add
label define us10a_mortamt2_lbl 0290 `"290"', add
label define us10a_mortamt2_lbl 0300 `"300"', add
label define us10a_mortamt2_lbl 0310 `"310"', add
label define us10a_mortamt2_lbl 0320 `"320"', add
label define us10a_mortamt2_lbl 0330 `"330"', add
label define us10a_mortamt2_lbl 0340 `"340"', add
label define us10a_mortamt2_lbl 0350 `"350"', add
label define us10a_mortamt2_lbl 0360 `"360"', add
label define us10a_mortamt2_lbl 0370 `"370"', add
label define us10a_mortamt2_lbl 0380 `"380"', add
label define us10a_mortamt2_lbl 0390 `"390"', add
label define us10a_mortamt2_lbl 0400 `"400"', add
label define us10a_mortamt2_lbl 0410 `"410"', add
label define us10a_mortamt2_lbl 0420 `"420"', add
label define us10a_mortamt2_lbl 0430 `"430"', add
label define us10a_mortamt2_lbl 0440 `"440"', add
label define us10a_mortamt2_lbl 0450 `"450"', add
label define us10a_mortamt2_lbl 0460 `"460"', add
label define us10a_mortamt2_lbl 0470 `"470"', add
label define us10a_mortamt2_lbl 0480 `"480"', add
label define us10a_mortamt2_lbl 0490 `"490"', add
label define us10a_mortamt2_lbl 0500 `"500"', add
label define us10a_mortamt2_lbl 0510 `"510"', add
label define us10a_mortamt2_lbl 0520 `"520"', add
label define us10a_mortamt2_lbl 0530 `"530"', add
label define us10a_mortamt2_lbl 0540 `"540"', add
label define us10a_mortamt2_lbl 0550 `"550"', add
label define us10a_mortamt2_lbl 0560 `"560"', add
label define us10a_mortamt2_lbl 0570 `"570"', add
label define us10a_mortamt2_lbl 0580 `"580"', add
label define us10a_mortamt2_lbl 0590 `"590"', add
label define us10a_mortamt2_lbl 0600 `"600"', add
label define us10a_mortamt2_lbl 0610 `"610"', add
label define us10a_mortamt2_lbl 0620 `"620"', add
label define us10a_mortamt2_lbl 0630 `"630"', add
label define us10a_mortamt2_lbl 0640 `"640"', add
label define us10a_mortamt2_lbl 0650 `"650"', add
label define us10a_mortamt2_lbl 0660 `"660"', add
label define us10a_mortamt2_lbl 0670 `"670"', add
label define us10a_mortamt2_lbl 0680 `"680"', add
label define us10a_mortamt2_lbl 0690 `"690"', add
label define us10a_mortamt2_lbl 0700 `"700"', add
label define us10a_mortamt2_lbl 0710 `"710"', add
label define us10a_mortamt2_lbl 0720 `"720"', add
label define us10a_mortamt2_lbl 0730 `"730"', add
label define us10a_mortamt2_lbl 0740 `"740"', add
label define us10a_mortamt2_lbl 0750 `"750"', add
label define us10a_mortamt2_lbl 0760 `"760"', add
label define us10a_mortamt2_lbl 0770 `"770"', add
label define us10a_mortamt2_lbl 0780 `"780"', add
label define us10a_mortamt2_lbl 0790 `"790"', add
label define us10a_mortamt2_lbl 0800 `"800"', add
label define us10a_mortamt2_lbl 0810 `"810"', add
label define us10a_mortamt2_lbl 0820 `"820"', add
label define us10a_mortamt2_lbl 0830 `"830"', add
label define us10a_mortamt2_lbl 0840 `"840"', add
label define us10a_mortamt2_lbl 0850 `"850"', add
label define us10a_mortamt2_lbl 0860 `"860"', add
label define us10a_mortamt2_lbl 0870 `"870"', add
label define us10a_mortamt2_lbl 0880 `"880"', add
label define us10a_mortamt2_lbl 0890 `"890"', add
label define us10a_mortamt2_lbl 0900 `"900"', add
label define us10a_mortamt2_lbl 0910 `"910"', add
label define us10a_mortamt2_lbl 0920 `"920"', add
label define us10a_mortamt2_lbl 0930 `"930"', add
label define us10a_mortamt2_lbl 0940 `"940"', add
label define us10a_mortamt2_lbl 0950 `"950"', add
label define us10a_mortamt2_lbl 0960 `"960"', add
label define us10a_mortamt2_lbl 0970 `"970"', add
label define us10a_mortamt2_lbl 0980 `"980"', add
label define us10a_mortamt2_lbl 0990 `"990"', add
label define us10a_mortamt2_lbl 1000 `"1000"', add
label define us10a_mortamt2_lbl 1100 `"1100"', add
label define us10a_mortamt2_lbl 1200 `"1200"', add
label define us10a_mortamt2_lbl 1300 `"1300"', add
label define us10a_mortamt2_lbl 1400 `"1400"', add
label define us10a_mortamt2_lbl 1500 `"1500"', add
label define us10a_mortamt2_lbl 1600 `"1600"', add
label define us10a_mortamt2_lbl 1700 `"1700"', add
label define us10a_mortamt2_lbl 1800 `"1800"', add
label define us10a_mortamt2_lbl 1900 `"1900"', add
label define us10a_mortamt2_lbl 2000 `"2000"', add
label define us10a_mortamt2_lbl 2100 `"2100"', add
label define us10a_mortamt2_lbl 2200 `"2200"', add
label define us10a_mortamt2_lbl 2300 `"2300"', add
label define us10a_mortamt2_lbl 2400 `"2400"', add
label define us10a_mortamt2_lbl 2600 `"2600"', add
label define us10a_mortamt2_lbl 2900 `"2900"', add
label define us10a_mortamt2_lbl 3000 `"3000"', add
label define us10a_mortamt2_lbl 3600 `"3600"', add
label values us10a_mortamt2 us10a_mortamt2_lbl

label define us10a_lingisol_lbl 0 `"NIU (not in universe)"'
label define us10a_lingisol_lbl 1 `"Not linguistically isolated"', add
label define us10a_lingisol_lbl 2 `"Linguistically isolated"', add
label values us10a_lingisol us10a_lingisol_lbl

label define us10a_fuelheat_lbl 0 `"NIU (not in universe)"'
label define us10a_fuelheat_lbl 1 `"No fuel used"', add
label define us10a_fuelheat_lbl 2 `"Utility gas from underground pipes serving neighborhood"', add
label define us10a_fuelheat_lbl 3 `"Bottled, tank, or liquefied petroleum gas"', add
label define us10a_fuelheat_lbl 4 `"Electricity"', add
label define us10a_fuelheat_lbl 5 `"Fuel oil, kerosene, other liquid fuels"', add
label define us10a_fuelheat_lbl 6 `"Coal or coke"', add
label define us10a_fuelheat_lbl 7 `"Wood"', add
label define us10a_fuelheat_lbl 8 `"Solar energy"', add
label define us10a_fuelheat_lbl 9 `"Other"', add
label values us10a_fuelheat us10a_fuelheat_lbl

label define us10a_vehicles_lbl 0 `"0 available"'
label define us10a_vehicles_lbl 1 `"1"', add
label define us10a_vehicles_lbl 2 `"2"', add
label define us10a_vehicles_lbl 3 `"3"', add
label define us10a_vehicles_lbl 4 `"4"', add
label define us10a_vehicles_lbl 5 `"5"', add
label define us10a_vehicles_lbl 6 `"6"', add
label define us10a_vehicles_lbl 9 `"NIU (not in universe)"', add
label values us10a_vehicles us10a_vehicles_lbl

label define us10a_nfams_lbl 00 `"NIU (not in universe)"'
label define us10a_nfams_lbl 01 `"1 family or N/A"', add
label define us10a_nfams_lbl 02 `"2 families"', add
label define us10a_nfams_lbl 03 `"3"', add
label define us10a_nfams_lbl 04 `"4"', add
label define us10a_nfams_lbl 05 `"5"', add
label define us10a_nfams_lbl 06 `"6"', add
label define us10a_nfams_lbl 07 `"7"', add
label define us10a_nfams_lbl 08 `"8"', add
label define us10a_nfams_lbl 09 `"9"', add
label define us10a_nfams_lbl 10 `"10"', add
label define us10a_nfams_lbl 11 `"11"', add
label define us10a_nfams_lbl 12 `"12"', add
label define us10a_nfams_lbl 13 `"13"', add
label define us10a_nfams_lbl 17 `"17"', add
label values us10a_nfams us10a_nfams_lbl

label define us10a_ncouples_lbl 0 `"0 couples or N/A"'
label define us10a_ncouples_lbl 1 `"1"', add
label define us10a_ncouples_lbl 2 `"2"', add
label define us10a_ncouples_lbl 3 `"3"', add
label define us10a_ncouples_lbl 4 `"4"', add
label define us10a_ncouples_lbl 5 `"5"', add
label values us10a_ncouples us10a_ncouples_lbl

label define us10a_nmothers_lbl 0 `"0 mothers or N/A"'
label define us10a_nmothers_lbl 1 `"1"', add
label define us10a_nmothers_lbl 2 `"2"', add
label define us10a_nmothers_lbl 3 `"3"', add
label define us10a_nmothers_lbl 4 `"4"', add
label values us10a_nmothers us10a_nmothers_lbl

label define us10a_nfathers_lbl 0 `"0 fathers or N/A"'
label define us10a_nfathers_lbl 1 `"1"', add
label define us10a_nfathers_lbl 2 `"2"', add
label define us10a_nfathers_lbl 3 `"3"', add
label define us10a_nfathers_lbl 4 `"4"', add
label values us10a_nfathers us10a_nfathers_lbl

label define us10a_qacrehou_lbl 0 `"Not allocated or N/A"'
label define us10a_qacrehou_lbl 4 `"Allocated, hot deck"', add
label values us10a_qacrehou us10a_qacrehou_lbl

label define us10a_qmoblhom_lbl 0 `"Not allocated"'
label define us10a_qmoblhom_lbl 4 `"Allocated"', add
label values us10a_qmoblhom us10a_qmoblhom_lbl

label define us10a_qmortam1_lbl 0 `"Not allocated"'
label define us10a_qmortam1_lbl 4 `"Allocated"', add
label values us10a_qmortam1 us10a_qmortam1_lbl

label define us10a_qinsincl_lbl 0 `"Not allocated"'
label define us10a_qinsincl_lbl 4 `"Allocated"', add
label values us10a_qinsincl us10a_qinsincl_lbl

label define us10a_qmortam2_lbl 0 `"Not allocated"'
label define us10a_qmortam2_lbl 4 `"Allocated"', add
label values us10a_qmortam2 us10a_qmortam2_lbl

label define us10a_qbedroom_lbl 0 `"Not allocated"'
label define us10a_qbedroom_lbl 4 `"Allocated, hot deck"', add
label values us10a_qbedroom us10a_qbedroom_lbl

label define us10a_qcommuse_lbl 0 `"Not allocated"'
label define us10a_qcommuse_lbl 4 `"Allocated, hot deck"', add
label values us10a_qcommuse us10a_qcommuse_lbl

label define us10a_qmortga2_lbl 0 `"Not allocated"'
label define us10a_qmortga2_lbl 4 `"Allocated"', add
label values us10a_qmortga2 us10a_qmortga2_lbl

label define us10a_qcostele_lbl 0 `"Not allocated"'
label define us10a_qcostele_lbl 4 `"Allocated"', add
label values us10a_qcostele us10a_qcostele_lbl

label define us10a_qmortgag_lbl 0 `"Not allocated"'
label define us10a_qmortgag_lbl 4 `"Allocated"', add
label values us10a_qmortgag us10a_qmortgag_lbl

label define us10a_qcostfue_lbl 0 `"Not allocated"'
label define us10a_qcostfue_lbl 4 `"Allocated"', add
label values us10a_qcostfue us10a_qcostfue_lbl

label define us10a_qcostgas_lbl 0 `"Not allocated"'
label define us10a_qcostgas_lbl 4 `"Allocated"', add
label values us10a_qcostgas us10a_qcostgas_lbl

label define us10a_qpropins_lbl 0 `"Not allocated"'
label define us10a_qpropins_lbl 4 `"Allocated"', add
label values us10a_qpropins us10a_qpropins_lbl

label define us10a_qcostwat_lbl 0 `"Not allocated"'
label define us10a_qcostwat_lbl 4 `"Allocated"', add
label values us10a_qcostwat us10a_qcostwat_lbl

label define us10a_qprotx99_lbl 0 `"Not allocated"'
label define us10a_qprotx99_lbl 4 `"Allocated"', add
label values us10a_qprotx99 us10a_qprotx99_lbl

label define us10a_qrentmea_lbl 0 `"Not allocated"'
label define us10a_qrentmea_lbl 4 `"Allocated"', add
label values us10a_qrentmea us10a_qrentmea_lbl

label define us10a_qfuelhea_lbl 0 `"Not allocated"'
label define us10a_qfuelhea_lbl 4 `"Allocated"', add
label values us10a_qfuelhea us10a_qfuelhea_lbl

label define us10a_qplumbin_lbl 0 `"Not allocated"'
label define us10a_qplumbin_lbl 4 `"Allocated"', add
label values us10a_qplumbin us10a_qplumbin_lbl

label define us10a_qownersh_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define us10a_qownersh_lbl 4 `"Allocated"', add
label values us10a_qownersh us10a_qownersh_lbl

label define us10a_qphone_lbl 0 `"Not allocated"'
label define us10a_qphone_lbl 4 `"Allocated"', add
label values us10a_qphone us10a_qphone_lbl

label define us10a_qrent_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define us10a_qrent_lbl 4 `"Allocated (method not specified)"', add
label values us10a_qrent us10a_qrent_lbl

label define us10a_qrooms_lbl 0 `"Not allocated"'
label define us10a_qrooms_lbl 4 `"Allocated"', add
label values us10a_qrooms us10a_qrooms_lbl

label define us10a_qshower_lbl 0 `"Not allocated"'
label define us10a_qshower_lbl 4 `"Allocated, method not specified"', add
label values us10a_qshower us10a_qshower_lbl

label define us10a_qunitsst_lbl 0 `"Not allocated"'
label define us10a_qunitsst_lbl 4 `"Allocated"', add
label values us10a_qunitsst us10a_qunitsst_lbl

label define us10a_qvacancy_lbl 0 `"Not allocated"'
label define us10a_qvacancy_lbl 4 `"Allocated"', add
label values us10a_qvacancy us10a_qvacancy_lbl

label define us10a_qvalueh_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define us10a_qvalueh_lbl 4 `"Allocated"', add
label values us10a_qvalueh us10a_qvalueh_lbl

label define us10a_qcondofe_lbl 0 `"Not allocated"'
label define us10a_qcondofe_lbl 4 `"Allocated"', add
label values us10a_qcondofe us10a_qcondofe_lbl

label define us10a_qtaxincl_lbl 0 `"Not allocated"'
label define us10a_qtaxincl_lbl 4 `"Allocated"', add
label values us10a_qtaxincl us10a_qtaxincl_lbl

label define us10a_qfoodstm_lbl 0 `"Not allocated"'
label define us10a_qfoodstm_lbl 4 `"Allocated"', add
label values us10a_qfoodstm us10a_qfoodstm_lbl

label define us10a_qmortg2a_lbl 0 `"Not allocated"'
label values us10a_qmortg2a us10a_qmortg2a_lbl

label define us10a_builtyr2_lbl 00 `"NIU (not in universe)"'
label define us10a_builtyr2_lbl 01 `"1939 or earlier"', add
label define us10a_builtyr2_lbl 02 `"1940-1949"', add
label define us10a_builtyr2_lbl 03 `"1950-1959"', add
label define us10a_builtyr2_lbl 04 `"1960-1969"', add
label define us10a_builtyr2_lbl 05 `"1970-1979"', add
label define us10a_builtyr2_lbl 06 `"1980-1989"', add
label define us10a_builtyr2_lbl 07 `"1990-1999"', add
label define us10a_builtyr2_lbl 09 `"2000-2004"', add
label define us10a_builtyr2_lbl 10 `"2005"', add
label define us10a_builtyr2_lbl 11 `"2006"', add
label define us10a_builtyr2_lbl 12 `"2007"', add
label define us10a_builtyr2_lbl 13 `"2008"', add
label define us10a_builtyr2_lbl 14 `"2009"', add
label define us10a_builtyr2_lbl 15 `"2010"', add
label values us10a_builtyr2 us10a_builtyr2_lbl

label define us10a_qbuilty2_lbl 0 `"Not allocated"'
label define us10a_qbuilty2_lbl 4 `"Allocated"', add
label values us10a_qbuilty2 us10a_qbuilty2_lbl

label define us10a_nfams2_lbl 00 `"NIU (not in universe)"'
label define us10a_nfams2_lbl 01 `"1 family or N/A"', add
label define us10a_nfams2_lbl 02 `"2 families"', add
label define us10a_nfams2_lbl 03 `"3"', add
label define us10a_nfams2_lbl 04 `"4"', add
label define us10a_nfams2_lbl 05 `"5"', add
label define us10a_nfams2_lbl 06 `"6"', add
label define us10a_nfams2_lbl 07 `"7"', add
label define us10a_nfams2_lbl 08 `"8"', add
label define us10a_nfams2_lbl 09 `"9"', add
label define us10a_nfams2_lbl 10 `"10"', add
label define us10a_nfams2_lbl 11 `"11"', add
label define us10a_nfams2_lbl 12 `"12"', add
label define us10a_nfams2_lbl 13 `"13"', add
label define us10a_nfams2_lbl 17 `"17"', add
label values us10a_nfams2 us10a_nfams2_lbl

label define us10a_ncouple2_lbl 0 `"0 couples or N/A"'
label define us10a_ncouple2_lbl 1 `"1"', add
label define us10a_ncouple2_lbl 2 `"2"', add
label define us10a_ncouple2_lbl 3 `"3"', add
label define us10a_ncouple2_lbl 4 `"4"', add
label define us10a_ncouple2_lbl 5 `"5"', add
label values us10a_ncouple2 us10a_ncouple2_lbl

label define us10a_nmother2_lbl 0 `"0 mothers or N/A"'
label define us10a_nmother2_lbl 1 `"1"', add
label define us10a_nmother2_lbl 2 `"2"', add
label define us10a_nmother2_lbl 3 `"3"', add
label define us10a_nmother2_lbl 4 `"4"', add
label values us10a_nmother2 us10a_nmother2_lbl

label define us10a_nfather2_lbl 0 `"0 fathers or N/A"'
label define us10a_nfather2_lbl 1 `"1"', add
label define us10a_nfather2_lbl 2 `"2"', add
label define us10a_nfather2_lbl 3 `"3"', add
label define us10a_nfather2_lbl 4 `"4"', add
label values us10a_nfather2 us10a_nfather2_lbl

label define us10a_hhtype_lbl 0 `"NIU (not in universe)"'
label define us10a_hhtype_lbl 1 `"Married-couple family household"', add
label define us10a_hhtype_lbl 2 `"Male householder, no wife present"', add
label define us10a_hhtype_lbl 3 `"Female householder, no husband present"', add
label define us10a_hhtype_lbl 4 `"Male householder, living alone"', add
label define us10a_hhtype_lbl 5 `"Male householder, not living alone"', add
label define us10a_hhtype_lbl 6 `"Female householder, living alone"', add
label define us10a_hhtype_lbl 7 `"Female householder, not living alone"', add
label values us10a_hhtype us10a_hhtype_lbl

label define us10a_repwt_lbl 1 `"Weights available"'
label values us10a_repwt us10a_repwt_lbl

label define us10a_qvehicle_lbl 0 `"Not allocated"'
label define us10a_qvehicle_lbl 4 `"Allocated"', add
label values us10a_qvehicle us10a_qvehicle_lbl

label define us10a_owncost_lbl 99999 `"NIU (not in universe)"'
label values us10a_owncost us10a_owncost_lbl

label define us10a_nsubfam_lbl 0 `"0 subfamilies"'
label define us10a_nsubfam_lbl 1 `"1 subfamily"', add
label define us10a_nsubfam_lbl 2 `"2 subfamilies"', add
label define us10a_nsubfam_lbl 3 `"3"', add
label define us10a_nsubfam_lbl 4 `"4"', add
label define us10a_nsubfam_lbl 9 `"NIU (not in universe)"', add
label values us10a_nsubfam us10a_nsubfam_lbl

label define us10a_hhincome_lbl 9999999 `"NIU (not in universe)"'
label values us10a_hhincome us10a_hhincome_lbl

label define us10a_headloc_lbl 0 `"No head identified"'
label define us10a_headloc_lbl 1 `"1"', add
label values us10a_headloc us10a_headloc_lbl

label define us10a_fridge_lbl 0 `"NIU (not in universe)"'
label define us10a_fridge_lbl 1 `"No, no refrigerator"', add
label define us10a_fridge_lbl 2 `"Yes"', add
label values us10a_fridge us10a_fridge_lbl

label define us10a_qfridge_lbl 0 `"Not allocated"'
label define us10a_qfridge_lbl 4 `"Allocated"', add
label values us10a_qfridge us10a_qfridge_lbl

label define us10a_sink_lbl 0 `"NIU (not in universe)"'
label define us10a_sink_lbl 1 `"No, no sink with faucet"', add
label define us10a_sink_lbl 2 `"Yes"', add
label values us10a_sink us10a_sink_lbl

label define us10a_qsink_lbl 0 `"Not allocated"'
label define us10a_qsink_lbl 4 `"Allocated"', add
label values us10a_qsink us10a_qsink_lbl

label define us10a_stove_lbl 0 `"NIU (not in universe)"'
label define us10a_stove_lbl 1 `"No, no stove or range"', add
label define us10a_stove_lbl 2 `"Yes"', add
label values us10a_stove us10a_stove_lbl

label define us10a_qstove_lbl 0 `"Not allocated"'
label define us10a_qstove_lbl 4 `"Allocated"', add
label values us10a_qstove us10a_qstove_lbl

label define us10a_valueh_lbl 9999999 `"NIU (not in universe)"'
label values us10a_valueh us10a_valueh_lbl

label define us10a_multgen_lbl 00 `"NIU (not in universe)"'
label define us10a_multgen_lbl 10 `"1 generation"', add
label define us10a_multgen_lbl 21 `"2 adjacent generations, adult-children"', add
label define us10a_multgen_lbl 22 `"2 adjacent generations, adult-adult"', add
label define us10a_multgen_lbl 23 `"2 nonadjacent generations"', add
label define us10a_multgen_lbl 31 `"3+ generations (census 2008 definition)"', add
label define us10a_multgen_lbl 32 `"3+ generations (additional IPUMS definition)"', add
label values us10a_multgen us10a_multgen_lbl

label define us10a_bedrooms_lbl 00 `"NIU (not in universe)"'
label define us10a_bedrooms_lbl 01 `"No bedrooms"', add
label define us10a_bedrooms_lbl 02 `"1"', add
label define us10a_bedrooms_lbl 03 `"2"', add
label define us10a_bedrooms_lbl 04 `"3"', add
label define us10a_bedrooms_lbl 05 `"4"', add
label define us10a_bedrooms_lbl 06 `"5"', add
label define us10a_bedrooms_lbl 07 `"6"', add
label define us10a_bedrooms_lbl 08 `"7"', add
label define us10a_bedrooms_lbl 09 `"8"', add
label define us10a_bedrooms_lbl 10 `"9"', add
label define us10a_bedrooms_lbl 11 `"10"', add
label define us10a_bedrooms_lbl 12 `"11"', add
label define us10a_bedrooms_lbl 14 `"13"', add
label define us10a_bedrooms_lbl 19 `"18"', add
label values us10a_bedrooms us10a_bedrooms_lbl

label define us10a_rooms_lbl 00 `"NIU (not in universe)"'
label define us10a_rooms_lbl 01 `"1 room"', add
label define us10a_rooms_lbl 02 `"2"', add
label define us10a_rooms_lbl 03 `"3"', add
label define us10a_rooms_lbl 04 `"4"', add
label define us10a_rooms_lbl 05 `"5"', add
label define us10a_rooms_lbl 06 `"6"', add
label define us10a_rooms_lbl 07 `"7"', add
label define us10a_rooms_lbl 08 `"8"', add
label define us10a_rooms_lbl 09 `"9"', add
label define us10a_rooms_lbl 10 `"10"', add
label define us10a_rooms_lbl 11 `"11"', add
label define us10a_rooms_lbl 12 `"12"', add
label define us10a_rooms_lbl 13 `"13"', add
label define us10a_rooms_lbl 14 `"14"', add
label define us10a_rooms_lbl 15 `"15"', add
label define us10a_rooms_lbl 16 `"16"', add
label define us10a_rooms_lbl 17 `"17"', add
label define us10a_rooms_lbl 18 `"18"', add
label define us10a_rooms_lbl 19 `"19"', add
label define us10a_rooms_lbl 20 `"20"', add
label define us10a_rooms_lbl 21 `"21"', add
label define us10a_rooms_lbl 22 `"22"', add
label define us10a_rooms_lbl 25 `"25"', add
label define us10a_rooms_lbl 26 `"26"', add
label define us10a_rooms_lbl 27 `"27"', add
label values us10a_rooms us10a_rooms_lbl

label define us10a_homeland_lbl 1 `"PUMA does not include a homeland area"'
label define us10a_homeland_lbl 2 `"PUMA includes a homeland area"', add
label values us10a_homeland us10a_homeland_lbl

label define us10a_adjust_lbl 1007624 `"1007624"'
label values us10a_adjust us10a_adjust_lbl

label define us10a_cpi99_lbl 764 `"764"'
label values us10a_cpi99 us10a_cpi99_lbl

label define us10a_respmode_lbl 0 `"NIU (not in universe)"'
label define us10a_respmode_lbl 1 `"Mail"', add
label define us10a_respmode_lbl 2 `"Computer assisted interview (CATI/CAPI)"', add
label values us10a_respmode us10a_respmode_lbl

label define us10a_appal_lbl 00 `"Not in Appalachia"'
label define us10a_appal_lbl 11 `"Northern Applachia"', add
label define us10a_appal_lbl 12 `"North Central Appalachia"', add
label define us10a_appal_lbl 20 `"Central Appalachia"', add
label define us10a_appal_lbl 31 `"South Central Appalachia"', add
label define us10a_appal_lbl 32 `"Southern Appalachia"', add
label values us10a_appal us10a_appal_lbl

label define us10a_validco_lbl 0 `"0"'
label define us10a_validco_lbl 1 `"1"', add
label define us10a_validco_lbl 2 `"2"', add
label define us10a_validco_lbl 3 `"3"', add
label define us10a_validco_lbl 4 `"4"', add
label define us10a_validco_lbl 5 `"5"', add
label define us10a_validco_lbl 6 `"6"', add
label define us10a_validco_lbl 8 `"8"', add
label values us10a_validco us10a_validco_lbl

label define us10a_county_lbl 0000 `"County not identifiable from public-use data"'
label define us10a_county_lbl 0010 `"10"', add
label define us10a_county_lbl 0030 `"30"', add
label define us10a_county_lbl 0050 `"50"', add
label define us10a_county_lbl 0070 `"70"', add
label define us10a_county_lbl 0090 `"90"', add
label define us10a_county_lbl 0110 `"110"', add
label define us10a_county_lbl 0130 `"130"', add
label define us10a_county_lbl 0150 `"150"', add
label define us10a_county_lbl 0170 `"170"', add
label define us10a_county_lbl 0190 `"190"', add
label define us10a_county_lbl 0210 `"210"', add
label define us10a_county_lbl 0230 `"230"', add
label define us10a_county_lbl 0250 `"250"', add
label define us10a_county_lbl 0270 `"270"', add
label define us10a_county_lbl 0290 `"290"', add
label define us10a_county_lbl 0310 `"310"', add
label define us10a_county_lbl 0330 `"330"', add
label define us10a_county_lbl 0350 `"350"', add
label define us10a_county_lbl 0370 `"370"', add
label define us10a_county_lbl 0390 `"390"', add
label define us10a_county_lbl 0410 `"410"', add
label define us10a_county_lbl 0430 `"430"', add
label define us10a_county_lbl 0450 `"450"', add
label define us10a_county_lbl 0470 `"470"', add
label define us10a_county_lbl 0490 `"490"', add
label define us10a_county_lbl 0510 `"510"', add
label define us10a_county_lbl 0530 `"530"', add
label define us10a_county_lbl 0550 `"550"', add
label define us10a_county_lbl 0570 `"570"', add
label define us10a_county_lbl 0590 `"590"', add
label define us10a_county_lbl 0610 `"610"', add
label define us10a_county_lbl 0630 `"630"', add
label define us10a_county_lbl 0650 `"650"', add
label define us10a_county_lbl 0670 `"670"', add
label define us10a_county_lbl 0690 `"690"', add
label define us10a_county_lbl 0710 `"710"', add
label define us10a_county_lbl 0730 `"730"', add
label define us10a_county_lbl 0750 `"750"', add
label define us10a_county_lbl 0770 `"770"', add
label define us10a_county_lbl 0790 `"790"', add
label define us10a_county_lbl 0810 `"810"', add
label define us10a_county_lbl 0830 `"830"', add
label define us10a_county_lbl 0850 `"850"', add
label define us10a_county_lbl 0870 `"870"', add
label define us10a_county_lbl 0890 `"890"', add
label define us10a_county_lbl 0910 `"910"', add
label define us10a_county_lbl 0930 `"930"', add
label define us10a_county_lbl 0950 `"950"', add
label define us10a_county_lbl 0970 `"970"', add
label define us10a_county_lbl 0990 `"990"', add
label define us10a_county_lbl 1010 `"1010"', add
label define us10a_county_lbl 1030 `"1030"', add
label define us10a_county_lbl 1050 `"1050"', add
label define us10a_county_lbl 1070 `"1070"', add
label define us10a_county_lbl 1090 `"1090"', add
label define us10a_county_lbl 1110 `"1110"', add
label define us10a_county_lbl 1130 `"1130"', add
label define us10a_county_lbl 1150 `"1150"', add
label define us10a_county_lbl 1170 `"1170"', add
label define us10a_county_lbl 1190 `"1190"', add
label define us10a_county_lbl 1210 `"1210"', add
label define us10a_county_lbl 1230 `"1230"', add
label define us10a_county_lbl 1250 `"1250"', add
label define us10a_county_lbl 1270 `"1270"', add
label define us10a_county_lbl 1290 `"1290"', add
label define us10a_county_lbl 1330 `"1330"', add
label define us10a_county_lbl 1350 `"1350"', add
label define us10a_county_lbl 1370 `"1370"', add
label define us10a_county_lbl 1390 `"1390"', add
label define us10a_county_lbl 1410 `"1410"', add
label define us10a_county_lbl 1430 `"1430"', add
label define us10a_county_lbl 1450 `"1450"', add
label define us10a_county_lbl 1470 `"1470"', add
label define us10a_county_lbl 1490 `"1490"', add
label define us10a_county_lbl 1510 `"1510"', add
label define us10a_county_lbl 1530 `"1530"', add
label define us10a_county_lbl 1550 `"1550"', add
label define us10a_county_lbl 1570 `"1570"', add
label define us10a_county_lbl 1590 `"1590"', add
label define us10a_county_lbl 1610 `"1610"', add
label define us10a_county_lbl 1630 `"1630"', add
label define us10a_county_lbl 1650 `"1650"', add
label define us10a_county_lbl 1670 `"1670"', add
label define us10a_county_lbl 1690 `"1690"', add
label define us10a_county_lbl 1770 `"1770"', add
label define us10a_county_lbl 1790 `"1790"', add
label define us10a_county_lbl 1830 `"1830"', add
label define us10a_county_lbl 1870 `"1870"', add
label define us10a_county_lbl 1890 `"1890"', add
label define us10a_county_lbl 1910 `"1910"', add
label define us10a_county_lbl 1930 `"1930"', add
label define us10a_county_lbl 2010 `"2010"', add
label define us10a_county_lbl 2090 `"2090"', add
label define us10a_county_lbl 2150 `"2150"', add
label define us10a_county_lbl 2450 `"2450"', add
label define us10a_county_lbl 2510 `"2510"', add
label define us10a_county_lbl 3030 `"3030"', add
label define us10a_county_lbl 3090 `"3090"', add
label define us10a_county_lbl 3290 `"3290"', add
label define us10a_county_lbl 3750 `"3750"', add
label define us10a_county_lbl 3810 `"3810"', add
label define us10a_county_lbl 4230 `"4230"', add
label define us10a_county_lbl 4410 `"4410"', add
label define us10a_county_lbl 4790 `"4790"', add
label define us10a_county_lbl 4850 `"4850"', add
label define us10a_county_lbl 4910 `"4910"', add
label define us10a_county_lbl 5100 `"5100"', add
label define us10a_county_lbl 5500 `"5500"', add
label define us10a_county_lbl 6500 `"6500"', add
label define us10a_county_lbl 7000 `"7000"', add
label define us10a_county_lbl 7100 `"7100"', add
label define us10a_county_lbl 7600 `"7600"', add
label define us10a_county_lbl 8100 `"8100"', add
label values us10a_county us10a_county_lbl

label define us10a_cbnsubfam_lbl 0 `"0 subfamilies"'
label define us10a_cbnsubfam_lbl 1 `"1 subfamily"', add
label define us10a_cbnsubfam_lbl 2 `"2 subfamilies"', add
label define us10a_cbnsubfam_lbl 3 `"3"', add
label define us10a_cbnsubfam_lbl 4 `"4"', add
label define us10a_cbnsubfam_lbl 9 `"NIU (not in universe)"', add
label values us10a_cbnsubfam us10a_cbnsubfam_lbl

label define us10a_pumares2mig_lbl 001 `"1"'
label define us10a_pumares2mig_lbl 002 `"2"', add
label define us10a_pumares2mig_lbl 003 `"3"', add
label define us10a_pumares2mig_lbl 004 `"4"', add
label define us10a_pumares2mig_lbl 005 `"5"', add
label define us10a_pumares2mig_lbl 006 `"6"', add
label define us10a_pumares2mig_lbl 007 `"7"', add
label define us10a_pumares2mig_lbl 008 `"8"', add
label define us10a_pumares2mig_lbl 009 `"9"', add
label define us10a_pumares2mig_lbl 010 `"10"', add
label define us10a_pumares2mig_lbl 011 `"11"', add
label define us10a_pumares2mig_lbl 012 `"12"', add
label define us10a_pumares2mig_lbl 013 `"13"', add
label define us10a_pumares2mig_lbl 014 `"14"', add
label define us10a_pumares2mig_lbl 015 `"15"', add
label define us10a_pumares2mig_lbl 016 `"16"', add
label define us10a_pumares2mig_lbl 017 `"17"', add
label define us10a_pumares2mig_lbl 018 `"18"', add
label define us10a_pumares2mig_lbl 019 `"19"', add
label define us10a_pumares2mig_lbl 020 `"20"', add
label define us10a_pumares2mig_lbl 021 `"21"', add
label define us10a_pumares2mig_lbl 022 `"22"', add
label define us10a_pumares2mig_lbl 023 `"23"', add
label define us10a_pumares2mig_lbl 024 `"24"', add
label define us10a_pumares2mig_lbl 025 `"25"', add
label define us10a_pumares2mig_lbl 026 `"26"', add
label define us10a_pumares2mig_lbl 027 `"27"', add
label define us10a_pumares2mig_lbl 028 `"28"', add
label define us10a_pumares2mig_lbl 029 `"29"', add
label define us10a_pumares2mig_lbl 030 `"30"', add
label define us10a_pumares2mig_lbl 031 `"31"', add
label define us10a_pumares2mig_lbl 032 `"32"', add
label define us10a_pumares2mig_lbl 033 `"33"', add
label define us10a_pumares2mig_lbl 034 `"34"', add
label define us10a_pumares2mig_lbl 035 `"35"', add
label define us10a_pumares2mig_lbl 036 `"36"', add
label define us10a_pumares2mig_lbl 037 `"37"', add
label define us10a_pumares2mig_lbl 038 `"38"', add
label define us10a_pumares2mig_lbl 039 `"39"', add
label define us10a_pumares2mig_lbl 040 `"40"', add
label define us10a_pumares2mig_lbl 041 `"41"', add
label define us10a_pumares2mig_lbl 042 `"42"', add
label define us10a_pumares2mig_lbl 043 `"43"', add
label define us10a_pumares2mig_lbl 044 `"44"', add
label define us10a_pumares2mig_lbl 045 `"45"', add
label define us10a_pumares2mig_lbl 046 `"46"', add
label define us10a_pumares2mig_lbl 047 `"47"', add
label define us10a_pumares2mig_lbl 048 `"48"', add
label define us10a_pumares2mig_lbl 049 `"49"', add
label define us10a_pumares2mig_lbl 050 `"50"', add
label define us10a_pumares2mig_lbl 051 `"51"', add
label define us10a_pumares2mig_lbl 052 `"52"', add
label define us10a_pumares2mig_lbl 053 `"53"', add
label define us10a_pumares2mig_lbl 055 `"55"', add
label define us10a_pumares2mig_lbl 056 `"56"', add
label define us10a_pumares2mig_lbl 057 `"57"', add
label define us10a_pumares2mig_lbl 058 `"58"', add
label define us10a_pumares2mig_lbl 059 `"59"', add
label define us10a_pumares2mig_lbl 060 `"60"', add
label define us10a_pumares2mig_lbl 061 `"61"', add
label define us10a_pumares2mig_lbl 062 `"62"', add
label define us10a_pumares2mig_lbl 063 `"63"', add
label define us10a_pumares2mig_lbl 066 `"66"', add
label define us10a_pumares2mig_lbl 067 `"67"', add
label define us10a_pumares2mig_lbl 068 `"68"', add
label define us10a_pumares2mig_lbl 077 `"77"', add
label define us10a_pumares2mig_lbl 081 `"81"', add
label define us10a_pumares2mig_lbl 082 `"82"', add
label define us10a_pumares2mig_lbl 777 `"777"', add
label values us10a_pumares2mig us10a_pumares2mig_lbl

label define us10a_rent_lbl 0000 `"NIU (not in universe)"'
label define us10a_rent_lbl 0004 `"4"', add
label define us10a_rent_lbl 0010 `"10"', add
label define us10a_rent_lbl 0020 `"20"', add
label define us10a_rent_lbl 0030 `"30"', add
label define us10a_rent_lbl 0040 `"40"', add
label define us10a_rent_lbl 0050 `"50"', add
label define us10a_rent_lbl 0060 `"60"', add
label define us10a_rent_lbl 0070 `"70"', add
label define us10a_rent_lbl 0080 `"80"', add
label define us10a_rent_lbl 0090 `"90"', add
label define us10a_rent_lbl 0100 `"100"', add
label define us10a_rent_lbl 0110 `"110"', add
label define us10a_rent_lbl 0120 `"120"', add
label define us10a_rent_lbl 0130 `"130"', add
label define us10a_rent_lbl 0140 `"140"', add
label define us10a_rent_lbl 0150 `"150"', add
label define us10a_rent_lbl 0160 `"160"', add
label define us10a_rent_lbl 0170 `"170"', add
label define us10a_rent_lbl 0180 `"180"', add
label define us10a_rent_lbl 0190 `"190"', add
label define us10a_rent_lbl 0200 `"200"', add
label define us10a_rent_lbl 0210 `"210"', add
label define us10a_rent_lbl 0220 `"220"', add
label define us10a_rent_lbl 0230 `"230"', add
label define us10a_rent_lbl 0240 `"240"', add
label define us10a_rent_lbl 0250 `"250"', add
label define us10a_rent_lbl 0260 `"260"', add
label define us10a_rent_lbl 0270 `"270"', add
label define us10a_rent_lbl 0280 `"280"', add
label define us10a_rent_lbl 0290 `"290"', add
label define us10a_rent_lbl 0300 `"300"', add
label define us10a_rent_lbl 0310 `"310"', add
label define us10a_rent_lbl 0320 `"320"', add
label define us10a_rent_lbl 0330 `"330"', add
label define us10a_rent_lbl 0340 `"340"', add
label define us10a_rent_lbl 0350 `"350"', add
label define us10a_rent_lbl 0360 `"360"', add
label define us10a_rent_lbl 0370 `"370"', add
label define us10a_rent_lbl 0380 `"380"', add
label define us10a_rent_lbl 0390 `"390"', add
label define us10a_rent_lbl 0400 `"400"', add
label define us10a_rent_lbl 0410 `"410"', add
label define us10a_rent_lbl 0420 `"420"', add
label define us10a_rent_lbl 0430 `"430"', add
label define us10a_rent_lbl 0440 `"440"', add
label define us10a_rent_lbl 0450 `"450"', add
label define us10a_rent_lbl 0460 `"460"', add
label define us10a_rent_lbl 0470 `"470"', add
label define us10a_rent_lbl 0480 `"480"', add
label define us10a_rent_lbl 0490 `"490"', add
label define us10a_rent_lbl 0500 `"500"', add
label define us10a_rent_lbl 0510 `"510"', add
label define us10a_rent_lbl 0520 `"520"', add
label define us10a_rent_lbl 0530 `"530"', add
label define us10a_rent_lbl 0540 `"540"', add
label define us10a_rent_lbl 0550 `"550"', add
label define us10a_rent_lbl 0560 `"560"', add
label define us10a_rent_lbl 0570 `"570"', add
label define us10a_rent_lbl 0580 `"580"', add
label define us10a_rent_lbl 0590 `"590"', add
label define us10a_rent_lbl 0600 `"600"', add
label define us10a_rent_lbl 0610 `"610"', add
label define us10a_rent_lbl 0620 `"620"', add
label define us10a_rent_lbl 0630 `"630"', add
label define us10a_rent_lbl 0640 `"640"', add
label define us10a_rent_lbl 0650 `"650"', add
label define us10a_rent_lbl 0660 `"660"', add
label define us10a_rent_lbl 0670 `"670"', add
label define us10a_rent_lbl 0680 `"680"', add
label define us10a_rent_lbl 0690 `"690"', add
label define us10a_rent_lbl 0700 `"700"', add
label define us10a_rent_lbl 0710 `"710"', add
label define us10a_rent_lbl 0720 `"720"', add
label define us10a_rent_lbl 0730 `"730"', add
label define us10a_rent_lbl 0740 `"740"', add
label define us10a_rent_lbl 0750 `"750"', add
label define us10a_rent_lbl 0760 `"760"', add
label define us10a_rent_lbl 0770 `"770"', add
label define us10a_rent_lbl 0780 `"780"', add
label define us10a_rent_lbl 0790 `"790"', add
label define us10a_rent_lbl 0800 `"800"', add
label define us10a_rent_lbl 0810 `"810"', add
label define us10a_rent_lbl 0820 `"820"', add
label define us10a_rent_lbl 0830 `"830"', add
label define us10a_rent_lbl 0840 `"840"', add
label define us10a_rent_lbl 0850 `"850"', add
label define us10a_rent_lbl 0860 `"860"', add
label define us10a_rent_lbl 0870 `"870"', add
label define us10a_rent_lbl 0880 `"880"', add
label define us10a_rent_lbl 0890 `"890"', add
label define us10a_rent_lbl 0900 `"900"', add
label define us10a_rent_lbl 0910 `"910"', add
label define us10a_rent_lbl 0920 `"920"', add
label define us10a_rent_lbl 0930 `"930"', add
label define us10a_rent_lbl 0940 `"940"', add
label define us10a_rent_lbl 0950 `"950"', add
label define us10a_rent_lbl 0960 `"960"', add
label define us10a_rent_lbl 0970 `"970"', add
label define us10a_rent_lbl 0980 `"980"', add
label define us10a_rent_lbl 0990 `"990"', add
label define us10a_rent_lbl 1000 `"1000"', add
label define us10a_rent_lbl 1100 `"1100"', add
label define us10a_rent_lbl 1200 `"1200"', add
label define us10a_rent_lbl 1300 `"1300"', add
label define us10a_rent_lbl 1400 `"1400"', add
label define us10a_rent_lbl 1500 `"1500"', add
label define us10a_rent_lbl 1600 `"1600"', add
label define us10a_rent_lbl 1700 `"1700"', add
label define us10a_rent_lbl 1800 `"1800"', add
label define us10a_rent_lbl 1900 `"1900"', add
label define us10a_rent_lbl 2000 `"2000"', add
label define us10a_rent_lbl 2100 `"2100"', add
label define us10a_rent_lbl 2200 `"2200"', add
label define us10a_rent_lbl 2300 `"2300"', add
label define us10a_rent_lbl 2400 `"2400"', add
label define us10a_rent_lbl 2500 `"2500"', add
label define us10a_rent_lbl 2600 `"2600"', add
label define us10a_rent_lbl 2700 `"2700"', add
label define us10a_rent_lbl 2800 `"2800"', add
label define us10a_rent_lbl 2900 `"2900"', add
label define us10a_rent_lbl 3000 `"3000"', add
label define us10a_rent_lbl 3100 `"3100"', add
label define us10a_rent_lbl 3200 `"3200"', add
label define us10a_rent_lbl 3300 `"3300"', add
label define us10a_rent_lbl 3400 `"3400"', add
label define us10a_rent_lbl 3500 `"3500"', add
label define us10a_rent_lbl 3600 `"3600"', add
label define us10a_rent_lbl 3800 `"3800"', add
label values us10a_rent us10a_rent_lbl

label define us10a_qfarmpro_lbl 0 `"Not allocated"'
label define us10a_qfarmpro_lbl 4 `"Allocated"', add
label values us10a_qfarmpro us10a_qfarmpro_lbl

label define us10a_pernum2_lbl 01 `"1"'
label define us10a_pernum2_lbl 02 `"2"', add
label define us10a_pernum2_lbl 03 `"3"', add
label define us10a_pernum2_lbl 04 `"4"', add
label define us10a_pernum2_lbl 05 `"5"', add
label define us10a_pernum2_lbl 06 `"6"', add
label define us10a_pernum2_lbl 07 `"7"', add
label define us10a_pernum2_lbl 08 `"8"', add
label define us10a_pernum2_lbl 09 `"9"', add
label define us10a_pernum2_lbl 10 `"10"', add
label define us10a_pernum2_lbl 11 `"11"', add
label define us10a_pernum2_lbl 12 `"12"', add
label define us10a_pernum2_lbl 13 `"13"', add
label define us10a_pernum2_lbl 14 `"14"', add
label define us10a_pernum2_lbl 15 `"15"', add
label define us10a_pernum2_lbl 16 `"16"', add
label define us10a_pernum2_lbl 17 `"17"', add
label define us10a_pernum2_lbl 18 `"18"', add
label define us10a_pernum2_lbl 19 `"19"', add
label define us10a_pernum2_lbl 20 `"20"', add
label values us10a_pernum2 us10a_pernum2_lbl

label define us10a_momloc_lbl 00 `"No mother identified in the household"'
label define us10a_momloc_lbl 01 `"1"', add
label define us10a_momloc_lbl 02 `"2"', add
label define us10a_momloc_lbl 03 `"3"', add
label define us10a_momloc_lbl 04 `"4"', add
label define us10a_momloc_lbl 05 `"5"', add
label define us10a_momloc_lbl 06 `"6"', add
label define us10a_momloc_lbl 07 `"7"', add
label define us10a_momloc_lbl 08 `"8"', add
label define us10a_momloc_lbl 09 `"9"', add
label define us10a_momloc_lbl 10 `"10"', add
label define us10a_momloc_lbl 11 `"11"', add
label define us10a_momloc_lbl 12 `"12"', add
label define us10a_momloc_lbl 13 `"13"', add
label define us10a_momloc_lbl 14 `"14"', add
label define us10a_momloc_lbl 15 `"15"', add
label define us10a_momloc_lbl 16 `"16"', add
label values us10a_momloc us10a_momloc_lbl

label define us10a_stepmom_lbl 0 `"No stepmother present"'
label define us10a_stepmom_lbl 1 `"Improbable age difference"', add
label define us10a_stepmom_lbl 2 `"Spouse of father"', add
label define us10a_stepmom_lbl 3 `"Identified stepmother"', add
label define us10a_stepmom_lbl 5 `"Identified as adopted"', add
label values us10a_stepmom us10a_stepmom_lbl

label define us10a_poploc_lbl 00 `"No father identified in the household"'
label define us10a_poploc_lbl 01 `"1"', add
label define us10a_poploc_lbl 02 `"2"', add
label define us10a_poploc_lbl 03 `"3"', add
label define us10a_poploc_lbl 04 `"4"', add
label define us10a_poploc_lbl 05 `"5"', add
label define us10a_poploc_lbl 06 `"6"', add
label define us10a_poploc_lbl 07 `"7"', add
label define us10a_poploc_lbl 08 `"8"', add
label define us10a_poploc_lbl 09 `"9"', add
label define us10a_poploc_lbl 10 `"10"', add
label define us10a_poploc_lbl 11 `"11"', add
label define us10a_poploc_lbl 12 `"12"', add
label define us10a_poploc_lbl 13 `"13"', add
label define us10a_poploc_lbl 14 `"14"', add
label define us10a_poploc_lbl 15 `"15"', add
label values us10a_poploc us10a_poploc_lbl

label define us10a_steppop_lbl 0 `"No stepfather present"'
label define us10a_steppop_lbl 1 `"Improbable age difference"', add
label define us10a_steppop_lbl 2 `"Spouse of mother"', add
label define us10a_steppop_lbl 3 `"Identified stepfather"', add
label define us10a_steppop_lbl 5 `"Identified as adopted"', add
label values us10a_steppop us10a_steppop_lbl

label define us10a_poprule_lbl 0 `"No father link"'
label define us10a_poprule_lbl 1 `"Unambiguous father link"', add
label define us10a_poprule_lbl 2 `"Son/granchild link"', add
label define us10a_poprule_lbl 3 `"Preceding male (no intervening person)"', add
label define us10a_poprule_lbl 4 `"Preceding male (surname similarity)"', add
label define us10a_poprule_lbl 7 `"Husband of mother becomes stepfather"', add
label values us10a_poprule us10a_poprule_lbl

label define us10a_sploc_lbl 00 `"No spouse link"'
label define us10a_sploc_lbl 01 `"1"', add
label define us10a_sploc_lbl 02 `"2"', add
label define us10a_sploc_lbl 03 `"3"', add
label define us10a_sploc_lbl 04 `"4"', add
label define us10a_sploc_lbl 05 `"5"', add
label define us10a_sploc_lbl 06 `"6"', add
label define us10a_sploc_lbl 07 `"7"', add
label define us10a_sploc_lbl 08 `"8"', add
label define us10a_sploc_lbl 09 `"9"', add
label define us10a_sploc_lbl 10 `"10"', add
label define us10a_sploc_lbl 11 `"11"', add
label define us10a_sploc_lbl 12 `"12"', add
label define us10a_sploc_lbl 13 `"13"', add
label define us10a_sploc_lbl 14 `"14"', add
label define us10a_sploc_lbl 15 `"15"', add
label define us10a_sploc_lbl 16 `"16"', add
label define us10a_sploc_lbl 18 `"18"', add
label define us10a_sploc_lbl 19 `"19"', add
label values us10a_sploc us10a_sploc_lbl

label define us10a_sprule_lbl 0 `"No spouse link"'
label define us10a_sprule_lbl 1 `"Wife follows husband"', add
label define us10a_sprule_lbl 2 `"Wife precedes husband"', add
label define us10a_sprule_lbl 3 `"Non-adjacent links -- consistent relationship to head/age differences"', add
label define us10a_sprule_lbl 4 `"Adjacent links (wife follows husband -- no age, other relative conflicts)"', add
label define us10a_sprule_lbl 5 `"Adjacent links (wife precedes husband -- no age, other relative conflicts)"', add
label values us10a_sprule us10a_sprule_lbl

label define us10a_famsize_lbl 01 `"1 family member present"'
label define us10a_famsize_lbl 02 `"2 family members present"', add
label define us10a_famsize_lbl 03 `"3"', add
label define us10a_famsize_lbl 04 `"4"', add
label define us10a_famsize_lbl 05 `"5"', add
label define us10a_famsize_lbl 06 `"6"', add
label define us10a_famsize_lbl 07 `"7"', add
label define us10a_famsize_lbl 08 `"8"', add
label define us10a_famsize_lbl 09 `"9"', add
label define us10a_famsize_lbl 10 `"10"', add
label define us10a_famsize_lbl 11 `"11"', add
label define us10a_famsize_lbl 12 `"12"', add
label define us10a_famsize_lbl 13 `"13"', add
label define us10a_famsize_lbl 14 `"14"', add
label define us10a_famsize_lbl 15 `"15"', add
label define us10a_famsize_lbl 16 `"16"', add
label define us10a_famsize_lbl 17 `"17"', add
label define us10a_famsize_lbl 18 `"18"', add
label define us10a_famsize_lbl 19 `"19"', add
label define us10a_famsize_lbl 20 `"20"', add
label values us10a_famsize us10a_famsize_lbl

label define us10a_famsize_lbl 01 `"1 family member present"'
label define us10a_famsize_lbl 02 `"2 family members present"', add
label define us10a_famsize_lbl 03 `"3"', add
label define us10a_famsize_lbl 04 `"4"', add
label define us10a_famsize_lbl 05 `"5"', add
label define us10a_famsize_lbl 06 `"6"', add
label define us10a_famsize_lbl 07 `"7"', add
label define us10a_famsize_lbl 08 `"8"', add
label define us10a_famsize_lbl 09 `"9"', add
label define us10a_famsize_lbl 10 `"10"', add
label define us10a_famsize_lbl 11 `"11"', add
label define us10a_famsize_lbl 12 `"12"', add
label define us10a_famsize_lbl 13 `"13"', add
label define us10a_famsize_lbl 14 `"14"', add
label define us10a_famsize_lbl 15 `"15"', add
label define us10a_famsize_lbl 16 `"16"', add
label define us10a_famsize_lbl 17 `"17"', add
label define us10a_famsize_lbl 18 `"18"', add
label define us10a_famsize_lbl 19 `"19"', add
label define us10a_famsize_lbl 20 `"20"', add
label values us10a_famsize us10a_famsize_lbl

label define us10a_nchild_lbl 0 `"0 children present"'
label define us10a_nchild_lbl 1 `"1 child present"', add
label define us10a_nchild_lbl 2 `"2"', add
label define us10a_nchild_lbl 3 `"3"', add
label define us10a_nchild_lbl 4 `"4"', add
label define us10a_nchild_lbl 5 `"5"', add
label define us10a_nchild_lbl 6 `"6"', add
label define us10a_nchild_lbl 7 `"7"', add
label define us10a_nchild_lbl 8 `"8"', add
label define us10a_nchild_lbl 9 `"9+"', add
label values us10a_nchild us10a_nchild_lbl

label define us10a_nchlt5_lbl 0 `"No children under age 5"'
label define us10a_nchlt5_lbl 1 `"1 child under age 5"', add
label define us10a_nchlt5_lbl 2 `"2"', add
label define us10a_nchlt5_lbl 3 `"3"', add
label define us10a_nchlt5_lbl 4 `"4"', add
label define us10a_nchlt5_lbl 5 `"5"', add
label define us10a_nchlt5_lbl 6 `"6"', add
label define us10a_nchlt5_lbl 7 `"7"', add
label values us10a_nchlt5 us10a_nchlt5_lbl

label define us10a_famunit_lbl 01 `"1st family in household or group quarters"'
label define us10a_famunit_lbl 02 `"2nd family in household or group quarters"', add
label define us10a_famunit_lbl 03 `"3rd"', add
label define us10a_famunit_lbl 04 `"4th"', add
label define us10a_famunit_lbl 05 `"5th"', add
label define us10a_famunit_lbl 06 `"6th"', add
label define us10a_famunit_lbl 07 `"7th"', add
label define us10a_famunit_lbl 08 `"8th"', add
label define us10a_famunit_lbl 09 `"9th"', add
label define us10a_famunit_lbl 10 `"10th"', add
label define us10a_famunit_lbl 11 `"11th"', add
label define us10a_famunit_lbl 12 `"12th"', add
label define us10a_famunit_lbl 13 `"13th"', add
label define us10a_famunit_lbl 14 `"14th"', add
label define us10a_famunit_lbl 15 `"15th"', add
label define us10a_famunit_lbl 16 `"16th"', add
label define us10a_famunit_lbl 17 `"17th"', add
label values us10a_famunit us10a_famunit_lbl

label define us10a_eldch_lbl 00 `"Less than 1 year"'
label define us10a_eldch_lbl 01 `"1"', add
label define us10a_eldch_lbl 02 `"2"', add
label define us10a_eldch_lbl 03 `"3"', add
label define us10a_eldch_lbl 04 `"4"', add
label define us10a_eldch_lbl 05 `"5"', add
label define us10a_eldch_lbl 06 `"6"', add
label define us10a_eldch_lbl 07 `"7"', add
label define us10a_eldch_lbl 08 `"8"', add
label define us10a_eldch_lbl 09 `"9"', add
label define us10a_eldch_lbl 10 `"10"', add
label define us10a_eldch_lbl 11 `"11"', add
label define us10a_eldch_lbl 12 `"12"', add
label define us10a_eldch_lbl 13 `"13"', add
label define us10a_eldch_lbl 14 `"14"', add
label define us10a_eldch_lbl 15 `"15"', add
label define us10a_eldch_lbl 16 `"16"', add
label define us10a_eldch_lbl 17 `"17"', add
label define us10a_eldch_lbl 18 `"18"', add
label define us10a_eldch_lbl 19 `"19"', add
label define us10a_eldch_lbl 20 `"20"', add
label define us10a_eldch_lbl 21 `"21"', add
label define us10a_eldch_lbl 22 `"22"', add
label define us10a_eldch_lbl 23 `"23"', add
label define us10a_eldch_lbl 24 `"24"', add
label define us10a_eldch_lbl 25 `"25"', add
label define us10a_eldch_lbl 26 `"26"', add
label define us10a_eldch_lbl 27 `"27"', add
label define us10a_eldch_lbl 28 `"28"', add
label define us10a_eldch_lbl 29 `"29"', add
label define us10a_eldch_lbl 30 `"30"', add
label define us10a_eldch_lbl 31 `"31"', add
label define us10a_eldch_lbl 32 `"32"', add
label define us10a_eldch_lbl 33 `"33"', add
label define us10a_eldch_lbl 34 `"34"', add
label define us10a_eldch_lbl 35 `"35"', add
label define us10a_eldch_lbl 36 `"36"', add
label define us10a_eldch_lbl 37 `"37"', add
label define us10a_eldch_lbl 38 `"38"', add
label define us10a_eldch_lbl 39 `"39"', add
label define us10a_eldch_lbl 40 `"40"', add
label define us10a_eldch_lbl 41 `"41"', add
label define us10a_eldch_lbl 42 `"42"', add
label define us10a_eldch_lbl 43 `"43"', add
label define us10a_eldch_lbl 44 `"44"', add
label define us10a_eldch_lbl 45 `"45"', add
label define us10a_eldch_lbl 46 `"46"', add
label define us10a_eldch_lbl 47 `"47"', add
label define us10a_eldch_lbl 48 `"48"', add
label define us10a_eldch_lbl 49 `"49"', add
label define us10a_eldch_lbl 50 `"50"', add
label define us10a_eldch_lbl 51 `"51"', add
label define us10a_eldch_lbl 52 `"52"', add
label define us10a_eldch_lbl 53 `"53"', add
label define us10a_eldch_lbl 54 `"54"', add
label define us10a_eldch_lbl 55 `"55"', add
label define us10a_eldch_lbl 56 `"56"', add
label define us10a_eldch_lbl 57 `"57"', add
label define us10a_eldch_lbl 58 `"58"', add
label define us10a_eldch_lbl 59 `"59"', add
label define us10a_eldch_lbl 60 `"60"', add
label define us10a_eldch_lbl 61 `"61"', add
label define us10a_eldch_lbl 62 `"62"', add
label define us10a_eldch_lbl 63 `"63"', add
label define us10a_eldch_lbl 64 `"64"', add
label define us10a_eldch_lbl 65 `"65"', add
label define us10a_eldch_lbl 66 `"66"', add
label define us10a_eldch_lbl 67 `"67"', add
label define us10a_eldch_lbl 68 `"68"', add
label define us10a_eldch_lbl 69 `"69"', add
label define us10a_eldch_lbl 70 `"70"', add
label define us10a_eldch_lbl 71 `"71"', add
label define us10a_eldch_lbl 72 `"72"', add
label define us10a_eldch_lbl 73 `"73"', add
label define us10a_eldch_lbl 74 `"74"', add
label define us10a_eldch_lbl 75 `"75"', add
label define us10a_eldch_lbl 76 `"76"', add
label define us10a_eldch_lbl 77 `"77"', add
label define us10a_eldch_lbl 78 `"78"', add
label define us10a_eldch_lbl 79 `"79"', add
label define us10a_eldch_lbl 80 `"80"', add
label define us10a_eldch_lbl 81 `"81"', add
label define us10a_eldch_lbl 82 `"82"', add
label define us10a_eldch_lbl 83 `"83"', add
label define us10a_eldch_lbl 86 `"86"', add
label define us10a_eldch_lbl 87 `"87"', add
label define us10a_eldch_lbl 94 `"94"', add
label define us10a_eldch_lbl 99 `"NIU (not in universe)"', add
label values us10a_eldch us10a_eldch_lbl

label define us10a_yngch_lbl 00 `"Less than 1 year"'
label define us10a_yngch_lbl 01 `"1"', add
label define us10a_yngch_lbl 02 `"2"', add
label define us10a_yngch_lbl 03 `"3"', add
label define us10a_yngch_lbl 04 `"4"', add
label define us10a_yngch_lbl 05 `"5"', add
label define us10a_yngch_lbl 06 `"6"', add
label define us10a_yngch_lbl 07 `"7"', add
label define us10a_yngch_lbl 08 `"8"', add
label define us10a_yngch_lbl 09 `"9"', add
label define us10a_yngch_lbl 10 `"10"', add
label define us10a_yngch_lbl 11 `"11"', add
label define us10a_yngch_lbl 12 `"12"', add
label define us10a_yngch_lbl 13 `"13"', add
label define us10a_yngch_lbl 14 `"14"', add
label define us10a_yngch_lbl 15 `"15"', add
label define us10a_yngch_lbl 16 `"16"', add
label define us10a_yngch_lbl 17 `"17"', add
label define us10a_yngch_lbl 18 `"18"', add
label define us10a_yngch_lbl 19 `"19"', add
label define us10a_yngch_lbl 20 `"20"', add
label define us10a_yngch_lbl 21 `"21"', add
label define us10a_yngch_lbl 22 `"22"', add
label define us10a_yngch_lbl 23 `"23"', add
label define us10a_yngch_lbl 24 `"24"', add
label define us10a_yngch_lbl 25 `"25"', add
label define us10a_yngch_lbl 26 `"26"', add
label define us10a_yngch_lbl 27 `"27"', add
label define us10a_yngch_lbl 28 `"28"', add
label define us10a_yngch_lbl 29 `"29"', add
label define us10a_yngch_lbl 30 `"30"', add
label define us10a_yngch_lbl 31 `"31"', add
label define us10a_yngch_lbl 32 `"32"', add
label define us10a_yngch_lbl 33 `"33"', add
label define us10a_yngch_lbl 34 `"34"', add
label define us10a_yngch_lbl 35 `"35"', add
label define us10a_yngch_lbl 36 `"36"', add
label define us10a_yngch_lbl 37 `"37"', add
label define us10a_yngch_lbl 38 `"38"', add
label define us10a_yngch_lbl 39 `"39"', add
label define us10a_yngch_lbl 40 `"40"', add
label define us10a_yngch_lbl 41 `"41"', add
label define us10a_yngch_lbl 42 `"42"', add
label define us10a_yngch_lbl 43 `"43"', add
label define us10a_yngch_lbl 44 `"44"', add
label define us10a_yngch_lbl 45 `"45"', add
label define us10a_yngch_lbl 46 `"46"', add
label define us10a_yngch_lbl 47 `"47"', add
label define us10a_yngch_lbl 48 `"48"', add
label define us10a_yngch_lbl 49 `"49"', add
label define us10a_yngch_lbl 50 `"50"', add
label define us10a_yngch_lbl 51 `"51"', add
label define us10a_yngch_lbl 52 `"52"', add
label define us10a_yngch_lbl 53 `"53"', add
label define us10a_yngch_lbl 54 `"54"', add
label define us10a_yngch_lbl 55 `"55"', add
label define us10a_yngch_lbl 56 `"56"', add
label define us10a_yngch_lbl 57 `"57"', add
label define us10a_yngch_lbl 58 `"58"', add
label define us10a_yngch_lbl 59 `"59"', add
label define us10a_yngch_lbl 60 `"60"', add
label define us10a_yngch_lbl 61 `"61"', add
label define us10a_yngch_lbl 62 `"62"', add
label define us10a_yngch_lbl 63 `"63"', add
label define us10a_yngch_lbl 64 `"64"', add
label define us10a_yngch_lbl 65 `"65"', add
label define us10a_yngch_lbl 66 `"66"', add
label define us10a_yngch_lbl 67 `"67"', add
label define us10a_yngch_lbl 68 `"68"', add
label define us10a_yngch_lbl 69 `"69"', add
label define us10a_yngch_lbl 70 `"70"', add
label define us10a_yngch_lbl 71 `"71"', add
label define us10a_yngch_lbl 72 `"72"', add
label define us10a_yngch_lbl 73 `"73"', add
label define us10a_yngch_lbl 74 `"74"', add
label define us10a_yngch_lbl 75 `"75"', add
label define us10a_yngch_lbl 76 `"76"', add
label define us10a_yngch_lbl 77 `"77"', add
label define us10a_yngch_lbl 78 `"78"', add
label define us10a_yngch_lbl 79 `"79"', add
label define us10a_yngch_lbl 80 `"80"', add
label define us10a_yngch_lbl 81 `"81"', add
label define us10a_yngch_lbl 83 `"83"', add
label define us10a_yngch_lbl 87 `"87"', add
label define us10a_yngch_lbl 99 `"NIU (not in universe)"', add
label values us10a_yngch us10a_yngch_lbl

label define us10a_nsibs_lbl 0 `"0 siblings"'
label define us10a_nsibs_lbl 1 `"1 sibling"', add
label define us10a_nsibs_lbl 2 `"2 siblings"', add
label define us10a_nsibs_lbl 3 `"3"', add
label define us10a_nsibs_lbl 4 `"4"', add
label define us10a_nsibs_lbl 5 `"5"', add
label define us10a_nsibs_lbl 6 `"6"', add
label define us10a_nsibs_lbl 7 `"7"', add
label define us10a_nsibs_lbl 8 `"8"', add
label define us10a_nsibs_lbl 9 `"9+"', add
label values us10a_nsibs us10a_nsibs_lbl

label define us10a_relate_lbl 0101 `"Head/householder"'
label define us10a_relate_lbl 0201 `"Spouse"', add
label define us10a_relate_lbl 0301 `"Biological Child"', add
label define us10a_relate_lbl 0302 `"Adopted child"', add
label define us10a_relate_lbl 0303 `"Stepchild"', add
label define us10a_relate_lbl 0401 `"Child-in-law"', add
label define us10a_relate_lbl 0501 `"Parent"', add
label define us10a_relate_lbl 0601 `"Parent-in-law"', add
label define us10a_relate_lbl 0701 `"Sibling"', add
label define us10a_relate_lbl 0801 `"Sibling-in-law"', add
label define us10a_relate_lbl 0901 `"Grandchild"', add
label define us10a_relate_lbl 1001 `"Other relatives, not specified"', add
label define us10a_relate_lbl 1114 `"Unmarried partner"', add
label define us10a_relate_lbl 1115 `"Housemate/roommate"', add
label define us10a_relate_lbl 1241 `"Roomer/boarders/lodgers"', add
label define us10a_relate_lbl 1242 `"Foster children"', add
label define us10a_relate_lbl 1260 `"Other non-relatives"', add
label define us10a_relate_lbl 1270 `"Non-inmate"', add
label define us10a_relate_lbl 1301 `"Institutional inmates"', add
label values us10a_relate us10a_relate_lbl

label define us10a_age_lbl 00 `"Less than 1 year old"'
label define us10a_age_lbl 01 `"1"', add
label define us10a_age_lbl 02 `"2"', add
label define us10a_age_lbl 03 `"3"', add
label define us10a_age_lbl 04 `"4"', add
label define us10a_age_lbl 05 `"5"', add
label define us10a_age_lbl 06 `"6"', add
label define us10a_age_lbl 07 `"7"', add
label define us10a_age_lbl 08 `"8"', add
label define us10a_age_lbl 09 `"9"', add
label define us10a_age_lbl 10 `"10"', add
label define us10a_age_lbl 11 `"11"', add
label define us10a_age_lbl 12 `"12"', add
label define us10a_age_lbl 13 `"13"', add
label define us10a_age_lbl 14 `"14"', add
label define us10a_age_lbl 15 `"15"', add
label define us10a_age_lbl 16 `"16"', add
label define us10a_age_lbl 17 `"17"', add
label define us10a_age_lbl 18 `"18"', add
label define us10a_age_lbl 19 `"19"', add
label define us10a_age_lbl 20 `"20"', add
label define us10a_age_lbl 21 `"21"', add
label define us10a_age_lbl 22 `"22"', add
label define us10a_age_lbl 23 `"23"', add
label define us10a_age_lbl 24 `"24"', add
label define us10a_age_lbl 25 `"25"', add
label define us10a_age_lbl 26 `"26"', add
label define us10a_age_lbl 27 `"27"', add
label define us10a_age_lbl 28 `"28"', add
label define us10a_age_lbl 29 `"29"', add
label define us10a_age_lbl 30 `"30"', add
label define us10a_age_lbl 31 `"31"', add
label define us10a_age_lbl 32 `"32"', add
label define us10a_age_lbl 33 `"33"', add
label define us10a_age_lbl 34 `"34"', add
label define us10a_age_lbl 35 `"35"', add
label define us10a_age_lbl 36 `"36"', add
label define us10a_age_lbl 37 `"37"', add
label define us10a_age_lbl 38 `"38"', add
label define us10a_age_lbl 39 `"39"', add
label define us10a_age_lbl 40 `"40"', add
label define us10a_age_lbl 41 `"41"', add
label define us10a_age_lbl 42 `"42"', add
label define us10a_age_lbl 43 `"43"', add
label define us10a_age_lbl 44 `"44"', add
label define us10a_age_lbl 45 `"45"', add
label define us10a_age_lbl 46 `"46"', add
label define us10a_age_lbl 47 `"47"', add
label define us10a_age_lbl 48 `"48"', add
label define us10a_age_lbl 49 `"49"', add
label define us10a_age_lbl 50 `"50"', add
label define us10a_age_lbl 51 `"51"', add
label define us10a_age_lbl 52 `"52"', add
label define us10a_age_lbl 53 `"53"', add
label define us10a_age_lbl 54 `"54"', add
label define us10a_age_lbl 55 `"55"', add
label define us10a_age_lbl 56 `"56"', add
label define us10a_age_lbl 57 `"57"', add
label define us10a_age_lbl 58 `"58"', add
label define us10a_age_lbl 59 `"59"', add
label define us10a_age_lbl 60 `"60"', add
label define us10a_age_lbl 61 `"61"', add
label define us10a_age_lbl 62 `"62"', add
label define us10a_age_lbl 63 `"63"', add
label define us10a_age_lbl 64 `"64"', add
label define us10a_age_lbl 65 `"65"', add
label define us10a_age_lbl 66 `"66"', add
label define us10a_age_lbl 67 `"67"', add
label define us10a_age_lbl 68 `"68"', add
label define us10a_age_lbl 69 `"69"', add
label define us10a_age_lbl 70 `"70"', add
label define us10a_age_lbl 71 `"71"', add
label define us10a_age_lbl 72 `"72"', add
label define us10a_age_lbl 73 `"73"', add
label define us10a_age_lbl 74 `"74"', add
label define us10a_age_lbl 75 `"75"', add
label define us10a_age_lbl 76 `"76"', add
label define us10a_age_lbl 77 `"77"', add
label define us10a_age_lbl 78 `"78"', add
label define us10a_age_lbl 79 `"79"', add
label define us10a_age_lbl 80 `"80"', add
label define us10a_age_lbl 81 `"81"', add
label define us10a_age_lbl 82 `"82"', add
label define us10a_age_lbl 83 `"83"', add
label define us10a_age_lbl 84 `"84"', add
label define us10a_age_lbl 85 `"85"', add
label define us10a_age_lbl 86 `"86"', add
label define us10a_age_lbl 87 `"87"', add
label define us10a_age_lbl 88 `"88"', add
label define us10a_age_lbl 89 `"89"', add
label define us10a_age_lbl 90 `"90"', add
label define us10a_age_lbl 91 `"91"', add
label define us10a_age_lbl 92 `"92"', add
label define us10a_age_lbl 93 `"93"', add
label define us10a_age_lbl 94 `"94"', add
label define us10a_age_lbl 95 `"95"', add
label values us10a_age us10a_age_lbl

label define us10a_sex_lbl 1 `"Male"'
label define us10a_sex_lbl 2 `"Female"', add
label values us10a_sex us10a_sex_lbl

label define us10a_sex_lbl 1 `"Male"'
label define us10a_sex_lbl 2 `"Female"', add
label values us10a_sex us10a_sex_lbl

label define us10a_race_lbl 100 `"White"'
label define us10a_race_lbl 200 `"Black/Negro"', add
label define us10a_race_lbl 301 `"Alaskan Athabaskan"', add
label define us10a_race_lbl 302 `"Apache"', add
label define us10a_race_lbl 303 `"Blackfoot"', add
label define us10a_race_lbl 304 `"Cherokee"', add
label define us10a_race_lbl 305 `"Cheyenne"', add
label define us10a_race_lbl 306 `"Chickasaw"', add
label define us10a_race_lbl 307 `"Chippewa"', add
label define us10a_race_lbl 308 `"Choctaw"', add
label define us10a_race_lbl 309 `"Comanche"', add
label define us10a_race_lbl 310 `"Creek"', add
label define us10a_race_lbl 311 `"Crow"', add
label define us10a_race_lbl 312 `"Iroquois"', add
label define us10a_race_lbl 314 `"Lumbee"', add
label define us10a_race_lbl 315 `"Navajo"', add
label define us10a_race_lbl 317 `"Paiute"', add
label define us10a_race_lbl 318 `"Pima"', add
label define us10a_race_lbl 319 `"Potawatomi"', add
label define us10a_race_lbl 320 `"Pueblo"', add
label define us10a_race_lbl 321 `"Seminole"', add
label define us10a_race_lbl 323 `"Sioux"', add
label define us10a_race_lbl 324 `"Tlingit"', add
label define us10a_race_lbl 325 `"Tohono O'Odham"', add
label define us10a_race_lbl 327 `"American Indian/Alaska Native, tribe not specified"', add
label define us10a_race_lbl 330 `"Aleut"', add
label define us10a_race_lbl 340 `"Eskimo"', add
label define us10a_race_lbl 350 `"Delaware"', add
label define us10a_race_lbl 352 `"Puget Sound Salish"', add
label define us10a_race_lbl 353 `"Yakama"', add
label define us10a_race_lbl 354 `"Yaqui"', add
label define us10a_race_lbl 355 `"Colville"', add
label define us10a_race_lbl 356 `"Houma"', add
label define us10a_race_lbl 357 `"Menominee"', add
label define us10a_race_lbl 358 `"Yuman"', add
label define us10a_race_lbl 390 `"Other specified American Indian tribe"', add
label define us10a_race_lbl 391 `"Two or more American Indian tribes"', add
label define us10a_race_lbl 392 `"Other Alaska Native tribe(s)"', add
label define us10a_race_lbl 393 `"Both American Indian and Alaska Native"', add
label define us10a_race_lbl 400 `"Chinese"', add
label define us10a_race_lbl 500 `"Japanese"', add
label define us10a_race_lbl 600 `"Filipino"', add
label define us10a_race_lbl 610 `"Asian Indian"', add
label define us10a_race_lbl 620 `"Korean"', add
label define us10a_race_lbl 630 `"Native Hawaiian"', add
label define us10a_race_lbl 640 `"Vietnamese"', add
label define us10a_race_lbl 660 `"Cambodian"', add
label define us10a_race_lbl 661 `"Hmong"', add
label define us10a_race_lbl 662 `"Laotian"', add
label define us10a_race_lbl 663 `"Thai"', add
label define us10a_race_lbl 664 `"Bangladeshi"', add
label define us10a_race_lbl 666 `"Indonesian"', add
label define us10a_race_lbl 667 `"Malaysian"', add
label define us10a_race_lbl 669 `"Pakistani"', add
label define us10a_race_lbl 670 `"Sri Lankan"', add
label define us10a_race_lbl 671 `"All other Asian, not elsewhere classified"', add
label define us10a_race_lbl 672 `"Asian, not specified"', add
label define us10a_race_lbl 673 `"Chinese and Japanese"', add
label define us10a_race_lbl 674 `"Chinese and Filipino"', add
label define us10a_race_lbl 675 `"Chinese and Vietnamese"', add
label define us10a_race_lbl 676 `"Chinese and Asian write-in"', add
label define us10a_race_lbl 677 `"Japanese and Filipino"', add
label define us10a_race_lbl 678 `"Asian Indian and Asian write-in"', add
label define us10a_race_lbl 679 `"Other Asian race combinations"', add
label define us10a_race_lbl 680 `"Samoan"', add
label define us10a_race_lbl 682 `"Tongan"', add
label define us10a_race_lbl 684 `"One or more other Polynesian races"', add
label define us10a_race_lbl 685 `"Guamanian/Chamorro"', add
label define us10a_race_lbl 689 `"One or more other Micronesian races"', add
label define us10a_race_lbl 692 `"One or more Melanesian races"', add
label define us10a_race_lbl 698 `"Two or more Pacific Islander races from multiple regions"', add
label define us10a_race_lbl 699 `"Pacific Islander, not specified"', add
label define us10a_race_lbl 700 `"Other race, not elsewhere classified"', add
label define us10a_race_lbl 801 `"White and Black"', add
label define us10a_race_lbl 802 `"White and American Indian/Alaska Native"', add
label define us10a_race_lbl 811 `"White and Chinese"', add
label define us10a_race_lbl 812 `"White and Japanese"', add
label define us10a_race_lbl 813 `"White and Filipino"', add
label define us10a_race_lbl 814 `"White and Asian Indian"', add
label define us10a_race_lbl 815 `"White and Korean"', add
label define us10a_race_lbl 816 `"White and Vietnamese"', add
label define us10a_race_lbl 817 `"White and Asian write-in"', add
label define us10a_race_lbl 819 `"White and two or more Asian groups"', add
label define us10a_race_lbl 821 `"White and Native Hawaiian"', add
label define us10a_race_lbl 822 `"White and Samoan"', add
label define us10a_race_lbl 823 `"White and Guamanian/Chamorro"', add
label define us10a_race_lbl 824 `"White and PI write-in"', add
label define us10a_race_lbl 825 `"White and other Pacific Islander race(s)"', add
label define us10a_race_lbl 826 `"White and 'other race' write-in"', add
label define us10a_race_lbl 830 `"Black and American Indian/Alaska Native"', add
label define us10a_race_lbl 832 `"Black and Chinese"', add
label define us10a_race_lbl 833 `"Black and Japanese"', add
label define us10a_race_lbl 834 `"Black and Filipino"', add
label define us10a_race_lbl 835 `"Black and Asian Indian"', add
label define us10a_race_lbl 836 `"Black and Korean"', add
label define us10a_race_lbl 837 `"Black and Asian write-in"', add
label define us10a_race_lbl 838 `"Black and other Asian race(s)"', add
label define us10a_race_lbl 841 `"Black and Pacific Islander write-in"', add
label define us10a_race_lbl 845 `"Black and 'other race' write-in"', add
label define us10a_race_lbl 854 `"American Indian/Alaska Native and other Asian race(s)"', add
label define us10a_race_lbl 855 `"American Indian/Alaska Native and Pacific Islander"', add
label define us10a_race_lbl 856 `"American Indian/Alaska Native and 'other race' write-in"', add
label define us10a_race_lbl 861 `"Chinese and Native Hawaiian"', add
label define us10a_race_lbl 862 `"Chinese, Filipino, and Native Hawaiian"', add
label define us10a_race_lbl 863 `"Japanese and Native Hawaiian"', add
label define us10a_race_lbl 864 `"Filipino and Native Hawaiian"', add
label define us10a_race_lbl 867 `"Asian write-in and Pacific Islander write-in"', add
label define us10a_race_lbl 881 `"Chinese and 'other race' write-in"', add
label define us10a_race_lbl 882 `"Japanese and 'other race' write-in"', add
label define us10a_race_lbl 883 `"Filipino and 'other race' write-in"', add
label define us10a_race_lbl 884 `"Asian Indian and 'other race' write-in"', add
label define us10a_race_lbl 885 `"Asian write-in and 'other race' write-in"', add
label define us10a_race_lbl 886 `"Other Asian race(s) and 'other race' write-in"', add
label define us10a_race_lbl 892 `"Other Pacific Islander race(s) and 'other race' write-in"', add
label define us10a_race_lbl 901 `"White, Black, and American Indian/Alaska Native"', add
label define us10a_race_lbl 902 `"White and Black and Asian"', add
label define us10a_race_lbl 903 `"White and Black and Pacific Islander"', add
label define us10a_race_lbl 904 `"White and Black and 'other race' write-in"', add
label define us10a_race_lbl 905 `"White and American Indian/Alaska Native and Asian"', add
label define us10a_race_lbl 906 `"White and American Indian/Alaska Native and Pacific Islander"', add
label define us10a_race_lbl 907 `"White and American Indian/Alaska Native and 'other race' write-in"', add
label define us10a_race_lbl 911 `"White and Chinese and Native Hawaiian"', add
label define us10a_race_lbl 912 `"White and Chinese and Filipino and Native Hawaiian"', add
label define us10a_race_lbl 913 `"White and Japanese and Native Hawaiian"', add
label define us10a_race_lbl 914 `"White and Filipino and Native Hawaiian"', add
label define us10a_race_lbl 915 `"Other White and Asian race(s) and Pacific Islander race(s)"', add
label define us10a_race_lbl 923 `"Other White and Asian race(s) and 'other race' write-in"', add
label define us10a_race_lbl 925 `"White and Pacific Islander and 'other race' write-in"', add
label define us10a_race_lbl 930 `"Black and American Indian/Alaska Native and Asian"', add
label define us10a_race_lbl 931 `"Black and American Indian/Alaska Native and Pacific Islander"', add
label define us10a_race_lbl 932 `"Black and American Indian/Alaska Native and 'other race' write-in"', add
label define us10a_race_lbl 933 `"Black and Asian and Pacific Islander"', add
label define us10a_race_lbl 934 `"Black and Asian and 'other race' write-in"', add
label define us10a_race_lbl 935 `"Black and Pacific Islander and 'other race' write-in"', add
label define us10a_race_lbl 940 `"American Indian/Alaska Native and Asian and Pacific Islander"', add
label define us10a_race_lbl 941 `"American Indian/Alaska Native and Asian and 'other race' write-in"', add
label define us10a_race_lbl 942 `"American Indian/Alaska Native and Pacific Islander and 'other race' write-in"', add
label define us10a_race_lbl 943 `"Asian and Pacific Islander and 'other race' write-in"', add
label define us10a_race_lbl 950 `"White and Black and American Indian/Alaska Native and Asian"', add
label define us10a_race_lbl 951 `"White and Black and American Indian/Alaska Native and Pacific Islander"', add
label define us10a_race_lbl 952 `"White and Black and American Indian/Alaska Native and 'other race' write-in"', add
label define us10a_race_lbl 953 `"White and Black and Asian and Pacific Islander"', add
label define us10a_race_lbl 954 `"White and Black and Asian and 'other race' write-in"', add
label define us10a_race_lbl 955 `"White and Black and Pacific Islander and 'other race' write-in"', add
label define us10a_race_lbl 960 `"White and American Indian/Alaska Native and Asian and Pacific Islander"', add
label define us10a_race_lbl 961 `"White and American Indian/Alaska Native and Asian and 'other race' write-in"', add
label define us10a_race_lbl 962 `"White and American Indian/Alaska Native and Pacific Islander and 'other race' write-in"', add
label define us10a_race_lbl 963 `"White and Asian and Pacific Islander and 'other race' write-in"', add
label define us10a_race_lbl 970 `"Black and American Indian/Alaska Native and Asian and Pacific Islander"', add
label define us10a_race_lbl 971 `"Black and American Indian/Alaska Native and Asian and 'other race' write-in"', add
label define us10a_race_lbl 972 `"Black and American Indian/Alaska Native and Pacific Islander and 'other race' write-in"', add
label define us10a_race_lbl 973 `"Black and Asian and Pacific Islander and 'other race' write-in"', add
label define us10a_race_lbl 974 `"American Indian/Alaska Native and Asian and Pacific Islander and 'other race' write-in"', add
label define us10a_race_lbl 980 `"White and Black and American Indian/Alaska Native and Asian and Pacific Islander"', add
label define us10a_race_lbl 981 `"White and Black and American Indian/Alaska Native and Asian and 'other race' write-in"', add
label define us10a_race_lbl 982 `"White and Black and American Indian/Alaska Native and Pacific Islander and 'other race' write-in"', add
label define us10a_race_lbl 984 `"White and American Indian/Alaska Native and Asian and Pacific Islander and 'other race' write-in"', add
label define us10a_race_lbl 990 `"White and Black and American Indian/Alaska Native and Asian and Pacific Islander and 'other race' write-in"', add
label values us10a_race us10a_race_lbl

label define us10a_marst_lbl 1 `"Married, spouse present"'
label define us10a_marst_lbl 2 `"Married, spouse absent"', add
label define us10a_marst_lbl 3 `"Separated"', add
label define us10a_marst_lbl 4 `"Divorced"', add
label define us10a_marst_lbl 5 `"Widowed"', add
label define us10a_marst_lbl 6 `"Never married/single"', add
label values us10a_marst us10a_marst_lbl

label define us10a_marrno_lbl 0 `"NIU (not in universe)"'
label define us10a_marrno_lbl 1 `"Married once"', add
label define us10a_marrno_lbl 2 `"Married twice (or more)"', add
label define us10a_marrno_lbl 3 `"Married thrice (or more)"', add
label values us10a_marrno us10a_marrno_lbl

label define us10a_marrinyr_lbl 0 `"NIU (not in universe)"'
label define us10a_marrinyr_lbl 1 `"No"', add
label define us10a_marrinyr_lbl 2 `"Yes"', add
label values us10a_marrinyr us10a_marrinyr_lbl

label define us10a_bpl_lbl 00100 `"Alabama"'
label define us10a_bpl_lbl 00200 `"Alaska"', add
label define us10a_bpl_lbl 00400 `"Arizona"', add
label define us10a_bpl_lbl 00500 `"Arkansas"', add
label define us10a_bpl_lbl 00600 `"California"', add
label define us10a_bpl_lbl 00800 `"Colorado"', add
label define us10a_bpl_lbl 00900 `"Connecticut"', add
label define us10a_bpl_lbl 01000 `"Delaware"', add
label define us10a_bpl_lbl 01100 `"District of Columbia"', add
label define us10a_bpl_lbl 01200 `"Florida"', add
label define us10a_bpl_lbl 01300 `"Georgia"', add
label define us10a_bpl_lbl 01500 `"Hawaii"', add
label define us10a_bpl_lbl 01600 `"Idaho"', add
label define us10a_bpl_lbl 01700 `"Illinois"', add
label define us10a_bpl_lbl 01800 `"Indiana"', add
label define us10a_bpl_lbl 01900 `"Iowa"', add
label define us10a_bpl_lbl 02000 `"Kansas"', add
label define us10a_bpl_lbl 02100 `"Kentucky"', add
label define us10a_bpl_lbl 02200 `"Louisiana"', add
label define us10a_bpl_lbl 02300 `"Maine"', add
label define us10a_bpl_lbl 02400 `"Maryland"', add
label define us10a_bpl_lbl 02500 `"Massachusetts"', add
label define us10a_bpl_lbl 02600 `"Michigan"', add
label define us10a_bpl_lbl 02700 `"Minnesota"', add
label define us10a_bpl_lbl 02800 `"Mississippi"', add
label define us10a_bpl_lbl 02900 `"Missouri"', add
label define us10a_bpl_lbl 03000 `"Montana"', add
label define us10a_bpl_lbl 03100 `"Nebraska"', add
label define us10a_bpl_lbl 03200 `"Nevada"', add
label define us10a_bpl_lbl 03300 `"New Hampshire"', add
label define us10a_bpl_lbl 03400 `"New Jersey"', add
label define us10a_bpl_lbl 03500 `"New Mexico"', add
label define us10a_bpl_lbl 03600 `"New York"', add
label define us10a_bpl_lbl 03700 `"North Carolina"', add
label define us10a_bpl_lbl 03800 `"North Dakota"', add
label define us10a_bpl_lbl 03900 `"Ohio"', add
label define us10a_bpl_lbl 04000 `"Oklahoma"', add
label define us10a_bpl_lbl 04100 `"Oregon"', add
label define us10a_bpl_lbl 04200 `"Pennsylvania"', add
label define us10a_bpl_lbl 04400 `"Rhode Island"', add
label define us10a_bpl_lbl 04500 `"South Carolina"', add
label define us10a_bpl_lbl 04600 `"South Dakota"', add
label define us10a_bpl_lbl 04700 `"Tennessee"', add
label define us10a_bpl_lbl 04800 `"Texas"', add
label define us10a_bpl_lbl 04900 `"Utah"', add
label define us10a_bpl_lbl 05000 `"Vermont"', add
label define us10a_bpl_lbl 05100 `"Virginia"', add
label define us10a_bpl_lbl 05300 `"Washington"', add
label define us10a_bpl_lbl 05400 `"West Virginia"', add
label define us10a_bpl_lbl 05500 `"Wisconsin"', add
label define us10a_bpl_lbl 05600 `"Wyoming"', add
label define us10a_bpl_lbl 10000 `"American Samoa"', add
label define us10a_bpl_lbl 10010 `"Samoa"', add
label define us10a_bpl_lbl 10500 `"Guam"', add
label define us10a_bpl_lbl 11000 `"Puerto Rico"', add
label define us10a_bpl_lbl 11500 `"U.S. Virgin Islands"', add
label define us10a_bpl_lbl 15000 `"Canada"', add
label define us10a_bpl_lbl 16010 `"Bermuda"', add
label define us10a_bpl_lbl 16020 `"Cape Verde"', add
label define us10a_bpl_lbl 20000 `"Mexico"', add
label define us10a_bpl_lbl 21010 `"Belize/British Honduras"', add
label define us10a_bpl_lbl 21020 `"Costa Rica"', add
label define us10a_bpl_lbl 21030 `"El Salvador"', add
label define us10a_bpl_lbl 21040 `"Guatemala"', add
label define us10a_bpl_lbl 21050 `"Honduras"', add
label define us10a_bpl_lbl 21060 `"Nicaragua"', add
label define us10a_bpl_lbl 21070 `"Panama"', add
label define us10a_bpl_lbl 25000 `"Cuba"', add
label define us10a_bpl_lbl 26010 `"Dominican Republic"', add
label define us10a_bpl_lbl 26020 `"Haiti"', add
label define us10a_bpl_lbl 26030 `"Jamaica"', add
label define us10a_bpl_lbl 26042 `"Antigua-Barbuda"', add
label define us10a_bpl_lbl 26043 `"Bahamas"', add
label define us10a_bpl_lbl 26044 `"Barbados"', add
label define us10a_bpl_lbl 26054 `"Dominica"', add
label define us10a_bpl_lbl 26055 `"Grenada"', add
label define us10a_bpl_lbl 26057 `"St. Kitts-Nevis"', add
label define us10a_bpl_lbl 26058 `"St. Lucia"', add
label define us10a_bpl_lbl 26059 `"St. Vincent"', add
label define us10a_bpl_lbl 26060 `"Trinidad and Tobago"', add
label define us10a_bpl_lbl 26091 `"Caribbean, not specified / not elsewhere classified"', add
label define us10a_bpl_lbl 26094 `"West Indies, not specified"', add
label define us10a_bpl_lbl 29900 `"Americas, not specified"', add
label define us10a_bpl_lbl 30005 `"Argentina"', add
label define us10a_bpl_lbl 30010 `"Bolivia"', add
label define us10a_bpl_lbl 30015 `"Brazil"', add
label define us10a_bpl_lbl 30020 `"Chile"', add
label define us10a_bpl_lbl 30025 `"Colombia"', add
label define us10a_bpl_lbl 30030 `"Ecuador"', add
label define us10a_bpl_lbl 30040 `"Guyana/British Guiana"', add
label define us10a_bpl_lbl 30045 `"Paraguay"', add
label define us10a_bpl_lbl 30050 `"Peru"', add
label define us10a_bpl_lbl 30060 `"Uruguay"', add
label define us10a_bpl_lbl 30065 `"Venezuela"', add
label define us10a_bpl_lbl 30090 `"South America, not specified"', add
label define us10a_bpl_lbl 40000 `"Denmark"', add
label define us10a_bpl_lbl 40100 `"Finland"', add
label define us10a_bpl_lbl 40200 `"Iceland"', add
label define us10a_bpl_lbl 40400 `"Norway"', add
label define us10a_bpl_lbl 40500 `"Sweden"', add
label define us10a_bpl_lbl 41000 `"England"', add
label define us10a_bpl_lbl 41100 `"Scotland"', add
label define us10a_bpl_lbl 41300 `"United Kingdom, not specified/ not elsewhere classified"', add
label define us10a_bpl_lbl 41400 `"Ireland"', add
label define us10a_bpl_lbl 41410 `"Northern Ireland"', add
label define us10a_bpl_lbl 42000 `"Belgium"', add
label define us10a_bpl_lbl 42100 `"France"', add
label define us10a_bpl_lbl 42500 `"Netherlands"', add
label define us10a_bpl_lbl 42600 `"Switzerland"', add
label define us10a_bpl_lbl 43000 `"Albania"', add
label define us10a_bpl_lbl 43300 `"Greece"', add
label define us10a_bpl_lbl 43330 `"Macedonia"', add
label define us10a_bpl_lbl 43400 `"Italy"', add
label define us10a_bpl_lbl 43600 `"Portugal"', add
label define us10a_bpl_lbl 43610 `"Azores"', add
label define us10a_bpl_lbl 43800 `"Spain"', add
label define us10a_bpl_lbl 45000 `"Austria"', add
label define us10a_bpl_lbl 45100 `"Bulgaria"', add
label define us10a_bpl_lbl 45200 `"Czechoslovakia"', add
label define us10a_bpl_lbl 45212 `"Slovakia"', add
label define us10a_bpl_lbl 45213 `"Czech Republic"', add
label define us10a_bpl_lbl 45300 `"Germany"', add
label define us10a_bpl_lbl 45400 `"Hungary"', add
label define us10a_bpl_lbl 45500 `"Poland"', add
label define us10a_bpl_lbl 45600 `"Romania"', add
label define us10a_bpl_lbl 45700 `"Yugoslavia"', add
label define us10a_bpl_lbl 45710 `"Croatia"', add
label define us10a_bpl_lbl 45740 `"Bosnia"', add
label define us10a_bpl_lbl 46000 `"Estonia"', add
label define us10a_bpl_lbl 46100 `"Latvia"', add
label define us10a_bpl_lbl 46200 `"Lithuania"', add
label define us10a_bpl_lbl 46500 `"Other USSR/"', add
label define us10a_bpl_lbl 46510 `"Byelorussia"', add
label define us10a_bpl_lbl 46520 `"Moldavia"', add
label define us10a_bpl_lbl 46530 `"Ukraine"', add
label define us10a_bpl_lbl 46540 `"Armenia"', add
label define us10a_bpl_lbl 46541 `"Azerbaijan"', add
label define us10a_bpl_lbl 46542 `"Republic of Georgia"', add
label define us10a_bpl_lbl 46543 `"Kazakhstan"', add
label define us10a_bpl_lbl 46547 `"Uzbekistan"', add
label define us10a_bpl_lbl 46590 `"USSR, not specified/not elsewhere classified"', add
label define us10a_bpl_lbl 49900 `"Europe, not specified"', add
label define us10a_bpl_lbl 50000 `"China"', add
label define us10a_bpl_lbl 50010 `"Hong Kong"', add
label define us10a_bpl_lbl 50040 `"Taiwan"', add
label define us10a_bpl_lbl 50100 `"Japan"', add
label define us10a_bpl_lbl 50200 `"Korea"', add
label define us10a_bpl_lbl 50900 `"East Asia, not specified"', add
label define us10a_bpl_lbl 51100 `"Cambodia (Kampuchea)"', add
label define us10a_bpl_lbl 51200 `"Indonesia"', add
label define us10a_bpl_lbl 51300 `"Laos"', add
label define us10a_bpl_lbl 51400 `"Malaysia"', add
label define us10a_bpl_lbl 51500 `"Philippines"', add
label define us10a_bpl_lbl 51600 `"Singapore"', add
label define us10a_bpl_lbl 51700 `"Thailand"', add
label define us10a_bpl_lbl 51800 `"Vietnam"', add
label define us10a_bpl_lbl 52000 `"Afghanistan"', add
label define us10a_bpl_lbl 52100 `"India"', add
label define us10a_bpl_lbl 52110 `"Bangladesh"', add
label define us10a_bpl_lbl 52130 `"Burma (Myanmar)"', add
label define us10a_bpl_lbl 52140 `"Pakistan"', add
label define us10a_bpl_lbl 52150 `"Sri Lanka (Ceylon)"', add
label define us10a_bpl_lbl 52200 `"Iran"', add
label define us10a_bpl_lbl 52400 `"Nepal"', add
label define us10a_bpl_lbl 53200 `"Iraq"', add
label define us10a_bpl_lbl 53400 `"Israel/Palestine"', add
label define us10a_bpl_lbl 53500 `"Jordan"', add
label define us10a_bpl_lbl 53600 `"Kuwait"', add
label define us10a_bpl_lbl 53700 `"Lebanon"', add
label define us10a_bpl_lbl 54000 `"Saudi Arabia"', add
label define us10a_bpl_lbl 54100 `"Syria"', add
label define us10a_bpl_lbl 54200 `"Turkey"', add
label define us10a_bpl_lbl 54400 `"Yemen Arab Republic (North)"', add
label define us10a_bpl_lbl 59900 `"Asia, not elsewhere classified/not specified"', add
label define us10a_bpl_lbl 60011 `"Algeria"', add
label define us10a_bpl_lbl 60012 `"Egypt/United Arab Rep."', add
label define us10a_bpl_lbl 60014 `"Morocco"', add
label define us10a_bpl_lbl 60015 `"Sudan"', add
label define us10a_bpl_lbl 60019 `"North Africa, not specified"', add
label define us10a_bpl_lbl 60023 `"Ghana"', add
label define us10a_bpl_lbl 60024 `"Guinea"', add
label define us10a_bpl_lbl 60027 `"Liberia"', add
label define us10a_bpl_lbl 60031 `"Nigeria"', add
label define us10a_bpl_lbl 60032 `"Senegal"', add
label define us10a_bpl_lbl 60033 `"Sierra Leone"', add
label define us10a_bpl_lbl 60038 `"Western Africa, not specified"', add
label define us10a_bpl_lbl 60044 `"Ethiopia"', add
label define us10a_bpl_lbl 60045 `"Kenya"', add
label define us10a_bpl_lbl 60053 `"Somalia"', add
label define us10a_bpl_lbl 60054 `"Tanzania"', add
label define us10a_bpl_lbl 60055 `"Uganda"', add
label define us10a_bpl_lbl 60057 `"Zimbabwe"', add
label define us10a_bpl_lbl 60064 `"Eastern Africa, not elsewhere classified/not specified"', add
label define us10a_bpl_lbl 60065 `"Eritrea"', add
label define us10a_bpl_lbl 60072 `"Cameroon"', add
label define us10a_bpl_lbl 60094 `"South Africa (Union of)"', add
label define us10a_bpl_lbl 60099 `"Africa, not specified/not elsewhere classified"', add
label define us10a_bpl_lbl 70010 `"Australia"', add
label define us10a_bpl_lbl 70020 `"New Zealand"', add
label define us10a_bpl_lbl 71021 `"Fiji"', add
label define us10a_bpl_lbl 71023 `"Tonga"', add
label define us10a_bpl_lbl 71042 `"Micronesia"', add
label define us10a_bpl_lbl 95000 `"Other, not elsewhere classified"', add
label values us10a_bpl us10a_bpl_lbl

label define us10a_bpl_lbl 00100 `"Alabama"'
label define us10a_bpl_lbl 00200 `"Alaska"', add
label define us10a_bpl_lbl 00400 `"Arizona"', add
label define us10a_bpl_lbl 00500 `"Arkansas"', add
label define us10a_bpl_lbl 00600 `"California"', add
label define us10a_bpl_lbl 00800 `"Colorado"', add
label define us10a_bpl_lbl 00900 `"Connecticut"', add
label define us10a_bpl_lbl 01000 `"Delaware"', add
label define us10a_bpl_lbl 01100 `"District of Columbia"', add
label define us10a_bpl_lbl 01200 `"Florida"', add
label define us10a_bpl_lbl 01300 `"Georgia"', add
label define us10a_bpl_lbl 01500 `"Hawaii"', add
label define us10a_bpl_lbl 01600 `"Idaho"', add
label define us10a_bpl_lbl 01700 `"Illinois"', add
label define us10a_bpl_lbl 01800 `"Indiana"', add
label define us10a_bpl_lbl 01900 `"Iowa"', add
label define us10a_bpl_lbl 02000 `"Kansas"', add
label define us10a_bpl_lbl 02100 `"Kentucky"', add
label define us10a_bpl_lbl 02200 `"Louisiana"', add
label define us10a_bpl_lbl 02300 `"Maine"', add
label define us10a_bpl_lbl 02400 `"Maryland"', add
label define us10a_bpl_lbl 02500 `"Massachusetts"', add
label define us10a_bpl_lbl 02600 `"Michigan"', add
label define us10a_bpl_lbl 02700 `"Minnesota"', add
label define us10a_bpl_lbl 02800 `"Mississippi"', add
label define us10a_bpl_lbl 02900 `"Missouri"', add
label define us10a_bpl_lbl 03000 `"Montana"', add
label define us10a_bpl_lbl 03100 `"Nebraska"', add
label define us10a_bpl_lbl 03200 `"Nevada"', add
label define us10a_bpl_lbl 03300 `"New Hampshire"', add
label define us10a_bpl_lbl 03400 `"New Jersey"', add
label define us10a_bpl_lbl 03500 `"New Mexico"', add
label define us10a_bpl_lbl 03600 `"New York"', add
label define us10a_bpl_lbl 03700 `"North Carolina"', add
label define us10a_bpl_lbl 03800 `"North Dakota"', add
label define us10a_bpl_lbl 03900 `"Ohio"', add
label define us10a_bpl_lbl 04000 `"Oklahoma"', add
label define us10a_bpl_lbl 04100 `"Oregon"', add
label define us10a_bpl_lbl 04200 `"Pennsylvania"', add
label define us10a_bpl_lbl 04400 `"Rhode Island"', add
label define us10a_bpl_lbl 04500 `"South Carolina"', add
label define us10a_bpl_lbl 04600 `"South Dakota"', add
label define us10a_bpl_lbl 04700 `"Tennessee"', add
label define us10a_bpl_lbl 04800 `"Texas"', add
label define us10a_bpl_lbl 04900 `"Utah"', add
label define us10a_bpl_lbl 05000 `"Vermont"', add
label define us10a_bpl_lbl 05100 `"Virginia"', add
label define us10a_bpl_lbl 05300 `"Washington"', add
label define us10a_bpl_lbl 05400 `"West Virginia"', add
label define us10a_bpl_lbl 05500 `"Wisconsin"', add
label define us10a_bpl_lbl 05600 `"Wyoming"', add
label define us10a_bpl_lbl 10000 `"American Samoa"', add
label define us10a_bpl_lbl 10010 `"Samoa"', add
label define us10a_bpl_lbl 10500 `"Guam"', add
label define us10a_bpl_lbl 11000 `"Puerto Rico"', add
label define us10a_bpl_lbl 11500 `"U.S. Virgin Islands"', add
label define us10a_bpl_lbl 15000 `"Canada"', add
label define us10a_bpl_lbl 16010 `"Bermuda"', add
label define us10a_bpl_lbl 16020 `"Cape Verde"', add
label define us10a_bpl_lbl 20000 `"Mexico"', add
label define us10a_bpl_lbl 21010 `"Belize/British Honduras"', add
label define us10a_bpl_lbl 21020 `"Costa Rica"', add
label define us10a_bpl_lbl 21030 `"El Salvador"', add
label define us10a_bpl_lbl 21040 `"Guatemala"', add
label define us10a_bpl_lbl 21050 `"Honduras"', add
label define us10a_bpl_lbl 21060 `"Nicaragua"', add
label define us10a_bpl_lbl 21070 `"Panama"', add
label define us10a_bpl_lbl 25000 `"Cuba"', add
label define us10a_bpl_lbl 26010 `"Dominican Republic"', add
label define us10a_bpl_lbl 26020 `"Haiti"', add
label define us10a_bpl_lbl 26030 `"Jamaica"', add
label define us10a_bpl_lbl 26042 `"Antigua-Barbuda"', add
label define us10a_bpl_lbl 26043 `"Bahamas"', add
label define us10a_bpl_lbl 26044 `"Barbados"', add
label define us10a_bpl_lbl 26054 `"Dominica"', add
label define us10a_bpl_lbl 26055 `"Grenada"', add
label define us10a_bpl_lbl 26057 `"St. Kitts-Nevis"', add
label define us10a_bpl_lbl 26058 `"St. Lucia"', add
label define us10a_bpl_lbl 26059 `"St. Vincent"', add
label define us10a_bpl_lbl 26060 `"Trinidad and Tobago"', add
label define us10a_bpl_lbl 26091 `"Caribbean, not specified / not elsewhere classified"', add
label define us10a_bpl_lbl 26094 `"West Indies, not specified"', add
label define us10a_bpl_lbl 29900 `"Americas, not specified"', add
label define us10a_bpl_lbl 30005 `"Argentina"', add
label define us10a_bpl_lbl 30010 `"Bolivia"', add
label define us10a_bpl_lbl 30015 `"Brazil"', add
label define us10a_bpl_lbl 30020 `"Chile"', add
label define us10a_bpl_lbl 30025 `"Colombia"', add
label define us10a_bpl_lbl 30030 `"Ecuador"', add
label define us10a_bpl_lbl 30040 `"Guyana/British Guiana"', add
label define us10a_bpl_lbl 30045 `"Paraguay"', add
label define us10a_bpl_lbl 30050 `"Peru"', add
label define us10a_bpl_lbl 30060 `"Uruguay"', add
label define us10a_bpl_lbl 30065 `"Venezuela"', add
label define us10a_bpl_lbl 30090 `"South America, not specified"', add
label define us10a_bpl_lbl 40000 `"Denmark"', add
label define us10a_bpl_lbl 40100 `"Finland"', add
label define us10a_bpl_lbl 40200 `"Iceland"', add
label define us10a_bpl_lbl 40400 `"Norway"', add
label define us10a_bpl_lbl 40500 `"Sweden"', add
label define us10a_bpl_lbl 41000 `"England"', add
label define us10a_bpl_lbl 41100 `"Scotland"', add
label define us10a_bpl_lbl 41300 `"United Kingdom, not specified/ not elsewhere classified"', add
label define us10a_bpl_lbl 41400 `"Ireland"', add
label define us10a_bpl_lbl 41410 `"Northern Ireland"', add
label define us10a_bpl_lbl 42000 `"Belgium"', add
label define us10a_bpl_lbl 42100 `"France"', add
label define us10a_bpl_lbl 42500 `"Netherlands"', add
label define us10a_bpl_lbl 42600 `"Switzerland"', add
label define us10a_bpl_lbl 43000 `"Albania"', add
label define us10a_bpl_lbl 43300 `"Greece"', add
label define us10a_bpl_lbl 43330 `"Macedonia"', add
label define us10a_bpl_lbl 43400 `"Italy"', add
label define us10a_bpl_lbl 43600 `"Portugal"', add
label define us10a_bpl_lbl 43610 `"Azores"', add
label define us10a_bpl_lbl 43800 `"Spain"', add
label define us10a_bpl_lbl 45000 `"Austria"', add
label define us10a_bpl_lbl 45100 `"Bulgaria"', add
label define us10a_bpl_lbl 45200 `"Czechoslovakia"', add
label define us10a_bpl_lbl 45212 `"Slovakia"', add
label define us10a_bpl_lbl 45213 `"Czech Republic"', add
label define us10a_bpl_lbl 45300 `"Germany"', add
label define us10a_bpl_lbl 45400 `"Hungary"', add
label define us10a_bpl_lbl 45500 `"Poland"', add
label define us10a_bpl_lbl 45600 `"Romania"', add
label define us10a_bpl_lbl 45700 `"Yugoslavia"', add
label define us10a_bpl_lbl 45710 `"Croatia"', add
label define us10a_bpl_lbl 45740 `"Bosnia"', add
label define us10a_bpl_lbl 46000 `"Estonia"', add
label define us10a_bpl_lbl 46100 `"Latvia"', add
label define us10a_bpl_lbl 46200 `"Lithuania"', add
label define us10a_bpl_lbl 46500 `"Other USSR/"', add
label define us10a_bpl_lbl 46510 `"Byelorussia"', add
label define us10a_bpl_lbl 46520 `"Moldavia"', add
label define us10a_bpl_lbl 46530 `"Ukraine"', add
label define us10a_bpl_lbl 46540 `"Armenia"', add
label define us10a_bpl_lbl 46541 `"Azerbaijan"', add
label define us10a_bpl_lbl 46542 `"Republic of Georgia"', add
label define us10a_bpl_lbl 46543 `"Kazakhstan"', add
label define us10a_bpl_lbl 46547 `"Uzbekistan"', add
label define us10a_bpl_lbl 46590 `"USSR, not specified/not elsewhere classified"', add
label define us10a_bpl_lbl 49900 `"Europe, not specified"', add
label define us10a_bpl_lbl 50000 `"China"', add
label define us10a_bpl_lbl 50010 `"Hong Kong"', add
label define us10a_bpl_lbl 50040 `"Taiwan"', add
label define us10a_bpl_lbl 50100 `"Japan"', add
label define us10a_bpl_lbl 50200 `"Korea"', add
label define us10a_bpl_lbl 50900 `"East Asia, not specified"', add
label define us10a_bpl_lbl 51100 `"Cambodia (Kampuchea)"', add
label define us10a_bpl_lbl 51200 `"Indonesia"', add
label define us10a_bpl_lbl 51300 `"Laos"', add
label define us10a_bpl_lbl 51400 `"Malaysia"', add
label define us10a_bpl_lbl 51500 `"Philippines"', add
label define us10a_bpl_lbl 51600 `"Singapore"', add
label define us10a_bpl_lbl 51700 `"Thailand"', add
label define us10a_bpl_lbl 51800 `"Vietnam"', add
label define us10a_bpl_lbl 52000 `"Afghanistan"', add
label define us10a_bpl_lbl 52100 `"India"', add
label define us10a_bpl_lbl 52110 `"Bangladesh"', add
label define us10a_bpl_lbl 52130 `"Burma (Myanmar)"', add
label define us10a_bpl_lbl 52140 `"Pakistan"', add
label define us10a_bpl_lbl 52150 `"Sri Lanka (Ceylon)"', add
label define us10a_bpl_lbl 52200 `"Iran"', add
label define us10a_bpl_lbl 52400 `"Nepal"', add
label define us10a_bpl_lbl 53200 `"Iraq"', add
label define us10a_bpl_lbl 53400 `"Israel/Palestine"', add
label define us10a_bpl_lbl 53500 `"Jordan"', add
label define us10a_bpl_lbl 53600 `"Kuwait"', add
label define us10a_bpl_lbl 53700 `"Lebanon"', add
label define us10a_bpl_lbl 54000 `"Saudi Arabia"', add
label define us10a_bpl_lbl 54100 `"Syria"', add
label define us10a_bpl_lbl 54200 `"Turkey"', add
label define us10a_bpl_lbl 54400 `"Yemen Arab Republic (North)"', add
label define us10a_bpl_lbl 59900 `"Asia, not elsewhere classified/not specified"', add
label define us10a_bpl_lbl 60011 `"Algeria"', add
label define us10a_bpl_lbl 60012 `"Egypt/United Arab Rep."', add
label define us10a_bpl_lbl 60014 `"Morocco"', add
label define us10a_bpl_lbl 60015 `"Sudan"', add
label define us10a_bpl_lbl 60019 `"North Africa, not specified"', add
label define us10a_bpl_lbl 60023 `"Ghana"', add
label define us10a_bpl_lbl 60024 `"Guinea"', add
label define us10a_bpl_lbl 60027 `"Liberia"', add
label define us10a_bpl_lbl 60031 `"Nigeria"', add
label define us10a_bpl_lbl 60032 `"Senegal"', add
label define us10a_bpl_lbl 60033 `"Sierra Leone"', add
label define us10a_bpl_lbl 60038 `"Western Africa, not specified"', add
label define us10a_bpl_lbl 60044 `"Ethiopia"', add
label define us10a_bpl_lbl 60045 `"Kenya"', add
label define us10a_bpl_lbl 60053 `"Somalia"', add
label define us10a_bpl_lbl 60054 `"Tanzania"', add
label define us10a_bpl_lbl 60055 `"Uganda"', add
label define us10a_bpl_lbl 60057 `"Zimbabwe"', add
label define us10a_bpl_lbl 60064 `"Eastern Africa, not elsewhere classified/not specified"', add
label define us10a_bpl_lbl 60065 `"Eritrea"', add
label define us10a_bpl_lbl 60072 `"Cameroon"', add
label define us10a_bpl_lbl 60094 `"South Africa (Union of)"', add
label define us10a_bpl_lbl 60099 `"Africa, not specified/not elsewhere classified"', add
label define us10a_bpl_lbl 70010 `"Australia"', add
label define us10a_bpl_lbl 70020 `"New Zealand"', add
label define us10a_bpl_lbl 71021 `"Fiji"', add
label define us10a_bpl_lbl 71023 `"Tonga"', add
label define us10a_bpl_lbl 71042 `"Micronesia"', add
label define us10a_bpl_lbl 95000 `"Other, not elsewhere classified"', add
label values us10a_bpl us10a_bpl_lbl

label define us10a_ancestr1_lbl 0010 `"Alsatian"'
label define us10a_ancestr1_lbl 0030 `"Austrian"', add
label define us10a_ancestr1_lbl 0053 `"Basque"', add
label define us10a_ancestr1_lbl 0080 `"Belgian"', add
label define us10a_ancestr1_lbl 0090 `"Flemish"', add
label define us10a_ancestr1_lbl 0110 `"British"', add
label define us10a_ancestr1_lbl 0120 `"British Isles"', add
label define us10a_ancestr1_lbl 0200 `"Danish"', add
label define us10a_ancestr1_lbl 0210 `"Dutch"', add
label define us10a_ancestr1_lbl 0220 `"English"', add
label define us10a_ancestr1_lbl 0240 `"Finnish"', add
label define us10a_ancestr1_lbl 0261 `"French"', add
label define us10a_ancestr1_lbl 0321 `"German"', add
label define us10a_ancestr1_lbl 0322 `"Pennsylvania German"', add
label define us10a_ancestr1_lbl 0329 `"Germanic"', add
label define us10a_ancestr1_lbl 0400 `"Prussian"', add
label define us10a_ancestr1_lbl 0460 `"Greek"', add
label define us10a_ancestr1_lbl 0490 `"Icelander"', add
label define us10a_ancestr1_lbl 0500 `"Irish"', add
label define us10a_ancestr1_lbl 0501 `"Celtic"', add
label define us10a_ancestr1_lbl 0502 `"Irish Scotch"', add
label define us10a_ancestr1_lbl 0511 `"Italian"', add
label define us10a_ancestr1_lbl 0680 `"Sicilian"', add
label define us10a_ancestr1_lbl 0770 `"Luxemburger"', add
label define us10a_ancestr1_lbl 0780 `"Maltese"', add
label define us10a_ancestr1_lbl 0820 `"Norwegian"', add
label define us10a_ancestr1_lbl 0840 `"Portuguese"', add
label define us10a_ancestr1_lbl 0870 `"Scotch Irish"', add
label define us10a_ancestr1_lbl 0880 `"Scottish"', add
label define us10a_ancestr1_lbl 0890 `"Swedish"', add
label define us10a_ancestr1_lbl 0910 `"Swiss"', add
label define us10a_ancestr1_lbl 0970 `"Welsh"', add
label define us10a_ancestr1_lbl 0980 `"Scandinavian, Nordic"', add
label define us10a_ancestr1_lbl 1000 `"Albanian"', add
label define us10a_ancestr1_lbl 1020 `"Belorussian"', add
label define us10a_ancestr1_lbl 1030 `"Bulgarian"', add
label define us10a_ancestr1_lbl 1090 `"Croatian"', add
label define us10a_ancestr1_lbl 1110 `"Czechoslovakian"', add
label define us10a_ancestr1_lbl 1111 `"Czech"', add
label define us10a_ancestr1_lbl 1121 `"Bohemian"', add
label define us10a_ancestr1_lbl 1150 `"Estonian"', add
label define us10a_ancestr1_lbl 1200 `"Georgian"', add
label define us10a_ancestr1_lbl 1222 `"German from Russia"', add
label define us10a_ancestr1_lbl 1240 `"Rom"', add
label define us10a_ancestr1_lbl 1250 `"Hungarian"', add
label define us10a_ancestr1_lbl 1280 `"Latvian"', add
label define us10a_ancestr1_lbl 1290 `"Lithuanian"', add
label define us10a_ancestr1_lbl 1300 `"Macedonian"', add
label define us10a_ancestr1_lbl 1420 `"Polish"', add
label define us10a_ancestr1_lbl 1440 `"Romanian"', add
label define us10a_ancestr1_lbl 1480 `"Russian"', add
label define us10a_ancestr1_lbl 1521 `"Serbian"', add
label define us10a_ancestr1_lbl 1522 `"Bosnian,  Herzegovinian"', add
label define us10a_ancestr1_lbl 1530 `"Slovak"', add
label define us10a_ancestr1_lbl 1540 `"Slovene"', add
label define us10a_ancestr1_lbl 1711 `"Ukrainian"', add
label define us10a_ancestr1_lbl 1760 `"Yugoslavian"', add
label define us10a_ancestr1_lbl 1780 `"Slav"', add
label define us10a_ancestr1_lbl 1790 `"Slavonian"', add
label define us10a_ancestr1_lbl 1830 `"Northern European, not elsewhere classified"', add
label define us10a_ancestr1_lbl 1870 `"Western European, not elsewhere classified"', add
label define us10a_ancestr1_lbl 1900 `"Eastern European, not elsewhere classified"', add
label define us10a_ancestr1_lbl 1950 `"European, not elsewhere classified"', add
label define us10a_ancestr1_lbl 2001 `"Spaniard"', add
label define us10a_ancestr1_lbl 2101 `"Mexican"', add
label define us10a_ancestr1_lbl 2102 `"Mexicano/Mexicana"', add
label define us10a_ancestr1_lbl 2103 `"Mexican Indian"', add
label define us10a_ancestr1_lbl 2110 `"Mexican American"', add
label define us10a_ancestr1_lbl 2111 `"Mexican American Indian"', add
label define us10a_ancestr1_lbl 2130 `"Chicano/Chicana"', add
label define us10a_ancestr1_lbl 2183 `"Mexican State"', add
label define us10a_ancestr1_lbl 2210 `"Costa Rican"', add
label define us10a_ancestr1_lbl 2220 `"Guatemalan"', add
label define us10a_ancestr1_lbl 2230 `"Honduran"', add
label define us10a_ancestr1_lbl 2240 `"Nicaraguan"', add
label define us10a_ancestr1_lbl 2251 `"Panamanian"', add
label define us10a_ancestr1_lbl 2260 `"Salvadoran"', add
label define us10a_ancestr1_lbl 2271 `"Central American"', add
label define us10a_ancestr1_lbl 2272 `"Latin American"', add
label define us10a_ancestr1_lbl 2273 `"Latino/Latina"', add
label define us10a_ancestr1_lbl 2274 `"Latin"', add
label define us10a_ancestr1_lbl 2310 `"Argentinean"', add
label define us10a_ancestr1_lbl 2320 `"Bolivian"', add
label define us10a_ancestr1_lbl 2330 `"Chilean"', add
label define us10a_ancestr1_lbl 2340 `"Colombian"', add
label define us10a_ancestr1_lbl 2350 `"Ecuadorian"', add
label define us10a_ancestr1_lbl 2360 `"Paraguayan"', add
label define us10a_ancestr1_lbl 2370 `"Peruvian"', add
label define us10a_ancestr1_lbl 2380 `"Uruguayan"', add
label define us10a_ancestr1_lbl 2390 `"Venezuelan"', add
label define us10a_ancestr1_lbl 2481 `"South American"', add
label define us10a_ancestr1_lbl 2610 `"Puerto Rican"', add
label define us10a_ancestr1_lbl 2710 `"Cuban"', add
label define us10a_ancestr1_lbl 2750 `"Dominican"', add
label define us10a_ancestr1_lbl 2900 `"Hispanic"', add
label define us10a_ancestr1_lbl 2910 `"Spanish"', add
label define us10a_ancestr1_lbl 2950 `"Spanish American"', add
label define us10a_ancestr1_lbl 3000 `"Bahamian"', add
label define us10a_ancestr1_lbl 3010 `"Barbadian"', add
label define us10a_ancestr1_lbl 3020 `"Belizean"', add
label define us10a_ancestr1_lbl 3080 `"Jamaican"', add
label define us10a_ancestr1_lbl 3100 `"Dutch West Indies"', add
label define us10a_ancestr1_lbl 3140 `"Trinidadian/Tobagonian"', add
label define us10a_ancestr1_lbl 3212 `"Antigua"', add
label define us10a_ancestr1_lbl 3220 `"British West Indian"', add
label define us10a_ancestr1_lbl 3245 `"St. Vincent-Grenadine"', add
label define us10a_ancestr1_lbl 3290 `"Grenadian"', add
label define us10a_ancestr1_lbl 3310 `"St. Lucia Islander"', add
label define us10a_ancestr1_lbl 3350 `"West Indian"', add
label define us10a_ancestr1_lbl 3360 `"Haitian"', add
label define us10a_ancestr1_lbl 3370 `"Other West Indian"', add
label define us10a_ancestr1_lbl 3600 `"Brazilian"', add
label define us10a_ancestr1_lbl 3700 `"Guyanese/British Guiana"', add
label define us10a_ancestr1_lbl 4000 `"Algerian"', add
label define us10a_ancestr1_lbl 4020 `"Egyptian"', add
label define us10a_ancestr1_lbl 4060 `"Moroccan"', add
label define us10a_ancestr1_lbl 4160 `"Iranian"', add
label define us10a_ancestr1_lbl 4170 `"Iraqi"', add
label define us10a_ancestr1_lbl 4190 `"Israeli"', add
label define us10a_ancestr1_lbl 4210 `"Jordanian"', add
label define us10a_ancestr1_lbl 4250 `"Lebanese"', add
label define us10a_ancestr1_lbl 4290 `"Syrian"', add
label define us10a_ancestr1_lbl 4310 `"Armenian"', add
label define us10a_ancestr1_lbl 4340 `"Turkish"', add
label define us10a_ancestr1_lbl 4350 `"Yemeni"', add
label define us10a_ancestr1_lbl 4420 `"Kurdish"', add
label define us10a_ancestr1_lbl 4650 `"Palestinian"', add
label define us10a_ancestr1_lbl 4821 `"Assyrian"', add
label define us10a_ancestr1_lbl 4823 `"Chaldean"', add
label define us10a_ancestr1_lbl 4900 `"Middle Eastern"', add
label define us10a_ancestr1_lbl 4950 `"Arab"', add
label define us10a_ancestr1_lbl 4951 `"Arabic"', add
label define us10a_ancestr1_lbl 4960 `"Other Arab"', add
label define us10a_ancestr1_lbl 5080 `"Cameroonian"', add
label define us10a_ancestr1_lbl 5100 `"Cape Verdean"', add
label define us10a_ancestr1_lbl 5220 `"Ethiopian"', add
label define us10a_ancestr1_lbl 5230 `"Eritrean"', add
label define us10a_ancestr1_lbl 5290 `"Ghanian"', add
label define us10a_ancestr1_lbl 5340 `"Kenyan"', add
label define us10a_ancestr1_lbl 5410 `"Liberian"', add
label define us10a_ancestr1_lbl 5530 `"Nigerian"', add
label define us10a_ancestr1_lbl 5640 `"Senegalese"', add
label define us10a_ancestr1_lbl 5660 `"Sierra Leonean"', add
label define us10a_ancestr1_lbl 5680 `"Somalian"', add
label define us10a_ancestr1_lbl 5700 `"South African"', add
label define us10a_ancestr1_lbl 5760 `"Sudanese"', add
label define us10a_ancestr1_lbl 5950 `"Other Subsaharan Africa"', add
label define us10a_ancestr1_lbl 5980 `"West African"', add
label define us10a_ancestr1_lbl 5990 `"African"', add
label define us10a_ancestr1_lbl 6000 `"Afghan"', add
label define us10a_ancestr1_lbl 6031 `"Bangladeshi"', add
label define us10a_ancestr1_lbl 6032 `"Bengali"', add
label define us10a_ancestr1_lbl 6090 `"Nepali"', add
label define us10a_ancestr1_lbl 6151 `"India"', add
label define us10a_ancestr1_lbl 6152 `"East Indian"', add
label define us10a_ancestr1_lbl 6500 `"Punjabi"', add
label define us10a_ancestr1_lbl 6801 `"Pakistani"', add
label define us10a_ancestr1_lbl 6900 `"Sri Lankan"', add
label define us10a_ancestr1_lbl 7000 `"Burmese"', add
label define us10a_ancestr1_lbl 7030 `"Cambodian"', add
label define us10a_ancestr1_lbl 7060 `"Chinese"', add
label define us10a_ancestr1_lbl 7071 `"Cantonese"', add
label define us10a_ancestr1_lbl 7121 `"Mongolian"', add
label define us10a_ancestr1_lbl 7200 `"Filipino"', add
label define us10a_ancestr1_lbl 7301 `"Indonesian"', add
label define us10a_ancestr1_lbl 7401 `"Japanese"', add
label define us10a_ancestr1_lbl 7480 `"Okinawan"', add
label define us10a_ancestr1_lbl 7500 `"Korean"', add
label define us10a_ancestr1_lbl 7650 `"Laotian"', add
label define us10a_ancestr1_lbl 7680 `"Hmong"', add
label define us10a_ancestr1_lbl 7701 `"Malaysian"', add
label define us10a_ancestr1_lbl 7760 `"Thai"', add
label define us10a_ancestr1_lbl 7820 `"Taiwanese"', add
label define us10a_ancestr1_lbl 7850 `"Vietnamese"', add
label define us10a_ancestr1_lbl 7930 `"Eurasian"', add
label define us10a_ancestr1_lbl 7931 `"Amerasian"', add
label define us10a_ancestr1_lbl 7950 `"Asian"', add
label define us10a_ancestr1_lbl 7960 `"Other Asian"', add
label define us10a_ancestr1_lbl 8000 `"Australian"', add
label define us10a_ancestr1_lbl 8030 `"New Zealander"', add
label define us10a_ancestr1_lbl 8080 `"Polynesian"', add
label define us10a_ancestr1_lbl 8110 `"Hawaiian"', add
label define us10a_ancestr1_lbl 8140 `"Samoan"', add
label define us10a_ancestr1_lbl 8150 `"Tongan"', add
label define us10a_ancestr1_lbl 8200 `"Micronesian"', add
label define us10a_ancestr1_lbl 8210 `"Guamanian"', add
label define us10a_ancestr1_lbl 8220 `"Chamorro Islander"', add
label define us10a_ancestr1_lbl 8410 `"Fijian"', add
label define us10a_ancestr1_lbl 8500 `"Pacific Islander"', add
label define us10a_ancestr1_lbl 8700 `"Other Pacific"', add
label define us10a_ancestr1_lbl 9001 `"Afro-American"', add
label define us10a_ancestr1_lbl 9002 `"Black"', add
label define us10a_ancestr1_lbl 9003 `"Negro"', add
label define us10a_ancestr1_lbl 9006 `"Creole"', add
label define us10a_ancestr1_lbl 9008 `"Afro"', add
label define us10a_ancestr1_lbl 9020 `"African-American"', add
label define us10a_ancestr1_lbl 9130 `"Central American Indian"', add
label define us10a_ancestr1_lbl 9140 `"South American Indian"', add
label define us10a_ancestr1_lbl 9200 `"American Indian (all tribes)"', add
label define us10a_ancestr1_lbl 9205 `"Cherokee"', add
label define us10a_ancestr1_lbl 9206 `"Native American"', add
label define us10a_ancestr1_lbl 9207 `"Indian"', add
label define us10a_ancestr1_lbl 9210 `"Aleut"', add
label define us10a_ancestr1_lbl 9220 `"Eskimo"', add
label define us10a_ancestr1_lbl 9241 `"White/Caucasian"', add
label define us10a_ancestr1_lbl 9242 `"Anglo"', add
label define us10a_ancestr1_lbl 9243 `"Appalachian"', add
label define us10a_ancestr1_lbl 9310 `"Canadian"', add
label define us10a_ancestr1_lbl 9350 `"French Canadian"', add
label define us10a_ancestr1_lbl 9361 `"Acadian"', add
label define us10a_ancestr1_lbl 9362 `"Cajun"', add
label define us10a_ancestr1_lbl 9400 `"United States"', add
label define us10a_ancestr1_lbl 9830 `"Texas"', add
label define us10a_ancestr1_lbl 9940 `"North American"', add
label define us10a_ancestr1_lbl 9950 `"Mixture"', add
label define us10a_ancestr1_lbl 9960 `"Uncodable"', add
label define us10a_ancestr1_lbl 9961 `"Not classified"', add
label define us10a_ancestr1_lbl 9980 `"Other"', add
label define us10a_ancestr1_lbl 9990 `"Not reported"', add
label values us10a_ancestr1 us10a_ancestr1_lbl

label define us10a_ancestr2_lbl 0010 `"Alsatian"'
label define us10a_ancestr2_lbl 0030 `"Austrian"', add
label define us10a_ancestr2_lbl 0053 `"Basque"', add
label define us10a_ancestr2_lbl 0080 `"Belgian"', add
label define us10a_ancestr2_lbl 0090 `"Flemish"', add
label define us10a_ancestr2_lbl 0110 `"British"', add
label define us10a_ancestr2_lbl 0120 `"British Isles"', add
label define us10a_ancestr2_lbl 0200 `"Danish"', add
label define us10a_ancestr2_lbl 0210 `"Dutch"', add
label define us10a_ancestr2_lbl 0220 `"English"', add
label define us10a_ancestr2_lbl 0240 `"Finnish"', add
label define us10a_ancestr2_lbl 0261 `"French"', add
label define us10a_ancestr2_lbl 0321 `"German"', add
label define us10a_ancestr2_lbl 0322 `"Pennsylvania German"', add
label define us10a_ancestr2_lbl 0329 `"Germanic"', add
label define us10a_ancestr2_lbl 0400 `"Prussian"', add
label define us10a_ancestr2_lbl 0460 `"Greek"', add
label define us10a_ancestr2_lbl 0490 `"Icelander"', add
label define us10a_ancestr2_lbl 0500 `"Irish"', add
label define us10a_ancestr2_lbl 0501 `"Celtic"', add
label define us10a_ancestr2_lbl 0502 `"Irish Scotch"', add
label define us10a_ancestr2_lbl 0511 `"Italian"', add
label define us10a_ancestr2_lbl 0680 `"Sicilian"', add
label define us10a_ancestr2_lbl 0770 `"Luxemburger"', add
label define us10a_ancestr2_lbl 0780 `"Maltese"', add
label define us10a_ancestr2_lbl 0820 `"Norwegian"', add
label define us10a_ancestr2_lbl 0840 `"Portuguese"', add
label define us10a_ancestr2_lbl 0870 `"Scotch Irish"', add
label define us10a_ancestr2_lbl 0880 `"Scottish"', add
label define us10a_ancestr2_lbl 0890 `"Swedish"', add
label define us10a_ancestr2_lbl 0910 `"Swiss"', add
label define us10a_ancestr2_lbl 0970 `"Welsh"', add
label define us10a_ancestr2_lbl 0980 `"Scandinavian, Nordic"', add
label define us10a_ancestr2_lbl 1000 `"Albanian"', add
label define us10a_ancestr2_lbl 1020 `"Belorussian"', add
label define us10a_ancestr2_lbl 1030 `"Bulgarian"', add
label define us10a_ancestr2_lbl 1090 `"Croatian"', add
label define us10a_ancestr2_lbl 1110 `"Czechoslovakian"', add
label define us10a_ancestr2_lbl 1111 `"Czech"', add
label define us10a_ancestr2_lbl 1121 `"Bohemian"', add
label define us10a_ancestr2_lbl 1150 `"Estonian"', add
label define us10a_ancestr2_lbl 1200 `"Georgian"', add
label define us10a_ancestr2_lbl 1222 `"Germans from Russia"', add
label define us10a_ancestr2_lbl 1240 `"Rom"', add
label define us10a_ancestr2_lbl 1250 `"Hungarian"', add
label define us10a_ancestr2_lbl 1280 `"Latvian"', add
label define us10a_ancestr2_lbl 1290 `"Lithuanian"', add
label define us10a_ancestr2_lbl 1300 `"Macedonian"', add
label define us10a_ancestr2_lbl 1420 `"Polish"', add
label define us10a_ancestr2_lbl 1440 `"Romanian"', add
label define us10a_ancestr2_lbl 1480 `"Russian"', add
label define us10a_ancestr2_lbl 1521 `"Serbian"', add
label define us10a_ancestr2_lbl 1522 `"Bosnian, Herzegovinian"', add
label define us10a_ancestr2_lbl 1530 `"Slovak"', add
label define us10a_ancestr2_lbl 1540 `"Slovene"', add
label define us10a_ancestr2_lbl 1711 `"Ukrainian"', add
label define us10a_ancestr2_lbl 1760 `"Yugoslavian"', add
label define us10a_ancestr2_lbl 1780 `"Slav"', add
label define us10a_ancestr2_lbl 1790 `"Slavonian"', add
label define us10a_ancestr2_lbl 1830 `"Northern European, not elsewhere classified"', add
label define us10a_ancestr2_lbl 1870 `"Western European, not elsewhere classified"', add
label define us10a_ancestr2_lbl 1900 `"Eastern European, not elsewhere classified"', add
label define us10a_ancestr2_lbl 1950 `"European, not elsewhere classified"', add
label define us10a_ancestr2_lbl 2001 `"Spaniard"', add
label define us10a_ancestr2_lbl 2101 `"Mexican"', add
label define us10a_ancestr2_lbl 2102 `"Mexicano/Mexicana"', add
label define us10a_ancestr2_lbl 2103 `"Mexican Indian"', add
label define us10a_ancestr2_lbl 2110 `"Mexican American"', add
label define us10a_ancestr2_lbl 2111 `"Mexican American Indian"', add
label define us10a_ancestr2_lbl 2130 `"Chicano/Chicana"', add
label define us10a_ancestr2_lbl 2183 `"Mexican State"', add
label define us10a_ancestr2_lbl 2210 `"Costa Rican"', add
label define us10a_ancestr2_lbl 2220 `"Guatemalan"', add
label define us10a_ancestr2_lbl 2230 `"Honduran"', add
label define us10a_ancestr2_lbl 2240 `"Nicaraguan"', add
label define us10a_ancestr2_lbl 2251 `"Panamanian"', add
label define us10a_ancestr2_lbl 2260 `"Salvadoran"', add
label define us10a_ancestr2_lbl 2271 `"Central American"', add
label define us10a_ancestr2_lbl 2272 `"Latin American"', add
label define us10a_ancestr2_lbl 2273 `"Latino/Latina"', add
label define us10a_ancestr2_lbl 2274 `"Latin"', add
label define us10a_ancestr2_lbl 2310 `"Argentinean"', add
label define us10a_ancestr2_lbl 2320 `"Bolivian"', add
label define us10a_ancestr2_lbl 2330 `"Chilean"', add
label define us10a_ancestr2_lbl 2340 `"Colombian"', add
label define us10a_ancestr2_lbl 2350 `"Ecuadorian"', add
label define us10a_ancestr2_lbl 2360 `"Paraguayan"', add
label define us10a_ancestr2_lbl 2370 `"Peruvian"', add
label define us10a_ancestr2_lbl 2380 `"Uruguayan"', add
label define us10a_ancestr2_lbl 2390 `"Venezuelan"', add
label define us10a_ancestr2_lbl 2481 `"South American"', add
label define us10a_ancestr2_lbl 2610 `"Puerto Rican"', add
label define us10a_ancestr2_lbl 2710 `"Cuban"', add
label define us10a_ancestr2_lbl 2750 `"Dominican"', add
label define us10a_ancestr2_lbl 2900 `"Hispanic"', add
label define us10a_ancestr2_lbl 2910 `"Spanish"', add
label define us10a_ancestr2_lbl 2950 `"Spanish American"', add
label define us10a_ancestr2_lbl 3000 `"Bahamian"', add
label define us10a_ancestr2_lbl 3010 `"Barbadian"', add
label define us10a_ancestr2_lbl 3020 `"Belizean"', add
label define us10a_ancestr2_lbl 3080 `"Jamaican"', add
label define us10a_ancestr2_lbl 3100 `"Dutch West Indies"', add
label define us10a_ancestr2_lbl 3140 `"Trinidadian/Tobagonian"', add
label define us10a_ancestr2_lbl 3212 `"Antigua"', add
label define us10a_ancestr2_lbl 3220 `"British West Indian"', add
label define us10a_ancestr2_lbl 3245 `"St. Vincent-Grenadine Islander"', add
label define us10a_ancestr2_lbl 3290 `"Grenadian"', add
label define us10a_ancestr2_lbl 3310 `"St. Lucia Islander"', add
label define us10a_ancestr2_lbl 3350 `"West Indian"', add
label define us10a_ancestr2_lbl 3360 `"Haitian"', add
label define us10a_ancestr2_lbl 3370 `"Other West Indian"', add
label define us10a_ancestr2_lbl 3600 `"Brazilian"', add
label define us10a_ancestr2_lbl 3700 `"Guyanese/British Guiana"', add
label define us10a_ancestr2_lbl 4000 `"Algerian"', add
label define us10a_ancestr2_lbl 4020 `"Egyptian"', add
label define us10a_ancestr2_lbl 4060 `"Moroccan"', add
label define us10a_ancestr2_lbl 4160 `"Iranian"', add
label define us10a_ancestr2_lbl 4170 `"Iraqi"', add
label define us10a_ancestr2_lbl 4190 `"Israeli"', add
label define us10a_ancestr2_lbl 4210 `"Jordanian"', add
label define us10a_ancestr2_lbl 4250 `"Lebanese"', add
label define us10a_ancestr2_lbl 4290 `"Syrian"', add
label define us10a_ancestr2_lbl 4310 `"Armenian"', add
label define us10a_ancestr2_lbl 4340 `"Turkish"', add
label define us10a_ancestr2_lbl 4350 `"Yemeni"', add
label define us10a_ancestr2_lbl 4420 `"Kurdish"', add
label define us10a_ancestr2_lbl 4650 `"Palestinian"', add
label define us10a_ancestr2_lbl 4821 `"Assyrian"', add
label define us10a_ancestr2_lbl 4823 `"Chaldean"', add
label define us10a_ancestr2_lbl 4900 `"Middle Eastern"', add
label define us10a_ancestr2_lbl 4950 `"Arab"', add
label define us10a_ancestr2_lbl 4951 `"Arabic"', add
label define us10a_ancestr2_lbl 4960 `"Other Arab"', add
label define us10a_ancestr2_lbl 5080 `"Cameroonian"', add
label define us10a_ancestr2_lbl 5100 `"Cape Verdean"', add
label define us10a_ancestr2_lbl 5220 `"Ethiopian"', add
label define us10a_ancestr2_lbl 5230 `"Eritrean"', add
label define us10a_ancestr2_lbl 5290 `"Ghanian"', add
label define us10a_ancestr2_lbl 5340 `"Kenyan"', add
label define us10a_ancestr2_lbl 5410 `"Liberian"', add
label define us10a_ancestr2_lbl 5530 `"Nigerian"', add
label define us10a_ancestr2_lbl 5640 `"Senegalese"', add
label define us10a_ancestr2_lbl 5660 `"Sierra Leonean"', add
label define us10a_ancestr2_lbl 5680 `"Somalian"', add
label define us10a_ancestr2_lbl 5700 `"South African"', add
label define us10a_ancestr2_lbl 5760 `"Sudanese"', add
label define us10a_ancestr2_lbl 5950 `"Other Subsaharan Africa"', add
label define us10a_ancestr2_lbl 5980 `"West African"', add
label define us10a_ancestr2_lbl 5990 `"African"', add
label define us10a_ancestr2_lbl 6000 `"Afghan"', add
label define us10a_ancestr2_lbl 6031 `"Bangladeshi"', add
label define us10a_ancestr2_lbl 6032 `"Bengali"', add
label define us10a_ancestr2_lbl 6090 `"Nepali"', add
label define us10a_ancestr2_lbl 6151 `"India"', add
label define us10a_ancestr2_lbl 6152 `"East Indian"', add
label define us10a_ancestr2_lbl 6500 `"Punjabi"', add
label define us10a_ancestr2_lbl 6801 `"Pakistani"', add
label define us10a_ancestr2_lbl 6900 `"Sri Lankan"', add
label define us10a_ancestr2_lbl 7000 `"Burmese"', add
label define us10a_ancestr2_lbl 7030 `"Cambodian"', add
label define us10a_ancestr2_lbl 7060 `"Chinese"', add
label define us10a_ancestr2_lbl 7071 `"Cantonese"', add
label define us10a_ancestr2_lbl 7121 `"Mongolian"', add
label define us10a_ancestr2_lbl 7200 `"Filipino"', add
label define us10a_ancestr2_lbl 7301 `"Indonesian"', add
label define us10a_ancestr2_lbl 7401 `"Japanese"', add
label define us10a_ancestr2_lbl 7480 `"Okinawan"', add
label define us10a_ancestr2_lbl 7500 `"Korean"', add
label define us10a_ancestr2_lbl 7650 `"Laotian"', add
label define us10a_ancestr2_lbl 7680 `"Hmong"', add
label define us10a_ancestr2_lbl 7701 `"Malaysian"', add
label define us10a_ancestr2_lbl 7760 `"Thai"', add
label define us10a_ancestr2_lbl 7820 `"Taiwanese"', add
label define us10a_ancestr2_lbl 7850 `"Vietnamese"', add
label define us10a_ancestr2_lbl 7930 `"Eurasian"', add
label define us10a_ancestr2_lbl 7931 `"Amerasia"', add
label define us10a_ancestr2_lbl 7950 `"Asian"', add
label define us10a_ancestr2_lbl 7960 `"Other Asian"', add
label define us10a_ancestr2_lbl 8000 `"Australian"', add
label define us10a_ancestr2_lbl 8030 `"New Zealander"', add
label define us10a_ancestr2_lbl 8080 `"Polynesian"', add
label define us10a_ancestr2_lbl 8110 `"Hawaiian"', add
label define us10a_ancestr2_lbl 8140 `"Samoan"', add
label define us10a_ancestr2_lbl 8150 `"Tongan"', add
label define us10a_ancestr2_lbl 8200 `"Micronesian"', add
label define us10a_ancestr2_lbl 8210 `"Guamanian"', add
label define us10a_ancestr2_lbl 8220 `"Chamorro Islander"', add
label define us10a_ancestr2_lbl 8410 `"Fijian"', add
label define us10a_ancestr2_lbl 8500 `"Pacific Islander"', add
label define us10a_ancestr2_lbl 8700 `"Other Pacific"', add
label define us10a_ancestr2_lbl 9001 `"Afro-American"', add
label define us10a_ancestr2_lbl 9002 `"Black"', add
label define us10a_ancestr2_lbl 9003 `"Negro"', add
label define us10a_ancestr2_lbl 9006 `"Creole"', add
label define us10a_ancestr2_lbl 9008 `"Afro"', add
label define us10a_ancestr2_lbl 9020 `"African-American"', add
label define us10a_ancestr2_lbl 9130 `"Central American Indian"', add
label define us10a_ancestr2_lbl 9140 `"South American Indian"', add
label define us10a_ancestr2_lbl 9200 `"American Indian (all tribes)"', add
label define us10a_ancestr2_lbl 9205 `"Cherokee"', add
label define us10a_ancestr2_lbl 9206 `"Native American"', add
label define us10a_ancestr2_lbl 9207 `"Indian"', add
label define us10a_ancestr2_lbl 9210 `"Aleut"', add
label define us10a_ancestr2_lbl 9220 `"Eskimo"', add
label define us10a_ancestr2_lbl 9241 `"White/Caucasian"', add
label define us10a_ancestr2_lbl 9242 `"Anglo"', add
label define us10a_ancestr2_lbl 9243 `"Appalachian"', add
label define us10a_ancestr2_lbl 9310 `"Canadian"', add
label define us10a_ancestr2_lbl 9350 `"French Canadian"', add
label define us10a_ancestr2_lbl 9361 `"Acadain"', add
label define us10a_ancestr2_lbl 9362 `"Cajun"', add
label define us10a_ancestr2_lbl 9980 `"Other (usually a religion)"', add
label define us10a_ancestr2_lbl 9990 `"Not reported"', add
label values us10a_ancestr2 us10a_ancestr2_lbl

label define us10a_citizen_lbl 0 `"NIU (not in universe)"'
label define us10a_citizen_lbl 1 `"Born abroad of American parents"', add
label define us10a_citizen_lbl 2 `"Naturalized citizen"', add
label define us10a_citizen_lbl 3 `"Not a citizen"', add
label define us10a_citizen_lbl 9 `"Unknown"', add
label values us10a_citizen us10a_citizen_lbl

label define us10a_hispan_lbl 000 `"Not Hispanic"'
label define us10a_hispan_lbl 100 `"Mexican"', add
label define us10a_hispan_lbl 200 `"Puerto Rican"', add
label define us10a_hispan_lbl 300 `"Cuban"', add
label define us10a_hispan_lbl 411 `"Costa Rican"', add
label define us10a_hispan_lbl 412 `"Guatemalan"', add
label define us10a_hispan_lbl 413 `"Honduran"', add
label define us10a_hispan_lbl 414 `"Nicaraguan"', add
label define us10a_hispan_lbl 415 `"Panamanian"', add
label define us10a_hispan_lbl 416 `"Salvadoran"', add
label define us10a_hispan_lbl 417 `"Central American, not elsewhere classified"', add
label define us10a_hispan_lbl 420 `"Argentinean"', add
label define us10a_hispan_lbl 421 `"Bolivian"', add
label define us10a_hispan_lbl 422 `"Chilean"', add
label define us10a_hispan_lbl 423 `"Colombian"', add
label define us10a_hispan_lbl 424 `"Ecuadorian"', add
label define us10a_hispan_lbl 425 `"Paraguayan"', add
label define us10a_hispan_lbl 426 `"Peruvian"', add
label define us10a_hispan_lbl 427 `"Uruguayan"', add
label define us10a_hispan_lbl 428 `"Venezuelan"', add
label define us10a_hispan_lbl 431 `"South American, not elsewhere classified"', add
label define us10a_hispan_lbl 450 `"Spaniard"', add
label define us10a_hispan_lbl 460 `"Dominican"', add
label define us10a_hispan_lbl 498 `"Other, not specified"', add
label values us10a_hispan us10a_hispan_lbl

label define us10a_yrsusa2_lbl 0 `"NIU (not in universe)"'
label define us10a_yrsusa2_lbl 1 `"0 to 5 years"', add
label define us10a_yrsusa2_lbl 2 `"6 to 10 years"', add
label define us10a_yrsusa2_lbl 3 `"11 to 15 years"', add
label define us10a_yrsusa2_lbl 4 `"16 to 20 years"', add
label define us10a_yrsusa2_lbl 5 `"21+ years"', add
label values us10a_yrsusa2 us10a_yrsusa2_lbl

label define us10a_language_lbl 0000 `"NIU (not in universe)"'
label define us10a_language_lbl 0100 `"English"', add
label define us10a_language_lbl 0110 `"Jamaican Creole"', add
label define us10a_language_lbl 0200 `"German"', add
label define us10a_language_lbl 0240 `"Pennsylvania Dutch"', add
label define us10a_language_lbl 0300 `"Yiddish, Jewish"', add
label define us10a_language_lbl 0400 `"Dutch"', add
label define us10a_language_lbl 0420 `"Afrikaans"', add
label define us10a_language_lbl 0500 `"Swedish"', add
label define us10a_language_lbl 0600 `"Danish"', add
label define us10a_language_lbl 0700 `"Norwegian"', add
label define us10a_language_lbl 1000 `"Italian"', add
label define us10a_language_lbl 1100 `"French"', add
label define us10a_language_lbl 1130 `"Patois"', add
label define us10a_language_lbl 1140 `"French or Haitian Creole"', add
label define us10a_language_lbl 1150 `"Cajun"', add
label define us10a_language_lbl 1200 `"Spanish"', add
label define us10a_language_lbl 1300 `"Portuguese"', add
label define us10a_language_lbl 1400 `"Rumanian"', add
label define us10a_language_lbl 1540 `"Irish Gaelic, Gaelic"', add
label define us10a_language_lbl 1600 `"Greek"', add
label define us10a_language_lbl 1700 `"Albanian"', add
label define us10a_language_lbl 1800 `"Russian"', add
label define us10a_language_lbl 1900 `"Ukrainian, Ruthenian, Little Russian"', add
label define us10a_language_lbl 2000 `"Czech"', add
label define us10a_language_lbl 2100 `"Polish"', add
label define us10a_language_lbl 2200 `"Slovak"', add
label define us10a_language_lbl 2300 `"Serbo-Croatian, Yugoslavian, Slavonian"', add
label define us10a_language_lbl 2310 `"Croatian"', add
label define us10a_language_lbl 2320 `"Serbian"', add
label define us10a_language_lbl 2500 `"Lithuanian"', add
label define us10a_language_lbl 2510 `"Lettish"', add
label define us10a_language_lbl 2610 `"Bulgarian"', add
label define us10a_language_lbl 2630 `"Macedonian"', add
label define us10a_language_lbl 2800 `"Armenian"', add
label define us10a_language_lbl 2900 `"Persian, Iranian, Farssi"', add
label define us10a_language_lbl 3010 `"Pashto, Afghan"', add
label define us10a_language_lbl 3020 `"Kurdish"', add
label define us10a_language_lbl 3102 `"Hindi"', add
label define us10a_language_lbl 3103 `"Urdu"', add
label define us10a_language_lbl 3112 `"Bengali"', add
label define us10a_language_lbl 3113 `"Panjabi"', add
label define us10a_language_lbl 3114 `"Marathi"', add
label define us10a_language_lbl 3115 `"Gujarathi"', add
label define us10a_language_lbl 3123 `"Sinhalese"', add
label define us10a_language_lbl 3130 `"Kannada"', add
label define us10a_language_lbl 3140 `"India not elsewhere classified"', add
label define us10a_language_lbl 3150 `"Pakistan not elsewhere classified"', add
label define us10a_language_lbl 3190 `"Other Indo-European languages"', add
label define us10a_language_lbl 3300 `"Finnish"', add
label define us10a_language_lbl 3400 `"Magyar, Hungarian"', add
label define us10a_language_lbl 3600 `"Turkish"', add
label define us10a_language_lbl 4003 `"Telugu"', add
label define us10a_language_lbl 4004 `"Malayalam"', add
label define us10a_language_lbl 4005 `"Tamil"', add
label define us10a_language_lbl 4011 `"Nepali"', add
label define us10a_language_lbl 4300 `"Chinese"', add
label define us10a_language_lbl 4302 `"Cantonese"', add
label define us10a_language_lbl 4303 `"Mandarin"', add
label define us10a_language_lbl 4410 `"Miao-Yao, Mien"', add
label define us10a_language_lbl 4420 `"Miao, Hmong"', add
label define us10a_language_lbl 4500 `"Burmese, Lisu, Lolo"', add
label define us10a_language_lbl 4710 `"Thai"', add
label define us10a_language_lbl 4720 `"Laotian"', add
label define us10a_language_lbl 4800 `"Japanese"', add
label define us10a_language_lbl 4900 `"Korean"', add
label define us10a_language_lbl 5000 `"Vietnamese"', add
label define us10a_language_lbl 5120 `"Mon-Khmer, Cambodian"', add
label define us10a_language_lbl 5200 `"Indonesian"', add
label define us10a_language_lbl 5270 `"Malay"', add
label define us10a_language_lbl 5290 `"Other Asian languages"', add
label define us10a_language_lbl 5310 `"Formosan, Taiwanese"', add
label define us10a_language_lbl 5400 `"Filipino, Tagalog"', add
label define us10a_language_lbl 5410 `"Bisayan"', add
label define us10a_language_lbl 5420 `"Sebuano"', add
label define us10a_language_lbl 5440 `"Llocano, Hocano"', add
label define us10a_language_lbl 5503 `"Chamorro, Guamanian"', add
label define us10a_language_lbl 5522 `"Samoan"', add
label define us10a_language_lbl 5523 `"Tongan"', add
label define us10a_language_lbl 5590 `"Other Pacific Island languages"', add
label define us10a_language_lbl 5600 `"Hawaiian"', add
label define us10a_language_lbl 5700 `"Arabic"', add
label define us10a_language_lbl 5810 `"Syriac, Aramaic, Chaldean"', add
label define us10a_language_lbl 5900 `"Hebrew, Israeli"', add
label define us10a_language_lbl 6000 `"Amharic, Ethiopian, etc."', add
label define us10a_language_lbl 6130 `"Cushite, Beja, Somali"', add
label define us10a_language_lbl 6307 `"Bantu (many subheads)"', add
label define us10a_language_lbl 6308 `"Swahili"', add
label define us10a_language_lbl 6309 `"Mande"', add
label define us10a_language_lbl 6310 `"Fulani"', add
label define us10a_language_lbl 6312 `"Kru"', add
label define us10a_language_lbl 6390 `"Other specified African languages"', add
label define us10a_language_lbl 6400 `"African, not specified"', add
label define us10a_language_lbl 7100 `"Aleut, Eskimo"', add
label define us10a_language_lbl 7420 `"Apache"', add
label define us10a_language_lbl 7490 `"Other Algonquin languages"', add
label define us10a_language_lbl 7500 `"Navajo"', add
label define us10a_language_lbl 7800 `"Zuni"', add
label define us10a_language_lbl 8104 `"Dakota, Lakota, Nakota, Sioux"', add
label define us10a_language_lbl 8300 `"Keres"', add
label define us10a_language_lbl 8480 `"Cherokee"', add
label define us10a_language_lbl 9300 `"American Indian, not specified"', add
label define us10a_language_lbl 9410 `"Other specified American Indian languages"', add
label define us10a_language_lbl 9420 `"South/Central American Indian"', add
label define us10a_language_lbl 9601 `"Other not elsewhere classified"', add
label values us10a_language us10a_language_lbl

label define us10a_speakeng_lbl 0 `"NIU (not in universe)"'
label define us10a_speakeng_lbl 1 `"Does not speak English"', add
label define us10a_speakeng_lbl 3 `"Yes, speaks only English"', add
label define us10a_speakeng_lbl 4 `"Yes, speaks very well"', add
label define us10a_speakeng_lbl 5 `"Yes, speaks well"', add
label define us10a_speakeng_lbl 6 `"Yes, but not well"', add
label values us10a_speakeng us10a_speakeng_lbl

label define us10a_school_lbl 0 `"NIU (not in universe)"'
label define us10a_school_lbl 1 `"No, not in school"', add
label define us10a_school_lbl 2 `"Yes, in school"', add
label values us10a_school us10a_school_lbl

label define us10a_school_lbl 0 `"NIU (not in universe)"'
label define us10a_school_lbl 1 `"No, not in school"', add
label define us10a_school_lbl 2 `"Yes, in school"', add
label values us10a_school us10a_school_lbl

label define us10a_schltype_lbl 0 `"NIU (not in universe)"'
label define us10a_schltype_lbl 1 `"Not enrolled"', add
label define us10a_schltype_lbl 2 `"Public school"', add
label define us10a_schltype_lbl 3 `"Private school"', add
label values us10a_schltype us10a_schltype_lbl

label define us10a_empstat_lbl 00 `"NIU (not in universe)"'
label define us10a_empstat_lbl 10 `"At work"', add
label define us10a_empstat_lbl 12 `"Has job, not working"', add
label define us10a_empstat_lbl 14 `"Armed forces--at work"', add
label define us10a_empstat_lbl 15 `"Armed forces--with job but not at work"', add
label define us10a_empstat_lbl 20 `"Unemployed"', add
label define us10a_empstat_lbl 30 `"Not in labor force"', add
label values us10a_empstat us10a_empstat_lbl

label define us10a_labforce_lbl 0 `"NIU (not in universe)"'
label define us10a_labforce_lbl 1 `"No, not in the labor force"', add
label define us10a_labforce_lbl 2 `"Yes, in the labor force"', add
label values us10a_labforce us10a_labforce_lbl

label define us10a_occ1950_lbl 000 `"Accountants and auditors"'
label define us10a_occ1950_lbl 001 `"Actors and actresses"', add
label define us10a_occ1950_lbl 002 `"Airplane pilots and navigators"', add
label define us10a_occ1950_lbl 003 `"Architects"', add
label define us10a_occ1950_lbl 004 `"Artists and art teachers"', add
label define us10a_occ1950_lbl 006 `"Authors"', add
label define us10a_occ1950_lbl 007 `"Chemists"', add
label define us10a_occ1950_lbl 008 `"Chiropractors"', add
label define us10a_occ1950_lbl 009 `"Clergymen"', add
label define us10a_occ1950_lbl 029 `"Post secondary teachers, subject not specified"', add
label define us10a_occ1950_lbl 031 `"Dancers and dancing teachers"', add
label define us10a_occ1950_lbl 032 `"Dentists"', add
label define us10a_occ1950_lbl 033 `"Designers"', add
label define us10a_occ1950_lbl 034 `"Dietitians and nutritionists"', add
label define us10a_occ1950_lbl 035 `"Draftsmen"', add
label define us10a_occ1950_lbl 036 `"Editors and reporters"', add
label define us10a_occ1950_lbl 041 `"Engineers, aeronautical"', add
label define us10a_occ1950_lbl 042 `"Engineers, chemical"', add
label define us10a_occ1950_lbl 043 `"Engineers, civil"', add
label define us10a_occ1950_lbl 044 `"Engineers, electrical"', add
label define us10a_occ1950_lbl 045 `"Engineers, industrial"', add
label define us10a_occ1950_lbl 046 `"Engineers, mechanical"', add
label define us10a_occ1950_lbl 047 `"Engineers, metallurgical, metallurgists"', add
label define us10a_occ1950_lbl 048 `"Engineers, mining"', add
label define us10a_occ1950_lbl 049 `"Engineers (not elsewhere classified)"', add
label define us10a_occ1950_lbl 051 `"Entertainers (not elsewhere classified)"', add
label define us10a_occ1950_lbl 053 `"Foresters and conservationists"', add
label define us10a_occ1950_lbl 054 `"Funeral directors and embalmers"', add
label define us10a_occ1950_lbl 055 `"Lawyers and judges"', add
label define us10a_occ1950_lbl 056 `"Librarians"', add
label define us10a_occ1950_lbl 057 `"Musicians and music teachers"', add
label define us10a_occ1950_lbl 058 `"Nurses, professional"', add
label define us10a_occ1950_lbl 061 `"Agricultural scientists"', add
label define us10a_occ1950_lbl 062 `"Biological scientists"', add
label define us10a_occ1950_lbl 063 `"Geologists and geophysicists"', add
label define us10a_occ1950_lbl 068 `"Physicists"', add
label define us10a_occ1950_lbl 069 `"Miscellaneous natural scientists"', add
label define us10a_occ1950_lbl 070 `"Optometrists"', add
label define us10a_occ1950_lbl 072 `"Personnel and labor relations workers"', add
label define us10a_occ1950_lbl 073 `"Pharmacists"', add
label define us10a_occ1950_lbl 074 `"Photographers"', add
label define us10a_occ1950_lbl 075 `"Physicians and surgeons"', add
label define us10a_occ1950_lbl 076 `"Radio operators"', add
label define us10a_occ1950_lbl 077 `"Recreation and group workers"', add
label define us10a_occ1950_lbl 078 `"Religious workers"', add
label define us10a_occ1950_lbl 079 `"Social and welfare workers, except group"', add
label define us10a_occ1950_lbl 081 `"Economists"', add
label define us10a_occ1950_lbl 082 `"Psychologists"', add
label define us10a_occ1950_lbl 083 `"Statisticians and actuaries"', add
label define us10a_occ1950_lbl 084 `"Miscellaneous social scientists"', add
label define us10a_occ1950_lbl 091 `"Sports instructors and officials"', add
label define us10a_occ1950_lbl 092 `"Surveyors"', add
label define us10a_occ1950_lbl 093 `"Teachers (not elsewhere classified)"', add
label define us10a_occ1950_lbl 094 `"Technicians, medical and dental"', add
label define us10a_occ1950_lbl 095 `"Technicians, testing"', add
label define us10a_occ1950_lbl 096 `"Technicians (not elsewhere classified)"', add
label define us10a_occ1950_lbl 097 `"Therapists and healers (not elsewhere classified)"', add
label define us10a_occ1950_lbl 098 `"Veterinarians"', add
label define us10a_occ1950_lbl 099 `"Professional, technical and kindred workers (not elsewhere classified)"', add
label define us10a_occ1950_lbl 100 `"Farmers (owners and tenants)"', add
label define us10a_occ1950_lbl 200 `"Buyers and department heads, store"', add
label define us10a_occ1950_lbl 201 `"Buyers and shippers, farm products"', add
label define us10a_occ1950_lbl 203 `"Conductors, railroad"', add
label define us10a_occ1950_lbl 210 `"Inspectors, public administration"', add
label define us10a_occ1950_lbl 230 `"Managers and superintendents, building"', add
label define us10a_occ1950_lbl 240 `"Officers, pilots, pursers and engineers, ship"', add
label define us10a_occ1950_lbl 250 `"Officials and administrators (not elsewhere classified), public administration"', add
label define us10a_occ1950_lbl 280 `"Purchasing agents and buyers (not elsewhere classified)"', add
label define us10a_occ1950_lbl 290 `"Managers, officials, and proprietors (not elsewhere classified)"', add
label define us10a_occ1950_lbl 301 `"Attendants and assistants, library"', add
label define us10a_occ1950_lbl 302 `"Attendants, physician's and dentist's office"', add
label define us10a_occ1950_lbl 305 `"Bank tellers"', add
label define us10a_occ1950_lbl 310 `"Bookkeepers"', add
label define us10a_occ1950_lbl 320 `"Cashiers"', add
label define us10a_occ1950_lbl 321 `"Collectors, bill and account"', add
label define us10a_occ1950_lbl 322 `"Dispatchers and starters, vehicle"', add
label define us10a_occ1950_lbl 335 `"Mail carriers"', add
label define us10a_occ1950_lbl 340 `"Messengers and office boys"', add
label define us10a_occ1950_lbl 341 `"Office machine operators"', add
label define us10a_occ1950_lbl 342 `"Shipping and receiving clerks"', add
label define us10a_occ1950_lbl 350 `"Stenographers, typists, and secretaries"', add
label define us10a_occ1950_lbl 370 `"Telephone operators"', add
label define us10a_occ1950_lbl 380 `"Ticket, station, and express agents"', add
label define us10a_occ1950_lbl 390 `"Clerical and kindred workers (not elsewhere classified)"', add
label define us10a_occ1950_lbl 400 `"Advertising agents and salesmen"', add
label define us10a_occ1950_lbl 420 `"Demonstrators"', add
label define us10a_occ1950_lbl 450 `"Insurance agents and brokers"', add
label define us10a_occ1950_lbl 460 `"Newsboys"', add
label define us10a_occ1950_lbl 470 `"Real estate agents and brokers"', add
label define us10a_occ1950_lbl 480 `"Stock and bond salesmen"', add
label define us10a_occ1950_lbl 490 `"Salesmen and sales clerks (not elsewhere classified)"', add
label define us10a_occ1950_lbl 500 `"Bakers"', add
label define us10a_occ1950_lbl 502 `"Bookbinders"', add
label define us10a_occ1950_lbl 503 `"Boilermakers"', add
label define us10a_occ1950_lbl 504 `"Brickmasons, stonemasons, and tile setters"', add
label define us10a_occ1950_lbl 505 `"Cabinetmakers"', add
label define us10a_occ1950_lbl 510 `"Carpenters"', add
label define us10a_occ1950_lbl 511 `"Cement and concrete finishers"', add
label define us10a_occ1950_lbl 512 `"Compositors and typesetters"', add
label define us10a_occ1950_lbl 513 `"Cranemen, derrickmen, and hoistmen"', add
label define us10a_occ1950_lbl 515 `"Electricians"', add
label define us10a_occ1950_lbl 521 `"Engravers, except photoengravers"', add
label define us10a_occ1950_lbl 522 `"Excavating, grading, and road machinery operators"', add
label define us10a_occ1950_lbl 523 `"Foremen (not elsewhere classified)"', add
label define us10a_occ1950_lbl 524 `"Forgemen and hammermen"', add
label define us10a_occ1950_lbl 530 `"Glaziers"', add
label define us10a_occ1950_lbl 531 `"Heat treaters, annealers, temperers"', add
label define us10a_occ1950_lbl 533 `"Inspectors (not elsewhere classified)"', add
label define us10a_occ1950_lbl 534 `"Jewelers, watchmakers, goldsmiths, and silversmiths"', add
label define us10a_occ1950_lbl 540 `"Linemen and servicemen, telegraph, telephone, and power"', add
label define us10a_occ1950_lbl 541 `"Locomotive engineers"', add
label define us10a_occ1950_lbl 544 `"Machinists"', add
label define us10a_occ1950_lbl 545 `"Mechanics and repairmen, airplane"', add
label define us10a_occ1950_lbl 550 `"Mechanics and repairmen, automobile"', add
label define us10a_occ1950_lbl 551 `"Mechanics and repairmen, office machine"', add
label define us10a_occ1950_lbl 552 `"Mechanics and repairmen, radio and television"', add
label define us10a_occ1950_lbl 554 `"Mechanics and repairmen (not elsewhere classified)"', add
label define us10a_occ1950_lbl 560 `"Millwrights"', add
label define us10a_occ1950_lbl 562 `"Motion picture projectionists"', add
label define us10a_occ1950_lbl 563 `"Opticians and lens grinders and polishers"', add
label define us10a_occ1950_lbl 564 `"Painters, construction and maintenance"', add
label define us10a_occ1950_lbl 565 `"Paperhangers"', add
label define us10a_occ1950_lbl 570 `"Pattern and model makers, except paper"', add
label define us10a_occ1950_lbl 573 `"Plasterers"', add
label define us10a_occ1950_lbl 574 `"Plumbers and pipe fitters"', add
label define us10a_occ1950_lbl 575 `"Pressmen and plate printers, printing"', add
label define us10a_occ1950_lbl 580 `"Rollers and roll hands, metal"', add
label define us10a_occ1950_lbl 581 `"Roofers and slaters"', add
label define us10a_occ1950_lbl 582 `"Shoemakers and repairers, except factory"', add
label define us10a_occ1950_lbl 583 `"Stationary engineers"', add
label define us10a_occ1950_lbl 585 `"Structural metal workers"', add
label define us10a_occ1950_lbl 591 `"Tinsmiths, coppersmiths, and sheet metal workers"', add
label define us10a_occ1950_lbl 592 `"Tool makers, and die makers and setters"', add
label define us10a_occ1950_lbl 593 `"Upholsterers"', add
label define us10a_occ1950_lbl 595 `"Members of the armed services"', add
label define us10a_occ1950_lbl 620 `"Asbestos and insulation workers"', add
label define us10a_occ1950_lbl 621 `"Attendants, auto service and parking"', add
label define us10a_occ1950_lbl 622 `"Blasters and powdermen"', add
label define us10a_occ1950_lbl 624 `"Brakemen, railroad"', add
label define us10a_occ1950_lbl 625 `"Bus drivers"', add
label define us10a_occ1950_lbl 632 `"Deliverymen and routemen"', add
label define us10a_occ1950_lbl 633 `"Dressmakers and seamstresses, except factory"', add
label define us10a_occ1950_lbl 635 `"Filers, grinders, and polishers, metal"', add
label define us10a_occ1950_lbl 643 `"Laundry and dry cleaning operatives"', add
label define us10a_occ1950_lbl 644 `"Meat cutters, except slaughter and packing house"', add
label define us10a_occ1950_lbl 650 `"Mine operatives and laborers"', add
label define us10a_occ1950_lbl 662 `"Oilers and greaser, except auto"', add
label define us10a_occ1950_lbl 670 `"Painters, except construction or maintenance"', add
label define us10a_occ1950_lbl 671 `"Photographic process workers"', add
label define us10a_occ1950_lbl 672 `"Power station operators"', add
label define us10a_occ1950_lbl 673 `"Sailors and deck hands"', add
label define us10a_occ1950_lbl 674 `"Sawyers"', add
label define us10a_occ1950_lbl 680 `"Stationary firemen"', add
label define us10a_occ1950_lbl 682 `"Taxicab drivers and chauffers"', add
label define us10a_occ1950_lbl 683 `"Truck and tractor drivers"', add
label define us10a_occ1950_lbl 684 `"Weavers, textile"', add
label define us10a_occ1950_lbl 685 `"Welders and flame cutters"', add
label define us10a_occ1950_lbl 690 `"Operative and kindred workers (not elsewhere classified)"', add
label define us10a_occ1950_lbl 730 `"Attendants, hospital and other institution"', add
label define us10a_occ1950_lbl 731 `"Attendants, professional and personal service (not elsewhere classified)"', add
label define us10a_occ1950_lbl 732 `"Attendants, recreation and amusement"', add
label define us10a_occ1950_lbl 740 `"Barbers, beauticians, and manicurists"', add
label define us10a_occ1950_lbl 750 `"Bartenders"', add
label define us10a_occ1950_lbl 753 `"Charwomen and cleaners"', add
label define us10a_occ1950_lbl 754 `"Cooks, except private household"', add
label define us10a_occ1950_lbl 760 `"Counter and fountain workers"', add
label define us10a_occ1950_lbl 762 `"Firemen, fire protection"', add
label define us10a_occ1950_lbl 763 `"Guards, watchmen, and doorkeepers"', add
label define us10a_occ1950_lbl 764 `"Housekeepers and stewards, except private household"', add
label define us10a_occ1950_lbl 770 `"Janitors and sextons"', add
label define us10a_occ1950_lbl 773 `"Policemen and detectives"', add
label define us10a_occ1950_lbl 780 `"Porters"', add
label define us10a_occ1950_lbl 781 `"Practical nurses"', add
label define us10a_occ1950_lbl 782 `"Sheriffs and bailiffs"', add
label define us10a_occ1950_lbl 783 `"Ushers, recreation and amusement"', add
label define us10a_occ1950_lbl 784 `"Waiters and waitresses"', add
label define us10a_occ1950_lbl 790 `"Service workers, except private household (not elsewhere classified)"', add
label define us10a_occ1950_lbl 810 `"Farm foremen"', add
label define us10a_occ1950_lbl 820 `"Farm laborers, wage workers"', add
label define us10a_occ1950_lbl 910 `"Fishermen and oystermen"', add
label define us10a_occ1950_lbl 930 `"Gardeners, except farm, and groundskeepers"', add
label define us10a_occ1950_lbl 950 `"Lumbermen, raftsmen, and woodchoppers"', add
label define us10a_occ1950_lbl 970 `"Laborers (not elsewhere classified)"', add
label define us10a_occ1950_lbl 999 `"NIU (not in universe)"', add
label values us10a_occ1950 us10a_occ1950_lbl

label define us10a_occscore_lbl 00 `"NIU (not in universe)"'
label define us10a_occscore_lbl 03 `"3"', add
label define us10a_occscore_lbl 04 `"4"', add
label define us10a_occscore_lbl 08 `"8"', add
label define us10a_occscore_lbl 09 `"9"', add
label define us10a_occscore_lbl 10 `"10"', add
label define us10a_occscore_lbl 11 `"11"', add
label define us10a_occscore_lbl 12 `"12"', add
label define us10a_occscore_lbl 13 `"13"', add
label define us10a_occscore_lbl 14 `"14"', add
label define us10a_occscore_lbl 15 `"15"', add
label define us10a_occscore_lbl 16 `"16"', add
label define us10a_occscore_lbl 17 `"17"', add
label define us10a_occscore_lbl 18 `"18"', add
label define us10a_occscore_lbl 19 `"19"', add
label define us10a_occscore_lbl 20 `"20"', add
label define us10a_occscore_lbl 21 `"21"', add
label define us10a_occscore_lbl 22 `"22"', add
label define us10a_occscore_lbl 23 `"23"', add
label define us10a_occscore_lbl 24 `"24"', add
label define us10a_occscore_lbl 25 `"25"', add
label define us10a_occscore_lbl 26 `"26"', add
label define us10a_occscore_lbl 27 `"27"', add
label define us10a_occscore_lbl 28 `"28"', add
label define us10a_occscore_lbl 29 `"29"', add
label define us10a_occscore_lbl 30 `"30"', add
label define us10a_occscore_lbl 31 `"31"', add
label define us10a_occscore_lbl 32 `"32"', add
label define us10a_occscore_lbl 33 `"33"', add
label define us10a_occscore_lbl 34 `"34"', add
label define us10a_occscore_lbl 35 `"35"', add
label define us10a_occscore_lbl 36 `"36"', add
label define us10a_occscore_lbl 37 `"37"', add
label define us10a_occscore_lbl 38 `"38"', add
label define us10a_occscore_lbl 39 `"39"', add
label define us10a_occscore_lbl 40 `"40"', add
label define us10a_occscore_lbl 41 `"41"', add
label define us10a_occscore_lbl 42 `"42"', add
label define us10a_occscore_lbl 43 `"43"', add
label define us10a_occscore_lbl 45 `"45"', add
label define us10a_occscore_lbl 46 `"46"', add
label define us10a_occscore_lbl 48 `"48"', add
label define us10a_occscore_lbl 49 `"49"', add
label define us10a_occscore_lbl 52 `"52"', add
label define us10a_occscore_lbl 54 `"54"', add
label define us10a_occscore_lbl 62 `"62"', add
label define us10a_occscore_lbl 63 `"63"', add
label define us10a_occscore_lbl 80 `"80"', add
label values us10a_occscore us10a_occscore_lbl

label define us10a_sei_lbl 00 `"NIU (not in universe)"'
label define us10a_sei_lbl 04 `"4"', add
label define us10a_sei_lbl 05 `"5"', add
label define us10a_sei_lbl 06 `"6"', add
label define us10a_sei_lbl 08 `"8"', add
label define us10a_sei_lbl 09 `"9"', add
label define us10a_sei_lbl 10 `"10"', add
label define us10a_sei_lbl 11 `"11"', add
label define us10a_sei_lbl 12 `"12"', add
label define us10a_sei_lbl 13 `"13"', add
label define us10a_sei_lbl 14 `"14"', add
label define us10a_sei_lbl 15 `"15"', add
label define us10a_sei_lbl 16 `"16"', add
label define us10a_sei_lbl 17 `"17"', add
label define us10a_sei_lbl 18 `"18"', add
label define us10a_sei_lbl 19 `"19"', add
label define us10a_sei_lbl 20 `"20"', add
label define us10a_sei_lbl 21 `"21"', add
label define us10a_sei_lbl 22 `"22"', add
label define us10a_sei_lbl 23 `"23"', add
label define us10a_sei_lbl 24 `"24"', add
label define us10a_sei_lbl 25 `"25"', add
label define us10a_sei_lbl 26 `"26"', add
label define us10a_sei_lbl 27 `"27"', add
label define us10a_sei_lbl 28 `"28"', add
label define us10a_sei_lbl 29 `"29"', add
label define us10a_sei_lbl 31 `"31"', add
label define us10a_sei_lbl 32 `"32"', add
label define us10a_sei_lbl 33 `"33"', add
label define us10a_sei_lbl 34 `"34"', add
label define us10a_sei_lbl 35 `"35"', add
label define us10a_sei_lbl 36 `"36"', add
label define us10a_sei_lbl 37 `"37"', add
label define us10a_sei_lbl 38 `"38"', add
label define us10a_sei_lbl 39 `"39"', add
label define us10a_sei_lbl 40 `"40"', add
label define us10a_sei_lbl 41 `"41"', add
label define us10a_sei_lbl 42 `"42"', add
label define us10a_sei_lbl 43 `"43"', add
label define us10a_sei_lbl 44 `"44"', add
label define us10a_sei_lbl 45 `"45"', add
label define us10a_sei_lbl 46 `"46"', add
label define us10a_sei_lbl 47 `"47"', add
label define us10a_sei_lbl 48 `"48"', add
label define us10a_sei_lbl 49 `"49"', add
label define us10a_sei_lbl 50 `"50"', add
label define us10a_sei_lbl 51 `"51"', add
label define us10a_sei_lbl 52 `"52"', add
label define us10a_sei_lbl 53 `"53"', add
label define us10a_sei_lbl 54 `"54"', add
label define us10a_sei_lbl 56 `"56"', add
label define us10a_sei_lbl 58 `"58"', add
label define us10a_sei_lbl 59 `"59"', add
label define us10a_sei_lbl 60 `"60"', add
label define us10a_sei_lbl 61 `"61"', add
label define us10a_sei_lbl 62 `"62"', add
label define us10a_sei_lbl 63 `"63"', add
label define us10a_sei_lbl 64 `"64"', add
label define us10a_sei_lbl 65 `"65"', add
label define us10a_sei_lbl 66 `"66"', add
label define us10a_sei_lbl 67 `"67"', add
label define us10a_sei_lbl 68 `"68"', add
label define us10a_sei_lbl 69 `"69"', add
label define us10a_sei_lbl 72 `"72"', add
label define us10a_sei_lbl 73 `"73"', add
label define us10a_sei_lbl 75 `"75"', add
label define us10a_sei_lbl 76 `"76"', add
label define us10a_sei_lbl 77 `"77"', add
label define us10a_sei_lbl 78 `"78"', add
label define us10a_sei_lbl 79 `"79"', add
label define us10a_sei_lbl 80 `"80"', add
label define us10a_sei_lbl 81 `"81"', add
label define us10a_sei_lbl 82 `"82"', add
label define us10a_sei_lbl 84 `"84"', add
label define us10a_sei_lbl 85 `"85"', add
label define us10a_sei_lbl 86 `"86"', add
label define us10a_sei_lbl 87 `"87"', add
label define us10a_sei_lbl 90 `"90"', add
label define us10a_sei_lbl 92 `"92"', add
label define us10a_sei_lbl 93 `"93"', add
label define us10a_sei_lbl 96 `"96"', add
label values us10a_sei us10a_sei_lbl

label define us10a_ind1950_lbl 000 `"NIU (not in universe)"'
label define us10a_ind1950_lbl 105 `"Agriculture"', add
label define us10a_ind1950_lbl 116 `"Forestry"', add
label define us10a_ind1950_lbl 126 `"Fisheries"', add
label define us10a_ind1950_lbl 206 `"Metal mining"', add
label define us10a_ind1950_lbl 216 `"Coal mining"', add
label define us10a_ind1950_lbl 226 `"Crude petroleum and natural gas extraction"', add
label define us10a_ind1950_lbl 236 `"Nonmetallic mining and quarrying, except fuel"', add
label define us10a_ind1950_lbl 246 `"Construction"', add
label define us10a_ind1950_lbl 306 `"Logging"', add
label define us10a_ind1950_lbl 307 `"Sawmills, planing mills, and mill work"', add
label define us10a_ind1950_lbl 309 `"Furniture and fixtures"', add
label define us10a_ind1950_lbl 316 `"Glass and glass products"', add
label define us10a_ind1950_lbl 317 `"Cement, concrete, gypsum and plaster products"', add
label define us10a_ind1950_lbl 318 `"Structural clay products"', add
label define us10a_ind1950_lbl 319 `"Pottery and related products"', add
label define us10a_ind1950_lbl 326 `"Miscellaneous nonmetallic mineral and stone products"', add
label define us10a_ind1950_lbl 336 `"Blast furnaces, steel works, and rolling mills"', add
label define us10a_ind1950_lbl 337 `"Other primary iron and steel industries"', add
label define us10a_ind1950_lbl 338 `"Primary nonferrous industries"', add
label define us10a_ind1950_lbl 346 `"Fabricated steel products"', add
label define us10a_ind1950_lbl 348 `"Not specified metal industries"', add
label define us10a_ind1950_lbl 356 `"Agricultural machinery and tractors"', add
label define us10a_ind1950_lbl 357 `"Office and store machines and devices"', add
label define us10a_ind1950_lbl 358 `"Miscellaneous machinery"', add
label define us10a_ind1950_lbl 367 `"Electrical machinery, equipment, and supplies"', add
label define us10a_ind1950_lbl 376 `"Motor vehicles and motor vehicle equipment"', add
label define us10a_ind1950_lbl 377 `"Aircraft and parts"', add
label define us10a_ind1950_lbl 378 `"Ship and boat building and repairing"', add
label define us10a_ind1950_lbl 379 `"Railroad and miscellaneous transportation equipment"', add
label define us10a_ind1950_lbl 386 `"Professional equipment and supplies"', add
label define us10a_ind1950_lbl 387 `"Photographic equipment and supplies"', add
label define us10a_ind1950_lbl 399 `"Miscellaneous manufacturing industries"', add
label define us10a_ind1950_lbl 406 `"Meat products"', add
label define us10a_ind1950_lbl 407 `"Dairy products"', add
label define us10a_ind1950_lbl 408 `"Canning and preserving fruits, vegetables, and seafoods"', add
label define us10a_ind1950_lbl 409 `"Grain-mill products"', add
label define us10a_ind1950_lbl 416 `"Bakery products"', add
label define us10a_ind1950_lbl 417 `"Confectionery and related products"', add
label define us10a_ind1950_lbl 418 `"Beverage industries"', add
label define us10a_ind1950_lbl 419 `"Miscellaneous food preparations and kindred products"', add
label define us10a_ind1950_lbl 426 `"Not specified food industries"', add
label define us10a_ind1950_lbl 429 `"Tobacco manufactures"', add
label define us10a_ind1950_lbl 436 `"Knitting mills"', add
label define us10a_ind1950_lbl 437 `"Dyeing and finishing textiles, except knit goods"', add
label define us10a_ind1950_lbl 438 `"Carpets, rugs, and other floor coverings"', add
label define us10a_ind1950_lbl 439 `"Yarn, thread, and fabric mills"', add
label define us10a_ind1950_lbl 448 `"Apparel and accessories"', add
label define us10a_ind1950_lbl 449 `"Miscellaneous fabricated textile products"', add
label define us10a_ind1950_lbl 456 `"Pulp, paper, and paperboard mills"', add
label define us10a_ind1950_lbl 457 `"Paperboard containers and boxes"', add
label define us10a_ind1950_lbl 458 `"Miscellaneous paper and pulp products"', add
label define us10a_ind1950_lbl 459 `"Printing, publishing, and allied industries"', add
label define us10a_ind1950_lbl 467 `"Drugs and medicines"', add
label define us10a_ind1950_lbl 468 `"Paints, varnishes, and related products"', add
label define us10a_ind1950_lbl 469 `"Miscellaneous chemicals and allied products"', add
label define us10a_ind1950_lbl 476 `"Petroleum refining"', add
label define us10a_ind1950_lbl 477 `"Miscellaneous petroleum and coal products"', add
label define us10a_ind1950_lbl 478 `"Rubber products"', add
label define us10a_ind1950_lbl 488 `"Footwear, except rubber"', add
label define us10a_ind1950_lbl 489 `"Leather products, except footwear"', add
label define us10a_ind1950_lbl 506 `"Railroads and railway express service"', add
label define us10a_ind1950_lbl 516 `"Street railways and bus lines"', add
label define us10a_ind1950_lbl 526 `"Trucking service"', add
label define us10a_ind1950_lbl 527 `"Warehousing and storage"', add
label define us10a_ind1950_lbl 536 `"Taxicab service"', add
label define us10a_ind1950_lbl 546 `"Water transportation"', add
label define us10a_ind1950_lbl 556 `"Air transportation"', add
label define us10a_ind1950_lbl 568 `"Services incidental to transportation"', add
label define us10a_ind1950_lbl 578 `"Telephone"', add
label define us10a_ind1950_lbl 586 `"Electric light and power"', add
label define us10a_ind1950_lbl 587 `"Gas and steam supply systems"', add
label define us10a_ind1950_lbl 588 `"Electric-gas utilities"', add
label define us10a_ind1950_lbl 596 `"Water supply"', add
label define us10a_ind1950_lbl 597 `"Sanitary services"', add
label define us10a_ind1950_lbl 598 `"Other and not specified utilities"', add
label define us10a_ind1950_lbl 606 `"Motor vehicles and equipment"', add
label define us10a_ind1950_lbl 607 `"Drugs, chemicals, and allied products"', add
label define us10a_ind1950_lbl 608 `"Dry goods apparel"', add
label define us10a_ind1950_lbl 609 `"Food and related products"', add
label define us10a_ind1950_lbl 616 `"Electrical goods, hardware, and plumbing equipment"', add
label define us10a_ind1950_lbl 617 `"Machinery, equipment, and supplies"', add
label define us10a_ind1950_lbl 618 `"Petroleum products"', add
label define us10a_ind1950_lbl 619 `"Farm products--raw materials"', add
label define us10a_ind1950_lbl 626 `"Miscellaneous wholesale trade"', add
label define us10a_ind1950_lbl 627 `"Not specified wholesale trade"', add
label define us10a_ind1950_lbl 636 `"Food stores, except dairy products"', add
label define us10a_ind1950_lbl 646 `"General merchandise stores"', add
label define us10a_ind1950_lbl 656 `"Apparel and accessories stores, except shoe"', add
label define us10a_ind1950_lbl 657 `"Shoe stores"', add
label define us10a_ind1950_lbl 658 `"Furniture and house furnishing stores"', add
label define us10a_ind1950_lbl 659 `"Household appliance and radio stores"', add
label define us10a_ind1950_lbl 667 `"Motor vehicles and accessories retailing"', add
label define us10a_ind1950_lbl 668 `"Gasoline service stations"', add
label define us10a_ind1950_lbl 669 `"Drug stores"', add
label define us10a_ind1950_lbl 679 `"Eating and drinking places"', add
label define us10a_ind1950_lbl 686 `"Hardware and farm implement stores"', add
label define us10a_ind1950_lbl 687 `"Lumber and building material retailing"', add
label define us10a_ind1950_lbl 688 `"Liquor stores"', add
label define us10a_ind1950_lbl 689 `"Retail florists"', add
label define us10a_ind1950_lbl 696 `"Jewelry stores"', add
label define us10a_ind1950_lbl 697 `"Fuel and ice retailing"', add
label define us10a_ind1950_lbl 698 `"Miscellaneous retail stores"', add
label define us10a_ind1950_lbl 699 `"Not specified retail trade"', add
label define us10a_ind1950_lbl 716 `"Banking and credit agencies"', add
label define us10a_ind1950_lbl 726 `"Security and commodity brokerage and investment companies"', add
label define us10a_ind1950_lbl 736 `"Insurance"', add
label define us10a_ind1950_lbl 746 `"Real estate"', add
label define us10a_ind1950_lbl 806 `"Advertising"', add
label define us10a_ind1950_lbl 807 `"Accounting, auditing, and bookkeeping services"', add
label define us10a_ind1950_lbl 808 `"Miscellaneous business services"', add
label define us10a_ind1950_lbl 816 `"Auto repair services and garages"', add
label define us10a_ind1950_lbl 817 `"Miscellaneous repair services"', add
label define us10a_ind1950_lbl 826 `"Private households"', add
label define us10a_ind1950_lbl 836 `"Hotels and lodging places"', add
label define us10a_ind1950_lbl 846 `"Laundering, cleaning, and dyeing services"', add
label define us10a_ind1950_lbl 849 `"Miscellaneous personal services"', add
label define us10a_ind1950_lbl 856 `"Radio broadcasting and television"', add
label define us10a_ind1950_lbl 857 `"Theaters and motion pictures"', add
label define us10a_ind1950_lbl 858 `"Bowling alleys, and billiard and pool parlors"', add
label define us10a_ind1950_lbl 859 `"Miscellaneous entertainment and recreation services"', add
label define us10a_ind1950_lbl 868 `"Medical and other health services, except hospitals"', add
label define us10a_ind1950_lbl 869 `"Hospitals"', add
label define us10a_ind1950_lbl 879 `"Legal services"', add
label define us10a_ind1950_lbl 888 `"Educational services"', add
label define us10a_ind1950_lbl 896 `"Welfare and religious services"', add
label define us10a_ind1950_lbl 897 `"Nonprofit membership organizations"', add
label define us10a_ind1950_lbl 898 `"Engineering and architectural services"', add
label define us10a_ind1950_lbl 899 `"Miscellaneous professional and related services"', add
label define us10a_ind1950_lbl 906 `"Postal service"', add
label define us10a_ind1950_lbl 916 `"Federal public administration"', add
label define us10a_ind1950_lbl 936 `"Local public administration"', add
label values us10a_ind1950 us10a_ind1950_lbl

label define us10a_classwkr_lbl 00 `"NIU (not in universe)"'
label define us10a_classwkr_lbl 13 `"Self-employed, not incorporated"', add
label define us10a_classwkr_lbl 14 `"Self-employed, incorporated"', add
label define us10a_classwkr_lbl 22 `"Wage/salary, private"', add
label define us10a_classwkr_lbl 23 `"Wage/salary at non-profit"', add
label define us10a_classwkr_lbl 25 `"Federal government employee"', add
label define us10a_classwkr_lbl 27 `"State government employee"', add
label define us10a_classwkr_lbl 28 `"Local government employee"', add
label define us10a_classwkr_lbl 29 `"Unpaid family worker"', add
label values us10a_classwkr us10a_classwkr_lbl

label define us10a_wkswork2_lbl 0 `"NIU (not in universe)"'
label define us10a_wkswork2_lbl 1 `"1-13 weeks"', add
label define us10a_wkswork2_lbl 2 `"14-26 weeks"', add
label define us10a_wkswork2_lbl 3 `"27-39 weeks"', add
label define us10a_wkswork2_lbl 4 `"40-47 weeks"', add
label define us10a_wkswork2_lbl 5 `"48-49 weeks"', add
label define us10a_wkswork2_lbl 6 `"50-52 weeks"', add
label values us10a_wkswork2 us10a_wkswork2_lbl

label define us10a_uhrswork_lbl 00 `"NIU (not in universe)"'
label define us10a_uhrswork_lbl 01 `"1"', add
label define us10a_uhrswork_lbl 02 `"2"', add
label define us10a_uhrswork_lbl 03 `"3"', add
label define us10a_uhrswork_lbl 04 `"4"', add
label define us10a_uhrswork_lbl 05 `"5"', add
label define us10a_uhrswork_lbl 06 `"6"', add
label define us10a_uhrswork_lbl 07 `"7"', add
label define us10a_uhrswork_lbl 08 `"8"', add
label define us10a_uhrswork_lbl 09 `"9"', add
label define us10a_uhrswork_lbl 10 `"10"', add
label define us10a_uhrswork_lbl 11 `"11"', add
label define us10a_uhrswork_lbl 12 `"12"', add
label define us10a_uhrswork_lbl 13 `"13"', add
label define us10a_uhrswork_lbl 14 `"14"', add
label define us10a_uhrswork_lbl 15 `"15"', add
label define us10a_uhrswork_lbl 16 `"16"', add
label define us10a_uhrswork_lbl 17 `"17"', add
label define us10a_uhrswork_lbl 18 `"18"', add
label define us10a_uhrswork_lbl 19 `"19"', add
label define us10a_uhrswork_lbl 20 `"20"', add
label define us10a_uhrswork_lbl 21 `"21"', add
label define us10a_uhrswork_lbl 22 `"22"', add
label define us10a_uhrswork_lbl 23 `"23"', add
label define us10a_uhrswork_lbl 24 `"24"', add
label define us10a_uhrswork_lbl 25 `"25"', add
label define us10a_uhrswork_lbl 26 `"26"', add
label define us10a_uhrswork_lbl 27 `"27"', add
label define us10a_uhrswork_lbl 28 `"28"', add
label define us10a_uhrswork_lbl 29 `"29"', add
label define us10a_uhrswork_lbl 30 `"30"', add
label define us10a_uhrswork_lbl 31 `"31"', add
label define us10a_uhrswork_lbl 32 `"32"', add
label define us10a_uhrswork_lbl 33 `"33"', add
label define us10a_uhrswork_lbl 34 `"34"', add
label define us10a_uhrswork_lbl 35 `"35"', add
label define us10a_uhrswork_lbl 36 `"36"', add
label define us10a_uhrswork_lbl 37 `"37"', add
label define us10a_uhrswork_lbl 38 `"38"', add
label define us10a_uhrswork_lbl 39 `"39"', add
label define us10a_uhrswork_lbl 40 `"40"', add
label define us10a_uhrswork_lbl 41 `"41"', add
label define us10a_uhrswork_lbl 42 `"42"', add
label define us10a_uhrswork_lbl 43 `"43"', add
label define us10a_uhrswork_lbl 44 `"44"', add
label define us10a_uhrswork_lbl 45 `"45"', add
label define us10a_uhrswork_lbl 46 `"46"', add
label define us10a_uhrswork_lbl 47 `"47"', add
label define us10a_uhrswork_lbl 48 `"48"', add
label define us10a_uhrswork_lbl 49 `"49"', add
label define us10a_uhrswork_lbl 50 `"50"', add
label define us10a_uhrswork_lbl 51 `"51"', add
label define us10a_uhrswork_lbl 52 `"52"', add
label define us10a_uhrswork_lbl 53 `"53"', add
label define us10a_uhrswork_lbl 54 `"54"', add
label define us10a_uhrswork_lbl 55 `"55"', add
label define us10a_uhrswork_lbl 56 `"56"', add
label define us10a_uhrswork_lbl 57 `"57"', add
label define us10a_uhrswork_lbl 58 `"58"', add
label define us10a_uhrswork_lbl 59 `"59"', add
label define us10a_uhrswork_lbl 60 `"60"', add
label define us10a_uhrswork_lbl 61 `"61"', add
label define us10a_uhrswork_lbl 62 `"62"', add
label define us10a_uhrswork_lbl 63 `"63"', add
label define us10a_uhrswork_lbl 64 `"64"', add
label define us10a_uhrswork_lbl 65 `"65"', add
label define us10a_uhrswork_lbl 66 `"66"', add
label define us10a_uhrswork_lbl 67 `"67"', add
label define us10a_uhrswork_lbl 68 `"68"', add
label define us10a_uhrswork_lbl 69 `"69"', add
label define us10a_uhrswork_lbl 70 `"70"', add
label define us10a_uhrswork_lbl 71 `"71"', add
label define us10a_uhrswork_lbl 72 `"72"', add
label define us10a_uhrswork_lbl 73 `"73"', add
label define us10a_uhrswork_lbl 74 `"74"', add
label define us10a_uhrswork_lbl 75 `"75"', add
label define us10a_uhrswork_lbl 76 `"76"', add
label define us10a_uhrswork_lbl 77 `"77"', add
label define us10a_uhrswork_lbl 78 `"78"', add
label define us10a_uhrswork_lbl 79 `"79"', add
label define us10a_uhrswork_lbl 80 `"80"', add
label define us10a_uhrswork_lbl 81 `"81"', add
label define us10a_uhrswork_lbl 82 `"82"', add
label define us10a_uhrswork_lbl 83 `"83"', add
label define us10a_uhrswork_lbl 84 `"84"', add
label define us10a_uhrswork_lbl 85 `"85"', add
label define us10a_uhrswork_lbl 86 `"86"', add
label define us10a_uhrswork_lbl 87 `"87"', add
label define us10a_uhrswork_lbl 88 `"88"', add
label define us10a_uhrswork_lbl 89 `"89"', add
label define us10a_uhrswork_lbl 90 `"90"', add
label define us10a_uhrswork_lbl 91 `"91"', add
label define us10a_uhrswork_lbl 92 `"92"', add
label define us10a_uhrswork_lbl 93 `"93"', add
label define us10a_uhrswork_lbl 94 `"94"', add
label define us10a_uhrswork_lbl 95 `"95"', add
label define us10a_uhrswork_lbl 96 `"96"', add
label define us10a_uhrswork_lbl 97 `"97"', add
label define us10a_uhrswork_lbl 98 `"98"', add
label define us10a_uhrswork_lbl 99 `"99+"', add
label values us10a_uhrswork us10a_uhrswork_lbl

label define us10a_yrsusa1_lbl 00 `"Less than 1 year"'
label define us10a_yrsusa1_lbl 01 `"1"', add
label define us10a_yrsusa1_lbl 02 `"2"', add
label define us10a_yrsusa1_lbl 03 `"3"', add
label define us10a_yrsusa1_lbl 04 `"4"', add
label define us10a_yrsusa1_lbl 05 `"5"', add
label define us10a_yrsusa1_lbl 06 `"6"', add
label define us10a_yrsusa1_lbl 07 `"7"', add
label define us10a_yrsusa1_lbl 08 `"8"', add
label define us10a_yrsusa1_lbl 09 `"9"', add
label define us10a_yrsusa1_lbl 10 `"10"', add
label define us10a_yrsusa1_lbl 11 `"11"', add
label define us10a_yrsusa1_lbl 12 `"12"', add
label define us10a_yrsusa1_lbl 13 `"13"', add
label define us10a_yrsusa1_lbl 14 `"14"', add
label define us10a_yrsusa1_lbl 15 `"15"', add
label define us10a_yrsusa1_lbl 16 `"16"', add
label define us10a_yrsusa1_lbl 17 `"17"', add
label define us10a_yrsusa1_lbl 18 `"18"', add
label define us10a_yrsusa1_lbl 19 `"19"', add
label define us10a_yrsusa1_lbl 20 `"20"', add
label define us10a_yrsusa1_lbl 21 `"21"', add
label define us10a_yrsusa1_lbl 22 `"22"', add
label define us10a_yrsusa1_lbl 23 `"23"', add
label define us10a_yrsusa1_lbl 24 `"24"', add
label define us10a_yrsusa1_lbl 25 `"25"', add
label define us10a_yrsusa1_lbl 26 `"26"', add
label define us10a_yrsusa1_lbl 27 `"27"', add
label define us10a_yrsusa1_lbl 28 `"28"', add
label define us10a_yrsusa1_lbl 29 `"29"', add
label define us10a_yrsusa1_lbl 30 `"30"', add
label define us10a_yrsusa1_lbl 31 `"31"', add
label define us10a_yrsusa1_lbl 32 `"32"', add
label define us10a_yrsusa1_lbl 33 `"33"', add
label define us10a_yrsusa1_lbl 34 `"34"', add
label define us10a_yrsusa1_lbl 35 `"35"', add
label define us10a_yrsusa1_lbl 36 `"36"', add
label define us10a_yrsusa1_lbl 37 `"37"', add
label define us10a_yrsusa1_lbl 38 `"38"', add
label define us10a_yrsusa1_lbl 39 `"39"', add
label define us10a_yrsusa1_lbl 40 `"40"', add
label define us10a_yrsusa1_lbl 41 `"41"', add
label define us10a_yrsusa1_lbl 42 `"42"', add
label define us10a_yrsusa1_lbl 43 `"43"', add
label define us10a_yrsusa1_lbl 44 `"44"', add
label define us10a_yrsusa1_lbl 45 `"45"', add
label define us10a_yrsusa1_lbl 46 `"46"', add
label define us10a_yrsusa1_lbl 47 `"47"', add
label define us10a_yrsusa1_lbl 48 `"48"', add
label define us10a_yrsusa1_lbl 49 `"49"', add
label define us10a_yrsusa1_lbl 50 `"50"', add
label define us10a_yrsusa1_lbl 51 `"51"', add
label define us10a_yrsusa1_lbl 52 `"52"', add
label define us10a_yrsusa1_lbl 53 `"53"', add
label define us10a_yrsusa1_lbl 54 `"54"', add
label define us10a_yrsusa1_lbl 55 `"55"', add
label define us10a_yrsusa1_lbl 56 `"56"', add
label define us10a_yrsusa1_lbl 57 `"57"', add
label define us10a_yrsusa1_lbl 58 `"58"', add
label define us10a_yrsusa1_lbl 59 `"59"', add
label define us10a_yrsusa1_lbl 60 `"60"', add
label define us10a_yrsusa1_lbl 61 `"61"', add
label define us10a_yrsusa1_lbl 62 `"62"', add
label define us10a_yrsusa1_lbl 63 `"63"', add
label define us10a_yrsusa1_lbl 64 `"64"', add
label define us10a_yrsusa1_lbl 65 `"65"', add
label define us10a_yrsusa1_lbl 66 `"66"', add
label define us10a_yrsusa1_lbl 67 `"67"', add
label define us10a_yrsusa1_lbl 68 `"68"', add
label define us10a_yrsusa1_lbl 69 `"69"', add
label define us10a_yrsusa1_lbl 70 `"70"', add
label define us10a_yrsusa1_lbl 71 `"71"', add
label define us10a_yrsusa1_lbl 72 `"72"', add
label define us10a_yrsusa1_lbl 73 `"73"', add
label define us10a_yrsusa1_lbl 74 `"74"', add
label define us10a_yrsusa1_lbl 75 `"75"', add
label define us10a_yrsusa1_lbl 77 `"77"', add
label define us10a_yrsusa1_lbl 79 `"79"', add
label define us10a_yrsusa1_lbl 80 `"80"', add
label define us10a_yrsusa1_lbl 81 `"81"', add
label define us10a_yrsusa1_lbl 82 `"82"', add
label define us10a_yrsusa1_lbl 83 `"83"', add
label define us10a_yrsusa1_lbl 84 `"84"', add
label define us10a_yrsusa1_lbl 85 `"85"', add
label define us10a_yrsusa1_lbl 86 `"86"', add
label define us10a_yrsusa1_lbl 87 `"87"', add
label define us10a_yrsusa1_lbl 88 `"88"', add
label define us10a_yrsusa1_lbl 89 `"89"', add
label define us10a_yrsusa1_lbl 90 `"90"', add
label define us10a_yrsusa1_lbl 91 `"91"', add
label define us10a_yrsusa1_lbl 99 `"NIU (not in universe)"', add
label values us10a_yrsusa1 us10a_yrsusa1_lbl

label define us10a_workedyr_lbl 0 `"NIU (not in universe)"'
label define us10a_workedyr_lbl 1 `"No, and did not work in past 5 years"', add
label define us10a_workedyr_lbl 2 `"No, but worked 1-5 years ago"', add
label define us10a_workedyr_lbl 3 `"Yes"', add
label values us10a_workedyr us10a_workedyr_lbl

label define us10a_absent_lbl 0 `"NIU (not in universe)"'
label define us10a_absent_lbl 1 `"No"', add
label define us10a_absent_lbl 3 `"Yes"', add
label define us10a_absent_lbl 4 `"Not reported"', add
label values us10a_absent us10a_absent_lbl

label define us10a_looking_lbl 0 `"NIU (not in universe)"'
label define us10a_looking_lbl 1 `"No, did not look for work"', add
label define us10a_looking_lbl 2 `"Yes, looked for work"', add
label define us10a_looking_lbl 3 `"Not reported"', add
label values us10a_looking us10a_looking_lbl

label define us10a_availble_lbl 0 `"NIU (not in universe)"'
label define us10a_availble_lbl 2 `"No, temporarily ill"', add
label define us10a_availble_lbl 3 `"No, other reason(s)"', add
label define us10a_availble_lbl 4 `"Yes, available for work"', add
label define us10a_availble_lbl 5 `"Not reported"', add
label values us10a_availble us10a_availble_lbl

label define us10a_incwage_lbl 999999 `"NIU (not in universe)"'
label values us10a_incwage us10a_incwage_lbl

label define us10a_poverty_lbl 000 `"NIU (not in universe)"'
label define us10a_poverty_lbl 001 `"1 percent or less of poverty threshold"', add
label define us10a_poverty_lbl 501 `"501 percent or more of poverty threshold"', add
label values us10a_poverty us10a_poverty_lbl

label define us10a_incss_lbl 99999 `"NIU (not in universe)"'
label values us10a_incss us10a_incss_lbl

label define us10a_incwelfr_lbl 99999 `"NIU (not in universe)"'
label values us10a_incwelfr us10a_incwelfr_lbl

label define us10a_incinvst_lbl 999999 `"NIU (not in universe)"'
label values us10a_incinvst us10a_incinvst_lbl

label define us10a_incother_lbl 99999 `"NIU (not in universe)"'
label values us10a_incother us10a_incother_lbl

label define us10a_migrate1_lbl 00 `"NIU (not in universe)"'
label define us10a_migrate1_lbl 10 `"Same house"', add
label define us10a_migrate1_lbl 23 `"Moved within PUMA"', add
label define us10a_migrate1_lbl 24 `"Moved between PUMAs"', add
label define us10a_migrate1_lbl 31 `"Moved between contiguous states"', add
label define us10a_migrate1_lbl 32 `"Moved between non-contiguous states"', add
label define us10a_migrate1_lbl 40 `"Abroad one year ago"', add
label values us10a_migrate1 us10a_migrate1_lbl

label define us10a_migplac1_lbl 000 `"NIU (not in universe)"'
label define us10a_migplac1_lbl 001 `"Alabama"', add
label define us10a_migplac1_lbl 002 `"Alaska"', add
label define us10a_migplac1_lbl 004 `"Arizona"', add
label define us10a_migplac1_lbl 005 `"Arkansas"', add
label define us10a_migplac1_lbl 006 `"California"', add
label define us10a_migplac1_lbl 008 `"Colorado"', add
label define us10a_migplac1_lbl 009 `"Connecticut"', add
label define us10a_migplac1_lbl 010 `"Delaware"', add
label define us10a_migplac1_lbl 011 `"District of Columbia"', add
label define us10a_migplac1_lbl 012 `"Florida"', add
label define us10a_migplac1_lbl 013 `"Georgia"', add
label define us10a_migplac1_lbl 015 `"Hawaii"', add
label define us10a_migplac1_lbl 016 `"Idaho"', add
label define us10a_migplac1_lbl 017 `"Illinois"', add
label define us10a_migplac1_lbl 018 `"Indiana"', add
label define us10a_migplac1_lbl 019 `"Iowa"', add
label define us10a_migplac1_lbl 020 `"Kansas"', add
label define us10a_migplac1_lbl 021 `"Kentucky"', add
label define us10a_migplac1_lbl 022 `"Louisiana"', add
label define us10a_migplac1_lbl 023 `"Maine"', add
label define us10a_migplac1_lbl 024 `"Maryland"', add
label define us10a_migplac1_lbl 025 `"Massachusetts"', add
label define us10a_migplac1_lbl 026 `"Michigan"', add
label define us10a_migplac1_lbl 027 `"Minnesota"', add
label define us10a_migplac1_lbl 028 `"Mississippi"', add
label define us10a_migplac1_lbl 029 `"Missouri"', add
label define us10a_migplac1_lbl 030 `"Montana"', add
label define us10a_migplac1_lbl 031 `"Nebraska"', add
label define us10a_migplac1_lbl 032 `"Nevada"', add
label define us10a_migplac1_lbl 033 `"New Hampshire"', add
label define us10a_migplac1_lbl 034 `"New Jersey"', add
label define us10a_migplac1_lbl 035 `"New Mexico"', add
label define us10a_migplac1_lbl 036 `"New York"', add
label define us10a_migplac1_lbl 037 `"North Carolina"', add
label define us10a_migplac1_lbl 038 `"North Dakota"', add
label define us10a_migplac1_lbl 039 `"Ohio"', add
label define us10a_migplac1_lbl 040 `"Oklahoma"', add
label define us10a_migplac1_lbl 041 `"Oregon"', add
label define us10a_migplac1_lbl 042 `"Pennsylvania"', add
label define us10a_migplac1_lbl 044 `"Rhode Island"', add
label define us10a_migplac1_lbl 045 `"South Carolina"', add
label define us10a_migplac1_lbl 046 `"South Dakota"', add
label define us10a_migplac1_lbl 047 `"Tennessee"', add
label define us10a_migplac1_lbl 048 `"Texas"', add
label define us10a_migplac1_lbl 049 `"Utah"', add
label define us10a_migplac1_lbl 050 `"Vermont"', add
label define us10a_migplac1_lbl 051 `"Virginia"', add
label define us10a_migplac1_lbl 053 `"Washington"', add
label define us10a_migplac1_lbl 054 `"West Virginia"', add
label define us10a_migplac1_lbl 055 `"Wisconsin"', add
label define us10a_migplac1_lbl 056 `"Wyoming"', add
label define us10a_migplac1_lbl 110 `"Puerto Rico"', add
label define us10a_migplac1_lbl 120 `"Other US Possessions"', add
label define us10a_migplac1_lbl 150 `"Canada"', add
label define us10a_migplac1_lbl 200 `"Mexico"', add
label define us10a_migplac1_lbl 213 `"El Salvador"', add
label define us10a_migplac1_lbl 214 `"Guatemala"', add
label define us10a_migplac1_lbl 215 `"Honduras"', add
label define us10a_migplac1_lbl 219 `"Central America, not elsewhere classified"', add
label define us10a_migplac1_lbl 250 `"Cuba"', add
label define us10a_migplac1_lbl 261 `"Dominican Republic"', add
label define us10a_migplac1_lbl 263 `"Jamaica"', add
label define us10a_migplac1_lbl 290 `"Other Caribbean and North America"', add
label define us10a_migplac1_lbl 315 `"Brazil"', add
label define us10a_migplac1_lbl 325 `"Colombia"', add
label define us10a_migplac1_lbl 350 `"Peru"', add
label define us10a_migplac1_lbl 390 `"South America, not elsewhere classified"', add
label define us10a_migplac1_lbl 410 `"England"', add
label define us10a_migplac1_lbl 413 `"United Kingdom"', add
label define us10a_migplac1_lbl 419 `"Other Northern Europe"', add
label define us10a_migplac1_lbl 421 `"France"', add
label define us10a_migplac1_lbl 429 `"Other Western Europe"', add
label define us10a_migplac1_lbl 435 `"Italy"', add
label define us10a_migplac1_lbl 453 `"Germany"', add
label define us10a_migplac1_lbl 455 `"Poland"', add
label define us10a_migplac1_lbl 459 `"Other Eastern Europe"', add
label define us10a_migplac1_lbl 465 `"USSR"', add
label define us10a_migplac1_lbl 498 `"Ukraine"', add
label define us10a_migplac1_lbl 499 `"Europe, not specified"', add
label define us10a_migplac1_lbl 500 `"China"', add
label define us10a_migplac1_lbl 501 `"Japan"', add
label define us10a_migplac1_lbl 502 `"Korea"', add
label define us10a_migplac1_lbl 503 `"Taiwan"', add
label define us10a_migplac1_lbl 515 `"Philippines"', add
label define us10a_migplac1_lbl 517 `"Thailand"', add
label define us10a_migplac1_lbl 518 `"Vietnam"', add
label define us10a_migplac1_lbl 519 `"Other South East Asia"', add
label define us10a_migplac1_lbl 521 `"India"', add
label define us10a_migplac1_lbl 523 `"Iraq"', add
label define us10a_migplac1_lbl 534 `"Israel/Palestine"', add
label define us10a_migplac1_lbl 551 `"Other Western Asia"', add
label define us10a_migplac1_lbl 599 `"Asia, not elsewhere classified"', add
label define us10a_migplac1_lbl 610 `"Northern Africa"', add
label define us10a_migplac1_lbl 620 `"Western Africa"', add
label define us10a_migplac1_lbl 621 `"Eastern Africa"', add
label define us10a_migplac1_lbl 699 `"Africa, not elsewhere classified"', add
label define us10a_migplac1_lbl 701 `"Australia"', add
label define us10a_migplac1_lbl 710 `"Pacific Islands"', add
label values us10a_migplac1 us10a_migplac1_lbl

label define us10a_migmet1_lbl 0000 `"NIU (not in universe)"'
label define us10a_migmet1_lbl 0040 `"Abilene, TX"', add
label define us10a_migmet1_lbl 0080 `"Akron, OH"', add
label define us10a_migmet1_lbl 0120 `"Albany, GA"', add
label define us10a_migmet1_lbl 0160 `"Albany-Schenectady-Troy, NY"', add
label define us10a_migmet1_lbl 0200 `"Albuquerque, NM"', add
label define us10a_migmet1_lbl 0220 `"Alexandria, LA"', add
label define us10a_migmet1_lbl 0240 `"Allentown-Bethlehem-Easton, PA"', add
label define us10a_migmet1_lbl 0280 `"Altoona, PA"', add
label define us10a_migmet1_lbl 0320 `"Amarillo, TX"', add
label define us10a_migmet1_lbl 0380 `"Anchorage, AK"', add
label define us10a_migmet1_lbl 0440 `"Ann Arbor, MI"', add
label define us10a_migmet1_lbl 0450 `"Anniston, AL"', add
label define us10a_migmet1_lbl 0460 `"Appleton-Oskosh-Neenah, WI"', add
label define us10a_migmet1_lbl 0480 `"Asheville, NC"', add
label define us10a_migmet1_lbl 0500 `"Athens, GA"', add
label define us10a_migmet1_lbl 0520 `"Atlanta, GA"', add
label define us10a_migmet1_lbl 0560 `"Atlantic City, NJ"', add
label define us10a_migmet1_lbl 0580 `"Auburn-Opelika, AL"', add
label define us10a_migmet1_lbl 0600 `"Augusta, GA-SC"', add
label define us10a_migmet1_lbl 0640 `"Austin, TX"', add
label define us10a_migmet1_lbl 0680 `"Bakersfield, CA"', add
label define us10a_migmet1_lbl 0720 `"Baltimore, MD"', add
label define us10a_migmet1_lbl 0740 `"Bangor, ME"', add
label define us10a_migmet1_lbl 0760 `"Baton Rouge, LA"', add
label define us10a_migmet1_lbl 0840 `"Beaumont-Port Arthur, TX"', add
label define us10a_migmet1_lbl 0860 `"Bellingham, WA"', add
label define us10a_migmet1_lbl 0870 `"Benton Harbor, MI"', add
label define us10a_migmet1_lbl 0880 `"Billings, MT"', add
label define us10a_migmet1_lbl 0920 `"Biloxi-Gulfport, MS"', add
label define us10a_migmet1_lbl 0960 `"Binghamton, NY"', add
label define us10a_migmet1_lbl 1000 `"Birmingham, AL"', add
label define us10a_migmet1_lbl 1020 `"Bloomington, IN"', add
label define us10a_migmet1_lbl 1040 `"Bloomington-Normal, IL"', add
label define us10a_migmet1_lbl 1080 `"Boise City, ID"', add
label define us10a_migmet1_lbl 1120 `"Boston, MA"', add
label define us10a_migmet1_lbl 1121 `"Lawrence-Haverhill, MA/NH"', add
label define us10a_migmet1_lbl 1122 `"Lowell, MA/NH"', add
label define us10a_migmet1_lbl 1150 `"Bremerton, WA"', add
label define us10a_migmet1_lbl 1160 `"Bridgeport, CT"', add
label define us10a_migmet1_lbl 1200 `"Brockton, MA"', add
label define us10a_migmet1_lbl 1240 `"Brownsville - Harlingen-San Benito, TX"', add
label define us10a_migmet1_lbl 1260 `"Bryan-College Station, TX"', add
label define us10a_migmet1_lbl 1280 `"Buffalo, NY"', add
label define us10a_migmet1_lbl 1320 `"Canton, OH"', add
label define us10a_migmet1_lbl 1360 `"Cedar Rapids, IA"', add
label define us10a_migmet1_lbl 1400 `"Champaign-Urbana-Rantoul, IL"', add
label define us10a_migmet1_lbl 1440 `"Charleston, SC"', add
label define us10a_migmet1_lbl 1520 `"Charlotte, NC"', add
label define us10a_migmet1_lbl 1540 `"Charlottesville, VA"', add
label define us10a_migmet1_lbl 1560 `"Chattanooga, TN"', add
label define us10a_migmet1_lbl 1600 `"Chicago, IL"', add
label define us10a_migmet1_lbl 1602 `"Gary-Hammond-East Chicago, IN"', add
label define us10a_migmet1_lbl 1620 `"Chico, CA"', add
label define us10a_migmet1_lbl 1640 `"Cincinnati, OH-KY"', add
label define us10a_migmet1_lbl 1660 `"Clarksville-Hopkinsville, TN/KY"', add
label define us10a_migmet1_lbl 1680 `"Hamilton-Middleton, OH"', add
label define us10a_migmet1_lbl 1720 `"Colorado Springs, CO"', add
label define us10a_migmet1_lbl 1740 `"Columbia, MO"', add
label define us10a_migmet1_lbl 1760 `"Columbia, SC"', add
label define us10a_migmet1_lbl 1800 `"Columbus, GA"', add
label define us10a_migmet1_lbl 1840 `"Columbus, OH"', add
label define us10a_migmet1_lbl 1920 `"Dallas, TX"', add
label define us10a_migmet1_lbl 1921 `"Fort Worth, TX"', add
label define us10a_migmet1_lbl 1930 `"Danbury, CT"', add
label define us10a_migmet1_lbl 1950 `"Danville, VA"', add
label define us10a_migmet1_lbl 1960 `"Davenport-Rock Island-Moline, IA/IL"', add
label define us10a_migmet1_lbl 2000 `"Dayton, OH"', add
label define us10a_migmet1_lbl 2020 `"Daytona Beach, FL"', add
label define us10a_migmet1_lbl 2030 `"Decatur, AL"', add
label define us10a_migmet1_lbl 2040 `"Decatur, IL"', add
label define us10a_migmet1_lbl 2120 `"Des Moines, IA"', add
label define us10a_migmet1_lbl 2160 `"Detroit, MI"', add
label define us10a_migmet1_lbl 2180 `"Dothan, AL"', add
label define us10a_migmet1_lbl 2190 `"Dover, DE"', add
label define us10a_migmet1_lbl 2240 `"Duluth, MN"', add
label define us10a_migmet1_lbl 2281 `"Dutchess County, New York"', add
label define us10a_migmet1_lbl 2290 `"Eau Claire, WI"', add
label define us10a_migmet1_lbl 2310 `"El Paso, TX"', add
label define us10a_migmet1_lbl 2320 `"Elkhart-Goshen, IN"', add
label define us10a_migmet1_lbl 2360 `"Erie, PA"', add
label define us10a_migmet1_lbl 2400 `"Eugene-Springfield, OR"', add
label define us10a_migmet1_lbl 2440 `"Evansville, IN"', add
label define us10a_migmet1_lbl 2520 `"Fargo-Moorhead, ND/MN"', add
label define us10a_migmet1_lbl 2560 `"Fayetteville, NC"', add
label define us10a_migmet1_lbl 2580 `"Fayetteville-Springdale, AR"', add
label define us10a_migmet1_lbl 2600 `"Fitchburg-Leominster, MA"', add
label define us10a_migmet1_lbl 2620 `"Flagstaff, AZ-UT"', add
label define us10a_migmet1_lbl 2650 `"Florence, AL"', add
label define us10a_migmet1_lbl 2680 `"Fort Lauderdale-Hollywood-Pompano Beach, FL"', add
label define us10a_migmet1_lbl 2700 `"Fort Myers-Cape Coral, FL"', add
label define us10a_migmet1_lbl 2710 `"Fort Pierce, FL"', add
label define us10a_migmet1_lbl 2720 `"Fort Smith, AR/OK"', add
label define us10a_migmet1_lbl 2750 `"Fort Walton Beach, FL"', add
label define us10a_migmet1_lbl 2760 `"Fort Wayne, IN"', add
label define us10a_migmet1_lbl 2840 `"Fresno, CA"', add
label define us10a_migmet1_lbl 2880 `"Gadsden, AL"', add
label define us10a_migmet1_lbl 2900 `"Gainesville, FL"', add
label define us10a_migmet1_lbl 2920 `"Galveston-Texas City, TX"', add
label define us10a_migmet1_lbl 2970 `"Glens Falls, NY"', add
label define us10a_migmet1_lbl 2980 `"Goldsboro, NC"', add
label define us10a_migmet1_lbl 3000 `"Grand Rapids, MI"', add
label define us10a_migmet1_lbl 3060 `"Greeley, CO"', add
label define us10a_migmet1_lbl 3080 `"Green Bay, WI"', add
label define us10a_migmet1_lbl 3120 `"Greensboro-High Point, NC"', add
label define us10a_migmet1_lbl 3150 `"Greenville, NC"', add
label define us10a_migmet1_lbl 3160 `"Greenville, SC"', add
label define us10a_migmet1_lbl 3180 `"Hagerstown, MD"', add
label define us10a_migmet1_lbl 3200 `"Hamilton-Middleton, OH"', add
label define us10a_migmet1_lbl 3240 `"Harrisburg, PA"', add
label define us10a_migmet1_lbl 3280 `"Hartford, CT"', add
label define us10a_migmet1_lbl 3290 `"Hickory-Morgantown, NC"', add
label define us10a_migmet1_lbl 3300 `"Hattiesburg, MS"', add
label define us10a_migmet1_lbl 3320 `"Honolulu, HI"', add
label define us10a_migmet1_lbl 3350 `"Houma-Thibodoux, LA"', add
label define us10a_migmet1_lbl 3360 `"Houston, TX"', add
label define us10a_migmet1_lbl 3361 `"Brazoria, TX"', add
label define us10a_migmet1_lbl 3440 `"Huntsville, AL"', add
label define us10a_migmet1_lbl 3480 `"Indianapolis, IN"', add
label define us10a_migmet1_lbl 3500 `"Iowa City, IA"', add
label define us10a_migmet1_lbl 3520 `"Jackson, MI"', add
label define us10a_migmet1_lbl 3560 `"Jackson, MS"', add
label define us10a_migmet1_lbl 3580 `"Jackson, TN"', add
label define us10a_migmet1_lbl 3590 `"Jacksonville, FL"', add
label define us10a_migmet1_lbl 3600 `"Jacksonville, NC"', add
label define us10a_migmet1_lbl 3610 `"Jamestown-Dunkirk, NY"', add
label define us10a_migmet1_lbl 3620 `"Janesville-Beloit, WI"', add
label define us10a_migmet1_lbl 3660 `"Johnson City-Kingsport-Bristol, TN/VA"', add
label define us10a_migmet1_lbl 3680 `"Johnstown, PA"', add
label define us10a_migmet1_lbl 3710 `"Joplin, MO"', add
label define us10a_migmet1_lbl 3720 `"Kalamazo, MI"', add
label define us10a_migmet1_lbl 3740 `"Kankakee, IL"', add
label define us10a_migmet1_lbl 3760 `"Kansas City, MO/KS"', add
label define us10a_migmet1_lbl 3800 `"Kenosha, WI"', add
label define us10a_migmet1_lbl 3810 `"Killeen-Temple, TX"', add
label define us10a_migmet1_lbl 3840 `"Knoxville, TN"', add
label define us10a_migmet1_lbl 3850 `"Kokomo, IN"', add
label define us10a_migmet1_lbl 3870 `"LaCrosse, WI"', add
label define us10a_migmet1_lbl 3880 `"Lafayette, LA"', add
label define us10a_migmet1_lbl 3920 `"Lafayette-W.Lafayette, IN"', add
label define us10a_migmet1_lbl 3960 `"Lake Charles, LA"', add
label define us10a_migmet1_lbl 3980 `"Lakeland-Winterhaven, FL"', add
label define us10a_migmet1_lbl 4000 `"Lancaster, PA"', add
label define us10a_migmet1_lbl 4040 `"Lansing, MI"', add
label define us10a_migmet1_lbl 4080 `"Laredo, TX"', add
label define us10a_migmet1_lbl 4100 `"Las Cruces, NM"', add
label define us10a_migmet1_lbl 4120 `"Las Vegas, NV"', add
label define us10a_migmet1_lbl 4280 `"Lexington-Fayette, KY"', add
label define us10a_migmet1_lbl 4320 `"Lima, OH"', add
label define us10a_migmet1_lbl 4360 `"Lincoln, NE"', add
label define us10a_migmet1_lbl 4400 `"Little Rock-North Little Rock, AR"', add
label define us10a_migmet1_lbl 4420 `"Longview-Marshall, TX"', add
label define us10a_migmet1_lbl 4480 `"Los Angeles, CA"', add
label define us10a_migmet1_lbl 4482 `"Orange County, CA"', add
label define us10a_migmet1_lbl 4520 `"Louisville, KY/IN"', add
label define us10a_migmet1_lbl 4600 `"Lubbock, TX"', add
label define us10a_migmet1_lbl 4640 `"Lynchburg, VA"', add
label define us10a_migmet1_lbl 4680 `"Bibb, GA"', add
label define us10a_migmet1_lbl 4720 `"Madison, WI"', add
label define us10a_migmet1_lbl 4760 `"Manchester, NH"', add
label define us10a_migmet1_lbl 4800 `"Mansfield, OH"', add
label define us10a_migmet1_lbl 4880 `"McAllen-Edinburg-Pharr-Mission, TX"', add
label define us10a_migmet1_lbl 4890 `"Medford, OR"', add
label define us10a_migmet1_lbl 4900 `"Melbourne-Titusville-Cocoa-Palm Bay, FL"', add
label define us10a_migmet1_lbl 4920 `"Memphis, TN"', add
label define us10a_migmet1_lbl 4940 `"Merced, CA"', add
label define us10a_migmet1_lbl 5080 `"Milwaukee, WI"', add
label define us10a_migmet1_lbl 5120 `"Minneapolis-St. Paul, MN"', add
label define us10a_migmet1_lbl 5160 `"Mobile, AL"', add
label define us10a_migmet1_lbl 5170 `"Modesto, CA"', add
label define us10a_migmet1_lbl 5190 `"Monmouth-Ocean, NJ"', add
label define us10a_migmet1_lbl 5200 `"Monroe, LA"', add
label define us10a_migmet1_lbl 5240 `"Montgomery, AL"', add
label define us10a_migmet1_lbl 5280 `"Muncie, IN"', add
label define us10a_migmet1_lbl 5330 `"Myrtle Beach, SC"', add
label define us10a_migmet1_lbl 5340 `"Naples, FL"', add
label define us10a_migmet1_lbl 5350 `"Nashua, NH"', add
label define us10a_migmet1_lbl 5360 `"Nashville, TN"', add
label define us10a_migmet1_lbl 5400 `"Bristol, MA"', add
label define us10a_migmet1_lbl 5480 `"New Haven, CT"', add
label define us10a_migmet1_lbl 5560 `"New Orleans, LA"', add
label define us10a_migmet1_lbl 5600 `"New York-Northeastern NJ"', add
label define us10a_migmet1_lbl 5601 `"Nassau-Suffolk, NY"', add
label define us10a_migmet1_lbl 5602 `"Bergen-Passaic, NJ"', add
label define us10a_migmet1_lbl 5603 `"Jersey City, NJ"', add
label define us10a_migmet1_lbl 5604 `"Middlesex-Somerset-Hunterdon, NJ"', add
label define us10a_migmet1_lbl 5605 `"Newark, NJ"', add
label define us10a_migmet1_lbl 5660 `"Newburgh-Middletown, NY"', add
label define us10a_migmet1_lbl 5720 `"Norfolk-Portsmouth, VA"', add
label define us10a_migmet1_lbl 5790 `"Ocala, FL"', add
label define us10a_migmet1_lbl 5800 `"Odessa, TX"', add
label define us10a_migmet1_lbl 5910 `"Olympia, WA"', add
label define us10a_migmet1_lbl 5920 `"Omaha, NE"', add
label define us10a_migmet1_lbl 5960 `"Orlando, FL"', add
label define us10a_migmet1_lbl 6010 `"Panama City, FL"', add
label define us10a_migmet1_lbl 6080 `"Pensacola, FL"', add
label define us10a_migmet1_lbl 6120 `"Peoria, IL"', add
label define us10a_migmet1_lbl 6160 `"Philadelphia, PA/NJ"', add
label define us10a_migmet1_lbl 6200 `"Phoenix, AZ"', add
label define us10a_migmet1_lbl 6280 `"Pittsburgh, PA"', add
label define us10a_migmet1_lbl 6400 `"Portland, ME"', add
label define us10a_migmet1_lbl 6440 `"Portland, OR/WA"', add
label define us10a_migmet1_lbl 6480 `"Providence, RI"', add
label define us10a_migmet1_lbl 6520 `"Provo-Urem, UT"', add
label define us10a_migmet1_lbl 6580 `"Punta Gorda, FL"', add
label define us10a_migmet1_lbl 6600 `"Racine, WI"', add
label define us10a_migmet1_lbl 6640 `"Raleigh, NC"', add
label define us10a_migmet1_lbl 6680 `"Reading, PA"', add
label define us10a_migmet1_lbl 6690 `"Redding, CA"', add
label define us10a_migmet1_lbl 6720 `"Reno, NV"', add
label define us10a_migmet1_lbl 6740 `"Richland-Kennewick-Pasco, WA"', add
label define us10a_migmet1_lbl 6760 `"Richmond, VA"', add
label define us10a_migmet1_lbl 6761 `"Roanoke, VA"', add
label define us10a_migmet1_lbl 6780 `"Riverside, CA"', add
label define us10a_migmet1_lbl 6820 `"Rochester, MN"', add
label define us10a_migmet1_lbl 6840 `"Rochester, NY"', add
label define us10a_migmet1_lbl 6880 `"Rockford, IL"', add
label define us10a_migmet1_lbl 6895 `"Rocky Mount, NC"', add
label define us10a_migmet1_lbl 6920 `"Sacramento, CA"', add
label define us10a_migmet1_lbl 6960 `"Saginaw, MI"', add
label define us10a_migmet1_lbl 6980 `"St. Cloud, MN"', add
label define us10a_migmet1_lbl 7000 `"St. Joseph, MO"', add
label define us10a_migmet1_lbl 7040 `"St. Louis, MO/IL"', add
label define us10a_migmet1_lbl 7080 `"Salem, OR"', add
label define us10a_migmet1_lbl 7160 `"Salt Lake City, UT"', add
label define us10a_migmet1_lbl 7240 `"San Antonio, TX"', add
label define us10a_migmet1_lbl 7320 `"San Diego, CA"', add
label define us10a_migmet1_lbl 7360 `"San Francisco-Oakland, CA"', add
label define us10a_migmet1_lbl 7361 `"Oakland, CA"', add
label define us10a_migmet1_lbl 7362 `"Vallejo-Fairfield-Napa, CA"', add
label define us10a_migmet1_lbl 7400 `"San Jose, CA"', add
label define us10a_migmet1_lbl 7460 `"San Luis Obispo-Atascadero-Paso Robles, CA"', add
label define us10a_migmet1_lbl 7470 `"Santa Barbara-Santa Maria-Lompoc, CA"', add
label define us10a_migmet1_lbl 7480 `"Santa Cruz, CA"', add
label define us10a_migmet1_lbl 7490 `"Santa Fe, NM"', add
label define us10a_migmet1_lbl 7500 `"Santa Rosa-Petaluma, CA"', add
label define us10a_migmet1_lbl 7510 `"Sarasota, FL"', add
label define us10a_migmet1_lbl 7520 `"Savannah, GA"', add
label define us10a_migmet1_lbl 7560 `"Scranton, PA"', add
label define us10a_migmet1_lbl 7600 `"Seattle, WA"', add
label define us10a_migmet1_lbl 7610 `"Sharon, PA"', add
label define us10a_migmet1_lbl 7620 `"Sheboygan, WI"', add
label define us10a_migmet1_lbl 7680 `"Shreveport, LA"', add
label define us10a_migmet1_lbl 7720 `"Sioux City, IA"', add
label define us10a_migmet1_lbl 7800 `"South Bend, IN"', add
label define us10a_migmet1_lbl 7840 `"Spokane, WA"', add
label define us10a_migmet1_lbl 7920 `"Springfield, MO"', add
label define us10a_migmet1_lbl 8000 `"Springfield-Holyoke, MA"', add
label define us10a_migmet1_lbl 8040 `"Stamford, CT"', add
label define us10a_migmet1_lbl 8050 `"State College, PA"', add
label define us10a_migmet1_lbl 8120 `"Stockton, CA"', add
label define us10a_migmet1_lbl 8140 `"Sumter, SC"', add
label define us10a_migmet1_lbl 8160 `"Syracuse, NY"', add
label define us10a_migmet1_lbl 8200 `"Tacoma, WA"', add
label define us10a_migmet1_lbl 8240 `"Tallahassee, FL"', add
label define us10a_migmet1_lbl 8280 `"Tampa-St. Petersburg, FL"', add
label define us10a_migmet1_lbl 8320 `"Terre Haute, IN"', add
label define us10a_migmet1_lbl 8400 `"Toledo, OH"', add
label define us10a_migmet1_lbl 8440 `"Topeka, KS"', add
label define us10a_migmet1_lbl 8480 `"Trenton, NJ"', add
label define us10a_migmet1_lbl 8520 `"Tucson, AZ"', add
label define us10a_migmet1_lbl 8600 `"Tuscaloosa, AL"', add
label define us10a_migmet1_lbl 8640 `"Tyler, TX"', add
label define us10a_migmet1_lbl 8680 `"Utica-Rome, NY"', add
label define us10a_migmet1_lbl 8730 `"Ventura-Oxnard-Simi Valley, CA"', add
label define us10a_migmet1_lbl 8760 `"Vineland-Millville-Bridgeton, NJ"', add
label define us10a_migmet1_lbl 8780 `"Visalia-Tulare-Porterville, CA"', add
label define us10a_migmet1_lbl 8800 `"Waco, TX"', add
label define us10a_migmet1_lbl 8840 `"Washington, DC/MD/VA"', add
label define us10a_migmet1_lbl 8880 `"Waterbury, CT"', add
label define us10a_migmet1_lbl 8920 `"Waterloo-Cedar Falls, IA"', add
label define us10a_migmet1_lbl 8940 `"Wausau, WI"', add
label define us10a_migmet1_lbl 8960 `"West Palm Beach-Boca Raton-Delray Beach, FL"', add
label define us10a_migmet1_lbl 9040 `"Wichita, KS"', add
label define us10a_migmet1_lbl 9080 `"Wichita Falls, TX"', add
label define us10a_migmet1_lbl 9140 `"Williamsport, PA"', add
label define us10a_migmet1_lbl 9160 `"Wilmington, DE"', add
label define us10a_migmet1_lbl 9200 `"Wilmington, NC"', add
label define us10a_migmet1_lbl 9240 `"Worcester, MA"', add
label define us10a_migmet1_lbl 9260 `"Yakima, WA"', add
label define us10a_migmet1_lbl 9270 `"Yolo, CA"', add
label define us10a_migmet1_lbl 9280 `"York, PA"', add
label define us10a_migmet1_lbl 9320 `"Youngstown, OH/PA"', add
label define us10a_migmet1_lbl 9340 `"Yuba City, CA"', add
label define us10a_migmet1_lbl 9360 `"Yuma, AZ"', add
label define us10a_migmet1_lbl 9998 `"Unknown"', add
label values us10a_migmet1 us10a_migmet1_lbl

label define us10a_migmet1_lbl 0000 `"NIU (not in universe)"'
label define us10a_migmet1_lbl 0040 `"Abilene, TX"', add
label define us10a_migmet1_lbl 0080 `"Akron, OH"', add
label define us10a_migmet1_lbl 0120 `"Albany, GA"', add
label define us10a_migmet1_lbl 0160 `"Albany-Schenectady-Troy, NY"', add
label define us10a_migmet1_lbl 0200 `"Albuquerque, NM"', add
label define us10a_migmet1_lbl 0220 `"Alexandria, LA"', add
label define us10a_migmet1_lbl 0240 `"Allentown-Bethlehem-Easton, PA"', add
label define us10a_migmet1_lbl 0280 `"Altoona, PA"', add
label define us10a_migmet1_lbl 0320 `"Amarillo, TX"', add
label define us10a_migmet1_lbl 0380 `"Anchorage, AK"', add
label define us10a_migmet1_lbl 0440 `"Ann Arbor, MI"', add
label define us10a_migmet1_lbl 0450 `"Anniston, AL"', add
label define us10a_migmet1_lbl 0460 `"Appleton-Oskosh-Neenah, WI"', add
label define us10a_migmet1_lbl 0480 `"Asheville, NC"', add
label define us10a_migmet1_lbl 0500 `"Athens, GA"', add
label define us10a_migmet1_lbl 0520 `"Atlanta, GA"', add
label define us10a_migmet1_lbl 0560 `"Atlantic City, NJ"', add
label define us10a_migmet1_lbl 0580 `"Auburn-Opelika, AL"', add
label define us10a_migmet1_lbl 0600 `"Augusta, GA-SC"', add
label define us10a_migmet1_lbl 0640 `"Austin, TX"', add
label define us10a_migmet1_lbl 0680 `"Bakersfield, CA"', add
label define us10a_migmet1_lbl 0720 `"Baltimore, MD"', add
label define us10a_migmet1_lbl 0740 `"Bangor, ME"', add
label define us10a_migmet1_lbl 0760 `"Baton Rouge, LA"', add
label define us10a_migmet1_lbl 0840 `"Beaumont-Port Arthur, TX"', add
label define us10a_migmet1_lbl 0860 `"Bellingham, WA"', add
label define us10a_migmet1_lbl 0870 `"Benton Harbor, MI"', add
label define us10a_migmet1_lbl 0880 `"Billings, MT"', add
label define us10a_migmet1_lbl 0920 `"Biloxi-Gulfport, MS"', add
label define us10a_migmet1_lbl 0960 `"Binghamton, NY"', add
label define us10a_migmet1_lbl 1000 `"Birmingham, AL"', add
label define us10a_migmet1_lbl 1020 `"Bloomington, IN"', add
label define us10a_migmet1_lbl 1040 `"Bloomington-Normal, IL"', add
label define us10a_migmet1_lbl 1080 `"Boise City, ID"', add
label define us10a_migmet1_lbl 1120 `"Boston, MA"', add
label define us10a_migmet1_lbl 1121 `"Lawrence-Haverhill, MA/NH"', add
label define us10a_migmet1_lbl 1122 `"Lowell, MA/NH"', add
label define us10a_migmet1_lbl 1150 `"Bremerton, WA"', add
label define us10a_migmet1_lbl 1160 `"Bridgeport, CT"', add
label define us10a_migmet1_lbl 1200 `"Brockton, MA"', add
label define us10a_migmet1_lbl 1240 `"Brownsville - Harlingen-San Benito, TX"', add
label define us10a_migmet1_lbl 1260 `"Bryan-College Station, TX"', add
label define us10a_migmet1_lbl 1280 `"Buffalo, NY"', add
label define us10a_migmet1_lbl 1320 `"Canton, OH"', add
label define us10a_migmet1_lbl 1360 `"Cedar Rapids, IA"', add
label define us10a_migmet1_lbl 1400 `"Champaign-Urbana-Rantoul, IL"', add
label define us10a_migmet1_lbl 1440 `"Charleston, SC"', add
label define us10a_migmet1_lbl 1520 `"Charlotte, NC"', add
label define us10a_migmet1_lbl 1540 `"Charlottesville, VA"', add
label define us10a_migmet1_lbl 1560 `"Chattanooga, TN"', add
label define us10a_migmet1_lbl 1600 `"Chicago, IL"', add
label define us10a_migmet1_lbl 1602 `"Gary-Hammond-East Chicago, IN"', add
label define us10a_migmet1_lbl 1620 `"Chico, CA"', add
label define us10a_migmet1_lbl 1640 `"Cincinnati, OH-KY"', add
label define us10a_migmet1_lbl 1660 `"Clarksville-Hopkinsville, TN/KY"', add
label define us10a_migmet1_lbl 1680 `"Hamilton-Middleton, OH"', add
label define us10a_migmet1_lbl 1720 `"Colorado Springs, CO"', add
label define us10a_migmet1_lbl 1740 `"Columbia, MO"', add
label define us10a_migmet1_lbl 1760 `"Columbia, SC"', add
label define us10a_migmet1_lbl 1800 `"Columbus, GA"', add
label define us10a_migmet1_lbl 1840 `"Columbus, OH"', add
label define us10a_migmet1_lbl 1920 `"Dallas, TX"', add
label define us10a_migmet1_lbl 1921 `"Fort Worth, TX"', add
label define us10a_migmet1_lbl 1930 `"Danbury, CT"', add
label define us10a_migmet1_lbl 1950 `"Danville, VA"', add
label define us10a_migmet1_lbl 1960 `"Davenport-Rock Island-Moline, IA/IL"', add
label define us10a_migmet1_lbl 2000 `"Dayton, OH"', add
label define us10a_migmet1_lbl 2020 `"Daytona Beach, FL"', add
label define us10a_migmet1_lbl 2030 `"Decatur, AL"', add
label define us10a_migmet1_lbl 2040 `"Decatur, IL"', add
label define us10a_migmet1_lbl 2120 `"Des Moines, IA"', add
label define us10a_migmet1_lbl 2160 `"Detroit, MI"', add
label define us10a_migmet1_lbl 2180 `"Dothan, AL"', add
label define us10a_migmet1_lbl 2190 `"Dover, DE"', add
label define us10a_migmet1_lbl 2240 `"Duluth, MN"', add
label define us10a_migmet1_lbl 2281 `"Dutchess County, New York"', add
label define us10a_migmet1_lbl 2290 `"Eau Claire, WI"', add
label define us10a_migmet1_lbl 2310 `"El Paso, TX"', add
label define us10a_migmet1_lbl 2320 `"Elkhart-Goshen, IN"', add
label define us10a_migmet1_lbl 2360 `"Erie, PA"', add
label define us10a_migmet1_lbl 2400 `"Eugene-Springfield, OR"', add
label define us10a_migmet1_lbl 2440 `"Evansville, IN"', add
label define us10a_migmet1_lbl 2520 `"Fargo-Moorhead, ND/MN"', add
label define us10a_migmet1_lbl 2560 `"Fayetteville, NC"', add
label define us10a_migmet1_lbl 2580 `"Fayetteville-Springdale, AR"', add
label define us10a_migmet1_lbl 2600 `"Fitchburg-Leominster, MA"', add
label define us10a_migmet1_lbl 2620 `"Flagstaff, AZ-UT"', add
label define us10a_migmet1_lbl 2650 `"Florence, AL"', add
label define us10a_migmet1_lbl 2680 `"Fort Lauderdale-Hollywood-Pompano Beach, FL"', add
label define us10a_migmet1_lbl 2700 `"Fort Myers-Cape Coral, FL"', add
label define us10a_migmet1_lbl 2710 `"Fort Pierce, FL"', add
label define us10a_migmet1_lbl 2720 `"Fort Smith, AR/OK"', add
label define us10a_migmet1_lbl 2750 `"Fort Walton Beach, FL"', add
label define us10a_migmet1_lbl 2760 `"Fort Wayne, IN"', add
label define us10a_migmet1_lbl 2840 `"Fresno, CA"', add
label define us10a_migmet1_lbl 2880 `"Gadsden, AL"', add
label define us10a_migmet1_lbl 2900 `"Gainesville, FL"', add
label define us10a_migmet1_lbl 2920 `"Galveston-Texas City, TX"', add
label define us10a_migmet1_lbl 2970 `"Glens Falls, NY"', add
label define us10a_migmet1_lbl 2980 `"Goldsboro, NC"', add
label define us10a_migmet1_lbl 3000 `"Grand Rapids, MI"', add
label define us10a_migmet1_lbl 3060 `"Greeley, CO"', add
label define us10a_migmet1_lbl 3080 `"Green Bay, WI"', add
label define us10a_migmet1_lbl 3120 `"Greensboro-High Point, NC"', add
label define us10a_migmet1_lbl 3150 `"Greenville, NC"', add
label define us10a_migmet1_lbl 3160 `"Greenville, SC"', add
label define us10a_migmet1_lbl 3180 `"Hagerstown, MD"', add
label define us10a_migmet1_lbl 3200 `"Hamilton-Middleton, OH"', add
label define us10a_migmet1_lbl 3240 `"Harrisburg, PA"', add
label define us10a_migmet1_lbl 3280 `"Hartford, CT"', add
label define us10a_migmet1_lbl 3290 `"Hickory-Morgantown, NC"', add
label define us10a_migmet1_lbl 3300 `"Hattiesburg, MS"', add
label define us10a_migmet1_lbl 3320 `"Honolulu, HI"', add
label define us10a_migmet1_lbl 3350 `"Houma-Thibodoux, LA"', add
label define us10a_migmet1_lbl 3360 `"Houston, TX"', add
label define us10a_migmet1_lbl 3361 `"Brazoria, TX"', add
label define us10a_migmet1_lbl 3440 `"Huntsville, AL"', add
label define us10a_migmet1_lbl 3480 `"Indianapolis, IN"', add
label define us10a_migmet1_lbl 3500 `"Iowa City, IA"', add
label define us10a_migmet1_lbl 3520 `"Jackson, MI"', add
label define us10a_migmet1_lbl 3560 `"Jackson, MS"', add
label define us10a_migmet1_lbl 3580 `"Jackson, TN"', add
label define us10a_migmet1_lbl 3590 `"Jacksonville, FL"', add
label define us10a_migmet1_lbl 3600 `"Jacksonville, NC"', add
label define us10a_migmet1_lbl 3610 `"Jamestown-Dunkirk, NY"', add
label define us10a_migmet1_lbl 3620 `"Janesville-Beloit, WI"', add
label define us10a_migmet1_lbl 3660 `"Johnson City-Kingsport-Bristol, TN/VA"', add
label define us10a_migmet1_lbl 3680 `"Johnstown, PA"', add
label define us10a_migmet1_lbl 3710 `"Joplin, MO"', add
label define us10a_migmet1_lbl 3720 `"Kalamazo, MI"', add
label define us10a_migmet1_lbl 3740 `"Kankakee, IL"', add
label define us10a_migmet1_lbl 3760 `"Kansas City, MO/KS"', add
label define us10a_migmet1_lbl 3800 `"Kenosha, WI"', add
label define us10a_migmet1_lbl 3810 `"Killeen-Temple, TX"', add
label define us10a_migmet1_lbl 3840 `"Knoxville, TN"', add
label define us10a_migmet1_lbl 3850 `"Kokomo, IN"', add
label define us10a_migmet1_lbl 3870 `"LaCrosse, WI"', add
label define us10a_migmet1_lbl 3880 `"Lafayette, LA"', add
label define us10a_migmet1_lbl 3920 `"Lafayette-W.Lafayette, IN"', add
label define us10a_migmet1_lbl 3960 `"Lake Charles, LA"', add
label define us10a_migmet1_lbl 3980 `"Lakeland-Winterhaven, FL"', add
label define us10a_migmet1_lbl 4000 `"Lancaster, PA"', add
label define us10a_migmet1_lbl 4040 `"Lansing, MI"', add
label define us10a_migmet1_lbl 4080 `"Laredo, TX"', add
label define us10a_migmet1_lbl 4100 `"Las Cruces, NM"', add
label define us10a_migmet1_lbl 4120 `"Las Vegas, NV"', add
label define us10a_migmet1_lbl 4280 `"Lexington-Fayette, KY"', add
label define us10a_migmet1_lbl 4320 `"Lima, OH"', add
label define us10a_migmet1_lbl 4360 `"Lincoln, NE"', add
label define us10a_migmet1_lbl 4400 `"Little Rock-North Little Rock, AR"', add
label define us10a_migmet1_lbl 4420 `"Longview-Marshall, TX"', add
label define us10a_migmet1_lbl 4480 `"Los Angeles, CA"', add
label define us10a_migmet1_lbl 4482 `"Orange County, CA"', add
label define us10a_migmet1_lbl 4520 `"Louisville, KY/IN"', add
label define us10a_migmet1_lbl 4600 `"Lubbock, TX"', add
label define us10a_migmet1_lbl 4640 `"Lynchburg, VA"', add
label define us10a_migmet1_lbl 4680 `"Bibb, GA"', add
label define us10a_migmet1_lbl 4720 `"Madison, WI"', add
label define us10a_migmet1_lbl 4760 `"Manchester, NH"', add
label define us10a_migmet1_lbl 4800 `"Mansfield, OH"', add
label define us10a_migmet1_lbl 4880 `"McAllen-Edinburg-Pharr-Mission, TX"', add
label define us10a_migmet1_lbl 4890 `"Medford, OR"', add
label define us10a_migmet1_lbl 4900 `"Melbourne-Titusville-Cocoa-Palm Bay, FL"', add
label define us10a_migmet1_lbl 4920 `"Memphis, TN"', add
label define us10a_migmet1_lbl 4940 `"Merced, CA"', add
label define us10a_migmet1_lbl 5080 `"Milwaukee, WI"', add
label define us10a_migmet1_lbl 5120 `"Minneapolis-St. Paul, MN"', add
label define us10a_migmet1_lbl 5160 `"Mobile, AL"', add
label define us10a_migmet1_lbl 5170 `"Modesto, CA"', add
label define us10a_migmet1_lbl 5190 `"Monmouth-Ocean, NJ"', add
label define us10a_migmet1_lbl 5200 `"Monroe, LA"', add
label define us10a_migmet1_lbl 5240 `"Montgomery, AL"', add
label define us10a_migmet1_lbl 5280 `"Muncie, IN"', add
label define us10a_migmet1_lbl 5330 `"Myrtle Beach, SC"', add
label define us10a_migmet1_lbl 5340 `"Naples, FL"', add
label define us10a_migmet1_lbl 5350 `"Nashua, NH"', add
label define us10a_migmet1_lbl 5360 `"Nashville, TN"', add
label define us10a_migmet1_lbl 5400 `"Bristol, MA"', add
label define us10a_migmet1_lbl 5480 `"New Haven, CT"', add
label define us10a_migmet1_lbl 5560 `"New Orleans, LA"', add
label define us10a_migmet1_lbl 5600 `"New York-Northeastern NJ"', add
label define us10a_migmet1_lbl 5601 `"Nassau-Suffolk, NY"', add
label define us10a_migmet1_lbl 5602 `"Bergen-Passaic, NJ"', add
label define us10a_migmet1_lbl 5603 `"Jersey City, NJ"', add
label define us10a_migmet1_lbl 5604 `"Middlesex-Somerset-Hunterdon, NJ"', add
label define us10a_migmet1_lbl 5605 `"Newark, NJ"', add
label define us10a_migmet1_lbl 5660 `"Newburgh-Middletown, NY"', add
label define us10a_migmet1_lbl 5720 `"Norfolk-Portsmouth, VA"', add
label define us10a_migmet1_lbl 5790 `"Ocala, FL"', add
label define us10a_migmet1_lbl 5800 `"Odessa, TX"', add
label define us10a_migmet1_lbl 5910 `"Olympia, WA"', add
label define us10a_migmet1_lbl 5920 `"Omaha, NE"', add
label define us10a_migmet1_lbl 5960 `"Orlando, FL"', add
label define us10a_migmet1_lbl 6010 `"Panama City, FL"', add
label define us10a_migmet1_lbl 6080 `"Pensacola, FL"', add
label define us10a_migmet1_lbl 6120 `"Peoria, IL"', add
label define us10a_migmet1_lbl 6160 `"Philadelphia, PA/NJ"', add
label define us10a_migmet1_lbl 6200 `"Phoenix, AZ"', add
label define us10a_migmet1_lbl 6280 `"Pittsburgh, PA"', add
label define us10a_migmet1_lbl 6400 `"Portland, ME"', add
label define us10a_migmet1_lbl 6440 `"Portland, OR/WA"', add
label define us10a_migmet1_lbl 6480 `"Providence, RI"', add
label define us10a_migmet1_lbl 6520 `"Provo-Urem, UT"', add
label define us10a_migmet1_lbl 6580 `"Punta Gorda, FL"', add
label define us10a_migmet1_lbl 6600 `"Racine, WI"', add
label define us10a_migmet1_lbl 6640 `"Raleigh, NC"', add
label define us10a_migmet1_lbl 6680 `"Reading, PA"', add
label define us10a_migmet1_lbl 6690 `"Redding, CA"', add
label define us10a_migmet1_lbl 6720 `"Reno, NV"', add
label define us10a_migmet1_lbl 6740 `"Richland-Kennewick-Pasco, WA"', add
label define us10a_migmet1_lbl 6760 `"Richmond, VA"', add
label define us10a_migmet1_lbl 6761 `"Roanoke, VA"', add
label define us10a_migmet1_lbl 6780 `"Riverside, CA"', add
label define us10a_migmet1_lbl 6820 `"Rochester, MN"', add
label define us10a_migmet1_lbl 6840 `"Rochester, NY"', add
label define us10a_migmet1_lbl 6880 `"Rockford, IL"', add
label define us10a_migmet1_lbl 6895 `"Rocky Mount, NC"', add
label define us10a_migmet1_lbl 6920 `"Sacramento, CA"', add
label define us10a_migmet1_lbl 6960 `"Saginaw, MI"', add
label define us10a_migmet1_lbl 6980 `"St. Cloud, MN"', add
label define us10a_migmet1_lbl 7000 `"St. Joseph, MO"', add
label define us10a_migmet1_lbl 7040 `"St. Louis, MO/IL"', add
label define us10a_migmet1_lbl 7080 `"Salem, OR"', add
label define us10a_migmet1_lbl 7160 `"Salt Lake City, UT"', add
label define us10a_migmet1_lbl 7240 `"San Antonio, TX"', add
label define us10a_migmet1_lbl 7320 `"San Diego, CA"', add
label define us10a_migmet1_lbl 7360 `"San Francisco-Oakland, CA"', add
label define us10a_migmet1_lbl 7361 `"Oakland, CA"', add
label define us10a_migmet1_lbl 7362 `"Vallejo-Fairfield-Napa, CA"', add
label define us10a_migmet1_lbl 7400 `"San Jose, CA"', add
label define us10a_migmet1_lbl 7460 `"San Luis Obispo-Atascadero-Paso Robles, CA"', add
label define us10a_migmet1_lbl 7470 `"Santa Barbara-Santa Maria-Lompoc, CA"', add
label define us10a_migmet1_lbl 7480 `"Santa Cruz, CA"', add
label define us10a_migmet1_lbl 7490 `"Santa Fe, NM"', add
label define us10a_migmet1_lbl 7500 `"Santa Rosa-Petaluma, CA"', add
label define us10a_migmet1_lbl 7510 `"Sarasota, FL"', add
label define us10a_migmet1_lbl 7520 `"Savannah, GA"', add
label define us10a_migmet1_lbl 7560 `"Scranton, PA"', add
label define us10a_migmet1_lbl 7600 `"Seattle, WA"', add
label define us10a_migmet1_lbl 7610 `"Sharon, PA"', add
label define us10a_migmet1_lbl 7620 `"Sheboygan, WI"', add
label define us10a_migmet1_lbl 7680 `"Shreveport, LA"', add
label define us10a_migmet1_lbl 7720 `"Sioux City, IA"', add
label define us10a_migmet1_lbl 7800 `"South Bend, IN"', add
label define us10a_migmet1_lbl 7840 `"Spokane, WA"', add
label define us10a_migmet1_lbl 7920 `"Springfield, MO"', add
label define us10a_migmet1_lbl 8000 `"Springfield-Holyoke, MA"', add
label define us10a_migmet1_lbl 8040 `"Stamford, CT"', add
label define us10a_migmet1_lbl 8050 `"State College, PA"', add
label define us10a_migmet1_lbl 8120 `"Stockton, CA"', add
label define us10a_migmet1_lbl 8140 `"Sumter, SC"', add
label define us10a_migmet1_lbl 8160 `"Syracuse, NY"', add
label define us10a_migmet1_lbl 8200 `"Tacoma, WA"', add
label define us10a_migmet1_lbl 8240 `"Tallahassee, FL"', add
label define us10a_migmet1_lbl 8280 `"Tampa-St. Petersburg, FL"', add
label define us10a_migmet1_lbl 8320 `"Terre Haute, IN"', add
label define us10a_migmet1_lbl 8400 `"Toledo, OH"', add
label define us10a_migmet1_lbl 8440 `"Topeka, KS"', add
label define us10a_migmet1_lbl 8480 `"Trenton, NJ"', add
label define us10a_migmet1_lbl 8520 `"Tucson, AZ"', add
label define us10a_migmet1_lbl 8600 `"Tuscaloosa, AL"', add
label define us10a_migmet1_lbl 8640 `"Tyler, TX"', add
label define us10a_migmet1_lbl 8680 `"Utica-Rome, NY"', add
label define us10a_migmet1_lbl 8730 `"Ventura-Oxnard-Simi Valley, CA"', add
label define us10a_migmet1_lbl 8760 `"Vineland-Millville-Bridgeton, NJ"', add
label define us10a_migmet1_lbl 8780 `"Visalia-Tulare-Porterville, CA"', add
label define us10a_migmet1_lbl 8800 `"Waco, TX"', add
label define us10a_migmet1_lbl 8840 `"Washington, DC/MD/VA"', add
label define us10a_migmet1_lbl 8880 `"Waterbury, CT"', add
label define us10a_migmet1_lbl 8920 `"Waterloo-Cedar Falls, IA"', add
label define us10a_migmet1_lbl 8940 `"Wausau, WI"', add
label define us10a_migmet1_lbl 8960 `"West Palm Beach-Boca Raton-Delray Beach, FL"', add
label define us10a_migmet1_lbl 9040 `"Wichita, KS"', add
label define us10a_migmet1_lbl 9080 `"Wichita Falls, TX"', add
label define us10a_migmet1_lbl 9140 `"Williamsport, PA"', add
label define us10a_migmet1_lbl 9160 `"Wilmington, DE"', add
label define us10a_migmet1_lbl 9200 `"Wilmington, NC"', add
label define us10a_migmet1_lbl 9240 `"Worcester, MA"', add
label define us10a_migmet1_lbl 9260 `"Yakima, WA"', add
label define us10a_migmet1_lbl 9270 `"Yolo, CA"', add
label define us10a_migmet1_lbl 9280 `"York, PA"', add
label define us10a_migmet1_lbl 9320 `"Youngstown, OH/PA"', add
label define us10a_migmet1_lbl 9340 `"Yuba City, CA"', add
label define us10a_migmet1_lbl 9360 `"Yuma, AZ"', add
label define us10a_migmet1_lbl 9998 `"Unknown"', add
label values us10a_migmet1 us10a_migmet1_lbl

label define us10a_migtype1_lbl 0 `"NIU (not in universe)"'
label define us10a_migtype1_lbl 1 `"Not in a metro area"', add
label define us10a_migtype1_lbl 2 `"In a metro area, central city status unknown"', add
label define us10a_migtype1_lbl 3 `"Central city"', add
label define us10a_migtype1_lbl 4 `"Not central city"', add
label define us10a_migtype1_lbl 5 `"Abroad"', add
label define us10a_migtype1_lbl 9 `"Unknown"', add
label values us10a_migtype1 us10a_migtype1_lbl

label define us10a_movedin_lbl 0 `"NIU (not in universe)"'
label define us10a_movedin_lbl 1 `"This year or last year"', add
label define us10a_movedin_lbl 2 `"2 years ago"', add
label define us10a_movedin_lbl 3 `"3 years ago"', add
label define us10a_movedin_lbl 4 `"4 to 6 years ago"', add
label define us10a_movedin_lbl 5 `"7 to 10 years ago"', add
label define us10a_movedin_lbl 6 `"11 to 20 years ago"', add
label define us10a_movedin_lbl 7 `"21+ years ago"', add
label values us10a_movedin us10a_movedin_lbl

label define us10a_pwtype_lbl 0 `"NIU (not in universe)"'
label define us10a_pwtype_lbl 1 `"In central city"', add
label define us10a_pwtype_lbl 4 `"Not central city"', add
label define us10a_pwtype_lbl 5 `"Central city status unknown"', add
label define us10a_pwtype_lbl 7 `"Outside metropolitan area"', add
label define us10a_pwtype_lbl 9 `"Unknown"', add
label values us10a_pwtype us10a_pwtype_lbl

label define us10a_pwtype_lbl 0 `"NIU (not in universe)"'
label define us10a_pwtype_lbl 1 `"In central city"', add
label define us10a_pwtype_lbl 4 `"Not central city"', add
label define us10a_pwtype_lbl 5 `"Central city status unknown"', add
label define us10a_pwtype_lbl 7 `"Outside metropolitan area"', add
label define us10a_pwtype_lbl 9 `"Unknown"', add
label values us10a_pwtype us10a_pwtype_lbl

label define us10a_pwstate2_lbl 00 `"NIU (not in universe)"'
label define us10a_pwstate2_lbl 01 `"Alabama"', add
label define us10a_pwstate2_lbl 02 `"Alaska"', add
label define us10a_pwstate2_lbl 04 `"Arizona"', add
label define us10a_pwstate2_lbl 05 `"Arkansas"', add
label define us10a_pwstate2_lbl 06 `"California"', add
label define us10a_pwstate2_lbl 08 `"Colorado"', add
label define us10a_pwstate2_lbl 09 `"Connecticut"', add
label define us10a_pwstate2_lbl 10 `"Delaware"', add
label define us10a_pwstate2_lbl 11 `"District of Columbia"', add
label define us10a_pwstate2_lbl 12 `"Florida"', add
label define us10a_pwstate2_lbl 13 `"Georgia"', add
label define us10a_pwstate2_lbl 15 `"Hawaii"', add
label define us10a_pwstate2_lbl 16 `"Idaho"', add
label define us10a_pwstate2_lbl 17 `"Illinois"', add
label define us10a_pwstate2_lbl 18 `"Indiana"', add
label define us10a_pwstate2_lbl 19 `"Iowa"', add
label define us10a_pwstate2_lbl 20 `"Kansas"', add
label define us10a_pwstate2_lbl 21 `"Kentucky"', add
label define us10a_pwstate2_lbl 22 `"Louisiana"', add
label define us10a_pwstate2_lbl 23 `"Maine"', add
label define us10a_pwstate2_lbl 24 `"Maryland"', add
label define us10a_pwstate2_lbl 25 `"Massachusetts"', add
label define us10a_pwstate2_lbl 26 `"Michigan"', add
label define us10a_pwstate2_lbl 27 `"Minnesota"', add
label define us10a_pwstate2_lbl 28 `"Mississippi"', add
label define us10a_pwstate2_lbl 29 `"Missouri"', add
label define us10a_pwstate2_lbl 30 `"Montana"', add
label define us10a_pwstate2_lbl 31 `"Nebraska"', add
label define us10a_pwstate2_lbl 32 `"Nevada"', add
label define us10a_pwstate2_lbl 33 `"New Hampshire"', add
label define us10a_pwstate2_lbl 34 `"New Jersey"', add
label define us10a_pwstate2_lbl 35 `"New Mexico"', add
label define us10a_pwstate2_lbl 36 `"New York"', add
label define us10a_pwstate2_lbl 37 `"North Carolina"', add
label define us10a_pwstate2_lbl 38 `"North Dakota"', add
label define us10a_pwstate2_lbl 39 `"Ohio"', add
label define us10a_pwstate2_lbl 40 `"Oklahoma"', add
label define us10a_pwstate2_lbl 41 `"Oregon"', add
label define us10a_pwstate2_lbl 42 `"Pennsylvania"', add
label define us10a_pwstate2_lbl 44 `"Rhode island"', add
label define us10a_pwstate2_lbl 45 `"South Carolina"', add
label define us10a_pwstate2_lbl 46 `"South Dakota"', add
label define us10a_pwstate2_lbl 47 `"Tennessee"', add
label define us10a_pwstate2_lbl 48 `"Texas"', add
label define us10a_pwstate2_lbl 49 `"Utah"', add
label define us10a_pwstate2_lbl 50 `"Vermont"', add
label define us10a_pwstate2_lbl 51 `"Virginia"', add
label define us10a_pwstate2_lbl 53 `"Washington"', add
label define us10a_pwstate2_lbl 54 `"West Virginia"', add
label define us10a_pwstate2_lbl 55 `"Wisconsin"', add
label define us10a_pwstate2_lbl 56 `"Wyoming"', add
label define us10a_pwstate2_lbl 72 `"Puerto Rico"', add
label define us10a_pwstate2_lbl 81 `"Europe"', add
label define us10a_pwstate2_lbl 82 `"Eastern Asia"', add
label define us10a_pwstate2_lbl 83 `"Other Asia, not specified"', add
label define us10a_pwstate2_lbl 84 `"Mexico"', add
label define us10a_pwstate2_lbl 85 `"Other Americas"', add
label define us10a_pwstate2_lbl 86 `"Other, not elsewhere classified"', add
label define us10a_pwstate2_lbl 87 `"Iraq"', add
label values us10a_pwstate2 us10a_pwstate2_lbl

label define us10a_diffmob_lbl 0 `"NIU (not in universe)"'
label define us10a_diffmob_lbl 1 `"No independent living difficulty"', add
label define us10a_diffmob_lbl 2 `"Has independent living difficulty"', add
label values us10a_diffmob us10a_diffmob_lbl

label define us10a_diffmob_lbl 0 `"NIU (not in universe)"'
label define us10a_diffmob_lbl 1 `"No independent living difficulty"', add
label define us10a_diffmob_lbl 2 `"Has independent living difficulty"', add
label values us10a_diffmob us10a_diffmob_lbl

label define us10a_diffmob_lbl 0 `"NIU (not in universe)"'
label define us10a_diffmob_lbl 1 `"No independent living difficulty"', add
label define us10a_diffmob_lbl 2 `"Has independent living difficulty"', add
label values us10a_diffmob us10a_diffmob_lbl

label define us10a_diffcare_lbl 0 `"NIU (not in universe)"'
label define us10a_diffcare_lbl 1 `"No"', add
label define us10a_diffcare_lbl 2 `"Yes"', add
label values us10a_diffcare us10a_diffcare_lbl

label define us10a_vet80x90_lbl 0 `"NIU (not in universe)"'
label define us10a_vet80x90_lbl 1 `"No"', add
label define us10a_vet80x90_lbl 2 `"Yes, served this period"', add
label values us10a_vet80x90 us10a_vet80x90_lbl

label define us10a_vet80x90_lbl 0 `"NIU (not in universe)"'
label define us10a_vet80x90_lbl 1 `"No"', add
label define us10a_vet80x90_lbl 2 `"Yes, served this period"', add
label values us10a_vet80x90 us10a_vet80x90_lbl

label define us10a_vet75x80_lbl 0 `"NIU (not in universe)"'
label define us10a_vet75x80_lbl 1 `"No"', add
label define us10a_vet75x80_lbl 2 `"Yes, served this period"', add
label values us10a_vet75x80 us10a_vet75x80_lbl

label define us10a_vetvietn_lbl 0 `"NIU (not in universe)"'
label define us10a_vetvietn_lbl 1 `"No"', add
label define us10a_vetvietn_lbl 2 `"Yes, Vietnam-era veteran"', add
label values us10a_vetvietn us10a_vetvietn_lbl

label define us10a_vet55x64_lbl 0 `"NIU (not in universe)"'
label define us10a_vet55x64_lbl 1 `"No"', add
label define us10a_vet55x64_lbl 2 `"Yes, served this period"', add
label values us10a_vet55x64 us10a_vet55x64_lbl

label define us10a_vetkorea_lbl 0 `"NIU (not in universe)"'
label define us10a_vetkorea_lbl 1 `"No"', add
label define us10a_vetkorea_lbl 2 `"Yes, served this period"', add
label values us10a_vetkorea us10a_vetkorea_lbl

label define us10a_vetwwii_lbl 0 `"NIU (not in universe)"'
label define us10a_vetwwii_lbl 1 `"No"', add
label define us10a_vetwwii_lbl 2 `"Yes, served this period"', add
label values us10a_vetwwii us10a_vetwwii_lbl

label define us10a_vetother_lbl 0 `"NIU (not in universe)"'
label define us10a_vetother_lbl 1 `"No"', add
label define us10a_vetother_lbl 2 `"Yes, served this period(s)"', add
label values us10a_vetother us10a_vetother_lbl

label define us10a_tranwork_lbl 00 `"NIU (not in universe)"'
label define us10a_tranwork_lbl 10 `"Auto, truck, or van"', add
label define us10a_tranwork_lbl 20 `"Motorcycle"', add
label define us10a_tranwork_lbl 31 `"Bus or trolley bus"', add
label define us10a_tranwork_lbl 32 `"Streetcar or trolley car"', add
label define us10a_tranwork_lbl 33 `"Subway or elevated"', add
label define us10a_tranwork_lbl 34 `"Railroad"', add
label define us10a_tranwork_lbl 35 `"Taxicab"', add
label define us10a_tranwork_lbl 36 `"Ferryboat"', add
label define us10a_tranwork_lbl 40 `"Bicycle"', add
label define us10a_tranwork_lbl 50 `"Walked only"', add
label define us10a_tranwork_lbl 60 `"Other"', add
label define us10a_tranwork_lbl 70 `"Worked at home"', add
label values us10a_tranwork us10a_tranwork_lbl

label define us10a_carpool_lbl 0 `"NIU (not in universe)"'
label define us10a_carpool_lbl 1 `"Drives alone"', add
label define us10a_carpool_lbl 2 `"Carpools"', add
label values us10a_carpool us10a_carpool_lbl

label define us10a_riders_lbl 0 `"NIU (not in universe)"'
label define us10a_riders_lbl 1 `"Drives alone"', add
label define us10a_riders_lbl 2 `"2 people"', add
label define us10a_riders_lbl 3 `"3"', add
label define us10a_riders_lbl 4 `"4"', add
label define us10a_riders_lbl 5 `"5"', add
label define us10a_riders_lbl 6 `"6"', add
label define us10a_riders_lbl 8 `"7 to 9"', add
label define us10a_riders_lbl 9 `"10 or more"', add
label values us10a_riders us10a_riders_lbl

label define us10a_departs_lbl 0000 `"NIU (not in universe)"'
label define us10a_departs_lbl 0015 `"0:15"', add
label define us10a_departs_lbl 0045 `"0:45"', add
label define us10a_departs_lbl 0115 `"1:15"', add
label define us10a_departs_lbl 0145 `"1:45"', add
label define us10a_departs_lbl 0215 `"2:15"', add
label define us10a_departs_lbl 0245 `"2:45"', add
label define us10a_departs_lbl 0305 `"3:05"', add
label define us10a_departs_lbl 0315 `"3:15"', add
label define us10a_departs_lbl 0325 `"3:25"', add
label define us10a_departs_lbl 0335 `"3:35"', add
label define us10a_departs_lbl 0345 `"3:45"', add
label define us10a_departs_lbl 0355 `"3:55"', add
label define us10a_departs_lbl 0405 `"4:05"', add
label define us10a_departs_lbl 0415 `"4:15"', add
label define us10a_departs_lbl 0425 `"4:25"', add
label define us10a_departs_lbl 0435 `"4:35"', add
label define us10a_departs_lbl 0445 `"4:45"', add
label define us10a_departs_lbl 0455 `"4:55"', add
label define us10a_departs_lbl 0502 `"5:02"', add
label define us10a_departs_lbl 0507 `"5:07"', add
label define us10a_departs_lbl 0512 `"5:12"', add
label define us10a_departs_lbl 0517 `"5:17"', add
label define us10a_departs_lbl 0522 `"5:22"', add
label define us10a_departs_lbl 0527 `"5:27"', add
label define us10a_departs_lbl 0532 `"5:32"', add
label define us10a_departs_lbl 0537 `"5:37"', add
label define us10a_departs_lbl 0542 `"5:42"', add
label define us10a_departs_lbl 0547 `"5:47"', add
label define us10a_departs_lbl 0552 `"5:52"', add
label define us10a_departs_lbl 0557 `"5:57"', add
label define us10a_departs_lbl 0602 `"6:02"', add
label define us10a_departs_lbl 0607 `"6:07"', add
label define us10a_departs_lbl 0612 `"6:12"', add
label define us10a_departs_lbl 0617 `"6:17"', add
label define us10a_departs_lbl 0622 `"6:22"', add
label define us10a_departs_lbl 0627 `"6:27"', add
label define us10a_departs_lbl 0632 `"6:32"', add
label define us10a_departs_lbl 0637 `"6:37"', add
label define us10a_departs_lbl 0642 `"6:42"', add
label define us10a_departs_lbl 0647 `"6:47"', add
label define us10a_departs_lbl 0652 `"6:52"', add
label define us10a_departs_lbl 0657 `"6:57"', add
label define us10a_departs_lbl 0702 `"7:02"', add
label define us10a_departs_lbl 0707 `"7:07"', add
label define us10a_departs_lbl 0712 `"7:12"', add
label define us10a_departs_lbl 0717 `"7:17"', add
label define us10a_departs_lbl 0722 `"7:22"', add
label define us10a_departs_lbl 0727 `"7:27"', add
label define us10a_departs_lbl 0732 `"7:32"', add
label define us10a_departs_lbl 0737 `"7:37"', add
label define us10a_departs_lbl 0742 `"7:42"', add
label define us10a_departs_lbl 0747 `"7:47"', add
label define us10a_departs_lbl 0752 `"7:52"', add
label define us10a_departs_lbl 0757 `"7:57"', add
label define us10a_departs_lbl 0802 `"8:02"', add
label define us10a_departs_lbl 0807 `"8:07"', add
label define us10a_departs_lbl 0812 `"8:12"', add
label define us10a_departs_lbl 0817 `"8:17"', add
label define us10a_departs_lbl 0822 `"8:22"', add
label define us10a_departs_lbl 0827 `"8:27"', add
label define us10a_departs_lbl 0832 `"8:32"', add
label define us10a_departs_lbl 0837 `"8:37"', add
label define us10a_departs_lbl 0842 `"8:42"', add
label define us10a_departs_lbl 0847 `"8:47"', add
label define us10a_departs_lbl 0852 `"8:52"', add
label define us10a_departs_lbl 0857 `"8:57"', add
label define us10a_departs_lbl 0902 `"9:02"', add
label define us10a_departs_lbl 0907 `"9:07"', add
label define us10a_departs_lbl 0912 `"9:12"', add
label define us10a_departs_lbl 0917 `"9:17"', add
label define us10a_departs_lbl 0922 `"9:22"', add
label define us10a_departs_lbl 0927 `"9:27"', add
label define us10a_departs_lbl 0932 `"9:32"', add
label define us10a_departs_lbl 0937 `"9:37"', add
label define us10a_departs_lbl 0942 `"9:42"', add
label define us10a_departs_lbl 0947 `"9:47"', add
label define us10a_departs_lbl 0952 `"9:52"', add
label define us10a_departs_lbl 0957 `"9:57"', add
label define us10a_departs_lbl 1005 `"10:05"', add
label define us10a_departs_lbl 1015 `"10:15"', add
label define us10a_departs_lbl 1025 `"10:25"', add
label define us10a_departs_lbl 1035 `"10:35"', add
label define us10a_departs_lbl 1045 `"10:45"', add
label define us10a_departs_lbl 1055 `"10:55"', add
label define us10a_departs_lbl 1105 `"11:05"', add
label define us10a_departs_lbl 1115 `"11:15"', add
label define us10a_departs_lbl 1125 `"11:25"', add
label define us10a_departs_lbl 1135 `"11:35"', add
label define us10a_departs_lbl 1145 `"11:45"', add
label define us10a_departs_lbl 1155 `"11:55"', add
label define us10a_departs_lbl 1205 `"12:05"', add
label define us10a_departs_lbl 1215 `"12:15"', add
label define us10a_departs_lbl 1225 `"12:25"', add
label define us10a_departs_lbl 1235 `"12:35"', add
label define us10a_departs_lbl 1245 `"12:45"', add
label define us10a_departs_lbl 1255 `"12:55"', add
label define us10a_departs_lbl 1305 `"13:05"', add
label define us10a_departs_lbl 1315 `"13:15"', add
label define us10a_departs_lbl 1325 `"13:25"', add
label define us10a_departs_lbl 1335 `"13:35"', add
label define us10a_departs_lbl 1345 `"13:45"', add
label define us10a_departs_lbl 1355 `"13:55"', add
label define us10a_departs_lbl 1405 `"14:05"', add
label define us10a_departs_lbl 1415 `"14:15"', add
label define us10a_departs_lbl 1425 `"14:25"', add
label define us10a_departs_lbl 1435 `"14:35"', add
label define us10a_departs_lbl 1445 `"14:45"', add
label define us10a_departs_lbl 1455 `"14:55"', add
label define us10a_departs_lbl 1505 `"15:05"', add
label define us10a_departs_lbl 1515 `"15:15"', add
label define us10a_departs_lbl 1525 `"15:25"', add
label define us10a_departs_lbl 1535 `"15:35"', add
label define us10a_departs_lbl 1545 `"15:45"', add
label define us10a_departs_lbl 1555 `"15:55"', add
label define us10a_departs_lbl 1605 `"16:05"', add
label define us10a_departs_lbl 1615 `"16:15"', add
label define us10a_departs_lbl 1625 `"16:25"', add
label define us10a_departs_lbl 1635 `"16:35"', add
label define us10a_departs_lbl 1645 `"16:45"', add
label define us10a_departs_lbl 1655 `"16:55"', add
label define us10a_departs_lbl 1705 `"17:05"', add
label define us10a_departs_lbl 1715 `"17:15"', add
label define us10a_departs_lbl 1725 `"17:25"', add
label define us10a_departs_lbl 1735 `"17:35"', add
label define us10a_departs_lbl 1745 `"17:45"', add
label define us10a_departs_lbl 1755 `"17:55"', add
label define us10a_departs_lbl 1805 `"18:05"', add
label define us10a_departs_lbl 1815 `"18:15"', add
label define us10a_departs_lbl 1825 `"18:25"', add
label define us10a_departs_lbl 1835 `"18:35"', add
label define us10a_departs_lbl 1845 `"18:45"', add
label define us10a_departs_lbl 1855 `"18:55"', add
label define us10a_departs_lbl 1915 `"19:15"', add
label define us10a_departs_lbl 1945 `"19:45"', add
label define us10a_departs_lbl 2015 `"20:15"', add
label define us10a_departs_lbl 2045 `"20:45"', add
label define us10a_departs_lbl 2105 `"21:05"', add
label define us10a_departs_lbl 2115 `"21:15"', add
label define us10a_departs_lbl 2125 `"21:25"', add
label define us10a_departs_lbl 2135 `"21:35"', add
label define us10a_departs_lbl 2145 `"21:45"', add
label define us10a_departs_lbl 2155 `"21:55"', add
label define us10a_departs_lbl 2205 `"22:05"', add
label define us10a_departs_lbl 2215 `"22:15"', add
label define us10a_departs_lbl 2225 `"22:25"', add
label define us10a_departs_lbl 2235 `"22:35"', add
label define us10a_departs_lbl 2245 `"22:45"', add
label define us10a_departs_lbl 2255 `"22:55"', add
label define us10a_departs_lbl 2315 `"23:15"', add
label define us10a_departs_lbl 2345 `"23:45"', add
label values us10a_departs us10a_departs_lbl

label define us10a_pwcity_lbl 0010 `"Akron, OH"'
label define us10a_pwcity_lbl 0090 `"Alexandria, VA"', add
label define us10a_pwcity_lbl 0130 `"Allentown, PA"', add
label define us10a_pwcity_lbl 0210 `"Anchorage, AK"', add
label define us10a_pwcity_lbl 0270 `"Ann Arbor, MI"', add
label define us10a_pwcity_lbl 0510 `"Bakersfield, CA"', add
label define us10a_pwcity_lbl 0530 `"Baltimore, MD"', add
label define us10a_pwcity_lbl 0590 `"Baton Rouge, LA"', add
label define us10a_pwcity_lbl 0670 `"Beaumont, TX"', add
label define us10a_pwcity_lbl 0680 `"Bellevue, WA"', add
label define us10a_pwcity_lbl 0800 `"Boise, ID"', add
label define us10a_pwcity_lbl 0810 `"Boston, MA"', add
label define us10a_pwcity_lbl 0830 `"Bridgeport, CT"', add
label define us10a_pwcity_lbl 0880 `"Brownsville, TX"', add
label define us10a_pwcity_lbl 0890 `"Buffalo, NY"', add
label define us10a_pwcity_lbl 0930 `"Cambridge, MA"', add
label define us10a_pwcity_lbl 1000 `"Cape Coral, FL"', add
label define us10a_pwcity_lbl 1090 `"Charlotte, NC"', add
label define us10a_pwcity_lbl 1110 `"Chattanooga, TN"', add
label define us10a_pwcity_lbl 1150 `"Chesapeake, VA"', add
label define us10a_pwcity_lbl 1190 `"Chicago, IL"', add
label define us10a_pwcity_lbl 1290 `"Cincinnati, OH"', add
label define us10a_pwcity_lbl 1410 `"Columbia, SC"', add
label define us10a_pwcity_lbl 1450 `"Columbus, OH"', add
label define us10a_pwcity_lbl 1500 `"Corona, CA"', add
label define us10a_pwcity_lbl 1520 `"Corpus Christi, TX"', add
label define us10a_pwcity_lbl 1670 `"Dayton, OH"', add
label define us10a_pwcity_lbl 1730 `"Des Moines, IA"', add
label define us10a_pwcity_lbl 1750 `"Detroit, MI"', add
label define us10a_pwcity_lbl 1800 `"Downey, CA"', add
label define us10a_pwcity_lbl 1990 `"El Monte, CA"', add
label define us10a_pwcity_lbl 2050 `"Elizabeth, NJ"', add
label define us10a_pwcity_lbl 2090 `"Erie, PA"', add
label define us10a_pwcity_lbl 2170 `"Evansville, IN"', add
label define us10a_pwcity_lbl 2240 `"Fayetteville, NC"', add
label define us10a_pwcity_lbl 2270 `"Flint, MI"', add
label define us10a_pwcity_lbl 2260 `"Fontana, CA"', add
label define us10a_pwcity_lbl 2300 `"Fort Collins, CO"', add
label define us10a_pwcity_lbl 2330 `"Fort Wayne, IN"', add
label define us10a_pwcity_lbl 2370 `"Fresno, CA"', add
label define us10a_pwcity_lbl 2470 `"Gary, IN"', add
label define us10a_pwcity_lbl 2530 `"Grand Rapids, MI"', add
label define us10a_pwcity_lbl 2550 `"Green Bay, WI"', add
label define us10a_pwcity_lbl 2570 `"Greensboro, NC"', add
label define us10a_pwcity_lbl 2650 `"Hampton, VA"', add
label define us10a_pwcity_lbl 2710 `"Hartford, CT"', add
label define us10a_pwcity_lbl 2950 `"Huntsville, AL"', add
label define us10a_pwcity_lbl 2970 `"Independence, MO"', add
label define us10a_pwcity_lbl 3010 `"Inglewood, CA"', add
label define us10a_pwcity_lbl 3020 `"Irvine, CA"', add
label define us10a_pwcity_lbl 3090 `"Jackson, MS"', add
label define us10a_pwcity_lbl 3150 `"Jersey City, NJ"', add
label define us10a_pwcity_lbl 3260 `"Kansas City, MO"', add
label define us10a_pwcity_lbl 3330 `"Knoxville, TN"', add
label define us10a_pwcity_lbl 3390 `"Lafayette, LA"', add
label define us10a_pwcity_lbl 3440 `"Lancaster, CA"', add
label define us10a_pwcity_lbl 3470 `"Lansing, MI"', add
label define us10a_pwcity_lbl 3590 `"Lexington-Fayette, KY"', add
label define us10a_pwcity_lbl 3650 `"Little Rock, AR"', add
label define us10a_pwcity_lbl 3670 `"Livonia, MI"', add
label define us10a_pwcity_lbl 3690 `"Long Beach, CA"', add
label define us10a_pwcity_lbl 3770 `"Lowell, MA"', add
label define us10a_pwcity_lbl 3870 `"Madison, WI"', add
label define us10a_pwcity_lbl 3910 `"Manchester, NH"', add
label define us10a_pwcity_lbl 3960 `"McAllen, TX"', add
label define us10a_pwcity_lbl 4010 `"Memphis, TN"', add
label define us10a_pwcity_lbl 4130 `"Milwaukee, WI"', add
label define us10a_pwcity_lbl 4150 `"Minneapolis, MN"', add
label define us10a_pwcity_lbl 4170 `"Mobile, AL"', add
label define us10a_pwcity_lbl 4190 `"Modesto, CA"', add
label define us10a_pwcity_lbl 4250 `"Montgomery, AL"', add
label define us10a_pwcity_lbl 4270 `"Moreno Valley, CA"', add
label define us10a_pwcity_lbl 4530 `"New Haven, CT"', add
label define us10a_pwcity_lbl 4570 `"New Orleans, LA"', add
label define us10a_pwcity_lbl 4610 `"New York, NY"', add
label define us10a_pwcity_lbl 4630 `"Newark, NJ"', add
label define us10a_pwcity_lbl 4750 `"Newport News, VA"', add
label define us10a_pwcity_lbl 4810 `"Norfolk, VA"', add
label define us10a_pwcity_lbl 4860 `"Norwalk, CA"', add
label define us10a_pwcity_lbl 4990 `"Oklahoma City, OK"', add
label define us10a_pwcity_lbl 5030 `"Ontario, CA"', add
label define us10a_pwcity_lbl 5130 `"Oxnard, CA"', add
label define us10a_pwcity_lbl 5140 `"Palmdale, CA"', add
label define us10a_pwcity_lbl 5170 `"Pasadena, TX"', add
label define us10a_pwcity_lbl 5210 `"Paterson, NJ"', add
label define us10a_pwcity_lbl 5270 `"Peoria, IL"', add
label define us10a_pwcity_lbl 5330 `"Philadelphia, PA"', add
label define us10a_pwcity_lbl 5370 `"Pittsburgh, PA"', add
label define us10a_pwcity_lbl 5450 `"Pomona, CA"', add
label define us10a_pwcity_lbl 5650 `"Providence, RI"', add
label define us10a_pwcity_lbl 5750 `"Raleigh, NC"', add
label define us10a_pwcity_lbl 5770 `"Rancho Cucamonga, CA"', add
label define us10a_pwcity_lbl 5810 `"Reno, NV"', add
label define us10a_pwcity_lbl 5870 `"Richmond, VA"', add
label define us10a_pwcity_lbl 5890 `"Riverside, CA"', add
label define us10a_pwcity_lbl 5930 `"Rochester, NY"', add
label define us10a_pwcity_lbl 5970 `"Rockford, IL"', add
label define us10a_pwcity_lbl 6030 `"Sacramento, CA"', add
label define us10a_pwcity_lbl 6090 `"Saint Louis, MO"', add
label define us10a_pwcity_lbl 6110 `"Saint Paul, MN"', add
label define us10a_pwcity_lbl 6190 `"Salinas, CA"', add
label define us10a_pwcity_lbl 6250 `"San Bernadino, CA"', add
label define us10a_pwcity_lbl 6290 `"San Francisco, CA"', add
label define us10a_pwcity_lbl 6340 `"Santa Clarita, CA"', add
label define us10a_pwcity_lbl 6370 `"Savannah, GA"', add
label define us10a_pwcity_lbl 6430 `"Seattle, WA"', add
label define us10a_pwcity_lbl 6500 `"Simi Valley, CA"', add
label define us10a_pwcity_lbl 6530 `"Sioux Falls, SD"', add
label define us10a_pwcity_lbl 6590 `"South Bend, IN"', add
label define us10a_pwcity_lbl 6630 `"Spokane, WA"', add
label define us10a_pwcity_lbl 6650 `"Springfield, IL"', add
label define us10a_pwcity_lbl 6670 `"Springfield, MA"', add
label define us10a_pwcity_lbl 6690 `"Springfield, MO"', add
label define us10a_pwcity_lbl 6730 `"Stamford, CT"', add
label define us10a_pwcity_lbl 6750 `"Sterling Heights, MI"', add
label define us10a_pwcity_lbl 6790 `"Stockton, CA"', add
label define us10a_pwcity_lbl 6850 `"Syracuse, NY"', add
label define us10a_pwcity_lbl 6870 `"Tacoma, WA"', add
label define us10a_pwcity_lbl 6960 `"Thousand Oaks, CA"', add
label define us10a_pwcity_lbl 6970 `"Toledo, OH"', add
label define us10a_pwcity_lbl 7000 `"Torrance, CA"', add
label define us10a_pwcity_lbl 7070 `"Tulsa, OK"', add
label define us10a_pwcity_lbl 7100 `"Vancouver, WA"', add
label define us10a_pwcity_lbl 7130 `"Virginia Beach, VA"', add
label define us10a_pwcity_lbl 7180 `"Warren, MI"', add
label define us10a_pwcity_lbl 7230 `"Washington, DC"', add
label define us10a_pwcity_lbl 7250 `"Waterbury, CT"', add
label define us10a_pwcity_lbl 7320 `"West Covina, CA"', add
label define us10a_pwcity_lbl 7410 `"Wichita, KS"', add
label define us10a_pwcity_lbl 7530 `"Winston-Salem, NC"', add
label define us10a_pwcity_lbl 7570 `"Worcester, MA"', add
label define us10a_pwcity_lbl 7590 `"Yonkers, NY"', add
label define us10a_pwcity_lbl 9998 `"Unknown"', add
label define us10a_pwcity_lbl 9999 `"NIU (not in universe)"', add
label values us10a_pwcity us10a_pwcity_lbl

label define us10a_qage_lbl 0 `"Entered as written"'
label define us10a_qage_lbl 4 `"Allocated"', add
label values us10a_qage us10a_qage_lbl

label define us10a_qdeparts_lbl 0 `"Not allocated"'
label define us10a_qdeparts_lbl 4 `"Allocated"', add
label values us10a_qdeparts us10a_qdeparts_lbl

label define us10a_qbpl_lbl 0 `"Entered as written"'
label define us10a_qbpl_lbl 4 `"Allocated"', add
label values us10a_qbpl us10a_qbpl_lbl

label define us10a_qcarpool_lbl 0 `"Not allocated"'
label define us10a_qcarpool_lbl 4 `"Allocated"', add
label values us10a_qcarpool us10a_qcarpool_lbl

label define us10a_qmarinyr_lbl 0 `"[no label]"'
label define us10a_qmarinyr_lbl 4 `"[no label]"', add
label values us10a_qmarinyr us10a_qmarinyr_lbl

label define us10a_qclasswk_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define us10a_qclasswk_lbl 4 `"Allocated"', add
label values us10a_qclasswk us10a_qclasswk_lbl

label define us10a_qlanguag_lbl 0 `"0"'
label define us10a_qlanguag_lbl 4 `"4"', add
label values us10a_qlanguag us10a_qlanguag_lbl

label define us10a_qyrnatur_lbl 0 `"[no label]"'
label define us10a_qyrnatur_lbl 4 `"[no label]"', add
label values us10a_qyrnatur us10a_qyrnatur_lbl

label define us10a_qempstat_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define us10a_qempstat_lbl 4 `"Allocated"', add
label values us10a_qempstat us10a_qempstat_lbl

label define us10a_qeduc_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define us10a_qeduc_lbl 4 `"Consistency edit"', add
label values us10a_qeduc us10a_qeduc_lbl

label define us10a_qincbus_lbl 0 `"Not allocated"'
label define us10a_qincbus_lbl 4 `"Allocated"', add
label values us10a_qincbus us10a_qincbus_lbl

label define us10a_qincinvs_lbl 0 `"Not allocated or N/A"'
label define us10a_qincinvs_lbl 4 `"Allocated"', add
label values us10a_qincinvs us10a_qincinvs_lbl

label define us10a_qincss_lbl 0 `"Not allocated"'
label define us10a_qincss_lbl 4 `"Allocated"', add
label values us10a_qincss us10a_qincss_lbl

label define us10a_qincwage_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define us10a_qincwage_lbl 4 `"Allocated"', add
label values us10a_qincwage us10a_qincwage_lbl

label define us10a_qincwelf_lbl 0 `"Not allocated"'
label define us10a_qincwelf_lbl 4 `"Allocated"', add
label values us10a_qincwelf us10a_qincwelf_lbl

label define us10a_qind_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define us10a_qind_lbl 4 `"Allocated"', add
label values us10a_qind us10a_qind_lbl

label define us10a_qdifmob_lbl 0 `"Not allocated"'
label define us10a_qdifmob_lbl 4 `"Allocated"', add
label values us10a_qdifmob us10a_qdifmob_lbl

label define us10a_qmarrno_lbl 0 `"[no label]"'
label define us10a_qmarrno_lbl 4 `"[no label]"', add
label values us10a_qmarrno us10a_qmarrno_lbl

label define us10a_qpwstat2_lbl 0 `"Not allocated"'
label define us10a_qpwstat2_lbl 4 `"Allocated"', add
label values us10a_qpwstat2 us10a_qpwstat2_lbl

label define us10a_qmarst_lbl 0 `"Entered as written"'
label define us10a_qmarst_lbl 4 `"Allocated"', add
label values us10a_qmarst us10a_qmarst_lbl

label define us10a_qincreti_lbl 0 `"Not allocated"'
label define us10a_qincreti_lbl 4 `"Allocated"', add
label values us10a_qincreti us10a_qincreti_lbl

label define us10a_qmigplc1_lbl 0 `"Not allocated"'
label define us10a_qmigplc1_lbl 4 `"Failed edit"', add
label values us10a_qmigplc1 us10a_qmigplc1_lbl

label define us10a_qmigrat1_lbl 0 `"Not allocated"'
label define us10a_qmigrat1_lbl 4 `"Allocated"', add
label values us10a_qmigrat1 us10a_qmigrat1_lbl

label define us10a_qmovedin_lbl 0 `"Not allocated"'
label define us10a_qmovedin_lbl 4 `"Allocated"', add
label values us10a_qmovedin us10a_qmovedin_lbl

label define us10a_qocc_lbl 0 `"Entered as written"'
label define us10a_qocc_lbl 4 `"Allocated"', add
label values us10a_qocc us10a_qocc_lbl

label define us10a_qrace_lbl 0 `"Entered as written"'
label define us10a_qrace_lbl 4 `"Allocated"', add
label values us10a_qrace us10a_qrace_lbl

label define us10a_qrelate_lbl 0 `"Entered as written"'
label define us10a_qrelate_lbl 3 `"Missing"', add
label define us10a_qrelate_lbl 4 `"Allocated"', add
label values us10a_qrelate us10a_qrelate_lbl

label define us10a_qriders_lbl 0 `"Not allocated"'
label define us10a_qriders_lbl 4 `"Allocated"', add
label values us10a_qriders us10a_qriders_lbl

label define us10a_qschool_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define us10a_qschool_lbl 4 `"Allocated"', add
label values us10a_qschool us10a_qschool_lbl

label define us10a_qsex_lbl 0 `"Entered as written"'
label define us10a_qsex_lbl 4 `"Allocated"', add
label values us10a_qsex us10a_qsex_lbl

label define us10a_qspeaken_lbl 0 `"Not allocated"'
label define us10a_qspeaken_lbl 4 `"Allocated, hot deck"', add
label values us10a_qspeaken us10a_qspeaken_lbl

label define us10a_qtrantim_lbl 0 `"Not allocated"'
label define us10a_qtrantim_lbl 4 `"Allocated"', add
label values us10a_qtrantim us10a_qtrantim_lbl

label define us10a_qtranwor_lbl 0 `"Not allocated"'
label define us10a_qtranwor_lbl 4 `"Allocated"', add
label values us10a_qtranwor us10a_qtranwor_lbl

label define us10a_quhrswor_lbl 0 `"Not allocated"'
label define us10a_quhrswor_lbl 4 `"Allocated"', add
label values us10a_quhrswor us10a_quhrswor_lbl

label define us10a_qvetper_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define us10a_qvetper_lbl 4 `"Allocated"', add
label values us10a_qvetper us10a_qvetper_lbl

label define us10a_qvetstat_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define us10a_qvetstat_lbl 4 `"Allocated"', add
label values us10a_qvetstat us10a_qvetstat_lbl

label define us10a_qvetstat_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define us10a_qvetstat_lbl 4 `"Allocated"', add
label values us10a_qvetstat us10a_qvetstat_lbl

label define us10a_qwkswork_lbl 0 `"Original entry or Inapplicable (not in universe)"'
label define us10a_qwkswork_lbl 4 `"Allocated, pre-edit"', add
label values us10a_qwkswork us10a_qwkswork_lbl

label define us10a_qworkedy_lbl 0 `"Not allocated"'
label define us10a_qworkedy_lbl 4 `"Allocated"', add
label values us10a_qworkedy us10a_qworkedy_lbl

label define us10a_qyrimm_lbl 0 `"Fields ok as written"'
label define us10a_qyrimm_lbl 4 `"Allocated, hot deck"', add
label values us10a_qyrimm us10a_qyrimm_lbl

label define us10a_gchouse_lbl 0 `"NIU (not in universe)"'
label define us10a_gchouse_lbl 1 `"No"', add
label define us10a_gchouse_lbl 2 `"Yes"', add
label values us10a_gchouse us10a_gchouse_lbl

label define us10a_racamind_lbl 1 `"No"'
label define us10a_racamind_lbl 2 `"Yes"', add
label values us10a_racamind us10a_racamind_lbl

label define us10a_racasian_lbl 1 `"No"'
label define us10a_racasian_lbl 2 `"Yes"', add
label values us10a_racasian us10a_racasian_lbl

label define us10a_racblk_lbl 1 `"No"'
label define us10a_racblk_lbl 2 `"Yes"', add
label values us10a_racblk us10a_racblk_lbl

label define us10a_racnum_lbl 1 `"1 race group"'
label define us10a_racnum_lbl 2 `"2 race groups"', add
label define us10a_racnum_lbl 3 `"3"', add
label define us10a_racnum_lbl 4 `"4"', add
label define us10a_racnum_lbl 5 `"5"', add
label define us10a_racnum_lbl 6 `"6"', add
label values us10a_racnum us10a_racnum_lbl

label define us10a_racother_lbl 1 `"No"'
label define us10a_racother_lbl 2 `"Yes"', add
label values us10a_racother us10a_racother_lbl

label define us10a_racwht_lbl 1 `"No"'
label define us10a_racwht_lbl 2 `"Yes"', add
label values us10a_racwht us10a_racwht_lbl

label define us10a_racwht_lbl 1 `"No"'
label define us10a_racwht_lbl 2 `"Yes"', add
label values us10a_racwht us10a_racwht_lbl

label define us10a_indnaics_lbl 000000 `"NIU (not in universe)"'
label define us10a_indnaics_lbl 000003 `"3"', add
label define us10a_indnaics_lbl 000004 `"4"', add
label define us10a_indnaics_lbl 000022 `"22"', add
label define us10a_indnaics_lbl 000023 `"23"', add
label define us10a_indnaics_lbl 000031 `"31"', add
label define us10a_indnaics_lbl 000033 `"33"', add
label define us10a_indnaics_lbl 000042 `"42"', add
label define us10a_indnaics_lbl 000052 `"52"', add
label define us10a_indnaics_lbl 000053 `"53"', add
label define us10a_indnaics_lbl 000055 `"55"', add
label define us10a_indnaics_lbl 000092 `"92"', add
label define us10a_indnaics_lbl 000111 `"111"', add
label define us10a_indnaics_lbl 000112 `"112"', add
label define us10a_indnaics_lbl 000113 `"113"', add
label define us10a_indnaics_lbl 000114 `"114"', add
label define us10a_indnaics_lbl 000115 `"115"', add
label define us10a_indnaics_lbl 000211 `"211"', add
label define us10a_indnaics_lbl 000213 `"213"', add
label define us10a_indnaics_lbl 000221 `"221"', add
label define us10a_indnaics_lbl 000311 `"311"', add
label define us10a_indnaics_lbl 000314 `"314"', add
label define us10a_indnaics_lbl 000316 `"316"', add
label define us10a_indnaics_lbl 000325 `"325"', add
label define us10a_indnaics_lbl 000327 `"327"', add
label define us10a_indnaics_lbl 000331 `"331"', add
label define us10a_indnaics_lbl 000332 `"332"', add
label define us10a_indnaics_lbl 000333 `"333"', add
label define us10a_indnaics_lbl 000334 `"334"', add
label define us10a_indnaics_lbl 000335 `"335"', add
label define us10a_indnaics_lbl 000336 `"336"', add
label define us10a_indnaics_lbl 000337 `"337"', add
label define us10a_indnaics_lbl 000424 `"424"', add
label define us10a_indnaics_lbl 000442 `"442"', add
label define us10a_indnaics_lbl 000446 `"446"', add
label define us10a_indnaics_lbl 000447 `"447"', add
label define us10a_indnaics_lbl 000451 `"451"', add
label define us10a_indnaics_lbl 000481 `"481"', add
label define us10a_indnaics_lbl 000482 `"482"', add
label define us10a_indnaics_lbl 000483 `"483"', add
label define us10a_indnaics_lbl 000484 `"484"', add
label define us10a_indnaics_lbl 000485 `"485"', add
label define us10a_indnaics_lbl 000486 `"486"', add
label define us10a_indnaics_lbl 000487 `"487"', add
label define us10a_indnaics_lbl 000488 `"488"', add
label define us10a_indnaics_lbl 000491 `"491"', add
label define us10a_indnaics_lbl 000492 `"492"', add
label define us10a_indnaics_lbl 000493 `"493"', add
label define us10a_indnaics_lbl 000515 `"515"', add
label define us10a_indnaics_lbl 000517 `"517"', add
label define us10a_indnaics_lbl 000522 `"522"', add
label define us10a_indnaics_lbl 000524 `"524"', add
label define us10a_indnaics_lbl 000531 `"531"', add
label define us10a_indnaics_lbl 000532 `"532"', add
label define us10a_indnaics_lbl 000561 `"561"', add
label define us10a_indnaics_lbl 000562 `"562"', add
label define us10a_indnaics_lbl 000611 `"611"', add
label define us10a_indnaics_lbl 000621 `"621"', add
label define us10a_indnaics_lbl 000622 `"622"', add
label define us10a_indnaics_lbl 000623 `"623"', add
label define us10a_indnaics_lbl 000711 `"711"', add
label define us10a_indnaics_lbl 000712 `"712"', add
label define us10a_indnaics_lbl 000713 `"713"', add
label define us10a_indnaics_lbl 000721 `"721"', add
label define us10a_indnaics_lbl 000722 `"722"', add
label define us10a_indnaics_lbl 000813 `"813"', add
label define us10a_indnaics_lbl 000814 `"814"', add
label define us10a_indnaics_lbl 000923 `"923"', add
label define us10a_indnaics_lbl 000928 `"928"', add
label define us10a_indnaics_lbl 001133 `"1133"', add
label define us10a_indnaics_lbl 002121 `"2121"', add
label define us10a_indnaics_lbl 002122 `"2122"', add
label define us10a_indnaics_lbl 002123 `"2123"', add
label define us10a_indnaics_lbl 002211 `"2211"', add
label define us10a_indnaics_lbl 002212 `"2212"', add
label define us10a_indnaics_lbl 002213 `"2213"', add
label define us10a_indnaics_lbl 003113 `"3113"', add
label define us10a_indnaics_lbl 003114 `"3114"', add
label define us10a_indnaics_lbl 003115 `"3115"', add
label define us10a_indnaics_lbl 003116 `"3116"', add
label define us10a_indnaics_lbl 003118 `"3118"', add
label define us10a_indnaics_lbl 003121 `"3121"', add
label define us10a_indnaics_lbl 003122 `"3122"', add
label define us10a_indnaics_lbl 003131 `"3131"', add
label define us10a_indnaics_lbl 003132 `"3132"', add
label define us10a_indnaics_lbl 003133 `"3133"', add
label define us10a_indnaics_lbl 003152 `"3152"', add
label define us10a_indnaics_lbl 003159 `"3159"', add
label define us10a_indnaics_lbl 003162 `"3162"', add
label define us10a_indnaics_lbl 003211 `"3211"', add
label define us10a_indnaics_lbl 003212 `"3212"', add
label define us10a_indnaics_lbl 003219 `"3219"', add
label define us10a_indnaics_lbl 003221 `"3221"', add
label define us10a_indnaics_lbl 003222 `"3222"', add
label define us10a_indnaics_lbl 003231 `"3231"', add
label define us10a_indnaics_lbl 003241 `"3241"', add
label define us10a_indnaics_lbl 003252 `"3252"', add
label define us10a_indnaics_lbl 003253 `"3253"', add
label define us10a_indnaics_lbl 003254 `"3254"', add
label define us10a_indnaics_lbl 003255 `"3255"', add
label define us10a_indnaics_lbl 003256 `"3256"', add
label define us10a_indnaics_lbl 003261 `"3261"', add
label define us10a_indnaics_lbl 003262 `"3262"', add
label define us10a_indnaics_lbl 003272 `"3272"', add
label define us10a_indnaics_lbl 003279 `"3279"', add
label define us10a_indnaics_lbl 003313 `"3313"', add
label define us10a_indnaics_lbl 003314 `"3314"', add
label define us10a_indnaics_lbl 003315 `"3315"', add
label define us10a_indnaics_lbl 003321 `"3321"', add
label define us10a_indnaics_lbl 003322 `"3322"', add
label define us10a_indnaics_lbl 003327 `"3327"', add
label define us10a_indnaics_lbl 003328 `"3328"', add
label define us10a_indnaics_lbl 003331 `"3331"', add
label define us10a_indnaics_lbl 003333 `"3333"', add
label define us10a_indnaics_lbl 003335 `"3335"', add
label define us10a_indnaics_lbl 003336 `"3336"', add
label define us10a_indnaics_lbl 003341 `"3341"', add
label define us10a_indnaics_lbl 003345 `"3345"', add
label define us10a_indnaics_lbl 003352 `"3352"', add
label define us10a_indnaics_lbl 003365 `"3365"', add
label define us10a_indnaics_lbl 003366 `"3366"', add
label define us10a_indnaics_lbl 003369 `"3369"', add
label define us10a_indnaics_lbl 003391 `"3391"', add
label define us10a_indnaics_lbl 003399 `"3399"', add
label define us10a_indnaics_lbl 004231 `"4231"', add
label define us10a_indnaics_lbl 004232 `"4232"', add
label define us10a_indnaics_lbl 004233 `"4233"', add
label define us10a_indnaics_lbl 004234 `"4234"', add
label define us10a_indnaics_lbl 004235 `"4235"', add
label define us10a_indnaics_lbl 004236 `"4236"', add
label define us10a_indnaics_lbl 004237 `"4237"', add
label define us10a_indnaics_lbl 004238 `"4238"', add
label define us10a_indnaics_lbl 004239 `"4239"', add
label define us10a_indnaics_lbl 004241 `"4241"', add
label define us10a_indnaics_lbl 004243 `"4243"', add
label define us10a_indnaics_lbl 004244 `"4244"', add
label define us10a_indnaics_lbl 004245 `"4245"', add
label define us10a_indnaics_lbl 004247 `"4247"', add
label define us10a_indnaics_lbl 004248 `"4248"', add
label define us10a_indnaics_lbl 004249 `"4249"', add
label define us10a_indnaics_lbl 004251 `"4251"', add
label define us10a_indnaics_lbl 004411 `"4411"', add
label define us10a_indnaics_lbl 004412 `"4412"', add
label define us10a_indnaics_lbl 004413 `"4413"', add
label define us10a_indnaics_lbl 004431 `"4431"', add
label define us10a_indnaics_lbl 004441 `"4441"', add
label define us10a_indnaics_lbl 004442 `"4442"', add
label define us10a_indnaics_lbl 004451 `"4451"', add
label define us10a_indnaics_lbl 004452 `"4452"', add
label define us10a_indnaics_lbl 004453 `"4453"', add
label define us10a_indnaics_lbl 004481 `"4481"', add
label define us10a_indnaics_lbl 004483 `"4483"', add
label define us10a_indnaics_lbl 004529 `"4529"', add
label define us10a_indnaics_lbl 004531 `"4531"', add
label define us10a_indnaics_lbl 004533 `"4533"', add
label define us10a_indnaics_lbl 004539 `"4539"', add
label define us10a_indnaics_lbl 004542 `"4542"', add
label define us10a_indnaics_lbl 004853 `"4853"', add
label define us10a_indnaics_lbl 005111 `"5111"', add
label define us10a_indnaics_lbl 005112 `"5112"', add
label define us10a_indnaics_lbl 005121 `"5121"', add
label define us10a_indnaics_lbl 005122 `"5122"', add
label define us10a_indnaics_lbl 005171 `"5171"', add
label define us10a_indnaics_lbl 005182 `"5182"', add
label define us10a_indnaics_lbl 005191 `"5191"', add
label define us10a_indnaics_lbl 005221 `"5221"', add
label define us10a_indnaics_lbl 005321 `"5321"', add
label define us10a_indnaics_lbl 005411 `"5411"', add
label define us10a_indnaics_lbl 005412 `"5412"', add
label define us10a_indnaics_lbl 005413 `"5413"', add
label define us10a_indnaics_lbl 005414 `"5414"', add
label define us10a_indnaics_lbl 005415 `"5415"', add
label define us10a_indnaics_lbl 005416 `"5416"', add
label define us10a_indnaics_lbl 005417 `"5417"', add
label define us10a_indnaics_lbl 005418 `"5418"', add
label define us10a_indnaics_lbl 005419 `"5419"', add
label define us10a_indnaics_lbl 005613 `"5613"', add
label define us10a_indnaics_lbl 005614 `"5614"', add
label define us10a_indnaics_lbl 005615 `"5615"', add
label define us10a_indnaics_lbl 005616 `"5616"', add
label define us10a_indnaics_lbl 005617 `"5617"', add
label define us10a_indnaics_lbl 006111 `"6111"', add
label define us10a_indnaics_lbl 006211 `"6211"', add
label define us10a_indnaics_lbl 006212 `"6212"', add
label define us10a_indnaics_lbl 006213 `"6213"', add
label define us10a_indnaics_lbl 006214 `"6214"', add
label define us10a_indnaics_lbl 006216 `"6216"', add
label define us10a_indnaics_lbl 006231 `"6231"', add
label define us10a_indnaics_lbl 006241 `"6241"', add
label define us10a_indnaics_lbl 006242 `"6242"', add
label define us10a_indnaics_lbl 006243 `"6243"', add
label define us10a_indnaics_lbl 006244 `"6244"', add
label define us10a_indnaics_lbl 007211 `"7211"', add
label define us10a_indnaics_lbl 007224 `"7224"', add
label define us10a_indnaics_lbl 008111 `"8111"', add
label define us10a_indnaics_lbl 008112 `"8112"', add
label define us10a_indnaics_lbl 008113 `"8113"', add
label define us10a_indnaics_lbl 008114 `"8114"', add
label define us10a_indnaics_lbl 008121 `"8121"', add
label define us10a_indnaics_lbl 008122 `"8122"', add
label define us10a_indnaics_lbl 008123 `"8123"', add
label define us10a_indnaics_lbl 008129 `"8129"', add
label define us10a_indnaics_lbl 008131 `"8131"', add
label define us10a_indnaics_lbl 008139 `"8139"', add
label define us10a_indnaics_lbl 009211 `"9211"', add
label define us10a_indnaics_lbl 022132 `"22132"', add
label define us10a_indnaics_lbl 031411 `"31411"', add
label define us10a_indnaics_lbl 032199 `"32199"', add
label define us10a_indnaics_lbl 032221 `"32221"', add
label define us10a_indnaics_lbl 032411 `"32411"', add
label define us10a_indnaics_lbl 032621 `"32621"', add
label define us10a_indnaics_lbl 032711 `"32711"', add
label define us10a_indnaics_lbl 032712 `"32712"', add
label define us10a_indnaics_lbl 033299 `"33299"', add
label define us10a_indnaics_lbl 033311 `"33311"', add
label define us10a_indnaics_lbl 033641 `"33641"', add
label define us10a_indnaics_lbl 042393 `"42393"', add
label define us10a_indnaics_lbl 042491 `"42491"', add
label define us10a_indnaics_lbl 044413 `"44413"', add
label define us10a_indnaics_lbl 044611 `"44611"', add
label define us10a_indnaics_lbl 044821 `"44821"', add
label define us10a_indnaics_lbl 045113 `"45113"', add
label define us10a_indnaics_lbl 045121 `"45121"', add
label define us10a_indnaics_lbl 045211 `"45211"', add
label define us10a_indnaics_lbl 045321 `"45321"', add
label define us10a_indnaics_lbl 045322 `"45322"', add
label define us10a_indnaics_lbl 045431 `"45431"', add
label define us10a_indnaics_lbl 045439 `"45439"', add
label define us10a_indnaics_lbl 051111 `"51111"', add
label define us10a_indnaics_lbl 051912 `"51912"', add
label define us10a_indnaics_lbl 051913 `"51913"', add
label define us10a_indnaics_lbl 053223 `"53223"', add
label define us10a_indnaics_lbl 054194 `"54194"', add
label define us10a_indnaics_lbl 056173 `"56173"', add
label define us10a_indnaics_lbl 062131 `"62131"', add
label define us10a_indnaics_lbl 062132 `"62132"', add
label define us10a_indnaics_lbl 071395 `"71395"', add
label define us10a_indnaics_lbl 081393 `"81393"', add
label define us10a_indnaics_lbl 092113 `"92113"', add
label define us10a_indnaics_lbl 092119 `"92119"', add
label define us10a_indnaics_lbl 311811 `"311811"', add
label define us10a_indnaics_lbl 443111 `"443111"', add
label define us10a_indnaics_lbl 454111 `"454111"', add
label define us10a_indnaics_lbl 454112 `"454112"', add
label define us10a_indnaics_lbl 454113 `"454113"', add
label define us10a_indnaics_lbl 811192 `"811192"', add
label define us10a_indnaics_lbl 812111 `"812111"', add
label define us10a_indnaics_lbl 812112 `"812112"', add
label define us10a_indnaics_lbl 928110 `"928110"', add
label values us10a_indnaics us10a_indnaics_lbl

label define us10a_occsoc_lbl 000000 `"NIU (not in universe)"'
label define us10a_occsoc_lbl 111021 `"General and operations managers"', add
label define us10a_occsoc_lbl 111022 `"Chief executives and legislators"', add
label define us10a_occsoc_lbl 112011 `"Advertising and promotions managers"', add
label define us10a_occsoc_lbl 112020 `"Marketing and sales managers"', add
label define us10a_occsoc_lbl 112031 `"Public relations and fundraising managers"', add
label define us10a_occsoc_lbl 113011 `"Administrative services managers"', add
label define us10a_occsoc_lbl 113021 `"Computer and information systems managers"', add
label define us10a_occsoc_lbl 113031 `"Financial managers"', add
label define us10a_occsoc_lbl 113051 `"Industrial production managers"', add
label define us10a_occsoc_lbl 113061 `"Purchasing managers"', add
label define us10a_occsoc_lbl 113071 `"Transportation, storage, and distribution managers"', add
label define us10a_occsoc_lbl 113111 `"Compensation and benefits managers"', add
label define us10a_occsoc_lbl 113121 `"Human resources managers"', add
label define us10a_occsoc_lbl 113131 `"Training and development managers"', add
label define us10a_occsoc_lbl 119013 `"Farmers, ranchers, and other agricultural managers"', add
label define us10a_occsoc_lbl 119021 `"Constructions managers"', add
label define us10a_occsoc_lbl 119030 `"Education administrators"', add
label define us10a_occsoc_lbl 119041 `"Architectural and engineering managers"', add
label define us10a_occsoc_lbl 119051 `"Food service managers"', add
label define us10a_occsoc_lbl 119071 `"Gaming managers"', add
label define us10a_occsoc_lbl 119081 `"Lodging managers"', add
label define us10a_occsoc_lbl 119111 `"Medical and health services managers"', add
label define us10a_occsoc_lbl 119121 `"Natural science managers"', add
label define us10a_occsoc_lbl 119141 `"Property, real estate, and community association managers"', add
label define us10a_occsoc_lbl 119151 `"Social and community service managers"', add
label define us10a_occsoc_lbl 119161 `"Emergency management directors"', add
label define us10a_occsoc_lbl 119162 `"Miscellaneous managers, including funeral service managers and postmasters and mail superintendents"', add
label define us10a_occsoc_lbl 131011 `"Agents and business managers of artists, performers, and athletes"', add
label define us10a_occsoc_lbl 131021 `"Buyers and purchasing agents, farm products"', add
label define us10a_occsoc_lbl 131022 `"Wholesale and retail buyers, except farm products"', add
label define us10a_occsoc_lbl 131023 `"Purchasing agents, except wholesale, retail, and farm products"', add
label define us10a_occsoc_lbl 131030 `"Claims adjusters, appraisers, examiners, and investigators"', add
label define us10a_occsoc_lbl 131041 `"Compliance officers"', add
label define us10a_occsoc_lbl 131051 `"Cost estimators"', add
label define us10a_occsoc_lbl 131070 `"Human resources workers"', add
label define us10a_occsoc_lbl 131081 `"Logisticians"', add
label define us10a_occsoc_lbl 131111 `"Management analysts"', add
label define us10a_occsoc_lbl 131121 `"Meeting, convention, and event planners"', add
label define us10a_occsoc_lbl 131131 `"Fundraisers"', add
label define us10a_occsoc_lbl 131141 `"Compensation, benefits, and job analysis specialists"', add
label define us10a_occsoc_lbl 131151 `"Training and development specialists"', add
label define us10a_occsoc_lbl 131161 `"Market research analysts and marketing specialists"', add
label define us10a_occsoc_lbl 131199 `"Business operations specialists, all other"', add
label define us10a_occsoc_lbl 132011 `"Accountants and auditors"', add
label define us10a_occsoc_lbl 132021 `"Appraisers and assessors of real estate"', add
label define us10a_occsoc_lbl 132031 `"Budget analysts"', add
label define us10a_occsoc_lbl 132041 `"Credit analysts"', add
label define us10a_occsoc_lbl 132051 `"Financial analysts"', add
label define us10a_occsoc_lbl 132052 `"Personal financial advisors"', add
label define us10a_occsoc_lbl 132053 `"Insurance underwriters"', add
label define us10a_occsoc_lbl 132061 `"Financial examiners"', add
label define us10a_occsoc_lbl 132070 `"Credit counselors and loan officers"', add
label define us10a_occsoc_lbl 132081 `"Tax examiners and collectors, and revenue agents"', add
label define us10a_occsoc_lbl 132082 `"Tax preparers"', add
label define us10a_occsoc_lbl 132099 `"Financial specialists, all other"', add
label define us10a_occsoc_lbl 151111 `"Computer and information research scientists"', add
label define us10a_occsoc_lbl 151121 `"Computer scientists and systems analysts"', add
label define us10a_occsoc_lbl 151122 `"Information security analysts"', add
label define us10a_occsoc_lbl 151131 `"Computer programmers"', add
label define us10a_occsoc_lbl 151134 `"Web developers"', add
label define us10a_occsoc_lbl 151135 `"Software developers, applications and systems software"', add
label define us10a_occsoc_lbl 151141 `"Database administrators"', add
label define us10a_occsoc_lbl 151142 `"Network and computer systems administrators"', add
label define us10a_occsoc_lbl 151143 `"Computer network architects"', add
label define us10a_occsoc_lbl 151150 `"Computer support specialists"', add
label define us10a_occsoc_lbl 151199 `"Computer occupations, all other"', add
label define us10a_occsoc_lbl 152011 `"Actuaries"', add
label define us10a_occsoc_lbl 152031 `"Operations research analysts"', add
label define us10a_occsoc_lbl 152032 `"Miscellaneous mathematical science occupations, including mathematicians and statisticians"', add
label define us10a_occsoc_lbl 171010 `"Architects, except naval"', add
label define us10a_occsoc_lbl 171020 `"Surveyors, cartographers, and photogrammetrists"', add
label define us10a_occsoc_lbl 172011 `"Aerospace engineers"', add
label define us10a_occsoc_lbl 172041 `"Chemical engineers"', add
label define us10a_occsoc_lbl 172051 `"Civil engineers"', add
label define us10a_occsoc_lbl 172061 `"Computer hardware engineers"', add
label define us10a_occsoc_lbl 172070 `"Electrical and electronics engineers"', add
label define us10a_occsoc_lbl 172081 `"Environmental engineers"', add
label define us10a_occsoc_lbl 172082 `"Biomedical and agricultural engineers"', add
label define us10a_occsoc_lbl 172110 `"Industrial engineers, including health and safety"', add
label define us10a_occsoc_lbl 172121 `"Marine engineers and naval architects"', add
label define us10a_occsoc_lbl 172131 `"Materials engineers"', add
label define us10a_occsoc_lbl 172141 `"Mechanical engineers"', add
label define us10a_occsoc_lbl 172142 `"Petroleum, mining and geological engineers, including mining safety engineers"', add
label define us10a_occsoc_lbl 172143 `"Miscellaneous engineeers including nuclear engineers"', add
label define us10a_occsoc_lbl 173010 `"Drafters"', add
label define us10a_occsoc_lbl 173020 `"Engineering technicians, except drafters"', add
label define us10a_occsoc_lbl 173031 `"Surveying and mapping technicians"', add
label define us10a_occsoc_lbl 191010 `"Agricultural and food scientists"', add
label define us10a_occsoc_lbl 191020 `"Biological scientists"', add
label define us10a_occsoc_lbl 191030 `"Conservation scientists and foresters"', add
label define us10a_occsoc_lbl 191031 `"Medical scientists, and life scientists, all other"', add
label define us10a_occsoc_lbl 192010 `"Astronomers and physicists"', add
label define us10a_occsoc_lbl 192021 `"Atmospheric and space scientists"', add
label define us10a_occsoc_lbl 192030 `"Chemists and materials scientists"', add
label define us10a_occsoc_lbl 192040 `"Environmental scientists and geoscientists"', add
label define us10a_occsoc_lbl 192099 `"Physical scientists, all other"', add
label define us10a_occsoc_lbl 193011 `"Economists"', add
label define us10a_occsoc_lbl 193030 `"Psychologists"', add
label define us10a_occsoc_lbl 193051 `"Urban and regional planners"', add
label define us10a_occsoc_lbl 193052 `"Miscellaneous social scientists, including survey researchers and sociologists"', add
label define us10a_occsoc_lbl 194011 `"Agricultural and food science technicians"', add
label define us10a_occsoc_lbl 194021 `"Biological technicians"', add
label define us10a_occsoc_lbl 194031 `"Chemical technicians"', add
label define us10a_occsoc_lbl 194032 `"Geological and petroleum technicians, and nuclear technicians"', add
label define us10a_occsoc_lbl 194033 `"Miscellaneous life, physical, and social science technicians, including social science research assistants"', add
label define us10a_occsoc_lbl 211010 `"Counselors"', add
label define us10a_occsoc_lbl 211020 `"Social workers"', add
label define us10a_occsoc_lbl 211092 `"Probation officers and correctional treatment specialists"', add
label define us10a_occsoc_lbl 211093 `"Social and human service assistants"', add
label define us10a_occsoc_lbl 211094 `"Miscellaneous community and social service specialists, including health educators and community health workers"', add
label define us10a_occsoc_lbl 212011 `"Clergy"', add
label define us10a_occsoc_lbl 212021 `"Directors, religious activities and education"', add
label define us10a_occsoc_lbl 212099 `"Religious workers, all other"', add
label define us10a_occsoc_lbl 231012 `"Judicial law clerks"', add
label define us10a_occsoc_lbl 231013 `"Lawyers, and judges, magistrates, and other judicial workers"', add
label define us10a_occsoc_lbl 232011 `"Paralegals and legal assistants"', add
label define us10a_occsoc_lbl 232090 `"Miscellaneous legal support workers"', add
label define us10a_occsoc_lbl 251000 `"Postsecondary teachers"', add
label define us10a_occsoc_lbl 252010 `"Preschool and kindergarten teachers"', add
label define us10a_occsoc_lbl 252020 `"Elementary and middle school teachers"', add
label define us10a_occsoc_lbl 252030 `"Secondary school teachers"', add
label define us10a_occsoc_lbl 252050 `"Special education teachers"', add
label define us10a_occsoc_lbl 253000 `"Other teachers and instructors"', add
label define us10a_occsoc_lbl 254010 `"Archivists, curators, and museum technicians"', add
label define us10a_occsoc_lbl 254021 `"Librarians"', add
label define us10a_occsoc_lbl 254031 `"Library technicians"', add
label define us10a_occsoc_lbl 259041 `"Teacher assistants"', add
label define us10a_occsoc_lbl 259042 `"Other education, training, and library workers"', add
label define us10a_occsoc_lbl 271010 `"Artists and related workers"', add
label define us10a_occsoc_lbl 271020 `"Designers"', add
label define us10a_occsoc_lbl 272011 `"Actors"', add
label define us10a_occsoc_lbl 272012 `"Producers and directors"', add
label define us10a_occsoc_lbl 272020 `"Athletes, coaches, umpires, and related workers"', add
label define us10a_occsoc_lbl 272030 `"Dancers and choreographers"', add
label define us10a_occsoc_lbl 272040 `"Musicians, singers, and related workers"', add
label define us10a_occsoc_lbl 272099 `"Entertainers and performers, sports and related workers, all other"', add
label define us10a_occsoc_lbl 273010 `"Announcers"', add
label define us10a_occsoc_lbl 273020 `"News analysts, reporters and correspondents"', add
label define us10a_occsoc_lbl 273031 `"Public relations specialists"', add
label define us10a_occsoc_lbl 273041 `"Editors"', add
label define us10a_occsoc_lbl 273042 `"Technical writers"', add
label define us10a_occsoc_lbl 273043 `"Writers and authors"', add
label define us10a_occsoc_lbl 273090 `"Miscellaneous media and communication workers"', add
label define us10a_occsoc_lbl 274021 `"Photographers"', add
label define us10a_occsoc_lbl 274030 `"Television, video, and motion picture camera operators and editors"', add
label define us10a_occsoc_lbl 274031 `"Broadcast and sound engineering technicians and radio operators, and media and communication equipment workers, all other"', add
label define us10a_occsoc_lbl 291011 `"Chiropractors"', add
label define us10a_occsoc_lbl 291020 `"Dentists"', add
label define us10a_occsoc_lbl 291031 `"Dieticians and nutritionists"', add
label define us10a_occsoc_lbl 291041 `"Optometrists"', add
label define us10a_occsoc_lbl 291051 `"Pharmacists"', add
label define us10a_occsoc_lbl 291060 `"Physicians and surgeons"', add
label define us10a_occsoc_lbl 291071 `"Physician assistants"', add
label define us10a_occsoc_lbl 291081 `"Podiatrists"', add
label define us10a_occsoc_lbl 291122 `"Occupational therapists"', add
label define us10a_occsoc_lbl 291123 `"Physical therapists"', add
label define us10a_occsoc_lbl 291124 `"Radiation therapists"', add
label define us10a_occsoc_lbl 291125 `"Recreational therapists"', add
label define us10a_occsoc_lbl 291126 `"Respiratory therapists"', add
label define us10a_occsoc_lbl 291127 `"Speechlanguage pathologists"', add
label define us10a_occsoc_lbl 291128 `"Other therapists, including exercise physiologists"', add
label define us10a_occsoc_lbl 291131 `"Veterinarians"', add
label define us10a_occsoc_lbl 291141 `"Registered nurses"', add
label define us10a_occsoc_lbl 291151 `"Nurse anesthetists"', add
label define us10a_occsoc_lbl 291181 `"Audiologists"', add
label define us10a_occsoc_lbl 291198 `"Health diagnosing and treating practitioners, all other"', add
label define us10a_occsoc_lbl 291199 `"Nurse practitioners and nurse midwives"', add
label define us10a_occsoc_lbl 292010 `"Clinical laboratory technologists and technicians"', add
label define us10a_occsoc_lbl 292021 `"Dental hygienists"', add
label define us10a_occsoc_lbl 292030 `"Diagnostic related technologists and technicians"', add
label define us10a_occsoc_lbl 292041 `"Emergency medical technicians and paramedics"', add
label define us10a_occsoc_lbl 292050 `"Health practitioner support technologists and technicians"', add
label define us10a_occsoc_lbl 292061 `"Licensed practical and licensed vocational nurses"', add
label define us10a_occsoc_lbl 292071 `"Medical records and health information technicians"', add
label define us10a_occsoc_lbl 292081 `"Opticians, dispensing"', add
label define us10a_occsoc_lbl 292090 `"Miscellaneous health technologists and technicians"', add
label define us10a_occsoc_lbl 299000 `"Other healthcare practitioners and technical occupations"', add
label define us10a_occsoc_lbl 311010 `"Nursing, psychiatric, and home health aides"', add
label define us10a_occsoc_lbl 312010 `"Occupational therapy assistants and aides"', add
label define us10a_occsoc_lbl 312020 `"Physical therapist assistants and aides"', add
label define us10a_occsoc_lbl 319011 `"Massage therapists"', add
label define us10a_occsoc_lbl 319091 `"Dental assistants"', add
label define us10a_occsoc_lbl 319092 `"Medical assistants"', add
label define us10a_occsoc_lbl 319094 `"Medical transcriptionists"', add
label define us10a_occsoc_lbl 319095 `"Pharmacy aides"', add
label define us10a_occsoc_lbl 319096 `"Veterinary assistants and laboratory animal caretakers"', add
label define us10a_occsoc_lbl 319097 `"Phlebotmists"', add
label define us10a_occsoc_lbl 319098 `"Healthcare support workers, all other, including medical equipment preparers"', add
label define us10a_occsoc_lbl 331011 `"First-line supervisors of correctional officers"', add
label define us10a_occsoc_lbl 331012 `"First-line supervisors of police and detectives"', add
label define us10a_occsoc_lbl 331021 `"First-line supervisors of fire fighting and prevention workers"', add
label define us10a_occsoc_lbl 331099 `"First-line supervisors of protective service workers, all other"', add
label define us10a_occsoc_lbl 332011 `"Firefighters"', add
label define us10a_occsoc_lbl 332020 `"Fire inspectors"', add
label define us10a_occsoc_lbl 333010 `"Bailiffs, correctional officers, and jailers"', add
label define us10a_occsoc_lbl 333021 `"Detectives and criminal investigators"', add
label define us10a_occsoc_lbl 333050 `"Police officers"', add
label define us10a_occsoc_lbl 333051 `"Miscellaneous law enforcement workers"', add
label define us10a_occsoc_lbl 339011 `"Animal control workers"', add
label define us10a_occsoc_lbl 339021 `"Private detectives and investigators"', add
label define us10a_occsoc_lbl 339030 `"Security guards and gaming surveillance officers"', add
label define us10a_occsoc_lbl 339091 `"Crossing guards"', add
label define us10a_occsoc_lbl 339093 `"Transportation security screeners"', add
label define us10a_occsoc_lbl 339094 `"Lifeguards and other recreational, and all other protective service workers"', add
label define us10a_occsoc_lbl 351011 `"Chefs and head cooks"', add
label define us10a_occsoc_lbl 351012 `"First-line supervisors of food preparation and serving workers"', add
label define us10a_occsoc_lbl 352010 `"Cooks"', add
label define us10a_occsoc_lbl 352021 `"Food preparation workers"', add
label define us10a_occsoc_lbl 353011 `"Bartenders"', add
label define us10a_occsoc_lbl 353021 `"Combined food preparation and serving workers, including fast food"', add
label define us10a_occsoc_lbl 353022 `"Counter attendant, cafeteria, food concession, and coffee shop"', add
label define us10a_occsoc_lbl 353031 `"Waiters and waitresses"', add
label define us10a_occsoc_lbl 353041 `"Food servers, nonrestaurant"', add
label define us10a_occsoc_lbl 359021 `"Dishwashers"', add
label define us10a_occsoc_lbl 359031 `"Host and hostesses, restaurant, lounge, and coffee shop"', add
label define us10a_occsoc_lbl 359032 `"Miscellaneous food preparation and serving related workers including dining room and cafeteria attendants and bartender helpers"', add
label define us10a_occsoc_lbl 371011 `"First-line supervisors of housekeeping and janitorial workers"', add
label define us10a_occsoc_lbl 371012 `"First-line supervisors of landscaping, lawn service, and groundskeeping workers"', add
label define us10a_occsoc_lbl 372012 `"Maids and housekeeping cleaners"', add
label define us10a_occsoc_lbl 372013 `"Janitors and building cleaners"', add
label define us10a_occsoc_lbl 372021 `"Pest control workers"', add
label define us10a_occsoc_lbl 373010 `"Grounds maintenance workers"', add
label define us10a_occsoc_lbl 391010 `"First-line supervisors of gaming workers"', add
label define us10a_occsoc_lbl 391021 `"First-line supervisors of personal service workers"', add
label define us10a_occsoc_lbl 392011 `"Animal trainers"', add
label define us10a_occsoc_lbl 392021 `"Nonfarm animal caretakers"', add
label define us10a_occsoc_lbl 393010 `"Gaming services workers"', add
label define us10a_occsoc_lbl 393021 `"Motion picture projectionists"', add
label define us10a_occsoc_lbl 393031 `"Ushers, lobby attendants, and ticket takers"', add
label define us10a_occsoc_lbl 393090 `"Miscellaneous entertainment attendants and related workers"', add
label define us10a_occsoc_lbl 394031 `"Morticians, undertakers, and funeral directors"', add
label define us10a_occsoc_lbl 394032 `"Embalmers and funeral attendants"', add
label define us10a_occsoc_lbl 395011 `"Barbers"', add
label define us10a_occsoc_lbl 395012 `"Hairdressers, hairstylists, and cosmetologists"', add
label define us10a_occsoc_lbl 395090 `"Miscellaneous personal appearance workers"', add
label define us10a_occsoc_lbl 396010 `"Baggage porters, bellhops, and concierges"', add
label define us10a_occsoc_lbl 397010 `"Tour and travel guides"', add
label define us10a_occsoc_lbl 399011 `"Childcare workers"', add
label define us10a_occsoc_lbl 399021 `"Personal care aides"', add
label define us10a_occsoc_lbl 399030 `"Recreation and fitness workers"', add
label define us10a_occsoc_lbl 399041 `"Residential advisors"', add
label define us10a_occsoc_lbl 399099 `"Personal care and service workers, all other"', add
label define us10a_occsoc_lbl 411011 `"First-line supervisors of retail sales workers"', add
label define us10a_occsoc_lbl 411012 `"First-line supervisors of non-retail sales"', add
label define us10a_occsoc_lbl 412010 `"Cashiers"', add
label define us10a_occsoc_lbl 412021 `"Counter and rental clerks"', add
label define us10a_occsoc_lbl 412022 `"Parts salespersons"', add
label define us10a_occsoc_lbl 412031 `"Retail salespersons"', add
label define us10a_occsoc_lbl 413011 `"Advertising sales agents"', add
label define us10a_occsoc_lbl 413021 `"Insurance sales agents"', add
label define us10a_occsoc_lbl 413031 `"Securities, commodities, and financial services sales agents"', add
label define us10a_occsoc_lbl 413041 `"Travel agents"', add
label define us10a_occsoc_lbl 413099 `"Sales representatives, services, all other"', add
label define us10a_occsoc_lbl 414010 `"Sales representatives, wholesale and manufacturing"', add
label define us10a_occsoc_lbl 419010 `"Models, demonstrators, and product promoters"', add
label define us10a_occsoc_lbl 419020 `"Real estate brokers and sales agents"', add
label define us10a_occsoc_lbl 419031 `"Sales engineers"', add
label define us10a_occsoc_lbl 419041 `"Telemarketers"', add
label define us10a_occsoc_lbl 419091 `"Door-to-door sales workers, news and street vendors, and related workers"', add
label define us10a_occsoc_lbl 419099 `"Sales and related workers, all other"', add
label define us10a_occsoc_lbl 431011 `"First-line supervisors of office and administrative support workers"', add
label define us10a_occsoc_lbl 432011 `"Switchboard operators, including answering service"', add
label define us10a_occsoc_lbl 432021 `"Telephone operators"', add
label define us10a_occsoc_lbl 432099 `"Communications equipment operators, all other"', add
label define us10a_occsoc_lbl 433011 `"Bill and account collectors"', add
label define us10a_occsoc_lbl 433021 `"Billing and posting clerks"', add
label define us10a_occsoc_lbl 433031 `"Bookkeeping, accounting, and auditing clerks"', add
label define us10a_occsoc_lbl 433041 `"Gaming cage workers"', add
label define us10a_occsoc_lbl 433051 `"Payroll and timekeeping clerks"', add
label define us10a_occsoc_lbl 433061 `"Procurement clerks"', add
label define us10a_occsoc_lbl 433071 `"Tellers"', add
label define us10a_occsoc_lbl 433099 `"Financial clerks, all other"', add
label define us10a_occsoc_lbl 434011 `"Brokerage clerks"', add
label define us10a_occsoc_lbl 434031 `"Court, municipal, and license clerks"', add
label define us10a_occsoc_lbl 434041 `"Credit authorizers, checkers, and clerks"', add
label define us10a_occsoc_lbl 434051 `"Customer service representatives"', add
label define us10a_occsoc_lbl 434061 `"Eligibility interviewers, government programs"', add
label define us10a_occsoc_lbl 434071 `"File clerks"', add
label define us10a_occsoc_lbl 434081 `"Hotel, motel, and resort desk clerks"', add
label define us10a_occsoc_lbl 434111 `"Interviewers, except eligibility and loan"', add
label define us10a_occsoc_lbl 434121 `"Library assistants, clerical"', add
label define us10a_occsoc_lbl 434131 `"Loan interviewers and clerks"', add
label define us10a_occsoc_lbl 434141 `"New account clerks"', add
label define us10a_occsoc_lbl 434161 `"Human resources assistants, except payroll and timekeeping"', add
label define us10a_occsoc_lbl 434171 `"Receptionists and information clerks"', add
label define us10a_occsoc_lbl 434181 `"Reservation and transportation ticket agents and travel clerks"', add
label define us10a_occsoc_lbl 434199 `"Information and record clerks, all other"', add
label define us10a_occsoc_lbl 434200 `"Correspondent clerks and order clerks"', add
label define us10a_occsoc_lbl 435011 `"Cargo and freight agents"', add
label define us10a_occsoc_lbl 435021 `"Couriers and messengers"', add
label define us10a_occsoc_lbl 435030 `"Dispatchers"', add
label define us10a_occsoc_lbl 435041 `"Meter readers, utilities"', add
label define us10a_occsoc_lbl 435051 `"Postal service clerks"', add
label define us10a_occsoc_lbl 435052 `"Postal service mail carriers"', add
label define us10a_occsoc_lbl 435053 `"Postal service mail sorters, processors, and processing machine operators"', add
label define us10a_occsoc_lbl 435061 `"Production, planning, and expediting clerks"', add
label define us10a_occsoc_lbl 435071 `"Shipping, receiving, and traffic clerks"', add
label define us10a_occsoc_lbl 435081 `"Stock clerks and order fillers"', add
label define us10a_occsoc_lbl 435111 `"Weighers, measurers, checkers, and samplers, recordkeeping"', add
label define us10a_occsoc_lbl 436010 `"Secretaries and administrative assistants"', add
label define us10a_occsoc_lbl 439011 `"Computer operators"', add
label define us10a_occsoc_lbl 439021 `"Data entry keyers"', add
label define us10a_occsoc_lbl 439022 `"Word processors and typists"', add
label define us10a_occsoc_lbl 439041 `"Insurance claims and policy processing clerks"', add
label define us10a_occsoc_lbl 439051 `"Mail clerks and mail machine operators, except postal service"', add
label define us10a_occsoc_lbl 439061 `"Office clerks, general"', add
label define us10a_occsoc_lbl 439071 `"Office machine operators, except computer"', add
label define us10a_occsoc_lbl 439081 `"Proofreaders and copy markers"', add
label define us10a_occsoc_lbl 439111 `"Statistical assistants"', add
label define us10a_occsoc_lbl 439112 `"Miscellaneous office and administrative support workers including desktop publishers"', add
label define us10a_occsoc_lbl 451011 `"First-line supervisors of farming, fishing, and forestry workers"', add
label define us10a_occsoc_lbl 452011 `"Agricultural inspectors"', add
label define us10a_occsoc_lbl 452041 `"Graders and sorters, agricultural products"', add
label define us10a_occsoc_lbl 452042 `"Miscellaneous agricultural workers including animal breeders"', add
label define us10a_occsoc_lbl 453000 `"Fishing and hunting workers"', add
label define us10a_occsoc_lbl 454011 `"Forest and conservation workers"', add
label define us10a_occsoc_lbl 454020 `"Logging workers"', add
label define us10a_occsoc_lbl 471011 `"First-line supervisors of construction trades and extraction workers"', add
label define us10a_occsoc_lbl 472011 `"Boilermakers"', add
label define us10a_occsoc_lbl 472020 `"Brickmasons, blockmasons, and stonemasons"', add
label define us10a_occsoc_lbl 472031 `"Carpenters"', add
label define us10a_occsoc_lbl 472040 `"Carpet, floor, and tile installers and finishers"', add
label define us10a_occsoc_lbl 472050 `"Cement masons, concrete finishers, and terrazzo workers"', add
label define us10a_occsoc_lbl 472061 `"Construction laborers"', add
label define us10a_occsoc_lbl 472071 `"Paving, surfacing, and tamping equipment operators"', add
label define us10a_occsoc_lbl 472072 `"Construction equipment operators except paving, surfacing, and tamping equipment operators"', add
label define us10a_occsoc_lbl 472080 `"Drywall installers, ceiling tile installers, and tapers"', add
label define us10a_occsoc_lbl 472111 `"Electricians"', add
label define us10a_occsoc_lbl 472121 `"Glaziers"', add
label define us10a_occsoc_lbl 472130 `"Insulation workers"', add
label define us10a_occsoc_lbl 472141 `"Painters, construction and maintenance"', add
label define us10a_occsoc_lbl 472142 `"Paperhangers"', add
label define us10a_occsoc_lbl 472150 `"Pipelayers, plumbers, pipefitters, and steamfitters"', add
label define us10a_occsoc_lbl 472161 `"Plasterers and stucco masons"', add
label define us10a_occsoc_lbl 472171 `"Reinforcing iron and rebar workers"', add
label define us10a_occsoc_lbl 472181 `"Roofers"', add
label define us10a_occsoc_lbl 472211 `"Sheet metal workers"', add
label define us10a_occsoc_lbl 472221 `"Structural iron and steel workers"', add
label define us10a_occsoc_lbl 473010 `"Helpers, construction trades"', add
label define us10a_occsoc_lbl 474011 `"Construction and building inspectors"', add
label define us10a_occsoc_lbl 474021 `"Elevator installers and repairers"', add
label define us10a_occsoc_lbl 474031 `"Fence erectors"', add
label define us10a_occsoc_lbl 474041 `"Hazardous materials removal workers"', add
label define us10a_occsoc_lbl 474051 `"Highway maintenance workers"', add
label define us10a_occsoc_lbl 474061 `"Rail-track laying and maintenance equipment operators"', add
label define us10a_occsoc_lbl 475021 `"Earth drillers, except oil and gar"', add
label define us10a_occsoc_lbl 475031 `"Explosives workers, ordnance handling experts, and blasters"', add
label define us10a_occsoc_lbl 475040 `"Mining machine operators"', add
label define us10a_occsoc_lbl 475041 `"Miscellaneous extraction workers including roof bolters and helpers"', add
label define us10a_occsoc_lbl 475042 `"Derrick, rotary drill, and service unit operators, and roustabouts, oil, gas, and mining"', add
label define us10a_occsoc_lbl 475043 `"Miscellaneous construction workers including solar photovaltaic installers, and septic tank servicers and sewer pipe cleaners"', add
label define us10a_occsoc_lbl 491011 `"First-line supervisors of mechanics, installers, and repairers"', add
label define us10a_occsoc_lbl 492011 `"Computer, automated teller, and office machine repairers"', add
label define us10a_occsoc_lbl 492020 `"Radio and telecommunications equipment installers and repairers"', add
label define us10a_occsoc_lbl 492091 `"Avionics technicians"', add
label define us10a_occsoc_lbl 492092 `"Electric motor, power tool, and related repairers"', add
label define us10a_occsoc_lbl 492096 `"Electronic equipment installers and repairers, motor vehicles"', add
label define us10a_occsoc_lbl 492097 `"Electronic home entertainment equipment installers and repairers"', add
label define us10a_occsoc_lbl 492098 `"Security and fire alarm systems installers"', add
label define us10a_occsoc_lbl 492099 `"Electrical and electronics repairers, transportation equipment, and industrial and utility"', add
label define us10a_occsoc_lbl 493011 `"Aircraft mechanics and service technicians"', add
label define us10a_occsoc_lbl 493021 `"Automotive body and related repairers"', add
label define us10a_occsoc_lbl 493022 `"Automotive glass installers and repairers"', add
label define us10a_occsoc_lbl 493023 `"Automotive service technicians and mechanics"', add
label define us10a_occsoc_lbl 493031 `"Bus and truck mechanics and diesel engine specialists"', add
label define us10a_occsoc_lbl 493040 `"Heavy vehicle and mobile equipment service technicians and mechanics"', add
label define us10a_occsoc_lbl 493050 `"Small engine mechanics"', add
label define us10a_occsoc_lbl 493090 `"Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers"', add
label define us10a_occsoc_lbl 499010 `"Control and valve installers and repairers"', add
label define us10a_occsoc_lbl 499021 `"Heating, air conditioning, and refrigeration mechanics and installers"', add
label define us10a_occsoc_lbl 499031 `"Home appliance repairers"', add
label define us10a_occsoc_lbl 499043 `"Maintenance workers, machinery"', add
label define us10a_occsoc_lbl 499044 `"Millwrights"', add
label define us10a_occsoc_lbl 499045 `"Industrial and refractory machinery mechanic"', add
label define us10a_occsoc_lbl 499051 `"Electrical power-line installers and repairers"', add
label define us10a_occsoc_lbl 499052 `"Telecommunications line installers and repairers"', add
label define us10a_occsoc_lbl 499060 `"Precision instrument and equipment repairers"', add
label define us10a_occsoc_lbl 499071 `"Maintenance and repair workers, general"', add
label define us10a_occsoc_lbl 499091 `"Coin, vending, and amusement machine servicers and repairers"', add
label define us10a_occsoc_lbl 499094 `"Locksmiths and safe repairers"', add
label define us10a_occsoc_lbl 499095 `"Manufactured building and mobile home installers"', add
label define us10a_occsoc_lbl 499096 `"Riggers"', add
label define us10a_occsoc_lbl 499098 `"Helpers--installation, maintenance, and repair workers"', add
label define us10a_occsoc_lbl 499099 `"Other installation, maintenance, and repair workers including wind turbine service technicians, and commercial divers, and signal and track wwitch repairers"', add
label define us10a_occsoc_lbl 511011 `"First-line supervisors of production and operating workers"', add
label define us10a_occsoc_lbl 512011 `"Aircraft structure, surfaces, rigging, and systems assemblers"', add
label define us10a_occsoc_lbl 512020 `"Electrical, electronics, and electromechanical assemblers"', add
label define us10a_occsoc_lbl 512031 `"Engine and other machine assemblers"', add
label define us10a_occsoc_lbl 512041 `"Structural metal fabricators and fitters"', add
label define us10a_occsoc_lbl 512090 `"Miscellaneous assemblers and fabricators"', add
label define us10a_occsoc_lbl 513011 `"Bakers"', add
label define us10a_occsoc_lbl 513020 `"Butchers and other meat, poultry, and fish processing workers"', add
label define us10a_occsoc_lbl 513091 `"Food and tobacco roasting, baking, and drying machine operators and tenders"', add
label define us10a_occsoc_lbl 513092 `"Food batchmakers"', add
label define us10a_occsoc_lbl 513093 `"Food cooking machine operators and tenders"', add
label define us10a_occsoc_lbl 513099 `"Food processing workers, all other"', add
label define us10a_occsoc_lbl 514010 `"Computer control programmers and operators"', add
label define us10a_occsoc_lbl 514021 `"Extruding and drawing machine setters, operators, and tenders, metal and plastic"', add
label define us10a_occsoc_lbl 514022 `"Forging machine setters, operators, and tenders, metal and plastic"', add
label define us10a_occsoc_lbl 514023 `"Rolling machine setters, operators, and tenders, metal and plastic"', add
label define us10a_occsoc_lbl 514031 `"Cutting, punching, and press machine setters, operators, and tenders, metal and plastic"', add
label define us10a_occsoc_lbl 514032 `"Drilling and boring machine tool setters, operators, and tenders, metal and plastic"', add
label define us10a_occsoc_lbl 514033 `"Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders, metal and plastic"', add
label define us10a_occsoc_lbl 514034 `"Lathe and turning machine tool setters, operators, and tenders, metal and plastic"', add
label define us10a_occsoc_lbl 514041 `"Machinists"', add
label define us10a_occsoc_lbl 514050 `"Metal furnace operators, tenders, pourers, and casters"', add
label define us10a_occsoc_lbl 514060 `"Model makers and patternmakers, metal and plastic"', add
label define us10a_occsoc_lbl 514070 `"Molders and molding machine setters, operators, and tenders, metal and plastic"', add
label define us10a_occsoc_lbl 514111 `"Tool and die makers"', add
label define us10a_occsoc_lbl 514120 `"Welding, soldering, and brazing workers"', add
label define us10a_occsoc_lbl 514191 `"Heat treating equipment setters, operators, and tenders, metal and plastic"', add
label define us10a_occsoc_lbl 514193 `"Plating and coating machine setters, operators, and tenders, metal and plastic"', add
label define us10a_occsoc_lbl 514194 `"Tool grinders, filers, and sharpeners"', add
label define us10a_occsoc_lbl 514195 `"Miscellaneous metal workers and plastic workers including milling and planing machine setters, and multiple machine tool setters, and lay-out workers"', add
label define us10a_occsoc_lbl 515111 `"Prepress technicians and workers"', add
label define us10a_occsoc_lbl 515112 `"Printing machine operators"', add
label define us10a_occsoc_lbl 515113 `"Print binding and finishing workers"', add
label define us10a_occsoc_lbl 516011 `"Laundry and dry-cleaning workers"', add
label define us10a_occsoc_lbl 516021 `"Pressers, textile, garment, and related materials"', add
label define us10a_occsoc_lbl 516031 `"Sewing machine operators"', add
label define us10a_occsoc_lbl 516041 `"Shoe and leather workers and repairers"', add
label define us10a_occsoc_lbl 516042 `"Shoe machine operators and tenders"', add
label define us10a_occsoc_lbl 516050 `"Tailors, dressmakers, and sewers"', add
label define us10a_occsoc_lbl 516063 `"Textile knitting and weaving machine setters, operators, and tenders"', add
label define us10a_occsoc_lbl 516064 `"Textile winding, twisting, and drawing out machine setters, operators, and tenders"', add
label define us10a_occsoc_lbl 516065 `"Textile bleaching and dyeing, and cutting machine setters, operators, and tenders"', add
label define us10a_occsoc_lbl 516093 `"Upholsterers"', add
label define us10a_occsoc_lbl 516094 `"Miscellaneous textile, apparel, and furnishings workers except upholsterers"', add
label define us10a_occsoc_lbl 517011 `"Cabinetmakers and bench carpenters"', add
label define us10a_occsoc_lbl 517021 `"Furniture finishers"', add
label define us10a_occsoc_lbl 517041 `"Sawing machine setters, operators, and tenders, wood"', add
label define us10a_occsoc_lbl 517042 `"Woodworking machine setters, operators, and tenders, except sawing"', add
label define us10a_occsoc_lbl 517043 `"Miscellaneous woodworkers including model makers and patternmakers"', add
label define us10a_occsoc_lbl 518010 `"Power plant operators, distributors, and dispatchers"', add
label define us10a_occsoc_lbl 518021 `"Stationary engineers and boiler operators"', add
label define us10a_occsoc_lbl 518031 `"Water and wastewater treatment plant and system operators"', add
label define us10a_occsoc_lbl 518090 `"Miscellaneous plant and system operators"', add
label define us10a_occsoc_lbl 519010 `"Chemical processing machine setters, operators, and tenders"', add
label define us10a_occsoc_lbl 519020 `"Crushing, grinding, polishing, mixing, and blending workers"', add
label define us10a_occsoc_lbl 519030 `"Cutting workers"', add
label define us10a_occsoc_lbl 519041 `"Extruding, forming, pressing, and compacting machine setters, operators, and tenders"', add
label define us10a_occsoc_lbl 519051 `"Furnace, kiln, oven, drier, and kettle operators and tenders"', add
label define us10a_occsoc_lbl 519061 `"Inspectors, testers, sorters, samplers, and weighers"', add
label define us10a_occsoc_lbl 519071 `"Jewelers and precious stone and metal workers"', add
label define us10a_occsoc_lbl 519080 `"Medical, dental, and ophthalmic laboratory technicians"', add
label define us10a_occsoc_lbl 519111 `"Packaging and filling machine operators and tenders"', add
label define us10a_occsoc_lbl 519120 `"Painting workers"', add
label define us10a_occsoc_lbl 519151 `"Photographic process workers and processing machine operators"', add
label define us10a_occsoc_lbl 519191 `"Adhesive bonding machine operators and tenders"', add
label define us10a_occsoc_lbl 519192 `"Cleaning, washing, and metal pickling equipment operators and tenders"', add
label define us10a_occsoc_lbl 519194 `"Etchers and engravers"', add
label define us10a_occsoc_lbl 519195 `"Molders, shapers, and casters, except metal and plastic"', add
label define us10a_occsoc_lbl 519196 `"Paper goods machine setters, operators, and tenders"', add
label define us10a_occsoc_lbl 519197 `"Tire builders"', add
label define us10a_occsoc_lbl 519198 `"Helpers--production workers"', add
label define us10a_occsoc_lbl 519199 `"Other production workers including semiconductor processors and cooling and freezing equipment operators"', add
label define us10a_occsoc_lbl 531000 `"Supervisors oftransportation and material moving workers"', add
label define us10a_occsoc_lbl 532010 `"Aircraft pilots and flight engineers"', add
label define us10a_occsoc_lbl 532020 `"Air traffic controllers and airfield operations specialists"', add
label define us10a_occsoc_lbl 532031 `"Flight attendants"', add
label define us10a_occsoc_lbl 533011 `"Ambulance drivers and attendants, except emergency medical technicians"', add
label define us10a_occsoc_lbl 533020 `"Bus drivers"', add
label define us10a_occsoc_lbl 533030 `"Driver/sales workers and truck drivers"', add
label define us10a_occsoc_lbl 533041 `"Taxi drivers and chauffeurs"', add
label define us10a_occsoc_lbl 533099 `"Motor vehicle operators, all other"', add
label define us10a_occsoc_lbl 534010 `"Locomotive engineers and operators"', add
label define us10a_occsoc_lbl 534021 `"Railroad brake, signal, and switch operators"', add
label define us10a_occsoc_lbl 534031 `"Railroad conductors and yardmasters"', add
label define us10a_occsoc_lbl 534032 `"Subway, streetcar, and other rail transportation workers"', add
label define us10a_occsoc_lbl 535020 `"Ship and boat captains and operators"', add
label define us10a_occsoc_lbl 535021 `"Sailors and marine oilers, and ship engineers"', add
label define us10a_occsoc_lbl 536021 `"Parking lot attendants"', add
label define us10a_occsoc_lbl 536031 `"Automotive and watercraft service attendants"', add
label define us10a_occsoc_lbl 536051 `"Transportation inspectors"', add
label define us10a_occsoc_lbl 536061 `"Transportation attendants, except flight attendants"', add
label define us10a_occsoc_lbl 536062 `"Miscellaneous transportation workers including bridge and lock tenders and traffic technicians"', add
label define us10a_occsoc_lbl 537021 `"Crane and tower operators"', add
label define us10a_occsoc_lbl 537030 `"Dredge, excavating, and loading machine operators"', add
label define us10a_occsoc_lbl 537051 `"Industrial truck and tractor operators"', add
label define us10a_occsoc_lbl 537061 `"Cleaners of vehicles and equipment"', add
label define us10a_occsoc_lbl 537062 `"Laborers and freight, stock, and material movers, hand"', add
label define us10a_occsoc_lbl 537063 `"Machine feeders and offbearers"', add
label define us10a_occsoc_lbl 537064 `"Packers and packagers, hand"', add
label define us10a_occsoc_lbl 537070 `"Pumping station operators"', add
label define us10a_occsoc_lbl 537081 `"Refuse and recyclable material collectors"', add
label define us10a_occsoc_lbl 537082 `"Conveyor operators and tenders, and hoist and winch operators"', add
label define us10a_occsoc_lbl 537100 `"Miscellaneous material moving workers including shuttle car operators, and tank car, truck, and ship loaders"', add
label define us10a_occsoc_lbl 551010 `"Military officer special and tactical operations leaders"', add
label define us10a_occsoc_lbl 552010 `"First-line enlisted military supervisors"', add
label define us10a_occsoc_lbl 553010 `"Military enlisted tactical operations and air/weapons specialists and crew members"', add
label define us10a_occsoc_lbl 559830 `"Military, rank not specified"', add
label values us10a_occsoc us10a_occsoc_lbl

label define us10a_wrklstwk_lbl 0 `"NIU (not in universe)"'
label define us10a_wrklstwk_lbl 1 `"Did not work"', add
label define us10a_wrklstwk_lbl 2 `"Worked"', add
label define us10a_wrklstwk_lbl 3 `"Not Reported"', add
label values us10a_wrklstwk us10a_wrklstwk_lbl

label define us10a_wrkrecal_lbl 0 `"NIU (not in universe)"'
label define us10a_wrkrecal_lbl 1 `"No"', add
label define us10a_wrkrecal_lbl 2 `"Yes"', add
label define us10a_wrkrecal_lbl 3 `"Not reported"', add
label values us10a_wrkrecal us10a_wrkrecal_lbl

label define us10a_incsupp_lbl 99999 `"NIU (not in universe)"'
label values us10a_incsupp us10a_incsupp_lbl

label define us10a_incsupp_lbl 99999 `"NIU (not in universe)"'
label values us10a_incsupp us10a_incsupp_lbl

label define us10a_diffphys_lbl 0 `"NIU (not in universe)"'
label define us10a_diffphys_lbl 1 `"No ambulatory difficulty"', add
label define us10a_diffphys_lbl 2 `"Has ambulatory difficulty"', add
label values us10a_diffphys us10a_diffphys_lbl

label define us10a_gcmonths_lbl 0 `"NIU (not in universe)"'
label define us10a_gcmonths_lbl 1 `"Less than 6 months"', add
label define us10a_gcmonths_lbl 2 `"6 to 11 months"', add
label define us10a_gcmonths_lbl 3 `"1 to 2 years"', add
label define us10a_gcmonths_lbl 4 `"3 to 4 years"', add
label define us10a_gcmonths_lbl 5 `"5 or more years"', add
label values us10a_gcmonths us10a_gcmonths_lbl

label define us10a_gcrespon_lbl 0 `"NIU (not in universe)"'
label define us10a_gcrespon_lbl 1 `"No"', add
label define us10a_gcrespon_lbl 2 `"Yes"', add
label values us10a_gcrespon us10a_gcrespon_lbl

label define us10a_qdifsens_lbl 0 `"Not allocated"'
label define us10a_qdifsens_lbl 4 `"Allocated"', add
label values us10a_qdifsens us10a_qdifsens_lbl

label define us10a_qincsupp_lbl 0 `"Not allocated"'
label define us10a_qincsupp_lbl 4 `"Allocated"', add
label values us10a_qincsupp us10a_qincsupp_lbl

label define us10a_qdifphys_lbl 0 `"Not allocated"'
label define us10a_qdifphys_lbl 4 `"Allocated"', add
label values us10a_qdifphys us10a_qdifphys_lbl

label define us10a_qdifphys_lbl 0 `"Not allocated"'
label define us10a_qdifphys_lbl 4 `"Allocated"', add
label values us10a_qdifphys us10a_qdifphys_lbl

label define us10a_qdifrem_lbl 0 `"Not allocated"'
label define us10a_qdifrem_lbl 4 `"Allocated"', add
label values us10a_qdifrem us10a_qdifrem_lbl

label define us10a_qgchouse_lbl 0 `"Not allocated"'
label define us10a_qgchouse_lbl 4 `"Allocated"', add
label values us10a_qgchouse us10a_qgchouse_lbl

label define us10a_qgcmonth_lbl 0 `"Not allocated"'
label define us10a_qgcmonth_lbl 4 `"Allocated"', add
label values us10a_qgcmonth us10a_qgcmonth_lbl

label define us10a_qgcrespo_lbl 0 `"Not allocated"'
label define us10a_qgcrespo_lbl 4 `"Allocated"', add
label values us10a_qgcrespo us10a_qgcrespo_lbl

label define us10a_qgradeat_lbl 0 `"Not allocated"'
label define us10a_qgradeat_lbl 4 `"Allocated"', add
label values us10a_qgradeat us10a_qgradeat_lbl

label define us10a_pov2000_lbl 000 `"NIU (not in universe)"'
label define us10a_pov2000_lbl 001 `"1 percent or less of poverty threshold"', add
label define us10a_pov2000_lbl 501 `"501 percent or more of poverty threshold"', add
label values us10a_pov2000 us10a_pov2000_lbl

label define us10a_incbus00_lbl 999999 `"NIU (not in universe)"'
label values us10a_incbus00 us10a_incbus00_lbl

label define us10a_oldpov20_lbl 000 `"NIU (not in universe)"'
label define us10a_oldpov20_lbl 001 `"1 percent or less of poverty threshold"', add
label define us10a_oldpov20_lbl 501 `"501 percent or more of poverty threshold"', add
label values us10a_oldpov20 us10a_oldpov20_lbl

label define us10a_oldpov20_lbl 000 `"NIU (not in universe)"'
label define us10a_oldpov20_lbl 001 `"1 percent or less of poverty threshold"', add
label define us10a_oldpov20_lbl 501 `"501 percent or more of poverty threshold"', add
label values us10a_oldpov20 us10a_oldpov20_lbl

label define us10a_pwpuma00_lbl 0000 `"NIU (not in universe)"'
label define us10a_pwpuma00_lbl 0001 `"Did not work in the United States or in Puerto Rico"', add
label values us10a_pwpuma00 us10a_pwpuma00_lbl

label define us10a_incretir_lbl 999999 `"NIU (not in universe)"'
label values us10a_incretir us10a_incretir_lbl

label define us10a_pwpumas_lbl 000 `"NIU (not in universe)"'
label define us10a_pwpumas_lbl 010 `"10"', add
label define us10a_pwpumas_lbl 011 `"11"', add
label define us10a_pwpumas_lbl 012 `"12"', add
label define us10a_pwpumas_lbl 020 `"20"', add
label define us10a_pwpumas_lbl 030 `"30"', add
label define us10a_pwpumas_lbl 040 `"40"', add
label define us10a_pwpumas_lbl 041 `"41"', add
label define us10a_pwpumas_lbl 042 `"42"', add
label define us10a_pwpumas_lbl 050 `"50"', add
label define us10a_pwpumas_lbl 051 `"51"', add
label define us10a_pwpumas_lbl 052 `"52"', add
label define us10a_pwpumas_lbl 060 `"60"', add
label define us10a_pwpumas_lbl 070 `"70"', add
label define us10a_pwpumas_lbl 080 `"80"', add
label define us10a_pwpumas_lbl 081 `"81"', add
label define us10a_pwpumas_lbl 082 `"82"', add
label define us10a_pwpumas_lbl 085 `"85"', add
label define us10a_pwpumas_lbl 088 `"88"', add
label define us10a_pwpumas_lbl 089 `"89"', add
label define us10a_pwpumas_lbl 090 `"90"', add
label define us10a_pwpumas_lbl 091 `"91"', add
label define us10a_pwpumas_lbl 099 `"99"', add
label define us10a_pwpumas_lbl 100 `"100"', add
label define us10a_pwpumas_lbl 101 `"101"', add
label define us10a_pwpumas_lbl 102 `"102"', add
label define us10a_pwpumas_lbl 110 `"110"', add
label define us10a_pwpumas_lbl 120 `"120"', add
label define us10a_pwpumas_lbl 121 `"121"', add
label define us10a_pwpumas_lbl 122 `"122"', add
label define us10a_pwpumas_lbl 129 `"129"', add
label define us10a_pwpumas_lbl 130 `"130"', add
label define us10a_pwpumas_lbl 132 `"132"', add
label define us10a_pwpumas_lbl 133 `"133"', add
label define us10a_pwpumas_lbl 139 `"139"', add
label define us10a_pwpumas_lbl 140 `"140"', add
label define us10a_pwpumas_lbl 150 `"150"', add
label define us10a_pwpumas_lbl 152 `"152"', add
label define us10a_pwpumas_lbl 159 `"159"', add
label define us10a_pwpumas_lbl 160 `"160"', add
label define us10a_pwpumas_lbl 170 `"170"', add
label define us10a_pwpumas_lbl 180 `"180"', add
label define us10a_pwpumas_lbl 190 `"190"', add
label define us10a_pwpumas_lbl 200 `"200"', add
label define us10a_pwpumas_lbl 201 `"201"', add
label define us10a_pwpumas_lbl 202 `"202"', add
label define us10a_pwpumas_lbl 210 `"210"', add
label define us10a_pwpumas_lbl 220 `"220"', add
label define us10a_pwpumas_lbl 230 `"230"', add
label define us10a_pwpumas_lbl 240 `"240"', add
label define us10a_pwpumas_lbl 250 `"250"', add
label define us10a_pwpumas_lbl 260 `"260"', add
label define us10a_pwpumas_lbl 270 `"270"', add
label define us10a_pwpumas_lbl 300 `"300"', add
label define us10a_pwpumas_lbl 309 `"309"', add
label define us10a_pwpumas_lbl 400 `"400"', add
label define us10a_pwpumas_lbl 409 `"409"', add
label define us10a_pwpumas_lbl 500 `"500"', add
label define us10a_pwpumas_lbl 600 `"600"', add
label define us10a_pwpumas_lbl 700 `"700"', add
label define us10a_pwpumas_lbl 800 `"800"', add
label define us10a_pwpumas_lbl 900 `"900"', add
label define us10a_pwpumas_lbl 999 `"Unknown"', add
label values us10a_pwpumas us10a_pwpumas_lbl

label define us10a_vet01ltr_lbl 0 `"NIU (not in universe)"'
label define us10a_vet01ltr_lbl 1 `"No"', add
label define us10a_vet01ltr_lbl 2 `"Yes, served this period"', add
label values us10a_vet01ltr us10a_vet01ltr_lbl

label define us10a_vet90x01_lbl 0 `"NIU (not in universe)"'
label define us10a_vet90x01_lbl 1 `"No"', add
label define us10a_vet90x01_lbl 2 `"Yes, served this period"', add
label values us10a_vet90x01 us10a_vet90x01_lbl

label define us10a_vet47x50_lbl 0 `"NIU (not in universe)"'
label define us10a_vet47x50_lbl 1 `"No"', add
label define us10a_vet47x50_lbl 2 `"Yes, served this period"', add
label values us10a_vet47x50 us10a_vet47x50_lbl

label define us10a_vet47x50_lbl 0 `"NIU (not in universe)"'
label define us10a_vet47x50_lbl 1 `"No"', add
label define us10a_vet47x50_lbl 2 `"Yes, served this period"', add
label values us10a_vet47x50 us10a_vet47x50_lbl

label define us10a_stepmom2_lbl 0 `"No stepmother present"'
label define us10a_stepmom2_lbl 1 `"Improbable age difference"', add
label define us10a_stepmom2_lbl 2 `"Spouse of father"', add
label define us10a_stepmom2_lbl 3 `"Identified stepmother"', add
label define us10a_stepmom2_lbl 5 `"Identified as adopted"', add
label values us10a_stepmom2 us10a_stepmom2_lbl

label define us10a_momrule2_lbl 0 `"No mother link"'
label define us10a_momrule2_lbl 1 `"Unambiguous mother link"', add
label define us10a_momrule2_lbl 2 `"Daughter/grandchild link"', add
label define us10a_momrule2_lbl 3 `"Preceding female (no intervening person)"', add
label values us10a_momrule2 us10a_momrule2_lbl

label define us10a_poploc2_lbl 00 `"0"'
label define us10a_poploc2_lbl 01 `"1"', add
label define us10a_poploc2_lbl 02 `"2"', add
label define us10a_poploc2_lbl 03 `"3"', add
label define us10a_poploc2_lbl 04 `"4"', add
label define us10a_poploc2_lbl 05 `"5"', add
label define us10a_poploc2_lbl 06 `"6"', add
label define us10a_poploc2_lbl 07 `"7"', add
label define us10a_poploc2_lbl 08 `"8"', add
label define us10a_poploc2_lbl 09 `"9"', add
label define us10a_poploc2_lbl 10 `"10"', add
label define us10a_poploc2_lbl 11 `"11"', add
label define us10a_poploc2_lbl 12 `"12"', add
label define us10a_poploc2_lbl 13 `"13"', add
label define us10a_poploc2_lbl 14 `"14"', add
label define us10a_poploc2_lbl 19 `"19"', add
label values us10a_poploc2 us10a_poploc2_lbl

label define us10a_steppop2_lbl 0 `"No stepfather present"'
label define us10a_steppop2_lbl 1 `"Improbable age difference"', add
label define us10a_steppop2_lbl 2 `"Spouse of mother"', add
label define us10a_steppop2_lbl 3 `"Identified stepfather"', add
label define us10a_steppop2_lbl 5 `"Identified as adopted"', add
label values us10a_steppop2 us10a_steppop2_lbl

label define us10a_steppop2_lbl 0 `"No stepfather present"'
label define us10a_steppop2_lbl 1 `"Improbable age difference"', add
label define us10a_steppop2_lbl 2 `"Spouse of mother"', add
label define us10a_steppop2_lbl 3 `"Identified stepfather"', add
label define us10a_steppop2_lbl 5 `"Identified as adopted"', add
label values us10a_steppop2 us10a_steppop2_lbl

label define us10a_sprule2_lbl 0 `"No spouse link"'
label define us10a_sprule2_lbl 1 `"Wife follows husband"', add
label define us10a_sprule2_lbl 2 `"Wife precedes husband"', add
label define us10a_sprule2_lbl 3 `"Non-adjacent names -- consistent relationship to head/age differences"', add
label define us10a_sprule2_lbl 4 `"Adjacent names (wife follows husband -- no age, other relative conflicts)"', add
label define us10a_sprule2_lbl 5 `"Adjacent names (wife precedes husband -- no age, other relative conflicts)"', add
label values us10a_sprule2 us10a_sprule2_lbl

label define us10a_famsize2_lbl 01 `"1 family member present"'
label define us10a_famsize2_lbl 02 `"2 family members present"', add
label define us10a_famsize2_lbl 03 `"3"', add
label define us10a_famsize2_lbl 04 `"4"', add
label define us10a_famsize2_lbl 05 `"5"', add
label define us10a_famsize2_lbl 06 `"6"', add
label define us10a_famsize2_lbl 07 `"7"', add
label define us10a_famsize2_lbl 08 `"8"', add
label define us10a_famsize2_lbl 09 `"9"', add
label define us10a_famsize2_lbl 10 `"10"', add
label define us10a_famsize2_lbl 11 `"11"', add
label define us10a_famsize2_lbl 12 `"12"', add
label define us10a_famsize2_lbl 13 `"13"', add
label define us10a_famsize2_lbl 14 `"14"', add
label define us10a_famsize2_lbl 15 `"15"', add
label define us10a_famsize2_lbl 16 `"16"', add
label define us10a_famsize2_lbl 17 `"17"', add
label define us10a_famsize2_lbl 18 `"18"', add
label define us10a_famsize2_lbl 19 `"19 family members present"', add
label define us10a_famsize2_lbl 20 `"20"', add
label values us10a_famsize2 us10a_famsize2_lbl

label define us10a_nchild2_lbl 0 `"0 children present"'
label define us10a_nchild2_lbl 1 `"1 child present"', add
label define us10a_nchild2_lbl 2 `"2"', add
label define us10a_nchild2_lbl 3 `"3"', add
label define us10a_nchild2_lbl 4 `"4"', add
label define us10a_nchild2_lbl 5 `"5"', add
label define us10a_nchild2_lbl 6 `"6"', add
label define us10a_nchild2_lbl 7 `"7"', add
label define us10a_nchild2_lbl 8 `"8"', add
label define us10a_nchild2_lbl 9 `"9+"', add
label values us10a_nchild2 us10a_nchild2_lbl

label define us10a_nchlt52_lbl 0 `"No children under age 5"'
label define us10a_nchlt52_lbl 1 `"1 child under age 5"', add
label define us10a_nchlt52_lbl 2 `"2"', add
label define us10a_nchlt52_lbl 3 `"3"', add
label define us10a_nchlt52_lbl 4 `"4"', add
label define us10a_nchlt52_lbl 5 `"5"', add
label define us10a_nchlt52_lbl 6 `"6"', add
label define us10a_nchlt52_lbl 7 `"7"', add
label values us10a_nchlt52 us10a_nchlt52_lbl

label define us10a_famunit2_lbl 01 `"1st family in household or group quarters"'
label define us10a_famunit2_lbl 02 `"2nd family in household or group quarters"', add
label define us10a_famunit2_lbl 03 `"3rd"', add
label define us10a_famunit2_lbl 04 `"4th"', add
label define us10a_famunit2_lbl 05 `"5th"', add
label define us10a_famunit2_lbl 06 `"6th"', add
label define us10a_famunit2_lbl 07 `"7th"', add
label define us10a_famunit2_lbl 08 `"8th"', add
label define us10a_famunit2_lbl 09 `"9th"', add
label define us10a_famunit2_lbl 10 `"10"', add
label define us10a_famunit2_lbl 11 `"11"', add
label define us10a_famunit2_lbl 12 `"12"', add
label define us10a_famunit2_lbl 13 `"13"', add
label define us10a_famunit2_lbl 14 `"14"', add
label define us10a_famunit2_lbl 15 `"15"', add
label define us10a_famunit2_lbl 16 `"16"', add
label define us10a_famunit2_lbl 17 `"17"', add
label values us10a_famunit2 us10a_famunit2_lbl

label define us10a_eldch2_lbl 00 `"Less than 1 year old"'
label define us10a_eldch2_lbl 01 `"1"', add
label define us10a_eldch2_lbl 02 `"2"', add
label define us10a_eldch2_lbl 03 `"3"', add
label define us10a_eldch2_lbl 04 `"4"', add
label define us10a_eldch2_lbl 05 `"5"', add
label define us10a_eldch2_lbl 06 `"6"', add
label define us10a_eldch2_lbl 07 `"7"', add
label define us10a_eldch2_lbl 08 `"8"', add
label define us10a_eldch2_lbl 09 `"9"', add
label define us10a_eldch2_lbl 10 `"10"', add
label define us10a_eldch2_lbl 11 `"11"', add
label define us10a_eldch2_lbl 12 `"12"', add
label define us10a_eldch2_lbl 13 `"13"', add
label define us10a_eldch2_lbl 14 `"14"', add
label define us10a_eldch2_lbl 15 `"15"', add
label define us10a_eldch2_lbl 16 `"16"', add
label define us10a_eldch2_lbl 17 `"17"', add
label define us10a_eldch2_lbl 18 `"18"', add
label define us10a_eldch2_lbl 19 `"19"', add
label define us10a_eldch2_lbl 20 `"20"', add
label define us10a_eldch2_lbl 21 `"21"', add
label define us10a_eldch2_lbl 22 `"22"', add
label define us10a_eldch2_lbl 23 `"23"', add
label define us10a_eldch2_lbl 24 `"24"', add
label define us10a_eldch2_lbl 25 `"25"', add
label define us10a_eldch2_lbl 26 `"26"', add
label define us10a_eldch2_lbl 27 `"27"', add
label define us10a_eldch2_lbl 28 `"28"', add
label define us10a_eldch2_lbl 29 `"29"', add
label define us10a_eldch2_lbl 30 `"30"', add
label define us10a_eldch2_lbl 31 `"31"', add
label define us10a_eldch2_lbl 32 `"32"', add
label define us10a_eldch2_lbl 33 `"33"', add
label define us10a_eldch2_lbl 34 `"34"', add
label define us10a_eldch2_lbl 35 `"35"', add
label define us10a_eldch2_lbl 36 `"36"', add
label define us10a_eldch2_lbl 37 `"37"', add
label define us10a_eldch2_lbl 38 `"38"', add
label define us10a_eldch2_lbl 39 `"39"', add
label define us10a_eldch2_lbl 40 `"40"', add
label define us10a_eldch2_lbl 41 `"41"', add
label define us10a_eldch2_lbl 42 `"42"', add
label define us10a_eldch2_lbl 43 `"43"', add
label define us10a_eldch2_lbl 44 `"44"', add
label define us10a_eldch2_lbl 45 `"45"', add
label define us10a_eldch2_lbl 46 `"46"', add
label define us10a_eldch2_lbl 47 `"47"', add
label define us10a_eldch2_lbl 48 `"48"', add
label define us10a_eldch2_lbl 49 `"49"', add
label define us10a_eldch2_lbl 50 `"50"', add
label define us10a_eldch2_lbl 51 `"51"', add
label define us10a_eldch2_lbl 52 `"52"', add
label define us10a_eldch2_lbl 53 `"53"', add
label define us10a_eldch2_lbl 54 `"54"', add
label define us10a_eldch2_lbl 55 `"55"', add
label define us10a_eldch2_lbl 56 `"56"', add
label define us10a_eldch2_lbl 57 `"57"', add
label define us10a_eldch2_lbl 58 `"58"', add
label define us10a_eldch2_lbl 59 `"59"', add
label define us10a_eldch2_lbl 60 `"60"', add
label define us10a_eldch2_lbl 61 `"61"', add
label define us10a_eldch2_lbl 62 `"62"', add
label define us10a_eldch2_lbl 63 `"63"', add
label define us10a_eldch2_lbl 64 `"64"', add
label define us10a_eldch2_lbl 65 `"65"', add
label define us10a_eldch2_lbl 66 `"66"', add
label define us10a_eldch2_lbl 67 `"67"', add
label define us10a_eldch2_lbl 68 `"68"', add
label define us10a_eldch2_lbl 69 `"69"', add
label define us10a_eldch2_lbl 70 `"70"', add
label define us10a_eldch2_lbl 71 `"71"', add
label define us10a_eldch2_lbl 72 `"72"', add
label define us10a_eldch2_lbl 73 `"73"', add
label define us10a_eldch2_lbl 74 `"74"', add
label define us10a_eldch2_lbl 75 `"75"', add
label define us10a_eldch2_lbl 76 `"76"', add
label define us10a_eldch2_lbl 77 `"77"', add
label define us10a_eldch2_lbl 78 `"78"', add
label define us10a_eldch2_lbl 79 `"79"', add
label define us10a_eldch2_lbl 80 `"80"', add
label define us10a_eldch2_lbl 81 `"81"', add
label define us10a_eldch2_lbl 82 `"82"', add
label define us10a_eldch2_lbl 83 `"83"', add
label define us10a_eldch2_lbl 86 `"86"', add
label define us10a_eldch2_lbl 87 `"87"', add
label define us10a_eldch2_lbl 94 `"94"', add
label define us10a_eldch2_lbl 99 `"N/A"', add
label values us10a_eldch2 us10a_eldch2_lbl

label define us10a_yngch2_lbl 00 `"Less than 1 year old"'
label define us10a_yngch2_lbl 01 `"1"', add
label define us10a_yngch2_lbl 02 `"2"', add
label define us10a_yngch2_lbl 03 `"3"', add
label define us10a_yngch2_lbl 04 `"4"', add
label define us10a_yngch2_lbl 05 `"5"', add
label define us10a_yngch2_lbl 06 `"6"', add
label define us10a_yngch2_lbl 07 `"7"', add
label define us10a_yngch2_lbl 08 `"8"', add
label define us10a_yngch2_lbl 09 `"9"', add
label define us10a_yngch2_lbl 10 `"10"', add
label define us10a_yngch2_lbl 11 `"11"', add
label define us10a_yngch2_lbl 12 `"12"', add
label define us10a_yngch2_lbl 13 `"13"', add
label define us10a_yngch2_lbl 14 `"14"', add
label define us10a_yngch2_lbl 15 `"15"', add
label define us10a_yngch2_lbl 16 `"16"', add
label define us10a_yngch2_lbl 17 `"17"', add
label define us10a_yngch2_lbl 18 `"18"', add
label define us10a_yngch2_lbl 19 `"19"', add
label define us10a_yngch2_lbl 20 `"20"', add
label define us10a_yngch2_lbl 21 `"21"', add
label define us10a_yngch2_lbl 22 `"22"', add
label define us10a_yngch2_lbl 23 `"23"', add
label define us10a_yngch2_lbl 24 `"24"', add
label define us10a_yngch2_lbl 25 `"25"', add
label define us10a_yngch2_lbl 26 `"26"', add
label define us10a_yngch2_lbl 27 `"27"', add
label define us10a_yngch2_lbl 28 `"28"', add
label define us10a_yngch2_lbl 29 `"29"', add
label define us10a_yngch2_lbl 30 `"30"', add
label define us10a_yngch2_lbl 31 `"31"', add
label define us10a_yngch2_lbl 32 `"32"', add
label define us10a_yngch2_lbl 33 `"33"', add
label define us10a_yngch2_lbl 34 `"34"', add
label define us10a_yngch2_lbl 35 `"35"', add
label define us10a_yngch2_lbl 36 `"36"', add
label define us10a_yngch2_lbl 37 `"37"', add
label define us10a_yngch2_lbl 38 `"38"', add
label define us10a_yngch2_lbl 39 `"39"', add
label define us10a_yngch2_lbl 40 `"40"', add
label define us10a_yngch2_lbl 41 `"41"', add
label define us10a_yngch2_lbl 42 `"42"', add
label define us10a_yngch2_lbl 43 `"43"', add
label define us10a_yngch2_lbl 44 `"44"', add
label define us10a_yngch2_lbl 45 `"45"', add
label define us10a_yngch2_lbl 46 `"46"', add
label define us10a_yngch2_lbl 47 `"47"', add
label define us10a_yngch2_lbl 48 `"48"', add
label define us10a_yngch2_lbl 49 `"49"', add
label define us10a_yngch2_lbl 50 `"50"', add
label define us10a_yngch2_lbl 51 `"51"', add
label define us10a_yngch2_lbl 52 `"52"', add
label define us10a_yngch2_lbl 53 `"53"', add
label define us10a_yngch2_lbl 54 `"54"', add
label define us10a_yngch2_lbl 55 `"55"', add
label define us10a_yngch2_lbl 56 `"56"', add
label define us10a_yngch2_lbl 57 `"57"', add
label define us10a_yngch2_lbl 58 `"58"', add
label define us10a_yngch2_lbl 59 `"59"', add
label define us10a_yngch2_lbl 60 `"60"', add
label define us10a_yngch2_lbl 61 `"61"', add
label define us10a_yngch2_lbl 62 `"62"', add
label define us10a_yngch2_lbl 63 `"63"', add
label define us10a_yngch2_lbl 64 `"64"', add
label define us10a_yngch2_lbl 65 `"65"', add
label define us10a_yngch2_lbl 66 `"66"', add
label define us10a_yngch2_lbl 67 `"67"', add
label define us10a_yngch2_lbl 68 `"68"', add
label define us10a_yngch2_lbl 69 `"69"', add
label define us10a_yngch2_lbl 70 `"70"', add
label define us10a_yngch2_lbl 71 `"71"', add
label define us10a_yngch2_lbl 72 `"72"', add
label define us10a_yngch2_lbl 73 `"73"', add
label define us10a_yngch2_lbl 74 `"74"', add
label define us10a_yngch2_lbl 75 `"75"', add
label define us10a_yngch2_lbl 76 `"76"', add
label define us10a_yngch2_lbl 77 `"77"', add
label define us10a_yngch2_lbl 78 `"78"', add
label define us10a_yngch2_lbl 79 `"79"', add
label define us10a_yngch2_lbl 80 `"80"', add
label define us10a_yngch2_lbl 81 `"81"', add
label define us10a_yngch2_lbl 83 `"83"', add
label define us10a_yngch2_lbl 87 `"87"', add
label define us10a_yngch2_lbl 99 `"N/A"', add
label values us10a_yngch2 us10a_yngch2_lbl

label define us10a_nsibs2_lbl 0 `"0 siblings"'
label define us10a_nsibs2_lbl 1 `"1 sibling"', add
label define us10a_nsibs2_lbl 2 `"2 siblings"', add
label define us10a_nsibs2_lbl 3 `"3"', add
label define us10a_nsibs2_lbl 4 `"4"', add
label define us10a_nsibs2_lbl 5 `"5"', add
label define us10a_nsibs2_lbl 6 `"6"', add
label define us10a_nsibs2_lbl 7 `"7"', add
label define us10a_nsibs2_lbl 8 `"8"', add
label define us10a_nsibs2_lbl 9 `"9"', add
label values us10a_nsibs2 us10a_nsibs2_lbl

label define us10a_ind1990_lbl 000 `"NIU (not in universe)"'
label define us10a_ind1990_lbl 010 `"Agricultural production, crops"', add
label define us10a_ind1990_lbl 011 `"Agricultural production, livestock"', add
label define us10a_ind1990_lbl 012 `"Veterinary services"', add
label define us10a_ind1990_lbl 020 `"Landscape and horticultural services"', add
label define us10a_ind1990_lbl 031 `"Forestry"', add
label define us10a_ind1990_lbl 032 `"Fishing, hunting, and trapping "', add
label define us10a_ind1990_lbl 040 `"Metal mining"', add
label define us10a_ind1990_lbl 041 `"Coal mining"', add
label define us10a_ind1990_lbl 042 `"Oil and gas extraction"', add
label define us10a_ind1990_lbl 050 `"Nonmetallic mining and quarrying, except fuels "', add
label define us10a_ind1990_lbl 060 `"All construction "', add
label define us10a_ind1990_lbl 100 `"Meat products"', add
label define us10a_ind1990_lbl 101 `"Dairy products"', add
label define us10a_ind1990_lbl 102 `"Canned, frozen, and preserved fruits and vegetables"', add
label define us10a_ind1990_lbl 110 `"Grain mill products"', add
label define us10a_ind1990_lbl 111 `"Bakery products"', add
label define us10a_ind1990_lbl 112 `"Sugar and confectionery products"', add
label define us10a_ind1990_lbl 120 `"Beverage industries"', add
label define us10a_ind1990_lbl 121 `"Misc. food preparations and kindred products"', add
label define us10a_ind1990_lbl 122 `"Food industries, not specified"', add
label define us10a_ind1990_lbl 130 `"Tobacco manufactures"', add
label define us10a_ind1990_lbl 132 `"Knitting mills"', add
label define us10a_ind1990_lbl 140 `"Dyeing and finishing textiles, except wool and knit goods"', add
label define us10a_ind1990_lbl 141 `"Carpets and rugs"', add
label define us10a_ind1990_lbl 142 `"Yarn, thread, and fabric mills"', add
label define us10a_ind1990_lbl 151 `"Apparel and accessories, except knit"', add
label define us10a_ind1990_lbl 152 `"Miscellaneous fabricated textile products"', add
label define us10a_ind1990_lbl 160 `"Pulp, paper, and paperboard mills"', add
label define us10a_ind1990_lbl 161 `"Miscellaneous paper and pulp products"', add
label define us10a_ind1990_lbl 162 `"Paperboard containers and boxes"', add
label define us10a_ind1990_lbl 171 `"Newspaper publishing and printing"', add
label define us10a_ind1990_lbl 172 `"Printing, publishing, and allied industries, except newspapers"', add
label define us10a_ind1990_lbl 180 `"Plastics, synthetics, and resins"', add
label define us10a_ind1990_lbl 181 `"Drugs"', add
label define us10a_ind1990_lbl 182 `"Soaps and cosmetics"', add
label define us10a_ind1990_lbl 190 `"Paints, varnishes, and related products"', add
label define us10a_ind1990_lbl 191 `"Agricultural chemicals"', add
label define us10a_ind1990_lbl 192 `"Industrial and miscellaneous chemicals"', add
label define us10a_ind1990_lbl 200 `"Petroleum refining"', add
label define us10a_ind1990_lbl 201 `"Miscellaneous petroleum and coal products"', add
label define us10a_ind1990_lbl 210 `"Tires and inner tubes"', add
label define us10a_ind1990_lbl 211 `"Other rubber products, and plastics footwear and belting"', add
label define us10a_ind1990_lbl 212 `"Miscellaneous plastics products"', add
label define us10a_ind1990_lbl 221 `"Footwear, except rubber and plastic"', add
label define us10a_ind1990_lbl 222 `"Leather products, except footwear"', add
label define us10a_ind1990_lbl 230 `"Logging"', add
label define us10a_ind1990_lbl 231 `"Sawmills, planing mills, and millwork"', add
label define us10a_ind1990_lbl 232 `"Wood buildings and mobile homes"', add
label define us10a_ind1990_lbl 242 `"Furniture and fixtures"', add
label define us10a_ind1990_lbl 250 `"Glass and glass products"', add
label define us10a_ind1990_lbl 251 `"Cement, concrete, gypsum, and plaster products"', add
label define us10a_ind1990_lbl 252 `"Structural clay products"', add
label define us10a_ind1990_lbl 261 `"Pottery and related products"', add
label define us10a_ind1990_lbl 262 `"Misc. nonmetallic mineral and stone products"', add
label define us10a_ind1990_lbl 270 `"Blast furnaces, steelworks, rolling and finishing mills"', add
label define us10a_ind1990_lbl 271 `"Iron and steel foundries"', add
label define us10a_ind1990_lbl 272 `"Primary aluminum industries"', add
label define us10a_ind1990_lbl 280 `"Other primary metal industries"', add
label define us10a_ind1990_lbl 281 `"Cutlery, handtools, and general hardware"', add
label define us10a_ind1990_lbl 282 `"Fabricated structural metal products"', add
label define us10a_ind1990_lbl 291 `"Metal forgings and stampings"', add
label define us10a_ind1990_lbl 292 `"Ordnance"', add
label define us10a_ind1990_lbl 300 `"Miscellaneous fabricated metal products"', add
label define us10a_ind1990_lbl 301 `"Metal industries, not specified"', add
label define us10a_ind1990_lbl 310 `"Engines and turbines"', add
label define us10a_ind1990_lbl 311 `"Farm machinery and equipment"', add
label define us10a_ind1990_lbl 312 `"Construction and material handling machines"', add
label define us10a_ind1990_lbl 320 `"Metalworking machinery"', add
label define us10a_ind1990_lbl 322 `"Computers and related equipment"', add
label define us10a_ind1990_lbl 331 `"Machinery, except electrical, not elsewhere classified"', add
label define us10a_ind1990_lbl 332 `"Machinery, not specified"', add
label define us10a_ind1990_lbl 340 `"Household appliances"', add
label define us10a_ind1990_lbl 341 `"Radio, TV, and communication equipment"', add
label define us10a_ind1990_lbl 342 `"Electrical machinery, equipment, and supplies, not elsewhere classified"', add
label define us10a_ind1990_lbl 351 `"Motor vehicles and motor vehicle equipment"', add
label define us10a_ind1990_lbl 352 `"Aircraft and parts"', add
label define us10a_ind1990_lbl 360 `"Ship and boat building and repairing"', add
label define us10a_ind1990_lbl 361 `"Railroad locomotives and equipment"', add
label define us10a_ind1990_lbl 362 `"Guided missiles, space vehicles, and parts"', add
label define us10a_ind1990_lbl 370 `"Cycles and miscellaneous transportation equipment"', add
label define us10a_ind1990_lbl 371 `"Scientific and controlling instruments"', add
label define us10a_ind1990_lbl 372 `"Medical, dental, and optical instruments and supplies"', add
label define us10a_ind1990_lbl 390 `"Toys, amusement, and sporting goods"', add
label define us10a_ind1990_lbl 391 `"Miscellaneous manufacturing industries"', add
label define us10a_ind1990_lbl 392 `"Manufacturing industries, not specified "', add
label define us10a_ind1990_lbl 400 `"Railroads"', add
label define us10a_ind1990_lbl 401 `"Bus service and urban transit"', add
label define us10a_ind1990_lbl 402 `"Taxicab service"', add
label define us10a_ind1990_lbl 410 `"Trucking service"', add
label define us10a_ind1990_lbl 411 `"Warehousing and storage"', add
label define us10a_ind1990_lbl 412 `"U.S. Postal Service"', add
label define us10a_ind1990_lbl 420 `"Water transportation"', add
label define us10a_ind1990_lbl 421 `"Air transportation"', add
label define us10a_ind1990_lbl 432 `"Services incidental to transportation"', add
label define us10a_ind1990_lbl 440 `"Radio and television broadcasting and cable"', add
label define us10a_ind1990_lbl 441 `"Telephone communications"', add
label define us10a_ind1990_lbl 450 `"Electric light and power"', add
label define us10a_ind1990_lbl 451 `"Gas and steam supply systems"', add
label define us10a_ind1990_lbl 452 `"Electric and gas, and other combinations"', add
label define us10a_ind1990_lbl 470 `"Water supply and irrigation"', add
label define us10a_ind1990_lbl 471 `"Sanitary services"', add
label define us10a_ind1990_lbl 472 `"Utilities, not specified "', add
label define us10a_ind1990_lbl 500 `"Motor vehicles and equipment"', add
label define us10a_ind1990_lbl 501 `"Furniture and home furnishings"', add
label define us10a_ind1990_lbl 502 `"Lumber and construction materials"', add
label define us10a_ind1990_lbl 510 `"Professional and commercial equipment and supplies"', add
label define us10a_ind1990_lbl 511 `"Metals and minerals, except petroleum"', add
label define us10a_ind1990_lbl 512 `"Electrical goods"', add
label define us10a_ind1990_lbl 521 `"Hardware, plumbing and heating supplies"', add
label define us10a_ind1990_lbl 530 `"Machinery, equipment, and supplies"', add
label define us10a_ind1990_lbl 531 `"Scrap and waste materials"', add
label define us10a_ind1990_lbl 532 `"Miscellaneous wholesale, durable goods"', add
label define us10a_ind1990_lbl 540 `"Paper and paper products"', add
label define us10a_ind1990_lbl 541 `"Drugs, chemicals, and allied products"', add
label define us10a_ind1990_lbl 542 `"Apparel, fabrics, and notions"', add
label define us10a_ind1990_lbl 550 `"Groceries and related products"', add
label define us10a_ind1990_lbl 551 `"Farm-product raw materials"', add
label define us10a_ind1990_lbl 552 `"Petroleum products"', add
label define us10a_ind1990_lbl 560 `"Alcoholic beverages"', add
label define us10a_ind1990_lbl 561 `"Farm supplies"', add
label define us10a_ind1990_lbl 562 `"Miscellaneous wholesale, nondurable goods"', add
label define us10a_ind1990_lbl 571 `"Wholesale trade, not specified "', add
label define us10a_ind1990_lbl 580 `"Lumber and building material retailing"', add
label define us10a_ind1990_lbl 581 `"Hardware stores"', add
label define us10a_ind1990_lbl 582 `"Retail nurseries and garden stores"', add
label define us10a_ind1990_lbl 591 `"Department stores"', add
label define us10a_ind1990_lbl 600 `"Miscellaneous general merchandise stores"', add
label define us10a_ind1990_lbl 601 `"Grocery stores"', add
label define us10a_ind1990_lbl 610 `"Retail bakeries"', add
label define us10a_ind1990_lbl 611 `"Food stores, not elsewhere classified"', add
label define us10a_ind1990_lbl 612 `"Motor vehicle dealers"', add
label define us10a_ind1990_lbl 620 `"Auto and home supply stores"', add
label define us10a_ind1990_lbl 621 `"Gasoline service stations"', add
label define us10a_ind1990_lbl 622 `"Miscellaneous vehicle dealers"', add
label define us10a_ind1990_lbl 623 `"Apparel and accessory stores, except shoe"', add
label define us10a_ind1990_lbl 630 `"Shoe stores"', add
label define us10a_ind1990_lbl 631 `"Furniture and home furnishings stores"', add
label define us10a_ind1990_lbl 632 `"Household appliance stores"', add
label define us10a_ind1990_lbl 633 `"Radio, TV, and computer stores"', add
label define us10a_ind1990_lbl 640 `"Music stores"', add
label define us10a_ind1990_lbl 641 `"Eating and drinking places"', add
label define us10a_ind1990_lbl 642 `"Drug stores"', add
label define us10a_ind1990_lbl 650 `"Liquor stores"', add
label define us10a_ind1990_lbl 651 `"Sporting goods, bicycles, and hobby stores"', add
label define us10a_ind1990_lbl 652 `"Book and stationery stores"', add
label define us10a_ind1990_lbl 660 `"Jewelry stores"', add
label define us10a_ind1990_lbl 661 `"Gift, novelty, and souvenir shops"', add
label define us10a_ind1990_lbl 662 `"Sewing, needlework, and piece goods stores"', add
label define us10a_ind1990_lbl 663 `"Catalog and mail order houses"', add
label define us10a_ind1990_lbl 670 `"Vending machine operators"', add
label define us10a_ind1990_lbl 671 `"Direct selling establishments"', add
label define us10a_ind1990_lbl 672 `"Fuel dealers"', add
label define us10a_ind1990_lbl 681 `"Retail florists"', add
label define us10a_ind1990_lbl 682 `"Miscellaneous retail stores"', add
label define us10a_ind1990_lbl 691 `"Retail trade, not specified "', add
label define us10a_ind1990_lbl 700 `"Banking"', add
label define us10a_ind1990_lbl 701 `"Savings institutions, including credit unions"', add
label define us10a_ind1990_lbl 702 `"Credit agencies, not elsewhere classified"', add
label define us10a_ind1990_lbl 710 `"Security, commodity brokerage, and investment companies"', add
label define us10a_ind1990_lbl 711 `"Insurance"', add
label define us10a_ind1990_lbl 712 `"Real estate, including real estate-insurance offices "', add
label define us10a_ind1990_lbl 721 `"Advertising"', add
label define us10a_ind1990_lbl 722 `"Services to dwellings and other buildings"', add
label define us10a_ind1990_lbl 731 `"Personnel supply services"', add
label define us10a_ind1990_lbl 732 `"Computer and data processing services"', add
label define us10a_ind1990_lbl 740 `"Detective and protective services"', add
label define us10a_ind1990_lbl 741 `"Business services, not elsewhere classified"', add
label define us10a_ind1990_lbl 742 `"Automotive rental and leasing, without drivers"', add
label define us10a_ind1990_lbl 750 `"Automobile parking and carwashes"', add
label define us10a_ind1990_lbl 751 `"Automotive repair and related services"', add
label define us10a_ind1990_lbl 752 `"Electrical repair shops"', add
label define us10a_ind1990_lbl 760 `"Miscellaneous repair services "', add
label define us10a_ind1990_lbl 761 `"Private households"', add
label define us10a_ind1990_lbl 762 `"Hotels and motels"', add
label define us10a_ind1990_lbl 770 `"Lodging places, except hotels and motels"', add
label define us10a_ind1990_lbl 771 `"Laundry, cleaning, and garment services"', add
label define us10a_ind1990_lbl 772 `"Beauty shops"', add
label define us10a_ind1990_lbl 780 `"Barber shops"', add
label define us10a_ind1990_lbl 781 `"Funeral service and crematories"', add
label define us10a_ind1990_lbl 791 `"Miscellaneous personal services "', add
label define us10a_ind1990_lbl 800 `"Theaters and motion pictures"', add
label define us10a_ind1990_lbl 801 `"Video tape rental"', add
label define us10a_ind1990_lbl 802 `"Bowling centers"', add
label define us10a_ind1990_lbl 810 `"Miscellaneous entertainment and recreation services "', add
label define us10a_ind1990_lbl 812 `"Offices and clinics of physicians"', add
label define us10a_ind1990_lbl 820 `"Offices and clinics of dentists"', add
label define us10a_ind1990_lbl 821 `"Offices and clinics of chiropractors"', add
label define us10a_ind1990_lbl 822 `"Offices and clinics of optometrists"', add
label define us10a_ind1990_lbl 831 `"Hospitals"', add
label define us10a_ind1990_lbl 832 `"Nursing and personal care facilities"', add
label define us10a_ind1990_lbl 840 `"Health services, not elsewhere classified"', add
label define us10a_ind1990_lbl 841 `"Legal services"', add
label define us10a_ind1990_lbl 842 `"Elementary and secondary schools"', add
label define us10a_ind1990_lbl 850 `"Colleges and universities"', add
label define us10a_ind1990_lbl 852 `"Libraries"', add
label define us10a_ind1990_lbl 860 `"Educational services, not elsewhere classified"', add
label define us10a_ind1990_lbl 861 `"Job training and vocational rehabilitation services"', add
label define us10a_ind1990_lbl 862 `"Child day care services"', add
label define us10a_ind1990_lbl 870 `"Residential care facilities, without nursing"', add
label define us10a_ind1990_lbl 871 `"Social services, not elsewhere classified"', add
label define us10a_ind1990_lbl 872 `"Museums, art galleries, and zoos"', add
label define us10a_ind1990_lbl 873 `"Labor unions"', add
label define us10a_ind1990_lbl 880 `"Religious organizations"', add
label define us10a_ind1990_lbl 881 `"Membership organizations, not elsewhere classified"', add
label define us10a_ind1990_lbl 882 `"Engineering, architectural, and surveying services"', add
label define us10a_ind1990_lbl 890 `"Accounting, auditing, and bookkeeping services"', add
label define us10a_ind1990_lbl 891 `"Research, development, and testing services"', add
label define us10a_ind1990_lbl 892 `"Management and public relations services"', add
label define us10a_ind1990_lbl 893 `"Miscellaneous professional and related services "', add
label define us10a_ind1990_lbl 901 `"General government, not elsewhere classified"', add
label define us10a_ind1990_lbl 910 `"Justice, public order, and safety"', add
label define us10a_ind1990_lbl 921 `"Public finance, taxation, and monetary policy"', add
label define us10a_ind1990_lbl 922 `"Administration of human resources programs"', add
label define us10a_ind1990_lbl 930 `"Administration of environmental quality and housing programs"', add
label define us10a_ind1990_lbl 931 `"Administration of economic programs"', add
label define us10a_ind1990_lbl 932 `"National security and international affairs "', add
label define us10a_ind1990_lbl 940 `"Army"', add
label define us10a_ind1990_lbl 941 `"Air Force"', add
label define us10a_ind1990_lbl 942 `"Navy"', add
label define us10a_ind1990_lbl 950 `"Marines"', add
label define us10a_ind1990_lbl 951 `"Coast Guard"', add
label define us10a_ind1990_lbl 952 `"Armed Forces, branch not specified"', add
label define us10a_ind1990_lbl 960 `"Military Reserves or National Guard "', add
label values us10a_ind1990 us10a_ind1990_lbl

label define us10a_ind1990_lbl 000 `"NIU (not in universe)"'
label define us10a_ind1990_lbl 010 `"Agricultural production, crops"', add
label define us10a_ind1990_lbl 011 `"Agricultural production, livestock"', add
label define us10a_ind1990_lbl 012 `"Veterinary services"', add
label define us10a_ind1990_lbl 020 `"Landscape and horticultural services"', add
label define us10a_ind1990_lbl 031 `"Forestry"', add
label define us10a_ind1990_lbl 032 `"Fishing, hunting, and trapping "', add
label define us10a_ind1990_lbl 040 `"Metal mining"', add
label define us10a_ind1990_lbl 041 `"Coal mining"', add
label define us10a_ind1990_lbl 042 `"Oil and gas extraction"', add
label define us10a_ind1990_lbl 050 `"Nonmetallic mining and quarrying, except fuels "', add
label define us10a_ind1990_lbl 060 `"All construction "', add
label define us10a_ind1990_lbl 100 `"Meat products"', add
label define us10a_ind1990_lbl 101 `"Dairy products"', add
label define us10a_ind1990_lbl 102 `"Canned, frozen, and preserved fruits and vegetables"', add
label define us10a_ind1990_lbl 110 `"Grain mill products"', add
label define us10a_ind1990_lbl 111 `"Bakery products"', add
label define us10a_ind1990_lbl 112 `"Sugar and confectionery products"', add
label define us10a_ind1990_lbl 120 `"Beverage industries"', add
label define us10a_ind1990_lbl 121 `"Misc. food preparations and kindred products"', add
label define us10a_ind1990_lbl 122 `"Food industries, not specified"', add
label define us10a_ind1990_lbl 130 `"Tobacco manufactures"', add
label define us10a_ind1990_lbl 132 `"Knitting mills"', add
label define us10a_ind1990_lbl 140 `"Dyeing and finishing textiles, except wool and knit goods"', add
label define us10a_ind1990_lbl 141 `"Carpets and rugs"', add
label define us10a_ind1990_lbl 142 `"Yarn, thread, and fabric mills"', add
label define us10a_ind1990_lbl 151 `"Apparel and accessories, except knit"', add
label define us10a_ind1990_lbl 152 `"Miscellaneous fabricated textile products"', add
label define us10a_ind1990_lbl 160 `"Pulp, paper, and paperboard mills"', add
label define us10a_ind1990_lbl 161 `"Miscellaneous paper and pulp products"', add
label define us10a_ind1990_lbl 162 `"Paperboard containers and boxes"', add
label define us10a_ind1990_lbl 171 `"Newspaper publishing and printing"', add
label define us10a_ind1990_lbl 172 `"Printing, publishing, and allied industries, except newspapers"', add
label define us10a_ind1990_lbl 180 `"Plastics, synthetics, and resins"', add
label define us10a_ind1990_lbl 181 `"Drugs"', add
label define us10a_ind1990_lbl 182 `"Soaps and cosmetics"', add
label define us10a_ind1990_lbl 190 `"Paints, varnishes, and related products"', add
label define us10a_ind1990_lbl 191 `"Agricultural chemicals"', add
label define us10a_ind1990_lbl 192 `"Industrial and miscellaneous chemicals"', add
label define us10a_ind1990_lbl 200 `"Petroleum refining"', add
label define us10a_ind1990_lbl 201 `"Miscellaneous petroleum and coal products"', add
label define us10a_ind1990_lbl 210 `"Tires and inner tubes"', add
label define us10a_ind1990_lbl 211 `"Other rubber products, and plastics footwear and belting"', add
label define us10a_ind1990_lbl 212 `"Miscellaneous plastics products"', add
label define us10a_ind1990_lbl 221 `"Footwear, except rubber and plastic"', add
label define us10a_ind1990_lbl 222 `"Leather products, except footwear"', add
label define us10a_ind1990_lbl 230 `"Logging"', add
label define us10a_ind1990_lbl 231 `"Sawmills, planing mills, and millwork"', add
label define us10a_ind1990_lbl 232 `"Wood buildings and mobile homes"', add
label define us10a_ind1990_lbl 242 `"Furniture and fixtures"', add
label define us10a_ind1990_lbl 250 `"Glass and glass products"', add
label define us10a_ind1990_lbl 251 `"Cement, concrete, gypsum, and plaster products"', add
label define us10a_ind1990_lbl 252 `"Structural clay products"', add
label define us10a_ind1990_lbl 261 `"Pottery and related products"', add
label define us10a_ind1990_lbl 262 `"Misc. nonmetallic mineral and stone products"', add
label define us10a_ind1990_lbl 270 `"Blast furnaces, steelworks, rolling and finishing mills"', add
label define us10a_ind1990_lbl 271 `"Iron and steel foundries"', add
label define us10a_ind1990_lbl 272 `"Primary aluminum industries"', add
label define us10a_ind1990_lbl 280 `"Other primary metal industries"', add
label define us10a_ind1990_lbl 281 `"Cutlery, handtools, and general hardware"', add
label define us10a_ind1990_lbl 282 `"Fabricated structural metal products"', add
label define us10a_ind1990_lbl 291 `"Metal forgings and stampings"', add
label define us10a_ind1990_lbl 292 `"Ordnance"', add
label define us10a_ind1990_lbl 300 `"Miscellaneous fabricated metal products"', add
label define us10a_ind1990_lbl 301 `"Metal industries, not specified"', add
label define us10a_ind1990_lbl 310 `"Engines and turbines"', add
label define us10a_ind1990_lbl 311 `"Farm machinery and equipment"', add
label define us10a_ind1990_lbl 312 `"Construction and material handling machines"', add
label define us10a_ind1990_lbl 320 `"Metalworking machinery"', add
label define us10a_ind1990_lbl 322 `"Computers and related equipment"', add
label define us10a_ind1990_lbl 331 `"Machinery, except electrical, not elsewhere classified"', add
label define us10a_ind1990_lbl 332 `"Machinery, not specified"', add
label define us10a_ind1990_lbl 340 `"Household appliances"', add
label define us10a_ind1990_lbl 341 `"Radio, TV, and communication equipment"', add
label define us10a_ind1990_lbl 342 `"Electrical machinery, equipment, and supplies, not elsewhere classified"', add
label define us10a_ind1990_lbl 351 `"Motor vehicles and motor vehicle equipment"', add
label define us10a_ind1990_lbl 352 `"Aircraft and parts"', add
label define us10a_ind1990_lbl 360 `"Ship and boat building and repairing"', add
label define us10a_ind1990_lbl 361 `"Railroad locomotives and equipment"', add
label define us10a_ind1990_lbl 362 `"Guided missiles, space vehicles, and parts"', add
label define us10a_ind1990_lbl 370 `"Cycles and miscellaneous transportation equipment"', add
label define us10a_ind1990_lbl 371 `"Scientific and controlling instruments"', add
label define us10a_ind1990_lbl 372 `"Medical, dental, and optical instruments and supplies"', add
label define us10a_ind1990_lbl 390 `"Toys, amusement, and sporting goods"', add
label define us10a_ind1990_lbl 391 `"Miscellaneous manufacturing industries"', add
label define us10a_ind1990_lbl 392 `"Manufacturing industries, not specified "', add
label define us10a_ind1990_lbl 400 `"Railroads"', add
label define us10a_ind1990_lbl 401 `"Bus service and urban transit"', add
label define us10a_ind1990_lbl 402 `"Taxicab service"', add
label define us10a_ind1990_lbl 410 `"Trucking service"', add
label define us10a_ind1990_lbl 411 `"Warehousing and storage"', add
label define us10a_ind1990_lbl 412 `"U.S. Postal Service"', add
label define us10a_ind1990_lbl 420 `"Water transportation"', add
label define us10a_ind1990_lbl 421 `"Air transportation"', add
label define us10a_ind1990_lbl 432 `"Services incidental to transportation"', add
label define us10a_ind1990_lbl 440 `"Radio and television broadcasting and cable"', add
label define us10a_ind1990_lbl 441 `"Telephone communications"', add
label define us10a_ind1990_lbl 450 `"Electric light and power"', add
label define us10a_ind1990_lbl 451 `"Gas and steam supply systems"', add
label define us10a_ind1990_lbl 452 `"Electric and gas, and other combinations"', add
label define us10a_ind1990_lbl 470 `"Water supply and irrigation"', add
label define us10a_ind1990_lbl 471 `"Sanitary services"', add
label define us10a_ind1990_lbl 472 `"Utilities, not specified "', add
label define us10a_ind1990_lbl 500 `"Motor vehicles and equipment"', add
label define us10a_ind1990_lbl 501 `"Furniture and home furnishings"', add
label define us10a_ind1990_lbl 502 `"Lumber and construction materials"', add
label define us10a_ind1990_lbl 510 `"Professional and commercial equipment and supplies"', add
label define us10a_ind1990_lbl 511 `"Metals and minerals, except petroleum"', add
label define us10a_ind1990_lbl 512 `"Electrical goods"', add
label define us10a_ind1990_lbl 521 `"Hardware, plumbing and heating supplies"', add
label define us10a_ind1990_lbl 530 `"Machinery, equipment, and supplies"', add
label define us10a_ind1990_lbl 531 `"Scrap and waste materials"', add
label define us10a_ind1990_lbl 532 `"Miscellaneous wholesale, durable goods"', add
label define us10a_ind1990_lbl 540 `"Paper and paper products"', add
label define us10a_ind1990_lbl 541 `"Drugs, chemicals, and allied products"', add
label define us10a_ind1990_lbl 542 `"Apparel, fabrics, and notions"', add
label define us10a_ind1990_lbl 550 `"Groceries and related products"', add
label define us10a_ind1990_lbl 551 `"Farm-product raw materials"', add
label define us10a_ind1990_lbl 552 `"Petroleum products"', add
label define us10a_ind1990_lbl 560 `"Alcoholic beverages"', add
label define us10a_ind1990_lbl 561 `"Farm supplies"', add
label define us10a_ind1990_lbl 562 `"Miscellaneous wholesale, nondurable goods"', add
label define us10a_ind1990_lbl 571 `"Wholesale trade, not specified "', add
label define us10a_ind1990_lbl 580 `"Lumber and building material retailing"', add
label define us10a_ind1990_lbl 581 `"Hardware stores"', add
label define us10a_ind1990_lbl 582 `"Retail nurseries and garden stores"', add
label define us10a_ind1990_lbl 591 `"Department stores"', add
label define us10a_ind1990_lbl 600 `"Miscellaneous general merchandise stores"', add
label define us10a_ind1990_lbl 601 `"Grocery stores"', add
label define us10a_ind1990_lbl 610 `"Retail bakeries"', add
label define us10a_ind1990_lbl 611 `"Food stores, not elsewhere classified"', add
label define us10a_ind1990_lbl 612 `"Motor vehicle dealers"', add
label define us10a_ind1990_lbl 620 `"Auto and home supply stores"', add
label define us10a_ind1990_lbl 621 `"Gasoline service stations"', add
label define us10a_ind1990_lbl 622 `"Miscellaneous vehicle dealers"', add
label define us10a_ind1990_lbl 623 `"Apparel and accessory stores, except shoe"', add
label define us10a_ind1990_lbl 630 `"Shoe stores"', add
label define us10a_ind1990_lbl 631 `"Furniture and home furnishings stores"', add
label define us10a_ind1990_lbl 632 `"Household appliance stores"', add
label define us10a_ind1990_lbl 633 `"Radio, TV, and computer stores"', add
label define us10a_ind1990_lbl 640 `"Music stores"', add
label define us10a_ind1990_lbl 641 `"Eating and drinking places"', add
label define us10a_ind1990_lbl 642 `"Drug stores"', add
label define us10a_ind1990_lbl 650 `"Liquor stores"', add
label define us10a_ind1990_lbl 651 `"Sporting goods, bicycles, and hobby stores"', add
label define us10a_ind1990_lbl 652 `"Book and stationery stores"', add
label define us10a_ind1990_lbl 660 `"Jewelry stores"', add
label define us10a_ind1990_lbl 661 `"Gift, novelty, and souvenir shops"', add
label define us10a_ind1990_lbl 662 `"Sewing, needlework, and piece goods stores"', add
label define us10a_ind1990_lbl 663 `"Catalog and mail order houses"', add
label define us10a_ind1990_lbl 670 `"Vending machine operators"', add
label define us10a_ind1990_lbl 671 `"Direct selling establishments"', add
label define us10a_ind1990_lbl 672 `"Fuel dealers"', add
label define us10a_ind1990_lbl 681 `"Retail florists"', add
label define us10a_ind1990_lbl 682 `"Miscellaneous retail stores"', add
label define us10a_ind1990_lbl 691 `"Retail trade, not specified "', add
label define us10a_ind1990_lbl 700 `"Banking"', add
label define us10a_ind1990_lbl 701 `"Savings institutions, including credit unions"', add
label define us10a_ind1990_lbl 702 `"Credit agencies, not elsewhere classified"', add
label define us10a_ind1990_lbl 710 `"Security, commodity brokerage, and investment companies"', add
label define us10a_ind1990_lbl 711 `"Insurance"', add
label define us10a_ind1990_lbl 712 `"Real estate, including real estate-insurance offices "', add
label define us10a_ind1990_lbl 721 `"Advertising"', add
label define us10a_ind1990_lbl 722 `"Services to dwellings and other buildings"', add
label define us10a_ind1990_lbl 731 `"Personnel supply services"', add
label define us10a_ind1990_lbl 732 `"Computer and data processing services"', add
label define us10a_ind1990_lbl 740 `"Detective and protective services"', add
label define us10a_ind1990_lbl 741 `"Business services, not elsewhere classified"', add
label define us10a_ind1990_lbl 742 `"Automotive rental and leasing, without drivers"', add
label define us10a_ind1990_lbl 750 `"Automobile parking and carwashes"', add
label define us10a_ind1990_lbl 751 `"Automotive repair and related services"', add
label define us10a_ind1990_lbl 752 `"Electrical repair shops"', add
label define us10a_ind1990_lbl 760 `"Miscellaneous repair services "', add
label define us10a_ind1990_lbl 761 `"Private households"', add
label define us10a_ind1990_lbl 762 `"Hotels and motels"', add
label define us10a_ind1990_lbl 770 `"Lodging places, except hotels and motels"', add
label define us10a_ind1990_lbl 771 `"Laundry, cleaning, and garment services"', add
label define us10a_ind1990_lbl 772 `"Beauty shops"', add
label define us10a_ind1990_lbl 780 `"Barber shops"', add
label define us10a_ind1990_lbl 781 `"Funeral service and crematories"', add
label define us10a_ind1990_lbl 791 `"Miscellaneous personal services "', add
label define us10a_ind1990_lbl 800 `"Theaters and motion pictures"', add
label define us10a_ind1990_lbl 801 `"Video tape rental"', add
label define us10a_ind1990_lbl 802 `"Bowling centers"', add
label define us10a_ind1990_lbl 810 `"Miscellaneous entertainment and recreation services "', add
label define us10a_ind1990_lbl 812 `"Offices and clinics of physicians"', add
label define us10a_ind1990_lbl 820 `"Offices and clinics of dentists"', add
label define us10a_ind1990_lbl 821 `"Offices and clinics of chiropractors"', add
label define us10a_ind1990_lbl 822 `"Offices and clinics of optometrists"', add
label define us10a_ind1990_lbl 831 `"Hospitals"', add
label define us10a_ind1990_lbl 832 `"Nursing and personal care facilities"', add
label define us10a_ind1990_lbl 840 `"Health services, not elsewhere classified"', add
label define us10a_ind1990_lbl 841 `"Legal services"', add
label define us10a_ind1990_lbl 842 `"Elementary and secondary schools"', add
label define us10a_ind1990_lbl 850 `"Colleges and universities"', add
label define us10a_ind1990_lbl 852 `"Libraries"', add
label define us10a_ind1990_lbl 860 `"Educational services, not elsewhere classified"', add
label define us10a_ind1990_lbl 861 `"Job training and vocational rehabilitation services"', add
label define us10a_ind1990_lbl 862 `"Child day care services"', add
label define us10a_ind1990_lbl 870 `"Residential care facilities, without nursing"', add
label define us10a_ind1990_lbl 871 `"Social services, not elsewhere classified"', add
label define us10a_ind1990_lbl 872 `"Museums, art galleries, and zoos"', add
label define us10a_ind1990_lbl 873 `"Labor unions"', add
label define us10a_ind1990_lbl 880 `"Religious organizations"', add
label define us10a_ind1990_lbl 881 `"Membership organizations, not elsewhere classified"', add
label define us10a_ind1990_lbl 882 `"Engineering, architectural, and surveying services"', add
label define us10a_ind1990_lbl 890 `"Accounting, auditing, and bookkeeping services"', add
label define us10a_ind1990_lbl 891 `"Research, development, and testing services"', add
label define us10a_ind1990_lbl 892 `"Management and public relations services"', add
label define us10a_ind1990_lbl 893 `"Miscellaneous professional and related services "', add
label define us10a_ind1990_lbl 901 `"General government, not elsewhere classified"', add
label define us10a_ind1990_lbl 910 `"Justice, public order, and safety"', add
label define us10a_ind1990_lbl 921 `"Public finance, taxation, and monetary policy"', add
label define us10a_ind1990_lbl 922 `"Administration of human resources programs"', add
label define us10a_ind1990_lbl 930 `"Administration of environmental quality and housing programs"', add
label define us10a_ind1990_lbl 931 `"Administration of economic programs"', add
label define us10a_ind1990_lbl 932 `"National security and international affairs "', add
label define us10a_ind1990_lbl 940 `"Army"', add
label define us10a_ind1990_lbl 941 `"Air Force"', add
label define us10a_ind1990_lbl 942 `"Navy"', add
label define us10a_ind1990_lbl 950 `"Marines"', add
label define us10a_ind1990_lbl 951 `"Coast Guard"', add
label define us10a_ind1990_lbl 952 `"Armed Forces, branch not specified"', add
label define us10a_ind1990_lbl 960 `"Military Reserves or National Guard "', add
label values us10a_ind1990 us10a_ind1990_lbl

label define us10a_qhispan_lbl 0 `"Not allocated"'
label define us10a_qhispan_lbl 4 `"Allocated"', add
label values us10a_qhispan us10a_qhispan_lbl

label define us10a_racesing_lbl 10 `"White"'
label define us10a_racesing_lbl 12 `"Other race, Hispanic"', add
label define us10a_racesing_lbl 20 `"Black"', add
label define us10a_racesing_lbl 30 `"American Indian (AI)"', add
label define us10a_racesing_lbl 31 `"Alaskan Native (AN)"', add
label define us10a_racesing_lbl 32 `"American Indian/Alaskan Native (AI/AN)"', add
label define us10a_racesing_lbl 40 `"Asian Indian"', add
label define us10a_racesing_lbl 41 `"Chinese"', add
label define us10a_racesing_lbl 42 `"Filipino"', add
label define us10a_racesing_lbl 43 `"Japanese"', add
label define us10a_racesing_lbl 44 `"Korean"', add
label define us10a_racesing_lbl 45 `"Other Asian"', add
label define us10a_racesing_lbl 46 `"Hawaiian"', add
label define us10a_racesing_lbl 47 `"Other Pacific Islander (PI)"', add
label define us10a_racesing_lbl 48 `"Asian and Pacific Islander (PI)"', add
label define us10a_racesing_lbl 50 `"Other race, non-Hispanic"', add
label values us10a_racesing us10a_racesing_lbl

label define us10a_probwht_lbl 000 `"0"'
label define us10a_probwht_lbl 001 `"1"', add
label define us10a_probwht_lbl 002 `"2"', add
label define us10a_probwht_lbl 003 `"3"', add
label define us10a_probwht_lbl 004 `"4"', add
label define us10a_probwht_lbl 005 `"5"', add
label define us10a_probwht_lbl 006 `"6"', add
label define us10a_probwht_lbl 007 `"7"', add
label define us10a_probwht_lbl 008 `"8"', add
label define us10a_probwht_lbl 009 `"9"', add
label define us10a_probwht_lbl 010 `"10"', add
label define us10a_probwht_lbl 011 `"11"', add
label define us10a_probwht_lbl 012 `"12"', add
label define us10a_probwht_lbl 013 `"13"', add
label define us10a_probwht_lbl 014 `"14"', add
label define us10a_probwht_lbl 015 `"15"', add
label define us10a_probwht_lbl 016 `"16"', add
label define us10a_probwht_lbl 017 `"17"', add
label define us10a_probwht_lbl 018 `"18"', add
label define us10a_probwht_lbl 019 `"19"', add
label define us10a_probwht_lbl 020 `"20"', add
label define us10a_probwht_lbl 021 `"21"', add
label define us10a_probwht_lbl 022 `"22"', add
label define us10a_probwht_lbl 023 `"23"', add
label define us10a_probwht_lbl 024 `"24"', add
label define us10a_probwht_lbl 025 `"25"', add
label define us10a_probwht_lbl 026 `"26"', add
label define us10a_probwht_lbl 027 `"27"', add
label define us10a_probwht_lbl 028 `"28"', add
label define us10a_probwht_lbl 029 `"29"', add
label define us10a_probwht_lbl 030 `"30"', add
label define us10a_probwht_lbl 031 `"31"', add
label define us10a_probwht_lbl 032 `"32"', add
label define us10a_probwht_lbl 033 `"33"', add
label define us10a_probwht_lbl 034 `"34"', add
label define us10a_probwht_lbl 035 `"35"', add
label define us10a_probwht_lbl 036 `"36"', add
label define us10a_probwht_lbl 037 `"37"', add
label define us10a_probwht_lbl 038 `"38"', add
label define us10a_probwht_lbl 039 `"39"', add
label define us10a_probwht_lbl 040 `"40"', add
label define us10a_probwht_lbl 041 `"41"', add
label define us10a_probwht_lbl 042 `"42"', add
label define us10a_probwht_lbl 043 `"43"', add
label define us10a_probwht_lbl 044 `"44"', add
label define us10a_probwht_lbl 045 `"45"', add
label define us10a_probwht_lbl 046 `"46"', add
label define us10a_probwht_lbl 047 `"47"', add
label define us10a_probwht_lbl 048 `"48"', add
label define us10a_probwht_lbl 049 `"49"', add
label define us10a_probwht_lbl 050 `"50"', add
label define us10a_probwht_lbl 051 `"51"', add
label define us10a_probwht_lbl 052 `"52"', add
label define us10a_probwht_lbl 053 `"53"', add
label define us10a_probwht_lbl 054 `"54"', add
label define us10a_probwht_lbl 055 `"55"', add
label define us10a_probwht_lbl 056 `"56"', add
label define us10a_probwht_lbl 057 `"57"', add
label define us10a_probwht_lbl 058 `"58"', add
label define us10a_probwht_lbl 059 `"59"', add
label define us10a_probwht_lbl 060 `"60"', add
label define us10a_probwht_lbl 061 `"61"', add
label define us10a_probwht_lbl 062 `"62"', add
label define us10a_probwht_lbl 063 `"63"', add
label define us10a_probwht_lbl 064 `"64"', add
label define us10a_probwht_lbl 065 `"65"', add
label define us10a_probwht_lbl 066 `"66"', add
label define us10a_probwht_lbl 067 `"67"', add
label define us10a_probwht_lbl 068 `"68"', add
label define us10a_probwht_lbl 069 `"69"', add
label define us10a_probwht_lbl 070 `"70"', add
label define us10a_probwht_lbl 071 `"71"', add
label define us10a_probwht_lbl 072 `"72"', add
label define us10a_probwht_lbl 073 `"73"', add
label define us10a_probwht_lbl 074 `"74"', add
label define us10a_probwht_lbl 075 `"75"', add
label define us10a_probwht_lbl 076 `"76"', add
label define us10a_probwht_lbl 077 `"77"', add
label define us10a_probwht_lbl 078 `"78"', add
label define us10a_probwht_lbl 079 `"79"', add
label define us10a_probwht_lbl 080 `"80"', add
label define us10a_probwht_lbl 081 `"81"', add
label define us10a_probwht_lbl 082 `"82"', add
label define us10a_probwht_lbl 083 `"83"', add
label define us10a_probwht_lbl 084 `"84"', add
label define us10a_probwht_lbl 085 `"85"', add
label define us10a_probwht_lbl 086 `"86"', add
label define us10a_probwht_lbl 087 `"87"', add
label define us10a_probwht_lbl 088 `"88"', add
label define us10a_probwht_lbl 089 `"89"', add
label define us10a_probwht_lbl 090 `"90"', add
label define us10a_probwht_lbl 091 `"91"', add
label define us10a_probwht_lbl 092 `"92"', add
label define us10a_probwht_lbl 093 `"93"', add
label define us10a_probwht_lbl 094 `"94"', add
label define us10a_probwht_lbl 095 `"95"', add
label define us10a_probwht_lbl 096 `"96"', add
label define us10a_probwht_lbl 097 `"97"', add
label define us10a_probwht_lbl 098 `"98"', add
label define us10a_probwht_lbl 099 `"99"', add
label define us10a_probwht_lbl 100 `"100"', add
label values us10a_probwht us10a_probwht_lbl

label define us10a_proboth_lbl 000 `"0"'
label define us10a_proboth_lbl 100 `"100"', add
label values us10a_proboth us10a_proboth_lbl

label define us10a_probblk_lbl 000 `"0"'
label define us10a_probblk_lbl 001 `"1"', add
label define us10a_probblk_lbl 002 `"2"', add
label define us10a_probblk_lbl 003 `"3"', add
label define us10a_probblk_lbl 004 `"4"', add
label define us10a_probblk_lbl 005 `"5"', add
label define us10a_probblk_lbl 006 `"6"', add
label define us10a_probblk_lbl 007 `"7"', add
label define us10a_probblk_lbl 008 `"8"', add
label define us10a_probblk_lbl 009 `"9"', add
label define us10a_probblk_lbl 010 `"10"', add
label define us10a_probblk_lbl 011 `"11"', add
label define us10a_probblk_lbl 012 `"12"', add
label define us10a_probblk_lbl 013 `"13"', add
label define us10a_probblk_lbl 014 `"14"', add
label define us10a_probblk_lbl 015 `"15"', add
label define us10a_probblk_lbl 016 `"16"', add
label define us10a_probblk_lbl 017 `"17"', add
label define us10a_probblk_lbl 018 `"18"', add
label define us10a_probblk_lbl 019 `"19"', add
label define us10a_probblk_lbl 020 `"20"', add
label define us10a_probblk_lbl 021 `"21"', add
label define us10a_probblk_lbl 022 `"22"', add
label define us10a_probblk_lbl 023 `"23"', add
label define us10a_probblk_lbl 024 `"24"', add
label define us10a_probblk_lbl 025 `"25"', add
label define us10a_probblk_lbl 026 `"26"', add
label define us10a_probblk_lbl 027 `"27"', add
label define us10a_probblk_lbl 028 `"28"', add
label define us10a_probblk_lbl 029 `"29"', add
label define us10a_probblk_lbl 030 `"30"', add
label define us10a_probblk_lbl 031 `"31"', add
label define us10a_probblk_lbl 032 `"32"', add
label define us10a_probblk_lbl 033 `"33"', add
label define us10a_probblk_lbl 034 `"34"', add
label define us10a_probblk_lbl 035 `"35"', add
label define us10a_probblk_lbl 036 `"36"', add
label define us10a_probblk_lbl 037 `"37"', add
label define us10a_probblk_lbl 038 `"38"', add
label define us10a_probblk_lbl 039 `"39"', add
label define us10a_probblk_lbl 040 `"40"', add
label define us10a_probblk_lbl 041 `"41"', add
label define us10a_probblk_lbl 042 `"42"', add
label define us10a_probblk_lbl 043 `"43"', add
label define us10a_probblk_lbl 044 `"44"', add
label define us10a_probblk_lbl 045 `"45"', add
label define us10a_probblk_lbl 046 `"46"', add
label define us10a_probblk_lbl 047 `"47"', add
label define us10a_probblk_lbl 048 `"48"', add
label define us10a_probblk_lbl 049 `"49"', add
label define us10a_probblk_lbl 050 `"50"', add
label define us10a_probblk_lbl 051 `"51"', add
label define us10a_probblk_lbl 052 `"52"', add
label define us10a_probblk_lbl 053 `"53"', add
label define us10a_probblk_lbl 054 `"54"', add
label define us10a_probblk_lbl 055 `"55"', add
label define us10a_probblk_lbl 056 `"56"', add
label define us10a_probblk_lbl 057 `"57"', add
label define us10a_probblk_lbl 058 `"58"', add
label define us10a_probblk_lbl 059 `"59"', add
label define us10a_probblk_lbl 060 `"60"', add
label define us10a_probblk_lbl 061 `"61"', add
label define us10a_probblk_lbl 062 `"62"', add
label define us10a_probblk_lbl 063 `"63"', add
label define us10a_probblk_lbl 064 `"64"', add
label define us10a_probblk_lbl 065 `"65"', add
label define us10a_probblk_lbl 066 `"66"', add
label define us10a_probblk_lbl 067 `"67"', add
label define us10a_probblk_lbl 068 `"68"', add
label define us10a_probblk_lbl 069 `"69"', add
label define us10a_probblk_lbl 070 `"70"', add
label define us10a_probblk_lbl 071 `"71"', add
label define us10a_probblk_lbl 072 `"72"', add
label define us10a_probblk_lbl 073 `"73"', add
label define us10a_probblk_lbl 074 `"74"', add
label define us10a_probblk_lbl 075 `"75"', add
label define us10a_probblk_lbl 076 `"76"', add
label define us10a_probblk_lbl 077 `"77"', add
label define us10a_probblk_lbl 078 `"78"', add
label define us10a_probblk_lbl 079 `"79"', add
label define us10a_probblk_lbl 080 `"80"', add
label define us10a_probblk_lbl 081 `"81"', add
label define us10a_probblk_lbl 082 `"82"', add
label define us10a_probblk_lbl 083 `"83"', add
label define us10a_probblk_lbl 084 `"84"', add
label define us10a_probblk_lbl 085 `"85"', add
label define us10a_probblk_lbl 086 `"86"', add
label define us10a_probblk_lbl 087 `"87"', add
label define us10a_probblk_lbl 088 `"88"', add
label define us10a_probblk_lbl 089 `"89"', add
label define us10a_probblk_lbl 090 `"90"', add
label define us10a_probblk_lbl 091 `"91"', add
label define us10a_probblk_lbl 092 `"92"', add
label define us10a_probblk_lbl 093 `"93"', add
label define us10a_probblk_lbl 094 `"94"', add
label define us10a_probblk_lbl 095 `"95"', add
label define us10a_probblk_lbl 096 `"96"', add
label define us10a_probblk_lbl 097 `"97"', add
label define us10a_probblk_lbl 098 `"98"', add
label define us10a_probblk_lbl 099 `"99"', add
label define us10a_probblk_lbl 100 `"100"', add
label values us10a_probblk us10a_probblk_lbl

label define us10a_probapi_lbl 000 `"0"'
label define us10a_probapi_lbl 001 `"1"', add
label define us10a_probapi_lbl 002 `"2"', add
label define us10a_probapi_lbl 003 `"3"', add
label define us10a_probapi_lbl 004 `"4"', add
label define us10a_probapi_lbl 005 `"5"', add
label define us10a_probapi_lbl 006 `"6"', add
label define us10a_probapi_lbl 007 `"7"', add
label define us10a_probapi_lbl 008 `"8"', add
label define us10a_probapi_lbl 009 `"9"', add
label define us10a_probapi_lbl 010 `"10"', add
label define us10a_probapi_lbl 011 `"11"', add
label define us10a_probapi_lbl 012 `"12"', add
label define us10a_probapi_lbl 013 `"13"', add
label define us10a_probapi_lbl 014 `"14"', add
label define us10a_probapi_lbl 015 `"15"', add
label define us10a_probapi_lbl 016 `"16"', add
label define us10a_probapi_lbl 017 `"17"', add
label define us10a_probapi_lbl 018 `"18"', add
label define us10a_probapi_lbl 019 `"19"', add
label define us10a_probapi_lbl 020 `"20"', add
label define us10a_probapi_lbl 021 `"21"', add
label define us10a_probapi_lbl 022 `"22"', add
label define us10a_probapi_lbl 023 `"23"', add
label define us10a_probapi_lbl 024 `"24"', add
label define us10a_probapi_lbl 025 `"25"', add
label define us10a_probapi_lbl 026 `"26"', add
label define us10a_probapi_lbl 027 `"27"', add
label define us10a_probapi_lbl 028 `"28"', add
label define us10a_probapi_lbl 029 `"29"', add
label define us10a_probapi_lbl 030 `"30"', add
label define us10a_probapi_lbl 031 `"31"', add
label define us10a_probapi_lbl 032 `"32"', add
label define us10a_probapi_lbl 033 `"33"', add
label define us10a_probapi_lbl 034 `"34"', add
label define us10a_probapi_lbl 035 `"35"', add
label define us10a_probapi_lbl 036 `"36"', add
label define us10a_probapi_lbl 037 `"37"', add
label define us10a_probapi_lbl 038 `"38"', add
label define us10a_probapi_lbl 039 `"39"', add
label define us10a_probapi_lbl 040 `"40"', add
label define us10a_probapi_lbl 041 `"41"', add
label define us10a_probapi_lbl 042 `"42"', add
label define us10a_probapi_lbl 043 `"43"', add
label define us10a_probapi_lbl 044 `"44"', add
label define us10a_probapi_lbl 045 `"45"', add
label define us10a_probapi_lbl 046 `"46"', add
label define us10a_probapi_lbl 047 `"47"', add
label define us10a_probapi_lbl 048 `"48"', add
label define us10a_probapi_lbl 049 `"49"', add
label define us10a_probapi_lbl 050 `"50"', add
label define us10a_probapi_lbl 051 `"51"', add
label define us10a_probapi_lbl 052 `"52"', add
label define us10a_probapi_lbl 053 `"53"', add
label define us10a_probapi_lbl 054 `"54"', add
label define us10a_probapi_lbl 055 `"55"', add
label define us10a_probapi_lbl 056 `"56"', add
label define us10a_probapi_lbl 057 `"57"', add
label define us10a_probapi_lbl 058 `"58"', add
label define us10a_probapi_lbl 059 `"59"', add
label define us10a_probapi_lbl 060 `"60"', add
label define us10a_probapi_lbl 061 `"61"', add
label define us10a_probapi_lbl 062 `"62"', add
label define us10a_probapi_lbl 063 `"63"', add
label define us10a_probapi_lbl 064 `"64"', add
label define us10a_probapi_lbl 065 `"65"', add
label define us10a_probapi_lbl 066 `"66"', add
label define us10a_probapi_lbl 067 `"67"', add
label define us10a_probapi_lbl 068 `"68"', add
label define us10a_probapi_lbl 069 `"69"', add
label define us10a_probapi_lbl 070 `"70"', add
label define us10a_probapi_lbl 071 `"71"', add
label define us10a_probapi_lbl 072 `"72"', add
label define us10a_probapi_lbl 073 `"73"', add
label define us10a_probapi_lbl 074 `"74"', add
label define us10a_probapi_lbl 075 `"75"', add
label define us10a_probapi_lbl 076 `"76"', add
label define us10a_probapi_lbl 077 `"77"', add
label define us10a_probapi_lbl 078 `"78"', add
label define us10a_probapi_lbl 079 `"79"', add
label define us10a_probapi_lbl 080 `"80"', add
label define us10a_probapi_lbl 081 `"81"', add
label define us10a_probapi_lbl 082 `"82"', add
label define us10a_probapi_lbl 083 `"83"', add
label define us10a_probapi_lbl 084 `"84"', add
label define us10a_probapi_lbl 085 `"85"', add
label define us10a_probapi_lbl 086 `"86"', add
label define us10a_probapi_lbl 087 `"87"', add
label define us10a_probapi_lbl 088 `"88"', add
label define us10a_probapi_lbl 089 `"89"', add
label define us10a_probapi_lbl 090 `"90"', add
label define us10a_probapi_lbl 091 `"91"', add
label define us10a_probapi_lbl 092 `"92"', add
label define us10a_probapi_lbl 093 `"93"', add
label define us10a_probapi_lbl 094 `"94"', add
label define us10a_probapi_lbl 095 `"95"', add
label define us10a_probapi_lbl 096 `"96"', add
label define us10a_probapi_lbl 097 `"97"', add
label define us10a_probapi_lbl 098 `"98"', add
label define us10a_probapi_lbl 099 `"99"', add
label define us10a_probapi_lbl 100 `"100"', add
label values us10a_probapi us10a_probapi_lbl

label define us10a_probai_lbl 000 `"0"'
label define us10a_probai_lbl 001 `"1"', add
label define us10a_probai_lbl 002 `"2"', add
label define us10a_probai_lbl 003 `"3"', add
label define us10a_probai_lbl 004 `"4"', add
label define us10a_probai_lbl 005 `"5"', add
label define us10a_probai_lbl 006 `"6"', add
label define us10a_probai_lbl 007 `"7"', add
label define us10a_probai_lbl 008 `"8"', add
label define us10a_probai_lbl 009 `"9"', add
label define us10a_probai_lbl 010 `"10"', add
label define us10a_probai_lbl 011 `"11"', add
label define us10a_probai_lbl 012 `"12"', add
label define us10a_probai_lbl 013 `"13"', add
label define us10a_probai_lbl 014 `"14"', add
label define us10a_probai_lbl 015 `"15"', add
label define us10a_probai_lbl 016 `"16"', add
label define us10a_probai_lbl 017 `"17"', add
label define us10a_probai_lbl 018 `"18"', add
label define us10a_probai_lbl 019 `"19"', add
label define us10a_probai_lbl 020 `"20"', add
label define us10a_probai_lbl 021 `"21"', add
label define us10a_probai_lbl 022 `"22"', add
label define us10a_probai_lbl 023 `"23"', add
label define us10a_probai_lbl 024 `"24"', add
label define us10a_probai_lbl 025 `"25"', add
label define us10a_probai_lbl 026 `"26"', add
label define us10a_probai_lbl 027 `"27"', add
label define us10a_probai_lbl 028 `"28"', add
label define us10a_probai_lbl 029 `"29"', add
label define us10a_probai_lbl 030 `"30"', add
label define us10a_probai_lbl 031 `"31"', add
label define us10a_probai_lbl 032 `"32"', add
label define us10a_probai_lbl 033 `"33"', add
label define us10a_probai_lbl 034 `"34"', add
label define us10a_probai_lbl 035 `"35"', add
label define us10a_probai_lbl 036 `"36"', add
label define us10a_probai_lbl 037 `"37"', add
label define us10a_probai_lbl 038 `"38"', add
label define us10a_probai_lbl 039 `"39"', add
label define us10a_probai_lbl 040 `"40"', add
label define us10a_probai_lbl 041 `"41"', add
label define us10a_probai_lbl 042 `"42"', add
label define us10a_probai_lbl 043 `"43"', add
label define us10a_probai_lbl 044 `"44"', add
label define us10a_probai_lbl 045 `"45"', add
label define us10a_probai_lbl 046 `"46"', add
label define us10a_probai_lbl 047 `"47"', add
label define us10a_probai_lbl 048 `"48"', add
label define us10a_probai_lbl 049 `"49"', add
label define us10a_probai_lbl 050 `"50"', add
label define us10a_probai_lbl 051 `"51"', add
label define us10a_probai_lbl 052 `"52"', add
label define us10a_probai_lbl 053 `"53"', add
label define us10a_probai_lbl 054 `"54"', add
label define us10a_probai_lbl 055 `"55"', add
label define us10a_probai_lbl 056 `"56"', add
label define us10a_probai_lbl 057 `"57"', add
label define us10a_probai_lbl 058 `"58"', add
label define us10a_probai_lbl 059 `"59"', add
label define us10a_probai_lbl 060 `"60"', add
label define us10a_probai_lbl 061 `"61"', add
label define us10a_probai_lbl 062 `"62"', add
label define us10a_probai_lbl 063 `"63"', add
label define us10a_probai_lbl 064 `"64"', add
label define us10a_probai_lbl 065 `"65"', add
label define us10a_probai_lbl 066 `"66"', add
label define us10a_probai_lbl 067 `"67"', add
label define us10a_probai_lbl 068 `"68"', add
label define us10a_probai_lbl 069 `"69"', add
label define us10a_probai_lbl 070 `"70"', add
label define us10a_probai_lbl 071 `"71"', add
label define us10a_probai_lbl 072 `"72"', add
label define us10a_probai_lbl 073 `"73"', add
label define us10a_probai_lbl 074 `"74"', add
label define us10a_probai_lbl 075 `"75"', add
label define us10a_probai_lbl 076 `"76"', add
label define us10a_probai_lbl 077 `"77"', add
label define us10a_probai_lbl 078 `"78"', add
label define us10a_probai_lbl 079 `"79"', add
label define us10a_probai_lbl 080 `"80"', add
label define us10a_probai_lbl 081 `"81"', add
label define us10a_probai_lbl 082 `"82"', add
label define us10a_probai_lbl 083 `"83"', add
label define us10a_probai_lbl 084 `"84"', add
label define us10a_probai_lbl 085 `"85"', add
label define us10a_probai_lbl 086 `"86"', add
label define us10a_probai_lbl 087 `"87"', add
label define us10a_probai_lbl 088 `"88"', add
label define us10a_probai_lbl 089 `"89"', add
label define us10a_probai_lbl 090 `"90"', add
label define us10a_probai_lbl 091 `"91"', add
label define us10a_probai_lbl 092 `"92"', add
label define us10a_probai_lbl 093 `"93"', add
label define us10a_probai_lbl 094 `"94"', add
label define us10a_probai_lbl 095 `"95"', add
label define us10a_probai_lbl 096 `"96"', add
label define us10a_probai_lbl 097 `"97"', add
label define us10a_probai_lbl 098 `"98"', add
label define us10a_probai_lbl 099 `"99"', add
label define us10a_probai_lbl 100 `"100"', add
label values us10a_probai us10a_probai_lbl

label define us10a_occ1990_lbl 000 `"NIU (not in universe)"'
label define us10a_occ1990_lbl 004 `"Chief executives and public administrators"', add
label define us10a_occ1990_lbl 007 `"Financial managers"', add
label define us10a_occ1990_lbl 008 `"Human resources and labor relations managers"', add
label define us10a_occ1990_lbl 013 `"Managers and specialists in marketing, advertising, and public relations"', add
label define us10a_occ1990_lbl 014 `"Managers in education and related fields"', add
label define us10a_occ1990_lbl 015 `"Managers of medicine and health occupations"', add
label define us10a_occ1990_lbl 017 `"Managers of food-serving and lodging establishments"', add
label define us10a_occ1990_lbl 018 `"Managers of properties and real estate"', add
label define us10a_occ1990_lbl 019 `"Funeral directors"', add
label define us10a_occ1990_lbl 021 `"Managers of service organizations, not elsewhere classified"', add
label define us10a_occ1990_lbl 022 `"Managers and administrators, not elsewhere classified"', add
label define us10a_occ1990_lbl 023 `"Accountants and auditors"', add
label define us10a_occ1990_lbl 024 `"Insurance underwriters"', add
label define us10a_occ1990_lbl 025 `"Other financial specialists"', add
label define us10a_occ1990_lbl 026 `"Management analysts"', add
label define us10a_occ1990_lbl 027 `"Personnel, HR, training, and labor relations specialists"', add
label define us10a_occ1990_lbl 028 `"Purchasing agents and buyers, of farm products"', add
label define us10a_occ1990_lbl 029 `"Buyers, wholesale and retail trade"', add
label define us10a_occ1990_lbl 033 `"Purchasing managers, agents and buyers, not elsewhere classified"', add
label define us10a_occ1990_lbl 034 `"Business and promotion agents"', add
label define us10a_occ1990_lbl 035 `"Construction inspectors"', add
label define us10a_occ1990_lbl 036 `"Inspectors and compliance officers, outside construction"', add
label define us10a_occ1990_lbl 037 `"Management support occupations"', add
label define us10a_occ1990_lbl 043 `"Architects"', add
label define us10a_occ1990_lbl 044 `"Aerospace engineer"', add
label define us10a_occ1990_lbl 045 `"Metallurgical and materials engineers, variously phrased"', add
label define us10a_occ1990_lbl 047 `"Petroleum, mining, and geological engineers"', add
label define us10a_occ1990_lbl 048 `"Chemical engineers"', add
label define us10a_occ1990_lbl 053 `"Civil engineers"', add
label define us10a_occ1990_lbl 055 `"Electrical engineer"', add
label define us10a_occ1990_lbl 056 `"Industrial engineers"', add
label define us10a_occ1990_lbl 057 `"Mechanical engineers"', add
label define us10a_occ1990_lbl 059 `"Not-elsewhere-classified engineers"', add
label define us10a_occ1990_lbl 064 `"Computer systems analysts and computer scientists"', add
label define us10a_occ1990_lbl 065 `"Operations and systems researchers and analysts"', add
label define us10a_occ1990_lbl 066 `"Actuaries"', add
label define us10a_occ1990_lbl 068 `"Mathematicians and mathematical scientists"', add
label define us10a_occ1990_lbl 069 `"Physicists and astronomers"', add
label define us10a_occ1990_lbl 073 `"Chemists"', add
label define us10a_occ1990_lbl 074 `"Atmospheric and space scientists"', add
label define us10a_occ1990_lbl 075 `"Geologists"', add
label define us10a_occ1990_lbl 076 `"Physical scientists, not elsewhere classified"', add
label define us10a_occ1990_lbl 077 `"Agricultural and food scientists"', add
label define us10a_occ1990_lbl 078 `"Biological scientists"', add
label define us10a_occ1990_lbl 079 `"Foresters and conservation scientists"', add
label define us10a_occ1990_lbl 083 `"Medical scientists"', add
label define us10a_occ1990_lbl 084 `"Physicians"', add
label define us10a_occ1990_lbl 085 `"Dentists"', add
label define us10a_occ1990_lbl 086 `"Veterinarians"', add
label define us10a_occ1990_lbl 087 `"Optometrists"', add
label define us10a_occ1990_lbl 088 `"Podiatrists"', add
label define us10a_occ1990_lbl 089 `"Other health and therapy"', add
label define us10a_occ1990_lbl 095 `"Registered nurses"', add
label define us10a_occ1990_lbl 096 `"Pharmacists"', add
label define us10a_occ1990_lbl 097 `"Dietitians and nutritionists"', add
label define us10a_occ1990_lbl 098 `"Respiratory therapists"', add
label define us10a_occ1990_lbl 099 `"Occupational therapists"', add
label define us10a_occ1990_lbl 103 `"Physical therapists"', add
label define us10a_occ1990_lbl 104 `"Speech therapists"', add
label define us10a_occ1990_lbl 105 `"Therapists, not elsewhere classified"', add
label define us10a_occ1990_lbl 106 `"Physicians' assistants"', add
label define us10a_occ1990_lbl 154 `"Subject instructors (HS/college)"', add
label define us10a_occ1990_lbl 155 `"Kindergarten and earlier school teachers"', add
label define us10a_occ1990_lbl 156 `"Primary school teachers"', add
label define us10a_occ1990_lbl 157 `"Secondary school teachers"', add
label define us10a_occ1990_lbl 158 `"Special education teachers"', add
label define us10a_occ1990_lbl 159 `"Teachers , not elsewhere classified"', add
label define us10a_occ1990_lbl 163 `"Vocational and educational counselors"', add
label define us10a_occ1990_lbl 164 `"Librarians"', add
label define us10a_occ1990_lbl 165 `"Archivists and curators"', add
label define us10a_occ1990_lbl 166 `"Economists, market researchers, and survey researchers"', add
label define us10a_occ1990_lbl 167 `"Psychologists"', add
label define us10a_occ1990_lbl 169 `"Social scientists, not elsewhere classified"', add
label define us10a_occ1990_lbl 173 `"Urban and regional planners"', add
label define us10a_occ1990_lbl 174 `"Social workers"', add
label define us10a_occ1990_lbl 175 `"Recreation workers"', add
label define us10a_occ1990_lbl 176 `"Clergy and religious workers"', add
label define us10a_occ1990_lbl 178 `"Lawyers"', add
label define us10a_occ1990_lbl 183 `"Writers and authors"', add
label define us10a_occ1990_lbl 184 `"Technical writers"', add
label define us10a_occ1990_lbl 185 `"Designers"', add
label define us10a_occ1990_lbl 186 `"Musician or composer"', add
label define us10a_occ1990_lbl 187 `"Actors, directors, producers"', add
label define us10a_occ1990_lbl 188 `"Art makers: painters, sculptors, craft-artists, and print-makers"', add
label define us10a_occ1990_lbl 189 `"Photographers"', add
label define us10a_occ1990_lbl 193 `"Dancers"', add
label define us10a_occ1990_lbl 194 `"Art/entertainment performers and related"', add
label define us10a_occ1990_lbl 195 `"Editors and reporters"', add
label define us10a_occ1990_lbl 198 `"Announcers"', add
label define us10a_occ1990_lbl 199 `"Athletes, sports instructors, and officials"', add
label define us10a_occ1990_lbl 203 `"Clinical laboratory technologies and technicians"', add
label define us10a_occ1990_lbl 204 `"Dental hygenists"', add
label define us10a_occ1990_lbl 205 `"Health record tech specialists"', add
label define us10a_occ1990_lbl 206 `"Radiologic tech specialists"', add
label define us10a_occ1990_lbl 207 `"Licensed practical nurses"', add
label define us10a_occ1990_lbl 208 `"Health technologists and technicians, not elsewhere classified"', add
label define us10a_occ1990_lbl 214 `"Engineering technicians, not elsewhere classified"', add
label define us10a_occ1990_lbl 217 `"Drafters"', add
label define us10a_occ1990_lbl 218 `"Surveyors, cartographers, mapping scientists and technicians"', add
label define us10a_occ1990_lbl 223 `"Biological technicians"', add
label define us10a_occ1990_lbl 224 `"Chemical technicians"', add
label define us10a_occ1990_lbl 225 `"Other science technicians"', add
label define us10a_occ1990_lbl 226 `"Airplane pilots and navigators"', add
label define us10a_occ1990_lbl 227 `"Air traffic controllers"', add
label define us10a_occ1990_lbl 228 `"Broadcast equipment operators"', add
label define us10a_occ1990_lbl 229 `"Computer software developers"', add
label define us10a_occ1990_lbl 233 `"Programmers of numerically controlled machine tools"', add
label define us10a_occ1990_lbl 234 `"Legal assistants, paralegals, legal support, etc"', add
label define us10a_occ1990_lbl 243 `"Supervisors and proprietors of sales jobs"', add
label define us10a_occ1990_lbl 253 `"Insurance sales occupations"', add
label define us10a_occ1990_lbl 254 `"Real estate sales occupations"', add
label define us10a_occ1990_lbl 255 `"Financial services sales occupations"', add
label define us10a_occ1990_lbl 256 `"Advertising and related sales jobs"', add
label define us10a_occ1990_lbl 258 `"Sales engineers"', add
label define us10a_occ1990_lbl 274 `"Salespersons, not elsewhere classified"', add
label define us10a_occ1990_lbl 275 `"Retail sales clerks"', add
label define us10a_occ1990_lbl 276 `"Cashiers"', add
label define us10a_occ1990_lbl 277 `"Door-to-door sales, street sales, and news vendors"', add
label define us10a_occ1990_lbl 283 `"Sales demonstrators / promoters / models"', add
label define us10a_occ1990_lbl 303 `"Office supervisors"', add
label define us10a_occ1990_lbl 308 `"Computer and peripheral equipment operators"', add
label define us10a_occ1990_lbl 313 `"Secretaries"', add
label define us10a_occ1990_lbl 315 `"Typists"', add
label define us10a_occ1990_lbl 316 `"Interviewers, enumerators, and surveyors"', add
label define us10a_occ1990_lbl 317 `"Hotel clerks"', add
label define us10a_occ1990_lbl 318 `"Transportation ticket and reservation agents"', add
label define us10a_occ1990_lbl 319 `"Receptionists"', add
label define us10a_occ1990_lbl 326 `"Correspondence and order clerks"', add
label define us10a_occ1990_lbl 328 `"Human resources clerks, except payroll and timekeeping"', add
label define us10a_occ1990_lbl 329 `"Library assistants"', add
label define us10a_occ1990_lbl 335 `"File clerks"', add
label define us10a_occ1990_lbl 336 `"Records clerks"', add
label define us10a_occ1990_lbl 337 `"Bookkeepers and accounting and auditing clerks"', add
label define us10a_occ1990_lbl 338 `"Payroll and timekeeping clerks"', add
label define us10a_occ1990_lbl 344 `"Billing clerks and related financial records processing"', add
label define us10a_occ1990_lbl 346 `"Mail and paper handlers"', add
label define us10a_occ1990_lbl 347 `"Office machine operators, not elsewhere classified"', add
label define us10a_occ1990_lbl 348 `"Telephone operators"', add
label define us10a_occ1990_lbl 349 `"Other telecom operators"', add
label define us10a_occ1990_lbl 354 `"Postal clerks, excluding mail carriers"', add
label define us10a_occ1990_lbl 355 `"Mail carriers for postal service"', add
label define us10a_occ1990_lbl 356 `"Mail clerks, outside of post office"', add
label define us10a_occ1990_lbl 357 `"Messengers"', add
label define us10a_occ1990_lbl 359 `"Dispatchers"', add
label define us10a_occ1990_lbl 364 `"Shipping and receiving clerks"', add
label define us10a_occ1990_lbl 365 `"Stock and inventory clerks"', add
label define us10a_occ1990_lbl 366 `"Meter readers"', add
label define us10a_occ1990_lbl 368 `"Weighers, measurers, and checkers"', add
label define us10a_occ1990_lbl 373 `"Material recording, scheduling, production, planning, and expediting clerks"', add
label define us10a_occ1990_lbl 375 `"Insurance adjusters, examiners, and investigators"', add
label define us10a_occ1990_lbl 376 `"Customer service reps, investigators and adjusters, except insurance"', add
label define us10a_occ1990_lbl 377 `"Eligibility clerks for government programs; social welfare"', add
label define us10a_occ1990_lbl 378 `"Bill and account collectors"', add
label define us10a_occ1990_lbl 379 `"General office clerks"', add
label define us10a_occ1990_lbl 383 `"Bank tellers"', add
label define us10a_occ1990_lbl 384 `"Proofreaders"', add
label define us10a_occ1990_lbl 385 `"Data entry keyers"', add
label define us10a_occ1990_lbl 386 `"Statistical clerks"', add
label define us10a_occ1990_lbl 387 `"Teacher's aides"', add
label define us10a_occ1990_lbl 389 `"Administrative support jobs, not elsewhere classified"', add
label define us10a_occ1990_lbl 405 `"Housekeepers, maids, butlers, stewards, and lodging quarters cleaners"', add
label define us10a_occ1990_lbl 415 `"Supervisors of guards"', add
label define us10a_occ1990_lbl 417 `"Fire fighting, prevention, and inspection"', add
label define us10a_occ1990_lbl 418 `"Police, detectives, and private investigators"', add
label define us10a_occ1990_lbl 423 `"Other law enforcement: sheriffs, bailiffs, correctional institution officers"', add
label define us10a_occ1990_lbl 425 `"Crossing guards and bridge tenders"', add
label define us10a_occ1990_lbl 426 `"Guards, watchmen, doorkeepers"', add
label define us10a_occ1990_lbl 427 `"Protective services, not elsewhere classified"', add
label define us10a_occ1990_lbl 434 `"Bartenders"', add
label define us10a_occ1990_lbl 435 `"Waiter/waitress"', add
label define us10a_occ1990_lbl 436 `"Cooks, variously defined"', add
label define us10a_occ1990_lbl 439 `"Kitchen workers"', add
label define us10a_occ1990_lbl 443 `"Waiter's assistant"', add
label define us10a_occ1990_lbl 444 `"Misc food prep workers"', add
label define us10a_occ1990_lbl 445 `"Dental assistants"', add
label define us10a_occ1990_lbl 446 `"Health aides, except nursing"', add
label define us10a_occ1990_lbl 447 `"Nursing aides, orderlies, and attendants"', add
label define us10a_occ1990_lbl 448 `"Supervisors of cleaning and building service"', add
label define us10a_occ1990_lbl 453 `"Janitors"', add
label define us10a_occ1990_lbl 454 `"Elevator operators"', add
label define us10a_occ1990_lbl 455 `"Pest control occupations"', add
label define us10a_occ1990_lbl 456 `"Supervisors of personal service jobs, not elsewhere classified"', add
label define us10a_occ1990_lbl 457 `"Barbers"', add
label define us10a_occ1990_lbl 458 `"Hairdressers and cosmetologists"', add
label define us10a_occ1990_lbl 459 `"Recreation facility attendants"', add
label define us10a_occ1990_lbl 461 `"Guides"', add
label define us10a_occ1990_lbl 462 `"Ushers"', add
label define us10a_occ1990_lbl 463 `"Public transportation attendants and inspectors"', add
label define us10a_occ1990_lbl 464 `"Baggage porters"', add
label define us10a_occ1990_lbl 465 `"Welfare service aides"', add
label define us10a_occ1990_lbl 468 `"Child care workers"', add
label define us10a_occ1990_lbl 469 `"Personal service occupations, nec"', add
label define us10a_occ1990_lbl 473 `"Farmers (owners and tenants)"', add
label define us10a_occ1990_lbl 479 `"Farm workers"', add
label define us10a_occ1990_lbl 485 `"Supervisors of agricultural occupations"', add
label define us10a_occ1990_lbl 486 `"Gardeners and groundskeepers"', add
label define us10a_occ1990_lbl 487 `"Animal caretakers except on farms"', add
label define us10a_occ1990_lbl 488 `"Graders and sorters of agricultural products"', add
label define us10a_occ1990_lbl 489 `"Inspectors of agricultural products"', add
label define us10a_occ1990_lbl 496 `"Timber, logging, and forestry workers"', add
label define us10a_occ1990_lbl 498 `"Fishers, hunters, and kindred"', add
label define us10a_occ1990_lbl 503 `"Supervisors of mechanics and repairers"', add
label define us10a_occ1990_lbl 505 `"Automobile mechanics"', add
label define us10a_occ1990_lbl 507 `"Bus, truck, and stationary engine mechanics"', add
label define us10a_occ1990_lbl 508 `"Aircraft mechanics"', add
label define us10a_occ1990_lbl 509 `"Small engine repairers"', add
label define us10a_occ1990_lbl 514 `"Auto body repairers"', add
label define us10a_occ1990_lbl 516 `"Heavy equipment and farm equipment mechanics"', add
label define us10a_occ1990_lbl 518 `"Industrial machinery repairers"', add
label define us10a_occ1990_lbl 519 `"Machinery maintenance occupations"', add
label define us10a_occ1990_lbl 523 `"Repairers of industrial electrical equipment"', add
label define us10a_occ1990_lbl 525 `"Repairers of data processing equipment"', add
label define us10a_occ1990_lbl 526 `"Repairers of household appliances and power tools"', add
label define us10a_occ1990_lbl 527 `"Telecom and line installers and repairers"', add
label define us10a_occ1990_lbl 533 `"Repairers of electrical equipment, not elsewhere classified"', add
label define us10a_occ1990_lbl 534 `"Heating, air conditioning, and refigeration mechanics"', add
label define us10a_occ1990_lbl 535 `"Precision makers, repairers, and smiths"', add
label define us10a_occ1990_lbl 536 `"Locksmiths and safe repairers"', add
label define us10a_occ1990_lbl 539 `"Repairers of mechanical controls and valves"', add
label define us10a_occ1990_lbl 543 `"Elevator installers and repairers"', add
label define us10a_occ1990_lbl 544 `"Millwrights"', add
label define us10a_occ1990_lbl 549 `"Mechanics and repairers, not elsewhere classified"', add
label define us10a_occ1990_lbl 558 `"Supervisors of construction work"', add
label define us10a_occ1990_lbl 563 `"Masons, tilers, and carpet installers"', add
label define us10a_occ1990_lbl 567 `"Carpenters"', add
label define us10a_occ1990_lbl 573 `"Drywall installers"', add
label define us10a_occ1990_lbl 575 `"Electricians"', add
label define us10a_occ1990_lbl 577 `"Electric power installers and repairers"', add
label define us10a_occ1990_lbl 579 `"Painters, construction and maintenance"', add
label define us10a_occ1990_lbl 583 `"Paperhangers"', add
label define us10a_occ1990_lbl 584 `"Plasterers"', add
label define us10a_occ1990_lbl 585 `"Plumbers, pipe fitters, and steamfitters"', add
label define us10a_occ1990_lbl 588 `"Concrete and cement workers"', add
label define us10a_occ1990_lbl 589 `"Glaziers"', add
label define us10a_occ1990_lbl 593 `"Insulation workers"', add
label define us10a_occ1990_lbl 594 `"Paving, surfacing, and tamping equipment operators"', add
label define us10a_occ1990_lbl 595 `"Roofers and slaters"', add
label define us10a_occ1990_lbl 596 `"Sheet metal duct installers"', add
label define us10a_occ1990_lbl 597 `"Structural metal workers"', add
label define us10a_occ1990_lbl 598 `"Drillers of earth"', add
label define us10a_occ1990_lbl 599 `"Construction trades, not elsewhere classified"', add
label define us10a_occ1990_lbl 614 `"Drillers of oil wells"', add
label define us10a_occ1990_lbl 615 `"Explosives workers"', add
label define us10a_occ1990_lbl 616 `"Miners"', add
label define us10a_occ1990_lbl 617 `"Other mining occupations"', add
label define us10a_occ1990_lbl 628 `"Production supervisors or foremen"', add
label define us10a_occ1990_lbl 634 `"Tool and die makers and die setters"', add
label define us10a_occ1990_lbl 637 `"Machinists"', add
label define us10a_occ1990_lbl 643 `"Boilermakers"', add
label define us10a_occ1990_lbl 644 `"Precision grinders and filers"', add
label define us10a_occ1990_lbl 645 `"Patternmakers and model makers"', add
label define us10a_occ1990_lbl 649 `"Engravers"', add
label define us10a_occ1990_lbl 657 `"Cabinetmakers and bench carpenters"', add
label define us10a_occ1990_lbl 658 `"Furniture and wood finishers"', add
label define us10a_occ1990_lbl 666 `"Dressmakers and seamstresses"', add
label define us10a_occ1990_lbl 668 `"Upholsterers"', add
label define us10a_occ1990_lbl 669 `"Shoe repairers"', add
label define us10a_occ1990_lbl 675 `"Hand molders and shapers, except jewelers"', add
label define us10a_occ1990_lbl 677 `"Optical goods workers"', add
label define us10a_occ1990_lbl 678 `"Dental laboratory and medical appliance technicians"', add
label define us10a_occ1990_lbl 679 `"Bookbinders"', add
label define us10a_occ1990_lbl 686 `"Butchers and meat cutters"', add
label define us10a_occ1990_lbl 687 `"Bakers"', add
label define us10a_occ1990_lbl 688 `"Batch food makers"', add
label define us10a_occ1990_lbl 694 `"Water and sewage treatment plant operators"', add
label define us10a_occ1990_lbl 695 `"Power plant operators"', add
label define us10a_occ1990_lbl 696 `"Plant and system operators, stationary engineers"', add
label define us10a_occ1990_lbl 699 `"Other plant and system operators"', add
label define us10a_occ1990_lbl 703 `"Lathe, milling, and turning machine operatives"', add
label define us10a_occ1990_lbl 706 `"Punching and stamping press operatives"', add
label define us10a_occ1990_lbl 707 `"Rollers, roll hands, and finishers of metal"', add
label define us10a_occ1990_lbl 708 `"Drilling and boring machine operators"', add
label define us10a_occ1990_lbl 709 `"Grinding, abrading, buffing, and polishing workers"', add
label define us10a_occ1990_lbl 713 `"Forge and hammer operators"', add
label define us10a_occ1990_lbl 719 `"Molders, and casting machine operators"', add
label define us10a_occ1990_lbl 723 `"Metal platers"', add
label define us10a_occ1990_lbl 724 `"Heat treating equipment operators"', add
label define us10a_occ1990_lbl 726 `"Wood lathe, routing, and planing machine operators"', add
label define us10a_occ1990_lbl 727 `"Sawing machine operators and sawyers"', add
label define us10a_occ1990_lbl 729 `"Nail and tacking machine operators (woodworking)"', add
label define us10a_occ1990_lbl 733 `"Other woodworking machine operators"', add
label define us10a_occ1990_lbl 736 `"Typesetters and compositors"', add
label define us10a_occ1990_lbl 738 `"Winding and twisting textile/apparel operatives"', add
label define us10a_occ1990_lbl 739 `"Knitters, loopers, and toppers textile operatives"', add
label define us10a_occ1990_lbl 743 `"Textile cutting machine operators"', add
label define us10a_occ1990_lbl 744 `"Textile sewing machine operators"', add
label define us10a_occ1990_lbl 745 `"Shoemaking machine operators"', add
label define us10a_occ1990_lbl 747 `"Pressing machine operators (clothing)"', add
label define us10a_occ1990_lbl 748 `"Laundry workers"', add
label define us10a_occ1990_lbl 749 `"Misc textile machine operators"', add
label define us10a_occ1990_lbl 753 `"Cementing and gluing maching operators"', add
label define us10a_occ1990_lbl 754 `"Packers, fillers, and wrappers"', add
label define us10a_occ1990_lbl 755 `"Extruding and forming machine operators"', add
label define us10a_occ1990_lbl 756 `"Mixing and blending machine operatives"', add
label define us10a_occ1990_lbl 757 `"Separating, filtering, and clarifying machine operators"', add
label define us10a_occ1990_lbl 759 `"Painting machine operators"', add
label define us10a_occ1990_lbl 763 `"Roasting and baking machine operators (food)"', add
label define us10a_occ1990_lbl 764 `"Washing, cleaning, and pickling machine operators"', add
label define us10a_occ1990_lbl 765 `"Paper folding machine operators"', add
label define us10a_occ1990_lbl 766 `"Furnace, kiln, and oven operators, apart from food"', add
label define us10a_occ1990_lbl 769 `"Slicing and cutting machine operators"', add
label define us10a_occ1990_lbl 773 `"Motion picture projectionists"', add
label define us10a_occ1990_lbl 774 `"Photographic process workers"', add
label define us10a_occ1990_lbl 779 `"Machine operators, not elsewhere classified"', add
label define us10a_occ1990_lbl 783 `"Welders and metal cutters"', add
label define us10a_occ1990_lbl 785 `"Assemblers of electrical equipment"', add
label define us10a_occ1990_lbl 799 `"Graders and sorters in manufacturing"', add
label define us10a_occ1990_lbl 803 `"Supervisors of motor vehicle transportation"', add
label define us10a_occ1990_lbl 804 `"Truck, delivery, and tractor drivers"', add
label define us10a_occ1990_lbl 808 `"Bus drivers"', add
label define us10a_occ1990_lbl 809 `"Taxi cab drivers and chauffeurs"', add
label define us10a_occ1990_lbl 813 `"Parking lot attendants"', add
label define us10a_occ1990_lbl 823 `"Railroad conductors and yardmasters"', add
label define us10a_occ1990_lbl 824 `"Locomotive operators (engineers and firemen)"', add
label define us10a_occ1990_lbl 825 `"Railroad brake, coupler, and switch operators"', add
label define us10a_occ1990_lbl 829 `"Ship crews and marine engineers"', add
label define us10a_occ1990_lbl 844 `"Operating engineers of construction equipment"', add
label define us10a_occ1990_lbl 848 `"Crane, derrick, winch, and hoist operators"', add
label define us10a_occ1990_lbl 853 `"Excavating and loading machine operators"', add
label define us10a_occ1990_lbl 859 `"Misc material moving occupations"', add
label define us10a_occ1990_lbl 865 `"Helpers, constructions"', add
label define us10a_occ1990_lbl 866 `"Helpers, surveyors"', add
label define us10a_occ1990_lbl 869 `"Construction laborers"', add
label define us10a_occ1990_lbl 874 `"Production helpers"', add
label define us10a_occ1990_lbl 875 `"Garbage and recyclable material collectors"', add
label define us10a_occ1990_lbl 878 `"Machine feeders and offbearers"', add
label define us10a_occ1990_lbl 883 `"Freight, stock, and materials handlers"', add
label define us10a_occ1990_lbl 885 `"Garage and service station related occupations"', add
label define us10a_occ1990_lbl 887 `"Vehicle washers and equipment cleaners"', add
label define us10a_occ1990_lbl 888 `"Packers and packagers by hand"', add
label define us10a_occ1990_lbl 889 `"Laborers outside construction"', add
label define us10a_occ1990_lbl 905 `"Military"', add
label values us10a_occ1990 us10a_occ1990_lbl

label define us10a_migpuma1_lbl 00 `"NIU (not in universe)"'
label define us10a_migpuma1_lbl 01 `"1"', add
label define us10a_migpuma1_lbl 02 `"2"', add
label define us10a_migpuma1_lbl 03 `"3"', add
label define us10a_migpuma1_lbl 04 `"4"', add
label define us10a_migpuma1_lbl 05 `"5"', add
label define us10a_migpuma1_lbl 06 `"6"', add
label define us10a_migpuma1_lbl 07 `"7"', add
label define us10a_migpuma1_lbl 08 `"8"', add
label define us10a_migpuma1_lbl 09 `"9"', add
label define us10a_migpuma1_lbl 10 `"10"', add
label define us10a_migpuma1_lbl 11 `"11"', add
label define us10a_migpuma1_lbl 12 `"12"', add
label define us10a_migpuma1_lbl 13 `"13"', add
label define us10a_migpuma1_lbl 14 `"14"', add
label define us10a_migpuma1_lbl 15 `"15"', add
label define us10a_migpuma1_lbl 16 `"16"', add
label define us10a_migpuma1_lbl 17 `"17"', add
label define us10a_migpuma1_lbl 18 `"18"', add
label define us10a_migpuma1_lbl 19 `"19"', add
label define us10a_migpuma1_lbl 20 `"20"', add
label define us10a_migpuma1_lbl 21 `"21"', add
label define us10a_migpuma1_lbl 22 `"22"', add
label define us10a_migpuma1_lbl 23 `"23"', add
label define us10a_migpuma1_lbl 24 `"24"', add
label define us10a_migpuma1_lbl 25 `"25"', add
label define us10a_migpuma1_lbl 26 `"26"', add
label define us10a_migpuma1_lbl 27 `"27"', add
label define us10a_migpuma1_lbl 28 `"28"', add
label define us10a_migpuma1_lbl 29 `"29"', add
label define us10a_migpuma1_lbl 30 `"30"', add
label define us10a_migpuma1_lbl 31 `"31"', add
label define us10a_migpuma1_lbl 32 `"32"', add
label define us10a_migpuma1_lbl 33 `"33"', add
label define us10a_migpuma1_lbl 34 `"34"', add
label define us10a_migpuma1_lbl 35 `"35"', add
label define us10a_migpuma1_lbl 36 `"36"', add
label define us10a_migpuma1_lbl 37 `"37"', add
label define us10a_migpuma1_lbl 38 `"38"', add
label define us10a_migpuma1_lbl 39 `"39"', add
label define us10a_migpuma1_lbl 40 `"40"', add
label define us10a_migpuma1_lbl 41 `"41"', add
label define us10a_migpuma1_lbl 42 `"42"', add
label define us10a_migpuma1_lbl 43 `"43"', add
label define us10a_migpuma1_lbl 44 `"44"', add
label define us10a_migpuma1_lbl 45 `"45"', add
label define us10a_migpuma1_lbl 46 `"46"', add
label define us10a_migpuma1_lbl 47 `"47"', add
label define us10a_migpuma1_lbl 48 `"48"', add
label define us10a_migpuma1_lbl 49 `"49"', add
label define us10a_migpuma1_lbl 50 `"50"', add
label define us10a_migpuma1_lbl 51 `"51"', add
label define us10a_migpuma1_lbl 52 `"52"', add
label define us10a_migpuma1_lbl 53 `"53"', add
label define us10a_migpuma1_lbl 55 `"55"', add
label define us10a_migpuma1_lbl 56 `"56"', add
label define us10a_migpuma1_lbl 57 `"57"', add
label define us10a_migpuma1_lbl 58 `"58"', add
label define us10a_migpuma1_lbl 59 `"59"', add
label define us10a_migpuma1_lbl 60 `"60"', add
label define us10a_migpuma1_lbl 61 `"61"', add
label define us10a_migpuma1_lbl 62 `"62"', add
label define us10a_migpuma1_lbl 63 `"63"', add
label define us10a_migpuma1_lbl 66 `"66"', add
label define us10a_migpuma1_lbl 67 `"67"', add
label define us10a_migpuma1_lbl 68 `"68"', add
label define us10a_migpuma1_lbl 77 `"77"', add
label define us10a_migpuma1_lbl 81 `"81"', add
label define us10a_migpuma1_lbl 82 `"82"', add
label values us10a_migpuma1 us10a_migpuma1_lbl

label define us10a_arrives_lbl 0000 `"NIU (not in universe)"'
label define us10a_arrives_lbl 0004 `"00:04"', add
label define us10a_arrives_lbl 0009 `"00:09"', add
label define us10a_arrives_lbl 0014 `"00:14"', add
label define us10a_arrives_lbl 0019 `"00:19"', add
label define us10a_arrives_lbl 0024 `"00:24"', add
label define us10a_arrives_lbl 0029 `"00:29"', add
label define us10a_arrives_lbl 0039 `"00:39"', add
label define us10a_arrives_lbl 0044 `"00:44"', add
label define us10a_arrives_lbl 0049 `"00:49"', add
label define us10a_arrives_lbl 0059 `"00:59"', add
label define us10a_arrives_lbl 0104 `"01:04"', add
label define us10a_arrives_lbl 0109 `"01:09"', add
label define us10a_arrives_lbl 0114 `"01:14"', add
label define us10a_arrives_lbl 0119 `"01:19"', add
label define us10a_arrives_lbl 0124 `"01:24"', add
label define us10a_arrives_lbl 0129 `"01:29"', add
label define us10a_arrives_lbl 0134 `"01:34"', add
label define us10a_arrives_lbl 0139 `"01:39"', add
label define us10a_arrives_lbl 0144 `"01:44"', add
label define us10a_arrives_lbl 0149 `"01:49"', add
label define us10a_arrives_lbl 0159 `"01:59"', add
label define us10a_arrives_lbl 0204 `"02:04"', add
label define us10a_arrives_lbl 0209 `"02:09"', add
label define us10a_arrives_lbl 0214 `"02:14"', add
label define us10a_arrives_lbl 0219 `"02:19"', add
label define us10a_arrives_lbl 0224 `"02:24"', add
label define us10a_arrives_lbl 0229 `"02:29"', add
label define us10a_arrives_lbl 0234 `"02:34"', add
label define us10a_arrives_lbl 0239 `"02:39"', add
label define us10a_arrives_lbl 0244 `"02:44"', add
label define us10a_arrives_lbl 0249 `"02:49"', add
label define us10a_arrives_lbl 0254 `"02:54"', add
label define us10a_arrives_lbl 0259 `"02:59"', add
label define us10a_arrives_lbl 0304 `"03:04"', add
label define us10a_arrives_lbl 0309 `"03:09"', add
label define us10a_arrives_lbl 0314 `"03:14"', add
label define us10a_arrives_lbl 0319 `"03:19"', add
label define us10a_arrives_lbl 0324 `"03:24"', add
label define us10a_arrives_lbl 0329 `"03:29"', add
label define us10a_arrives_lbl 0334 `"03:34"', add
label define us10a_arrives_lbl 0339 `"03:39"', add
label define us10a_arrives_lbl 0344 `"03:44"', add
label define us10a_arrives_lbl 0349 `"03:49"', add
label define us10a_arrives_lbl 0354 `"03:54"', add
label define us10a_arrives_lbl 0359 `"03:59"', add
label define us10a_arrives_lbl 0404 `"04:04"', add
label define us10a_arrives_lbl 0409 `"04:09"', add
label define us10a_arrives_lbl 0414 `"04:14"', add
label define us10a_arrives_lbl 0419 `"04:19"', add
label define us10a_arrives_lbl 0424 `"04:24"', add
label define us10a_arrives_lbl 0429 `"04:29"', add
label define us10a_arrives_lbl 0434 `"04:34"', add
label define us10a_arrives_lbl 0439 `"04:39"', add
label define us10a_arrives_lbl 0444 `"04:44"', add
label define us10a_arrives_lbl 0449 `"04:49"', add
label define us10a_arrives_lbl 0454 `"04:54"', add
label define us10a_arrives_lbl 0459 `"04:59"', add
label define us10a_arrives_lbl 0504 `"05:04"', add
label define us10a_arrives_lbl 0509 `"05:09"', add
label define us10a_arrives_lbl 0514 `"05:14"', add
label define us10a_arrives_lbl 0519 `"05:19"', add
label define us10a_arrives_lbl 0524 `"05:24"', add
label define us10a_arrives_lbl 0529 `"05:29"', add
label define us10a_arrives_lbl 0534 `"05:34"', add
label define us10a_arrives_lbl 0539 `"05:39"', add
label define us10a_arrives_lbl 0544 `"05:44"', add
label define us10a_arrives_lbl 0549 `"05:49"', add
label define us10a_arrives_lbl 0554 `"05:54"', add
label define us10a_arrives_lbl 0559 `"05:59"', add
label define us10a_arrives_lbl 0604 `"06:04"', add
label define us10a_arrives_lbl 0609 `"06:09"', add
label define us10a_arrives_lbl 0614 `"06:14"', add
label define us10a_arrives_lbl 0619 `"06:19"', add
label define us10a_arrives_lbl 0624 `"06:24"', add
label define us10a_arrives_lbl 0629 `"06:29"', add
label define us10a_arrives_lbl 0634 `"06:34"', add
label define us10a_arrives_lbl 0639 `"06:39"', add
label define us10a_arrives_lbl 0644 `"06:44"', add
label define us10a_arrives_lbl 0649 `"06:49"', add
label define us10a_arrives_lbl 0654 `"06:54"', add
label define us10a_arrives_lbl 0659 `"06:59"', add
label define us10a_arrives_lbl 0704 `"07:04"', add
label define us10a_arrives_lbl 0709 `"07:09"', add
label define us10a_arrives_lbl 0714 `"07:14"', add
label define us10a_arrives_lbl 0719 `"07:19"', add
label define us10a_arrives_lbl 0724 `"07:24"', add
label define us10a_arrives_lbl 0729 `"07:29"', add
label define us10a_arrives_lbl 0734 `"07:34"', add
label define us10a_arrives_lbl 0739 `"07:39"', add
label define us10a_arrives_lbl 0744 `"07:44"', add
label define us10a_arrives_lbl 0749 `"07:49"', add
label define us10a_arrives_lbl 0754 `"07:54"', add
label define us10a_arrives_lbl 0759 `"07:59"', add
label define us10a_arrives_lbl 0804 `"08:04"', add
label define us10a_arrives_lbl 0809 `"08:09"', add
label define us10a_arrives_lbl 0814 `"08:14"', add
label define us10a_arrives_lbl 0819 `"08:19"', add
label define us10a_arrives_lbl 0824 `"08:24"', add
label define us10a_arrives_lbl 0829 `"08:29"', add
label define us10a_arrives_lbl 0834 `"08:34"', add
label define us10a_arrives_lbl 0839 `"08:39"', add
label define us10a_arrives_lbl 0844 `"08:44"', add
label define us10a_arrives_lbl 0849 `"08:49"', add
label define us10a_arrives_lbl 0854 `"08:54"', add
label define us10a_arrives_lbl 0859 `"08:59"', add
label define us10a_arrives_lbl 0904 `"09:04"', add
label define us10a_arrives_lbl 0909 `"09:09"', add
label define us10a_arrives_lbl 0914 `"09:14"', add
label define us10a_arrives_lbl 0919 `"09:19"', add
label define us10a_arrives_lbl 0924 `"09:24"', add
label define us10a_arrives_lbl 0929 `"09:29"', add
label define us10a_arrives_lbl 0934 `"09:34"', add
label define us10a_arrives_lbl 0939 `"09:39"', add
label define us10a_arrives_lbl 0944 `"09:44"', add
label define us10a_arrives_lbl 0949 `"09:49"', add
label define us10a_arrives_lbl 0954 `"09:54"', add
label define us10a_arrives_lbl 0959 `"09:59"', add
label define us10a_arrives_lbl 1004 `"10:04"', add
label define us10a_arrives_lbl 1009 `"10:09"', add
label define us10a_arrives_lbl 1014 `"10:14"', add
label define us10a_arrives_lbl 1019 `"10:19"', add
label define us10a_arrives_lbl 1024 `"10:24"', add
label define us10a_arrives_lbl 1029 `"10:29"', add
label define us10a_arrives_lbl 1034 `"10:34"', add
label define us10a_arrives_lbl 1039 `"10:39"', add
label define us10a_arrives_lbl 1044 `"10:44"', add
label define us10a_arrives_lbl 1049 `"10:49"', add
label define us10a_arrives_lbl 1054 `"10:54"', add
label define us10a_arrives_lbl 1059 `"10:59"', add
label define us10a_arrives_lbl 1104 `"11:04"', add
label define us10a_arrives_lbl 1109 `"11:09"', add
label define us10a_arrives_lbl 1114 `"11:14"', add
label define us10a_arrives_lbl 1119 `"11:19"', add
label define us10a_arrives_lbl 1124 `"11:24"', add
label define us10a_arrives_lbl 1129 `"11:29"', add
label define us10a_arrives_lbl 1134 `"11:34"', add
label define us10a_arrives_lbl 1139 `"11:39"', add
label define us10a_arrives_lbl 1144 `"11:44"', add
label define us10a_arrives_lbl 1149 `"11:49"', add
label define us10a_arrives_lbl 1154 `"11:54"', add
label define us10a_arrives_lbl 1159 `"11:59"', add
label define us10a_arrives_lbl 1204 `"12:04"', add
label define us10a_arrives_lbl 1209 `"12:09"', add
label define us10a_arrives_lbl 1214 `"12:14"', add
label define us10a_arrives_lbl 1219 `"12:19"', add
label define us10a_arrives_lbl 1224 `"12:24"', add
label define us10a_arrives_lbl 1229 `"12:29"', add
label define us10a_arrives_lbl 1234 `"12:34"', add
label define us10a_arrives_lbl 1239 `"12:39"', add
label define us10a_arrives_lbl 1244 `"12:44"', add
label define us10a_arrives_lbl 1249 `"12:49"', add
label define us10a_arrives_lbl 1254 `"12:54"', add
label define us10a_arrives_lbl 1259 `"12:59"', add
label define us10a_arrives_lbl 1304 `"13:04"', add
label define us10a_arrives_lbl 1309 `"13:09"', add
label define us10a_arrives_lbl 1314 `"13:14"', add
label define us10a_arrives_lbl 1319 `"13:19"', add
label define us10a_arrives_lbl 1324 `"13:24"', add
label define us10a_arrives_lbl 1329 `"13:29"', add
label define us10a_arrives_lbl 1334 `"13:34"', add
label define us10a_arrives_lbl 1339 `"13:39"', add
label define us10a_arrives_lbl 1344 `"13:44"', add
label define us10a_arrives_lbl 1349 `"13:49"', add
label define us10a_arrives_lbl 1354 `"13:54"', add
label define us10a_arrives_lbl 1359 `"13:59"', add
label define us10a_arrives_lbl 1404 `"14:04"', add
label define us10a_arrives_lbl 1409 `"14:09"', add
label define us10a_arrives_lbl 1414 `"14:14"', add
label define us10a_arrives_lbl 1419 `"14:19"', add
label define us10a_arrives_lbl 1424 `"14:24"', add
label define us10a_arrives_lbl 1429 `"14:29"', add
label define us10a_arrives_lbl 1434 `"14:34"', add
label define us10a_arrives_lbl 1439 `"14:39"', add
label define us10a_arrives_lbl 1444 `"14:44"', add
label define us10a_arrives_lbl 1449 `"14:49"', add
label define us10a_arrives_lbl 1454 `"14:54"', add
label define us10a_arrives_lbl 1459 `"14:59"', add
label define us10a_arrives_lbl 1504 `"15:04"', add
label define us10a_arrives_lbl 1509 `"15:09"', add
label define us10a_arrives_lbl 1514 `"15:14"', add
label define us10a_arrives_lbl 1519 `"15:19"', add
label define us10a_arrives_lbl 1524 `"15:24"', add
label define us10a_arrives_lbl 1529 `"15:29"', add
label define us10a_arrives_lbl 1534 `"15:34"', add
label define us10a_arrives_lbl 1539 `"15:39"', add
label define us10a_arrives_lbl 1544 `"15:44"', add
label define us10a_arrives_lbl 1549 `"15:49"', add
label define us10a_arrives_lbl 1554 `"15:54"', add
label define us10a_arrives_lbl 1559 `"15:59"', add
label define us10a_arrives_lbl 1604 `"16:04"', add
label define us10a_arrives_lbl 1609 `"16:09"', add
label define us10a_arrives_lbl 1614 `"16:14"', add
label define us10a_arrives_lbl 1619 `"16:19"', add
label define us10a_arrives_lbl 1624 `"16:24"', add
label define us10a_arrives_lbl 1629 `"16:29"', add
label define us10a_arrives_lbl 1634 `"16:34"', add
label define us10a_arrives_lbl 1639 `"16:39"', add
label define us10a_arrives_lbl 1644 `"16:44"', add
label define us10a_arrives_lbl 1649 `"16:49"', add
label define us10a_arrives_lbl 1654 `"16:54"', add
label define us10a_arrives_lbl 1659 `"16:59"', add
label define us10a_arrives_lbl 1704 `"17:04"', add
label define us10a_arrives_lbl 1709 `"17:09"', add
label define us10a_arrives_lbl 1714 `"17:14"', add
label define us10a_arrives_lbl 1719 `"17:19"', add
label define us10a_arrives_lbl 1724 `"17:24"', add
label define us10a_arrives_lbl 1729 `"17:29"', add
label define us10a_arrives_lbl 1734 `"17:34"', add
label define us10a_arrives_lbl 1739 `"17:39"', add
label define us10a_arrives_lbl 1744 `"17:44"', add
label define us10a_arrives_lbl 1749 `"17:49"', add
label define us10a_arrives_lbl 1754 `"17:54"', add
label define us10a_arrives_lbl 1759 `"17:59"', add
label define us10a_arrives_lbl 1804 `"18:04"', add
label define us10a_arrives_lbl 1809 `"18:09"', add
label define us10a_arrives_lbl 1814 `"18:14"', add
label define us10a_arrives_lbl 1819 `"18:19"', add
label define us10a_arrives_lbl 1824 `"18:24"', add
label define us10a_arrives_lbl 1829 `"18:29"', add
label define us10a_arrives_lbl 1834 `"18:34"', add
label define us10a_arrives_lbl 1839 `"18:39"', add
label define us10a_arrives_lbl 1844 `"18:44"', add
label define us10a_arrives_lbl 1849 `"18:49"', add
label define us10a_arrives_lbl 1854 `"18:54"', add
label define us10a_arrives_lbl 1859 `"18:59"', add
label define us10a_arrives_lbl 1904 `"19:04"', add
label define us10a_arrives_lbl 1909 `"19:09"', add
label define us10a_arrives_lbl 1914 `"19:14"', add
label define us10a_arrives_lbl 1919 `"19:19"', add
label define us10a_arrives_lbl 1924 `"19:24"', add
label define us10a_arrives_lbl 1929 `"19:29"', add
label define us10a_arrives_lbl 1934 `"19:34"', add
label define us10a_arrives_lbl 1939 `"19:39"', add
label define us10a_arrives_lbl 1944 `"19:44"', add
label define us10a_arrives_lbl 1949 `"19:49"', add
label define us10a_arrives_lbl 1954 `"19:54"', add
label define us10a_arrives_lbl 1959 `"19:59"', add
label define us10a_arrives_lbl 2004 `"20:04"', add
label define us10a_arrives_lbl 2009 `"20:09"', add
label define us10a_arrives_lbl 2014 `"20:14"', add
label define us10a_arrives_lbl 2019 `"20:19"', add
label define us10a_arrives_lbl 2024 `"20:24"', add
label define us10a_arrives_lbl 2029 `"20:29"', add
label define us10a_arrives_lbl 2034 `"20:34"', add
label define us10a_arrives_lbl 2039 `"20:39"', add
label define us10a_arrives_lbl 2044 `"20:44"', add
label define us10a_arrives_lbl 2049 `"20:49"', add
label define us10a_arrives_lbl 2054 `"20:54"', add
label define us10a_arrives_lbl 2059 `"20:59"', add
label define us10a_arrives_lbl 2104 `"21:04"', add
label define us10a_arrives_lbl 2109 `"21:09"', add
label define us10a_arrives_lbl 2114 `"21:14"', add
label define us10a_arrives_lbl 2119 `"21:19"', add
label define us10a_arrives_lbl 2124 `"21:24"', add
label define us10a_arrives_lbl 2129 `"21:29"', add
label define us10a_arrives_lbl 2134 `"21:34"', add
label define us10a_arrives_lbl 2139 `"21:39"', add
label define us10a_arrives_lbl 2144 `"21:44"', add
label define us10a_arrives_lbl 2149 `"21:49"', add
label define us10a_arrives_lbl 2154 `"21:54"', add
label define us10a_arrives_lbl 2159 `"21:59"', add
label define us10a_arrives_lbl 2204 `"22:04"', add
label define us10a_arrives_lbl 2209 `"22:09"', add
label define us10a_arrives_lbl 2214 `"22:14"', add
label define us10a_arrives_lbl 2219 `"22:19"', add
label define us10a_arrives_lbl 2224 `"22:24"', add
label define us10a_arrives_lbl 2229 `"22:29"', add
label define us10a_arrives_lbl 2234 `"22:34"', add
label define us10a_arrives_lbl 2239 `"22:39"', add
label define us10a_arrives_lbl 2244 `"22:44"', add
label define us10a_arrives_lbl 2249 `"22:49"', add
label define us10a_arrives_lbl 2254 `"22:54"', add
label define us10a_arrives_lbl 2259 `"22:59"', add
label define us10a_arrives_lbl 2304 `"23:04"', add
label define us10a_arrives_lbl 2309 `"23:09"', add
label define us10a_arrives_lbl 2314 `"23:14"', add
label define us10a_arrives_lbl 2319 `"23:19"', add
label define us10a_arrives_lbl 2324 `"23:24"', add
label define us10a_arrives_lbl 2329 `"23:29"', add
label define us10a_arrives_lbl 2334 `"23:34"', add
label define us10a_arrives_lbl 2339 `"23:39"', add
label define us10a_arrives_lbl 2344 `"23:44"', add
label define us10a_arrives_lbl 2349 `"23:49"', add
label define us10a_arrives_lbl 2354 `"23:54"', add
label define us10a_arrives_lbl 2359 `"23:59"', add
label values us10a_arrives us10a_arrives_lbl

label define us10a_migpums1_lbl 000 `"NIU (not in universe)"'
label define us10a_migpums1_lbl 010 `"10"', add
label define us10a_migpums1_lbl 020 `"20"', add
label define us10a_migpums1_lbl 030 `"30"', add
label define us10a_migpums1_lbl 040 `"40"', add
label define us10a_migpums1_lbl 050 `"50"', add
label define us10a_migpums1_lbl 060 `"60"', add
label define us10a_migpums1_lbl 069 `"69"', add
label define us10a_migpums1_lbl 070 `"70"', add
label define us10a_migpums1_lbl 079 `"79"', add
label define us10a_migpums1_lbl 080 `"80"', add
label define us10a_migpums1_lbl 081 `"81"', add
label define us10a_migpums1_lbl 088 `"88"', add
label define us10a_migpums1_lbl 089 `"89"', add
label define us10a_migpums1_lbl 090 `"90"', add
label define us10a_migpums1_lbl 091 `"91"', add
label define us10a_migpums1_lbl 099 `"99"', add
label define us10a_migpums1_lbl 100 `"100"', add
label define us10a_migpums1_lbl 110 `"110"', add
label define us10a_migpums1_lbl 120 `"120"', add
label define us10a_migpums1_lbl 130 `"130"', add
label define us10a_migpums1_lbl 140 `"140"', add
label define us10a_migpums1_lbl 150 `"150"', add
label define us10a_migpums1_lbl 160 `"160"', add
label define us10a_migpums1_lbl 170 `"170"', add
label define us10a_migpums1_lbl 180 `"180"', add
label define us10a_migpums1_lbl 190 `"190"', add
label define us10a_migpums1_lbl 200 `"200"', add
label define us10a_migpums1_lbl 210 `"210"', add
label define us10a_migpums1_lbl 220 `"220"', add
label define us10a_migpums1_lbl 230 `"230"', add
label define us10a_migpums1_lbl 240 `"240"', add
label define us10a_migpums1_lbl 259 `"259"', add
label define us10a_migpums1_lbl 270 `"270"', add
label define us10a_migpums1_lbl 300 `"300"', add
label define us10a_migpums1_lbl 309 `"309"', add
label define us10a_migpums1_lbl 400 `"400"', add
label define us10a_migpums1_lbl 409 `"409"', add
label define us10a_migpums1_lbl 500 `"500"', add
label define us10a_migpums1_lbl 600 `"600"', add
label define us10a_migpums1_lbl 700 `"700"', add
label define us10a_migpums1_lbl 800 `"800"', add
label define us10a_migpums1_lbl 809 `"809"', add
label define us10a_migpums1_lbl 900 `"900"', add
label values us10a_migpums1 us10a_migpums1_lbl

label define us10a_migpums1_lbl 000 `"NIU (not in universe)"'
label define us10a_migpums1_lbl 010 `"10"', add
label define us10a_migpums1_lbl 020 `"20"', add
label define us10a_migpums1_lbl 030 `"30"', add
label define us10a_migpums1_lbl 040 `"40"', add
label define us10a_migpums1_lbl 050 `"50"', add
label define us10a_migpums1_lbl 060 `"60"', add
label define us10a_migpums1_lbl 069 `"69"', add
label define us10a_migpums1_lbl 070 `"70"', add
label define us10a_migpums1_lbl 079 `"79"', add
label define us10a_migpums1_lbl 080 `"80"', add
label define us10a_migpums1_lbl 081 `"81"', add
label define us10a_migpums1_lbl 088 `"88"', add
label define us10a_migpums1_lbl 089 `"89"', add
label define us10a_migpums1_lbl 090 `"90"', add
label define us10a_migpums1_lbl 091 `"91"', add
label define us10a_migpums1_lbl 099 `"99"', add
label define us10a_migpums1_lbl 100 `"100"', add
label define us10a_migpums1_lbl 110 `"110"', add
label define us10a_migpums1_lbl 120 `"120"', add
label define us10a_migpums1_lbl 130 `"130"', add
label define us10a_migpums1_lbl 140 `"140"', add
label define us10a_migpums1_lbl 150 `"150"', add
label define us10a_migpums1_lbl 160 `"160"', add
label define us10a_migpums1_lbl 170 `"170"', add
label define us10a_migpums1_lbl 180 `"180"', add
label define us10a_migpums1_lbl 190 `"190"', add
label define us10a_migpums1_lbl 200 `"200"', add
label define us10a_migpums1_lbl 210 `"210"', add
label define us10a_migpums1_lbl 220 `"220"', add
label define us10a_migpums1_lbl 230 `"230"', add
label define us10a_migpums1_lbl 240 `"240"', add
label define us10a_migpums1_lbl 259 `"259"', add
label define us10a_migpums1_lbl 270 `"270"', add
label define us10a_migpums1_lbl 300 `"300"', add
label define us10a_migpums1_lbl 309 `"309"', add
label define us10a_migpums1_lbl 400 `"400"', add
label define us10a_migpums1_lbl 409 `"409"', add
label define us10a_migpums1_lbl 500 `"500"', add
label define us10a_migpums1_lbl 600 `"600"', add
label define us10a_migpums1_lbl 700 `"700"', add
label define us10a_migpums1_lbl 800 `"800"', add
label define us10a_migpums1_lbl 809 `"809"', add
label define us10a_migpums1_lbl 900 `"900"', add
label values us10a_migpums1 us10a_migpums1_lbl

label define us10a_migcity1_lbl 0000 `"NIU (not in universe)"'
label define us10a_migcity1_lbl 0090 `"Alexandria, VA"', add
label define us10a_migcity1_lbl 0210 `"Anchorage, AK"', add
label define us10a_migcity1_lbl 0530 `"Baltimore, MD"', add
label define us10a_migcity1_lbl 0810 `"Boston, MA"', add
label define us10a_migcity1_lbl 0830 `"Bridgeport, CT"', add
label define us10a_migcity1_lbl 0930 `"Cambridge, MA"', add
label define us10a_migcity1_lbl 1150 `"Chesapeake, VA"', add
label define us10a_migcity1_lbl 1430 `"Columbus, GA"', add
label define us10a_migcity1_lbl 1730 `"Des Moines, IA"', add
label define us10a_migcity1_lbl 2650 `"Hampton, VA"', add
label define us10a_migcity1_lbl 2710 `"Hartford, CT"', add
label define us10a_migcity1_lbl 3590 `"Lexington-Fayette, KY"', add
label define us10a_migcity1_lbl 3770 `"Lowell, MA"', add
label define us10a_migcity1_lbl 3910 `"Manchester, NH"', add
label define us10a_migcity1_lbl 4530 `"New Haven, CT"', add
label define us10a_migcity1_lbl 4570 `"New Orleans, LA"', add
label define us10a_migcity1_lbl 4610 `"New York, NY"', add
label define us10a_migcity1_lbl 4750 `"Newport News, VA"', add
label define us10a_migcity1_lbl 4810 `"Norfolk, VA"', add
label define us10a_migcity1_lbl 5330 `"Philadelphia, PA"', add
label define us10a_migcity1_lbl 5650 `"Providence, RI"', add
label define us10a_migcity1_lbl 5870 `"Richmond, VA"', add
label define us10a_migcity1_lbl 6090 `"Saint Louis, MO"', add
label define us10a_migcity1_lbl 6290 `"San Francisco, CA"', add
label define us10a_migcity1_lbl 6670 `"Springfield, MA"', add
label define us10a_migcity1_lbl 6730 `"Stamford, CT"', add
label define us10a_migcity1_lbl 7130 `"Virginia Beach, VA"', add
label define us10a_migcity1_lbl 7230 `"Washington, DC"', add
label define us10a_migcity1_lbl 7250 `"Waterbury, CT"', add
label define us10a_migcity1_lbl 7570 `"Worcester, MA"', add
label define us10a_migcity1_lbl 9999 `"Unknown"', add
label values us10a_migcity1 us10a_migcity1_lbl

label define us10a_tribe_lbl 000000 `"NIU (not in universe)"'
label define us10a_tribe_lbl 100300 `"Alaskan Athabaskan"', add
label define us10a_tribe_lbl 100400 `"Aleut"', add
label define us10a_tribe_lbl 100500 `"Eskimo"', add
label define us10a_tribe_lbl 100601 `"Haida"', add
label define us10a_tribe_lbl 100800 `"Alaska Native, not elsewhere classified"', add
label define us10a_tribe_lbl 200300 `"Apache"', add
label define us10a_tribe_lbl 200800 `"Blackfoot"', add
label define us10a_tribe_lbl 201900 `"Cherokee"', add
label define us10a_tribe_lbl 202000 `"Cheyenne"', add
label define us10a_tribe_lbl 202100 `"Chickasaw"', add
label define us10a_tribe_lbl 202300 `"Chippewa"', add
label define us10a_tribe_lbl 202500 `"Choctaw"', add
label define us10a_tribe_lbl 202800 `"Colville"', add
label define us10a_tribe_lbl 202900 `"Comanche"', add
label define us10a_tribe_lbl 203500 `"Creek"', add
label define us10a_tribe_lbl 203700 `"Crow"', add
label define us10a_tribe_lbl 203800 `"Delaware"', add
label define us10a_tribe_lbl 204600 `"Iowa"', add
label define us10a_tribe_lbl 204700 `"Iroquois"', add
label define us10a_tribe_lbl 206000 `"Lumbee"', add
label define us10a_tribe_lbl 206500 `"Menominee"', add
label define us10a_tribe_lbl 207500 `"Navajo"', add
label define us10a_tribe_lbl 208400 `"Paiute"', add
label define us10a_tribe_lbl 209000 `"Pima"', add
label define us10a_tribe_lbl 209400 `"Potawatomie"', add
label define us10a_tribe_lbl 209600 `"Pueblo"', add
label define us10a_tribe_lbl 209700 `"Puget Sound Salish"', add
label define us10a_tribe_lbl 210200 `"Seminole"', add
label define us10a_tribe_lbl 211000 `"Sioux"', add
label define us10a_tribe_lbl 211300 `"Tohono O'Odham"', add
label define us10a_tribe_lbl 212600 `"Yakima"', add
label define us10a_tribe_lbl 212700 `"Yaqui"', add
label define us10a_tribe_lbl 213200 `"American Indian, tribe not elsewhere classified"', add
label define us10a_tribe_lbl 213300 `"American Indian, tribe not reported"', add
label define us10a_tribe_lbl 213400 `"All other specified American Indian tribe combinations"', add
label define us10a_tribe_lbl 300100 `"American Indian or Alaska Native, tribe not elsewhere classified"', add
label values us10a_tribe us10a_tribe_lbl

label define us10a_racgen00_lbl 1 `"White alone"'
label define us10a_racgen00_lbl 2 `"Black or African American alone"', add
label define us10a_racgen00_lbl 3 `"American Indian alone"', add
label define us10a_racgen00_lbl 4 `"Alaska Native alone"', add
label define us10a_racgen00_lbl 5 `"American Indian and Alaska Native and no other race"', add
label define us10a_racgen00_lbl 6 `"Asian alone"', add
label define us10a_racgen00_lbl 7 `"Native Hawaiian and Other Pacific Islander alone"', add
label define us10a_racgen00_lbl 8 `"Other race alone"', add
label define us10a_racgen00_lbl 9 `"Two or more major race groups"', add
label values us10a_racgen00 us10a_racgen00_lbl

label define us10a_hwsei_lbl 0000 `"NIU (not in universe)"'
label values us10a_hwsei us10a_hwsei_lbl

label define us10a_presgl_lbl 000 `"NIU (not in universe)"'
label values us10a_presgl us10a_presgl_lbl

label define us10a_prent_lbl 000 `"NIU (not in universe)"'
label values us10a_prent us10a_prent_lbl

label define us10a_prent_lbl 000 `"NIU (not in universe)"'
label values us10a_prent us10a_prent_lbl

label define us10a_erscor50_lbl 9999 `"NIU (not in universe)"'
label values us10a_erscor50 us10a_erscor50_lbl

label define us10a_erscor90_lbl 9999 `"NIU (not in universe)"'
label values us10a_erscor90 us10a_erscor90_lbl

label define us10a_edscor50_lbl 9999 `"NIU (not in universe)"'
label values us10a_edscor50 us10a_edscor50_lbl

label define us10a_edscor90_lbl 9999 `"NIU (not in universe)"'
label values us10a_edscor90 us10a_edscor90_lbl

label define us10a_npboss50_lbl 9999 `"NIU (not in universe)"'
label values us10a_npboss50 us10a_npboss50_lbl

label define us10a_npboss90_lbl 9999 `"NIU (not in universe)"'
label values us10a_npboss90 us10a_npboss90_lbl

label define us10a_repwtp_lbl 1 `"1"'
label values us10a_repwtp us10a_repwtp_lbl

label define us10a_subfam_lbl 0 `"Group quarters or not in subfamily"'
label define us10a_subfam_lbl 1 `"1st subfamily in household"', add
label define us10a_subfam_lbl 2 `"2nd subfamily in household"', add
label define us10a_subfam_lbl 3 `"3rd"', add
label define us10a_subfam_lbl 4 `"4th"', add
label values us10a_subfam us10a_subfam_lbl

label define us10a_sftype_lbl 0 `"Group quarters or not in subfamily"'
label define us10a_sftype_lbl 1 `"Married-couple related subfamily with children"', add
label define us10a_sftype_lbl 2 `"Married-couple related subfamily without children"', add
label define us10a_sftype_lbl 3 `"Father-child related subfamily"', add
label define us10a_sftype_lbl 4 `"Mother-child related subfamily"', add
label define us10a_sftype_lbl 5 `"Married-couple unrelated subfamily with children"', add
label define us10a_sftype_lbl 6 `"Married-couple unrelated subfamily without children"', add
label define us10a_sftype_lbl 7 `"Father-child unrelated subfamily"', add
label define us10a_sftype_lbl 8 `"Mother-child unrelated subfamily"', add
label values us10a_sftype us10a_sftype_lbl

label define us10a_sfrelate_lbl 0 `"Group quarters or not in subfamily"'
label define us10a_sfrelate_lbl 1 `"Reference person"', add
label define us10a_sfrelate_lbl 2 `"Spouse (married-couple subfamily only)"', add
label define us10a_sfrelate_lbl 3 `"Child"', add
label values us10a_sfrelate us10a_sfrelate_lbl

label define us10a_subfam2_lbl 0 `"Group quarters or not in subfamily"'
label define us10a_subfam2_lbl 1 `"1st subfamily in household"', add
label define us10a_subfam2_lbl 2 `"2nd subfamily in household"', add
label define us10a_subfam2_lbl 3 `"3rd"', add
label define us10a_subfam2_lbl 4 `"4th"', add
label values us10a_subfam2 us10a_subfam2_lbl

label define us10a_sftype2_lbl 0 `"Group quarters or not in subfamily"'
label define us10a_sftype2_lbl 1 `"Married-couple related subfamily with children"', add
label define us10a_sftype2_lbl 2 `"Married-couple related subfamily without children"', add
label define us10a_sftype2_lbl 3 `"Father-child related subfamily"', add
label define us10a_sftype2_lbl 4 `"Mother-child related subfamily"', add
label define us10a_sftype2_lbl 5 `"Married-couple unrelated subfamily with children"', add
label define us10a_sftype2_lbl 6 `"Married-couple unrelated subfamily without children"', add
label define us10a_sftype2_lbl 7 `"Father-child unrelated subfamily"', add
label define us10a_sftype2_lbl 8 `"Mother-child unrelated subfamily"', add
label values us10a_sftype2 us10a_sftype2_lbl

label define us10a_sfrelate2_lbl 0 `"Group quarters or not in subfamily"'
label define us10a_sfrelate2_lbl 1 `"Reference person"', add
label define us10a_sfrelate2_lbl 3 `"Child"', add
label values us10a_sfrelate2 us10a_sfrelate2_lbl

label define us10a_ftotinc_lbl 9999999 `"NIU (not in universe)"'
label values us10a_ftotinc us10a_ftotinc_lbl

label define us10a_ftotinc2_lbl 9999999 `"NIU (not in universe)"'
label values us10a_ftotinc2 us10a_ftotinc2_lbl

label define us10a_diffeye_lbl 1 `"No"'
label define us10a_diffeye_lbl 2 `"Yes"', add
label values us10a_diffeye us10a_diffeye_lbl

label define us10a_diffhear_lbl 1 `"No"'
label define us10a_diffhear_lbl 2 `"Yes"', add
label values us10a_diffhear us10a_diffhear_lbl

label define us10a_divinyr_lbl 0 `"NIU (not in universe)"'
label define us10a_divinyr_lbl 1 `"No"', add
label define us10a_divinyr_lbl 2 `"Yes"', add
label values us10a_divinyr us10a_divinyr_lbl

label define us10a_hcovany_lbl 1 `"No health insurance coverage"'
label define us10a_hcovany_lbl 2 `"With health insurance coverage"', add
label values us10a_hcovany us10a_hcovany_lbl

label define us10a_hinsemp_lbl 1 `"No insurance through employer/union"'
label define us10a_hinsemp_lbl 2 `"Has insurance through employer/union"', add
label values us10a_hinsemp us10a_hinsemp_lbl

label define us10a_hinsemp_lbl 1 `"No insurance through employer/union"'
label define us10a_hinsemp_lbl 2 `"Has insurance through employer/union"', add
label values us10a_hinsemp us10a_hinsemp_lbl

label define us10a_hinspur_lbl 1 `"No insurance purchased directly"'
label define us10a_hinspur_lbl 2 `"Has insurance purchased directly"', add
label values us10a_hinspur us10a_hinspur_lbl

label define us10a_hinstri_lbl 1 `"No insurance through Tricare"'
label define us10a_hinstri_lbl 2 `"Has insurance through Tricare"', add
label values us10a_hinstri us10a_hinstri_lbl

label define us10a_hcovpub_lbl 1 `"Without public health insurance coverage"'
label define us10a_hcovpub_lbl 2 `"With public health insurance coverage"', add
label values us10a_hcovpub us10a_hcovpub_lbl

label define us10a_hinscaid_lbl 1 `"No insurance through Medicaid"'
label define us10a_hinscaid_lbl 2 `"Has insurance through Medicaid"', add
label values us10a_hinscaid us10a_hinscaid_lbl

label define us10a_hinscare_lbl 1 `"No insurance through Medicare"'
label define us10a_hinscare_lbl 2 `"Has insurance through Medicare"', add
label values us10a_hinscare us10a_hinscare_lbl

label define us10a_hinsva_lbl 1 `"No insurance through VA"'
label define us10a_hinsva_lbl 2 `"Has insurance through VA"', add
label values us10a_hinsva us10a_hinsva_lbl

label define us10a_hinsihs_lbl 1 `"No insurance through Indian Health Service"'
label define us10a_hinsihs_lbl 2 `"Has insurance through Indian Health Service"', add
label values us10a_hinsihs us10a_hinsihs_lbl

label define us10a_vetdisab_lbl 0 `"NIU (not in universe)"'
label define us10a_vetdisab_lbl 1 `"No disability rating"', add
label define us10a_vetdisab_lbl 2 `"0 percent disability rating"', add
label define us10a_vetdisab_lbl 3 `"10 or 20 percent disability rating"', add
label define us10a_vetdisab_lbl 4 `"30 or 40 percent"', add
label define us10a_vetdisab_lbl 5 `"50 or 60 percent"', add
label define us10a_vetdisab_lbl 6 `"70 percent or higher"', add
label define us10a_vetdisab_lbl 9 `"Has disability rating, level not reported"', add
label values us10a_vetdisab us10a_vetdisab_lbl

label define us10a_widinyr_lbl 0 `"NIU (not in universe)"'
label define us10a_widinyr_lbl 1 `"No"', add
label define us10a_widinyr_lbl 2 `"Yes"', add
label values us10a_widinyr us10a_widinyr_lbl

label define us10a_yrmarr_lbl 0000 `"NIU (not in universe)"'
label define us10a_yrmarr_lbl 1928 `"1928"', add
label define us10a_yrmarr_lbl 1929 `"1929"', add
label define us10a_yrmarr_lbl 1930 `"1930"', add
label define us10a_yrmarr_lbl 1931 `"1931"', add
label define us10a_yrmarr_lbl 1932 `"1932"', add
label define us10a_yrmarr_lbl 1933 `"1933"', add
label define us10a_yrmarr_lbl 1934 `"1934"', add
label define us10a_yrmarr_lbl 1935 `"1935"', add
label define us10a_yrmarr_lbl 1936 `"1936"', add
label define us10a_yrmarr_lbl 1937 `"1937"', add
label define us10a_yrmarr_lbl 1938 `"1938"', add
label define us10a_yrmarr_lbl 1939 `"1939"', add
label define us10a_yrmarr_lbl 1940 `"1940"', add
label define us10a_yrmarr_lbl 1941 `"1941"', add
label define us10a_yrmarr_lbl 1942 `"1942"', add
label define us10a_yrmarr_lbl 1943 `"1943"', add
label define us10a_yrmarr_lbl 1944 `"1944"', add
label define us10a_yrmarr_lbl 1945 `"1945"', add
label define us10a_yrmarr_lbl 1946 `"1946"', add
label define us10a_yrmarr_lbl 1947 `"1947"', add
label define us10a_yrmarr_lbl 1948 `"1948"', add
label define us10a_yrmarr_lbl 1949 `"1949"', add
label define us10a_yrmarr_lbl 1950 `"1950"', add
label define us10a_yrmarr_lbl 1951 `"1951"', add
label define us10a_yrmarr_lbl 1952 `"1952"', add
label define us10a_yrmarr_lbl 1953 `"1953"', add
label define us10a_yrmarr_lbl 1954 `"1954"', add
label define us10a_yrmarr_lbl 1955 `"1955"', add
label define us10a_yrmarr_lbl 1956 `"1956"', add
label define us10a_yrmarr_lbl 1957 `"1957"', add
label define us10a_yrmarr_lbl 1958 `"1958"', add
label define us10a_yrmarr_lbl 1959 `"1959"', add
label define us10a_yrmarr_lbl 1960 `"1960"', add
label define us10a_yrmarr_lbl 1961 `"1961"', add
label define us10a_yrmarr_lbl 1962 `"1962"', add
label define us10a_yrmarr_lbl 1963 `"1963"', add
label define us10a_yrmarr_lbl 1964 `"1964"', add
label define us10a_yrmarr_lbl 1965 `"1965"', add
label define us10a_yrmarr_lbl 1966 `"1966"', add
label define us10a_yrmarr_lbl 1967 `"1967"', add
label define us10a_yrmarr_lbl 1968 `"1968"', add
label define us10a_yrmarr_lbl 1969 `"1969"', add
label define us10a_yrmarr_lbl 1970 `"1970"', add
label define us10a_yrmarr_lbl 1971 `"1971"', add
label define us10a_yrmarr_lbl 1972 `"1972"', add
label define us10a_yrmarr_lbl 1973 `"1973"', add
label define us10a_yrmarr_lbl 1974 `"1974"', add
label define us10a_yrmarr_lbl 1975 `"1975"', add
label define us10a_yrmarr_lbl 1976 `"1976"', add
label define us10a_yrmarr_lbl 1977 `"1977"', add
label define us10a_yrmarr_lbl 1978 `"1978"', add
label define us10a_yrmarr_lbl 1979 `"1979"', add
label define us10a_yrmarr_lbl 1980 `"1980"', add
label define us10a_yrmarr_lbl 1981 `"1981"', add
label define us10a_yrmarr_lbl 1982 `"1982"', add
label define us10a_yrmarr_lbl 1983 `"1983"', add
label define us10a_yrmarr_lbl 1984 `"1984"', add
label define us10a_yrmarr_lbl 1985 `"1985"', add
label define us10a_yrmarr_lbl 1986 `"1986"', add
label define us10a_yrmarr_lbl 1987 `"1987"', add
label define us10a_yrmarr_lbl 1988 `"1988"', add
label define us10a_yrmarr_lbl 1989 `"1989"', add
label define us10a_yrmarr_lbl 1990 `"1990"', add
label define us10a_yrmarr_lbl 1991 `"1991"', add
label define us10a_yrmarr_lbl 1992 `"1992"', add
label define us10a_yrmarr_lbl 1993 `"1993"', add
label define us10a_yrmarr_lbl 1994 `"1994"', add
label define us10a_yrmarr_lbl 1995 `"1995"', add
label define us10a_yrmarr_lbl 1996 `"1996"', add
label define us10a_yrmarr_lbl 1997 `"1997"', add
label define us10a_yrmarr_lbl 1998 `"1998"', add
label define us10a_yrmarr_lbl 1999 `"1999"', add
label define us10a_yrmarr_lbl 2000 `"2000"', add
label define us10a_yrmarr_lbl 2001 `"2001"', add
label define us10a_yrmarr_lbl 2002 `"2002"', add
label define us10a_yrmarr_lbl 2003 `"2003"', add
label define us10a_yrmarr_lbl 2004 `"2004"', add
label define us10a_yrmarr_lbl 2005 `"2005"', add
label define us10a_yrmarr_lbl 2006 `"2006"', add
label define us10a_yrmarr_lbl 2007 `"2007"', add
label define us10a_yrmarr_lbl 2008 `"2008"', add
label define us10a_yrmarr_lbl 2009 `"2009"', add
label define us10a_yrmarr_lbl 2010 `"2010"', add
label values us10a_yrmarr us10a_yrmarr_lbl

label define us10a_qdifeye_lbl 0 `"Not allocated"'
label define us10a_qdifeye_lbl 4 `"Allocated"', add
label values us10a_qdifeye us10a_qdifeye_lbl

label define us10a_qdifhear_lbl 0 `"Not allocated"'
label define us10a_qdifhear_lbl 4 `"Allocated"', add
label values us10a_qdifhear us10a_qdifhear_lbl

label define us10a_qdivinyr_lbl 0 `"Not allocated"'
label define us10a_qdivinyr_lbl 4 `"Allocated"', add
label values us10a_qdivinyr us10a_qdivinyr_lbl

label define us10a_qhcovany_lbl 0 `"Not allocated"'
label values us10a_qhcovany us10a_qhcovany_lbl

label define us10a_qhcovpri_lbl 0 `"Not allocated"'
label values us10a_qhcovpri us10a_qhcovpri_lbl

label define us10a_qhinsemp_lbl 0 `"Not allocated"'
label define us10a_qhinsemp_lbl 4 `"Allocated"', add
label values us10a_qhinsemp us10a_qhinsemp_lbl

label define us10a_qhinsemp_lbl 0 `"Not allocated"'
label define us10a_qhinsemp_lbl 4 `"Allocated"', add
label values us10a_qhinsemp us10a_qhinsemp_lbl

label define us10a_qhinspur_lbl 0 `"Not allocated"'
label define us10a_qhinspur_lbl 4 `"Allocated"', add
label values us10a_qhinspur us10a_qhinspur_lbl

label define us10a_qhinstri_lbl 0 `"Not allocated"'
label define us10a_qhinstri_lbl 3 `"Coverage added through logical edit"', add
label define us10a_qhinstri_lbl 4 `"Allocated"', add
label values us10a_qhinstri us10a_qhinstri_lbl

label define us10a_qhinscai_lbl 0 `"Not allocated"'
label define us10a_qhinscai_lbl 3 `"Coverage added through logical edit"', add
label define us10a_qhinscai_lbl 4 `"Allocated"', add
label values us10a_qhinscai us10a_qhinscai_lbl

label define us10a_qhinscar_lbl 0 `"Not allocated"'
label define us10a_qhinscar_lbl 3 `"Coverage added through logical edit"', add
label define us10a_qhinscar_lbl 4 `"Allocated"', add
label values us10a_qhinscar us10a_qhinscar_lbl

label define us10a_qhinsva_lbl 0 `"Not allocated"'
label define us10a_qhinsva_lbl 4 `"Allocated"', add
label values us10a_qhinsva us10a_qhinsva_lbl

label define us10a_qhinsihs_lbl 0 `"Not allocated"'
label define us10a_qhinsihs_lbl 4 `"Allocated"', add
label values us10a_qhinsihs us10a_qhinsihs_lbl

label define us10a_qvetdisb_lbl 0 `"Not allocated"'
label define us10a_qvetdisb_lbl 4 `"Only disability status allocated"', add
label define us10a_qvetdisb_lbl 5 `"Only disability rating allocated"', add
label values us10a_qvetdisb us10a_qvetdisb_lbl

label define us10a_qwidinyr_lbl 0 `"Not allocated"'
label define us10a_qwidinyr_lbl 4 `"Allocated"', add
label values us10a_qwidinyr us10a_qwidinyr_lbl

label define us10a_qyrmarr_lbl 0 `"Not allocated"'
label define us10a_qyrmarr_lbl 4 `"Allocated"', add
label values us10a_qyrmarr us10a_qyrmarr_lbl

label define us10a_yrnatur_lbl 1925 `"1925"'
label define us10a_yrnatur_lbl 1926 `"1926"', add
label define us10a_yrnatur_lbl 1931 `"1931"', add
label define us10a_yrnatur_lbl 1936 `"1936"', add
label define us10a_yrnatur_lbl 1941 `"1941"', add
label define us10a_yrnatur_lbl 1943 `"1943"', add
label define us10a_yrnatur_lbl 1944 `"1944"', add
label define us10a_yrnatur_lbl 1945 `"1945"', add
label define us10a_yrnatur_lbl 1946 `"1946"', add
label define us10a_yrnatur_lbl 1947 `"1947"', add
label define us10a_yrnatur_lbl 1948 `"1948"', add
label define us10a_yrnatur_lbl 1949 `"1949"', add
label define us10a_yrnatur_lbl 1950 `"1950"', add
label define us10a_yrnatur_lbl 1951 `"1951"', add
label define us10a_yrnatur_lbl 1952 `"1952"', add
label define us10a_yrnatur_lbl 1953 `"1953"', add
label define us10a_yrnatur_lbl 1954 `"1954"', add
label define us10a_yrnatur_lbl 1955 `"1955"', add
label define us10a_yrnatur_lbl 1956 `"1956"', add
label define us10a_yrnatur_lbl 1957 `"1957"', add
label define us10a_yrnatur_lbl 1958 `"1958"', add
label define us10a_yrnatur_lbl 1959 `"1959"', add
label define us10a_yrnatur_lbl 1960 `"1960"', add
label define us10a_yrnatur_lbl 1961 `"1961"', add
label define us10a_yrnatur_lbl 1962 `"1962"', add
label define us10a_yrnatur_lbl 1963 `"1963"', add
label define us10a_yrnatur_lbl 1964 `"1964"', add
label define us10a_yrnatur_lbl 1965 `"1965"', add
label define us10a_yrnatur_lbl 1966 `"1966"', add
label define us10a_yrnatur_lbl 1967 `"1967"', add
label define us10a_yrnatur_lbl 1968 `"1968"', add
label define us10a_yrnatur_lbl 1969 `"1969"', add
label define us10a_yrnatur_lbl 1970 `"1970"', add
label define us10a_yrnatur_lbl 1971 `"1971"', add
label define us10a_yrnatur_lbl 1972 `"1972"', add
label define us10a_yrnatur_lbl 1973 `"1973"', add
label define us10a_yrnatur_lbl 1974 `"1974"', add
label define us10a_yrnatur_lbl 1975 `"1975"', add
label define us10a_yrnatur_lbl 1976 `"1976"', add
label define us10a_yrnatur_lbl 1977 `"1977"', add
label define us10a_yrnatur_lbl 1978 `"1978"', add
label define us10a_yrnatur_lbl 1979 `"1979"', add
label define us10a_yrnatur_lbl 1980 `"1980"', add
label define us10a_yrnatur_lbl 1981 `"1981"', add
label define us10a_yrnatur_lbl 1982 `"1982"', add
label define us10a_yrnatur_lbl 1983 `"1983"', add
label define us10a_yrnatur_lbl 1984 `"1984"', add
label define us10a_yrnatur_lbl 1985 `"1985"', add
label define us10a_yrnatur_lbl 1986 `"1986"', add
label define us10a_yrnatur_lbl 1987 `"1987"', add
label define us10a_yrnatur_lbl 1988 `"1988"', add
label define us10a_yrnatur_lbl 1989 `"1989"', add
label define us10a_yrnatur_lbl 1990 `"1990"', add
label define us10a_yrnatur_lbl 1991 `"1991"', add
label define us10a_yrnatur_lbl 1992 `"1992"', add
label define us10a_yrnatur_lbl 1993 `"1993"', add
label define us10a_yrnatur_lbl 1994 `"1994"', add
label define us10a_yrnatur_lbl 1995 `"1995"', add
label define us10a_yrnatur_lbl 1996 `"1996"', add
label define us10a_yrnatur_lbl 1997 `"1997"', add
label define us10a_yrnatur_lbl 1998 `"1998"', add
label define us10a_yrnatur_lbl 1999 `"1999"', add
label define us10a_yrnatur_lbl 2000 `"2000"', add
label define us10a_yrnatur_lbl 2001 `"2001"', add
label define us10a_yrnatur_lbl 2002 `"2002"', add
label define us10a_yrnatur_lbl 2003 `"2003"', add
label define us10a_yrnatur_lbl 2004 `"2004"', add
label define us10a_yrnatur_lbl 2005 `"2005"', add
label define us10a_yrnatur_lbl 2006 `"2006"', add
label define us10a_yrnatur_lbl 2007 `"2007"', add
label define us10a_yrnatur_lbl 2008 `"2008"', add
label define us10a_yrnatur_lbl 2009 `"2009"', add
label define us10a_yrnatur_lbl 2010 `"2010"', add
label define us10a_yrnatur_lbl 9999 `"NIU (not in universe)"', add
label values us10a_yrnatur us10a_yrnatur_lbl

label define us10a_gradeatt_lbl 00 `"NIU (not in universe)"'
label define us10a_gradeatt_lbl 10 `"Nursery school/preschool"', add
label define us10a_gradeatt_lbl 20 `"Kindergarten"', add
label define us10a_gradeatt_lbl 31 `"Grade 1"', add
label define us10a_gradeatt_lbl 32 `"Grade 2"', add
label define us10a_gradeatt_lbl 33 `"Grade 3"', add
label define us10a_gradeatt_lbl 34 `"Grade 4"', add
label define us10a_gradeatt_lbl 41 `"Grade 5"', add
label define us10a_gradeatt_lbl 42 `"Grade 6"', add
label define us10a_gradeatt_lbl 43 `"Grade 7"', add
label define us10a_gradeatt_lbl 44 `"Grade 8"', add
label define us10a_gradeatt_lbl 51 `"Grade 9"', add
label define us10a_gradeatt_lbl 52 `"Grade 10"', add
label define us10a_gradeatt_lbl 53 `"Grade 11"', add
label define us10a_gradeatt_lbl 54 `"Grade 12"', add
label define us10a_gradeatt_lbl 60 `"College undergraduate"', add
label define us10a_gradeatt_lbl 70 `"Graduate or professional school"', add
label values us10a_gradeatt us10a_gradeatt_lbl

label define us10a_educ_lbl 000 `"NIU (not in universe)"'
label define us10a_educ_lbl 002 `"No schooling completed"', add
label define us10a_educ_lbl 011 `"Nursery school, preschool"', add
label define us10a_educ_lbl 012 `"Kindergarten"', add
label define us10a_educ_lbl 014 `"Grade 1"', add
label define us10a_educ_lbl 015 `"Grade 2"', add
label define us10a_educ_lbl 016 `"Grade 3"', add
label define us10a_educ_lbl 017 `"Grade 4"', add
label define us10a_educ_lbl 022 `"Grade 5"', add
label define us10a_educ_lbl 023 `"Grade 6"', add
label define us10a_educ_lbl 025 `"Grade 7"', add
label define us10a_educ_lbl 026 `"Grade 8"', add
label define us10a_educ_lbl 030 `"Grade 9"', add
label define us10a_educ_lbl 040 `"Grade 10"', add
label define us10a_educ_lbl 050 `"Grade 11"', add
label define us10a_educ_lbl 061 `"12th grade, no diploma"', add
label define us10a_educ_lbl 063 `"Regular high school diploma"', add
label define us10a_educ_lbl 064 `"Graduate equivalency diploma (GED) or alternative credential"', add
label define us10a_educ_lbl 065 `"Some college, but less than 1 year"', add
label define us10a_educ_lbl 071 `"1 or more years of college credit, no degree"', add
label define us10a_educ_lbl 081 `"Associate's degree, type not specified"', add
label define us10a_educ_lbl 101 `"Bachelor's degree"', add
label define us10a_educ_lbl 114 `"Master's degree"', add
label define us10a_educ_lbl 115 `"Professional degree beyond a bachelor's degree"', add
label define us10a_educ_lbl 116 `"Doctoral degree"', add
label values us10a_educ us10a_educ_lbl

label define us10a_inctot_lbl 9999999 `"NIU (not in universe)"'
label values us10a_inctot us10a_inctot_lbl

label define us10a_trantime_lbl 000 `"NIU (not in universe)"'
label define us10a_trantime_lbl 001 `"1"', add
label define us10a_trantime_lbl 002 `"2"', add
label define us10a_trantime_lbl 003 `"3"', add
label define us10a_trantime_lbl 004 `"4"', add
label define us10a_trantime_lbl 005 `"5"', add
label define us10a_trantime_lbl 006 `"6"', add
label define us10a_trantime_lbl 007 `"7"', add
label define us10a_trantime_lbl 008 `"8"', add
label define us10a_trantime_lbl 009 `"9"', add
label define us10a_trantime_lbl 010 `"10"', add
label define us10a_trantime_lbl 011 `"11"', add
label define us10a_trantime_lbl 012 `"12"', add
label define us10a_trantime_lbl 013 `"13"', add
label define us10a_trantime_lbl 014 `"14"', add
label define us10a_trantime_lbl 015 `"15"', add
label define us10a_trantime_lbl 016 `"16"', add
label define us10a_trantime_lbl 017 `"17"', add
label define us10a_trantime_lbl 018 `"18"', add
label define us10a_trantime_lbl 019 `"19"', add
label define us10a_trantime_lbl 020 `"20"', add
label define us10a_trantime_lbl 021 `"21"', add
label define us10a_trantime_lbl 022 `"22"', add
label define us10a_trantime_lbl 023 `"23"', add
label define us10a_trantime_lbl 024 `"24"', add
label define us10a_trantime_lbl 025 `"25"', add
label define us10a_trantime_lbl 026 `"26"', add
label define us10a_trantime_lbl 027 `"27"', add
label define us10a_trantime_lbl 028 `"28"', add
label define us10a_trantime_lbl 029 `"29"', add
label define us10a_trantime_lbl 030 `"30"', add
label define us10a_trantime_lbl 031 `"31"', add
label define us10a_trantime_lbl 032 `"32"', add
label define us10a_trantime_lbl 033 `"33"', add
label define us10a_trantime_lbl 034 `"34"', add
label define us10a_trantime_lbl 035 `"35"', add
label define us10a_trantime_lbl 036 `"36"', add
label define us10a_trantime_lbl 037 `"37"', add
label define us10a_trantime_lbl 038 `"38"', add
label define us10a_trantime_lbl 039 `"39"', add
label define us10a_trantime_lbl 040 `"40"', add
label define us10a_trantime_lbl 041 `"41"', add
label define us10a_trantime_lbl 042 `"42"', add
label define us10a_trantime_lbl 043 `"43"', add
label define us10a_trantime_lbl 044 `"44"', add
label define us10a_trantime_lbl 045 `"45"', add
label define us10a_trantime_lbl 046 `"46"', add
label define us10a_trantime_lbl 047 `"47"', add
label define us10a_trantime_lbl 048 `"48"', add
label define us10a_trantime_lbl 049 `"49"', add
label define us10a_trantime_lbl 050 `"50"', add
label define us10a_trantime_lbl 051 `"51"', add
label define us10a_trantime_lbl 052 `"52"', add
label define us10a_trantime_lbl 053 `"53"', add
label define us10a_trantime_lbl 054 `"54"', add
label define us10a_trantime_lbl 055 `"55"', add
label define us10a_trantime_lbl 056 `"56"', add
label define us10a_trantime_lbl 057 `"57"', add
label define us10a_trantime_lbl 058 `"58"', add
label define us10a_trantime_lbl 059 `"59"', add
label define us10a_trantime_lbl 060 `"60"', add
label define us10a_trantime_lbl 061 `"61"', add
label define us10a_trantime_lbl 062 `"62"', add
label define us10a_trantime_lbl 063 `"63"', add
label define us10a_trantime_lbl 064 `"64"', add
label define us10a_trantime_lbl 065 `"65"', add
label define us10a_trantime_lbl 066 `"66"', add
label define us10a_trantime_lbl 067 `"67"', add
label define us10a_trantime_lbl 068 `"68"', add
label define us10a_trantime_lbl 069 `"69"', add
label define us10a_trantime_lbl 070 `"70"', add
label define us10a_trantime_lbl 071 `"71"', add
label define us10a_trantime_lbl 072 `"72"', add
label define us10a_trantime_lbl 073 `"73"', add
label define us10a_trantime_lbl 074 `"74"', add
label define us10a_trantime_lbl 075 `"75"', add
label define us10a_trantime_lbl 076 `"76"', add
label define us10a_trantime_lbl 077 `"77"', add
label define us10a_trantime_lbl 078 `"78"', add
label define us10a_trantime_lbl 079 `"79"', add
label define us10a_trantime_lbl 080 `"80"', add
label define us10a_trantime_lbl 081 `"81"', add
label define us10a_trantime_lbl 082 `"82"', add
label define us10a_trantime_lbl 083 `"83"', add
label define us10a_trantime_lbl 084 `"84"', add
label define us10a_trantime_lbl 085 `"85"', add
label define us10a_trantime_lbl 086 `"86"', add
label define us10a_trantime_lbl 087 `"87"', add
label define us10a_trantime_lbl 088 `"88"', add
label define us10a_trantime_lbl 089 `"89"', add
label define us10a_trantime_lbl 090 `"90"', add
label define us10a_trantime_lbl 092 `"92"', add
label define us10a_trantime_lbl 093 `"93"', add
label define us10a_trantime_lbl 094 `"94"', add
label define us10a_trantime_lbl 095 `"95"', add
label define us10a_trantime_lbl 096 `"96"', add
label define us10a_trantime_lbl 097 `"97"', add
label define us10a_trantime_lbl 098 `"98"', add
label define us10a_trantime_lbl 099 `"99"', add
label define us10a_trantime_lbl 100 `"100"', add
label define us10a_trantime_lbl 101 `"101"', add
label define us10a_trantime_lbl 102 `"102"', add
label define us10a_trantime_lbl 104 `"104"', add
label define us10a_trantime_lbl 105 `"105"', add
label define us10a_trantime_lbl 109 `"109"', add
label define us10a_trantime_lbl 110 `"110"', add
label define us10a_trantime_lbl 111 `"111"', add
label define us10a_trantime_lbl 112 `"112"', add
label define us10a_trantime_lbl 113 `"113"', add
label define us10a_trantime_lbl 114 `"114"', add
label define us10a_trantime_lbl 115 `"115"', add
label define us10a_trantime_lbl 118 `"118"', add
label define us10a_trantime_lbl 119 `"119"', add
label define us10a_trantime_lbl 120 `"120"', add
label define us10a_trantime_lbl 123 `"123"', add
label define us10a_trantime_lbl 124 `"124"', add
label define us10a_trantime_lbl 125 `"125"', add
label define us10a_trantime_lbl 126 `"126"', add
label define us10a_trantime_lbl 127 `"127"', add
label define us10a_trantime_lbl 128 `"128"', add
label define us10a_trantime_lbl 129 `"129"', add
label define us10a_trantime_lbl 130 `"130"', add
label define us10a_trantime_lbl 131 `"131"', add
label define us10a_trantime_lbl 133 `"133"', add
label define us10a_trantime_lbl 139 `"139"', add
label define us10a_trantime_lbl 140 `"140"', add
label define us10a_trantime_lbl 141 `"141"', add
label define us10a_trantime_lbl 142 `"142"', add
label define us10a_trantime_lbl 143 `"143"', add
label define us10a_trantime_lbl 144 `"144"', add
label define us10a_trantime_lbl 145 `"145"', add
label define us10a_trantime_lbl 147 `"147"', add
label define us10a_trantime_lbl 148 `"148"', add
label define us10a_trantime_lbl 149 `"149"', add
label define us10a_trantime_lbl 150 `"150"', add
label define us10a_trantime_lbl 151 `"151"', add
label define us10a_trantime_lbl 152 `"152"', add
label define us10a_trantime_lbl 156 `"156"', add
label define us10a_trantime_lbl 157 `"157"', add
label define us10a_trantime_lbl 158 `"158"', add
label define us10a_trantime_lbl 162 `"162"', add
label define us10a_trantime_lbl 164 `"164"', add
label define us10a_trantime_lbl 165 `"165"', add
label define us10a_trantime_lbl 187 `"187"', add
label values us10a_trantime us10a_trantime_lbl

label define us10a_yrimmig_lbl 0000 `"NIU (not in universe)"'
label define us10a_yrimmig_lbl 1919 `"1919"', add
label define us10a_yrimmig_lbl 1920 `"1920"', add
label define us10a_yrimmig_lbl 1921 `"1921"', add
label define us10a_yrimmig_lbl 1922 `"1922"', add
label define us10a_yrimmig_lbl 1923 `"1923"', add
label define us10a_yrimmig_lbl 1924 `"1924"', add
label define us10a_yrimmig_lbl 1925 `"1925"', add
label define us10a_yrimmig_lbl 1926 `"1926"', add
label define us10a_yrimmig_lbl 1927 `"1927"', add
label define us10a_yrimmig_lbl 1928 `"1928"', add
label define us10a_yrimmig_lbl 1929 `"1929"', add
label define us10a_yrimmig_lbl 1930 `"1930"', add
label define us10a_yrimmig_lbl 1931 `"1931"', add
label define us10a_yrimmig_lbl 1932 `"1932"', add
label define us10a_yrimmig_lbl 1933 `"1933"', add
label define us10a_yrimmig_lbl 1934 `"1934"', add
label define us10a_yrimmig_lbl 1935 `"1935"', add
label define us10a_yrimmig_lbl 1936 `"1936"', add
label define us10a_yrimmig_lbl 1937 `"1937"', add
label define us10a_yrimmig_lbl 1938 `"1938"', add
label define us10a_yrimmig_lbl 1939 `"1939"', add
label define us10a_yrimmig_lbl 1940 `"1940"', add
label define us10a_yrimmig_lbl 1941 `"1941"', add
label define us10a_yrimmig_lbl 1942 `"1942"', add
label define us10a_yrimmig_lbl 1943 `"1943"', add
label define us10a_yrimmig_lbl 1944 `"1944"', add
label define us10a_yrimmig_lbl 1945 `"1945"', add
label define us10a_yrimmig_lbl 1946 `"1946"', add
label define us10a_yrimmig_lbl 1947 `"1947"', add
label define us10a_yrimmig_lbl 1948 `"1948"', add
label define us10a_yrimmig_lbl 1949 `"1949"', add
label define us10a_yrimmig_lbl 1950 `"1950"', add
label define us10a_yrimmig_lbl 1951 `"1951"', add
label define us10a_yrimmig_lbl 1952 `"1952"', add
label define us10a_yrimmig_lbl 1953 `"1953"', add
label define us10a_yrimmig_lbl 1954 `"1954"', add
label define us10a_yrimmig_lbl 1955 `"1955"', add
label define us10a_yrimmig_lbl 1956 `"1956"', add
label define us10a_yrimmig_lbl 1957 `"1957"', add
label define us10a_yrimmig_lbl 1958 `"1958"', add
label define us10a_yrimmig_lbl 1959 `"1959"', add
label define us10a_yrimmig_lbl 1960 `"1960"', add
label define us10a_yrimmig_lbl 1961 `"1961"', add
label define us10a_yrimmig_lbl 1962 `"1962"', add
label define us10a_yrimmig_lbl 1963 `"1963"', add
label define us10a_yrimmig_lbl 1964 `"1964"', add
label define us10a_yrimmig_lbl 1965 `"1965"', add
label define us10a_yrimmig_lbl 1966 `"1966"', add
label define us10a_yrimmig_lbl 1967 `"1967"', add
label define us10a_yrimmig_lbl 1968 `"1968"', add
label define us10a_yrimmig_lbl 1969 `"1969"', add
label define us10a_yrimmig_lbl 1970 `"1970"', add
label define us10a_yrimmig_lbl 1971 `"1971"', add
label define us10a_yrimmig_lbl 1972 `"1972"', add
label define us10a_yrimmig_lbl 1973 `"1973"', add
label define us10a_yrimmig_lbl 1974 `"1974"', add
label define us10a_yrimmig_lbl 1975 `"1975"', add
label define us10a_yrimmig_lbl 1976 `"1976"', add
label define us10a_yrimmig_lbl 1977 `"1977"', add
label define us10a_yrimmig_lbl 1978 `"1978"', add
label define us10a_yrimmig_lbl 1979 `"1979"', add
label define us10a_yrimmig_lbl 1980 `"1980"', add
label define us10a_yrimmig_lbl 1981 `"1981"', add
label define us10a_yrimmig_lbl 1982 `"1982"', add
label define us10a_yrimmig_lbl 1983 `"1983"', add
label define us10a_yrimmig_lbl 1984 `"1984"', add
label define us10a_yrimmig_lbl 1985 `"1985"', add
label define us10a_yrimmig_lbl 1986 `"1986"', add
label define us10a_yrimmig_lbl 1987 `"1987"', add
label define us10a_yrimmig_lbl 1988 `"1988"', add
label define us10a_yrimmig_lbl 1989 `"1989"', add
label define us10a_yrimmig_lbl 1990 `"1990"', add
label define us10a_yrimmig_lbl 1991 `"1991"', add
label define us10a_yrimmig_lbl 1992 `"1992"', add
label define us10a_yrimmig_lbl 1993 `"1993"', add
label define us10a_yrimmig_lbl 1994 `"1994"', add
label define us10a_yrimmig_lbl 1995 `"1995"', add
label define us10a_yrimmig_lbl 1996 `"1996"', add
label define us10a_yrimmig_lbl 1997 `"1997"', add
label define us10a_yrimmig_lbl 1998 `"1998"', add
label define us10a_yrimmig_lbl 1999 `"1999"', add
label define us10a_yrimmig_lbl 2000 `"2000"', add
label define us10a_yrimmig_lbl 2001 `"2001"', add
label define us10a_yrimmig_lbl 2002 `"2002"', add
label define us10a_yrimmig_lbl 2003 `"2003"', add
label define us10a_yrimmig_lbl 2004 `"2004"', add
label define us10a_yrimmig_lbl 2005 `"2005"', add
label define us10a_yrimmig_lbl 2006 `"2006"', add
label define us10a_yrimmig_lbl 2007 `"2007"', add
label define us10a_yrimmig_lbl 2008 `"2008"', add
label define us10a_yrimmig_lbl 2009 `"2009"', add
label define us10a_yrimmig_lbl 2010 `"2010"', add
label values us10a_yrimmig us10a_yrimmig_lbl

label define us10a_vetstat_lbl 00 `"NIU (not in universe)"'
label define us10a_vetstat_lbl 11 `"No military service"', add
label define us10a_vetstat_lbl 12 `"Military service, but currently on active duty"', add
label define us10a_vetstat_lbl 13 `"Training for Reserves or National Guard only"', add
label define us10a_vetstat_lbl 21 `"Veteran, on active duty prior to past year"', add
label define us10a_vetstat_lbl 22 `"Veteran, on active duty in past year"', add
label values us10a_vetstat us10a_vetstat_lbl

label define us10a_ind_lbl 0000 `"NIU (not in universe)"'
label define us10a_ind_lbl 0170 `"Crop production"', add
label define us10a_ind_lbl 0180 `"Animal production"', add
label define us10a_ind_lbl 0190 `"Forestry except logging"', add
label define us10a_ind_lbl 0270 `"Logging"', add
label define us10a_ind_lbl 0280 `"Fishing, hunting, and trapping"', add
label define us10a_ind_lbl 0290 `"Support activities for agriculture and forestry"', add
label define us10a_ind_lbl 0370 `"Oil and gas extraction"', add
label define us10a_ind_lbl 0380 `"Coal mining"', add
label define us10a_ind_lbl 0390 `"Metal ore mining"', add
label define us10a_ind_lbl 0470 `"Nonmetallic mineral mining and quarrying"', add
label define us10a_ind_lbl 0490 `"Support activities for mining"', add
label define us10a_ind_lbl 0570 `"Electric power generation, transmission and distribution"', add
label define us10a_ind_lbl 0580 `"Natural gas distribution"', add
label define us10a_ind_lbl 0590 `"Electric and gas, and other combinations"', add
label define us10a_ind_lbl 0670 `"Water, steam, air conditioning, and irrigation systems"', add
label define us10a_ind_lbl 0680 `"Sewage treatment facilities"', add
label define us10a_ind_lbl 0690 `"Not specified utilities"', add
label define us10a_ind_lbl 0770 `"Construction, including cleaning during and immediately after"', add
label define us10a_ind_lbl 1070 `"Animal food, grain, and oilseed milling"', add
label define us10a_ind_lbl 1080 `"Sugar and confectionery products"', add
label define us10a_ind_lbl 1090 `"Fruit and vegetable preserving and specialty food manufacturing"', add
label define us10a_ind_lbl 1170 `"Dairy product manufacturing"', add
label define us10a_ind_lbl 1180 `"Animal slaughtering and processing"', add
label define us10a_ind_lbl 1190 `"Retail bakeries"', add
label define us10a_ind_lbl 1270 `"Bakeries, except retail"', add
label define us10a_ind_lbl 1280 `"Seafood and other miscellaneous foods, not elsewhere classified"', add
label define us10a_ind_lbl 1290 `"Not specified food industries"', add
label define us10a_ind_lbl 1370 `"Beverage manufacturing"', add
label define us10a_ind_lbl 1390 `"Tobacco manufacturing"', add
label define us10a_ind_lbl 1470 `"Fiber, yarn, and thread mills"', add
label define us10a_ind_lbl 1480 `"Fabric mills, except knitting"', add
label define us10a_ind_lbl 1490 `"Textile and fabric finishing and coating mills"', add
label define us10a_ind_lbl 1570 `"Carpets and rug mills"', add
label define us10a_ind_lbl 1590 `"Textile product mills, except carpet and rug"', add
label define us10a_ind_lbl 1670 `"Knitting mills"', add
label define us10a_ind_lbl 1680 `"Cut and sew apparel manufacturing"', add
label define us10a_ind_lbl 1690 `"Apparel accessories and other apparel manufacturing"', add
label define us10a_ind_lbl 1770 `"Footwear manufacturing"', add
label define us10a_ind_lbl 1790 `"Leather tanning and finishing and other allied products manufacturing"', add
label define us10a_ind_lbl 1870 `"Pulp, paper, and paperboard mills"', add
label define us10a_ind_lbl 1880 `"Paperboard containers and boxes"', add
label define us10a_ind_lbl 1890 `"Miscellaneous paper and pulp products"', add
label define us10a_ind_lbl 1990 `"Printing and related support activities"', add
label define us10a_ind_lbl 2070 `"Petroleum refining"', add
label define us10a_ind_lbl 2090 `"Miscellaneous petroleum and coal products"', add
label define us10a_ind_lbl 2170 `"Resin, synthetic rubber, and fibers and filaments manufacturing"', add
label define us10a_ind_lbl 2180 `"Agricultural chemical manufacturing"', add
label define us10a_ind_lbl 2190 `"Pharmaceutical and medicine manufacturing"', add
label define us10a_ind_lbl 2270 `"Paint, coating, and adhesives manufacturing"', add
label define us10a_ind_lbl 2280 `"Soap, cleaning compound, and cosmetic manufacturing"', add
label define us10a_ind_lbl 2290 `"Industrial and miscellaneous chemicals"', add
label define us10a_ind_lbl 2370 `"Plastics product manufacturing"', add
label define us10a_ind_lbl 2380 `"Tire manufacturing"', add
label define us10a_ind_lbl 2390 `"Rubber products, except tires, manufacturing"', add
label define us10a_ind_lbl 2470 `"Pottery, ceramics, and plumbing fixture manufacturing"', add
label define us10a_ind_lbl 2480 `"Structural clay product manufacturing"', add
label define us10a_ind_lbl 2490 `"Glass and glass product manufacturing"', add
label define us10a_ind_lbl 2570 `"Cement, concrete, lime, and gypsum product manufacturing"', add
label define us10a_ind_lbl 2590 `"Miscellaneous nonmetallic mineral product manufacturing"', add
label define us10a_ind_lbl 2670 `"Iron and steel mills and steel product manufacturing"', add
label define us10a_ind_lbl 2680 `"Aluminum production and processing"', add
label define us10a_ind_lbl 2690 `"Nonferrous metal, except aluminum, production and processing"', add
label define us10a_ind_lbl 2770 `"Foundries"', add
label define us10a_ind_lbl 2780 `"Metal forgings and stampings"', add
label define us10a_ind_lbl 2790 `"Cutlery and hand tool manufacturing"', add
label define us10a_ind_lbl 2870 `"Structural metals, and boiler, tank, and shipping container manufacturing"', add
label define us10a_ind_lbl 2880 `"Machine shops, turned product, screw, nut, and bolt manufacturing"', add
label define us10a_ind_lbl 2890 `"Coating, engraving, heat treating and allied activities"', add
label define us10a_ind_lbl 2970 `"Ordnance"', add
label define us10a_ind_lbl 2980 `"Miscellaneous fabricated metal products manufacturing"', add
label define us10a_ind_lbl 2990 `"Not specified metal industries"', add
label define us10a_ind_lbl 3070 `"Agricultural implement manufacturing"', add
label define us10a_ind_lbl 3080 `"Construction, and mining, oil, and gas field machinery manufacturing"', add
label define us10a_ind_lbl 3090 `"Commercial and service industry machinery manufacturing"', add
label define us10a_ind_lbl 3170 `"Metalworking machinery manufacturing"', add
label define us10a_ind_lbl 3180 `"Engines, turbines, and power transmission equipment manufacturing"', add
label define us10a_ind_lbl 3190 `"Machinery manufacturing, not elsewhere classified"', add
label define us10a_ind_lbl 3290 `"Not specified machinery manufacturing"', add
label define us10a_ind_lbl 3360 `"Computer and peripheral equipment manufacturing"', add
label define us10a_ind_lbl 3370 `"Communications, and audio and video equipment manufacturing"', add
label define us10a_ind_lbl 3380 `"Navigational, measuring, electromedical, and control instruments manufacturing"', add
label define us10a_ind_lbl 3390 `"Electronic component and product manufacturing, not elsewhere classified"', add
label define us10a_ind_lbl 3470 `"Household appliance manufacturing"', add
label define us10a_ind_lbl 3490 `"Electric lighting and electrical equipment manufacturing, and other electrical component manufacturing, not elsewhere classified"', add
label define us10a_ind_lbl 3570 `"Motor vehicles and motor vehicle equipment manufacturing"', add
label define us10a_ind_lbl 3580 `"Aircraft and parts manufacturing"', add
label define us10a_ind_lbl 3590 `"Aerospace product and parts manufacturing"', add
label define us10a_ind_lbl 3670 `"Railroad rolling stock manufacturing"', add
label define us10a_ind_lbl 3680 `"Ship and boat building"', add
label define us10a_ind_lbl 3690 `"Other transportation equipment manufacturing"', add
label define us10a_ind_lbl 3770 `"Sawmills and wood preservation"', add
label define us10a_ind_lbl 3780 `"Veneer, plywood, and engineered wood products"', add
label define us10a_ind_lbl 3790 `"Prefabricated wood buildings and mobile homes"', add
label define us10a_ind_lbl 3870 `"Miscellaneous wood products"', add
label define us10a_ind_lbl 3890 `"Furniture and related products manufacturing"', add
label define us10a_ind_lbl 3960 `"Medical equipment and supplies manufacturing"', add
label define us10a_ind_lbl 3970 `"Sporting and athletic goods, and doll, toy, and game manufacturing"', add
label define us10a_ind_lbl 3980 `"Miscellaneous manufacturing, not elsewhere classified"', add
label define us10a_ind_lbl 3990 `"Not specified manufacturing industries"', add
label define us10a_ind_lbl 4070 `"Motor vehicles, parts and supplies, merchant wholesalers"', add
label define us10a_ind_lbl 4080 `"Furniture and home furnishings, merchant wholesalers"', add
label define us10a_ind_lbl 4090 `"Lumber and other construction materials, merchant wholesalers"', add
label define us10a_ind_lbl 4170 `"Professional and commercial equipment and supplies, merchant wholesalers"', add
label define us10a_ind_lbl 4180 `"Metals and minerals, except petroleum, merchant wholesalers"', add
label define us10a_ind_lbl 4190 `"Electrical goods, merchant wholesalers"', add
label define us10a_ind_lbl 4260 `"Hardware, plumbing and heating equipment, and supplies, merchant wholesalers"', add
label define us10a_ind_lbl 4270 `"Machinery, equipment, and supplies, merchant wholesalers"', add
label define us10a_ind_lbl 4280 `"Recyclable material, merchant wholesalers"', add
label define us10a_ind_lbl 4290 `"Miscellaneous durable goods, merchant wholesalers"', add
label define us10a_ind_lbl 4370 `"Paper and paper products, merchant wholesalers"', add
label define us10a_ind_lbl 4380 `"Drugs, sundries, and chemical and allied products, merchant wholesalers"', add
label define us10a_ind_lbl 4390 `"Apparel, fabrics, and notions, merchant wholesalers"', add
label define us10a_ind_lbl 4470 `"Groceries and related products, merchant wholesalers"', add
label define us10a_ind_lbl 4480 `"Farm product raw materials, merchant wholesalers"', add
label define us10a_ind_lbl 4490 `"Petroleum and petroleum products, merchant wholesalers"', add
label define us10a_ind_lbl 4560 `"Alcoholic beverages, merchant wholesalers"', add
label define us10a_ind_lbl 4570 `"Farm supplies, merchant wholesalers"', add
label define us10a_ind_lbl 4580 `"Miscellaneous nondurable goods, merchant wholesalers"', add
label define us10a_ind_lbl 4585 `"Wholesale electronic markets, agents and brokers"', add
label define us10a_ind_lbl 4590 `"Not specified wholesale trade"', add
label define us10a_ind_lbl 4670 `"Automobile dealers"', add
label define us10a_ind_lbl 4680 `"Other motor vehicle dealers"', add
label define us10a_ind_lbl 4690 `"Auto parts, accessories, and tire stores"', add
label define us10a_ind_lbl 4770 `"Furniture and home furnishings stores"', add
label define us10a_ind_lbl 4780 `"Household appliance stores"', add
label define us10a_ind_lbl 4790 `"Radio, TV, and computer stores"', add
label define us10a_ind_lbl 4870 `"Building material and supplies dealers"', add
label define us10a_ind_lbl 4880 `"Hardware stores"', add
label define us10a_ind_lbl 4890 `"Lawn and garden equipment and supplies stores"', add
label define us10a_ind_lbl 4970 `"Grocery stores"', add
label define us10a_ind_lbl 4980 `"Specialty food stores"', add
label define us10a_ind_lbl 4990 `"Beer, wine, and liquor stores"', add
label define us10a_ind_lbl 5070 `"Pharmacies and drug stores"', add
label define us10a_ind_lbl 5080 `"Health and personal care, except drug stores"', add
label define us10a_ind_lbl 5090 `"Gasoline stations"', add
label define us10a_ind_lbl 5170 `"Clothing stores"', add
label define us10a_ind_lbl 5180 `"Shoe stores"', add
label define us10a_ind_lbl 5190 `"Jewelry, luggage, and leather goods stores"', add
label define us10a_ind_lbl 5270 `"Sporting goods, camera, and hobby and toy stores"', add
label define us10a_ind_lbl 5280 `"Sewing, needlework, and piece goods stores"', add
label define us10a_ind_lbl 5290 `"Music stores"', add
label define us10a_ind_lbl 5370 `"Book stores and news dealers"', add
label define us10a_ind_lbl 5380 `"Department and discount stores"', add
label define us10a_ind_lbl 5390 `"Miscellaneous general merchandise stores"', add
label define us10a_ind_lbl 5470 `"Retail florists"', add
label define us10a_ind_lbl 5480 `"Office supplies and stationary stores"', add
label define us10a_ind_lbl 5490 `"Used merchandise stores"', add
label define us10a_ind_lbl 5570 `"Gift, novelty, and souvenir shops"', add
label define us10a_ind_lbl 5580 `"Miscellaneous retail stores"', add
label define us10a_ind_lbl 5590 `"Electronic shopping"', add
label define us10a_ind_lbl 5591 `"Electronic auctions"', add
label define us10a_ind_lbl 5592 `"Mail-order houses"', add
label define us10a_ind_lbl 5670 `"Vending machine operators"', add
label define us10a_ind_lbl 5680 `"Fuel dealers"', add
label define us10a_ind_lbl 5690 `"Other direct selling establishments"', add
label define us10a_ind_lbl 5790 `"Not specified retail trade"', add
label define us10a_ind_lbl 6070 `"Air transportation"', add
label define us10a_ind_lbl 6080 `"Rail transportation"', add
label define us10a_ind_lbl 6090 `"Water transportation"', add
label define us10a_ind_lbl 6170 `"Truck transportation"', add
label define us10a_ind_lbl 6180 `"Bus service and urban transit"', add
label define us10a_ind_lbl 6190 `"Taxi and limousine service"', add
label define us10a_ind_lbl 6270 `"Pipeline transportation"', add
label define us10a_ind_lbl 6280 `"Scenic and sightseeing transportation"', add
label define us10a_ind_lbl 6290 `"Services incidental to transportation"', add
label define us10a_ind_lbl 6370 `"Postal Service"', add
label define us10a_ind_lbl 6380 `"Couriers and messengers"', add
label define us10a_ind_lbl 6390 `"Warehousing and storage"', add
label define us10a_ind_lbl 6470 `"Newspaper publishers"', add
label define us10a_ind_lbl 6480 `"Periodical, book, and directory publishers"', add
label define us10a_ind_lbl 6490 `"Software publishers"', add
label define us10a_ind_lbl 6570 `"Motion pictures and video industries"', add
label define us10a_ind_lbl 6590 `"Sound recording industries"', add
label define us10a_ind_lbl 6670 `"Broadcasting, except Internet"', add
label define us10a_ind_lbl 6672 `"Internet publishing and broadcasting and web search portals"', add
label define us10a_ind_lbl 6680 `"Wired telecommunications carriers"', add
label define us10a_ind_lbl 6690 `"Other telecommunication services, except wired telecommunications carriers"', add
label define us10a_ind_lbl 6695 `"Data processing, hosting, and related services"', add
label define us10a_ind_lbl 6770 `"Libraries and archives"', add
label define us10a_ind_lbl 6780 `"Other information services, except libraries and archives, and Internet publishing and broadcasting and web search portals"', add
label define us10a_ind_lbl 6870 `"Banking and related activities"', add
label define us10a_ind_lbl 6880 `"Savings institutions, including credit unions"', add
label define us10a_ind_lbl 6890 `"Non-depository credit and related activities"', add
label define us10a_ind_lbl 6970 `"Securities, commodities, funds, trusts, and other financial investments"', add
label define us10a_ind_lbl 6990 `"Insurance carriers and related activities"', add
label define us10a_ind_lbl 7070 `"Real estate"', add
label define us10a_ind_lbl 7080 `"Automotive equipment rental and leasing"', add
label define us10a_ind_lbl 7170 `"Video tape and disk rental"', add
label define us10a_ind_lbl 7180 `"Other consumer goods rental"', add
label define us10a_ind_lbl 7190 `"Commercial, industrial, and other intangible assets rental and leasing"', add
label define us10a_ind_lbl 7270 `"Legal services"', add
label define us10a_ind_lbl 7280 `"Accounting, tax preparation, bookkeeping, and payroll services"', add
label define us10a_ind_lbl 7290 `"Architectural, engineering, and related services"', add
label define us10a_ind_lbl 7370 `"Specialized design services"', add
label define us10a_ind_lbl 7380 `"Computer systems design and related services"', add
label define us10a_ind_lbl 7390 `"Management, scientific, and technical consulting services"', add
label define us10a_ind_lbl 7460 `"Scientific research and development services"', add
label define us10a_ind_lbl 7470 `"Advertising and related services"', add
label define us10a_ind_lbl 7480 `"Veterinary services"', add
label define us10a_ind_lbl 7490 `"Other professional, scientific, and technical services"', add
label define us10a_ind_lbl 7570 `"Management of companies and enterprises"', add
label define us10a_ind_lbl 7580 `"Employment services"', add
label define us10a_ind_lbl 7590 `"Business support services"', add
label define us10a_ind_lbl 7670 `"Travel arrangements and reservation services"', add
label define us10a_ind_lbl 7680 `"Investigation and security services"', add
label define us10a_ind_lbl 7690 `"Services to buildings and dwellings, except construction cleaning"', add
label define us10a_ind_lbl 7770 `"Landscaping services"', add
label define us10a_ind_lbl 7780 `"Other administrative and other support services"', add
label define us10a_ind_lbl 7790 `"Waste management and remediation services"', add
label define us10a_ind_lbl 7860 `"Elementary and secondary schools"', add
label define us10a_ind_lbl 7870 `"Colleges and universities, including junior colleges"', add
label define us10a_ind_lbl 7880 `"Business, technical, and trade schools and training"', add
label define us10a_ind_lbl 7890 `"Other schools and instruction, and educational services"', add
label define us10a_ind_lbl 7970 `"Offices of physicians"', add
label define us10a_ind_lbl 7980 `"Offices of dentists"', add
label define us10a_ind_lbl 7990 `"Office of chiropractors"', add
label define us10a_ind_lbl 8070 `"Offices of optometrists"', add
label define us10a_ind_lbl 8080 `"Offices of other health practitioners"', add
label define us10a_ind_lbl 8090 `"Outpatient care centers"', add
label define us10a_ind_lbl 8170 `"Home health care services"', add
label define us10a_ind_lbl 8180 `"Other health care services"', add
label define us10a_ind_lbl 8190 `"Hospitals"', add
label define us10a_ind_lbl 8270 `"Nursing care facilities"', add
label define us10a_ind_lbl 8290 `"Residential care facilities, without nursing"', add
label define us10a_ind_lbl 8370 `"Individual and family services"', add
label define us10a_ind_lbl 8380 `"Community food and housing, and emergency services"', add
label define us10a_ind_lbl 8390 `"Vocational rehabilitation services"', add
label define us10a_ind_lbl 8470 `"Child day care services"', add
label define us10a_ind_lbl 8560 `"Independent artists, performing arts, spectator sports, and related industries"', add
label define us10a_ind_lbl 8570 `"Museums, art galleries, historical sites, and similar institutions"', add
label define us10a_ind_lbl 8580 `"Bowling centers"', add
label define us10a_ind_lbl 8590 `"Other amusement, gambling, and recreation industries"', add
label define us10a_ind_lbl 8660 `"Traveler accommodation"', add
label define us10a_ind_lbl 8670 `"Recreational vehicle parks and camps, and rooming and boarding houses"', add
label define us10a_ind_lbl 8680 `"Restaurants and other food services"', add
label define us10a_ind_lbl 8690 `"Drinking places, alcoholic beverages"', add
label define us10a_ind_lbl 8770 `"Automotive repair and maintenance"', add
label define us10a_ind_lbl 8780 `"Car washes"', add
label define us10a_ind_lbl 8790 `"Electronic and precision equipment repair and maintenance"', add
label define us10a_ind_lbl 8870 `"Commercial and industrial machinery and equipment repair and maintenance"', add
label define us10a_ind_lbl 8880 `"Personal and household goods repair and maintenance"', add
label define us10a_ind_lbl 8970 `"Barber shops"', add
label define us10a_ind_lbl 8980 `"Beauty salons"', add
label define us10a_ind_lbl 8990 `"Nail salons and other personal care services"', add
label define us10a_ind_lbl 9070 `"Dry cleaning and laundry services"', add
label define us10a_ind_lbl 9080 `"Funeral homes, cemeteries and crematories"', add
label define us10a_ind_lbl 9090 `"Other personal services"', add
label define us10a_ind_lbl 9160 `"Religious organizations"', add
label define us10a_ind_lbl 9170 `"Civic, social, advocacy organizations, and grantmaking and giving services"', add
label define us10a_ind_lbl 9180 `"Labor unions"', add
label define us10a_ind_lbl 9190 `"Professional, political, and similar organizations"', add
label define us10a_ind_lbl 9290 `"Private households"', add
label define us10a_ind_lbl 9370 `"Executive offices and legislative bodies"', add
label define us10a_ind_lbl 9380 `"Public finance activities"', add
label define us10a_ind_lbl 9390 `"Other general government and support"', add
label define us10a_ind_lbl 9470 `"Justice, public order, and safety activities"', add
label define us10a_ind_lbl 9480 `"Administration of human resource programs"', add
label define us10a_ind_lbl 9490 `"Administration of environmental quality and housing programs"', add
label define us10a_ind_lbl 9570 `"Administration of economic programs and space research"', add
label define us10a_ind_lbl 9590 `"National security and international affairs"', add
label define us10a_ind_lbl 9670 `"U.S. Army"', add
label define us10a_ind_lbl 9680 `"U.S. Air Force"', add
label define us10a_ind_lbl 9690 `"U.S. Navy"', add
label define us10a_ind_lbl 9770 `"U.S. Marines"', add
label define us10a_ind_lbl 9780 `"U.S. Coast Guard"', add
label define us10a_ind_lbl 9790 `"U.S. Armed Forces, branch not specified"', add
label define us10a_ind_lbl 9870 `"Military reserves or National Guard"', add
label values us10a_ind us10a_ind_lbl

label define us10a_degfield_lbl 0000 `"NIU (not in universe)"'
label define us10a_degfield_lbl 1100 `"General agriculture"', add
label define us10a_degfield_lbl 1101 `"Agriculture production and management"', add
label define us10a_degfield_lbl 1102 `"Agricultural economics"', add
label define us10a_degfield_lbl 1103 `"Animal sciences"', add
label define us10a_degfield_lbl 1104 `"Food science"', add
label define us10a_degfield_lbl 1105 `"Plant science and agronomy"', add
label define us10a_degfield_lbl 1106 `"Soil science"', add
label define us10a_degfield_lbl 1199 `"Miscellaneous agriculture"', add
label define us10a_degfield_lbl 1301 `"Environmental science"', add
label define us10a_degfield_lbl 1302 `"Forestry"', add
label define us10a_degfield_lbl 1303 `"Natural resources management"', add
label define us10a_degfield_lbl 1401 `"Architecture"', add
label define us10a_degfield_lbl 1501 `"Area, ethnic, and civilization studies"', add
label define us10a_degfield_lbl 1901 `"Communications"', add
label define us10a_degfield_lbl 1902 `"Journalism"', add
label define us10a_degfield_lbl 1903 `"Mass media"', add
label define us10a_degfield_lbl 1904 `"Advertising and public relations"', add
label define us10a_degfield_lbl 2001 `"Communication technologies"', add
label define us10a_degfield_lbl 2100 `"Computer and information systems"', add
label define us10a_degfield_lbl 2101 `"Computer programming and data processing"', add
label define us10a_degfield_lbl 2102 `"Computer science"', add
label define us10a_degfield_lbl 2105 `"Information sciences"', add
label define us10a_degfield_lbl 2106 `"Computer information management and security"', add
label define us10a_degfield_lbl 2107 `"Computer networking and telecommunications"', add
label define us10a_degfield_lbl 2201 `"Cosmetology services and culinary arts"', add
label define us10a_degfield_lbl 2300 `"General education"', add
label define us10a_degfield_lbl 2301 `"Educational administration and supervision"', add
label define us10a_degfield_lbl 2303 `"School student counseling"', add
label define us10a_degfield_lbl 2304 `"Elementary education"', add
label define us10a_degfield_lbl 2305 `"Mathematics teacher education"', add
label define us10a_degfield_lbl 2306 `"Physical and health education teaching"', add
label define us10a_degfield_lbl 2307 `"Early childhood education"', add
label define us10a_degfield_lbl 2308 `"Science and computer teacher education"', add
label define us10a_degfield_lbl 2309 `"Secondary teacher education"', add
label define us10a_degfield_lbl 2310 `"Special needs education"', add
label define us10a_degfield_lbl 2311 `"Social science or history teacher education"', add
label define us10a_degfield_lbl 2312 `"Teacher education: multiple levels"', add
label define us10a_degfield_lbl 2313 `"Language and drama education"', add
label define us10a_degfield_lbl 2314 `"Art and music education"', add
label define us10a_degfield_lbl 2399 `"Miscellaneous education"', add
label define us10a_degfield_lbl 2400 `"General engineering"', add
label define us10a_degfield_lbl 2401 `"Aerospace engineering"', add
label define us10a_degfield_lbl 2402 `"Biological engineering"', add
label define us10a_degfield_lbl 2403 `"Architectural engineering"', add
label define us10a_degfield_lbl 2404 `"Biomedical engineering"', add
label define us10a_degfield_lbl 2405 `"Chemical engineering"', add
label define us10a_degfield_lbl 2406 `"Civil engineering"', add
label define us10a_degfield_lbl 2407 `"Computer engineering"', add
label define us10a_degfield_lbl 2408 `"Electrical engineering"', add
label define us10a_degfield_lbl 2409 `"Engineering mechanics, physics, and science"', add
label define us10a_degfield_lbl 2410 `"Environmental engineering"', add
label define us10a_degfield_lbl 2411 `"Geological and geophysical engineering"', add
label define us10a_degfield_lbl 2412 `"Industrial and manufacturing engineering"', add
label define us10a_degfield_lbl 2413 `"Materials engineering and materials science"', add
label define us10a_degfield_lbl 2414 `"Mechanical engineering"', add
label define us10a_degfield_lbl 2415 `"Metallurgical engineering"', add
label define us10a_degfield_lbl 2416 `"Mining and mineral engineering"', add
label define us10a_degfield_lbl 2417 `"Naval architecture and marine engineering"', add
label define us10a_degfield_lbl 2418 `"Nuclear engineering"', add
label define us10a_degfield_lbl 2419 `"Petroleum engineering"', add
label define us10a_degfield_lbl 2499 `"Miscellaneous engineering"', add
label define us10a_degfield_lbl 2500 `"Engineering technologies"', add
label define us10a_degfield_lbl 2501 `"Engineering and industrial management"', add
label define us10a_degfield_lbl 2502 `"Electrical engineering technology"', add
label define us10a_degfield_lbl 2503 `"Industrial production technologies"', add
label define us10a_degfield_lbl 2504 `"Mechanical engineering related technologies"', add
label define us10a_degfield_lbl 2599 `"Miscellaneous engineering technologies"', add
label define us10a_degfield_lbl 2601 `"Linguistics and comparative language and literature"', add
label define us10a_degfield_lbl 2602 `"French, german, latin and other common foreign language studies"', add
label define us10a_degfield_lbl 2603 `"Other foreign languages"', add
label define us10a_degfield_lbl 2901 `"Family and consumer sciences"', add
label define us10a_degfield_lbl 3201 `"Court reporting"', add
label define us10a_degfield_lbl 3202 `"Pre-law and legal studies"', add
label define us10a_degfield_lbl 3301 `"English language and literature"', add
label define us10a_degfield_lbl 3302 `"Composition and speech"', add
label define us10a_degfield_lbl 3401 `"Liberal arts"', add
label define us10a_degfield_lbl 3402 `"Humanities"', add
label define us10a_degfield_lbl 3501 `"Library science"', add
label define us10a_degfield_lbl 3600 `"Biology"', add
label define us10a_degfield_lbl 3601 `"Biochemical sciences"', add
label define us10a_degfield_lbl 3602 `"Botany"', add
label define us10a_degfield_lbl 3603 `"Molecular biology"', add
label define us10a_degfield_lbl 3604 `"Ecology"', add
label define us10a_degfield_lbl 3605 `"Genetics"', add
label define us10a_degfield_lbl 3606 `"Microbiology"', add
label define us10a_degfield_lbl 3607 `"Pharmacology"', add
label define us10a_degfield_lbl 3608 `"Physiology"', add
label define us10a_degfield_lbl 3609 `"Zoology"', add
label define us10a_degfield_lbl 3611 `"Neuroscience"', add
label define us10a_degfield_lbl 3699 `"Miscellaneous biology"', add
label define us10a_degfield_lbl 3700 `"Mathematics"', add
label define us10a_degfield_lbl 3701 `"Applied mathematics"', add
label define us10a_degfield_lbl 3702 `"Statistics and decision science"', add
label define us10a_degfield_lbl 3801 `"Military technologies"', add
label define us10a_degfield_lbl 4000 `"Interdisciplinary and multi-disciplinary studies (general)"', add
label define us10a_degfield_lbl 4001 `"Intercultural and international studies"', add
label define us10a_degfield_lbl 4002 `"Nutrition sciences"', add
label define us10a_degfield_lbl 4005 `"Mathematics and computer science"', add
label define us10a_degfield_lbl 4006 `"Cognitive science and biopsychology"', add
label define us10a_degfield_lbl 4007 `"Interdisciplinary social sciences"', add
label define us10a_degfield_lbl 4101 `"Physical fitness, parks, recreation, and leisure"', add
label define us10a_degfield_lbl 4801 `"Philosophy and religious studies"', add
label define us10a_degfield_lbl 4901 `"Theology and religious vocations"', add
label define us10a_degfield_lbl 5000 `"Physical sciences"', add
label define us10a_degfield_lbl 5001 `"Astronomy and astrophysics"', add
label define us10a_degfield_lbl 5002 `"Atmospheric sciences and meteorology"', add
label define us10a_degfield_lbl 5003 `"Chemistry"', add
label define us10a_degfield_lbl 5004 `"Geology and earth science"', add
label define us10a_degfield_lbl 5005 `"Geosciences"', add
label define us10a_degfield_lbl 5006 `"Oceanography"', add
label define us10a_degfield_lbl 5007 `"Physics"', add
label define us10a_degfield_lbl 5008 `"Materials science"', add
label define us10a_degfield_lbl 5098 `"Multi-disciplinary or general science"', add
label define us10a_degfield_lbl 5102 `"Nuclear, industrial radiology, and biological technologies"', add
label define us10a_degfield_lbl 5200 `"Psychology"', add
label define us10a_degfield_lbl 5201 `"Educational psychology"', add
label define us10a_degfield_lbl 5202 `"Clinical psychology"', add
label define us10a_degfield_lbl 5203 `"Counseling psychology"', add
label define us10a_degfield_lbl 5205 `"Industrial and organizational psychology"', add
label define us10a_degfield_lbl 5206 `"Social psychology"', add
label define us10a_degfield_lbl 5299 `"Miscellaneous psychology"', add
label define us10a_degfield_lbl 5301 `"Criminal justice and fire protection"', add
label define us10a_degfield_lbl 5401 `"Public administration"', add
label define us10a_degfield_lbl 5402 `"Public policy"', add
label define us10a_degfield_lbl 5403 `"Human services and community organization"', add
label define us10a_degfield_lbl 5404 `"Social work"', add
label define us10a_degfield_lbl 5500 `"General social sciences"', add
label define us10a_degfield_lbl 5501 `"Economics"', add
label define us10a_degfield_lbl 5502 `"Anthropology and archeology"', add
label define us10a_degfield_lbl 5503 `"Criminology"', add
label define us10a_degfield_lbl 5504 `"Geography"', add
label define us10a_degfield_lbl 5505 `"International relations"', add
label define us10a_degfield_lbl 5506 `"Political science and government"', add
label define us10a_degfield_lbl 5507 `"Sociology"', add
label define us10a_degfield_lbl 5599 `"Miscellaneous social sciences"', add
label define us10a_degfield_lbl 5601 `"Construction services"', add
label define us10a_degfield_lbl 5701 `"Electrical and mechanic repairs and technologies"', add
label define us10a_degfield_lbl 5901 `"Transportation sciences and technologies"', add
label define us10a_degfield_lbl 6000 `"Fine arts"', add
label define us10a_degfield_lbl 6001 `"Drama and theater arts"', add
label define us10a_degfield_lbl 6002 `"Music"', add
label define us10a_degfield_lbl 6003 `"Visual and performing arts"', add
label define us10a_degfield_lbl 6004 `"Commercial art and graphic design"', add
label define us10a_degfield_lbl 6005 `"Film, video and photographic arts"', add
label define us10a_degfield_lbl 6006 `"Art history and criticism"', add
label define us10a_degfield_lbl 6007 `"Studio arts"', add
label define us10a_degfield_lbl 6099 `"Miscellaneous fine arts"', add
label define us10a_degfield_lbl 6100 `"General medical and health services"', add
label define us10a_degfield_lbl 6102 `"Communication disorders sciences and services"', add
label define us10a_degfield_lbl 6103 `"Health and medical administrative services"', add
label define us10a_degfield_lbl 6104 `"Medical assisting services"', add
label define us10a_degfield_lbl 6105 `"Medical technologies technicians"', add
label define us10a_degfield_lbl 6106 `"Health and medical preparatory programs"', add
label define us10a_degfield_lbl 6107 `"Nursing"', add
label define us10a_degfield_lbl 6108 `"Pharmacy, pharmaceutical sciences, and administration"', add
label define us10a_degfield_lbl 6109 `"Treatment therapy professions"', add
label define us10a_degfield_lbl 6110 `"Community and public health"', add
label define us10a_degfield_lbl 6199 `"Miscellaneous health medical professions"', add
label define us10a_degfield_lbl 6200 `"General business"', add
label define us10a_degfield_lbl 6201 `"Accounting"', add
label define us10a_degfield_lbl 6202 `"Actuarial science"', add
label define us10a_degfield_lbl 6203 `"Business management and administration"', add
label define us10a_degfield_lbl 6204 `"Operations, logistics and e-commerce"', add
label define us10a_degfield_lbl 6205 `"Business economics"', add
label define us10a_degfield_lbl 6206 `"Marketing and marketing research"', add
label define us10a_degfield_lbl 6207 `"Finance"', add
label define us10a_degfield_lbl 6209 `"Human resources and personnel management"', add
label define us10a_degfield_lbl 6210 `"International business"', add
label define us10a_degfield_lbl 6211 `"Hospitality management"', add
label define us10a_degfield_lbl 6212 `"Management information systems and statistics"', add
label define us10a_degfield_lbl 6299 `"Miscellaneous business and medical administration"', add
label define us10a_degfield_lbl 6402 `"History"', add
label define us10a_degfield_lbl 6403 `"United states history"', add
label values us10a_degfield us10a_degfield_lbl

label define us10a_degfield2_lbl 0000 `"NIU (not in universe)"'
label define us10a_degfield2_lbl 1100 `"General agriculture"', add
label define us10a_degfield2_lbl 1101 `"Agriculture production and management"', add
label define us10a_degfield2_lbl 1102 `"Agricultural economics"', add
label define us10a_degfield2_lbl 1103 `"Animal sciences"', add
label define us10a_degfield2_lbl 1104 `"Food science"', add
label define us10a_degfield2_lbl 1105 `"Plant science and agronomy"', add
label define us10a_degfield2_lbl 1106 `"Soil science"', add
label define us10a_degfield2_lbl 1199 `"Miscellaneous agriculture"', add
label define us10a_degfield2_lbl 1301 `"Environmental science"', add
label define us10a_degfield2_lbl 1302 `"Forestry"', add
label define us10a_degfield2_lbl 1303 `"Natural resources management"', add
label define us10a_degfield2_lbl 1401 `"Architecture"', add
label define us10a_degfield2_lbl 1501 `"Area, ethnic, and civilization studies"', add
label define us10a_degfield2_lbl 1901 `"Communications"', add
label define us10a_degfield2_lbl 1902 `"Journalism"', add
label define us10a_degfield2_lbl 1903 `"Mass media"', add
label define us10a_degfield2_lbl 1904 `"Advertising and public relations"', add
label define us10a_degfield2_lbl 2001 `"Communication technologies"', add
label define us10a_degfield2_lbl 2100 `"Computer and information systems"', add
label define us10a_degfield2_lbl 2101 `"Computer programming and data processing"', add
label define us10a_degfield2_lbl 2102 `"Computer science"', add
label define us10a_degfield2_lbl 2105 `"Information sciences"', add
label define us10a_degfield2_lbl 2106 `"Computer information management and security"', add
label define us10a_degfield2_lbl 2107 `"Computer networking and telecommunications"', add
label define us10a_degfield2_lbl 2201 `"Cosmetology services and culinary arts"', add
label define us10a_degfield2_lbl 2300 `"General education"', add
label define us10a_degfield2_lbl 2301 `"Educational administration and supervision"', add
label define us10a_degfield2_lbl 2303 `"School student counseling"', add
label define us10a_degfield2_lbl 2304 `"Elementary education"', add
label define us10a_degfield2_lbl 2305 `"Mathematics teacher education"', add
label define us10a_degfield2_lbl 2306 `"Physical and health education teaching"', add
label define us10a_degfield2_lbl 2307 `"Early childhood education"', add
label define us10a_degfield2_lbl 2308 `"Science and computer teacher education"', add
label define us10a_degfield2_lbl 2309 `"Secondary teacher education"', add
label define us10a_degfield2_lbl 2310 `"Special needs education"', add
label define us10a_degfield2_lbl 2311 `"Social science or history teacher education"', add
label define us10a_degfield2_lbl 2312 `"Teacher education: multiple levels"', add
label define us10a_degfield2_lbl 2313 `"Language and drama education"', add
label define us10a_degfield2_lbl 2314 `"Art and music education"', add
label define us10a_degfield2_lbl 2399 `"Miscellaneous education"', add
label define us10a_degfield2_lbl 2400 `"General engineering"', add
label define us10a_degfield2_lbl 2401 `"Aerospace engineering"', add
label define us10a_degfield2_lbl 2402 `"Biological engineering"', add
label define us10a_degfield2_lbl 2403 `"Architectural engineering"', add
label define us10a_degfield2_lbl 2404 `"Biomedical engineering"', add
label define us10a_degfield2_lbl 2405 `"Chemical engineering"', add
label define us10a_degfield2_lbl 2406 `"Civil engineering"', add
label define us10a_degfield2_lbl 2407 `"Computer engineering"', add
label define us10a_degfield2_lbl 2408 `"Electrical engineering"', add
label define us10a_degfield2_lbl 2409 `"Engineering mechanics, physics, and science"', add
label define us10a_degfield2_lbl 2410 `"Environmental engineering"', add
label define us10a_degfield2_lbl 2411 `"Geological and geophysical engineering"', add
label define us10a_degfield2_lbl 2412 `"Industrial and manufacturing engineering"', add
label define us10a_degfield2_lbl 2413 `"Materials engineering and materials science"', add
label define us10a_degfield2_lbl 2414 `"Mechanical engineering"', add
label define us10a_degfield2_lbl 2415 `"Metallurgical engineering"', add
label define us10a_degfield2_lbl 2416 `"Mining and mineral engineering"', add
label define us10a_degfield2_lbl 2417 `"Naval architecture and marine engineering"', add
label define us10a_degfield2_lbl 2418 `"Nuclear engineering"', add
label define us10a_degfield2_lbl 2419 `"Petroleum engineering"', add
label define us10a_degfield2_lbl 2499 `"Miscellaneous engineering"', add
label define us10a_degfield2_lbl 2500 `"Engineering technologies"', add
label define us10a_degfield2_lbl 2501 `"Engineering and industrial management"', add
label define us10a_degfield2_lbl 2502 `"Electrical engineering technology"', add
label define us10a_degfield2_lbl 2503 `"Industrial production technologies"', add
label define us10a_degfield2_lbl 2504 `"Mechanical engineering related technologies"', add
label define us10a_degfield2_lbl 2599 `"Miscellaneous engineering technologies"', add
label define us10a_degfield2_lbl 2600 `"Linguistics and foreign languages"', add
label define us10a_degfield2_lbl 2601 `"Linguistics and comparative language and literature"', add
label define us10a_degfield2_lbl 2602 `"French, german, latin and other common foreign language studies"', add
label define us10a_degfield2_lbl 2603 `"Other foreign languages"', add
label define us10a_degfield2_lbl 2901 `"Family and consumer sciences"', add
label define us10a_degfield2_lbl 3201 `"Court reporting"', add
label define us10a_degfield2_lbl 3202 `"Pre-law and legal studies"', add
label define us10a_degfield2_lbl 3301 `"English language and literature"', add
label define us10a_degfield2_lbl 3302 `"Composition and speech"', add
label define us10a_degfield2_lbl 3401 `"Liberal arts"', add
label define us10a_degfield2_lbl 3402 `"Humanities"', add
label define us10a_degfield2_lbl 3501 `"Library science"', add
label define us10a_degfield2_lbl 3600 `"Biology"', add
label define us10a_degfield2_lbl 3601 `"Biochemical sciences"', add
label define us10a_degfield2_lbl 3602 `"Botany"', add
label define us10a_degfield2_lbl 3603 `"Molecular biology"', add
label define us10a_degfield2_lbl 3604 `"Ecology"', add
label define us10a_degfield2_lbl 3605 `"Genetics"', add
label define us10a_degfield2_lbl 3606 `"Microbiology"', add
label define us10a_degfield2_lbl 3607 `"Pharmacology"', add
label define us10a_degfield2_lbl 3608 `"Physiology"', add
label define us10a_degfield2_lbl 3609 `"Zoology"', add
label define us10a_degfield2_lbl 3699 `"Miscellaneous biology"', add
label define us10a_degfield2_lbl 3700 `"Mathematics"', add
label define us10a_degfield2_lbl 3701 `"Applied mathematics"', add
label define us10a_degfield2_lbl 3702 `"Statistics and decision science"', add
label define us10a_degfield2_lbl 3801 `"Military technologies"', add
label define us10a_degfield2_lbl 4000 `"Interdisciplinary and multi-disciplinary studies (general)"', add
label define us10a_degfield2_lbl 4001 `"Intercultural and international studies"', add
label define us10a_degfield2_lbl 4002 `"Nutrition sciences"', add
label define us10a_degfield2_lbl 4005 `"Mathematics and computer science"', add
label define us10a_degfield2_lbl 4006 `"Cognitive science and biopsychology"', add
label define us10a_degfield2_lbl 4007 `"Interdisciplinary social sciences"', add
label define us10a_degfield2_lbl 4008 `"Multi-disciplinary or general science"', add
label define us10a_degfield2_lbl 4101 `"Physical fitness, parks, recreation, and leisure"', add
label define us10a_degfield2_lbl 4801 `"Philosophy and religious studies"', add
label define us10a_degfield2_lbl 4901 `"Theology and religious vocations"', add
label define us10a_degfield2_lbl 5000 `"Physical sciences"', add
label define us10a_degfield2_lbl 5001 `"Astronomy and astrophysics"', add
label define us10a_degfield2_lbl 5002 `"Atmospheric sciences and meteorology"', add
label define us10a_degfield2_lbl 5003 `"Chemistry"', add
label define us10a_degfield2_lbl 5004 `"Geology and earth science"', add
label define us10a_degfield2_lbl 5005 `"Geosciences"', add
label define us10a_degfield2_lbl 5006 `"Oceanography"', add
label define us10a_degfield2_lbl 5007 `"Physics"', add
label define us10a_degfield2_lbl 5102 `"Nuclear, industrial radiology, and biological technologies"', add
label define us10a_degfield2_lbl 5200 `"Psychology"', add
label define us10a_degfield2_lbl 5201 `"Educational psychology"', add
label define us10a_degfield2_lbl 5202 `"Clinical psychology"', add
label define us10a_degfield2_lbl 5203 `"Counseling psychology"', add
label define us10a_degfield2_lbl 5205 `"Industrial and organizational psychology"', add
label define us10a_degfield2_lbl 5206 `"Social psychology"', add
label define us10a_degfield2_lbl 5299 `"Miscellaneous psychology"', add
label define us10a_degfield2_lbl 5301 `"Criminal justice and fire protection"', add
label define us10a_degfield2_lbl 5401 `"Public administration"', add
label define us10a_degfield2_lbl 5402 `"Public policy"', add
label define us10a_degfield2_lbl 5403 `"Human services and community organization"', add
label define us10a_degfield2_lbl 5404 `"Social work"', add
label define us10a_degfield2_lbl 5500 `"General social sciences"', add
label define us10a_degfield2_lbl 5501 `"Economics"', add
label define us10a_degfield2_lbl 5502 `"Anthropology and archeology"', add
label define us10a_degfield2_lbl 5503 `"Criminology"', add
label define us10a_degfield2_lbl 5504 `"Geography"', add
label define us10a_degfield2_lbl 5505 `"International relations"', add
label define us10a_degfield2_lbl 5506 `"Political science and government"', add
label define us10a_degfield2_lbl 5507 `"Sociology"', add
label define us10a_degfield2_lbl 5599 `"Miscellaneous social sciences"', add
label define us10a_degfield2_lbl 5601 `"Construction services"', add
label define us10a_degfield2_lbl 5701 `"Electrical and mechanic repairs and technologies"', add
label define us10a_degfield2_lbl 5901 `"Transportation sciences and technologies"', add
label define us10a_degfield2_lbl 6000 `"Fine arts"', add
label define us10a_degfield2_lbl 6001 `"Drama and theater arts"', add
label define us10a_degfield2_lbl 6002 `"Music"', add
label define us10a_degfield2_lbl 6003 `"Visual and performing arts"', add
label define us10a_degfield2_lbl 6004 `"Commercial art and graphic design"', add
label define us10a_degfield2_lbl 6005 `"Film, video and photographic arts"', add
label define us10a_degfield2_lbl 6006 `"Art history and criticism"', add
label define us10a_degfield2_lbl 6007 `"Studio arts"', add
label define us10a_degfield2_lbl 6100 `"General medical and health services"', add
label define us10a_degfield2_lbl 6102 `"Communication disorders sciences and services"', add
label define us10a_degfield2_lbl 6103 `"Health and medical administrative services"', add
label define us10a_degfield2_lbl 6104 `"Medical assisting services"', add
label define us10a_degfield2_lbl 6105 `"Medical technologies technicians"', add
label define us10a_degfield2_lbl 6106 `"Health and medical preparatory programs"', add
label define us10a_degfield2_lbl 6107 `"Nursing"', add
label define us10a_degfield2_lbl 6108 `"Pharmacy, pharmaceutical sciences, and administration"', add
label define us10a_degfield2_lbl 6109 `"Treatment therapy professions"', add
label define us10a_degfield2_lbl 6110 `"Community and public health"', add
label define us10a_degfield2_lbl 6199 `"Miscellaneous health medical professions"', add
label define us10a_degfield2_lbl 6200 `"General business"', add
label define us10a_degfield2_lbl 6201 `"Accounting"', add
label define us10a_degfield2_lbl 6202 `"Actuarial science"', add
label define us10a_degfield2_lbl 6203 `"Business management and administration"', add
label define us10a_degfield2_lbl 6204 `"Operations, logistics and e-commerce"', add
label define us10a_degfield2_lbl 6205 `"Business economics"', add
label define us10a_degfield2_lbl 6206 `"Marketing and marketing research"', add
label define us10a_degfield2_lbl 6207 `"Finance"', add
label define us10a_degfield2_lbl 6209 `"Human resources and personnel management"', add
label define us10a_degfield2_lbl 6210 `"International business"', add
label define us10a_degfield2_lbl 6211 `"Hospitality management"', add
label define us10a_degfield2_lbl 6212 `"Management information systems and statistics"', add
label define us10a_degfield2_lbl 6299 `"Miscellaneous business and medical administration"', add
label define us10a_degfield2_lbl 6402 `"History"', add
label define us10a_degfield2_lbl 6403 `"United states history"', add
label define us10a_degfield2_lbl 3611 `"Neuroscience"', add
label define us10a_degfield2_lbl 5008 `"Materials science"', add
label define us10a_degfield2_lbl 5098 `"Multi-disciplinary or general science"', add
label define us10a_degfield2_lbl 6099 `"Miscellaneous fine arts"', add
label define us10a_degfield2_lbl 9000 `"No second degree reported"', add
label values us10a_degfield2 us10a_degfield2_lbl

label define us10a_qdegfield_lbl 0 `"Not allocated"'
label define us10a_qdegfield_lbl 4 `"Allocated"', add
label values us10a_qdegfield us10a_qdegfield_lbl

label define us10a_qwrklstwk_lbl 0 `"Not allocated"'
label define us10a_qwrklstwk_lbl 4 `"Allocated"', add
label values us10a_qwrklstwk us10a_qwrklstwk_lbl

label define us10a_cbsubfam_lbl 0 `"Group quarters or not in subfamily"'
label define us10a_cbsubfam_lbl 1 `"1st subfamily in household"', add
label define us10a_cbsubfam_lbl 2 `"2nd subfamily in household"', add
label define us10a_cbsubfam_lbl 3 `"3rd"', add
label define us10a_cbsubfam_lbl 4 `"4th"', add
label values us10a_cbsubfam us10a_cbsubfam_lbl

label define us10a_cbsftype_lbl 0 `"Group quarters or not in subfamily"'
label define us10a_cbsftype_lbl 1 `"Married-couple related subfamily with children"', add
label define us10a_cbsftype_lbl 2 `"Married-couple related subfamily without children"', add
label define us10a_cbsftype_lbl 3 `"Father-child related subfamily"', add
label define us10a_cbsftype_lbl 4 `"Mother-child related subfamily"', add
label values us10a_cbsftype us10a_cbsftype_lbl

label define us10a_cbsfrelate_lbl 0 `"Group quarters or not in subfamily"'
label define us10a_cbsfrelate_lbl 1 `"Reference person"', add
label define us10a_cbsfrelate_lbl 2 `"Spouse (married-couple subfamily only)"', add
label define us10a_cbsfrelate_lbl 3 `"Child"', add
label values us10a_cbsfrelate us10a_cbsfrelate_lbl

label define us10a_birthyr_lbl 1915 `"1915"'
label define us10a_birthyr_lbl 1916 `"1916"', add
label define us10a_birthyr_lbl 1917 `"1917"', add
label define us10a_birthyr_lbl 1918 `"1918"', add
label define us10a_birthyr_lbl 1919 `"1919"', add
label define us10a_birthyr_lbl 1920 `"1920"', add
label define us10a_birthyr_lbl 1921 `"1921"', add
label define us10a_birthyr_lbl 1922 `"1922"', add
label define us10a_birthyr_lbl 1923 `"1923"', add
label define us10a_birthyr_lbl 1924 `"1924"', add
label define us10a_birthyr_lbl 1925 `"1925"', add
label define us10a_birthyr_lbl 1926 `"1926"', add
label define us10a_birthyr_lbl 1927 `"1927"', add
label define us10a_birthyr_lbl 1928 `"1928"', add
label define us10a_birthyr_lbl 1929 `"1929"', add
label define us10a_birthyr_lbl 1930 `"1930"', add
label define us10a_birthyr_lbl 1931 `"1931"', add
label define us10a_birthyr_lbl 1932 `"1932"', add
label define us10a_birthyr_lbl 1933 `"1933"', add
label define us10a_birthyr_lbl 1934 `"1934"', add
label define us10a_birthyr_lbl 1935 `"1935"', add
label define us10a_birthyr_lbl 1936 `"1936"', add
label define us10a_birthyr_lbl 1937 `"1937"', add
label define us10a_birthyr_lbl 1938 `"1938"', add
label define us10a_birthyr_lbl 1939 `"1939"', add
label define us10a_birthyr_lbl 1940 `"1940"', add
label define us10a_birthyr_lbl 1941 `"1941"', add
label define us10a_birthyr_lbl 1942 `"1942"', add
label define us10a_birthyr_lbl 1943 `"1943"', add
label define us10a_birthyr_lbl 1944 `"1944"', add
label define us10a_birthyr_lbl 1945 `"1945"', add
label define us10a_birthyr_lbl 1946 `"1946"', add
label define us10a_birthyr_lbl 1947 `"1947"', add
label define us10a_birthyr_lbl 1948 `"1948"', add
label define us10a_birthyr_lbl 1949 `"1949"', add
label define us10a_birthyr_lbl 1950 `"1950"', add
label define us10a_birthyr_lbl 1951 `"1951"', add
label define us10a_birthyr_lbl 1952 `"1952"', add
label define us10a_birthyr_lbl 1953 `"1953"', add
label define us10a_birthyr_lbl 1954 `"1954"', add
label define us10a_birthyr_lbl 1955 `"1955"', add
label define us10a_birthyr_lbl 1956 `"1956"', add
label define us10a_birthyr_lbl 1957 `"1957"', add
label define us10a_birthyr_lbl 1958 `"1958"', add
label define us10a_birthyr_lbl 1959 `"1959"', add
label define us10a_birthyr_lbl 1960 `"1960"', add
label define us10a_birthyr_lbl 1961 `"1961"', add
label define us10a_birthyr_lbl 1962 `"1962"', add
label define us10a_birthyr_lbl 1963 `"1963"', add
label define us10a_birthyr_lbl 1964 `"1964"', add
label define us10a_birthyr_lbl 1965 `"1965"', add
label define us10a_birthyr_lbl 1966 `"1966"', add
label define us10a_birthyr_lbl 1967 `"1967"', add
label define us10a_birthyr_lbl 1968 `"1968"', add
label define us10a_birthyr_lbl 1969 `"1969"', add
label define us10a_birthyr_lbl 1970 `"1970"', add
label define us10a_birthyr_lbl 1971 `"1971"', add
label define us10a_birthyr_lbl 1972 `"1972"', add
label define us10a_birthyr_lbl 1973 `"1973"', add
label define us10a_birthyr_lbl 1974 `"1974"', add
label define us10a_birthyr_lbl 1975 `"1975"', add
label define us10a_birthyr_lbl 1976 `"1976"', add
label define us10a_birthyr_lbl 1977 `"1977"', add
label define us10a_birthyr_lbl 1978 `"1978"', add
label define us10a_birthyr_lbl 1979 `"1979"', add
label define us10a_birthyr_lbl 1980 `"1980"', add
label define us10a_birthyr_lbl 1981 `"1981"', add
label define us10a_birthyr_lbl 1982 `"1982"', add
label define us10a_birthyr_lbl 1983 `"1983"', add
label define us10a_birthyr_lbl 1984 `"1984"', add
label define us10a_birthyr_lbl 1985 `"1985"', add
label define us10a_birthyr_lbl 1986 `"1986"', add
label define us10a_birthyr_lbl 1987 `"1987"', add
label define us10a_birthyr_lbl 1988 `"1988"', add
label define us10a_birthyr_lbl 1989 `"1989"', add
label define us10a_birthyr_lbl 1990 `"1990"', add
label define us10a_birthyr_lbl 1991 `"1991"', add
label define us10a_birthyr_lbl 1992 `"1992"', add
label define us10a_birthyr_lbl 1993 `"1993"', add
label define us10a_birthyr_lbl 1994 `"1994"', add
label define us10a_birthyr_lbl 1995 `"1995"', add
label define us10a_birthyr_lbl 1996 `"1996"', add
label define us10a_birthyr_lbl 1997 `"1997"', add
label define us10a_birthyr_lbl 1998 `"1998"', add
label define us10a_birthyr_lbl 1999 `"1999"', add
label define us10a_birthyr_lbl 2000 `"2000"', add
label define us10a_birthyr_lbl 2001 `"2001"', add
label define us10a_birthyr_lbl 2002 `"2002"', add
label define us10a_birthyr_lbl 2003 `"2003"', add
label define us10a_birthyr_lbl 2004 `"2004"', add
label define us10a_birthyr_lbl 2005 `"2005"', add
label define us10a_birthyr_lbl 2006 `"2006"', add
label define us10a_birthyr_lbl 2007 `"2007"', add
label define us10a_birthyr_lbl 2008 `"2008"', add
label define us10a_birthyr_lbl 2009 `"2009"', add
label define us10a_birthyr_lbl 2010 `"2010"', add
label values us10a_birthyr us10a_birthyr_lbl

label define us10a_cbpoverty_lbl 000 `"NIU (not in universe)"'
label define us10a_cbpoverty_lbl 001 `"1 percent or less of poverty threshold"', add
label define us10a_cbpoverty_lbl 501 `"501 percent or more of poverty threshold"', add
label values us10a_cbpoverty us10a_cbpoverty_lbl

label define us10a_occ_lbl 0000 `"NIU (not in universe)"'
label define us10a_occ_lbl 0010 `"Chief executives and legislators"', add
label define us10a_occ_lbl 0020 `"General and operations managers"', add
label define us10a_occ_lbl 0040 `"Advertising and promotions managers"', add
label define us10a_occ_lbl 0050 `"Marketing and sales managers"', add
label define us10a_occ_lbl 0060 `"Public relations and fundraising managers"', add
label define us10a_occ_lbl 0100 `"Administrative services managers"', add
label define us10a_occ_lbl 0110 `"Computer and information systems managers"', add
label define us10a_occ_lbl 0120 `"Financial managers"', add
label define us10a_occ_lbl 0135 `"Compensation and benefits managers"', add
label define us10a_occ_lbl 0136 `"Human resources managers"', add
label define us10a_occ_lbl 0137 `"Training and development managers"', add
label define us10a_occ_lbl 0140 `"Industrial production managers"', add
label define us10a_occ_lbl 0150 `"Purchasing managers"', add
label define us10a_occ_lbl 0160 `"Transportation, storage, and distribution managers"', add
label define us10a_occ_lbl 0205 `"Farmers, ranchers, and other agricultural managers"', add
label define us10a_occ_lbl 0220 `"Constructions managers"', add
label define us10a_occ_lbl 0230 `"Education administrators"', add
label define us10a_occ_lbl 0300 `"Architectural and engineering managers"', add
label define us10a_occ_lbl 0310 `"Food service managers"', add
label define us10a_occ_lbl 0330 `"Gaming managers"', add
label define us10a_occ_lbl 0340 `"Lodging managers"', add
label define us10a_occ_lbl 0350 `"Medical and health services managers"', add
label define us10a_occ_lbl 0360 `"Natural science managers"', add
label define us10a_occ_lbl 0410 `"Property, real estate, and community association managers"', add
label define us10a_occ_lbl 0420 `"Social and community service managers"', add
label define us10a_occ_lbl 0425 `"Emergency management directors"', add
label define us10a_occ_lbl 0430 `"Miscellaneous managers, including funeral service managers and postmasters and mail superintendents"', add
label define us10a_occ_lbl 0500 `"Agents and business managers of artists, performers, and athletes"', add
label define us10a_occ_lbl 0510 `"Buyers and purchasing agents, farm products"', add
label define us10a_occ_lbl 0520 `"Wholesale and retail buyers, except farm products"', add
label define us10a_occ_lbl 0530 `"Purchasing agents, except wholesale, retail, and farm products"', add
label define us10a_occ_lbl 0540 `"Claims adjusters, appraisers, examiners, and investigators"', add
label define us10a_occ_lbl 0565 `"Compliance officers"', add
label define us10a_occ_lbl 0600 `"Cost estimators"', add
label define us10a_occ_lbl 0630 `"Human resource workers"', add
label define us10a_occ_lbl 0640 `"Compensation, benefits, and job analysis specialists"', add
label define us10a_occ_lbl 0650 `"Training and development specialists"', add
label define us10a_occ_lbl 0700 `"Logisticians"', add
label define us10a_occ_lbl 0710 `"Management analysts"', add
label define us10a_occ_lbl 0725 `"Meeting, convention, and event planners"', add
label define us10a_occ_lbl 0726 `"Fundraisers"', add
label define us10a_occ_lbl 0735 `"Market research analysts and marketing specialists"', add
label define us10a_occ_lbl 0740 `"Business operations specialists, all other"', add
label define us10a_occ_lbl 0800 `"Accountants and auditors"', add
label define us10a_occ_lbl 0810 `"Appraisers and assessors of real estate"', add
label define us10a_occ_lbl 0820 `"Budget analysts"', add
label define us10a_occ_lbl 0830 `"Credit analysts"', add
label define us10a_occ_lbl 0840 `"Financial analysts"', add
label define us10a_occ_lbl 0850 `"Personal financial advisors"', add
label define us10a_occ_lbl 0860 `"Insurance underwriters"', add
label define us10a_occ_lbl 0900 `"Financial examiners"', add
label define us10a_occ_lbl 0910 `"Credit counselors and loan officers"', add
label define us10a_occ_lbl 0930 `"Tax examiners and collectors, and revenue agents"', add
label define us10a_occ_lbl 0940 `"Tax preparers"', add
label define us10a_occ_lbl 0950 `"Financial specialists, all other"', add
label define us10a_occ_lbl 1005 `"Computer and information research scientists"', add
label define us10a_occ_lbl 1006 `"Computer systems analysts"', add
label define us10a_occ_lbl 1007 `"Information security analysts"', add
label define us10a_occ_lbl 1010 `"Computer programmers"', add
label define us10a_occ_lbl 1020 `"Software developers, applications and systems software"', add
label define us10a_occ_lbl 1030 `"Web developers"', add
label define us10a_occ_lbl 1050 `"Computer support specialists"', add
label define us10a_occ_lbl 1060 `"Database administrators"', add
label define us10a_occ_lbl 1105 `"Network and computer systems administrators"', add
label define us10a_occ_lbl 1106 `"Computer network architects"', add
label define us10a_occ_lbl 1107 `"Computer occupations, all other"', add
label define us10a_occ_lbl 1200 `"Actuaries"', add
label define us10a_occ_lbl 1220 `"Operations research analysts"', add
label define us10a_occ_lbl 1240 `"Miscellaneous mathematical science occupations, including mathematicians and statisticians"', add
label define us10a_occ_lbl 1300 `"Architects, except naval"', add
label define us10a_occ_lbl 1310 `"Surveyors, cartographers, and photogrammetrists"', add
label define us10a_occ_lbl 1320 `"Aerospace engineers"', add
label define us10a_occ_lbl 1340 `"Biomedical and agricultural engineers"', add
label define us10a_occ_lbl 1350 `"Chemical engineers"', add
label define us10a_occ_lbl 1360 `"Civil engineers"', add
label define us10a_occ_lbl 1400 `"Computer hardware engineers"', add
label define us10a_occ_lbl 1410 `"Electrical and electronics engineers"', add
label define us10a_occ_lbl 1420 `"Environmental engineers"', add
label define us10a_occ_lbl 1430 `"Industrial engineers, including health and safety"', add
label define us10a_occ_lbl 1440 `"Marine engineers and naval architects"', add
label define us10a_occ_lbl 1450 `"Materials engineers"', add
label define us10a_occ_lbl 1460 `"Mechanical engineers"', add
label define us10a_occ_lbl 1520 `"Petroleum, mining and geological engineers, including mining safety engineers"', add
label define us10a_occ_lbl 1530 `"Miscellaneous engineeers including nuclear engineers"', add
label define us10a_occ_lbl 1540 `"Drafters"', add
label define us10a_occ_lbl 1550 `"Engineering technicians, except drafters"', add
label define us10a_occ_lbl 1560 `"Surveying and mapping technicians"', add
label define us10a_occ_lbl 1600 `"Agricultural and food scientists"', add
label define us10a_occ_lbl 1610 `"Biological scientists"', add
label define us10a_occ_lbl 1640 `"Conservation scientists and foresters"', add
label define us10a_occ_lbl 1650 `"Medical scientists, and life scientsits, all other"', add
label define us10a_occ_lbl 1700 `"Astronomers and physicists"', add
label define us10a_occ_lbl 1710 `"Atmospheric and space scientists"', add
label define us10a_occ_lbl 1720 `"Chemists and materials scientists"', add
label define us10a_occ_lbl 1740 `"Environmental scientists and geoscientists"', add
label define us10a_occ_lbl 1760 `"Physical scientists, all other"', add
label define us10a_occ_lbl 1800 `"Economists"', add
label define us10a_occ_lbl 1820 `"Psychologists"', add
label define us10a_occ_lbl 1840 `"Urban and regional planners"', add
label define us10a_occ_lbl 1860 `"Miscellaneous social scientists, including survey researchers and sociologists"', add
label define us10a_occ_lbl 1900 `"Agricultural and food science technicians"', add
label define us10a_occ_lbl 1910 `"Biological technicians"', add
label define us10a_occ_lbl 1920 `"Chemical technicians"', add
label define us10a_occ_lbl 1930 `"Geological and petroleum technicians, and nuclear technicians"', add
label define us10a_occ_lbl 1965 `"Miscellaneous life, physical, and social science technicians, including social science research asistants"', add
label define us10a_occ_lbl 2000 `"Counselors"', add
label define us10a_occ_lbl 2010 `"Social workers"', add
label define us10a_occ_lbl 2015 `"Probation officers and correctional treatment specialists"', add
label define us10a_occ_lbl 2016 `"Social and human service assistants"', add
label define us10a_occ_lbl 2025 `"Miscellaneous community and social service specialists, including health educators and community health workers"', add
label define us10a_occ_lbl 2040 `"Clergy"', add
label define us10a_occ_lbl 2050 `"Directors, religious activities and education"', add
label define us10a_occ_lbl 2060 `"Religious workers, all other"', add
label define us10a_occ_lbl 2100 `"Lawyers, and judges, magistrates, and other judicial workers"', add
label define us10a_occ_lbl 2105 `"Judicial law clerks"', add
label define us10a_occ_lbl 2145 `"Paralegals and legal assistants"', add
label define us10a_occ_lbl 2160 `"Miscellaneous legal support workers"', add
label define us10a_occ_lbl 2200 `"Postsecondary teachers"', add
label define us10a_occ_lbl 2300 `"Preschool and kindergarten teachers"', add
label define us10a_occ_lbl 2310 `"Elementary and middle school teachers"', add
label define us10a_occ_lbl 2320 `"Secondary school teachers"', add
label define us10a_occ_lbl 2330 `"Special education teachers"', add
label define us10a_occ_lbl 2340 `"Other teachers and instructors"', add
label define us10a_occ_lbl 2400 `"Archivists, curators, and museum technicians"', add
label define us10a_occ_lbl 2430 `"Librarians"', add
label define us10a_occ_lbl 2440 `"Library technicians"', add
label define us10a_occ_lbl 2540 `"Teacher assistants"', add
label define us10a_occ_lbl 2550 `"Other education, training, and library workers"', add
label define us10a_occ_lbl 2600 `"Artists and related workers"', add
label define us10a_occ_lbl 2630 `"Designers"', add
label define us10a_occ_lbl 2700 `"Actors"', add
label define us10a_occ_lbl 2710 `"Producers and directors"', add
label define us10a_occ_lbl 2720 `"Athletes, coaches, umpires, and related workers"', add
label define us10a_occ_lbl 2740 `"Dancers and choreographers"', add
label define us10a_occ_lbl 2750 `"Musicians, singers, and related workers"', add
label define us10a_occ_lbl 2760 `"Entertainers and performers, sports and related workers, all other"', add
label define us10a_occ_lbl 2800 `"Announcers"', add
label define us10a_occ_lbl 2810 `"News analysts, reporters and correspondents"', add
label define us10a_occ_lbl 2825 `"Public relations specialists"', add
label define us10a_occ_lbl 2830 `"Editors"', add
label define us10a_occ_lbl 2840 `"Technical writers"', add
label define us10a_occ_lbl 2850 `"Writers and authors"', add
label define us10a_occ_lbl 2860 `"Miscellaneous media and communication workers"', add
label define us10a_occ_lbl 2900 `"Broadcast and sound engineering technicians and radio operators, and media and communication equipment workers, all other"', add
label define us10a_occ_lbl 2910 `"Photographers"', add
label define us10a_occ_lbl 2920 `"Television, video, and motion picture camera operators and editors"', add
label define us10a_occ_lbl 3000 `"Chiropractors"', add
label define us10a_occ_lbl 3010 `"Dentists"', add
label define us10a_occ_lbl 3030 `"Dieticians and nutritionists"', add
label define us10a_occ_lbl 3040 `"Optometrists"', add
label define us10a_occ_lbl 3050 `"Pharmacists"', add
label define us10a_occ_lbl 3060 `"Physicians and surgeons"', add
label define us10a_occ_lbl 3110 `"Physician assistants"', add
label define us10a_occ_lbl 3120 `"Podiatrists"', add
label define us10a_occ_lbl 3140 `"Audiologists"', add
label define us10a_occ_lbl 3150 `"Occupational therapists"', add
label define us10a_occ_lbl 3160 `"Physical therapists"', add
label define us10a_occ_lbl 3200 `"Radiation therapists"', add
label define us10a_occ_lbl 3210 `"Recreational therapists"', add
label define us10a_occ_lbl 3220 `"Respiratory therapists"', add
label define us10a_occ_lbl 3230 `"Speechlanguage pathologists"', add
label define us10a_occ_lbl 3245 `"Other therapists, including exercise physiologists"', add
label define us10a_occ_lbl 3250 `"Veterinarians"', add
label define us10a_occ_lbl 3255 `"Registered nurses"', add
label define us10a_occ_lbl 3256 `"Nurse anesthetists"', add
label define us10a_occ_lbl 3258 `"Nurse practitioners, and nurse midwives"', add
label define us10a_occ_lbl 3260 `"Health diagnosing and treating practitioners, all other"', add
label define us10a_occ_lbl 3300 `"Clinical laboratory technologists and technicians"', add
label define us10a_occ_lbl 3310 `"Dental hygienists"', add
label define us10a_occ_lbl 3320 `"Diagnostic related technologists and technicians"', add
label define us10a_occ_lbl 3400 `"Emergency medical technicians and paramedics"', add
label define us10a_occ_lbl 3420 `"Health practitioner support technologists and technicians"', add
label define us10a_occ_lbl 3500 `"Licensed practical and licensed vocational nurses"', add
label define us10a_occ_lbl 3510 `"Medical records and health information technicians"', add
label define us10a_occ_lbl 3520 `"Opticians, dispensing"', add
label define us10a_occ_lbl 3535 `"Miscellaneous health technologists and technicians"', add
label define us10a_occ_lbl 3540 `"Other healthcare practitioners and technical occupations"', add
label define us10a_occ_lbl 3600 `"Nursing, psychiatric, and home health aides"', add
label define us10a_occ_lbl 3610 `"Occupational therapy assistants and aides"', add
label define us10a_occ_lbl 3620 `"Physical therapist assistants and aides"', add
label define us10a_occ_lbl 3630 `"Massage therapists"', add
label define us10a_occ_lbl 3640 `"Dental assistants"', add
label define us10a_occ_lbl 3645 `"Medical assistants"', add
label define us10a_occ_lbl 3646 `"Medical transcriptionists"', add
label define us10a_occ_lbl 3647 `"Pharmacy aides"', add
label define us10a_occ_lbl 3648 `"Veterinary assistants and laboratory animal caretakers"', add
label define us10a_occ_lbl 3649 `"Phlebotmists"', add
label define us10a_occ_lbl 3655 `"Healthcare support workers, all other, including medical equipment preparers"', add
label define us10a_occ_lbl 3700 `"First-line supervisors of correctional officers"', add
label define us10a_occ_lbl 3710 `"First-line supervisors of police and detectives"', add
label define us10a_occ_lbl 3720 `"First-line supervisors of fire fighting and prevention workers"', add
label define us10a_occ_lbl 3730 `"Supervisors, protective service workers, all other"', add
label define us10a_occ_lbl 3740 `"Firefighters"', add
label define us10a_occ_lbl 3750 `"Fire inspectors"', add
label define us10a_occ_lbl 3800 `"Bailiffs, correctional officers, and jailers"', add
label define us10a_occ_lbl 3820 `"Detectives and criminal investigators"', add
label define us10a_occ_lbl 3840 `"Miscellaneous law enforcement workers"', add
label define us10a_occ_lbl 3850 `"Police officers"', add
label define us10a_occ_lbl 3900 `"Animal control workers"', add
label define us10a_occ_lbl 3910 `"Private detectives and investigators"', add
label define us10a_occ_lbl 3930 `"Security guards and gaming surveillance officers"', add
label define us10a_occ_lbl 3940 `"Crossing guards"', add
label define us10a_occ_lbl 3945 `"Transportation security screeners"', add
label define us10a_occ_lbl 3955 `"Lifeguards and other recreational, and all other protective service workers"', add
label define us10a_occ_lbl 4000 `"Chefs and head cooks"', add
label define us10a_occ_lbl 4010 `"First-line supervisors of food preparation and serving workers"', add
label define us10a_occ_lbl 4020 `"Cooks"', add
label define us10a_occ_lbl 4030 `"Food preparation workers"', add
label define us10a_occ_lbl 4040 `"Bartenders"', add
label define us10a_occ_lbl 4050 `"Combined food preparation and serving workers, including fast food"', add
label define us10a_occ_lbl 4060 `"Counter attendant, cafeteria, food concession, and coffee shop"', add
label define us10a_occ_lbl 4110 `"Waiters and waitresses"', add
label define us10a_occ_lbl 4120 `"Food servers, nonrestaurant"', add
label define us10a_occ_lbl 4130 `"Miscellaneous food preparation and serving related workers including dining room and cafeteria attendants and bartender helpers"', add
label define us10a_occ_lbl 4140 `"Dishwashers"', add
label define us10a_occ_lbl 4150 `"Host and hostesses, restaurant, lounge, and coffee shop"', add
label define us10a_occ_lbl 4200 `"First-line supervisors of housekeeping and janitorial workers"', add
label define us10a_occ_lbl 4210 `"First-line supervisors of landscaping, lawn service, and groundskeeping workers"', add
label define us10a_occ_lbl 4220 `"Janitors and building cleaners"', add
label define us10a_occ_lbl 4230 `"Maids and housekeeping cleaners"', add
label define us10a_occ_lbl 4240 `"Pest control workers"', add
label define us10a_occ_lbl 4250 `"Grounds maintenance workers"', add
label define us10a_occ_lbl 4300 `"First-line supervisors of gaming workers"', add
label define us10a_occ_lbl 4320 `"First-line supervisors of personal service workers"', add
label define us10a_occ_lbl 4340 `"Animal trainers"', add
label define us10a_occ_lbl 4350 `"Nonfarm animal caretakers"', add
label define us10a_occ_lbl 4400 `"Gaming services workers"', add
label define us10a_occ_lbl 4410 `"Motion picture projectionists"', add
label define us10a_occ_lbl 4420 `"Ushers, lobby attendants, and ticket takers"', add
label define us10a_occ_lbl 4430 `"Miscellaneous entertainment attendants and related workers"', add
label define us10a_occ_lbl 4460 `"Embalmers and funeral attendants"', add
label define us10a_occ_lbl 4465 `"Morticians, undertakers, and funeral directors"', add
label define us10a_occ_lbl 4500 `"Barbers"', add
label define us10a_occ_lbl 4510 `"Hairdressers, hairstylists, and cosmetologists"', add
label define us10a_occ_lbl 4520 `"Miscellaneous personal appearance workers"', add
label define us10a_occ_lbl 4530 `"Baggage porters, bellhops, and concierges"', add
label define us10a_occ_lbl 4540 `"Tour and travel guides"', add
label define us10a_occ_lbl 4600 `"Childcare workers"', add
label define us10a_occ_lbl 4610 `"Personal care aides"', add
label define us10a_occ_lbl 4620 `"Recreation and fitness workers"', add
label define us10a_occ_lbl 4640 `"Residential advisors"', add
label define us10a_occ_lbl 4650 `"Personal care and service workers, all other"', add
label define us10a_occ_lbl 4700 `"First-line supervisors of retail sales workers"', add
label define us10a_occ_lbl 4710 `"First-line supervisors of non-retail sales"', add
label define us10a_occ_lbl 4720 `"Cashiers"', add
label define us10a_occ_lbl 4740 `"Counter and rental clerks"', add
label define us10a_occ_lbl 4750 `"Parts salespersons"', add
label define us10a_occ_lbl 4760 `"Retail salespersons"', add
label define us10a_occ_lbl 4800 `"Advertising sales agents"', add
label define us10a_occ_lbl 4810 `"Insurance sales agents"', add
label define us10a_occ_lbl 4820 `"Securities, commodities, and financial services sales agents"', add
label define us10a_occ_lbl 4830 `"Travel agents"', add
label define us10a_occ_lbl 4840 `"Sales representatives, services, all other"', add
label define us10a_occ_lbl 4850 `"Sales representatives, wholesale and manufacturing"', add
label define us10a_occ_lbl 4900 `"Models, demonstrators, and product promoters"', add
label define us10a_occ_lbl 4920 `"Real estate brokers and sales agents"', add
label define us10a_occ_lbl 4930 `"Sales engineers"', add
label define us10a_occ_lbl 4940 `"Telemarketers"', add
label define us10a_occ_lbl 4950 `"Door-to-door sales workers, news and street vendors, and related workers"', add
label define us10a_occ_lbl 4965 `"Sales and related workers, all other"', add
label define us10a_occ_lbl 5000 `"First-line supervisors of office and administrative support workers"', add
label define us10a_occ_lbl 5010 `"Switchboard operators, including answering service"', add
label define us10a_occ_lbl 5020 `"Telephone operators"', add
label define us10a_occ_lbl 5030 `"Communications equipment operators, all other"', add
label define us10a_occ_lbl 5100 `"Bill and account collectors"', add
label define us10a_occ_lbl 5110 `"Billing and posting clerks"', add
label define us10a_occ_lbl 5120 `"Bookkeeping, accounting, and auditing clerks"', add
label define us10a_occ_lbl 5130 `"Gaming cage workers"', add
label define us10a_occ_lbl 5140 `"Payroll and timekeeping clerks"', add
label define us10a_occ_lbl 5150 `"Procurement clerks"', add
label define us10a_occ_lbl 5160 `"Tellers"', add
label define us10a_occ_lbl 5165 `"Financial clerks, all other"', add
label define us10a_occ_lbl 5200 `"Brokerage clerks"', add
label define us10a_occ_lbl 5220 `"Court, municipal, and license clerks"', add
label define us10a_occ_lbl 5230 `"Credit authorizers, checkers, and clerks"', add
label define us10a_occ_lbl 5240 `"Customer service representatives"', add
label define us10a_occ_lbl 5250 `"Eligibility interviewers, government programs"', add
label define us10a_occ_lbl 5260 `"File clerks"', add
label define us10a_occ_lbl 5300 `"Hotel, motel, and resort desk clerks"', add
label define us10a_occ_lbl 5310 `"Interviewers, except eligibility and loan"', add
label define us10a_occ_lbl 5320 `"Library assistants, clerical"', add
label define us10a_occ_lbl 5330 `"Loan interviewers and clerks"', add
label define us10a_occ_lbl 5340 `"New account clerks"', add
label define us10a_occ_lbl 5350 `"Correspondent clerks and order clerks"', add
label define us10a_occ_lbl 5360 `"Human resources assistants, except payroll and timekeeping"', add
label define us10a_occ_lbl 5400 `"Receptionists and information clerks"', add
label define us10a_occ_lbl 5410 `"Reservation and transportation ticket agents and travel clerks"', add
label define us10a_occ_lbl 5420 `"Information and record clerks, all other"', add
label define us10a_occ_lbl 5500 `"Cargo and freight agents"', add
label define us10a_occ_lbl 5510 `"Couriers and messengers"', add
label define us10a_occ_lbl 5520 `"Dispatchers"', add
label define us10a_occ_lbl 5530 `"Meter readers, utilities"', add
label define us10a_occ_lbl 5540 `"Postal service clerks"', add
label define us10a_occ_lbl 5550 `"Postal service mail carriers"', add
label define us10a_occ_lbl 5560 `"Postal service mail sorters, processors, and processing machine operators"', add
label define us10a_occ_lbl 5600 `"Production, planning, and expediting clerks"', add
label define us10a_occ_lbl 5610 `"Shipping, receiving, and traffic clerks"', add
label define us10a_occ_lbl 5620 `"Stock clerks and order fillers"', add
label define us10a_occ_lbl 5630 `"Weighers, measurers, checkers, and samplers, recordkeeping"', add
label define us10a_occ_lbl 5700 `"Secretaries and administrative assistants"', add
label define us10a_occ_lbl 5800 `"Computer operators"', add
label define us10a_occ_lbl 5810 `"Data entry keyers"', add
label define us10a_occ_lbl 5820 `"Word processors and typists"', add
label define us10a_occ_lbl 5840 `"Insurance claims and policy processing clerks"', add
label define us10a_occ_lbl 5850 `"Mail clerks and mail machine operators, except postal service"', add
label define us10a_occ_lbl 5860 `"Office clerks, general"', add
label define us10a_occ_lbl 5900 `"Office machine operators, except computer"', add
label define us10a_occ_lbl 5910 `"Proofreaders and copy markers"', add
label define us10a_occ_lbl 5920 `"Statistical assistants"', add
label define us10a_occ_lbl 5940 `"Miscellaneous office and administrative support workers including desktop publishers"', add
label define us10a_occ_lbl 6005 `"First-line supervisors of farming, fishing, and forestry workers"', add
label define us10a_occ_lbl 6010 `"Agricultural inspectors"', add
label define us10a_occ_lbl 6040 `"Graders and sorters, agricultural products"', add
label define us10a_occ_lbl 6050 `"Miscellaneous agricultural workers including animal breeders"', add
label define us10a_occ_lbl 6100 `"Fishing and hunting workers"', add
label define us10a_occ_lbl 6120 `"Forest and conservation workers"', add
label define us10a_occ_lbl 6130 `"Logging workers"', add
label define us10a_occ_lbl 6200 `"First-line supervisors of construction trades and extraction workers"', add
label define us10a_occ_lbl 6210 `"Boilermakers"', add
label define us10a_occ_lbl 6220 `"Brickmasons, blockmasons, and stonemasons"', add
label define us10a_occ_lbl 6230 `"Carpenters"', add
label define us10a_occ_lbl 6240 `"Carpet, floor, and tile installers and finishers"', add
label define us10a_occ_lbl 6250 `"Cement masons, concrete finishers, and terrazzo workers"', add
label define us10a_occ_lbl 6260 `"Construction laborers"', add
label define us10a_occ_lbl 6300 `"Paving, surfacing, and tamping equipment operators"', add
label define us10a_occ_lbl 6320 `"Construction equipment operators except paving, surfacing, and tamping equipment operators"', add
label define us10a_occ_lbl 6330 `"Drywall installers, ceiling tile installers, and tapers"', add
label define us10a_occ_lbl 6355 `"Electricians"', add
label define us10a_occ_lbl 6360 `"Glaziers"', add
label define us10a_occ_lbl 6400 `"Insulation workers"', add
label define us10a_occ_lbl 6420 `"Painters, construction and maintenance"', add
label define us10a_occ_lbl 6430 `"Paperhangers"', add
label define us10a_occ_lbl 6440 `"Pipelayers, plumbers, pipefitters, and steamfitters"', add
label define us10a_occ_lbl 6460 `"Plasterers and stucco masons"', add
label define us10a_occ_lbl 6500 `"Reinforcing iron and rebar workers"', add
label define us10a_occ_lbl 6515 `"Roofers"', add
label define us10a_occ_lbl 6520 `"Sheet metal workers"', add
label define us10a_occ_lbl 6530 `"Structural iron and steel workers"', add
label define us10a_occ_lbl 6600 `"Helpers, construction trades"', add
label define us10a_occ_lbl 6660 `"Construction and building inspectors"', add
label define us10a_occ_lbl 6700 `"Elevator installers and repairers"', add
label define us10a_occ_lbl 6710 `"Fence erectors"', add
label define us10a_occ_lbl 6720 `"Hazardous materials removal workers"', add
label define us10a_occ_lbl 6730 `"Highway maintenance workers"', add
label define us10a_occ_lbl 6740 `"Rail-track laying and maintenance equipment operators"', add
label define us10a_occ_lbl 6765 `"Miscellaneous construction workers including solar photovaltaic installers, and septic tank servicers and sewer pipe cleaners"', add
label define us10a_occ_lbl 6800 `"Derrick, rotary drill, and service unit operators, and roustabouts, oil, gas, and mining"', add
label define us10a_occ_lbl 6820 `"Earth drillers, except oil and gas"', add
label define us10a_occ_lbl 6830 `"Explosives workers, ordnance handling experts, and blasters"', add
label define us10a_occ_lbl 6840 `"Mining machine operators"', add
label define us10a_occ_lbl 6940 `"Miscellaneous extraction workers including roof bolters and helpers"', add
label define us10a_occ_lbl 7000 `"First-line supervisors of mechanics, installers, and repairers"', add
label define us10a_occ_lbl 7010 `"Computer, automated teller, and office machine repairers"', add
label define us10a_occ_lbl 7020 `"Radio and telecommunications equipment installers and repairers"', add
label define us10a_occ_lbl 7030 `"Avionics technicians"', add
label define us10a_occ_lbl 7040 `"Electric motor, power tool, and related repairers"', add
label define us10a_occ_lbl 7100 `"Electrical and electronics repairers, transportation equipment, and industrial and utility"', add
label define us10a_occ_lbl 7110 `"Electronic equipment installers and repairers, motor vehicles"', add
label define us10a_occ_lbl 7120 `"Electronic home entertainment equipment installers and repairers"', add
label define us10a_occ_lbl 7130 `"Security and fire alarm systems installers"', add
label define us10a_occ_lbl 7140 `"Aircraft mechanics and service technicians"', add
label define us10a_occ_lbl 7150 `"Automotive body and related repairers"', add
label define us10a_occ_lbl 7160 `"Automotive glass installers and repairers"', add
label define us10a_occ_lbl 7200 `"Automotive service technicians and mechanics"', add
label define us10a_occ_lbl 7210 `"Bus and truck mechanics and diesel engine specialists"', add
label define us10a_occ_lbl 7220 `"Heavy vehicle and mobile equipment service technicians and mechanics"', add
label define us10a_occ_lbl 7240 `"Small engine mechanics"', add
label define us10a_occ_lbl 7260 `"Miscellaneous vehicle and mobile equipment mechanics, installers, and repairers"', add
label define us10a_occ_lbl 7300 `"Control and valve installers and repairers"', add
label define us10a_occ_lbl 7315 `"Heating, air conditioning, and refrigeration mechanics and installers"', add
label define us10a_occ_lbl 7320 `"Home appliance repairers"', add
label define us10a_occ_lbl 7330 `"Industrial and refractory machinery mechanics"', add
label define us10a_occ_lbl 7340 `"Maintenance and repair workers, general"', add
label define us10a_occ_lbl 7350 `"Maintenance workers, machinery"', add
label define us10a_occ_lbl 7360 `"Millwrights"', add
label define us10a_occ_lbl 7410 `"Electrical power-line installers and repairers"', add
label define us10a_occ_lbl 7420 `"Telecommunications line installers and repairers"', add
label define us10a_occ_lbl 7430 `"Precision instrument and equipment repairers"', add
label define us10a_occ_lbl 7510 `"Coin, vending, and amusement machine servicers and repairers"', add
label define us10a_occ_lbl 7540 `"Locksmiths and safe repairers"', add
label define us10a_occ_lbl 7550 `"Manufactured building and mobile home installers"', add
label define us10a_occ_lbl 7560 `"Riggers"', add
label define us10a_occ_lbl 7610 `"Helpers--installation, maintenance, and repair workers"', add
label define us10a_occ_lbl 7630 `"Other installation, maintenance, and repair workers including wind turbine service technicians, and commercial divers, and signal and track wwitch repairers"', add
label define us10a_occ_lbl 7700 `"First-line supervisors of production and operating workers"', add
label define us10a_occ_lbl 7710 `"Aircraft structure, surfaces, rigging, and systems assemblers"', add
label define us10a_occ_lbl 7720 `"Electrical, electronics, and electromechanical assemblers"', add
label define us10a_occ_lbl 7730 `"Engine and other machine assemblers"', add
label define us10a_occ_lbl 7740 `"Structural metal fabricators and fitters"', add
label define us10a_occ_lbl 7750 `"Miscellaneous assemblers and fabricators"', add
label define us10a_occ_lbl 7800 `"Bakers"', add
label define us10a_occ_lbl 7810 `"Butchers and other meat, poultry, and fish processing workers"', add
label define us10a_occ_lbl 7830 `"Food and tobacco roasting, baking, and drying machine operators and tenders"', add
label define us10a_occ_lbl 7840 `"Food batchmakers"', add
label define us10a_occ_lbl 7850 `"Food cooking machine operators and tenders"', add
label define us10a_occ_lbl 7855 `"Food processing workers, all other"', add
label define us10a_occ_lbl 7900 `"Computer control programmers and operators"', add
label define us10a_occ_lbl 7920 `"Extruding and drawing machine setters, operators, and tenders, metal and plastic"', add
label define us10a_occ_lbl 7930 `"Forging machine setters, operators, and tenders, metal and plastic"', add
label define us10a_occ_lbl 7940 `"Rolling machine setters, operators, and tenders, metal and plastic"', add
label define us10a_occ_lbl 7950 `"Cutting, punching, and press machine setters, operators, and tenders, metal and plastic"', add
label define us10a_occ_lbl 7960 `"Drilling and boring machine tool setters, operators, and tenders, metal and plastic"', add
label define us10a_occ_lbl 8000 `"Grinding, lapping, polishing, and buffing machine tool setters, operators, and tenders, metal and plastic"', add
label define us10a_occ_lbl 8010 `"Lathe and turning machine tool setters, operators, and tenders, metal and plastic"', add
label define us10a_occ_lbl 8030 `"Machinists"', add
label define us10a_occ_lbl 8040 `"Metal furnace operators, tenders, pourers, and casters"', add
label define us10a_occ_lbl 8060 `"Model makers and patternmakers, metal and plastic"', add
label define us10a_occ_lbl 8100 `"Molders and molding machine setters, operators, and tenders, metal and plastic"', add
label define us10a_occ_lbl 8130 `"Tool and die makers"', add
label define us10a_occ_lbl 8140 `"Welding, soldering, and brazing workers"', add
label define us10a_occ_lbl 8150 `"Heat treating equipment setters, operators, and tenders, metal and plastic"', add
label define us10a_occ_lbl 8200 `"Plating and coating machine setters, operators, and tenders, metal and plastic"', add
label define us10a_occ_lbl 8210 `"Tool grinders, filers, and sharpeners"', add
label define us10a_occ_lbl 8220 `"Miscellaneous metal workers and plastic workers including milling and planing machine setters, and multiple machine tool setters, and lay-out workers"', add
label define us10a_occ_lbl 8250 `"Prepress technicians and workers"', add
label define us10a_occ_lbl 8255 `"Printing machine operators"', add
label define us10a_occ_lbl 8256 `"Print binding and finishing workers"', add
label define us10a_occ_lbl 8300 `"Laundry and dry-cleaning workers"', add
label define us10a_occ_lbl 8310 `"Pressers, textile, garment, and related materials"', add
label define us10a_occ_lbl 8320 `"Sewing machine operators"', add
label define us10a_occ_lbl 8330 `"Shoe and leather workers and repairers"', add
label define us10a_occ_lbl 8340 `"Shoe machine operators and tenders"', add
label define us10a_occ_lbl 8350 `"Tailors, dressmakers, and sewers"', add
label define us10a_occ_lbl 8400 `"Textile bleaching and dyeing, and cutting machine setters, operators, and tenders"', add
label define us10a_occ_lbl 8410 `"Textile knitting and weaving machine setters, operators, and tenders"', add
label define us10a_occ_lbl 8420 `"Textile winding, twisting, and drawing out machine setters, operators, and tenders"', add
label define us10a_occ_lbl 8450 `"Upholsterers"', add
label define us10a_occ_lbl 8460 `"Miscellaneous textile, apparel, and furnishings workers except upholsterers"', add
label define us10a_occ_lbl 8500 `"Cabinetmakers and bench carpenters"', add
label define us10a_occ_lbl 8510 `"Furniture finishers"', add
label define us10a_occ_lbl 8530 `"Sawing machine setters, operators, and tenders, wood"', add
label define us10a_occ_lbl 8540 `"Woodworking machine setters, operators, and tenders, except sawing"', add
label define us10a_occ_lbl 8550 `"Miscellaneous woodworkers including model makers and patternmakers"', add
label define us10a_occ_lbl 8600 `"Power plant operators, distributors, and dispatchers"', add
label define us10a_occ_lbl 8610 `"Stationary engineers and boiler operators"', add
label define us10a_occ_lbl 8620 `"Water wastewater treatment plant and system operators"', add
label define us10a_occ_lbl 8630 `"Miscellaneous plant and system operators"', add
label define us10a_occ_lbl 8640 `"Chemical processing machine setters, operators, and tenders"', add
label define us10a_occ_lbl 8650 `"Crushing, grinding, polishing, mixing, and blending workers"', add
label define us10a_occ_lbl 8710 `"Cutting workers"', add
label define us10a_occ_lbl 8720 `"Extruding, forming, pressing, and compacting machine setters, operators, and tenders"', add
label define us10a_occ_lbl 8730 `"Furnace, kiln, oven, drier, and kettle operators and tenders"', add
label define us10a_occ_lbl 8740 `"Inspectors, testers, sorters, samplers, and weighers"', add
label define us10a_occ_lbl 8750 `"Jewelers and precious stone and metal workers"', add
label define us10a_occ_lbl 8760 `"Medical, dental, and ophthalmic laboratory technicians"', add
label define us10a_occ_lbl 8800 `"Packaging and filling machine operators and tenders"', add
label define us10a_occ_lbl 8810 `"Painting workers"', add
label define us10a_occ_lbl 8830 `"Photographic process workers and processing machine operators"', add
label define us10a_occ_lbl 8850 `"Adhesive bonding machine operators and tenders"', add
label define us10a_occ_lbl 8860 `"Cleaning, washing, and metal pickling equipment operators and tenders"', add
label define us10a_occ_lbl 8910 `"Etchers and engravers"', add
label define us10a_occ_lbl 8920 `"Molders, shapers, and casters, except metal and plastic"', add
label define us10a_occ_lbl 8930 `"Paper goods machine setters, operators, and tenders"', add
label define us10a_occ_lbl 8940 `"Tire builders"', add
label define us10a_occ_lbl 8950 `"Helpers--production workers"', add
label define us10a_occ_lbl 8965 `"Other production workers including semiconductor processors and cooling and freezing equipment operators"', add
label define us10a_occ_lbl 9000 `"Supervisors of transportation and material moving workers"', add
label define us10a_occ_lbl 9030 `"Aircraft pilots and flight engineers"', add
label define us10a_occ_lbl 9040 `"Air traffic controllers and airfield operations specialists"', add
label define us10a_occ_lbl 9050 `"Flight attendants"', add
label define us10a_occ_lbl 9110 `"Ambulance drivers and attendants, except emergency medical technicians"', add
label define us10a_occ_lbl 9120 `"Bus drivers"', add
label define us10a_occ_lbl 9130 `"Driver/sales workers and truck drivers"', add
label define us10a_occ_lbl 9140 `"Taxi drivers and chauffeurs"', add
label define us10a_occ_lbl 9150 `"Motor vehicle operators, all other"', add
label define us10a_occ_lbl 9200 `"Locomotive engineers and operators"', add
label define us10a_occ_lbl 9230 `"Railroad brake, signal, and switch operators"', add
label define us10a_occ_lbl 9240 `"Railroad conductors and yardmasters"', add
label define us10a_occ_lbl 9260 `"Subway, streetcar, and other rail transportation workers"', add
label define us10a_occ_lbl 9300 `"Sailors and marine oilers, and ship engineers"', add
label define us10a_occ_lbl 9310 `"Ship and boat captains and operators"', add
label define us10a_occ_lbl 9350 `"Parking lot attendants"', add
label define us10a_occ_lbl 9360 `"Automotive and watercraft service attendants"', add
label define us10a_occ_lbl 9410 `"Transportation inspectors"', add
label define us10a_occ_lbl 9415 `"Transportation attendants, except flight attendants"', add
label define us10a_occ_lbl 9420 `"Miscellaneous transportation workers including bridge and lock tenders and traffic technicians"', add
label define us10a_occ_lbl 9510 `"Crane and tower operators"', add
label define us10a_occ_lbl 9520 `"Dredge, excavating, and loading machine operators"', add
label define us10a_occ_lbl 9560 `"Conveyor operators and tenders, and hoist and winch operators"', add
label define us10a_occ_lbl 9600 `"Industrial truck and tractor operators"', add
label define us10a_occ_lbl 9610 `"Cleaners of vehicles and equipment"', add
label define us10a_occ_lbl 9620 `"Laborers and freight, stock, and material movers, hand"', add
label define us10a_occ_lbl 9630 `"Machine feeders and offbearers"', add
label define us10a_occ_lbl 9640 `"Packers and packagers, hand"', add
label define us10a_occ_lbl 9650 `"Pumping station operators"', add
label define us10a_occ_lbl 9720 `"Refuse and recyclable material collectors"', add
label define us10a_occ_lbl 9750 `"Miscellaneous material moving workers including shuttle car operators, and tank car, truck, and ship loaders"', add
label define us10a_occ_lbl 9800 `"Military officer special and tactical operations leaders"', add
label define us10a_occ_lbl 9810 `"First-line enlisted military supervisors"', add
label define us10a_occ_lbl 9820 `"Military enlisted tactical operations and air/weapons specialists and crew members"', add
label define us10a_occ_lbl 9830 `"Military, rank not specified"', add
label values us10a_occ us10a_occ_lbl

label define us10a_qdifcare_lbl 0 `"Not allocated"'
label define us10a_qdifcare_lbl 4 `"Allocated"', add
label values us10a_qdifcare us10a_qdifcare_lbl

label define us10a_hiufpgbase_lbl 10830 `"10830"'
label define us10a_hiufpgbase_lbl 12460 `"12460"', add
label define us10a_hiufpgbase_lbl 13530 `"13530"', add
label values us10a_hiufpgbase us10a_hiufpgbase_lbl

label define us10a_hiufpginc_lbl 3740 `"3740"'
label define us10a_hiufpginc_lbl 4300 `"4300"', add
label define us10a_hiufpginc_lbl 4680 `"4680"', add
label values us10a_hiufpginc us10a_hiufpginc_lbl

label define us10a_hiurule_lbl 1 `"Point HIU reference person to self"'
label define us10a_hiurule_lbl 2 `"Point married female, with spouse present, to spouse"', add
label define us10a_hiurule_lbl 3 `"Point eligible child to father, if present"', add
label define us10a_hiurule_lbl 4 `"Point eligible child to mother, if present and father absent"', add
label define us10a_hiurule_lbl 5 `"Point single adults to self"', add
label define us10a_hiurule_lbl 6 `"Point related singleton children to first HIU reference person in household"', add
label define us10a_hiurule_lbl 7 `"Point unrelated singleton children to self"', add
label values us10a_hiurule us10a_hiurule_lbl


