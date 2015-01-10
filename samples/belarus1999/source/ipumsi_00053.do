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
  long    geo1a_by        47-52    ///
  byte    cityby          53-53    ///
  byte    ownrshp         54-54    ///
  int     ownrshpd        55-57    ///
  byte    electrc         58-58    ///
  byte    watsup          59-60    ///
  byte    phone           61-61    ///
  byte    hotwatr         62-62    ///
  byte    heat            63-63    ///
  byte    rooms           64-65    ///
  byte    toilet          66-67    ///
  byte    bath            68-68    ///
  int     wall            69-71    ///
  int     lvarea          72-74    ///
  byte    hhtype          75-76    ///
  byte    nfams           77-77    ///
  byte    ncoupls         78-78    ///
  byte    nmothrs         79-79    ///
  byte    nfathrs         80-80    ///
  int     headloc         81-83    ///
  long    by99a_dwnum     84-89    ///
  byte    by99a_pern      90-91    ///
  byte    by99a_fsplmh    92-92    ///
  byte    by99a_region    93-93    ///
  byte    by99a_urban     94-94    ///
  byte    by99a_dwtype    95-96    ///
  byte    by99a_bltyr     97-97    ///
  byte    by99a_walls     98-98    ///
  byte    by99a_elect     99-99    ///
  byte    by99a_elcook    100-100  ///
  byte    by99a_gaspipe   101-101  ///
  byte    by99a_gasbott   102-102  ///
  byte    by99a_heatcen   103-103  ///
  byte    by99a_headind   104-104  ///
  byte    by99a_heatstv   105-105  ///
  byte    by99a_pipewat   106-106  ///
  byte    by99a_toilet    107-107  ///
  byte    by99a_bath      108-108  ///
  byte    by99a_hwatcen   109-109  ///
  byte    by99a_hwatind   110-110  ///
  byte    by99a_phone     111-111  ///
  byte    by99a_popsize   112-112  ///
  int     by99a_pernumoh  113-115  ///
  byte    by99a_owner     116-116  ///
  byte    by99a_rooms     117-118  ///
  int     by99a_uspace    119-121  ///
  int     by99a_livspace  122-124  ///
  int     pernum          125-127  ///
  float   wtper           128-135  ///
  int     momloc          136-138  ///
  int     poploc          139-141  ///
  int     sploc           142-144  ///
  byte    parrule         145-146  ///
  byte    sprule          147-148  ///
  byte    stepmom         149-149  ///
  byte    steppop         150-150  ///
  byte    polymal         151-151  ///
  byte    poly2nd         152-152  ///
  byte    famunit         153-154  ///
  byte    famsize         155-156  ///
  byte    nchild          157-157  ///
  byte    nchlt5          158-158  ///
  byte    eldch           159-160  ///
  byte    yngch           161-162  ///
  byte    relate          163-163  ///
  int     related         164-167  ///
  byte    erelate         168-169  ///
  int     age             170-172  ///
  byte    age2            173-174  ///
  byte    sex             175-175  ///
  byte    marst           176-176  ///
  int     marstd          177-179  ///
  byte    emarst          180-180  ///
  byte    consens         181-181  ///
  byte    chborn          182-183  ///
  byte    chsurv          184-185  ///
  byte    chplan          186-187  ///
  byte    homechd         188-189  ///
  byte    awaychd         190-191  ///
  byte    nativty         192-192  ///
  byte    bplby           193-194  ///
  byte    citizen         195-195  ///
  long    nation          196-200  ///
  int     ethnby          201-203  ///
  byte    langby          204-205  ///
  int     langby2         206-208  ///
  int     mtngby          209-211  ///
  byte    school          212-212  ///
  byte    lit             213-213  ///
  byte    edattan         214-214  ///
  int     edattand        215-217  ///
  byte    educby          218-219  ///
  byte    eedatta         220-221  ///
  byte    empstat         222-222  ///
  int     empstatd        223-225  ///
  int     eempsta         226-228  ///
  byte    occisco         229-230  ///
  int     occ             231-234  ///
  byte    classwk         235-235  ///
  int     classwkd        236-238  ///
  byte    eclaswk         239-239  ///
  byte    mgratep         240-241  ///
  long    mgctry1         242-246  ///
  byte    mgyrs1          247-248  ///
  byte    migby           249-250  ///
  byte    by99a_pernum    251-252  ///
  byte    by99a_pernumod  253-254  ///
  byte    by99a_relate    255-256  ///
  byte    by99a_parloc    257-258  ///
  byte    by99a_sex       259-259  ///
  int     by99a_age       260-262  ///
  int     by99a_bpl       263-265  ///
  int     by99a_langmo    266-268  ///
  int     by99a_langsp    269-271  ///
  int     by99a_langoth   272-274  ///
  byte    by99a_citiz     275-275  ///
  int     by99a_citizoth  276-278  ///
  int     by99a_ethnic    279-281  ///
  byte    by99a_marst     282-282  ///
  byte    by99a_sploc     283-284  ///
  byte    by99a_student   285-285  ///
  byte    by99a_presch    286-286  ///
  byte    by99a_edlev     287-287  ///
  byte    by99a_degree    288-288  ///
  byte    by99a_workinc   289-289  ///
  byte    by99a_workplot  290-290  ///
  byte    by99a_pension   291-291  ///
  byte    by99a_scholar   292-292  ///
  byte    by99a_ben       293-293  ///
  byte    by99a_benunem   294-294  ///
  byte    by99a_gov       295-295  ///
  byte    by99a_rent      296-296  ///
  byte    by99a_interest  297-297  ///
  byte    by99a_savings   298-298  ///
  byte    by99a_depend    299-299  ///
  byte    by99a_incoth    300-300  ///
  byte    by99a_work      301-301  ///
  byte    by99a_classwk   302-302  ///
  byte    by99a_looking   303-303  ///
  byte    by99a_startnow  304-304  ///
  byte    by99a_unemp     305-305  ///
  byte    by99a_whynot    306-306  ///
  byte    by99a_nonmig    307-307  ///
  int     by99a_resdur    308-311  ///
  int     by99a_prevres   312-314  ///
  byte    by99a_prevurb   315-315  ///
  byte    by99a_chborn    316-317  ///
  byte    by99a_chsurv    318-319  ///
  byte    by99a_chaway    320-321  ///
  byte    by99a_chmax     322-323  ///
  byte    by99a_pernumop  324-325  ///
  byte    by99a_occ1      326-326  ///
  byte    by99a_occ2      327-328  ///
  using `"ipumsi_00053.dat"'

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
label var geo1a_by       `"Region, Belarus [Level 1; consistent boundaries over time]"'
label var cityby         `"City status, Belarus"'
label var ownrshp        `"Ownership of dwelling [general version]"'
label var ownrshpd       `"Ownership of dwelling [detailed version]"'
label var electrc        `"Electricity"'
label var watsup         `"Water supply"'
label var phone          `"Telephone availability"'
label var hotwatr        `"Hot water heater"'
label var heat           `"Central heating"'
label var rooms          `"Number of rooms"'
label var toilet         `"Toilet"'
label var bath           `"Bathing facilities"'
label var wall           `"Wall or building material"'
label var lvarea         `"Living area in square meters"'
label var hhtype         `"Household classification"'
label var nfams          `"Number of families in household"'
label var ncoupls        `"Number of married couples in household"'
label var nmothrs        `"Number of mothers in household"'
label var nfathrs        `"Number of fathers in household"'
label var headloc        `"Head's location in household"'
label var by99a_dwnum    `"Dwelling number"'
label var by99a_pern     `"Number of persons in household"'
label var by99a_fsplmh   `"Dwelling created by splitting apart a multi-household dwelling"'
label var by99a_region   `"Region (oblast)"'
label var by99a_urban    `"Urban/rural"'
label var by99a_dwtype   `"Dwelling type"'
label var by99a_bltyr    `"Period of construction"'
label var by99a_walls    `"Outer wall materials"'
label var by99a_elect    `"Facilities: electricity"'
label var by99a_elcook   `"Facilities: floor electric cooker"'
label var by99a_gaspipe  `"Facilities: piped gas"'
label var by99a_gasbott  `"Facilities: bottled condensed gas"'
label var by99a_heatcen  `"Facilities: central or district heating"'
label var by99a_headind  `"Facilities: heating from individual installation"'
label var by99a_heatstv  `"Facilities: stove heating"'
label var by99a_pipewat  `"Facilities: piped water"'
label var by99a_toilet   `"Facilities: flush toilet"'
label var by99a_bath     `"Facilities: bath or shower"'
label var by99a_hwatcen  `"Facilities: central hot water supply"'
label var by99a_hwatind  `"Facilities: hot water from individual boilers"'
label var by99a_phone    `"Facilities: telephone"'
label var by99a_popsize  `"City with 100,000 population"'
label var by99a_pernumoh `"Person number (within the dwelling) of the first household member"'
label var by99a_owner    `"Dwelling ownership"'
label var by99a_rooms    `"Rooms"'
label var by99a_uspace   `"Useful space (square meters)"'
label var by99a_livspace `"Living space (square meters)"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var momloc         `"Mother's location in household"'
label var poploc         `"Father's location in household"'
label var sploc          `"Spouse's location in household"'
label var parrule        `"Rule for linking parent"'
label var sprule         `"Rule for linking spouse"'
label var stepmom        `"Probable stepmother"'
label var steppop        `"Probable stepfather"'
label var polymal        `"Man with more than one wife linked"'
label var poly2nd        `"Woman is second or higher order wife"'
label var famunit        `"Family unit membership"'
label var famsize        `"Number of own family members in household"'
label var nchild         `"Number of own children in household"'
label var nchlt5         `"Number of own children under age 5 in household"'
label var eldch          `"Age of eldest own child in household"'
label var yngch          `"Age of youngest own child in household"'
label var relate         `"Relationship to household head [general version]"'
label var related        `"Relationship to household head [detailed version]"'
label var erelate        `"Relationship to head, Europe"'
label var age            `"Age"'
label var age2           `"Age, grouped into intervals"'
label var sex            `"Sex"'
label var marst          `"Marital status [general version]"'
label var marstd         `"Marital status [detailed version]"'
label var emarst         `"Marital status, Europe"'
label var consens        `"Consensual union"'
label var chborn         `"Children ever born"'
label var chsurv         `"Children surviving"'
label var chplan         `"Number of children planning to have"'
label var homechd        `"Number of own children in household"'
label var awaychd        `"Number of own children living elsewhere"'
label var nativty        `"Nativity status"'
label var bplby          `"Region of birth, Belarus"'
label var citizen        `"Citizenship"'
label var nation         `"Country of citizenship"'
label var ethnby         `"Ethnicity, Belarus"'
label var langby         `"Language spoken at home, Belarus"'
label var langby2        `"Second language spoken, Belarus"'
label var mtngby         `"Mother tongue, Belarus"'
label var school         `"School attendance"'
label var lit            `"Literacy"'
label var edattan        `"Educational attainment, international recode [general version]"'
label var edattand       `"Educational attainment, international recode [detailed version]"'
label var educby         `"Educational attainment, Belarus"'
label var eedatta        `"Educational attainment, Europe"'
label var empstat        `"Employment status [general version]"'
label var empstatd       `"Employment status [detailed version]"'
label var eempsta        `"Employment status, Europe"'
label var occisco        `"Occupation, ISCO general"'
label var occ            `"Occupation, unrecoded"'
label var classwk        `"Class of worker [general version]"'
label var classwkd       `"Class of worker [detailed version]"'
label var eclaswk        `"Class of worker, Europe"'
label var mgratep        `"Migration status, previous residence"'
label var mgctry1        `"Country of previous residence"'
label var mgyrs1         `"Years residing in current locality"'
label var migby          `"Region of previous residence, Belarus"'
label var by99a_pernum   `"Person number (within household)"'
label var by99a_pernumod `"Person number (within the dwelling)"'
label var by99a_relate   `"Relationship to person 1 in the household"'
label var by99a_parloc   `"Person number of mother or father"'
label var by99a_sex      `"Sex"'
label var by99a_age      `"Age"'
label var by99a_bpl      `"Region or country of birth"'
label var by99a_langmo   `"Mother tongue"'
label var by99a_langsp   `"Spoken language"'
label var by99a_langoth  `"Other language spoken fluently"'
label var by99a_citiz    `"Citizenship"'
label var by99a_citizoth `"Country of citizenship"'
label var by99a_ethnic   `"Ethnicity"'
label var by99a_marst    `"Marital status"'
label var by99a_sploc    `"Person number of spouse"'
label var by99a_student  `"Student status"'
label var by99a_presch   `"Any preschool institution"'
label var by99a_edlev    `"Education"'
label var by99a_degree   `"Academic degree"'
label var by99a_workinc  `"Income source: work (other than work in own personal subsidiary plot)"'
label var by99a_workplot `"Income source: work in own personal subsidiary plot"'
label var by99a_pension  `"Income source: pension"'
label var by99a_scholar  `"Income source: scholarship"'
label var by99a_ben      `"Income source: benefit (other than unemployment benefit)"'
label var by99a_benunem  `"Income source: unemployment benefit"'
label var by99a_gov      `"Income source: other government support"'
label var by99a_rent     `"Income source: rental income"'
label var by99a_interest `"Income source: interest on deposits and securities, dividends"'
label var by99a_savings  `"Income source: savings"'
label var by99a_depend   `"Income source: dependent"'
label var by99a_incoth   `"Income source: other"'
label var by99a_work     `"Did person have a job or business?"'
label var by99a_classwk  `"Class of worker"'
label var by99a_looking  `"Did person look for a job?"'
label var by99a_startnow `"If found a job, could start working in the nearest 2 weeks?"'
label var by99a_unemp    `"Registered with the employment agency as unemployed"'
label var by99a_whynot   `"Reason for not looking for a job"'
label var by99a_nonmig   `"Has continuously been living in a given place since birth"'
label var by99a_resdur   `"Year began permanently living this settlement or rural area"'
label var by99a_prevres  `"Previous place of residence"'
label var by99a_prevurb  `"Migrated from urban place"'
label var by99a_chborn   `"Children ever born"'
label var by99a_chsurv   `"Children surviving"'
label var by99a_chaway   `"Children living separately"'
label var by99a_chmax    `"How many children planning to have (including those surviving)"'
label var by99a_pernumop `"Person number (within the dwelling) of the first household member"'
label var by99a_occ1     `"Occupation, 1 digit"'
label var by99a_occ2     `"Occupation, 2 digits"'

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

label define geo1a_by_lbl 112001 `"Brest"'
label define geo1a_by_lbl 112002 `"Vitebsk"', add
label define geo1a_by_lbl 112003 `"Gomel"', add
label define geo1a_by_lbl 112004 `"Grodno"', add
label define geo1a_by_lbl 112006 `"Minsk"', add
label define geo1a_by_lbl 112007 `"Mogilev"', add
label values geo1a_by geo1a_by_lbl

label define cityby_lbl 1 `"City with 100,000+ population"'
label define cityby_lbl 2 `"Not in city with 100,000 population"', add
label define cityby_lbl 9 `"Unknown"', add
label values cityby cityby_lbl

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

label define phone_lbl 0 `"NIU (not in universe)"'
label define phone_lbl 1 `"No"', add
label define phone_lbl 2 `"Yes"', add
label define phone_lbl 9 `"Unknown/missing"', add
label values phone phone_lbl

label define hotwatr_lbl 0 `"NIU (not in universe)"'
label define hotwatr_lbl 1 `"No"', add
label define hotwatr_lbl 2 `"Yes"', add
label define hotwatr_lbl 9 `"Unknown/missing"', add
label values hotwatr hotwatr_lbl

label define heat_lbl 0 `"NIU (not in universe)"'
label define heat_lbl 1 `"No heating"', add
label define heat_lbl 2 `"Central heating, not specified"', add
label define heat_lbl 3 `"Collective central heating"', add
label define heat_lbl 4 `"Individual central heating"', add
label define heat_lbl 5 `"Other heating, not central"', add
label define heat_lbl 6 `"No central heating/heating unknown"', add
label define heat_lbl 9 `"Unknown"', add
label values heat heat_lbl

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

label define toilet_lbl 00 `"NIU (not in universe)"'
label define toilet_lbl 10 `"No toilet"', add
label define toilet_lbl 11 `"No flush toilet"', add
label define toilet_lbl 20 `"Have toilet, type not specified"', add
label define toilet_lbl 21 `"Flush toilet"', add
label define toilet_lbl 22 `"Non-flush, latrine"', add
label define toilet_lbl 23 `"Non-flush, other and unspecified"', add
label define toilet_lbl 99 `"Unknown"', add
label values toilet toilet_lbl

label define bath_lbl 0 `"NIU (not in universe)"'
label define bath_lbl 1 `"No bathing facility"', add
label define bath_lbl 2 `"Have bathing facility, exclusivity not specified"', add
label define bath_lbl 3 `"Have bathing facility, exclusive use"', add
label define bath_lbl 4 `"Have bathing facility, shared use"', add
label define bath_lbl 9 `"Unknown"', add
label values bath bath_lbl

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

label define lvarea_lbl 000 `"NIU (not in universe)"'
label define lvarea_lbl 001 `"Interval beginning at 1 square meter"', add
label define lvarea_lbl 002 `"2"', add
label define lvarea_lbl 003 `"3"', add
label define lvarea_lbl 004 `"4"', add
label define lvarea_lbl 005 `"5"', add
label define lvarea_lbl 006 `"6"', add
label define lvarea_lbl 007 `"7"', add
label define lvarea_lbl 008 `"8"', add
label define lvarea_lbl 009 `"9"', add
label define lvarea_lbl 010 `"10"', add
label define lvarea_lbl 011 `"11"', add
label define lvarea_lbl 012 `"12"', add
label define lvarea_lbl 013 `"13"', add
label define lvarea_lbl 014 `"14"', add
label define lvarea_lbl 015 `"15"', add
label define lvarea_lbl 016 `"16"', add
label define lvarea_lbl 017 `"17"', add
label define lvarea_lbl 018 `"18"', add
label define lvarea_lbl 019 `"19"', add
label define lvarea_lbl 020 `"20"', add
label define lvarea_lbl 021 `"21"', add
label define lvarea_lbl 022 `"22"', add
label define lvarea_lbl 023 `"23"', add
label define lvarea_lbl 024 `"24"', add
label define lvarea_lbl 025 `"25"', add
label define lvarea_lbl 026 `"26"', add
label define lvarea_lbl 027 `"27"', add
label define lvarea_lbl 028 `"28"', add
label define lvarea_lbl 029 `"29"', add
label define lvarea_lbl 030 `"30"', add
label define lvarea_lbl 031 `"31"', add
label define lvarea_lbl 032 `"32"', add
label define lvarea_lbl 033 `"33"', add
label define lvarea_lbl 034 `"34"', add
label define lvarea_lbl 035 `"35"', add
label define lvarea_lbl 036 `"36"', add
label define lvarea_lbl 037 `"37"', add
label define lvarea_lbl 038 `"38"', add
label define lvarea_lbl 039 `"39"', add
label define lvarea_lbl 040 `"40"', add
label define lvarea_lbl 041 `"41"', add
label define lvarea_lbl 042 `"42"', add
label define lvarea_lbl 043 `"43"', add
label define lvarea_lbl 044 `"44"', add
label define lvarea_lbl 045 `"45"', add
label define lvarea_lbl 046 `"46"', add
label define lvarea_lbl 047 `"47"', add
label define lvarea_lbl 048 `"48"', add
label define lvarea_lbl 049 `"49"', add
label define lvarea_lbl 050 `"50"', add
label define lvarea_lbl 051 `"51"', add
label define lvarea_lbl 052 `"52"', add
label define lvarea_lbl 053 `"53"', add
label define lvarea_lbl 054 `"54"', add
label define lvarea_lbl 055 `"55"', add
label define lvarea_lbl 056 `"56"', add
label define lvarea_lbl 057 `"57"', add
label define lvarea_lbl 058 `"58"', add
label define lvarea_lbl 059 `"59"', add
label define lvarea_lbl 060 `"60"', add
label define lvarea_lbl 061 `"61"', add
label define lvarea_lbl 062 `"62"', add
label define lvarea_lbl 063 `"63"', add
label define lvarea_lbl 064 `"64"', add
label define lvarea_lbl 065 `"65"', add
label define lvarea_lbl 066 `"66"', add
label define lvarea_lbl 067 `"67"', add
label define lvarea_lbl 068 `"68"', add
label define lvarea_lbl 069 `"69"', add
label define lvarea_lbl 070 `"70"', add
label define lvarea_lbl 071 `"71"', add
label define lvarea_lbl 072 `"72"', add
label define lvarea_lbl 073 `"73"', add
label define lvarea_lbl 074 `"74"', add
label define lvarea_lbl 075 `"75"', add
label define lvarea_lbl 076 `"76"', add
label define lvarea_lbl 077 `"77"', add
label define lvarea_lbl 078 `"78"', add
label define lvarea_lbl 079 `"79"', add
label define lvarea_lbl 080 `"80"', add
label define lvarea_lbl 081 `"81"', add
label define lvarea_lbl 082 `"82"', add
label define lvarea_lbl 083 `"83"', add
label define lvarea_lbl 084 `"84"', add
label define lvarea_lbl 085 `"85"', add
label define lvarea_lbl 086 `"86"', add
label define lvarea_lbl 087 `"87"', add
label define lvarea_lbl 088 `"88"', add
label define lvarea_lbl 089 `"89"', add
label define lvarea_lbl 090 `"90"', add
label define lvarea_lbl 091 `"91"', add
label define lvarea_lbl 092 `"92"', add
label define lvarea_lbl 093 `"93"', add
label define lvarea_lbl 094 `"94"', add
label define lvarea_lbl 095 `"95"', add
label define lvarea_lbl 096 `"96"', add
label define lvarea_lbl 097 `"97"', add
label define lvarea_lbl 098 `"98"', add
label define lvarea_lbl 099 `"99"', add
label define lvarea_lbl 100 `"100"', add
label define lvarea_lbl 101 `"101"', add
label define lvarea_lbl 102 `"102"', add
label define lvarea_lbl 103 `"103"', add
label define lvarea_lbl 104 `"104"', add
label define lvarea_lbl 105 `"105"', add
label define lvarea_lbl 106 `"106"', add
label define lvarea_lbl 107 `"107"', add
label define lvarea_lbl 108 `"108"', add
label define lvarea_lbl 109 `"109"', add
label define lvarea_lbl 110 `"110"', add
label define lvarea_lbl 111 `"111"', add
label define lvarea_lbl 112 `"112"', add
label define lvarea_lbl 113 `"113"', add
label define lvarea_lbl 114 `"114"', add
label define lvarea_lbl 115 `"115"', add
label define lvarea_lbl 116 `"116"', add
label define lvarea_lbl 117 `"117"', add
label define lvarea_lbl 118 `"118"', add
label define lvarea_lbl 119 `"119"', add
label define lvarea_lbl 120 `"120"', add
label define lvarea_lbl 121 `"121"', add
label define lvarea_lbl 122 `"122"', add
label define lvarea_lbl 123 `"123"', add
label define lvarea_lbl 124 `"124"', add
label define lvarea_lbl 125 `"125"', add
label define lvarea_lbl 126 `"126"', add
label define lvarea_lbl 127 `"127"', add
label define lvarea_lbl 128 `"128"', add
label define lvarea_lbl 129 `"129"', add
label define lvarea_lbl 130 `"130"', add
label define lvarea_lbl 131 `"131"', add
label define lvarea_lbl 132 `"132"', add
label define lvarea_lbl 133 `"133"', add
label define lvarea_lbl 134 `"134"', add
label define lvarea_lbl 135 `"135"', add
label define lvarea_lbl 136 `"136"', add
label define lvarea_lbl 137 `"137"', add
label define lvarea_lbl 138 `"138"', add
label define lvarea_lbl 139 `"139"', add
label define lvarea_lbl 140 `"140"', add
label define lvarea_lbl 141 `"141"', add
label define lvarea_lbl 142 `"142"', add
label define lvarea_lbl 143 `"143"', add
label define lvarea_lbl 144 `"144"', add
label define lvarea_lbl 145 `"145"', add
label define lvarea_lbl 146 `"146"', add
label define lvarea_lbl 147 `"147"', add
label define lvarea_lbl 148 `"148"', add
label define lvarea_lbl 149 `"149"', add
label define lvarea_lbl 150 `"150"', add
label define lvarea_lbl 151 `"151"', add
label define lvarea_lbl 152 `"152"', add
label define lvarea_lbl 153 `"153"', add
label define lvarea_lbl 154 `"154"', add
label define lvarea_lbl 155 `"155"', add
label define lvarea_lbl 156 `"156"', add
label define lvarea_lbl 157 `"157"', add
label define lvarea_lbl 158 `"158"', add
label define lvarea_lbl 159 `"159"', add
label define lvarea_lbl 160 `"160"', add
label define lvarea_lbl 161 `"161"', add
label define lvarea_lbl 162 `"162"', add
label define lvarea_lbl 163 `"163"', add
label define lvarea_lbl 164 `"164"', add
label define lvarea_lbl 165 `"165"', add
label define lvarea_lbl 166 `"166"', add
label define lvarea_lbl 167 `"167"', add
label define lvarea_lbl 168 `"168"', add
label define lvarea_lbl 169 `"169"', add
label define lvarea_lbl 170 `"170"', add
label define lvarea_lbl 171 `"171"', add
label define lvarea_lbl 172 `"172"', add
label define lvarea_lbl 173 `"173"', add
label define lvarea_lbl 174 `"174"', add
label define lvarea_lbl 175 `"175"', add
label define lvarea_lbl 176 `"176"', add
label define lvarea_lbl 177 `"177"', add
label define lvarea_lbl 178 `"178"', add
label define lvarea_lbl 179 `"179"', add
label define lvarea_lbl 180 `"180"', add
label define lvarea_lbl 181 `"181"', add
label define lvarea_lbl 182 `"182"', add
label define lvarea_lbl 183 `"183"', add
label define lvarea_lbl 184 `"184"', add
label define lvarea_lbl 185 `"185"', add
label define lvarea_lbl 186 `"186"', add
label define lvarea_lbl 187 `"187"', add
label define lvarea_lbl 188 `"188"', add
label define lvarea_lbl 189 `"189"', add
label define lvarea_lbl 190 `"190"', add
label define lvarea_lbl 191 `"191"', add
label define lvarea_lbl 192 `"192"', add
label define lvarea_lbl 193 `"193"', add
label define lvarea_lbl 194 `"194"', add
label define lvarea_lbl 195 `"195"', add
label define lvarea_lbl 196 `"196"', add
label define lvarea_lbl 197 `"197"', add
label define lvarea_lbl 198 `"198"', add
label define lvarea_lbl 199 `"199"', add
label define lvarea_lbl 200 `"200"', add
label define lvarea_lbl 201 `"201"', add
label define lvarea_lbl 202 `"202"', add
label define lvarea_lbl 203 `"203"', add
label define lvarea_lbl 204 `"204"', add
label define lvarea_lbl 205 `"205"', add
label define lvarea_lbl 206 `"206"', add
label define lvarea_lbl 207 `"207"', add
label define lvarea_lbl 208 `"208"', add
label define lvarea_lbl 209 `"209"', add
label define lvarea_lbl 210 `"210"', add
label define lvarea_lbl 211 `"211"', add
label define lvarea_lbl 212 `"212"', add
label define lvarea_lbl 213 `"213"', add
label define lvarea_lbl 214 `"214"', add
label define lvarea_lbl 215 `"215"', add
label define lvarea_lbl 216 `"216"', add
label define lvarea_lbl 217 `"217"', add
label define lvarea_lbl 218 `"218"', add
label define lvarea_lbl 219 `"219"', add
label define lvarea_lbl 220 `"220"', add
label define lvarea_lbl 221 `"221"', add
label define lvarea_lbl 222 `"222"', add
label define lvarea_lbl 223 `"223"', add
label define lvarea_lbl 224 `"224"', add
label define lvarea_lbl 225 `"225"', add
label define lvarea_lbl 226 `"226"', add
label define lvarea_lbl 227 `"227"', add
label define lvarea_lbl 228 `"228"', add
label define lvarea_lbl 229 `"229"', add
label define lvarea_lbl 230 `"230"', add
label define lvarea_lbl 231 `"231"', add
label define lvarea_lbl 232 `"232"', add
label define lvarea_lbl 233 `"233"', add
label define lvarea_lbl 234 `"234"', add
label define lvarea_lbl 235 `"235"', add
label define lvarea_lbl 236 `"236"', add
label define lvarea_lbl 237 `"237"', add
label define lvarea_lbl 238 `"238"', add
label define lvarea_lbl 239 `"239"', add
label define lvarea_lbl 240 `"240"', add
label define lvarea_lbl 241 `"241"', add
label define lvarea_lbl 242 `"242"', add
label define lvarea_lbl 243 `"243"', add
label define lvarea_lbl 244 `"244"', add
label define lvarea_lbl 245 `"245"', add
label define lvarea_lbl 246 `"246"', add
label define lvarea_lbl 247 `"247"', add
label define lvarea_lbl 248 `"248"', add
label define lvarea_lbl 249 `"249"', add
label define lvarea_lbl 250 `"250"', add
label define lvarea_lbl 251 `"251"', add
label define lvarea_lbl 252 `"252"', add
label define lvarea_lbl 253 `"253"', add
label define lvarea_lbl 254 `"254"', add
label define lvarea_lbl 255 `"255"', add
label define lvarea_lbl 256 `"256"', add
label define lvarea_lbl 257 `"257"', add
label define lvarea_lbl 258 `"258"', add
label define lvarea_lbl 259 `"259"', add
label define lvarea_lbl 260 `"260"', add
label define lvarea_lbl 261 `"261"', add
label define lvarea_lbl 262 `"262"', add
label define lvarea_lbl 263 `"263"', add
label define lvarea_lbl 264 `"264"', add
label define lvarea_lbl 265 `"265"', add
label define lvarea_lbl 266 `"266"', add
label define lvarea_lbl 267 `"267"', add
label define lvarea_lbl 268 `"268"', add
label define lvarea_lbl 269 `"269"', add
label define lvarea_lbl 270 `"270"', add
label define lvarea_lbl 271 `"271"', add
label define lvarea_lbl 272 `"272"', add
label define lvarea_lbl 273 `"273"', add
label define lvarea_lbl 274 `"274"', add
label define lvarea_lbl 275 `"275"', add
label define lvarea_lbl 276 `"276"', add
label define lvarea_lbl 277 `"277"', add
label define lvarea_lbl 278 `"278"', add
label define lvarea_lbl 279 `"279"', add
label define lvarea_lbl 280 `"280"', add
label define lvarea_lbl 281 `"281"', add
label define lvarea_lbl 282 `"282"', add
label define lvarea_lbl 283 `"283"', add
label define lvarea_lbl 284 `"284"', add
label define lvarea_lbl 285 `"285"', add
label define lvarea_lbl 286 `"286"', add
label define lvarea_lbl 287 `"287"', add
label define lvarea_lbl 288 `"288"', add
label define lvarea_lbl 289 `"289"', add
label define lvarea_lbl 290 `"290"', add
label define lvarea_lbl 291 `"291"', add
label define lvarea_lbl 292 `"292"', add
label define lvarea_lbl 293 `"293"', add
label define lvarea_lbl 294 `"294"', add
label define lvarea_lbl 295 `"295"', add
label define lvarea_lbl 296 `"296"', add
label define lvarea_lbl 297 `"297"', add
label define lvarea_lbl 298 `"298"', add
label define lvarea_lbl 299 `"299"', add
label define lvarea_lbl 300 `"300"', add
label define lvarea_lbl 301 `"301"', add
label define lvarea_lbl 302 `"302"', add
label define lvarea_lbl 303 `"303"', add
label define lvarea_lbl 304 `"304"', add
label define lvarea_lbl 305 `"305"', add
label define lvarea_lbl 306 `"306"', add
label define lvarea_lbl 307 `"307"', add
label define lvarea_lbl 308 `"308"', add
label define lvarea_lbl 309 `"309"', add
label define lvarea_lbl 310 `"310"', add
label define lvarea_lbl 311 `"311"', add
label define lvarea_lbl 312 `"312"', add
label define lvarea_lbl 313 `"313"', add
label define lvarea_lbl 314 `"314"', add
label define lvarea_lbl 315 `"315"', add
label define lvarea_lbl 316 `"316"', add
label define lvarea_lbl 317 `"317"', add
label define lvarea_lbl 318 `"318"', add
label define lvarea_lbl 319 `"319"', add
label define lvarea_lbl 320 `"320"', add
label define lvarea_lbl 321 `"321"', add
label define lvarea_lbl 322 `"322"', add
label define lvarea_lbl 323 `"323"', add
label define lvarea_lbl 324 `"324"', add
label define lvarea_lbl 325 `"325"', add
label define lvarea_lbl 326 `"326"', add
label define lvarea_lbl 327 `"327"', add
label define lvarea_lbl 328 `"328"', add
label define lvarea_lbl 329 `"329"', add
label define lvarea_lbl 330 `"330"', add
label define lvarea_lbl 331 `"331"', add
label define lvarea_lbl 332 `"332"', add
label define lvarea_lbl 333 `"333"', add
label define lvarea_lbl 334 `"334"', add
label define lvarea_lbl 335 `"335"', add
label define lvarea_lbl 336 `"336"', add
label define lvarea_lbl 337 `"337"', add
label define lvarea_lbl 338 `"338"', add
label define lvarea_lbl 339 `"339"', add
label define lvarea_lbl 340 `"340"', add
label define lvarea_lbl 341 `"341"', add
label define lvarea_lbl 342 `"342"', add
label define lvarea_lbl 343 `"343"', add
label define lvarea_lbl 344 `"344"', add
label define lvarea_lbl 345 `"345"', add
label define lvarea_lbl 346 `"346"', add
label define lvarea_lbl 347 `"347"', add
label define lvarea_lbl 348 `"348"', add
label define lvarea_lbl 349 `"349"', add
label define lvarea_lbl 350 `"350"', add
label define lvarea_lbl 351 `"351"', add
label define lvarea_lbl 352 `"352"', add
label define lvarea_lbl 353 `"353"', add
label define lvarea_lbl 354 `"354"', add
label define lvarea_lbl 355 `"355"', add
label define lvarea_lbl 356 `"356"', add
label define lvarea_lbl 357 `"357"', add
label define lvarea_lbl 358 `"358"', add
label define lvarea_lbl 359 `"359"', add
label define lvarea_lbl 360 `"360"', add
label define lvarea_lbl 361 `"361"', add
label define lvarea_lbl 362 `"362"', add
label define lvarea_lbl 363 `"363"', add
label define lvarea_lbl 364 `"364"', add
label define lvarea_lbl 365 `"365"', add
label define lvarea_lbl 366 `"366"', add
label define lvarea_lbl 367 `"367"', add
label define lvarea_lbl 368 `"368"', add
label define lvarea_lbl 369 `"369"', add
label define lvarea_lbl 370 `"370"', add
label define lvarea_lbl 371 `"371"', add
label define lvarea_lbl 372 `"372"', add
label define lvarea_lbl 373 `"373"', add
label define lvarea_lbl 374 `"374"', add
label define lvarea_lbl 375 `"375"', add
label define lvarea_lbl 376 `"376"', add
label define lvarea_lbl 377 `"377"', add
label define lvarea_lbl 378 `"378"', add
label define lvarea_lbl 380 `"380"', add
label define lvarea_lbl 383 `"383"', add
label define lvarea_lbl 384 `"384"', add
label define lvarea_lbl 385 `"385"', add
label define lvarea_lbl 386 `"386"', add
label define lvarea_lbl 387 `"387"', add
label define lvarea_lbl 388 `"388"', add
label define lvarea_lbl 389 `"389"', add
label define lvarea_lbl 390 `"390"', add
label define lvarea_lbl 391 `"391"', add
label define lvarea_lbl 392 `"392"', add
label define lvarea_lbl 393 `"393"', add
label define lvarea_lbl 394 `"394"', add
label define lvarea_lbl 395 `"395"', add
label define lvarea_lbl 396 `"396"', add
label define lvarea_lbl 398 `"398"', add
label define lvarea_lbl 399 `"399"', add
label define lvarea_lbl 400 `"400"', add
label define lvarea_lbl 401 `"401"', add
label define lvarea_lbl 402 `"402"', add
label define lvarea_lbl 403 `"403"', add
label define lvarea_lbl 404 `"404"', add
label define lvarea_lbl 405 `"405"', add
label define lvarea_lbl 406 `"406"', add
label define lvarea_lbl 407 `"407"', add
label define lvarea_lbl 408 `"408"', add
label define lvarea_lbl 409 `"409"', add
label define lvarea_lbl 410 `"410"', add
label define lvarea_lbl 412 `"412"', add
label define lvarea_lbl 413 `"413"', add
label define lvarea_lbl 414 `"414"', add
label define lvarea_lbl 415 `"415"', add
label define lvarea_lbl 416 `"416"', add
label define lvarea_lbl 417 `"417"', add
label define lvarea_lbl 419 `"419"', add
label define lvarea_lbl 420 `"420"', add
label define lvarea_lbl 421 `"421"', add
label define lvarea_lbl 423 `"423"', add
label define lvarea_lbl 424 `"424"', add
label define lvarea_lbl 425 `"425"', add
label define lvarea_lbl 426 `"426"', add
label define lvarea_lbl 427 `"427"', add
label define lvarea_lbl 428 `"428"', add
label define lvarea_lbl 429 `"429"', add
label define lvarea_lbl 430 `"430"', add
label define lvarea_lbl 432 `"432"', add
label define lvarea_lbl 435 `"435"', add
label define lvarea_lbl 437 `"437"', add
label define lvarea_lbl 438 `"438"', add
label define lvarea_lbl 439 `"439"', add
label define lvarea_lbl 440 `"440"', add
label define lvarea_lbl 442 `"442"', add
label define lvarea_lbl 444 `"444"', add
label define lvarea_lbl 445 `"445"', add
label define lvarea_lbl 447 `"447"', add
label define lvarea_lbl 448 `"448"', add
label define lvarea_lbl 449 `"449"', add
label define lvarea_lbl 450 `"450"', add
label define lvarea_lbl 452 `"452"', add
label define lvarea_lbl 454 `"454"', add
label define lvarea_lbl 455 `"455"', add
label define lvarea_lbl 456 `"456"', add
label define lvarea_lbl 458 `"458"', add
label define lvarea_lbl 459 `"459"', add
label define lvarea_lbl 460 `"460"', add
label define lvarea_lbl 462 `"462"', add
label define lvarea_lbl 465 `"465"', add
label define lvarea_lbl 467 `"467"', add
label define lvarea_lbl 468 `"468"', add
label define lvarea_lbl 470 `"470"', add
label define lvarea_lbl 472 `"472"', add
label define lvarea_lbl 475 `"475"', add
label define lvarea_lbl 477 `"477"', add
label define lvarea_lbl 478 `"478"', add
label define lvarea_lbl 479 `"479"', add
label define lvarea_lbl 480 `"480"', add
label define lvarea_lbl 481 `"481"', add
label define lvarea_lbl 482 `"482"', add
label define lvarea_lbl 485 `"485"', add
label define lvarea_lbl 487 `"487"', add
label define lvarea_lbl 489 `"489"', add
label define lvarea_lbl 490 `"490"', add
label define lvarea_lbl 493 `"493"', add
label define lvarea_lbl 496 `"496"', add
label define lvarea_lbl 497 `"497"', add
label define lvarea_lbl 498 `"498"', add
label define lvarea_lbl 499 `"499"', add
label define lvarea_lbl 500 `"500"', add
label define lvarea_lbl 501 `"501"', add
label define lvarea_lbl 504 `"504"', add
label define lvarea_lbl 506 `"506"', add
label define lvarea_lbl 507 `"507"', add
label define lvarea_lbl 509 `"509"', add
label define lvarea_lbl 510 `"510"', add
label define lvarea_lbl 511 `"511"', add
label define lvarea_lbl 512 `"512"', add
label define lvarea_lbl 515 `"515"', add
label define lvarea_lbl 516 `"516"', add
label define lvarea_lbl 520 `"520"', add
label define lvarea_lbl 523 `"523"', add
label define lvarea_lbl 525 `"525"', add
label define lvarea_lbl 526 `"526"', add
label define lvarea_lbl 528 `"528"', add
label define lvarea_lbl 530 `"530"', add
label define lvarea_lbl 535 `"535"', add
label define lvarea_lbl 539 `"539"', add
label define lvarea_lbl 540 `"540"', add
label define lvarea_lbl 542 `"542"', add
label define lvarea_lbl 543 `"543"', add
label define lvarea_lbl 544 `"544"', add
label define lvarea_lbl 545 `"545"', add
label define lvarea_lbl 547 `"547"', add
label define lvarea_lbl 550 `"550"', add
label define lvarea_lbl 555 `"555"', add
label define lvarea_lbl 556 `"556"', add
label define lvarea_lbl 560 `"560"', add
label define lvarea_lbl 561 `"561"', add
label define lvarea_lbl 563 `"563"', add
label define lvarea_lbl 565 `"565"', add
label define lvarea_lbl 566 `"566"', add
label define lvarea_lbl 570 `"570"', add
label define lvarea_lbl 573 `"573"', add
label define lvarea_lbl 574 `"574"', add
label define lvarea_lbl 576 `"576"', add
label define lvarea_lbl 580 `"580"', add
label define lvarea_lbl 583 `"583"', add
label define lvarea_lbl 586 `"586"', add
label define lvarea_lbl 587 `"587"', add
label define lvarea_lbl 588 `"588"', add
label define lvarea_lbl 590 `"590"', add
label define lvarea_lbl 593 `"593"', add
label define lvarea_lbl 600 `"600"', add
label define lvarea_lbl 601 `"601"', add
label define lvarea_lbl 603 `"603"', add
label define lvarea_lbl 605 `"605"', add
label define lvarea_lbl 610 `"610"', add
label define lvarea_lbl 614 `"614"', add
label define lvarea_lbl 618 `"618"', add
label define lvarea_lbl 620 `"620"', add
label define lvarea_lbl 621 `"621"', add
label define lvarea_lbl 625 `"625"', add
label define lvarea_lbl 626 `"626"', add
label define lvarea_lbl 628 `"628"', add
label define lvarea_lbl 630 `"630"', add
label define lvarea_lbl 631 `"631"', add
label define lvarea_lbl 632 `"632"', add
label define lvarea_lbl 637 `"637"', add
label define lvarea_lbl 640 `"640"', add
label define lvarea_lbl 642 `"642"', add
label define lvarea_lbl 650 `"650"', add
label define lvarea_lbl 658 `"658"', add
label define lvarea_lbl 661 `"661"', add
label define lvarea_lbl 667 `"667"', add
label define lvarea_lbl 669 `"669"', add
label define lvarea_lbl 670 `"670"', add
label define lvarea_lbl 675 `"675"', add
label define lvarea_lbl 680 `"680"', add
label define lvarea_lbl 681 `"681"', add
label define lvarea_lbl 690 `"690"', add
label define lvarea_lbl 693 `"693"', add
label define lvarea_lbl 695 `"695"', add
label define lvarea_lbl 696 `"696"', add
label define lvarea_lbl 699 `"699"', add
label define lvarea_lbl 700 `"700"', add
label define lvarea_lbl 701 `"701"', add
label define lvarea_lbl 702 `"702"', add
label define lvarea_lbl 706 `"706"', add
label define lvarea_lbl 713 `"713"', add
label define lvarea_lbl 715 `"715"', add
label define lvarea_lbl 719 `"719"', add
label define lvarea_lbl 720 `"720"', add
label define lvarea_lbl 722 `"722"', add
label define lvarea_lbl 725 `"725"', add
label define lvarea_lbl 730 `"730"', add
label define lvarea_lbl 732 `"732"', add
label define lvarea_lbl 736 `"736"', add
label define lvarea_lbl 740 `"740"', add
label define lvarea_lbl 745 `"745"', add
label define lvarea_lbl 748 `"748"', add
label define lvarea_lbl 750 `"750"', add
label define lvarea_lbl 754 `"754"', add
label define lvarea_lbl 755 `"755"', add
label define lvarea_lbl 760 `"760"', add
label define lvarea_lbl 770 `"770"', add
label define lvarea_lbl 773 `"773"', add
label define lvarea_lbl 776 `"776"', add
label define lvarea_lbl 780 `"780"', add
label define lvarea_lbl 781 `"781"', add
label define lvarea_lbl 788 `"788"', add
label define lvarea_lbl 798 `"798"', add
label define lvarea_lbl 800 `"800"', add
label define lvarea_lbl 801 `"801"', add
label define lvarea_lbl 805 `"805"', add
label define lvarea_lbl 806 `"806"', add
label define lvarea_lbl 807 `"807"', add
label define lvarea_lbl 810 `"810"', add
label define lvarea_lbl 813 `"813"', add
label define lvarea_lbl 814 `"814"', add
label define lvarea_lbl 818 `"818"', add
label define lvarea_lbl 820 `"820"', add
label define lvarea_lbl 826 `"826"', add
label define lvarea_lbl 830 `"830"', add
label define lvarea_lbl 850 `"850"', add
label define lvarea_lbl 856 `"856"', add
label define lvarea_lbl 860 `"860"', add
label define lvarea_lbl 861 `"861"', add
label define lvarea_lbl 866 `"866"', add
label define lvarea_lbl 867 `"867"', add
label define lvarea_lbl 870 `"870"', add
label define lvarea_lbl 875 `"875"', add
label define lvarea_lbl 880 `"880"', add
label define lvarea_lbl 884 `"884"', add
label define lvarea_lbl 886 `"886"', add
label define lvarea_lbl 890 `"890"', add
label define lvarea_lbl 896 `"896"', add
label define lvarea_lbl 900 `"900"', add
label define lvarea_lbl 901 `"901"', add
label define lvarea_lbl 902 `"902"', add
label define lvarea_lbl 904 `"904"', add
label define lvarea_lbl 905 `"905"', add
label define lvarea_lbl 906 `"906"', add
label define lvarea_lbl 907 `"907"', add
label define lvarea_lbl 908 `"908"', add
label define lvarea_lbl 910 `"910"', add
label define lvarea_lbl 912 `"912"', add
label define lvarea_lbl 913 `"913"', add
label define lvarea_lbl 916 `"916"', add
label define lvarea_lbl 917 `"917"', add
label define lvarea_lbl 920 `"920"', add
label define lvarea_lbl 925 `"925"', add
label define lvarea_lbl 945 `"945"', add
label define lvarea_lbl 950 `"950"', add
label define lvarea_lbl 951 `"951"', add
label define lvarea_lbl 960 `"960"', add
label define lvarea_lbl 965 `"965"', add
label define lvarea_lbl 970 `"970"', add
label define lvarea_lbl 978 `"978"', add
label define lvarea_lbl 980 `"980"', add
label define lvarea_lbl 990 `"990"', add
label define lvarea_lbl 993 `"993"', add
label define lvarea_lbl 997 `"997"', add
label define lvarea_lbl 998 `"998"', add
label define lvarea_lbl 999 `"Unknown"', add
label values lvarea lvarea_lbl

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

label define by99a_pern_lbl 01 `"1"'
label define by99a_pern_lbl 02 `"2"', add
label define by99a_pern_lbl 03 `"3"', add
label define by99a_pern_lbl 04 `"4"', add
label define by99a_pern_lbl 05 `"5"', add
label define by99a_pern_lbl 06 `"6"', add
label define by99a_pern_lbl 07 `"7"', add
label define by99a_pern_lbl 08 `"8"', add
label define by99a_pern_lbl 09 `"9"', add
label define by99a_pern_lbl 10 `"10"', add
label define by99a_pern_lbl 11 `"11"', add
label define by99a_pern_lbl 12 `"12"', add
label define by99a_pern_lbl 13 `"13"', add
label define by99a_pern_lbl 14 `"14"', add
label define by99a_pern_lbl 24 `"24"', add
label values by99a_pern by99a_pern_lbl

label define by99a_fsplmh_lbl 0 `"No problem"'
label define by99a_fsplmh_lbl 1 `"Yes: persons within a multi-household dwelling were split apart into separate dwellings"', add
label values by99a_fsplmh by99a_fsplmh_lbl

label define by99a_region_lbl 1 `"Brest"'
label define by99a_region_lbl 2 `"Vitebsk"', add
label define by99a_region_lbl 3 `"Gomel"', add
label define by99a_region_lbl 4 `"Grodno"', add
label define by99a_region_lbl 5 `"Minsk"', add
label define by99a_region_lbl 6 `"Mogilev"', add
label values by99a_region by99a_region_lbl

label define by99a_urban_lbl 1 `"Urban settlement"'
label define by99a_urban_lbl 2 `"Rural locality"', add
label values by99a_urban by99a_urban_lbl

label define by99a_dwtype_lbl 01 `"Detached house"'
label define by99a_dwtype_lbl 02 `"Part of detached house"', add
label define by99a_dwtype_lbl 03 `"Separate flat"', add
label define by99a_dwtype_lbl 04 `"Shared flat"', add
label define by99a_dwtype_lbl 05 `"Hostel"', add
label define by99a_dwtype_lbl 06 `"Home for the old and invalids, children's home, etc."', add
label define by99a_dwtype_lbl 07 `"Other institutions"', add
label define by99a_dwtype_lbl 08 `"Other dwelling"', add
label define by99a_dwtype_lbl 09 `"Nonresidential premises used for living"', add
label define by99a_dwtype_lbl 10 `"Homeless"', add
label define by99a_dwtype_lbl 98 `"Not specified"', add
label define by99a_dwtype_lbl 99 `"Unknown"', add
label values by99a_dwtype by99a_dwtype_lbl

label define by99a_bltyr_lbl 1 `"Before 1945"'
label define by99a_bltyr_lbl 2 `"1945-1960"', add
label define by99a_bltyr_lbl 3 `"1961-1980"', add
label define by99a_bltyr_lbl 4 `"1981-1990"', add
label define by99a_bltyr_lbl 5 `"1991-1995"', add
label define by99a_bltyr_lbl 6 `"1996 and later"', add
label define by99a_bltyr_lbl 8 `"Not specified"', add
label define by99a_bltyr_lbl 9 `"Unknown"', add
label values by99a_bltyr by99a_bltyr_lbl

label define by99a_walls_lbl 1 `"Bricks, stone"'
label define by99a_walls_lbl 2 `"Concrete, reinforced concrete, blocks, panels"', add
label define by99a_walls_lbl 3 `"Wood"', add
label define by99a_walls_lbl 4 `"Mixed material"', add
label define by99a_walls_lbl 5 `"Other material"', add
label define by99a_walls_lbl 8 `"Not specified"', add
label define by99a_walls_lbl 9 `"Unknown"', add
label values by99a_walls by99a_walls_lbl

label define by99a_elect_lbl 1 `"Yes"'
label define by99a_elect_lbl 2 `"No"', add
label define by99a_elect_lbl 9 `"Unknown"', add
label values by99a_elect by99a_elect_lbl

label define by99a_elcook_lbl 1 `"Yes"'
label define by99a_elcook_lbl 2 `"No"', add
label define by99a_elcook_lbl 9 `"Unknown"', add
label values by99a_elcook by99a_elcook_lbl

label define by99a_gaspipe_lbl 1 `"Yes"'
label define by99a_gaspipe_lbl 2 `"No"', add
label define by99a_gaspipe_lbl 9 `"Unknown"', add
label values by99a_gaspipe by99a_gaspipe_lbl

label define by99a_gasbott_lbl 1 `"Yes"'
label define by99a_gasbott_lbl 2 `"No"', add
label define by99a_gasbott_lbl 9 `"Unknown"', add
label values by99a_gasbott by99a_gasbott_lbl

label define by99a_heatcen_lbl 1 `"Yes"'
label define by99a_heatcen_lbl 2 `"No"', add
label define by99a_heatcen_lbl 9 `"Unknown"', add
label values by99a_heatcen by99a_heatcen_lbl

label define by99a_headind_lbl 1 `"Yes"'
label define by99a_headind_lbl 2 `"No"', add
label define by99a_headind_lbl 9 `"Unknown"', add
label values by99a_headind by99a_headind_lbl

label define by99a_heatstv_lbl 1 `"Yes"'
label define by99a_heatstv_lbl 2 `"No"', add
label define by99a_heatstv_lbl 9 `"Unknown"', add
label values by99a_heatstv by99a_heatstv_lbl

label define by99a_pipewat_lbl 1 `"Yes"'
label define by99a_pipewat_lbl 2 `"No"', add
label define by99a_pipewat_lbl 9 `"Unknown"', add
label values by99a_pipewat by99a_pipewat_lbl

label define by99a_toilet_lbl 1 `"Yes"'
label define by99a_toilet_lbl 2 `"No"', add
label define by99a_toilet_lbl 9 `"Unknown"', add
label values by99a_toilet by99a_toilet_lbl

label define by99a_bath_lbl 1 `"Yes"'
label define by99a_bath_lbl 2 `"No"', add
label define by99a_bath_lbl 9 `"Unknown"', add
label values by99a_bath by99a_bath_lbl

label define by99a_hwatcen_lbl 1 `"Yes"'
label define by99a_hwatcen_lbl 2 `"No"', add
label define by99a_hwatcen_lbl 9 `"Unknown"', add
label values by99a_hwatcen by99a_hwatcen_lbl

label define by99a_hwatind_lbl 1 `"Yes"'
label define by99a_hwatind_lbl 2 `"No"', add
label define by99a_hwatind_lbl 9 `"Unknown"', add
label values by99a_hwatind by99a_hwatind_lbl

label define by99a_phone_lbl 1 `"Yes"'
label define by99a_phone_lbl 2 `"No"', add
label define by99a_phone_lbl 9 `"Unknown"', add
label values by99a_phone by99a_phone_lbl

label define by99a_popsize_lbl 9 `"Unknown"'
label define by99a_popsize_lbl 1 `"City with 100,000+ population"', add
label define by99a_popsize_lbl 2 `"Not in city with 100,000 population"', add
label values by99a_popsize by99a_popsize_lbl

label define by99a_pernumoh_lbl 001 `"1"'
label define by99a_pernumoh_lbl 002 `"2"', add
label define by99a_pernumoh_lbl 003 `"3"', add
label define by99a_pernumoh_lbl 004 `"4"', add
label define by99a_pernumoh_lbl 005 `"5"', add
label define by99a_pernumoh_lbl 006 `"6"', add
label define by99a_pernumoh_lbl 007 `"7"', add
label define by99a_pernumoh_lbl 008 `"8"', add
label define by99a_pernumoh_lbl 009 `"9"', add
label define by99a_pernumoh_lbl 010 `"10+"', add
label values by99a_pernumoh by99a_pernumoh_lbl

label define by99a_owner_lbl 1 `"Private property of residents"'
label define by99a_owner_lbl 2 `"Local councils (Soviets)"', add
label define by99a_owner_lbl 3 `"Other owners"', add
label define by99a_owner_lbl 4 `"Rents dwelling from individuals"', add
label define by99a_owner_lbl 8 `"Not specified"', add
label define by99a_owner_lbl 9 `"Unknown"', add
label values by99a_owner by99a_owner_lbl

label define by99a_rooms_lbl 01 `"1"'
label define by99a_rooms_lbl 02 `"2"', add
label define by99a_rooms_lbl 03 `"3"', add
label define by99a_rooms_lbl 04 `"4"', add
label define by99a_rooms_lbl 05 `"5"', add
label define by99a_rooms_lbl 06 `"6"', add
label define by99a_rooms_lbl 07 `"7"', add
label define by99a_rooms_lbl 08 `"8+"', add
label define by99a_rooms_lbl 96 `"Part of room"', add
label define by99a_rooms_lbl 99 `"Unknown"', add
label values by99a_rooms by99a_rooms_lbl

label define by99a_uspace_lbl 009 `"9 or less"'
label define by99a_uspace_lbl 010 `"10"', add
label define by99a_uspace_lbl 011 `"11"', add
label define by99a_uspace_lbl 012 `"12"', add
label define by99a_uspace_lbl 013 `"13"', add
label define by99a_uspace_lbl 014 `"14"', add
label define by99a_uspace_lbl 015 `"15"', add
label define by99a_uspace_lbl 016 `"16"', add
label define by99a_uspace_lbl 017 `"17"', add
label define by99a_uspace_lbl 018 `"18"', add
label define by99a_uspace_lbl 019 `"19"', add
label define by99a_uspace_lbl 020 `"20"', add
label define by99a_uspace_lbl 021 `"21"', add
label define by99a_uspace_lbl 022 `"22"', add
label define by99a_uspace_lbl 023 `"23"', add
label define by99a_uspace_lbl 024 `"24"', add
label define by99a_uspace_lbl 025 `"25"', add
label define by99a_uspace_lbl 026 `"26"', add
label define by99a_uspace_lbl 027 `"27"', add
label define by99a_uspace_lbl 028 `"28"', add
label define by99a_uspace_lbl 029 `"29"', add
label define by99a_uspace_lbl 030 `"30"', add
label define by99a_uspace_lbl 031 `"31"', add
label define by99a_uspace_lbl 032 `"32"', add
label define by99a_uspace_lbl 033 `"33"', add
label define by99a_uspace_lbl 034 `"34"', add
label define by99a_uspace_lbl 035 `"35"', add
label define by99a_uspace_lbl 036 `"36"', add
label define by99a_uspace_lbl 037 `"37"', add
label define by99a_uspace_lbl 038 `"38"', add
label define by99a_uspace_lbl 039 `"39"', add
label define by99a_uspace_lbl 040 `"40"', add
label define by99a_uspace_lbl 041 `"41"', add
label define by99a_uspace_lbl 042 `"42"', add
label define by99a_uspace_lbl 043 `"43"', add
label define by99a_uspace_lbl 044 `"44"', add
label define by99a_uspace_lbl 045 `"45"', add
label define by99a_uspace_lbl 046 `"46"', add
label define by99a_uspace_lbl 047 `"47"', add
label define by99a_uspace_lbl 048 `"48"', add
label define by99a_uspace_lbl 049 `"49"', add
label define by99a_uspace_lbl 050 `"50"', add
label define by99a_uspace_lbl 051 `"51"', add
label define by99a_uspace_lbl 052 `"52"', add
label define by99a_uspace_lbl 053 `"53"', add
label define by99a_uspace_lbl 054 `"54"', add
label define by99a_uspace_lbl 055 `"55"', add
label define by99a_uspace_lbl 056 `"56"', add
label define by99a_uspace_lbl 057 `"57"', add
label define by99a_uspace_lbl 058 `"58"', add
label define by99a_uspace_lbl 059 `"59"', add
label define by99a_uspace_lbl 060 `"60"', add
label define by99a_uspace_lbl 061 `"61"', add
label define by99a_uspace_lbl 062 `"62"', add
label define by99a_uspace_lbl 063 `"63"', add
label define by99a_uspace_lbl 064 `"64"', add
label define by99a_uspace_lbl 065 `"65"', add
label define by99a_uspace_lbl 066 `"66"', add
label define by99a_uspace_lbl 067 `"67"', add
label define by99a_uspace_lbl 068 `"68"', add
label define by99a_uspace_lbl 069 `"69"', add
label define by99a_uspace_lbl 070 `"70"', add
label define by99a_uspace_lbl 071 `"71"', add
label define by99a_uspace_lbl 072 `"72"', add
label define by99a_uspace_lbl 073 `"73"', add
label define by99a_uspace_lbl 074 `"74"', add
label define by99a_uspace_lbl 075 `"75"', add
label define by99a_uspace_lbl 076 `"76"', add
label define by99a_uspace_lbl 077 `"77"', add
label define by99a_uspace_lbl 078 `"78"', add
label define by99a_uspace_lbl 079 `"79"', add
label define by99a_uspace_lbl 080 `"80"', add
label define by99a_uspace_lbl 081 `"81"', add
label define by99a_uspace_lbl 082 `"82"', add
label define by99a_uspace_lbl 083 `"83"', add
label define by99a_uspace_lbl 084 `"84"', add
label define by99a_uspace_lbl 085 `"85"', add
label define by99a_uspace_lbl 086 `"86"', add
label define by99a_uspace_lbl 087 `"87"', add
label define by99a_uspace_lbl 088 `"88"', add
label define by99a_uspace_lbl 089 `"89"', add
label define by99a_uspace_lbl 090 `"90"', add
label define by99a_uspace_lbl 091 `"91"', add
label define by99a_uspace_lbl 092 `"92"', add
label define by99a_uspace_lbl 093 `"93"', add
label define by99a_uspace_lbl 094 `"94"', add
label define by99a_uspace_lbl 095 `"95"', add
label define by99a_uspace_lbl 096 `"96"', add
label define by99a_uspace_lbl 097 `"97"', add
label define by99a_uspace_lbl 098 `"98"', add
label define by99a_uspace_lbl 099 `"99"', add
label define by99a_uspace_lbl 100 `"100"', add
label define by99a_uspace_lbl 101 `"101"', add
label define by99a_uspace_lbl 102 `"102"', add
label define by99a_uspace_lbl 103 `"103"', add
label define by99a_uspace_lbl 104 `"104"', add
label define by99a_uspace_lbl 105 `"105"', add
label define by99a_uspace_lbl 106 `"106"', add
label define by99a_uspace_lbl 107 `"107"', add
label define by99a_uspace_lbl 108 `"108"', add
label define by99a_uspace_lbl 109 `"109"', add
label define by99a_uspace_lbl 110 `"110"', add
label define by99a_uspace_lbl 111 `"111"', add
label define by99a_uspace_lbl 112 `"112"', add
label define by99a_uspace_lbl 113 `"113"', add
label define by99a_uspace_lbl 114 `"114"', add
label define by99a_uspace_lbl 115 `"115"', add
label define by99a_uspace_lbl 116 `"116"', add
label define by99a_uspace_lbl 117 `"117"', add
label define by99a_uspace_lbl 118 `"118"', add
label define by99a_uspace_lbl 119 `"119"', add
label define by99a_uspace_lbl 120 `"120"', add
label define by99a_uspace_lbl 121 `"121"', add
label define by99a_uspace_lbl 122 `"122"', add
label define by99a_uspace_lbl 123 `"123"', add
label define by99a_uspace_lbl 124 `"124"', add
label define by99a_uspace_lbl 125 `"125"', add
label define by99a_uspace_lbl 126 `"126"', add
label define by99a_uspace_lbl 127 `"127"', add
label define by99a_uspace_lbl 128 `"128"', add
label define by99a_uspace_lbl 129 `"129"', add
label define by99a_uspace_lbl 130 `"130"', add
label define by99a_uspace_lbl 131 `"131"', add
label define by99a_uspace_lbl 132 `"132"', add
label define by99a_uspace_lbl 133 `"133"', add
label define by99a_uspace_lbl 134 `"134"', add
label define by99a_uspace_lbl 135 `"135"', add
label define by99a_uspace_lbl 136 `"136"', add
label define by99a_uspace_lbl 137 `"137"', add
label define by99a_uspace_lbl 138 `"138"', add
label define by99a_uspace_lbl 139 `"139"', add
label define by99a_uspace_lbl 140 `"140"', add
label define by99a_uspace_lbl 141 `"141"', add
label define by99a_uspace_lbl 142 `"142"', add
label define by99a_uspace_lbl 143 `"143"', add
label define by99a_uspace_lbl 144 `"144"', add
label define by99a_uspace_lbl 145 `"145"', add
label define by99a_uspace_lbl 146 `"146"', add
label define by99a_uspace_lbl 147 `"147"', add
label define by99a_uspace_lbl 148 `"148"', add
label define by99a_uspace_lbl 149 `"149"', add
label define by99a_uspace_lbl 150 `"150"', add
label define by99a_uspace_lbl 151 `"151"', add
label define by99a_uspace_lbl 152 `"152"', add
label define by99a_uspace_lbl 153 `"153"', add
label define by99a_uspace_lbl 154 `"154"', add
label define by99a_uspace_lbl 155 `"155"', add
label define by99a_uspace_lbl 156 `"156"', add
label define by99a_uspace_lbl 157 `"157"', add
label define by99a_uspace_lbl 158 `"158"', add
label define by99a_uspace_lbl 159 `"159"', add
label define by99a_uspace_lbl 160 `"160"', add
label define by99a_uspace_lbl 161 `"161"', add
label define by99a_uspace_lbl 162 `"162"', add
label define by99a_uspace_lbl 163 `"163"', add
label define by99a_uspace_lbl 164 `"164"', add
label define by99a_uspace_lbl 165 `"165"', add
label define by99a_uspace_lbl 166 `"166"', add
label define by99a_uspace_lbl 167 `"167"', add
label define by99a_uspace_lbl 168 `"168"', add
label define by99a_uspace_lbl 169 `"169"', add
label define by99a_uspace_lbl 170 `"170"', add
label define by99a_uspace_lbl 171 `"171"', add
label define by99a_uspace_lbl 172 `"172"', add
label define by99a_uspace_lbl 173 `"173"', add
label define by99a_uspace_lbl 174 `"174"', add
label define by99a_uspace_lbl 175 `"175"', add
label define by99a_uspace_lbl 176 `"176"', add
label define by99a_uspace_lbl 177 `"177"', add
label define by99a_uspace_lbl 178 `"178"', add
label define by99a_uspace_lbl 179 `"179"', add
label define by99a_uspace_lbl 180 `"180"', add
label define by99a_uspace_lbl 181 `"181"', add
label define by99a_uspace_lbl 182 `"182"', add
label define by99a_uspace_lbl 183 `"183"', add
label define by99a_uspace_lbl 184 `"184"', add
label define by99a_uspace_lbl 185 `"185"', add
label define by99a_uspace_lbl 186 `"186"', add
label define by99a_uspace_lbl 187 `"187"', add
label define by99a_uspace_lbl 188 `"188"', add
label define by99a_uspace_lbl 189 `"189"', add
label define by99a_uspace_lbl 190 `"190"', add
label define by99a_uspace_lbl 191 `"191"', add
label define by99a_uspace_lbl 192 `"192"', add
label define by99a_uspace_lbl 193 `"193"', add
label define by99a_uspace_lbl 194 `"194"', add
label define by99a_uspace_lbl 195 `"195"', add
label define by99a_uspace_lbl 196 `"196"', add
label define by99a_uspace_lbl 197 `"197"', add
label define by99a_uspace_lbl 198 `"198"', add
label define by99a_uspace_lbl 199 `"199"', add
label define by99a_uspace_lbl 200 `"200+"', add
label define by99a_uspace_lbl 998 `"Undocumented"', add
label define by99a_uspace_lbl 999 `"Unknown"', add
label values by99a_uspace by99a_uspace_lbl

label define by99a_livspace_lbl 002 `"2 or less"'
label define by99a_livspace_lbl 003 `"3"', add
label define by99a_livspace_lbl 004 `"4"', add
label define by99a_livspace_lbl 005 `"5"', add
label define by99a_livspace_lbl 006 `"6"', add
label define by99a_livspace_lbl 007 `"7"', add
label define by99a_livspace_lbl 008 `"8"', add
label define by99a_livspace_lbl 009 `"9"', add
label define by99a_livspace_lbl 010 `"10"', add
label define by99a_livspace_lbl 011 `"11"', add
label define by99a_livspace_lbl 012 `"12"', add
label define by99a_livspace_lbl 013 `"13"', add
label define by99a_livspace_lbl 014 `"14"', add
label define by99a_livspace_lbl 015 `"15"', add
label define by99a_livspace_lbl 016 `"16"', add
label define by99a_livspace_lbl 017 `"17"', add
label define by99a_livspace_lbl 018 `"18"', add
label define by99a_livspace_lbl 019 `"19"', add
label define by99a_livspace_lbl 020 `"20"', add
label define by99a_livspace_lbl 021 `"21"', add
label define by99a_livspace_lbl 022 `"22"', add
label define by99a_livspace_lbl 023 `"23"', add
label define by99a_livspace_lbl 024 `"24"', add
label define by99a_livspace_lbl 025 `"25"', add
label define by99a_livspace_lbl 026 `"26"', add
label define by99a_livspace_lbl 027 `"27"', add
label define by99a_livspace_lbl 028 `"28"', add
label define by99a_livspace_lbl 029 `"29"', add
label define by99a_livspace_lbl 030 `"30"', add
label define by99a_livspace_lbl 031 `"31"', add
label define by99a_livspace_lbl 032 `"32"', add
label define by99a_livspace_lbl 033 `"33"', add
label define by99a_livspace_lbl 034 `"34"', add
label define by99a_livspace_lbl 035 `"35"', add
label define by99a_livspace_lbl 036 `"36"', add
label define by99a_livspace_lbl 037 `"37"', add
label define by99a_livspace_lbl 038 `"38"', add
label define by99a_livspace_lbl 039 `"39"', add
label define by99a_livspace_lbl 040 `"40"', add
label define by99a_livspace_lbl 041 `"41"', add
label define by99a_livspace_lbl 042 `"42"', add
label define by99a_livspace_lbl 043 `"43"', add
label define by99a_livspace_lbl 044 `"44"', add
label define by99a_livspace_lbl 045 `"45"', add
label define by99a_livspace_lbl 046 `"46"', add
label define by99a_livspace_lbl 047 `"47"', add
label define by99a_livspace_lbl 048 `"48"', add
label define by99a_livspace_lbl 049 `"49"', add
label define by99a_livspace_lbl 050 `"50"', add
label define by99a_livspace_lbl 051 `"51"', add
label define by99a_livspace_lbl 052 `"52"', add
label define by99a_livspace_lbl 053 `"53"', add
label define by99a_livspace_lbl 054 `"54"', add
label define by99a_livspace_lbl 055 `"55"', add
label define by99a_livspace_lbl 056 `"56"', add
label define by99a_livspace_lbl 057 `"57"', add
label define by99a_livspace_lbl 058 `"58"', add
label define by99a_livspace_lbl 059 `"59"', add
label define by99a_livspace_lbl 060 `"60"', add
label define by99a_livspace_lbl 061 `"61"', add
label define by99a_livspace_lbl 062 `"62"', add
label define by99a_livspace_lbl 063 `"63"', add
label define by99a_livspace_lbl 064 `"64"', add
label define by99a_livspace_lbl 065 `"65"', add
label define by99a_livspace_lbl 066 `"66"', add
label define by99a_livspace_lbl 067 `"67"', add
label define by99a_livspace_lbl 068 `"68"', add
label define by99a_livspace_lbl 069 `"69"', add
label define by99a_livspace_lbl 070 `"70"', add
label define by99a_livspace_lbl 071 `"71"', add
label define by99a_livspace_lbl 072 `"72"', add
label define by99a_livspace_lbl 073 `"73"', add
label define by99a_livspace_lbl 074 `"74"', add
label define by99a_livspace_lbl 075 `"75"', add
label define by99a_livspace_lbl 076 `"76"', add
label define by99a_livspace_lbl 077 `"77"', add
label define by99a_livspace_lbl 078 `"78"', add
label define by99a_livspace_lbl 079 `"79"', add
label define by99a_livspace_lbl 080 `"80"', add
label define by99a_livspace_lbl 081 `"81"', add
label define by99a_livspace_lbl 082 `"82"', add
label define by99a_livspace_lbl 083 `"83"', add
label define by99a_livspace_lbl 084 `"84"', add
label define by99a_livspace_lbl 085 `"85"', add
label define by99a_livspace_lbl 086 `"86"', add
label define by99a_livspace_lbl 087 `"87"', add
label define by99a_livspace_lbl 088 `"88"', add
label define by99a_livspace_lbl 089 `"89"', add
label define by99a_livspace_lbl 090 `"90"', add
label define by99a_livspace_lbl 091 `"91"', add
label define by99a_livspace_lbl 092 `"92"', add
label define by99a_livspace_lbl 093 `"93"', add
label define by99a_livspace_lbl 094 `"94"', add
label define by99a_livspace_lbl 095 `"95"', add
label define by99a_livspace_lbl 096 `"96"', add
label define by99a_livspace_lbl 097 `"97"', add
label define by99a_livspace_lbl 098 `"98"', add
label define by99a_livspace_lbl 099 `"99"', add
label define by99a_livspace_lbl 100 `"100"', add
label define by99a_livspace_lbl 101 `"101"', add
label define by99a_livspace_lbl 102 `"102"', add
label define by99a_livspace_lbl 103 `"103"', add
label define by99a_livspace_lbl 104 `"104"', add
label define by99a_livspace_lbl 105 `"105"', add
label define by99a_livspace_lbl 106 `"106"', add
label define by99a_livspace_lbl 107 `"107"', add
label define by99a_livspace_lbl 108 `"108"', add
label define by99a_livspace_lbl 109 `"109"', add
label define by99a_livspace_lbl 110 `"110"', add
label define by99a_livspace_lbl 111 `"111"', add
label define by99a_livspace_lbl 112 `"112"', add
label define by99a_livspace_lbl 113 `"113"', add
label define by99a_livspace_lbl 114 `"114"', add
label define by99a_livspace_lbl 115 `"115"', add
label define by99a_livspace_lbl 116 `"116"', add
label define by99a_livspace_lbl 117 `"117"', add
label define by99a_livspace_lbl 118 `"118"', add
label define by99a_livspace_lbl 119 `"119"', add
label define by99a_livspace_lbl 120 `"120"', add
label define by99a_livspace_lbl 121 `"121"', add
label define by99a_livspace_lbl 122 `"122"', add
label define by99a_livspace_lbl 123 `"123"', add
label define by99a_livspace_lbl 124 `"124"', add
label define by99a_livspace_lbl 125 `"125"', add
label define by99a_livspace_lbl 126 `"126"', add
label define by99a_livspace_lbl 127 `"127"', add
label define by99a_livspace_lbl 128 `"128"', add
label define by99a_livspace_lbl 129 `"129"', add
label define by99a_livspace_lbl 130 `"130"', add
label define by99a_livspace_lbl 131 `"131"', add
label define by99a_livspace_lbl 132 `"132"', add
label define by99a_livspace_lbl 135 `"135"', add
label define by99a_livspace_lbl 136 `"136"', add
label define by99a_livspace_lbl 137 `"137"', add
label define by99a_livspace_lbl 138 `"138"', add
label define by99a_livspace_lbl 139 `"139"', add
label define by99a_livspace_lbl 140 `"140"', add
label define by99a_livspace_lbl 141 `"141"', add
label define by99a_livspace_lbl 142 `"142"', add
label define by99a_livspace_lbl 143 `"143"', add
label define by99a_livspace_lbl 144 `"144"', add
label define by99a_livspace_lbl 145 `"145"', add
label define by99a_livspace_lbl 146 `"146"', add
label define by99a_livspace_lbl 147 `"147"', add
label define by99a_livspace_lbl 148 `"148"', add
label define by99a_livspace_lbl 149 `"149"', add
label define by99a_livspace_lbl 150 `"150+"', add
label define by99a_livspace_lbl 998 `"Undocumented"', add
label define by99a_livspace_lbl 999 `"Unknown"', add
label values by99a_livspace by99a_livspace_lbl

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

label define famunit_lbl 01 `"1"'
label define famunit_lbl 02 `"2"', add
label define famunit_lbl 03 `"3"', add
label define famunit_lbl 04 `"4"', add
label define famunit_lbl 05 `"5"', add
label define famunit_lbl 06 `"6"', add
label define famunit_lbl 07 `"7"', add
label define famunit_lbl 08 `"8"', add
label define famunit_lbl 09 `"9"', add
label define famunit_lbl 10 `"10"', add
label define famunit_lbl 11 `"11"', add
label define famunit_lbl 12 `"12"', add
label define famunit_lbl 13 `"13"', add
label define famunit_lbl 14 `"14"', add
label define famunit_lbl 15 `"15"', add
label define famunit_lbl 16 `"16"', add
label define famunit_lbl 17 `"17"', add
label define famunit_lbl 18 `"18"', add
label define famunit_lbl 19 `"19"', add
label define famunit_lbl 20 `"20"', add
label define famunit_lbl 21 `"21"', add
label define famunit_lbl 22 `"22"', add
label define famunit_lbl 23 `"23"', add
label define famunit_lbl 24 `"24"', add
label define famunit_lbl 25 `"25"', add
label define famunit_lbl 26 `"26"', add
label define famunit_lbl 27 `"27"', add
label define famunit_lbl 28 `"28"', add
label define famunit_lbl 29 `"29"', add
label define famunit_lbl 30 `"30"', add
label define famunit_lbl 31 `"31"', add
label define famunit_lbl 32 `"32"', add
label define famunit_lbl 33 `"33"', add
label define famunit_lbl 34 `"34"', add
label define famunit_lbl 35 `"35"', add
label define famunit_lbl 36 `"36"', add
label define famunit_lbl 37 `"37"', add
label define famunit_lbl 38 `"38"', add
label define famunit_lbl 39 `"39"', add
label define famunit_lbl 40 `"40"', add
label define famunit_lbl 41 `"41"', add
label define famunit_lbl 42 `"42"', add
label define famunit_lbl 43 `"43"', add
label define famunit_lbl 44 `"44"', add
label define famunit_lbl 45 `"45"', add
label define famunit_lbl 46 `"46"', add
label define famunit_lbl 47 `"47"', add
label define famunit_lbl 48 `"48"', add
label define famunit_lbl 49 `"49"', add
label define famunit_lbl 50 `"50"', add
label define famunit_lbl 51 `"51"', add
label define famunit_lbl 52 `"52"', add
label define famunit_lbl 53 `"53"', add
label define famunit_lbl 54 `"54"', add
label define famunit_lbl 55 `"55"', add
label define famunit_lbl 56 `"56"', add
label define famunit_lbl 57 `"57"', add
label define famunit_lbl 58 `"58"', add
label define famunit_lbl 59 `"59"', add
label define famunit_lbl 60 `"60"', add
label define famunit_lbl 61 `"61"', add
label define famunit_lbl 62 `"62"', add
label define famunit_lbl 63 `"63"', add
label define famunit_lbl 64 `"64"', add
label define famunit_lbl 65 `"65"', add
label define famunit_lbl 66 `"66"', add
label define famunit_lbl 67 `"67"', add
label define famunit_lbl 68 `"68"', add
label define famunit_lbl 69 `"69"', add
label define famunit_lbl 70 `"70"', add
label define famunit_lbl 71 `"71"', add
label define famunit_lbl 72 `"72"', add
label define famunit_lbl 73 `"73"', add
label define famunit_lbl 74 `"74"', add
label define famunit_lbl 75 `"75"', add
label define famunit_lbl 76 `"76"', add
label define famunit_lbl 77 `"77"', add
label define famunit_lbl 78 `"78"', add
label define famunit_lbl 79 `"79"', add
label define famunit_lbl 80 `"80"', add
label define famunit_lbl 81 `"81"', add
label define famunit_lbl 82 `"82"', add
label define famunit_lbl 83 `"83"', add
label define famunit_lbl 84 `"84"', add
label define famunit_lbl 85 `"85"', add
label define famunit_lbl 86 `"86"', add
label define famunit_lbl 87 `"87"', add
label define famunit_lbl 88 `"88"', add
label define famunit_lbl 89 `"89"', add
label define famunit_lbl 90 `"90"', add
label define famunit_lbl 91 `"91"', add
label define famunit_lbl 92 `"92"', add
label define famunit_lbl 93 `"93"', add
label define famunit_lbl 94 `"94"', add
label define famunit_lbl 95 `"95"', add
label define famunit_lbl 96 `"96"', add
label define famunit_lbl 97 `"97"', add
label define famunit_lbl 98 `"98"', add
label define famunit_lbl 99 `"99+"', add
label values famunit famunit_lbl

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

label define erelate_lbl 10 `"Reference person / Head"'
label define erelate_lbl 20 `"Spouse or partner"', add
label define erelate_lbl 21 `"Husband or wife"', add
label define erelate_lbl 22 `"Partner in consensual union"', add
label define erelate_lbl 30 `"Child/child-in-law of head or of spouse/partner"', add
label define erelate_lbl 31 `"Spouse or partner of child of head"', add
label define erelate_lbl 40 `"Parent of head, of spouse, or of partner"', add
label define erelate_lbl 50 `"Other relative of head, spouse, or partner"', add
label define erelate_lbl 60 `"Non-relative of head"', add
label define erelate_lbl 61 `"Foster child"', add
label define erelate_lbl 62 `"Boarder"', add
label define erelate_lbl 63 `"Domestic servant"', add
label define erelate_lbl 64 `"Other"', add
label define erelate_lbl 99 `"Not stated / unknown"', add
label values erelate erelate_lbl

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

label define age2_lbl 01 `"0 to 4"'
label define age2_lbl 02 `"5 to 9"', add
label define age2_lbl 03 `"10 to 14"', add
label define age2_lbl 04 `"15 to 19"', add
label define age2_lbl 05 `"15 to 17"', add
label define age2_lbl 06 `"18 to 19"', add
label define age2_lbl 07 `"18 to 24"', add
label define age2_lbl 08 `"20 to 24"', add
label define age2_lbl 09 `"25 to 29"', add
label define age2_lbl 10 `"30 to 34"', add
label define age2_lbl 11 `"35 to 39"', add
label define age2_lbl 12 `"40 to 44"', add
label define age2_lbl 13 `"45 to 49"', add
label define age2_lbl 14 `"50 to 54"', add
label define age2_lbl 15 `"55 to 59"', add
label define age2_lbl 16 `"60 to 64"', add
label define age2_lbl 17 `"65 to 69"', add
label define age2_lbl 18 `"70 to 74"', add
label define age2_lbl 19 `"75 to 79"', add
label define age2_lbl 20 `"80+"', add
label define age2_lbl 98 `"Unknown"', add
label values age2 age2_lbl

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

label define emarst_lbl 0 `"NIU (not in universe)"'
label define emarst_lbl 1 `"Never married"', add
label define emarst_lbl 2 `"Married"', add
label define emarst_lbl 3 `"Widowed and not remarried"', add
label define emarst_lbl 4 `"Divorced/separated and not remarried"', add
label define emarst_lbl 5 `"Widowed or divorced"', add
label define emarst_lbl 9 `"Unknown / missing"', add
label values emarst emarst_lbl

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

label define chplan_lbl 00 `"0 children"'
label define chplan_lbl 01 `"1 child"', add
label define chplan_lbl 02 `"2 children"', add
label define chplan_lbl 03 `"3"', add
label define chplan_lbl 04 `"4"', add
label define chplan_lbl 05 `"5"', add
label define chplan_lbl 06 `"6"', add
label define chplan_lbl 07 `"7"', add
label define chplan_lbl 08 `"8"', add
label define chplan_lbl 09 `"9"', add
label define chplan_lbl 10 `"10"', add
label define chplan_lbl 98 `"Not specified"', add
label define chplan_lbl 99 `"NIU (not in universe)"', add
label values chplan chplan_lbl

label define homechd_lbl 00 `"0"'
label define homechd_lbl 01 `"1"', add
label define homechd_lbl 02 `"2"', add
label define homechd_lbl 03 `"3"', add
label define homechd_lbl 04 `"4"', add
label define homechd_lbl 05 `"5"', add
label define homechd_lbl 06 `"6"', add
label define homechd_lbl 07 `"7"', add
label define homechd_lbl 08 `"8"', add
label define homechd_lbl 09 `"9"', add
label define homechd_lbl 10 `"10"', add
label define homechd_lbl 11 `"11"', add
label define homechd_lbl 12 `"12"', add
label define homechd_lbl 13 `"13"', add
label define homechd_lbl 14 `"14"', add
label define homechd_lbl 15 `"15"', add
label define homechd_lbl 16 `"16"', add
label define homechd_lbl 17 `"17"', add
label define homechd_lbl 18 `"18"', add
label define homechd_lbl 19 `"19"', add
label define homechd_lbl 20 `"20+"', add
label define homechd_lbl 98 `"Unknown"', add
label define homechd_lbl 99 `"NIU (not in universe)"', add
label values homechd homechd_lbl

label define awaychd_lbl 00 `"0"'
label define awaychd_lbl 01 `"1"', add
label define awaychd_lbl 02 `"2"', add
label define awaychd_lbl 03 `"3"', add
label define awaychd_lbl 04 `"4"', add
label define awaychd_lbl 05 `"5"', add
label define awaychd_lbl 06 `"6"', add
label define awaychd_lbl 07 `"7"', add
label define awaychd_lbl 08 `"8"', add
label define awaychd_lbl 09 `"9"', add
label define awaychd_lbl 10 `"10"', add
label define awaychd_lbl 11 `"11"', add
label define awaychd_lbl 12 `"12"', add
label define awaychd_lbl 13 `"13"', add
label define awaychd_lbl 14 `"14"', add
label define awaychd_lbl 15 `"15"', add
label define awaychd_lbl 16 `"16"', add
label define awaychd_lbl 17 `"17"', add
label define awaychd_lbl 18 `"18"', add
label define awaychd_lbl 19 `"19"', add
label define awaychd_lbl 20 `"20"', add
label define awaychd_lbl 98 `"Unknown"', add
label define awaychd_lbl 99 `"NIU (not in universe)"', add
label values awaychd awaychd_lbl

label define nativty_lbl 0 `"NIU (not universe)"'
label define nativty_lbl 1 `"Native-born"', add
label define nativty_lbl 2 `"Foreign-born"', add
label define nativty_lbl 9 `"Unknown/missing"', add
label values nativty nativty_lbl

label define bplby_lbl 01 `"Brest"'
label define bplby_lbl 02 `"Vitebsk"', add
label define bplby_lbl 03 `"Gomel"', add
label define bplby_lbl 04 `"Grodno"', add
label define bplby_lbl 05 `"Minsk-City"', add
label define bplby_lbl 06 `"Minsk"', add
label define bplby_lbl 07 `"Mogilev"', add
label define bplby_lbl 08 `"Foreign country"', add
label define bplby_lbl 97 `"Response suppressed"', add
label define bplby_lbl 98 `"Unknown"', add
label values bplby bplby_lbl

label define citizen_lbl 1 `"Citizen, not specified"'
label define citizen_lbl 2 `"Citizen by birth"', add
label define citizen_lbl 3 `"Naturalized citizen"', add
label define citizen_lbl 4 `"Not a citizen"', add
label define citizen_lbl 5 `"Without citizenship, stateless"', add
label define citizen_lbl 8 `"Unknown"', add
label define citizen_lbl 9 `"NIU (not in universe)"', add
label values citizen citizen_lbl

label define nation_lbl 00000 `"NIU (not in universe)"'
label define nation_lbl 10000 `"Africa"', add
label define nation_lbl 11000 `"Eastern Africa"', add
label define nation_lbl 11010 `"Burundi"', add
label define nation_lbl 11020 `"Comoros"', add
label define nation_lbl 11030 `"Djibouti"', add
label define nation_lbl 11040 `"Eritrea"', add
label define nation_lbl 11050 `"Ethiopia"', add
label define nation_lbl 11060 `"Kenya"', add
label define nation_lbl 11070 `"Madagascar"', add
label define nation_lbl 11080 `"Malawi"', add
label define nation_lbl 11090 `"Mauritius"', add
label define nation_lbl 11100 `"Mozambique"', add
label define nation_lbl 11110 `"Reunion"', add
label define nation_lbl 11120 `"Rwanda"', add
label define nation_lbl 11130 `"Seychelles"', add
label define nation_lbl 11140 `"Somalia"', add
label define nation_lbl 11150 `"Uganda"', add
label define nation_lbl 11160 `"Tanzania"', add
label define nation_lbl 11170 `"Zambia"', add
label define nation_lbl 11180 `"Zimbabwe"', add
label define nation_lbl 11999 `"Eastern Africa, n.s."', add
label define nation_lbl 12000 `"Middle Africa"', add
label define nation_lbl 12010 `"Angola"', add
label define nation_lbl 12020 `"Cameroon"', add
label define nation_lbl 12030 `"Central African Republic"', add
label define nation_lbl 12040 `"Chad"', add
label define nation_lbl 12050 `"Congo (Republic of)"', add
label define nation_lbl 12060 `"Democratic Republic of Congo"', add
label define nation_lbl 12070 `"Equatorial Guinea"', add
label define nation_lbl 12080 `"Gabon"', add
label define nation_lbl 12090 `"Sao Tome and Principe"', add
label define nation_lbl 12999 `"Middle Africa, n.s."', add
label define nation_lbl 13000 `"Northern Africa"', add
label define nation_lbl 13010 `"Algeria"', add
label define nation_lbl 13011 `"Algeria/Tunisia"', add
label define nation_lbl 13020 `"Egypt/United Arab Rep."', add
label define nation_lbl 13021 `"Egypt/Sudan"', add
label define nation_lbl 13030 `"Libya"', add
label define nation_lbl 13040 `"Morocco"', add
label define nation_lbl 13050 `"Sudan"', add
label define nation_lbl 13060 `"Tunisia"', add
label define nation_lbl 13070 `"Western Sahara"', add
label define nation_lbl 13999 `"Northern Africa, n.s."', add
label define nation_lbl 14000 `"Southern Africa"', add
label define nation_lbl 14010 `"Botswana"', add
label define nation_lbl 14020 `"Lesotho"', add
label define nation_lbl 14030 `"Namibia"', add
label define nation_lbl 14040 `"South Africa"', add
label define nation_lbl 14050 `"Swaziland"', add
label define nation_lbl 14999 `"Southern Africa, n.s."', add
label define nation_lbl 15000 `"Western Africa"', add
label define nation_lbl 15010 `"Benin"', add
label define nation_lbl 15020 `"Burkina Faso"', add
label define nation_lbl 15030 `"Cape Verde"', add
label define nation_lbl 15040 `"Ivory Coast"', add
label define nation_lbl 15050 `"Gambia"', add
label define nation_lbl 15060 `"Ghana"', add
label define nation_lbl 15070 `"Guinea"', add
label define nation_lbl 15080 `"Guinea-Bissau"', add
label define nation_lbl 15090 `"Liberia"', add
label define nation_lbl 15100 `"Mali"', add
label define nation_lbl 15110 `"Mauritania"', add
label define nation_lbl 15120 `"Niger"', add
label define nation_lbl 15130 `"Nigeria"', add
label define nation_lbl 15140 `"St. Helena and Ascension"', add
label define nation_lbl 15150 `"Senegal"', add
label define nation_lbl 15160 `"Sierra Leone"', add
label define nation_lbl 15170 `"Togo"', add
label define nation_lbl 15991 `"Burkina-Faso, Niger, Ivory-Coast, Benin, Togo"', add
label define nation_lbl 15992 `"Liberia, Sierra-Leone, Nigeria, Ghana"', add
label define nation_lbl 15999 `"West Africa, n.s."', add
label define nation_lbl 19990 `"Africa, n.s."', add
label define nation_lbl 19991 `"Central and South Africa"', add
label define nation_lbl 19992 `"Arab African countries"', add
label define nation_lbl 19993 `"Non-Arab African countries"', add
label define nation_lbl 19994 `"Other Arab countries"', add
label define nation_lbl 20000 `"Americas"', add
label define nation_lbl 21000 `"Caribbean"', add
label define nation_lbl 21010 `"Anguilla"', add
label define nation_lbl 21020 `"Antigua-Barbuda"', add
label define nation_lbl 21030 `"Aruba"', add
label define nation_lbl 21040 `"Bahamas"', add
label define nation_lbl 21050 `"Barbados"', add
label define nation_lbl 21060 `"British Virgin Islands"', add
label define nation_lbl 21070 `"Cayman Isles"', add
label define nation_lbl 21080 `"Cuba"', add
label define nation_lbl 21090 `"Dominica"', add
label define nation_lbl 21100 `"Dominican Republic"', add
label define nation_lbl 21110 `"Grenada"', add
label define nation_lbl 21120 `"Guadeloupe"', add
label define nation_lbl 21130 `"Haiti"', add
label define nation_lbl 21140 `"Jamaica"', add
label define nation_lbl 21150 `"Martinique"', add
label define nation_lbl 21160 `"Montserrat"', add
label define nation_lbl 21170 `"Netherlands Antilles"', add
label define nation_lbl 21180 `"Puerto Rico"', add
label define nation_lbl 21190 `"St. Kitts-Nevis"', add
label define nation_lbl 21200 `"St. Lucia"', add
label define nation_lbl 21210 `"St. Vincent"', add
label define nation_lbl 21220 `"Trinidad and Tobago"', add
label define nation_lbl 21230 `"Turks and Caicos"', add
label define nation_lbl 21999 `"Caribbean, n.s."', add
label define nation_lbl 22000 `"Central America"', add
label define nation_lbl 22010 `"Belize/British Honduras"', add
label define nation_lbl 22020 `"Costa Rica"', add
label define nation_lbl 22030 `"El Salvador"', add
label define nation_lbl 22040 `"Guatemala"', add
label define nation_lbl 22050 `"Honduras"', add
label define nation_lbl 22060 `"Mexico"', add
label define nation_lbl 22070 `"Nicaragua"', add
label define nation_lbl 22080 `"Panama"', add
label define nation_lbl 22081 `"Panama Canal Zone"', add
label define nation_lbl 22999 `"Central America, n.s."', add
label define nation_lbl 23000 `"South America"', add
label define nation_lbl 23010 `"Argentina"', add
label define nation_lbl 23020 `"Bolivia"', add
label define nation_lbl 23030 `"Brazil"', add
label define nation_lbl 23040 `"Chile"', add
label define nation_lbl 23050 `"Colombia"', add
label define nation_lbl 23060 `"Ecuador"', add
label define nation_lbl 23070 `"Falkland Islands"', add
label define nation_lbl 23080 `"French Guiana"', add
label define nation_lbl 23090 `"Guyana/British Guiana"', add
label define nation_lbl 23100 `"Paraguay"', add
label define nation_lbl 23110 `"Peru"', add
label define nation_lbl 23120 `"Suriname"', add
label define nation_lbl 23130 `"Uruguay"', add
label define nation_lbl 23140 `"Venezuela"', add
label define nation_lbl 23990 `"South America, n.s."', add
label define nation_lbl 24000 `"North America"', add
label define nation_lbl 24010 `"Bermuda"', add
label define nation_lbl 24020 `"Canada"', add
label define nation_lbl 24030 `"Greenland"', add
label define nation_lbl 24040 `"United States"', add
label define nation_lbl 24041 `"U.S. Outlying Areas and Territories"', add
label define nation_lbl 24090 `"U.S. and Canada"', add
label define nation_lbl 24999 `"North America, n.s."', add
label define nation_lbl 29900 `"Americas, n.s."', add
label define nation_lbl 29901 `"America/Oceania"', add
label define nation_lbl 29902 `"Central/South America, n.s."', add
label define nation_lbl 29903 `"Central-America and Carribean"', add
label define nation_lbl 29904 `"Central/South America and Caribbean"', add
label define nation_lbl 29905 `"North and Central America, n.s."', add
label define nation_lbl 30000 `"Asia"', add
label define nation_lbl 31000 `"Eastern Asia"', add
label define nation_lbl 31010 `"China"', add
label define nation_lbl 31011 `"Hong Kong"', add
label define nation_lbl 31012 `"Macau"', add
label define nation_lbl 31013 `"Taiwan"', add
label define nation_lbl 31020 `"Japan"', add
label define nation_lbl 31030 `"Korea"', add
label define nation_lbl 31031 `"Korea, DPR (North)"', add
label define nation_lbl 31032 `"Korea, RO (South)"', add
label define nation_lbl 31040 `"Mongolia"', add
label define nation_lbl 31999 `"Eastern Asia, n.s."', add
label define nation_lbl 32000 `"South-Central Asia"', add
label define nation_lbl 32010 `"Afghanistan"', add
label define nation_lbl 32020 `"Bangladesh"', add
label define nation_lbl 32030 `"Bhutan"', add
label define nation_lbl 32040 `"India"', add
label define nation_lbl 32041 `"India/Pakistan"', add
label define nation_lbl 32050 `"Iran"', add
label define nation_lbl 32060 `"Kazakhstan"', add
label define nation_lbl 32070 `"Kyrgyzstan"', add
label define nation_lbl 32080 `"Maldives"', add
label define nation_lbl 32090 `"Nepal"', add
label define nation_lbl 32100 `"Pakistan"', add
label define nation_lbl 32110 `"Sri Lanka (Ceylon)"', add
label define nation_lbl 32120 `"Tajikistan"', add
label define nation_lbl 32130 `"Turkmenistan"', add
label define nation_lbl 32140 `"Uzbekistan"', add
label define nation_lbl 32990 `"Burma, India, Pakistan, Ceylon"', add
label define nation_lbl 32999 `"South-Central Asia, n.s."', add
label define nation_lbl 33000 `"South-Eastern Asia"', add
label define nation_lbl 33010 `"Brunei"', add
label define nation_lbl 33020 `"Cambodia (Kampuchea)"', add
label define nation_lbl 33030 `"East Timor"', add
label define nation_lbl 33040 `"Indonesia"', add
label define nation_lbl 33050 `"Laos"', add
label define nation_lbl 33060 `"Malaysia"', add
label define nation_lbl 33070 `"Myanmar (Burma)"', add
label define nation_lbl 33080 `"Philippines"', add
label define nation_lbl 33090 `"Singapore"', add
label define nation_lbl 33100 `"Thailand"', add
label define nation_lbl 33110 `"Vietnam"', add
label define nation_lbl 33991 `"Laos and Cambodia"', add
label define nation_lbl 33992 `"Malaysia and Singapore"', add
label define nation_lbl 33999 `"South-Eastern Asia, n.s."', add
label define nation_lbl 34000 `"Western Asia"', add
label define nation_lbl 34010 `"Armenia"', add
label define nation_lbl 34020 `"Azerbaijan"', add
label define nation_lbl 34030 `"Bahrain"', add
label define nation_lbl 34040 `"Cyprus"', add
label define nation_lbl 34050 `"Georgia"', add
label define nation_lbl 34060 `"Iraq"', add
label define nation_lbl 34070 `"Israel"', add
label define nation_lbl 34080 `"Jordan"', add
label define nation_lbl 34090 `"Kuwait"', add
label define nation_lbl 34100 `"Lebanon"', add
label define nation_lbl 34110 `"Palestine"', add
label define nation_lbl 34120 `"Oman"', add
label define nation_lbl 34130 `"Qatar"', add
label define nation_lbl 34140 `"Saudi Arabia"', add
label define nation_lbl 34150 `"Syria"', add
label define nation_lbl 34151 `"Syria/Lebanon"', add
label define nation_lbl 34160 `"Turkey"', add
label define nation_lbl 34170 `"United Arab Emirates"', add
label define nation_lbl 34180 `"Yemen"', add
label define nation_lbl 34999 `"Western Asia, n.s."', add
label define nation_lbl 39900 `"Asia, n.s."', add
label define nation_lbl 39901 `"South-East/South Asia, n.s."', add
label define nation_lbl 39902 `"West Central/Middle East Asia"', add
label define nation_lbl 39903 `"Arab Countries"', add
label define nation_lbl 39904 `"Non-Arab Asian countries"', add
label define nation_lbl 39905 `"Former Soviet Republics, Asia"', add
label define nation_lbl 40000 `"Europe"', add
label define nation_lbl 41000 `"Eastern Europe"', add
label define nation_lbl 41010 `"Belarus"', add
label define nation_lbl 41020 `"Bulgaria"', add
label define nation_lbl 41021 `"Bulgaria/Greece"', add
label define nation_lbl 41030 `"Czech Republic/Czechoslovakia"', add
label define nation_lbl 41040 `"Hungary"', add
label define nation_lbl 41050 `"Poland"', add
label define nation_lbl 41060 `"Moldova"', add
label define nation_lbl 41070 `"Romania"', add
label define nation_lbl 41080 `"Russia/USSR"', add
label define nation_lbl 41090 `"Slovakia"', add
label define nation_lbl 41100 `"Ukraine"', add
label define nation_lbl 41999 `"Eastern Europe, n.s."', add
label define nation_lbl 42000 `"Northern Europe"', add
label define nation_lbl 42010 `"Denmark"', add
label define nation_lbl 42020 `"Estonia"', add
label define nation_lbl 42030 `"Faroe Islands"', add
label define nation_lbl 42040 `"Finland"', add
label define nation_lbl 42050 `"Iceland"', add
label define nation_lbl 42060 `"Ireland"', add
label define nation_lbl 42070 `"Latvia"', add
label define nation_lbl 42080 `"Lithuania"', add
label define nation_lbl 42090 `"Norway"', add
label define nation_lbl 42100 `"Svalbard and Jan Mayen Islands"', add
label define nation_lbl 42110 `"Sweden"', add
label define nation_lbl 42120 `"United Kingdom"', add
label define nation_lbl 42990 `"Nordic countries"', add
label define nation_lbl 42999 `"Northern Europe, n.s."', add
label define nation_lbl 43000 `"Southern Europe"', add
label define nation_lbl 43010 `"Albania"', add
label define nation_lbl 43020 `"Andorra"', add
label define nation_lbl 43030 `"Bosnia and Herzegovina"', add
label define nation_lbl 43040 `"Croatia"', add
label define nation_lbl 43050 `"Gibraltar"', add
label define nation_lbl 43060 `"Greece"', add
label define nation_lbl 43070 `"Italy"', add
label define nation_lbl 43071 `"Vatican"', add
label define nation_lbl 43080 `"Malta"', add
label define nation_lbl 43090 `"Portugal"', add
label define nation_lbl 43100 `"San Marino"', add
label define nation_lbl 43110 `"Slovenia"', add
label define nation_lbl 43120 `"Spain"', add
label define nation_lbl 43130 `"Macedonia"', add
label define nation_lbl 43140 `"Yugoslavia"', add
label define nation_lbl 43141 `"Montenegro"', add
label define nation_lbl 43142 `"Serbia"', add
label define nation_lbl 43143 `"Kosovo"', add
label define nation_lbl 43144 `"Serbia and Montenegro"', add
label define nation_lbl 43999 `"Southern Europe, n.s."', add
label define nation_lbl 44000 `"Western Europe"', add
label define nation_lbl 44010 `"Austria"', add
label define nation_lbl 44020 `"Belgium"', add
label define nation_lbl 44030 `"France"', add
label define nation_lbl 44040 `"Germany"', add
label define nation_lbl 44041 `"West Germany"', add
label define nation_lbl 44042 `"East Germany"', add
label define nation_lbl 44050 `"Liechtenstein"', add
label define nation_lbl 44060 `"Luxembourg"', add
label define nation_lbl 44070 `"Monaco"', add
label define nation_lbl 44080 `"Netherlands"', add
label define nation_lbl 44090 `"Switzerland"', add
label define nation_lbl 44999 `"Western Europe, n.s."', add
label define nation_lbl 49990 `"Europe, n.s."', add
label define nation_lbl 49991 `"Central-Eastern Europe"', add
label define nation_lbl 49992 `"European Union"', add
label define nation_lbl 49993 `"Countries newly added to European Union"', add
label define nation_lbl 49994 `"Former Soviet Republics, Europe"', add
label define nation_lbl 50000 `"Oceania"', add
label define nation_lbl 51000 `"Australia and New Zealand"', add
label define nation_lbl 51010 `"Australia"', add
label define nation_lbl 51020 `"New Zealand"', add
label define nation_lbl 51030 `"Norfolk Islands"', add
label define nation_lbl 51999 `"Australia and New Zealand, n.s."', add
label define nation_lbl 52000 `"Melanesia"', add
label define nation_lbl 52010 `"Fiji"', add
label define nation_lbl 52020 `"New Caledonia"', add
label define nation_lbl 52030 `"Papua New Guinea"', add
label define nation_lbl 52040 `"Solomon Islands"', add
label define nation_lbl 52050 `"Vanuatu (New Hebrides)"', add
label define nation_lbl 52999 `"Melanesia, n.s."', add
label define nation_lbl 53000 `"Micronesia"', add
label define nation_lbl 53010 `"Kiribati"', add
label define nation_lbl 53020 `"Marshall Islands"', add
label define nation_lbl 53030 `"Nauru"', add
label define nation_lbl 53040 `"Northern Mariana Isls."', add
label define nation_lbl 53050 `"Palau"', add
label define nation_lbl 53999 `"Micronesia, n.e.c."', add
label define nation_lbl 54000 `"Polynesia"', add
label define nation_lbl 54010 `"Cook Islands"', add
label define nation_lbl 54020 `"French Polynesia"', add
label define nation_lbl 54030 `"Niue"', add
label define nation_lbl 54040 `"Pitcairn Island"', add
label define nation_lbl 54050 `"Western Samoa"', add
label define nation_lbl 54060 `"Eastern Samoa"', add
label define nation_lbl 54070 `"Tokelau"', add
label define nation_lbl 54080 `"Tonga"', add
label define nation_lbl 54090 `"Tuvalu"', add
label define nation_lbl 54100 `"Wallis and Futuna Isls."', add
label define nation_lbl 54999 `"Polynesia, n.s."', add
label define nation_lbl 59999 `"Oceania, n.s."', add
label define nation_lbl 60000 `"Asia n.s. or Oceania n.s."', add
label define nation_lbl 70000 `"Other Countries"', add
label define nation_lbl 70010 `"Europe, Australia and New Zealand"', add
label define nation_lbl 70020 `"Australia, New Zealand, and stateless"', add
label define nation_lbl 99997 `"No citizenship/nationality"', add
label define nation_lbl 99998 `"Foreign, country unknown"', add
label define nation_lbl 99999 `"Unknown"', add
label values nation nation_lbl

label define ethnby_lbl 001 `"Belarusians"'
label define ethnby_lbl 002 `"Russians"', add
label define ethnby_lbl 003 `"Poles"', add
label define ethnby_lbl 004 `"Ukrainians"', add
label define ethnby_lbl 005 `"Jews"', add
label define ethnby_lbl 006 `"Tatars"', add
label define ethnby_lbl 007 `"Gypsy"', add
label define ethnby_lbl 008 `"Lithuanians"', add
label define ethnby_lbl 009 `"Latvians"', add
label define ethnby_lbl 010 `"Estonians"', add
label define ethnby_lbl 011 `"Azerbaijanians"', add
label define ethnby_lbl 012 `"Armenians"', add
label define ethnby_lbl 014 `"Georgians"', add
label define ethnby_lbl 015 `"Kazakhs"', add
label define ethnby_lbl 017 `"Moldavians"', add
label define ethnby_lbl 018 `"Tadjiks"', add
label define ethnby_lbl 021 `"Turkmen"', add
label define ethnby_lbl 022 `"Uzbeks"', add
label define ethnby_lbl 041 `"Bashkirs"', add
label define ethnby_lbl 050 `"Karelians"', add
label define ethnby_lbl 051 `"Komi"', add
label define ethnby_lbl 054 `"Lezgin"', add
label define ethnby_lbl 055 `"Mari"', add
label define ethnby_lbl 056 `"Mordovians"', add
label define ethnby_lbl 058 `"Ossetians"', add
label define ethnby_lbl 065 `"Udmurt"', add
label define ethnby_lbl 069 `"Chechen"', add
label define ethnby_lbl 071 `"Chuvash"', add
label define ethnby_lbl 131 `"Arabs"', add
label define ethnby_lbl 133 `"Afghans"', add
label define ethnby_lbl 135 `"Bulgarians"', add
label define ethnby_lbl 137 `"Vietnamese"', add
label define ethnby_lbl 139 `"Greeks"', add
label define ethnby_lbl 145 `"Koreans"', add
label define ethnby_lbl 148 `"Germans"', add
label define ethnby_lbl 173 `"Other nationalities"', add
label define ethnby_lbl 997 `"Response suppressed"', add
label define ethnby_lbl 998 `"Not specified"', add
label values ethnby ethnby_lbl

label define langby_lbl 01 `"Belarusian"'
label define langby_lbl 02 `"Russian"', add
label define langby_lbl 03 `"Polish"', add
label define langby_lbl 04 `"Ukrainian"', add
label define langby_lbl 05 `"Gypsi"', add
label define langby_lbl 06 `"Lithuanian"', add
label define langby_lbl 07 `"Azerbaijanian"', add
label define langby_lbl 08 `"Armenian"', add
label define langby_lbl 09 `"Georgian"', add
label define langby_lbl 10 `"Vietnamese"', add
label define langby_lbl 11 `"Other"', add
label define langby_lbl 97 `"Response suppressed"', add
label define langby_lbl 98 `"Not specified"', add
label values langby langby_lbl

label define langby2_lbl 001 `"Belarusian"'
label define langby2_lbl 002 `"Russian"', add
label define langby2_lbl 003 `"Polish"', add
label define langby2_lbl 004 `"Ukrainian"', add
label define langby2_lbl 005 `"Jewish"', add
label define langby2_lbl 006 `"Tatar"', add
label define langby2_lbl 007 `"Gypsi"', add
label define langby2_lbl 008 `"Lithuanian"', add
label define langby2_lbl 009 `"Latvian"', add
label define langby2_lbl 010 `"Estonian"', add
label define langby2_lbl 011 `"Azerbaijanian"', add
label define langby2_lbl 012 `"Armenian"', add
label define langby2_lbl 014 `"Georgian"', add
label define langby2_lbl 015 `"Kazakh"', add
label define langby2_lbl 017 `"Moldovian"', add
label define langby2_lbl 018 `"Tadjik"', add
label define langby2_lbl 021 `"Turkoman"', add
label define langby2_lbl 022 `"Uzbek"', add
label define langby2_lbl 126 `"Turkish"', add
label define langby2_lbl 130 `"English"', add
label define langby2_lbl 131 `"Arabic"', add
label define langby2_lbl 135 `"Bulgarian"', add
label define langby2_lbl 142 `"Spanish"', add
label define langby2_lbl 143 `"Italian"', add
label define langby2_lbl 148 `"German"', add
label define langby2_lbl 157 `"French"', add
label define langby2_lbl 160 `"Czech"', add
label define langby2_lbl 997 `"Response suppressed"', add
label define langby2_lbl 998 `"Not specified"', add
label define langby2_lbl 999 `"Unknown"', add
label values langby2 langby2_lbl

label define mtngby_lbl 001 `"Belarusian"'
label define mtngby_lbl 002 `"Russian"', add
label define mtngby_lbl 003 `"Polish"', add
label define mtngby_lbl 004 `"Ukrainian"', add
label define mtngby_lbl 005 `"Jewish"', add
label define mtngby_lbl 006 `"Tatar"', add
label define mtngby_lbl 007 `"Gypsi"', add
label define mtngby_lbl 008 `"Lithuanian"', add
label define mtngby_lbl 009 `"Latvian"', add
label define mtngby_lbl 011 `"Azerbaijanian"', add
label define mtngby_lbl 012 `"Armenian"', add
label define mtngby_lbl 014 `"Georgian"', add
label define mtngby_lbl 015 `"Kazakh"', add
label define mtngby_lbl 017 `"Moldovian"', add
label define mtngby_lbl 018 `"Tadjik"', add
label define mtngby_lbl 022 `"Uzbek"', add
label define mtngby_lbl 041 `"Bashkir"', add
label define mtngby_lbl 056 `"Mordovian"', add
label define mtngby_lbl 058 `"Ossetian"', add
label define mtngby_lbl 065 `"Udmurt"', add
label define mtngby_lbl 069 `"Chechen"', add
label define mtngby_lbl 071 `"Chuvash"', add
label define mtngby_lbl 148 `"German"', add
label define mtngby_lbl 131 `"Arabic"', add
label define mtngby_lbl 133 `"Afghan"', add
label define mtngby_lbl 137 `"Vietnamese"', add
label define mtngby_lbl 173 `"Other languages"', add
label define mtngby_lbl 997 `"Response suppressed"', add
label define mtngby_lbl 998 `"Not specified"', add
label values mtngby mtngby_lbl

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

label define educby_lbl 00 `"NIU (not in universe)"'
label define educby_lbl 10 `"None (illiterate)"', add
label define educby_lbl 20 `"Primary"', add
label define educby_lbl 21 `"Primary general"', add
label define educby_lbl 22 `"Primary vocational (vocational)"', add
label define educby_lbl 30 `"Secondary"', add
label define educby_lbl 31 `"Basic general (incomplete secondary)"', add
label define educby_lbl 32 `"Secondary general"', add
label define educby_lbl 33 `"Secondary vocational (secondary specialized)"', add
label define educby_lbl 40 `"Higher vocational (higher)"', add
label define educby_lbl 99 `"Unknown (includes literate with no primary completed)"', add
label values educby educby_lbl

label define eedatta_lbl 00 `"NIU (not in universe)"'
label define eedatta_lbl 10 `"Less than primary"', add
label define eedatta_lbl 20 `"Primary (first stage of basic education)"', add
label define eedatta_lbl 30 `"Lower secondary (second stage of basic education)"', add
label define eedatta_lbl 40 `"Upper secondary"', add
label define eedatta_lbl 50 `"Post-secondary non-tertiary education"', add
label define eedatta_lbl 60 `"University completed"', add
label define eedatta_lbl 99 `"Unknown/missing"', add
label values eedatta eedatta_lbl

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

label define eempsta_lbl 000 `"NIU (not in universe)"'
label define eempsta_lbl 110 `"Employed"', add
label define eempsta_lbl 120 `"Unemployed"', add
label define eempsta_lbl 121 `"Unemployed, never worked before"', add
label define eempsta_lbl 200 `"Not economically active, unspecified"', add
label define eempsta_lbl 210 `"Students"', add
label define eempsta_lbl 220 `"Pension or capital income recipients"', add
label define eempsta_lbl 230 `"Homemakers"', add
label define eempsta_lbl 240 `"Others"', add
label define eempsta_lbl 999 `"Unknown / missing"', add
label values eempsta eempsta_lbl

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

label define eclaswk_lbl 0 `"NIU (not in universe)"'
label define eclaswk_lbl 1 `"Employees"', add
label define eclaswk_lbl 2 `"Employers"', add
label define eclaswk_lbl 3 `"Own-account worker"', add
label define eclaswk_lbl 4 `"Contributing family workers"', add
label define eclaswk_lbl 5 `"Members of producers' co-operatives"', add
label define eclaswk_lbl 6 `"Persons not classificable by status"', add
label define eclaswk_lbl 9 `"Unknown"', add
label values eclaswk eclaswk_lbl

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

label define mgyrs1_lbl 00 `"Less than 1 year"'
label define mgyrs1_lbl 01 `"1 year (or 1 year or less)"', add
label define mgyrs1_lbl 02 `"2 years"', add
label define mgyrs1_lbl 03 `"3 years"', add
label define mgyrs1_lbl 04 `"4 years"', add
label define mgyrs1_lbl 05 `"5 years"', add
label define mgyrs1_lbl 06 `"6 years"', add
label define mgyrs1_lbl 07 `"7 years"', add
label define mgyrs1_lbl 08 `"8 years"', add
label define mgyrs1_lbl 09 `"9 years"', add
label define mgyrs1_lbl 10 `"10 years"', add
label define mgyrs1_lbl 11 `"11 years"', add
label define mgyrs1_lbl 12 `"12 years"', add
label define mgyrs1_lbl 13 `"13 years"', add
label define mgyrs1_lbl 14 `"14 years"', add
label define mgyrs1_lbl 15 `"15 years"', add
label define mgyrs1_lbl 16 `"16 years"', add
label define mgyrs1_lbl 17 `"17 years"', add
label define mgyrs1_lbl 18 `"18 years"', add
label define mgyrs1_lbl 19 `"19 years"', add
label define mgyrs1_lbl 20 `"20 years"', add
label define mgyrs1_lbl 21 `"21 years"', add
label define mgyrs1_lbl 22 `"22 years"', add
label define mgyrs1_lbl 23 `"23 years"', add
label define mgyrs1_lbl 24 `"24 years"', add
label define mgyrs1_lbl 25 `"25 years"', add
label define mgyrs1_lbl 26 `"26 years"', add
label define mgyrs1_lbl 27 `"27 years"', add
label define mgyrs1_lbl 28 `"28 years"', add
label define mgyrs1_lbl 29 `"29 years"', add
label define mgyrs1_lbl 30 `"30 years"', add
label define mgyrs1_lbl 31 `"31 years"', add
label define mgyrs1_lbl 32 `"32 years"', add
label define mgyrs1_lbl 33 `"33 years"', add
label define mgyrs1_lbl 34 `"34 years"', add
label define mgyrs1_lbl 35 `"35 years"', add
label define mgyrs1_lbl 36 `"36 years"', add
label define mgyrs1_lbl 37 `"37 years"', add
label define mgyrs1_lbl 38 `"38 years"', add
label define mgyrs1_lbl 39 `"39 years"', add
label define mgyrs1_lbl 40 `"40 years"', add
label define mgyrs1_lbl 41 `"41 years"', add
label define mgyrs1_lbl 42 `"42 years"', add
label define mgyrs1_lbl 43 `"43 years"', add
label define mgyrs1_lbl 44 `"44 years"', add
label define mgyrs1_lbl 45 `"45 years"', add
label define mgyrs1_lbl 46 `"46 years"', add
label define mgyrs1_lbl 47 `"47 years"', add
label define mgyrs1_lbl 48 `"48 years"', add
label define mgyrs1_lbl 49 `"49 years"', add
label define mgyrs1_lbl 50 `"50 years"', add
label define mgyrs1_lbl 51 `"51 years"', add
label define mgyrs1_lbl 52 `"52 years"', add
label define mgyrs1_lbl 53 `"53 years"', add
label define mgyrs1_lbl 54 `"54 years"', add
label define mgyrs1_lbl 55 `"55 years"', add
label define mgyrs1_lbl 56 `"56 years"', add
label define mgyrs1_lbl 57 `"57 years"', add
label define mgyrs1_lbl 58 `"58 years"', add
label define mgyrs1_lbl 59 `"59 years"', add
label define mgyrs1_lbl 60 `"60 years"', add
label define mgyrs1_lbl 61 `"61 years"', add
label define mgyrs1_lbl 62 `"62 years"', add
label define mgyrs1_lbl 63 `"63 years"', add
label define mgyrs1_lbl 64 `"64 years"', add
label define mgyrs1_lbl 65 `"65 years"', add
label define mgyrs1_lbl 66 `"66 years"', add
label define mgyrs1_lbl 67 `"67 years"', add
label define mgyrs1_lbl 68 `"68 years"', add
label define mgyrs1_lbl 69 `"69 years"', add
label define mgyrs1_lbl 70 `"70 years"', add
label define mgyrs1_lbl 71 `"71 years"', add
label define mgyrs1_lbl 72 `"72 years"', add
label define mgyrs1_lbl 73 `"73 years"', add
label define mgyrs1_lbl 74 `"74 years"', add
label define mgyrs1_lbl 75 `"75 years"', add
label define mgyrs1_lbl 76 `"76 years"', add
label define mgyrs1_lbl 77 `"77 years"', add
label define mgyrs1_lbl 78 `"78 years"', add
label define mgyrs1_lbl 79 `"79 years"', add
label define mgyrs1_lbl 80 `"80 years"', add
label define mgyrs1_lbl 81 `"81 years"', add
label define mgyrs1_lbl 82 `"82 years"', add
label define mgyrs1_lbl 83 `"83 years"', add
label define mgyrs1_lbl 84 `"84 years"', add
label define mgyrs1_lbl 85 `"85 years"', add
label define mgyrs1_lbl 86 `"86 years"', add
label define mgyrs1_lbl 87 `"87 years"', add
label define mgyrs1_lbl 88 `"88 years"', add
label define mgyrs1_lbl 89 `"89 years"', add
label define mgyrs1_lbl 90 `"90 years"', add
label define mgyrs1_lbl 91 `"91 years"', add
label define mgyrs1_lbl 92 `"92 years"', add
label define mgyrs1_lbl 93 `"93 years"', add
label define mgyrs1_lbl 94 `"94 years"', add
label define mgyrs1_lbl 95 `"95+"', add
label define mgyrs1_lbl 96 `"Less than 5 years"', add
label define mgyrs1_lbl 97 `"More than 5 years"', add
label define mgyrs1_lbl 98 `"Unknown"', add
label define mgyrs1_lbl 99 `"NIU (not in universe)"', add
label values mgyrs1 mgyrs1_lbl

label define migby_lbl 00 `"Unknown"'
label define migby_lbl 01 `"Brest"', add
label define migby_lbl 02 `"Vitebsk"', add
label define migby_lbl 03 `"Gomel"', add
label define migby_lbl 04 `"Grodno"', add
label define migby_lbl 05 `"Minsk-City"', add
label define migby_lbl 06 `"Minsk"', add
label define migby_lbl 07 `"Mogilev"', add
label define migby_lbl 08 `"Foreign country"', add
label define migby_lbl 98 `"Response suppressed"', add
label define migby_lbl 99 `"NIU (not in universe)"', add
label values migby migby_lbl

label define by99a_pernum_lbl 00 `"Household record"'
label define by99a_pernum_lbl 01 `"1"', add
label define by99a_pernum_lbl 02 `"2"', add
label define by99a_pernum_lbl 03 `"3"', add
label define by99a_pernum_lbl 04 `"4"', add
label define by99a_pernum_lbl 05 `"5"', add
label define by99a_pernum_lbl 06 `"6"', add
label define by99a_pernum_lbl 07 `"7"', add
label define by99a_pernum_lbl 08 `"8"', add
label define by99a_pernum_lbl 09 `"9"', add
label define by99a_pernum_lbl 10 `"10"', add
label define by99a_pernum_lbl 11 `"11"', add
label define by99a_pernum_lbl 12 `"12"', add
label define by99a_pernum_lbl 13 `"13"', add
label define by99a_pernum_lbl 14 `"14"', add
label define by99a_pernum_lbl 15 `"15"', add
label define by99a_pernum_lbl 16 `"16"', add
label define by99a_pernum_lbl 17 `"17"', add
label define by99a_pernum_lbl 18 `"18"', add
label define by99a_pernum_lbl 19 `"19"', add
label define by99a_pernum_lbl 20 `"20"', add
label define by99a_pernum_lbl 21 `"21"', add
label define by99a_pernum_lbl 22 `"22"', add
label define by99a_pernum_lbl 23 `"23"', add
label define by99a_pernum_lbl 24 `"24"', add
label values by99a_pernum by99a_pernum_lbl

label define by99a_pernumod_lbl 01 `"1"'
label define by99a_pernumod_lbl 02 `"2"', add
label define by99a_pernumod_lbl 03 `"3"', add
label define by99a_pernumod_lbl 04 `"4"', add
label define by99a_pernumod_lbl 05 `"5"', add
label define by99a_pernumod_lbl 06 `"6"', add
label define by99a_pernumod_lbl 07 `"7"', add
label define by99a_pernumod_lbl 08 `"8"', add
label define by99a_pernumod_lbl 09 `"9"', add
label define by99a_pernumod_lbl 10 `"10"', add
label define by99a_pernumod_lbl 11 `"11"', add
label define by99a_pernumod_lbl 12 `"12"', add
label define by99a_pernumod_lbl 13 `"13"', add
label define by99a_pernumod_lbl 14 `"14"', add
label define by99a_pernumod_lbl 15 `"15"', add
label define by99a_pernumod_lbl 16 `"16"', add
label define by99a_pernumod_lbl 17 `"17"', add
label define by99a_pernumod_lbl 18 `"18"', add
label define by99a_pernumod_lbl 19 `"19"', add
label define by99a_pernumod_lbl 20 `"20+"', add
label values by99a_pernumod by99a_pernumod_lbl

label define by99a_relate_lbl 01 `"Person recorded first within household"'
label define by99a_relate_lbl 02 `"Wife, husband"', add
label define by99a_relate_lbl 03 `"Daughter, son"', add
label define by99a_relate_lbl 04 `"Mother, father"', add
label define by99a_relate_lbl 05 `"Sister, brother"', add
label define by99a_relate_lbl 06 `"Mother-in-law, father-in-law"', add
label define by99a_relate_lbl 07 `"Daughter (sister)-in-law, son (brother)-in-law"', add
label define by99a_relate_lbl 08 `"Grandmother, grandfather"', add
label define by99a_relate_lbl 09 `"Granddaughter, grandson"', add
label define by99a_relate_lbl 10 `"Other blood or in-law relationship"', add
label define by99a_relate_lbl 11 `"Non-relative"', add
label values by99a_relate by99a_relate_lbl

label define by99a_parloc_lbl 00 `"0"'
label define by99a_parloc_lbl 01 `"1"', add
label define by99a_parloc_lbl 02 `"2"', add
label define by99a_parloc_lbl 03 `"3"', add
label define by99a_parloc_lbl 04 `"4"', add
label define by99a_parloc_lbl 05 `"5"', add
label define by99a_parloc_lbl 06 `"6"', add
label define by99a_parloc_lbl 07 `"7"', add
label define by99a_parloc_lbl 08 `"8"', add
label define by99a_parloc_lbl 09 `"9"', add
label define by99a_parloc_lbl 10 `"10"', add
label define by99a_parloc_lbl 11 `"11"', add
label define by99a_parloc_lbl 12 `"12"', add
label define by99a_parloc_lbl 13 `"13"', add
label define by99a_parloc_lbl 14 `"14"', add
label define by99a_parloc_lbl 15 `"15"', add
label define by99a_parloc_lbl 18 `"18"', add
label values by99a_parloc by99a_parloc_lbl

label define by99a_sex_lbl 1 `"Male"'
label define by99a_sex_lbl 2 `"Female"', add
label values by99a_sex by99a_sex_lbl

label define by99a_age_lbl 000 `"0"'
label define by99a_age_lbl 001 `"1"', add
label define by99a_age_lbl 002 `"2"', add
label define by99a_age_lbl 003 `"3"', add
label define by99a_age_lbl 004 `"4"', add
label define by99a_age_lbl 005 `"5"', add
label define by99a_age_lbl 006 `"6"', add
label define by99a_age_lbl 007 `"7"', add
label define by99a_age_lbl 008 `"8"', add
label define by99a_age_lbl 009 `"9"', add
label define by99a_age_lbl 010 `"10"', add
label define by99a_age_lbl 011 `"11"', add
label define by99a_age_lbl 012 `"12"', add
label define by99a_age_lbl 013 `"13"', add
label define by99a_age_lbl 014 `"14"', add
label define by99a_age_lbl 015 `"15"', add
label define by99a_age_lbl 016 `"16"', add
label define by99a_age_lbl 017 `"17"', add
label define by99a_age_lbl 018 `"18"', add
label define by99a_age_lbl 019 `"19"', add
label define by99a_age_lbl 020 `"20"', add
label define by99a_age_lbl 021 `"21"', add
label define by99a_age_lbl 022 `"22"', add
label define by99a_age_lbl 023 `"23"', add
label define by99a_age_lbl 024 `"24"', add
label define by99a_age_lbl 025 `"25"', add
label define by99a_age_lbl 026 `"26"', add
label define by99a_age_lbl 027 `"27"', add
label define by99a_age_lbl 028 `"28"', add
label define by99a_age_lbl 029 `"29"', add
label define by99a_age_lbl 030 `"30"', add
label define by99a_age_lbl 031 `"31"', add
label define by99a_age_lbl 032 `"32"', add
label define by99a_age_lbl 033 `"33"', add
label define by99a_age_lbl 034 `"34"', add
label define by99a_age_lbl 035 `"35"', add
label define by99a_age_lbl 036 `"36"', add
label define by99a_age_lbl 037 `"37"', add
label define by99a_age_lbl 038 `"38"', add
label define by99a_age_lbl 039 `"39"', add
label define by99a_age_lbl 040 `"40"', add
label define by99a_age_lbl 041 `"41"', add
label define by99a_age_lbl 042 `"42"', add
label define by99a_age_lbl 043 `"43"', add
label define by99a_age_lbl 044 `"44"', add
label define by99a_age_lbl 045 `"45"', add
label define by99a_age_lbl 046 `"46"', add
label define by99a_age_lbl 047 `"47"', add
label define by99a_age_lbl 048 `"48"', add
label define by99a_age_lbl 049 `"49"', add
label define by99a_age_lbl 050 `"50"', add
label define by99a_age_lbl 051 `"51"', add
label define by99a_age_lbl 052 `"52"', add
label define by99a_age_lbl 053 `"53"', add
label define by99a_age_lbl 054 `"54"', add
label define by99a_age_lbl 055 `"55"', add
label define by99a_age_lbl 056 `"56"', add
label define by99a_age_lbl 057 `"57"', add
label define by99a_age_lbl 058 `"58"', add
label define by99a_age_lbl 059 `"59"', add
label define by99a_age_lbl 060 `"60"', add
label define by99a_age_lbl 061 `"61"', add
label define by99a_age_lbl 062 `"62"', add
label define by99a_age_lbl 063 `"63"', add
label define by99a_age_lbl 064 `"64"', add
label define by99a_age_lbl 065 `"65"', add
label define by99a_age_lbl 066 `"66"', add
label define by99a_age_lbl 067 `"67"', add
label define by99a_age_lbl 068 `"68"', add
label define by99a_age_lbl 069 `"69"', add
label define by99a_age_lbl 070 `"70"', add
label define by99a_age_lbl 071 `"71"', add
label define by99a_age_lbl 072 `"72"', add
label define by99a_age_lbl 073 `"73"', add
label define by99a_age_lbl 074 `"74"', add
label define by99a_age_lbl 075 `"75"', add
label define by99a_age_lbl 076 `"76"', add
label define by99a_age_lbl 077 `"77"', add
label define by99a_age_lbl 078 `"78"', add
label define by99a_age_lbl 079 `"79"', add
label define by99a_age_lbl 080 `"80"', add
label define by99a_age_lbl 081 `"81"', add
label define by99a_age_lbl 082 `"82"', add
label define by99a_age_lbl 083 `"83"', add
label define by99a_age_lbl 084 `"84"', add
label define by99a_age_lbl 085 `"85"', add
label define by99a_age_lbl 086 `"86"', add
label define by99a_age_lbl 087 `"87"', add
label define by99a_age_lbl 088 `"88"', add
label define by99a_age_lbl 089 `"89"', add
label define by99a_age_lbl 090 `"90"', add
label define by99a_age_lbl 091 `"91"', add
label define by99a_age_lbl 092 `"92"', add
label define by99a_age_lbl 093 `"93"', add
label define by99a_age_lbl 094 `"94"', add
label define by99a_age_lbl 095 `"95"', add
label define by99a_age_lbl 096 `"96"', add
label define by99a_age_lbl 097 `"97"', add
label define by99a_age_lbl 098 `"98"', add
label define by99a_age_lbl 099 `"99"', add
label define by99a_age_lbl 100 `"100+"', add
label define by99a_age_lbl 998 `"Not specified"', add
label values by99a_age by99a_age_lbl

label define by99a_bpl_lbl 001 `"Brest"'
label define by99a_bpl_lbl 002 `"Vitebsk"', add
label define by99a_bpl_lbl 003 `"Gomel"', add
label define by99a_bpl_lbl 004 `"Grodno"', add
label define by99a_bpl_lbl 005 `"Minsk-City"', add
label define by99a_bpl_lbl 006 `"Minsk"', add
label define by99a_bpl_lbl 007 `"Mogilev"', add
label define by99a_bpl_lbl 031 `"Azerbaijan"', add
label define by99a_bpl_lbl 051 `"Armenia"', add
label define by99a_bpl_lbl 156 `"China"', add
label define by99a_bpl_lbl 203 `"Czech Republic"', add
label define by99a_bpl_lbl 233 `"Estonia"', add
label define by99a_bpl_lbl 241 `"Afghanistan"', add
label define by99a_bpl_lbl 250 `"France"', add
label define by99a_bpl_lbl 268 `"Georgia"', add
label define by99a_bpl_lbl 276 `"Germany"', add
label define by99a_bpl_lbl 348 `"Hungary"', add
label define by99a_bpl_lbl 398 `"Kazakhstan"', add
label define by99a_bpl_lbl 417 `"Kyrgyzstan"', add
label define by99a_bpl_lbl 428 `"Latvia"', add
label define by99a_bpl_lbl 440 `"Lithuania"', add
label define by99a_bpl_lbl 496 `"Mongolia"', add
label define by99a_bpl_lbl 498 `"Moldova"', add
label define by99a_bpl_lbl 616 `"Poland"', add
label define by99a_bpl_lbl 642 `"Romania"', add
label define by99a_bpl_lbl 643 `"Russia"', add
label define by99a_bpl_lbl 701 `"Vietnam"', add
label define by99a_bpl_lbl 762 `"Tajikistan"', add
label define by99a_bpl_lbl 795 `"Turkmenistan"', add
label define by99a_bpl_lbl 804 `"Ukraine"', add
label define by99a_bpl_lbl 860 `"Uzbekistan"', add
label define by99a_bpl_lbl 997 `"Response suppressed"', add
label define by99a_bpl_lbl 998 `"Not specified"', add
label values by99a_bpl by99a_bpl_lbl

label define by99a_langmo_lbl 001 `"Belarusian"'
label define by99a_langmo_lbl 002 `"Russian"', add
label define by99a_langmo_lbl 003 `"Polish"', add
label define by99a_langmo_lbl 004 `"Ukrainian"', add
label define by99a_langmo_lbl 005 `"Hebrew"', add
label define by99a_langmo_lbl 006 `"Tatar"', add
label define by99a_langmo_lbl 007 `"Gypsi"', add
label define by99a_langmo_lbl 008 `"Lithuanian"', add
label define by99a_langmo_lbl 009 `"Latvian"', add
label define by99a_langmo_lbl 011 `"Azerbaijanian"', add
label define by99a_langmo_lbl 012 `"Armenian"', add
label define by99a_langmo_lbl 014 `"Georgian"', add
label define by99a_langmo_lbl 015 `"Kazakh"', add
label define by99a_langmo_lbl 017 `"Moldovian"', add
label define by99a_langmo_lbl 018 `"Tadjik"', add
label define by99a_langmo_lbl 022 `"Uzbek"', add
label define by99a_langmo_lbl 041 `"Bashkir"', add
label define by99a_langmo_lbl 054 `"Lezgin"', add
label define by99a_langmo_lbl 056 `"Mordovian"', add
label define by99a_langmo_lbl 058 `"Ossetian"', add
label define by99a_langmo_lbl 065 `"Udmurt"', add
label define by99a_langmo_lbl 069 `"Chechen"', add
label define by99a_langmo_lbl 071 `"Chuvash"', add
label define by99a_langmo_lbl 131 `"Arabic"', add
label define by99a_langmo_lbl 133 `"Afghan"', add
label define by99a_langmo_lbl 137 `"Vietnamese"', add
label define by99a_langmo_lbl 148 `"German"', add
label define by99a_langmo_lbl 997 `"Response suppressed"', add
label define by99a_langmo_lbl 998 `"Not specified"', add
label values by99a_langmo by99a_langmo_lbl

label define by99a_langsp_lbl 001 `"Belarusian"'
label define by99a_langsp_lbl 002 `"Russian"', add
label define by99a_langsp_lbl 003 `"Polish"', add
label define by99a_langsp_lbl 004 `"Ukrainian"', add
label define by99a_langsp_lbl 007 `"Gypsi"', add
label define by99a_langsp_lbl 008 `"Lithuanian"', add
label define by99a_langsp_lbl 011 `"Azerbaijanian"', add
label define by99a_langsp_lbl 012 `"Armenian"', add
label define by99a_langsp_lbl 014 `"Georgian"', add
label define by99a_langsp_lbl 133 `"Afghan"', add
label define by99a_langsp_lbl 137 `"Vietnamese"', add
label define by99a_langsp_lbl 997 `"Response suppressed"', add
label define by99a_langsp_lbl 998 `"Not specified"', add
label values by99a_langsp by99a_langsp_lbl

label define by99a_langoth_lbl 001 `"Belarusian"'
label define by99a_langoth_lbl 002 `"Russian"', add
label define by99a_langoth_lbl 003 `"Polish"', add
label define by99a_langoth_lbl 004 `"Ukrainian"', add
label define by99a_langoth_lbl 005 `"Hebrew"', add
label define by99a_langoth_lbl 006 `"Tatar"', add
label define by99a_langoth_lbl 007 `"Gypsi"', add
label define by99a_langoth_lbl 008 `"Lithuanian"', add
label define by99a_langoth_lbl 009 `"Latvian"', add
label define by99a_langoth_lbl 010 `"Estonian"', add
label define by99a_langoth_lbl 011 `"Azerbaijanian"', add
label define by99a_langoth_lbl 012 `"Armenian"', add
label define by99a_langoth_lbl 014 `"Georgian"', add
label define by99a_langoth_lbl 015 `"Kazakh"', add
label define by99a_langoth_lbl 017 `"Moldovian"', add
label define by99a_langoth_lbl 018 `"Tadjik"', add
label define by99a_langoth_lbl 021 `"Turkoman"', add
label define by99a_langoth_lbl 022 `"Uzbek"', add
label define by99a_langoth_lbl 126 `"Turkish"', add
label define by99a_langoth_lbl 130 `"English"', add
label define by99a_langoth_lbl 131 `"Arabic"', add
label define by99a_langoth_lbl 135 `"Bulgarian"', add
label define by99a_langoth_lbl 142 `"Spanish"', add
label define by99a_langoth_lbl 143 `"Italian"', add
label define by99a_langoth_lbl 148 `"German"', add
label define by99a_langoth_lbl 157 `"French"', add
label define by99a_langoth_lbl 160 `"Czech"', add
label define by99a_langoth_lbl 997 `"Response suppressed"', add
label define by99a_langoth_lbl 998 `"Not specified"', add
label define by99a_langoth_lbl 999 `"Unknown"', add
label values by99a_langoth by99a_langoth_lbl

label define by99a_citiz_lbl 1 `"Republic of Belarus"'
label define by99a_citiz_lbl 2 `"Without citizenship"', add
label define by99a_citiz_lbl 3 `"Other citizenship"', add
label values by99a_citiz by99a_citiz_lbl

label define by99a_citizoth_lbl 031 `"Azerbaijan"'
label define by99a_citizoth_lbl 051 `"Armenia"', add
label define by99a_citizoth_lbl 241 `"Afghanistan"', add
label define by99a_citizoth_lbl 268 `"Georgia"', add
label define by99a_citizoth_lbl 376 `"Israel"', add
label define by99a_citizoth_lbl 398 `"Kazakhstan"', add
label define by99a_citizoth_lbl 417 `"Kyrgyzstan"', add
label define by99a_citizoth_lbl 428 `"Latvia"', add
label define by99a_citizoth_lbl 440 `"Lithuania"', add
label define by99a_citizoth_lbl 498 `"Moldova"', add
label define by99a_citizoth_lbl 616 `"Poland"', add
label define by99a_citizoth_lbl 643 `"Russia"', add
label define by99a_citizoth_lbl 701 `"Vietnam"', add
label define by99a_citizoth_lbl 762 `"Tajikistan"', add
label define by99a_citizoth_lbl 795 `"Turkmenistan"', add
label define by99a_citizoth_lbl 804 `"Ukraine"', add
label define by99a_citizoth_lbl 860 `"Uzbekistan"', add
label define by99a_citizoth_lbl 997 `"Response suppressed"', add
label define by99a_citizoth_lbl 998 `"Not specified"', add
label define by99a_citizoth_lbl 999 `"Belarusians, other citizenships or without citizenship"', add
label values by99a_citizoth by99a_citizoth_lbl

label define by99a_ethnic_lbl 001 `"Belarusians"'
label define by99a_ethnic_lbl 002 `"Russians"', add
label define by99a_ethnic_lbl 003 `"Poles"', add
label define by99a_ethnic_lbl 004 `"Ukrainians"', add
label define by99a_ethnic_lbl 005 `"Jews"', add
label define by99a_ethnic_lbl 006 `"Tatars"', add
label define by99a_ethnic_lbl 007 `"Gypsy"', add
label define by99a_ethnic_lbl 008 `"Lithuanians"', add
label define by99a_ethnic_lbl 009 `"Latvians"', add
label define by99a_ethnic_lbl 010 `"Estonians"', add
label define by99a_ethnic_lbl 011 `"Azerbaijanians"', add
label define by99a_ethnic_lbl 012 `"Armenians"', add
label define by99a_ethnic_lbl 014 `"Georgians"', add
label define by99a_ethnic_lbl 015 `"Kazakhs"', add
label define by99a_ethnic_lbl 017 `"Moldavians"', add
label define by99a_ethnic_lbl 018 `"Tadjiks"', add
label define by99a_ethnic_lbl 021 `"Turkmen"', add
label define by99a_ethnic_lbl 022 `"Uzbeks"', add
label define by99a_ethnic_lbl 041 `"Bashkirs"', add
label define by99a_ethnic_lbl 050 `"Karelians"', add
label define by99a_ethnic_lbl 051 `"Komi"', add
label define by99a_ethnic_lbl 054 `"Lezgin"', add
label define by99a_ethnic_lbl 055 `"Mari"', add
label define by99a_ethnic_lbl 056 `"Mordovians"', add
label define by99a_ethnic_lbl 058 `"Ossetians"', add
label define by99a_ethnic_lbl 065 `"Udmurt"', add
label define by99a_ethnic_lbl 069 `"Chechen"', add
label define by99a_ethnic_lbl 071 `"Chuvash"', add
label define by99a_ethnic_lbl 131 `"Arabs"', add
label define by99a_ethnic_lbl 133 `"Afghans"', add
label define by99a_ethnic_lbl 135 `"Bulgarians"', add
label define by99a_ethnic_lbl 137 `"Vietnamese"', add
label define by99a_ethnic_lbl 139 `"Greeks"', add
label define by99a_ethnic_lbl 145 `"Koreans"', add
label define by99a_ethnic_lbl 148 `"Germans"', add
label define by99a_ethnic_lbl 173 `"Other nationalities"', add
label define by99a_ethnic_lbl 997 `"Response suppressed"', add
label define by99a_ethnic_lbl 998 `"Not specified"', add
label values by99a_ethnic by99a_ethnic_lbl

label define by99a_marst_lbl 1 `"Never married"'
label define by99a_marst_lbl 2 `"Registered marriage"', add
label define by99a_marst_lbl 3 `"Common law marriage"', add
label define by99a_marst_lbl 4 `"Widowed"', add
label define by99a_marst_lbl 5 `"Divorced"', add
label define by99a_marst_lbl 6 `"Separated"', add
label define by99a_marst_lbl 8 `"Not specified"', add
label define by99a_marst_lbl 9 `"NIU (not in universe)"', add
label values by99a_marst by99a_marst_lbl

label define by99a_sploc_lbl 00 `"No spouse"'
label define by99a_sploc_lbl 01 `"1"', add
label define by99a_sploc_lbl 02 `"2"', add
label define by99a_sploc_lbl 03 `"3"', add
label define by99a_sploc_lbl 04 `"4"', add
label define by99a_sploc_lbl 05 `"5"', add
label define by99a_sploc_lbl 06 `"6"', add
label define by99a_sploc_lbl 07 `"7"', add
label define by99a_sploc_lbl 08 `"8"', add
label define by99a_sploc_lbl 09 `"9"', add
label define by99a_sploc_lbl 10 `"10"', add
label define by99a_sploc_lbl 11 `"11"', add
label define by99a_sploc_lbl 12 `"12"', add
label define by99a_sploc_lbl 13 `"13"', add
label define by99a_sploc_lbl 14 `"14"', add
label define by99a_sploc_lbl 15 `"15"', add
label define by99a_sploc_lbl 16 `"16"', add
label define by99a_sploc_lbl 19 `"19"', add
label define by99a_sploc_lbl 20 `"20"', add
label values by99a_sploc by99a_sploc_lbl

label define by99a_student_lbl 1 `"Yes"'
label define by99a_student_lbl 2 `"No"', add
label define by99a_student_lbl 8 `"Unknown"', add
label define by99a_student_lbl 9 `"NIU (not in universe)"', add
label values by99a_student by99a_student_lbl

label define by99a_presch_lbl 1 `"Yes"'
label define by99a_presch_lbl 2 `"No"', add
label define by99a_presch_lbl 8 `"Unknown"', add
label define by99a_presch_lbl 9 `"NIU (not in universe)"', add
label values by99a_presch by99a_presch_lbl

label define by99a_edlev_lbl 1 `"Higher vocational (higher)"'
label define by99a_edlev_lbl 2 `"Secondary vocational (secondary specialized)"', add
label define by99a_edlev_lbl 3 `"Primary vocational (vocational)"', add
label define by99a_edlev_lbl 4 `"Secondary general"', add
label define by99a_edlev_lbl 5 `"Basic general (incomplete secondary)"', add
label define by99a_edlev_lbl 6 `"Primary general"', add
label define by99a_edlev_lbl 7 `"Illiterate"', add
label define by99a_edlev_lbl 8 `"Unknown"', add
label define by99a_edlev_lbl 9 `"NIU (not in universe)"', add
label values by99a_edlev by99a_edlev_lbl

label define by99a_degree_lbl 0 `"NIU (not in universe)"'
label define by99a_degree_lbl 1 `"Candidate of science"', add
label define by99a_degree_lbl 2 `"Doctor of science"', add
label define by99a_degree_lbl 9 `"Unknown"', add
label values by99a_degree by99a_degree_lbl

label define by99a_workinc_lbl 1 `"Yes"'
label define by99a_workinc_lbl 2 `"No"', add
label define by99a_workinc_lbl 9 `"Unknown"', add
label values by99a_workinc by99a_workinc_lbl

label define by99a_workplot_lbl 1 `"Yes"'
label define by99a_workplot_lbl 2 `"No"', add
label define by99a_workplot_lbl 9 `"Unknown"', add
label values by99a_workplot by99a_workplot_lbl

label define by99a_pension_lbl 1 `"Yes"'
label define by99a_pension_lbl 2 `"No"', add
label define by99a_pension_lbl 9 `"Unknown"', add
label values by99a_pension by99a_pension_lbl

label define by99a_scholar_lbl 1 `"Yes"'
label define by99a_scholar_lbl 2 `"No"', add
label define by99a_scholar_lbl 9 `"Unknown"', add
label values by99a_scholar by99a_scholar_lbl

label define by99a_ben_lbl 1 `"Yes"'
label define by99a_ben_lbl 2 `"No"', add
label define by99a_ben_lbl 9 `"Unknown"', add
label values by99a_ben by99a_ben_lbl

label define by99a_benunem_lbl 1 `"Yes"'
label define by99a_benunem_lbl 2 `"No"', add
label define by99a_benunem_lbl 9 `"Unknown"', add
label values by99a_benunem by99a_benunem_lbl

label define by99a_gov_lbl 1 `"Yes"'
label define by99a_gov_lbl 2 `"No"', add
label define by99a_gov_lbl 9 `"Unknown"', add
label values by99a_gov by99a_gov_lbl

label define by99a_rent_lbl 1 `"Yes"'
label define by99a_rent_lbl 2 `"No"', add
label define by99a_rent_lbl 9 `"Unknown"', add
label values by99a_rent by99a_rent_lbl

label define by99a_interest_lbl 1 `"Yes"'
label define by99a_interest_lbl 2 `"No"', add
label define by99a_interest_lbl 9 `"Unknown"', add
label values by99a_interest by99a_interest_lbl

label define by99a_savings_lbl 1 `"Yes"'
label define by99a_savings_lbl 2 `"No"', add
label define by99a_savings_lbl 9 `"Unknown"', add
label values by99a_savings by99a_savings_lbl

label define by99a_depend_lbl 1 `"Yes"'
label define by99a_depend_lbl 2 `"No"', add
label define by99a_depend_lbl 9 `"Unknown"', add
label values by99a_depend by99a_depend_lbl

label define by99a_incoth_lbl 1 `"Yes"'
label define by99a_incoth_lbl 2 `"No"', add
label define by99a_incoth_lbl 9 `"Unknown"', add
label values by99a_incoth by99a_incoth_lbl

label define by99a_work_lbl 1 `"Yes"'
label define by99a_work_lbl 2 `"No"', add
label define by99a_work_lbl 8 `"Not specified"', add
label define by99a_work_lbl 9 `"NIU (not in universe)"', add
label values by99a_work by99a_work_lbl

label define by99a_classwk_lbl 1 `"Employee (under labor agreement or contract)"'
label define by99a_classwk_lbl 2 `"Member of producers' cooperative"', add
label define by99a_classwk_lbl 3 `"Run own enterprise (farm) or business with permanent use of employees' labor"', add
label define by99a_classwk_lbl 4 `"Own-account worker running farm or business without attracting employees"', add
label define by99a_classwk_lbl 5 `"Unpaid family worker (worked without payment in the shop, farm or enterprise owned by a relative)"', add
label define by99a_classwk_lbl 8 `"Not specified"', add
label define by99a_classwk_lbl 9 `"NIU (not in universe)"', add
label values by99a_classwk by99a_classwk_lbl

label define by99a_looking_lbl 1 `"Yes"'
label define by99a_looking_lbl 2 `"No"', add
label define by99a_looking_lbl 8 `"Not specified"', add
label define by99a_looking_lbl 9 `"NIU (not in universe)"', add
label values by99a_looking by99a_looking_lbl

label define by99a_startnow_lbl 1 `"Yes"'
label define by99a_startnow_lbl 2 `"No"', add
label define by99a_startnow_lbl 8 `"Not specified"', add
label define by99a_startnow_lbl 9 `"NIU (not in universe)"', add
label values by99a_startnow by99a_startnow_lbl

label define by99a_unemp_lbl 1 `"Yes"'
label define by99a_unemp_lbl 2 `"No"', add
label define by99a_unemp_lbl 8 `"Not specified"', add
label define by99a_unemp_lbl 9 `"Unknown"', add
label values by99a_unemp by99a_unemp_lbl

label define by99a_whynot_lbl 1 `"Has got a job and will start working in the nearest 2 weeks"'
label define by99a_whynot_lbl 2 `"Has organized own business and will start activity in the nearest future"', add
label define by99a_whynot_lbl 3 `"Discouraged to find a job"', add
label define by99a_whynot_lbl 4 `"Has no necessity or wish to work"', add
label define by99a_whynot_lbl 5 `"Keeps the house"', add
label define by99a_whynot_lbl 6 `"Other reason"', add
label define by99a_whynot_lbl 9 `"NIU (not in universe)"', add
label values by99a_whynot by99a_whynot_lbl

label define by99a_nonmig_lbl 1 `"Yes"'
label define by99a_nonmig_lbl 2 `"No"', add
label define by99a_nonmig_lbl 8 `"Not specified"', add
label values by99a_nonmig by99a_nonmig_lbl

label define by99a_resdur_lbl 1917 `"1917 or before"'
label define by99a_resdur_lbl 1918 `"1918"', add
label define by99a_resdur_lbl 1919 `"1919"', add
label define by99a_resdur_lbl 1920 `"1920"', add
label define by99a_resdur_lbl 1921 `"1921"', add
label define by99a_resdur_lbl 1922 `"1922"', add
label define by99a_resdur_lbl 1923 `"1923"', add
label define by99a_resdur_lbl 1924 `"1924"', add
label define by99a_resdur_lbl 1925 `"1925"', add
label define by99a_resdur_lbl 1926 `"1926"', add
label define by99a_resdur_lbl 1927 `"1927"', add
label define by99a_resdur_lbl 1928 `"1928"', add
label define by99a_resdur_lbl 1929 `"1929"', add
label define by99a_resdur_lbl 1930 `"1930"', add
label define by99a_resdur_lbl 1931 `"1931"', add
label define by99a_resdur_lbl 1932 `"1932"', add
label define by99a_resdur_lbl 1933 `"1933"', add
label define by99a_resdur_lbl 1934 `"1934"', add
label define by99a_resdur_lbl 1935 `"1935"', add
label define by99a_resdur_lbl 1936 `"1936"', add
label define by99a_resdur_lbl 1937 `"1937"', add
label define by99a_resdur_lbl 1938 `"1938"', add
label define by99a_resdur_lbl 1939 `"1939"', add
label define by99a_resdur_lbl 1940 `"1940"', add
label define by99a_resdur_lbl 1941 `"1941"', add
label define by99a_resdur_lbl 1942 `"1942"', add
label define by99a_resdur_lbl 1943 `"1943"', add
label define by99a_resdur_lbl 1944 `"1944"', add
label define by99a_resdur_lbl 1945 `"1945"', add
label define by99a_resdur_lbl 1946 `"1946"', add
label define by99a_resdur_lbl 1947 `"1947"', add
label define by99a_resdur_lbl 1948 `"1948"', add
label define by99a_resdur_lbl 1949 `"1949"', add
label define by99a_resdur_lbl 1950 `"1950"', add
label define by99a_resdur_lbl 1951 `"1951"', add
label define by99a_resdur_lbl 1952 `"1952"', add
label define by99a_resdur_lbl 1953 `"1953"', add
label define by99a_resdur_lbl 1954 `"1954"', add
label define by99a_resdur_lbl 1955 `"1955"', add
label define by99a_resdur_lbl 1956 `"1956"', add
label define by99a_resdur_lbl 1957 `"1957"', add
label define by99a_resdur_lbl 1958 `"1958"', add
label define by99a_resdur_lbl 1959 `"1959"', add
label define by99a_resdur_lbl 1960 `"1960"', add
label define by99a_resdur_lbl 1961 `"1961"', add
label define by99a_resdur_lbl 1962 `"1962"', add
label define by99a_resdur_lbl 1963 `"1963"', add
label define by99a_resdur_lbl 1964 `"1964"', add
label define by99a_resdur_lbl 1965 `"1965"', add
label define by99a_resdur_lbl 1966 `"1966"', add
label define by99a_resdur_lbl 1967 `"1967"', add
label define by99a_resdur_lbl 1968 `"1968"', add
label define by99a_resdur_lbl 1969 `"1969"', add
label define by99a_resdur_lbl 1970 `"1970"', add
label define by99a_resdur_lbl 1971 `"1971"', add
label define by99a_resdur_lbl 1972 `"1972"', add
label define by99a_resdur_lbl 1973 `"1973"', add
label define by99a_resdur_lbl 1974 `"1974"', add
label define by99a_resdur_lbl 1975 `"1975"', add
label define by99a_resdur_lbl 1976 `"1976"', add
label define by99a_resdur_lbl 1977 `"1977"', add
label define by99a_resdur_lbl 1978 `"1978"', add
label define by99a_resdur_lbl 1979 `"1979"', add
label define by99a_resdur_lbl 1980 `"1980"', add
label define by99a_resdur_lbl 1981 `"1981"', add
label define by99a_resdur_lbl 1982 `"1982"', add
label define by99a_resdur_lbl 1983 `"1983"', add
label define by99a_resdur_lbl 1984 `"1984"', add
label define by99a_resdur_lbl 1985 `"1985"', add
label define by99a_resdur_lbl 1986 `"1986"', add
label define by99a_resdur_lbl 1987 `"1987"', add
label define by99a_resdur_lbl 1988 `"1988"', add
label define by99a_resdur_lbl 1989 `"1989"', add
label define by99a_resdur_lbl 1990 `"1990"', add
label define by99a_resdur_lbl 1991 `"1991"', add
label define by99a_resdur_lbl 1992 `"1992"', add
label define by99a_resdur_lbl 1993 `"1993"', add
label define by99a_resdur_lbl 1994 `"1994"', add
label define by99a_resdur_lbl 1995 `"1995"', add
label define by99a_resdur_lbl 1996 `"1996"', add
label define by99a_resdur_lbl 1997 `"1997"', add
label define by99a_resdur_lbl 1998 `"1998"', add
label define by99a_resdur_lbl 1999 `"1999"', add
label define by99a_resdur_lbl 9998 `"Not specified"', add
label define by99a_resdur_lbl 9999 `"NIU (not in universe)"', add
label values by99a_resdur by99a_resdur_lbl

label define by99a_prevres_lbl 001 `"Brest"'
label define by99a_prevres_lbl 002 `"Vitebsk"', add
label define by99a_prevres_lbl 003 `"Gomel"', add
label define by99a_prevres_lbl 004 `"Grodno"', add
label define by99a_prevres_lbl 005 `"Minsk-City"', add
label define by99a_prevres_lbl 006 `"Minsk"', add
label define by99a_prevres_lbl 007 `"Mogilev"', add
label define by99a_prevres_lbl 031 `"Azerbaijan"', add
label define by99a_prevres_lbl 051 `"Armenia"', add
label define by99a_prevres_lbl 156 `"China"', add
label define by99a_prevres_lbl 192 `"Cuba"', add
label define by99a_prevres_lbl 203 `"Czech Republic"', add
label define by99a_prevres_lbl 233 `"Estonia"', add
label define by99a_prevres_lbl 241 `"Afghanistan"', add
label define by99a_prevres_lbl 250 `"France"', add
label define by99a_prevres_lbl 268 `"Georgia"', add
label define by99a_prevres_lbl 276 `"Germany"', add
label define by99a_prevres_lbl 348 `"Hungary"', add
label define by99a_prevres_lbl 376 `"Israel"', add
label define by99a_prevres_lbl 398 `"Kazakhstan"', add
label define by99a_prevres_lbl 417 `"Kyrgyzstan"', add
label define by99a_prevres_lbl 428 `"Latvia"', add
label define by99a_prevres_lbl 440 `"Lithuania"', add
label define by99a_prevres_lbl 496 `"Mongolia"', add
label define by99a_prevres_lbl 498 `"Moldova"', add
label define by99a_prevres_lbl 616 `"Poland"', add
label define by99a_prevres_lbl 642 `"Romania"', add
label define by99a_prevres_lbl 643 `"Russia"', add
label define by99a_prevres_lbl 701 `"Vietnam"', add
label define by99a_prevres_lbl 760 `"Syria"', add
label define by99a_prevres_lbl 762 `"Tajikistan"', add
label define by99a_prevres_lbl 795 `"Turkmenistan"', add
label define by99a_prevres_lbl 804 `"Ukraine"', add
label define by99a_prevres_lbl 860 `"Uzbekistan"', add
label define by99a_prevres_lbl 997 `"Response suppressed"', add
label define by99a_prevres_lbl 998 `"Not specified"', add
label define by99a_prevres_lbl 999 `"NIU (not in universe)"', add
label values by99a_prevres by99a_prevres_lbl

label define by99a_prevurb_lbl 1 `"Urban settlement"'
label define by99a_prevurb_lbl 2 `"Rural locality"', add
label define by99a_prevurb_lbl 8 `"Not specified"', add
label define by99a_prevurb_lbl 9 `"NIU (not in universe)"', add
label values by99a_prevurb by99a_prevurb_lbl

label define by99a_chborn_lbl 00 `"0"'
label define by99a_chborn_lbl 01 `"1"', add
label define by99a_chborn_lbl 02 `"2"', add
label define by99a_chborn_lbl 03 `"3"', add
label define by99a_chborn_lbl 04 `"4"', add
label define by99a_chborn_lbl 05 `"5"', add
label define by99a_chborn_lbl 06 `"6"', add
label define by99a_chborn_lbl 07 `"7"', add
label define by99a_chborn_lbl 08 `"8"', add
label define by99a_chborn_lbl 09 `"9"', add
label define by99a_chborn_lbl 10 `"10"', add
label define by99a_chborn_lbl 11 `"11"', add
label define by99a_chborn_lbl 12 `"12+"', add
label define by99a_chborn_lbl 98 `"Not specified"', add
label define by99a_chborn_lbl 99 `"NIU (not in universe)"', add
label values by99a_chborn by99a_chborn_lbl

label define by99a_chsurv_lbl 00 `"0"'
label define by99a_chsurv_lbl 01 `"1"', add
label define by99a_chsurv_lbl 02 `"2"', add
label define by99a_chsurv_lbl 03 `"3"', add
label define by99a_chsurv_lbl 04 `"4"', add
label define by99a_chsurv_lbl 05 `"5"', add
label define by99a_chsurv_lbl 06 `"6"', add
label define by99a_chsurv_lbl 07 `"7"', add
label define by99a_chsurv_lbl 08 `"8"', add
label define by99a_chsurv_lbl 09 `"9"', add
label define by99a_chsurv_lbl 10 `"10"', add
label define by99a_chsurv_lbl 11 `"11+"', add
label define by99a_chsurv_lbl 98 `"Not specified"', add
label define by99a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values by99a_chsurv by99a_chsurv_lbl

label define by99a_chaway_lbl 00 `"0"'
label define by99a_chaway_lbl 01 `"1"', add
label define by99a_chaway_lbl 02 `"2"', add
label define by99a_chaway_lbl 03 `"3"', add
label define by99a_chaway_lbl 04 `"4"', add
label define by99a_chaway_lbl 05 `"5"', add
label define by99a_chaway_lbl 06 `"6"', add
label define by99a_chaway_lbl 07 `"7"', add
label define by99a_chaway_lbl 08 `"8"', add
label define by99a_chaway_lbl 09 `"9"', add
label define by99a_chaway_lbl 10 `"10+"', add
label define by99a_chaway_lbl 98 `"Not specified"', add
label define by99a_chaway_lbl 99 `"NIU (not in universe)"', add
label values by99a_chaway by99a_chaway_lbl

label define by99a_chmax_lbl 00 `"0"'
label define by99a_chmax_lbl 01 `"1"', add
label define by99a_chmax_lbl 02 `"2"', add
label define by99a_chmax_lbl 03 `"3"', add
label define by99a_chmax_lbl 04 `"4"', add
label define by99a_chmax_lbl 05 `"5"', add
label define by99a_chmax_lbl 06 `"6"', add
label define by99a_chmax_lbl 07 `"7"', add
label define by99a_chmax_lbl 08 `"8"', add
label define by99a_chmax_lbl 09 `"9"', add
label define by99a_chmax_lbl 10 `"10+"', add
label define by99a_chmax_lbl 98 `"Not specified"', add
label define by99a_chmax_lbl 99 `"NIU (not in universe)"', add
label values by99a_chmax by99a_chmax_lbl

label define by99a_pernumop_lbl 01 `"1"'
label define by99a_pernumop_lbl 02 `"2"', add
label define by99a_pernumop_lbl 03 `"3"', add
label define by99a_pernumop_lbl 04 `"4"', add
label define by99a_pernumop_lbl 05 `"5"', add
label define by99a_pernumop_lbl 06 `"6"', add
label define by99a_pernumop_lbl 07 `"7"', add
label define by99a_pernumop_lbl 08 `"8"', add
label define by99a_pernumop_lbl 09 `"9"', add
label define by99a_pernumop_lbl 10 `"10"', add
label define by99a_pernumop_lbl 11 `"11"', add
label define by99a_pernumop_lbl 12 `"12+"', add
label values by99a_pernumop by99a_pernumop_lbl

label define by99a_occ1_lbl 0 `"NIU (not in universe)"'
label define by99a_occ1_lbl 1 `"Leaders (representatives) of governmental and administrative authorities at all levels, including directors of institutions, organizations, and enterprises"', add
label define by99a_occ1_lbl 2 `"Professionals (high-level specialists)"', add
label define by99a_occ1_lbl 3 `"Technicians and associate (middle-level) professionals"', add
label define by99a_occ1_lbl 4 `"Office clerks engaged in document preparation, paper work, accounting and service work"', add
label define by99a_occ1_lbl 5 `"Service workers, including housing and municipal services, sales and related workers"', add
label define by99a_occ1_lbl 6 `"Skilled agricultural, forestry, hunting, and fishery workers"', add
label define by99a_occ1_lbl 7 `"Skilled workers of large and small industrial enterprises, craft and trades, construction, transport, communications, geology and mineral prospecting"', add
label define by99a_occ1_lbl 8 `"Plant and machine operators and assemblers and not specified"', add
label define by99a_occ1_lbl 9 `"Elementary occupations"', add
label values by99a_occ1 by99a_occ1_lbl

label define by99a_occ2_lbl 11 `"Leaders (representatives) of governmental and administrative authorities"'
label define by99a_occ2_lbl 12 `"Leaders of institutions, organizations, and enterprises and their departments (services)"', add
label define by99a_occ2_lbl 13 `"Managers of small institutions, organizations, and enterprises"', add
label define by99a_occ2_lbl 21 `"Natural and engineering science professionals"', add
label define by99a_occ2_lbl 22 `"Life science, agriculture  and health professionals"', add
label define by99a_occ2_lbl 23 `"Teaching professionals"', add
label define by99a_occ2_lbl 24 `"Other high level professionals"', add
label define by99a_occ2_lbl 31 `"Physical and engineering science associate professionals"', add
label define by99a_occ2_lbl 32 `"Life science and health technicians and associate professionals"', add
label define by99a_occ2_lbl 33 `"Teaching associate professionals"', add
label define by99a_occ2_lbl 34 `"Finance and economy, administration and social associate professionals"', add
label define by99a_occ2_lbl 41 `"Office clerks engaged in document preparation, paper work, and accounting"', add
label define by99a_occ2_lbl 42 `"Customer service clerks"', add
label define by99a_occ2_lbl 51 `"Personal and protective services workers"', add
label define by99a_occ2_lbl 52 `"Salespersons, demonstrators, and models"', add
label define by99a_occ2_lbl 53 `"Workers of housing and public utilities"', add
label define by99a_occ2_lbl 54 `"Workers of film and television studios"', add
label define by99a_occ2_lbl 55 `"Workers engaged in display and restoration works"', add
label define by99a_occ2_lbl 61 `"Skilled agricultural, forestry, hunting, and fishery workers"', add
label define by99a_occ2_lbl 71 `"Extraction, construction and repair workers"', add
label define by99a_occ2_lbl 72 `"Metal and machinery workers"', add
label define by99a_occ2_lbl 73 `"Precision instrument making, handicraft, and printing workers"', add
label define by99a_occ2_lbl 74 `"Other skilled workers of large and small industrial enterprises"', add
label define by99a_occ2_lbl 75 `"Workers in transport and communications"', add
label define by99a_occ2_lbl 76 `"Geological exploration and prospecting workers"', add
label define by99a_occ2_lbl 81 `"Stationary-plant operators"', add
label define by99a_occ2_lbl 82 `"Stationary machine operators and assemblers"', add
label define by99a_occ2_lbl 83 `"Drivers and mobile plant operators"', add
label define by99a_occ2_lbl 88 `"Not specified"', add
label define by99a_occ2_lbl 91 `"Services, including housing and municipal services, sales, and related elementary occupations"', add
label define by99a_occ2_lbl 92 `"Agricultural, forestry, hunting, and fishery laborers"', add
label define by99a_occ2_lbl 93 `"Laborers in manufacturing, construction, transport, communications, geology and prospecting"', add
label define by99a_occ2_lbl 94 `"All economic branches laborers"', add
label define by99a_occ2_lbl 99 `"NIU (not in universe)"', add
label values by99a_occ2 by99a_occ2_lbl


