* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    fj07a_dwnum     22-27    ///
  byte    fj07a_fbig      28-28    ///
  byte    fj07a_div       29-29    ///
  byte    fj07a_prov      30-31    ///
  byte    fj07a_typedw    32-32    ///
  byte    fj07a_walls     33-33    ///
  byte    fj07a_wallcond  34-34    ///
  byte    fj07a_rooms     35-36    ///
  byte    fj07a_watsup    37-37    ///
  byte    fj07a_watdry    38-38    ///
  byte    fj07a_electric  39-39    ///
  byte    fj07a_lighting  40-40    ///
  byte    fj07a_fuelcook  41-41    ///
  byte    fj07a_toilet    42-42    ///
  byte    fj07a_tenure    43-43    ///
  byte    fj07a_landown   44-44    ///
  byte    fj07a_hhshop    45-45    ///
  byte    fj07a_hhsubs    46-46    ///
  byte    fj07a_hhprod    47-47    ///
  byte    fj07a_hhgood    48-48    ///
  byte    fj07a_hhtech    49-49    ///
  byte    fj07a_hhprof    50-50    ///
  byte    fj07a_hhflat    51-51    ///
  byte    fj07a_hhcomm    52-52    ///
  byte    fj07a_hhnone    53-53    ///
  byte    fj07a_hhoth     54-54    ///
  byte    fj07a_wastgovt  55-55    ///
  byte    fj07a_wastbury  56-56    ///
  byte    fj07a_wastriv   57-57    ///
  byte    fj07a_wastsea   58-58    ///
  byte    fj07a_wastbkyd  59-59    ///
  byte    fj07a_wastoth   60-60    ///
  byte    fj07a_autos     61-61    ///
  byte    fj07a_truck     62-62    ///
  byte    fj07a_motor     63-63    ///
  byte    fj07a_generat   64-64    ///
  byte    fj07a_cutter    65-65    ///
  byte    fj07a_solar     66-66    ///
  byte    fj07a_watpump   67-67    ///
  byte    fj07a_refrig    68-68    ///
  byte    fj07a_washer    69-69    ///
  byte    fj07a_dryer     70-70    ///
  byte    fj07a_stove     71-71    ///
  byte    fj07a_watheatr  72-72    ///
  byte    fj07a_aircon    73-73    ///
  byte    fj07a_radio     74-74    ///
  byte    fj07a_tv        75-75    ///
  byte    fj07a_video     76-76    ///
  byte    fj07a_skyplus   77-77    ///
  byte    fj07a_skypac    78-78    ///
  byte    fj07a_phone     79-79    ///
  byte    fj07a_cell      80-80    ///
  byte    fj07a_computer  81-81    ///
  byte    fj07a_internet  82-82    ///
  byte    fj07a_savbulbs  83-83    ///
  byte    fj07a_cows      84-85    ///
  byte    fj07a_pigs      86-87    ///
  byte    fj07a_goats     88-89    ///
  byte    fj07a_horses    90-90    ///
  byte    fj07a_poultry   91-92    ///
  byte    fj07a_dogs      93-94    ///
  byte    fj07a_cats      95-95    ///
  byte    fj07a_famtype   96-96    ///
  byte    fj07a_hhtype    97-97    ///
  byte    fj07a_remitt    98-98    ///
  long    fj07a_rm1amnt   99-103   ///
  byte    fj07a_rm1cntry  104-105  ///
  byte    fj07a_rm1rel    106-107  ///
  byte    fj07a_rm1occ    108-109  ///
  byte    fj07a_rm1mode   110-111  ///
  byte    fj07a_rm2amnt   112-112  ///
  byte    fj07a_anydisab  113-113  ///
  byte    fj07a_disper1   114-115  ///
  byte    fj07a_distype1  116-117  ///
  byte    fj07a_disper2   118-119  ///
  byte    fj07a_distype2  120-120  ///
  int     pernum          121-123  ///
  float   wtper           124-131  ///
  byte    fj07a_pernum    132-133  ///
  byte    fj07a_relate    134-135  ///
  byte    fj07a_sex       136-136  ///
  byte    fj07a_birthmo   137-138  ///
  int     fj07a_birthyr   139-142  ///
  byte    fj07a_age       143-144  ///
  byte    fj07a_ethnic    145-146  ///
  byte    fj07a_marst     147-147  ///
  byte    fj07a_fathlive  148-148  ///
  byte    fj07a_mothlive  149-149  ///
  byte    fj07a_momloc    150-151  ///
  byte    fj07a_religion  152-153  ///
  byte    fj07a_bplprov   154-155  ///
  int     fj07a_bpltik    156-159  ///
  byte    fj07a_bplloc    160-161  ///
  byte    fj07a_resprov   162-163  ///
  int     fj07a_restik    164-167  ///
  byte    fj07a_resloc    168-169  ///
  byte    fj07a_prov5yr   170-171  ///
  int     fj07a_tik5yr    172-175  ///
  byte    fj07a_loc5yr    176-177  ///
  int     fj07a_origtik   178-181  ///
  byte    fj07a_resstat   182-182  ///
  byte    fj07a_school    183-183  ///
  byte    fj07a_edattend  184-185  ///
  byte    fj07a_edattain  186-187  ///
  byte    fj07a_edinst    188-189  ///
  byte    fj07a_travel    190-191  ///
  byte    fj07a_wklastwk  192-192  ///
  byte    fj07a_worktype  193-193  ///
  byte    fj07a_occ1      194-195  ///
  int     fj07a_occ3      196-198  ///
  int     fj07a_ind2      199-201  ///
  byte    fj07a_workloc   202-202  ///
  byte    fj07a_classwkr  203-203  ///
  byte    fj07a_payfreq   204-204  ///
  byte    fj07a_lookwork  205-205  ///
  byte    fj07a_availabl  206-206  ///
  byte    fj07a_homemale  207-208  ///
  byte    fj07a_homefem   209-210  ///
  byte    fj07a_homechd   211-212  ///
  byte    fj07a_awaymale  213-214  ///
  byte    fj07a_awayfem   215-216  ///
  byte    fj07a_awaychd   217-218  ///
  byte    fj07a_chdeadm   219-220  ///
  byte    fj07a_chdeadf   221-222  ///
  byte    fj07a_chdead    223-224  ///
  byte    fj07a_chbornm   225-226  ///
  byte    fj07a_chbornf   227-228  ///
  byte    fj07a_lastbmo   229-230  ///
  byte    fj07a_lastbsex  231-231  ///
  byte    fj07a_chsurvm   232-233  ///
  byte    fj07a_chsurvf   234-235  ///
  byte    fj07a_subfam    236-236  ///
  byte    fj07a_subrel    237-237  ///
  byte    fj07a_migbpl    238-238  ///
  byte    fj07a_mig5yr    239-239  ///
  byte    fj07a_migorig   240-240  ///
  byte    fj07a_migbpe    241-241  ///
  byte    fj07a_mother0   242-243  ///
  using `"ipumsi_00070.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var fj07a_dwnum    `"Dwelling number"'
label var fj07a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var fj07a_div      `"Division"'
label var fj07a_prov     `"Province"'
label var fj07a_typedw   `"Type of living quarters"'
label var fj07a_walls    `"Construction of walls"'
label var fj07a_wallcond `"Condition of walls"'
label var fj07a_rooms    `"Number of rooms"'
label var fj07a_watsup   `"Main water supply"'
label var fj07a_watdry   `"Water ever dries up"'
label var fj07a_electric `"Main electricity supply"'
label var fj07a_lighting `"Lighting"'
label var fj07a_fuelcook `"Cooking fuel"'
label var fj07a_toilet   `"Toilet facilities"'
label var fj07a_tenure   `"Tenure of living quarters"'
label var fj07a_landown  `"Tenure of land"'
label var fj07a_hhshop   `"Land or dwelling used to run a shop or canteen"'
label var fj07a_hhsubs   `"Land or dwelling used as farm for household (subsistence)"'
label var fj07a_hhprod   `"Land or dwelling used as farm for commercial production"'
label var fj07a_hhgood   `"Land or dwelling used to make objects for sale"'
label var fj07a_hhtech   `"Land or dwelling used to offer technical service"'
label var fj07a_hhprof   `"Land or dwelling used to offer professional service"'
label var fj07a_hhflat   `"Land or dwelling used to offer flat for rent"'
label var fj07a_hhcomm   `"Land or dwelling used to offer organised service"'
label var fj07a_hhnone   `"Land or dwelling use: None"'
label var fj07a_hhoth    `"Land or dwelling use: Other"'
label var fj07a_wastgovt `"Waste disposal: by local authority"'
label var fj07a_wastbury `"Waste disposal: buried"'
label var fj07a_wastriv  `"Waste disposal: disposed in river"'
label var fj07a_wastsea  `"Waste disposal: disposed in sea"'
label var fj07a_wastbkyd `"Waste disposal: disposed in backyard"'
label var fj07a_wastoth  `"Other waste disposal"'
label var fj07a_autos    `"Number of  cars or vans owned by household"'
label var fj07a_truck    `"Number of  carrier trucks or tractors owned by household"'
label var fj07a_motor    `"Number of  outboard motors owned by household"'
label var fj07a_generat  `"Number of  generators owned by household"'
label var fj07a_cutter   `"Number of  brush cutters or lawn mowers owned by household"'
label var fj07a_solar    `"Number of home solar systems owned by household"'
label var fj07a_watpump  `"Number of water pumps owned by household"'
label var fj07a_refrig   `"Number of refrigerators owned by household"'
label var fj07a_washer   `"Number of washing machines owned by household"'
label var fj07a_dryer    `"Number of clothes dryers owned by household"'
label var fj07a_stove    `"Number of gas or electric stoves owned by household"'
label var fj07a_watheatr `"Number of hot water systems owned by household"'
label var fj07a_aircon   `"Number of air conditioners owned by household"'
label var fj07a_radio    `"Number of radios or stereos owned by household"'
label var fj07a_tv       `"Number of televisions owned by household"'
label var fj07a_video    `"Number of video or DVD players owned by household"'
label var fj07a_skyplus  `"Number of Sky Plus owned by household"'
label var fj07a_skypac   `"Number of Sky Pacific or PBS owned by household"'
label var fj07a_phone    `"Number of phones owned by household"'
label var fj07a_cell     `"Number of mobile phones owned by household"'
label var fj07a_computer `"Number of computers or laptops owned by household"'
label var fj07a_internet `"Internet connections in household"'
label var fj07a_savbulbs `"Number of energy saver lightbulbs owned by household"'
label var fj07a_cows     `"Number of cows owned by household"'
label var fj07a_pigs     `"Number of pigs owned by household"'
label var fj07a_goats    `"Number of goats owned by household"'
label var fj07a_horses   `"Number of horses owned by household"'
label var fj07a_poultry  `"Number of poultry owned by household"'
label var fj07a_dogs     `"Number of dogs owned by household"'
label var fj07a_cats     `"Number of cats owned by household"'
label var fj07a_famtype  `"Family type"'
label var fj07a_hhtype   `"Household type"'
label var fj07a_remitt   `"Any remittance to household"'
label var fj07a_rm1amnt  `"Amount (in Fiji dollars) remittance received within last 12 month"'
label var fj07a_rm1cntry `"Country of residence of remittance sender 1"'
label var fj07a_rm1rel   `"Relationship of remittance sender 1"'
label var fj07a_rm1occ   `"Occupation of remittance sender 1"'
label var fj07a_rm1mode  `"Mode of remittance transfer used by sender 1"'
label var fj07a_rm2amnt  `"Is there a second remittance sender?"'
label var fj07a_anydisab `"Any disability in the household"'
label var fj07a_disper1  `"Person number of first disabled person"'
label var fj07a_distype1 `"Type of disability of first disabled person"'
label var fj07a_disper2  `"Person number of second disabled person"'
label var fj07a_distype2 `"Type of disability of second disabled person"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var fj07a_pernum   `"Person number (within household)"'
label var fj07a_relate   `"Relationship to household head"'
label var fj07a_sex      `"Sex"'
label var fj07a_birthmo  `"Month of birth"'
label var fj07a_birthyr  `"Year of birth"'
label var fj07a_age      `"Age"'
label var fj07a_ethnic   `"Ethnicity"'
label var fj07a_marst    `"Marital status"'
label var fj07a_fathlive `"Biological father still alive"'
label var fj07a_mothlive `"Biological mother still alive"'
label var fj07a_momloc   `"Mother's person number"'
label var fj07a_religion `"Religion"'
label var fj07a_bplprov  `"Province or country of birth"'
label var fj07a_bpltik   `"Tikina of birth"'
label var fj07a_bplloc   `"Locality of birth"'
label var fj07a_resprov  `"Province or country of usual residence"'
label var fj07a_restik   `"Tikina of usual residence"'
label var fj07a_resloc   `"Locality of usual residence"'
label var fj07a_prov5yr  `"Province or country of residence in 2002"'
label var fj07a_tik5yr   `"Tikina of residence in 2002"'
label var fj07a_loc5yr   `"Locality of residence in 2002"'
label var fj07a_origtik  `"Tikina of origin"'
label var fj07a_resstat  `"Residency status"'
label var fj07a_school   `"School attendance"'
label var fj07a_edattend `"Educational level attending"'
label var fj07a_edattain `"Educational level attained"'
label var fj07a_edinst   `"Educational institution"'
label var fj07a_travel   `"Mode of transportation last week"'
label var fj07a_wklastwk `"Person did any work last week"'
label var fj07a_worktype `"Type of work done last week"'
label var fj07a_occ1     `"Occupation, 1 digit"'
label var fj07a_occ3     `"Occupation, 3 digits"'
label var fj07a_ind2     `"Industry, 2 digits"'
label var fj07a_workloc  `"Location of workplace"'
label var fj07a_classwkr `"Employment status"'
label var fj07a_payfreq  `"Payment method"'
label var fj07a_lookwork `"Looking for work last week"'
label var fj07a_availabl `"Person available for work last week"'
label var fj07a_homemale `"Male children ever born who are living with mother"'
label var fj07a_homefem  `"Female children ever born who are living with mother"'
label var fj07a_homechd  `"Total children ever born who are living with mother"'
label var fj07a_awaymale `"Male children ever born who are living elsewhere"'
label var fj07a_awayfem  `"Female children ever born who are living elsewhere"'
label var fj07a_awaychd  `"Total children ever born who are living elsewhere"'
label var fj07a_chdeadm  `"Male children dead"'
label var fj07a_chdeadf  `"Female children dead"'
label var fj07a_chdead   `"Total children dead"'
label var fj07a_chbornm  `"Total male children ever born"'
label var fj07a_chbornf  `"Total females children ever born"'
label var fj07a_lastbmo  `"Month of last birth"'
label var fj07a_lastbsex `"Sex of last born child"'
label var fj07a_chsurvm  `"Male children surviving"'
label var fj07a_chsurvf  `"Female children surviving"'
label var fj07a_subfam   `"Subfamily number"'
label var fj07a_subrel   `"Subfamily relationship"'
label var fj07a_migbpl   `"Born in different province"'
label var fj07a_mig5yr   `"Lived in different province 5 years ago"'
label var fj07a_migorig  `"Origin different province"'
label var fj07a_migbpe   `"Migration between birth, 2002 and current census"'
label var fj07a_mother0  `"Age of mother of child aged 0"'

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

label define fj07a_fbig_lbl 0 `"No problem"'
label define fj07a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define fj07a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values fj07a_fbig fj07a_fbig_lbl

label define fj07a_div_lbl 1 `"Central"'
label define fj07a_div_lbl 2 `"Eastern"', add
label define fj07a_div_lbl 3 `"Northern"', add
label define fj07a_div_lbl 5 `"Western"', add
label values fj07a_div fj07a_div_lbl

label define fj07a_prov_lbl 01 `"Ba"'
label define fj07a_prov_lbl 03 `"Bua and Cakaudrove"', add
label define fj07a_prov_lbl 06 `"Kadavu, Lau, Lomaiviti, and Rotuma"', add
label define fj07a_prov_lbl 07 `"Macuata"', add
label define fj07a_prov_lbl 08 `"Nadroga - Navosa"', add
label define fj07a_prov_lbl 09 `"Naitasiri"', add
label define fj07a_prov_lbl 11 `"Ra"', add
label define fj07a_prov_lbl 12 `"Rewa"', add
label define fj07a_prov_lbl 13 `"Serua and Namosi"', add
label define fj07a_prov_lbl 14 `"Tailevu"', add
label values fj07a_prov fj07a_prov_lbl

label define fj07a_typedw_lbl 1 `"One family detached"'
label define fj07a_typedw_lbl 2 `"One family attached"', add
label define fj07a_typedw_lbl 3 `"2 or more apartments"', add
label define fj07a_typedw_lbl 4 `"2 household share"', add
label define fj07a_typedw_lbl 5 `"Attached to shop"', add
label define fj07a_typedw_lbl 6 `"Lodging house"', add
label define fj07a_typedw_lbl 7 `"Hotel"', add
label define fj07a_typedw_lbl 8 `"Other"', add
label values fj07a_typedw fj07a_typedw_lbl

label define fj07a_walls_lbl 1 `"Concrete, brick, or cement"'
label define fj07a_walls_lbl 2 `"Wood"', add
label define fj07a_walls_lbl 3 `"Tin or corrugated iron"', add
label define fj07a_walls_lbl 4 `"Traditional bure materials"', add
label define fj07a_walls_lbl 5 `"Makeshift or improvised materials"', add
label define fj07a_walls_lbl 6 `"Other materials"', add
label values fj07a_walls fj07a_walls_lbl

label define fj07a_wallcond_lbl 1 `"Good"'
label define fj07a_wallcond_lbl 2 `"Average"', add
label define fj07a_wallcond_lbl 3 `"Poor"', add
label values fj07a_wallcond fj07a_wallcond_lbl

label define fj07a_rooms_lbl 00 `"0 rooms"'
label define fj07a_rooms_lbl 01 `"1"', add
label define fj07a_rooms_lbl 02 `"2"', add
label define fj07a_rooms_lbl 03 `"3"', add
label define fj07a_rooms_lbl 04 `"4"', add
label define fj07a_rooms_lbl 05 `"5"', add
label define fj07a_rooms_lbl 06 `"6"', add
label define fj07a_rooms_lbl 07 `"7"', add
label define fj07a_rooms_lbl 08 `"8"', add
label define fj07a_rooms_lbl 09 `"9"', add
label define fj07a_rooms_lbl 10 `"10"', add
label define fj07a_rooms_lbl 11 `"11"', add
label define fj07a_rooms_lbl 12 `"12+"', add
label values fj07a_rooms fj07a_rooms_lbl

label define fj07a_watsup_lbl 1 `"Metered"'
label define fj07a_watsup_lbl 2 `"Communal stand"', add
label define fj07a_watsup_lbl 3 `"Rooftank"', add
label define fj07a_watsup_lbl 4 `"Well"', add
label define fj07a_watsup_lbl 5 `"River or creek"', add
label define fj07a_watsup_lbl 6 `"FSC or EGM (Fiji Sugar Corporation or Emperor Gold Mines)"', add
label values fj07a_watsup fj07a_watsup_lbl

label define fj07a_watdry_lbl 1 `"Never"'
label define fj07a_watdry_lbl 2 `"Sometimes"', add
label define fj07a_watdry_lbl 3 `"Often"', add
label values fj07a_watdry fj07a_watdry_lbl

label define fj07a_electric_lbl 1 `"Fiji electricity authority"'
label define fj07a_electric_lbl 2 `"Fiji sugar corporation"', add
label define fj07a_electric_lbl 3 `"Vatukoula goldmine"', add
label define fj07a_electric_lbl 4 `"Public works department"', add
label define fj07a_electric_lbl 5 `"Village diesel"', add
label define fj07a_electric_lbl 6 `"Village hydro"', add
label define fj07a_electric_lbl 7 `"Home solar"', add
label define fj07a_electric_lbl 8 `"Own plant"', add
label define fj07a_electric_lbl 9 `"None"', add
label values fj07a_electric fj07a_electric_lbl

label define fj07a_lighting_lbl 1 `"Electricity"'
label define fj07a_lighting_lbl 2 `"Pressure lamp"', add
label define fj07a_lighting_lbl 3 `"Wick lamp"', add
label define fj07a_lighting_lbl 4 `"Other"', add
label values fj07a_lighting fj07a_lighting_lbl

label define fj07a_fuelcook_lbl 1 `"Electricity"'
label define fj07a_fuelcook_lbl 2 `"LPG (Fiji gas, etc.)"', add
label define fj07a_fuelcook_lbl 3 `"Kerosene"', add
label define fj07a_fuelcook_lbl 4 `"Wood stove"', add
label define fj07a_fuelcook_lbl 5 `"Wood, open fire"', add
label define fj07a_fuelcook_lbl 6 `"Biogas"', add
label define fj07a_fuelcook_lbl 7 `"Other"', add
label values fj07a_fuelcook fj07a_fuelcook_lbl

label define fj07a_toilet_lbl 1 `"Flush, exclusive"'
label define fj07a_toilet_lbl 2 `"Flush, shared"', add
label define fj07a_toilet_lbl 3 `"Waterseal, exclusive"', add
label define fj07a_toilet_lbl 4 `"Waterseal, share"', add
label define fj07a_toilet_lbl 5 `"Latrine, exclusive"', add
label define fj07a_toilet_lbl 6 `"Latrine, shared"', add
label define fj07a_toilet_lbl 7 `"None"', add
label define fj07a_toilet_lbl 8 `"Other"', add
label values fj07a_toilet fj07a_toilet_lbl

label define fj07a_tenure_lbl 1 `"Own"'
label define fj07a_tenure_lbl 2 `"Rent private"', add
label define fj07a_tenure_lbl 3 `"Rent public"', add
label define fj07a_tenure_lbl 4 `"Occupy government"', add
label define fj07a_tenure_lbl 5 `"Occupy employer"', add
label define fj07a_tenure_lbl 6 `"Caretaker"', add
label define fj07a_tenure_lbl 7 `"Other"', add
label values fj07a_tenure fj07a_tenure_lbl

label define fj07a_landown_lbl 1 `"Freehold"'
label define fj07a_landown_lbl 2 `"Leased from state"', add
label define fj07a_landown_lbl 3 `"Leased  from NLTB"', add
label define fj07a_landown_lbl 4 `"Occupy without legal arrangement, state or freehold land"', add
label define fj07a_landown_lbl 5 `"Occupy native land with formal or informal arrangement"', add
label define fj07a_landown_lbl 6 `"Occupy through a traditional village tenure"', add
label define fj07a_landown_lbl 7 `"Other"', add
label values fj07a_landown fj07a_landown_lbl

label define fj07a_hhshop_lbl 0 `"No"'
label define fj07a_hhshop_lbl 1 `"Yes"', add
label values fj07a_hhshop fj07a_hhshop_lbl

label define fj07a_hhsubs_lbl 0 `"No"'
label define fj07a_hhsubs_lbl 1 `"Yes"', add
label values fj07a_hhsubs fj07a_hhsubs_lbl

label define fj07a_hhprod_lbl 0 `"No"'
label define fj07a_hhprod_lbl 1 `"Yes"', add
label values fj07a_hhprod fj07a_hhprod_lbl

label define fj07a_hhgood_lbl 0 `"No"'
label define fj07a_hhgood_lbl 1 `"Yes"', add
label values fj07a_hhgood fj07a_hhgood_lbl

label define fj07a_hhtech_lbl 0 `"No"'
label define fj07a_hhtech_lbl 1 `"Yes"', add
label values fj07a_hhtech fj07a_hhtech_lbl

label define fj07a_hhprof_lbl 0 `"No"'
label define fj07a_hhprof_lbl 1 `"Yes"', add
label values fj07a_hhprof fj07a_hhprof_lbl

label define fj07a_hhflat_lbl 0 `"No"'
label define fj07a_hhflat_lbl 1 `"Yes"', add
label values fj07a_hhflat fj07a_hhflat_lbl

label define fj07a_hhcomm_lbl 0 `"No"'
label define fj07a_hhcomm_lbl 1 `"Yes"', add
label values fj07a_hhcomm fj07a_hhcomm_lbl

label define fj07a_hhnone_lbl 0 `"No"'
label define fj07a_hhnone_lbl 1 `"Yes"', add
label values fj07a_hhnone fj07a_hhnone_lbl

label define fj07a_hhoth_lbl 0 `"No"'
label define fj07a_hhoth_lbl 1 `"Yes"', add
label values fj07a_hhoth fj07a_hhoth_lbl

label define fj07a_wastgovt_lbl 0 `"No"'
label define fj07a_wastgovt_lbl 1 `"Yes"', add
label values fj07a_wastgovt fj07a_wastgovt_lbl

label define fj07a_wastbury_lbl 0 `"No"'
label define fj07a_wastbury_lbl 1 `"Yes"', add
label values fj07a_wastbury fj07a_wastbury_lbl

label define fj07a_wastriv_lbl 0 `"No"'
label define fj07a_wastriv_lbl 1 `"Yes"', add
label values fj07a_wastriv fj07a_wastriv_lbl

label define fj07a_wastsea_lbl 0 `"No"'
label define fj07a_wastsea_lbl 1 `"Yes"', add
label values fj07a_wastsea fj07a_wastsea_lbl

label define fj07a_wastbkyd_lbl 0 `"No"'
label define fj07a_wastbkyd_lbl 1 `"Yes"', add
label values fj07a_wastbkyd fj07a_wastbkyd_lbl

label define fj07a_wastoth_lbl 0 `"No"'
label define fj07a_wastoth_lbl 1 `"Yes"', add
label values fj07a_wastoth fj07a_wastoth_lbl

label define fj07a_autos_lbl 0 `"None"'
label define fj07a_autos_lbl 1 `"1"', add
label define fj07a_autos_lbl 2 `"2"', add
label define fj07a_autos_lbl 3 `"3"', add
label define fj07a_autos_lbl 4 `"4+"', add
label values fj07a_autos fj07a_autos_lbl

label define fj07a_truck_lbl 0 `"None"'
label define fj07a_truck_lbl 1 `"1"', add
label define fj07a_truck_lbl 2 `"2"', add
label define fj07a_truck_lbl 3 `"3+"', add
label values fj07a_truck fj07a_truck_lbl

label define fj07a_motor_lbl 0 `"None"'
label define fj07a_motor_lbl 1 `"1"', add
label define fj07a_motor_lbl 2 `"2"', add
label define fj07a_motor_lbl 3 `"3+"', add
label values fj07a_motor fj07a_motor_lbl

label define fj07a_generat_lbl 0 `"None"'
label define fj07a_generat_lbl 1 `"1"', add
label define fj07a_generat_lbl 2 `"2"', add
label define fj07a_generat_lbl 3 `"3+"', add
label values fj07a_generat fj07a_generat_lbl

label define fj07a_cutter_lbl 0 `"None"'
label define fj07a_cutter_lbl 1 `"1"', add
label define fj07a_cutter_lbl 2 `"2+"', add
label values fj07a_cutter fj07a_cutter_lbl

label define fj07a_solar_lbl 0 `"None"'
label define fj07a_solar_lbl 1 `"1"', add
label define fj07a_solar_lbl 2 `"2+"', add
label values fj07a_solar fj07a_solar_lbl

label define fj07a_watpump_lbl 0 `"None"'
label define fj07a_watpump_lbl 1 `"1"', add
label define fj07a_watpump_lbl 2 `"2+"', add
label values fj07a_watpump fj07a_watpump_lbl

label define fj07a_refrig_lbl 0 `"None"'
label define fj07a_refrig_lbl 1 `"1"', add
label define fj07a_refrig_lbl 2 `"2"', add
label define fj07a_refrig_lbl 3 `"3"', add
label values fj07a_refrig fj07a_refrig_lbl

label define fj07a_washer_lbl 0 `"None"'
label define fj07a_washer_lbl 1 `"1"', add
label define fj07a_washer_lbl 2 `"2+"', add
label values fj07a_washer fj07a_washer_lbl

label define fj07a_dryer_lbl 0 `"None"'
label define fj07a_dryer_lbl 1 `"1"', add
label define fj07a_dryer_lbl 2 `"2+"', add
label values fj07a_dryer fj07a_dryer_lbl

label define fj07a_stove_lbl 0 `"None"'
label define fj07a_stove_lbl 1 `"1"', add
label define fj07a_stove_lbl 2 `"2"', add
label define fj07a_stove_lbl 3 `"3"', add
label values fj07a_stove fj07a_stove_lbl

label define fj07a_watheatr_lbl 0 `"None"'
label define fj07a_watheatr_lbl 1 `"1"', add
label define fj07a_watheatr_lbl 2 `"2+"', add
label values fj07a_watheatr fj07a_watheatr_lbl

label define fj07a_aircon_lbl 0 `"None"'
label define fj07a_aircon_lbl 1 `"1"', add
label define fj07a_aircon_lbl 2 `"2"', add
label define fj07a_aircon_lbl 3 `"3"', add
label define fj07a_aircon_lbl 4 `"4+"', add
label values fj07a_aircon fj07a_aircon_lbl

label define fj07a_radio_lbl 0 `"None"'
label define fj07a_radio_lbl 1 `"1"', add
label define fj07a_radio_lbl 2 `"2"', add
label define fj07a_radio_lbl 3 `"3"', add
label define fj07a_radio_lbl 4 `"4+"', add
label values fj07a_radio fj07a_radio_lbl

label define fj07a_tv_lbl 0 `"None"'
label define fj07a_tv_lbl 1 `"1"', add
label define fj07a_tv_lbl 2 `"2"', add
label define fj07a_tv_lbl 3 `"3"', add
label define fj07a_tv_lbl 4 `"4+"', add
label values fj07a_tv fj07a_tv_lbl

label define fj07a_video_lbl 0 `"None"'
label define fj07a_video_lbl 1 `"1"', add
label define fj07a_video_lbl 2 `"2"', add
label define fj07a_video_lbl 3 `"3"', add
label define fj07a_video_lbl 4 `"4+"', add
label values fj07a_video fj07a_video_lbl

label define fj07a_skyplus_lbl 0 `"None"'
label define fj07a_skyplus_lbl 1 `"1 or more"', add
label values fj07a_skyplus fj07a_skyplus_lbl

label define fj07a_skypac_lbl 0 `"None"'
label define fj07a_skypac_lbl 1 `"1"', add
label define fj07a_skypac_lbl 2 `"2+"', add
label values fj07a_skypac fj07a_skypac_lbl

label define fj07a_phone_lbl 0 `"None"'
label define fj07a_phone_lbl 1 `"1"', add
label define fj07a_phone_lbl 2 `"2+"', add
label values fj07a_phone fj07a_phone_lbl

label define fj07a_cell_lbl 0 `"None"'
label define fj07a_cell_lbl 1 `"1"', add
label define fj07a_cell_lbl 2 `"2"', add
label define fj07a_cell_lbl 3 `"3"', add
label define fj07a_cell_lbl 4 `"4"', add
label define fj07a_cell_lbl 5 `"5"', add
label define fj07a_cell_lbl 6 `"6"', add
label define fj07a_cell_lbl 7 `"7"', add
label define fj07a_cell_lbl 8 `"8"', add
label define fj07a_cell_lbl 9 `"9"', add
label values fj07a_cell fj07a_cell_lbl

label define fj07a_computer_lbl 0 `"None"'
label define fj07a_computer_lbl 1 `"1"', add
label define fj07a_computer_lbl 2 `"2"', add
label define fj07a_computer_lbl 3 `"3+"', add
label values fj07a_computer fj07a_computer_lbl

label define fj07a_internet_lbl 0 `"None"'
label define fj07a_internet_lbl 1 `"1"', add
label define fj07a_internet_lbl 2 `"2"', add
label values fj07a_internet fj07a_internet_lbl

label define fj07a_savbulbs_lbl 0 `"None"'
label define fj07a_savbulbs_lbl 1 `"1"', add
label define fj07a_savbulbs_lbl 2 `"2"', add
label define fj07a_savbulbs_lbl 3 `"3"', add
label define fj07a_savbulbs_lbl 4 `"4"', add
label define fj07a_savbulbs_lbl 5 `"5"', add
label define fj07a_savbulbs_lbl 6 `"6"', add
label define fj07a_savbulbs_lbl 7 `"7"', add
label define fj07a_savbulbs_lbl 8 `"8"', add
label define fj07a_savbulbs_lbl 9 `"9"', add
label values fj07a_savbulbs fj07a_savbulbs_lbl

label define fj07a_cows_lbl 00 `"None"'
label define fj07a_cows_lbl 01 `"1"', add
label define fj07a_cows_lbl 02 `"2"', add
label define fj07a_cows_lbl 03 `"3"', add
label define fj07a_cows_lbl 04 `"4"', add
label define fj07a_cows_lbl 05 `"5"', add
label define fj07a_cows_lbl 06 `"6"', add
label define fj07a_cows_lbl 07 `"7"', add
label define fj07a_cows_lbl 08 `"8"', add
label define fj07a_cows_lbl 09 `"9"', add
label define fj07a_cows_lbl 10 `"10+"', add
label values fj07a_cows fj07a_cows_lbl

label define fj07a_pigs_lbl 00 `"None"'
label define fj07a_pigs_lbl 01 `"1"', add
label define fj07a_pigs_lbl 02 `"2"', add
label define fj07a_pigs_lbl 03 `"3"', add
label define fj07a_pigs_lbl 04 `"4"', add
label define fj07a_pigs_lbl 05 `"5"', add
label define fj07a_pigs_lbl 06 `"6"', add
label define fj07a_pigs_lbl 07 `"7"', add
label define fj07a_pigs_lbl 08 `"8"', add
label define fj07a_pigs_lbl 09 `"9"', add
label define fj07a_pigs_lbl 10 `"10"', add
label define fj07a_pigs_lbl 11 `"11"', add
label define fj07a_pigs_lbl 12 `"12"', add
label define fj07a_pigs_lbl 13 `"13"', add
label define fj07a_pigs_lbl 14 `"14"', add
label define fj07a_pigs_lbl 15 `"15+"', add
label values fj07a_pigs fj07a_pigs_lbl

label define fj07a_goats_lbl 00 `"None"'
label define fj07a_goats_lbl 01 `"1"', add
label define fj07a_goats_lbl 02 `"2"', add
label define fj07a_goats_lbl 03 `"3"', add
label define fj07a_goats_lbl 04 `"4"', add
label define fj07a_goats_lbl 05 `"5"', add
label define fj07a_goats_lbl 06 `"6"', add
label define fj07a_goats_lbl 07 `"7"', add
label define fj07a_goats_lbl 08 `"8"', add
label define fj07a_goats_lbl 09 `"9"', add
label define fj07a_goats_lbl 10 `"10"', add
label define fj07a_goats_lbl 11 `"11"', add
label define fj07a_goats_lbl 12 `"12+"', add
label values fj07a_goats fj07a_goats_lbl

label define fj07a_horses_lbl 0 `"None"'
label define fj07a_horses_lbl 1 `"1"', add
label define fj07a_horses_lbl 2 `"2"', add
label define fj07a_horses_lbl 3 `"3"', add
label define fj07a_horses_lbl 4 `"4"', add
label define fj07a_horses_lbl 5 `"5"', add
label define fj07a_horses_lbl 6 `"6"', add
label define fj07a_horses_lbl 7 `"7+"', add
label values fj07a_horses fj07a_horses_lbl

label define fj07a_poultry_lbl 00 `"None"'
label define fj07a_poultry_lbl 01 `"1"', add
label define fj07a_poultry_lbl 02 `"2"', add
label define fj07a_poultry_lbl 03 `"3"', add
label define fj07a_poultry_lbl 04 `"4"', add
label define fj07a_poultry_lbl 05 `"5"', add
label define fj07a_poultry_lbl 06 `"6"', add
label define fj07a_poultry_lbl 07 `"7"', add
label define fj07a_poultry_lbl 08 `"8"', add
label define fj07a_poultry_lbl 09 `"9"', add
label define fj07a_poultry_lbl 10 `"10"', add
label define fj07a_poultry_lbl 11 `"11"', add
label define fj07a_poultry_lbl 12 `"12"', add
label define fj07a_poultry_lbl 13 `"13"', add
label define fj07a_poultry_lbl 14 `"14"', add
label define fj07a_poultry_lbl 15 `"15"', add
label define fj07a_poultry_lbl 16 `"16"', add
label define fj07a_poultry_lbl 17 `"17"', add
label define fj07a_poultry_lbl 18 `"18"', add
label define fj07a_poultry_lbl 19 `"19"', add
label define fj07a_poultry_lbl 20 `"20+"', add
label values fj07a_poultry fj07a_poultry_lbl

label define fj07a_dogs_lbl 00 `"None"'
label define fj07a_dogs_lbl 01 `"1"', add
label define fj07a_dogs_lbl 02 `"2"', add
label define fj07a_dogs_lbl 03 `"3"', add
label define fj07a_dogs_lbl 04 `"4"', add
label define fj07a_dogs_lbl 05 `"5"', add
label define fj07a_dogs_lbl 06 `"6"', add
label define fj07a_dogs_lbl 07 `"7"', add
label define fj07a_dogs_lbl 08 `"8"', add
label define fj07a_dogs_lbl 09 `"9"', add
label define fj07a_dogs_lbl 10 `"10+"', add
label values fj07a_dogs fj07a_dogs_lbl

label define fj07a_cats_lbl 0 `"None"'
label define fj07a_cats_lbl 1 `"1"', add
label define fj07a_cats_lbl 2 `"2"', add
label define fj07a_cats_lbl 3 `"3"', add
label define fj07a_cats_lbl 4 `"4"', add
label define fj07a_cats_lbl 5 `"5"', add
label define fj07a_cats_lbl 6 `"6+"', add
label values fj07a_cats fj07a_cats_lbl

label define fj07a_famtype_lbl 1 `"Married couple family, head male"'
label define fj07a_famtype_lbl 3 `"Other family, head male"', add
label define fj07a_famtype_lbl 5 `"Non-family household, head male"', add
label values fj07a_famtype fj07a_famtype_lbl

label define fj07a_hhtype_lbl 1 `"Nuclear family"'
label define fj07a_hhtype_lbl 2 `"Extended family"', add
label values fj07a_hhtype fj07a_hhtype_lbl

label define fj07a_remitt_lbl 1 `"Yes"'
label define fj07a_remitt_lbl 2 `"No"', add
label values fj07a_remitt fj07a_remitt_lbl

label define fj07a_rm1amnt_lbl 00000 `"Did not receive remittance"'
label define fj07a_rm1amnt_lbl 00020 `"20"', add
label define fj07a_rm1amnt_lbl 00030 `"30"', add
label define fj07a_rm1amnt_lbl 00040 `"40"', add
label define fj07a_rm1amnt_lbl 00050 `"50"', add
label define fj07a_rm1amnt_lbl 00060 `"60"', add
label define fj07a_rm1amnt_lbl 00070 `"70"', add
label define fj07a_rm1amnt_lbl 00080 `"80"', add
label define fj07a_rm1amnt_lbl 00098 `"98"', add
label define fj07a_rm1amnt_lbl 00100 `"100"', add
label define fj07a_rm1amnt_lbl 00110 `"110"', add
label define fj07a_rm1amnt_lbl 00120 `"120"', add
label define fj07a_rm1amnt_lbl 00130 `"130"', add
label define fj07a_rm1amnt_lbl 00140 `"140"', add
label define fj07a_rm1amnt_lbl 00145 `"145"', add
label define fj07a_rm1amnt_lbl 00150 `"150"', add
label define fj07a_rm1amnt_lbl 00160 `"160"', add
label define fj07a_rm1amnt_lbl 00170 `"170"', add
label define fj07a_rm1amnt_lbl 00175 `"175"', add
label define fj07a_rm1amnt_lbl 00180 `"180"', add
label define fj07a_rm1amnt_lbl 00200 `"200"', add
label define fj07a_rm1amnt_lbl 00210 `"210"', add
label define fj07a_rm1amnt_lbl 00225 `"225"', add
label define fj07a_rm1amnt_lbl 00228 `"228"', add
label define fj07a_rm1amnt_lbl 00230 `"230"', add
label define fj07a_rm1amnt_lbl 00240 `"240"', add
label define fj07a_rm1amnt_lbl 00250 `"250"', add
label define fj07a_rm1amnt_lbl 00260 `"260"', add
label define fj07a_rm1amnt_lbl 00270 `"270"', add
label define fj07a_rm1amnt_lbl 00275 `"275"', add
label define fj07a_rm1amnt_lbl 00280 `"280"', add
label define fj07a_rm1amnt_lbl 00289 `"289"', add
label define fj07a_rm1amnt_lbl 00300 `"300"', add
label define fj07a_rm1amnt_lbl 00340 `"340"', add
label define fj07a_rm1amnt_lbl 00350 `"350"', add
label define fj07a_rm1amnt_lbl 00360 `"360"', add
label define fj07a_rm1amnt_lbl 00390 `"390"', add
label define fj07a_rm1amnt_lbl 00400 `"400"', add
label define fj07a_rm1amnt_lbl 00420 `"420"', add
label define fj07a_rm1amnt_lbl 00450 `"450"', add
label define fj07a_rm1amnt_lbl 00470 `"470"', add
label define fj07a_rm1amnt_lbl 00500 `"500"', add
label define fj07a_rm1amnt_lbl 00520 `"520"', add
label define fj07a_rm1amnt_lbl 00550 `"550"', add
label define fj07a_rm1amnt_lbl 00560 `"560"', add
label define fj07a_rm1amnt_lbl 00600 `"600"', add
label define fj07a_rm1amnt_lbl 00680 `"680"', add
label define fj07a_rm1amnt_lbl 00700 `"700"', add
label define fj07a_rm1amnt_lbl 00800 `"800"', add
label define fj07a_rm1amnt_lbl 00840 `"840"', add
label define fj07a_rm1amnt_lbl 00900 `"900"', add
label define fj07a_rm1amnt_lbl 00960 `"960"', add
label define fj07a_rm1amnt_lbl 00967 `"967"', add
label define fj07a_rm1amnt_lbl 01000 `"1000"', add
label define fj07a_rm1amnt_lbl 01040 `"1040"', add
label define fj07a_rm1amnt_lbl 01100 `"1100"', add
label define fj07a_rm1amnt_lbl 01200 `"1200"', add
label define fj07a_rm1amnt_lbl 01300 `"1300"', add
label define fj07a_rm1amnt_lbl 01356 `"1356"', add
label define fj07a_rm1amnt_lbl 01398 `"1398"', add
label define fj07a_rm1amnt_lbl 01400 `"1400"', add
label define fj07a_rm1amnt_lbl 01440 `"1440"', add
label define fj07a_rm1amnt_lbl 01500 `"1500"', add
label define fj07a_rm1amnt_lbl 01560 `"1560"', add
label define fj07a_rm1amnt_lbl 01600 `"1600"', add
label define fj07a_rm1amnt_lbl 01800 `"1800"', add
label define fj07a_rm1amnt_lbl 01900 `"1900"', add
label define fj07a_rm1amnt_lbl 02000 `"2000"', add
label define fj07a_rm1amnt_lbl 02100 `"2100"', add
label define fj07a_rm1amnt_lbl 02300 `"2300"', add
label define fj07a_rm1amnt_lbl 02400 `"2400"', add
label define fj07a_rm1amnt_lbl 02500 `"2500"', add
label define fj07a_rm1amnt_lbl 02600 `"2600"', add
label define fj07a_rm1amnt_lbl 02880 `"2880"', add
label define fj07a_rm1amnt_lbl 03000 `"3000"', add
label define fj07a_rm1amnt_lbl 03100 `"3100"', add
label define fj07a_rm1amnt_lbl 03320 `"3320"', add
label define fj07a_rm1amnt_lbl 03500 `"3500"', add
label define fj07a_rm1amnt_lbl 03600 `"3600"', add
label define fj07a_rm1amnt_lbl 03900 `"3900"', add
label define fj07a_rm1amnt_lbl 04000 `"4000"', add
label define fj07a_rm1amnt_lbl 04200 `"4200"', add
label define fj07a_rm1amnt_lbl 04300 `"4300"', add
label define fj07a_rm1amnt_lbl 04400 `"4400"', add
label define fj07a_rm1amnt_lbl 04500 `"4500"', add
label define fj07a_rm1amnt_lbl 04800 `"4800"', add
label define fj07a_rm1amnt_lbl 05000 `"5000"', add
label define fj07a_rm1amnt_lbl 05200 `"5200"', add
label define fj07a_rm1amnt_lbl 05310 `"5310"', add
label define fj07a_rm1amnt_lbl 05400 `"5400"', add
label define fj07a_rm1amnt_lbl 05770 `"5770"', add
label define fj07a_rm1amnt_lbl 05800 `"5800"', add
label define fj07a_rm1amnt_lbl 06000 `"6000"', add
label define fj07a_rm1amnt_lbl 06240 `"6240"', add
label define fj07a_rm1amnt_lbl 06247 `"6247"', add
label define fj07a_rm1amnt_lbl 06400 `"6400"', add
label define fj07a_rm1amnt_lbl 06900 `"6900"', add
label define fj07a_rm1amnt_lbl 07000 `"7000"', add
label define fj07a_rm1amnt_lbl 07200 `"7200"', add
label define fj07a_rm1amnt_lbl 07260 `"7260"', add
label define fj07a_rm1amnt_lbl 07440 `"7440"', add
label define fj07a_rm1amnt_lbl 07600 `"7600"', add
label define fj07a_rm1amnt_lbl 07800 `"7800"', add
label define fj07a_rm1amnt_lbl 08000 `"8000"', add
label define fj07a_rm1amnt_lbl 08400 `"8400"', add
label define fj07a_rm1amnt_lbl 09000 `"9000"', add
label define fj07a_rm1amnt_lbl 09600 `"9600"', add
label define fj07a_rm1amnt_lbl 10000 `"10000"', add
label define fj07a_rm1amnt_lbl 10200 `"10200"', add
label define fj07a_rm1amnt_lbl 10800 `"10800"', add
label define fj07a_rm1amnt_lbl 10900 `"10900"', add
label define fj07a_rm1amnt_lbl 11400 `"11400"', add
label define fj07a_rm1amnt_lbl 11600 `"11600"', add
label define fj07a_rm1amnt_lbl 12000 `"12000+"', add
label values fj07a_rm1amnt fj07a_rm1amnt_lbl

label define fj07a_rm1cntry_lbl 22 `"Australia"'
label define fj07a_rm1cntry_lbl 23 `"New Zealand"', add
label define fj07a_rm1cntry_lbl 36 `"Pacific Island Countries"', add
label define fj07a_rm1cntry_lbl 42 `"Asian Countries"', add
label define fj07a_rm1cntry_lbl 45 `"Iraq"', add
label define fj07a_rm1cntry_lbl 48 `"Other Middle East countries"', add
label define fj07a_rm1cntry_lbl 50 `"Germany"', add
label define fj07a_rm1cntry_lbl 52 `"UK"', add
label define fj07a_rm1cntry_lbl 54 `"Canada"', add
label define fj07a_rm1cntry_lbl 55 `"USA"', add
label define fj07a_rm1cntry_lbl 90 `"Other countries"', add
label define fj07a_rm1cntry_lbl 99 `"Did not receive remittance"', add
label values fj07a_rm1cntry fj07a_rm1cntry_lbl

label define fj07a_rm1rel_lbl 01 `"Husband"'
label define fj07a_rm1rel_lbl 02 `"Wife"', add
label define fj07a_rm1rel_lbl 03 `"Son  or daughter"', add
label define fj07a_rm1rel_lbl 05 `"Son in law  or daughter in law"', add
label define fj07a_rm1rel_lbl 07 `"Parents  or father in law  or mother in law"', add
label define fj07a_rm1rel_lbl 08 `"Brother in law  or sister in law"', add
label define fj07a_rm1rel_lbl 09 `"Other relatives"', add
label define fj07a_rm1rel_lbl 10 `"Not related"', add
label define fj07a_rm1rel_lbl 99 `"Did not receive remittance"', add
label values fj07a_rm1rel fj07a_rm1rel_lbl

label define fj07a_rm1occ_lbl 01 `"Army officer"'
label define fj07a_rm1occ_lbl 02 `"Caretaker  or caregiver"', add
label define fj07a_rm1occ_lbl 04 `"Domestic worker"', add
label define fj07a_rm1occ_lbl 06 `"Nurse"', add
label define fj07a_rm1occ_lbl 11 `"Security guard"', add
label define fj07a_rm1occ_lbl 12 `"Teacher"', add
label define fj07a_rm1occ_lbl 15 `"Work attachments  or secondment"', add
label define fj07a_rm1occ_lbl 16 `"Other"', add
label define fj07a_rm1occ_lbl 99 `"Did not receive remittance"', add
label values fj07a_rm1occ fj07a_rm1occ_lbl

label define fj07a_rm1mode_lbl 01 `"Bank transfer"'
label define fj07a_rm1mode_lbl 02 `"Money transfer agencies"', add
label define fj07a_rm1mode_lbl 03 `"Post  or mail"', add
label define fj07a_rm1mode_lbl 04 `"Carried by relatives  or friends"', add
label define fj07a_rm1mode_lbl 05 `"Other mode"', add
label define fj07a_rm1mode_lbl 99 `"Did not receive remittance"', add
label values fj07a_rm1mode fj07a_rm1mode_lbl

label define fj07a_rm2amnt_lbl 1 `"No"'
label define fj07a_rm2amnt_lbl 2 `"Yes"', add
label values fj07a_rm2amnt fj07a_rm2amnt_lbl

label define fj07a_anydisab_lbl 1 `"Yes"'
label define fj07a_anydisab_lbl 2 `"No"', add
label values fj07a_anydisab fj07a_anydisab_lbl

label define fj07a_disper1_lbl 00 `"No disabled person in household"'
label define fj07a_disper1_lbl 01 `"1"', add
label define fj07a_disper1_lbl 02 `"2"', add
label define fj07a_disper1_lbl 03 `"3"', add
label define fj07a_disper1_lbl 04 `"4"', add
label define fj07a_disper1_lbl 05 `"5"', add
label define fj07a_disper1_lbl 06 `"6"', add
label define fj07a_disper1_lbl 07 `"7"', add
label define fj07a_disper1_lbl 08 `"8"', add
label define fj07a_disper1_lbl 09 `"9"', add
label define fj07a_disper1_lbl 10 `"10"', add
label define fj07a_disper1_lbl 11 `"11"', add
label define fj07a_disper1_lbl 12 `"12"', add
label define fj07a_disper1_lbl 13 `"13"', add
label define fj07a_disper1_lbl 14 `"14"', add
label values fj07a_disper1 fj07a_disper1_lbl

label define fj07a_distype1_lbl 01 `"Seeing"'
label define fj07a_distype1_lbl 02 `"Hearing"', add
label define fj07a_distype1_lbl 03 `"Speaking"', add
label define fj07a_distype1_lbl 04 `"Learning"', add
label define fj07a_distype1_lbl 05 `"Behaviour"', add
label define fj07a_distype1_lbl 06 `"Mobility"', add
label define fj07a_distype1_lbl 07 `"Personal care"', add
label define fj07a_distype1_lbl 08 `"Seeing or personal care (1,7)"', add
label define fj07a_distype1_lbl 09 `"Hearing or speaking (2,3)"', add
label define fj07a_distype1_lbl 10 `"Speaking or behaviour (3, 5)"', add
label define fj07a_distype1_lbl 11 `"Learning or behaviour (4, 5)"', add
label define fj07a_distype1_lbl 12 `"Mobility or personal care (6,7)"', add
label define fj07a_distype1_lbl 13 `"Other"', add
label define fj07a_distype1_lbl 99 `"No disabled person in household"', add
label values fj07a_distype1 fj07a_distype1_lbl

label define fj07a_disper2_lbl 01 `"1"'
label define fj07a_disper2_lbl 02 `"2"', add
label define fj07a_disper2_lbl 03 `"3"', add
label define fj07a_disper2_lbl 04 `"4"', add
label define fj07a_disper2_lbl 05 `"5"', add
label define fj07a_disper2_lbl 06 `"6"', add
label define fj07a_disper2_lbl 07 `"7"', add
label define fj07a_disper2_lbl 08 `"8"', add
label define fj07a_disper2_lbl 09 `"9"', add
label define fj07a_disper2_lbl 10 `"10"', add
label define fj07a_disper2_lbl 11 `"11"', add
label define fj07a_disper2_lbl 99 `"No disabled person or only one disabled person in household"', add
label values fj07a_disper2 fj07a_disper2_lbl

label define fj07a_distype2_lbl 1 `"Seeing"'
label define fj07a_distype2_lbl 2 `"Other"', add
label define fj07a_distype2_lbl 9 `"No disabled person or only one disabled person in household"', add
label values fj07a_distype2 fj07a_distype2_lbl

label define fj07a_pernum_lbl 00 `"Household record"'
label define fj07a_pernum_lbl 01 `"1"', add
label define fj07a_pernum_lbl 02 `"2"', add
label define fj07a_pernum_lbl 03 `"3"', add
label define fj07a_pernum_lbl 04 `"4"', add
label define fj07a_pernum_lbl 05 `"5"', add
label define fj07a_pernum_lbl 06 `"6"', add
label define fj07a_pernum_lbl 07 `"7"', add
label define fj07a_pernum_lbl 08 `"8"', add
label define fj07a_pernum_lbl 09 `"9"', add
label define fj07a_pernum_lbl 10 `"10"', add
label define fj07a_pernum_lbl 11 `"11"', add
label define fj07a_pernum_lbl 12 `"12"', add
label define fj07a_pernum_lbl 13 `"13"', add
label define fj07a_pernum_lbl 14 `"14"', add
label define fj07a_pernum_lbl 15 `"15"', add
label define fj07a_pernum_lbl 16 `"16"', add
label define fj07a_pernum_lbl 17 `"17"', add
label define fj07a_pernum_lbl 18 `"18"', add
label define fj07a_pernum_lbl 19 `"19"', add
label define fj07a_pernum_lbl 20 `"20"', add
label define fj07a_pernum_lbl 21 `"21"', add
label define fj07a_pernum_lbl 22 `"22"', add
label define fj07a_pernum_lbl 23 `"23"', add
label define fj07a_pernum_lbl 24 `"24"', add
label define fj07a_pernum_lbl 25 `"25"', add
label define fj07a_pernum_lbl 26 `"26"', add
label values fj07a_pernum fj07a_pernum_lbl

label define fj07a_relate_lbl 01 `"Head"'
label define fj07a_relate_lbl 02 `"Spouse"', add
label define fj07a_relate_lbl 03 `"Son  or daughter"', add
label define fj07a_relate_lbl 04 `"Adopted son  or daughter"', add
label define fj07a_relate_lbl 05 `"Son in law  or daughter in law"', add
label define fj07a_relate_lbl 06 `"Grandchild"', add
label define fj07a_relate_lbl 07 `"Parents or parents-in-law"', add
label define fj07a_relate_lbl 08 `"Sibling/sibling-in-law"', add
label define fj07a_relate_lbl 09 `"Other relatives"', add
label define fj07a_relate_lbl 10 `"Not related"', add
label values fj07a_relate fj07a_relate_lbl

label define fj07a_sex_lbl 1 `"Male"'
label define fj07a_sex_lbl 2 `"Female"', add
label values fj07a_sex fj07a_sex_lbl

label define fj07a_birthmo_lbl 01 `"January"'
label define fj07a_birthmo_lbl 02 `"February"', add
label define fj07a_birthmo_lbl 03 `"March"', add
label define fj07a_birthmo_lbl 04 `"April"', add
label define fj07a_birthmo_lbl 05 `"May"', add
label define fj07a_birthmo_lbl 06 `"June"', add
label define fj07a_birthmo_lbl 07 `"July"', add
label define fj07a_birthmo_lbl 08 `"August"', add
label define fj07a_birthmo_lbl 09 `"September"', add
label define fj07a_birthmo_lbl 10 `"October"', add
label define fj07a_birthmo_lbl 11 `"November"', add
label define fj07a_birthmo_lbl 12 `"December"', add
label values fj07a_birthmo fj07a_birthmo_lbl

label define fj07a_birthyr_lbl 1920 `"1920 or earlier"'
label define fj07a_birthyr_lbl 1921 `"1921"', add
label define fj07a_birthyr_lbl 1922 `"1922"', add
label define fj07a_birthyr_lbl 1923 `"1923"', add
label define fj07a_birthyr_lbl 1924 `"1924"', add
label define fj07a_birthyr_lbl 1925 `"1925"', add
label define fj07a_birthyr_lbl 1926 `"1926"', add
label define fj07a_birthyr_lbl 1927 `"1927"', add
label define fj07a_birthyr_lbl 1928 `"1928"', add
label define fj07a_birthyr_lbl 1929 `"1929"', add
label define fj07a_birthyr_lbl 1930 `"1930"', add
label define fj07a_birthyr_lbl 1931 `"1931"', add
label define fj07a_birthyr_lbl 1932 `"1932"', add
label define fj07a_birthyr_lbl 1933 `"1933"', add
label define fj07a_birthyr_lbl 1934 `"1934"', add
label define fj07a_birthyr_lbl 1935 `"1935"', add
label define fj07a_birthyr_lbl 1936 `"1936"', add
label define fj07a_birthyr_lbl 1937 `"1937"', add
label define fj07a_birthyr_lbl 1938 `"1938"', add
label define fj07a_birthyr_lbl 1939 `"1939"', add
label define fj07a_birthyr_lbl 1940 `"1940"', add
label define fj07a_birthyr_lbl 1941 `"1941"', add
label define fj07a_birthyr_lbl 1942 `"1942"', add
label define fj07a_birthyr_lbl 1943 `"1943"', add
label define fj07a_birthyr_lbl 1944 `"1944"', add
label define fj07a_birthyr_lbl 1945 `"1945"', add
label define fj07a_birthyr_lbl 1946 `"1946"', add
label define fj07a_birthyr_lbl 1947 `"1947"', add
label define fj07a_birthyr_lbl 1948 `"1948"', add
label define fj07a_birthyr_lbl 1949 `"1949"', add
label define fj07a_birthyr_lbl 1950 `"1950"', add
label define fj07a_birthyr_lbl 1951 `"1951"', add
label define fj07a_birthyr_lbl 1952 `"1952"', add
label define fj07a_birthyr_lbl 1953 `"1953"', add
label define fj07a_birthyr_lbl 1954 `"1954"', add
label define fj07a_birthyr_lbl 1955 `"1955"', add
label define fj07a_birthyr_lbl 1956 `"1956"', add
label define fj07a_birthyr_lbl 1957 `"1957"', add
label define fj07a_birthyr_lbl 1958 `"1958"', add
label define fj07a_birthyr_lbl 1959 `"1959"', add
label define fj07a_birthyr_lbl 1960 `"1960"', add
label define fj07a_birthyr_lbl 1961 `"1961"', add
label define fj07a_birthyr_lbl 1962 `"1962"', add
label define fj07a_birthyr_lbl 1963 `"1963"', add
label define fj07a_birthyr_lbl 1964 `"1964"', add
label define fj07a_birthyr_lbl 1965 `"1965"', add
label define fj07a_birthyr_lbl 1966 `"1966"', add
label define fj07a_birthyr_lbl 1967 `"1967"', add
label define fj07a_birthyr_lbl 1968 `"1968"', add
label define fj07a_birthyr_lbl 1969 `"1969"', add
label define fj07a_birthyr_lbl 1970 `"1970"', add
label define fj07a_birthyr_lbl 1971 `"1971"', add
label define fj07a_birthyr_lbl 1972 `"1972"', add
label define fj07a_birthyr_lbl 1973 `"1973"', add
label define fj07a_birthyr_lbl 1974 `"1974"', add
label define fj07a_birthyr_lbl 1975 `"1975"', add
label define fj07a_birthyr_lbl 1976 `"1976"', add
label define fj07a_birthyr_lbl 1977 `"1977"', add
label define fj07a_birthyr_lbl 1978 `"1978"', add
label define fj07a_birthyr_lbl 1979 `"1979"', add
label define fj07a_birthyr_lbl 1980 `"1980"', add
label define fj07a_birthyr_lbl 1981 `"1981"', add
label define fj07a_birthyr_lbl 1982 `"1982"', add
label define fj07a_birthyr_lbl 1983 `"1983"', add
label define fj07a_birthyr_lbl 1984 `"1984"', add
label define fj07a_birthyr_lbl 1985 `"1985"', add
label define fj07a_birthyr_lbl 1986 `"1986"', add
label define fj07a_birthyr_lbl 1987 `"1987"', add
label define fj07a_birthyr_lbl 1988 `"1988"', add
label define fj07a_birthyr_lbl 1989 `"1989"', add
label define fj07a_birthyr_lbl 1990 `"1990"', add
label define fj07a_birthyr_lbl 1991 `"1991"', add
label define fj07a_birthyr_lbl 1992 `"1992"', add
label define fj07a_birthyr_lbl 1993 `"1993"', add
label define fj07a_birthyr_lbl 1994 `"1994"', add
label define fj07a_birthyr_lbl 1995 `"1995"', add
label define fj07a_birthyr_lbl 1996 `"1996"', add
label define fj07a_birthyr_lbl 1997 `"1997"', add
label define fj07a_birthyr_lbl 1998 `"1998"', add
label define fj07a_birthyr_lbl 1999 `"1999"', add
label define fj07a_birthyr_lbl 2000 `"2000"', add
label define fj07a_birthyr_lbl 2001 `"2001"', add
label define fj07a_birthyr_lbl 2002 `"2002"', add
label define fj07a_birthyr_lbl 2003 `"2003"', add
label define fj07a_birthyr_lbl 2004 `"2004"', add
label define fj07a_birthyr_lbl 2005 `"2005"', add
label define fj07a_birthyr_lbl 2006 `"2006"', add
label define fj07a_birthyr_lbl 2007 `"2007"', add
label values fj07a_birthyr fj07a_birthyr_lbl

label define fj07a_age_lbl 00 `"Less than one year old"'
label define fj07a_age_lbl 01 `"1"', add
label define fj07a_age_lbl 02 `"2"', add
label define fj07a_age_lbl 03 `"3"', add
label define fj07a_age_lbl 04 `"4"', add
label define fj07a_age_lbl 05 `"5"', add
label define fj07a_age_lbl 06 `"6"', add
label define fj07a_age_lbl 07 `"7"', add
label define fj07a_age_lbl 08 `"8"', add
label define fj07a_age_lbl 09 `"9"', add
label define fj07a_age_lbl 10 `"10"', add
label define fj07a_age_lbl 11 `"11"', add
label define fj07a_age_lbl 12 `"12"', add
label define fj07a_age_lbl 13 `"13"', add
label define fj07a_age_lbl 14 `"14"', add
label define fj07a_age_lbl 15 `"15"', add
label define fj07a_age_lbl 16 `"16"', add
label define fj07a_age_lbl 17 `"17"', add
label define fj07a_age_lbl 18 `"18"', add
label define fj07a_age_lbl 19 `"19"', add
label define fj07a_age_lbl 20 `"20"', add
label define fj07a_age_lbl 21 `"21"', add
label define fj07a_age_lbl 22 `"22"', add
label define fj07a_age_lbl 23 `"23"', add
label define fj07a_age_lbl 24 `"24"', add
label define fj07a_age_lbl 25 `"25"', add
label define fj07a_age_lbl 26 `"26"', add
label define fj07a_age_lbl 27 `"27"', add
label define fj07a_age_lbl 28 `"28"', add
label define fj07a_age_lbl 29 `"29"', add
label define fj07a_age_lbl 30 `"30"', add
label define fj07a_age_lbl 31 `"31"', add
label define fj07a_age_lbl 32 `"32"', add
label define fj07a_age_lbl 33 `"33"', add
label define fj07a_age_lbl 34 `"34"', add
label define fj07a_age_lbl 35 `"35"', add
label define fj07a_age_lbl 36 `"36"', add
label define fj07a_age_lbl 37 `"37"', add
label define fj07a_age_lbl 38 `"38"', add
label define fj07a_age_lbl 39 `"39"', add
label define fj07a_age_lbl 40 `"40"', add
label define fj07a_age_lbl 41 `"41"', add
label define fj07a_age_lbl 42 `"42"', add
label define fj07a_age_lbl 43 `"43"', add
label define fj07a_age_lbl 44 `"44"', add
label define fj07a_age_lbl 45 `"45"', add
label define fj07a_age_lbl 46 `"46"', add
label define fj07a_age_lbl 47 `"47"', add
label define fj07a_age_lbl 48 `"48"', add
label define fj07a_age_lbl 49 `"49"', add
label define fj07a_age_lbl 50 `"50"', add
label define fj07a_age_lbl 51 `"51"', add
label define fj07a_age_lbl 52 `"52"', add
label define fj07a_age_lbl 53 `"53"', add
label define fj07a_age_lbl 54 `"54"', add
label define fj07a_age_lbl 55 `"55"', add
label define fj07a_age_lbl 56 `"56"', add
label define fj07a_age_lbl 57 `"57"', add
label define fj07a_age_lbl 58 `"58"', add
label define fj07a_age_lbl 59 `"59"', add
label define fj07a_age_lbl 60 `"60"', add
label define fj07a_age_lbl 61 `"61"', add
label define fj07a_age_lbl 62 `"62"', add
label define fj07a_age_lbl 63 `"63"', add
label define fj07a_age_lbl 64 `"64"', add
label define fj07a_age_lbl 65 `"65"', add
label define fj07a_age_lbl 66 `"66"', add
label define fj07a_age_lbl 67 `"67"', add
label define fj07a_age_lbl 68 `"68"', add
label define fj07a_age_lbl 69 `"69"', add
label define fj07a_age_lbl 70 `"70"', add
label define fj07a_age_lbl 71 `"71"', add
label define fj07a_age_lbl 72 `"72"', add
label define fj07a_age_lbl 73 `"73"', add
label define fj07a_age_lbl 74 `"74"', add
label define fj07a_age_lbl 75 `"75"', add
label define fj07a_age_lbl 76 `"76"', add
label define fj07a_age_lbl 77 `"77"', add
label define fj07a_age_lbl 78 `"78"', add
label define fj07a_age_lbl 79 `"79"', add
label define fj07a_age_lbl 80 `"80"', add
label define fj07a_age_lbl 81 `"81"', add
label define fj07a_age_lbl 82 `"82"', add
label define fj07a_age_lbl 83 `"83"', add
label define fj07a_age_lbl 84 `"84"', add
label define fj07a_age_lbl 85 `"85"', add
label define fj07a_age_lbl 86 `"86"', add
label define fj07a_age_lbl 87 `"87"', add
label define fj07a_age_lbl 88 `"88+"', add
label values fj07a_age fj07a_age_lbl

label define fj07a_ethnic_lbl 01 `"Fijian"'
label define fj07a_ethnic_lbl 02 `"Indian"', add
label define fj07a_ethnic_lbl 03 `"Chinese  or Part Chinese"', add
label define fj07a_ethnic_lbl 04 `"European"', add
label define fj07a_ethnic_lbl 05 `"Part European"', add
label define fj07a_ethnic_lbl 06 `"Rotuman"', add
label define fj07a_ethnic_lbl 07 `"Banaban"', add
label define fj07a_ethnic_lbl 08 `"I-Kiribati"', add
label define fj07a_ethnic_lbl 09 `"Ni-Vanuatu"', add
label define fj07a_ethnic_lbl 10 `"Papua New Guinean"', add
label define fj07a_ethnic_lbl 11 `"Samoan"', add
label define fj07a_ethnic_lbl 12 `"Solomon"', add
label define fj07a_ethnic_lbl 13 `"Tongan"', add
label define fj07a_ethnic_lbl 14 `"Tuvaluan"', add
label define fj07a_ethnic_lbl 15 `"Other Pacific Islander"', add
label define fj07a_ethnic_lbl 16 `"Other Asian"', add
label define fj07a_ethnic_lbl 17 `"All Others"', add
label values fj07a_ethnic fj07a_ethnic_lbl

label define fj07a_marst_lbl 1 `"Single"'
label define fj07a_marst_lbl 2 `"Legally married (not separated)"', add
label define fj07a_marst_lbl 3 `"Separated but legally married"', add
label define fj07a_marst_lbl 4 `"De-facto (consensual union)"', add
label define fj07a_marst_lbl 5 `"Divorced"', add
label define fj07a_marst_lbl 6 `"Widowed"', add
label values fj07a_marst fj07a_marst_lbl

label define fj07a_fathlive_lbl 1 `"Alive"'
label define fj07a_fathlive_lbl 2 `"Dead"', add
label values fj07a_fathlive fj07a_fathlive_lbl

label define fj07a_mothlive_lbl 1 `"Alive"'
label define fj07a_mothlive_lbl 2 `"Dead"', add
label values fj07a_mothlive fj07a_mothlive_lbl

label define fj07a_momloc_lbl 01 `"1"'
label define fj07a_momloc_lbl 02 `"2"', add
label define fj07a_momloc_lbl 03 `"3"', add
label define fj07a_momloc_lbl 04 `"4"', add
label define fj07a_momloc_lbl 05 `"5"', add
label define fj07a_momloc_lbl 06 `"6"', add
label define fj07a_momloc_lbl 07 `"7"', add
label define fj07a_momloc_lbl 08 `"8"', add
label define fj07a_momloc_lbl 09 `"9"', add
label define fj07a_momloc_lbl 10 `"10"', add
label define fj07a_momloc_lbl 11 `"11"', add
label define fj07a_momloc_lbl 12 `"12"', add
label define fj07a_momloc_lbl 13 `"13"', add
label define fj07a_momloc_lbl 14 `"14"', add
label define fj07a_momloc_lbl 15 `"15"', add
label define fj07a_momloc_lbl 16 `"16"', add
label define fj07a_momloc_lbl 17 `"17"', add
label define fj07a_momloc_lbl 18 `"18"', add
label define fj07a_momloc_lbl 19 `"19"', add
label define fj07a_momloc_lbl 20 `"20"', add
label define fj07a_momloc_lbl 22 `"22"', add
label define fj07a_momloc_lbl 23 `"23"', add
label define fj07a_momloc_lbl 26 `"26"', add
label define fj07a_momloc_lbl 99 `"NIU (not in universe)"', add
label values fj07a_momloc fj07a_momloc_lbl

label define fj07a_religion_lbl 01 `"Methodist"'
label define fj07a_religion_lbl 02 `"Catholic"', add
label define fj07a_religion_lbl 03 `"Seventh Day Adventist"', add
label define fj07a_religion_lbl 04 `"Assembly of God"', add
label define fj07a_religion_lbl 05 `"All Nations Christian Fellowship"', add
label define fj07a_religion_lbl 06 `"Anglican"', add
label define fj07a_religion_lbl 07 `"Apostles Gospel Outreach Fellowship"', add
label define fj07a_religion_lbl 08 `"Baptist"', add
label define fj07a_religion_lbl 09 `"Christian Outreach Centre"', add
label define fj07a_religion_lbl 10 `"CMF  or Every Home"', add
label define fj07a_religion_lbl 11 `"Gospel"', add
label define fj07a_religion_lbl 12 `"Jehovahs Witness"', add
label define fj07a_religion_lbl 13 `"Latter Day Saints"', add
label define fj07a_religion_lbl 14 `"Presbyterian"', add
label define fj07a_religion_lbl 15 `"Salvation Army"', add
label define fj07a_religion_lbl 16 `"Other Christian"', add
label define fj07a_religion_lbl 17 `"Ary Samaj"', add
label define fj07a_religion_lbl 18 `"Kabir Panthi"', add
label define fj07a_religion_lbl 19 `"Sanatan"', add
label define fj07a_religion_lbl 20 `"Satya Sai Baba"', add
label define fj07a_religion_lbl 21 `"Other Hindu"', add
label define fj07a_religion_lbl 22 `"Sikh"', add
label define fj07a_religion_lbl 23 `"Ahmadya"', add
label define fj07a_religion_lbl 24 `"Sunni"', add
label define fj07a_religion_lbl 25 `"Other Moslem"', add
label define fj07a_religion_lbl 26 `"Bahai"', add
label define fj07a_religion_lbl 27 `"Confucian"', add
label define fj07a_religion_lbl 28 `"Other"', add
label define fj07a_religion_lbl 29 `"No Religion  or Not Stated"', add
label values fj07a_religion fj07a_religion_lbl

label define fj07a_bplprov_lbl 01 `"Ba"'
label define fj07a_bplprov_lbl 02 `"Bua"', add
label define fj07a_bplprov_lbl 03 `"Cakaudrove"', add
label define fj07a_bplprov_lbl 04 `"Kadavu"', add
label define fj07a_bplprov_lbl 05 `"Lau"', add
label define fj07a_bplprov_lbl 06 `"Lomaiviti"', add
label define fj07a_bplprov_lbl 07 `"Macuata"', add
label define fj07a_bplprov_lbl 08 `"Nadroga orNavosa"', add
label define fj07a_bplprov_lbl 09 `"Naitasiri"', add
label define fj07a_bplprov_lbl 10 `"Namosi"', add
label define fj07a_bplprov_lbl 11 `"Ra"', add
label define fj07a_bplprov_lbl 12 `"Rewa"', add
label define fj07a_bplprov_lbl 13 `"Serua"', add
label define fj07a_bplprov_lbl 14 `"Tailevu"', add
label define fj07a_bplprov_lbl 15 `"Rotuma"', add
label define fj07a_bplprov_lbl 22 `"Australia"', add
label define fj07a_bplprov_lbl 23 `"New Zealand"', add
label define fj07a_bplprov_lbl 26 `"Kiribati"', add
label define fj07a_bplprov_lbl 32 `"Solomon Islands"', add
label define fj07a_bplprov_lbl 33 `"Tonga"', add
label define fj07a_bplprov_lbl 34 `"Tuvalu"', add
label define fj07a_bplprov_lbl 36 `"Other Pacific Island Countries"', add
label define fj07a_bplprov_lbl 37 `"China"', add
label define fj07a_bplprov_lbl 38 `"India"', add
label define fj07a_bplprov_lbl 39 `"Japan"', add
label define fj07a_bplprov_lbl 41 `"South Korea"', add
label define fj07a_bplprov_lbl 42 `"Other Asian Countries"', add
label define fj07a_bplprov_lbl 52 `"UK"', add
label define fj07a_bplprov_lbl 55 `"USA"', add
label define fj07a_bplprov_lbl 90 `"Other Countries"', add
label values fj07a_bplprov fj07a_bplprov_lbl

label define fj07a_bpltik_lbl 0101 `"Ba"'
label define fj07a_bpltik_lbl 0102 `"Magodro"', add
label define fj07a_bpltik_lbl 0103 `"Nadi"', add
label define fj07a_bpltik_lbl 0104 `"Naviti"', add
label define fj07a_bpltik_lbl 0105 `"Nawaka"', add
label define fj07a_bpltik_lbl 0106 `"Tavua"', add
label define fj07a_bpltik_lbl 0107 `"Vuda"', add
label define fj07a_bpltik_lbl 0108 `"Yasawa"', add
label define fj07a_bpltik_lbl 0201 `"Bua"', add
label define fj07a_bpltik_lbl 0202 `"Vuya"', add
label define fj07a_bpltik_lbl 0203 `"Wainunu"', add
label define fj07a_bpltik_lbl 0301 `"Cakaudrove"', add
label define fj07a_bpltik_lbl 0302 `"Nasavusavu"', add
label define fj07a_bpltik_lbl 0303 `"Rabi"', add
label define fj07a_bpltik_lbl 0304 `"Saqani"', add
label define fj07a_bpltik_lbl 0305 `"Tunuloa"', add
label define fj07a_bpltik_lbl 0306 `"Vaturova"', add
label define fj07a_bpltik_lbl 0307 `"Wailevu"', add
label define fj07a_bpltik_lbl 0308 `"Wainikeli"', add
label define fj07a_bpltik_lbl 0401 `"Nabukelevu"', add
label define fj07a_bpltik_lbl 0402 `"Naceva"', add
label define fj07a_bpltik_lbl 0403 `"Nakasaleka"', add
label define fj07a_bpltik_lbl 0404 `"Tavuki"', add
label define fj07a_bpltik_lbl 0501 `"Cicia"', add
label define fj07a_bpltik_lbl 0502 `"Kabara"', add
label define fj07a_bpltik_lbl 0503 `"Lakeba"', add
label define fj07a_bpltik_lbl 0504 `"Lomaloma"', add
label define fj07a_bpltik_lbl 0505 `"Matuku"', add
label define fj07a_bpltik_lbl 0506 `"Moala"', add
label define fj07a_bpltik_lbl 0507 `"Moce"', add
label define fj07a_bpltik_lbl 0508 `"Mualevu"', add
label define fj07a_bpltik_lbl 0509 `"Nayau"', add
label define fj07a_bpltik_lbl 0510 `"Oneata"', add
label define fj07a_bpltik_lbl 0511 `"Ono"', add
label define fj07a_bpltik_lbl 0512 `"Totoya"', add
label define fj07a_bpltik_lbl 0513 `"Vulaga"', add
label define fj07a_bpltik_lbl 0514 `"Other islands"', add
label define fj07a_bpltik_lbl 0601 `"Batiki"', add
label define fj07a_bpltik_lbl 0602 `"Gau"', add
label define fj07a_bpltik_lbl 0603 `"Koro"', add
label define fj07a_bpltik_lbl 0604 `"Nairai"', add
label define fj07a_bpltik_lbl 0605 `"Ovalau"', add
label define fj07a_bpltik_lbl 0606 `"Lomaiviti other islands"', add
label define fj07a_bpltik_lbl 0701 `"Cikobia"', add
label define fj07a_bpltik_lbl 0702 `"Dogotuki"', add
label define fj07a_bpltik_lbl 0703 `"Labasa"', add
label define fj07a_bpltik_lbl 0704 `"Macuata"', add
label define fj07a_bpltik_lbl 0705 `"Sasa"', add
label define fj07a_bpltik_lbl 0801 `"Baravi"', add
label define fj07a_bpltik_lbl 0802 `"Cuvu"', add
label define fj07a_bpltik_lbl 0803 `"Malolo"', add
label define fj07a_bpltik_lbl 0804 `"Malomalo"', add
label define fj07a_bpltik_lbl 0805 `"Nasigatoka"', add
label define fj07a_bpltik_lbl 0806 `"Navosa"', add
label define fj07a_bpltik_lbl 0807 `"Ruwailevu"', add
label define fj07a_bpltik_lbl 0808 `"Vatulele"', add
label define fj07a_bpltik_lbl 0901 `"Lomaivuna"', add
label define fj07a_bpltik_lbl 0902 `"Matailobau"', add
label define fj07a_bpltik_lbl 0903 `"Naitasiri"', add
label define fj07a_bpltik_lbl 0904 `"Waimaro"', add
label define fj07a_bpltik_lbl 0905 `"Wainimala"', add
label define fj07a_bpltik_lbl 1001 `"Namosi"', add
label define fj07a_bpltik_lbl 1002 `"Veivatuloa"', add
label define fj07a_bpltik_lbl 1003 `"Wainikoro-i-luva"', add
label define fj07a_bpltik_lbl 1101 `"Nakorotubu"', add
label define fj07a_bpltik_lbl 1102 `"Nalawa"', add
label define fj07a_bpltik_lbl 1103 `"Rakiraki"', add
label define fj07a_bpltik_lbl 1104 `"Saivou"', add
label define fj07a_bpltik_lbl 1201 `"Beqa"', add
label define fj07a_bpltik_lbl 1202 `"Noco"', add
label define fj07a_bpltik_lbl 1203 `"Rewa"', add
label define fj07a_bpltik_lbl 1204 `"Suva"', add
label define fj07a_bpltik_lbl 1301 `"Nuku"', add
label define fj07a_bpltik_lbl 1302 `"Serua"', add
label define fj07a_bpltik_lbl 1401 `"Bau"', add
label define fj07a_bpltik_lbl 1402 `"Nakelo"', add
label define fj07a_bpltik_lbl 1403 `"Sawakasa"', add
label define fj07a_bpltik_lbl 1404 `"Verata"', add
label define fj07a_bpltik_lbl 1405 `"Wainibuka"', add
label define fj07a_bpltik_lbl 1501 `"Itumuta"', add
label define fj07a_bpltik_lbl 1502 `"Itutiu"', add
label define fj07a_bpltik_lbl 1503 `"Juju"', add
label define fj07a_bpltik_lbl 1504 `"Malhaha"', add
label define fj07a_bpltik_lbl 1505 `"Noatau"', add
label define fj07a_bpltik_lbl 1506 `"Oinafa"', add
label define fj07a_bpltik_lbl 1507 `"Pepjei"', add
label define fj07a_bpltik_lbl 9000 `"Foreign country"', add
label values fj07a_bpltik fj07a_bpltik_lbl

label define fj07a_bplloc_lbl 00 `"Rural Area"'
label define fj07a_bplloc_lbl 01 `"Suva"', add
label define fj07a_bplloc_lbl 02 `"Lami"', add
label define fj07a_bplloc_lbl 03 `"Nausori"', add
label define fj07a_bplloc_lbl 04 `"Lautoka"', add
label define fj07a_bplloc_lbl 05 `"Nadi"', add
label define fj07a_bplloc_lbl 06 `"Ba"', add
label define fj07a_bplloc_lbl 07 `"Sigatoka"', add
label define fj07a_bplloc_lbl 08 `"Labasa"', add
label define fj07a_bplloc_lbl 09 `"Savusavu"', add
label define fj07a_bplloc_lbl 10 `"Levuka"', add
label define fj07a_bplloc_lbl 11 `"Tavua"', add
label define fj07a_bplloc_lbl 12 `"Rakiraki"', add
label define fj07a_bplloc_lbl 13 `"Vatukoula"', add
label define fj07a_bplloc_lbl 14 `"Navua"', add
label define fj07a_bplloc_lbl 15 `"Korovou"', add
label define fj07a_bplloc_lbl 16 `"Deuba"', add
label define fj07a_bplloc_lbl 17 `"Nabouwalu"', add
label define fj07a_bplloc_lbl 18 `"Seaqaqa"', add
label define fj07a_bplloc_lbl 19 `"Nasinu"', add
label define fj07a_bplloc_lbl 99 `"NIU (not in universe)"', add
label values fj07a_bplloc fj07a_bplloc_lbl

label define fj07a_resprov_lbl 01 `"Ba"'
label define fj07a_resprov_lbl 02 `"Bua"', add
label define fj07a_resprov_lbl 03 `"Cakaudrove"', add
label define fj07a_resprov_lbl 04 `"Kadavu"', add
label define fj07a_resprov_lbl 05 `"Lau"', add
label define fj07a_resprov_lbl 06 `"Lomaiviti"', add
label define fj07a_resprov_lbl 07 `"Macuata"', add
label define fj07a_resprov_lbl 08 `"Nadroga or Navosa"', add
label define fj07a_resprov_lbl 09 `"Naitasiri"', add
label define fj07a_resprov_lbl 10 `"Namosi"', add
label define fj07a_resprov_lbl 11 `"Ra"', add
label define fj07a_resprov_lbl 12 `"Rewa"', add
label define fj07a_resprov_lbl 13 `"Serua"', add
label define fj07a_resprov_lbl 14 `"Tailevu"', add
label define fj07a_resprov_lbl 15 `"Rotuma"', add
label define fj07a_resprov_lbl 22 `"Australia"', add
label define fj07a_resprov_lbl 23 `"New Zealand"', add
label define fj07a_resprov_lbl 26 `"Kiribati"', add
label define fj07a_resprov_lbl 27 `"Marshall Islands"', add
label define fj07a_resprov_lbl 28 `"Nauru"', add
label define fj07a_resprov_lbl 29 `"New Caledonia"', add
label define fj07a_resprov_lbl 30 `"Papua New Guinea"', add
label define fj07a_resprov_lbl 31 `"Samoa"', add
label define fj07a_resprov_lbl 32 `"Solomon Islands"', add
label define fj07a_resprov_lbl 33 `"Tonga"', add
label define fj07a_resprov_lbl 34 `"Tuvalu"', add
label define fj07a_resprov_lbl 35 `"Vanuatu"', add
label define fj07a_resprov_lbl 36 `"Other Pacific Island Countries"', add
label define fj07a_resprov_lbl 37 `"China"', add
label define fj07a_resprov_lbl 38 `"India"', add
label define fj07a_resprov_lbl 39 `"Japan"', add
label define fj07a_resprov_lbl 41 `"South Korea"', add
label define fj07a_resprov_lbl 47 `"Kuwait"', add
label define fj07a_resprov_lbl 48 `"Other Middle East countries"', add
label define fj07a_resprov_lbl 50 `"Germany"', add
label define fj07a_resprov_lbl 55 `"USA"', add
label define fj07a_resprov_lbl 58 `"Liberia"', add
label define fj07a_resprov_lbl 59 `"Sudan"', add
label define fj07a_resprov_lbl 61 `"Other Countries"', add
label values fj07a_resprov fj07a_resprov_lbl

label define fj07a_restik_lbl 0101 `"Ba"'
label define fj07a_restik_lbl 0102 `"Magodro"', add
label define fj07a_restik_lbl 0103 `"Nadi"', add
label define fj07a_restik_lbl 0104 `"Naviti"', add
label define fj07a_restik_lbl 0105 `"Nawaka"', add
label define fj07a_restik_lbl 0106 `"Tavua"', add
label define fj07a_restik_lbl 0107 `"Vuda"', add
label define fj07a_restik_lbl 0108 `"Yasawa"', add
label define fj07a_restik_lbl 0201 `"Bua"', add
label define fj07a_restik_lbl 0202 `"Vuya"', add
label define fj07a_restik_lbl 0203 `"Wainunu"', add
label define fj07a_restik_lbl 0301 `"Cakaudrove"', add
label define fj07a_restik_lbl 0302 `"Nasavusavu"', add
label define fj07a_restik_lbl 0303 `"Rabi"', add
label define fj07a_restik_lbl 0304 `"Saqani"', add
label define fj07a_restik_lbl 0305 `"Tunuloa"', add
label define fj07a_restik_lbl 0306 `"Vaturova"', add
label define fj07a_restik_lbl 0307 `"Wailevu"', add
label define fj07a_restik_lbl 0308 `"Wainikeli"', add
label define fj07a_restik_lbl 0401 `"Nabukelevu"', add
label define fj07a_restik_lbl 0402 `"Naceva"', add
label define fj07a_restik_lbl 0403 `"Nakasaleka"', add
label define fj07a_restik_lbl 0404 `"Tavuki"', add
label define fj07a_restik_lbl 0501 `"Cicia"', add
label define fj07a_restik_lbl 0502 `"Kabara"', add
label define fj07a_restik_lbl 0503 `"Lakeba"', add
label define fj07a_restik_lbl 0504 `"Lomaloma"', add
label define fj07a_restik_lbl 0505 `"Matuku"', add
label define fj07a_restik_lbl 0506 `"Moala"', add
label define fj07a_restik_lbl 0507 `"Moce"', add
label define fj07a_restik_lbl 0508 `"Mualevu"', add
label define fj07a_restik_lbl 0509 `"Nayau"', add
label define fj07a_restik_lbl 0510 `"Oneata"', add
label define fj07a_restik_lbl 0511 `"Ono"', add
label define fj07a_restik_lbl 0512 `"Totoya"', add
label define fj07a_restik_lbl 0513 `"Vulaga"', add
label define fj07a_restik_lbl 0514 `"Other islands"', add
label define fj07a_restik_lbl 0601 `"Batiki"', add
label define fj07a_restik_lbl 0602 `"Gau"', add
label define fj07a_restik_lbl 0603 `"Koro"', add
label define fj07a_restik_lbl 0604 `"Nairai"', add
label define fj07a_restik_lbl 0605 `"Ovalau"', add
label define fj07a_restik_lbl 0606 `"Lomaiviti other islands"', add
label define fj07a_restik_lbl 0701 `"Cikobia"', add
label define fj07a_restik_lbl 0702 `"Dogotuki"', add
label define fj07a_restik_lbl 0703 `"Labasa"', add
label define fj07a_restik_lbl 0704 `"Macuata"', add
label define fj07a_restik_lbl 0705 `"Sasa"', add
label define fj07a_restik_lbl 0801 `"Baravi"', add
label define fj07a_restik_lbl 0802 `"Cuvu"', add
label define fj07a_restik_lbl 0803 `"Malolo"', add
label define fj07a_restik_lbl 0804 `"Malomalo"', add
label define fj07a_restik_lbl 0805 `"Nasigatoka"', add
label define fj07a_restik_lbl 0806 `"Navosa"', add
label define fj07a_restik_lbl 0807 `"Ruwailevu"', add
label define fj07a_restik_lbl 0808 `"Vatulele"', add
label define fj07a_restik_lbl 0901 `"Lomaivuna"', add
label define fj07a_restik_lbl 0902 `"Matailobau"', add
label define fj07a_restik_lbl 0903 `"Naitasiri"', add
label define fj07a_restik_lbl 0904 `"Waimaro"', add
label define fj07a_restik_lbl 0905 `"Wainimala"', add
label define fj07a_restik_lbl 1001 `"Namosi"', add
label define fj07a_restik_lbl 1002 `"Veivatuloa"', add
label define fj07a_restik_lbl 1003 `"Wainikoro-i-luva"', add
label define fj07a_restik_lbl 1101 `"Nakorotubu"', add
label define fj07a_restik_lbl 1102 `"Nalawa"', add
label define fj07a_restik_lbl 1103 `"Rakiraki"', add
label define fj07a_restik_lbl 1104 `"Saivou"', add
label define fj07a_restik_lbl 1201 `"Beqa"', add
label define fj07a_restik_lbl 1202 `"Noco"', add
label define fj07a_restik_lbl 1203 `"Rewa"', add
label define fj07a_restik_lbl 1204 `"Suva"', add
label define fj07a_restik_lbl 1301 `"Nuku"', add
label define fj07a_restik_lbl 1302 `"Serua"', add
label define fj07a_restik_lbl 1401 `"Bau"', add
label define fj07a_restik_lbl 1402 `"Nakelo"', add
label define fj07a_restik_lbl 1403 `"Sawakasa"', add
label define fj07a_restik_lbl 1404 `"Verata"', add
label define fj07a_restik_lbl 1405 `"Wainibuka"', add
label define fj07a_restik_lbl 1502 `"Itutiu"', add
label define fj07a_restik_lbl 1503 `"Juju"', add
label define fj07a_restik_lbl 1505 `"Noatau"', add
label define fj07a_restik_lbl 1507 `"Pepjei"', add
label define fj07a_restik_lbl 1599 `"Other tikina, Rotuma district"', add
label define fj07a_restik_lbl 9000 `"Foreign country"', add
label values fj07a_restik fj07a_restik_lbl

label define fj07a_resloc_lbl 00 `"Rural area"'
label define fj07a_resloc_lbl 01 `"Suva"', add
label define fj07a_resloc_lbl 02 `"Lami"', add
label define fj07a_resloc_lbl 03 `"Nausori"', add
label define fj07a_resloc_lbl 04 `"Lautoka"', add
label define fj07a_resloc_lbl 05 `"Nadi"', add
label define fj07a_resloc_lbl 06 `"Ba"', add
label define fj07a_resloc_lbl 07 `"Sigatoka"', add
label define fj07a_resloc_lbl 08 `"Labasa"', add
label define fj07a_resloc_lbl 09 `"Savusavu"', add
label define fj07a_resloc_lbl 10 `"Levuka"', add
label define fj07a_resloc_lbl 11 `"Tavua"', add
label define fj07a_resloc_lbl 12 `"Rakiraki"', add
label define fj07a_resloc_lbl 13 `"Vatukoula"', add
label define fj07a_resloc_lbl 14 `"Navua"', add
label define fj07a_resloc_lbl 15 `"Korovou"', add
label define fj07a_resloc_lbl 16 `"Deuba"', add
label define fj07a_resloc_lbl 17 `"Nabouwalu"', add
label define fj07a_resloc_lbl 18 `"Seaqaqa"', add
label define fj07a_resloc_lbl 19 `"Nasinu"', add
label define fj07a_resloc_lbl 99 `"NIU (not in universe)"', add
label values fj07a_resloc fj07a_resloc_lbl

label define fj07a_prov5yr_lbl 01 `"Ba"'
label define fj07a_prov5yr_lbl 02 `"Bua"', add
label define fj07a_prov5yr_lbl 03 `"Cakaudrove"', add
label define fj07a_prov5yr_lbl 04 `"Kadavu"', add
label define fj07a_prov5yr_lbl 05 `"Lau"', add
label define fj07a_prov5yr_lbl 06 `"Lomaiviti"', add
label define fj07a_prov5yr_lbl 07 `"Macuata"', add
label define fj07a_prov5yr_lbl 08 `"Nadroga orNavosa"', add
label define fj07a_prov5yr_lbl 09 `"Naitasiri"', add
label define fj07a_prov5yr_lbl 10 `"Namosi"', add
label define fj07a_prov5yr_lbl 11 `"Ra"', add
label define fj07a_prov5yr_lbl 12 `"Rewa"', add
label define fj07a_prov5yr_lbl 13 `"Serua"', add
label define fj07a_prov5yr_lbl 14 `"Tailevu"', add
label define fj07a_prov5yr_lbl 15 `"Rotuma"', add
label define fj07a_prov5yr_lbl 22 `"Australia"', add
label define fj07a_prov5yr_lbl 23 `"New Zealand"', add
label define fj07a_prov5yr_lbl 24 `"Cook Island"', add
label define fj07a_prov5yr_lbl 25 `"French Polynesia"', add
label define fj07a_prov5yr_lbl 26 `"Kiribati"', add
label define fj07a_prov5yr_lbl 27 `"Marshall Islands"', add
label define fj07a_prov5yr_lbl 28 `"Nauru"', add
label define fj07a_prov5yr_lbl 29 `"New Caledonia"', add
label define fj07a_prov5yr_lbl 30 `"Papua New Guinea"', add
label define fj07a_prov5yr_lbl 31 `"Samoa"', add
label define fj07a_prov5yr_lbl 32 `"Solomon Islands"', add
label define fj07a_prov5yr_lbl 33 `"Tonga"', add
label define fj07a_prov5yr_lbl 34 `"Tuvalu"', add
label define fj07a_prov5yr_lbl 35 `"Vanuatu"', add
label define fj07a_prov5yr_lbl 36 `"Other Pacific Island Countries"', add
label define fj07a_prov5yr_lbl 37 `"China"', add
label define fj07a_prov5yr_lbl 38 `"India"', add
label define fj07a_prov5yr_lbl 39 `"Japan"', add
label define fj07a_prov5yr_lbl 40 `"Malaysia"', add
label define fj07a_prov5yr_lbl 41 `"South Korea"', add
label define fj07a_prov5yr_lbl 42 `"Other Asian Countries"', add
label define fj07a_prov5yr_lbl 44 `"Egypt"', add
label define fj07a_prov5yr_lbl 45 `"Iraq"', add
label define fj07a_prov5yr_lbl 46 `"Israel"', add
label define fj07a_prov5yr_lbl 47 `"Kuwait"', add
label define fj07a_prov5yr_lbl 48 `"Other Middle East countries"', add
label define fj07a_prov5yr_lbl 49 `"France"', add
label define fj07a_prov5yr_lbl 50 `"Germany"', add
label define fj07a_prov5yr_lbl 51 `"Italy"', add
label define fj07a_prov5yr_lbl 52 `"UK"', add
label define fj07a_prov5yr_lbl 53 `"Other European Countries"', add
label define fj07a_prov5yr_lbl 54 `"Canada"', add
label define fj07a_prov5yr_lbl 55 `"USA"', add
label define fj07a_prov5yr_lbl 56 `"Other North American Countries"', add
label define fj07a_prov5yr_lbl 57 `"South America"', add
label define fj07a_prov5yr_lbl 58 `"Liberia"', add
label define fj07a_prov5yr_lbl 60 `"Other African Countries"', add
label define fj07a_prov5yr_lbl 61 `"Other Countries"', add
label define fj07a_prov5yr_lbl 98 `"Unknown"', add
label define fj07a_prov5yr_lbl 99 `"NIU (not in universe)"', add
label values fj07a_prov5yr fj07a_prov5yr_lbl

label define fj07a_tik5yr_lbl 0101 `"Ba"'
label define fj07a_tik5yr_lbl 0102 `"Magodro"', add
label define fj07a_tik5yr_lbl 0103 `"Nadi"', add
label define fj07a_tik5yr_lbl 0104 `"Naviti"', add
label define fj07a_tik5yr_lbl 0105 `"Nawaka"', add
label define fj07a_tik5yr_lbl 0106 `"Tavua"', add
label define fj07a_tik5yr_lbl 0107 `"Vuda"', add
label define fj07a_tik5yr_lbl 0108 `"Yasawa"', add
label define fj07a_tik5yr_lbl 0201 `"Bua"', add
label define fj07a_tik5yr_lbl 0202 `"Vuya"', add
label define fj07a_tik5yr_lbl 0203 `"Wainunu"', add
label define fj07a_tik5yr_lbl 0301 `"Cakaudrove"', add
label define fj07a_tik5yr_lbl 0302 `"Nasavusavu"', add
label define fj07a_tik5yr_lbl 0303 `"Rabi"', add
label define fj07a_tik5yr_lbl 0304 `"Saqani"', add
label define fj07a_tik5yr_lbl 0305 `"Tunuloa"', add
label define fj07a_tik5yr_lbl 0306 `"Vaturova"', add
label define fj07a_tik5yr_lbl 0307 `"Wailevu"', add
label define fj07a_tik5yr_lbl 0308 `"Wainikeli"', add
label define fj07a_tik5yr_lbl 0401 `"Nabukelevu"', add
label define fj07a_tik5yr_lbl 0402 `"Naceva"', add
label define fj07a_tik5yr_lbl 0403 `"Nakasaleka"', add
label define fj07a_tik5yr_lbl 0404 `"Tavuki"', add
label define fj07a_tik5yr_lbl 0501 `"Cicia"', add
label define fj07a_tik5yr_lbl 0502 `"Kabara"', add
label define fj07a_tik5yr_lbl 0503 `"Lakeba"', add
label define fj07a_tik5yr_lbl 0504 `"Lomaloma"', add
label define fj07a_tik5yr_lbl 0505 `"Matuku"', add
label define fj07a_tik5yr_lbl 0506 `"Moala"', add
label define fj07a_tik5yr_lbl 0507 `"Moce"', add
label define fj07a_tik5yr_lbl 0508 `"Mualevu"', add
label define fj07a_tik5yr_lbl 0509 `"Nayau"', add
label define fj07a_tik5yr_lbl 0511 `"Ono"', add
label define fj07a_tik5yr_lbl 0512 `"Totoya"', add
label define fj07a_tik5yr_lbl 0513 `"Vulaga"', add
label define fj07a_tik5yr_lbl 0599 `"Other Tikina, Lau district"', add
label define fj07a_tik5yr_lbl 0602 `"Gau"', add
label define fj07a_tik5yr_lbl 0603 `"Koro"', add
label define fj07a_tik5yr_lbl 0604 `"Nairai"', add
label define fj07a_tik5yr_lbl 0605 `"Ovalau"', add
label define fj07a_tik5yr_lbl 0699 `"Other Tikina, Lomaiviti district"', add
label define fj07a_tik5yr_lbl 0701 `"Cikobia"', add
label define fj07a_tik5yr_lbl 0702 `"Dogotuki"', add
label define fj07a_tik5yr_lbl 0703 `"Labasa"', add
label define fj07a_tik5yr_lbl 0704 `"Macuata"', add
label define fj07a_tik5yr_lbl 0705 `"Sasa"', add
label define fj07a_tik5yr_lbl 0801 `"Baravi"', add
label define fj07a_tik5yr_lbl 0802 `"Cuvu"', add
label define fj07a_tik5yr_lbl 0803 `"Malolo"', add
label define fj07a_tik5yr_lbl 0804 `"Malomalo"', add
label define fj07a_tik5yr_lbl 0805 `"Nasigatoka"', add
label define fj07a_tik5yr_lbl 0806 `"Navosa"', add
label define fj07a_tik5yr_lbl 0807 `"Ruwailevu"', add
label define fj07a_tik5yr_lbl 0808 `"Vatulele"', add
label define fj07a_tik5yr_lbl 0901 `"Lomaivuna"', add
label define fj07a_tik5yr_lbl 0902 `"Matailobau"', add
label define fj07a_tik5yr_lbl 0903 `"Naitasiri"', add
label define fj07a_tik5yr_lbl 0904 `"Waimaro"', add
label define fj07a_tik5yr_lbl 0905 `"Wainimala"', add
label define fj07a_tik5yr_lbl 1001 `"Namosi"', add
label define fj07a_tik5yr_lbl 1002 `"Veivatuloa"', add
label define fj07a_tik5yr_lbl 1003 `"Wainikoro-i-luva"', add
label define fj07a_tik5yr_lbl 1101 `"Nakorotubu"', add
label define fj07a_tik5yr_lbl 1102 `"Nalawa"', add
label define fj07a_tik5yr_lbl 1103 `"Rakiraki"', add
label define fj07a_tik5yr_lbl 1104 `"Saivou"', add
label define fj07a_tik5yr_lbl 1201 `"Beqa"', add
label define fj07a_tik5yr_lbl 1202 `"Noco"', add
label define fj07a_tik5yr_lbl 1203 `"Rewa"', add
label define fj07a_tik5yr_lbl 1204 `"Suva"', add
label define fj07a_tik5yr_lbl 1301 `"Nuku"', add
label define fj07a_tik5yr_lbl 1302 `"Serua"', add
label define fj07a_tik5yr_lbl 1401 `"Bau"', add
label define fj07a_tik5yr_lbl 1402 `"Nakelo"', add
label define fj07a_tik5yr_lbl 1403 `"Sawakasa"', add
label define fj07a_tik5yr_lbl 1404 `"Verata"', add
label define fj07a_tik5yr_lbl 1405 `"Wainibuka"', add
label define fj07a_tik5yr_lbl 1502 `"Itutiu"', add
label define fj07a_tik5yr_lbl 1505 `"Noatau"', add
label define fj07a_tik5yr_lbl 1599 `"Other tikina, Rotuma district"', add
label define fj07a_tik5yr_lbl 9000 `"Foreign country"', add
label define fj07a_tik5yr_lbl 9998 `"Unknown"', add
label define fj07a_tik5yr_lbl 9999 `"NIU (not in universe)"', add
label values fj07a_tik5yr fj07a_tik5yr_lbl

label define fj07a_loc5yr_lbl 00 `"Rural Area"'
label define fj07a_loc5yr_lbl 01 `"Suva"', add
label define fj07a_loc5yr_lbl 02 `"Lami"', add
label define fj07a_loc5yr_lbl 03 `"Nausori"', add
label define fj07a_loc5yr_lbl 04 `"Lautoka"', add
label define fj07a_loc5yr_lbl 05 `"Nadi"', add
label define fj07a_loc5yr_lbl 06 `"Ba"', add
label define fj07a_loc5yr_lbl 07 `"Sigatoka"', add
label define fj07a_loc5yr_lbl 08 `"Labasa"', add
label define fj07a_loc5yr_lbl 09 `"Savusavu"', add
label define fj07a_loc5yr_lbl 10 `"Levuka"', add
label define fj07a_loc5yr_lbl 11 `"Tavua"', add
label define fj07a_loc5yr_lbl 12 `"Rakiraki"', add
label define fj07a_loc5yr_lbl 13 `"Vatukoula"', add
label define fj07a_loc5yr_lbl 14 `"Navua"', add
label define fj07a_loc5yr_lbl 15 `"Korovou"', add
label define fj07a_loc5yr_lbl 16 `"Deuba"', add
label define fj07a_loc5yr_lbl 17 `"Nabouwalu"', add
label define fj07a_loc5yr_lbl 18 `"Seaqaqa"', add
label define fj07a_loc5yr_lbl 19 `"Nasinu"', add
label define fj07a_loc5yr_lbl 99 `"NIU (not in universe)"', add
label values fj07a_loc5yr fj07a_loc5yr_lbl

label define fj07a_origtik_lbl 0101 `"Ba"'
label define fj07a_origtik_lbl 0102 `"Magodro"', add
label define fj07a_origtik_lbl 0103 `"Nadi"', add
label define fj07a_origtik_lbl 0104 `"Naviti"', add
label define fj07a_origtik_lbl 0105 `"Nawaka"', add
label define fj07a_origtik_lbl 0106 `"Tavua"', add
label define fj07a_origtik_lbl 0107 `"Vuda"', add
label define fj07a_origtik_lbl 0108 `"Yasawa"', add
label define fj07a_origtik_lbl 0201 `"Bua"', add
label define fj07a_origtik_lbl 0202 `"Vuya"', add
label define fj07a_origtik_lbl 0203 `"Wainunu"', add
label define fj07a_origtik_lbl 0301 `"Cakaudrove"', add
label define fj07a_origtik_lbl 0302 `"Nasavusavu"', add
label define fj07a_origtik_lbl 0303 `"Rabi"', add
label define fj07a_origtik_lbl 0304 `"Saqani"', add
label define fj07a_origtik_lbl 0305 `"Tunuloa"', add
label define fj07a_origtik_lbl 0306 `"Vaturova"', add
label define fj07a_origtik_lbl 0307 `"Wailevu"', add
label define fj07a_origtik_lbl 0308 `"Wainikeli"', add
label define fj07a_origtik_lbl 0401 `"Nabukelevu"', add
label define fj07a_origtik_lbl 0402 `"Naceva"', add
label define fj07a_origtik_lbl 0403 `"Nakasaleka"', add
label define fj07a_origtik_lbl 0404 `"Tavuki"', add
label define fj07a_origtik_lbl 0501 `"Cicia"', add
label define fj07a_origtik_lbl 0502 `"Kabara"', add
label define fj07a_origtik_lbl 0503 `"Lakeba"', add
label define fj07a_origtik_lbl 0504 `"Lomaloma"', add
label define fj07a_origtik_lbl 0505 `"Matuku"', add
label define fj07a_origtik_lbl 0506 `"Moala"', add
label define fj07a_origtik_lbl 0507 `"Moce"', add
label define fj07a_origtik_lbl 0508 `"Mualevu"', add
label define fj07a_origtik_lbl 0509 `"Nayau"', add
label define fj07a_origtik_lbl 0511 `"Ono"', add
label define fj07a_origtik_lbl 0512 `"Totoya"', add
label define fj07a_origtik_lbl 0513 `"Vulaga"', add
label define fj07a_origtik_lbl 0599 `"Other Tikina, Lau district"', add
label define fj07a_origtik_lbl 0601 `"Batiki"', add
label define fj07a_origtik_lbl 0602 `"Gau"', add
label define fj07a_origtik_lbl 0603 `"Koro"', add
label define fj07a_origtik_lbl 0604 `"Nairai"', add
label define fj07a_origtik_lbl 0605 `"Ovalau"', add
label define fj07a_origtik_lbl 0606 `"Lomaiviti other islands"', add
label define fj07a_origtik_lbl 0701 `"Cikobia"', add
label define fj07a_origtik_lbl 0702 `"Dogotuki"', add
label define fj07a_origtik_lbl 0703 `"Labasa"', add
label define fj07a_origtik_lbl 0704 `"Macuata"', add
label define fj07a_origtik_lbl 0705 `"Sasa"', add
label define fj07a_origtik_lbl 0801 `"Baravi"', add
label define fj07a_origtik_lbl 0802 `"Cuvu"', add
label define fj07a_origtik_lbl 0803 `"Malolo"', add
label define fj07a_origtik_lbl 0804 `"Malomalo"', add
label define fj07a_origtik_lbl 0805 `"Nasigatoka"', add
label define fj07a_origtik_lbl 0806 `"Navosa"', add
label define fj07a_origtik_lbl 0807 `"Ruwailevu"', add
label define fj07a_origtik_lbl 0808 `"Vatulele"', add
label define fj07a_origtik_lbl 0901 `"Lomaivuna"', add
label define fj07a_origtik_lbl 0902 `"Matailobau"', add
label define fj07a_origtik_lbl 0903 `"Naitasiri"', add
label define fj07a_origtik_lbl 0904 `"Waimaro"', add
label define fj07a_origtik_lbl 0905 `"Wainimala"', add
label define fj07a_origtik_lbl 1001 `"Namosi"', add
label define fj07a_origtik_lbl 1002 `"Veivatuloa"', add
label define fj07a_origtik_lbl 1003 `"Wainikoro-i-luva"', add
label define fj07a_origtik_lbl 1101 `"Nakorotubu"', add
label define fj07a_origtik_lbl 1102 `"Nalawa"', add
label define fj07a_origtik_lbl 1103 `"Rakiraki"', add
label define fj07a_origtik_lbl 1104 `"Saivou"', add
label define fj07a_origtik_lbl 1201 `"Beqa"', add
label define fj07a_origtik_lbl 1202 `"Noco"', add
label define fj07a_origtik_lbl 1203 `"Rewa"', add
label define fj07a_origtik_lbl 1204 `"Suva"', add
label define fj07a_origtik_lbl 1301 `"Nuku"', add
label define fj07a_origtik_lbl 1302 `"Serua"', add
label define fj07a_origtik_lbl 1401 `"Bau"', add
label define fj07a_origtik_lbl 1402 `"Nakelo"', add
label define fj07a_origtik_lbl 1403 `"Sawakasa"', add
label define fj07a_origtik_lbl 1404 `"Verata"', add
label define fj07a_origtik_lbl 1405 `"Wainibuka"', add
label define fj07a_origtik_lbl 1501 `"Itumuta"', add
label define fj07a_origtik_lbl 1502 `"Itutiu"', add
label define fj07a_origtik_lbl 1503 `"Juju"', add
label define fj07a_origtik_lbl 1504 `"Malhaha"', add
label define fj07a_origtik_lbl 1505 `"Noatau"', add
label define fj07a_origtik_lbl 1506 `"Oinafa"', add
label define fj07a_origtik_lbl 1507 `"Pepjei"', add
label define fj07a_origtik_lbl 9999 `"NIU (not in universe)"', add
label values fj07a_origtik fj07a_origtik_lbl

label define fj07a_resstat_lbl 1 `"Fiji citizen"'
label define fj07a_resstat_lbl 2 `"Permit holder"', add
label values fj07a_resstat fj07a_resstat_lbl

label define fj07a_school_lbl 1 `"Full time"'
label define fj07a_school_lbl 2 `"Part time"', add
label define fj07a_school_lbl 3 `"Left school"', add
label define fj07a_school_lbl 4 `"Never attended"', add
label values fj07a_school fj07a_school_lbl

label define fj07a_edattend_lbl 00 `"Kindergarten"'
label define fj07a_edattend_lbl 01 `"Primary - Class 1"', add
label define fj07a_edattend_lbl 02 `"Primary - Class 2"', add
label define fj07a_edattend_lbl 03 `"Primary - Class 3"', add
label define fj07a_edattend_lbl 04 `"Primary - Class 4"', add
label define fj07a_edattend_lbl 05 `"Primary - Class 5"', add
label define fj07a_edattend_lbl 06 `"Primary - Class 6"', add
label define fj07a_edattend_lbl 09 `"Secondary - Form 1"', add
label define fj07a_edattend_lbl 10 `"Secondary - Form 2"', add
label define fj07a_edattend_lbl 11 `"Secondary - Form 3"', add
label define fj07a_edattend_lbl 12 `"Secondary - Form 4"', add
label define fj07a_edattend_lbl 13 `"Secondary - Form 5"', add
label define fj07a_edattend_lbl 14 `"Secondary - Form 6"', add
label define fj07a_edattend_lbl 15 `"Post-Secondary (Form 7 or Foundation)"', add
label define fj07a_edattend_lbl 17 `"Certificate - Year 1"', add
label define fj07a_edattend_lbl 18 `"Certificate - Year 2+"', add
label define fj07a_edattend_lbl 20 `"Diploma - Year 1"', add
label define fj07a_edattend_lbl 21 `"Diploma - Year 2"', add
label define fj07a_edattend_lbl 22 `"Diploma - Year 3+"', add
label define fj07a_edattend_lbl 24 `"Degree - Year 1"', add
label define fj07a_edattend_lbl 25 `"Degree - Year 2"', add
label define fj07a_edattend_lbl 26 `"Degree - Year 3"', add
label define fj07a_edattend_lbl 27 `"Degree - Year 4+"', add
label define fj07a_edattend_lbl 28 `"Post Grad Certificate or Diploma"', add
label define fj07a_edattend_lbl 35 `"Masters or PhD"', add
label define fj07a_edattend_lbl 40 `"Other"', add
label define fj07a_edattend_lbl 99 `"NIU (not in universe)"', add
label values fj07a_edattend fj07a_edattend_lbl

label define fj07a_edattain_lbl 00 `"Kindergarten"'
label define fj07a_edattain_lbl 01 `"Primary - Class 1"', add
label define fj07a_edattain_lbl 02 `"Primary - Class 2"', add
label define fj07a_edattain_lbl 03 `"Primary - Class 3"', add
label define fj07a_edattain_lbl 04 `"Primary - Class 4"', add
label define fj07a_edattain_lbl 05 `"Primary - Class 5"', add
label define fj07a_edattain_lbl 06 `"Primary - Class 6"', add
label define fj07a_edattain_lbl 09 `"Secondary - Form 1"', add
label define fj07a_edattain_lbl 10 `"Secondary - Form 2"', add
label define fj07a_edattain_lbl 11 `"Secondary - Form 3"', add
label define fj07a_edattain_lbl 12 `"Secondary - Form 4"', add
label define fj07a_edattain_lbl 13 `"Secondary - Form 5"', add
label define fj07a_edattain_lbl 14 `"Secondary - Form 6"', add
label define fj07a_edattain_lbl 15 `"Post-Secondary (Form 7 or Foundation)"', add
label define fj07a_edattain_lbl 17 `"Certificate - Year 1"', add
label define fj07a_edattain_lbl 18 `"Certificate - Year 2+"', add
label define fj07a_edattain_lbl 19 `"Diploma - Year 1"', add
label define fj07a_edattain_lbl 20 `"Diploma - Year 2+"', add
label define fj07a_edattain_lbl 24 `"Degree"', add
label define fj07a_edattain_lbl 28 `"Post Grad Certificate or Diploma"', add
label define fj07a_edattain_lbl 35 `"Masters and PhD"', add
label define fj07a_edattain_lbl 40 `"Other"', add
label define fj07a_edattain_lbl 99 `"NIU (not in universe)"', add
label values fj07a_edattain fj07a_edattain_lbl

label define fj07a_edinst_lbl 01 `"University of the South Pacific"'
label define fj07a_edinst_lbl 03 `"Fiji Institute of Technology (FIT)"', add
label define fj07a_edinst_lbl 04 `"Fiji School of Medicine"', add
label define fj07a_edinst_lbl 05 `"Fiji School of Nursing (FSN)"', add
label define fj07a_edinst_lbl 06 `"FCAE (Advanced College)"', add
label define fj07a_edinst_lbl 07 `"Fiji College of Agriculture (FCA)"', add
label define fj07a_edinst_lbl 08 `"LTC  or NTC (Teachers College)"', add
label define fj07a_edinst_lbl 09 `"APTECH"', add
label define fj07a_edinst_lbl 10 `"Corpus Christie"', add
label define fj07a_edinst_lbl 11 `"Davuilevu Theological"', add
label define fj07a_edinst_lbl 12 `"Fulton College"', add
label define fj07a_edinst_lbl 15 `"NZPTC"', add
label define fj07a_edinst_lbl 20 `"TPAF  or FNTC"', add
label define fj07a_edinst_lbl 21 `"Other Local Institutions"', add
label define fj07a_edinst_lbl 22 `"Australia"', add
label define fj07a_edinst_lbl 23 `"New Zealand"', add
label define fj07a_edinst_lbl 38 `"India"', add
label define fj07a_edinst_lbl 42 `"Other Asian Countries"', add
label define fj07a_edinst_lbl 52 `"UK"', add
label define fj07a_edinst_lbl 55 `"USA"', add
label define fj07a_edinst_lbl 90 `"Other foreign"', add
label define fj07a_edinst_lbl 99 `"NIU (not in universe)"', add
label values fj07a_edinst fj07a_edinst_lbl

label define fj07a_travel_lbl 01 `"Private car"'
label define fj07a_travel_lbl 02 `"Share car"', add
label define fj07a_travel_lbl 03 `"Company car"', add
label define fj07a_travel_lbl 04 `"Private boat"', add
label define fj07a_travel_lbl 05 `"Taxi"', add
label define fj07a_travel_lbl 06 `"Bus"', add
label define fj07a_travel_lbl 07 `"Minibus"', add
label define fj07a_travel_lbl 08 `"Motor cycle  or bike"', add
label define fj07a_travel_lbl 09 `"On foot"', add
label define fj07a_travel_lbl 10 `"Other"', add
label values fj07a_travel fj07a_travel_lbl

label define fj07a_wklastwk_lbl 1 `"Yes"'
label define fj07a_wklastwk_lbl 2 `"No"', add
label define fj07a_wklastwk_lbl 9 `"NIU (not in universe)"', add
label values fj07a_wklastwk fj07a_wklastwk_lbl

label define fj07a_worktype_lbl 1 `"Work for money"'
label define fj07a_worktype_lbl 2 `"Work for sale"', add
label define fj07a_worktype_lbl 3 `"Work for consumption"', add
label define fj07a_worktype_lbl 4 `"Money and sale (1,2)"', add
label define fj07a_worktype_lbl 5 `"Money, sale and consumption (1,2,3)"', add
label define fj07a_worktype_lbl 6 `"Money and consumption (1,3)"', add
label define fj07a_worktype_lbl 7 `"Sale and consumption (2,3)"', add
label define fj07a_worktype_lbl 8 `"Unknown"', add
label define fj07a_worktype_lbl 9 `"NIU (not in universe)"', add
label values fj07a_worktype fj07a_worktype_lbl

label define fj07a_occ1_lbl 00 `"Armed forces"'
label define fj07a_occ1_lbl 01 `"Legislators, senior officials and managers"', add
label define fj07a_occ1_lbl 02 `"Professionals"', add
label define fj07a_occ1_lbl 03 `"Technicians and associate professionals"', add
label define fj07a_occ1_lbl 04 `"Clerks"', add
label define fj07a_occ1_lbl 05 `"Service workers"', add
label define fj07a_occ1_lbl 06 `"Skilled agricultrue and fishery workers"', add
label define fj07a_occ1_lbl 07 `"Craft workers"', add
label define fj07a_occ1_lbl 08 `"Plant and machine operators"', add
label define fj07a_occ1_lbl 09 `"Elementary workers"', add
label define fj07a_occ1_lbl 99 `"NIU (not in universe)"', add
label values fj07a_occ1 fj07a_occ1_lbl

label define fj07a_occ3_lbl 011 `"Armed forces"'
label define fj07a_occ3_lbl 112 `"Senior government officials"', add
label define fj07a_occ3_lbl 121 `"Directors, chief executive officers"', add
label define fj07a_occ3_lbl 122 `"Managers, supervisors"', add
label define fj07a_occ3_lbl 133 `"Product managers"', add
label define fj07a_occ3_lbl 144 `"Department managers"', add
label define fj07a_occ3_lbl 222 `"Doctors, health professionals"', add
label define fj07a_occ3_lbl 223 `"Nursing and midwifery"', add
label define fj07a_occ3_lbl 231 `"Teaching professionals"', add
label define fj07a_occ3_lbl 232 `"Secondary school teachers"', add
label define fj07a_occ3_lbl 233 `"Primary school teachers"', add
label define fj07a_occ3_lbl 241 `"Accountants, business professionals"', add
label define fj07a_occ3_lbl 242 `"Legal professionals"', add
label define fj07a_occ3_lbl 243 `"Library archivists"', add
label define fj07a_occ3_lbl 245 `"Writers, other arts"', add
label define fj07a_occ3_lbl 246 `"Religion professionals"', add
label define fj07a_occ3_lbl 299 `"Professionals, not elsewhere classfied"', add
label define fj07a_occ3_lbl 311 `"Physical engineering technicians"', add
label define fj07a_occ3_lbl 312 `"Computer technicians"', add
label define fj07a_occ3_lbl 313 `"Optical technicians"', add
label define fj07a_occ3_lbl 314 `"Ship, aircraft technicians"', add
label define fj07a_occ3_lbl 315 `"Safety inspectors"', add
label define fj07a_occ3_lbl 321 `"Life science technicians"', add
label define fj07a_occ3_lbl 322 `"Health assocciate professionals"', add
label define fj07a_occ3_lbl 323 `"Nursing professionals"', add
label define fj07a_occ3_lbl 331 `"Sales assisstant professionals"', add
label define fj07a_occ3_lbl 332 `"Business agents"', add
label define fj07a_occ3_lbl 333 `"Admin assisstant professionals"', add
label define fj07a_occ3_lbl 334 `"Customs, tax agents"', add
label define fj07a_occ3_lbl 336 `"Social assistance professionals"', add
label define fj07a_occ3_lbl 337 `"Arts assistance professionals"', add
label define fj07a_occ3_lbl 338 `"Religion assistance professionals"', add
label define fj07a_occ3_lbl 411 `"Secrectary stenographers"', add
label define fj07a_occ3_lbl 412 `"Accounting, statistics clerks"', add
label define fj07a_occ3_lbl 413 `"Record clerks"', add
label define fj07a_occ3_lbl 414 `"Library, mail clerks"', add
label define fj07a_occ3_lbl 419 `"Other clerks"', add
label define fj07a_occ3_lbl 421 `"Cashiers, tellers"', add
label define fj07a_occ3_lbl 422 `"Client information clerks"', add
label define fj07a_occ3_lbl 511 `"Travel relation workers"', add
label define fj07a_occ3_lbl 512 `"Cooks,waiters,hotel-keepers"', add
label define fj07a_occ3_lbl 513 `"Personal care workers"', add
label define fj07a_occ3_lbl 514 `"Personal service workers"', add
label define fj07a_occ3_lbl 515 `"Police personnel, fire officers"', add
label define fj07a_occ3_lbl 521 `"Shop sales personnel"', add
label define fj07a_occ3_lbl 522 `"Marketing salesperson"', add
label define fj07a_occ3_lbl 611 `"Crop farmers"', add
label define fj07a_occ3_lbl 612 `"Animal farmers"', add
label define fj07a_occ3_lbl 615 `"Loggers, forestry workers"', add
label define fj07a_occ3_lbl 616 `"Fishermen"', add
label define fj07a_occ3_lbl 621 `"Subsistence workers"', add
label define fj07a_occ3_lbl 711 `"Miners quarry workers"', add
label define fj07a_occ3_lbl 712 `"Building related workers"', add
label define fj07a_occ3_lbl 713 `"Building finishers"', add
label define fj07a_occ3_lbl 721 `"Metal workers"', add
label define fj07a_occ3_lbl 723 `"Mechanics fitters"', add
label define fj07a_occ3_lbl 724 `"Electricals and electronics fitters"', add
label define fj07a_occ3_lbl 732 `"Glass and potters"', add
label define fj07a_occ3_lbl 733 `"Handicraft workers"', add
label define fj07a_occ3_lbl 734 `"Printers"', add
label define fj07a_occ3_lbl 741 `"Butchers, bakers"', add
label define fj07a_occ3_lbl 742 `"Cabinet makers"', add
label define fj07a_occ3_lbl 743 `"Garment workers"', add
label define fj07a_occ3_lbl 799 `"Craft workers, not elsewhere classified"', add
label define fj07a_occ3_lbl 813 `"Wood plant opererators"', add
label define fj07a_occ3_lbl 815 `"Power plant operators"', add
label define fj07a_occ3_lbl 821 `"Metal machinery operators"', add
label define fj07a_occ3_lbl 826 `"Leather machinery operators"', add
label define fj07a_occ3_lbl 827 `"Food machinery operators"', add
label define fj07a_occ3_lbl 831 `"Loco drivers"', add
label define fj07a_occ3_lbl 832 `"Machine, vehical driver"', add
label define fj07a_occ3_lbl 833 `"Mobile plant driver"', add
label define fj07a_occ3_lbl 834 `"Ships deck workers"', add
label define fj07a_occ3_lbl 899 `"Plant and machine operators, not elsewhere classified"', add
label define fj07a_occ3_lbl 911 `"Street vendors"', add
label define fj07a_occ3_lbl 913 `"Domestic workers"', add
label define fj07a_occ3_lbl 914 `"Building caretakers"', add
label define fj07a_occ3_lbl 915 `"Porters related workers"', add
label define fj07a_occ3_lbl 921 `"Agriculture and fishery labourers"', add
label define fj07a_occ3_lbl 931 `"Construction and mining labourers"', add
label define fj07a_occ3_lbl 932 `"Manufacturing labourers"', add
label define fj07a_occ3_lbl 933 `"Freight handlers"', add
label define fj07a_occ3_lbl 949 `"Elementary workers, not elsewhere classified"', add
label define fj07a_occ3_lbl 990 `"Other occupations, response suppressed"', add
label define fj07a_occ3_lbl 999 `"NIU (not in universe)"', add
label values fj07a_occ3 fj07a_occ3_lbl

label define fj07a_ind2_lbl 001 `"Agriculture"'
label define fj07a_ind2_lbl 002 `"Forestry and logging"', add
label define fj07a_ind2_lbl 005 `"Fishing excluding subsistence fishery"', add
label define fj07a_ind2_lbl 013 `"Metal ore mining"', add
label define fj07a_ind2_lbl 014 `"Other mining"', add
label define fj07a_ind2_lbl 015 `"Manufacturing of food beverages and tobacco"', add
label define fj07a_ind2_lbl 017 `"Textiles wearing apparel and leather industry"', add
label define fj07a_ind2_lbl 019 `"Manufacture of wood and wood products including furniture"', add
label define fj07a_ind2_lbl 021 `"Manufacture of paper and paper products, printing, publishing"', add
label define fj07a_ind2_lbl 024 `"Manufacture of checmicals and chemical products"', add
label define fj07a_ind2_lbl 026 `"Manufacture of cement, cement products, and non-metal mineral"', add
label define fj07a_ind2_lbl 027 `"Basic metal industries"', add
label define fj07a_ind2_lbl 028 `"Manufacture of machinery except electronics"', add
label define fj07a_ind2_lbl 034 `"Other manufacturing industries"', add
label define fj07a_ind2_lbl 040 `"Electricity"', add
label define fj07a_ind2_lbl 041 `"Water works and supply"', add
label define fj07a_ind2_lbl 045 `"Construction"', add
label define fj07a_ind2_lbl 050 `"Wholesale trade"', add
label define fj07a_ind2_lbl 052 `"Retail trade"', add
label define fj07a_ind2_lbl 055 `"Restaurants and hotels"', add
label define fj07a_ind2_lbl 060 `"Transport"', add
label define fj07a_ind2_lbl 061 `"Communication services"', add
label define fj07a_ind2_lbl 065 `"Financial institutions"', add
label define fj07a_ind2_lbl 066 `"Insurance"', add
label define fj07a_ind2_lbl 067 `"Real estate and business services"', add
label define fj07a_ind2_lbl 071 `"Public administration and related services"', add
label define fj07a_ind2_lbl 074 `"Sanitary and similar services"', add
label define fj07a_ind2_lbl 080 `"Education services"', add
label define fj07a_ind2_lbl 085 `"Recreational and cultural services"', add
label define fj07a_ind2_lbl 090 `"Personal and household services"', add
label define fj07a_ind2_lbl 099 `"International and other extra-territorial bodies"', add
label define fj07a_ind2_lbl 998 `"Unknown"', add
label define fj07a_ind2_lbl 999 `"NIU (not in universe)"', add
label values fj07a_ind2 fj07a_ind2_lbl

label define fj07a_workloc_lbl 1 `"Formal"'
label define fj07a_workloc_lbl 2 `"Informal"', add
label define fj07a_workloc_lbl 9 `"NIU (not in universe)"', add
label values fj07a_workloc fj07a_workloc_lbl

label define fj07a_classwkr_lbl 1 `"Employee"'
label define fj07a_classwkr_lbl 2 `"Employer"', add
label define fj07a_classwkr_lbl 3 `"Self-employed"', add
label define fj07a_classwkr_lbl 4 `"Unpaid family worker"', add
label define fj07a_classwkr_lbl 9 `"NIU (not in universe)"', add
label values fj07a_classwkr fj07a_classwkr_lbl

label define fj07a_payfreq_lbl 1 `"Daily"'
label define fj07a_payfreq_lbl 2 `"Weekly"', add
label define fj07a_payfreq_lbl 3 `"Fortnightly"', add
label define fj07a_payfreq_lbl 4 `"Monthly"', add
label define fj07a_payfreq_lbl 5 `"By sale or job done"', add
label define fj07a_payfreq_lbl 6 `"Volunteer with allowance"', add
label define fj07a_payfreq_lbl 7 `"Other"', add
label define fj07a_payfreq_lbl 9 `"NIU (not in universe)"', add
label values fj07a_payfreq fj07a_payfreq_lbl

label define fj07a_lookwork_lbl 1 `"Yes"'
label define fj07a_lookwork_lbl 2 `"No"', add
label define fj07a_lookwork_lbl 8 `"Unknown"', add
label define fj07a_lookwork_lbl 9 `"NIU (not in universe)"', add
label values fj07a_lookwork fj07a_lookwork_lbl

label define fj07a_availabl_lbl 1 `"Yes"'
label define fj07a_availabl_lbl 2 `"No"', add
label define fj07a_availabl_lbl 8 `"Unknown"', add
label define fj07a_availabl_lbl 9 `"NIU (not in universe)"', add
label values fj07a_availabl fj07a_availabl_lbl

label define fj07a_homemale_lbl 00 `"0"'
label define fj07a_homemale_lbl 01 `"1"', add
label define fj07a_homemale_lbl 02 `"2"', add
label define fj07a_homemale_lbl 03 `"3"', add
label define fj07a_homemale_lbl 04 `"4"', add
label define fj07a_homemale_lbl 05 `"5+"', add
label define fj07a_homemale_lbl 99 `"NIU (not in universe)"', add
label values fj07a_homemale fj07a_homemale_lbl

label define fj07a_homefem_lbl 00 `"0"'
label define fj07a_homefem_lbl 01 `"1"', add
label define fj07a_homefem_lbl 02 `"2"', add
label define fj07a_homefem_lbl 03 `"3"', add
label define fj07a_homefem_lbl 04 `"4"', add
label define fj07a_homefem_lbl 05 `"5+"', add
label define fj07a_homefem_lbl 99 `"NIU (not in universe)"', add
label values fj07a_homefem fj07a_homefem_lbl

label define fj07a_homechd_lbl 00 `"0"'
label define fj07a_homechd_lbl 01 `"1"', add
label define fj07a_homechd_lbl 02 `"2"', add
label define fj07a_homechd_lbl 03 `"3"', add
label define fj07a_homechd_lbl 04 `"4"', add
label define fj07a_homechd_lbl 05 `"5"', add
label define fj07a_homechd_lbl 06 `"6"', add
label define fj07a_homechd_lbl 07 `"7"', add
label define fj07a_homechd_lbl 08 `"8+"', add
label define fj07a_homechd_lbl 99 `"NIU (not in universe)"', add
label values fj07a_homechd fj07a_homechd_lbl

label define fj07a_awaymale_lbl 00 `"0"'
label define fj07a_awaymale_lbl 01 `"1"', add
label define fj07a_awaymale_lbl 02 `"2"', add
label define fj07a_awaymale_lbl 03 `"3"', add
label define fj07a_awaymale_lbl 04 `"4"', add
label define fj07a_awaymale_lbl 05 `"5"', add
label define fj07a_awaymale_lbl 06 `"6+"', add
label define fj07a_awaymale_lbl 99 `"NIU (not in universe)"', add
label values fj07a_awaymale fj07a_awaymale_lbl

label define fj07a_awayfem_lbl 00 `"0"'
label define fj07a_awayfem_lbl 01 `"1"', add
label define fj07a_awayfem_lbl 02 `"2"', add
label define fj07a_awayfem_lbl 03 `"3"', add
label define fj07a_awayfem_lbl 04 `"4"', add
label define fj07a_awayfem_lbl 05 `"5"', add
label define fj07a_awayfem_lbl 06 `"6+"', add
label define fj07a_awayfem_lbl 99 `"NIU (not in universe)"', add
label values fj07a_awayfem fj07a_awayfem_lbl

label define fj07a_awaychd_lbl 00 `"0"'
label define fj07a_awaychd_lbl 01 `"1"', add
label define fj07a_awaychd_lbl 02 `"2"', add
label define fj07a_awaychd_lbl 03 `"3"', add
label define fj07a_awaychd_lbl 04 `"4"', add
label define fj07a_awaychd_lbl 05 `"5"', add
label define fj07a_awaychd_lbl 06 `"6"', add
label define fj07a_awaychd_lbl 07 `"7"', add
label define fj07a_awaychd_lbl 08 `"8"', add
label define fj07a_awaychd_lbl 09 `"9"', add
label define fj07a_awaychd_lbl 10 `"10+"', add
label define fj07a_awaychd_lbl 99 `"NIU (not in universe)"', add
label values fj07a_awaychd fj07a_awaychd_lbl

label define fj07a_chdeadm_lbl 00 `"0"'
label define fj07a_chdeadm_lbl 01 `"1"', add
label define fj07a_chdeadm_lbl 02 `"2"', add
label define fj07a_chdeadm_lbl 03 `"3+"', add
label define fj07a_chdeadm_lbl 99 `"NIU (not in universe)"', add
label values fj07a_chdeadm fj07a_chdeadm_lbl

label define fj07a_chdeadf_lbl 00 `"0"'
label define fj07a_chdeadf_lbl 01 `"1"', add
label define fj07a_chdeadf_lbl 02 `"2"', add
label define fj07a_chdeadf_lbl 03 `"3+"', add
label define fj07a_chdeadf_lbl 99 `"NIU (not in universe)"', add
label values fj07a_chdeadf fj07a_chdeadf_lbl

label define fj07a_chdead_lbl 00 `"0"'
label define fj07a_chdead_lbl 01 `"1"', add
label define fj07a_chdead_lbl 02 `"2"', add
label define fj07a_chdead_lbl 03 `"3"', add
label define fj07a_chdead_lbl 04 `"4+"', add
label define fj07a_chdead_lbl 99 `"NIU (not in universe)"', add
label values fj07a_chdead fj07a_chdead_lbl

label define fj07a_chbornm_lbl 00 `"0"'
label define fj07a_chbornm_lbl 01 `"1"', add
label define fj07a_chbornm_lbl 02 `"2"', add
label define fj07a_chbornm_lbl 03 `"3"', add
label define fj07a_chbornm_lbl 04 `"4"', add
label define fj07a_chbornm_lbl 05 `"5"', add
label define fj07a_chbornm_lbl 06 `"6"', add
label define fj07a_chbornm_lbl 07 `"7+"', add
label define fj07a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values fj07a_chbornm fj07a_chbornm_lbl

label define fj07a_chbornf_lbl 00 `"0"'
label define fj07a_chbornf_lbl 01 `"1"', add
label define fj07a_chbornf_lbl 02 `"2"', add
label define fj07a_chbornf_lbl 03 `"3"', add
label define fj07a_chbornf_lbl 04 `"4"', add
label define fj07a_chbornf_lbl 05 `"5"', add
label define fj07a_chbornf_lbl 06 `"6"', add
label define fj07a_chbornf_lbl 07 `"7+"', add
label define fj07a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values fj07a_chbornf fj07a_chbornf_lbl

label define fj07a_lastbmo_lbl 01 `"January"'
label define fj07a_lastbmo_lbl 02 `"February"', add
label define fj07a_lastbmo_lbl 03 `"March"', add
label define fj07a_lastbmo_lbl 04 `"April"', add
label define fj07a_lastbmo_lbl 05 `"May"', add
label define fj07a_lastbmo_lbl 06 `"June"', add
label define fj07a_lastbmo_lbl 07 `"July"', add
label define fj07a_lastbmo_lbl 08 `"August"', add
label define fj07a_lastbmo_lbl 09 `"September"', add
label define fj07a_lastbmo_lbl 10 `"October"', add
label define fj07a_lastbmo_lbl 11 `"November"', add
label define fj07a_lastbmo_lbl 12 `"December"', add
label define fj07a_lastbmo_lbl 99 `"NIU (not in universe)"', add
label values fj07a_lastbmo fj07a_lastbmo_lbl

label define fj07a_lastbsex_lbl 1 `"Male"'
label define fj07a_lastbsex_lbl 2 `"Female"', add
label define fj07a_lastbsex_lbl 9 `"NIU (not in universe)"', add
label values fj07a_lastbsex fj07a_lastbsex_lbl

label define fj07a_chsurvm_lbl 00 `"0 children"'
label define fj07a_chsurvm_lbl 01 `"1 children"', add
label define fj07a_chsurvm_lbl 02 `"2 children"', add
label define fj07a_chsurvm_lbl 03 `"3 children"', add
label define fj07a_chsurvm_lbl 04 `"4 children"', add
label define fj07a_chsurvm_lbl 05 `"5 children"', add
label define fj07a_chsurvm_lbl 06 `"6 children"', add
label define fj07a_chsurvm_lbl 07 `"7+ children"', add
label define fj07a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values fj07a_chsurvm fj07a_chsurvm_lbl

label define fj07a_chsurvf_lbl 00 `"0 children"'
label define fj07a_chsurvf_lbl 01 `"1 children"', add
label define fj07a_chsurvf_lbl 02 `"2 children"', add
label define fj07a_chsurvf_lbl 03 `"3 children"', add
label define fj07a_chsurvf_lbl 04 `"4 children"', add
label define fj07a_chsurvf_lbl 05 `"5 children"', add
label define fj07a_chsurvf_lbl 06 `"6 children"', add
label define fj07a_chsurvf_lbl 07 `"7+ children"', add
label define fj07a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values fj07a_chsurvf fj07a_chsurvf_lbl

label define fj07a_subfam_lbl 0 `"No subfamily in household"'
label define fj07a_subfam_lbl 1 `"Subfamily 1"', add
label define fj07a_subfam_lbl 2 `"Subfamily 2"', add
label define fj07a_subfam_lbl 3 `"Subfamily 3"', add
label define fj07a_subfam_lbl 4 `"Subfamily 4"', add
label define fj07a_subfam_lbl 5 `"Subfamily 5 or more"', add
label values fj07a_subfam fj07a_subfam_lbl

label define fj07a_subrel_lbl 1 `"Head"'
label define fj07a_subrel_lbl 2 `"Spouse"', add
label define fj07a_subrel_lbl 3 `"Child"', add
label define fj07a_subrel_lbl 0 `"No subfamily in household"', add
label values fj07a_subrel fj07a_subrel_lbl

label define fj07a_migbpl_lbl 1 `"Birthplace same as current province"'
label define fj07a_migbpl_lbl 2 `"Birthplace different from current province"', add
label define fj07a_migbpl_lbl 9 `"Unknown"', add
label values fj07a_migbpl fj07a_migbpl_lbl

label define fj07a_mig5yr_lbl 1 `"Residence 5 years ago same as current province"'
label define fj07a_mig5yr_lbl 2 `"Residence 5 years ago  different from current province"', add
label define fj07a_mig5yr_lbl 8 `"Unknown"', add
label define fj07a_mig5yr_lbl 9 `"NIU (not in universe)"', add
label values fj07a_mig5yr fj07a_mig5yr_lbl

label define fj07a_migorig_lbl 1 `"Place of origin same as current province"'
label define fj07a_migorig_lbl 2 `"Place of origin different from current province"', add
label define fj07a_migorig_lbl 8 `"Unknown"', add
label define fj07a_migorig_lbl 9 `"NIU (not in universe)"', add
label values fj07a_migorig fj07a_migorig_lbl

label define fj07a_migbpe_lbl 1 `"Lived in current province at birth and in 2002"'
label define fj07a_migbpe_lbl 2 `"Lived in same province at birth and 2002, but current province is different"', add
label define fj07a_migbpe_lbl 3 `"Lived in current province at birth, but a different province in 2002"', add
label define fj07a_migbpe_lbl 4 `"Lived in current province in 2002, but was born in different province"', add
label define fj07a_migbpe_lbl 5 `"Different provinces at each of three time points (birth, 2002, 2007)"', add
label define fj07a_migbpe_lbl 8 `"Unknown"', add
label define fj07a_migbpe_lbl 9 `"NIU (not in universe)"', add
label values fj07a_migbpe fj07a_migbpe_lbl

label define fj07a_mother0_lbl 16 `"16"'
label define fj07a_mother0_lbl 17 `"17"', add
label define fj07a_mother0_lbl 18 `"18"', add
label define fj07a_mother0_lbl 19 `"19"', add
label define fj07a_mother0_lbl 20 `"20"', add
label define fj07a_mother0_lbl 21 `"21"', add
label define fj07a_mother0_lbl 22 `"22"', add
label define fj07a_mother0_lbl 23 `"23"', add
label define fj07a_mother0_lbl 24 `"24"', add
label define fj07a_mother0_lbl 25 `"25"', add
label define fj07a_mother0_lbl 26 `"26"', add
label define fj07a_mother0_lbl 27 `"27"', add
label define fj07a_mother0_lbl 28 `"28"', add
label define fj07a_mother0_lbl 29 `"29"', add
label define fj07a_mother0_lbl 30 `"30"', add
label define fj07a_mother0_lbl 31 `"31"', add
label define fj07a_mother0_lbl 32 `"32"', add
label define fj07a_mother0_lbl 33 `"33"', add
label define fj07a_mother0_lbl 34 `"34"', add
label define fj07a_mother0_lbl 35 `"35"', add
label define fj07a_mother0_lbl 36 `"36"', add
label define fj07a_mother0_lbl 37 `"37"', add
label define fj07a_mother0_lbl 38 `"38"', add
label define fj07a_mother0_lbl 39 `"39"', add
label define fj07a_mother0_lbl 40 `"40"', add
label define fj07a_mother0_lbl 41 `"41"', add
label define fj07a_mother0_lbl 42 `"42"', add
label define fj07a_mother0_lbl 43 `"43"', add
label define fj07a_mother0_lbl 44 `"44"', add
label define fj07a_mother0_lbl 45 `"45"', add
label define fj07a_mother0_lbl 46 `"46"', add
label define fj07a_mother0_lbl 47 `"47"', add
label define fj07a_mother0_lbl 49 `"49"', add
label define fj07a_mother0_lbl 98 `"Unknown"', add
label define fj07a_mother0_lbl 99 `"NIU (not in universe)"', add
label values fj07a_mother0 fj07a_mother0_lbl


