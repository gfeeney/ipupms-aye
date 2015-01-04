* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                       ///
  int     cntry            1-3      ///
  int     year             4-7      ///
  int     sample           8-11     ///
  double  serial           12-21    ///
  int     persons          22-24    ///
  float   wthh             25-32    ///
  byte    subsamp          33-34    ///
  byte    gq               35-36    ///
  byte    unrel            37-37    ///
  byte    urban            38-38    ///
  byte    regionw          39-40    ///
  long    geolev1          41-46    ///
  long    geo1a_pa         47-52    ///
  byte    geo1b_pa         53-54    ///
  int     geo2b_pa         55-58    ///
  byte    ownrshp          59-59    ///
  int     ownrshpd         60-62    ///
  byte    intmig1          63-64    ///
  byte    electrc          65-65    ///
  byte    watsup           66-67    ///
  byte    sewage           68-69    ///
  byte    fuelck           70-71    ///
  byte    phone            72-72    ///
  byte    cell             73-73    ///
  byte    intrnet          74-74    ///
  byte    trash            75-76    ///
  byte    autos            77-77    ///
  byte    aircon           78-79    ///
  byte    computr          80-80    ///
  byte    washer           81-81    ///
  byte    refrig           82-82    ///
  byte    tv               83-84    ///
  byte    radio            85-85    ///
  byte    rooms            86-87    ///
  byte    bedrms           88-89    ///
  byte    toilet           90-91    ///
  int     floor            92-94    ///
  int     wall             95-97    ///
  byte    roof             98-99    ///
  int     bltyr            100-103  ///
  int     strag2           104-106  ///
  byte    hhtype           107-108  ///
  byte    nfams            109-109  ///
  byte    ncoupls          110-110  ///
  byte    nmothrs          111-111  ///
  byte    nfathrs          112-112  ///
  long    pa10a_dwnum      113-119  ///
  byte    pa10a_hhnum      120-120  ///
  byte    pa10a_hhn        121-121  ///
  byte    pa10a_pernd      122-123  ///
  byte    pa10a_pern       124-125  ///
  byte    pa10a_prov       126-127  ///
  byte    pa10a_hhn2       128-128  ///
  byte    pa10a_typedw     129-130  ///
  byte    pa10a_occupdw    131-131  ///
  byte    pa10a_ownershp   132-132  ///
  byte    pa10a_ownshp2    133-134  ///
  int     pa10a_hpaym      135-138  ///
  byte    pa10a_constryr   139-139  ///
  byte    pa10a_walls      140-140  ///
  byte    pa10a_roof       141-141  ///
  byte    pa10a_floors     142-142  ///
  byte    pa10a_rooms      143-144  ///
  byte    pa10a_bedrooms   145-146  ///
  byte    pa10a_watsup     147-148  ///
  byte    pa10a_dwatdry    149-149  ///
  byte    pa10a_hwatdry    150-151  ///
  byte    pa10a_hwatrain   152-153  ///
  byte    pa10a_toilet     154-154  ///
  byte    pa10a_sewage1    155-155  ///
  byte    pa10a_toilet2    156-156  ///
  byte    pa10a_light      157-158  ///
  int     pa10a_lightpay   159-162  ///
  byte    pa10a_trash      163-163  ///
  byte    pa10a_fuelck     164-164  ///
  byte    pa10a_econdw     165-165  ///
  byte    pa10a_dw2use     166-166  ///
  byte    pa10a_numhhs     167-167  ///
  byte    pa10a_isdw       168-168  ///
  long    pa10a_incdw      169-175  ///
  byte    pa10a_area       176-176  ///
  byte    pa10a_indarea    177-177  ///
  byte    pa10a_stove      178-178  ///
  byte    pa10a_refrig     179-179  ///
  byte    pa10a_washer     180-180  ///
  byte    pa10a_sewmach    181-181  ///
  byte    pa10a_phone      182-182  ///
  byte    pa10a_radio      183-183  ///
  byte    pa10a_radion     184-185  ///
  byte    pa10a_fan        186-186  ///
  byte    pa10a_fann       187-188  ///
  byte    pa10a_celln      189-190  ///
  byte    pa10a_auto       191-191  ///
  byte    pa10a_auton      192-193  ///
  byte    pa10a_tv         194-194  ///
  byte    pa10a_tvn        195-196  ///
  byte    pa10a_cable      197-197  ///
  byte    pa10a_comput     198-198  ///
  byte    pa10a_computn    199-200  ///
  byte    pa10a_internet   201-201  ///
  byte    pa10a_plants     202-202  ///
  byte    pa10a_medplant   203-203  ///
  byte    pa10a_cattle     204-204  ///
  byte    pa10a_poultry    205-205  ///
  byte    pa10a_migrants   206-206  ///
  byte    pa10a_mig1sex    207-207  ///
  int     pa10a_mig1age    208-210  ///
  int     pa10a_mig1yr     211-214  ///
  int     pa10a_mig1ctry   215-217  ///
  byte    pa10a_mig3sex    218-218  ///
  long    pa10a_inchh      219-225  ///
  byte    pa10a_hhtype     226-226  ///
  byte    pa10a_area2      227-227  ///
  int     pernum           228-230  ///
  float   wtper            231-238  ///
  int     momloc           239-241  ///
  int     poploc           242-244  ///
  int     sploc            245-247  ///
  byte    parrule          248-249  ///
  byte    sprule           250-251  ///
  byte    stepmom          252-252  ///
  byte    steppop          253-253  ///
  byte    polymal          254-254  ///
  byte    poly2nd          255-255  ///
  byte    famsize          256-257  ///
  byte    nchild           258-258  ///
  byte    nchlt5           259-259  ///
  byte    eldch            260-261  ///
  byte    yngch            262-263  ///
  byte    relate           264-264  ///
  int     related          265-268  ///
  int     age              269-271  ///
  byte    sex              272-272  ///
  byte    marst            273-273  ///
  int     marstd           274-276  ///
  byte    consens          277-277  ///
  byte    chborn           278-279  ///
  byte    chsurv           280-281  ///
  byte    brthlyr          282-282  ///
  byte    bthsurv          283-283  ///
  byte    nativty          284-284  ///
  byte    yrsimm2          285-285  ///
  byte    indig            286-286  ///
  byte    ethnpa           287-288  ///
  byte    school           289-289  ///
  byte    lit              290-290  ///
  byte    edattan          291-291  ///
  int     edattand         292-294  ///
  byte    yrschl           295-296  ///
  byte    educpa           297-298  ///
  byte    empstat          299-299  ///
  int     empstatd         300-302  ///
  byte    occisco          303-304  ///
  int     occ              305-308  ///
  int     indgen           309-311  ///
  long    ind              312-316  ///
  byte    classwk          317-317  ///
  int     classwkd         318-320  ///
  byte    empsect          321-322  ///
  long    inctot           323-329  ///
  double  incearn          330-337  ///
  long    incwage          338-344  ///
  long    incself          345-350  ///
  long    incwel           351-356  ///
  long    incret           357-362  ///
  byte    mgratep          363-364  ///
  long    mgctry1          365-369  ///
  int     migpa            370-373  ///
  byte    disable          374-374  ///
  byte    disemp           375-375  ///
  byte    disblnd          376-376  ///
  byte    disdeaf          377-377  ///
  byte    dismute          378-378  ///
  byte    disuppr          379-379  ///
  byte    dismntl          380-380  ///
  byte    dispsyc          381-381  ///
  byte    pa10a_pernum     382-383  ///
  byte    pa10a_relate     384-385  ///
  byte    pa10a_relate2    386-387  ///
  byte    pa10a_nucleus    388-388  ///
  byte    pa10a_sex        389-389  ///
  int     pa10a_age        390-392  ///
  byte    pa10a_socsec     393-393  ///
  byte    pa10a_marst      394-394  ///
  byte    pa10a_diffhear   395-395  ///
  byte    pa10a_diffsee    396-396  ///
  byte    pa10a_diffwalk   397-397  ///
  byte    pa10a_diffarms   398-398  ///
  byte    pa10a_diffspeak  399-399  ///
  byte    pa10a_difflearn  400-400  ///
  byte    pa10a_disab      401-401  ///
  byte    pa10a_indig      402-403  ///
  byte    pa10a_black      404-404  ///
  byte    pa10a_black      405-405  ///
  long    pa10a_bpl        406-410  ///
  byte    pa10a_arrpa      411-411  ///
  long    pa10a_prvcntry   412-416  ///
  byte    pa10a_school     417-417  ///
  byte    pa10a_edattan    418-419  ///
  byte    pa10a_lit        420-420  ///
  byte    pa10a_degree     421-421  ///
  byte    pa10a_worked     422-422  ///
  byte    pa10a_abswk      423-423  ///
  byte    pa10a_wkpay      424-424  ///
  byte    pa10a_wklookwk   425-425  ///
  byte    pa10a_wklookmo   426-426  ///
  byte    pa10a_whynot     427-428  ///
  int     pa10a_occ        429-432  ///
  int     pa10a_ind        433-436  ///
  byte    pa10a_contract   437-437  ///
  long    pa10a_incbonus   438-442  ///
  long    pa10a_incind     443-447  ///
  long    pa10a_incret     448-452  ///
  long    pa10a_incacc     453-457  ///
  long    pa10a_incfoodp   458-462  ///
  long    pa10a_incasst    463-467  ///
  long    pa10a_incotha    468-472  ///
  byte    pa10a_asstoth    473-474  ///
  long    pa10a_incrent    475-479  ///
  long    pa10a_incsch     480-484  ///
  long    pa10a_incag      485-489  ///
  long    pa10a_incoth     490-494  ///
  byte    pa10a_incyes     495-495  ///
  byte    pa10a_chborn     496-497  ///
  byte    pa10a_chlive     498-499  ///
  byte    pa10a_chbornyr   500-500  ///
  byte    pa10a_chliveyr   501-501  ///
  long    pa10a_incp       502-508  ///
  int     pa10a_bplrc      509-512  ///
  int     pa10a_resdisrc   513-516  ///
  int     pa10a_prvdisrc   517-520  ///
  using `"ipumsi_00099.dat"'

replace wthh            = wthh            / 100
replace wtper           = wtper           / 100

format serial          %10.0f
format wthh            %8.2f
format wtper           %8.2f
format incearn         %8.0f

label var cntry           `"Country"'
label var year            `"Year"'
label var sample          `"IPUMS sample identifier"'
label var serial          `"Household serial number"'
label var persons         `"Number of person records in the household"'
label var wthh            `"Household weight"'
label var subsamp         `"Subsample number"'
label var gq              `"Group quarters status"'
label var unrel           `"Number of unrelated persons"'
label var urban           `"Urban-rural status"'
label var regionw         `"Continent and region of country"'
label var geolev1         `"1st subnational geographic level, world [consistent boundaries over time]"'
label var geo1a_pa        `"Province, Panama [Level 1; consistent boundaries over time]"'
label var geo1b_pa        `"Province, Panama [Level 1; inconsistent boundaries, harmonized by name]"'
label var geo2b_pa        `"District, Panama [Level 2; inconsistent boundaries, harmonized by name]"'
label var ownrshp         `"Ownership of dwelling [general version]"'
label var ownrshpd        `"Ownership of dwelling [detailed version]"'
label var intmig1         `"Number of international migrants"'
label var electrc         `"Electricity"'
label var watsup          `"Water supply"'
label var sewage          `"Sewage"'
label var fuelck          `"Cooking fuel"'
label var phone           `"Telephone availability"'
label var cell            `"Cellular phone availability"'
label var intrnet         `"Internet access"'
label var trash           `"Trash disposal"'
label var autos           `"Automobiles available"'
label var aircon          `"Air conditioning"'
label var computr         `"Computer"'
label var washer          `"Clothes washing machine"'
label var refrig          `"Refrigerator"'
label var tv              `"Television set"'
label var radio           `"Radio in household"'
label var rooms           `"Number of rooms"'
label var bedrms          `"Number of bedrooms"'
label var toilet          `"Toilet"'
label var floor           `"Floor material"'
label var wall            `"Wall or building material"'
label var roof            `"Roof material"'
label var bltyr           `"Year structure was built"'
label var strag2          `"Age of structure, coded from intervals"'
label var hhtype          `"Household classification"'
label var nfams           `"Number of families in household"'
label var ncoupls         `"Number of married couples in household"'
label var nmothrs         `"Number of mothers in household"'
label var nfathrs         `"Number of fathers in household"'
label var pa10a_dwnum     `"Dwelling number"'
label var pa10a_hhnum     `"Household number (within dwelling)"'
label var pa10a_hhn       `"Number of households in dwelling"'
label var pa10a_pernd     `"Number of persons in dwelling"'
label var pa10a_pern      `"Number of persons in household"'
label var pa10a_prov      `"Province where household is located"'
label var pa10a_hhn2      `"Household number"'
label var pa10a_typedw    `"Type of dwelling"'
label var pa10a_occupdw   `"Occupancy status of the dwelling"'
label var pa10a_ownershp  `"Ownership status of the dwelling"'
label var pa10a_ownshp2   `"Other types of ownership of the dwelling"'
label var pa10a_hpaym     `"Value of monthly rent or mortgage payment in Panamanian balboas"'
label var pa10a_constryr  `"Period of construction of the dwelling"'
label var pa10a_walls     `"Main wall materials"'
label var pa10a_roof      `"Main roof materials"'
label var pa10a_floors    `"Main floor materials"'
label var pa10a_rooms     `"Number of rooms in the dwelling"'
label var pa10a_bedrooms  `"Number of bedrooms in the dwelling"'
label var pa10a_watsup    `"Source of water supply"'
label var pa10a_dwatdry   `"Number of days per week with water supply during the dry season"'
label var pa10a_hwatdry   `"Number of hours a day with water supply during the dry season"'
label var pa10a_hwatrain  `"Number of hours a day with water supply during the rainy season"'
label var pa10a_toilet    `"Type of toilet facilities"'
label var pa10a_sewage1   `"Place used to deposit human waste"'
label var pa10a_toilet2   `"Use of toilet facilities"'
label var pa10a_light     `"Type of lighting"'
label var pa10a_lightpay  `"Monthly payment for electricity in Panamanian balboas"'
label var pa10a_trash     `"Main method of garbage disposal"'
label var pa10a_fuelck    `"Fuel for cooking"'
label var pa10a_econdw    `"Economic activity in the dwelling"'
label var pa10a_dw2use    `"Use of second dwelling"'
label var pa10a_numhhs    `"Number of households in the dwelling"'
label var pa10a_isdw      `"Dwelling counts as a dwelling"'
label var pa10a_incdw     `"Income of the dwelling in Panamanian balboas"'
label var pa10a_area      `"Area in which the household is located"'
label var pa10a_indarea   `"Is the dwelling located in an indigenous area?"'
label var pa10a_stove     `"Cook stove"'
label var pa10a_refrig    `"Refrigerator"'
label var pa10a_washer    `"Washing machine"'
label var pa10a_sewmach   `"Sewing machine"'
label var pa10a_phone     `"Residential phone"'
label var pa10a_radio     `"Radio"'
label var pa10a_radion    `"Number of radios in household"'
label var pa10a_fan       `"Electric fan"'
label var pa10a_fann      `"Number of electric fans in household"'
label var pa10a_celln     `"Number of cell phones in household"'
label var pa10a_auto      `"Automobile"'
label var pa10a_auton     `"Number of automobiles in household"'
label var pa10a_tv        `"TV set"'
label var pa10a_tvn       `"Number of TV sets in household"'
label var pa10a_cable     `"Cable TV"'
label var pa10a_comput    `"Computer"'
label var pa10a_computn   `"Number of computers in household"'
label var pa10a_internet  `"Internet connection"'
label var pa10a_plants    `"Does any person in this household have plants, fruit or timber trees, or pasture"'
label var pa10a_medplant  `"Does any person in this household have medicinal or ornamental plants for commer"'
label var pa10a_cattle    `"Does any person in this household have cattle, pigs, horses, etc.?"'
label var pa10a_poultry   `"Does any person in this household raise chickens, ducks, geese, turkeys, quails "'
label var pa10a_migrants  `"Household member left to live in another country in last decade"'
label var pa10a_mig1sex   `"Sex of first household member who migrated"'
label var pa10a_mig1age   `"Age of first household member at migration"'
label var pa10a_mig1yr    `"Year of migration for the first household member"'
label var pa10a_mig1ctry  `"Country to which the first household member migrated"'
label var pa10a_mig3sex   `"Sex of third household member who migrated"'
label var pa10a_inchh     `"Household income in Panamanian balboas"'
label var pa10a_hhtype    `"Household type"'
label var pa10a_area2     `"Area in which the dwelling is located"'
label var pernum          `"Person number"'
label var wtper           `"Person weight"'
label var momloc          `"Mother's location in household"'
label var poploc          `"Father's location in household"'
label var sploc           `"Spouse's location in household"'
label var parrule         `"Rule for linking parent"'
label var sprule          `"Rule for linking spouse"'
label var stepmom         `"Probable stepmother"'
label var steppop         `"Probable stepfather"'
label var polymal         `"Man with more than one wife linked"'
label var poly2nd         `"Woman is second or higher order wife"'
label var famsize         `"Number of own family members in household"'
label var nchild          `"Number of own children in household"'
label var nchlt5          `"Number of own children under age 5 in household"'
label var eldch           `"Age of eldest own child in household"'
label var yngch           `"Age of youngest own child in household"'
label var relate          `"Relationship to household head [general version]"'
label var related         `"Relationship to household head [detailed version]"'
label var age             `"Age"'
label var sex             `"Sex"'
label var marst           `"Marital status [general version]"'
label var marstd          `"Marital status [detailed version]"'
label var consens         `"Consensual union"'
label var chborn          `"Children ever born"'
label var chsurv          `"Children surviving"'
label var brthlyr         `"Number of births last year"'
label var bthsurv         `"Children surviving from births last year"'
label var nativty         `"Nativity status"'
label var yrsimm2         `"Years since immigrated, categorized"'
label var indig           `"Member of an indigenous group"'
label var ethnpa          `"Ethnicity (indigenous group) for Panama"'
label var school          `"School attendance"'
label var lit             `"Literacy"'
label var edattan         `"Educational attainment, international recode [general version]"'
label var edattand        `"Educational attainment, international recode [detailed version]"'
label var yrschl          `"Years of schooling"'
label var educpa          `"Educational attainment, Panama"'
label var empstat         `"Employment status [general version]"'
label var empstatd        `"Employment status [detailed version]"'
label var occisco         `"Occupation, ISCO general"'
label var occ             `"Occupation, unrecoded"'
label var indgen          `"Industry, general recode"'
label var ind             `"Industry, unrecoded"'
label var classwk         `"Class of worker [general version]"'
label var classwkd        `"Class of worker [detailed version]"'
label var empsect         `"Sector of employment"'
label var inctot          `"Total income"'
label var incearn         `"Earned income"'
label var incwage         `"Wage and salary income"'
label var incself         `"Self-employment income"'
label var incwel          `"Income from anti-poverty or welfare programs"'
label var incret          `"Retirement or pension income"'
label var mgratep         `"Migration status, previous residence"'
label var mgctry1         `"Country of previous residence"'
label var migpa           `"District of previous residence, Panama"'
label var disable         `"Disability status"'
label var disemp          `"Employment disability"'
label var disblnd         `"Blind or vision-impaired"'
label var disdeaf         `"Deaf or hearing-impaired"'
label var dismute         `"Mute"'
label var disuppr         `"Disability affecting upper extremities"'
label var dismntl         `"Mental disability"'
label var dispsyc         `"Psychological disability"'
label var pa10a_pernum    `"Person number (within household)"'
label var pa10a_relate    `"Relationship to head"'
label var pa10a_relate2   `"Other relatives of head"'
label var pa10a_nucleus   `"Nuclear family number"'
label var pa10a_sex       `"Sex"'
label var pa10a_age       `"Age in years"'
label var pa10a_socsec    `"Social security benefits"'
label var pa10a_marst     `"Marital status"'
label var pa10a_diffhear  `"Difficulty hearing"'
label var pa10a_diffsee   `"Difficulty seeing"'
label var pa10a_diffwalk  `"Difficulty walking"'
label var pa10a_diffarms  `"Difficulty using arms or hands"'
label var pa10a_diffspeak `"Difficulty speaking"'
label var pa10a_difflearn `"Difficulty learning"'
label var pa10a_disab     `"Disability"'
label var pa10a_indig     `"Indigenous group"'
label var pa10a_black     `"Black of African-descent group"'
label var pa10a_black     `"Black of African-descent group"'
label var pa10a_bpl       `"Country or district of birth"'
label var pa10a_arrpa     `"Period of arrival in Panama"'
label var pa10a_prvcntry  `"Country or district of previous residence"'
label var pa10a_school    `"Attending school"'
label var pa10a_edattan   `"Highest level of education passed"'
label var pa10a_lit       `"Able to read and write"'
label var pa10a_degree    `"Degree obtained"'
label var pa10a_worked    `"Worked last week"'
label var pa10a_abswk     `"Do you have a job from which you were temporarily absent last week?"'
label var pa10a_wkpay     `"Did you do any work for which you received any money last week?"'
label var pa10a_wklookwk  `"Looked for work last week"'
label var pa10a_wklookmo  `"Looked for work last month"'
label var pa10a_whynot    `"Reason for not looking for work"'
label var pa10a_occ       `"Occupation, 3 digits"'
label var pa10a_ind       `"Economic activity, 4 digits"'
label var pa10a_contract  `"Contract type"'
label var pa10a_incbonus  `"Income from thirteen month bonus in Panamanian balboas"'
label var pa10a_incind    `"Income for independent work of self-employment in Panamanian balboas"'
label var pa10a_incret    `"Income from retirement or pension in Panamanian balboas"'
label var pa10a_incacc    `"Income from pension due to accident, sickness, etc. in Panamanian balboas"'
label var pa10a_incfoodp  `"Income from food allowance in Panamanian balboas"'
label var pa10a_incasst   `"Income from cash assistance in Panamanian balboas"'
label var pa10a_incotha   `"Income from other sources of assistance in Panamanian balboas"'
label var pa10a_asstoth   `"Description of other sources of assistance"'
label var pa10a_incrent   `"Income from rent, returns on investments, etc. in Panamanian balboas"'
label var pa10a_incsch    `"Income from scholarships in Panamanian balboas"'
label var pa10a_incag     `"Income from sale of agricultural goods or livestock in Panamanian balboas"'
label var pa10a_incoth    `"Other income in Panamanian balboas"'
label var pa10a_incyes    `"Has income"'
label var pa10a_chborn    `"Number of children born alive"'
label var pa10a_chlive    `"Number of children currently alive"'
label var pa10a_chbornyr  `"Child born during the last 12 months"'
label var pa10a_chliveyr  `"Is the child born during the last 12 month currently alive?"'
label var pa10a_incp      `"Income of the person"'
label var pa10a_bplrc     `"Country or district of birth, recoded"'
label var pa10a_resdisrc  `"District of permanent residence, recoded"'
label var pa10a_prvdisrc  `"Country or district of previous residence recoded"'

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

label define geo1a_pa_lbl 591002 `"Coclé"'
label define geo1a_pa_lbl 591003 `"Colón"', add
label define geo1a_pa_lbl 591004 `"Bocas del Toro, Chiriquí, Veraguas, and Comarca Ngöbe-Buglé"', add
label define geo1a_pa_lbl 591006 `"Herrera"', add
label define geo1a_pa_lbl 591007 `"Los Santos"', add
label define geo1a_pa_lbl 591008 `"Darién, Comarca Embera and Panamá"', add
label define geo1a_pa_lbl 591010 `"Comarca Kuna Yala  (San Blas)"', add
label values geo1a_pa geo1a_pa_lbl

label define geo1b_pa_lbl 01 `"Bocas del Toro"'
label define geo1b_pa_lbl 02 `"Coclé"', add
label define geo1b_pa_lbl 03 `"Colón and Comarca Kuna Yala  (San Blas)"', add
label define geo1b_pa_lbl 04 `"Chiriquí"', add
label define geo1b_pa_lbl 05 `"Darién and Comarca Embera"', add
label define geo1b_pa_lbl 06 `"Herrera"', add
label define geo1b_pa_lbl 07 `"Los Santos"', add
label define geo1b_pa_lbl 08 `"Panamá"', add
label define geo1b_pa_lbl 09 `"Veraguas"', add
label define geo1b_pa_lbl 12 `"Comarca Ngöbe-Buglé"', add
label values geo1b_pa geo1b_pa_lbl

label define geo2b_pa_lbl 0102 `"Changuinola"'
label define geo2b_pa_lbl 0190 `"Other districts in Bocas del Toro province"', add
label define geo2b_pa_lbl 0201 `"Aguadulce"', add
label define geo2b_pa_lbl 0202 `"Anton"', add
label define geo2b_pa_lbl 0203 `"La Pintada"', add
label define geo2b_pa_lbl 0206 `"Penonome"', add
label define geo2b_pa_lbl 0290 `"Other districts in Cocle province"', add
label define geo2b_pa_lbl 0301 `"Colon"', add
label define geo2b_pa_lbl 0390 `"Other districts in Colon province"', add
label define geo2b_pa_lbl 0402 `"Baru"', add
label define geo2b_pa_lbl 0404 `"Boquete"', add
label define geo2b_pa_lbl 0405 `"Bugaba"', add
label define geo2b_pa_lbl 0406 `"David"', add
label define geo2b_pa_lbl 0407 `"Dolega"', add
label define geo2b_pa_lbl 0410 `"Renacimiento"', add
label define geo2b_pa_lbl 0490 `"Other districts in Chiriqui province"', add
label define geo2b_pa_lbl 0501 `"Chepigana"', add
label define geo2b_pa_lbl 0599 `"Districts in Darien province"', add
label define geo2b_pa_lbl 0601 `"Chitre"', add
label define geo2b_pa_lbl 0690 `"Other districts in Herrera province"', add
label define geo2b_pa_lbl 0702 `"Las Tablas"', add
label define geo2b_pa_lbl 0703 `"Los Santos"', add
label define geo2b_pa_lbl 0790 `"Other districts in Los Santos province"', add
label define geo2b_pa_lbl 0801 `"Arrijan"', add
label define geo2b_pa_lbl 0803 `"Capira"', add
label define geo2b_pa_lbl 0804 `"Chame"', add
label define geo2b_pa_lbl 0805 `"Chepo"', add
label define geo2b_pa_lbl 0807 `"La Chorrera"', add
label define geo2b_pa_lbl 0808 `"Panamá"', add
label define geo2b_pa_lbl 0810 `"San Miguelito"', add
label define geo2b_pa_lbl 0890 `"Other districts in Panama province"', add
label define geo2b_pa_lbl 0910 `"Santiago"', add
label define geo2b_pa_lbl 0911 `"Sona"', add
label define geo2b_pa_lbl 0990 `"Other districts in Veraguas province"', add
label define geo2b_pa_lbl 1001 `"Kuna Yala comarca"', add
label define geo2b_pa_lbl 1203 `"Mina"', add
label define geo2b_pa_lbl 1290 `"Other districts in Ngöble-Buglé comarca"', add
label values geo2b_pa geo2b_pa_lbl

label define ownrshp_lbl 0 `"NIU (not in universe)"'
label define ownrshp_lbl 1 `"Owned"', add
label define ownrshp_lbl 2 `"Not owned"', add
label define ownrshp_lbl 9 `"Unknown"', add
label values ownrshp ownrshp_lbl

label define ownrshpd_lbl 000 `"NIU (not in universe)"'
label define ownrshpd_lbl 100 `"Owned"', add
label define ownrshpd_lbl 110 `"Owned, already paid"', add
label define ownrshpd_lbl 120 `"Owned, still paying"', add
label define ownrshpd_lbl 130 `"Owned, constructed"', add
label define ownrshpd_lbl 140 `"Owned, inherited"', add
label define ownrshpd_lbl 190 `"Owned, other"', add
label define ownrshpd_lbl 191 `"Owned, house"', add
label define ownrshpd_lbl 192 `"Owned, condominium"', add
label define ownrshpd_lbl 193 `"Apartment proprietor"', add
label define ownrshpd_lbl 194 `"Shared ownership"', add
label define ownrshpd_lbl 200 `"Not owned"', add
label define ownrshpd_lbl 210 `"Renting, not specified"', add
label define ownrshpd_lbl 211 `"Renting, government"', add
label define ownrshpd_lbl 212 `"Renting, local authority"', add
label define ownrshpd_lbl 213 `"Renting, parastatal"', add
label define ownrshpd_lbl 214 `"Renting, private"', add
label define ownrshpd_lbl 215 `"Renting, private company"', add
label define ownrshpd_lbl 216 `"Renting, individual"', add
label define ownrshpd_lbl 217 `"Renting, collective"', add
label define ownrshpd_lbl 218 `"Renting, joint state and individual"', add
label define ownrshpd_lbl 219 `"Renting, public subsidized"', add
label define ownrshpd_lbl 220 `"Renting, private subsidized"', add
label define ownrshpd_lbl 221 `"Renting, co-tenant"', add
label define ownrshpd_lbl 222 `"Renting, relative of tenant"', add
label define ownrshpd_lbl 223 `"Renting, cooperative"', add
label define ownrshpd_lbl 224 `"Renting, with a job or business"', add
label define ownrshpd_lbl 225 `"Renting, loan-backed habitation"', add
label define ownrshpd_lbl 226 `"Renting, mixed contract"', add
label define ownrshpd_lbl 227 `"Furnished dwelling"', add
label define ownrshpd_lbl 228 `"Sharecropping"', add
label define ownrshpd_lbl 230 `"Subletting"', add
label define ownrshpd_lbl 231 `"Rent to own"', add
label define ownrshpd_lbl 239 `"Renting, other"', add
label define ownrshpd_lbl 240 `"Occupied de facto/squatting"', add
label define ownrshpd_lbl 250 `"Free/usufruct (no cash rent)"', add
label define ownrshpd_lbl 251 `"Free, provided by employer"', add
label define ownrshpd_lbl 252 `"Free, without work or services"', add
label define ownrshpd_lbl 253 `"Free, provided by family or friend"', add
label define ownrshpd_lbl 254 `"Free, private"', add
label define ownrshpd_lbl 255 `"Free, public"', add
label define ownrshpd_lbl 256 `"Free, condemned"', add
label define ownrshpd_lbl 257 `"Free, other"', add
label define ownrshpd_lbl 290 `"Not owned, other"', add
label define ownrshpd_lbl 999 `"Unknown"', add
label values ownrshpd ownrshpd_lbl

label define intmig1_lbl 00 `"No migrants"'
label define intmig1_lbl 01 `"1"', add
label define intmig1_lbl 02 `"2"', add
label define intmig1_lbl 03 `"3"', add
label define intmig1_lbl 04 `"4"', add
label define intmig1_lbl 05 `"5"', add
label define intmig1_lbl 06 `"6"', add
label define intmig1_lbl 07 `"7"', add
label define intmig1_lbl 08 `"8"', add
label define intmig1_lbl 09 `"9"', add
label define intmig1_lbl 10 `"10 or more"', add
label define intmig1_lbl 98 `"Unknown"', add
label define intmig1_lbl 99 `"NIU (not in universe)"', add
label values intmig1 intmig1_lbl

label define electrc_lbl 0 `"NIU (not in universe)"'
label define electrc_lbl 1 `"Yes"', add
label define electrc_lbl 2 `"No"', add
label define electrc_lbl 9 `"Unknown"', add
label values electrc electrc_lbl

label define watsup_lbl 00 `"NIU (not in universe)"'
label define watsup_lbl 10 `"Yes, piped water"', add
label define watsup_lbl 11 `"Piped inside dwelling"', add
label define watsup_lbl 12 `"Piped, exclusively to this household"', add
label define watsup_lbl 13 `"Piped, shared with other households"', add
label define watsup_lbl 14 `"Piped outside the dwelling"', add
label define watsup_lbl 15 `"Piped outside dwelling, in building"', add
label define watsup_lbl 16 `"Piped within the building or plot of land"', add
label define watsup_lbl 17 `"Piped outside the building or lot"', add
label define watsup_lbl 18 `"Have access to public piped water"', add
label define watsup_lbl 20 `"No piped water"', add
label define watsup_lbl 99 `"Unknown"', add
label values watsup watsup_lbl

label define sewage_lbl 00 `"NIU (not in universe)"'
label define sewage_lbl 10 `"Connected to sewage system or septic tank"', add
label define sewage_lbl 11 `"Sewage system (public sewage disposal)"', add
label define sewage_lbl 12 `"Septic tank (private sewage disposal)"', add
label define sewage_lbl 20 `"Not connected to sewage disposal system"', add
label define sewage_lbl 99 `"Unknown"', add
label values sewage sewage_lbl

label define fuelck_lbl 00 `"NIU (not in universe)"'
label define fuelck_lbl 10 `"None"', add
label define fuelck_lbl 20 `"Electricity"', add
label define fuelck_lbl 30 `"Petroleum gas, unspecified"', add
label define fuelck_lbl 31 `"Gas -- piped/utility"', add
label define fuelck_lbl 32 `"Gas -- tanked or bottled"', add
label define fuelck_lbl 33 `"Propane"', add
label define fuelck_lbl 35 `"Liquefied petroleum gas"', add
label define fuelck_lbl 40 `"Petroleum liquid"', add
label define fuelck_lbl 41 `"Oil, kerosene, and other liquid fuels"', add
label define fuelck_lbl 42 `"Kerosene/paraffin"', add
label define fuelck_lbl 43 `"Kerosene or oil"', add
label define fuelck_lbl 44 `"Kerosene or gasoline"', add
label define fuelck_lbl 45 `"Gasoline"', add
label define fuelck_lbl 46 `"Cocinol"', add
label define fuelck_lbl 50 `"Wood, coal, and other solid fuels"', add
label define fuelck_lbl 51 `"Wood and other plant fuels"', add
label define fuelck_lbl 52 `"Non-wood plant materials"', add
label define fuelck_lbl 53 `"Coal or charcoal"', add
label define fuelck_lbl 54 `"Charcoal"', add
label define fuelck_lbl 55 `"Coal"', add
label define fuelck_lbl 56 `"Wood or charcoal"', add
label define fuelck_lbl 60 `"Multiple fuels"', add
label define fuelck_lbl 61 `"Bottled gas and wood"', add
label define fuelck_lbl 62 `"Propane and electricity"', add
label define fuelck_lbl 63 `"Propane, kerosene, and electricity"', add
label define fuelck_lbl 64 `"Propane and kerosene"', add
label define fuelck_lbl 65 `"Kerosene and electrictiy"', add
label define fuelck_lbl 66 `"Other combinations"', add
label define fuelck_lbl 70 `"Other"', add
label define fuelck_lbl 71 `"Alcohol"', add
label define fuelck_lbl 72 `"Biogas"', add
label define fuelck_lbl 73 `"Discarded or waste material"', add
label define fuelck_lbl 74 `"Dung/manure"', add
label define fuelck_lbl 75 `"Dung or grass"', add
label define fuelck_lbl 76 `"Solar energy"', add
label define fuelck_lbl 77 `"Candle"', add
label define fuelck_lbl 99 `"Unknown/missing"', add
label values fuelck fuelck_lbl

label define phone_lbl 0 `"NIU (not in universe)"'
label define phone_lbl 1 `"No"', add
label define phone_lbl 2 `"Yes"', add
label define phone_lbl 9 `"Unknown/missing"', add
label values phone phone_lbl

label define cell_lbl 0 `"NIU (not in universe)"'
label define cell_lbl 1 `"Yes"', add
label define cell_lbl 2 `"No"', add
label define cell_lbl 9 `"Unknown"', add
label values cell cell_lbl

label define intrnet_lbl 0 `"NIU (not in universe)"'
label define intrnet_lbl 1 `"No"', add
label define intrnet_lbl 2 `"Yes"', add
label define intrnet_lbl 9 `"Unknown"', add
label values intrnet intrnet_lbl

label define trash_lbl 00 `"NIU (not in universe)"'
label define trash_lbl 10 `"Collected by a sanitation service"', add
label define trash_lbl 11 `"Collected directly from the household or dwelling"', add
label define trash_lbl 12 `"Collected indirectly from a garbage container or deposit"', add
label define trash_lbl 13 `"Collected by a sanitation service only"', add
label define trash_lbl 14 `"Collected by a sanitation service and disposed of in some other manner"', add
label define trash_lbl 20 `"Disposed of in some other manner"', add
label define trash_lbl 21 `"Burned or buried"', add
label define trash_lbl 22 `"Burned"', add
label define trash_lbl 23 `"Buried"', add
label define trash_lbl 24 `"Thrown into street, vacant land, or common area"', add
label define trash_lbl 25 `"Thrown into river, lake, ocean, lagoon, etc."', add
label define trash_lbl 26 `"Thrown into canyon or gulley"', add
label define trash_lbl 27 `"Dumped in pit"', add
label define trash_lbl 28 `"Communal refuse dump"', add
label define trash_lbl 29 `"Own refuse dump"', add
label define trash_lbl 30 `"Authorized refuse dump"', add
label define trash_lbl 31 `"Illegal refuse dump"', add
label define trash_lbl 32 `"Other dumping"', add
label define trash_lbl 33 `"Outside"', add
label define trash_lbl 34 `"In the fields"', add
label define trash_lbl 35 `"Fed to animals"', add
label define trash_lbl 36 `"Composted"', add
label define trash_lbl 37 `"Heap"', add
label define trash_lbl 38 `"Garden"', add
label define trash_lbl 39 `"Other, none"', add
label define trash_lbl 99 `"Unknown/missing"', add
label values trash trash_lbl

label define autos_lbl 0 `"No autos"'
label define autos_lbl 1 `"1 auto"', add
label define autos_lbl 2 `"2 autos"', add
label define autos_lbl 3 `"3 autos"', add
label define autos_lbl 4 `"4 autos"', add
label define autos_lbl 5 `"5 autos"', add
label define autos_lbl 6 `"6+ autos"', add
label define autos_lbl 7 `"Have auto, number unspecified"', add
label define autos_lbl 8 `"Unknown"', add
label define autos_lbl 9 `"NIU (not in universe)"', add
label values autos autos_lbl

label define aircon_lbl 00 `"NIU (not in universe)"'
label define aircon_lbl 10 `"No air conditioning"', add
label define aircon_lbl 20 `"Yes, air conditioning"', add
label define aircon_lbl 21 `"1 unit or room"', add
label define aircon_lbl 22 `"2 units or rooms"', add
label define aircon_lbl 23 `"3 units or rooms"', add
label define aircon_lbl 24 `"4 units or rooms"', add
label define aircon_lbl 25 `"5 units or rooms"', add
label define aircon_lbl 26 `"6 units or rooms"', add
label define aircon_lbl 27 `"7 units or rooms"', add
label define aircon_lbl 28 `"8 or more units or rooms"', add
label define aircon_lbl 29 `"Central system"', add
label define aircon_lbl 99 `"Unknown"', add
label values aircon aircon_lbl

label define computr_lbl 0 `"NIU (not in universe)"'
label define computr_lbl 1 `"No"', add
label define computr_lbl 2 `"Yes"', add
label define computr_lbl 9 `"Unknown/missing"', add
label values computr computr_lbl

label define washer_lbl 0 `"NIU (not in universe)"'
label define washer_lbl 1 `"No"', add
label define washer_lbl 2 `"Yes"', add
label define washer_lbl 3 `"Automatic or semi-automatic"', add
label define washer_lbl 4 `"Wringer or other non-automatic"', add
label define washer_lbl 9 `"Unknown/missing"', add
label values washer washer_lbl

label define refrig_lbl 0 `"NIU (not in universe)"'
label define refrig_lbl 1 `"No"', add
label define refrig_lbl 2 `"Yes"', add
label define refrig_lbl 9 `"Unknown/missing"', add
label values refrig refrig_lbl

label define tv_lbl 00 `"NIU (not in universe)"'
label define tv_lbl 10 `"No"', add
label define tv_lbl 20 `"Yes, color or black-and-white not specified"', add
label define tv_lbl 21 `"1 television"', add
label define tv_lbl 22 `"2 televisions"', add
label define tv_lbl 23 `"3 televisions"', add
label define tv_lbl 24 `"4 televisions"', add
label define tv_lbl 25 `"5 televisions"', add
label define tv_lbl 26 `"6 televisions"', add
label define tv_lbl 27 `"7 televisions"', add
label define tv_lbl 28 `"8 televisions"', add
label define tv_lbl 29 `"9+ televisions"', add
label define tv_lbl 30 `"Yes, color only"', add
label define tv_lbl 31 `"1 color tv"', add
label define tv_lbl 32 `"2 color tvs"', add
label define tv_lbl 33 `"3+ color tvs"', add
label define tv_lbl 40 `"Yes, black-and-white only"', add
label define tv_lbl 41 `"1 black-white tv"', add
label define tv_lbl 42 `"2 black-white tvs"', add
label define tv_lbl 43 `"3+ black-white tvs"', add
label define tv_lbl 50 `"Yes, both color and black-and-white"', add
label define tv_lbl 52 `"2+ color and black-white tvs"', add
label define tv_lbl 53 `"3+ color and black-white tvs"', add
label define tv_lbl 54 `"4+ color and black-white tvs"', add
label define tv_lbl 99 `"Unknown/missing"', add
label values tv tv_lbl

label define radio_lbl 0 `"NIU (not in universe)"'
label define radio_lbl 1 `"No"', add
label define radio_lbl 2 `"Yes"', add
label define radio_lbl 9 `"Unknown/missing"', add
label values radio radio_lbl

label define rooms_lbl 00 `"Part of a room; no rooms"'
label define rooms_lbl 01 `"1"', add
label define rooms_lbl 02 `"2"', add
label define rooms_lbl 03 `"3"', add
label define rooms_lbl 04 `"4"', add
label define rooms_lbl 05 `"5"', add
label define rooms_lbl 06 `"6"', add
label define rooms_lbl 07 `"7"', add
label define rooms_lbl 08 `"8"', add
label define rooms_lbl 09 `"9"', add
label define rooms_lbl 10 `"10"', add
label define rooms_lbl 11 `"11"', add
label define rooms_lbl 12 `"12"', add
label define rooms_lbl 13 `"13"', add
label define rooms_lbl 14 `"14"', add
label define rooms_lbl 15 `"15"', add
label define rooms_lbl 16 `"16"', add
label define rooms_lbl 17 `"17"', add
label define rooms_lbl 18 `"18"', add
label define rooms_lbl 19 `"19"', add
label define rooms_lbl 20 `"20"', add
label define rooms_lbl 21 `"21"', add
label define rooms_lbl 22 `"22"', add
label define rooms_lbl 23 `"23"', add
label define rooms_lbl 24 `"24"', add
label define rooms_lbl 25 `"25"', add
label define rooms_lbl 26 `"26"', add
label define rooms_lbl 27 `"27"', add
label define rooms_lbl 28 `"28"', add
label define rooms_lbl 29 `"29"', add
label define rooms_lbl 30 `"30+"', add
label define rooms_lbl 98 `"Unknown"', add
label define rooms_lbl 99 `"NIU (not in universe)"', add
label values rooms rooms_lbl

label define bedrms_lbl 00 `"No bedrooms"'
label define bedrms_lbl 01 `"1"', add
label define bedrms_lbl 02 `"2"', add
label define bedrms_lbl 03 `"3"', add
label define bedrms_lbl 04 `"4"', add
label define bedrms_lbl 05 `"5"', add
label define bedrms_lbl 06 `"6"', add
label define bedrms_lbl 07 `"7"', add
label define bedrms_lbl 08 `"8"', add
label define bedrms_lbl 09 `"9"', add
label define bedrms_lbl 10 `"10"', add
label define bedrms_lbl 11 `"11"', add
label define bedrms_lbl 12 `"12"', add
label define bedrms_lbl 13 `"13"', add
label define bedrms_lbl 14 `"14"', add
label define bedrms_lbl 15 `"15"', add
label define bedrms_lbl 16 `"16"', add
label define bedrms_lbl 17 `"17"', add
label define bedrms_lbl 18 `"18"', add
label define bedrms_lbl 19 `"19"', add
label define bedrms_lbl 20 `"20+"', add
label define bedrms_lbl 98 `"Unknown"', add
label define bedrms_lbl 99 `"NIU (not in universe)"', add
label values bedrms bedrms_lbl

label define toilet_lbl 00 `"NIU (not in universe)"'
label define toilet_lbl 10 `"No toilet"', add
label define toilet_lbl 11 `"No flush toilet"', add
label define toilet_lbl 20 `"Have toilet, type not specified"', add
label define toilet_lbl 21 `"Flush toilet"', add
label define toilet_lbl 22 `"Non-flush, latrine"', add
label define toilet_lbl 23 `"Non-flush, other and unspecified"', add
label define toilet_lbl 99 `"Unknown"', add
label values toilet toilet_lbl

label define floor_lbl 000 `"NIU (not in universe)"'
label define floor_lbl 100 `"None/unfinished (earth)"', add
label define floor_lbl 110 `"Sand"', add
label define floor_lbl 120 `"Dung"', add
label define floor_lbl 200 `"Finished"', add
label define floor_lbl 201 `"Cement, tile, or brick"', add
label define floor_lbl 202 `"Cement"', add
label define floor_lbl 203 `"Concrete"', add
label define floor_lbl 204 `"Cement screed"', add
label define floor_lbl 205 `"Ceramic tile"', add
label define floor_lbl 206 `"Paving stone, cement tile"', add
label define floor_lbl 207 `"Stone"', add
label define floor_lbl 208 `"Brick"', add
label define floor_lbl 209 `"Brick or stone"', add
label define floor_lbl 210 `"Brick or cement"', add
label define floor_lbl 211 `"Block"', add
label define floor_lbl 212 `"Terrazzo"', add
label define floor_lbl 213 `"Wood"', add
label define floor_lbl 214 `"Palm, bamboo"', add
label define floor_lbl 215 `"Parquet"', add
label define floor_lbl 216 `"Parquet, tile, vinyl"', add
label define floor_lbl 217 `"Parquet, tile, marble"', add
label define floor_lbl 218 `"Ceramic, marble, granite"', add
label define floor_lbl 219 `"Ceramic, marble, tile, or vinyl"', add
label define floor_lbl 220 `"Marble"', add
label define floor_lbl 221 `"Mosaic"', add
label define floor_lbl 222 `"Tile"', add
label define floor_lbl 223 `"Tile, linoleum, ceramic, etc"', add
label define floor_lbl 224 `"Tile, cement"', add
label define floor_lbl 225 `"Tile, stone"', add
label define floor_lbl 226 `"Tile, stone, brick"', add
label define floor_lbl 227 `"Tile, stone, vinyl, brick"', add
label define floor_lbl 228 `"Tile, vinyl, brick"', add
label define floor_lbl 229 `"Tile, vinyl"', add
label define floor_lbl 230 `"Vinyl, linoleum, etc"', add
label define floor_lbl 231 `"Asphalt sheet, vinyl, etc"', add
label define floor_lbl 232 `"Synthetic, plastic"', add
label define floor_lbl 233 `"Cane"', add
label define floor_lbl 234 `"Carpet"', add
label define floor_lbl 235 `"Scrap material"', add
label define floor_lbl 236 `"Other finished, n.e.c."', add
label define floor_lbl 999 `"Unknown/missing"', add
label values floor floor_lbl

label define wall_lbl 000 `"NIU (not in universe)"'
label define wall_lbl 100 `"No walls"', add
label define wall_lbl 200 `"Cardboard, scrap, and miscellaneous materials"', add
label define wall_lbl 201 `"Waste, scrap, or discarded material"', add
label define wall_lbl 202 `"Fabric or discarded material"', add
label define wall_lbl 203 `"Zinc, fabric, cardboard, tins, and waste material"', add
label define wall_lbl 204 `"Cardboard sheet"', add
label define wall_lbl 205 `"Plastic sheeting, cardboard"', add
label define wall_lbl 206 `"Makeshift, salvaged, or improvised materials"', add
label define wall_lbl 207 `"Reused materials"', add
label define wall_lbl 300 `"Wood"', add
label define wall_lbl 310 `"Rough wood"', add
label define wall_lbl 320 `"Wood, fibercement or plywood"', add
label define wall_lbl 330 `"Wood, formica, and other"', add
label define wall_lbl 340 `"Wood or bamboo"', add
label define wall_lbl 350 `"Wood or straw"', add
label define wall_lbl 400 `"Other plant-based materials"', add
label define wall_lbl 401 `"Plantain leaves and similar material"', add
label define wall_lbl 402 `"Bamboo or cane"', add
label define wall_lbl 403 `"Bamboo, sawali, cogon, nipa"', add
label define wall_lbl 404 `"Straw or bamboo"', add
label define wall_lbl 405 `"Grass, straw or reed"', add
label define wall_lbl 406 `"Reed, bamboo, or palm"', add
label define wall_lbl 407 `"Cane, palm leaves, logs"', add
label define wall_lbl 408 `"Palm leaves or palm planks"', add
label define wall_lbl 500 `"Masonry, stone, cement, adobe, metal, glass, and other fabricated materials (sometimes mixed with wood)"', add
label define wall_lbl 501 `"Brick, block, stone, or cement"', add
label define wall_lbl 502 `"Brick, stone, concrete"', add
label define wall_lbl 503 `"Brick, stone, or substitutes (dividing panels made of reinforced concrete)"', add
label define wall_lbl 504 `"Brick, stone, or substitutes (dividing panels made of wood)"', add
label define wall_lbl 505 `"Brick or tile"', add
label define wall_lbl 506 `"Brick or stone"', add
label define wall_lbl 507 `"Brick or cement block"', add
label define wall_lbl 508 `"Brick with plaster exterior"', add
label define wall_lbl 509 `"Brick without plaster exterior"', add
label define wall_lbl 510 `"Burnt or stabilized brick"', add
label define wall_lbl 511 `"Brick"', add
label define wall_lbl 512 `"Unburnt brick"', add
label define wall_lbl 513 `"Unburnt brick with cement"', add
label define wall_lbl 514 `"Unburnt brick with mud"', add
label define wall_lbl 515 `"Concrete"', add
label define wall_lbl 516 `"Landcrete"', add
label define wall_lbl 517 `"Cement blocks"', add
label define wall_lbl 518 `"Cement blocks or brick"', add
label define wall_lbl 519 `"Cement blocks or brick, unfinished"', add
label define wall_lbl 520 `"Cement and adobe bricks"', add
label define wall_lbl 521 `"Cement and stone block"', add
label define wall_lbl 522 `"Reinforced concrete, pre-cast concrete panels, or steel skeleton framed concrete"', add
label define wall_lbl 523 `"Concrete, reinforced concrete, blocks, panels"', add
label define wall_lbl 524 `"Adobe"', add
label define wall_lbl 525 `"Adobe walls with plaster exterior"', add
label define wall_lbl 526 `"Adobe walls without plaster exterior"', add
label define wall_lbl 527 `"Adobe with cement exterior"', add
label define wall_lbl 528 `"Adobe (tabique, quinche)"', add
label define wall_lbl 529 `"Wood and earth adobe"', add
label define wall_lbl 530 `"Wood and cement adobe"', add
label define wall_lbl 531 `"Mud or adobe"', add
label define wall_lbl 532 `"Pressed dirt"', add
label define wall_lbl 533 `"Clay"', add
label define wall_lbl 534 `"Coated clay/mud with sticks/cane"', add
label define wall_lbl 535 `"Clay or clay-covered sticks"', add
label define wall_lbl 536 `"Netted bamboo or cane with mud"', add
label define wall_lbl 537 `"Bundle of mud, straw, other materials"', add
label define wall_lbl 538 `"Mud with wood/wattle"', add
label define wall_lbl 539 `"Pole and mud"', add
label define wall_lbl 540 `"Mud with cement"', add
label define wall_lbl 541 `"Unfinished lathe and plaster, stucco, etc."', add
label define wall_lbl 542 `"Stone"', add
label define wall_lbl 543 `"Hand-laid stone"', add
label define wall_lbl 544 `"Quarried stone"', add
label define wall_lbl 545 `"Cut stone and concrete"', add
label define wall_lbl 546 `"Cemented stone"', add
label define wall_lbl 547 `"Stone with clay"', add
label define wall_lbl 548 `"Blocks of light material"', add
label define wall_lbl 549 `"Prefabricated material"', add
label define wall_lbl 550 `"Asbestos"', add
label define wall_lbl 551 `"Metal or asbestos sheet"', add
label define wall_lbl 552 `"Metal or iron sheet"', add
label define wall_lbl 553 `"Metal or fibercement sheeting"', add
label define wall_lbl 554 `"Galvanized iron or aluminum"', add
label define wall_lbl 555 `"Tin"', add
label define wall_lbl 556 `"Glass"', add
label define wall_lbl 557 `"Cloth"', add
label define wall_lbl 558 `"Covintec panels"', add
label define wall_lbl 559 `"Mixed material"', add
label define wall_lbl 560 `"Mixed material: part wood; part concrete, brick, or stone"', add
label define wall_lbl 561 `"Wood plastered with clay, adobe, other materials; wood pressed panels; rolled mud bricks; etc."', add
label define wall_lbl 570 `"Mainly permanent materials"', add
label define wall_lbl 600 `"Other material"', add
label define wall_lbl 999 `"Unknown/missing"', add
label values wall wall_lbl

label define roof_lbl 00 `"NIU (not in universe)"'
label define roof_lbl 10 `"Masonry, concrete, clay tile, or tiles of unspecified type"', add
label define roof_lbl 11 `"Concrete or cement"', add
label define roof_lbl 12 `"Reinforced concrete (slab)"', add
label define roof_lbl 13 `"Cement or sheet metal"', add
label define roof_lbl 14 `"Tile, unspecified"', add
label define roof_lbl 15 `"Clay tile"', add
label define roof_lbl 16 `"Tile or cement"', add
label define roof_lbl 17 `"Modern tiles, industrial"', add
label define roof_lbl 18 `"Traditional tiles, locally made"', add
label define roof_lbl 19 `"Tile or flat stone"', add
label define roof_lbl 20 `"Fibercement or plastic"', add
label define roof_lbl 21 `"Asphalt or laminate cover"', add
label define roof_lbl 22 `"Tile, cement, asphalt"', add
label define roof_lbl 23 `"Asphalt tile"', add
label define roof_lbl 24 `"Slate or tile"', add
label define roof_lbl 25 `"Slate or asbestos"', add
label define roof_lbl 26 `"Asbestos"', add
label define roof_lbl 27 `"Adobe"', add
label define roof_lbl 28 `"Tiles or wood planks"', add
label define roof_lbl 29 `"Roofing shingles"', add
label define roof_lbl 30 `"Metal"', add
label define roof_lbl 31 `"Sheet metal"', add
label define roof_lbl 32 `"Zinc or tin"', add
label define roof_lbl 33 `"Tin"', add
label define roof_lbl 34 `"Sheet metal or other sheet material"', add
label define roof_lbl 35 `"Sheet metal, tile, slate"', add
label define roof_lbl 40 `"Wood and other plant materials"', add
label define roof_lbl 41 `"Wood"', add
label define roof_lbl 42 `"Wood, including bamboo"', add
label define roof_lbl 43 `"Bamboo"', add
label define roof_lbl 44 `"Cogon, nipa, anahaw"', add
label define roof_lbl 45 `"Thatch (straw, grass, leaves, palm, etc.)"', add
label define roof_lbl 46 `"Cane, wood, straw"', add
label define roof_lbl 47 `"Grass"', add
label define roof_lbl 48 `"Papyrus"', add
label define roof_lbl 49 `"Banana leaves or fiber"', add
label define roof_lbl 50 `"Palm or makuti"', add
label define roof_lbl 51 `"Plant material with clay"', add
label define roof_lbl 52 `"Grass and mud"', add
label define roof_lbl 53 `"Straw, bamboo, polythene"', add
label define roof_lbl 54 `"Rustic mat"', add
label define roof_lbl 60 `"Mud or earth"', add
label define roof_lbl 61 `"Clay"', add
label define roof_lbl 70 `"Cardboard, scrap, and miscellaneous materials"', add
label define roof_lbl 71 `"Discarded or scrap material"', add
label define roof_lbl 72 `"Cardboard"', add
label define roof_lbl 73 `"Plastic"', add
label define roof_lbl 80 `"Other, unspecified"', add
label define roof_lbl 99 `"Unknown/missing"', add
label values roof roof_lbl

label define bltyr_lbl 0000 `"NIU (not in universe)"'
label define bltyr_lbl 1870 `"1870 or earlier"', add
label define bltyr_lbl 1871 `"1871"', add
label define bltyr_lbl 1872 `"1872"', add
label define bltyr_lbl 1873 `"1873"', add
label define bltyr_lbl 1874 `"1874"', add
label define bltyr_lbl 1875 `"1875"', add
label define bltyr_lbl 1876 `"1876"', add
label define bltyr_lbl 1877 `"1877"', add
label define bltyr_lbl 1878 `"1878"', add
label define bltyr_lbl 1879 `"1879"', add
label define bltyr_lbl 1880 `"1880"', add
label define bltyr_lbl 1881 `"1881"', add
label define bltyr_lbl 1882 `"1882"', add
label define bltyr_lbl 1883 `"1883"', add
label define bltyr_lbl 1884 `"1884"', add
label define bltyr_lbl 1885 `"1885"', add
label define bltyr_lbl 1886 `"1886"', add
label define bltyr_lbl 1887 `"1887"', add
label define bltyr_lbl 1888 `"1888"', add
label define bltyr_lbl 1889 `"1889"', add
label define bltyr_lbl 1890 `"1890"', add
label define bltyr_lbl 1891 `"1891"', add
label define bltyr_lbl 1892 `"1892"', add
label define bltyr_lbl 1893 `"1893"', add
label define bltyr_lbl 1894 `"1894"', add
label define bltyr_lbl 1895 `"1895"', add
label define bltyr_lbl 1896 `"1896"', add
label define bltyr_lbl 1897 `"1897"', add
label define bltyr_lbl 1898 `"1898"', add
label define bltyr_lbl 1899 `"1899"', add
label define bltyr_lbl 1900 `"1900"', add
label define bltyr_lbl 1901 `"1901"', add
label define bltyr_lbl 1902 `"1902"', add
label define bltyr_lbl 1903 `"1903"', add
label define bltyr_lbl 1904 `"1904"', add
label define bltyr_lbl 1905 `"1905"', add
label define bltyr_lbl 1906 `"1906"', add
label define bltyr_lbl 1907 `"1907"', add
label define bltyr_lbl 1908 `"1908"', add
label define bltyr_lbl 1909 `"1909"', add
label define bltyr_lbl 1910 `"1910"', add
label define bltyr_lbl 1911 `"1911"', add
label define bltyr_lbl 1912 `"1912"', add
label define bltyr_lbl 1913 `"1913"', add
label define bltyr_lbl 1914 `"1914"', add
label define bltyr_lbl 1915 `"1915"', add
label define bltyr_lbl 1916 `"1916"', add
label define bltyr_lbl 1917 `"1917"', add
label define bltyr_lbl 1918 `"1918"', add
label define bltyr_lbl 1919 `"1919"', add
label define bltyr_lbl 1920 `"1920"', add
label define bltyr_lbl 1921 `"1921"', add
label define bltyr_lbl 1922 `"1922"', add
label define bltyr_lbl 1923 `"1923"', add
label define bltyr_lbl 1924 `"1924"', add
label define bltyr_lbl 1925 `"1925"', add
label define bltyr_lbl 1926 `"1926"', add
label define bltyr_lbl 1927 `"1927"', add
label define bltyr_lbl 1928 `"1928"', add
label define bltyr_lbl 1929 `"1929"', add
label define bltyr_lbl 1930 `"1930"', add
label define bltyr_lbl 1931 `"1931"', add
label define bltyr_lbl 1932 `"1932"', add
label define bltyr_lbl 1933 `"1933"', add
label define bltyr_lbl 1934 `"1934"', add
label define bltyr_lbl 1935 `"1935"', add
label define bltyr_lbl 1936 `"1936"', add
label define bltyr_lbl 1937 `"1937"', add
label define bltyr_lbl 1938 `"1938"', add
label define bltyr_lbl 1939 `"1939"', add
label define bltyr_lbl 1940 `"1940"', add
label define bltyr_lbl 1941 `"1941"', add
label define bltyr_lbl 1942 `"1942"', add
label define bltyr_lbl 1943 `"1943"', add
label define bltyr_lbl 1944 `"1944"', add
label define bltyr_lbl 1945 `"1945"', add
label define bltyr_lbl 1946 `"1946"', add
label define bltyr_lbl 1947 `"1947"', add
label define bltyr_lbl 1948 `"1948"', add
label define bltyr_lbl 1949 `"1949"', add
label define bltyr_lbl 1950 `"1950"', add
label define bltyr_lbl 1951 `"1951"', add
label define bltyr_lbl 1952 `"1952"', add
label define bltyr_lbl 1953 `"1953"', add
label define bltyr_lbl 1954 `"1954"', add
label define bltyr_lbl 1955 `"1955"', add
label define bltyr_lbl 1956 `"1956"', add
label define bltyr_lbl 1957 `"1957"', add
label define bltyr_lbl 1958 `"1958"', add
label define bltyr_lbl 1959 `"1959"', add
label define bltyr_lbl 1960 `"1960"', add
label define bltyr_lbl 1961 `"1961"', add
label define bltyr_lbl 1962 `"1962"', add
label define bltyr_lbl 1963 `"1963"', add
label define bltyr_lbl 1964 `"1964"', add
label define bltyr_lbl 1965 `"1965"', add
label define bltyr_lbl 1966 `"1966"', add
label define bltyr_lbl 1967 `"1967"', add
label define bltyr_lbl 1968 `"1968"', add
label define bltyr_lbl 1969 `"1969"', add
label define bltyr_lbl 1970 `"1970"', add
label define bltyr_lbl 1971 `"1971"', add
label define bltyr_lbl 1972 `"1972"', add
label define bltyr_lbl 1973 `"1973"', add
label define bltyr_lbl 1974 `"1974"', add
label define bltyr_lbl 1975 `"1975"', add
label define bltyr_lbl 1976 `"1976"', add
label define bltyr_lbl 1977 `"1977"', add
label define bltyr_lbl 1978 `"1978"', add
label define bltyr_lbl 1979 `"1979"', add
label define bltyr_lbl 1980 `"1980"', add
label define bltyr_lbl 1981 `"1981"', add
label define bltyr_lbl 1982 `"1982"', add
label define bltyr_lbl 1983 `"1983"', add
label define bltyr_lbl 1984 `"1984"', add
label define bltyr_lbl 1985 `"1985"', add
label define bltyr_lbl 1986 `"1986"', add
label define bltyr_lbl 1987 `"1987"', add
label define bltyr_lbl 1988 `"1988"', add
label define bltyr_lbl 1989 `"1989"', add
label define bltyr_lbl 1990 `"1990"', add
label define bltyr_lbl 1991 `"1991"', add
label define bltyr_lbl 1992 `"1992"', add
label define bltyr_lbl 1993 `"1993"', add
label define bltyr_lbl 1994 `"1994"', add
label define bltyr_lbl 1995 `"1995"', add
label define bltyr_lbl 1996 `"1996"', add
label define bltyr_lbl 1997 `"1997"', add
label define bltyr_lbl 1998 `"1998"', add
label define bltyr_lbl 1999 `"1999"', add
label define bltyr_lbl 2000 `"2000"', add
label define bltyr_lbl 2001 `"2001"', add
label define bltyr_lbl 2002 `"2002"', add
label define bltyr_lbl 2003 `"2003"', add
label define bltyr_lbl 2004 `"2004"', add
label define bltyr_lbl 2005 `"2005"', add
label define bltyr_lbl 2006 `"2006"', add
label define bltyr_lbl 2007 `"2007"', add
label define bltyr_lbl 2008 `"2008"', add
label define bltyr_lbl 2009 `"2009"', add
label define bltyr_lbl 2010 `"2010"', add
label define bltyr_lbl 2011 `"2011"', add
label define bltyr_lbl 9998 `"Under construction"', add
label define bltyr_lbl 9999 `"Unknown"', add
label values bltyr bltyr_lbl

label define strag2_lbl 000 `"Less than 1 year old"'
label define strag2_lbl 001 `"1 year"', add
label define strag2_lbl 002 `"2 years"', add
label define strag2_lbl 003 `"3"', add
label define strag2_lbl 004 `"4"', add
label define strag2_lbl 005 `"5"', add
label define strag2_lbl 006 `"6"', add
label define strag2_lbl 007 `"7"', add
label define strag2_lbl 008 `"8"', add
label define strag2_lbl 009 `"9"', add
label define strag2_lbl 010 `"10"', add
label define strag2_lbl 011 `"11"', add
label define strag2_lbl 012 `"12"', add
label define strag2_lbl 013 `"13"', add
label define strag2_lbl 014 `"14"', add
label define strag2_lbl 015 `"15"', add
label define strag2_lbl 016 `"16"', add
label define strag2_lbl 017 `"17"', add
label define strag2_lbl 018 `"18"', add
label define strag2_lbl 019 `"19"', add
label define strag2_lbl 020 `"20"', add
label define strag2_lbl 021 `"21"', add
label define strag2_lbl 022 `"22"', add
label define strag2_lbl 023 `"23"', add
label define strag2_lbl 024 `"24"', add
label define strag2_lbl 025 `"25"', add
label define strag2_lbl 026 `"26"', add
label define strag2_lbl 027 `"27"', add
label define strag2_lbl 028 `"28"', add
label define strag2_lbl 029 `"29"', add
label define strag2_lbl 030 `"30"', add
label define strag2_lbl 031 `"31"', add
label define strag2_lbl 032 `"32"', add
label define strag2_lbl 033 `"33"', add
label define strag2_lbl 034 `"34"', add
label define strag2_lbl 035 `"35"', add
label define strag2_lbl 036 `"36"', add
label define strag2_lbl 037 `"37"', add
label define strag2_lbl 038 `"38"', add
label define strag2_lbl 039 `"39"', add
label define strag2_lbl 040 `"40"', add
label define strag2_lbl 041 `"41"', add
label define strag2_lbl 042 `"42"', add
label define strag2_lbl 043 `"43"', add
label define strag2_lbl 044 `"44"', add
label define strag2_lbl 045 `"45"', add
label define strag2_lbl 046 `"46"', add
label define strag2_lbl 047 `"47"', add
label define strag2_lbl 048 `"48"', add
label define strag2_lbl 049 `"49"', add
label define strag2_lbl 050 `"50"', add
label define strag2_lbl 051 `"51"', add
label define strag2_lbl 052 `"52"', add
label define strag2_lbl 053 `"53"', add
label define strag2_lbl 054 `"54"', add
label define strag2_lbl 055 `"55"', add
label define strag2_lbl 056 `"56"', add
label define strag2_lbl 057 `"57"', add
label define strag2_lbl 058 `"58"', add
label define strag2_lbl 059 `"59"', add
label define strag2_lbl 060 `"60"', add
label define strag2_lbl 061 `"61"', add
label define strag2_lbl 062 `"62"', add
label define strag2_lbl 063 `"63"', add
label define strag2_lbl 064 `"64"', add
label define strag2_lbl 065 `"65"', add
label define strag2_lbl 066 `"66"', add
label define strag2_lbl 067 `"67"', add
label define strag2_lbl 068 `"68"', add
label define strag2_lbl 069 `"69"', add
label define strag2_lbl 070 `"70"', add
label define strag2_lbl 071 `"71"', add
label define strag2_lbl 072 `"72"', add
label define strag2_lbl 073 `"73"', add
label define strag2_lbl 074 `"74"', add
label define strag2_lbl 075 `"75"', add
label define strag2_lbl 076 `"76"', add
label define strag2_lbl 077 `"77"', add
label define strag2_lbl 078 `"78"', add
label define strag2_lbl 079 `"79"', add
label define strag2_lbl 080 `"80"', add
label define strag2_lbl 081 `"81"', add
label define strag2_lbl 082 `"82"', add
label define strag2_lbl 083 `"83"', add
label define strag2_lbl 084 `"84"', add
label define strag2_lbl 085 `"85"', add
label define strag2_lbl 086 `"86"', add
label define strag2_lbl 087 `"87"', add
label define strag2_lbl 088 `"88"', add
label define strag2_lbl 089 `"89"', add
label define strag2_lbl 090 `"90"', add
label define strag2_lbl 091 `"91"', add
label define strag2_lbl 092 `"92"', add
label define strag2_lbl 093 `"93"', add
label define strag2_lbl 094 `"94"', add
label define strag2_lbl 095 `"95"', add
label define strag2_lbl 096 `"96"', add
label define strag2_lbl 097 `"97"', add
label define strag2_lbl 098 `"98"', add
label define strag2_lbl 099 `"99"', add
label define strag2_lbl 100 `"100"', add
label define strag2_lbl 101 `"101"', add
label define strag2_lbl 102 `"102"', add
label define strag2_lbl 103 `"103"', add
label define strag2_lbl 104 `"104"', add
label define strag2_lbl 105 `"105"', add
label define strag2_lbl 106 `"106"', add
label define strag2_lbl 107 `"107"', add
label define strag2_lbl 108 `"108"', add
label define strag2_lbl 109 `"109"', add
label define strag2_lbl 110 `"110"', add
label define strag2_lbl 111 `"111"', add
label define strag2_lbl 112 `"112"', add
label define strag2_lbl 113 `"113"', add
label define strag2_lbl 114 `"114"', add
label define strag2_lbl 115 `"115"', add
label define strag2_lbl 116 `"116"', add
label define strag2_lbl 117 `"117"', add
label define strag2_lbl 118 `"118"', add
label define strag2_lbl 119 `"119"', add
label define strag2_lbl 120 `"120"', add
label define strag2_lbl 121 `"121"', add
label define strag2_lbl 122 `"122"', add
label define strag2_lbl 123 `"123"', add
label define strag2_lbl 124 `"124"', add
label define strag2_lbl 125 `"125"', add
label define strag2_lbl 126 `"126"', add
label define strag2_lbl 127 `"127"', add
label define strag2_lbl 128 `"128"', add
label define strag2_lbl 129 `"129"', add
label define strag2_lbl 130 `"130"', add
label define strag2_lbl 131 `"131"', add
label define strag2_lbl 132 `"132"', add
label define strag2_lbl 133 `"133"', add
label define strag2_lbl 134 `"134"', add
label define strag2_lbl 135 `"135"', add
label define strag2_lbl 136 `"136"', add
label define strag2_lbl 137 `"137"', add
label define strag2_lbl 138 `"138"', add
label define strag2_lbl 139 `"139"', add
label define strag2_lbl 140 `"140"', add
label define strag2_lbl 141 `"141"', add
label define strag2_lbl 142 `"142"', add
label define strag2_lbl 143 `"143"', add
label define strag2_lbl 144 `"144"', add
label define strag2_lbl 145 `"145"', add
label define strag2_lbl 146 `"146"', add
label define strag2_lbl 147 `"147"', add
label define strag2_lbl 148 `"148"', add
label define strag2_lbl 149 `"149"', add
label define strag2_lbl 150 `"150"', add
label define strag2_lbl 151 `"151"', add
label define strag2_lbl 152 `"152"', add
label define strag2_lbl 153 `"153"', add
label define strag2_lbl 154 `"154"', add
label define strag2_lbl 155 `"155"', add
label define strag2_lbl 156 `"156"', add
label define strag2_lbl 157 `"157"', add
label define strag2_lbl 158 `"158"', add
label define strag2_lbl 159 `"159"', add
label define strag2_lbl 160 `"160"', add
label define strag2_lbl 161 `"161"', add
label define strag2_lbl 162 `"162"', add
label define strag2_lbl 163 `"163"', add
label define strag2_lbl 164 `"164"', add
label define strag2_lbl 165 `"165"', add
label define strag2_lbl 166 `"166"', add
label define strag2_lbl 167 `"167"', add
label define strag2_lbl 168 `"168"', add
label define strag2_lbl 169 `"169"', add
label define strag2_lbl 170 `"170"', add
label define strag2_lbl 171 `"171"', add
label define strag2_lbl 172 `"172"', add
label define strag2_lbl 173 `"173"', add
label define strag2_lbl 174 `"174"', add
label define strag2_lbl 175 `"175"', add
label define strag2_lbl 176 `"176"', add
label define strag2_lbl 177 `"177"', add
label define strag2_lbl 178 `"178"', add
label define strag2_lbl 179 `"179"', add
label define strag2_lbl 180 `"180"', add
label define strag2_lbl 181 `"181"', add
label define strag2_lbl 182 `"182"', add
label define strag2_lbl 183 `"183"', add
label define strag2_lbl 184 `"184"', add
label define strag2_lbl 185 `"185"', add
label define strag2_lbl 186 `"186"', add
label define strag2_lbl 187 `"187"', add
label define strag2_lbl 188 `"188"', add
label define strag2_lbl 189 `"189"', add
label define strag2_lbl 190 `"190"', add
label define strag2_lbl 191 `"191"', add
label define strag2_lbl 192 `"192"', add
label define strag2_lbl 193 `"193"', add
label define strag2_lbl 194 `"194"', add
label define strag2_lbl 195 `"195"', add
label define strag2_lbl 196 `"196"', add
label define strag2_lbl 197 `"197"', add
label define strag2_lbl 198 `"198"', add
label define strag2_lbl 199 `"199"', add
label define strag2_lbl 200 `"200+"', add
label define strag2_lbl 998 `"Unknown"', add
label define strag2_lbl 999 `"NIU (not in universe)"', add
label values strag2 strag2_lbl

label define hhtype_lbl 00 `"Vacant household"'
label define hhtype_lbl 01 `"One-person household"', add
label define hhtype_lbl 02 `"Married/cohab couple, no children"', add
label define hhtype_lbl 03 `"Married/cohab couple with children"', add
label define hhtype_lbl 04 `"Single-parent family"', add
label define hhtype_lbl 05 `"Polygamous family"', add
label define hhtype_lbl 06 `"Extended family, relatives only"', add
label define hhtype_lbl 07 `"Composite household, family and non-relatives"', add
label define hhtype_lbl 08 `"Non-family household"', add
label define hhtype_lbl 09 `"Unclassified subfamily"', add
label define hhtype_lbl 10 `"Other relative or non-relative household"', add
label define hhtype_lbl 11 `"Group quarters"', add
label define hhtype_lbl 99 `"Unclassifiable"', add
label values hhtype hhtype_lbl

label define nfams_lbl 0 `"Vacant household"'
label define nfams_lbl 1 `"1 family"', add
label define nfams_lbl 2 `"2 families"', add
label define nfams_lbl 3 `"3 families"', add
label define nfams_lbl 4 `"4 families"', add
label define nfams_lbl 5 `"5 families"', add
label define nfams_lbl 6 `"6 families"', add
label define nfams_lbl 7 `"7 families"', add
label define nfams_lbl 8 `"8 families"', add
label define nfams_lbl 9 `"9 or more families"', add
label values nfams nfams_lbl

label define ncoupls_lbl 0 `"No married couples in household"'
label define ncoupls_lbl 1 `"1 couple"', add
label define ncoupls_lbl 2 `"2 couples"', add
label define ncoupls_lbl 3 `"3 couples"', add
label define ncoupls_lbl 4 `"4 couples"', add
label define ncoupls_lbl 5 `"5 couples"', add
label define ncoupls_lbl 6 `"6 couples"', add
label define ncoupls_lbl 7 `"7 couples"', add
label define ncoupls_lbl 8 `"8 couples"', add
label define ncoupls_lbl 9 `"9 or more couples"', add
label values ncoupls ncoupls_lbl

label define nmothrs_lbl 0 `"No mothers in household"'
label define nmothrs_lbl 1 `"1 mother"', add
label define nmothrs_lbl 2 `"2 mothers"', add
label define nmothrs_lbl 3 `"3 mothers"', add
label define nmothrs_lbl 4 `"4 mothers"', add
label define nmothrs_lbl 5 `"5 mothers"', add
label define nmothrs_lbl 6 `"6 mothers"', add
label define nmothrs_lbl 7 `"7 mothers"', add
label define nmothrs_lbl 8 `"8 mothers"', add
label define nmothrs_lbl 9 `"9 or more mothers in household"', add
label values nmothrs nmothrs_lbl

label define nfathrs_lbl 0 `"No fathers in household"'
label define nfathrs_lbl 1 `"1 father"', add
label define nfathrs_lbl 2 `"2 fathers"', add
label define nfathrs_lbl 3 `"3 fathers"', add
label define nfathrs_lbl 4 `"4 fathers"', add
label define nfathrs_lbl 5 `"5 fathers"', add
label define nfathrs_lbl 6 `"6 fathers"', add
label define nfathrs_lbl 7 `"7 fathers"', add
label define nfathrs_lbl 8 `"8 fathers"', add
label define nfathrs_lbl 9 `"9 or more fathers in household"', add
label values nfathrs nfathrs_lbl

label define pa10a_hhnum_lbl 1 `"1"'
label define pa10a_hhnum_lbl 2 `"2"', add
label define pa10a_hhnum_lbl 3 `"3"', add
label define pa10a_hhnum_lbl 4 `"4"', add
label define pa10a_hhnum_lbl 5 `"5"', add
label define pa10a_hhnum_lbl 6 `"6"', add
label values pa10a_hhnum pa10a_hhnum_lbl

label define pa10a_hhn_lbl 1 `"1"'
label define pa10a_hhn_lbl 2 `"2"', add
label define pa10a_hhn_lbl 3 `"3"', add
label define pa10a_hhn_lbl 4 `"4"', add
label define pa10a_hhn_lbl 5 `"5"', add
label define pa10a_hhn_lbl 6 `"6"', add
label values pa10a_hhn pa10a_hhn_lbl

label define pa10a_pernd_lbl 01 `"1"'
label define pa10a_pernd_lbl 02 `"2"', add
label define pa10a_pernd_lbl 03 `"3"', add
label define pa10a_pernd_lbl 04 `"4"', add
label define pa10a_pernd_lbl 05 `"5"', add
label define pa10a_pernd_lbl 06 `"6"', add
label define pa10a_pernd_lbl 07 `"7"', add
label define pa10a_pernd_lbl 08 `"8"', add
label define pa10a_pernd_lbl 09 `"9"', add
label define pa10a_pernd_lbl 10 `"10"', add
label define pa10a_pernd_lbl 11 `"11"', add
label define pa10a_pernd_lbl 12 `"12"', add
label define pa10a_pernd_lbl 13 `"13"', add
label define pa10a_pernd_lbl 14 `"14"', add
label define pa10a_pernd_lbl 15 `"15"', add
label define pa10a_pernd_lbl 16 `"16"', add
label define pa10a_pernd_lbl 17 `"17"', add
label define pa10a_pernd_lbl 18 `"18"', add
label define pa10a_pernd_lbl 19 `"19"', add
label define pa10a_pernd_lbl 20 `"20"', add
label define pa10a_pernd_lbl 21 `"21"', add
label define pa10a_pernd_lbl 22 `"22"', add
label define pa10a_pernd_lbl 23 `"23"', add
label define pa10a_pernd_lbl 24 `"24"', add
label define pa10a_pernd_lbl 25 `"25"', add
label define pa10a_pernd_lbl 26 `"26"', add
label define pa10a_pernd_lbl 27 `"27"', add
label define pa10a_pernd_lbl 28 `"28"', add
label define pa10a_pernd_lbl 29 `"29"', add
label values pa10a_pernd pa10a_pernd_lbl

label define pa10a_pern_lbl 01 `"1"'
label define pa10a_pern_lbl 02 `"2"', add
label define pa10a_pern_lbl 03 `"3"', add
label define pa10a_pern_lbl 04 `"4"', add
label define pa10a_pern_lbl 05 `"5"', add
label define pa10a_pern_lbl 06 `"6"', add
label define pa10a_pern_lbl 07 `"7"', add
label define pa10a_pern_lbl 08 `"8"', add
label define pa10a_pern_lbl 09 `"9"', add
label define pa10a_pern_lbl 10 `"10"', add
label define pa10a_pern_lbl 11 `"11"', add
label define pa10a_pern_lbl 12 `"12"', add
label define pa10a_pern_lbl 13 `"13"', add
label define pa10a_pern_lbl 14 `"14"', add
label define pa10a_pern_lbl 15 `"15"', add
label define pa10a_pern_lbl 16 `"16"', add
label define pa10a_pern_lbl 17 `"17"', add
label define pa10a_pern_lbl 18 `"18"', add
label define pa10a_pern_lbl 19 `"19"', add
label define pa10a_pern_lbl 20 `"20"', add
label define pa10a_pern_lbl 21 `"21"', add
label define pa10a_pern_lbl 22 `"22"', add
label define pa10a_pern_lbl 23 `"23"', add
label define pa10a_pern_lbl 24 `"24"', add
label define pa10a_pern_lbl 25 `"25"', add
label define pa10a_pern_lbl 26 `"26"', add
label define pa10a_pern_lbl 27 `"27"', add
label define pa10a_pern_lbl 28 `"28"', add
label define pa10a_pern_lbl 29 `"29"', add
label values pa10a_pern pa10a_pern_lbl

label define pa10a_prov_lbl 01 `"Bocas del Toro"'
label define pa10a_prov_lbl 02 `"Cocle"', add
label define pa10a_prov_lbl 03 `"Colon"', add
label define pa10a_prov_lbl 04 `"Chiriqui"', add
label define pa10a_prov_lbl 05 `"Darien and Comarca Embera"', add
label define pa10a_prov_lbl 06 `"Herrera"', add
label define pa10a_prov_lbl 07 `"Los Santos"', add
label define pa10a_prov_lbl 08 `"Panama"', add
label define pa10a_prov_lbl 09 `"Veraguas"', add
label define pa10a_prov_lbl 10 `"Comarca Kuna Yala (San Blas)"', add
label define pa10a_prov_lbl 12 `"Comarca Ngobe Bugle"', add
label values pa10a_prov pa10a_prov_lbl

label define pa10a_hhn2_lbl 1 `"1"'
label define pa10a_hhn2_lbl 2 `"2"', add
label define pa10a_hhn2_lbl 3 `"3"', add
label define pa10a_hhn2_lbl 4 `"4"', add
label define pa10a_hhn2_lbl 5 `"5"', add
label define pa10a_hhn2_lbl 6 `"6"', add
label define pa10a_hhn2_lbl 8 `"8"', add
label values pa10a_hhn2 pa10a_hhn2_lbl

label define pa10a_typedw_lbl 01 `"Independent house, permanent"'
label define pa10a_typedw_lbl 02 `"Independent house, semi-permanent"', add
label define pa10a_typedw_lbl 03 `"Improvised"', add
label define pa10a_typedw_lbl 04 `"Apartment"', add
label define pa10a_typedw_lbl 05 `"Room in a tenement house"', add
label define pa10a_typedw_lbl 06 `"Place not intended for habitation"', add
label define pa10a_typedw_lbl 07 `"Victims of a disaster"', add
label define pa10a_typedw_lbl 08 `"Indigents"', add
label define pa10a_typedw_lbl 09 `"In the street, control points, seaport, airport"', add
label define pa10a_typedw_lbl 11 `"Asylums"', add
label define pa10a_typedw_lbl 12 `"Ships"', add
label define pa10a_typedw_lbl 13 `"Prisons, barracks and penal colonies"', add
label define pa10a_typedw_lbl 14 `"Convents and other religious dwellings"', add
label define pa10a_typedw_lbl 15 `"Worker's hostels or dormitories"', add
label define pa10a_typedw_lbl 16 `"Hospitals, clinics, sanatoriums"', add
label define pa10a_typedw_lbl 17 `"Hotels, pensions, and guesthouses"', add
label define pa10a_typedw_lbl 18 `"Boarding schools"', add
label define pa10a_typedw_lbl 19 `"Reformatories"', add
label define pa10a_typedw_lbl 20 `"Other type of dwelling"', add
label values pa10a_typedw pa10a_typedw_lbl

label define pa10a_occupdw_lbl 1 `"With occupants present"'
label define pa10a_occupdw_lbl 2 `"With occupants absent"', add
label define pa10a_occupdw_lbl 3 `"For sale or rent"', add
label define pa10a_occupdw_lbl 4 `"Under repair or construction"', add
label define pa10a_occupdw_lbl 5 `"Seasonal or temporary dwelling"', add
label define pa10a_occupdw_lbl 6 `"Other reason for unoccupied dwellings"', add
label define pa10a_occupdw_lbl 9 `"NIU (not in universe)"', add
label values pa10a_occupdw pa10a_occupdw_lbl

label define pa10a_ownershp_lbl 1 `"Mortgaged"'
label define pa10a_ownershp_lbl 2 `"Rented"', add
label define pa10a_ownershp_lbl 3 `"Owned"', add
label define pa10a_ownershp_lbl 4 `"Ceded"', add
label define pa10a_ownershp_lbl 5 `"Condemned"', add
label define pa10a_ownershp_lbl 6 `"Other type of ownership of the dwelling"', add
label define pa10a_ownershp_lbl 9 `"NIU (not in universe)"', add
label values pa10a_ownershp pa10a_ownershp_lbl

label define pa10a_ownshp2_lbl 01 `"Invaded"'
label define pa10a_ownshp2_lbl 02 `"Borrowed"', add
label define pa10a_ownshp2_lbl 03 `"Other"', add
label define pa10a_ownshp2_lbl 99 `"NIU (not in universe)"', add
label values pa10a_ownshp2 pa10a_ownshp2_lbl

label define pa10a_hpaym_lbl 2000 `"2000+"'
label define pa10a_hpaym_lbl 9998 `"Unknown"', add
label define pa10a_hpaym_lbl 9999 `"NIU (not in universe)"', add
label values pa10a_hpaym pa10a_hpaym_lbl

label define pa10a_constryr_lbl 1 `"Before 2000"'
label define pa10a_constryr_lbl 2 `"Between 2000 and 2005"', add
label define pa10a_constryr_lbl 3 `"Between 2006 and 2010"', add
label define pa10a_constryr_lbl 8 `"Unknown"', add
label define pa10a_constryr_lbl 9 `"NIU (not in universe)"', add
label values pa10a_constryr pa10a_constryr_lbl

label define pa10a_walls_lbl 1 `"Block, brick, rock, concrete"'
label define pa10a_walls_lbl 2 `"Wood (boards, logs)"', add
label define pa10a_walls_lbl 3 `"Quincha (cane sticks and clay), adobe"', add
label define pa10a_walls_lbl 4 `"Metal (zinc, aluminum, etc.)"', add
label define pa10a_walls_lbl 5 `"Palm leaves, hay, penca (fibrous cactus), cane, or sticks"', add
label define pa10a_walls_lbl 6 `"Other materials"', add
label define pa10a_walls_lbl 7 `"Without walls"', add
label define pa10a_walls_lbl 9 `"NIU (not in universe)"', add
label values pa10a_walls pa10a_walls_lbl

label define pa10a_roof_lbl 1 `"Concrete slabs"'
label define pa10a_roof_lbl 2 `"Tiles"', add
label define pa10a_roof_lbl 3 `"Other type of tiles (asbestos-cement brands)"', add
label define pa10a_roof_lbl 4 `"Metal (zinc, aluminum, etc.)"', add
label define pa10a_roof_lbl 5 `"Wood"', add
label define pa10a_roof_lbl 6 `"Palm leaves, hay, or penca (fibrous cactus)"', add
label define pa10a_roof_lbl 7 `"Other materials"', add
label define pa10a_roof_lbl 9 `"NIU (not in universe)"', add
label values pa10a_roof pa10a_roof_lbl

label define pa10a_floors_lbl 1 `"Mosaic or floor tile, marble and parquet"'
label define pa10a_floors_lbl 2 `"Pavement (concrete)"', add
label define pa10a_floors_lbl 3 `"Brick"', add
label define pa10a_floors_lbl 4 `"Wood"', add
label define pa10a_floors_lbl 5 `"Soil"', add
label define pa10a_floors_lbl 6 `"Other materials (cane, sticks, recycled material, etc.)"', add
label define pa10a_floors_lbl 9 `"NIU (not in universe)"', add
label values pa10a_floors pa10a_floors_lbl

label define pa10a_rooms_lbl 01 `"1"'
label define pa10a_rooms_lbl 02 `"2"', add
label define pa10a_rooms_lbl 03 `"3"', add
label define pa10a_rooms_lbl 04 `"4"', add
label define pa10a_rooms_lbl 05 `"5"', add
label define pa10a_rooms_lbl 06 `"6"', add
label define pa10a_rooms_lbl 07 `"7"', add
label define pa10a_rooms_lbl 08 `"8"', add
label define pa10a_rooms_lbl 09 `"9"', add
label define pa10a_rooms_lbl 10 `"10+"', add
label define pa10a_rooms_lbl 99 `"NIU (not in universe)"', add
label values pa10a_rooms pa10a_rooms_lbl

label define pa10a_bedrooms_lbl 00 `"0"'
label define pa10a_bedrooms_lbl 01 `"1"', add
label define pa10a_bedrooms_lbl 02 `"2"', add
label define pa10a_bedrooms_lbl 03 `"3"', add
label define pa10a_bedrooms_lbl 04 `"4"', add
label define pa10a_bedrooms_lbl 05 `"5"', add
label define pa10a_bedrooms_lbl 06 `"6"', add
label define pa10a_bedrooms_lbl 07 `"7"', add
label define pa10a_bedrooms_lbl 08 `"8+"', add
label define pa10a_bedrooms_lbl 99 `"NIU (not in universe)"', add
label values pa10a_bedrooms pa10a_bedrooms_lbl

label define pa10a_watsup_lbl 01 `"Public aqueduct of the IDAAN"'
label define pa10a_watsup_lbl 02 `"Public aqueduct of the community"', add
label define pa10a_watsup_lbl 03 `"Private aqueduct"', add
label define pa10a_watsup_lbl 04 `"Protected covered well"', add
label define pa10a_watsup_lbl 05 `"Unprotected covered well"', add
label define pa10a_watsup_lbl 06 `"Rain water"', add
label define pa10a_watsup_lbl 07 `"Shallow well"', add
label define pa10a_watsup_lbl 08 `"River, gorge, or lake"', add
label define pa10a_watsup_lbl 09 `"Tank truck"', add
label define pa10a_watsup_lbl 10 `"Bottled water"', add
label define pa10a_watsup_lbl 11 `"Other"', add
label define pa10a_watsup_lbl 99 `"NIU (not in universe)"', add
label values pa10a_watsup pa10a_watsup_lbl

label define pa10a_dwatdry_lbl 1 `"1"'
label define pa10a_dwatdry_lbl 2 `"2"', add
label define pa10a_dwatdry_lbl 3 `"3"', add
label define pa10a_dwatdry_lbl 4 `"4"', add
label define pa10a_dwatdry_lbl 5 `"5"', add
label define pa10a_dwatdry_lbl 6 `"6"', add
label define pa10a_dwatdry_lbl 7 `"7"', add
label define pa10a_dwatdry_lbl 9 `"NIU (not in universe)"', add
label values pa10a_dwatdry pa10a_dwatdry_lbl

label define pa10a_hwatdry_lbl 01 `"1"'
label define pa10a_hwatdry_lbl 02 `"2"', add
label define pa10a_hwatdry_lbl 03 `"3"', add
label define pa10a_hwatdry_lbl 04 `"4"', add
label define pa10a_hwatdry_lbl 05 `"5"', add
label define pa10a_hwatdry_lbl 06 `"6"', add
label define pa10a_hwatdry_lbl 07 `"7"', add
label define pa10a_hwatdry_lbl 08 `"8"', add
label define pa10a_hwatdry_lbl 09 `"9"', add
label define pa10a_hwatdry_lbl 10 `"10"', add
label define pa10a_hwatdry_lbl 11 `"11"', add
label define pa10a_hwatdry_lbl 12 `"12"', add
label define pa10a_hwatdry_lbl 13 `"13"', add
label define pa10a_hwatdry_lbl 14 `"14"', add
label define pa10a_hwatdry_lbl 15 `"15"', add
label define pa10a_hwatdry_lbl 16 `"16"', add
label define pa10a_hwatdry_lbl 17 `"17"', add
label define pa10a_hwatdry_lbl 18 `"18"', add
label define pa10a_hwatdry_lbl 19 `"19"', add
label define pa10a_hwatdry_lbl 20 `"20"', add
label define pa10a_hwatdry_lbl 21 `"21"', add
label define pa10a_hwatdry_lbl 22 `"22"', add
label define pa10a_hwatdry_lbl 23 `"23"', add
label define pa10a_hwatdry_lbl 24 `"24"', add
label define pa10a_hwatdry_lbl 99 `"NIU (not in universe)"', add
label values pa10a_hwatdry pa10a_hwatdry_lbl

label define pa10a_hwatrain_lbl 01 `"1"'
label define pa10a_hwatrain_lbl 02 `"2"', add
label define pa10a_hwatrain_lbl 03 `"3"', add
label define pa10a_hwatrain_lbl 04 `"4"', add
label define pa10a_hwatrain_lbl 05 `"5"', add
label define pa10a_hwatrain_lbl 06 `"6"', add
label define pa10a_hwatrain_lbl 07 `"7"', add
label define pa10a_hwatrain_lbl 08 `"8"', add
label define pa10a_hwatrain_lbl 09 `"9"', add
label define pa10a_hwatrain_lbl 10 `"10"', add
label define pa10a_hwatrain_lbl 11 `"11"', add
label define pa10a_hwatrain_lbl 12 `"12"', add
label define pa10a_hwatrain_lbl 13 `"13"', add
label define pa10a_hwatrain_lbl 14 `"14"', add
label define pa10a_hwatrain_lbl 15 `"15"', add
label define pa10a_hwatrain_lbl 16 `"16"', add
label define pa10a_hwatrain_lbl 17 `"17"', add
label define pa10a_hwatrain_lbl 18 `"18"', add
label define pa10a_hwatrain_lbl 19 `"19"', add
label define pa10a_hwatrain_lbl 20 `"20"', add
label define pa10a_hwatrain_lbl 21 `"21"', add
label define pa10a_hwatrain_lbl 22 `"22"', add
label define pa10a_hwatrain_lbl 23 `"23"', add
label define pa10a_hwatrain_lbl 24 `"24"', add
label define pa10a_hwatrain_lbl 99 `"NIU (not in universe)"', add
label values pa10a_hwatrain pa10a_hwatrain_lbl

label define pa10a_toilet_lbl 1 `"Pit or latrine"'
label define pa10a_toilet_lbl 2 `"Connected to a sewage system"', add
label define pa10a_toilet_lbl 3 `"Connected to a septic tank"', add
label define pa10a_toilet_lbl 4 `"No sanitary service"', add
label define pa10a_toilet_lbl 9 `"NIU (not in universe)"', add
label values pa10a_toilet pa10a_toilet_lbl

label define pa10a_sewage1_lbl 1 `"Scrubland"'
label define pa10a_sewage1_lbl 2 `"River or stream"', add
label define pa10a_sewage1_lbl 3 `"Sea"', add
label define pa10a_sewage1_lbl 4 `"Uses the sanitary service of the neighbor"', add
label define pa10a_sewage1_lbl 5 `"Other"', add
label define pa10a_sewage1_lbl 9 `"NIU (not in universe)"', add
label values pa10a_sewage1 pa10a_sewage1_lbl

label define pa10a_toilet2_lbl 1 `"Exclusive of the dwelling"'
label define pa10a_toilet2_lbl 2 `"Shared with other dwellings"', add
label define pa10a_toilet2_lbl 9 `"NIU (not in universe)"', add
label values pa10a_toilet2 pa10a_toilet2_lbl

label define pa10a_light_lbl 01 `"Electric from a distributing company"'
label define pa10a_light_lbl 02 `"Electric from the community"', add
label define pa10a_light_lbl 03 `"Own electric (plant)"', add
label define pa10a_light_lbl 04 `"Kerosene or diesel"', add
label define pa10a_light_lbl 05 `"Gas"', add
label define pa10a_light_lbl 06 `"Candles"', add
label define pa10a_light_lbl 07 `"Solar panel"', add
label define pa10a_light_lbl 08 `"Flash light or lantern"', add
label define pa10a_light_lbl 09 `"Car battery"', add
label define pa10a_light_lbl 10 `"Firewood (bonfire) or none"', add
label define pa10a_light_lbl 99 `"NIU (not in universe)"', add
label values pa10a_light pa10a_light_lbl

label define pa10a_lightpay_lbl 0700 `"700+"'
label define pa10a_lightpay_lbl 9996 `"Does not pay"', add
label define pa10a_lightpay_lbl 9997 `"Included in the monthly rent"', add
label define pa10a_lightpay_lbl 9998 `"Unknown"', add
label define pa10a_lightpay_lbl 9999 `"NIU (not in universe)"', add
label values pa10a_lightpay pa10a_lightpay_lbl

label define pa10a_trash_lbl 1 `"Public collection truck"'
label define pa10a_trash_lbl 2 `"Private collection truck"', add
label define pa10a_trash_lbl 3 `"Incineration or burning"', add
label define pa10a_trash_lbl 4 `"Empty lot"', add
label define pa10a_trash_lbl 5 `"Burial"', add
label define pa10a_trash_lbl 6 `"River, stream, lake or sea"', add
label define pa10a_trash_lbl 7 `"Other methods of garbage disposal"', add
label define pa10a_trash_lbl 9 `"NIU (not in universe)"', add
label values pa10a_trash pa10a_trash_lbl

label define pa10a_fuelck_lbl 1 `"Gas"'
label define pa10a_fuelck_lbl 2 `"Wood"', add
label define pa10a_fuelck_lbl 3 `"Charcoal"', add
label define pa10a_fuelck_lbl 4 `"Kerosene or electricity"', add
label define pa10a_fuelck_lbl 6 `"No cooking"', add
label define pa10a_fuelck_lbl 9 `"NIU (not in universe)"', add
label values pa10a_fuelck pa10a_fuelck_lbl

label define pa10a_econdw_lbl 1 `"Yes"'
label define pa10a_econdw_lbl 2 `"No"', add
label define pa10a_econdw_lbl 9 `"NIU (not in universe)"', add
label values pa10a_econdw pa10a_econdw_lbl

label define pa10a_dw2use_lbl 1 `"Yes"'
label define pa10a_dw2use_lbl 2 `"No"', add
label define pa10a_dw2use_lbl 9 `"NIU (not in universe)"', add
label values pa10a_dw2use pa10a_dw2use_lbl

label define pa10a_numhhs_lbl 1 `"1"'
label define pa10a_numhhs_lbl 2 `"2"', add
label define pa10a_numhhs_lbl 3 `"3"', add
label define pa10a_numhhs_lbl 4 `"4"', add
label define pa10a_numhhs_lbl 5 `"5"', add
label define pa10a_numhhs_lbl 6 `"6"', add
label define pa10a_numhhs_lbl 8 `"8"', add
label define pa10a_numhhs_lbl 9 `"NIU (not in universe)"', add
label values pa10a_numhhs pa10a_numhhs_lbl

label define pa10a_isdw_lbl 1 `"Yes"'
label define pa10a_isdw_lbl 0 `"No"', add
label values pa10a_isdw pa10a_isdw_lbl

label define pa10a_incdw_lbl 0000000 `"Without income"'
label define pa10a_incdw_lbl 0006000 `"6000+"', add
label define pa10a_incdw_lbl 9999999 `"Unknown"', add
label values pa10a_incdw pa10a_incdw_lbl

label define pa10a_area_lbl 1 `"Urban"'
label define pa10a_area_lbl 2 `"Rural"', add
label values pa10a_area pa10a_area_lbl

label define pa10a_indarea_lbl 0 `"No"'
label define pa10a_indarea_lbl 1 `"Yes"', add
label values pa10a_indarea pa10a_indarea_lbl

label define pa10a_stove_lbl 1 `"Yes"'
label define pa10a_stove_lbl 2 `"No"', add
label define pa10a_stove_lbl 9 `"NIU (not in universe)"', add
label values pa10a_stove pa10a_stove_lbl

label define pa10a_refrig_lbl 1 `"Yes"'
label define pa10a_refrig_lbl 2 `"No"', add
label define pa10a_refrig_lbl 9 `"NIU (not in universe)"', add
label values pa10a_refrig pa10a_refrig_lbl

label define pa10a_washer_lbl 1 `"Yes"'
label define pa10a_washer_lbl 2 `"No"', add
label define pa10a_washer_lbl 9 `"NIU (not in universe)"', add
label values pa10a_washer pa10a_washer_lbl

label define pa10a_sewmach_lbl 1 `"Yes"'
label define pa10a_sewmach_lbl 2 `"No"', add
label define pa10a_sewmach_lbl 9 `"NIU (not in universe)"', add
label values pa10a_sewmach pa10a_sewmach_lbl

label define pa10a_phone_lbl 1 `"Yes"'
label define pa10a_phone_lbl 2 `"No"', add
label define pa10a_phone_lbl 9 `"NIU (not in universe)"', add
label values pa10a_phone pa10a_phone_lbl

label define pa10a_radio_lbl 1 `"Yes"'
label define pa10a_radio_lbl 2 `"No"', add
label define pa10a_radio_lbl 9 `"NIU (not in universe)"', add
label values pa10a_radio pa10a_radio_lbl

label define pa10a_radion_lbl 01 `"1"'
label define pa10a_radion_lbl 02 `"2"', add
label define pa10a_radion_lbl 03 `"3"', add
label define pa10a_radion_lbl 04 `"4"', add
label define pa10a_radion_lbl 05 `"5+"', add
label define pa10a_radion_lbl 99 `"NIU (not in universe)"', add
label values pa10a_radion pa10a_radion_lbl

label define pa10a_fan_lbl 1 `"Yes"'
label define pa10a_fan_lbl 2 `"No"', add
label define pa10a_fan_lbl 9 `"NIU (not in universe)"', add
label values pa10a_fan pa10a_fan_lbl

label define pa10a_fann_lbl 01 `"1"'
label define pa10a_fann_lbl 02 `"2"', add
label define pa10a_fann_lbl 03 `"3"', add
label define pa10a_fann_lbl 04 `"4"', add
label define pa10a_fann_lbl 05 `"5"', add
label define pa10a_fann_lbl 06 `"6"', add
label define pa10a_fann_lbl 07 `"7"', add
label define pa10a_fann_lbl 08 `"8"', add
label define pa10a_fann_lbl 09 `"9"', add
label define pa10a_fann_lbl 10 `"10"', add
label define pa10a_fann_lbl 11 `"11"', add
label define pa10a_fann_lbl 12 `"12+"', add
label define pa10a_fann_lbl 99 `"NIU (not in universe)"', add
label values pa10a_fann pa10a_fann_lbl

label define pa10a_celln_lbl 01 `"1"'
label define pa10a_celln_lbl 02 `"2"', add
label define pa10a_celln_lbl 03 `"3"', add
label define pa10a_celln_lbl 04 `"4"', add
label define pa10a_celln_lbl 05 `"5"', add
label define pa10a_celln_lbl 06 `"6"', add
label define pa10a_celln_lbl 07 `"7"', add
label define pa10a_celln_lbl 08 `"8"', add
label define pa10a_celln_lbl 09 `"9+"', add
label define pa10a_celln_lbl 99 `"NIU (not in universe)"', add
label values pa10a_celln pa10a_celln_lbl

label define pa10a_auto_lbl 1 `"Yes"'
label define pa10a_auto_lbl 2 `"No"', add
label define pa10a_auto_lbl 9 `"NIU (not in universe)"', add
label values pa10a_auto pa10a_auto_lbl

label define pa10a_auton_lbl 01 `"1"'
label define pa10a_auton_lbl 02 `"2"', add
label define pa10a_auton_lbl 03 `"3"', add
label define pa10a_auton_lbl 04 `"4"', add
label define pa10a_auton_lbl 05 `"5+"', add
label define pa10a_auton_lbl 99 `"NIU (not in universe)"', add
label values pa10a_auton pa10a_auton_lbl

label define pa10a_tv_lbl 1 `"Yes"'
label define pa10a_tv_lbl 2 `"No"', add
label define pa10a_tv_lbl 9 `"NIU (not in universe)"', add
label values pa10a_tv pa10a_tv_lbl

label define pa10a_tvn_lbl 01 `"1"'
label define pa10a_tvn_lbl 02 `"2"', add
label define pa10a_tvn_lbl 03 `"3"', add
label define pa10a_tvn_lbl 04 `"4"', add
label define pa10a_tvn_lbl 05 `"5"', add
label define pa10a_tvn_lbl 06 `"6"', add
label define pa10a_tvn_lbl 07 `"7+"', add
label define pa10a_tvn_lbl 99 `"NIU (not in universe)"', add
label values pa10a_tvn pa10a_tvn_lbl

label define pa10a_cable_lbl 1 `"Yes"'
label define pa10a_cable_lbl 2 `"No"', add
label define pa10a_cable_lbl 9 `"NIU (not in universe)"', add
label values pa10a_cable pa10a_cable_lbl

label define pa10a_comput_lbl 1 `"Yes"'
label define pa10a_comput_lbl 2 `"No"', add
label define pa10a_comput_lbl 9 `"NIU (not in universe)"', add
label values pa10a_comput pa10a_comput_lbl

label define pa10a_computn_lbl 01 `"1"'
label define pa10a_computn_lbl 02 `"2"', add
label define pa10a_computn_lbl 03 `"3"', add
label define pa10a_computn_lbl 04 `"4"', add
label define pa10a_computn_lbl 05 `"5+"', add
label define pa10a_computn_lbl 99 `"NIU (not in universe)"', add
label values pa10a_computn pa10a_computn_lbl

label define pa10a_internet_lbl 1 `"Yes"'
label define pa10a_internet_lbl 2 `"No"', add
label define pa10a_internet_lbl 9 `"NIU (not in universe)"', add
label values pa10a_internet pa10a_internet_lbl

label define pa10a_plants_lbl 1 `"Yes"'
label define pa10a_plants_lbl 2 `"No"', add
label define pa10a_plants_lbl 9 `"NIU (not in universe)"', add
label values pa10a_plants pa10a_plants_lbl

label define pa10a_medplant_lbl 1 `"Yes"'
label define pa10a_medplant_lbl 2 `"No"', add
label define pa10a_medplant_lbl 9 `"NIU (not in universe)"', add
label values pa10a_medplant pa10a_medplant_lbl

label define pa10a_cattle_lbl 1 `"Yes"'
label define pa10a_cattle_lbl 2 `"No"', add
label define pa10a_cattle_lbl 9 `"NIU (not in universe)"', add
label values pa10a_cattle pa10a_cattle_lbl

label define pa10a_poultry_lbl 1 `"Yes"'
label define pa10a_poultry_lbl 2 `"No"', add
label define pa10a_poultry_lbl 9 `"NIU (not in universe)"', add
label values pa10a_poultry pa10a_poultry_lbl

label define pa10a_migrants_lbl 1 `"Yes"'
label define pa10a_migrants_lbl 2 `"No"', add
label define pa10a_migrants_lbl 9 `"NIU (not in universe)"', add
label values pa10a_migrants pa10a_migrants_lbl

label define pa10a_mig1sex_lbl 1 `"Male"'
label define pa10a_mig1sex_lbl 2 `"Female"', add
label define pa10a_mig1sex_lbl 9 `"NIU (not in universe)"', add
label values pa10a_mig1sex pa10a_mig1sex_lbl

label define pa10a_mig1age_lbl 002 `"Zero to 4"'
label define pa10a_mig1age_lbl 007 `"5 to 9"', add
label define pa10a_mig1age_lbl 013 `"10 to 14"', add
label define pa10a_mig1age_lbl 018 `"15 to 19"', add
label define pa10a_mig1age_lbl 022 `"20 to 24"', add
label define pa10a_mig1age_lbl 027 `"25 to 30"', add
label define pa10a_mig1age_lbl 032 `"30 to 34"', add
label define pa10a_mig1age_lbl 037 `"35 to 39"', add
label define pa10a_mig1age_lbl 042 `"40 to 44"', add
label define pa10a_mig1age_lbl 047 `"45 to 49"', add
label define pa10a_mig1age_lbl 051 `"50 to 54"', add
label define pa10a_mig1age_lbl 057 `"55 to 59"', add
label define pa10a_mig1age_lbl 067 `"60 and above"', add
label define pa10a_mig1age_lbl 998 `"Unknown"', add
label define pa10a_mig1age_lbl 999 `"NIU (not in universe)"', add
label values pa10a_mig1age pa10a_mig1age_lbl

label define pa10a_mig1yr_lbl 2000 `"2000"'
label define pa10a_mig1yr_lbl 2001 `"2001"', add
label define pa10a_mig1yr_lbl 2002 `"2002"', add
label define pa10a_mig1yr_lbl 2003 `"2003"', add
label define pa10a_mig1yr_lbl 2004 `"2004"', add
label define pa10a_mig1yr_lbl 2005 `"2005"', add
label define pa10a_mig1yr_lbl 2006 `"2006"', add
label define pa10a_mig1yr_lbl 2007 `"2007"', add
label define pa10a_mig1yr_lbl 2008 `"2008"', add
label define pa10a_mig1yr_lbl 2009 `"2009"', add
label define pa10a_mig1yr_lbl 2010 `"2010"', add
label define pa10a_mig1yr_lbl 9998 `"Unknown"', add
label define pa10a_mig1yr_lbl 9999 `"NIU (not in universe)"', add
label values pa10a_mig1yr pa10a_mig1yr_lbl

label define pa10a_mig1ctry_lbl 103 `"Canada"'
label define pa10a_mig1ctry_lbl 105 `"United States of America"', add
label define pa10a_mig1ctry_lbl 107 `"Mexico"', add
label define pa10a_mig1ctry_lbl 218 `"Costa Rica"', add
label define pa10a_mig1ctry_lbl 231 `"Cuba"', add
label define pa10a_mig1ctry_lbl 299 `"Other North or Central America or Caribbean"', add
label define pa10a_mig1ctry_lbl 311 `"Colombia"', add
label define pa10a_mig1ctry_lbl 353 `"Chile"', add
label define pa10a_mig1ctry_lbl 399 `"Other South America"', add
label define pa10a_mig1ctry_lbl 417 `"Spain"', add
label define pa10a_mig1ctry_lbl 499 `"Other Europe"', add
label define pa10a_mig1ctry_lbl 518 `"China (Mainland)"', add
label define pa10a_mig1ctry_lbl 900 `"Other countries"', add
label define pa10a_mig1ctry_lbl 998 `"Unknown"', add
label define pa10a_mig1ctry_lbl 999 `"NIU (not in universe)"', add
label values pa10a_mig1ctry pa10a_mig1ctry_lbl

label define pa10a_mig3sex_lbl 1 `"Male"'
label define pa10a_mig3sex_lbl 2 `"Female"', add
label define pa10a_mig3sex_lbl 9 `"NIU (not in universe)"', add
label values pa10a_mig3sex pa10a_mig3sex_lbl

label define pa10a_inchh_lbl 0000000 `"No income"'
label define pa10a_inchh_lbl 0008000 `"8000+"', add
label define pa10a_inchh_lbl 9999999 `"Unknown"', add
label values pa10a_inchh pa10a_inchh_lbl

label define pa10a_hhtype_lbl 1 `"Single person (unipersonal)"'
label define pa10a_hhtype_lbl 2 `"Nuclear"', add
label define pa10a_hhtype_lbl 3 `"Extended"', add
label define pa10a_hhtype_lbl 4 `"Composite"', add
label define pa10a_hhtype_lbl 5 `"Collective"', add
label values pa10a_hhtype pa10a_hhtype_lbl

label define pa10a_area2_lbl 1 `"Urban"'
label define pa10a_area2_lbl 2 `"Rural"', add
label values pa10a_area2 pa10a_area2_lbl

label define momloc_lbl 000 `"No mother of this person present in the household"'
label values momloc momloc_lbl

label define poploc_lbl 000 `"No father of this person present in household"'
label values poploc poploc_lbl

label define sploc_lbl 000 `"No spouse of this person present in household"'
label values sploc sploc_lbl

label define parrule_lbl 00 `"No parent of person in household"'
label define parrule_lbl 11 `"Link to head or spouse, unambiguous"', add
label define parrule_lbl 12 `"Link to head or spouse, ambiguous"', add
label define parrule_lbl 21 `"Child-Grandchild, within empirical child cap"', add
label define parrule_lbl 22 `"Child-Grandchild, within constructed child cap"', add
label define parrule_lbl 23 `"Child-Grandchild, exceeds child cap"', add
label define parrule_lbl 31 `"Specified Other Relatives, within empirical child cap"', add
label define parrule_lbl 32 `"Specified Other Relatives, within constructed child cap"', add
label define parrule_lbl 33 `"Specified Other Relatives, exceeds child cap"', add
label define parrule_lbl 41 `"Other Relatives, within empirical child cap"', add
label define parrule_lbl 42 `"Other Relatives, within constructed child cap"', add
label define parrule_lbl 51 `"Non-Relatives, within empirical child cap"', add
label define parrule_lbl 52 `"Non-Relatives, within constructed child cap"', add
label values parrule parrule_lbl

label define sprule_lbl 00 `"No spouse present"'
label define sprule_lbl 01 `"Rule 1: strong relationship pairing, couple adjacent"', add
label define sprule_lbl 02 `"Rule 2: strong relationship pairing, couple not adjacent"', add
label define sprule_lbl 03 `"Rule 3: weak relationship pairing, couple adjacent"', add
label define sprule_lbl 04 `"Rule 4: weak relationship pairing, couple not adjacent"', add
label define sprule_lbl 05 `"Rule 5: weak consensual union pairings"', add
label define sprule_lbl 06 `"Rule 6: sample-specific rules (usually child-to-child)"', add
label values sprule sprule_lbl

label define stepmom_lbl 0 `"Biological mother or no mother present"'
label define stepmom_lbl 1 `"Mother has no children borne or surviving"', add
label define stepmom_lbl 2 `"Child reports mother is deceased"', add
label define stepmom_lbl 3 `"Explicitly identified step relationship"', add
label define stepmom_lbl 4 `"Mother reports no children in the home"', add
label define stepmom_lbl 5 `"Age difference implausible"', add
label define stepmom_lbl 6 `"Child exceeds known fertility of mother"', add
label values stepmom stepmom_lbl

label define steppop_lbl 0 `"Biological father or no father present"'
label define steppop_lbl 1 `"Child reports father is deceased"', add
label define steppop_lbl 2 `"Explicitly identified step relationship"', add
label define steppop_lbl 3 `"Age difference implausible"', add
label values steppop steppop_lbl

label define polymal_lbl 0 `"No more than one wife linked via SPLOC"'
label define polymal_lbl 1 `"More than one wife linked via SPLOC"', add
label values polymal polymal_lbl

label define poly2nd_lbl 0 `"Person is not the 2nd or higher order wife linked via SPLOC"'
label define poly2nd_lbl 1 `"Person is the 2nd or higher order wife linked via SPLOC"', add
label values poly2nd poly2nd_lbl

label define famsize_lbl 01 `"1 family member present"'
label define famsize_lbl 02 `"2 family members present"', add
label define famsize_lbl 03 `"3 family members present"', add
label define famsize_lbl 04 `"4"', add
label define famsize_lbl 05 `"5"', add
label define famsize_lbl 06 `"6"', add
label define famsize_lbl 07 `"7"', add
label define famsize_lbl 08 `"8"', add
label define famsize_lbl 09 `"9"', add
label define famsize_lbl 10 `"10"', add
label define famsize_lbl 11 `"11"', add
label define famsize_lbl 12 `"12"', add
label define famsize_lbl 13 `"13"', add
label define famsize_lbl 14 `"14"', add
label define famsize_lbl 15 `"15"', add
label define famsize_lbl 16 `"16"', add
label define famsize_lbl 17 `"17"', add
label define famsize_lbl 18 `"18"', add
label define famsize_lbl 19 `"19"', add
label define famsize_lbl 20 `"20"', add
label define famsize_lbl 21 `"21"', add
label define famsize_lbl 22 `"22"', add
label define famsize_lbl 23 `"23"', add
label define famsize_lbl 24 `"24"', add
label define famsize_lbl 25 `"25"', add
label define famsize_lbl 26 `"26"', add
label define famsize_lbl 27 `"27"', add
label define famsize_lbl 28 `"28"', add
label define famsize_lbl 29 `"29"', add
label define famsize_lbl 30 `"30"', add
label define famsize_lbl 31 `"31"', add
label define famsize_lbl 32 `"32"', add
label define famsize_lbl 33 `"33"', add
label define famsize_lbl 34 `"34"', add
label define famsize_lbl 35 `"35"', add
label define famsize_lbl 36 `"36"', add
label define famsize_lbl 37 `"37"', add
label define famsize_lbl 38 `"38"', add
label define famsize_lbl 39 `"39"', add
label define famsize_lbl 40 `"40"', add
label define famsize_lbl 41 `"41"', add
label define famsize_lbl 42 `"42"', add
label define famsize_lbl 43 `"43"', add
label define famsize_lbl 44 `"44"', add
label define famsize_lbl 45 `"45"', add
label define famsize_lbl 46 `"46"', add
label define famsize_lbl 47 `"47"', add
label define famsize_lbl 48 `"48"', add
label define famsize_lbl 49 `"49"', add
label define famsize_lbl 50 `"50"', add
label define famsize_lbl 51 `"51"', add
label define famsize_lbl 52 `"52"', add
label define famsize_lbl 53 `"53"', add
label define famsize_lbl 54 `"54"', add
label define famsize_lbl 55 `"55"', add
label define famsize_lbl 56 `"56"', add
label define famsize_lbl 57 `"57"', add
label define famsize_lbl 58 `"58"', add
label define famsize_lbl 59 `"59"', add
label define famsize_lbl 60 `"60"', add
label define famsize_lbl 61 `"61"', add
label define famsize_lbl 62 `"62"', add
label define famsize_lbl 63 `"63"', add
label define famsize_lbl 64 `"64"', add
label define famsize_lbl 65 `"65"', add
label define famsize_lbl 66 `"66"', add
label define famsize_lbl 67 `"67"', add
label define famsize_lbl 68 `"68"', add
label define famsize_lbl 69 `"69"', add
label define famsize_lbl 70 `"70"', add
label define famsize_lbl 71 `"71"', add
label define famsize_lbl 72 `"72"', add
label define famsize_lbl 73 `"73"', add
label define famsize_lbl 74 `"74"', add
label define famsize_lbl 75 `"75"', add
label define famsize_lbl 76 `"76"', add
label define famsize_lbl 77 `"77"', add
label define famsize_lbl 78 `"78"', add
label define famsize_lbl 79 `"79"', add
label define famsize_lbl 80 `"80"', add
label define famsize_lbl 81 `"81"', add
label define famsize_lbl 82 `"82"', add
label define famsize_lbl 83 `"83"', add
label define famsize_lbl 84 `"84"', add
label define famsize_lbl 85 `"85"', add
label define famsize_lbl 86 `"86"', add
label define famsize_lbl 87 `"87"', add
label define famsize_lbl 88 `"88"', add
label define famsize_lbl 89 `"89"', add
label define famsize_lbl 90 `"90"', add
label define famsize_lbl 91 `"91"', add
label define famsize_lbl 92 `"92"', add
label define famsize_lbl 93 `"93"', add
label define famsize_lbl 94 `"94"', add
label define famsize_lbl 95 `"95"', add
label define famsize_lbl 96 `"96"', add
label define famsize_lbl 97 `"97"', add
label define famsize_lbl 98 `"98"', add
label define famsize_lbl 99 `"99 or more persons"', add
label values famsize famsize_lbl

label define nchild_lbl 0 `"0"'
label define nchild_lbl 1 `"1"', add
label define nchild_lbl 2 `"2"', add
label define nchild_lbl 3 `"3"', add
label define nchild_lbl 4 `"4"', add
label define nchild_lbl 5 `"5"', add
label define nchild_lbl 6 `"6"', add
label define nchild_lbl 7 `"7"', add
label define nchild_lbl 8 `"8"', add
label define nchild_lbl 9 `"9 or more children in household"', add
label values nchild nchild_lbl

label define nchlt5_lbl 0 `"0"'
label define nchlt5_lbl 1 `"1"', add
label define nchlt5_lbl 2 `"2"', add
label define nchlt5_lbl 3 `"3"', add
label define nchlt5_lbl 4 `"4"', add
label define nchlt5_lbl 5 `"5"', add
label define nchlt5_lbl 6 `"6"', add
label define nchlt5_lbl 7 `"7"', add
label define nchlt5_lbl 8 `"8"', add
label define nchlt5_lbl 9 `"9 or more own children under age 5 in household"', add
label values nchlt5 nchlt5_lbl

label define eldch_lbl 00 `"0"'
label define eldch_lbl 01 `"1"', add
label define eldch_lbl 02 `"2"', add
label define eldch_lbl 03 `"3"', add
label define eldch_lbl 04 `"4"', add
label define eldch_lbl 05 `"5"', add
label define eldch_lbl 06 `"6"', add
label define eldch_lbl 07 `"7"', add
label define eldch_lbl 08 `"8"', add
label define eldch_lbl 09 `"9"', add
label define eldch_lbl 10 `"10"', add
label define eldch_lbl 11 `"11"', add
label define eldch_lbl 12 `"12"', add
label define eldch_lbl 13 `"13"', add
label define eldch_lbl 14 `"14"', add
label define eldch_lbl 15 `"15"', add
label define eldch_lbl 16 `"16"', add
label define eldch_lbl 17 `"17"', add
label define eldch_lbl 18 `"18"', add
label define eldch_lbl 19 `"19"', add
label define eldch_lbl 20 `"20"', add
label define eldch_lbl 21 `"21"', add
label define eldch_lbl 22 `"22"', add
label define eldch_lbl 23 `"23"', add
label define eldch_lbl 24 `"24"', add
label define eldch_lbl 25 `"25"', add
label define eldch_lbl 26 `"26"', add
label define eldch_lbl 27 `"27"', add
label define eldch_lbl 28 `"28"', add
label define eldch_lbl 29 `"29"', add
label define eldch_lbl 30 `"30"', add
label define eldch_lbl 31 `"31"', add
label define eldch_lbl 32 `"32"', add
label define eldch_lbl 33 `"33"', add
label define eldch_lbl 34 `"34"', add
label define eldch_lbl 35 `"35"', add
label define eldch_lbl 36 `"36"', add
label define eldch_lbl 37 `"37"', add
label define eldch_lbl 38 `"38"', add
label define eldch_lbl 39 `"39"', add
label define eldch_lbl 40 `"40"', add
label define eldch_lbl 41 `"41"', add
label define eldch_lbl 42 `"42"', add
label define eldch_lbl 43 `"43"', add
label define eldch_lbl 44 `"44"', add
label define eldch_lbl 45 `"45"', add
label define eldch_lbl 46 `"46"', add
label define eldch_lbl 47 `"47"', add
label define eldch_lbl 48 `"48"', add
label define eldch_lbl 49 `"49"', add
label define eldch_lbl 50 `"50 or older"', add
label define eldch_lbl 99 `"No own child in household"', add
label values eldch eldch_lbl

label define yngch_lbl 00 `"0"'
label define yngch_lbl 01 `"1"', add
label define yngch_lbl 02 `"2"', add
label define yngch_lbl 03 `"3"', add
label define yngch_lbl 04 `"4"', add
label define yngch_lbl 05 `"5"', add
label define yngch_lbl 06 `"6"', add
label define yngch_lbl 07 `"7"', add
label define yngch_lbl 08 `"8"', add
label define yngch_lbl 09 `"9"', add
label define yngch_lbl 10 `"10"', add
label define yngch_lbl 11 `"11"', add
label define yngch_lbl 12 `"12"', add
label define yngch_lbl 13 `"13"', add
label define yngch_lbl 14 `"14"', add
label define yngch_lbl 15 `"15"', add
label define yngch_lbl 16 `"16"', add
label define yngch_lbl 17 `"17"', add
label define yngch_lbl 18 `"18"', add
label define yngch_lbl 19 `"19"', add
label define yngch_lbl 20 `"20"', add
label define yngch_lbl 21 `"21"', add
label define yngch_lbl 22 `"22"', add
label define yngch_lbl 23 `"23"', add
label define yngch_lbl 24 `"24"', add
label define yngch_lbl 25 `"25"', add
label define yngch_lbl 26 `"26"', add
label define yngch_lbl 27 `"27"', add
label define yngch_lbl 28 `"28"', add
label define yngch_lbl 29 `"29"', add
label define yngch_lbl 30 `"30"', add
label define yngch_lbl 31 `"31"', add
label define yngch_lbl 32 `"32"', add
label define yngch_lbl 33 `"33"', add
label define yngch_lbl 34 `"34"', add
label define yngch_lbl 35 `"35"', add
label define yngch_lbl 36 `"36"', add
label define yngch_lbl 37 `"37"', add
label define yngch_lbl 38 `"38"', add
label define yngch_lbl 39 `"39"', add
label define yngch_lbl 40 `"40"', add
label define yngch_lbl 41 `"41"', add
label define yngch_lbl 42 `"42"', add
label define yngch_lbl 43 `"43"', add
label define yngch_lbl 44 `"44"', add
label define yngch_lbl 45 `"45"', add
label define yngch_lbl 46 `"46"', add
label define yngch_lbl 47 `"47"', add
label define yngch_lbl 48 `"48"', add
label define yngch_lbl 49 `"49"', add
label define yngch_lbl 50 `"50 or older"', add
label define yngch_lbl 99 `"No own child in household"', add
label values yngch yngch_lbl

label define relate_lbl 1 `"Head"'
label define relate_lbl 2 `"Spouse/partner"', add
label define relate_lbl 3 `"Child"', add
label define relate_lbl 4 `"Other relative"', add
label define relate_lbl 5 `"Non-relative"', add
label define relate_lbl 6 `"Other relative or non-relative"', add
label define relate_lbl 9 `"Unknown"', add
label values relate relate_lbl

label define related_lbl 1000 `"Head"'
label define related_lbl 2000 `"Spouse/partner"', add
label define related_lbl 2100 `"Spouse"', add
label define related_lbl 2200 `"Unmarried partner"', add
label define related_lbl 2310 `"Different-sex spouse/partner"', add
label define related_lbl 2320 `"Same-sex spouse/partner"', add
label define related_lbl 3000 `"Child"', add
label define related_lbl 3010 `"Child (biological status unknown)"', add
label define related_lbl 3100 `"Biological child"', add
label define related_lbl 3200 `"Adopted child"', add
label define related_lbl 3300 `"Stepchild"', add
label define related_lbl 3400 `"Child/child-in-law"', add
label define related_lbl 3500 `"Child/child-in-law/grandchild"', add
label define related_lbl 3600 `"Child of unmarried partner"', add
label define related_lbl 3700 `"Stepchild/child-in-law"', add
label define related_lbl 4000 `"Other relative"', add
label define related_lbl 4100 `"Grandchild"', add
label define related_lbl 4110 `"Grandchild or great grandchild"', add
label define related_lbl 4120 `"Great grandchild"', add
label define related_lbl 4130 `"Great-great grandchild"', add
label define related_lbl 4200 `"Parent/parent-in-law"', add
label define related_lbl 4210 `"Parent"', add
label define related_lbl 4211 `"Stepparent"', add
label define related_lbl 4220 `"Parent-in-law"', add
label define related_lbl 4230 `"Parent-in-law/stepparent"', add
label define related_lbl 4300 `"Child-in-law"', add
label define related_lbl 4301 `"Daughter-in-law"', add
label define related_lbl 4302 `"Spouse/partner of child"', add
label define related_lbl 4310 `"Unmarried partner of child"', add
label define related_lbl 4400 `"Sibling/sibling-in-law"', add
label define related_lbl 4410 `"Sibling"', add
label define related_lbl 4420 `"Stepsibling"', add
label define related_lbl 4430 `"Sibling-in-law"', add
label define related_lbl 4431 `"Sibling of spouse/partner"', add
label define related_lbl 4432 `"Spouse/partner of sibling"', add
label define related_lbl 4500 `"Grandparent"', add
label define related_lbl 4510 `"Great grandparent"', add
label define related_lbl 4600 `"Parent/grandparent/ascendant"', add
label define related_lbl 4700 `"Aunt/uncle"', add
label define related_lbl 4800 `"Other specified relative"', add
label define related_lbl 4810 `"Nephew/niece"', add
label define related_lbl 4820 `"Cousin"', add
label define related_lbl 4830 `"Sibling of sibling-in-law"', add
label define related_lbl 4900 `"Other relative, not elsewhere classified"', add
label define related_lbl 4910 `"Other relative with same family name"', add
label define related_lbl 4920 `"Other relative with different family name"', add
label define related_lbl 4930 `"Other relative, not specified (secondary family)"', add
label define related_lbl 5000 `"Non-relative"', add
label define related_lbl 5100 `"Friend/guest/visitor/partner"', add
label define related_lbl 5110 `"Partner/friend"', add
label define related_lbl 5111 `"Friend"', add
label define related_lbl 5112 `"Partner/roommate"', add
label define related_lbl 5113 `"Housemate/roommate"', add
label define related_lbl 5120 `"Visitor"', add
label define related_lbl 5130 `"Ex-spouse"', add
label define related_lbl 5140 `"Godparent"', add
label define related_lbl 5150 `"Godchild"', add
label define related_lbl 5200 `"Employee"', add
label define related_lbl 5210 `"Domestic employee"', add
label define related_lbl 5220 `"Relative of employee, n.s."', add
label define related_lbl 5221 `"Spouse of servant"', add
label define related_lbl 5222 `"Child of servant"', add
label define related_lbl 5223 `"Other relative of servant"', add
label define related_lbl 5300 `"Roomer/boarder/lodger/foster child"', add
label define related_lbl 5310 `"Boarder"', add
label define related_lbl 5311 `"Boarder or guest"', add
label define related_lbl 5320 `"Lodger"', add
label define related_lbl 5330 `"Foster child"', add
label define related_lbl 5340 `"Tutored/foster child"', add
label define related_lbl 5350 `"Tutored child"', add
label define related_lbl 5400 `"Employee, boarder or guest"', add
label define related_lbl 5500 `"Other specified non-relative"', add
label define related_lbl 5510 `"Agregado"', add
label define related_lbl 5520 `"Temporary resident, guest"', add
label define related_lbl 5600 `"Group quarters"', add
label define related_lbl 5610 `"Group quarters, non-inmates"', add
label define related_lbl 5620 `"Institutional inmates"', add
label define related_lbl 5900 `"Non-relative, n.e.c."', add
label define related_lbl 6000 `"Other relative or non-relative"', add
label define related_lbl 9999 `"Unknown"', add
label values related related_lbl

label define age_lbl 000 `"Less than 1 year"'
label define age_lbl 001 `"1 year"', add
label define age_lbl 002 `"2 years"', add
label define age_lbl 003 `"3"', add
label define age_lbl 004 `"4"', add
label define age_lbl 005 `"5"', add
label define age_lbl 006 `"6"', add
label define age_lbl 007 `"7"', add
label define age_lbl 008 `"8"', add
label define age_lbl 009 `"9"', add
label define age_lbl 010 `"10"', add
label define age_lbl 011 `"11"', add
label define age_lbl 012 `"12"', add
label define age_lbl 013 `"13"', add
label define age_lbl 014 `"14"', add
label define age_lbl 015 `"15"', add
label define age_lbl 016 `"16"', add
label define age_lbl 017 `"17"', add
label define age_lbl 018 `"18"', add
label define age_lbl 019 `"19"', add
label define age_lbl 020 `"20"', add
label define age_lbl 021 `"21"', add
label define age_lbl 022 `"22"', add
label define age_lbl 023 `"23"', add
label define age_lbl 024 `"24"', add
label define age_lbl 025 `"25"', add
label define age_lbl 026 `"26"', add
label define age_lbl 027 `"27"', add
label define age_lbl 028 `"28"', add
label define age_lbl 029 `"29"', add
label define age_lbl 030 `"30"', add
label define age_lbl 031 `"31"', add
label define age_lbl 032 `"32"', add
label define age_lbl 033 `"33"', add
label define age_lbl 034 `"34"', add
label define age_lbl 035 `"35"', add
label define age_lbl 036 `"36"', add
label define age_lbl 037 `"37"', add
label define age_lbl 038 `"38"', add
label define age_lbl 039 `"39"', add
label define age_lbl 040 `"40"', add
label define age_lbl 041 `"41"', add
label define age_lbl 042 `"42"', add
label define age_lbl 043 `"43"', add
label define age_lbl 044 `"44"', add
label define age_lbl 045 `"45"', add
label define age_lbl 046 `"46"', add
label define age_lbl 047 `"47"', add
label define age_lbl 048 `"48"', add
label define age_lbl 049 `"49"', add
label define age_lbl 050 `"50"', add
label define age_lbl 051 `"51"', add
label define age_lbl 052 `"52"', add
label define age_lbl 053 `"53"', add
label define age_lbl 054 `"54"', add
label define age_lbl 055 `"55"', add
label define age_lbl 056 `"56"', add
label define age_lbl 057 `"57"', add
label define age_lbl 058 `"58"', add
label define age_lbl 059 `"59"', add
label define age_lbl 060 `"60"', add
label define age_lbl 061 `"61"', add
label define age_lbl 062 `"62"', add
label define age_lbl 063 `"63"', add
label define age_lbl 064 `"64"', add
label define age_lbl 065 `"65"', add
label define age_lbl 066 `"66"', add
label define age_lbl 067 `"67"', add
label define age_lbl 068 `"68"', add
label define age_lbl 069 `"69"', add
label define age_lbl 070 `"70"', add
label define age_lbl 071 `"71"', add
label define age_lbl 072 `"72"', add
label define age_lbl 073 `"73"', add
label define age_lbl 074 `"74"', add
label define age_lbl 075 `"75"', add
label define age_lbl 076 `"76"', add
label define age_lbl 077 `"77"', add
label define age_lbl 078 `"78"', add
label define age_lbl 079 `"79"', add
label define age_lbl 080 `"80"', add
label define age_lbl 081 `"81"', add
label define age_lbl 082 `"82"', add
label define age_lbl 083 `"83"', add
label define age_lbl 084 `"84"', add
label define age_lbl 085 `"85"', add
label define age_lbl 086 `"86"', add
label define age_lbl 087 `"87"', add
label define age_lbl 088 `"88"', add
label define age_lbl 089 `"89"', add
label define age_lbl 090 `"90"', add
label define age_lbl 091 `"91"', add
label define age_lbl 092 `"92"', add
label define age_lbl 093 `"93"', add
label define age_lbl 094 `"94"', add
label define age_lbl 095 `"95"', add
label define age_lbl 096 `"96"', add
label define age_lbl 097 `"97"', add
label define age_lbl 098 `"98"', add
label define age_lbl 099 `"99"', add
label define age_lbl 100 `"100+"', add
label define age_lbl 999 `"Not reported/missing"', add
label values age age_lbl

label define sex_lbl 1 `"Male"'
label define sex_lbl 2 `"Female"', add
label define sex_lbl 9 `"Unknown"', add
label values sex sex_lbl

label define marst_lbl 0 `"NIU (not in universe)"'
label define marst_lbl 1 `"Single/never married"', add
label define marst_lbl 2 `"Married/in union"', add
label define marst_lbl 3 `"Separated/divorced/spouse absent"', add
label define marst_lbl 4 `"Widowed"', add
label define marst_lbl 9 `"Unknown/missing"', add
label values marst marst_lbl

label define marstd_lbl 000 `"NIU (not in universe)"'
label define marstd_lbl 100 `"Single/never married"', add
label define marstd_lbl 110 `"Engaged"', add
label define marstd_lbl 111 `"Never married and never cohabited"', add
label define marstd_lbl 200 `"Married or consensual union"', add
label define marstd_lbl 210 `"Married, formally"', add
label define marstd_lbl 211 `"Married, civil"', add
label define marstd_lbl 212 `"Married, religious"', add
label define marstd_lbl 213 `"Married, civil and religious"', add
label define marstd_lbl 214 `"Married, civil or religious"', add
label define marstd_lbl 215 `"Married, traditional/customary"', add
label define marstd_lbl 216 `"Married, monogamous"', add
label define marstd_lbl 217 `"Married, polygamous"', add
label define marstd_lbl 220 `"Consensual union"', add
label define marstd_lbl 300 `"Separated/divorced/spouse absent"', add
label define marstd_lbl 310 `"Separated or divorced"', add
label define marstd_lbl 320 `"Separated or annulled"', add
label define marstd_lbl 330 `"Separated"', add
label define marstd_lbl 331 `"Separated legally"', add
label define marstd_lbl 332 `"Separated de facto"', add
label define marstd_lbl 333 `"Separated from marriage"', add
label define marstd_lbl 334 `"Separated from consensual union"', add
label define marstd_lbl 335 `"Separated from consensual union or marriage"', add
label define marstd_lbl 340 `"Annulled"', add
label define marstd_lbl 350 `"Divorced"', add
label define marstd_lbl 360 `"Married, spouse absent"', add
label define marstd_lbl 400 `"Widowed"', add
label define marstd_lbl 410 `"Widowed or divorced"', add
label define marstd_lbl 411 `"Widowed from consensual union or marriage"', add
label define marstd_lbl 412 `"Widowed from marriage"', add
label define marstd_lbl 413 `"Widowed from consensual union"', add
label define marstd_lbl 420 `"Widowed, divorced, or separated"', add
label define marstd_lbl 999 `"Unknown/missing"', add
label values marstd marstd_lbl

label define consens_lbl 1 `"Yes, in consensual union"'
label define consens_lbl 2 `"No, married"', add
label define consens_lbl 8 `"Unknown"', add
label define consens_lbl 9 `"NIU (not in universe)"', add
label values consens consens_lbl

label define chborn_lbl 00 `"No children"'
label define chborn_lbl 01 `"1 child"', add
label define chborn_lbl 02 `"2 children"', add
label define chborn_lbl 03 `"3"', add
label define chborn_lbl 04 `"4"', add
label define chborn_lbl 05 `"5"', add
label define chborn_lbl 06 `"6"', add
label define chborn_lbl 07 `"7"', add
label define chborn_lbl 08 `"8"', add
label define chborn_lbl 09 `"9"', add
label define chborn_lbl 10 `"10"', add
label define chborn_lbl 11 `"11"', add
label define chborn_lbl 12 `"12"', add
label define chborn_lbl 13 `"13"', add
label define chborn_lbl 14 `"14"', add
label define chborn_lbl 15 `"15"', add
label define chborn_lbl 16 `"16"', add
label define chborn_lbl 17 `"17"', add
label define chborn_lbl 18 `"18"', add
label define chborn_lbl 19 `"19"', add
label define chborn_lbl 20 `"20"', add
label define chborn_lbl 21 `"21"', add
label define chborn_lbl 22 `"22"', add
label define chborn_lbl 23 `"23"', add
label define chborn_lbl 24 `"24"', add
label define chborn_lbl 25 `"25"', add
label define chborn_lbl 26 `"26"', add
label define chborn_lbl 27 `"27"', add
label define chborn_lbl 28 `"28"', add
label define chborn_lbl 29 `"29"', add
label define chborn_lbl 30 `"30+"', add
label define chborn_lbl 98 `"Unknown"', add
label define chborn_lbl 99 `"NIU (not in universe)"', add
label values chborn chborn_lbl

label define chsurv_lbl 00 `"No children"'
label define chsurv_lbl 01 `"1 child"', add
label define chsurv_lbl 02 `"2 children"', add
label define chsurv_lbl 03 `"3"', add
label define chsurv_lbl 04 `"4"', add
label define chsurv_lbl 05 `"5"', add
label define chsurv_lbl 06 `"6"', add
label define chsurv_lbl 07 `"7"', add
label define chsurv_lbl 08 `"8"', add
label define chsurv_lbl 09 `"9"', add
label define chsurv_lbl 10 `"10"', add
label define chsurv_lbl 11 `"11"', add
label define chsurv_lbl 12 `"12"', add
label define chsurv_lbl 13 `"13"', add
label define chsurv_lbl 14 `"14"', add
label define chsurv_lbl 15 `"15"', add
label define chsurv_lbl 16 `"16"', add
label define chsurv_lbl 17 `"17"', add
label define chsurv_lbl 18 `"18"', add
label define chsurv_lbl 19 `"19"', add
label define chsurv_lbl 20 `"20"', add
label define chsurv_lbl 21 `"21"', add
label define chsurv_lbl 22 `"22"', add
label define chsurv_lbl 23 `"23"', add
label define chsurv_lbl 24 `"24"', add
label define chsurv_lbl 25 `"25"', add
label define chsurv_lbl 26 `"26"', add
label define chsurv_lbl 27 `"27"', add
label define chsurv_lbl 28 `"28"', add
label define chsurv_lbl 29 `"29"', add
label define chsurv_lbl 30 `"30+"', add
label define chsurv_lbl 98 `"Unknown"', add
label define chsurv_lbl 99 `"NIU (not in universe)"', add
label values chsurv chsurv_lbl

label define brthlyr_lbl 0 `"None"'
label define brthlyr_lbl 1 `"1 (1 or more)"', add
label define brthlyr_lbl 2 `"2"', add
label define brthlyr_lbl 3 `"3"', add
label define brthlyr_lbl 4 `"4+"', add
label define brthlyr_lbl 8 `"Unknown"', add
label define brthlyr_lbl 9 `"NIU (not in universe)"', add
label values brthlyr brthlyr_lbl

label define bthsurv_lbl 0 `"0"'
label define bthsurv_lbl 1 `"1 (1 or more)"', add
label define bthsurv_lbl 2 `"2"', add
label define bthsurv_lbl 3 `"3"', add
label define bthsurv_lbl 4 `"4+"', add
label define bthsurv_lbl 8 `"Unknown"', add
label define bthsurv_lbl 9 `"NIU (not in universe)"', add
label values bthsurv bthsurv_lbl

label define nativty_lbl 0 `"NIU (not universe)"'
label define nativty_lbl 1 `"Native-born"', add
label define nativty_lbl 2 `"Foreign-born"', add
label define nativty_lbl 9 `"Unknown/missing"', add
label values nativty nativty_lbl

label define yrsimm2_lbl 1 `"Less than 1 year"'
label define yrsimm2_lbl 2 `"1 to 4 years"', add
label define yrsimm2_lbl 3 `"5 to 9 years"', add
label define yrsimm2_lbl 4 `"10 or more years"', add
label define yrsimm2_lbl 8 `"Unknown"', add
label define yrsimm2_lbl 9 `"NIU (not in universe)"', add
label values yrsimm2 yrsimm2_lbl

label define indig_lbl 0 `"NIU (not in universe)"'
label define indig_lbl 1 `"Yes"', add
label define indig_lbl 2 `"No"', add
label define indig_lbl 9 `"Unknown"', add
label values indig indig_lbl

label define ethnpa_lbl 01 `"Kuna"'
label define ethnpa_lbl 02 `"Ngäbe"', add
label define ethnpa_lbl 03 `"Buglé"', add
label define ethnpa_lbl 04 `"Teribe/Naso"', add
label define ethnpa_lbl 05 `"Bokota"', add
label define ethnpa_lbl 06 `"Emberá"', add
label define ethnpa_lbl 07 `"Wounaan"', add
label define ethnpa_lbl 08 `"Bri Bri"', add
label define ethnpa_lbl 09 `"Other indigenous group"', add
label define ethnpa_lbl 10 `"Not indigenous"', add
label define ethnpa_lbl 99 `"Unknown"', add
label values ethnpa ethnpa_lbl

label define school_lbl 0 `"NIU (not in universe)"'
label define school_lbl 1 `"Yes"', add
label define school_lbl 2 `"No, not specified"', add
label define school_lbl 3 `"No, attended in the past"', add
label define school_lbl 4 `"No, never attended"', add
label define school_lbl 9 `"Unknown/missing"', add
label values school school_lbl

label define lit_lbl 0 `"NIU (not in universe)"'
label define lit_lbl 1 `"No, illiterate"', add
label define lit_lbl 2 `"Yes, literate"', add
label define lit_lbl 9 `"Unknown/missing"', add
label values lit lit_lbl

label define edattan_lbl 0 `"NIU (not in universe)"'
label define edattan_lbl 1 `"Less than primary completed"', add
label define edattan_lbl 2 `"Primary completed"', add
label define edattan_lbl 3 `"Secondary completed"', add
label define edattan_lbl 4 `"University completed"', add
label define edattan_lbl 9 `"Unknown"', add
label values edattan edattan_lbl

label define edattand_lbl 000 `"NIU (not in universe)"'
label define edattand_lbl 100 `"Less than primary completed (n.s.)"', add
label define edattand_lbl 110 `"No schooling"', add
label define edattand_lbl 120 `"Some primary completed"', add
label define edattand_lbl 130 `"Primary (4 yrs) completed"', add
label define edattand_lbl 211 `"Primary (5 yrs) completed"', add
label define edattand_lbl 212 `"Primary (6 yrs) completed"', add
label define edattand_lbl 221 `"Lower secondary general completed"', add
label define edattand_lbl 222 `"Lower secondary technical completed"', add
label define edattand_lbl 311 `"Secondary, general track completed"', add
label define edattand_lbl 312 `"Some college completed"', add
label define edattand_lbl 320 `"Secondary or post-secondary technical completed"', add
label define edattand_lbl 321 `"Secondary, technical track completed"', add
label define edattand_lbl 322 `"Post-secondary technical education"', add
label define edattand_lbl 400 `"University completed"', add
label define edattand_lbl 999 `"Unknown/missing"', add
label values edattand edattand_lbl

label define yrschl_lbl 00 `"None or pre-school"'
label define yrschl_lbl 01 `"1 year"', add
label define yrschl_lbl 02 `"2 years"', add
label define yrschl_lbl 03 `"3 years"', add
label define yrschl_lbl 04 `"4 years"', add
label define yrschl_lbl 05 `"5 years"', add
label define yrschl_lbl 06 `"6 years"', add
label define yrschl_lbl 07 `"7 years"', add
label define yrschl_lbl 08 `"8 years"', add
label define yrschl_lbl 09 `"9 years"', add
label define yrschl_lbl 10 `"10 years"', add
label define yrschl_lbl 11 `"11 years"', add
label define yrschl_lbl 12 `"12 years"', add
label define yrschl_lbl 13 `"13 years"', add
label define yrschl_lbl 14 `"14 years"', add
label define yrschl_lbl 15 `"15 years"', add
label define yrschl_lbl 16 `"16 years"', add
label define yrschl_lbl 17 `"17 years"', add
label define yrschl_lbl 18 `"18 years or more"', add
label define yrschl_lbl 90 `"Not specified"', add
label define yrschl_lbl 91 `"Some primary"', add
label define yrschl_lbl 92 `"Some technical after primary"', add
label define yrschl_lbl 93 `"Some secondary"', add
label define yrschl_lbl 94 `"Some tertiary"', add
label define yrschl_lbl 95 `"Adult literacy"', add
label define yrschl_lbl 96 `"Special education"', add
label define yrschl_lbl 97 `"Response suppressed"', add
label define yrschl_lbl 98 `"Unknown/missing"', add
label define yrschl_lbl 99 `"NIU (not in universe)"', add
label values yrschl yrschl_lbl

label define educpa_lbl 00 `"Less than primary"'
label define educpa_lbl 01 `"No schooling"', add
label define educpa_lbl 02 `"Special education"', add
label define educpa_lbl 03 `"Preschool"', add
label define educpa_lbl 10 `"Primary"', add
label define educpa_lbl 11 `"Primary, grade 1"', add
label define educpa_lbl 12 `"Primary, grade 2"', add
label define educpa_lbl 13 `"Primary, grade 3"', add
label define educpa_lbl 14 `"Primary, grade 4"', add
label define educpa_lbl 15 `"Primary, grade 5"', add
label define educpa_lbl 16 `"Primary, grade 6"', add
label define educpa_lbl 19 `"Primary, grade unknown"', add
label define educpa_lbl 20 `"Secondary"', add
label define educpa_lbl 21 `"Secondary, grade 1"', add
label define educpa_lbl 22 `"Secondary, grade 2"', add
label define educpa_lbl 23 `"Secondary, grade 3"', add
label define educpa_lbl 24 `"Secondary, grade 4"', add
label define educpa_lbl 25 `"Secondary, grade 5"', add
label define educpa_lbl 26 `"Secondary, grade 6"', add
label define educpa_lbl 29 `"Secondary, grade unknown"', add
label define educpa_lbl 30 `"Post-secondary, non-university"', add
label define educpa_lbl 31 `"Post-secondary non-university, year 1"', add
label define educpa_lbl 32 `"Post-secondary non-university, year 2"', add
label define educpa_lbl 33 `"Post-secondary non-university, year 3"', add
label define educpa_lbl 39 `"Post-secondary non-university, year unknown"', add
label define educpa_lbl 40 `"Vocational"', add
label define educpa_lbl 41 `"Vocational, year 1"', add
label define educpa_lbl 42 `"Vocational, year 2"', add
label define educpa_lbl 43 `"Vocational, year 3"', add
label define educpa_lbl 49 `"Vocational, year unknown"', add
label define educpa_lbl 50 `"University"', add
label define educpa_lbl 51 `"University, 1 year"', add
label define educpa_lbl 52 `"University, 2 years"', add
label define educpa_lbl 53 `"University, 3 years"', add
label define educpa_lbl 54 `"University, 4 years"', add
label define educpa_lbl 55 `"University, 5 years"', add
label define educpa_lbl 56 `"University, 6 years"', add
label define educpa_lbl 57 `"University, 7 years"', add
label define educpa_lbl 58 `"University, 8+ years"', add
label define educpa_lbl 59 `"University, year unknown"', add
label define educpa_lbl 60 `"Post-graduate"', add
label define educpa_lbl 70 `"Master's degree"', add
label define educpa_lbl 71 `"Masters, 1 year"', add
label define educpa_lbl 72 `"Masters, 2 years"', add
label define educpa_lbl 73 `"Masters, year unknown"', add
label define educpa_lbl 80 `"Doctorate"', add
label define educpa_lbl 81 `"Year 1 or 2"', add
label define educpa_lbl 82 `"Doctorate, 1 year"', add
label define educpa_lbl 83 `"Doctorate, 2 years"', add
label define educpa_lbl 84 `"Doctorate, 3 years"', add
label define educpa_lbl 85 `"Doctorate, 4 years"', add
label define educpa_lbl 86 `"Doctorate, year unknown"', add
label define educpa_lbl 98 `"Unknown"', add
label define educpa_lbl 99 `"NIU (not in universe)"', add
label values educpa educpa_lbl

label define empstat_lbl 0 `"NIU (not in universe)"'
label define empstat_lbl 1 `"Employed"', add
label define empstat_lbl 2 `"Unemployed"', add
label define empstat_lbl 3 `"Inactive"', add
label define empstat_lbl 9 `"Unknown/missing"', add
label values empstat empstat_lbl

label define empstatd_lbl 000 `"NIU (not in universe)"'
label define empstatd_lbl 100 `"Employed, not specified"', add
label define empstatd_lbl 110 `"At work"', add
label define empstatd_lbl 111 `"At work, and 'student'"', add
label define empstatd_lbl 112 `"At work, and 'housework'"', add
label define empstatd_lbl 113 `"At work, and 'seeking work'"', add
label define empstatd_lbl 114 `"At work, and 'retired'"', add
label define empstatd_lbl 115 `"At work, and 'no work'"', add
label define empstatd_lbl 116 `"At work, and other situation"', add
label define empstatd_lbl 117 `"At work, family holding, not specified"', add
label define empstatd_lbl 118 `"At work, family holding, not agricultural"', add
label define empstatd_lbl 119 `"At work, family holding, agricultural"', add
label define empstatd_lbl 120 `"Have job, not at work in reference period"', add
label define empstatd_lbl 130 `"Armed forces"', add
label define empstatd_lbl 131 `"Armed forces, at work"', add
label define empstatd_lbl 132 `"Armed forces, not at work in reference period"', add
label define empstatd_lbl 133 `"Military trainee"', add
label define empstatd_lbl 140 `"Marginally employed"', add
label define empstatd_lbl 200 `"Unemployed, not specified"', add
label define empstatd_lbl 201 `"Unemployed 6 or more months"', add
label define empstatd_lbl 202 `"Worked fewer than 6 months, permanent job"', add
label define empstatd_lbl 203 `"Worked fewer than 6 months, temporary job"', add
label define empstatd_lbl 210 `"Unemployed, experienced worker"', add
label define empstatd_lbl 220 `"Unemployed, new worker"', add
label define empstatd_lbl 230 `"No work available"', add
label define empstatd_lbl 240 `"Inactive unemployed"', add
label define empstatd_lbl 300 `"Inactive (not in labor force)"', add
label define empstatd_lbl 310 `"Housework"', add
label define empstatd_lbl 320 `"Unable to work/disabled"', add
label define empstatd_lbl 321 `"Permanent disability"', add
label define empstatd_lbl 322 `"Temporary illness"', add
label define empstatd_lbl 323 `"Disabled or imprisoned"', add
label define empstatd_lbl 330 `"In school"', add
label define empstatd_lbl 340 `"Retirees and living on rent"', add
label define empstatd_lbl 341 `"Living on rents"', add
label define empstatd_lbl 342 `"Living on rents or pension"', add
label define empstatd_lbl 343 `"Retirees/pensioners"', add
label define empstatd_lbl 344 `"Retired"', add
label define empstatd_lbl 345 `"Pensioner"', add
label define empstatd_lbl 346 `"Non-retirement pension"', add
label define empstatd_lbl 347 `"Disability pension"', add
label define empstatd_lbl 348 `"Retired without benefits"', add
label define empstatd_lbl 350 `"Elderly"', add
label define empstatd_lbl 351 `"Elderly or disabled"', add
label define empstatd_lbl 360 `"Institutionalized"', add
label define empstatd_lbl 361 `"Prisoner"', add
label define empstatd_lbl 370 `"Intermittent worker"', add
label define empstatd_lbl 371 `"Not working, seasonal worker"', add
label define empstatd_lbl 372 `"Not working, occasional worker"', add
label define empstatd_lbl 380 `"Other income recipient"', add
label define empstatd_lbl 390 `"Inactive, other reasons"', add
label define empstatd_lbl 391 `"Too young to work"', add
label define empstatd_lbl 392 `"Dependent"', add
label define empstatd_lbl 999 `"Unknown/missing"', add
label values empstatd empstatd_lbl

label define occisco_lbl 01 `"Legislators, senior officials and managers"'
label define occisco_lbl 02 `"Professionals"', add
label define occisco_lbl 03 `"Technicians and associate professionals"', add
label define occisco_lbl 04 `"Clerks"', add
label define occisco_lbl 05 `"Service workers and shop and market sales"', add
label define occisco_lbl 06 `"Skilled agricultural and fishery workers"', add
label define occisco_lbl 07 `"Crafts and related trades workers"', add
label define occisco_lbl 08 `"Plant and machine operators and assemblers"', add
label define occisco_lbl 09 `"Elementary occupations"', add
label define occisco_lbl 10 `"Armed forces"', add
label define occisco_lbl 11 `"Other occupations, unspecified or n.e.c."', add
label define occisco_lbl 97 `"Response suppressed"', add
label define occisco_lbl 98 `"Unknown"', add
label define occisco_lbl 99 `"NIU (not in universe)"', add
label values occisco occisco_lbl

label define indgen_lbl 000 `"NIU (not in universe)"'
label define indgen_lbl 010 `"Agriculture, fishing, and forestry"', add
label define indgen_lbl 020 `"Mining"', add
label define indgen_lbl 030 `"Manufacturing"', add
label define indgen_lbl 040 `"Electricity, gas and water"', add
label define indgen_lbl 050 `"Construction"', add
label define indgen_lbl 060 `"Wholesale and retail trade"', add
label define indgen_lbl 070 `"Hotels and restaurants"', add
label define indgen_lbl 080 `"Transportation and communications"', add
label define indgen_lbl 090 `"Financial services and insurance"', add
label define indgen_lbl 100 `"Public administration and defense"', add
label define indgen_lbl 110 `"Services, not specified"', add
label define indgen_lbl 111 `"Real estate and business services"', add
label define indgen_lbl 112 `"Education"', add
label define indgen_lbl 113 `"Health and social work"', add
label define indgen_lbl 114 `"Other services"', add
label define indgen_lbl 120 `"Private household services"', add
label define indgen_lbl 130 `"Other industry, n.e.c."', add
label define indgen_lbl 998 `"Response suppressed"', add
label define indgen_lbl 999 `"Unknown"', add
label values indgen indgen_lbl

label define classwk_lbl 0 `"NIU (not in universe)"'
label define classwk_lbl 1 `"Self-employed"', add
label define classwk_lbl 2 `"Wage/salary worker"', add
label define classwk_lbl 3 `"Unpaid worker"', add
label define classwk_lbl 4 `"Other"', add
label define classwk_lbl 9 `"Unknown/missing"', add
label values classwk classwk_lbl

label define classwkd_lbl 000 `"NIU (not in universe)"'
label define classwkd_lbl 100 `"Self-employed"', add
label define classwkd_lbl 101 `"Self-employed, unincorporated"', add
label define classwkd_lbl 102 `"Self-employed, incorporated"', add
label define classwkd_lbl 110 `"Employer"', add
label define classwkd_lbl 111 `"Sharecropper, employer"', add
label define classwkd_lbl 120 `"Working on own account"', add
label define classwkd_lbl 121 `"Own account, agriculture"', add
label define classwkd_lbl 122 `"Domestic worker, self-employed"', add
label define classwkd_lbl 123 `"Subsistence worker, own consumption"', add
label define classwkd_lbl 124 `"Own account, other"', add
label define classwkd_lbl 125 `"Own account, without temporary/unpaid help"', add
label define classwkd_lbl 126 `"Own account, with temporary/unpaid help"', add
label define classwkd_lbl 130 `"Member of cooperative"', add
label define classwkd_lbl 140 `"Sharecropper"', add
label define classwkd_lbl 141 `"Sharecropper, self-employed"', add
label define classwkd_lbl 142 `"Sharecropper, employee"', add
label define classwkd_lbl 150 `"Kibbutz member"', add
label define classwkd_lbl 200 `"Wage/salary worker"', add
label define classwkd_lbl 201 `"Management"', add
label define classwkd_lbl 202 `"Non-management"', add
label define classwkd_lbl 203 `"White collar (non-manual)"', add
label define classwkd_lbl 204 `"Blue collar (manual)"', add
label define classwkd_lbl 205 `"White and blue collar"', add
label define classwkd_lbl 206 `"Day laborer"', add
label define classwkd_lbl 207 `"Employee, with a permanent job"', add
label define classwkd_lbl 208 `"Employee, occasional, temporary, contract"', add
label define classwkd_lbl 209 `"Employee without legal contract"', add
label define classwkd_lbl 210 `"Wage/salary worker, private employer"', add
label define classwkd_lbl 211 `"Apprentice"', add
label define classwkd_lbl 212 `"Religious worker"', add
label define classwkd_lbl 213 `"Wage/salary worker, non-profit"', add
label define classwkd_lbl 214 `"White collar, private"', add
label define classwkd_lbl 215 `"Blue collar, private"', add
label define classwkd_lbl 216 `"Paid family worker"', add
label define classwkd_lbl 217 `"Cooperative employee"', add
label define classwkd_lbl 220 `"Wage/salary worker, government"', add
label define classwkd_lbl 221 `"Federal, government employee"', add
label define classwkd_lbl 222 `"State government employee"', add
label define classwkd_lbl 223 `"Local government employee"', add
label define classwkd_lbl 224 `"White collar, public"', add
label define classwkd_lbl 225 `"Blue collar, public"', add
label define classwkd_lbl 226 `"Public companies"', add
label define classwkd_lbl 227 `"Civil servants, local collectives"', add
label define classwkd_lbl 230 `"Domestic worker (work for private household)"', add
label define classwkd_lbl 240 `"Seasonal migrant"', add
label define classwkd_lbl 241 `"Seasonal migrant, no broker"', add
label define classwkd_lbl 242 `"Seasonal migrant, uses broker"', add
label define classwkd_lbl 250 `"Other wage and salary"', add
label define classwkd_lbl 251 `"Canal zone/commission employee"', add
label define classwkd_lbl 252 `"Government employment/training program"', add
label define classwkd_lbl 253 `"Mixed state/private enterprise"', add
label define classwkd_lbl 254 `"Government public work program"', add
label define classwkd_lbl 300 `"Unpaid worker"', add
label define classwkd_lbl 310 `"Unpaid family worker"', add
label define classwkd_lbl 320 `"Apprentice, unpaid or unspecified"', add
label define classwkd_lbl 330 `"Trainee"', add
label define classwkd_lbl 340 `"Apprentice or trainee"', add
label define classwkd_lbl 350 `"Works for others without wage"', add
label define classwkd_lbl 400 `"Other"', add
label define classwkd_lbl 999 `"Unknown/missing"', add
label values classwkd classwkd_lbl

label define empsect_lbl 00 `"NIU (not in universe)"'
label define empsect_lbl 10 `"Public"', add
label define empsect_lbl 20 `"Private"', add
label define empsect_lbl 21 `"Private, not elsewhere classified"', add
label define empsect_lbl 22 `"Individual/family enterprise, and self-employed"', add
label define empsect_lbl 23 `"Foreign"', add
label define empsect_lbl 30 `"Mixed: public-private or parastatal"', add
label define empsect_lbl 40 `"Collective or cooperative"', add
label define empsect_lbl 50 `"Foreign government or non-governmental organization"', add
label define empsect_lbl 60 `"Other, unspecified"', add
label define empsect_lbl 61 `"Canal zone"', add
label define empsect_lbl 62 `"Faith-based organization"', add
label define empsect_lbl 99 `"Unknown"', add
label values empsect empsect_lbl

label define inctot_lbl 0000000 `"0000000"'
label define inctot_lbl 0000001 `"0000001"', add
label define inctot_lbl 0000025 `"0000025"', add
label define inctot_lbl 0000075 `"0000075"', add
label define inctot_lbl 0000100 `"0000100"', add
label define inctot_lbl 0000125 `"0000125"', add
label define inctot_lbl 0000175 `"0000175"', add
label define inctot_lbl 0000201 `"0000201"', add
label define inctot_lbl 0000225 `"0000225"', add
label define inctot_lbl 0000275 `"0000275"', add
label define inctot_lbl 0000325 `"0000325"', add
label define inctot_lbl 0000350 `"0000350"', add
label define inctot_lbl 0000375 `"0000375"', add
label define inctot_lbl 0000425 `"0000425"', add
label define inctot_lbl 0000475 `"0000475"', add
label define inctot_lbl 0000501 `"0000501"', add
label define inctot_lbl 0000550 `"0000550"', add
label define inctot_lbl 0000650 `"0000650"', add
label define inctot_lbl 0000750 `"0000750"', add
label define inctot_lbl 0000801 `"0000801"', add
label define inctot_lbl 0000850 `"0000850"', add
label define inctot_lbl 0000950 `"0000950"', add
label define inctot_lbl 0001001 `"0001001"', add
label define inctot_lbl 0001050 `"0001050"', add
label define inctot_lbl 0001150 `"0001150"', add
label define inctot_lbl 0001200 `"0001200"', add
label define inctot_lbl 0001250 `"0001250"', add
label define inctot_lbl 0001350 `"0001350"', add
label define inctot_lbl 0001450 `"0001450"', add
label define inctot_lbl 0001501 `"0001501"', add
label define inctot_lbl 0001550 `"0001550"', add
label define inctot_lbl 0001650 `"0001650"', add
label define inctot_lbl 0001750 `"0001750"', add
label define inctot_lbl 0001850 `"0001850"', add
label define inctot_lbl 0001950 `"0001950"', add
label define inctot_lbl 0002000 `"0002000"', add
label define inctot_lbl 0002050 `"0002050"', add
label define inctot_lbl 0002150 `"0002150"', add
label define inctot_lbl 0002250 `"0002250"', add
label define inctot_lbl 0002350 `"0002350"', add
label define inctot_lbl 0002400 `"0002400"', add
label define inctot_lbl 0002450 `"0002450"', add
label define inctot_lbl 0002625 `"0002625"', add
label define inctot_lbl 0002875 `"0002875"', add
label define inctot_lbl 0003000 `"0003000"', add
label define inctot_lbl 0003125 `"0003125"', add
label define inctot_lbl 0003375 `"0003375"', add
label define inctot_lbl 0003625 `"0003625"', add
label define inctot_lbl 0003875 `"0003875"', add
label define inctot_lbl 0004000 `"0004000"', add
label define inctot_lbl 0004125 `"0004125"', add
label define inctot_lbl 0004200 `"0004200"', add
label define inctot_lbl 0004375 `"0004375"', add
label define inctot_lbl 0004625 `"0004625"', add
label define inctot_lbl 0004875 `"0004875"', add
label define inctot_lbl 0005250 `"0005250"', add
label define inctot_lbl 0005750 `"0005750"', add
label define inctot_lbl 0006250 `"0006250"', add
label define inctot_lbl 0006750 `"0006750"', add
label define inctot_lbl 0007000 `"0007000"', add
label define inctot_lbl 0007200 `"0007200"', add
label define inctot_lbl 0007250 `"0007250"', add
label define inctot_lbl 0007750 `"0007750"', add
label define inctot_lbl 0008250 `"0008250"', add
label define inctot_lbl 0008750 `"0008750"', add
label define inctot_lbl 0009000 `"0009000"', add
label define inctot_lbl 0009250 `"0009250"', add
label define inctot_lbl 0009500 `"0009500"', add
label define inctot_lbl 0009750 `"0009750"', add
label define inctot_lbl 0010000 `"0010000"', add
label define inctot_lbl 0011250 `"0011250"', add
label define inctot_lbl 0013500 `"0013500"', add
label define inctot_lbl 0013750 `"0013750"', add
label define inctot_lbl 0014400 `"0014400"', add
label define inctot_lbl 0015000 `"0015000"', add
label define inctot_lbl 0016250 `"0016250"', add
label define inctot_lbl 0018750 `"0018750"', add
label define inctot_lbl 0021250 `"0021250"', add
label define inctot_lbl 0023000 `"0023000"', add
label define inctot_lbl 0023750 `"0023750"', add
label define inctot_lbl 0024000 `"0024000"', add
label define inctot_lbl 0027500 `"0027500"', add
label define inctot_lbl 0028800 `"0028800"', add
label define inctot_lbl 0030001 `"0030001"', add
label define inctot_lbl 0032500 `"0032500"', add
label define inctot_lbl 0036000 `"0036000"', add
label define inctot_lbl 0037500 `"0037500"', add
label define inctot_lbl 0042500 `"0042500"', add
label define inctot_lbl 0047500 `"0047500"', add
label define inctot_lbl 0048000 `"0048000"', add
label define inctot_lbl 0055000 `"0055000"', add
label define inctot_lbl 0057600 `"0057600"', add
label define inctot_lbl 0063000 `"0063000"', add
label define inctot_lbl 0065000 `"0065000"', add
label define inctot_lbl 0075000 `"0075000"', add
label define inctot_lbl 0084000 `"0084000"', add
label define inctot_lbl 0085000 `"0085000"', add
label define inctot_lbl 0095000 `"0095000"', add
label define inctot_lbl 0114000 `"0114000"', add
label define inctot_lbl 0115200 `"0115200"', add
label define inctot_lbl 0150000 `"0150000"', add
label define inctot_lbl 0162000 `"0162000"', add
label define inctot_lbl 0230400 `"0230400"', add
label define inctot_lbl 0200000 `"0200000"', add
label define inctot_lbl 0250000 `"0250000"', add
label define inctot_lbl 0276000 `"0276000"', add
label define inctot_lbl 0350000 `"0350000"', add
label define inctot_lbl 0360001 `"0360001"', add
label define inctot_lbl 0450000 `"0450000"', add
label define inctot_lbl 0460800 `"0460800"', add
label define inctot_lbl 0550000 `"0550000"', add
label define inctot_lbl 0650000 `"0650000"', add
label define inctot_lbl 0750000 `"0750000"', add
label define inctot_lbl 0850000 `"0850000"', add
label define inctot_lbl 0921600 `"0921600"', add
label define inctot_lbl 0950000 `"0950000"', add
label define inctot_lbl 1500000 `"1500000"', add
label define inctot_lbl 1843200 `"1843200"', add
label define inctot_lbl 2457601 `"2457601"', add
label define inctot_lbl 2500000 `"2500000"', add
label define inctot_lbl 3500000 `"3500000"', add
label define inctot_lbl 4500000 `"4500000"', add
label define inctot_lbl 5500000 `"5500000"', add
label define inctot_lbl 9999997 `"9999997"', add
label define inctot_lbl 9999998 `"Unknown"', add
label define inctot_lbl 9999999 `"NIU (not in universe)"', add
label values inctot inctot_lbl

label define incearn_lbl 00000000 `"0"'
label define incearn_lbl 00000125 `"125"', add
label define incearn_lbl 00000375 `"375"', add
label define incearn_lbl 00000550 `"550"', add
label define incearn_lbl 00000625 `"625"', add
label define incearn_lbl 00000875 `"875"', add
label define incearn_lbl 00001050 `"1050"', add
label define incearn_lbl 00001250 `"1250"', add
label define incearn_lbl 00001750 `"1750"', add
label define incearn_lbl 00002000 `"2000"', add
label define incearn_lbl 00003500 `"3500"', add
label define incearn_lbl 00005000 `"5000"', add
label define incearn_lbl 00006500 `"6500"', add
label define incearn_lbl 00007700 `"7700"', add
label define incearn_lbl 00009200 `"9200"', add
label define incearn_lbl 00011000 `"11000"', add
label define incearn_lbl 00014000 `"14000"', add
label define incearn_lbl 00016000 `"16000"', add
label define incearn_lbl 01000000 `"1000000"', add
label define incearn_lbl 99999998 `"Missing/unknown"', add
label define incearn_lbl 99999999 `"NIU (not in universe)"', add
label values incearn incearn_lbl

label define incwage_lbl 0000000 `"0"'
label define incwage_lbl 0000150 `"150"', add
label define incwage_lbl 0000450 `"450"', add
label define incwage_lbl 0000650 `"650"', add
label define incwage_lbl 0001000 `"1000"', add
label define incwage_lbl 0001050 `"1050"', add
label define incwage_lbl 0001500 `"1500"', add
label define incwage_lbl 0002150 `"2150"', add
label define incwage_lbl 0002250 `"2250"', add
label define incwage_lbl 0002500 `"2500"', add
label define incwage_lbl 0002650 `"2650"', add
label define incwage_lbl 0002750 `"2750"', add
label define incwage_lbl 0003500 `"3500"', add
label define incwage_lbl 0004500 `"4500"', add
label define incwage_lbl 0005500 `"5500"', add
label define incwage_lbl 0006500 `"6500"', add
label define incwage_lbl 0006588 `"6588"', add
label define incwage_lbl 0007500 `"7500"', add
label define incwage_lbl 0008500 `"8500"', add
label define incwage_lbl 0009154 `"9154"', add
label define incwage_lbl 0009500 `"9500"', add
label define incwage_lbl 0010500 `"10500"', add
label define incwage_lbl 0011286 `"11286"', add
label define incwage_lbl 0011500 `"11500"', add
label define incwage_lbl 0012500 `"12500"', add
label define incwage_lbl 0013065 `"13065"', add
label define incwage_lbl 0013500 `"13500"', add
label define incwage_lbl 0014500 `"14500"', add
label define incwage_lbl 0014795 `"14795"', add
label define incwage_lbl 0015000 `"15000"', add
label define incwage_lbl 0015500 `"15500"', add
label define incwage_lbl 0016500 `"16500"', add
label define incwage_lbl 0016517 `"16517"', add
label define incwage_lbl 0017500 `"17500"', add
label define incwage_lbl 0018179 `"18179"', add
label define incwage_lbl 0018500 `"18500"', add
label define incwage_lbl 0019500 `"19500"', add
label define incwage_lbl 0019891 `"19891"', add
label define incwage_lbl 0020000 `"20000"', add
label define incwage_lbl 0021000 `"21000"', add
label define incwage_lbl 0021494 `"21494"', add
label define incwage_lbl 0023373 `"23373"', add
label define incwage_lbl 0025988 `"25988"', add
label define incwage_lbl 0026000 `"26000"', add
label define incwage_lbl 0028908 `"28908"', add
label define incwage_lbl 0030000 `"30000"', add
label define incwage_lbl 0031513 `"31513"', add
label define incwage_lbl 0034837 `"34837"', add
label define incwage_lbl 0039061 `"39061"', add
label define incwage_lbl 0044650 `"44650"', add
label define incwage_lbl 0050000 `"50000"', add
label define incwage_lbl 0052200 `"52200"', add
label define incwage_lbl 0057000 `"57000"', add
label define incwage_lbl 0060000 `"60000"', add
label define incwage_lbl 0065000 `"65000"', add
label define incwage_lbl 0065665 `"65665"', add
label define incwage_lbl 0074716 `"74716"', add
label define incwage_lbl 0080000 `"80000"', add
label define incwage_lbl 0100000 `"100000"', add
label define incwage_lbl 0186000 `"186000"', add
label define incwage_lbl 0190000 `"190000"', add
label define incwage_lbl 0195000 `"195000"', add
label define incwage_lbl 0390000 `"390000"', add
label define incwage_lbl 0400000 `"400000"', add
label define incwage_lbl 0416000 `"416000"', add
label define incwage_lbl 0720000 `"720000"', add
label define incwage_lbl 0750000 `"750000"', add
label define incwage_lbl 0780000 `"780000"', add
label define incwage_lbl 1250000 `"1250000"', add
label define incwage_lbl 1260000 `"1260000"', add
label define incwage_lbl 1300000 `"1300000"', add
label define incwage_lbl 2250000 `"2250000"', add
label define incwage_lbl 2280000 `"2280000"', add
label define incwage_lbl 2340000 `"2340000"', add
label define incwage_lbl 3000000 `"3000000"', add
label define incwage_lbl 9999998 `"Unknown"', add
label define incwage_lbl 9999999 `"NIU (not in universe)"', add
label values incwage incwage_lbl

label define incself_lbl 000000 `"No income"'
label define incself_lbl 001050 `"100-1999 ILS (New Israeli sheqel)"', add
label define incself_lbl 002250 `"2000-2499 ILS"', add
label define incself_lbl 002750 `"2500-2999 ILS"', add
label define incself_lbl 003500 `"3000-3999 ILS"', add
label define incself_lbl 004500 `"4000-4999 ILS"', add
label define incself_lbl 005500 `"5000-5999 ILS"', add
label define incself_lbl 006500 `"6000-6999 ILS"', add
label define incself_lbl 007500 `"7000-7999 ILS"', add
label define incself_lbl 008500 `"8000-8999 ILS"', add
label define incself_lbl 009500 `"9000-9999 ILS"', add
label define incself_lbl 010500 `"10000-10999 ILS"', add
label define incself_lbl 011500 `"11000-11999 ILS"', add
label define incself_lbl 012500 `"12000-12999 ILS"', add
label define incself_lbl 014000 `"13000-14999 ILS"', add
label define incself_lbl 016000 `"15000-16999 ILS"', add
label define incself_lbl 018500 `"17000-19999 ILS"', add
label define incself_lbl 023500 `"20000-26999 ILS"', add
label define incself_lbl 033500 `"27000-39999 ILS"', add
label define incself_lbl 040000 `"40000+ ILS"', add
label define incself_lbl 999998 `"Unknown"', add
label define incself_lbl 999999 `"NIU (not in universe)"', add
label values incself incself_lbl

label define incwel_lbl 000000 `"0"'
label define incwel_lbl 000175 `"175"', add
label define incwel_lbl 000375 `"375"', add
label define incwel_lbl 000625 `"625"', add
label define incwel_lbl 000875 `"875"', add
label define incwel_lbl 001250 `"1250"', add
label define incwel_lbl 001750 `"1750"', add
label define incwel_lbl 002500 `"2500"', add
label define incwel_lbl 003000 `"3000"', add
label define incwel_lbl 999998 `"Unknown/missing"', add
label define incwel_lbl 999999 `"NIU (not in universe)"', add
label values incwel incwel_lbl

label define incret_lbl 000000 `"000000"'
label define incret_lbl 000015 `"000015"', add
label define incret_lbl 000025 `"000025"', add
label define incret_lbl 000035 `"000035"', add
label define incret_lbl 000045 `"000045"', add
label define incret_lbl 000055 `"000055"', add
label define incret_lbl 000065 `"000065"', add
label define incret_lbl 000075 `"000075"', add
label define incret_lbl 000100 `"000100"', add
label define incret_lbl 000125 `"000125"', add
label define incret_lbl 000150 `"000150"', add
label define incret_lbl 000200 `"000200"', add
label define incret_lbl 999998 `"Unknown/missing"', add
label define incret_lbl 999999 `"NIU (not in universe)"', add
label values incret incret_lbl

label define mgratep_lbl 00 `"NIU (not in universe)"'
label define mgratep_lbl 10 `"Same major administrative unit"', add
label define mgratep_lbl 11 `"Same major, same minor administrative unit"', add
label define mgratep_lbl 12 `"Same major, different minor administrative unit"', add
label define mgratep_lbl 20 `"Different major administrative unit"', add
label define mgratep_lbl 30 `"Abroad"', add
label define mgratep_lbl 98 `"Response suppressed"', add
label define mgratep_lbl 99 `"Not reported/missing"', add
label values mgratep mgratep_lbl

label define mgctry1_lbl 00000 `"NIU (not in universe)"'
label define mgctry1_lbl 10000 `"Africa"', add
label define mgctry1_lbl 11000 `"Eastern Africa"', add
label define mgctry1_lbl 11010 `"Burundi"', add
label define mgctry1_lbl 11020 `"Comoros"', add
label define mgctry1_lbl 11030 `"Djibouti"', add
label define mgctry1_lbl 11040 `"Eritrea"', add
label define mgctry1_lbl 11050 `"Ethiopia"', add
label define mgctry1_lbl 11060 `"Kenya"', add
label define mgctry1_lbl 11070 `"Madagascar"', add
label define mgctry1_lbl 11080 `"Malawi"', add
label define mgctry1_lbl 11090 `"Mauritius"', add
label define mgctry1_lbl 11100 `"Mozambique"', add
label define mgctry1_lbl 11110 `"Reunion"', add
label define mgctry1_lbl 11120 `"Rwanda"', add
label define mgctry1_lbl 11130 `"Seychelles"', add
label define mgctry1_lbl 11140 `"Somalia"', add
label define mgctry1_lbl 11150 `"South Sudan"', add
label define mgctry1_lbl 11160 `"Uganda"', add
label define mgctry1_lbl 11170 `"Tanzania"', add
label define mgctry1_lbl 11180 `"Zambia"', add
label define mgctry1_lbl 11190 `"Zimbabwe"', add
label define mgctry1_lbl 11999 `"Eastern Africa, n.s."', add
label define mgctry1_lbl 12000 `"Middle Africa"', add
label define mgctry1_lbl 12010 `"Angola"', add
label define mgctry1_lbl 12020 `"Cameroon"', add
label define mgctry1_lbl 12030 `"Central African Republic"', add
label define mgctry1_lbl 12040 `"Chad"', add
label define mgctry1_lbl 12050 `"Congo"', add
label define mgctry1_lbl 12060 `"Democratic Republic of Congo"', add
label define mgctry1_lbl 12070 `"Equatorial Guinea"', add
label define mgctry1_lbl 12080 `"Gabon"', add
label define mgctry1_lbl 12100 `"Sao Tome and Principe"', add
label define mgctry1_lbl 12999 `"Middle Africa, n.s."', add
label define mgctry1_lbl 13000 `"Northern Africa"', add
label define mgctry1_lbl 13010 `"Algeria"', add
label define mgctry1_lbl 13020 `"Egypt/United Arab Rep."', add
label define mgctry1_lbl 13030 `"Libya"', add
label define mgctry1_lbl 13040 `"Morocco"', add
label define mgctry1_lbl 13050 `"Sudan"', add
label define mgctry1_lbl 13060 `"Tunisia"', add
label define mgctry1_lbl 13070 `"Western Sahara"', add
label define mgctry1_lbl 13990 `"Northern Africa, n.s."', add
label define mgctry1_lbl 14000 `"Southern Africa"', add
label define mgctry1_lbl 14010 `"Botswana"', add
label define mgctry1_lbl 14020 `"Lesotho"', add
label define mgctry1_lbl 14030 `"Namibia"', add
label define mgctry1_lbl 14040 `"South Africa"', add
label define mgctry1_lbl 14050 `"Swaziland"', add
label define mgctry1_lbl 14999 `"Southern Africa, n.s."', add
label define mgctry1_lbl 15000 `"Western Africa"', add
label define mgctry1_lbl 15010 `"Benin"', add
label define mgctry1_lbl 15020 `"Burkina Faso"', add
label define mgctry1_lbl 15150 `"Cape Verde"', add
label define mgctry1_lbl 15040 `"Ivory Coast"', add
label define mgctry1_lbl 15050 `"Gambia"', add
label define mgctry1_lbl 15060 `"Ghana"', add
label define mgctry1_lbl 15070 `"Guinea"', add
label define mgctry1_lbl 15080 `"Guinea-Bissau"', add
label define mgctry1_lbl 15090 `"Liberia"', add
label define mgctry1_lbl 15100 `"Mali"', add
label define mgctry1_lbl 15110 `"Mauritania"', add
label define mgctry1_lbl 15120 `"Niger"', add
label define mgctry1_lbl 15130 `"Nigeria"', add
label define mgctry1_lbl 15140 `"St. Helena and Ascension"', add
label define mgctry1_lbl 15160 `"Sierra Leone"', add
label define mgctry1_lbl 15170 `"Togo"', add
label define mgctry1_lbl 19999 `"Africa, n.s."', add
label define mgctry1_lbl 20000 `"Americas"', add
label define mgctry1_lbl 21000 `"Caribbean"', add
label define mgctry1_lbl 21010 `"Anguilla"', add
label define mgctry1_lbl 21020 `"Antigua-Barbuda"', add
label define mgctry1_lbl 21030 `"Aruba"', add
label define mgctry1_lbl 21040 `"Bahamas"', add
label define mgctry1_lbl 21050 `"Barbados"', add
label define mgctry1_lbl 21060 `"British Virgin Islands"', add
label define mgctry1_lbl 21070 `"Cayman Isles"', add
label define mgctry1_lbl 21080 `"Cuba"', add
label define mgctry1_lbl 21090 `"Dominica"', add
label define mgctry1_lbl 21100 `"Dominican Republic"', add
label define mgctry1_lbl 21110 `"Grenada"', add
label define mgctry1_lbl 21120 `"Guadeloupe"', add
label define mgctry1_lbl 21130 `"Haiti"', add
label define mgctry1_lbl 21140 `"Jamaica"', add
label define mgctry1_lbl 21150 `"Martinique"', add
label define mgctry1_lbl 21160 `"Montserrat"', add
label define mgctry1_lbl 21170 `"Netherlands Antilles"', add
label define mgctry1_lbl 21180 `"Puerto Rico"', add
label define mgctry1_lbl 21190 `"St. Kitts-Nevis"', add
label define mgctry1_lbl 21200 `"St. Croix"', add
label define mgctry1_lbl 21210 `"St. John"', add
label define mgctry1_lbl 21220 `"St. Lucia"', add
label define mgctry1_lbl 21230 `"St. Thomas"', add
label define mgctry1_lbl 21240 `"St. Vincent and the Grenadines"', add
label define mgctry1_lbl 21250 `"Trinidad and Tobago"', add
label define mgctry1_lbl 21260 `"Turks and Caicos"', add
label define mgctry1_lbl 21270 `"U.S. Virgin Islands"', add
label define mgctry1_lbl 21999 `"Caribbean, n.s."', add
label define mgctry1_lbl 22000 `"Central America"', add
label define mgctry1_lbl 22010 `"Belize/British Honduras"', add
label define mgctry1_lbl 22020 `"Costa Rica"', add
label define mgctry1_lbl 22030 `"El Salvador"', add
label define mgctry1_lbl 22040 `"Guatemala"', add
label define mgctry1_lbl 22050 `"Honduras"', add
label define mgctry1_lbl 22060 `"Mexico"', add
label define mgctry1_lbl 22070 `"Nicaragua"', add
label define mgctry1_lbl 22080 `"Panama"', add
label define mgctry1_lbl 22081 `"Panama Canal Zone"', add
label define mgctry1_lbl 22999 `"Central America, n.s."', add
label define mgctry1_lbl 23000 `"South America"', add
label define mgctry1_lbl 23010 `"Argentina"', add
label define mgctry1_lbl 23020 `"Bolivia"', add
label define mgctry1_lbl 23030 `"Brazil"', add
label define mgctry1_lbl 23040 `"Chile"', add
label define mgctry1_lbl 23050 `"Colombia"', add
label define mgctry1_lbl 23060 `"Ecuador"', add
label define mgctry1_lbl 23070 `"Falkland Islands"', add
label define mgctry1_lbl 23080 `"French Guiana"', add
label define mgctry1_lbl 23090 `"Guyana/British Guiana"', add
label define mgctry1_lbl 23100 `"Paraguay"', add
label define mgctry1_lbl 23110 `"Peru"', add
label define mgctry1_lbl 23120 `"Suriname"', add
label define mgctry1_lbl 23130 `"Uruguay"', add
label define mgctry1_lbl 23140 `"Venezuela"', add
label define mgctry1_lbl 23990 `"South America, n.s."', add
label define mgctry1_lbl 23991 `"Central and Latin America"', add
label define mgctry1_lbl 24000 `"North America"', add
label define mgctry1_lbl 24010 `"Bermuda"', add
label define mgctry1_lbl 24020 `"Canada"', add
label define mgctry1_lbl 24030 `"Greenland"', add
label define mgctry1_lbl 24040 `"Saint Pierre and Miquelon"', add
label define mgctry1_lbl 24050 `"United States"', add
label define mgctry1_lbl 24051 `"U.S. Outlying Areas and Territories"', add
label define mgctry1_lbl 24999 `"U.S.A, Canada, Mexico"', add
label define mgctry1_lbl 29999 `"Americas, n.s."', add
label define mgctry1_lbl 30000 `"Asia"', add
label define mgctry1_lbl 31000 `"Eastern Asia"', add
label define mgctry1_lbl 31010 `"China"', add
label define mgctry1_lbl 31011 `"Hong Kong"', add
label define mgctry1_lbl 31012 `"Macau"', add
label define mgctry1_lbl 31013 `"Taiwan"', add
label define mgctry1_lbl 31020 `"Japan"', add
label define mgctry1_lbl 31030 `"Korea"', add
label define mgctry1_lbl 31031 `"Korea, DPR (North)"', add
label define mgctry1_lbl 31032 `"Korea, RO (South)"', add
label define mgctry1_lbl 31040 `"Mongolia"', add
label define mgctry1_lbl 32000 `"South-Central Asia"', add
label define mgctry1_lbl 32010 `"Afghanistan"', add
label define mgctry1_lbl 32020 `"Bangladesh"', add
label define mgctry1_lbl 32030 `"Bhutan"', add
label define mgctry1_lbl 32040 `"India"', add
label define mgctry1_lbl 32041 `"India, Pakistan, Bangladesh, Sri Lanka"', add
label define mgctry1_lbl 32050 `"Iran"', add
label define mgctry1_lbl 32060 `"Kazakhstan"', add
label define mgctry1_lbl 32070 `"Kyrgyzstan"', add
label define mgctry1_lbl 32080 `"Maldives"', add
label define mgctry1_lbl 32090 `"Nepal"', add
label define mgctry1_lbl 32100 `"Pakistan"', add
label define mgctry1_lbl 32110 `"Sri Lanka (Ceylon)"', add
label define mgctry1_lbl 32120 `"Tajikistan"', add
label define mgctry1_lbl 32130 `"Turkmenistan"', add
label define mgctry1_lbl 32140 `"Uzbekistan"', add
label define mgctry1_lbl 33000 `"South-Eastern Asia"', add
label define mgctry1_lbl 33010 `"Brunei"', add
label define mgctry1_lbl 33020 `"Cambodia (Kampuchea)"', add
label define mgctry1_lbl 33040 `"Indonesia"', add
label define mgctry1_lbl 33050 `"Laos"', add
label define mgctry1_lbl 33060 `"Malaysia"', add
label define mgctry1_lbl 33061 `"Malaysia and Singapore"', add
label define mgctry1_lbl 33070 `"Myanmar (Burma)"', add
label define mgctry1_lbl 33080 `"Philippines"', add
label define mgctry1_lbl 33090 `"Singapore"', add
label define mgctry1_lbl 33100 `"Thailand"', add
label define mgctry1_lbl 33110 `"Vietnam"', add
label define mgctry1_lbl 34000 `"Western Asia"', add
label define mgctry1_lbl 34010 `"Armenia"', add
label define mgctry1_lbl 34020 `"Azerbaijan"', add
label define mgctry1_lbl 34030 `"Bahrain"', add
label define mgctry1_lbl 34040 `"Cyprus"', add
label define mgctry1_lbl 34050 `"Georgia"', add
label define mgctry1_lbl 34060 `"Iraq"', add
label define mgctry1_lbl 34070 `"Israel"', add
label define mgctry1_lbl 34080 `"Jordan"', add
label define mgctry1_lbl 34090 `"Kuwait"', add
label define mgctry1_lbl 34100 `"Lebanon"', add
label define mgctry1_lbl 34110 `"Palestine"', add
label define mgctry1_lbl 34120 `"Oman"', add
label define mgctry1_lbl 34130 `"Qatar"', add
label define mgctry1_lbl 34140 `"Saudi Arabia"', add
label define mgctry1_lbl 34150 `"Syria"', add
label define mgctry1_lbl 34160 `"Turkey"', add
label define mgctry1_lbl 34170 `"United Arab Emirates"', add
label define mgctry1_lbl 34180 `"Yemen"', add
label define mgctry1_lbl 34190 `"Middle East, not specified"', add
label define mgctry1_lbl 34191 `"Arabia"', add
label define mgctry1_lbl 34199 `"Gulf countries"', add
label define mgctry1_lbl 39999 `"Asia, n.s."', add
label define mgctry1_lbl 40000 `"Europe"', add
label define mgctry1_lbl 41000 `"Eastern Europe"', add
label define mgctry1_lbl 41010 `"Belarus"', add
label define mgctry1_lbl 41020 `"Bulgaria"', add
label define mgctry1_lbl 41021 `"Albania/Bulgaria/Romania"', add
label define mgctry1_lbl 41030 `"Czech Republic"', add
label define mgctry1_lbl 41031 `"Czechoslovakia/Yugoslavia"', add
label define mgctry1_lbl 41040 `"Hungary"', add
label define mgctry1_lbl 41050 `"Poland"', add
label define mgctry1_lbl 41060 `"Moldova"', add
label define mgctry1_lbl 41070 `"Romania"', add
label define mgctry1_lbl 41080 `"Russia/USSR"', add
label define mgctry1_lbl 41090 `"Slovakia"', add
label define mgctry1_lbl 41100 `"Ukraine"', add
label define mgctry1_lbl 41999 `"41999"', add
label define mgctry1_lbl 42000 `"Northern Europe"', add
label define mgctry1_lbl 42010 `"Denmark"', add
label define mgctry1_lbl 42020 `"Estonia"', add
label define mgctry1_lbl 42030 `"Faroe Islands"', add
label define mgctry1_lbl 42040 `"Finland"', add
label define mgctry1_lbl 42050 `"Iceland"', add
label define mgctry1_lbl 42060 `"Ireland"', add
label define mgctry1_lbl 42070 `"Latvia"', add
label define mgctry1_lbl 42080 `"Lithuania"', add
label define mgctry1_lbl 42090 `"Norway"', add
label define mgctry1_lbl 42110 `"Sweden"', add
label define mgctry1_lbl 42120 `"United Kingdom"', add
label define mgctry1_lbl 42199 `"Scandinavia"', add
label define mgctry1_lbl 43000 `"Southern Europe"', add
label define mgctry1_lbl 43010 `"Albania"', add
label define mgctry1_lbl 43020 `"Andorra"', add
label define mgctry1_lbl 43030 `"Bosnia"', add
label define mgctry1_lbl 43040 `"Croatia"', add
label define mgctry1_lbl 43050 `"Gibraltar"', add
label define mgctry1_lbl 43060 `"Greece"', add
label define mgctry1_lbl 43070 `"Italy"', add
label define mgctry1_lbl 43080 `"Malta"', add
label define mgctry1_lbl 43090 `"Portugal"', add
label define mgctry1_lbl 43100 `"San Marino"', add
label define mgctry1_lbl 43110 `"Slovenia"', add
label define mgctry1_lbl 43120 `"Spain"', add
label define mgctry1_lbl 43130 `"Macedonia"', add
label define mgctry1_lbl 43140 `"Yugoslavia"', add
label define mgctry1_lbl 43141 `"Montenegro"', add
label define mgctry1_lbl 43142 `"Serbia"', add
label define mgctry1_lbl 43143 `"Serbia and Montenegro"', add
label define mgctry1_lbl 43999 `"Southern Europe, n.s."', add
label define mgctry1_lbl 44000 `"Western Europe"', add
label define mgctry1_lbl 44010 `"Austria"', add
label define mgctry1_lbl 44020 `"Belgium"', add
label define mgctry1_lbl 44021 `"Belgium/Luxemburg"', add
label define mgctry1_lbl 44022 `"Benelux (Belgium/Netherlands/Luxemburg)"', add
label define mgctry1_lbl 44030 `"France"', add
label define mgctry1_lbl 44040 `"Germany"', add
label define mgctry1_lbl 44050 `"Liechtenstein"', add
label define mgctry1_lbl 44060 `"Luxembourg"', add
label define mgctry1_lbl 44070 `"Monaco"', add
label define mgctry1_lbl 44080 `"Netherlands"', add
label define mgctry1_lbl 44090 `"Switzerland"', add
label define mgctry1_lbl 49999 `"Europe, n.s."', add
label define mgctry1_lbl 50000 `"Oceania"', add
label define mgctry1_lbl 51000 `"Australia and New Zealand"', add
label define mgctry1_lbl 51010 `"Australia"', add
label define mgctry1_lbl 51020 `"New Zealand"', add
label define mgctry1_lbl 51021 `"New Zealand/New Guinea"', add
label define mgctry1_lbl 51030 `"Norfolk Islands"', add
label define mgctry1_lbl 51999 `"Australia and New Zealand, n.s."', add
label define mgctry1_lbl 52000 `"Melanesia"', add
label define mgctry1_lbl 52010 `"Fiji"', add
label define mgctry1_lbl 52020 `"New Caledonia"', add
label define mgctry1_lbl 52030 `"Papua New Guinea"', add
label define mgctry1_lbl 52040 `"Solomon Islands"', add
label define mgctry1_lbl 52050 `"Vanuatu (New Hebrides)"', add
label define mgctry1_lbl 53000 `"Micronesia"', add
label define mgctry1_lbl 53010 `"Kiribati"', add
label define mgctry1_lbl 53020 `"Marshall Islands"', add
label define mgctry1_lbl 53030 `"Nauru"', add
label define mgctry1_lbl 53040 `"Northern Mariana Isls."', add
label define mgctry1_lbl 53050 `"Palau"', add
label define mgctry1_lbl 53999 `"Micronesia, n.e.c."', add
label define mgctry1_lbl 54000 `"Polynesia"', add
label define mgctry1_lbl 54010 `"Cook Islands"', add
label define mgctry1_lbl 54020 `"French Polynesia"', add
label define mgctry1_lbl 54030 `"Niue"', add
label define mgctry1_lbl 54040 `"Pitcairn Island"', add
label define mgctry1_lbl 54050 `"Samoa"', add
label define mgctry1_lbl 54060 `"Tokelau"', add
label define mgctry1_lbl 54070 `"Tonga"', add
label define mgctry1_lbl 54080 `"Tuvalu"', add
label define mgctry1_lbl 54090 `"Wallis and Futuna Isls."', add
label define mgctry1_lbl 59999 `"Oceania, n.s."', add
label define mgctry1_lbl 60000 `"Other"', add
label define mgctry1_lbl 60010 `"Europe, Australia, New Zealand"', add
label define mgctry1_lbl 60020 `"Asia and Oceania, n.s."', add
label define mgctry1_lbl 90000 `"Non-migrants (International)"', add
label define mgctry1_lbl 99998 `"Response suppressed"', add
label define mgctry1_lbl 99999 `"Unknown"', add
label values mgctry1 mgctry1_lbl

label define migpa_lbl 0000 `"Live in same district of birth"'
label define migpa_lbl 0101 `"Bocas del Toro"', add
label define migpa_lbl 0102 `"Changuinola"', add
label define migpa_lbl 0103 `"Chiriqui Grande"', add
label define migpa_lbl 0104 `"Bastimentos"', add
label define migpa_lbl 0201 `"Aguadulce"', add
label define migpa_lbl 0202 `"Anton"', add
label define migpa_lbl 0203 `"La Pintada"', add
label define migpa_lbl 0204 `"Nata"', add
label define migpa_lbl 0205 `"Ola"', add
label define migpa_lbl 0206 `"Penonome"', add
label define migpa_lbl 0299 `"Unknown district in Coclé"', add
label define migpa_lbl 0301 `"Colon"', add
label define migpa_lbl 0302 `"Chagres"', add
label define migpa_lbl 0303 `"Donoso"', add
label define migpa_lbl 0304 `"Portobelo"', add
label define migpa_lbl 0305 `"Santa Isabel"', add
label define migpa_lbl 0399 `"Unknown district in Colón"', add
label define migpa_lbl 0401 `"Alanje"', add
label define migpa_lbl 0402 `"Baru"', add
label define migpa_lbl 0403 `"Boqueron"', add
label define migpa_lbl 0404 `"Boquete"', add
label define migpa_lbl 0405 `"Bugaba"', add
label define migpa_lbl 0406 `"David"', add
label define migpa_lbl 0407 `"Dolega"', add
label define migpa_lbl 0408 `"Gualaca"', add
label define migpa_lbl 0409 `"Remedios"', add
label define migpa_lbl 0410 `"Renacimiento"', add
label define migpa_lbl 0411 `"San Felix"', add
label define migpa_lbl 0412 `"San Lorenzo"', add
label define migpa_lbl 0413 `"Tole"', add
label define migpa_lbl 0499 `"Unknown district in Chiriqui"', add
label define migpa_lbl 0501 `"Chepigana"', add
label define migpa_lbl 0502 `"Pinogana"', add
label define migpa_lbl 0599 `"Unknown district in Darién"', add
label define migpa_lbl 0601 `"Chitre"', add
label define migpa_lbl 0602 `"Las Minas"', add
label define migpa_lbl 0603 `"Los Pozos"', add
label define migpa_lbl 0604 `"Ocu"', add
label define migpa_lbl 0605 `"Parita"', add
label define migpa_lbl 0606 `"Pese"', add
label define migpa_lbl 0607 `"Santa Maria"', add
label define migpa_lbl 0699 `"Unknown district in Herrera"', add
label define migpa_lbl 0701 `"Guarare"', add
label define migpa_lbl 0702 `"Las Tablas"', add
label define migpa_lbl 0703 `"Los Santos"', add
label define migpa_lbl 0704 `"Macaracas"', add
label define migpa_lbl 0705 `"Pedasi"', add
label define migpa_lbl 0706 `"Pocri"', add
label define migpa_lbl 0707 `"Tonosi"', add
label define migpa_lbl 0799 `"Unknown district in Los Santos"', add
label define migpa_lbl 0801 `"Arraijan"', add
label define migpa_lbl 0802 `"Balboa"', add
label define migpa_lbl 0803 `"Capira"', add
label define migpa_lbl 0804 `"Chame"', add
label define migpa_lbl 0805 `"Chepo"', add
label define migpa_lbl 0806 `"Chiman"', add
label define migpa_lbl 0807 `"La Chorrera"', add
label define migpa_lbl 0808 `"Panama"', add
label define migpa_lbl 0809 `"San Carlos"', add
label define migpa_lbl 0810 `"San Miguelito"', add
label define migpa_lbl 0811 `"Taboga"', add
label define migpa_lbl 0899 `"Unknown district in Panamá province"', add
label define migpa_lbl 0901 `"Atalaya"', add
label define migpa_lbl 0902 `"Calobre"', add
label define migpa_lbl 0903 `"Cañazas"', add
label define migpa_lbl 0904 `"La Mesa"', add
label define migpa_lbl 0905 `"Las Palmas"', add
label define migpa_lbl 0906 `"Montijo"', add
label define migpa_lbl 0907 `"Rio de Jesus"', add
label define migpa_lbl 0908 `"San Francisco"', add
label define migpa_lbl 0909 `"Santa Fe"', add
label define migpa_lbl 0910 `"Santiago"', add
label define migpa_lbl 0911 `"Sona"', add
label define migpa_lbl 0912 `"Mariato"', add
label define migpa_lbl 0999 `"Unknown district in Veraguas"', add
label define migpa_lbl 1001 `"Comarca Kuna Yala"', add
label define migpa_lbl 1101 `"Cemaco and Sambu"', add
label define migpa_lbl 1201 `"Besiko"', add
label define migpa_lbl 1202 `"Mirono"', add
label define migpa_lbl 1203 `"Mina"', add
label define migpa_lbl 1204 `"Nole Duima"', add
label define migpa_lbl 1205 `"Ñurum"', add
label define migpa_lbl 1206 `"Kankintu"', add
label define migpa_lbl 1207 `"Kusapin"', add
label define migpa_lbl 9000 `"Foreign country"', add
label define migpa_lbl 9100 `"Permanent resident of foreign country"', add
label define migpa_lbl 9998 `"Unknown"', add
label define migpa_lbl 9999 `"NIU (not in universe)"', add
label values migpa migpa_lbl

label define disable_lbl 0 `"NIU (not in universe)"'
label define disable_lbl 1 `"Yes, disabled"', add
label define disable_lbl 2 `"No, not disabled"', add
label define disable_lbl 9 `"Unknown"', add
label values disable disable_lbl

label define disemp_lbl 1 `"Disabled"'
label define disemp_lbl 2 `"Not disabled"', add
label define disemp_lbl 8 `"Unknown"', add
label define disemp_lbl 9 `"NIU (not in universe)"', add
label values disemp disemp_lbl

label define disblnd_lbl 0 `"NIU (not in universe)"'
label define disblnd_lbl 1 `"Yes"', add
label define disblnd_lbl 2 `"No"', add
label define disblnd_lbl 9 `"Unknown"', add
label values disblnd disblnd_lbl

label define disdeaf_lbl 0 `"NIU (not in universe)"'
label define disdeaf_lbl 1 `"Yes"', add
label define disdeaf_lbl 2 `"No"', add
label define disdeaf_lbl 9 `"Unknown"', add
label values disdeaf disdeaf_lbl

label define dismute_lbl 0 `"NIU (not in universe)"'
label define dismute_lbl 1 `"Yes"', add
label define dismute_lbl 2 `"No"', add
label define dismute_lbl 9 `"Unknown"', add
label values dismute dismute_lbl

label define disuppr_lbl 0 `"NIU (not in universe)"'
label define disuppr_lbl 1 `"Yes"', add
label define disuppr_lbl 2 `"No"', add
label define disuppr_lbl 9 `"Unknown"', add
label values disuppr disuppr_lbl

label define dismntl_lbl 0 `"NIU (not in universe)"'
label define dismntl_lbl 1 `"Yes"', add
label define dismntl_lbl 2 `"No"', add
label define dismntl_lbl 9 `"Unknown"', add
label values dismntl dismntl_lbl

label define dispsyc_lbl 0 `"NIU (not in universe)"'
label define dispsyc_lbl 1 `"Yes"', add
label define dispsyc_lbl 2 `"No"', add
label define dispsyc_lbl 9 `"Unknown"', add
label values dispsyc dispsyc_lbl

label define pa10a_pernum_lbl 00 `"Household record"'
label define pa10a_pernum_lbl 01 `"1"', add
label define pa10a_pernum_lbl 02 `"2"', add
label define pa10a_pernum_lbl 03 `"3"', add
label define pa10a_pernum_lbl 04 `"4"', add
label define pa10a_pernum_lbl 05 `"5"', add
label define pa10a_pernum_lbl 06 `"6"', add
label define pa10a_pernum_lbl 07 `"7"', add
label define pa10a_pernum_lbl 08 `"8"', add
label define pa10a_pernum_lbl 09 `"9"', add
label define pa10a_pernum_lbl 10 `"10"', add
label define pa10a_pernum_lbl 11 `"11"', add
label define pa10a_pernum_lbl 12 `"12"', add
label define pa10a_pernum_lbl 13 `"13"', add
label define pa10a_pernum_lbl 14 `"14"', add
label define pa10a_pernum_lbl 15 `"15"', add
label define pa10a_pernum_lbl 16 `"16"', add
label define pa10a_pernum_lbl 17 `"17"', add
label define pa10a_pernum_lbl 18 `"18"', add
label define pa10a_pernum_lbl 19 `"19"', add
label define pa10a_pernum_lbl 20 `"20"', add
label define pa10a_pernum_lbl 21 `"21"', add
label define pa10a_pernum_lbl 22 `"22"', add
label define pa10a_pernum_lbl 23 `"23"', add
label define pa10a_pernum_lbl 24 `"24"', add
label define pa10a_pernum_lbl 25 `"25"', add
label define pa10a_pernum_lbl 26 `"26"', add
label define pa10a_pernum_lbl 27 `"27"', add
label define pa10a_pernum_lbl 28 `"28"', add
label define pa10a_pernum_lbl 29 `"29"', add
label values pa10a_pernum pa10a_pernum_lbl

label define pa10a_relate_lbl 01 `"Head"'
label define pa10a_relate_lbl 02 `"Spouse or partner"', add
label define pa10a_relate_lbl 03 `"Child"', add
label define pa10a_relate_lbl 04 `"Son- or daughter-in-law"', add
label define pa10a_relate_lbl 05 `"Grandchild or great-grandchild"', add
label define pa10a_relate_lbl 06 `"Parent"', add
label define pa10a_relate_lbl 07 `"Father- or mother-in-law"', add
label define pa10a_relate_lbl 08 `"Other relative"', add
label define pa10a_relate_lbl 09 `"Domestic employee"', add
label define pa10a_relate_lbl 10 `"Not related"', add
label values pa10a_relate pa10a_relate_lbl

label define pa10a_relate2_lbl 11 `"Sibling"'
label define pa10a_relate2_lbl 12 `"Grandparent"', add
label define pa10a_relate2_lbl 13 `"Uncle or aunt"', add
label define pa10a_relate2_lbl 14 `"Niece or nephew"', add
label define pa10a_relate2_lbl 15 `"Cousin"', add
label define pa10a_relate2_lbl 16 `"Brother- or sister-in-law"', add
label define pa10a_relate2_lbl 17 `"Godchild of head"', add
label define pa10a_relate2_lbl 18 `"Godparent of head or child of head"', add
label define pa10a_relate2_lbl 21 `"Great grandparent"', add
label define pa10a_relate2_lbl 30 `"Other relative"', add
label define pa10a_relate2_lbl 98 `"Unknown"', add
label define pa10a_relate2_lbl 99 `"NIU (not in universe)"', add
label values pa10a_relate2 pa10a_relate2_lbl

label define pa10a_nucleus_lbl 0 `"Without nucleus"'
label define pa10a_nucleus_lbl 1 `"Nucleus 1"', add
label define pa10a_nucleus_lbl 2 `"Nucleus 2"', add
label define pa10a_nucleus_lbl 3 `"Nucleus 3"', add
label define pa10a_nucleus_lbl 4 `"Nucleus 4"', add
label define pa10a_nucleus_lbl 5 `"Nucleus 5"', add
label define pa10a_nucleus_lbl 6 `"Nucleus 6"', add
label define pa10a_nucleus_lbl 7 `"Nucleus 7"', add
label define pa10a_nucleus_lbl 8 `"Nucleus 8"', add
label values pa10a_nucleus pa10a_nucleus_lbl

label define pa10a_sex_lbl 1 `"Male"'
label define pa10a_sex_lbl 2 `"Female"', add
label values pa10a_sex pa10a_sex_lbl

label define pa10a_age_lbl 000 `"Less than 1 year old"'
label define pa10a_age_lbl 001 `"1"', add
label define pa10a_age_lbl 002 `"2"', add
label define pa10a_age_lbl 003 `"3"', add
label define pa10a_age_lbl 004 `"4"', add
label define pa10a_age_lbl 005 `"5"', add
label define pa10a_age_lbl 006 `"6"', add
label define pa10a_age_lbl 007 `"7"', add
label define pa10a_age_lbl 008 `"8"', add
label define pa10a_age_lbl 009 `"9"', add
label define pa10a_age_lbl 010 `"10"', add
label define pa10a_age_lbl 011 `"11"', add
label define pa10a_age_lbl 012 `"12"', add
label define pa10a_age_lbl 013 `"13"', add
label define pa10a_age_lbl 014 `"14"', add
label define pa10a_age_lbl 015 `"15"', add
label define pa10a_age_lbl 016 `"16"', add
label define pa10a_age_lbl 017 `"17"', add
label define pa10a_age_lbl 018 `"18"', add
label define pa10a_age_lbl 019 `"19"', add
label define pa10a_age_lbl 020 `"20"', add
label define pa10a_age_lbl 021 `"21"', add
label define pa10a_age_lbl 022 `"22"', add
label define pa10a_age_lbl 023 `"23"', add
label define pa10a_age_lbl 024 `"24"', add
label define pa10a_age_lbl 025 `"25"', add
label define pa10a_age_lbl 026 `"26"', add
label define pa10a_age_lbl 027 `"27"', add
label define pa10a_age_lbl 028 `"28"', add
label define pa10a_age_lbl 029 `"29"', add
label define pa10a_age_lbl 030 `"30"', add
label define pa10a_age_lbl 031 `"31"', add
label define pa10a_age_lbl 032 `"32"', add
label define pa10a_age_lbl 033 `"33"', add
label define pa10a_age_lbl 034 `"34"', add
label define pa10a_age_lbl 035 `"35"', add
label define pa10a_age_lbl 036 `"36"', add
label define pa10a_age_lbl 037 `"37"', add
label define pa10a_age_lbl 038 `"38"', add
label define pa10a_age_lbl 039 `"39"', add
label define pa10a_age_lbl 040 `"40"', add
label define pa10a_age_lbl 041 `"41"', add
label define pa10a_age_lbl 042 `"42"', add
label define pa10a_age_lbl 043 `"43"', add
label define pa10a_age_lbl 044 `"44"', add
label define pa10a_age_lbl 045 `"45"', add
label define pa10a_age_lbl 046 `"46"', add
label define pa10a_age_lbl 047 `"47"', add
label define pa10a_age_lbl 048 `"48"', add
label define pa10a_age_lbl 049 `"49"', add
label define pa10a_age_lbl 050 `"50"', add
label define pa10a_age_lbl 051 `"51"', add
label define pa10a_age_lbl 052 `"52"', add
label define pa10a_age_lbl 053 `"53"', add
label define pa10a_age_lbl 054 `"54"', add
label define pa10a_age_lbl 055 `"55"', add
label define pa10a_age_lbl 056 `"56"', add
label define pa10a_age_lbl 057 `"57"', add
label define pa10a_age_lbl 058 `"58"', add
label define pa10a_age_lbl 059 `"59"', add
label define pa10a_age_lbl 060 `"60"', add
label define pa10a_age_lbl 061 `"61"', add
label define pa10a_age_lbl 062 `"62"', add
label define pa10a_age_lbl 063 `"63"', add
label define pa10a_age_lbl 064 `"64"', add
label define pa10a_age_lbl 065 `"65"', add
label define pa10a_age_lbl 066 `"66"', add
label define pa10a_age_lbl 067 `"67"', add
label define pa10a_age_lbl 068 `"68"', add
label define pa10a_age_lbl 069 `"69"', add
label define pa10a_age_lbl 070 `"70"', add
label define pa10a_age_lbl 071 `"71"', add
label define pa10a_age_lbl 072 `"72"', add
label define pa10a_age_lbl 073 `"73"', add
label define pa10a_age_lbl 074 `"74"', add
label define pa10a_age_lbl 075 `"75"', add
label define pa10a_age_lbl 076 `"76"', add
label define pa10a_age_lbl 077 `"77"', add
label define pa10a_age_lbl 078 `"78"', add
label define pa10a_age_lbl 079 `"79"', add
label define pa10a_age_lbl 080 `"80"', add
label define pa10a_age_lbl 081 `"81"', add
label define pa10a_age_lbl 082 `"82"', add
label define pa10a_age_lbl 083 `"83"', add
label define pa10a_age_lbl 084 `"84"', add
label define pa10a_age_lbl 085 `"85"', add
label define pa10a_age_lbl 086 `"86"', add
label define pa10a_age_lbl 087 `"87"', add
label define pa10a_age_lbl 088 `"88"', add
label define pa10a_age_lbl 089 `"89"', add
label define pa10a_age_lbl 090 `"90"', add
label define pa10a_age_lbl 091 `"91"', add
label define pa10a_age_lbl 092 `"92"', add
label define pa10a_age_lbl 093 `"93"', add
label define pa10a_age_lbl 094 `"94"', add
label define pa10a_age_lbl 095 `"95"', add
label define pa10a_age_lbl 096 `"96"', add
label define pa10a_age_lbl 097 `"97"', add
label define pa10a_age_lbl 098 `"98"', add
label define pa10a_age_lbl 099 `"99"', add
label define pa10a_age_lbl 100 `"100+"', add
label define pa10a_age_lbl 998 `"Unknown"', add
label values pa10a_age pa10a_age_lbl

label define pa10a_socsec_lbl 1 `"Direct insured"'
label define pa10a_socsec_lbl 2 `"Beneficiary"', add
label define pa10a_socsec_lbl 3 `"Retired due to old age"', add
label define pa10a_socsec_lbl 4 `"Pensioner due to accident or illness"', add
label define pa10a_socsec_lbl 5 `"Retirement or pension from another country"', add
label define pa10a_socsec_lbl 6 `"Does not have"', add
label define pa10a_socsec_lbl 9 `"Unknown"', add
label values pa10a_socsec pa10a_socsec_lbl

label define pa10a_marst_lbl 1 `"In a consensual union"'
label define pa10a_marst_lbl 2 `"Separated from a marriage"', add
label define pa10a_marst_lbl 3 `"Separated from a consensual union"', add
label define pa10a_marst_lbl 4 `"Married"', add
label define pa10a_marst_lbl 5 `"Divorced"', add
label define pa10a_marst_lbl 6 `"Widowed"', add
label define pa10a_marst_lbl 7 `"Single"', add
label define pa10a_marst_lbl 8 `"Under 15 years old"', add
label values pa10a_marst pa10a_marst_lbl

label define pa10a_diffhear_lbl 1 `"Yes"'
label define pa10a_diffhear_lbl 2 `"No"', add
label define pa10a_diffhear_lbl 9 `"Unknown"', add
label values pa10a_diffhear pa10a_diffhear_lbl

label define pa10a_diffsee_lbl 1 `"Yes"'
label define pa10a_diffsee_lbl 2 `"No"', add
label define pa10a_diffsee_lbl 9 `"Unknown"', add
label values pa10a_diffsee pa10a_diffsee_lbl

label define pa10a_diffwalk_lbl 1 `"Yes"'
label define pa10a_diffwalk_lbl 2 `"No"', add
label define pa10a_diffwalk_lbl 9 `"Unknown"', add
label values pa10a_diffwalk pa10a_diffwalk_lbl

label define pa10a_diffarms_lbl 1 `"Yes"'
label define pa10a_diffarms_lbl 2 `"No"', add
label define pa10a_diffarms_lbl 9 `"Unknown"', add
label values pa10a_diffarms pa10a_diffarms_lbl

label define pa10a_diffspeak_lbl 1 `"Yes"'
label define pa10a_diffspeak_lbl 2 `"No"', add
label define pa10a_diffspeak_lbl 9 `"Unknown"', add
label values pa10a_diffspeak pa10a_diffspeak_lbl

label define pa10a_difflearn_lbl 1 `"Yes"'
label define pa10a_difflearn_lbl 2 `"No"', add
label define pa10a_difflearn_lbl 9 `"Unknown"', add
label values pa10a_difflearn pa10a_difflearn_lbl

label define pa10a_disab_lbl 1 `"Blindness"'
label define pa10a_disab_lbl 2 `"Hard of hearing"', add
label define pa10a_disab_lbl 3 `"Mental retardation"', add
label define pa10a_disab_lbl 4 `"Cerebral palsy"', add
label define pa10a_disab_lbl 5 `"Physical deficiency"', add
label define pa10a_disab_lbl 6 `"Mental problems"', add
label define pa10a_disab_lbl 7 `"Other disability"', add
label define pa10a_disab_lbl 8 `"None"', add
label define pa10a_disab_lbl 9 `"Unknown"', add
label values pa10a_disab pa10a_disab_lbl

label define pa10a_indig_lbl 01 `"Kuna"'
label define pa10a_indig_lbl 02 `"Ngäbe"', add
label define pa10a_indig_lbl 03 `"Buglé"', add
label define pa10a_indig_lbl 04 `"Teribe/Naso"', add
label define pa10a_indig_lbl 05 `"Bokota"', add
label define pa10a_indig_lbl 06 `"Emberá"', add
label define pa10a_indig_lbl 07 `"Wounaan"', add
label define pa10a_indig_lbl 08 `"Bri Bri"', add
label define pa10a_indig_lbl 09 `"Other indigenous group"', add
label define pa10a_indig_lbl 10 `"Not part of an indigenous group"', add
label define pa10a_indig_lbl 99 `"Unknown"', add
label values pa10a_indig pa10a_indig_lbl

label define pa10a_black_lbl 1 `"Colonial black"'
label define pa10a_black_lbl 2 `"Antillean black"', add
label define pa10a_black_lbl 3 `"Black"', add
label define pa10a_black_lbl 4 `"Other black or African-descent group"', add
label define pa10a_black_lbl 5 `"Not of African-descent"', add
label define pa10a_black_lbl 9 `"Unknown"', add
label values pa10a_black pa10a_black_lbl

label define pa10a_black_lbl 1 `"Colonial black"'
label define pa10a_black_lbl 2 `"Antillean black"', add
label define pa10a_black_lbl 3 `"Black"', add
label define pa10a_black_lbl 4 `"Other black or African-descent group"', add
label define pa10a_black_lbl 5 `"Not of African-descent"', add
label define pa10a_black_lbl 9 `"Unknown"', add
label values pa10a_black pa10a_black_lbl

label define pa10a_bpl_lbl 00001 `"In the same place"'
label define pa10a_bpl_lbl 00103 `"Canada"', add
label define pa10a_bpl_lbl 00105 `"United States of America"', add
label define pa10a_bpl_lbl 00107 `"Mexico"', add
label define pa10a_bpl_lbl 00211 `"Guatemala"', add
label define pa10a_bpl_lbl 00213 `"El Salvador"', add
label define pa10a_bpl_lbl 00214 `"Honduras"', add
label define pa10a_bpl_lbl 00217 `"Nicaragua"', add
label define pa10a_bpl_lbl 00218 `"Costa Rica"', add
label define pa10a_bpl_lbl 00231 `"Cuba"', add
label define pa10a_bpl_lbl 00232 `"Dominican Republic"', add
label define pa10a_bpl_lbl 00233 `"Haiti"', add
label define pa10a_bpl_lbl 00244 `"Jamaica (Cayman Islands, Turks and Caicos)"', add
label define pa10a_bpl_lbl 00275 `"Puerto Rico"', add
label define pa10a_bpl_lbl 00299 `"Other Central America and Caribbean"', add
label define pa10a_bpl_lbl 00311 `"Colombia"', add
label define pa10a_bpl_lbl 00313 `"Ecuador"', add
label define pa10a_bpl_lbl 00314 `"Venezuela"', add
label define pa10a_bpl_lbl 00321 `"Brazil"', add
label define pa10a_bpl_lbl 00331 `"Uruguay"', add
label define pa10a_bpl_lbl 00333 `"Argentina"', add
label define pa10a_bpl_lbl 00341 `"Bolivia"', add
label define pa10a_bpl_lbl 00351 `"Peru"', add
label define pa10a_bpl_lbl 00353 `"Chile"', add
label define pa10a_bpl_lbl 00402 `"Germany"', add
label define pa10a_bpl_lbl 00417 `"Spain"', add
label define pa10a_bpl_lbl 00422 `"France"', add
label define pa10a_bpl_lbl 00432 `"Italy"', add
label define pa10a_bpl_lbl 00434 `"Netherlands"', add
label define pa10a_bpl_lbl 00443 `"United Kingdom"', add
label define pa10a_bpl_lbl 00447 `"Sweden"', add
label define pa10a_bpl_lbl 00466 `"Ukraine"', add
label define pa10a_bpl_lbl 00499 `"Other Europe"', add
label define pa10a_bpl_lbl 00517 `"South Korea"', add
label define pa10a_bpl_lbl 00518 `"China (Mainland)"', add
label define pa10a_bpl_lbl 00521 `"China-Taiwan"', add
label define pa10a_bpl_lbl 00527 `"Philippines"', add
label define pa10a_bpl_lbl 00528 `"Hong Kong"', add
label define pa10a_bpl_lbl 00531 `"India"', add
label define pa10a_bpl_lbl 00538 `"Israel"', add
label define pa10a_bpl_lbl 00548 `"Lebanon"', add
label define pa10a_bpl_lbl 00599 `"Other Asia"', add
label define pa10a_bpl_lbl 00600 `"Russia"', add
label define pa10a_bpl_lbl 00799 `"African countries"', add
label define pa10a_bpl_lbl 00900 `"Other countries"', add
label define pa10a_bpl_lbl 01010 `"Bocas del Toro"', add
label define pa10a_bpl_lbl 01020 `"Changuinola"', add
label define pa10a_bpl_lbl 01030 `"Chiriqui Grande"', add
label define pa10a_bpl_lbl 02010 `"Aguadulce"', add
label define pa10a_bpl_lbl 02020 `"Anton"', add
label define pa10a_bpl_lbl 02030 `"La Pintada"', add
label define pa10a_bpl_lbl 02040 `"Nata"', add
label define pa10a_bpl_lbl 02050 `"Ola"', add
label define pa10a_bpl_lbl 02060 `"Penonome"', add
label define pa10a_bpl_lbl 03010 `"Colon"', add
label define pa10a_bpl_lbl 03020 `"Chagres"', add
label define pa10a_bpl_lbl 03030 `"Donoso"', add
label define pa10a_bpl_lbl 03040 `"Portobelo"', add
label define pa10a_bpl_lbl 03050 `"Santa Isabel"', add
label define pa10a_bpl_lbl 04010 `"Alanje"', add
label define pa10a_bpl_lbl 04020 `"Baru"', add
label define pa10a_bpl_lbl 04030 `"Boqueron"', add
label define pa10a_bpl_lbl 04040 `"Boquete"', add
label define pa10a_bpl_lbl 04050 `"Bugaba"', add
label define pa10a_bpl_lbl 04060 `"David"', add
label define pa10a_bpl_lbl 04070 `"Dolega"', add
label define pa10a_bpl_lbl 04080 `"Gualaca"', add
label define pa10a_bpl_lbl 04090 `"Remedios"', add
label define pa10a_bpl_lbl 04100 `"Renacimiento"', add
label define pa10a_bpl_lbl 04110 `"San Felix"', add
label define pa10a_bpl_lbl 04120 `"San Lorenzo"', add
label define pa10a_bpl_lbl 04130 `"Tole"', add
label define pa10a_bpl_lbl 05010 `"Chepigana"', add
label define pa10a_bpl_lbl 05020 `"Pinogana"', add
label define pa10a_bpl_lbl 06010 `"Chitre"', add
label define pa10a_bpl_lbl 06020 `"Las Minas"', add
label define pa10a_bpl_lbl 06030 `"Los Pozos"', add
label define pa10a_bpl_lbl 06040 `"Ocu"', add
label define pa10a_bpl_lbl 06050 `"Parita"', add
label define pa10a_bpl_lbl 06060 `"Pese"', add
label define pa10a_bpl_lbl 06070 `"Santa Maria"', add
label define pa10a_bpl_lbl 07010 `"Guarare"', add
label define pa10a_bpl_lbl 07020 `"Las Tablas"', add
label define pa10a_bpl_lbl 07030 `"Los Santos"', add
label define pa10a_bpl_lbl 07040 `"Macaracas"', add
label define pa10a_bpl_lbl 07050 `"Pedasi"', add
label define pa10a_bpl_lbl 07060 `"Pocri"', add
label define pa10a_bpl_lbl 07070 `"Tonosi"', add
label define pa10a_bpl_lbl 08010 `"Arraijan"', add
label define pa10a_bpl_lbl 08020 `"Balboa"', add
label define pa10a_bpl_lbl 08030 `"Capira"', add
label define pa10a_bpl_lbl 08040 `"Chame"', add
label define pa10a_bpl_lbl 08050 `"Chepo"', add
label define pa10a_bpl_lbl 08060 `"Chiman"', add
label define pa10a_bpl_lbl 08070 `"La Chorrera"', add
label define pa10a_bpl_lbl 08080 `"Panama"', add
label define pa10a_bpl_lbl 08090 `"San Carlos"', add
label define pa10a_bpl_lbl 08100 `"San Miguelito"', add
label define pa10a_bpl_lbl 08110 `"Taboga"', add
label define pa10a_bpl_lbl 09010 `"Atalaya"', add
label define pa10a_bpl_lbl 09020 `"Calobre"', add
label define pa10a_bpl_lbl 09030 `"Cañazas"', add
label define pa10a_bpl_lbl 09040 `"La Mesa"', add
label define pa10a_bpl_lbl 09050 `"Las Palmas"', add
label define pa10a_bpl_lbl 09060 `"Montijo"', add
label define pa10a_bpl_lbl 09070 `"Rio de Jesus"', add
label define pa10a_bpl_lbl 09080 `"San Francisco"', add
label define pa10a_bpl_lbl 09090 `"Santa Fe"', add
label define pa10a_bpl_lbl 09100 `"Santiago"', add
label define pa10a_bpl_lbl 09110 `"Sona"', add
label define pa10a_bpl_lbl 09120 `"Mariato"', add
label define pa10a_bpl_lbl 10010 `"Comarca Kuna Yala"', add
label define pa10a_bpl_lbl 11010 `"Cemaco and Sambu"', add
label define pa10a_bpl_lbl 12010 `"Besiko"', add
label define pa10a_bpl_lbl 12020 `"Mirono"', add
label define pa10a_bpl_lbl 12030 `"Mina"', add
label define pa10a_bpl_lbl 12040 `"Nole Duima"', add
label define pa10a_bpl_lbl 12050 `"Ñurum"', add
label define pa10a_bpl_lbl 12060 `"Kankintu"', add
label define pa10a_bpl_lbl 12070 `"Kusapin"', add
label define pa10a_bpl_lbl 99999 `"Unknown"', add
label values pa10a_bpl pa10a_bpl_lbl

label define pa10a_arrpa_lbl 1 `"Before May, 2000"'
label define pa10a_arrpa_lbl 2 `"Between May, 2000 and April, 2005"', add
label define pa10a_arrpa_lbl 3 `"From May, 2005 to the present"', add
label define pa10a_arrpa_lbl 8 `"Unknown"', add
label define pa10a_arrpa_lbl 9 `"NIU (not in universe)"', add
label values pa10a_arrpa pa10a_arrpa_lbl

label define pa10a_prvcntry_lbl 00001 `"In the same place"'
label define pa10a_prvcntry_lbl 00103 `"Canada"', add
label define pa10a_prvcntry_lbl 00105 `"United States of America"', add
label define pa10a_prvcntry_lbl 00107 `"Mexico"', add
label define pa10a_prvcntry_lbl 00217 `"Nicaragua"', add
label define pa10a_prvcntry_lbl 00218 `"Costa Rica"', add
label define pa10a_prvcntry_lbl 00232 `"Dominican Republic"', add
label define pa10a_prvcntry_lbl 00213 `"El Salvador"', add
label define pa10a_prvcntry_lbl 00231 `"Cuba"', add
label define pa10a_prvcntry_lbl 00211 `"Guatemala"', add
label define pa10a_prvcntry_lbl 00214 `"Honduras"', add
label define pa10a_prvcntry_lbl 00244 `"Jamaica (Cayman Islands, Turks and Caicos)"', add
label define pa10a_prvcntry_lbl 00275 `"Puerto Rico"', add
label define pa10a_prvcntry_lbl 00299 `"Other Central America and Caribbean"', add
label define pa10a_prvcntry_lbl 00311 `"Colombia"', add
label define pa10a_prvcntry_lbl 00313 `"Ecuador"', add
label define pa10a_prvcntry_lbl 00314 `"Venezuela"', add
label define pa10a_prvcntry_lbl 00321 `"Brazil"', add
label define pa10a_prvcntry_lbl 00331 `"Uruguay"', add
label define pa10a_prvcntry_lbl 00333 `"Argentina"', add
label define pa10a_prvcntry_lbl 00341 `"Bolivia"', add
label define pa10a_prvcntry_lbl 00351 `"Peru"', add
label define pa10a_prvcntry_lbl 00353 `"Chile"', add
label define pa10a_prvcntry_lbl 00402 `"Germany"', add
label define pa10a_prvcntry_lbl 00417 `"Spain"', add
label define pa10a_prvcntry_lbl 00422 `"France"', add
label define pa10a_prvcntry_lbl 00432 `"Italy"', add
label define pa10a_prvcntry_lbl 00443 `"United Kingdom"', add
label define pa10a_prvcntry_lbl 00499 `"Other European countries"', add
label define pa10a_prvcntry_lbl 00518 `"China (Mainland)"', add
label define pa10a_prvcntry_lbl 00521 `"China-Taiwan"', add
label define pa10a_prvcntry_lbl 00531 `"India"', add
label define pa10a_prvcntry_lbl 00538 `"Israel"', add
label define pa10a_prvcntry_lbl 00548 `"Lebanon"', add
label define pa10a_prvcntry_lbl 00599 `"Other Asia"', add
label define pa10a_prvcntry_lbl 00600 `"Russia"', add
label define pa10a_prvcntry_lbl 00900 `"Other countries"', add
label define pa10a_prvcntry_lbl 01010 `"Bocas del Toro"', add
label define pa10a_prvcntry_lbl 01020 `"Changuinola"', add
label define pa10a_prvcntry_lbl 01030 `"Chiriqui Grande"', add
label define pa10a_prvcntry_lbl 02010 `"Aguadulce"', add
label define pa10a_prvcntry_lbl 02020 `"Anton"', add
label define pa10a_prvcntry_lbl 02030 `"La Pintada"', add
label define pa10a_prvcntry_lbl 02040 `"Nata"', add
label define pa10a_prvcntry_lbl 02050 `"Ola"', add
label define pa10a_prvcntry_lbl 02060 `"Penonome"', add
label define pa10a_prvcntry_lbl 03010 `"Colon"', add
label define pa10a_prvcntry_lbl 03020 `"Chagres"', add
label define pa10a_prvcntry_lbl 03030 `"Donoso"', add
label define pa10a_prvcntry_lbl 03040 `"Portobelo"', add
label define pa10a_prvcntry_lbl 03050 `"Santa Isabel"', add
label define pa10a_prvcntry_lbl 04010 `"Alanje"', add
label define pa10a_prvcntry_lbl 04020 `"Baru"', add
label define pa10a_prvcntry_lbl 04030 `"Boqueron"', add
label define pa10a_prvcntry_lbl 04040 `"Boquete"', add
label define pa10a_prvcntry_lbl 04050 `"Bugaba"', add
label define pa10a_prvcntry_lbl 04060 `"David"', add
label define pa10a_prvcntry_lbl 04070 `"Dolega"', add
label define pa10a_prvcntry_lbl 04080 `"Gualaca"', add
label define pa10a_prvcntry_lbl 04090 `"Remedios"', add
label define pa10a_prvcntry_lbl 04100 `"Renacimiento"', add
label define pa10a_prvcntry_lbl 04110 `"San Felix"', add
label define pa10a_prvcntry_lbl 04120 `"San Lorenzo"', add
label define pa10a_prvcntry_lbl 04130 `"Tole"', add
label define pa10a_prvcntry_lbl 05010 `"Chepigana"', add
label define pa10a_prvcntry_lbl 05020 `"Pinogana"', add
label define pa10a_prvcntry_lbl 06010 `"Chitre"', add
label define pa10a_prvcntry_lbl 06020 `"Las Minas"', add
label define pa10a_prvcntry_lbl 06030 `"Los Pozos"', add
label define pa10a_prvcntry_lbl 06040 `"Ocu"', add
label define pa10a_prvcntry_lbl 06050 `"Parita"', add
label define pa10a_prvcntry_lbl 06060 `"Pese"', add
label define pa10a_prvcntry_lbl 06070 `"Santa Maria"', add
label define pa10a_prvcntry_lbl 07010 `"Guarare"', add
label define pa10a_prvcntry_lbl 07020 `"Las Tablas"', add
label define pa10a_prvcntry_lbl 07030 `"Los Santos"', add
label define pa10a_prvcntry_lbl 07040 `"Macaracas"', add
label define pa10a_prvcntry_lbl 07050 `"Pedasi"', add
label define pa10a_prvcntry_lbl 07060 `"Pocri"', add
label define pa10a_prvcntry_lbl 07070 `"Tonosi"', add
label define pa10a_prvcntry_lbl 08010 `"Arraijan"', add
label define pa10a_prvcntry_lbl 08020 `"Balboa"', add
label define pa10a_prvcntry_lbl 08030 `"Capira"', add
label define pa10a_prvcntry_lbl 08040 `"Chame"', add
label define pa10a_prvcntry_lbl 08050 `"Chepo"', add
label define pa10a_prvcntry_lbl 08060 `"Chiman"', add
label define pa10a_prvcntry_lbl 08070 `"La Chorrera"', add
label define pa10a_prvcntry_lbl 08080 `"Panama"', add
label define pa10a_prvcntry_lbl 08090 `"San Carlos"', add
label define pa10a_prvcntry_lbl 08100 `"San Miguelito"', add
label define pa10a_prvcntry_lbl 08110 `"Taboga"', add
label define pa10a_prvcntry_lbl 09010 `"Atalaya"', add
label define pa10a_prvcntry_lbl 09020 `"Calobre"', add
label define pa10a_prvcntry_lbl 09030 `"Cañazas"', add
label define pa10a_prvcntry_lbl 09040 `"La Mesa"', add
label define pa10a_prvcntry_lbl 09050 `"Las Palmas"', add
label define pa10a_prvcntry_lbl 09060 `"Montijo"', add
label define pa10a_prvcntry_lbl 09070 `"Rio de Jesus"', add
label define pa10a_prvcntry_lbl 09080 `"San Francisco"', add
label define pa10a_prvcntry_lbl 09090 `"Santa Fe"', add
label define pa10a_prvcntry_lbl 09100 `"Santiago"', add
label define pa10a_prvcntry_lbl 09110 `"Sona"', add
label define pa10a_prvcntry_lbl 09120 `"Mariato"', add
label define pa10a_prvcntry_lbl 10010 `"Comarca Kuna Yala"', add
label define pa10a_prvcntry_lbl 11010 `"Cemaco and Sambu"', add
label define pa10a_prvcntry_lbl 12010 `"Besiko"', add
label define pa10a_prvcntry_lbl 12020 `"Mirono"', add
label define pa10a_prvcntry_lbl 12030 `"Mina"', add
label define pa10a_prvcntry_lbl 12040 `"Nole Duima"', add
label define pa10a_prvcntry_lbl 12050 `"Ñurum"', add
label define pa10a_prvcntry_lbl 12060 `"Kankintu"', add
label define pa10a_prvcntry_lbl 12070 `"Kusapin"', add
label define pa10a_prvcntry_lbl 99998 `"Unknown"', add
label define pa10a_prvcntry_lbl 99999 `"Permanent residence in a foreign country (not a permanent resident of Panama)"', add
label values pa10a_prvcntry pa10a_prvcntry_lbl

label define pa10a_school_lbl 1 `"Yes"'
label define pa10a_school_lbl 2 `"No"', add
label define pa10a_school_lbl 8 `"Unknown"', add
label define pa10a_school_lbl 9 `"NIU (not in universe)"', add
label values pa10a_school pa10a_school_lbl

label define pa10a_edattan_lbl 01 `"No grade passed"'
label define pa10a_edattan_lbl 02 `"Pre-school"', add
label define pa10a_edattan_lbl 03 `"Special education"', add
label define pa10a_edattan_lbl 11 `"Primary, 1 year"', add
label define pa10a_edattan_lbl 12 `"Primary, 2 years"', add
label define pa10a_edattan_lbl 13 `"Primary, 3 years"', add
label define pa10a_edattan_lbl 14 `"Primary, 4 years"', add
label define pa10a_edattan_lbl 15 `"Primary, 5 years"', add
label define pa10a_edattan_lbl 16 `"Primary, 6 years"', add
label define pa10a_edattan_lbl 19 `"Primary school, undeclared"', add
label define pa10a_edattan_lbl 21 `"Vocational school, 1 year"', add
label define pa10a_edattan_lbl 22 `"Vocational school, 2 years"', add
label define pa10a_edattan_lbl 23 `"Vocational school, 3 years"', add
label define pa10a_edattan_lbl 29 `"Vocational school, undeclared"', add
label define pa10a_edattan_lbl 31 `"Secondary school, 1 year"', add
label define pa10a_edattan_lbl 32 `"Secondary school, 2 years"', add
label define pa10a_edattan_lbl 33 `"Secondary school, 3 years"', add
label define pa10a_edattan_lbl 34 `"Secondary school, 4 years"', add
label define pa10a_edattan_lbl 35 `"Secondary school, 5 years"', add
label define pa10a_edattan_lbl 36 `"Secondary school, 6 years"', add
label define pa10a_edattan_lbl 39 `"Secondary school, undeclared"', add
label define pa10a_edattan_lbl 41 `"Non-university higher education, 1 year"', add
label define pa10a_edattan_lbl 42 `"Non-university higher education, 2 years"', add
label define pa10a_edattan_lbl 43 `"Non-university higher education, 3 years"', add
label define pa10a_edattan_lbl 49 `"Non-university higher education, undeclared"', add
label define pa10a_edattan_lbl 51 `"University, 1 year"', add
label define pa10a_edattan_lbl 52 `"University, 2 years"', add
label define pa10a_edattan_lbl 53 `"University, 3 years"', add
label define pa10a_edattan_lbl 54 `"University, 4 years"', add
label define pa10a_edattan_lbl 55 `"University, 5 years"', add
label define pa10a_edattan_lbl 56 `"University, 6 years"', add
label define pa10a_edattan_lbl 59 `"University, undeclared"', add
label define pa10a_edattan_lbl 61 `"Graduate diploma (especialidad)"', add
label define pa10a_edattan_lbl 71 `"Master's degree, 1 year"', add
label define pa10a_edattan_lbl 72 `"Master's degree, 2 years"', add
label define pa10a_edattan_lbl 79 `"Master's degree, undeclared"', add
label define pa10a_edattan_lbl 81 `"Doctorate, 1 or 2 years"', add
label define pa10a_edattan_lbl 83 `"Doctorate, 3 years"', add
label define pa10a_edattan_lbl 84 `"Doctorate, 4 years"', add
label define pa10a_edattan_lbl 89 `"Doctorate, undeclared"', add
label define pa10a_edattan_lbl 98 `"Unknown"', add
label define pa10a_edattan_lbl 99 `"NIU (not in universe)"', add
label values pa10a_edattan pa10a_edattan_lbl

label define pa10a_lit_lbl 1 `"Yes"'
label define pa10a_lit_lbl 2 `"No"', add
label define pa10a_lit_lbl 8 `"Unknown"', add
label define pa10a_lit_lbl 9 `"NIU (not in universe)"', add
label values pa10a_lit pa10a_lit_lbl

label define pa10a_degree_lbl 0 `"No degree"'
label define pa10a_degree_lbl 1 `"High school diploma"', add
label define pa10a_degree_lbl 2 `"Non-university higher education diploma"', add
label define pa10a_degree_lbl 3 `"University diploma"', add
label define pa10a_degree_lbl 4 `"Graduate diploma"', add
label define pa10a_degree_lbl 5 `"Master's degree diploma"', add
label define pa10a_degree_lbl 6 `"Doctorate diploma"', add
label define pa10a_degree_lbl 8 `"Unknown"', add
label define pa10a_degree_lbl 9 `"NIU (not in universe)"', add
label values pa10a_degree pa10a_degree_lbl

label define pa10a_worked_lbl 1 `"Yes"'
label define pa10a_worked_lbl 2 `"No"', add
label define pa10a_worked_lbl 8 `"Unknown"', add
label define pa10a_worked_lbl 9 `"NIU (not in universe)"', add
label values pa10a_worked pa10a_worked_lbl

label define pa10a_abswk_lbl 1 `"Yes"'
label define pa10a_abswk_lbl 2 `"No"', add
label define pa10a_abswk_lbl 9 `"NIU (not in universe)"', add
label values pa10a_abswk pa10a_abswk_lbl

label define pa10a_wkpay_lbl 1 `"Yes"'
label define pa10a_wkpay_lbl 2 `"No"', add
label define pa10a_wkpay_lbl 9 `"NIU (not in universe)"', add
label values pa10a_wkpay pa10a_wkpay_lbl

label define pa10a_wklookwk_lbl 1 `"Yes"'
label define pa10a_wklookwk_lbl 2 `"No"', add
label define pa10a_wklookwk_lbl 9 `"NIU (not in universe)"', add
label values pa10a_wklookwk pa10a_wklookwk_lbl

label define pa10a_wklookmo_lbl 1 `"Yes"'
label define pa10a_wklookmo_lbl 2 `"No"', add
label define pa10a_wklookmo_lbl 9 `"NIU (not in universe)"', add
label values pa10a_wklookmo pa10a_wklookmo_lbl

label define pa10a_whynot_lbl 01 `"Does jobs for fixed periods"'
label define pa10a_whynot_lbl 02 `"Already found a job"', add
label define pa10a_whynot_lbl 03 `"Previously searched and awaits the results"', add
label define pa10a_whynot_lbl 04 `"Got tired of looking for work"', add
label define pa10a_whynot_lbl 05 `"Retired due to old age"', add
label define pa10a_whynot_lbl 06 `"Pensioner (due to accident or sickness)"', add
label define pa10a_whynot_lbl 07 `"Only a student"', add
label define pa10a_whynot_lbl 08 `"Only a housewife or domestic worker"', add
label define pa10a_whynot_lbl 09 `"Permanently unable to work"', add
label define pa10a_whynot_lbl 10 `"Advanced age (70 years or older)"', add
label define pa10a_whynot_lbl 11 `"Other reasons for not looking for work"', add
label define pa10a_whynot_lbl 99 `"NIU (not in universe)"', add
label values pa10a_whynot pa10a_whynot_lbl

label define pa10a_occ_lbl 0111 `"Members of the executive and legislative branches; managers of public administration, and social interest organizations"'
label define pa10a_occ_lbl 0112 `"Directors and general managers of companies"', add
label define pa10a_occ_lbl 0121 `"Directors and managers of services companies"', add
label define pa10a_occ_lbl 0122 `"Directors and managers of sales, marketing and development"', add
label define pa10a_occ_lbl 0131 `"Directors, officers and managers of farming, forestry and fishing"', add
label define pa10a_occ_lbl 0132 `"Directors and managers of manufacturing, mining, construction and distribution"', add
label define pa10a_occ_lbl 0133 `"Directors and managers in technology services and information communications"', add
label define pa10a_occ_lbl 0134 `"Directors and managers in professional services"', add
label define pa10a_occ_lbl 0141 `"Managers and administrators of hotels and restaurants"', add
label define pa10a_occ_lbl 0142 `"Managers and administrators of wholesale and retail companies"', add
label define pa10a_occ_lbl 0143 `"Other managers and administrators of services companies"', add
label define pa10a_occ_lbl 0199 `"Other workers who perform an occupation akin to those included in this group"', add
label define pa10a_occ_lbl 0211 `"Physicists, chemists and related occupations"', add
label define pa10a_occ_lbl 0212 `"Mathematicians, actuaries and statisticians"', add
label define pa10a_occ_lbl 0213 `"Life science professionals"', add
label define pa10a_occ_lbl 0214 `"Engineers (excluding electrotechnologists)"', add
label define pa10a_occ_lbl 0215 `"Electrotechnology engineers"', add
label define pa10a_occ_lbl 0216 `"Architects, urban planners, surveyors and designers"', add
label define pa10a_occ_lbl 0221 `"Physicians"', add
label define pa10a_occ_lbl 0222 `"Professional nurses"', add
label define pa10a_occ_lbl 0225 `"Veterinarians"', add
label define pa10a_occ_lbl 0226 `"Other health professionals"', add
label define pa10a_occ_lbl 0231 `"Professors at universities and other higher education institutions"', add
label define pa10a_occ_lbl 0232 `"Professors at vocational schools"', add
label define pa10a_occ_lbl 0233 `"Secondary school teachers"', add
label define pa10a_occ_lbl 0234 `"Primary school teachers and preschool teachers"', add
label define pa10a_occ_lbl 0235 `"Other education professionals"', add
label define pa10a_occ_lbl 0241 `"Professionals in finance"', add
label define pa10a_occ_lbl 0242 `"Professionals in management and organization"', add
label define pa10a_occ_lbl 0243 `"Professionals in sales, marketing and public relations"', add
label define pa10a_occ_lbl 0251 `"Software developers and analysts of software and multimedia"', add
label define pa10a_occ_lbl 0252 `"Professionals in databases and computer networks"', add
label define pa10a_occ_lbl 0261 `"Law-related occupations (judges, attornies, etc.)"', add
label define pa10a_occ_lbl 0263 `"Professionals in social and teological sciences"', add
label define pa10a_occ_lbl 0264 `"Authors, journalists and linguists"', add
label define pa10a_occ_lbl 0265 `"Creative and performing artists"', add
label define pa10a_occ_lbl 0299 `"Other workers in occupations akin to those included in this group"', add
label define pa10a_occ_lbl 0311 `"Physics, chemistry, and engineering technicians"', add
label define pa10a_occ_lbl 0312 `"Supervisors in mining, manufacturing and construction"', add
label define pa10a_occ_lbl 0313 `"Process control technicians"', add
label define pa10a_occ_lbl 0314 `"Technicians and mid-level professionals in the life sciences and related sciences"', add
label define pa10a_occ_lbl 0315 `"Controllers and technicians in marine and air navigation"', add
label define pa10a_occ_lbl 0321 `"Medical and pharmaceutical technicians"', add
label define pa10a_occ_lbl 0322 `"Mid-level professionals of nursing and midwifery"', add
label define pa10a_occ_lbl 0324 `"Veterinary assistants"', add
label define pa10a_occ_lbl 0325 `"Other mid-level professionals of health"', add
label define pa10a_occ_lbl 0331 `"Mid-level professionals in finance and mathematics"', add
label define pa10a_occ_lbl 0332 `"Commercial agents and brokers"', add
label define pa10a_occ_lbl 0333 `"Business services agents"', add
label define pa10a_occ_lbl 0334 `"Administrative and specialized secretaries, and related"', add
label define pa10a_occ_lbl 0335 `"Agents of government for law enforcement and related"', add
label define pa10a_occ_lbl 0341 `"Intermediate level professionals in legal, social and religious services"', add
label define pa10a_occ_lbl 0342 `"Sports and fitness trainers"', add
label define pa10a_occ_lbl 0343 `"Intermediate level professionals in cultural, artistic and culinary activities"', add
label define pa10a_occ_lbl 0351 `"Technicians in operations of information technology, communications and user support"', add
label define pa10a_occ_lbl 0352 `"Telecommunications and broadcasting technicians"', add
label define pa10a_occ_lbl 0399 `"Other workers who perform an occupation akin to those included in this group"', add
label define pa10a_occ_lbl 0411 `"Secretaries"', add
label define pa10a_occ_lbl 0412 `"Office machine operators"', add
label define pa10a_occ_lbl 0421 `"Payors, money collectors and related occupations"', add
label define pa10a_occ_lbl 0422 `"Employees of customer information services"', add
label define pa10a_occ_lbl 0431 `"Accounting and financial auxiliaries"', add
label define pa10a_occ_lbl 0432 `"Clerks in charge of registration of materials and transport"', add
label define pa10a_occ_lbl 0441 `"Other office wprkers"', add
label define pa10a_occ_lbl 0499 `"Other workers who perform an occupation akin to those included in this group"', add
label define pa10a_occ_lbl 0511 `"Workers providing transportation services to passengers"', add
label define pa10a_occ_lbl 0512 `"Cooks (excluding chefs and fast food cooks)"', add
label define pa10a_occ_lbl 0513 `"Waiters and saloneros"', add
label define pa10a_occ_lbl 0514 `"Hairdressers, beauticians and related"', add
label define pa10a_occ_lbl 0515 `"Supervisors of maintenance and cleaning of buildings"', add
label define pa10a_occ_lbl 0516 `"Other personal services workers"', add
label define pa10a_occ_lbl 0521 `"Child care workers and teachers' aides"', add
label define pa10a_occ_lbl 0522 `"Personal care workers in health services"', add
label define pa10a_occ_lbl 0531 `"Workers in protective services"', add
label define pa10a_occ_lbl 0541 `"Street and market stalls vendors"', add
label define pa10a_occ_lbl 0542 `"Traders at small businesses and sellers at stores and warehouses"', add
label define pa10a_occ_lbl 0543 `"Cashiers at stores and ticket vendors"', add
label define pa10a_occ_lbl 0544 `"Other sellers"', add
label define pa10a_occ_lbl 0599 `"Other workers who perform an occupation akin to those included in this group"', add
label define pa10a_occ_lbl 0611 `"Farmers of crops for sale in the market"', add
label define pa10a_occ_lbl 0612 `"Animal breeders for sale in the market and related"', add
label define pa10a_occ_lbl 0621 `"Forestry and related workers"', add
label define pa10a_occ_lbl 0622 `"Fishermen, hunters and trappers"', add
label define pa10a_occ_lbl 0631 `"Crop farmers for subsistence"', add
label define pa10a_occ_lbl 0632 `"Animal breeders for subsistence"', add
label define pa10a_occ_lbl 0633 `"Agricultural worker for subsistence"', add
label define pa10a_occ_lbl 0634 `"Fishers for subsistence"', add
label define pa10a_occ_lbl 0711 `"Construction workers (structural work) and related"', add
label define pa10a_occ_lbl 0712 `"Workers in construction finishing and related"', add
label define pa10a_occ_lbl 0713 `"Painters, building structure cleaners, and related"', add
label define pa10a_occ_lbl 0721 `"Moulders, welders, boilermakers, fitters of metallic structures and related"', add
label define pa10a_occ_lbl 0722 `"Blacksmiths, toolmakers and related"', add
label define pa10a_occ_lbl 0723 `"Machinery mechanics and repairers"', add
label define pa10a_occ_lbl 0731 `"Artisans"', add
label define pa10a_occ_lbl 0732 `"Workers in graphic arts"', add
label define pa10a_occ_lbl 0741 `"Installers and repairers of electrical equipment"', add
label define pa10a_occ_lbl 0742 `"Installers and repairers of electronic and telecommunications equipment"', add
label define pa10a_occ_lbl 0751 `"Workers in food processing and related"', add
label define pa10a_occ_lbl 0752 `"Workers wood treatment, cabinetmakers and related"', add
label define pa10a_occ_lbl 0753 `"Operators and related apparel"', add
label define pa10a_occ_lbl 0754 `"Other artisans, operators and workers not listed elsewhere"', add
label define pa10a_occ_lbl 0799 `"Other workers who perform an occupation akin to those included in this group"', add
label define pa10a_occ_lbl 0811 `"Quarriers, mining and mineral processing"', add
label define pa10a_occ_lbl 0813 `"Machine operators in developing and photographic chemicals"', add
label define pa10a_occ_lbl 0814 `"Operators of machines for the production of rubber, paper and plastic"', add
label define pa10a_occ_lbl 0815 `"Machine operators produce textiles and leather and leather"', add
label define pa10a_occ_lbl 0816 `"Machine operators prepare food, beverages and snuff"', add
label define pa10a_occ_lbl 0817 `"Operators in the preparation of paper and wood processing"', add
label define pa10a_occ_lbl 0818 `"Other machine operators and fixed installations"', add
label define pa10a_occ_lbl 0821 `"Assemblers"', add
label define pa10a_occ_lbl 0832 `"Drivers of cars, trucks and motorcycles"', add
label define pa10a_occ_lbl 0833 `"Drivers of buses, trams and heavy trucks"', add
label define pa10a_occ_lbl 0834 `"Operators of mobile heavy equipment"', add
label define pa10a_occ_lbl 0835 `"Deck and related"', add
label define pa10a_occ_lbl 0899 `"Other workers who perform an occupation akin to those included in this group"', add
label define pa10a_occ_lbl 0911 `"Household, establishments and mass transport  cleaners"', add
label define pa10a_occ_lbl 0912 `"Cleaners of private cars, windows, laundry and other hand cleaning activities"', add
label define pa10a_occ_lbl 0921 `"Agricultural, fishery and forestry pawns"', add
label define pa10a_occ_lbl 0931 `"Workers in the mining and construction"', add
label define pa10a_occ_lbl 0932 `"Workers in manufacturing"', add
label define pa10a_occ_lbl 0933 `"Unskilled workers in transport and storage services"', add
label define pa10a_occ_lbl 0941 `"Helpers in the preparation of food for immediate consumption"', add
label define pa10a_occ_lbl 0951 `"Street vendors and related services"', add
label define pa10a_occ_lbl 0952 `"Vendors of products (excluding prepared food)"', add
label define pa10a_occ_lbl 0961 `"Waste collectors"', add
label define pa10a_occ_lbl 0962 `"Other elementary occupations"', add
label define pa10a_occ_lbl 0970 `"Other workers who perform an occupation akin to those included in this group"', add
label define pa10a_occ_lbl 0990 `"Workers in unidentified occupations"', add
label define pa10a_occ_lbl 9998 `"Never worked"', add
label define pa10a_occ_lbl 9999 `"NIU (not in universe)"', add
label values pa10a_occ pa10a_occ_lbl

label define pa10a_ind_lbl 0111 `"Cultivation of cereals (except rice and corn), vegetables and oilseeds"'
label define pa10a_ind_lbl 0112 `"Cultivation of rice"', add
label define pa10a_ind_lbl 0113 `"Cultivation of vegetables, roots and tubers"', add
label define pa10a_ind_lbl 0114 `"Cultivation of sugarcane"', add
label define pa10a_ind_lbl 0117 `"Cultivation of corn"', add
label define pa10a_ind_lbl 0119 `"Cultivation of other non-perennial crops"', add
label define pa10a_ind_lbl 0122 `"Cultivation of tropical and subtropical fruits"', add
label define pa10a_ind_lbl 0126 `"Cultivation of oleaginous fruits"', add
label define pa10a_ind_lbl 0127 `"Cultivation of beverage products"', add
label define pa10a_ind_lbl 0130 `"Plant propagation"', add
label define pa10a_ind_lbl 0141 `"Breeding of cattle and buffalo"', add
label define pa10a_ind_lbl 0142 `"Breeding of horses and other equines"', add
label define pa10a_ind_lbl 0145 `"Breeding of pigs"', add
label define pa10a_ind_lbl 0146 `"Breeding of poultry and production of subproducts"', add
label define pa10a_ind_lbl 0149 `"Breeding of other animals"', add
label define pa10a_ind_lbl 0150 `"Mixed farming"', add
label define pa10a_ind_lbl 0161 `"Support activities for crop and post-harvest"', add
label define pa10a_ind_lbl 0162 `"Support activities for livestock"', add
label define pa10a_ind_lbl 0210 `"Forestry and other activities related to forestry"', add
label define pa10a_ind_lbl 0220 `"Logging"', add
label define pa10a_ind_lbl 0240 `"Support services for forestry"', add
label define pa10a_ind_lbl 0311 `"Oceanic and coastal marine fisheries"', add
label define pa10a_ind_lbl 0321 `"Maritime aquaculture"', add
label define pa10a_ind_lbl 0322 `"Freshwater aquaculture"', add
label define pa10a_ind_lbl 0499 `"Other agriculture, forestry and fisheries"', add
label define pa10a_ind_lbl 0510 `"Mining and agglomeration of hard coal"', add
label define pa10a_ind_lbl 0520 `"Mining and agglomeration of lignite"', add
label define pa10a_ind_lbl 0729 `"Mining of other non-ferrous metal ores"', add
label define pa10a_ind_lbl 0810 `"Quarrying of stone, sand and clay"', add
label define pa10a_ind_lbl 0893 `"Extraction of salt"', add
label define pa10a_ind_lbl 0899 `"Other mining and quarrying activities, not elsewhere mentioned"', add
label define pa10a_ind_lbl 1010 `"Processing and preserving of meat"', add
label define pa10a_ind_lbl 1020 `"Processing and preserving of fish, crustaceans and mollusks"', add
label define pa10a_ind_lbl 1030 `"Processing and preserving of fruit and vegetables"', add
label define pa10a_ind_lbl 1040 `"Manufacture of oils and fats of vegetable and animal"', add
label define pa10a_ind_lbl 1050 `"Manufacture of dairy products"', add
label define pa10a_ind_lbl 1061 `"Manufacture of grain mill products"', add
label define pa10a_ind_lbl 1071 `"Manufacture of bakery products"', add
label define pa10a_ind_lbl 1072 `"Preparation of sugar"', add
label define pa10a_ind_lbl 1079 `"Manufacture of other food products, not elsewhere mentioned"', add
label define pa10a_ind_lbl 1080 `"Manufacture of prepared animal feeds"', add
label define pa10a_ind_lbl 1101 `"Distilling, rectifying and blending of spirits"', add
label define pa10a_ind_lbl 1103 `"Manufacture of malt liquors (beer and malt)"', add
label define pa10a_ind_lbl 1104 `"Manufacture of soft drinks; production of mineral waters and bottled water"', add
label define pa10a_ind_lbl 1313 `"Finishing of textiles (Printed)"', add
label define pa10a_ind_lbl 1399 `"Manufacture of other textiles, not elsewhere mentioned"', add
label define pa10a_ind_lbl 1411 `"Manufacture of garments, except fur garments"', add
label define pa10a_ind_lbl 1430 `"Manufacture of knit or crochet garments (knitting needle)"', add
label define pa10a_ind_lbl 1520 `"Shoemaking"', add
label define pa10a_ind_lbl 1610 `"Sawmilling and brushing of wood"', add
label define pa10a_ind_lbl 1622 `"Manufacture of joinery and carpentry for buildings and constructions"', add
label define pa10a_ind_lbl 1629 `"Manufacture of products of wood, manufacture of articles of cork, straw and plaiting materials"', add
label define pa10a_ind_lbl 1702 `"Manufacture of paper, corrugated board and packaging paper and board"', add
label define pa10a_ind_lbl 1709 `"Manufacture of other articles of paper and paperboard"', add
label define pa10a_ind_lbl 1811 `"Printing (newspapers, magazines, etc.)"', add
label define pa10a_ind_lbl 1812 `"Services related to printing"', add
label define pa10a_ind_lbl 2011 `"Manufacture of basic chemicals"', add
label define pa10a_ind_lbl 2022 `"Manufacture of paints, varnishes and similar coatings, printing ink and mastics"', add
label define pa10a_ind_lbl 2023 `"Manufacture of soap and detergents, cleaning and polishing preparations, perfumes and toilet preparations candles"', add
label define pa10a_ind_lbl 2029 `"Manufacture of other chemical products, not elsewhere mentioned"', add
label define pa10a_ind_lbl 2100 `"Manufacture of pharmaceuticals, medicinal chemicals and botanical products"', add
label define pa10a_ind_lbl 2220 `"Manufacture of plastic products"', add
label define pa10a_ind_lbl 2310 `"Manufacture of glass and glass products"', add
label define pa10a_ind_lbl 2392 `"Manufacture of clay materials for construction"', add
label define pa10a_ind_lbl 2393 `"Manufacture of other porcelain and ceramic products"', add
label define pa10a_ind_lbl 2394 `"Manufacture of cement, lime and plaster"', add
label define pa10a_ind_lbl 2395 `"Manufacture of articles of concrete, cement, plaster and panalit"', add
label define pa10a_ind_lbl 2410 `"Manufacture of basic iron and steel products"', add
label define pa10a_ind_lbl 2511 `"Manufacture of structural metal products (welding)"', add
label define pa10a_ind_lbl 2591 `"Forging, pressing, stamping and roll forming of metal; powder metallurgy."', add
label define pa10a_ind_lbl 2599 `"Manufacture of other metallic products, not elsewhere mentioned"', add
label define pa10a_ind_lbl 3011 `"Building of ships and floating structures"', add
label define pa10a_ind_lbl 3100 `"Manufacture of furniture and mattresses (upholstery)"', add
label define pa10a_ind_lbl 3212 `"Manufacture of imitation jewelery and related articles"', add
label define pa10a_ind_lbl 3290 `"Other manufacturing, not elsewhere mentioned"', add
label define pa10a_ind_lbl 3312 `"Repair and maintenance of machinery and equipment"', add
label define pa10a_ind_lbl 3314 `"Repair and maintenance of electrical equipment"', add
label define pa10a_ind_lbl 3315 `"Repair and maintenance of transport equipment, except motor vehicles"', add
label define pa10a_ind_lbl 3319 `"Repair of other type of equipment"', add
label define pa10a_ind_lbl 3320 `"Installation of industrial machinery and equipment"', add
label define pa10a_ind_lbl 3510 `"Generation, transmission and distribution of electricity"', add
label define pa10a_ind_lbl 3530 `"Supply of steam, air conditioning and production of ice"', add
label define pa10a_ind_lbl 3600 `"Water collection, treatment and supply of water"', add
label define pa10a_ind_lbl 3700 `"Sewerage"', add
label define pa10a_ind_lbl 3811 `"Collection of non-hazardous waste (garbage)"', add
label define pa10a_ind_lbl 3830 `"Processing and recovery of materials"', add
label define pa10a_ind_lbl 3900 `"Sanitation activities and other waste management services"', add
label define pa10a_ind_lbl 4100 `"Construction of builidings"', add
label define pa10a_ind_lbl 4210 `"Construction of roads and railways"', add
label define pa10a_ind_lbl 4220 `"Construction of of public service projects"', add
label define pa10a_ind_lbl 4290 `"Construction of other civil engineering projects"', add
label define pa10a_ind_lbl 4312 `"Preparion of the land"', add
label define pa10a_ind_lbl 4321 `"Electrical installations"', add
label define pa10a_ind_lbl 4322 `"Plumbing and installation of heating and air conditioning"', add
label define pa10a_ind_lbl 4329 `"Other type of installations for construction"', add
label define pa10a_ind_lbl 4330 `"Completion and finishing of buildings"', add
label define pa10a_ind_lbl 4390 `"Other specialized construction activities"', add
label define pa10a_ind_lbl 4510 `"Wholesale on a fee or contract basis in tax-free zones"', add
label define pa10a_ind_lbl 4530 `"Wholesale of food, beverages and snuff in tax-free zones"', add
label define pa10a_ind_lbl 4541 `"Wholesale of textiles, clothing and footwear accessories tax-free zones"', add
label define pa10a_ind_lbl 4542 `"Wholesale of household goods in tax-free zones"', add
label define pa10a_ind_lbl 4543 `"Wholesale of jewelry, watches and fine fantasy tax-free zones"', add
label define pa10a_ind_lbl 4549 `"Wholesale of other personal and consumer products in various tax-free zones"', add
label define pa10a_ind_lbl 4555 `"Wholesale of parts and accessories of motor vehicles in tax-free zones"', add
label define pa10a_ind_lbl 4563 `"Wholesale of construction materials, hardware, equipment and materials for plumbing and heating in tax-free zones"', add
label define pa10a_ind_lbl 4590 `"Wholesale of other products in tax-free zones"', add
label define pa10a_ind_lbl 4610 `"Wholesale on a fee or contract basis"', add
label define pa10a_ind_lbl 4620 `"Wholesale of agricultural raw materials and live animals"', add
label define pa10a_ind_lbl 4630 `"Wholesale of food, beverages and snuff"', add
label define pa10a_ind_lbl 4641 `"Wholesale of textiles, clothing and accessories, andfootwear"', add
label define pa10a_ind_lbl 4642 `"Wholesale of household goods"', add
label define pa10a_ind_lbl 4643 `"Wholesale of jewelry, watches and fine fantasy"', add
label define pa10a_ind_lbl 4649 `"Wholesale of other personal and various consumer products"', add
label define pa10a_ind_lbl 4651 `"Wholesale of computers, computer peripheral equipment and software"', add
label define pa10a_ind_lbl 4652 `"Wholesale of electronic and telecommunications equipment and parts and pieces"', add
label define pa10a_ind_lbl 4653 `"Wholesale of machinery, agricultural equipment, their parts and accessories"', add
label define pa10a_ind_lbl 4654 `"Wholesale of motor vehicles"', add
label define pa10a_ind_lbl 4655 `"Wholesale of parts and accessories of motor vehicles"', add
label define pa10a_ind_lbl 4659 `"Wholesale of other machinery and equipment"', add
label define pa10a_ind_lbl 4661 `"Wholesale of solid, liquid and gaseous fuels and related products"', add
label define pa10a_ind_lbl 4663 `"Wholesale of construction materials, hardware, equipment and plumbing and heating materials"', add
label define pa10a_ind_lbl 4669 `"Wholesale of garbage, waste and other products, not elsewhere mentioned"', add
label define pa10a_ind_lbl 4690 `"Wholesale of other non-specialized products"', add
label define pa10a_ind_lbl 4711 `"Retail sales in non-specialized stores with assortment composed mostly of food, beverages and snuff"', add
label define pa10a_ind_lbl 4719 `"Retail sales of other goods in non-specialized stores (department stores or sections)"', add
label define pa10a_ind_lbl 4721 `"Retail sales of food in specialized stores"', add
label define pa10a_ind_lbl 4722 `"Retail sales of beverages in specialized stores"', add
label define pa10a_ind_lbl 4730 `"Retail sales of motor vehicle fuel"', add
label define pa10a_ind_lbl 4731 `"Retail sales of automotive vehicles"', add
label define pa10a_ind_lbl 4732 `"Maintenance and repair of motor vehicles"', add
label define pa10a_ind_lbl 4733 `"Retail sales of parts and accessories of motor vehicles"', add
label define pa10a_ind_lbl 4734 `"Retail sales of motorcycles, their parts and accessories, maintenance and repair"', add
label define pa10a_ind_lbl 4741 `"Retail sale of computers, peripheral units, software and telecommunications equipment"', add
label define pa10a_ind_lbl 4742 `"Retail sale of audio and video equipment in specialized stores"', add
label define pa10a_ind_lbl 4751 `"Retail sale of textiles in specialized stores"', add
label define pa10a_ind_lbl 4752 `"Retail sales of hardware, paints and glass in specialized stores"', add
label define pa10a_ind_lbl 4753 `"Retail sale of carpets, wall and floor coverings in specialized stores"', add
label define pa10a_ind_lbl 4759 `"Retail sales of appliances, furniture, and household equipment in specialized stores use"', add
label define pa10a_ind_lbl 4761 `"Retail sales of books, newspapers and stationery, office supplies and equipment in specialized stores"', add
label define pa10a_ind_lbl 4763 `"Retail sale of sports goods in specialized stores"', add
label define pa10a_ind_lbl 4771 `"Retail sales of textiles, clothing, footwear and leather goods in specialized stores"', add
label define pa10a_ind_lbl 4772 `"Retail sales of pharmaceutical, medical, orthopedic, cosmetic and toilet articles in specialized stores"', add
label define pa10a_ind_lbl 4773 `"Other retail sales in specialized stores (eyewear)"', add
label define pa10a_ind_lbl 4774 `"Retail sales at stores of used goods (non-food)"', add
label define pa10a_ind_lbl 4775 `"Retail sales of watches, jewelry and fine costume"', add
label define pa10a_ind_lbl 4781 `"Retail sales of food, beverages and tobacco products in market stalls"', add
label define pa10a_ind_lbl 4782 `"Retail sales of textiles, clothing, footwear and other goods in market stalls (street vendors)"', add
label define pa10a_ind_lbl 4789 `"Retail sales of lottery and newspaper in market stalls"', add
label define pa10a_ind_lbl 4791 `"Retail sales via mail order or online"', add
label define pa10a_ind_lbl 4799 `"Other retail sales not done in stores and market stalls, not elsewhere mentioned"', add
label define pa10a_ind_lbl 4841 `"Retail sales of textiles, clothing, footwear and accessories in tax-free zones"', add
label define pa10a_ind_lbl 4849 `"Retail sales of other personal and consumer products in various tax-free zones"', add
label define pa10a_ind_lbl 4899 `"Other retail sales"', add
label define pa10a_ind_lbl 4921 `"Land passenger transport in urban, suburban or metropolitan  areas"', add
label define pa10a_ind_lbl 4922 `"Other passenger land transport"', add
label define pa10a_ind_lbl 4923 `"Freight transport by road"', add
label define pa10a_ind_lbl 4924 `"Freight transport by road in tax-free zones"', add
label define pa10a_ind_lbl 4930 `"Pipeline transport"', add
label define pa10a_ind_lbl 5011 `"Sea and coastal transport of passengers"', add
label define pa10a_ind_lbl 5012 `"Sea and coastal transport cargo"', add
label define pa10a_ind_lbl 5110 `"Passenger transport by air"', add
label define pa10a_ind_lbl 5120 `"Freight transport by air"', add
label define pa10a_ind_lbl 5211 `"Warehousing and storage"', add
label define pa10a_ind_lbl 5221 `"Secondary service activities by land transport"', add
label define pa10a_ind_lbl 5222 `"Secondary service activities for water transport"', add
label define pa10a_ind_lbl 5223 `"Secondary service activities for air transportation"', add
label define pa10a_ind_lbl 5224 `"Cargo handling"', add
label define pa10a_ind_lbl 5225 `"Cargo handling in tax-free zones"', add
label define pa10a_ind_lbl 5226 `"Panama Canal Authority (ACP)"', add
label define pa10a_ind_lbl 5227 `"Activities of other transport agencies conducted in tax-free zones"', add
label define pa10a_ind_lbl 5229 `"Other complementary activities for transportation services"', add
label define pa10a_ind_lbl 5310 `"Mailing"', add
label define pa10a_ind_lbl 5320 `"Courier service"', add
label define pa10a_ind_lbl 5399 `"Other transportation, storage and delivery"', add
label define pa10a_ind_lbl 5510 `"Temporary accommodation activities"', add
label define pa10a_ind_lbl 5611 `"Restaurants"', add
label define pa10a_ind_lbl 5612 `"Preparation and sale of food in the streets and makeshift stalls"', add
label define pa10a_ind_lbl 5629 `"Other food service activities"', add
label define pa10a_ind_lbl 5631 `"Activities related to beverage service"', add
label define pa10a_ind_lbl 5632 `"Preparation and sale of beverages in public and makeshift stalls"', add
label define pa10a_ind_lbl 5813 `"Publishing of newspapers, journals and magazines"', add
label define pa10a_ind_lbl 5914 `"Picture projection activities (cinemas)"', add
label define pa10a_ind_lbl 6010 `"Radio broadcasting"', add
label define pa10a_ind_lbl 6021 `"TV broadcasting"', add
label define pa10a_ind_lbl 6022 `"Programming and activities of production  and broadcasting"', add
label define pa10a_ind_lbl 6110 `"Wired telecommunications activities"', add
label define pa10a_ind_lbl 6120 `"Wireless telecommunications activities"', add
label define pa10a_ind_lbl 6130 `"Satellite telecommunications activities"', add
label define pa10a_ind_lbl 6190 `"Other telecommunications activities"', add
label define pa10a_ind_lbl 6201 `"Computer programming activities"', add
label define pa10a_ind_lbl 6202 `"Consulting activities, computer and media management activities computerized"', add
label define pa10a_ind_lbl 6209 `"Other activities of information technology and computer service, n"', add
label define pa10a_ind_lbl 6399 `"Other information services, not elsewhere mentioned"', add
label define pa10a_ind_lbl 6419 `"Other monetary intermediation (National Bank of Panama)"', add
label define pa10a_ind_lbl 6492 `"Other types of credit (pawnshops, financial)"', add
label define pa10a_ind_lbl 6499 `"Other financial activities, except insurance and pension funding"', add
label define pa10a_ind_lbl 6511 `"Life insurance"', add
label define pa10a_ind_lbl 6512 `"General insurance"', add
label define pa10a_ind_lbl 6611 `"Administration of financial markets"', add
label define pa10a_ind_lbl 6619 `"Other activities auxiliary to financial service activities"', add
label define pa10a_ind_lbl 6621 `"Assessment of risk and damage"', add
label define pa10a_ind_lbl 6622 `"Activities of insurance agents and brokers"', add
label define pa10a_ind_lbl 6699 `"Other financial and insurance actitvities"', add
label define pa10a_ind_lbl 6810 `"Real estate activities with own or leased property"', add
label define pa10a_ind_lbl 6821 `"Real estate activities on a fee or contract basis"', add
label define pa10a_ind_lbl 6822 `"Real estate activities on a fee or contract basis in tax-free zones"', add
label define pa10a_ind_lbl 6910 `"Legal activities"', add
label define pa10a_ind_lbl 6921 `"Accounting, bookkeeping and auditing, tax advice"', add
label define pa10a_ind_lbl 7021 `"Activities of business administration and business management consulting"', add
label define pa10a_ind_lbl 7110 `"Architectural and engineering activities and related technical consultancy activities"', add
label define pa10a_ind_lbl 7210 `"Research and experimental development on natural sciences and engineering"', add
label define pa10a_ind_lbl 7310 `"Advertising"', add
label define pa10a_ind_lbl 7320 `"Market research and public opinion polling"', add
label define pa10a_ind_lbl 7410 `"Specialized design activities"', add
label define pa10a_ind_lbl 7420 `"Photographic activities"', add
label define pa10a_ind_lbl 7490 `"Other professional, scientific and technical, not elsewhere mentioned"', add
label define pa10a_ind_lbl 7500 `"Veterinary activities"', add
label define pa10a_ind_lbl 7710 `"Rental of motor vehicles without a driver"', add
label define pa10a_ind_lbl 7722 `"Rental of video tapes and disks"', add
label define pa10a_ind_lbl 7729 `"Rental of other personal and household goods, not elsewhere mentioned"', add
label define pa10a_ind_lbl 7731 `"Rental of other machinery, equipment without operators and tangible goods"', add
label define pa10a_ind_lbl 7810 `"Activities of agencies dedicated to the placement of employees"', add
label define pa10a_ind_lbl 7830 `"Other activities related to the provision of human resources"', add
label define pa10a_ind_lbl 7911 `"Activities of travel agencies"', add
label define pa10a_ind_lbl 7912 `"Activities of tourism operators"', add
label define pa10a_ind_lbl 7990 `"Other travel booking services and related activities"', add
label define pa10a_ind_lbl 8010 `"Private security activities"', add
label define pa10a_ind_lbl 8020 `"Activities of security systems service"', add
label define pa10a_ind_lbl 8110 `"Activities for facilities support"', add
label define pa10a_ind_lbl 8121 `"General cleaning of buildings"', add
label define pa10a_ind_lbl 8129 `"Other activities of building and industrial cleaning (spraying)"', add
label define pa10a_ind_lbl 8130 `"Maintenance activities and care of landscapes (gardens, parks)"', add
label define pa10a_ind_lbl 8211 `"Combined activities for office administrative services"', add
label define pa10a_ind_lbl 8219 `"Photocopying, document preparation and other specialized office support"', add
label define pa10a_ind_lbl 8220 `"Activities of call centers"', add
label define pa10a_ind_lbl 8230 `"Organization of conventions and trade shows"', add
label define pa10a_ind_lbl 8291 `"Activities of collection agencies and credit bureaus"', add
label define pa10a_ind_lbl 8292 `"Activities of bottiling and packaging"', add
label define pa10a_ind_lbl 8299 `"Other service activities of business support, not elsewhere mentioned"', add
label define pa10a_ind_lbl 8411 `"Activities of public administration in general"', add
label define pa10a_ind_lbl 8412 `"Regulation of the activities of agencies that provide health, educational, cultural and other social services, excluding social security services"', add
label define pa10a_ind_lbl 8413 `"Regulation and facilitation of economic activities"', add
label define pa10a_ind_lbl 8421 `"Foreign affairs"', add
label define pa10a_ind_lbl 8423 `"Activities related to keeping public order and security"', add
label define pa10a_ind_lbl 8430 `"Activities related to compulsory social security plans"', add
label define pa10a_ind_lbl 8510 `"Pre-primary and primary education"', add
label define pa10a_ind_lbl 8521 `"Secondary education"', add
label define pa10a_ind_lbl 8522 `"Secondary education for technical and vocational training"', add
label define pa10a_ind_lbl 8530 `"Higher education"', add
label define pa10a_ind_lbl 8541 `"Sports and recreation education"', add
label define pa10a_ind_lbl 8542 `"Cultural education"', add
label define pa10a_ind_lbl 8549 `"Other education activities, not elsewhere mentioned"', add
label define pa10a_ind_lbl 8610 `"Activities of hospitals"', add
label define pa10a_ind_lbl 8620 `"Medical and dental practice activities"', add
label define pa10a_ind_lbl 8690 `"Other activities related to human health (clinical laboratories)"', add
label define pa10a_ind_lbl 8710 `"Installations of residences providing nursing care"', add
label define pa10a_ind_lbl 8790 `"Other residential care institutions"', add
label define pa10a_ind_lbl 8890 `"Other social work activities without accommodation, not elsewhere mentioned"', add
label define pa10a_ind_lbl 9000 `"Activities of art, entertainment and creativity"', add
label define pa10a_ind_lbl 9101 `"Activities of libraries and archives"', add
label define pa10a_ind_lbl 9103 `"Activities of botanical gardens, zoos and nature parks"', add
label define pa10a_ind_lbl 9200 `"Gambling and betting activities"', add
label define pa10a_ind_lbl 9311 `"Management of sports facilities"', add
label define pa10a_ind_lbl 9312 `"Activities of sports clubs"', add
label define pa10a_ind_lbl 9319 `"Other sport activities"', add
label define pa10a_ind_lbl 9329 `"Other amusement and recreation activities, not elsewhere mentioned"', add
label define pa10a_ind_lbl 9411 `"Activities of businesses and employers"', add
label define pa10a_ind_lbl 9491 `"Activities of religious organizations"', add
label define pa10a_ind_lbl 9492 `"Activities of political organizations"', add
label define pa10a_ind_lbl 9499 `"Activities of other organizations, not elsewhere mentioned (civic clubs)"', add
label define pa10a_ind_lbl 9511 `"Repair and maintenance of computers and peripheral equipment"', add
label define pa10a_ind_lbl 9512 `"Repair and maintenance of communication equipment"', add
label define pa10a_ind_lbl 9521 `"Repair and maintenance of electrical appliances"', add
label define pa10a_ind_lbl 9522 `"Repair and maintenance of household appliances, home and garden equipment"', add
label define pa10a_ind_lbl 9523 `"Repair and maintenance of footwear and leather goods"', add
label define pa10a_ind_lbl 9524 `"Repair and maintenance of furniture and home accessories"', add
label define pa10a_ind_lbl 9529 `"Repair and maintenance of other personal and household goods, not elsewhere mentioned"', add
label define pa10a_ind_lbl 9601 `"Washing, drying and cleaning of textile and fur products"', add
label define pa10a_ind_lbl 9602 `"Hairdressing and other beauty treatment activities"', add
label define pa10a_ind_lbl 9603 `"Funerals and related activities"', add
label define pa10a_ind_lbl 9609 `"Other service activities, not elsewhere mentioned"', add
label define pa10a_ind_lbl 9700 `"Activities of households as employers of domestic workers"', add
label define pa10a_ind_lbl 9910 `"Extraterritorial organizations and organisms"', add
label define pa10a_ind_lbl 9990 `"Other activities, response suppressed"', add
label define pa10a_ind_lbl 9995 `"Undeclared or not clearly defined activities"', add
label define pa10a_ind_lbl 9999 `"NIU (not in universe)"', add
label values pa10a_ind pa10a_ind_lbl

label define pa10a_contract_lbl 1 `"Permanent"'
label define pa10a_contract_lbl 2 `"Contracted for a specific job"', add
label define pa10a_contract_lbl 3 `"Defined contract"', add
label define pa10a_contract_lbl 4 `"Undefined contract"', add
label define pa10a_contract_lbl 5 `"No written contract"', add
label define pa10a_contract_lbl 9 `"NIU (not in universe)"', add
label values pa10a_contract pa10a_contract_lbl

label define pa10a_incbonus_lbl 00000 `"Without income"'
label define pa10a_incbonus_lbl 01000 `"1000+"', add
label define pa10a_incbonus_lbl 99999 `"Undeclared"', add
label values pa10a_incbonus pa10a_incbonus_lbl

label define pa10a_incind_lbl 00000 `"Without income"'
label define pa10a_incind_lbl 05000 `"5000+"', add
label define pa10a_incind_lbl 99999 `"Undeclared"', add
label values pa10a_incind pa10a_incind_lbl

label define pa10a_incret_lbl 00000 `"Without income"'
label define pa10a_incret_lbl 03000 `"3000+"', add
label define pa10a_incret_lbl 99999 `"Undeclared"', add
label values pa10a_incret pa10a_incret_lbl

label define pa10a_incacc_lbl 00000 `"Without income"'
label define pa10a_incacc_lbl 00700 `"700+"', add
label define pa10a_incacc_lbl 99999 `"Undeclared"', add
label values pa10a_incacc pa10a_incacc_lbl

label define pa10a_incfoodp_lbl 00000 `"Without income"'
label define pa10a_incfoodp_lbl 00500 `"500+"', add
label define pa10a_incfoodp_lbl 99999 `"Undeclared"', add
label values pa10a_incfoodp pa10a_incfoodp_lbl

label define pa10a_incasst_lbl 00000 `"Without income"'
label define pa10a_incasst_lbl 01000 `"1000+"', add
label define pa10a_incasst_lbl 99999 `"Undeclared"', add
label values pa10a_incasst pa10a_incasst_lbl

label define pa10a_incotha_lbl 00000 `"Without income from other assistance sources"'
label define pa10a_incotha_lbl 00001 `"1"', add
label define pa10a_incotha_lbl 00002 `"2"', add
label define pa10a_incotha_lbl 00003 `"3"', add
label define pa10a_incotha_lbl 00004 `"4"', add
label define pa10a_incotha_lbl 00005 `"5"', add
label define pa10a_incotha_lbl 00006 `"6"', add
label define pa10a_incotha_lbl 00007 `"7"', add
label define pa10a_incotha_lbl 00008 `"8"', add
label define pa10a_incotha_lbl 00009 `"9"', add
label define pa10a_incotha_lbl 00010 `"10"', add
label define pa10a_incotha_lbl 00011 `"11"', add
label define pa10a_incotha_lbl 00012 `"12"', add
label define pa10a_incotha_lbl 00013 `"13"', add
label define pa10a_incotha_lbl 00014 `"14"', add
label define pa10a_incotha_lbl 00015 `"15"', add
label define pa10a_incotha_lbl 00016 `"16"', add
label define pa10a_incotha_lbl 00017 `"17"', add
label define pa10a_incotha_lbl 00018 `"18"', add
label define pa10a_incotha_lbl 00019 `"19"', add
label define pa10a_incotha_lbl 00020 `"20"', add
label define pa10a_incotha_lbl 00021 `"21"', add
label define pa10a_incotha_lbl 00022 `"22"', add
label define pa10a_incotha_lbl 00023 `"23"', add
label define pa10a_incotha_lbl 00024 `"24"', add
label define pa10a_incotha_lbl 00025 `"25"', add
label define pa10a_incotha_lbl 00026 `"26"', add
label define pa10a_incotha_lbl 00028 `"28"', add
label define pa10a_incotha_lbl 00029 `"29"', add
label define pa10a_incotha_lbl 00030 `"30"', add
label define pa10a_incotha_lbl 00032 `"32"', add
label define pa10a_incotha_lbl 00033 `"33"', add
label define pa10a_incotha_lbl 00035 `"35"', add
label define pa10a_incotha_lbl 00036 `"36"', add
label define pa10a_incotha_lbl 00038 `"38"', add
label define pa10a_incotha_lbl 00040 `"40"', add
label define pa10a_incotha_lbl 00042 `"42"', add
label define pa10a_incotha_lbl 00043 `"43"', add
label define pa10a_incotha_lbl 00044 `"44"', add
label define pa10a_incotha_lbl 00045 `"45"', add
label define pa10a_incotha_lbl 00046 `"46"', add
label define pa10a_incotha_lbl 00048 `"48"', add
label define pa10a_incotha_lbl 00050 `"50"', add
label define pa10a_incotha_lbl 00051 `"51"', add
label define pa10a_incotha_lbl 00052 `"52"', add
label define pa10a_incotha_lbl 00053 `"53"', add
label define pa10a_incotha_lbl 00054 `"54"', add
label define pa10a_incotha_lbl 00055 `"55"', add
label define pa10a_incotha_lbl 00056 `"56"', add
label define pa10a_incotha_lbl 00058 `"58"', add
label define pa10a_incotha_lbl 00060 `"60"', add
label define pa10a_incotha_lbl 00061 `"61"', add
label define pa10a_incotha_lbl 00065 `"65"', add
label define pa10a_incotha_lbl 00068 `"68"', add
label define pa10a_incotha_lbl 00070 `"70"', add
label define pa10a_incotha_lbl 00072 `"72"', add
label define pa10a_incotha_lbl 00074 `"74"', add
label define pa10a_incotha_lbl 00075 `"75"', add
label define pa10a_incotha_lbl 00076 `"76"', add
label define pa10a_incotha_lbl 00078 `"78"', add
label define pa10a_incotha_lbl 00079 `"79"', add
label define pa10a_incotha_lbl 00080 `"80"', add
label define pa10a_incotha_lbl 00084 `"84"', add
label define pa10a_incotha_lbl 00085 `"85"', add
label define pa10a_incotha_lbl 00087 `"87"', add
label define pa10a_incotha_lbl 00090 `"90"', add
label define pa10a_incotha_lbl 00091 `"91"', add
label define pa10a_incotha_lbl 00092 `"92"', add
label define pa10a_incotha_lbl 00095 `"95"', add
label define pa10a_incotha_lbl 00096 `"96"', add
label define pa10a_incotha_lbl 00098 `"98"', add
label define pa10a_incotha_lbl 00099 `"99"', add
label define pa10a_incotha_lbl 00100 `"100"', add
label define pa10a_incotha_lbl 00104 `"104"', add
label define pa10a_incotha_lbl 00105 `"105"', add
label define pa10a_incotha_lbl 00106 `"106"', add
label define pa10a_incotha_lbl 00108 `"108"', add
label define pa10a_incotha_lbl 00115 `"115"', add
label define pa10a_incotha_lbl 00116 `"116"', add
label define pa10a_incotha_lbl 00120 `"120"', add
label define pa10a_incotha_lbl 00123 `"123"', add
label define pa10a_incotha_lbl 00125 `"125"', add
label define pa10a_incotha_lbl 00130 `"130"', add
label define pa10a_incotha_lbl 00132 `"132"', add
label define pa10a_incotha_lbl 00135 `"135"', add
label define pa10a_incotha_lbl 00140 `"140"', add
label define pa10a_incotha_lbl 00145 `"145"', add
label define pa10a_incotha_lbl 00150 `"150"', add
label define pa10a_incotha_lbl 00159 `"159"', add
label define pa10a_incotha_lbl 00165 `"165"', add
label define pa10a_incotha_lbl 00173 `"173"', add
label define pa10a_incotha_lbl 00175 `"175"', add
label define pa10a_incotha_lbl 00180 `"180"', add
label define pa10a_incotha_lbl 00188 `"188"', add
label define pa10a_incotha_lbl 00200 `"200"', add
label define pa10a_incotha_lbl 00210 `"210"', add
label define pa10a_incotha_lbl 00216 `"216"', add
label define pa10a_incotha_lbl 00220 `"220"', add
label define pa10a_incotha_lbl 00228 `"228"', add
label define pa10a_incotha_lbl 00234 `"234"', add
label define pa10a_incotha_lbl 00240 `"240"', add
label define pa10a_incotha_lbl 00250 `"250"', add
label define pa10a_incotha_lbl 00260 `"260"', add
label define pa10a_incotha_lbl 00267 `"267"', add
label define pa10a_incotha_lbl 00285 `"285"', add
label define pa10a_incotha_lbl 00300 `"300"', add
label define pa10a_incotha_lbl 00303 `"303"', add
label define pa10a_incotha_lbl 00340 `"340"', add
label define pa10a_incotha_lbl 00350 `"350"', add
label define pa10a_incotha_lbl 00400 `"400 or more"', add
label define pa10a_incotha_lbl 00999 `"Undeclared"', add
label values pa10a_incotha pa10a_incotha_lbl

label define pa10a_asstoth_lbl 01 `"Clothes or shoes"'
label define pa10a_asstoth_lbl 02 `"Gifts"', add
label define pa10a_asstoth_lbl 04 `"School supplies"', add
label define pa10a_asstoth_lbl 08 `"Bonuses"', add
label define pa10a_asstoth_lbl 10 `"Per diem or travel allowance"', add
label define pa10a_asstoth_lbl 13 `"Food"', add
label define pa10a_asstoth_lbl 14 `"Program <100 for the 70s> (100 para los 70)"', add
label define pa10a_asstoth_lbl 15 `"Red de oportunidades"', add
label define pa10a_asstoth_lbl 16 `"SENAPAN or family bonus for food"', add
label define pa10a_asstoth_lbl 17 `"Undeclared"', add
label define pa10a_asstoth_lbl 20 `"Other"', add
label define pa10a_asstoth_lbl 99 `"NIU (not in universe)"', add
label values pa10a_asstoth pa10a_asstoth_lbl

label define pa10a_incrent_lbl 00000 `"Without income"'
label define pa10a_incrent_lbl 01000 `"1000+"', add
label define pa10a_incrent_lbl 99999 `"Unknown"', add
label values pa10a_incrent pa10a_incrent_lbl

label define pa10a_incsch_lbl 00000 `"Without income from scholarships"'
label define pa10a_incsch_lbl 00002 `"2"', add
label define pa10a_incsch_lbl 00003 `"3"', add
label define pa10a_incsch_lbl 00005 `"5"', add
label define pa10a_incsch_lbl 00009 `"9"', add
label define pa10a_incsch_lbl 00010 `"10"', add
label define pa10a_incsch_lbl 00011 `"11"', add
label define pa10a_incsch_lbl 00012 `"12"', add
label define pa10a_incsch_lbl 00013 `"13"', add
label define pa10a_incsch_lbl 00015 `"15"', add
label define pa10a_incsch_lbl 00016 `"16"', add
label define pa10a_incsch_lbl 00017 `"17"', add
label define pa10a_incsch_lbl 00018 `"18"', add
label define pa10a_incsch_lbl 00019 `"19"', add
label define pa10a_incsch_lbl 00020 `"20"', add
label define pa10a_incsch_lbl 00022 `"22"', add
label define pa10a_incsch_lbl 00023 `"23"', add
label define pa10a_incsch_lbl 00024 `"24"', add
label define pa10a_incsch_lbl 00025 `"25"', add
label define pa10a_incsch_lbl 00026 `"26"', add
label define pa10a_incsch_lbl 00027 `"27"', add
label define pa10a_incsch_lbl 00028 `"28"', add
label define pa10a_incsch_lbl 00029 `"29"', add
label define pa10a_incsch_lbl 00030 `"30"', add
label define pa10a_incsch_lbl 00031 `"31"', add
label define pa10a_incsch_lbl 00032 `"32"', add
label define pa10a_incsch_lbl 00033 `"33"', add
label define pa10a_incsch_lbl 00034 `"34"', add
label define pa10a_incsch_lbl 00035 `"35"', add
label define pa10a_incsch_lbl 00036 `"36"', add
label define pa10a_incsch_lbl 00037 `"37"', add
label define pa10a_incsch_lbl 00038 `"38"', add
label define pa10a_incsch_lbl 00039 `"39"', add
label define pa10a_incsch_lbl 00040 `"40"', add
label define pa10a_incsch_lbl 00041 `"41"', add
label define pa10a_incsch_lbl 00042 `"42"', add
label define pa10a_incsch_lbl 00043 `"43"', add
label define pa10a_incsch_lbl 00044 `"44"', add
label define pa10a_incsch_lbl 00045 `"45"', add
label define pa10a_incsch_lbl 00046 `"46"', add
label define pa10a_incsch_lbl 00047 `"47"', add
label define pa10a_incsch_lbl 00048 `"48"', add
label define pa10a_incsch_lbl 00049 `"49"', add
label define pa10a_incsch_lbl 00050 `"50"', add
label define pa10a_incsch_lbl 00052 `"52"', add
label define pa10a_incsch_lbl 00053 `"53"', add
label define pa10a_incsch_lbl 00054 `"54"', add
label define pa10a_incsch_lbl 00055 `"55"', add
label define pa10a_incsch_lbl 00056 `"56"', add
label define pa10a_incsch_lbl 00057 `"57"', add
label define pa10a_incsch_lbl 00058 `"58"', add
label define pa10a_incsch_lbl 00060 `"60"', add
label define pa10a_incsch_lbl 00061 `"61"', add
label define pa10a_incsch_lbl 00062 `"62"', add
label define pa10a_incsch_lbl 00064 `"64"', add
label define pa10a_incsch_lbl 00065 `"65"', add
label define pa10a_incsch_lbl 00066 `"66"', add
label define pa10a_incsch_lbl 00067 `"67"', add
label define pa10a_incsch_lbl 00068 `"68"', add
label define pa10a_incsch_lbl 00069 `"69"', add
label define pa10a_incsch_lbl 00070 `"70"', add
label define pa10a_incsch_lbl 00072 `"72"', add
label define pa10a_incsch_lbl 00074 `"74"', add
label define pa10a_incsch_lbl 00075 `"75"', add
label define pa10a_incsch_lbl 00077 `"77"', add
label define pa10a_incsch_lbl 00080 `"80"', add
label define pa10a_incsch_lbl 00082 `"82"', add
label define pa10a_incsch_lbl 00083 `"83"', add
label define pa10a_incsch_lbl 00085 `"85"', add
label define pa10a_incsch_lbl 00086 `"86"', add
label define pa10a_incsch_lbl 00087 `"87"', add
label define pa10a_incsch_lbl 00090 `"90"', add
label define pa10a_incsch_lbl 00093 `"93"', add
label define pa10a_incsch_lbl 00094 `"94"', add
label define pa10a_incsch_lbl 00095 `"95"', add
label define pa10a_incsch_lbl 00098 `"98"', add
label define pa10a_incsch_lbl 00099 `"99"', add
label define pa10a_incsch_lbl 00100 `"100"', add
label define pa10a_incsch_lbl 00101 `"101"', add
label define pa10a_incsch_lbl 00102 `"102"', add
label define pa10a_incsch_lbl 00103 `"103"', add
label define pa10a_incsch_lbl 00104 `"104"', add
label define pa10a_incsch_lbl 00105 `"105"', add
label define pa10a_incsch_lbl 00106 `"106"', add
label define pa10a_incsch_lbl 00108 `"108"', add
label define pa10a_incsch_lbl 00110 `"110"', add
label define pa10a_incsch_lbl 00112 `"112"', add
label define pa10a_incsch_lbl 00113 `"113"', add
label define pa10a_incsch_lbl 00115 `"115"', add
label define pa10a_incsch_lbl 00116 `"116"', add
label define pa10a_incsch_lbl 00117 `"117"', add
label define pa10a_incsch_lbl 00120 `"120"', add
label define pa10a_incsch_lbl 00125 `"125"', add
label define pa10a_incsch_lbl 00130 `"130"', add
label define pa10a_incsch_lbl 00133 `"133"', add
label define pa10a_incsch_lbl 00135 `"135"', add
label define pa10a_incsch_lbl 00137 `"137"', add
label define pa10a_incsch_lbl 00140 `"140"', add
label define pa10a_incsch_lbl 00141 `"141"', add
label define pa10a_incsch_lbl 00143 `"143"', add
label define pa10a_incsch_lbl 00145 `"145"', add
label define pa10a_incsch_lbl 00146 `"146"', add
label define pa10a_incsch_lbl 00147 `"147"', add
label define pa10a_incsch_lbl 00150 `"150"', add
label define pa10a_incsch_lbl 00160 `"160"', add
label define pa10a_incsch_lbl 00165 `"165"', add
label define pa10a_incsch_lbl 00166 `"166"', add
label define pa10a_incsch_lbl 00167 `"167"', add
label define pa10a_incsch_lbl 00170 `"170"', add
label define pa10a_incsch_lbl 00174 `"174"', add
label define pa10a_incsch_lbl 00175 `"175"', add
label define pa10a_incsch_lbl 00180 `"180"', add
label define pa10a_incsch_lbl 00190 `"190"', add
label define pa10a_incsch_lbl 00193 `"193"', add
label define pa10a_incsch_lbl 00200 `"200"', add
label define pa10a_incsch_lbl 00205 `"205"', add
label define pa10a_incsch_lbl 00210 `"210"', add
label define pa10a_incsch_lbl 00220 `"220"', add
label define pa10a_incsch_lbl 00225 `"225"', add
label define pa10a_incsch_lbl 00250 `"250"', add
label define pa10a_incsch_lbl 00260 `"260"', add
label define pa10a_incsch_lbl 00265 `"265"', add
label define pa10a_incsch_lbl 00269 `"269"', add
label define pa10a_incsch_lbl 00270 `"270"', add
label define pa10a_incsch_lbl 00290 `"290"', add
label define pa10a_incsch_lbl 00295 `"295"', add
label define pa10a_incsch_lbl 00300 `"300"', add
label define pa10a_incsch_lbl 00305 `"305"', add
label define pa10a_incsch_lbl 00310 `"310"', add
label define pa10a_incsch_lbl 00315 `"315"', add
label define pa10a_incsch_lbl 00320 `"320"', add
label define pa10a_incsch_lbl 00325 `"325"', add
label define pa10a_incsch_lbl 00330 `"330"', add
label define pa10a_incsch_lbl 00340 `"340"', add
label define pa10a_incsch_lbl 00350 `"350"', add
label define pa10a_incsch_lbl 00352 `"352"', add
label define pa10a_incsch_lbl 00354 `"354"', add
label define pa10a_incsch_lbl 00370 `"370"', add
label define pa10a_incsch_lbl 00372 `"372"', add
label define pa10a_incsch_lbl 00375 `"375 or more"', add
label define pa10a_incsch_lbl 00999 `"Unknown"', add
label values pa10a_incsch pa10a_incsch_lbl

label define pa10a_incag_lbl 00000 `"Without income"'
label define pa10a_incag_lbl 00500 `"500+"', add
label define pa10a_incag_lbl 99999 `"Unknown"', add
label values pa10a_incag pa10a_incag_lbl

label define pa10a_incoth_lbl 00000 `"Without income"'
label define pa10a_incoth_lbl 02000 `"2000+"', add
label define pa10a_incoth_lbl 99999 `"Unknown"', add
label values pa10a_incoth pa10a_incoth_lbl

label define pa10a_incyes_lbl 1 `"Yes"'
label define pa10a_incyes_lbl 2 `"No"', add
label define pa10a_incyes_lbl 9 `"Unknown"', add
label values pa10a_incyes pa10a_incyes_lbl

label define pa10a_chborn_lbl 00 `"0"'
label define pa10a_chborn_lbl 01 `"1"', add
label define pa10a_chborn_lbl 02 `"2"', add
label define pa10a_chborn_lbl 03 `"3"', add
label define pa10a_chborn_lbl 04 `"4"', add
label define pa10a_chborn_lbl 05 `"5"', add
label define pa10a_chborn_lbl 06 `"6"', add
label define pa10a_chborn_lbl 07 `"7"', add
label define pa10a_chborn_lbl 08 `"8"', add
label define pa10a_chborn_lbl 09 `"9"', add
label define pa10a_chborn_lbl 10 `"10"', add
label define pa10a_chborn_lbl 11 `"11"', add
label define pa10a_chborn_lbl 12 `"12"', add
label define pa10a_chborn_lbl 13 `"13"', add
label define pa10a_chborn_lbl 14 `"14"', add
label define pa10a_chborn_lbl 15 `"15"', add
label define pa10a_chborn_lbl 16 `"16+"', add
label define pa10a_chborn_lbl 98 `"Unknown"', add
label define pa10a_chborn_lbl 99 `"NIU (not in universe)"', add
label values pa10a_chborn pa10a_chborn_lbl

label define pa10a_chlive_lbl 00 `"0"'
label define pa10a_chlive_lbl 01 `"1"', add
label define pa10a_chlive_lbl 02 `"2"', add
label define pa10a_chlive_lbl 03 `"3"', add
label define pa10a_chlive_lbl 04 `"4"', add
label define pa10a_chlive_lbl 05 `"5"', add
label define pa10a_chlive_lbl 06 `"6"', add
label define pa10a_chlive_lbl 07 `"7"', add
label define pa10a_chlive_lbl 08 `"8"', add
label define pa10a_chlive_lbl 09 `"9"', add
label define pa10a_chlive_lbl 10 `"10"', add
label define pa10a_chlive_lbl 11 `"11"', add
label define pa10a_chlive_lbl 12 `"12"', add
label define pa10a_chlive_lbl 13 `"13"', add
label define pa10a_chlive_lbl 14 `"14"', add
label define pa10a_chlive_lbl 15 `"15+"', add
label define pa10a_chlive_lbl 98 `"Unknown"', add
label define pa10a_chlive_lbl 99 `"NIU (not in universe)"', add
label values pa10a_chlive pa10a_chlive_lbl

label define pa10a_chbornyr_lbl 1 `"Yes"'
label define pa10a_chbornyr_lbl 2 `"No"', add
label define pa10a_chbornyr_lbl 8 `"Unknown"', add
label define pa10a_chbornyr_lbl 9 `"NIU (not in universe)"', add
label values pa10a_chbornyr pa10a_chbornyr_lbl

label define pa10a_chliveyr_lbl 1 `"Yes"'
label define pa10a_chliveyr_lbl 2 `"No"', add
label define pa10a_chliveyr_lbl 8 `"Unknown"', add
label define pa10a_chliveyr_lbl 9 `"NIU (not in universe)"', add
label values pa10a_chliveyr pa10a_chliveyr_lbl

label define pa10a_incp_lbl 0010000 `"10000+"'
label define pa10a_incp_lbl 0099999 `"Undeclared"', add
label values pa10a_incp pa10a_incp_lbl

label define pa10a_bplrc_lbl 0101 `"Bocas del Toro"'
label define pa10a_bplrc_lbl 0102 `"Changuinola"', add
label define pa10a_bplrc_lbl 0103 `"Chiriqui Grande"', add
label define pa10a_bplrc_lbl 0201 `"Aguadulce"', add
label define pa10a_bplrc_lbl 0202 `"Anton"', add
label define pa10a_bplrc_lbl 0203 `"La Pintada"', add
label define pa10a_bplrc_lbl 0204 `"Nata"', add
label define pa10a_bplrc_lbl 0205 `"Ola"', add
label define pa10a_bplrc_lbl 0206 `"Penonome"', add
label define pa10a_bplrc_lbl 0301 `"Colon"', add
label define pa10a_bplrc_lbl 0302 `"Chagres"', add
label define pa10a_bplrc_lbl 0303 `"Donoso"', add
label define pa10a_bplrc_lbl 0304 `"Portobelo"', add
label define pa10a_bplrc_lbl 0305 `"Santa Isabel"', add
label define pa10a_bplrc_lbl 0401 `"Alanje"', add
label define pa10a_bplrc_lbl 0402 `"Baru"', add
label define pa10a_bplrc_lbl 0403 `"Boqueron"', add
label define pa10a_bplrc_lbl 0404 `"Boquete"', add
label define pa10a_bplrc_lbl 0405 `"Bugaba"', add
label define pa10a_bplrc_lbl 0406 `"David"', add
label define pa10a_bplrc_lbl 0407 `"Dolega"', add
label define pa10a_bplrc_lbl 0408 `"Gualaca"', add
label define pa10a_bplrc_lbl 0409 `"Remedios"', add
label define pa10a_bplrc_lbl 0410 `"Renacimiento"', add
label define pa10a_bplrc_lbl 0411 `"San Felix"', add
label define pa10a_bplrc_lbl 0412 `"San Lorenzo"', add
label define pa10a_bplrc_lbl 0413 `"Tole"', add
label define pa10a_bplrc_lbl 0501 `"Chepigana"', add
label define pa10a_bplrc_lbl 0502 `"Pinogana"', add
label define pa10a_bplrc_lbl 0601 `"Chitre"', add
label define pa10a_bplrc_lbl 0602 `"Las Minas"', add
label define pa10a_bplrc_lbl 0603 `"Los Pozos"', add
label define pa10a_bplrc_lbl 0604 `"Ocu"', add
label define pa10a_bplrc_lbl 0605 `"Parita"', add
label define pa10a_bplrc_lbl 0606 `"Pese"', add
label define pa10a_bplrc_lbl 0607 `"Santa Maria"', add
label define pa10a_bplrc_lbl 0701 `"Guarare"', add
label define pa10a_bplrc_lbl 0702 `"Las Tablas"', add
label define pa10a_bplrc_lbl 0703 `"Los Santos"', add
label define pa10a_bplrc_lbl 0704 `"Macaracas"', add
label define pa10a_bplrc_lbl 0705 `"Pedasi"', add
label define pa10a_bplrc_lbl 0706 `"Pocri"', add
label define pa10a_bplrc_lbl 0707 `"Tonosi"', add
label define pa10a_bplrc_lbl 0801 `"Arraijan"', add
label define pa10a_bplrc_lbl 0802 `"Balboa"', add
label define pa10a_bplrc_lbl 0803 `"Capira"', add
label define pa10a_bplrc_lbl 0804 `"Chame"', add
label define pa10a_bplrc_lbl 0805 `"Chepo"', add
label define pa10a_bplrc_lbl 0806 `"Chiman"', add
label define pa10a_bplrc_lbl 0807 `"La Chorrera"', add
label define pa10a_bplrc_lbl 0808 `"Panama"', add
label define pa10a_bplrc_lbl 0809 `"San Carlos"', add
label define pa10a_bplrc_lbl 0810 `"San Miguelito"', add
label define pa10a_bplrc_lbl 0811 `"Taboga"', add
label define pa10a_bplrc_lbl 0901 `"Atalaya"', add
label define pa10a_bplrc_lbl 0902 `"Calobre"', add
label define pa10a_bplrc_lbl 0903 `"Cañazas"', add
label define pa10a_bplrc_lbl 0904 `"La Mesa"', add
label define pa10a_bplrc_lbl 0905 `"Las Palmas"', add
label define pa10a_bplrc_lbl 0906 `"Montijo"', add
label define pa10a_bplrc_lbl 0907 `"Rio de Jesus"', add
label define pa10a_bplrc_lbl 0908 `"San Francisco"', add
label define pa10a_bplrc_lbl 0909 `"Santa Fe"', add
label define pa10a_bplrc_lbl 0910 `"Santiago"', add
label define pa10a_bplrc_lbl 0911 `"Sona"', add
label define pa10a_bplrc_lbl 0912 `"Mariato"', add
label define pa10a_bplrc_lbl 1001 `"Comarca Kuna Yala"', add
label define pa10a_bplrc_lbl 1101 `"Cemaco"', add
label define pa10a_bplrc_lbl 1102 `"Sambu"', add
label define pa10a_bplrc_lbl 1201 `"Besiko"', add
label define pa10a_bplrc_lbl 1202 `"Mirono"', add
label define pa10a_bplrc_lbl 1203 `"Mina"', add
label define pa10a_bplrc_lbl 1204 `"Nole Duima"', add
label define pa10a_bplrc_lbl 1205 `"Ñurum"', add
label define pa10a_bplrc_lbl 1206 `"Kankintu"', add
label define pa10a_bplrc_lbl 1207 `"Kusapin"', add
label define pa10a_bplrc_lbl 2101 `"Greenland"', add
label define pa10a_bplrc_lbl 2103 `"Canada"', add
label define pa10a_bplrc_lbl 2105 `"United States of America"', add
label define pa10a_bplrc_lbl 2107 `"Mexico"', add
label define pa10a_bplrc_lbl 2211 `"Guatemala"', add
label define pa10a_bplrc_lbl 2213 `"El Salvador"', add
label define pa10a_bplrc_lbl 2214 `"Honduras"', add
label define pa10a_bplrc_lbl 2217 `"Nicaragua"', add
label define pa10a_bplrc_lbl 2218 `"Costa Rica"', add
label define pa10a_bplrc_lbl 2231 `"Cuba"', add
label define pa10a_bplrc_lbl 2232 `"Dominican Republic"', add
label define pa10a_bplrc_lbl 2233 `"Haiti"', add
label define pa10a_bplrc_lbl 2244 `"Jamaica (Cayman Islands, Turks and Caicos)"', add
label define pa10a_bplrc_lbl 2275 `"Puerto Rico"', add
label define pa10a_bplrc_lbl 2299 `"Other Central America and Caribbean"', add
label define pa10a_bplrc_lbl 2311 `"Colombia"', add
label define pa10a_bplrc_lbl 2313 `"Ecuador"', add
label define pa10a_bplrc_lbl 2314 `"Venezuela"', add
label define pa10a_bplrc_lbl 2321 `"Brazil"', add
label define pa10a_bplrc_lbl 2331 `"Uruguay"', add
label define pa10a_bplrc_lbl 2333 `"Argentina"', add
label define pa10a_bplrc_lbl 2341 `"Bolivia"', add
label define pa10a_bplrc_lbl 2351 `"Peru"', add
label define pa10a_bplrc_lbl 2353 `"Chile"', add
label define pa10a_bplrc_lbl 2402 `"Germany"', add
label define pa10a_bplrc_lbl 2417 `"Spain"', add
label define pa10a_bplrc_lbl 2422 `"France"', add
label define pa10a_bplrc_lbl 2432 `"Italy"', add
label define pa10a_bplrc_lbl 2434 `"Netherlands"', add
label define pa10a_bplrc_lbl 2443 `"United Kingdom"', add
label define pa10a_bplrc_lbl 2447 `"Sweden"', add
label define pa10a_bplrc_lbl 2466 `"Ukraine"', add
label define pa10a_bplrc_lbl 2499 `"Other European countries"', add
label define pa10a_bplrc_lbl 2517 `"South Korea"', add
label define pa10a_bplrc_lbl 2518 `"China (Mainland)"', add
label define pa10a_bplrc_lbl 2521 `"China-Taiwan"', add
label define pa10a_bplrc_lbl 2527 `"Philippines"', add
label define pa10a_bplrc_lbl 2528 `"Hong Kong"', add
label define pa10a_bplrc_lbl 2531 `"India"', add
label define pa10a_bplrc_lbl 2538 `"Israel"', add
label define pa10a_bplrc_lbl 2548 `"Lebanon"', add
label define pa10a_bplrc_lbl 2599 `"Other Asia"', add
label define pa10a_bplrc_lbl 2600 `"Russia"', add
label define pa10a_bplrc_lbl 2799 `"African countries"', add
label define pa10a_bplrc_lbl 2899 `"Other countries"', add
label define pa10a_bplrc_lbl 9998 `"Unknown"', add
label values pa10a_bplrc pa10a_bplrc_lbl

label define pa10a_resdisrc_lbl 0101 `"Bocas del Toro"'
label define pa10a_resdisrc_lbl 0102 `"Changuinola"', add
label define pa10a_resdisrc_lbl 0103 `"Chiriqui Grande"', add
label define pa10a_resdisrc_lbl 0201 `"Aguadulce"', add
label define pa10a_resdisrc_lbl 0202 `"Anton"', add
label define pa10a_resdisrc_lbl 0203 `"La Pintada"', add
label define pa10a_resdisrc_lbl 0204 `"Nata"', add
label define pa10a_resdisrc_lbl 0205 `"Ola"', add
label define pa10a_resdisrc_lbl 0206 `"Penonome"', add
label define pa10a_resdisrc_lbl 0301 `"Colon"', add
label define pa10a_resdisrc_lbl 0302 `"Chagres"', add
label define pa10a_resdisrc_lbl 0303 `"Donoso"', add
label define pa10a_resdisrc_lbl 0304 `"Portobelo"', add
label define pa10a_resdisrc_lbl 0305 `"Santa Isabel"', add
label define pa10a_resdisrc_lbl 0401 `"Alanje"', add
label define pa10a_resdisrc_lbl 0402 `"Baru"', add
label define pa10a_resdisrc_lbl 0403 `"Boqueron"', add
label define pa10a_resdisrc_lbl 0404 `"Boquete"', add
label define pa10a_resdisrc_lbl 0405 `"Bugaba"', add
label define pa10a_resdisrc_lbl 0406 `"David"', add
label define pa10a_resdisrc_lbl 0407 `"Dolega"', add
label define pa10a_resdisrc_lbl 0408 `"Gualaca"', add
label define pa10a_resdisrc_lbl 0409 `"Remedios"', add
label define pa10a_resdisrc_lbl 0410 `"Renacimiento"', add
label define pa10a_resdisrc_lbl 0411 `"San Felix"', add
label define pa10a_resdisrc_lbl 0412 `"San Lorenzo"', add
label define pa10a_resdisrc_lbl 0413 `"Tole"', add
label define pa10a_resdisrc_lbl 0501 `"Chepigana"', add
label define pa10a_resdisrc_lbl 0502 `"Pinogana"', add
label define pa10a_resdisrc_lbl 0601 `"Chitre"', add
label define pa10a_resdisrc_lbl 0602 `"Las Minas"', add
label define pa10a_resdisrc_lbl 0603 `"Los Pozos"', add
label define pa10a_resdisrc_lbl 0604 `"Ocu"', add
label define pa10a_resdisrc_lbl 0605 `"Parita"', add
label define pa10a_resdisrc_lbl 0606 `"Pese"', add
label define pa10a_resdisrc_lbl 0607 `"Santa Maria"', add
label define pa10a_resdisrc_lbl 0701 `"Guarare"', add
label define pa10a_resdisrc_lbl 0702 `"Las Tablas"', add
label define pa10a_resdisrc_lbl 0703 `"Los Santos"', add
label define pa10a_resdisrc_lbl 0704 `"Macaracas"', add
label define pa10a_resdisrc_lbl 0705 `"Pedasi"', add
label define pa10a_resdisrc_lbl 0706 `"Pocri"', add
label define pa10a_resdisrc_lbl 0707 `"Tonosi"', add
label define pa10a_resdisrc_lbl 0801 `"Arraijan"', add
label define pa10a_resdisrc_lbl 0802 `"Balboa"', add
label define pa10a_resdisrc_lbl 0803 `"Capira"', add
label define pa10a_resdisrc_lbl 0804 `"Chame"', add
label define pa10a_resdisrc_lbl 0805 `"Chepo"', add
label define pa10a_resdisrc_lbl 0806 `"Chiman"', add
label define pa10a_resdisrc_lbl 0807 `"La Chorrera"', add
label define pa10a_resdisrc_lbl 0808 `"Panama"', add
label define pa10a_resdisrc_lbl 0809 `"San Carlos"', add
label define pa10a_resdisrc_lbl 0810 `"San Miguelito"', add
label define pa10a_resdisrc_lbl 0811 `"Taboga"', add
label define pa10a_resdisrc_lbl 0901 `"Atalaya"', add
label define pa10a_resdisrc_lbl 0902 `"Calobre"', add
label define pa10a_resdisrc_lbl 0903 `"Cañazas"', add
label define pa10a_resdisrc_lbl 0904 `"La Mesa"', add
label define pa10a_resdisrc_lbl 0905 `"Las Palmas"', add
label define pa10a_resdisrc_lbl 0906 `"Montijo"', add
label define pa10a_resdisrc_lbl 0907 `"Rio de Jesus"', add
label define pa10a_resdisrc_lbl 0908 `"San Francisco"', add
label define pa10a_resdisrc_lbl 0909 `"Santa Fe"', add
label define pa10a_resdisrc_lbl 0910 `"Santiago"', add
label define pa10a_resdisrc_lbl 0911 `"Sona"', add
label define pa10a_resdisrc_lbl 0912 `"Mariato"', add
label define pa10a_resdisrc_lbl 1001 `"Comarca Kuna Yala"', add
label define pa10a_resdisrc_lbl 1101 `"Cemaco"', add
label define pa10a_resdisrc_lbl 1102 `"Sambu"', add
label define pa10a_resdisrc_lbl 1201 `"Besiko"', add
label define pa10a_resdisrc_lbl 1202 `"Mirono"', add
label define pa10a_resdisrc_lbl 1203 `"Mina"', add
label define pa10a_resdisrc_lbl 1204 `"Nole Duima"', add
label define pa10a_resdisrc_lbl 1205 `"Ñurum"', add
label define pa10a_resdisrc_lbl 1206 `"Kankintu"', add
label define pa10a_resdisrc_lbl 1207 `"Kusapin"', add
label define pa10a_resdisrc_lbl 9998 `"In another country"', add
label define pa10a_resdisrc_lbl 9999 `"Unknown"', add
label values pa10a_resdisrc pa10a_resdisrc_lbl

label define pa10a_prvdisrc_lbl 0101 `"Bocas del Toro"'
label define pa10a_prvdisrc_lbl 0102 `"Changuinola"', add
label define pa10a_prvdisrc_lbl 0103 `"Chiriqui Grande"', add
label define pa10a_prvdisrc_lbl 0201 `"Aguadulce"', add
label define pa10a_prvdisrc_lbl 0202 `"Anton"', add
label define pa10a_prvdisrc_lbl 0203 `"La Pintada"', add
label define pa10a_prvdisrc_lbl 0204 `"Nata"', add
label define pa10a_prvdisrc_lbl 0205 `"Ola"', add
label define pa10a_prvdisrc_lbl 0206 `"Penonome"', add
label define pa10a_prvdisrc_lbl 0301 `"Colon"', add
label define pa10a_prvdisrc_lbl 0302 `"Chagres"', add
label define pa10a_prvdisrc_lbl 0303 `"Donoso"', add
label define pa10a_prvdisrc_lbl 0304 `"Portobelo"', add
label define pa10a_prvdisrc_lbl 0305 `"Santa Isabel"', add
label define pa10a_prvdisrc_lbl 0401 `"Alanje"', add
label define pa10a_prvdisrc_lbl 0402 `"Baru"', add
label define pa10a_prvdisrc_lbl 0403 `"Boqueron"', add
label define pa10a_prvdisrc_lbl 0404 `"Boquete"', add
label define pa10a_prvdisrc_lbl 0405 `"Bugaba"', add
label define pa10a_prvdisrc_lbl 0406 `"David"', add
label define pa10a_prvdisrc_lbl 0407 `"Dolega"', add
label define pa10a_prvdisrc_lbl 0408 `"Gualaca"', add
label define pa10a_prvdisrc_lbl 0409 `"Remedios"', add
label define pa10a_prvdisrc_lbl 0410 `"Renacimiento"', add
label define pa10a_prvdisrc_lbl 0411 `"San Felix"', add
label define pa10a_prvdisrc_lbl 0412 `"San Lorenzo"', add
label define pa10a_prvdisrc_lbl 0413 `"Tole"', add
label define pa10a_prvdisrc_lbl 0501 `"Chepigana"', add
label define pa10a_prvdisrc_lbl 0502 `"Pinogana"', add
label define pa10a_prvdisrc_lbl 0601 `"Chitre"', add
label define pa10a_prvdisrc_lbl 0602 `"Las Minas"', add
label define pa10a_prvdisrc_lbl 0603 `"Los Pozos"', add
label define pa10a_prvdisrc_lbl 0604 `"Ocu"', add
label define pa10a_prvdisrc_lbl 0605 `"Parita"', add
label define pa10a_prvdisrc_lbl 0606 `"Pese"', add
label define pa10a_prvdisrc_lbl 0607 `"Santa Maria"', add
label define pa10a_prvdisrc_lbl 0701 `"Guarare"', add
label define pa10a_prvdisrc_lbl 0702 `"Las Tablas"', add
label define pa10a_prvdisrc_lbl 0703 `"Los Santos"', add
label define pa10a_prvdisrc_lbl 0704 `"Macaracas"', add
label define pa10a_prvdisrc_lbl 0705 `"Pedasi"', add
label define pa10a_prvdisrc_lbl 0706 `"Pocri"', add
label define pa10a_prvdisrc_lbl 0707 `"Tonosi"', add
label define pa10a_prvdisrc_lbl 0801 `"Arraijan"', add
label define pa10a_prvdisrc_lbl 0802 `"Balboa"', add
label define pa10a_prvdisrc_lbl 0803 `"Capira"', add
label define pa10a_prvdisrc_lbl 0804 `"Chame"', add
label define pa10a_prvdisrc_lbl 0805 `"Chepo"', add
label define pa10a_prvdisrc_lbl 0806 `"Chiman"', add
label define pa10a_prvdisrc_lbl 0807 `"La Chorrera"', add
label define pa10a_prvdisrc_lbl 0808 `"Panama"', add
label define pa10a_prvdisrc_lbl 0809 `"San Carlos"', add
label define pa10a_prvdisrc_lbl 0810 `"San Miguelito"', add
label define pa10a_prvdisrc_lbl 0811 `"Taboga"', add
label define pa10a_prvdisrc_lbl 0901 `"Atalaya"', add
label define pa10a_prvdisrc_lbl 0902 `"Calobre"', add
label define pa10a_prvdisrc_lbl 0903 `"Cañazas"', add
label define pa10a_prvdisrc_lbl 0904 `"La Mesa"', add
label define pa10a_prvdisrc_lbl 0905 `"Las Palmas"', add
label define pa10a_prvdisrc_lbl 0906 `"Montijo"', add
label define pa10a_prvdisrc_lbl 0907 `"Rio de Jesus"', add
label define pa10a_prvdisrc_lbl 0908 `"San Francisco"', add
label define pa10a_prvdisrc_lbl 0909 `"Santa Fe"', add
label define pa10a_prvdisrc_lbl 0910 `"Santiago"', add
label define pa10a_prvdisrc_lbl 0911 `"Sona"', add
label define pa10a_prvdisrc_lbl 0912 `"Mariato"', add
label define pa10a_prvdisrc_lbl 1001 `"Comarca Kuna Yala"', add
label define pa10a_prvdisrc_lbl 1101 `"Cemaco"', add
label define pa10a_prvdisrc_lbl 1102 `"Sambu"', add
label define pa10a_prvdisrc_lbl 1201 `"Besiko"', add
label define pa10a_prvdisrc_lbl 1202 `"Mirono"', add
label define pa10a_prvdisrc_lbl 1203 `"Mina"', add
label define pa10a_prvdisrc_lbl 1204 `"Nole Duima"', add
label define pa10a_prvdisrc_lbl 1205 `"Ñurum"', add
label define pa10a_prvdisrc_lbl 1206 `"Kankintu"', add
label define pa10a_prvdisrc_lbl 1207 `"Kusapin"', add
label define pa10a_prvdisrc_lbl 2103 `"Canada"', add
label define pa10a_prvdisrc_lbl 2105 `"United States of America"', add
label define pa10a_prvdisrc_lbl 2107 `"Mexico"', add
label define pa10a_prvdisrc_lbl 2211 `"Guatemala"', add
label define pa10a_prvdisrc_lbl 2213 `"El Salvador"', add
label define pa10a_prvdisrc_lbl 2214 `"Honduras"', add
label define pa10a_prvdisrc_lbl 2217 `"Nicaragua"', add
label define pa10a_prvdisrc_lbl 2218 `"Costa Rica"', add
label define pa10a_prvdisrc_lbl 2231 `"Cuba"', add
label define pa10a_prvdisrc_lbl 2232 `"Dominican Republic"', add
label define pa10a_prvdisrc_lbl 2244 `"Jamaica (Cayman Islands, Turks and Caicos)"', add
label define pa10a_prvdisrc_lbl 2275 `"Puerto Rico"', add
label define pa10a_prvdisrc_lbl 2299 `"Other Central America and Caribbean"', add
label define pa10a_prvdisrc_lbl 2311 `"Colombia"', add
label define pa10a_prvdisrc_lbl 2313 `"Ecuador"', add
label define pa10a_prvdisrc_lbl 2314 `"Venezuela"', add
label define pa10a_prvdisrc_lbl 2321 `"Brazil"', add
label define pa10a_prvdisrc_lbl 2331 `"Uruguay"', add
label define pa10a_prvdisrc_lbl 2333 `"Argentina"', add
label define pa10a_prvdisrc_lbl 2341 `"Bolivia"', add
label define pa10a_prvdisrc_lbl 2351 `"Peru"', add
label define pa10a_prvdisrc_lbl 2353 `"Chile"', add
label define pa10a_prvdisrc_lbl 2443 `"United Kingdom"', add
label define pa10a_prvdisrc_lbl 2432 `"Italy"', add
label define pa10a_prvdisrc_lbl 2422 `"France"', add
label define pa10a_prvdisrc_lbl 2417 `"Spain"', add
label define pa10a_prvdisrc_lbl 2402 `"Germany"', add
label define pa10a_prvdisrc_lbl 2499 `"Other European countries"', add
label define pa10a_prvdisrc_lbl 2518 `"China (Mainland)"', add
label define pa10a_prvdisrc_lbl 2521 `"China-Taiwan"', add
label define pa10a_prvdisrc_lbl 2531 `"India"', add
label define pa10a_prvdisrc_lbl 2538 `"Israel"', add
label define pa10a_prvdisrc_lbl 2548 `"Lebanon"', add
label define pa10a_prvdisrc_lbl 2599 `"Other Asia"', add
label define pa10a_prvdisrc_lbl 2600 `"Russia"', add
label define pa10a_prvdisrc_lbl 2899 `"Other countries"', add
label define pa10a_prvdisrc_lbl 9998 `"Unknown"', add
label define pa10a_prvdisrc_lbl 9999 `"NIU (not in universe)"', add
label values pa10a_prvdisrc pa10a_prvdisrc_lbl


