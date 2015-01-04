* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                       ///
  int     cntry            1-3      ///
  int     year             4-7      ///
  int     sample           8-11     ///
  double  serial           12-21    ///
  long    uk01a_dwnum      22-28    ///
  byte    uk01a_dwtype     29-29    ///
  byte    uk01a_bathroom   30-30    ///
  byte    uk01a_cars       31-31    ///
  byte    uk01a_heat       32-32    ///
  byte    uk01a_gqstat     33-33    ///
  byte    uk01a_density    34-34    ///
  byte    uk01a_famty      35-35    ///
  byte    uk01a_emphd      36-36    ///
  byte    uk01a_clwkhd1    37-38    ///
  byte    uk01a_sexhd      39-39    ///
  byte    uk01a_furn       40-40    ///
  byte    uk01a_educh      41-41    ///
  byte    uk01a_emph       42-42    ///
  byte    uk01a_hlthh      43-43    ///
  byte    uk01a_crowdh     44-44    ///
  byte    uk01a_caren      45-45    ///
  byte    uk01a_empn       46-46    ///
  byte    uk01a_eldn       47-47    ///
  byte    uk01a_famn       48-48    ///
  byte    uk01a_illn       49-49    ///
  byte    uk01a_sickn      50-50    ///
  byte    uk01a_hhsize     51-51    ///
  byte    uk01a_clwkhd2    52-52    ///
  byte    uk01a_floor      53-53    ///
  byte    uk01a_ethmult    54-54    ///
  byte    uk01a_occrate    55-55    ///
  byte    uk01a_floors     56-56    ///
  byte    uk01a_rooms      57-57    ///
  byte    uk01a_dwself     58-58    ///
  byte    uk01a_studn      59-59    ///
  byte    uk01a_tenure1    60-60    ///
  byte    uk01a_tenure2    61-61    ///
  byte    uk01a_depch      62-62    ///
  byte    uk01a_qdwtype    63-63    ///
  byte    uk01a_qbathroo   64-64    ///
  byte    uk01a_qcars      65-65    ///
  byte    uk01a_qheat      66-66    ///
  byte    uk01a_qgqstat    67-67    ///
  byte    uk01a_qgqtype    68-68    ///
  byte    uk01a_qdensity   69-69    ///
  byte    uk01a_qfamty     70-70    ///
  byte    uk01a_qemphd     71-71    ///
  byte    uk01a_qclwkhd1   72-72    ///
  byte    uk01a_qsexhd     73-73    ///
  byte    uk01a_qfurn      74-74    ///
  byte    uk01a_qeduch     75-75    ///
  byte    uk01a_qemph      76-76    ///
  byte    uk01a_qhlthh     77-77    ///
  byte    uk01a_qcrowdh    78-78    ///
  byte    uk01a_qcaren     79-79    ///
  byte    uk01a_qempn      80-80    ///
  byte    uk01a_qeldn      81-81    ///
  byte    uk01a_qfamn      82-82    ///
  byte    uk01a_qsickn     83-83    ///
  byte    uk01a_qhhsize    84-84    ///
  byte    uk01a_qclwkhd2   85-85    ///
  byte    uk01a_qfloor     86-86    ///
  byte    uk01a_qethmult   87-87    ///
  byte    uk01a_qoccrate   88-88    ///
  byte    uk01a_qpernumo   89-89    ///
  byte    uk01a_qfloors    90-90    ///
  byte    uk01a_qrooms     91-91    ///
  byte    uk01a_qdwself    92-92    ///
  byte    uk01a_qstudn     93-93    ///
  byte    uk01a_qtenure1   94-94    ///
  byte    uk01a_qtenure2   95-95    ///
  byte    uk01a_qdepch     96-96    ///
  int     pernum           97-99    ///
  float   wtper            100-107  ///
  byte    uk01a_pernum     108-108  ///
  byte    uk01a_age        109-110  ///
  byte    uk01a_bplco      111-112  ///
  byte    uk01a_relig      113-113  ///
  byte    uk01a_resco      114-114  ///
  byte    uk01a_migdist    115-116  ///
  byte    uk01a_wkdist     117-118  ///
  byte    uk01a_empstat    119-120  ///
  byte    uk01a_donorn     121-121  ///
  byte    uk01a_ethnicw    122-123  ///
  byte    uk01a_ethnicn    124-124  ///
  byte    uk01a_ethnics    125-126  ///
  byte    uk01a_worked     127-127  ///
  byte    uk01a_gaelicr    128-128  ///
  byte    uk01a_gaelics    129-129  ///
  byte    uk01a_gaelicu    130-130  ///
  byte    uk01a_gener      131-131  ///
  byte    uk01a_health     132-132  ///
  byte    uk01a_wkhrs      133-134  ///
  byte    uk01a_wkhrsg     135-135  ///
  byte    uk01a_ind        136-137  ///
  byte    uk01a_irish      138-138  ///
  byte    uk01a_isco       139-140  ///
  byte    uk01a_wkyr       141-142  ///
  byte    uk01a_illness    143-143  ///
  byte    uk01a_marst      144-144  ///
  int     uk01a_resform    145-147  ///
  byte    uk01a_censtat    148-148  ///
  byte    uk01a_profqu     149-149  ///
  byte    uk01a_hrscare    150-150  ///
  byte    uk01a_edleve     151-151  ///
  byte    uk01a_edlevs     152-152  ///
  int     uk01a_resreg     153-155  ///
  byte    uk01a_relige     156-157  ///
  byte    uk01a_religs     158-159  ///
  byte    uk01a_relign     160-160  ///
  byte    uk01a_relate     161-162  ///
  byte    uk01a_sex        163-163  ///
  int     uk01a_occ3       164-166  ///
  byte    uk01a_occ2       167-168  ///
  byte    uk01a_student    169-169  ///
  byte    uk01a_boss       170-170  ///
  byte    uk01a_resstud1   171-171  ///
  byte    uk01a_wktran     172-173  ///
  byte    uk01a_welshr     174-174  ///
  byte    uk01a_welshs     175-175  ///
  byte    uk01a_welshu     176-176  ///
  byte    uk01a_welshw     177-177  ///
  byte    uk01a_wksize     178-178  ///
  byte    uk01a_wrkplac    179-179  ///
  byte    uk01a_migind     180-180  ///
  byte    uk01a_resstud2   181-181  ///
  byte    uk01a_qage       182-182  ///
  byte    uk01a_qbplco     183-183  ///
  byte    uk01a_qrelig     184-184  ///
  byte    uk01a_qmigdist   185-185  ///
  byte    uk01a_qwkdist    186-186  ///
  byte    uk01a_qempstat   187-187  ///
  byte    uk01a_qethnicw   188-188  ///
  byte    uk01a_qethnicn   189-189  ///
  byte    uk01a_qethnics   190-190  ///
  byte    uk01a_qworked    191-191  ///
  byte    uk01a_qgaelicr   192-192  ///
  byte    uk01a_qgaelics   193-193  ///
  byte    uk01a_qgaelicu   194-194  ///
  byte    uk01a_qgaelicw   195-195  ///
  byte    uk01a_qgener     196-196  ///
  byte    uk01a_qhealth    197-197  ///
  byte    uk01a_qwkhrs     198-198  ///
  byte    uk01a_qind       199-199  ///
  byte    uk01a_qirish     200-200  ///
  byte    uk01a_qisco      201-201  ///
  byte    uk01a_qwkyr      202-202  ///
  byte    uk01a_qillness   203-203  ///
  byte    uk01a_qmarst     204-204  ///
  byte    uk01a_qresform   205-205  ///
  byte    uk01a_qcenstat   206-206  ///
  byte    uk01a_qprofqu    207-207  ///
  byte    uk01a_qhrscare   208-208  ///
  byte    uk01a_qedleve    209-209  ///
  byte    uk01a_qedlevs    210-210  ///
  byte    uk01a_qresreg    211-211  ///
  byte    uk01a_qrelige    212-212  ///
  byte    uk01a_qreligs    213-213  ///
  byte    uk01a_qrelign    214-214  ///
  byte    uk01a_qrelate    215-215  ///
  byte    uk01a_qsex       216-216  ///
  byte    uk01a_qocc3      217-217  ///
  byte    uk01a_qstudent   218-218  ///
  byte    uk01a_qboss      219-219  ///
  byte    uk01a_qresstud1  220-220  ///
  byte    uk01a_qwktran    221-221  ///
  byte    uk01a_qwelshr    222-222  ///
  byte    uk01a_qwelshs    223-223  ///
  byte    uk01a_qwelshu    224-224  ///
  byte    uk01a_qwelshw    225-225  ///
  byte    uk01a_qwksize    226-226  ///
  byte    uk01a_qwrkplac   227-227  ///
  byte    uk01a_qmigind    228-228  ///
  using `"ipumsi_00120.dat"'

replace wtper           = wtper           / 100

format serial          %10.0f
format wtper           %8.2f

label var cntry           `"Country"'
label var year            `"Year"'
label var sample          `"IPUMS sample identifier"'
label var serial          `"Household serial number"'
label var uk01a_dwnum     `"Dwelling number"'
label var uk01a_dwtype    `"Accommodation type"'
label var uk01a_bathroom  `"Use of bath/shower/toilet"'
label var uk01a_cars      `"Cars/vans owned or available for use"'
label var uk01a_heat      `"Central heating"'
label var uk01a_gqstat    `"Status in communal establishment"'
label var uk01a_density   `"Number of  residents per room in household"'
label var uk01a_famty     `"Family type"'
label var uk01a_emphd     `"Economic position of family reference person (FRP)"'
label var uk01a_clwkhd1   `"NS-SEC Socio-economic classification of family reference person"'
label var uk01a_sexhd     `"Sex of family reference person"'
label var uk01a_furn      `"Rented accommodation furnished"'
label var uk01a_educh     `"Household education indicator"'
label var uk01a_emph      `"Household employment indicator"'
label var uk01a_hlthh     `"Household health and disability indicator"'
label var uk01a_crowdh    `"Household housing indicator"'
label var uk01a_caren     `"Number of carers in the household"'
label var uk01a_empn      `"Number of employed adults in household"'
label var uk01a_eldn      `"Number of persons in household aged 65 or over"'
label var uk01a_famn      `"Number of families in households"'
label var uk01a_illn      `"Number in household with limiting long-term illness"'
label var uk01a_sickn     `"Number of household members with poor health"'
label var uk01a_hhsize    `"Number of usual residents in household"'
label var uk01a_clwkhd2   `"Social grade of household reference person"'
label var uk01a_floor     `"Lowest floor level of household living accommodation"'
label var uk01a_ethmult   `"Multiple ethnicity household indicator"'
label var uk01a_occrate   `"Occupancy rating of household"'
label var uk01a_floors    `"Number of floor levels"'
label var uk01a_rooms     `"Number of rooms in occupied household space"'
label var uk01a_dwself    `"Accommodation self-contained"'
label var uk01a_studn     `"Household with students away during term time"'
label var uk01a_tenure1   `"Tenure of accommodation, England and Wales"'
label var uk01a_tenure2   `"Tenure of accommodation, Scotland and Northern Ireland"'
label var uk01a_depch     `"Dependent children in family"'
label var uk01a_qdwtype   `"Flag for accommodation type"'
label var uk01a_qbathroo  `"Flag for use of bath/shower/toilet"'
label var uk01a_qcars     `"Flag for cars/vans owned or available for use"'
label var uk01a_qheat     `"Flag for central heating"'
label var uk01a_qgqstat   `"Flag for status in communal establishment"'
label var uk01a_qgqtype   `"Flag for type of communal establishment"'
label var uk01a_qdensity  `"Flag for number of  residents per room in household"'
label var uk01a_qfamty    `"Flag for family type"'
label var uk01a_qemphd    `"Flag for economic position of family reference person"'
label var uk01a_qclwkhd1  `"Flag for NS-SEC Socio-economic classification of family reference person"'
label var uk01a_qsexhd    `"Flag for sex of family reference person"'
label var uk01a_qfurn     `"Flag for rented accommodation furnished"'
label var uk01a_qeduch    `"Flag for household education indicator"'
label var uk01a_qemph     `"Flag for household employment indicator"'
label var uk01a_qhlthh    `"Flag for household health and disability indicator"'
label var uk01a_qcrowdh   `"Flag for household housing indicator"'
label var uk01a_qcaren    `"Flag for number of carers in the household"'
label var uk01a_qempn     `"Flag for number of employed adults in household"'
label var uk01a_qeldn     `"Flag for number of persons in household aged 65 or over"'
label var uk01a_qfamn     `"Flag for number of families in households"'
label var uk01a_qsickn    `"Flag for number of household members with poor health"'
label var uk01a_qhhsize   `"Flag for number of usual residents in household"'
label var uk01a_qclwkhd2  `"Flag for social grade of household reference person"'
label var uk01a_qfloor    `"Flag for lowest floor level of household living accommodation"'
label var uk01a_qethmult  `"Flag for multipleethnicity household indicator"'
label var uk01a_qoccrate  `"Flag for occupancy rating of household"'
label var uk01a_qpernumo  `"Flag for person's number within country"'
label var uk01a_qfloors   `"Flag for number of floor levels"'
label var uk01a_qrooms    `"Flag for number of rooms in occupied household space"'
label var uk01a_qdwself   `"Flag for accommodation self-contained"'
label var uk01a_qstudn    `"Flag for household with students away during term time"'
label var uk01a_qtenure1  `"Flag for tenure of accommodation, England and Wales only"'
label var uk01a_qtenure2  `"Flag for tenure of accommodation, Scotland and Northern Ireland only"'
label var uk01a_qdepch    `"Flag for dependent children in family"'
label var pernum          `"Person number"'
label var wtper           `"Person weight"'
label var uk01a_pernum    `"Person number (within household)"'
label var uk01a_age       `"Age of respondents, improved grouping"'
label var uk01a_bplco     `"Country of birth, improved grouping"'
label var uk01a_relig     `"Religion"'
label var uk01a_resco     `"Country of usual residence"'
label var uk01a_migdist   `"Distance of move for migrants-banded"'
label var uk01a_wkdist    `"Distance to work (including study in Scotland)"'
label var uk01a_empstat   `"Economic activity (last week)"'
label var uk01a_donorn    `"Number of times individual's information has been donated"'
label var uk01a_ethnicw   `"Ethnic group for Englandand Wales, improved grouping"'
label var uk01a_ethnicn   `"Ethnic group for Northern Ireland"'
label var uk01a_ethnics   `"Ethnic group for Scotland, v2 grouping"'
label var uk01a_worked    `"Ever worked"'
label var uk01a_gaelicr   `"Whether reads Gaelic"'
label var uk01a_gaelics   `"Whether speaks Gaelic"'
label var uk01a_gaelicu   `"Whether understands Gaelic"'
label var uk01a_gener     `"Generation indicator"'
label var uk01a_health    `"General health over last twelve months"'
label var uk01a_wkhrs     `"Hours worked weekly"'
label var uk01a_wkhrsg    `"Hours worked weekly-grouped"'
label var uk01a_ind       `"Industry classification"'
label var uk01a_irish     `"Irish language"'
label var uk01a_isco      `"International standard classification of occupations"'
label var uk01a_wkyr      `"Year last worked"'
label var uk01a_illness   `"Limiting long term illness"'
label var uk01a_marst     `"Marital status"'
label var uk01a_resform   `"Area of residence 1 year ago"'
label var uk01a_censtat   `"One number census status"'
label var uk01a_profqu    `"Professional qualification"'
label var uk01a_hrscare   `"Number of hours care provided per week"'
label var uk01a_edleve    `"Level of highest qualifications: England, Wales and Northern Ireland"'
label var uk01a_edlevs    `"Level of highest qualifications: Scotland"'
label var uk01a_resreg    `"Region of usual residence"'
label var uk01a_relige    `"Religion, England and Wales"'
label var uk01a_religs    `"Religion, Scotland"'
label var uk01a_relign    `"Religion, Northern Ireland"'
label var uk01a_relate    `"Relationship to household reference person"'
label var uk01a_sex       `"Sex"'
label var uk01a_occ3      `"Standard occupational classification 2000-minor"'
label var uk01a_occ2      `"Standard Occupational Classification 2000-sub major"'
label var uk01a_student   `"Schoolchild or student in full-time education"'
label var uk01a_boss      `"Supervisor/foreman"'
label var uk01a_resstud1  `"Term time address of students or schoolchildren"'
label var uk01a_wktran    `"Transport to work, UK (including to study in Scotland)"'
label var uk01a_welshr    `"Whether reads Welsh"'
label var uk01a_welshs    `"Whether speaks Welsh"'
label var uk01a_welshu    `"Whether understands Welsh"'
label var uk01a_welshw    `"Whether writes Welsh"'
label var uk01a_wksize    `"Size of workforce"'
label var uk01a_wrkplac   `"Workplace"'
label var uk01a_migind    `"Migration indicator"'
label var uk01a_resstud2  `"Students residential status"'
label var uk01a_qage      `"Flag for age of respondents, improved grouping"'
label var uk01a_qbplco    `"Flag for country of birth, improved grouping"'
label var uk01a_qrelig    `"Flag for community background-religion or religion brought up in"'
label var uk01a_qmigdist  `"Flag for distance of move for migrants-banded"'
label var uk01a_qwkdist   `"Flag for distance to work (including study in Scotland)"'
label var uk01a_qempstat  `"Flag for economic activity (last week)"'
label var uk01a_qethnicw  `"Flag for ethnic group for England and Wales, improved grouping"'
label var uk01a_qethnicn  `"Flag for ethnic group for Northern Ireland"'
label var uk01a_qethnics  `"Flag for ethnic group for Scotland, v2 grouping"'
label var uk01a_qworked   `"Flag for ever worked"'
label var uk01a_qgaelicr  `"Flag for whether reads Gaelic"'
label var uk01a_qgaelics  `"Flag for whether speaks Gaelic"'
label var uk01a_qgaelicu  `"Flag for whether understands Gaelic"'
label var uk01a_qgaelicw  `"Flag for whether writes Gaelic"'
label var uk01a_qgener    `"Flag for generation indicator"'
label var uk01a_qhealth   `"Flag for general health over last twelve months"'
label var uk01a_qwkhrs    `"Flag for hours worked weekly"'
label var uk01a_qind      `"Flag for industry classification"'
label var uk01a_qirish    `"Flag for whether reads/speaks/understands/writes Irish"'
label var uk01a_qisco     `"Flag for international standard classification of occupations"'
label var uk01a_qwkyr     `"Flag for year last worked"'
label var uk01a_qillness  `"Flag for limiting long term illness"'
label var uk01a_qmarst    `"Flag for marital status"'
label var uk01a_qresform  `"Flag for area of former residence"'
label var uk01a_qcenstat  `"Flag for one number census status"'
label var uk01a_qprofqu   `"Flag for professional qualification"'
label var uk01a_qhrscare  `"Flag for number of hours care provided per week"'
label var uk01a_qedleve   `"Flag for level of highest qualifications England, Wales and Northern Ireland"'
label var uk01a_qedlevs   `"Flag for level of highest qualifications, Scotland Only"'
label var uk01a_qresreg   `"Flag for region of usual residence"'
label var uk01a_qrelige   `"Flag for religion, England and Wales"'
label var uk01a_qreligs   `"Flag for religion, Scotland"'
label var uk01a_qrelign   `"Flag for religion, Northern Ireland"'
label var uk01a_qrelate   `"Flag for relationship to household reference person"'
label var uk01a_qsex      `"Flag for sex"'
label var uk01a_qocc3     `"Flag for standard occupational classification 2000-minor"'
label var uk01a_qstudent  `"Flag for schoolchild or student in full-time education"'
label var uk01a_qboss     `"Flag for supervisor/foreman"'
label var uk01a_qresstud1 `"Flag for term time address of students or schoolchildren"'
label var uk01a_qwktran   `"Flag for transport to work, UK (including to study in Scotland)"'
label var uk01a_qwelshr   `"Flag for whether reads Welsh"'
label var uk01a_qwelshs   `"Flag for whether speaks Welsh"'
label var uk01a_qwelshu   `"Flag for whether understands Welsh"'
label var uk01a_qwelshw   `"Flag for whether writes Welsh"'
label var uk01a_qwksize   `"Flag for size of workforce"'
label var uk01a_qwrkplac  `"Flag for workplace"'
label var uk01a_qmigind   `"Flag for migration indicator"'

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

label define uk01a_dwtype_lbl 1 `"Detached"'
label define uk01a_dwtype_lbl 2 `"Semi-detached"', add
label define uk01a_dwtype_lbl 3 `"Terraced house/bungalow"', add
label define uk01a_dwtype_lbl 4 `"Purpose-built flats"', add
label define uk01a_dwtype_lbl 5 `"Flat-converted or shared house (including bed sits)"', add
label define uk01a_dwtype_lbl 6 `"Flat or maisonette in commercial building"', add
label define uk01a_dwtype_lbl 7 `"Mobile or temp structure"', add
label define uk01a_dwtype_lbl 9 `"Communal establishment"', add
label values uk01a_dwtype uk01a_dwtype_lbl

label define uk01a_bathroom_lbl 1 `"Sole use"'
label define uk01a_bathroom_lbl 2 `"Shared use/None"', add
label define uk01a_bathroom_lbl 9 `"NIU (not in universe)"', add
label values uk01a_bathroom uk01a_bathroom_lbl

label define uk01a_cars_lbl 0 `"No car"'
label define uk01a_cars_lbl 1 `"1 car"', add
label define uk01a_cars_lbl 2 `"2 cars"', add
label define uk01a_cars_lbl 3 `"3 cars or more"', add
label define uk01a_cars_lbl 9 `"NIU (not in universe)"', add
label values uk01a_cars uk01a_cars_lbl

label define uk01a_heat_lbl 1 `"Yes in some or all rooms"'
label define uk01a_heat_lbl 2 `"No"', add
label define uk01a_heat_lbl 9 `"NIU (not in universe)"', add
label values uk01a_heat uk01a_heat_lbl

label define uk01a_gqstat_lbl 1 `"Staff (owner or relative)"'
label define uk01a_gqstat_lbl 2 `"Resident (non-staff)"', add
label define uk01a_gqstat_lbl 9 `"NIU (not in universe)"', add
label values uk01a_gqstat uk01a_gqstat_lbl

label define uk01a_density_lbl 1 `"Up to and incl 0.5"'
label define uk01a_density_lbl 2 `"Over 0.5 and up to 0.75"', add
label define uk01a_density_lbl 3 `"Over 0.75 and up to 1"', add
label define uk01a_density_lbl 4 `"Over 1 and up to 1.5"', add
label define uk01a_density_lbl 5 `"Over 1.5"', add
label define uk01a_density_lbl 9 `"NIU (not in universe)"', add
label values uk01a_density uk01a_density_lbl

label define uk01a_famty_lbl 0 `"NIU (not in universe)"'
label define uk01a_famty_lbl 1 `"Lone parent -- male"', add
label define uk01a_famty_lbl 2 `"Lone parent -- female"', add
label define uk01a_famty_lbl 3 `"Married couple -- no children"', add
label define uk01a_famty_lbl 4 `"Married couple -- children all belong to both members of couple"', add
label define uk01a_famty_lbl 5 `"Married couple -- children do not all belong to both members"', add
label define uk01a_famty_lbl 6 `"Cohabiting couple -- no children"', add
label define uk01a_famty_lbl 7 `"Cohabiting couple -- children all belong to both members of c"', add
label define uk01a_famty_lbl 8 `"Cohabiting couple -- children do not all belong to both members"', add
label define uk01a_famty_lbl 9 `"Ungrouped individual (not in a family)"', add
label values uk01a_famty uk01a_famty_lbl

label define uk01a_emphd_lbl 1 `"In employment"'
label define uk01a_emphd_lbl 2 `"Unemployed"', add
label define uk01a_emphd_lbl 3 `"Economically inactive"', add
label define uk01a_emphd_lbl 8 `"Unknown"', add
label define uk01a_emphd_lbl 9 `"NIU (not in universe)"', add
label values uk01a_emphd uk01a_emphd_lbl

label define uk01a_clwkhd1_lbl 01 `"Employers and managers in large organisations"'
label define uk01a_clwkhd1_lbl 02 `"Higher professionals"', add
label define uk01a_clwkhd1_lbl 03 `"Lower managerial and professional occupations"', add
label define uk01a_clwkhd1_lbl 04 `"Intermediate occupations"', add
label define uk01a_clwkhd1_lbl 05 `"Small employers and own account workers"', add
label define uk01a_clwkhd1_lbl 06 `"Lower supervisory or craft and related occupations"', add
label define uk01a_clwkhd1_lbl 07 `"Semi-routine occupations"', add
label define uk01a_clwkhd1_lbl 08 `"Routine occupations"', add
label define uk01a_clwkhd1_lbl 09 `"Never worked"', add
label define uk01a_clwkhd1_lbl 10 `"Long term unemployed"', add
label define uk01a_clwkhd1_lbl 11 `"Full time students"', add
label define uk01a_clwkhd1_lbl 12 `"Other -- not classified"', add
label define uk01a_clwkhd1_lbl 98 `"Unknown"', add
label define uk01a_clwkhd1_lbl 99 `"NIU (not in universe)"', add
label values uk01a_clwkhd1 uk01a_clwkhd1_lbl

label define uk01a_sexhd_lbl 1 `"Male"'
label define uk01a_sexhd_lbl 2 `"Female"', add
label define uk01a_sexhd_lbl 8 `"Unknown"', add
label define uk01a_sexhd_lbl 9 `"NIU (not in universe)"', add
label values uk01a_sexhd uk01a_sexhd_lbl

label define uk01a_furn_lbl 1 `"Furnished"'
label define uk01a_furn_lbl 2 `"Unfurnished"', add
label define uk01a_furn_lbl 8 `"Unknown"', add
label define uk01a_furn_lbl 9 `"NIU (not in universe)"', add
label values uk01a_furn uk01a_furn_lbl

label define uk01a_educh_lbl 1 `"Household has educational attainment"'
label define uk01a_educh_lbl 2 `"Level 2 or equivalent/current FE, not achieved"', add
label define uk01a_educh_lbl 9 `"NIU (not in universe)"', add
label values uk01a_educh uk01a_educh_lbl

label define uk01a_emph_lbl 1 `"No non-student age 16-74 in household is sick or unemployed"'
label define uk01a_emph_lbl 2 `"Non-student age 16-74 in household is sick or unemployed"', add
label define uk01a_emph_lbl 9 `"NIU (not in universe)"', add
label values uk01a_emph uk01a_emph_lbl

label define uk01a_hlthh_lbl 1 `"No one in household is ill or in poor health"'
label define uk01a_hlthh_lbl 2 `"Household member is ill or in poor health"', add
label define uk01a_hlthh_lbl 9 `"NIU (not in universe)"', add
label values uk01a_hlthh uk01a_hlthh_lbl

label define uk01a_crowdh_lbl 1 `"Not overcrowded or lacking amenities"'
label define uk01a_crowdh_lbl 2 `"Overcrowded/lacks bath/shower,wc or heating"', add
label define uk01a_crowdh_lbl 9 `"NIU (not in universe)"', add
label values uk01a_crowdh uk01a_crowdh_lbl

label define uk01a_caren_lbl 0 `"None"'
label define uk01a_caren_lbl 1 `"1"', add
label define uk01a_caren_lbl 2 `"2+"', add
label define uk01a_caren_lbl 9 `"NIU (not in universe)"', add
label values uk01a_caren uk01a_caren_lbl

label define uk01a_empn_lbl 0 `"No earners"'
label define uk01a_empn_lbl 1 `"1 earner"', add
label define uk01a_empn_lbl 2 `"2 earners"', add
label define uk01a_empn_lbl 3 `"3+ earners"', add
label define uk01a_empn_lbl 9 `"NIU (not in universe)"', add
label values uk01a_empn uk01a_empn_lbl

label define uk01a_eldn_lbl 0 `"0"'
label define uk01a_eldn_lbl 1 `"1"', add
label define uk01a_eldn_lbl 2 `"2 or more"', add
label define uk01a_eldn_lbl 9 `"NIU (not in universe)"', add
label values uk01a_eldn uk01a_eldn_lbl

label define uk01a_famn_lbl 0 `"All ungrouped individuals"'
label define uk01a_famn_lbl 1 `"One family household with ungrouped person(s)"', add
label define uk01a_famn_lbl 2 `"One family household without ungrouped person(s)"', add
label define uk01a_famn_lbl 3 `"Two family household with ungrouped person(s)"', add
label define uk01a_famn_lbl 4 `"Two family household without ungrouped person(s)"', add
label define uk01a_famn_lbl 5 `"Three or more family household with ungrouped person(s)"', add
label define uk01a_famn_lbl 6 `"Three or more family household without ungrouped person(s)"', add
label define uk01a_famn_lbl 9 `"NIU (not in universe)"', add
label values uk01a_famn uk01a_famn_lbl

label define uk01a_illn_lbl 0 `"None"'
label define uk01a_illn_lbl 1 `"1"', add
label define uk01a_illn_lbl 2 `"2 or more"', add
label define uk01a_illn_lbl 9 `"NIU (not in universe)"', add
label values uk01a_illn uk01a_illn_lbl

label define uk01a_sickn_lbl 0 `"0"'
label define uk01a_sickn_lbl 1 `"1"', add
label define uk01a_sickn_lbl 2 `"2+"', add
label define uk01a_sickn_lbl 9 `"NIU (not in universe)"', add
label values uk01a_sickn uk01a_sickn_lbl

label define uk01a_hhsize_lbl 0 `"0"'
label define uk01a_hhsize_lbl 1 `"1"', add
label define uk01a_hhsize_lbl 2 `"2"', add
label define uk01a_hhsize_lbl 3 `"3"', add
label define uk01a_hhsize_lbl 4 `"4"', add
label define uk01a_hhsize_lbl 5 `"5"', add
label define uk01a_hhsize_lbl 6 `"6 or more"', add
label define uk01a_hhsize_lbl 9 `"NIU (not in universe)"', add
label values uk01a_hhsize uk01a_hhsize_lbl

label define uk01a_clwkhd2_lbl 1 `"Professional middle managers"'
label define uk01a_clwkhd2_lbl 2 `"All other non-manual workers"', add
label define uk01a_clwkhd2_lbl 3 `"All skilled manual workers"', add
label define uk01a_clwkhd2_lbl 4 `"All semi-skilled and unskilled manual workers"', add
label define uk01a_clwkhd2_lbl 5 `"On benefit/unemployed"', add
label define uk01a_clwkhd2_lbl 9 `"NIU (not in universe)"', add
label values uk01a_clwkhd2 uk01a_clwkhd2_lbl

label define uk01a_floor_lbl 1 `"Basement"'
label define uk01a_floor_lbl 2 `"Ground floor"', add
label define uk01a_floor_lbl 3 `"First floor"', add
label define uk01a_floor_lbl 4 `"Second floor"', add
label define uk01a_floor_lbl 5 `"3rd or 4th floor"', add
label define uk01a_floor_lbl 6 `"5th floor or higher"', add
label define uk01a_floor_lbl 9 `"NIU (not in universe)"', add
label values uk01a_floor uk01a_floor_lbl

label define uk01a_ethmult_lbl 1 `"One person household"'
label define uk01a_ethmult_lbl 2 `"All household members have same ethnic group"', add
label define uk01a_ethmult_lbl 3 `"Different identities between generation only"', add
label define uk01a_ethmult_lbl 4 `"Different identities within partnerships"', add
label define uk01a_ethmult_lbl 5 `"Any other combination of multiple identities"', add
label define uk01a_ethmult_lbl 8 `"Unknown"', add
label define uk01a_ethmult_lbl 9 `"NIU (not in universe)"', add
label values uk01a_ethmult uk01a_ethmult_lbl

label define uk01a_occrate_lbl 1 `"At least two rooms more than required"'
label define uk01a_occrate_lbl 2 `"One room more than required"', add
label define uk01a_occrate_lbl 3 `"Number of rooms equals number required"', add
label define uk01a_occrate_lbl 4 `"Number of rooms is lower than those required."', add
label define uk01a_occrate_lbl 9 `"NIU (not in universe)"', add
label values uk01a_occrate uk01a_occrate_lbl

label define uk01a_floors_lbl 1 `"More than one floor"'
label define uk01a_floors_lbl 2 `"One floor"', add
label define uk01a_floors_lbl 9 `"NIU (not in universe)"', add
label values uk01a_floors uk01a_floors_lbl

label define uk01a_rooms_lbl 1 `"1-2"'
label define uk01a_rooms_lbl 2 `"3-4"', add
label define uk01a_rooms_lbl 3 `"5-6"', add
label define uk01a_rooms_lbl 4 `"7+"', add
label define uk01a_rooms_lbl 9 `"NIU (not in universe)"', add
label values uk01a_rooms uk01a_rooms_lbl

label define uk01a_dwself_lbl 1 `"Yes"'
label define uk01a_dwself_lbl 2 `"No"', add
label define uk01a_dwself_lbl 9 `"NIU (not in universe)"', add
label values uk01a_dwself uk01a_dwself_lbl

label define uk01a_studn_lbl 1 `"None away"'
label define uk01a_studn_lbl 2 `"1 + away under 18"', add
label define uk01a_studn_lbl 3 `"1+ away 18 and over"', add
label define uk01a_studn_lbl 4 `"2+ away both under 18 and 18+"', add
label define uk01a_studn_lbl 9 `"NIU (not in universe)"', add
label values uk01a_studn uk01a_studn_lbl

label define uk01a_tenure1_lbl 1 `"Owns outright"'
label define uk01a_tenure1_lbl 2 `"Owns with a mortgage or loan"', add
label define uk01a_tenure1_lbl 3 `"Pays part rent and part mortgage (shared ownership)"', add
label define uk01a_tenure1_lbl 4 `"Rents from Council (local authority)"', add
label define uk01a_tenure1_lbl 5 `"Rents from housing association/housing co-operative/charitable trust registered social landlord"', add
label define uk01a_tenure1_lbl 6 `"Private rented or living rent free"', add
label define uk01a_tenure1_lbl 9 `"NIU (not in universe)"', add
label values uk01a_tenure1 uk01a_tenure1_lbl

label define uk01a_tenure2_lbl 1 `"Owns outright"'
label define uk01a_tenure2_lbl 2 `"Owns with mortgage or loan"', add
label define uk01a_tenure2_lbl 3 `"Pays part rent and part mortgage (shared ownership)"', add
label define uk01a_tenure2_lbl 4 `"Rents from local authority or Scottish homes"', add
label define uk01a_tenure2_lbl 5 `"Rents from housing association/housing co-operative/charitable trust non-profit housing company"', add
label define uk01a_tenure2_lbl 6 `"Rents from private landlord /employer/relatives/other including friend of a household member"', add
label define uk01a_tenure2_lbl 9 `"NIU (not in universe)"', add
label values uk01a_tenure2 uk01a_tenure2_lbl

label define uk01a_depch_lbl 0 `"No children in family"'
label define uk01a_depch_lbl 1 `"Dependent children only"', add
label define uk01a_depch_lbl 2 `"Dependent and non-dependent children"', add
label define uk01a_depch_lbl 3 `"Non-dependent children only"', add
label define uk01a_depch_lbl 9 `"NIU (not in universe)"', add
label values uk01a_depch uk01a_depch_lbl

label define uk01a_qdwtype_lbl 0 `"Not imputed"'
label define uk01a_qdwtype_lbl 1 `"Imputed"', add
label values uk01a_qdwtype uk01a_qdwtype_lbl

label define uk01a_qbathroo_lbl 0 `"Not imputed"'
label define uk01a_qbathroo_lbl 1 `"Imputed"', add
label values uk01a_qbathroo uk01a_qbathroo_lbl

label define uk01a_qcars_lbl 0 `"Not imputed"'
label define uk01a_qcars_lbl 1 `"Imputed"', add
label values uk01a_qcars uk01a_qcars_lbl

label define uk01a_qheat_lbl 0 `"Not imputed"'
label define uk01a_qheat_lbl 1 `"Imputed"', add
label values uk01a_qheat uk01a_qheat_lbl

label define uk01a_qgqstat_lbl 0 `"Not imputed"'
label define uk01a_qgqstat_lbl 1 `"Imputed"', add
label values uk01a_qgqstat uk01a_qgqstat_lbl

label define uk01a_qgqtype_lbl 0 `"Not imputed"'
label define uk01a_qgqtype_lbl 1 `"Imputed"', add
label values uk01a_qgqtype uk01a_qgqtype_lbl

label define uk01a_qdensity_lbl 0 `"Not imputed"'
label define uk01a_qdensity_lbl 1 `"Imputed"', add
label values uk01a_qdensity uk01a_qdensity_lbl

label define uk01a_qfamty_lbl 0 `"Not imputed"'
label define uk01a_qfamty_lbl 1 `"Imputed"', add
label values uk01a_qfamty uk01a_qfamty_lbl

label define uk01a_qemphd_lbl 0 `"Not imputed"'
label define uk01a_qemphd_lbl 1 `"Imputed"', add
label values uk01a_qemphd uk01a_qemphd_lbl

label define uk01a_qclwkhd1_lbl 0 `"Not imputed"'
label define uk01a_qclwkhd1_lbl 1 `"Imputed"', add
label values uk01a_qclwkhd1 uk01a_qclwkhd1_lbl

label define uk01a_qsexhd_lbl 0 `"Not imputed"'
label define uk01a_qsexhd_lbl 1 `"Imputed"', add
label values uk01a_qsexhd uk01a_qsexhd_lbl

label define uk01a_qfurn_lbl 0 `"Not imputed"'
label define uk01a_qfurn_lbl 1 `"Imputed"', add
label values uk01a_qfurn uk01a_qfurn_lbl

label define uk01a_qeduch_lbl 0 `"Not imputed"'
label define uk01a_qeduch_lbl 1 `"Imputed"', add
label values uk01a_qeduch uk01a_qeduch_lbl

label define uk01a_qemph_lbl 0 `"Not imputed"'
label define uk01a_qemph_lbl 1 `"Imputed"', add
label values uk01a_qemph uk01a_qemph_lbl

label define uk01a_qhlthh_lbl 0 `"Not imputed"'
label define uk01a_qhlthh_lbl 1 `"Imputed"', add
label values uk01a_qhlthh uk01a_qhlthh_lbl

label define uk01a_qcrowdh_lbl 0 `"Not imputed"'
label define uk01a_qcrowdh_lbl 1 `"Imputed"', add
label values uk01a_qcrowdh uk01a_qcrowdh_lbl

label define uk01a_qcaren_lbl 0 `"Not imputed"'
label define uk01a_qcaren_lbl 1 `"Imputed"', add
label values uk01a_qcaren uk01a_qcaren_lbl

label define uk01a_qempn_lbl 0 `"Not imputed"'
label define uk01a_qempn_lbl 1 `"Imputed"', add
label values uk01a_qempn uk01a_qempn_lbl

label define uk01a_qeldn_lbl 0 `"Not imputed"'
label define uk01a_qeldn_lbl 1 `"Imputed"', add
label values uk01a_qeldn uk01a_qeldn_lbl

label define uk01a_qfamn_lbl 0 `"Not imputed"'
label define uk01a_qfamn_lbl 1 `"Imputed"', add
label values uk01a_qfamn uk01a_qfamn_lbl

label define uk01a_qsickn_lbl 0 `"Not imputed"'
label define uk01a_qsickn_lbl 1 `"Imputed"', add
label values uk01a_qsickn uk01a_qsickn_lbl

label define uk01a_qhhsize_lbl 0 `"Not imputed"'
label define uk01a_qhhsize_lbl 1 `"Imputed"', add
label values uk01a_qhhsize uk01a_qhhsize_lbl

label define uk01a_qclwkhd2_lbl 0 `"Not imputed"'
label define uk01a_qclwkhd2_lbl 1 `"Imputed"', add
label values uk01a_qclwkhd2 uk01a_qclwkhd2_lbl

label define uk01a_qfloor_lbl 0 `"Not imputed"'
label define uk01a_qfloor_lbl 1 `"Imputed"', add
label values uk01a_qfloor uk01a_qfloor_lbl

label define uk01a_qethmult_lbl 0 `"Not imputed"'
label define uk01a_qethmult_lbl 1 `"Imputed"', add
label values uk01a_qethmult uk01a_qethmult_lbl

label define uk01a_qoccrate_lbl 0 `"Not imputed"'
label define uk01a_qoccrate_lbl 1 `"Imputed"', add
label values uk01a_qoccrate uk01a_qoccrate_lbl

label define uk01a_qpernumo_lbl 0 `"Not imputed"'
label define uk01a_qpernumo_lbl 1 `"Imputed"', add
label values uk01a_qpernumo uk01a_qpernumo_lbl

label define uk01a_qfloors_lbl 0 `"Not imputed"'
label define uk01a_qfloors_lbl 1 `"Imputed"', add
label values uk01a_qfloors uk01a_qfloors_lbl

label define uk01a_qrooms_lbl 0 `"Not imputed"'
label define uk01a_qrooms_lbl 1 `"Imputed"', add
label values uk01a_qrooms uk01a_qrooms_lbl

label define uk01a_qdwself_lbl 0 `"Not imputed"'
label define uk01a_qdwself_lbl 1 `"Imputed"', add
label values uk01a_qdwself uk01a_qdwself_lbl

label define uk01a_qstudn_lbl 0 `"Not imputed"'
label define uk01a_qstudn_lbl 1 `"Imputed"', add
label values uk01a_qstudn uk01a_qstudn_lbl

label define uk01a_qtenure1_lbl 0 `"Not imputed"'
label define uk01a_qtenure1_lbl 1 `"Imputed"', add
label values uk01a_qtenure1 uk01a_qtenure1_lbl

label define uk01a_qtenure2_lbl 0 `"Not imputed"'
label define uk01a_qtenure2_lbl 1 `"Imputed"', add
label values uk01a_qtenure2 uk01a_qtenure2_lbl

label define uk01a_qdepch_lbl 0 `"Not imputed"'
label define uk01a_qdepch_lbl 1 `"Imputed"', add
label values uk01a_qdepch uk01a_qdepch_lbl

label define uk01a_pernum_lbl 0 `"Household record"'
label define uk01a_pernum_lbl 1 `"1"', add
label values uk01a_pernum uk01a_pernum_lbl

label define uk01a_age_lbl 00 `"0"'
label define uk01a_age_lbl 01 `"1"', add
label define uk01a_age_lbl 02 `"2"', add
label define uk01a_age_lbl 03 `"3"', add
label define uk01a_age_lbl 04 `"4"', add
label define uk01a_age_lbl 05 `"5"', add
label define uk01a_age_lbl 06 `"6"', add
label define uk01a_age_lbl 07 `"7"', add
label define uk01a_age_lbl 08 `"8"', add
label define uk01a_age_lbl 09 `"9"', add
label define uk01a_age_lbl 10 `"10"', add
label define uk01a_age_lbl 11 `"11"', add
label define uk01a_age_lbl 12 `"12"', add
label define uk01a_age_lbl 13 `"13"', add
label define uk01a_age_lbl 14 `"14"', add
label define uk01a_age_lbl 15 `"15"', add
label define uk01a_age_lbl 16 `"16-19"', add
label define uk01a_age_lbl 20 `"20-24"', add
label define uk01a_age_lbl 25 `"25-29"', add
label define uk01a_age_lbl 30 `"30-44"', add
label define uk01a_age_lbl 45 `"45-59"', add
label define uk01a_age_lbl 60 `"60-64"', add
label define uk01a_age_lbl 65 `"65-69"', add
label define uk01a_age_lbl 70 `"70-74"', add
label define uk01a_age_lbl 75 `"75"', add
label define uk01a_age_lbl 76 `"76"', add
label define uk01a_age_lbl 77 `"77"', add
label define uk01a_age_lbl 78 `"78"', add
label define uk01a_age_lbl 79 `"79"', add
label define uk01a_age_lbl 80 `"80"', add
label define uk01a_age_lbl 81 `"81"', add
label define uk01a_age_lbl 82 `"82"', add
label define uk01a_age_lbl 83 `"83"', add
label define uk01a_age_lbl 84 `"84"', add
label define uk01a_age_lbl 85 `"85"', add
label define uk01a_age_lbl 86 `"86"', add
label define uk01a_age_lbl 87 `"87"', add
label define uk01a_age_lbl 88 `"88"', add
label define uk01a_age_lbl 89 `"89"', add
label define uk01a_age_lbl 90 `"90"', add
label define uk01a_age_lbl 91 `"91"', add
label define uk01a_age_lbl 92 `"92"', add
label define uk01a_age_lbl 93 `"93"', add
label define uk01a_age_lbl 94 `"94"', add
label define uk01a_age_lbl 95 `"95+"', add
label values uk01a_age uk01a_age_lbl

label define uk01a_bplco_lbl 01 `"England"'
label define uk01a_bplco_lbl 02 `"Scotland"', add
label define uk01a_bplco_lbl 03 `"Republic of Ireland"', add
label define uk01a_bplco_lbl 04 `"N Ireland"', add
label define uk01a_bplco_lbl 05 `"Wales"', add
label define uk01a_bplco_lbl 06 `"UK part not specified (England, Wales and Scotland)"', add
label define uk01a_bplco_lbl 07 `"Ireland, part not specified (Northern Ireland only)"', add
label define uk01a_bplco_lbl 08 `"Western Europe"', add
label define uk01a_bplco_lbl 09 `"Eastern Europe"', add
label define uk01a_bplco_lbl 10 `"India"', add
label define uk01a_bplco_lbl 11 `"Pakistan and Bangladesh"', add
label define uk01a_bplco_lbl 12 `"Rest of Asia"', add
label define uk01a_bplco_lbl 13 `"Caribbean"', add
label define uk01a_bplco_lbl 14 `"North America"', add
label define uk01a_bplco_lbl 15 `"Africa"', add
label define uk01a_bplco_lbl 16 `"Other"', add
label define uk01a_bplco_lbl 99 `"NIU (not in universe)"', add
label values uk01a_bplco uk01a_bplco_lbl

label define uk01a_relig_lbl 1 `"Catholic"'
label define uk01a_relig_lbl 2 `"Protestant and other Christian (including Christian related)"', add
label define uk01a_relig_lbl 3 `"Other religions and philosophies"', add
label define uk01a_relig_lbl 4 `"None"', add
label define uk01a_relig_lbl 9 `"NIU (not in universe)"', add
label values uk01a_relig uk01a_relig_lbl

label define uk01a_resco_lbl 1 `"England"'
label define uk01a_resco_lbl 2 `"Scotland"', add
label define uk01a_resco_lbl 3 `"Wales"', add
label define uk01a_resco_lbl 4 `"Northern Ireland"', add
label values uk01a_resco uk01a_resco_lbl

label define uk01a_migdist_lbl 01 `"0-2 km"'
label define uk01a_migdist_lbl 02 `"3-4 km"', add
label define uk01a_migdist_lbl 03 `"5-6 km"', add
label define uk01a_migdist_lbl 04 `"7-9 km"', add
label define uk01a_migdist_lbl 05 `"10-14 km"', add
label define uk01a_migdist_lbl 06 `"15-19 km"', add
label define uk01a_migdist_lbl 07 `"20-29 km"', add
label define uk01a_migdist_lbl 08 `"30-49 km"', add
label define uk01a_migdist_lbl 09 `"50-99 km"', add
label define uk01a_migdist_lbl 10 `"100-149 km"', add
label define uk01a_migdist_lbl 11 `"150 - 199km"', add
label define uk01a_migdist_lbl 12 `"200 + km"', add
label define uk01a_migdist_lbl 13 `"From outside UK"', add
label define uk01a_migdist_lbl 98 `"No usual address one year ago, distance moved unknown"', add
label define uk01a_migdist_lbl 99 `"NIU (not in universe)"', add
label values uk01a_migdist uk01a_migdist_lbl

label define uk01a_wkdist_lbl 01 `"Less than 2km"'
label define uk01a_wkdist_lbl 02 `"2km to less than 5km"', add
label define uk01a_wkdist_lbl 03 `"5km to less than 10km"', add
label define uk01a_wkdist_lbl 04 `"10km to less than 20km"', add
label define uk01a_wkdist_lbl 05 `"20km to less than 40km"', add
label define uk01a_wkdist_lbl 06 `"40km and over"', add
label define uk01a_wkdist_lbl 07 `"At home"', add
label define uk01a_wkdist_lbl 08 `"No fixed place"', add
label define uk01a_wkdist_lbl 09 `"England Scotland and Wales only : work outside GB but within UK"', add
label define uk01a_wkdist_lbl 10 `"Northern Ireland only: work outside NI but within UK"', add
label define uk01a_wkdist_lbl 11 `"Work outside UK"', add
label define uk01a_wkdist_lbl 99 `"NIU (not in universe)"', add
label values uk01a_wkdist uk01a_wkdist_lbl

label define uk01a_empstat_lbl 01 `"Employee part-time"'
label define uk01a_empstat_lbl 02 `"Employee full-time"', add
label define uk01a_empstat_lbl 03 `"Self-employed with employees - part-time"', add
label define uk01a_empstat_lbl 04 `"Self-employed with employees - full-time"', add
label define uk01a_empstat_lbl 05 `"Self-employed without employees - part-time"', add
label define uk01a_empstat_lbl 06 `"Self-employed without employees - full-time"', add
label define uk01a_empstat_lbl 07 `"Unemployed seeking work available to start within 2 weeks"', add
label define uk01a_empstat_lbl 08 `"Unemployed waiting to start job already obtained and availab"', add
label define uk01a_empstat_lbl 09 `"Retired"', add
label define uk01a_empstat_lbl 10 `"Student (not economically active)"', add
label define uk01a_empstat_lbl 11 `"Looking after home/family"', add
label define uk01a_empstat_lbl 12 `"Permanently sick or disabled"', add
label define uk01a_empstat_lbl 13 `"Other"', add
label define uk01a_empstat_lbl 99 `"NIU (not in universe)"', add
label values uk01a_empstat uk01a_empstat_lbl

label define uk01a_donorn_lbl 0 `"Not used as donor"'
label define uk01a_donorn_lbl 1 `"Used as donor once"', add
label define uk01a_donorn_lbl 2 `"Used as donor twice"', add
label define uk01a_donorn_lbl 3 `"Used as donor three or more times"', add
label values uk01a_donorn uk01a_donorn_lbl

label define uk01a_ethnicw_lbl 01 `"British"'
label define uk01a_ethnicw_lbl 02 `"Irish"', add
label define uk01a_ethnicw_lbl 03 `"Other White"', add
label define uk01a_ethnicw_lbl 04 `"White and Black Caribbean"', add
label define uk01a_ethnicw_lbl 05 `"White and Black African"', add
label define uk01a_ethnicw_lbl 06 `"White and Asian"', add
label define uk01a_ethnicw_lbl 07 `"Other Mixed"', add
label define uk01a_ethnicw_lbl 08 `"Indian"', add
label define uk01a_ethnicw_lbl 09 `"Pakistani"', add
label define uk01a_ethnicw_lbl 10 `"Bangladeshi"', add
label define uk01a_ethnicw_lbl 11 `"Other Asian"', add
label define uk01a_ethnicw_lbl 12 `"Black Caribbean"', add
label define uk01a_ethnicw_lbl 13 `"Black African"', add
label define uk01a_ethnicw_lbl 14 `"Other Black"', add
label define uk01a_ethnicw_lbl 15 `"Chinese"', add
label define uk01a_ethnicw_lbl 16 `"Other Ethnic Group"', add
label define uk01a_ethnicw_lbl 99 `"NIU (not in universe)"', add
label values uk01a_ethnicw uk01a_ethnicw_lbl

label define uk01a_ethnicn_lbl 1 `"White"'
label define uk01a_ethnicn_lbl 2 `"Other ethnic group"', add
label define uk01a_ethnicn_lbl 9 `"NIU (not in universe)"', add
label values uk01a_ethnicn uk01a_ethnicn_lbl

label define uk01a_ethnics_lbl 01 `"White Scottish"'
label define uk01a_ethnics_lbl 02 `"Other white British"', add
label define uk01a_ethnics_lbl 03 `"White Irish"', add
label define uk01a_ethnics_lbl 04 `"Other white"', add
label define uk01a_ethnics_lbl 05 `"Any mixed background"', add
label define uk01a_ethnics_lbl 06 `"Indian"', add
label define uk01a_ethnics_lbl 07 `"Pakistani"', add
label define uk01a_ethnics_lbl 08 `"Bangladeshi"', add
label define uk01a_ethnics_lbl 09 `"Other South Asian"', add
label define uk01a_ethnics_lbl 10 `"Caribbean"', add
label define uk01a_ethnics_lbl 11 `"African"', add
label define uk01a_ethnics_lbl 12 `"Black Scottish or other black"', add
label define uk01a_ethnics_lbl 13 `"Chinese"', add
label define uk01a_ethnics_lbl 14 `"Other ethnic group"', add
label define uk01a_ethnics_lbl 99 `"NIU (not in universe)"', add
label values uk01a_ethnics uk01a_ethnics_lbl

label define uk01a_worked_lbl 1 `"Yes"'
label define uk01a_worked_lbl 2 `"No"', add
label define uk01a_worked_lbl 9 `"NIU (not in universe)"', add
label values uk01a_worked uk01a_worked_lbl

label define uk01a_gaelicr_lbl 1 `"Does not read Gaelic"'
label define uk01a_gaelicr_lbl 2 `"Reads Gaelic"', add
label define uk01a_gaelicr_lbl 9 `"NIU (not in universe)"', add
label values uk01a_gaelicr uk01a_gaelicr_lbl

label define uk01a_gaelics_lbl 1 `"Does not speak Gaelic"'
label define uk01a_gaelics_lbl 2 `"Speaks Gaelic"', add
label define uk01a_gaelics_lbl 9 `"NIU (not in universe)"', add
label values uk01a_gaelics uk01a_gaelics_lbl

label define uk01a_gaelicu_lbl 1 `"Does not understand Gaelic"'
label define uk01a_gaelicu_lbl 2 `"Understands Gaelic"', add
label define uk01a_gaelicu_lbl 9 `"NIU (not in universe)"', add
label values uk01a_gaelicu uk01a_gaelicu_lbl

label define uk01a_gener_lbl 1 `"Ungrouped individual"'
label define uk01a_gener_lbl 2 `"Upper generation -- member of couple or lone parent"', add
label define uk01a_gener_lbl 3 `"Lower generation -- child in family"', add
label define uk01a_gener_lbl 9 `"NIU (not in universe)"', add
label values uk01a_gener uk01a_gener_lbl

label define uk01a_health_lbl 1 `"Good"'
label define uk01a_health_lbl 2 `"Fairly good"', add
label define uk01a_health_lbl 3 `"Not good"', add
label define uk01a_health_lbl 9 `"NIU (not in universe)"', add
label values uk01a_health uk01a_health_lbl

label define uk01a_wkhrs_lbl 01 `"1"'
label define uk01a_wkhrs_lbl 02 `"2"', add
label define uk01a_wkhrs_lbl 03 `"3"', add
label define uk01a_wkhrs_lbl 04 `"4"', add
label define uk01a_wkhrs_lbl 05 `"5"', add
label define uk01a_wkhrs_lbl 06 `"6"', add
label define uk01a_wkhrs_lbl 07 `"7"', add
label define uk01a_wkhrs_lbl 08 `"8"', add
label define uk01a_wkhrs_lbl 09 `"9"', add
label define uk01a_wkhrs_lbl 10 `"10"', add
label define uk01a_wkhrs_lbl 11 `"11"', add
label define uk01a_wkhrs_lbl 12 `"12"', add
label define uk01a_wkhrs_lbl 13 `"13"', add
label define uk01a_wkhrs_lbl 14 `"14"', add
label define uk01a_wkhrs_lbl 15 `"15"', add
label define uk01a_wkhrs_lbl 16 `"16"', add
label define uk01a_wkhrs_lbl 17 `"17"', add
label define uk01a_wkhrs_lbl 18 `"18"', add
label define uk01a_wkhrs_lbl 19 `"19"', add
label define uk01a_wkhrs_lbl 20 `"20"', add
label define uk01a_wkhrs_lbl 21 `"21"', add
label define uk01a_wkhrs_lbl 22 `"22"', add
label define uk01a_wkhrs_lbl 23 `"23"', add
label define uk01a_wkhrs_lbl 24 `"24"', add
label define uk01a_wkhrs_lbl 25 `"25"', add
label define uk01a_wkhrs_lbl 26 `"26"', add
label define uk01a_wkhrs_lbl 27 `"27"', add
label define uk01a_wkhrs_lbl 28 `"28"', add
label define uk01a_wkhrs_lbl 29 `"29"', add
label define uk01a_wkhrs_lbl 30 `"30"', add
label define uk01a_wkhrs_lbl 31 `"31"', add
label define uk01a_wkhrs_lbl 32 `"32"', add
label define uk01a_wkhrs_lbl 33 `"33"', add
label define uk01a_wkhrs_lbl 34 `"34"', add
label define uk01a_wkhrs_lbl 35 `"35"', add
label define uk01a_wkhrs_lbl 36 `"36"', add
label define uk01a_wkhrs_lbl 37 `"37"', add
label define uk01a_wkhrs_lbl 38 `"38"', add
label define uk01a_wkhrs_lbl 39 `"39"', add
label define uk01a_wkhrs_lbl 40 `"40"', add
label define uk01a_wkhrs_lbl 41 `"41"', add
label define uk01a_wkhrs_lbl 42 `"42"', add
label define uk01a_wkhrs_lbl 43 `"43"', add
label define uk01a_wkhrs_lbl 44 `"44"', add
label define uk01a_wkhrs_lbl 45 `"45"', add
label define uk01a_wkhrs_lbl 46 `"46"', add
label define uk01a_wkhrs_lbl 47 `"47"', add
label define uk01a_wkhrs_lbl 48 `"48"', add
label define uk01a_wkhrs_lbl 49 `"49"', add
label define uk01a_wkhrs_lbl 50 `"50"', add
label define uk01a_wkhrs_lbl 51 `"51"', add
label define uk01a_wkhrs_lbl 52 `"52"', add
label define uk01a_wkhrs_lbl 53 `"53"', add
label define uk01a_wkhrs_lbl 54 `"54"', add
label define uk01a_wkhrs_lbl 55 `"55"', add
label define uk01a_wkhrs_lbl 56 `"56"', add
label define uk01a_wkhrs_lbl 57 `"57"', add
label define uk01a_wkhrs_lbl 58 `"58"', add
label define uk01a_wkhrs_lbl 59 `"59"', add
label define uk01a_wkhrs_lbl 60 `"60"', add
label define uk01a_wkhrs_lbl 61 `"61"', add
label define uk01a_wkhrs_lbl 62 `"62"', add
label define uk01a_wkhrs_lbl 63 `"63"', add
label define uk01a_wkhrs_lbl 64 `"64"', add
label define uk01a_wkhrs_lbl 65 `"65"', add
label define uk01a_wkhrs_lbl 66 `"66"', add
label define uk01a_wkhrs_lbl 67 `"67"', add
label define uk01a_wkhrs_lbl 68 `"68"', add
label define uk01a_wkhrs_lbl 69 `"69"', add
label define uk01a_wkhrs_lbl 70 `"70"', add
label define uk01a_wkhrs_lbl 71 `"71"', add
label define uk01a_wkhrs_lbl 72 `"72"', add
label define uk01a_wkhrs_lbl 73 `"73"', add
label define uk01a_wkhrs_lbl 74 `"74"', add
label define uk01a_wkhrs_lbl 75 `"75"', add
label define uk01a_wkhrs_lbl 76 `"76"', add
label define uk01a_wkhrs_lbl 77 `"77"', add
label define uk01a_wkhrs_lbl 78 `"78"', add
label define uk01a_wkhrs_lbl 79 `"79"', add
label define uk01a_wkhrs_lbl 80 `"80 and over"', add
label define uk01a_wkhrs_lbl 99 `"NIU (not in universe)"', add
label values uk01a_wkhrs uk01a_wkhrs_lbl

label define uk01a_wkhrsg_lbl 1 `"1-15"'
label define uk01a_wkhrsg_lbl 2 `"16-30"', add
label define uk01a_wkhrsg_lbl 3 `"31-37"', add
label define uk01a_wkhrsg_lbl 4 `"38-48"', add
label define uk01a_wkhrsg_lbl 5 `"49+"', add
label define uk01a_wkhrsg_lbl 9 `"NIU (not in universe)"', add
label values uk01a_wkhrsg uk01a_wkhrsg_lbl

label define uk01a_ind_lbl 01 `"Agriculture, hunting and forestry"'
label define uk01a_ind_lbl 02 `"Fishing"', add
label define uk01a_ind_lbl 03 `"Mining and quarrying"', add
label define uk01a_ind_lbl 04 `"Manufacturing"', add
label define uk01a_ind_lbl 05 `"Electricity, gas and water supply"', add
label define uk01a_ind_lbl 06 `"Construction"', add
label define uk01a_ind_lbl 07 `"Wholesale and retail trade; repair of motor vehicles, motorcycles and personal and household goods"', add
label define uk01a_ind_lbl 08 `"Hotels and restaurants"', add
label define uk01a_ind_lbl 09 `"Transport, storage and communication"', add
label define uk01a_ind_lbl 10 `"Financial intermediation"', add
label define uk01a_ind_lbl 11 `"Real estate, renting and business activities"', add
label define uk01a_ind_lbl 12 `"Public Administration and Defense; Compulsory Social Security"', add
label define uk01a_ind_lbl 13 `"Education"', add
label define uk01a_ind_lbl 14 `"Health and social work"', add
label define uk01a_ind_lbl 15 `"Other community, social and personal service activities"', add
label define uk01a_ind_lbl 16 `"Private households with employed persons"', add
label define uk01a_ind_lbl 17 `"Extra - territorial organizations and bodies"', add
label define uk01a_ind_lbl 97 `"Not classifiable"', add
label define uk01a_ind_lbl 98 `"Unknown/not reported"', add
label define uk01a_ind_lbl 99 `"NIU (not in universe)"', add
label values uk01a_ind uk01a_ind_lbl

label define uk01a_irish_lbl 1 `"No knowledge of Irish"'
label define uk01a_irish_lbl 2 `"Some knowledge of Irish (any combination of reads,speaks,understands,writes)"', add
label define uk01a_irish_lbl 9 `"NIU (not in universe)"', add
label values uk01a_irish uk01a_irish_lbl

label define uk01a_isco_lbl 00 `"Armed Forces"'
label define uk01a_isco_lbl 01 `"Legislator, senior officials and managers"', add
label define uk01a_isco_lbl 02 `"Professionals"', add
label define uk01a_isco_lbl 03 `"Technicians and associate professionals"', add
label define uk01a_isco_lbl 04 `"Clerks"', add
label define uk01a_isco_lbl 05 `"Service works and shop and market sales workers"', add
label define uk01a_isco_lbl 06 `"Skilled agricultural and fishery workers"', add
label define uk01a_isco_lbl 07 `"Craft and related trades workers"', add
label define uk01a_isco_lbl 08 `"Plant and machine operators and assembellers"', add
label define uk01a_isco_lbl 09 `"Elementary occupations"', add
label define uk01a_isco_lbl 98 `"Unknown/not reported"', add
label define uk01a_isco_lbl 99 `"NIU (not in universe)"', add
label values uk01a_isco uk01a_isco_lbl

label define uk01a_wkyr_lbl 01 `"In employment"'
label define uk01a_wkyr_lbl 02 `"Never worked"', add
label define uk01a_wkyr_lbl 03 `"Last worked in 2001"', add
label define uk01a_wkyr_lbl 04 `"Last worked in 2000"', add
label define uk01a_wkyr_lbl 05 `"Last worked in 1998 or 1999"', add
label define uk01a_wkyr_lbl 06 `"Last worked in 1996 or 1997"', add
label define uk01a_wkyr_lbl 07 `"Last worked in 1993 to 1995"', add
label define uk01a_wkyr_lbl 08 `"Last worked in 1991 to 1992"', add
label define uk01a_wkyr_lbl 09 `"Last worked in 1986 to 1990"', add
label define uk01a_wkyr_lbl 10 `"Last worked in 1981 to 1985"', add
label define uk01a_wkyr_lbl 11 `"Last worked before 1981"', add
label define uk01a_wkyr_lbl 99 `"NIU (not in universe)"', add
label values uk01a_wkyr uk01a_wkyr_lbl

label define uk01a_illness_lbl 1 `"Yes"'
label define uk01a_illness_lbl 2 `"No"', add
label define uk01a_illness_lbl 9 `"NIU (not in universe)"', add
label values uk01a_illness uk01a_illness_lbl

label define uk01a_marst_lbl 1 `"Single (never married)"'
label define uk01a_marst_lbl 2 `"Married (first marriage)"', add
label define uk01a_marst_lbl 3 `"Re-married"', add
label define uk01a_marst_lbl 4 `"Separated (but still legally married)"', add
label define uk01a_marst_lbl 5 `"Divorced"', add
label define uk01a_marst_lbl 6 `"Widowed"', add
label values uk01a_marst uk01a_marst_lbl

label define uk01a_resform_lbl 001 `"Same address 1 year ago"'
label define uk01a_resform_lbl 002 `"No usual address"', add
label define uk01a_resform_lbl 003 `"Migrant from outside UK"', add
label define uk01a_resform_lbl 101 `"North East"', add
label define uk01a_resform_lbl 102 `"North West"', add
label define uk01a_resform_lbl 103 `"Yorkshire and the Humber"', add
label define uk01a_resform_lbl 104 `"East Midlands"', add
label define uk01a_resform_lbl 105 `"West Midlands"', add
label define uk01a_resform_lbl 106 `"East of England"', add
label define uk01a_resform_lbl 107 `"South East"', add
label define uk01a_resform_lbl 108 `"South West"', add
label define uk01a_resform_lbl 109 `"Inner London"', add
label define uk01a_resform_lbl 110 `"Outer London"', add
label define uk01a_resform_lbl 111 `"Scotland"', add
label define uk01a_resform_lbl 112 `"Wales"', add
label define uk01a_resform_lbl 113 `"Northern Ireland"', add
label define uk01a_resform_lbl 999 `"NIU (not in universe)"', add
label values uk01a_resform uk01a_resform_lbl

label define uk01a_censtat_lbl 1 `"Household counted in the Census and person counted in the Census"'
label define uk01a_censtat_lbl 2 `"Household counted in the Census but person imputed into counting"', add
label define uk01a_censtat_lbl 3 `"Person in wholly imputed household"', add
label define uk01a_censtat_lbl 4 `"Person in household where other person has been imputed"', add
label values uk01a_censtat uk01a_censtat_lbl

label define uk01a_profqu_lbl 1 `"Does not have professional qualification"'
label define uk01a_profqu_lbl 2 `"Has professional qualification"', add
label define uk01a_profqu_lbl 9 `"NIU (not in universe)"', add
label values uk01a_profqu uk01a_profqu_lbl

label define uk01a_hrscare_lbl 1 `"Provides no care"'
label define uk01a_hrscare_lbl 2 `"Proves 1-19 hours care"', add
label define uk01a_hrscare_lbl 3 `"Provides 20-49 hours care"', add
label define uk01a_hrscare_lbl 4 `"Provides 50 or more hours care"', add
label define uk01a_hrscare_lbl 9 `"NIU (not in universe)"', add
label values uk01a_hrscare uk01a_hrscare_lbl

label define uk01a_edleve_lbl 1 `"No qualifications"'
label define uk01a_edleve_lbl 2 `"Level 1"', add
label define uk01a_edleve_lbl 3 `"Level 2"', add
label define uk01a_edleve_lbl 4 `"Level 3"', add
label define uk01a_edleve_lbl 5 `"Level 4/5"', add
label define uk01a_edleve_lbl 6 `"Other qualifications/level unknown (England and Wales only)"', add
label define uk01a_edleve_lbl 9 `"NIU (not in universe)"', add
label values uk01a_edleve uk01a_edleve_lbl

label define uk01a_edlevs_lbl 1 `"No qualifications"'
label define uk01a_edlevs_lbl 2 `"Group 1"', add
label define uk01a_edlevs_lbl 3 `"Group 2"', add
label define uk01a_edlevs_lbl 4 `"Group 3"', add
label define uk01a_edlevs_lbl 5 `"Group 4"', add
label define uk01a_edlevs_lbl 9 `"NIU (not in universe)"', add
label values uk01a_edlevs uk01a_edlevs_lbl

label define uk01a_resreg_lbl 101 `"North East"'
label define uk01a_resreg_lbl 102 `"North West"', add
label define uk01a_resreg_lbl 103 `"Yorkshire and the Humber"', add
label define uk01a_resreg_lbl 104 `"East Midlands"', add
label define uk01a_resreg_lbl 105 `"West Midlands"', add
label define uk01a_resreg_lbl 106 `"East of England"', add
label define uk01a_resreg_lbl 107 `"South East"', add
label define uk01a_resreg_lbl 108 `"South West"', add
label define uk01a_resreg_lbl 109 `"Inner London"', add
label define uk01a_resreg_lbl 110 `"Outer London"', add
label define uk01a_resreg_lbl 111 `"Scotland"', add
label define uk01a_resreg_lbl 112 `"Wales"', add
label define uk01a_resreg_lbl 113 `"Northern Ireland"', add
label values uk01a_resreg uk01a_resreg_lbl

label define uk01a_relige_lbl 01 `"Christian"'
label define uk01a_relige_lbl 02 `"Buddhist"', add
label define uk01a_relige_lbl 03 `"Hindu"', add
label define uk01a_relige_lbl 04 `"Jewish"', add
label define uk01a_relige_lbl 05 `"Muslim"', add
label define uk01a_relige_lbl 06 `"Sikh"', add
label define uk01a_relige_lbl 07 `"Other religion"', add
label define uk01a_relige_lbl 08 `"No religion"', add
label define uk01a_relige_lbl 09 `"Unknown"', add
label define uk01a_relige_lbl 99 `"NIU (not in universe)"', add
label values uk01a_relige uk01a_relige_lbl

label define uk01a_religs_lbl 01 `"None"'
label define uk01a_religs_lbl 02 `"Church of Scotland"', add
label define uk01a_religs_lbl 03 `"Roman Catholic"', add
label define uk01a_religs_lbl 04 `"Other Christian"', add
label define uk01a_religs_lbl 05 `"Buddhist"', add
label define uk01a_religs_lbl 06 `"Hindu"', add
label define uk01a_religs_lbl 07 `"Jewish"', add
label define uk01a_religs_lbl 08 `"Muslim"', add
label define uk01a_religs_lbl 09 `"Sikh"', add
label define uk01a_religs_lbl 10 `"Other"', add
label define uk01a_religs_lbl 98 `"Unknown"', add
label define uk01a_religs_lbl 99 `"NIU (not in universe)"', add
label values uk01a_religs uk01a_religs_lbl

label define uk01a_relign_lbl 1 `"Catholic"'
label define uk01a_relign_lbl 2 `"Presbyterian Church in Ireland"', add
label define uk01a_relign_lbl 3 `"Church of Ireland"', add
label define uk01a_relign_lbl 4 `"Methodist Church in Ireland"', add
label define uk01a_relign_lbl 5 `"Other Christian (including Christian related)"', add
label define uk01a_relign_lbl 6 `"Other Religions and Philosophies"', add
label define uk01a_relign_lbl 7 `"No religion/unknown"', add
label define uk01a_relign_lbl 9 `"NIU (not in universe)"', add
label values uk01a_relign uk01a_relign_lbl

label define uk01a_relate_lbl 01 `"Household reference person"'
label define uk01a_relate_lbl 02 `"Husband or wife"', add
label define uk01a_relate_lbl 03 `"Partner"', add
label define uk01a_relate_lbl 04 `"Son or daughter"', add
label define uk01a_relate_lbl 05 `"Step-child"', add
label define uk01a_relate_lbl 06 `"Brother or sister"', add
label define uk01a_relate_lbl 07 `"Mother or father"', add
label define uk01a_relate_lbl 08 `"Step-mother or step-father"', add
label define uk01a_relate_lbl 09 `"Grandchild"', add
label define uk01a_relate_lbl 10 `"Grandparent"', add
label define uk01a_relate_lbl 11 `"Other related"', add
label define uk01a_relate_lbl 12 `"Unrelated"', add
label define uk01a_relate_lbl 98 `"Unknown"', add
label define uk01a_relate_lbl 99 `"NIU (not in universe)"', add
label values uk01a_relate uk01a_relate_lbl

label define uk01a_sex_lbl 1 `"Male"'
label define uk01a_sex_lbl 2 `"Female"', add
label values uk01a_sex uk01a_sex_lbl

label define uk01a_occ3_lbl 111 `"Corporate managers and senior officials"'
label define uk01a_occ3_lbl 112 `"Production managers"', add
label define uk01a_occ3_lbl 113 `"Functional managers"', add
label define uk01a_occ3_lbl 114 `"Quality and customer care managers"', add
label define uk01a_occ3_lbl 115 `"Financial institution and office managers"', add
label define uk01a_occ3_lbl 116 `"Managers in distribution; storage and retailing"', add
label define uk01a_occ3_lbl 117 `"Protective service officers"', add
label define uk01a_occ3_lbl 118 `"Health and social services managers"', add
label define uk01a_occ3_lbl 121 `"Managers in farming; horticulture; forestry and fishing"', add
label define uk01a_occ3_lbl 122 `"Managers and proprietors in hospitality and leisure services"', add
label define uk01a_occ3_lbl 123 `"Managers and proprietors in other service industries"', add
label define uk01a_occ3_lbl 211 `"Science professionals"', add
label define uk01a_occ3_lbl 212 `"Engineering professionals"', add
label define uk01a_occ3_lbl 213 `"Information and communication technology professionals"', add
label define uk01a_occ3_lbl 221 `"Health professionals"', add
label define uk01a_occ3_lbl 231 `"Teaching professionals"', add
label define uk01a_occ3_lbl 232 `"Research professionals"', add
label define uk01a_occ3_lbl 241 `"Legal professionals"', add
label define uk01a_occ3_lbl 242 `"Business and statistical professionals"', add
label define uk01a_occ3_lbl 243 `"Architects; town planners; surveyors"', add
label define uk01a_occ3_lbl 244 `"Public service professionals"', add
label define uk01a_occ3_lbl 245 `"Librarians and related professionals"', add
label define uk01a_occ3_lbl 311 `"Science and engineering technicians"', add
label define uk01a_occ3_lbl 312 `"Draughtspersons and building inspectors"', add
label define uk01a_occ3_lbl 313 `"It service delivery occupations"', add
label define uk01a_occ3_lbl 321 `"Health associate professionals"', add
label define uk01a_occ3_lbl 322 `"Therapists"', add
label define uk01a_occ3_lbl 323 `"Social welfare associate professionals"', add
label define uk01a_occ3_lbl 331 `"Protective service occupations"', add
label define uk01a_occ3_lbl 341 `"Artistic and literary occupations"', add
label define uk01a_occ3_lbl 342 `"Design associate professionals"', add
label define uk01a_occ3_lbl 343 `"Media associate professionals"', add
label define uk01a_occ3_lbl 344 `"Sports and fitness occupations"', add
label define uk01a_occ3_lbl 351 `"Transport associate professionals"', add
label define uk01a_occ3_lbl 352 `"Legal associate professionals"', add
label define uk01a_occ3_lbl 353 `"Business and finance associate professionals"', add
label define uk01a_occ3_lbl 354 `"Sales and related associate professionals"', add
label define uk01a_occ3_lbl 355 `"Conservation associate professionals"', add
label define uk01a_occ3_lbl 356 `"Public service and other associate professionals"', add
label define uk01a_occ3_lbl 411 `"Administrative occupations: government and related organisation"', add
label define uk01a_occ3_lbl 412 `"Administrative occupations: finance"', add
label define uk01a_occ3_lbl 413 `"Administrative occupations: records"', add
label define uk01a_occ3_lbl 414 `"Administrative occupations: communications"', add
label define uk01a_occ3_lbl 415 `"Administrative occupations: general"', add
label define uk01a_occ3_lbl 421 `"Secretarial and related occupations"', add
label define uk01a_occ3_lbl 511 `"Agricultural trades"', add
label define uk01a_occ3_lbl 521 `"Metal forming; welding and related trades"', add
label define uk01a_occ3_lbl 522 `"Metal machining; fitting and instrument making trades"', add
label define uk01a_occ3_lbl 523 `"Vehicle trades"', add
label define uk01a_occ3_lbl 524 `"Electrical trades"', add
label define uk01a_occ3_lbl 531 `"Construction trades"', add
label define uk01a_occ3_lbl 532 `"Building trades"', add
label define uk01a_occ3_lbl 541 `"Textiles and garments trades"', add
label define uk01a_occ3_lbl 542 `"Printing trades"', add
label define uk01a_occ3_lbl 543 `"Food preparation trades"', add
label define uk01a_occ3_lbl 549 `"Skilled trades n.e.c."', add
label define uk01a_occ3_lbl 611 `"Healthcare and related personal services"', add
label define uk01a_occ3_lbl 612 `"Childcare and related personal services"', add
label define uk01a_occ3_lbl 613 `"Animal care services"', add
label define uk01a_occ3_lbl 621 `"Leisure and travel service occupations"', add
label define uk01a_occ3_lbl 622 `"Hairdressers and related occupations"', add
label define uk01a_occ3_lbl 623 `"Housekeeping occupations"', add
label define uk01a_occ3_lbl 629 `"Personal services occupations n.e.c."', add
label define uk01a_occ3_lbl 711 `"Sales assistants and retail cashiers"', add
label define uk01a_occ3_lbl 712 `"Sales related occupations"', add
label define uk01a_occ3_lbl 721 `"Customer service occupations"', add
label define uk01a_occ3_lbl 811 `"Process operatives"', add
label define uk01a_occ3_lbl 812 `"Plant and machine operatives"', add
label define uk01a_occ3_lbl 813 `"Assemblers and routine operatives"', add
label define uk01a_occ3_lbl 814 `"Construction operatives"', add
label define uk01a_occ3_lbl 821 `"Transport drivers and operatives"', add
label define uk01a_occ3_lbl 822 `"Mobile machine drivers and operatives"', add
label define uk01a_occ3_lbl 911 `"Elementary agricultural occupations"', add
label define uk01a_occ3_lbl 912 `"Elementary construction occupations"', add
label define uk01a_occ3_lbl 913 `"Elementary process plant occupations"', add
label define uk01a_occ3_lbl 914 `"Elementary goods storage occupations"', add
label define uk01a_occ3_lbl 921 `"Elementary administration occupations"', add
label define uk01a_occ3_lbl 922 `"Elementary personal services occupations"', add
label define uk01a_occ3_lbl 923 `"Elementary cleaning occupations"', add
label define uk01a_occ3_lbl 924 `"Elementary security occupations"', add
label define uk01a_occ3_lbl 925 `"Elementary sales occupations"', add
label define uk01a_occ3_lbl 998 `"Unknown/not reported"', add
label define uk01a_occ3_lbl 999 `"NIU (not in universe)"', add
label values uk01a_occ3 uk01a_occ3_lbl

label define uk01a_occ2_lbl 11 `"Corporate managers"'
label define uk01a_occ2_lbl 12 `"Managers and proprietors in agriculture and services"', add
label define uk01a_occ2_lbl 21 `"Science and technology professionals"', add
label define uk01a_occ2_lbl 22 `"Health professionals"', add
label define uk01a_occ2_lbl 23 `"Teaching and research professionals"', add
label define uk01a_occ2_lbl 24 `"Business and public service professionals"', add
label define uk01a_occ2_lbl 31 `"Science and technology associate professionals"', add
label define uk01a_occ2_lbl 32 `"Health and social welfare associate professionals"', add
label define uk01a_occ2_lbl 33 `"Protective service occupations"', add
label define uk01a_occ2_lbl 34 `"Culture, media and sport occupations"', add
label define uk01a_occ2_lbl 35 `"Buiness and public service associate professionals"', add
label define uk01a_occ2_lbl 41 `"Administrative occupations"', add
label define uk01a_occ2_lbl 42 `"Secretarial and related occupations"', add
label define uk01a_occ2_lbl 51 `"Skilled agricultural trades"', add
label define uk01a_occ2_lbl 52 `"Skilled metal and electrical trades"', add
label define uk01a_occ2_lbl 53 `"Skilled construction and building trades"', add
label define uk01a_occ2_lbl 54 `"Textiles, printing and other skilled trades"', add
label define uk01a_occ2_lbl 61 `"Caring personal service occupations"', add
label define uk01a_occ2_lbl 62 `"Leisure and other personal service occupations"', add
label define uk01a_occ2_lbl 71 `"Sales occupations"', add
label define uk01a_occ2_lbl 72 `"Customer service occupations"', add
label define uk01a_occ2_lbl 81 `"Process, plant and machine operatives"', add
label define uk01a_occ2_lbl 82 `"Transport and mobile machine drivers and operatives"', add
label define uk01a_occ2_lbl 91 `"Elementary trades, plant and storage related occupations"', add
label define uk01a_occ2_lbl 92 `"Elementary administration and service occupations"', add
label define uk01a_occ2_lbl 98 `"Unknown/not reported"', add
label define uk01a_occ2_lbl 99 `"NIU (not in universe)"', add
label values uk01a_occ2 uk01a_occ2_lbl

label define uk01a_student_lbl 1 `"Yes"'
label define uk01a_student_lbl 2 `"No"', add
label values uk01a_student uk01a_student_lbl

label define uk01a_boss_lbl 1 `"Yes"'
label define uk01a_boss_lbl 2 `"No"', add
label define uk01a_boss_lbl 9 `"NIU (not in universe)"', add
label values uk01a_boss uk01a_boss_lbl

label define uk01a_resstud1_lbl 1 `"Living with parent(s)"'
label define uk01a_resstud1_lbl 2 `"Communal establishment"', add
label define uk01a_resstud1_lbl 3 `"All student group household"', add
label define uk01a_resstud1_lbl 4 `"Student living alone"', add
label define uk01a_resstud1_lbl 5 `"Other household type"', add
label define uk01a_resstud1_lbl 9 `"NIU (not in universe)"', add
label values uk01a_resstud1 uk01a_resstud1_lbl

label define uk01a_wktran_lbl 01 `"Work mainly at or from home"'
label define uk01a_wktran_lbl 02 `"Underground metro light rail(England Wales and Scotland) or tram(England and Wales) or tube(Scotland)"', add
label define uk01a_wktran_lbl 03 `"Train"', add
label define uk01a_wktran_lbl 04 `"Bus minibus or coach"', add
label define uk01a_wktran_lbl 05 `"Motor cycle scooter or moped"', add
label define uk01a_wktran_lbl 06 `"Driving a car or van"', add
label define uk01a_wktran_lbl 07 `"Passenger in a car or van"', add
label define uk01a_wktran_lbl 08 `"Taxi or minicab"', add
label define uk01a_wktran_lbl 09 `"Bicycle"', add
label define uk01a_wktran_lbl 10 `"On foot"', add
label define uk01a_wktran_lbl 11 `"Other"', add
label define uk01a_wktran_lbl 12 `"Car or van pool for North Ireland only"', add
label define uk01a_wktran_lbl 98 `"Unknown"', add
label define uk01a_wktran_lbl 99 `"NIU (not in universe)"', add
label values uk01a_wktran uk01a_wktran_lbl

label define uk01a_welshr_lbl 1 `"Does not read Welsh"'
label define uk01a_welshr_lbl 2 `"Reads Welsh"', add
label define uk01a_welshr_lbl 9 `"NIU (not in universe)"', add
label values uk01a_welshr uk01a_welshr_lbl

label define uk01a_welshs_lbl 1 `"Does not speak Welsh"'
label define uk01a_welshs_lbl 2 `"Speaks Welsh"', add
label define uk01a_welshs_lbl 9 `"NIU (not in universe)"', add
label values uk01a_welshs uk01a_welshs_lbl

label define uk01a_welshu_lbl 1 `"Does not understand Welsh"'
label define uk01a_welshu_lbl 2 `"Understands Welsh"', add
label define uk01a_welshu_lbl 9 `"NIU (not in universe)"', add
label values uk01a_welshu uk01a_welshu_lbl

label define uk01a_welshw_lbl 1 `"Does not write Welsh"'
label define uk01a_welshw_lbl 2 `"Writes Welsh"', add
label define uk01a_welshw_lbl 9 `"NIU (not in universe)"', add
label values uk01a_welshw uk01a_welshw_lbl

label define uk01a_wksize_lbl 1 `"1-9"'
label define uk01a_wksize_lbl 2 `"10-24"', add
label define uk01a_wksize_lbl 3 `"25-499"', add
label define uk01a_wksize_lbl 4 `"500 or more"', add
label define uk01a_wksize_lbl 9 `"NIU (not in universe)"', add
label values uk01a_wksize uk01a_wksize_lbl

label define uk01a_wrkplac_lbl 1 `"No fixed place"'
label define uk01a_wrkplac_lbl 2 `"Mainly at home"', add
label define uk01a_wrkplac_lbl 3 `"Inside LAD (England, Wales and Scotland)/LGD (Northern Ireland) area or residence"', add
label define uk01a_wrkplac_lbl 4 `"Outside LAD within GB"', add
label define uk01a_wrkplac_lbl 5 `"Northern Ireland"', add
label define uk01a_wrkplac_lbl 6 `"Outside LGD, but within NI"', add
label define uk01a_wrkplac_lbl 7 `"Outside NI, but within UK"', add
label define uk01a_wrkplac_lbl 8 `"Outside UK"', add
label define uk01a_wrkplac_lbl 9 `"NIU (not in universe)"', add
label values uk01a_wrkplac uk01a_wrkplac_lbl

label define uk01a_migind_lbl 0 `"Same address"'
label define uk01a_migind_lbl 1 `"No usual address one year ago"', add
label define uk01a_migind_lbl 2 `"Move within a LAD area (England Wales and Scotland) or LGD (Northern Ireland) area"', add
label define uk01a_migind_lbl 3 `"Move between LAD areas but within region (England, Wales and Scotland)"', add
label define uk01a_migind_lbl 4 `"Move between regions within England"', add
label define uk01a_migind_lbl 5 `"Move between countries but within UK"', add
label define uk01a_migind_lbl 6 `"Move between LGD areas but within country (Northern Ireland)"', add
label define uk01a_migind_lbl 7 `"Move from outside UK"', add
label define uk01a_migind_lbl 9 `"NIU (not in universe)"', add
label values uk01a_migind uk01a_migind_lbl

label define uk01a_resstud2_lbl 1 `"Not usually resident here"'
label define uk01a_resstud2_lbl 2 `"Usual resident"', add
label define uk01a_resstud2_lbl 3 `"Non-student"', add
label values uk01a_resstud2 uk01a_resstud2_lbl

label define uk01a_qage_lbl 0 `"Not imputed"'
label define uk01a_qage_lbl 1 `"Imputed"', add
label values uk01a_qage uk01a_qage_lbl

label define uk01a_qbplco_lbl 0 `"Not imputed"'
label define uk01a_qbplco_lbl 1 `"Imputed"', add
label values uk01a_qbplco uk01a_qbplco_lbl

label define uk01a_qrelig_lbl 0 `"Not imputed"'
label define uk01a_qrelig_lbl 1 `"Imputed"', add
label values uk01a_qrelig uk01a_qrelig_lbl

label define uk01a_qmigdist_lbl 0 `"Not imputed"'
label define uk01a_qmigdist_lbl 1 `"Imputed"', add
label values uk01a_qmigdist uk01a_qmigdist_lbl

label define uk01a_qwkdist_lbl 0 `"Not imputed"'
label define uk01a_qwkdist_lbl 1 `"Imputed"', add
label values uk01a_qwkdist uk01a_qwkdist_lbl

label define uk01a_qempstat_lbl 0 `"Not imputed"'
label define uk01a_qempstat_lbl 1 `"Imputed"', add
label values uk01a_qempstat uk01a_qempstat_lbl

label define uk01a_qethnicw_lbl 0 `"Not imputed"'
label define uk01a_qethnicw_lbl 1 `"Imputed"', add
label values uk01a_qethnicw uk01a_qethnicw_lbl

label define uk01a_qethnicn_lbl 0 `"Not imputed"'
label define uk01a_qethnicn_lbl 1 `"Imputed"', add
label values uk01a_qethnicn uk01a_qethnicn_lbl

label define uk01a_qethnics_lbl 0 `"Not imputed"'
label define uk01a_qethnics_lbl 1 `"Imputed"', add
label values uk01a_qethnics uk01a_qethnics_lbl

label define uk01a_qworked_lbl 0 `"Not imputed"'
label define uk01a_qworked_lbl 1 `"Imputed"', add
label values uk01a_qworked uk01a_qworked_lbl

label define uk01a_qgaelicr_lbl 0 `"Not imputed"'
label define uk01a_qgaelicr_lbl 1 `"Imputed"', add
label values uk01a_qgaelicr uk01a_qgaelicr_lbl

label define uk01a_qgaelics_lbl 0 `"Not imputed"'
label define uk01a_qgaelics_lbl 1 `"Imputed"', add
label values uk01a_qgaelics uk01a_qgaelics_lbl

label define uk01a_qgaelicu_lbl 0 `"Not imputed"'
label define uk01a_qgaelicu_lbl 1 `"Imputed"', add
label values uk01a_qgaelicu uk01a_qgaelicu_lbl

label define uk01a_qgaelicw_lbl 0 `"not imputed"'
label define uk01a_qgaelicw_lbl 1 `"imputed"', add
label values uk01a_qgaelicw uk01a_qgaelicw_lbl

label define uk01a_qgener_lbl 0 `"Not imputed"'
label define uk01a_qgener_lbl 1 `"Imputed"', add
label values uk01a_qgener uk01a_qgener_lbl

label define uk01a_qhealth_lbl 0 `"Not imputed"'
label define uk01a_qhealth_lbl 1 `"Imputed"', add
label values uk01a_qhealth uk01a_qhealth_lbl

label define uk01a_qwkhrs_lbl 0 `"Not imputed"'
label define uk01a_qwkhrs_lbl 1 `"Imputed"', add
label values uk01a_qwkhrs uk01a_qwkhrs_lbl

label define uk01a_qind_lbl 0 `"Not imputed"'
label define uk01a_qind_lbl 1 `"Imputed"', add
label values uk01a_qind uk01a_qind_lbl

label define uk01a_qirish_lbl 0 `"not imputed"'
label define uk01a_qirish_lbl 1 `"imputed"', add
label values uk01a_qirish uk01a_qirish_lbl

label define uk01a_qisco_lbl 0 `"Not imputed"'
label define uk01a_qisco_lbl 1 `"Imputed"', add
label values uk01a_qisco uk01a_qisco_lbl

label define uk01a_qwkyr_lbl 0 `"Not imputed"'
label define uk01a_qwkyr_lbl 1 `"Imputed"', add
label values uk01a_qwkyr uk01a_qwkyr_lbl

label define uk01a_qillness_lbl 0 `"Not imputed"'
label define uk01a_qillness_lbl 1 `"Imputed"', add
label values uk01a_qillness uk01a_qillness_lbl

label define uk01a_qmarst_lbl 0 `"Not imputed"'
label define uk01a_qmarst_lbl 1 `"Imputed"', add
label values uk01a_qmarst uk01a_qmarst_lbl

label define uk01a_qresform_lbl 0 `"Not imputed"'
label define uk01a_qresform_lbl 1 `"Imputed"', add
label values uk01a_qresform uk01a_qresform_lbl

label define uk01a_qcenstat_lbl 0 `"Not imputed"'
label define uk01a_qcenstat_lbl 1 `"Imputed"', add
label values uk01a_qcenstat uk01a_qcenstat_lbl

label define uk01a_qprofqu_lbl 0 `"Not imputed"'
label define uk01a_qprofqu_lbl 1 `"Imputed"', add
label values uk01a_qprofqu uk01a_qprofqu_lbl

label define uk01a_qhrscare_lbl 0 `"Not imputed"'
label define uk01a_qhrscare_lbl 1 `"Imputed"', add
label values uk01a_qhrscare uk01a_qhrscare_lbl

label define uk01a_qedleve_lbl 0 `"Not imputed"'
label define uk01a_qedleve_lbl 1 `"Imputed"', add
label values uk01a_qedleve uk01a_qedleve_lbl

label define uk01a_qedlevs_lbl 0 `"Not imputed"'
label define uk01a_qedlevs_lbl 1 `"Imputed"', add
label values uk01a_qedlevs uk01a_qedlevs_lbl

label define uk01a_qresreg_lbl 0 `"Not imputed"'
label define uk01a_qresreg_lbl 1 `"Imputed"', add
label values uk01a_qresreg uk01a_qresreg_lbl

label define uk01a_qrelige_lbl 0 `"Not imputed"'
label define uk01a_qrelige_lbl 1 `"Imputed"', add
label values uk01a_qrelige uk01a_qrelige_lbl

label define uk01a_qreligs_lbl 0 `"Not imputed"'
label define uk01a_qreligs_lbl 1 `"Imputed"', add
label values uk01a_qreligs uk01a_qreligs_lbl

label define uk01a_qrelign_lbl 0 `"Not imputed"'
label define uk01a_qrelign_lbl 1 `"Imputed"', add
label values uk01a_qrelign uk01a_qrelign_lbl

label define uk01a_qrelate_lbl 0 `"Not imputed"'
label define uk01a_qrelate_lbl 1 `"Imputed"', add
label values uk01a_qrelate uk01a_qrelate_lbl

label define uk01a_qsex_lbl 0 `"Not imputed"'
label define uk01a_qsex_lbl 1 `"Imputed"', add
label values uk01a_qsex uk01a_qsex_lbl

label define uk01a_qocc3_lbl 0 `"Not imputed"'
label define uk01a_qocc3_lbl 1 `"Imputed"', add
label values uk01a_qocc3 uk01a_qocc3_lbl

label define uk01a_qstudent_lbl 0 `"Not imputed"'
label define uk01a_qstudent_lbl 1 `"Imputed"', add
label values uk01a_qstudent uk01a_qstudent_lbl

label define uk01a_qboss_lbl 0 `"Not imputed"'
label define uk01a_qboss_lbl 1 `"Imputed"', add
label values uk01a_qboss uk01a_qboss_lbl

label define uk01a_qresstud1_lbl 0 `"Not imputed"'
label define uk01a_qresstud1_lbl 1 `"Imputed"', add
label values uk01a_qresstud1 uk01a_qresstud1_lbl

label define uk01a_qwktran_lbl 0 `"Not imputed"'
label define uk01a_qwktran_lbl 1 `"Imputed"', add
label values uk01a_qwktran uk01a_qwktran_lbl

label define uk01a_qwelshr_lbl 0 `"Not imputed"'
label define uk01a_qwelshr_lbl 1 `"Imputed"', add
label values uk01a_qwelshr uk01a_qwelshr_lbl

label define uk01a_qwelshs_lbl 0 `"Not imputed"'
label define uk01a_qwelshs_lbl 1 `"Imputed"', add
label values uk01a_qwelshs uk01a_qwelshs_lbl

label define uk01a_qwelshu_lbl 0 `"not imputed"'
label define uk01a_qwelshu_lbl 1 `"imputed"', add
label values uk01a_qwelshu uk01a_qwelshu_lbl

label define uk01a_qwelshw_lbl 0 `"Not imputed"'
label define uk01a_qwelshw_lbl 1 `"Imputed"', add
label values uk01a_qwelshw uk01a_qwelshw_lbl

label define uk01a_qwksize_lbl 0 `"Not imputed"'
label define uk01a_qwksize_lbl 1 `"Imputed"', add
label values uk01a_qwksize uk01a_qwksize_lbl

label define uk01a_qwrkplac_lbl 0 `"Not imputed"'
label define uk01a_qwrkplac_lbl 1 `"Imputed"', add
label values uk01a_qwrkplac uk01a_qwrkplac_lbl

label define uk01a_qmigind_lbl 0 `"Not imputed"'
label define uk01a_qmigind_lbl 1 `"Imputed"', add
label values uk01a_qmigind uk01a_qmigind_lbl


