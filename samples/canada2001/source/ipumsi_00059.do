* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    ca01a_dwnum     22-27    ///
  byte    ca01a_provp     28-29    ///
  int     ca01a_cmap      30-32    ///
  byte    ca01a_nuhmainp  33-33    ///
  byte    ca01a_hhclassp  34-34    ///
  byte    ca01a_htypep    35-36    ///
  byte    ca01a_unitsp    37-37    ///
  byte    ca01a_roomp     38-39    ///
  byte    ca01a_condwelp  40-40    ///
  long    ca01a_valuep    41-46    ///
  byte    ca01a_tenurp    47-47    ///
  byte    ca01a_rcondp    48-48    ///
  int     ca01a_ompp      49-52    ///
  int     ca01a_grosrtp   53-56    ///
  int     pernum          57-59    ///
  float   wtper           60-67    ///
  byte    ca01a_pernum    68-68    ///
  byte    ca01a_hhstatp   69-70    ///
  byte    ca01a_prmainp   71-71    ///
  byte    ca01a_efstatp   72-72    ///
  byte    ca01a_efsizep   73-73    ///
  byte    ca01a_cfstatp   74-75    ///
  byte    ca01a_cfsizep   76-76    ///
  byte    ca01a_prescp    77-77    ///
  byte    ca01a_age       78-79    ///
  byte    ca01a_sex       80-80    ///
  byte    ca01a_marstlp   81-81    ///
  byte    ca01a_marsthp   82-82    ///
  byte    ca01a_pobp      83-84    ///
  byte    ca01a_pobpa     85-86    ///
  byte    ca01a_pobmthrp  87-87    ///
  byte    ca01a_pobfthrp  88-88    ///
  byte    ca01a_genstpob  89-89    ///
  byte    ca01a_citothp   90-90    ///
  byte    ca01a_citothpa  91-92    ///
  byte    ca01a_citizenp  93-93    ///
  byte    ca01a_immpopp   94-94    ///
  byte    ca01a_yrimmig   95-95    ///
  byte    ca01a_yrimmiga  96-97    ///
  byte    ca01a_immiagep  98-99    ///
  byte    ca01a_visminp   100-100  ///
  byte    ca01a_absrp     101-101  ///
  byte    ca01a_reginp    102-102  ///
  byte    ca01a_bnfnmemp  103-103  ///
  byte    ca01a_ethnicr   104-105  ///
  byte    ca01a_ethnicra  106-107  ///
  byte    ca01a_abethncp  108-108  ///
  byte    ca01a_afethncp  109-109  ///
  byte    ca01a_baethncp  110-110  ///
  byte    ca01a_caethncp  111-111  ///
  byte    ca01a_chethncp  112-112  ///
  byte    ca01a_crethncp  113-113  ///
  byte    ca01a_duethncp  114-114  ///
  byte    ca01a_fiethncp  115-115  ///
  byte    ca01a_geethncp  116-116  ///
  byte    ca01a_grethncp  117-117  ///
  byte    ca01a_huethncp  118-118  ///
  byte    ca01a_itethncp  119-119  ///
  byte    ca01a_jeethncp  120-120  ///
  byte    ca01a_lbethncp  121-121  ///
  byte    ca01a_lcethncp  122-122  ///
  byte    ca01a_poethncp  123-123  ///
  byte    ca01a_prethncp  124-124  ///
  byte    ca01a_soethncp  125-125  ///
  byte    ca01a_spethncp  126-126  ///
  byte    ca01a_ukethncp  127-127  ///
  byte    ca01a_viethncp  128-128  ///
  byte    ca01a_waethncp  129-129  ///
  byte    ca01a_religrp   130-130  ///
  byte    ca01a_religrpa  131-132  ///
  byte    ca01a_olnp      133-133  ///
  byte    ca01a_mtnp      134-134  ///
  byte    ca01a_mtnpa     135-136  ///
  byte    ca01a_hlnp      137-137  ///
  byte    ca01a_hlnpa     138-139  ///
  byte    ca01a_hlnbp     140-140  ///
  byte    ca01a_folp      141-141  ///
  byte    ca01a_nolp      142-142  ///
  byte    ca01a_nolabop   143-143  ///
  byte    ca01a_nolarap   144-144  ///
  byte    ca01a_nolchip   145-145  ///
  byte    ca01a_nolgerp   146-146  ///
  byte    ca01a_nolgrep   147-147  ///
  byte    ca01a_nolirap   148-148  ///
  byte    ca01a_nolitap   149-149  ///
  byte    ca01a_nolnetp   150-150  ///
  byte    ca01a_nolpolp   151-151  ///
  byte    ca01a_nolporp   152-152  ///
  byte    ca01a_nolpunp   153-153  ///
  byte    ca01a_nolspap   154-154  ///
  byte    ca01a_nolukrp   155-155  ///
  byte    ca01a_nolviep   156-156  ///
  byte    ca01a_wlnap     157-157  ///
  byte    ca01a_wlnbp     158-158  ///
  byte    ca01a_schattp   159-159  ///
  byte    ca01a_hgradp    160-160  ///
  byte    ca01a_secgradp  161-161  ///
  byte    ca01a_hlosp     162-163  ///
  byte    ca01a_trnucp    164-164  ///
  byte    ca01a_dgreep    165-166  ///
  byte    ca01a_dgmfsp    167-168  ///
  byte    ca01a_psuvp     169-169  ///
  byte    ca01a_psotp     170-170  ///
  byte    ca01a_totschp   171-171  ///
  byte    ca01a_mob5p     172-172  ///
  byte    ca01a_mob1p     173-173  ///
  byte    ca01a_prov5p    174-175  ///
  byte    ca01a_prov1p    176-177  ///
  byte    ca01a_powp      178-178  ///
  byte    ca01a_distp     179-179  ///
  byte    ca01a_modep     180-180  ///
  byte    ca01a_lfactp    181-182  ///
  byte    ca01a_cowp      183-183  ///
  byte    ca01a_fptwkp    184-184  ///
  int     ca01a_hrswkp    185-187  ///
  byte    ca01a_lstwkp    188-188  ///
  byte    ca01a_wkswkp    189-190  ///
  byte    ca01a_nochrdp   191-192  ///
  byte    ca01a_nocs01p   193-194  ///
  byte    ca01a_ind80p    195-196  ///
  byte    ca01a_naicsp    197-198  ///
  byte    ca01a_uphwkp    199-199  ///
  byte    ca01a_upkidp    200-200  ///
  byte    ca01a_upsrp     201-201  ///
  byte    ca01a_hhincp    202-203  ///
  byte    ca01a_hhincpa   204-205  ///
  byte    ca01a_cfincp    206-207  ///
  byte    ca01a_cfincpa   208-209  ///
  byte    ca01a_mscfincp  210-210  ///
  long    ca01a_totincp   211-217  ///
  long    ca01a_wagesp    218-224  ///
  long    ca01a_selfip    225-231  ///
  long    ca01a_chdbnp    232-238  ///
  long    ca01a_oasgip    239-245  ///
  long    ca01a_cqppbp    246-252  ///
  long    ca01a_uicbnp    253-259  ///
  long    ca01a_govtip    260-266  ///
  long    ca01a_tgovtp    267-273  ///
  long    ca01a_invstp    274-280  ///
  long    ca01a_retirp    281-287  ///
  long    ca01a_otincp    288-294  ///
  byte    ca01a_incstp    295-295  ///
  float   ca01a_weightp   296-303  ///
  using `"ipumsi_00059.dat"'

replace wtper          = wtper          / 100
replace ca01a_weightp  = ca01a_weightp  / 1000000

format serial         %10.0f
format wtper          %8.2f
format ca01a_weightp  %8.6f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var ca01a_dwnum    `"Dwelling number"'
label var ca01a_provp    `"Province or territory"'
label var ca01a_cmap     `"Census metropolitan area - CMA"'
label var ca01a_nuhmainp `"Number of household maintainers"'
label var ca01a_hhclassp `"Household classification"'
label var ca01a_htypep   `"Household type"'
label var ca01a_unitsp   `"Household size"'
label var ca01a_roomp    `"Number of rooms"'
label var ca01a_condwelp `"Condition of dwelling"'
label var ca01a_valuep   `"Value of dwelling"'
label var ca01a_tenurp   `"Tenure"'
label var ca01a_rcondp   `"Tenure - condominium"'
label var ca01a_ompp     `"Owner's major payments - monthly"'
label var ca01a_grosrtp  `"Monthly gross rent"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var ca01a_pernum   `"Person number (within household)"'
label var ca01a_hhstatp  `"Relationship to household reference person - person 1"'
label var ca01a_prmainp  `"Primary household maintainer indicator"'
label var ca01a_efstatp  `"Economic family status"'
label var ca01a_efsizep  `"Number of persons in the economic family"'
label var ca01a_cfstatp  `"Census family status"'
label var ca01a_cfsizep  `"Number of persons in the census family"'
label var ca01a_prescp   `"Presence and combination of children at home in the census family"'
label var ca01a_age      `"Age"'
label var ca01a_sex      `"Sex"'
label var ca01a_marstlp  `"Legal marital status"'
label var ca01a_marsthp  `"Historical comparability indicator of marital status"'
label var ca01a_pobp     `"Place of birth 1"'
label var ca01a_pobpa    `"Place of birth 2"'
label var ca01a_pobmthrp `"Place of birth of mother"'
label var ca01a_pobfthrp `"Place of birth of father"'
label var ca01a_genstpob `"Generation status"'
label var ca01a_citothp  `"Citizenship other than Canadian 1"'
label var ca01a_citothpa `"Citizenship other than Canadian 2"'
label var ca01a_citizenp `"Citizenship"'
label var ca01a_immpopp  `"Immigrant status"'
label var ca01a_yrimmig  `"Year of immigration 1"'
label var ca01a_yrimmiga `"Year of immigration 2"'
label var ca01a_immiagep `"Age at immigration"'
label var ca01a_visminp  `"Visible minority indicator"'
label var ca01a_absrp    `"Aboriginal identity"'
label var ca01a_reginp   `"Registered or treaty indian indicator"'
label var ca01a_bnfnmemp `"Member of an indian band or first nation"'
label var ca01a_ethnicr  `"Ethnic origin 1"'
label var ca01a_ethnicra `"Ethnic origin 2"'
label var ca01a_abethncp `"Aboriginal ethnic category"'
label var ca01a_afethncp `"African ethnic category"'
label var ca01a_baethncp `"Balkan ethnic category"'
label var ca01a_caethncp `"Canadian ethnic origin"'
label var ca01a_chethncp `"Chinese ethnic origin"'
label var ca01a_crethncp `"Caribbean ethnic category"'
label var ca01a_duethncp `"Dutch - Netherlands ethnic origin"'
label var ca01a_fiethncp `"Filipino ethnic origin"'
label var ca01a_geethncp `"German ethnic origin"'
label var ca01a_grethncp `"Greek ethnic origin"'
label var ca01a_huethncp `"Hungarian - Magyar ethnic origin"'
label var ca01a_itethncp `"Italian ethnic origin"'
label var ca01a_jeethncp `"Jewish ethnic origin"'
label var ca01a_lbethncp `"Lebanese ethnic origin"'
label var ca01a_lcethncp `"Latin, Central and South American ethnic category"'
label var ca01a_poethncp `"Polish ethnic origin"'
label var ca01a_prethncp `"Portuguese ethnic origin"'
label var ca01a_soethncp `"South Asian ethnic category"'
label var ca01a_spethncp `"Spanish ethnic origin"'
label var ca01a_ukethncp `"Ukrainian ethnic origin"'
label var ca01a_viethncp `"Vietnamese ethnic origin"'
label var ca01a_waethncp `"West Asian ethnic category"'
label var ca01a_religrp  `"Religion group 1"'
label var ca01a_religrpa `"Religion group 2"'
label var ca01a_olnp     `"Knowledge of official languages"'
label var ca01a_mtnp     `"Mother tongue 1"'
label var ca01a_mtnpa    `"Mother tongue 2"'
label var ca01a_hlnp     `"Home language most often spoken 1"'
label var ca01a_hlnpa    `"Home language most often spoken 2"'
label var ca01a_hlnbp    `"Home languages spoken on a regular basis"'
label var ca01a_folp     `"First official language spoken"'
label var ca01a_nolp     `"Number of non-official languages spoken"'
label var ca01a_nolabop  `"Knowledge of an Aboriginal language"'
label var ca01a_nolarap  `"Knowledge of Arabic language"'
label var ca01a_nolchip  `"Knowledge of Chinese language"'
label var ca01a_nolgerp  `"Knowledge of German language"'
label var ca01a_nolgrep  `"Knowledge of Greek language"'
label var ca01a_nolirap  `"Knowledge of other Indo-Iranian languages"'
label var ca01a_nolitap  `"Knowledge of Italian language"'
label var ca01a_nolnetp  `"Knowledge of Netherlandic languages"'
label var ca01a_nolpolp  `"Knowledge of Polish language"'
label var ca01a_nolporp  `"Knowledge of Portuguese language"'
label var ca01a_nolpunp  `"Knowledge of Punjabi language"'
label var ca01a_nolspap  `"Knowledge of Spanish language"'
label var ca01a_nolukrp  `"Knowledge of Ukrainian language"'
label var ca01a_nolviep  `"Knowledge of Austro-Asiatic languages"'
label var ca01a_wlnap    `"Language used most often at work"'
label var ca01a_wlnbp    `"Languages used on a regular basis at work"'
label var ca01a_schattp  `"School attendance"'
label var ca01a_hgradp   `"Highest grade of elementary or secondary schooling"'
label var ca01a_secgradp `"High school graduation certificate"'
label var ca01a_hlosp    `"Highest level of schooling"'
label var ca01a_trnucp   `"Trades and college certificates or diplomas"'
label var ca01a_dgreep   `"Highest degree, certificate or diploma"'
label var ca01a_dgmfsp   `"Major field of study"'
label var ca01a_psuvp    `"Years of university"'
label var ca01a_psotp    `"Years of college education"'
label var ca01a_totschp  `"Total years of schooling"'
label var ca01a_mob5p    `"Mobility status - place of residence 5 years ago"'
label var ca01a_mob1p    `"Mobility status - place of residence 1 year ago"'
label var ca01a_prov5p   `"Province or territory of residence 5 years ago"'
label var ca01a_prov1p   `"Province or territory of residence 1 year ago"'
label var ca01a_powp     `"Place of work"'
label var ca01a_distp    `"Commuting distance"'
label var ca01a_modep    `"Mode of transportation"'
label var ca01a_lfactp   `"Labour force activity - in reference week"'
label var ca01a_cowp     `"Class of worker"'
label var ca01a_fptwkp   `"Full-time or part-time weeks worked in 2000"'
label var ca01a_hrswkp   `"Hours worked for pay or in self-employment - in reference week"'
label var ca01a_lstwkp   `"When last worked for pay or in self-employment"'
label var ca01a_wkswkp   `"Weeks worked in 2000"'
label var ca01a_nochrdp  `"Occupation (national occupational classification)"'
label var ca01a_nocs01p  `"Occupation (2001 national occupational classification for statistics)"'
label var ca01a_ind80p   `"Industry (1980 Standard Industrial Classification)"'
label var ca01a_naicsp   `"Industry (1997 North American Industry Classification S\ystem)"'
label var ca01a_uphwkp   `"Hours spent doing unpaid housework"'
label var ca01a_upkidp   `"Hours spent looking after children, without pay"'
label var ca01a_upsrp    `"Hours spent providing unpaid care or assistance to seniors"'
label var ca01a_hhincp   `"Total household income groups 1"'
label var ca01a_hhincpa  `"Total household income groups 2"'
label var ca01a_cfincp   `"Total census family income groups 1"'
label var ca01a_cfincpa  `"Total census family income groups 2"'
label var ca01a_mscfincp `"Major source of census family income"'
label var ca01a_totincp  `"Total income"'
label var ca01a_wagesp   `"Wages and salaries"'
label var ca01a_selfip   `"Self-employment income"'
label var ca01a_chdbnp   `"Canada child tax benefit"'
label var ca01a_oasgip   `"Old age security pension and guaranteed income supplement"'
label var ca01a_cqppbp   `"Canada or Quebec pension plan benefits"'
label var ca01a_uicbnp   `"Employment insurance benefits"'
label var ca01a_govtip   `"Other income from government sources"'
label var ca01a_tgovtp   `"Total government transfer payments"'
label var ca01a_invstp   `"Investment income"'
label var ca01a_retirp   `"Retirement pensions, superannuation and annuities, including those from rrsps an"'
label var ca01a_otincp   `"Other money income"'
label var ca01a_incstp   `"Income status - 2000 low income cut-offs"'
label var ca01a_weightp  `"Individuals weighting factor"'

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

label define ca01a_provp_lbl 10 `"Newfoundland and Labrador"'
label define ca01a_provp_lbl 11 `"Prince Edward Island"', add
label define ca01a_provp_lbl 12 `"Nova Scotia"', add
label define ca01a_provp_lbl 13 `"New Brunswick"', add
label define ca01a_provp_lbl 24 `"Quebec"', add
label define ca01a_provp_lbl 35 `"Ontario"', add
label define ca01a_provp_lbl 46 `"Manitoba"', add
label define ca01a_provp_lbl 47 `"Saskatchewan"', add
label define ca01a_provp_lbl 48 `"Alberta"', add
label define ca01a_provp_lbl 59 `"British Columbia"', add
label define ca01a_provp_lbl 60 `"Yukon Territory, Northwest Territories and Nunavut"', add
label values ca01a_provp ca01a_provp_lbl

label define ca01a_cmap_lbl 205 `"Halifax"'
label define ca01a_cmap_lbl 421 `"Québec"', add
label define ca01a_cmap_lbl 462 `"Montréal"', add
label define ca01a_cmap_lbl 499 `"Sherbrooke and Trois-Rivières"', add
label define ca01a_cmap_lbl 505 `"Ottawa-Hull"', add
label define ca01a_cmap_lbl 532 `"Oshawa"', add
label define ca01a_cmap_lbl 535 `"Toronto"', add
label define ca01a_cmap_lbl 537 `"Hamilton"', add
label define ca01a_cmap_lbl 539 `"St. Catharines-Niagara"', add
label define ca01a_cmap_lbl 541 `"Kitchener"', add
label define ca01a_cmap_lbl 555 `"London"', add
label define ca01a_cmap_lbl 559 `"Windsor"', add
label define ca01a_cmap_lbl 599 `"Sudbury and Thunder Bay"', add
label define ca01a_cmap_lbl 602 `"Winnipeg"', add
label define ca01a_cmap_lbl 799 `"Regina and Saskatoon"', add
label define ca01a_cmap_lbl 825 `"Calgary"', add
label define ca01a_cmap_lbl 835 `"Edmonton"', add
label define ca01a_cmap_lbl 933 `"Vancouver"', add
label define ca01a_cmap_lbl 935 `"Victoria"', add
label define ca01a_cmap_lbl 999 `"NIU (not in universe)"', add
label values ca01a_cmap ca01a_cmap_lbl

label define ca01a_nuhmainp_lbl 1 `"One maintainer in the household"'
label define ca01a_nuhmainp_lbl 2 `"Two maintainers in the household"', add
label define ca01a_nuhmainp_lbl 3 `"Three or more maintainers in the household"', add
label define ca01a_nuhmainp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_nuhmainp ca01a_nuhmainp_lbl

label define ca01a_hhclassp_lbl 1 `"Private household"'
label define ca01a_hhclassp_lbl 2 `"Non-private household"', add
label values ca01a_hhclassp ca01a_hhclassp_lbl

label define ca01a_htypep_lbl 01 `"Family households: one-family households: all couples: married couples: without children: without additional persons"'
label define ca01a_htypep_lbl 02 `"Family households: one-family households: all couples: married couples: without children: with additional persons"', add
label define ca01a_htypep_lbl 03 `"Family households: one-family households: all couples: married couples: with children: without additional persons"', add
label define ca01a_htypep_lbl 04 `"Family households: one-family households: all couples: married couples: with children: with additional persons"', add
label define ca01a_htypep_lbl 05 `"Family households: one-family households: all couples: common-law couples: without children: without additional persons"', add
label define ca01a_htypep_lbl 06 `"Family households: one-family households: all couples: common-law couples: without children: with additional persons"', add
label define ca01a_htypep_lbl 07 `"Family households: one-family households: all couples: common-law couples: with children: without additional persons"', add
label define ca01a_htypep_lbl 08 `"Family households: one-family households: all couples: common-law couples: with children: with additional persons"', add
label define ca01a_htypep_lbl 09 `"Family households: one-family households: lone-parent families: without additional persons"', add
label define ca01a_htypep_lbl 10 `"Family households: one-family households: lone-parent families: with additional persons"', add
label define ca01a_htypep_lbl 11 `"Family households: multiple-family households"', add
label define ca01a_htypep_lbl 12 `"Non-family households: one person only"', add
label define ca01a_htypep_lbl 13 `"Non-family households: two or more persons"', add
label define ca01a_htypep_lbl 99 `"NIU (not in universe)"', add
label values ca01a_htypep ca01a_htypep_lbl

label define ca01a_unitsp_lbl 1 `"One person"'
label define ca01a_unitsp_lbl 2 `"Two persons"', add
label define ca01a_unitsp_lbl 3 `"Three persons"', add
label define ca01a_unitsp_lbl 4 `"Four persons"', add
label define ca01a_unitsp_lbl 5 `"Five persons"', add
label define ca01a_unitsp_lbl 6 `"Six persons"', add
label define ca01a_unitsp_lbl 7 `"Seven or more persons"', add
label define ca01a_unitsp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_unitsp ca01a_unitsp_lbl

label define ca01a_roomp_lbl 01 `"One room"'
label define ca01a_roomp_lbl 02 `"Two rooms"', add
label define ca01a_roomp_lbl 03 `"Three rooms"', add
label define ca01a_roomp_lbl 04 `"Four rooms"', add
label define ca01a_roomp_lbl 05 `"Five rooms"', add
label define ca01a_roomp_lbl 06 `"Six rooms"', add
label define ca01a_roomp_lbl 07 `"Seven rooms"', add
label define ca01a_roomp_lbl 08 `"Eight rooms"', add
label define ca01a_roomp_lbl 09 `"Nine rooms"', add
label define ca01a_roomp_lbl 10 `"Ten or more rooms"', add
label define ca01a_roomp_lbl 99 `"NIU (not in universe)"', add
label values ca01a_roomp ca01a_roomp_lbl

label define ca01a_condwelp_lbl 1 `"Only regular maintenance needed"'
label define ca01a_condwelp_lbl 2 `"Minor repairs needed"', add
label define ca01a_condwelp_lbl 3 `"Major repairs needed"', add
label define ca01a_condwelp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_condwelp ca01a_condwelp_lbl

label define ca01a_valuep_lbl 019999 `"19999 or less"'
label define ca01a_valuep_lbl 200000 `"200000+"', add
label define ca01a_valuep_lbl 999999 `"NIU (not in universe)"', add
label values ca01a_valuep ca01a_valuep_lbl

label define ca01a_tenurp_lbl 1 `"Owned - with or without mortgage"'
label define ca01a_tenurp_lbl 2 `"Rented - for cash, other or Band housing"', add
label define ca01a_tenurp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_tenurp ca01a_tenurp_lbl

label define ca01a_rcondp_lbl 1 `"Condominium"'
label define ca01a_rcondp_lbl 2 `"Not a condominium"', add
label define ca01a_rcondp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_rcondp ca01a_rcondp_lbl

label define ca01a_ompp_lbl 0099 `"99 or less"'
label define ca01a_ompp_lbl 1100 `"1100+"', add
label define ca01a_ompp_lbl 9999 `"Not applicable"', add
label values ca01a_ompp ca01a_ompp_lbl

label define ca01a_grosrtp_lbl 0099 `"99 or less"'
label define ca01a_grosrtp_lbl 1100 `"1100+"', add
label define ca01a_grosrtp_lbl 9999 `"NIU (not in universe)"', add
label values ca01a_grosrtp ca01a_grosrtp_lbl

label define ca01a_pernum_lbl 0 `"Household record"'
label define ca01a_pernum_lbl 1 `"1"', add
label values ca01a_pernum ca01a_pernum_lbl

label define ca01a_hhstatp_lbl 01 `"Person 1"'
label define ca01a_hhstatp_lbl 02 `"Person 1's spouse or common-law partner"', add
label define ca01a_hhstatp_lbl 03 `"Person 1's son or daughter"', add
label define ca01a_hhstatp_lbl 04 `"Person 1's father or mother"', add
label define ca01a_hhstatp_lbl 05 `"Person 1's brother or sister"', add
label define ca01a_hhstatp_lbl 06 `"Person 1's son-in-law or daughter-in-law"', add
label define ca01a_hhstatp_lbl 07 `"Person 1's father-in-law or mother-in-law"', add
label define ca01a_hhstatp_lbl 08 `"Person 1's brother-in-law or sister-in-law"', add
label define ca01a_hhstatp_lbl 09 `"Other relatives of Person 1"', add
label define ca01a_hhstatp_lbl 10 `"Persons not related to Person 1"', add
label values ca01a_hhstatp ca01a_hhstatp_lbl

label define ca01a_prmainp_lbl 1 `"Primary household maintainer"'
label define ca01a_prmainp_lbl 2 `"Not primary household maintainer"', add
label define ca01a_prmainp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_prmainp ca01a_prmainp_lbl

label define ca01a_efstatp_lbl 1 `"Economic family person: member of an economic family which does not include a census family"'
label define ca01a_efstatp_lbl 2 `"Economic family person: member of an economic family which includes a census family but has no additional non-family persons"', add
label define ca01a_efstatp_lbl 3 `"Economic family person: member of an economic family which includes a census family and has additional non-family persons"', add
label define ca01a_efstatp_lbl 4 `"Economic family person: member of an economic family which includes two or more census families but has no additional non-family persons"', add
label define ca01a_efstatp_lbl 5 `"Economic family person: member of an economic family which includes two or more census families and has additional non-family persons"', add
label define ca01a_efstatp_lbl 6 `"Not an economic family person"', add
label define ca01a_efstatp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_efstatp ca01a_efstatp_lbl

label define ca01a_efsizep_lbl 1 `"Unattached individual"'
label define ca01a_efsizep_lbl 2 `"Persons in economic family: two persons"', add
label define ca01a_efsizep_lbl 3 `"Persons in economic family: three persons"', add
label define ca01a_efsizep_lbl 4 `"Persons in economic family: four persons"', add
label define ca01a_efsizep_lbl 5 `"Persons in economic family: five persons"', add
label define ca01a_efsizep_lbl 6 `"Persons in economic family: six persons"', add
label define ca01a_efsizep_lbl 7 `"Persons in economic family: seven or more persons"', add
label define ca01a_efsizep_lbl 9 `"NIU (not in universe)"', add
label values ca01a_efsizep ca01a_efsizep_lbl

label define ca01a_cfstatp_lbl 01 `"Family person: male spouse"'
label define ca01a_cfstatp_lbl 02 `"Family person: male common-law partner"', add
label define ca01a_cfstatp_lbl 03 `"Family person: male lone parent"', add
label define ca01a_cfstatp_lbl 04 `"Family person: female spouse"', add
label define ca01a_cfstatp_lbl 05 `"Family person: female common-law partner"', add
label define ca01a_cfstatp_lbl 06 `"Family person: female lone parent"', add
label define ca01a_cfstatp_lbl 07 `"Family person: child in a now-married couple family"', add
label define ca01a_cfstatp_lbl 08 `"Family person: child in a common-law couple family"', add
label define ca01a_cfstatp_lbl 09 `"Family person: child in a male lone-parent family"', add
label define ca01a_cfstatp_lbl 10 `"Family person: child in a female lone-parent family"', add
label define ca01a_cfstatp_lbl 11 `"Non-family person: living with relatives"', add
label define ca01a_cfstatp_lbl 12 `"Non-family person: living with non-relatives only"', add
label define ca01a_cfstatp_lbl 13 `"Non-family person: living alone"', add
label define ca01a_cfstatp_lbl 99 `"NIU (not in universe)"', add
label values ca01a_cfstatp ca01a_cfstatp_lbl

label define ca01a_cfsizep_lbl 1 `"Non-family persons"'
label define ca01a_cfsizep_lbl 2 `"Persons in census family: two persons"', add
label define ca01a_cfsizep_lbl 3 `"Persons in census family: three persons"', add
label define ca01a_cfsizep_lbl 4 `"Persons in census family: four persons"', add
label define ca01a_cfsizep_lbl 5 `"Persons in census family: five persons"', add
label define ca01a_cfsizep_lbl 6 `"Persons in census family: six persons"', add
label define ca01a_cfsizep_lbl 7 `"Persons in census family: seven or more persons"', add
label define ca01a_cfsizep_lbl 9 `"NIU (not in universe)"', add
label values ca01a_cfsizep ca01a_cfsizep_lbl

label define ca01a_prescp_lbl 0 `"No child present"'
label define ca01a_prescp_lbl 1 `"At least one child under 2 years, none over 5 years"', add
label define ca01a_prescp_lbl 2 `"At least one child under 2 years, at least one child over 5 years"', add
label define ca01a_prescp_lbl 3 `"None under 2 years, at least one child 2-5 years, none over 5 years"', add
label define ca01a_prescp_lbl 4 `"None under 2 years, at least one child 2-5 years, at least one child over 5 years"', add
label define ca01a_prescp_lbl 5 `"None under 6 years, at least one child 6-14 years"', add
label define ca01a_prescp_lbl 6 `"None under 15 years, at least one child 15-24 years"', add
label define ca01a_prescp_lbl 7 `"None under 25 years, at least one child 25 years or older"', add
label define ca01a_prescp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_prescp ca01a_prescp_lbl

label define ca01a_age_lbl 00 `"Less than 1 year"'
label define ca01a_age_lbl 01 `"1"', add
label define ca01a_age_lbl 02 `"2"', add
label define ca01a_age_lbl 03 `"3"', add
label define ca01a_age_lbl 04 `"4"', add
label define ca01a_age_lbl 05 `"5"', add
label define ca01a_age_lbl 06 `"6"', add
label define ca01a_age_lbl 07 `"7"', add
label define ca01a_age_lbl 08 `"8"', add
label define ca01a_age_lbl 09 `"9"', add
label define ca01a_age_lbl 10 `"10"', add
label define ca01a_age_lbl 11 `"11"', add
label define ca01a_age_lbl 12 `"12"', add
label define ca01a_age_lbl 13 `"13"', add
label define ca01a_age_lbl 14 `"14"', add
label define ca01a_age_lbl 15 `"15"', add
label define ca01a_age_lbl 16 `"16"', add
label define ca01a_age_lbl 17 `"17"', add
label define ca01a_age_lbl 18 `"18"', add
label define ca01a_age_lbl 19 `"19"', add
label define ca01a_age_lbl 20 `"20"', add
label define ca01a_age_lbl 21 `"21"', add
label define ca01a_age_lbl 22 `"22"', add
label define ca01a_age_lbl 23 `"23"', add
label define ca01a_age_lbl 24 `"24"', add
label define ca01a_age_lbl 25 `"25"', add
label define ca01a_age_lbl 26 `"26"', add
label define ca01a_age_lbl 27 `"27"', add
label define ca01a_age_lbl 28 `"28"', add
label define ca01a_age_lbl 29 `"29"', add
label define ca01a_age_lbl 30 `"30"', add
label define ca01a_age_lbl 31 `"31"', add
label define ca01a_age_lbl 32 `"32"', add
label define ca01a_age_lbl 33 `"33"', add
label define ca01a_age_lbl 34 `"34"', add
label define ca01a_age_lbl 35 `"35"', add
label define ca01a_age_lbl 36 `"36"', add
label define ca01a_age_lbl 37 `"37"', add
label define ca01a_age_lbl 38 `"38"', add
label define ca01a_age_lbl 39 `"39"', add
label define ca01a_age_lbl 40 `"40"', add
label define ca01a_age_lbl 41 `"41"', add
label define ca01a_age_lbl 42 `"42"', add
label define ca01a_age_lbl 43 `"43"', add
label define ca01a_age_lbl 44 `"44"', add
label define ca01a_age_lbl 45 `"45"', add
label define ca01a_age_lbl 46 `"46"', add
label define ca01a_age_lbl 47 `"47"', add
label define ca01a_age_lbl 48 `"48"', add
label define ca01a_age_lbl 49 `"49"', add
label define ca01a_age_lbl 50 `"50"', add
label define ca01a_age_lbl 51 `"51"', add
label define ca01a_age_lbl 52 `"52"', add
label define ca01a_age_lbl 53 `"53"', add
label define ca01a_age_lbl 54 `"54"', add
label define ca01a_age_lbl 55 `"55"', add
label define ca01a_age_lbl 56 `"56"', add
label define ca01a_age_lbl 57 `"57"', add
label define ca01a_age_lbl 58 `"58"', add
label define ca01a_age_lbl 59 `"59"', add
label define ca01a_age_lbl 60 `"60"', add
label define ca01a_age_lbl 61 `"61"', add
label define ca01a_age_lbl 62 `"62"', add
label define ca01a_age_lbl 63 `"63"', add
label define ca01a_age_lbl 64 `"64"', add
label define ca01a_age_lbl 65 `"65"', add
label define ca01a_age_lbl 66 `"66"', add
label define ca01a_age_lbl 67 `"67"', add
label define ca01a_age_lbl 68 `"68"', add
label define ca01a_age_lbl 69 `"69"', add
label define ca01a_age_lbl 70 `"70"', add
label define ca01a_age_lbl 71 `"71"', add
label define ca01a_age_lbl 72 `"72"', add
label define ca01a_age_lbl 73 `"73"', add
label define ca01a_age_lbl 74 `"74"', add
label define ca01a_age_lbl 75 `"75"', add
label define ca01a_age_lbl 76 `"76"', add
label define ca01a_age_lbl 77 `"77"', add
label define ca01a_age_lbl 78 `"78"', add
label define ca01a_age_lbl 79 `"79"', add
label define ca01a_age_lbl 80 `"80"', add
label define ca01a_age_lbl 81 `"81"', add
label define ca01a_age_lbl 82 `"82"', add
label define ca01a_age_lbl 83 `"83"', add
label define ca01a_age_lbl 84 `"84"', add
label define ca01a_age_lbl 85 `"85+"', add
label values ca01a_age ca01a_age_lbl

label define ca01a_sex_lbl 1 `"Female"'
label define ca01a_sex_lbl 2 `"Male"', add
label values ca01a_sex ca01a_sex_lbl

label define ca01a_marstlp_lbl 1 `"Divorced"'
label define ca01a_marstlp_lbl 2 `"Legally married - and not separated"', add
label define ca01a_marstlp_lbl 3 `"Separated, but still legally married"', add
label define ca01a_marstlp_lbl 4 `"Never legally married - single"', add
label define ca01a_marstlp_lbl 5 `"Widowed"', add
label values ca01a_marstlp ca01a_marstlp_lbl

label define ca01a_marsthp_lbl 1 `"Divorced"'
label define ca01a_marsthp_lbl 2 `"Married - including common-law"', add
label define ca01a_marsthp_lbl 3 `"Separated"', add
label define ca01a_marsthp_lbl 4 `"Never married - single"', add
label define ca01a_marsthp_lbl 5 `"Widowed"', add
label values ca01a_marsthp ca01a_marsthp_lbl

label define ca01a_pobp_lbl 01 `"In province of residence"'
label define ca01a_pobp_lbl 02 `"Outside province of residence: East"', add
label define ca01a_pobp_lbl 03 `"Outside province of residence: Quebec"', add
label define ca01a_pobp_lbl 04 `"Outside province of residence: Ontario"', add
label define ca01a_pobp_lbl 05 `"Outside province of residence: West"', add
label define ca01a_pobp_lbl 06 `"United States"', add
label define ca01a_pobp_lbl 07 `"Europe: United Kingdom"', add
label define ca01a_pobp_lbl 08 `"Europe: Germany"', add
label define ca01a_pobp_lbl 09 `"Europe: Netherlands"', add
label define ca01a_pobp_lbl 10 `"Europe: Other European countries"', add
label define ca01a_pobp_lbl 11 `"Asia"', add
label define ca01a_pobp_lbl 12 `"Other countries and regions"', add
label define ca01a_pobp_lbl 98 `"Unknown"', add
label values ca01a_pobp ca01a_pobp_lbl

label define ca01a_pobpa_lbl 01 `"Newfoundland and Labrador"'
label define ca01a_pobpa_lbl 02 `"Nova Scotia"', add
label define ca01a_pobpa_lbl 03 `"New Brunswick"', add
label define ca01a_pobpa_lbl 04 `"Quebec"', add
label define ca01a_pobpa_lbl 05 `"Ontario"', add
label define ca01a_pobpa_lbl 06 `"Manitoba"', add
label define ca01a_pobpa_lbl 07 `"Saskatchewan"', add
label define ca01a_pobpa_lbl 08 `"Alberta"', add
label define ca01a_pobpa_lbl 09 `"British Columbia"', add
label define ca01a_pobpa_lbl 10 `"Other province or territory"', add
label define ca01a_pobpa_lbl 11 `"United States"', add
label define ca01a_pobpa_lbl 12 `"Europe: United Kingdom"', add
label define ca01a_pobpa_lbl 13 `"Europe: Germany"', add
label define ca01a_pobpa_lbl 14 `"Europe: Italy"', add
label define ca01a_pobpa_lbl 15 `"Europe: Netherlands"', add
label define ca01a_pobpa_lbl 16 `"Europe: Poland"', add
label define ca01a_pobpa_lbl 17 `"Europe: Portugal"', add
label define ca01a_pobpa_lbl 18 `"Europe: France"', add
label define ca01a_pobpa_lbl 19 `"Europe: Greece"', add
label define ca01a_pobpa_lbl 20 `"Europe: USSR, former - European component"', add
label define ca01a_pobpa_lbl 21 `"Europe: Yugoslavia, former"', add
label define ca01a_pobpa_lbl 22 `"Europe: other Europe"', add
label define ca01a_pobpa_lbl 23 `"West Central Asia and the Middle East"', add
label define ca01a_pobpa_lbl 24 `"Southern Asia: India"', add
label define ca01a_pobpa_lbl 25 `"Southern Asia: other Southern Asia"', add
label define ca01a_pobpa_lbl 26 `"Eastern and South-East Asia: China, People's Republic of"', add
label define ca01a_pobpa_lbl 27 `"Eastern and South-East Asia: Hong Kong, Special Administrative Region"', add
label define ca01a_pobpa_lbl 28 `"Eastern and South-East Asia: Philippines"', add
label define ca01a_pobpa_lbl 29 `"Eastern and South-East Asia: Viet Nam"', add
label define ca01a_pobpa_lbl 30 `"Eastern and South-East Asia: other Eastern and South-East Asia"', add
label define ca01a_pobpa_lbl 31 `"Africa: Eastern Africa"', add
label define ca01a_pobpa_lbl 32 `"Africa: other Africa"', add
label define ca01a_pobpa_lbl 33 `"Central America, South America, Caribbean and Bermuda"', add
label define ca01a_pobpa_lbl 34 `"Oceania"', add
label define ca01a_pobpa_lbl 35 `"Other"', add
label define ca01a_pobpa_lbl 98 `"Unknown"', add
label define ca01a_pobpa_lbl 99 `"NIU (not in universe)"', add
label values ca01a_pobpa ca01a_pobpa_lbl

label define ca01a_pobmthrp_lbl 1 `"Born in Canada"'
label define ca01a_pobmthrp_lbl 2 `"United States"', add
label define ca01a_pobmthrp_lbl 3 `"Europe"', add
label define ca01a_pobmthrp_lbl 4 `"Asia"', add
label define ca01a_pobmthrp_lbl 5 `"Other countries and regions"', add
label define ca01a_pobmthrp_lbl 8 `"Undeclared"', add
label define ca01a_pobmthrp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_pobmthrp ca01a_pobmthrp_lbl

label define ca01a_pobfthrp_lbl 1 `"Born in Canada"'
label define ca01a_pobfthrp_lbl 2 `"United States"', add
label define ca01a_pobfthrp_lbl 3 `"Europe"', add
label define ca01a_pobfthrp_lbl 4 `"Asia"', add
label define ca01a_pobfthrp_lbl 5 `"Other countries and regions"', add
label define ca01a_pobfthrp_lbl 8 `"Undeclared"', add
label define ca01a_pobfthrp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_pobfthrp ca01a_pobfthrp_lbl

label define ca01a_genstpob_lbl 1 `"1st generation"'
label define ca01a_genstpob_lbl 2 `"2nd generation: Both parents born outside Canada"', add
label define ca01a_genstpob_lbl 3 `"2nd generation: One parent born outside Canada"', add
label define ca01a_genstpob_lbl 4 `"3rd generation and over"', add
label define ca01a_genstpob_lbl 8 `"Undeclared"', add
label define ca01a_genstpob_lbl 9 `"NIU (not in universe)"', add
label values ca01a_genstpob ca01a_genstpob_lbl

label define ca01a_citothp_lbl 1 `"United States"'
label define ca01a_citothp_lbl 2 `"United Kingdom and related"', add
label define ca01a_citothp_lbl 3 `"Other single countries of citizenship other than Canada, n.i.e."', add
label define ca01a_citothp_lbl 4 `"Multiple citizenships other than Canadian"', add
label define ca01a_citothp_lbl 8 `"Unknown"', add
label define ca01a_citothp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_citothp ca01a_citothp_lbl

label define ca01a_citothpa_lbl 01 `"United States"'
label define ca01a_citothpa_lbl 02 `"Other America and Caribbean"', add
label define ca01a_citothpa_lbl 03 `"United Kingdom and related"', add
label define ca01a_citothpa_lbl 04 `"Italy"', add
label define ca01a_citothpa_lbl 05 `"Poland"', add
label define ca01a_citothpa_lbl 06 `"Other Europe"', add
label define ca01a_citothpa_lbl 07 `"Africa"', add
label define ca01a_citothpa_lbl 08 `"India"', add
label define ca01a_citothpa_lbl 09 `"Philippines"', add
label define ca01a_citothpa_lbl 10 `"West Central Asia and the Middle East"', add
label define ca01a_citothpa_lbl 11 `"Eastern Asia"', add
label define ca01a_citothpa_lbl 12 `"Other Southern Asia and South-East Asia"', add
label define ca01a_citothpa_lbl 13 `"Other single country of citizenship other than Canadian, n.i.e."', add
label define ca01a_citothpa_lbl 14 `"Multiple citizenships other than Canadian"', add
label define ca01a_citothpa_lbl 98 `"Unknown"', add
label define ca01a_citothpa_lbl 99 `"NIU (not in universe)"', add
label values ca01a_citothpa ca01a_citothpa_lbl

label define ca01a_citizenp_lbl 1 `"Canadian citizenship: Canada, by birth"'
label define ca01a_citizenp_lbl 2 `"Canadian citizenship: Canada, by naturalization"', add
label define ca01a_citizenp_lbl 3 `"Citizenship other than Canadian: other country(ies)"', add
label define ca01a_citizenp_lbl 8 `"Unknown"', add
label values ca01a_citizenp ca01a_citizenp_lbl

label define ca01a_immpopp_lbl 1 `"Permanent residents: non-immigrants"'
label define ca01a_immpopp_lbl 2 `"Permanent residents: immigrants"', add
label define ca01a_immpopp_lbl 3 `"Non-permanent residents"', add
label define ca01a_immpopp_lbl 9 `"Unknown"', add
label values ca01a_immpopp ca01a_immpopp_lbl

label define ca01a_yrimmig_lbl 1 `"Before 1961"'
label define ca01a_yrimmig_lbl 2 `"1961-1970"', add
label define ca01a_yrimmig_lbl 3 `"1971-1980"', add
label define ca01a_yrimmig_lbl 4 `"1981-1990"', add
label define ca01a_yrimmig_lbl 5 `"1991-1995"', add
label define ca01a_yrimmig_lbl 6 `"1996-2001"', add
label define ca01a_yrimmig_lbl 8 `"Unknown"', add
label define ca01a_yrimmig_lbl 9 `"NIU (not in universe)"', add
label values ca01a_yrimmig ca01a_yrimmig_lbl

label define ca01a_yrimmiga_lbl 01 `"Before 1946"'
label define ca01a_yrimmiga_lbl 02 `"1946-1950"', add
label define ca01a_yrimmiga_lbl 03 `"1951"', add
label define ca01a_yrimmiga_lbl 04 `"1952"', add
label define ca01a_yrimmiga_lbl 05 `"1953-1955"', add
label define ca01a_yrimmiga_lbl 06 `"1956"', add
label define ca01a_yrimmiga_lbl 07 `"1957"', add
label define ca01a_yrimmiga_lbl 08 `"1958-1960"', add
label define ca01a_yrimmiga_lbl 09 `"1961-1962"', add
label define ca01a_yrimmiga_lbl 10 `"1963-1965"', add
label define ca01a_yrimmiga_lbl 11 `"1966"', add
label define ca01a_yrimmiga_lbl 12 `"1967"', add
label define ca01a_yrimmiga_lbl 13 `"1968-1970"', add
label define ca01a_yrimmiga_lbl 14 `"1971-1972"', add
label define ca01a_yrimmiga_lbl 15 `"1973-1975"', add
label define ca01a_yrimmiga_lbl 16 `"1976-1977"', add
label define ca01a_yrimmiga_lbl 17 `"1978-1979"', add
label define ca01a_yrimmiga_lbl 18 `"1980"', add
label define ca01a_yrimmiga_lbl 19 `"1981"', add
label define ca01a_yrimmiga_lbl 20 `"1982-1983"', add
label define ca01a_yrimmiga_lbl 21 `"1984-1985"', add
label define ca01a_yrimmiga_lbl 22 `"1986"', add
label define ca01a_yrimmiga_lbl 23 `"1987"', add
label define ca01a_yrimmiga_lbl 24 `"1988"', add
label define ca01a_yrimmiga_lbl 25 `"1989"', add
label define ca01a_yrimmiga_lbl 26 `"1990"', add
label define ca01a_yrimmiga_lbl 27 `"1991"', add
label define ca01a_yrimmiga_lbl 28 `"1992"', add
label define ca01a_yrimmiga_lbl 29 `"1993"', add
label define ca01a_yrimmiga_lbl 30 `"1994"', add
label define ca01a_yrimmiga_lbl 31 `"1995"', add
label define ca01a_yrimmiga_lbl 32 `"1996"', add
label define ca01a_yrimmiga_lbl 33 `"1997"', add
label define ca01a_yrimmiga_lbl 34 `"1998"', add
label define ca01a_yrimmiga_lbl 35 `"1999"', add
label define ca01a_yrimmiga_lbl 36 `"2000-2001"', add
label define ca01a_yrimmiga_lbl 98 `"Unknown"', add
label define ca01a_yrimmiga_lbl 99 `"NIU (not in universe)"', add
label values ca01a_yrimmiga ca01a_yrimmiga_lbl

label define ca01a_immiagep_lbl 01 `"0-4 years"'
label define ca01a_immiagep_lbl 02 `"5-12 years"', add
label define ca01a_immiagep_lbl 03 `"13-19 years"', add
label define ca01a_immiagep_lbl 04 `"20-24 years"', add
label define ca01a_immiagep_lbl 05 `"25-29 years"', add
label define ca01a_immiagep_lbl 06 `"30-34 years"', add
label define ca01a_immiagep_lbl 07 `"35-39 years"', add
label define ca01a_immiagep_lbl 08 `"40-44 years"', add
label define ca01a_immiagep_lbl 09 `"45-49 years"', add
label define ca01a_immiagep_lbl 10 `"50-54 years"', add
label define ca01a_immiagep_lbl 11 `"55-59 years"', add
label define ca01a_immiagep_lbl 12 `"60 years and over"', add
label define ca01a_immiagep_lbl 98 `"Unknown"', add
label define ca01a_immiagep_lbl 99 `"NIU (not in universe)"', add
label values ca01a_immiagep ca01a_immiagep_lbl

label define ca01a_visminp_lbl 1 `"Chinese"'
label define ca01a_visminp_lbl 2 `"South Asian"', add
label define ca01a_visminp_lbl 3 `"Black"', add
label define ca01a_visminp_lbl 4 `"Other visible minority"', add
label define ca01a_visminp_lbl 5 `"Not a visible minority"', add
label define ca01a_visminp_lbl 9 `"Unknown"', add
label values ca01a_visminp ca01a_visminp_lbl

label define ca01a_absrp_lbl 1 `"Non-Aboriginal population"'
label define ca01a_absrp_lbl 2 `"Single North American Indian"', add
label define ca01a_absrp_lbl 3 `"Single Métis"', add
label define ca01a_absrp_lbl 4 `"Single Inuit"', add
label define ca01a_absrp_lbl 5 `"Multiple Aboriginal responses"', add
label define ca01a_absrp_lbl 6 `"Aboriginal responses not included elsewhere"', add
label values ca01a_absrp ca01a_absrp_lbl

label define ca01a_reginp_lbl 1 `"Registered under the Indian Act"'
label define ca01a_reginp_lbl 2 `"Not registered under the Indian Act"', add
label values ca01a_reginp ca01a_reginp_lbl

label define ca01a_bnfnmemp_lbl 1 `"Member of an Indian Band or First Nation of Canada"'
label define ca01a_bnfnmemp_lbl 2 `"Not a member of an Indian Band or First Nation of Canada"', add
label values ca01a_bnfnmemp ca01a_bnfnmemp_lbl

label define ca01a_ethnicr_lbl 01 `"Single origins: British Isles origins"'
label define ca01a_ethnicr_lbl 02 `"Single origins: French origins"', add
label define ca01a_ethnicr_lbl 03 `"Single origins: other European origins"', add
label define ca01a_ethnicr_lbl 04 `"Single origins: African origins"', add
label define ca01a_ethnicr_lbl 05 `"Single origins: Arab origins"', add
label define ca01a_ethnicr_lbl 06 `"Single origins: West Asian origins"', add
label define ca01a_ethnicr_lbl 07 `"Single origins: South Asian origins"', add
label define ca01a_ethnicr_lbl 08 `"Single origins: East and Southeast origins"', add
label define ca01a_ethnicr_lbl 09 `"Single origins: Latin, Central and South American origins"', add
label define ca01a_ethnicr_lbl 10 `"Single origins: Caribbean origins"', add
label define ca01a_ethnicr_lbl 11 `"Single origins: Aboriginal origins"', add
label define ca01a_ethnicr_lbl 12 `"Single origins: Canadian origins"', add
label define ca01a_ethnicr_lbl 13 `"Single origins: Provincial origins"', add
label define ca01a_ethnicr_lbl 14 `"Single origins: other single origins"', add
label define ca01a_ethnicr_lbl 15 `"Multiple origins: British Isles only"', add
label define ca01a_ethnicr_lbl 16 `"Multiple origins: British Isles and French"', add
label define ca01a_ethnicr_lbl 17 `"Multiple origins: British Isles and Canadian"', add
label define ca01a_ethnicr_lbl 18 `"Multiple origins: British Isles and other"', add
label define ca01a_ethnicr_lbl 19 `"Multiple origins: British Isles, Canadian and other"', add
label define ca01a_ethnicr_lbl 20 `"Multiple origins: French only"', add
label define ca01a_ethnicr_lbl 21 `"Multiple origins: French and Canadian"', add
label define ca01a_ethnicr_lbl 22 `"Multiple origins: French and other"', add
label define ca01a_ethnicr_lbl 23 `"Multiple origins: French, Canadian and other"', add
label define ca01a_ethnicr_lbl 24 `"Multiple origins: Canadian and other"', add
label define ca01a_ethnicr_lbl 25 `"Multiple origins: British Isles, French and Canadian"', add
label define ca01a_ethnicr_lbl 26 `"Multiple origins: British Isles, French and other"', add
label define ca01a_ethnicr_lbl 27 `"Multiple origins: British Isles, French, Canadian and other"', add
label define ca01a_ethnicr_lbl 28 `"Multiple origins: other multiple origins"', add
label define ca01a_ethnicr_lbl 98 `"Unknown"', add
label values ca01a_ethnicr ca01a_ethnicr_lbl

label define ca01a_ethnicra_lbl 01 `"Single origins: Canadian"'
label define ca01a_ethnicra_lbl 02 `"Single origins: English"', add
label define ca01a_ethnicra_lbl 03 `"Single origins: Irish"', add
label define ca01a_ethnicra_lbl 04 `"Single origins: Scottish"', add
label define ca01a_ethnicra_lbl 05 `"Single origins: French"', add
label define ca01a_ethnicra_lbl 06 `"Single origins: German"', add
label define ca01a_ethnicra_lbl 07 `"Single origins: Dutch - Netherlands"', add
label define ca01a_ethnicra_lbl 08 `"Single origins: Ukrainian"', add
label define ca01a_ethnicra_lbl 09 `"Single origins: Polish"', add
label define ca01a_ethnicra_lbl 10 `"Single origins: Hungarian - Magyar"', add
label define ca01a_ethnicra_lbl 11 `"Single origins: Portuguese"', add
label define ca01a_ethnicra_lbl 12 `"Single origins: Italian"', add
label define ca01a_ethnicra_lbl 13 `"Single origins: Greek"', add
label define ca01a_ethnicra_lbl 14 `"Single origins: Jewish"', add
label define ca01a_ethnicra_lbl 15 `"Single origins: Jamaican"', add
label define ca01a_ethnicra_lbl 16 `"Single origins: Lebanese"', add
label define ca01a_ethnicra_lbl 17 `"Single origins: East Indian"', add
label define ca01a_ethnicra_lbl 18 `"Single origins: Chinese"', add
label define ca01a_ethnicra_lbl 19 `"Single origins: Filipino"', add
label define ca01a_ethnicra_lbl 20 `"Single origins: Vietnamese"', add
label define ca01a_ethnicra_lbl 21 `"Single origins: Korean"', add
label define ca01a_ethnicra_lbl 22 `"Single origins: other British origins"', add
label define ca01a_ethnicra_lbl 23 `"Single origins: Western European origins"', add
label define ca01a_ethnicra_lbl 24 `"Single origins: Eastern European origins"', add
label define ca01a_ethnicra_lbl 25 `"Single origins: Northern European origins"', add
label define ca01a_ethnicra_lbl 26 `"Single origins: Southern European origins"', add
label define ca01a_ethnicra_lbl 27 `"Single origins: Balkan origins"', add
label define ca01a_ethnicra_lbl 28 `"Single origins: other European origins"', add
label define ca01a_ethnicra_lbl 29 `"Single origins: African origins"', add
label define ca01a_ethnicra_lbl 30 `"Single origins: Other Arab origins"', add
label define ca01a_ethnicra_lbl 31 `"Single origins: West Asian origins"', add
label define ca01a_ethnicra_lbl 32 `"Single origins: South Asian origins"', add
label define ca01a_ethnicra_lbl 33 `"Single origins: East and Southeast Asian origins"', add
label define ca01a_ethnicra_lbl 34 `"Single origins: Latin, Central and South American origins"', add
label define ca01a_ethnicra_lbl 35 `"Single origins: Caribbean origins"', add
label define ca01a_ethnicra_lbl 36 `"Single origins: Aboriginal origins"', add
label define ca01a_ethnicra_lbl 37 `"Single origins: Provincial origins"', add
label define ca01a_ethnicra_lbl 38 `"Single origins: other single origins"', add
label define ca01a_ethnicra_lbl 39 `"Multiple origins: CBFP only - Canadian, British, French and provincial origins only"', add
label define ca01a_ethnicra_lbl 40 `"Multiple origins: CBFP and others"', add
label define ca01a_ethnicra_lbl 41 `"Multiple origins: Aboriginal only"', add
label define ca01a_ethnicra_lbl 42 `"Multiple origins: Aboriginal and CBFP"', add
label define ca01a_ethnicra_lbl 43 `"Multiple origins: Aboriginal, CBFP and others"', add
label define ca01a_ethnicra_lbl 44 `"Multiple origins: Aboriginal and others"', add
label define ca01a_ethnicra_lbl 45 `"Multiple origins: other origins only"', add
label define ca01a_ethnicra_lbl 98 `"Unknown"', add
label define ca01a_ethnicra_lbl 99 `"NIU (not in universe)"', add
label values ca01a_ethnicra ca01a_ethnicra_lbl

label define ca01a_abethncp_lbl 1 `"Aboriginal single ethnic category"'
label define ca01a_abethncp_lbl 2 `"Aboriginal multiple ethnic category"', add
label define ca01a_abethncp_lbl 3 `"Other"', add
label values ca01a_abethncp ca01a_abethncp_lbl

label define ca01a_afethncp_lbl 1 `"African single ethnic category"'
label define ca01a_afethncp_lbl 2 `"African multiple ethnic category"', add
label define ca01a_afethncp_lbl 3 `"Other"', add
label define ca01a_afethncp_lbl 8 `"Unknown"', add
label define ca01a_afethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_afethncp ca01a_afethncp_lbl

label define ca01a_baethncp_lbl 1 `"Balkan single ethnic category"'
label define ca01a_baethncp_lbl 2 `"Balkan multiple ethnic category"', add
label define ca01a_baethncp_lbl 3 `"Other"', add
label define ca01a_baethncp_lbl 8 `"Unknown"', add
label define ca01a_baethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_baethncp ca01a_baethncp_lbl

label define ca01a_caethncp_lbl 1 `"Canadian single ethnic origin"'
label define ca01a_caethncp_lbl 2 `"Canadian multiple ethnic origin"', add
label define ca01a_caethncp_lbl 3 `"Other"', add
label define ca01a_caethncp_lbl 8 `"Unknown"', add
label define ca01a_caethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_caethncp ca01a_caethncp_lbl

label define ca01a_chethncp_lbl 1 `"Chinese single ethnic origin"'
label define ca01a_chethncp_lbl 2 `"Chinese multiple ethnic origin"', add
label define ca01a_chethncp_lbl 3 `"Other"', add
label define ca01a_chethncp_lbl 8 `"Unknown"', add
label define ca01a_chethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_chethncp ca01a_chethncp_lbl

label define ca01a_crethncp_lbl 1 `"Caribbean single ethnic category"'
label define ca01a_crethncp_lbl 2 `"Caribbean multiple ethnic category"', add
label define ca01a_crethncp_lbl 3 `"Other"', add
label define ca01a_crethncp_lbl 8 `"Unknown"', add
label define ca01a_crethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_crethncp ca01a_crethncp_lbl

label define ca01a_duethncp_lbl 1 `"Dutch - Netherlands single ethnic origin"'
label define ca01a_duethncp_lbl 2 `"Dutch - Netherlands multiple ethnic origin"', add
label define ca01a_duethncp_lbl 3 `"Other"', add
label define ca01a_duethncp_lbl 8 `"Unknown"', add
label define ca01a_duethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_duethncp ca01a_duethncp_lbl

label define ca01a_fiethncp_lbl 1 `"Filipino single ethnic origin"'
label define ca01a_fiethncp_lbl 2 `"Filipino multiple ethnic origin"', add
label define ca01a_fiethncp_lbl 3 `"Other"', add
label define ca01a_fiethncp_lbl 8 `"Unknown"', add
label define ca01a_fiethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_fiethncp ca01a_fiethncp_lbl

label define ca01a_geethncp_lbl 1 `"German single ethnic origin"'
label define ca01a_geethncp_lbl 2 `"German multiple ethnic origin"', add
label define ca01a_geethncp_lbl 3 `"Other"', add
label define ca01a_geethncp_lbl 8 `"Unknown"', add
label define ca01a_geethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_geethncp ca01a_geethncp_lbl

label define ca01a_grethncp_lbl 1 `"Greek single ethnic origin"'
label define ca01a_grethncp_lbl 2 `"Greek multiple ethnic origin"', add
label define ca01a_grethncp_lbl 3 `"Other"', add
label define ca01a_grethncp_lbl 8 `"Unknown"', add
label define ca01a_grethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_grethncp ca01a_grethncp_lbl

label define ca01a_huethncp_lbl 1 `"Hungarian - Magyar single ethnic origin"'
label define ca01a_huethncp_lbl 2 `"Hungarian - Magyar multiple ethnic origin"', add
label define ca01a_huethncp_lbl 3 `"Other"', add
label define ca01a_huethncp_lbl 8 `"Unknown"', add
label define ca01a_huethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_huethncp ca01a_huethncp_lbl

label define ca01a_itethncp_lbl 1 `"Italian single ethnic origin"'
label define ca01a_itethncp_lbl 2 `"Italian multiple ethnic origin"', add
label define ca01a_itethncp_lbl 3 `"Other"', add
label define ca01a_itethncp_lbl 8 `"Unknown"', add
label define ca01a_itethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_itethncp ca01a_itethncp_lbl

label define ca01a_jeethncp_lbl 1 `"Jewish single ethnic origin"'
label define ca01a_jeethncp_lbl 2 `"Jewish multiple ethnic origin"', add
label define ca01a_jeethncp_lbl 3 `"Other"', add
label define ca01a_jeethncp_lbl 8 `"Unknown"', add
label define ca01a_jeethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_jeethncp ca01a_jeethncp_lbl

label define ca01a_lbethncp_lbl 1 `"Lebanese single ethnic origin"'
label define ca01a_lbethncp_lbl 2 `"Lebanese multiple ethnic origin"', add
label define ca01a_lbethncp_lbl 3 `"Other"', add
label define ca01a_lbethncp_lbl 8 `"Unknown"', add
label define ca01a_lbethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_lbethncp ca01a_lbethncp_lbl

label define ca01a_lcethncp_lbl 1 `"Latin, Central and South American single ethnic category"'
label define ca01a_lcethncp_lbl 2 `"Latin, Central and South American multiple ethnic category"', add
label define ca01a_lcethncp_lbl 3 `"Other"', add
label define ca01a_lcethncp_lbl 8 `"Unknown"', add
label define ca01a_lcethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_lcethncp ca01a_lcethncp_lbl

label define ca01a_poethncp_lbl 1 `"Polish single ethnic origin"'
label define ca01a_poethncp_lbl 2 `"Polish multiple ethnic origin"', add
label define ca01a_poethncp_lbl 3 `"Other"', add
label define ca01a_poethncp_lbl 8 `"Unknown"', add
label define ca01a_poethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_poethncp ca01a_poethncp_lbl

label define ca01a_prethncp_lbl 1 `"Portuguese single ethnic origin"'
label define ca01a_prethncp_lbl 2 `"Portuguese multiple ethnic origin"', add
label define ca01a_prethncp_lbl 3 `"Other"', add
label define ca01a_prethncp_lbl 8 `"Unknown"', add
label define ca01a_prethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_prethncp ca01a_prethncp_lbl

label define ca01a_soethncp_lbl 1 `"South Asian single ethnic category"'
label define ca01a_soethncp_lbl 2 `"South Asian multiple ethnic category"', add
label define ca01a_soethncp_lbl 3 `"Other"', add
label define ca01a_soethncp_lbl 8 `"Unknown"', add
label define ca01a_soethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_soethncp ca01a_soethncp_lbl

label define ca01a_spethncp_lbl 1 `"Spanish single ethnic origin"'
label define ca01a_spethncp_lbl 2 `"Spanish multiple ethnic origin"', add
label define ca01a_spethncp_lbl 3 `"Other"', add
label define ca01a_spethncp_lbl 8 `"Unknown"', add
label define ca01a_spethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_spethncp ca01a_spethncp_lbl

label define ca01a_ukethncp_lbl 1 `"Ukrainian single ethnic origin"'
label define ca01a_ukethncp_lbl 2 `"Ukrainian multiple ethnic origin"', add
label define ca01a_ukethncp_lbl 3 `"Other"', add
label define ca01a_ukethncp_lbl 8 `"Unknown"', add
label define ca01a_ukethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_ukethncp ca01a_ukethncp_lbl

label define ca01a_viethncp_lbl 1 `"Vietnamese single ethnic origin"'
label define ca01a_viethncp_lbl 2 `"Vietnamese multiple ethnic origin"', add
label define ca01a_viethncp_lbl 3 `"Other"', add
label define ca01a_viethncp_lbl 8 `"Unknown"', add
label define ca01a_viethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_viethncp ca01a_viethncp_lbl

label define ca01a_waethncp_lbl 1 `"West Asian single ethnic category"'
label define ca01a_waethncp_lbl 2 `"West Asian multiple ethnic category"', add
label define ca01a_waethncp_lbl 3 `"Other"', add
label define ca01a_waethncp_lbl 8 `"Unknown"', add
label define ca01a_waethncp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_waethncp ca01a_waethncp_lbl

label define ca01a_religrp_lbl 1 `"Catholic"'
label define ca01a_religrp_lbl 2 `"Protestant"', add
label define ca01a_religrp_lbl 3 `"Other religions"', add
label define ca01a_religrp_lbl 4 `"No religious affiliation"', add
label values ca01a_religrp ca01a_religrp_lbl

label define ca01a_religrpa_lbl 01 `"Catholic"'
label define ca01a_religrpa_lbl 02 `"Protestant"', add
label define ca01a_religrpa_lbl 03 `"Christian Orthodox"', add
label define ca01a_religrpa_lbl 04 `"Christian not identified elsewhere"', add
label define ca01a_religrpa_lbl 05 `"Muslim"', add
label define ca01a_religrpa_lbl 06 `"Jewish"', add
label define ca01a_religrpa_lbl 07 `"Buddhist"', add
label define ca01a_religrpa_lbl 08 `"Hindu"', add
label define ca01a_religrpa_lbl 09 `"Sikh"', add
label define ca01a_religrpa_lbl 10 `"Eastern religions"', add
label define ca01a_religrpa_lbl 11 `"All other religions"', add
label define ca01a_religrpa_lbl 12 `"No religious affiliation"', add
label define ca01a_religrpa_lbl 98 `"Unknown"', add
label define ca01a_religrpa_lbl 99 `"NIU (not in universe)"', add
label values ca01a_religrpa ca01a_religrpa_lbl

label define ca01a_olnp_lbl 1 `"English only"'
label define ca01a_olnp_lbl 2 `"French only"', add
label define ca01a_olnp_lbl 3 `"Both English and French"', add
label define ca01a_olnp_lbl 4 `"Neither English nor French"', add
label define ca01a_olnp_lbl 9 `"Unknown"', add
label values ca01a_olnp ca01a_olnp_lbl

label define ca01a_mtnp_lbl 1 `"English single responses"'
label define ca01a_mtnp_lbl 2 `"French single responses"', add
label define ca01a_mtnp_lbl 3 `"English and French"', add
label define ca01a_mtnp_lbl 4 `"Non-official languages: Aboriginal languages"', add
label define ca01a_mtnp_lbl 5 `"Non-official languages: Other"', add
label define ca01a_mtnp_lbl 9 `"Unknown"', add
label values ca01a_mtnp ca01a_mtnp_lbl

label define ca01a_mtnpa_lbl 01 `"English single responses"'
label define ca01a_mtnpa_lbl 02 `"French single responses"', add
label define ca01a_mtnpa_lbl 03 `"English and French"', add
label define ca01a_mtnpa_lbl 04 `"Aboriginal languages"', add
label define ca01a_mtnpa_lbl 05 `"German"', add
label define ca01a_mtnpa_lbl 06 `"Netherlandic languages"', add
label define ca01a_mtnpa_lbl 07 `"Italian"', add
label define ca01a_mtnpa_lbl 08 `"Spanish"', add
label define ca01a_mtnpa_lbl 09 `"Portuguese"', add
label define ca01a_mtnpa_lbl 10 `"Polish"', add
label define ca01a_mtnpa_lbl 11 `"Ukrainian"', add
label define ca01a_mtnpa_lbl 12 `"Greek"', add
label define ca01a_mtnpa_lbl 13 `"Chinese"', add
label define ca01a_mtnpa_lbl 14 `"Austro-Asiatic languages"', add
label define ca01a_mtnpa_lbl 15 `"Arabic"', add
label define ca01a_mtnpa_lbl 16 `"Punjabi"', add
label define ca01a_mtnpa_lbl 17 `"Other Indo-Iranian languages"', add
label define ca01a_mtnpa_lbl 18 `"Other"', add
label define ca01a_mtnpa_lbl 98 `"Unknown"', add
label define ca01a_mtnpa_lbl 99 `"NIU (not in universe)"', add
label values ca01a_mtnpa ca01a_mtnpa_lbl

label define ca01a_hlnp_lbl 1 `"English single responses"'
label define ca01a_hlnp_lbl 2 `"French single responses"', add
label define ca01a_hlnp_lbl 3 `"English and French"', add
label define ca01a_hlnp_lbl 4 `"Non-official languages: Aboriginal languages"', add
label define ca01a_hlnp_lbl 5 `"Non-official languages: Other"', add
label define ca01a_hlnp_lbl 9 `"Unknown"', add
label values ca01a_hlnp ca01a_hlnp_lbl

label define ca01a_hlnpa_lbl 01 `"English single responses"'
label define ca01a_hlnpa_lbl 02 `"French single responses"', add
label define ca01a_hlnpa_lbl 03 `"English and French"', add
label define ca01a_hlnpa_lbl 04 `"Aboriginal languages"', add
label define ca01a_hlnpa_lbl 05 `"German"', add
label define ca01a_hlnpa_lbl 06 `"Italian"', add
label define ca01a_hlnpa_lbl 07 `"Spanish"', add
label define ca01a_hlnpa_lbl 08 `"Portuguese"', add
label define ca01a_hlnpa_lbl 09 `"Polish"', add
label define ca01a_hlnpa_lbl 10 `"Chinese"', add
label define ca01a_hlnpa_lbl 11 `"Austro-Asiatic languages"', add
label define ca01a_hlnpa_lbl 12 `"Arabic"', add
label define ca01a_hlnpa_lbl 13 `"Punjabi"', add
label define ca01a_hlnpa_lbl 14 `"Other Indo-Iranian languages"', add
label define ca01a_hlnpa_lbl 15 `"Other"', add
label define ca01a_hlnpa_lbl 98 `"Unknown"', add
label define ca01a_hlnpa_lbl 99 `"NIU (not in universe)"', add
label values ca01a_hlnpa ca01a_hlnpa_lbl

label define ca01a_hlnbp_lbl 1 `"No other language"'
label define ca01a_hlnbp_lbl 2 `"English"', add
label define ca01a_hlnbp_lbl 3 `"French"', add
label define ca01a_hlnbp_lbl 4 `"English and French"', add
label define ca01a_hlnbp_lbl 5 `"Non-official languages"', add
label define ca01a_hlnbp_lbl 9 `"Unknown"', add
label values ca01a_hlnbp ca01a_hlnbp_lbl

label define ca01a_folp_lbl 1 `"English"'
label define ca01a_folp_lbl 2 `"French"', add
label define ca01a_folp_lbl 3 `"Both English and French"', add
label define ca01a_folp_lbl 4 `"Neither English nor French"', add
label define ca01a_folp_lbl 9 `"Unknown"', add
label values ca01a_folp ca01a_folp_lbl

label define ca01a_nolp_lbl 1 `"One non-official language known"'
label define ca01a_nolp_lbl 2 `"Two non-official languages known"', add
label define ca01a_nolp_lbl 3 `"Three or more non-official languages known"', add
label define ca01a_nolp_lbl 4 `"No non-official languages known"', add
label define ca01a_nolp_lbl 9 `"Unknown"', add
label values ca01a_nolp ca01a_nolp_lbl

label define ca01a_nolabop_lbl 1 `"Aboriginal language known"'
label define ca01a_nolabop_lbl 2 `"No Aboriginal language known"', add
label values ca01a_nolabop ca01a_nolabop_lbl

label define ca01a_nolarap_lbl 1 `"Arabic language known"'
label define ca01a_nolarap_lbl 2 `"Arabic language unknown"', add
label define ca01a_nolarap_lbl 8 `"Unknown"', add
label define ca01a_nolarap_lbl 9 `"NIU (not in universe)"', add
label values ca01a_nolarap ca01a_nolarap_lbl

label define ca01a_nolchip_lbl 1 `"Chinese language known"'
label define ca01a_nolchip_lbl 2 `"Chinese language unknown"', add
label define ca01a_nolchip_lbl 8 `"Unknown"', add
label define ca01a_nolchip_lbl 9 `"NIU (not in universe)"', add
label values ca01a_nolchip ca01a_nolchip_lbl

label define ca01a_nolgerp_lbl 1 `"German language known"'
label define ca01a_nolgerp_lbl 2 `"German language unknown"', add
label define ca01a_nolgerp_lbl 8 `"Unknown"', add
label define ca01a_nolgerp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_nolgerp ca01a_nolgerp_lbl

label define ca01a_nolgrep_lbl 1 `"Greek language known"'
label define ca01a_nolgrep_lbl 2 `"Greek language unknown"', add
label define ca01a_nolgrep_lbl 8 `"Unknown"', add
label define ca01a_nolgrep_lbl 9 `"NIU (not in universe)"', add
label values ca01a_nolgrep ca01a_nolgrep_lbl

label define ca01a_nolirap_lbl 1 `"Other Indo-Iranian languages known"'
label define ca01a_nolirap_lbl 2 `"Other Indo-Iranian languages unknown"', add
label define ca01a_nolirap_lbl 8 `"Unknown"', add
label define ca01a_nolirap_lbl 9 `"NIU (not in universe)"', add
label values ca01a_nolirap ca01a_nolirap_lbl

label define ca01a_nolitap_lbl 1 `"Italian language known"'
label define ca01a_nolitap_lbl 2 `"Italian language unknown"', add
label define ca01a_nolitap_lbl 8 `"Unknown"', add
label define ca01a_nolitap_lbl 9 `"NIU (not in universe)"', add
label values ca01a_nolitap ca01a_nolitap_lbl

label define ca01a_nolnetp_lbl 1 `"Netherlandic languages known"'
label define ca01a_nolnetp_lbl 2 `"Netherlandic languages unknown"', add
label define ca01a_nolnetp_lbl 8 `"Unknown"', add
label define ca01a_nolnetp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_nolnetp ca01a_nolnetp_lbl

label define ca01a_nolpolp_lbl 1 `"Polish language known"'
label define ca01a_nolpolp_lbl 2 `"Polish language unknown"', add
label define ca01a_nolpolp_lbl 8 `"Unknown"', add
label define ca01a_nolpolp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_nolpolp ca01a_nolpolp_lbl

label define ca01a_nolporp_lbl 1 `"Portuguese language known"'
label define ca01a_nolporp_lbl 2 `"Portuguese language unknown"', add
label define ca01a_nolporp_lbl 8 `"Unknown"', add
label define ca01a_nolporp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_nolporp ca01a_nolporp_lbl

label define ca01a_nolpunp_lbl 1 `"Punjabi language known"'
label define ca01a_nolpunp_lbl 2 `"Punjabi language unknown"', add
label define ca01a_nolpunp_lbl 8 `"Unknown"', add
label define ca01a_nolpunp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_nolpunp ca01a_nolpunp_lbl

label define ca01a_nolspap_lbl 1 `"Spanish language known"'
label define ca01a_nolspap_lbl 2 `"Spanish language unknown"', add
label define ca01a_nolspap_lbl 8 `"Unknown"', add
label define ca01a_nolspap_lbl 9 `"NIU (not in universe)"', add
label values ca01a_nolspap ca01a_nolspap_lbl

label define ca01a_nolukrp_lbl 1 `"Ukrainian language known"'
label define ca01a_nolukrp_lbl 2 `"Ukrainian language unknown"', add
label define ca01a_nolukrp_lbl 8 `"Unknown"', add
label define ca01a_nolukrp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_nolukrp ca01a_nolukrp_lbl

label define ca01a_nolviep_lbl 1 `"Austro-Asiatic languages known"'
label define ca01a_nolviep_lbl 2 `"Austro-Asiatic languages unknown"', add
label define ca01a_nolviep_lbl 8 `"Unknown"', add
label define ca01a_nolviep_lbl 9 `"NIU (not in universe)"', add
label values ca01a_nolviep ca01a_nolviep_lbl

label define ca01a_wlnap_lbl 1 `"English"'
label define ca01a_wlnap_lbl 2 `"French"', add
label define ca01a_wlnap_lbl 3 `"Non-official language"', add
label define ca01a_wlnap_lbl 4 `"English and French"', add
label define ca01a_wlnap_lbl 5 `"Other multiple responses"', add
label define ca01a_wlnap_lbl 8 `"Unknown"', add
label define ca01a_wlnap_lbl 9 `"NIU (not in universe)"', add
label values ca01a_wlnap ca01a_wlnap_lbl

label define ca01a_wlnbp_lbl 1 `"No other language used"'
label define ca01a_wlnbp_lbl 2 `"English"', add
label define ca01a_wlnbp_lbl 3 `"French"', add
label define ca01a_wlnbp_lbl 4 `"Non-official language"', add
label define ca01a_wlnbp_lbl 5 `"English and French"', add
label define ca01a_wlnbp_lbl 6 `"Other multiple responses"', add
label define ca01a_wlnbp_lbl 8 `"Unknown"', add
label define ca01a_wlnbp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_wlnbp ca01a_wlnbp_lbl

label define ca01a_schattp_lbl 1 `"Not attending school"'
label define ca01a_schattp_lbl 2 `"Attending school full time"', add
label define ca01a_schattp_lbl 3 `"Attending school part time"', add
label define ca01a_schattp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_schattp ca01a_schattp_lbl

label define ca01a_hgradp_lbl 1 `"Less than Grade 5"'
label define ca01a_hgradp_lbl 2 `"Grades 5 to 8"', add
label define ca01a_hgradp_lbl 3 `"Grade 9"', add
label define ca01a_hgradp_lbl 4 `"Grade 10"', add
label define ca01a_hgradp_lbl 5 `"Grade 11"', add
label define ca01a_hgradp_lbl 6 `"Grade 12"', add
label define ca01a_hgradp_lbl 7 `"Grade 13"', add
label define ca01a_hgradp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_hgradp ca01a_hgradp_lbl

label define ca01a_secgradp_lbl 1 `"Without high school graduation certificate: without further training"'
label define ca01a_secgradp_lbl 2 `"Without high school graduation certificate: with further training"', add
label define ca01a_secgradp_lbl 3 `"With high school graduation certificate: without further training"', add
label define ca01a_secgradp_lbl 4 `"With high school graduation certificate: with further training"', add
label define ca01a_secgradp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_secgradp ca01a_secgradp_lbl

label define ca01a_hlosp_lbl 01 `"Less than Grade 5"'
label define ca01a_hlosp_lbl 02 `"Grades 5 to 8"', add
label define ca01a_hlosp_lbl 03 `"Grades 9 to 13"', add
label define ca01a_hlosp_lbl 04 `"Secondary - high school graduation certificate"', add
label define ca01a_hlosp_lbl 05 `"Trades certificate or diploma"', add
label define ca01a_hlosp_lbl 06 `"College: without trades or college certificate or diploma"', add
label define ca01a_hlosp_lbl 07 `"College: with trades certificate or diploma"', add
label define ca01a_hlosp_lbl 08 `"College: with college certificate or diploma"', add
label define ca01a_hlosp_lbl 09 `"University: without certificate, diploma or degree"', add
label define ca01a_hlosp_lbl 10 `"University: with university or college certificate or diploma"', add
label define ca01a_hlosp_lbl 11 `"University: with bachelor or first professional degree"', add
label define ca01a_hlosp_lbl 12 `"University: with certificate or diploma above bachelor level"', add
label define ca01a_hlosp_lbl 13 `"University: with master's degree[s]"', add
label define ca01a_hlosp_lbl 14 `"University: with earned doctorate"', add
label define ca01a_hlosp_lbl 99 `"NIU (not in universe)"', add
label values ca01a_hlosp ca01a_hlosp_lbl

label define ca01a_trnucp_lbl 1 `"Neither trades nor college certificate or diploma"'
label define ca01a_trnucp_lbl 2 `"Trades certificate or diploma only, without high school graduation certificate"', add
label define ca01a_trnucp_lbl 3 `"Other college certificate or diploma only, without high school graduation certificate"', add
label define ca01a_trnucp_lbl 4 `"Both trades and college certificates or diplomas, without high school graduation certificate"', add
label define ca01a_trnucp_lbl 5 `"Trades certificate or diploma only, with high school graduation certificate"', add
label define ca01a_trnucp_lbl 6 `"Other college certificate or diploma only, with high school graduation certificate"', add
label define ca01a_trnucp_lbl 7 `"Both trades and college certificates or diplomas, with high school graduation certificate"', add
label define ca01a_trnucp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_trnucp ca01a_trnucp_lbl

label define ca01a_dgreep_lbl 01 `"No degree, certificate or diploma"'
label define ca01a_dgreep_lbl 02 `"High school graduation certificate"', add
label define ca01a_dgreep_lbl 03 `"Trades certificate or diploma"', add
label define ca01a_dgreep_lbl 04 `"College certificate or diploma"', add
label define ca01a_dgreep_lbl 05 `"University certificate or diploma below bachelor level"', add
label define ca01a_dgreep_lbl 06 `"University degree: bachelor's degree"', add
label define ca01a_dgreep_lbl 07 `"University degree: university certificate above bachelor level"', add
label define ca01a_dgreep_lbl 08 `"University degree: medical degree"', add
label define ca01a_dgreep_lbl 09 `"University degree: master's degree"', add
label define ca01a_dgreep_lbl 10 `"University degree: earned doctorate"', add
label define ca01a_dgreep_lbl 99 `"NIU (not in universe)"', add
label values ca01a_dgreep ca01a_dgreep_lbl

label define ca01a_dgmfsp_lbl 01 `"Educational, recreational and counselling services"'
label define ca01a_dgmfsp_lbl 02 `"Fine and applied arts"', add
label define ca01a_dgmfsp_lbl 03 `"Humanities and related fields"', add
label define ca01a_dgmfsp_lbl 04 `"Social sciences and related fields"', add
label define ca01a_dgmfsp_lbl 05 `"Commerce, management and business administration: Business and commerce"', add
label define ca01a_dgmfsp_lbl 06 `"Commerce, management and business administration: Financial management"', add
label define ca01a_dgmfsp_lbl 07 `"Commerce, management and business administration: Industrial and institutional management and administration"', add
label define ca01a_dgmfsp_lbl 08 `"Commerce, management and business administration: Marketing, merchandising, retailing and sales"', add
label define ca01a_dgmfsp_lbl 09 `"Commerce, management and business administration: Office administration, secretarial and clerical"', add
label define ca01a_dgmfsp_lbl 10 `"Agricultural, biological, nutritional, and food sciences"', add
label define ca01a_dgmfsp_lbl 11 `"Engineering and applied sciences"', add
label define ca01a_dgmfsp_lbl 12 `"Applied science technologies and trades: Building technologies"', add
label define ca01a_dgmfsp_lbl 13 `"Applied science technologies and trades: Data processing and computer technologies"', add
label define ca01a_dgmfsp_lbl 14 `"Applied science technologies and trades: Electronic and electrical technologies"', add
label define ca01a_dgmfsp_lbl 15 `"Applied science technologies and trades: Other engineering technologies, n.e.c."', add
label define ca01a_dgmfsp_lbl 16 `"Health professions and related technologies: Nursing"', add
label define ca01a_dgmfsp_lbl 17 `"Health professions and related technologies: Alternative medicine and other health sciences"', add
label define ca01a_dgmfsp_lbl 18 `"Mathematics, computer and physical sciences"', add
label define ca01a_dgmfsp_lbl 19 `"All other"', add
label define ca01a_dgmfsp_lbl 20 `"No postsecondary qualifications"', add
label define ca01a_dgmfsp_lbl 99 `"NIU (not in universe)"', add
label values ca01a_dgmfsp ca01a_dgmfsp_lbl

label define ca01a_psuvp_lbl 0 `"None"'
label define ca01a_psuvp_lbl 1 `"Less than 1 year - of completed courses"', add
label define ca01a_psuvp_lbl 2 `"1 year"', add
label define ca01a_psuvp_lbl 3 `"2 years"', add
label define ca01a_psuvp_lbl 4 `"3 years"', add
label define ca01a_psuvp_lbl 5 `"4 years"', add
label define ca01a_psuvp_lbl 6 `"5 years"', add
label define ca01a_psuvp_lbl 7 `"6 years or more"', add
label define ca01a_psuvp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_psuvp ca01a_psuvp_lbl

label define ca01a_psotp_lbl 0 `"None"'
label define ca01a_psotp_lbl 1 `"Less than 1 year - of completed courses"', add
label define ca01a_psotp_lbl 2 `"1 year"', add
label define ca01a_psotp_lbl 3 `"2 years"', add
label define ca01a_psotp_lbl 4 `"3 years"', add
label define ca01a_psotp_lbl 5 `"4 years or more"', add
label define ca01a_psotp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_psotp ca01a_psotp_lbl

label define ca01a_totschp_lbl 0 `"NIU (not in universe)"'
label define ca01a_totschp_lbl 1 `"Less than Grade 5 or no schooling"', add
label define ca01a_totschp_lbl 2 `"5 to 8 years of schooling"', add
label define ca01a_totschp_lbl 3 `"9 years of schooling"', add
label define ca01a_totschp_lbl 4 `"10 years of schooling"', add
label define ca01a_totschp_lbl 5 `"11 years of schooling"', add
label define ca01a_totschp_lbl 6 `"12 years of schooling"', add
label define ca01a_totschp_lbl 7 `"13 years of schooling"', add
label define ca01a_totschp_lbl 8 `"14 to 17 years of schooling"', add
label define ca01a_totschp_lbl 9 `"18 or more years of schooling"', add
label values ca01a_totschp ca01a_totschp_lbl

label define ca01a_mob5p_lbl 1 `"Non-movers"'
label define ca01a_mob5p_lbl 2 `"Movers: non-migrants"', add
label define ca01a_mob5p_lbl 3 `"Movers: migrants: internal migrants: intraprovincial migrants: different CSD, same census division - CD"', add
label define ca01a_mob5p_lbl 4 `"Movers: migrants: Internal migrants: intraprovincial migrants: different CD, same province"', add
label define ca01a_mob5p_lbl 5 `"Movers: migrants: internal migrants: interprovincial migrants"', add
label define ca01a_mob5p_lbl 6 `"Movers: migrants: external migrants"', add
label define ca01a_mob5p_lbl 9 `"NIU (not in universe)"', add
label values ca01a_mob5p ca01a_mob5p_lbl

label define ca01a_mob1p_lbl 1 `"Non-movers"'
label define ca01a_mob1p_lbl 2 `"Movers: non-migrants"', add
label define ca01a_mob1p_lbl 3 `"Movers: migrants: Internal migrants: intraprovincial migrants: different CSD, same census division - CD"', add
label define ca01a_mob1p_lbl 4 `"Movers: migrants: Internal migrants: intraprovincial migrants: different CD, same province"', add
label define ca01a_mob1p_lbl 5 `"Movers: migrants: Internal migrants: interprovincial migrants"', add
label define ca01a_mob1p_lbl 6 `"Movers: migrants: External migrants"', add
label define ca01a_mob1p_lbl 8 `"Unknown"', add
label define ca01a_mob1p_lbl 9 `"NIU (not in universe)"', add
label values ca01a_mob1p ca01a_mob1p_lbl

label define ca01a_prov5p_lbl 01 `"Lived in Newfoundland"'
label define ca01a_prov5p_lbl 02 `"Lived in Prince Edward Island"', add
label define ca01a_prov5p_lbl 03 `"Lived in Nova Scotia"', add
label define ca01a_prov5p_lbl 04 `"Lived in New Brunswick"', add
label define ca01a_prov5p_lbl 05 `"Lived in Quebec"', add
label define ca01a_prov5p_lbl 06 `"Lived in Ontario"', add
label define ca01a_prov5p_lbl 07 `"Lived in Manitoba"', add
label define ca01a_prov5p_lbl 08 `"Lived in Saskatchewan"', add
label define ca01a_prov5p_lbl 09 `"Lived in Alberta"', add
label define ca01a_prov5p_lbl 10 `"Lived in British Columbia"', add
label define ca01a_prov5p_lbl 11 `"Lived in Yukon, Northwest Territories or Nunavut"', add
label define ca01a_prov5p_lbl 99 `"NIU (not in universe)"', add
label values ca01a_prov5p ca01a_prov5p_lbl

label define ca01a_prov1p_lbl 01 `"Lived in Newfoundland"'
label define ca01a_prov1p_lbl 02 `"Lived in Prince Edward Island"', add
label define ca01a_prov1p_lbl 03 `"Lived in Nova Scotia"', add
label define ca01a_prov1p_lbl 04 `"Lived in New Brunswick"', add
label define ca01a_prov1p_lbl 05 `"Lived in Quebec"', add
label define ca01a_prov1p_lbl 06 `"Lived in Ontario"', add
label define ca01a_prov1p_lbl 07 `"Lived in Manitoba"', add
label define ca01a_prov1p_lbl 08 `"Lived in Saskatchewan"', add
label define ca01a_prov1p_lbl 09 `"Lived in Alberta"', add
label define ca01a_prov1p_lbl 10 `"Lived in British Columbia"', add
label define ca01a_prov1p_lbl 11 `"Lived in Yukon, the Northwest Territories or Nunavut"', add
label define ca01a_prov1p_lbl 98 `"Unknown"', add
label define ca01a_prov1p_lbl 99 `"NIU (not in universe)"', add
label values ca01a_prov1p ca01a_prov1p_lbl

label define ca01a_powp_lbl 1 `"Worked at home"'
label define ca01a_powp_lbl 2 `"Usual place of work was in same census subdivision - CSD as the place of residence"', add
label define ca01a_powp_lbl 3 `"Usual place of work was in different CSD, in same census division as the place of residence"', add
label define ca01a_powp_lbl 4 `"Usual place of work was in different census division, in same province-territory as the place of residence"', add
label define ca01a_powp_lbl 5 `"Usual place of work was in different province-territory from the place of residence"', add
label define ca01a_powp_lbl 6 `"Worked outside Canada"', add
label define ca01a_powp_lbl 7 `"No fixed workplace address"', add
label define ca01a_powp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_powp ca01a_powp_lbl

label define ca01a_distp_lbl 1 `"less than 5 km"'
label define ca01a_distp_lbl 2 `"5 to 9.9 km"', add
label define ca01a_distp_lbl 3 `"10 to 14.9 km"', add
label define ca01a_distp_lbl 4 `"15 to 19.9 km"', add
label define ca01a_distp_lbl 5 `"20 to 24.9 km"', add
label define ca01a_distp_lbl 6 `"25 to 29.9 km"', add
label define ca01a_distp_lbl 7 `"Greater than or equal to 30 km"', add
label define ca01a_distp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_distp ca01a_distp_lbl

label define ca01a_modep_lbl 1 `"Car, truck or van - as driver"'
label define ca01a_modep_lbl 2 `"Car, truck or van - as passenger"', add
label define ca01a_modep_lbl 3 `"Public transit"', add
label define ca01a_modep_lbl 4 `"Walked to work"', add
label define ca01a_modep_lbl 5 `"Bicycle"', add
label define ca01a_modep_lbl 6 `"Motorcycle"', add
label define ca01a_modep_lbl 7 `"Taxicab"', add
label define ca01a_modep_lbl 8 `"Other method"', add
label define ca01a_modep_lbl 9 `"NIU (not in universe)"', add
label values ca01a_modep ca01a_modep_lbl

label define ca01a_lfactp_lbl 01 `"Employed - worked"'
label define ca01a_lfactp_lbl 02 `"Employed - absent"', add
label define ca01a_lfactp_lbl 03 `"Unemployed - lay-off - did not look for work"', add
label define ca01a_lfactp_lbl 04 `"Unemployed - lay-off - looked for full-time work"', add
label define ca01a_lfactp_lbl 05 `"Unemployed - lay-off - looked for part-time work"', add
label define ca01a_lfactp_lbl 06 `"Unemployed - new job - did not look for work"', add
label define ca01a_lfactp_lbl 07 `"Unemployed - new job - looked for full-time work"', add
label define ca01a_lfactp_lbl 08 `"Unemployed - new job - looked for part-time work"', add
label define ca01a_lfactp_lbl 09 `"Unemployed - looked for full-time work"', add
label define ca01a_lfactp_lbl 10 `"Unemployed - looked for part-time work"', add
label define ca01a_lfactp_lbl 11 `"Not in the labour force - last worked in 2001"', add
label define ca01a_lfactp_lbl 12 `"Not in the labour force - last worked in 2000"', add
label define ca01a_lfactp_lbl 13 `"Not in the labour force - last worked before 2000"', add
label define ca01a_lfactp_lbl 14 `"Not in the labour force - never worked"', add
label define ca01a_lfactp_lbl 99 `"NIU (not in universe)"', add
label values ca01a_lfactp ca01a_lfactp_lbl

label define ca01a_cowp_lbl 1 `"Paid workers - wage and salary earners and unpaid family workers"'
label define ca01a_cowp_lbl 2 `"Paid workers - self-employed incorporated without paid help"', add
label define ca01a_cowp_lbl 3 `"Paid workers - self-employed incorporated with paid help"', add
label define ca01a_cowp_lbl 4 `"Self-employed unincorporated without paid help"', add
label define ca01a_cowp_lbl 5 `"Self-employed unincorporated with paid help"', add
label define ca01a_cowp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_cowp ca01a_cowp_lbl

label define ca01a_fptwkp_lbl 1 `"Worked mainly full-time weeks in 2000"'
label define ca01a_fptwkp_lbl 2 `"Worked mainly part-time weeks in 2000"', add
label define ca01a_fptwkp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_fptwkp ca01a_fptwkp_lbl

label define ca01a_hrswkp_lbl 000 `"0"'
label define ca01a_hrswkp_lbl 001 `"1"', add
label define ca01a_hrswkp_lbl 002 `"2"', add
label define ca01a_hrswkp_lbl 003 `"3"', add
label define ca01a_hrswkp_lbl 004 `"4"', add
label define ca01a_hrswkp_lbl 005 `"5"', add
label define ca01a_hrswkp_lbl 006 `"6"', add
label define ca01a_hrswkp_lbl 007 `"7"', add
label define ca01a_hrswkp_lbl 008 `"8"', add
label define ca01a_hrswkp_lbl 009 `"9"', add
label define ca01a_hrswkp_lbl 010 `"10"', add
label define ca01a_hrswkp_lbl 011 `"11"', add
label define ca01a_hrswkp_lbl 012 `"12"', add
label define ca01a_hrswkp_lbl 013 `"13"', add
label define ca01a_hrswkp_lbl 014 `"14"', add
label define ca01a_hrswkp_lbl 015 `"15"', add
label define ca01a_hrswkp_lbl 016 `"16"', add
label define ca01a_hrswkp_lbl 017 `"17"', add
label define ca01a_hrswkp_lbl 018 `"18"', add
label define ca01a_hrswkp_lbl 019 `"19"', add
label define ca01a_hrswkp_lbl 020 `"20"', add
label define ca01a_hrswkp_lbl 021 `"21"', add
label define ca01a_hrswkp_lbl 022 `"22"', add
label define ca01a_hrswkp_lbl 023 `"23"', add
label define ca01a_hrswkp_lbl 024 `"24"', add
label define ca01a_hrswkp_lbl 025 `"25"', add
label define ca01a_hrswkp_lbl 026 `"26"', add
label define ca01a_hrswkp_lbl 027 `"27"', add
label define ca01a_hrswkp_lbl 028 `"28"', add
label define ca01a_hrswkp_lbl 029 `"29"', add
label define ca01a_hrswkp_lbl 030 `"30"', add
label define ca01a_hrswkp_lbl 031 `"31"', add
label define ca01a_hrswkp_lbl 032 `"32"', add
label define ca01a_hrswkp_lbl 033 `"33"', add
label define ca01a_hrswkp_lbl 034 `"34"', add
label define ca01a_hrswkp_lbl 035 `"35"', add
label define ca01a_hrswkp_lbl 036 `"36"', add
label define ca01a_hrswkp_lbl 037 `"37"', add
label define ca01a_hrswkp_lbl 038 `"38"', add
label define ca01a_hrswkp_lbl 039 `"39"', add
label define ca01a_hrswkp_lbl 040 `"40"', add
label define ca01a_hrswkp_lbl 041 `"41"', add
label define ca01a_hrswkp_lbl 042 `"42"', add
label define ca01a_hrswkp_lbl 043 `"43"', add
label define ca01a_hrswkp_lbl 044 `"44"', add
label define ca01a_hrswkp_lbl 045 `"45"', add
label define ca01a_hrswkp_lbl 046 `"46"', add
label define ca01a_hrswkp_lbl 047 `"47"', add
label define ca01a_hrswkp_lbl 048 `"48"', add
label define ca01a_hrswkp_lbl 049 `"49"', add
label define ca01a_hrswkp_lbl 050 `"50"', add
label define ca01a_hrswkp_lbl 051 `"51"', add
label define ca01a_hrswkp_lbl 052 `"52"', add
label define ca01a_hrswkp_lbl 053 `"53"', add
label define ca01a_hrswkp_lbl 054 `"54"', add
label define ca01a_hrswkp_lbl 055 `"55"', add
label define ca01a_hrswkp_lbl 056 `"56"', add
label define ca01a_hrswkp_lbl 057 `"57"', add
label define ca01a_hrswkp_lbl 058 `"58"', add
label define ca01a_hrswkp_lbl 059 `"59"', add
label define ca01a_hrswkp_lbl 060 `"60"', add
label define ca01a_hrswkp_lbl 061 `"61"', add
label define ca01a_hrswkp_lbl 062 `"62"', add
label define ca01a_hrswkp_lbl 063 `"63"', add
label define ca01a_hrswkp_lbl 064 `"64"', add
label define ca01a_hrswkp_lbl 065 `"65"', add
label define ca01a_hrswkp_lbl 066 `"66"', add
label define ca01a_hrswkp_lbl 067 `"67"', add
label define ca01a_hrswkp_lbl 068 `"68"', add
label define ca01a_hrswkp_lbl 069 `"69"', add
label define ca01a_hrswkp_lbl 070 `"70"', add
label define ca01a_hrswkp_lbl 071 `"71"', add
label define ca01a_hrswkp_lbl 072 `"72"', add
label define ca01a_hrswkp_lbl 073 `"73"', add
label define ca01a_hrswkp_lbl 074 `"74"', add
label define ca01a_hrswkp_lbl 075 `"75"', add
label define ca01a_hrswkp_lbl 076 `"76"', add
label define ca01a_hrswkp_lbl 077 `"77"', add
label define ca01a_hrswkp_lbl 078 `"78"', add
label define ca01a_hrswkp_lbl 079 `"79"', add
label define ca01a_hrswkp_lbl 080 `"80"', add
label define ca01a_hrswkp_lbl 081 `"81"', add
label define ca01a_hrswkp_lbl 082 `"82"', add
label define ca01a_hrswkp_lbl 083 `"83"', add
label define ca01a_hrswkp_lbl 084 `"84"', add
label define ca01a_hrswkp_lbl 085 `"85"', add
label define ca01a_hrswkp_lbl 086 `"86"', add
label define ca01a_hrswkp_lbl 087 `"87"', add
label define ca01a_hrswkp_lbl 088 `"88"', add
label define ca01a_hrswkp_lbl 089 `"89"', add
label define ca01a_hrswkp_lbl 090 `"90"', add
label define ca01a_hrswkp_lbl 091 `"91"', add
label define ca01a_hrswkp_lbl 092 `"92"', add
label define ca01a_hrswkp_lbl 093 `"93"', add
label define ca01a_hrswkp_lbl 094 `"94"', add
label define ca01a_hrswkp_lbl 095 `"95"', add
label define ca01a_hrswkp_lbl 096 `"96"', add
label define ca01a_hrswkp_lbl 097 `"97"', add
label define ca01a_hrswkp_lbl 098 `"98"', add
label define ca01a_hrswkp_lbl 099 `"99"', add
label define ca01a_hrswkp_lbl 100 `"100+"', add
label define ca01a_hrswkp_lbl 999 `"NIU (not in universe)"', add
label values ca01a_hrswkp ca01a_hrswkp_lbl

label define ca01a_lstwkp_lbl 1 `"Before 2000"'
label define ca01a_lstwkp_lbl 2 `"In 2000"', add
label define ca01a_lstwkp_lbl 3 `"In 2001"', add
label define ca01a_lstwkp_lbl 4 `"Never worked"', add
label define ca01a_lstwkp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_lstwkp ca01a_lstwkp_lbl

label define ca01a_wkswkp_lbl 00 `"0"'
label define ca01a_wkswkp_lbl 01 `"1"', add
label define ca01a_wkswkp_lbl 02 `"2"', add
label define ca01a_wkswkp_lbl 03 `"3"', add
label define ca01a_wkswkp_lbl 04 `"4"', add
label define ca01a_wkswkp_lbl 05 `"5"', add
label define ca01a_wkswkp_lbl 06 `"6"', add
label define ca01a_wkswkp_lbl 07 `"7"', add
label define ca01a_wkswkp_lbl 08 `"8"', add
label define ca01a_wkswkp_lbl 09 `"9"', add
label define ca01a_wkswkp_lbl 10 `"10"', add
label define ca01a_wkswkp_lbl 11 `"11"', add
label define ca01a_wkswkp_lbl 12 `"12"', add
label define ca01a_wkswkp_lbl 13 `"13"', add
label define ca01a_wkswkp_lbl 14 `"14"', add
label define ca01a_wkswkp_lbl 15 `"15"', add
label define ca01a_wkswkp_lbl 16 `"16"', add
label define ca01a_wkswkp_lbl 17 `"17"', add
label define ca01a_wkswkp_lbl 18 `"18"', add
label define ca01a_wkswkp_lbl 19 `"19"', add
label define ca01a_wkswkp_lbl 20 `"20"', add
label define ca01a_wkswkp_lbl 21 `"21"', add
label define ca01a_wkswkp_lbl 22 `"22"', add
label define ca01a_wkswkp_lbl 23 `"23"', add
label define ca01a_wkswkp_lbl 24 `"24"', add
label define ca01a_wkswkp_lbl 25 `"25"', add
label define ca01a_wkswkp_lbl 26 `"26"', add
label define ca01a_wkswkp_lbl 27 `"27"', add
label define ca01a_wkswkp_lbl 28 `"28"', add
label define ca01a_wkswkp_lbl 29 `"29"', add
label define ca01a_wkswkp_lbl 30 `"30"', add
label define ca01a_wkswkp_lbl 31 `"31"', add
label define ca01a_wkswkp_lbl 32 `"32"', add
label define ca01a_wkswkp_lbl 33 `"33"', add
label define ca01a_wkswkp_lbl 34 `"34"', add
label define ca01a_wkswkp_lbl 35 `"35"', add
label define ca01a_wkswkp_lbl 36 `"36"', add
label define ca01a_wkswkp_lbl 37 `"37"', add
label define ca01a_wkswkp_lbl 38 `"38"', add
label define ca01a_wkswkp_lbl 39 `"39"', add
label define ca01a_wkswkp_lbl 40 `"40"', add
label define ca01a_wkswkp_lbl 41 `"41"', add
label define ca01a_wkswkp_lbl 42 `"42"', add
label define ca01a_wkswkp_lbl 43 `"43"', add
label define ca01a_wkswkp_lbl 44 `"44"', add
label define ca01a_wkswkp_lbl 45 `"45"', add
label define ca01a_wkswkp_lbl 46 `"46"', add
label define ca01a_wkswkp_lbl 47 `"47"', add
label define ca01a_wkswkp_lbl 48 `"48"', add
label define ca01a_wkswkp_lbl 49 `"49"', add
label define ca01a_wkswkp_lbl 50 `"50"', add
label define ca01a_wkswkp_lbl 51 `"51"', add
label define ca01a_wkswkp_lbl 52 `"52"', add
label define ca01a_wkswkp_lbl 99 `"NIU (not in universe)"', add
label values ca01a_wkswkp ca01a_wkswkp_lbl

label define ca01a_nochrdp_lbl 01 `"Senior managers"'
label define ca01a_nochrdp_lbl 02 `"Middle and other managers"', add
label define ca01a_nochrdp_lbl 03 `"Professionals"', add
label define ca01a_nochrdp_lbl 04 `"Semi-professionals and technicians"', add
label define ca01a_nochrdp_lbl 05 `"Supervisors"', add
label define ca01a_nochrdp_lbl 06 `"Supervisors: crafts and trades"', add
label define ca01a_nochrdp_lbl 07 `"Administrative and senior clerical personnel"', add
label define ca01a_nochrdp_lbl 08 `"Skilled sales and service personnel"', add
label define ca01a_nochrdp_lbl 09 `"Skilled crafts and trades workers"', add
label define ca01a_nochrdp_lbl 10 `"Clerical personnel"', add
label define ca01a_nochrdp_lbl 11 `"Intermediate sales and service personnel"', add
label define ca01a_nochrdp_lbl 12 `"Semi-skilled manual workers"', add
label define ca01a_nochrdp_lbl 13 `"Other sales and service personnel"', add
label define ca01a_nochrdp_lbl 14 `"Other manual workers"', add
label define ca01a_nochrdp_lbl 99 `"NIU (not in universe)"', add
label values ca01a_nochrdp ca01a_nochrdp_lbl

label define ca01a_nocs01p_lbl 01 `"Senior management occupations"'
label define ca01a_nocs01p_lbl 02 `"Other management occupations"', add
label define ca01a_nocs01p_lbl 03 `"Professional occupations in business and finance"', add
label define ca01a_nocs01p_lbl 04 `"Financial, secretarial and administrative occupations"', add
label define ca01a_nocs01p_lbl 05 `"Clerical occupations and clerical supervisors"', add
label define ca01a_nocs01p_lbl 06 `"Occupations in natural and applied sciences"', add
label define ca01a_nocs01p_lbl 07 `"Professional occupations in health, registered nurses and supervisors"', add
label define ca01a_nocs01p_lbl 08 `"Technical, assisting and related occupations in health"', add
label define ca01a_nocs01p_lbl 09 `"Occupations in social science, government services and religion"', add
label define ca01a_nocs01p_lbl 10 `"Teachers and professors"', add
label define ca01a_nocs01p_lbl 11 `"Occupations in art, culture, recreation and sport"', add
label define ca01a_nocs01p_lbl 12 `"Wholesale, technical, insurance, real estate sales specialists, and retail, wholesale and grain buyers"', add
label define ca01a_nocs01p_lbl 13 `"Retail trade supervisors, salespersons, sales clerks and cashiers"', add
label define ca01a_nocs01p_lbl 14 `"Chefs and cooks, supervisors, and other occupations in food and beverage service"', add
label define ca01a_nocs01p_lbl 15 `"Occupations in protective services"', add
label define ca01a_nocs01p_lbl 16 `"Childcare and home support workers"', add
label define ca01a_nocs01p_lbl 17 `"Service supervisors, occupations in travel and accommodation, attendants in recreation and sport and sales and service occupations, n.e.c."', add
label define ca01a_nocs01p_lbl 18 `"Contractors and supervisors in trades and transportation"', add
label define ca01a_nocs01p_lbl 19 `"Construction trades"', add
label define ca01a_nocs01p_lbl 20 `"Other trades occupations"', add
label define ca01a_nocs01p_lbl 21 `"Transport and equipment operators"', add
label define ca01a_nocs01p_lbl 22 `"Trades helpers, construction, and transportation laborers and related occupations"', add
label define ca01a_nocs01p_lbl 23 `"Occupations unique to primary industries"', add
label define ca01a_nocs01p_lbl 24 `"Supervisors, machine operators and assemblers in manufacturing"', add
label define ca01a_nocs01p_lbl 25 `"Laborers in processing, manufacturing and utilities"', add
label define ca01a_nocs01p_lbl 99 `"NIU (not in universe)"', add
label values ca01a_nocs01p ca01a_nocs01p_lbl

label define ca01a_ind80p_lbl 01 `"Agriculture"'
label define ca01a_ind80p_lbl 02 `"Other primary industries"', add
label define ca01a_ind80p_lbl 03 `"Manufacturing"', add
label define ca01a_ind80p_lbl 04 `"Construction"', add
label define ca01a_ind80p_lbl 05 `"Transportation and storage"', add
label define ca01a_ind80p_lbl 06 `"Communication and other utilities"', add
label define ca01a_ind80p_lbl 07 `"Wholesale trade"', add
label define ca01a_ind80p_lbl 08 `"Retail trade"', add
label define ca01a_ind80p_lbl 09 `"Finance, insurance and real estate"', add
label define ca01a_ind80p_lbl 10 `"Business services"', add
label define ca01a_ind80p_lbl 11 `"Government services: federal"', add
label define ca01a_ind80p_lbl 12 `"Government services: other"', add
label define ca01a_ind80p_lbl 13 `"Educational services"', add
label define ca01a_ind80p_lbl 14 `"Health and social services"', add
label define ca01a_ind80p_lbl 15 `"Accommodation, food and beverage services"', add
label define ca01a_ind80p_lbl 16 `"Other services"', add
label define ca01a_ind80p_lbl 98 `"Unknown"', add
label define ca01a_ind80p_lbl 99 `"NIU (not in universe)"', add
label values ca01a_ind80p ca01a_ind80p_lbl

label define ca01a_naicsp_lbl 01 `"Agriculture, forestry, fishing and hunting"'
label define ca01a_naicsp_lbl 02 `"Mining and oil and gas extraction"', add
label define ca01a_naicsp_lbl 03 `"Utilities"', add
label define ca01a_naicsp_lbl 04 `"Construction"', add
label define ca01a_naicsp_lbl 05 `"Manufacturing"', add
label define ca01a_naicsp_lbl 06 `"Wholesale trade"', add
label define ca01a_naicsp_lbl 07 `"Retail trade"', add
label define ca01a_naicsp_lbl 08 `"Transportation and warehousing"', add
label define ca01a_naicsp_lbl 09 `"Information and cultural industries"', add
label define ca01a_naicsp_lbl 10 `"Finance and insurance"', add
label define ca01a_naicsp_lbl 11 `"Real estate and rental and leasing"', add
label define ca01a_naicsp_lbl 12 `"Professional, scientific and technical services"', add
label define ca01a_naicsp_lbl 13 `"Management of companies and enterprises"', add
label define ca01a_naicsp_lbl 14 `"Administrative and support, waste management and remediation services"', add
label define ca01a_naicsp_lbl 15 `"Educational services"', add
label define ca01a_naicsp_lbl 16 `"Health care and social assistance"', add
label define ca01a_naicsp_lbl 17 `"Arts, entertainment and recreation"', add
label define ca01a_naicsp_lbl 18 `"Accommodation and food services"', add
label define ca01a_naicsp_lbl 19 `"Other services - except public administration"', add
label define ca01a_naicsp_lbl 20 `"Public administration"', add
label define ca01a_naicsp_lbl 98 `"Unknown"', add
label define ca01a_naicsp_lbl 99 `"NIU (not in universe)"', add
label values ca01a_naicsp ca01a_naicsp_lbl

label define ca01a_uphwkp_lbl 0 `"None"'
label define ca01a_uphwkp_lbl 1 `"Less than 5 hours"', add
label define ca01a_uphwkp_lbl 2 `"5 to 14 hours"', add
label define ca01a_uphwkp_lbl 3 `"15 to 29 hours"', add
label define ca01a_uphwkp_lbl 4 `"30 to 59 hours"', add
label define ca01a_uphwkp_lbl 5 `"60 hours or more"', add
label define ca01a_uphwkp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_uphwkp ca01a_uphwkp_lbl

label define ca01a_upkidp_lbl 0 `"None"'
label define ca01a_upkidp_lbl 1 `"Less than 5 hours"', add
label define ca01a_upkidp_lbl 2 `"5 to 14 hours"', add
label define ca01a_upkidp_lbl 3 `"15 to 29 hours"', add
label define ca01a_upkidp_lbl 4 `"30 to 59 hours"', add
label define ca01a_upkidp_lbl 5 `"60 hours or more"', add
label define ca01a_upkidp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_upkidp ca01a_upkidp_lbl

label define ca01a_upsrp_lbl 0 `"None"'
label define ca01a_upsrp_lbl 1 `"Less than 5 hours"', add
label define ca01a_upsrp_lbl 2 `"5 to 9 hours"', add
label define ca01a_upsrp_lbl 3 `"10 to 19 hours"', add
label define ca01a_upsrp_lbl 4 `"20 hours or more"', add
label define ca01a_upsrp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_upsrp ca01a_upsrp_lbl

label define ca01a_hhincp_lbl 01 `"Loss"'
label define ca01a_hhincp_lbl 02 `"No income"', add
label define ca01a_hhincp_lbl 03 `"$1 - $1,999"', add
label define ca01a_hhincp_lbl 04 `"$2,000 - $4,999"', add
label define ca01a_hhincp_lbl 05 `"$5,000 - $7,999"', add
label define ca01a_hhincp_lbl 06 `"$8,000 - $9,999"', add
label define ca01a_hhincp_lbl 07 `"$10,000 - $14,999"', add
label define ca01a_hhincp_lbl 08 `"$15,000 - $19,999"', add
label define ca01a_hhincp_lbl 09 `"$20,000 - $24,999"', add
label define ca01a_hhincp_lbl 10 `"$25,000 - $29,999"', add
label define ca01a_hhincp_lbl 11 `"$30,000 - $34,999"', add
label define ca01a_hhincp_lbl 12 `"$35,000 - $39,999"', add
label define ca01a_hhincp_lbl 13 `"$40,000 - $44,999"', add
label define ca01a_hhincp_lbl 14 `"$45,000 - $49,999"', add
label define ca01a_hhincp_lbl 15 `"$50,000 - $54,999"', add
label define ca01a_hhincp_lbl 16 `"$55,000 - $59,999"', add
label define ca01a_hhincp_lbl 17 `"$60,000 - $64,999"', add
label define ca01a_hhincp_lbl 18 `"$65,000 - $69,999"', add
label define ca01a_hhincp_lbl 19 `"$70,000 - $74,999"', add
label define ca01a_hhincp_lbl 20 `"$75,000 - $84,999"', add
label define ca01a_hhincp_lbl 21 `"$85,000 - $99,999"', add
label define ca01a_hhincp_lbl 22 `"$100,000 - $119,999"', add
label define ca01a_hhincp_lbl 23 `"$120,000 or more"', add
label define ca01a_hhincp_lbl 99 `"NIU (not in universe)"', add
label values ca01a_hhincp ca01a_hhincp_lbl

label define ca01a_hhincpa_lbl 01 `"Loss"'
label define ca01a_hhincpa_lbl 02 `"No income"', add
label define ca01a_hhincpa_lbl 03 `"$1 - $1,999"', add
label define ca01a_hhincpa_lbl 04 `"$2,000 - $4,999"', add
label define ca01a_hhincpa_lbl 05 `"$5,000 - $7,999"', add
label define ca01a_hhincpa_lbl 06 `"$8,000 - $9,999"', add
label define ca01a_hhincpa_lbl 07 `"$10,000 - $14,999"', add
label define ca01a_hhincpa_lbl 08 `"$15,000 - $19,999"', add
label define ca01a_hhincpa_lbl 09 `"$20,000 - $24,999"', add
label define ca01a_hhincpa_lbl 10 `"$25,000 - $29,999"', add
label define ca01a_hhincpa_lbl 11 `"$30,000 - $34,999"', add
label define ca01a_hhincpa_lbl 12 `"$35,000 - $39,999"', add
label define ca01a_hhincpa_lbl 13 `"$40,000 - $44,999"', add
label define ca01a_hhincpa_lbl 14 `"$45,000 - $49,999"', add
label define ca01a_hhincpa_lbl 15 `"$50,000 - $54,999"', add
label define ca01a_hhincpa_lbl 16 `"$55,000 - $59,999"', add
label define ca01a_hhincpa_lbl 17 `"$60,000 - $64,999"', add
label define ca01a_hhincpa_lbl 18 `"$65,000 - $69,999"', add
label define ca01a_hhincpa_lbl 19 `"$70,000 - $74,999"', add
label define ca01a_hhincpa_lbl 20 `"$75,000 - $84,999"', add
label define ca01a_hhincpa_lbl 21 `"$85,000 - $99,999"', add
label define ca01a_hhincpa_lbl 22 `"$100,000 - $119,999"', add
label define ca01a_hhincpa_lbl 23 `"$120,000 - $149,999"', add
label define ca01a_hhincpa_lbl 24 `"$150,000 - $199,999"', add
label define ca01a_hhincpa_lbl 25 `"$200,000 or more"', add
label define ca01a_hhincpa_lbl 98 `"Unknown"', add
label define ca01a_hhincpa_lbl 99 `"NIU (not in universe)"', add
label values ca01a_hhincpa ca01a_hhincpa_lbl

label define ca01a_cfincp_lbl 01 `"Loss"'
label define ca01a_cfincp_lbl 02 `"No income"', add
label define ca01a_cfincp_lbl 03 `"$1 - $1,999"', add
label define ca01a_cfincp_lbl 04 `"$2,000 - $4,999"', add
label define ca01a_cfincp_lbl 05 `"$5,000 - $7,999"', add
label define ca01a_cfincp_lbl 06 `"$8,000 - $9,999"', add
label define ca01a_cfincp_lbl 07 `"$10,000 - $14,999"', add
label define ca01a_cfincp_lbl 08 `"$15,000 - $19,999"', add
label define ca01a_cfincp_lbl 09 `"$20,000 - $24,999"', add
label define ca01a_cfincp_lbl 10 `"$25,000 - $29,999"', add
label define ca01a_cfincp_lbl 11 `"$30,000 - $34,999"', add
label define ca01a_cfincp_lbl 12 `"$35,000 - $39,999"', add
label define ca01a_cfincp_lbl 13 `"$40,000 - $44,999"', add
label define ca01a_cfincp_lbl 14 `"$45,000 - $49,999"', add
label define ca01a_cfincp_lbl 15 `"$50,000 - $54,999"', add
label define ca01a_cfincp_lbl 16 `"$55,000 - $59,999"', add
label define ca01a_cfincp_lbl 17 `"$60,000 - $64,999"', add
label define ca01a_cfincp_lbl 18 `"$65,000 - $69,999"', add
label define ca01a_cfincp_lbl 19 `"$70,000 - $74,999"', add
label define ca01a_cfincp_lbl 20 `"$75,000 - $84,999"', add
label define ca01a_cfincp_lbl 21 `"$85,000 - $99,999"', add
label define ca01a_cfincp_lbl 22 `"$100,000 - $119,999"', add
label define ca01a_cfincp_lbl 23 `"$120,000 or more"', add
label define ca01a_cfincp_lbl 99 `"NIU (not in universe)"', add
label values ca01a_cfincp ca01a_cfincp_lbl

label define ca01a_cfincpa_lbl 01 `"Loss"'
label define ca01a_cfincpa_lbl 02 `"No income"', add
label define ca01a_cfincpa_lbl 03 `"$1 - $1,999"', add
label define ca01a_cfincpa_lbl 04 `"$2,000 - $4,999"', add
label define ca01a_cfincpa_lbl 05 `"$5,000 - $7,999"', add
label define ca01a_cfincpa_lbl 06 `"$8,000 - $9,999"', add
label define ca01a_cfincpa_lbl 07 `"$10,000 - $14,999"', add
label define ca01a_cfincpa_lbl 08 `"$15,000 - $19,999"', add
label define ca01a_cfincpa_lbl 09 `"$20,000 - $24,999"', add
label define ca01a_cfincpa_lbl 10 `"$25,000 - $29,999"', add
label define ca01a_cfincpa_lbl 11 `"$30,000 - $34,999"', add
label define ca01a_cfincpa_lbl 12 `"$35,000 - $39,999"', add
label define ca01a_cfincpa_lbl 13 `"$40,000 - $44,999"', add
label define ca01a_cfincpa_lbl 14 `"$45,000 - $49,999"', add
label define ca01a_cfincpa_lbl 15 `"$50,000 - $54,999"', add
label define ca01a_cfincpa_lbl 16 `"$55,000 - $59,999"', add
label define ca01a_cfincpa_lbl 17 `"$60,000 - $64,999"', add
label define ca01a_cfincpa_lbl 18 `"$65,000 - $69,999"', add
label define ca01a_cfincpa_lbl 19 `"$70,000 - $74,999"', add
label define ca01a_cfincpa_lbl 20 `"$75,000 - $84,999"', add
label define ca01a_cfincpa_lbl 21 `"$85,000 - $99,999"', add
label define ca01a_cfincpa_lbl 22 `"$100,000 - $119,999"', add
label define ca01a_cfincpa_lbl 23 `"$120,000 - $149,999"', add
label define ca01a_cfincpa_lbl 24 `"$150,000 - $199,999"', add
label define ca01a_cfincpa_lbl 25 `"$200,000 or more"', add
label define ca01a_cfincpa_lbl 98 `"Unknown"', add
label define ca01a_cfincpa_lbl 99 `"NIU (not in universe)"', add
label values ca01a_cfincpa ca01a_cfincpa_lbl

label define ca01a_mscfincp_lbl 1 `"No income"'
label define ca01a_mscfincp_lbl 2 `"Wages and salaries"', add
label define ca01a_mscfincp_lbl 3 `"Self-employment income"', add
label define ca01a_mscfincp_lbl 4 `"Government transfer payments"', add
label define ca01a_mscfincp_lbl 5 `"Investment income"', add
label define ca01a_mscfincp_lbl 6 `"Other income"', add
label define ca01a_mscfincp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_mscfincp ca01a_mscfincp_lbl

label define ca01a_totincp_lbl 0000000 `"No income or summed to zero"'
label define ca01a_totincp_lbl 0200000 `"200000+"', add
label define ca01a_totincp_lbl 9999999 `"NIU (not in universe)"', add
label values ca01a_totincp ca01a_totincp_lbl

label define ca01a_wagesp_lbl 0200000 `"200000+"'
label define ca01a_wagesp_lbl 9999999 `"NIU (not in universe)"', add
label values ca01a_wagesp ca01a_wagesp_lbl

label define ca01a_selfip_lbl 0200000 `"200000+"'
label define ca01a_selfip_lbl 9999999 `"NIU (not in universe)"', add
label values ca01a_selfip ca01a_selfip_lbl

label define ca01a_chdbnp_lbl 9999999 `"NIU (not in universe)"'
label values ca01a_chdbnp ca01a_chdbnp_lbl

label define ca01a_oasgip_lbl 9999999 `"NIU (not in universe)"'
label values ca01a_oasgip ca01a_oasgip_lbl

label define ca01a_cqppbp_lbl 9999999 `"NIU (not in universe)"'
label values ca01a_cqppbp ca01a_cqppbp_lbl

label define ca01a_uicbnp_lbl 9999999 `"NIU (not in universe)"'
label values ca01a_uicbnp ca01a_uicbnp_lbl

label define ca01a_govtip_lbl 9999999 `"NIU (not in universe)"'
label values ca01a_govtip ca01a_govtip_lbl

label define ca01a_tgovtp_lbl 9999999 `"NIU (not in universe)"'
label values ca01a_tgovtp ca01a_tgovtp_lbl

label define ca01a_invstp_lbl 0200000 `"200000+"'
label define ca01a_invstp_lbl 9999999 `"NIU (not in universe)"', add
label values ca01a_invstp ca01a_invstp_lbl

label define ca01a_retirp_lbl 9999999 `"NIU (not in universe)"'
label values ca01a_retirp ca01a_retirp_lbl

label define ca01a_otincp_lbl 9999999 `"NIU (not in universe)"'
label values ca01a_otincp ca01a_otincp_lbl

label define ca01a_incstp_lbl 1 `"Above line - The total income of the economic family unit in 2000 was not below the low income cut-off point for it"'
label define ca01a_incstp_lbl 2 `"Below line - The total income of the economic family unit in 2000 was below the low income cut-off point for it"', add
label define ca01a_incstp_lbl 8 `"Unknown"', add
label define ca01a_incstp_lbl 9 `"NIU (not in universe)"', add
label values ca01a_incstp ca01a_incstp_lbl

label define ca01a_weightp_lbl 35545777 `"35545777"'
label define ca01a_weightp_lbl 35614217 `"35614217"', add
label define ca01a_weightp_lbl 35647244 `"35647244"', add
label define ca01a_weightp_lbl 35751721 `"35751721"', add
label define ca01a_weightp_lbl 35796647 `"35796647"', add
label define ca01a_weightp_lbl 35873877 `"35873877"', add
label define ca01a_weightp_lbl 35915671 `"35915671"', add
label define ca01a_weightp_lbl 36159389 `"36159389"', add
label define ca01a_weightp_lbl 36170660 `"36170660"', add
label define ca01a_weightp_lbl 36195453 `"36195453"', add
label define ca01a_weightp_lbl 36201226 `"36201226"', add
label define ca01a_weightp_lbl 36214369 `"36214369"', add
label define ca01a_weightp_lbl 36218146 `"36218146"', add
label define ca01a_weightp_lbl 36243543 `"36243543"', add
label define ca01a_weightp_lbl 36279915 `"36279915"', add
label define ca01a_weightp_lbl 36291228 `"36291228"', add
label define ca01a_weightp_lbl 36305706 `"36305706"', add
label define ca01a_weightp_lbl 36334110 `"36334110"', add
label define ca01a_weightp_lbl 36335411 `"36335411"', add
label define ca01a_weightp_lbl 36346483 `"36346483"', add
label define ca01a_weightp_lbl 36360767 `"36360767"', add
label define ca01a_weightp_lbl 36381407 `"36381407"', add
label define ca01a_weightp_lbl 36426842 `"36426842"', add
label define ca01a_weightp_lbl 36426946 `"36426946"', add
label define ca01a_weightp_lbl 36466062 `"36466062"', add
label define ca01a_weightp_lbl 36485530 `"36485530"', add
label define ca01a_weightp_lbl 36504382 `"36504382"', add
label define ca01a_weightp_lbl 36521198 `"36521198"', add
label define ca01a_weightp_lbl 36536448 `"36536448"', add
label define ca01a_weightp_lbl 36543504 `"36543504"', add
label define ca01a_weightp_lbl 36544926 `"36544926"', add
label define ca01a_weightp_lbl 36553061 `"36553061"', add
label define ca01a_weightp_lbl 36553168 `"36553168"', add
label define ca01a_weightp_lbl 36554866 `"36554866"', add
label define ca01a_weightp_lbl 36583682 `"36583682"', add
label define ca01a_weightp_lbl 36585083 `"36585083"', add
label define ca01a_weightp_lbl 36596745 `"36596745"', add
label define ca01a_weightp_lbl 36614667 `"36614667"', add
label define ca01a_weightp_lbl 36624854 `"36624854"', add
label define ca01a_weightp_lbl 36634904 `"36634904"', add
label define ca01a_weightp_lbl 36636820 `"36636820"', add
label define ca01a_weightp_lbl 36638071 `"36638071"', add
label define ca01a_weightp_lbl 36640521 `"36640521"', add
label define ca01a_weightp_lbl 36649096 `"36649096"', add
label define ca01a_weightp_lbl 36657036 `"36657036"', add
label define ca01a_weightp_lbl 36667805 `"36667805"', add
label define ca01a_weightp_lbl 36682179 `"36682179"', add
label define ca01a_weightp_lbl 36690107 `"36690107"', add
label define ca01a_weightp_lbl 36694298 `"36694298"', add
label define ca01a_weightp_lbl 36697821 `"36697821"', add
label define ca01a_weightp_lbl 36702995 `"36702995"', add
label define ca01a_weightp_lbl 36717072 `"36717072"', add
label define ca01a_weightp_lbl 36728415 `"36728415"', add
label define ca01a_weightp_lbl 36728958 `"36728958"', add
label define ca01a_weightp_lbl 36730699 `"36730699"', add
label define ca01a_weightp_lbl 36733759 `"36733759"', add
label define ca01a_weightp_lbl 36736847 `"36736847"', add
label define ca01a_weightp_lbl 36738918 `"36738918"', add
label define ca01a_weightp_lbl 36742929 `"36742929"', add
label define ca01a_weightp_lbl 36745789 `"36745789"', add
label define ca01a_weightp_lbl 36753511 `"36753511"', add
label define ca01a_weightp_lbl 36755299 `"36755299"', add
label define ca01a_weightp_lbl 36760554 `"36760554"', add
label define ca01a_weightp_lbl 36775326 `"36775326"', add
label define ca01a_weightp_lbl 36776558 `"36776558"', add
label define ca01a_weightp_lbl 36778076 `"36778076"', add
label define ca01a_weightp_lbl 36778694 `"36778694"', add
label define ca01a_weightp_lbl 36781752 `"36781752"', add
label define ca01a_weightp_lbl 36793076 `"36793076"', add
label define ca01a_weightp_lbl 36796665 `"36796665"', add
label define ca01a_weightp_lbl 36796863 `"36796863"', add
label define ca01a_weightp_lbl 36803650 `"36803650"', add
label define ca01a_weightp_lbl 36805975 `"36805975"', add
label define ca01a_weightp_lbl 36805999 `"36805999"', add
label define ca01a_weightp_lbl 36806229 `"36806229"', add
label define ca01a_weightp_lbl 36811816 `"36811816"', add
label define ca01a_weightp_lbl 36821353 `"36821353"', add
label define ca01a_weightp_lbl 36824004 `"36824004"', add
label define ca01a_weightp_lbl 36825843 `"36825843"', add
label define ca01a_weightp_lbl 36828442 `"36828442"', add
label define ca01a_weightp_lbl 36831249 `"36831249"', add
label define ca01a_weightp_lbl 36832482 `"36832482"', add
label define ca01a_weightp_lbl 36833557 `"36833557"', add
label define ca01a_weightp_lbl 36835479 `"36835479"', add
label define ca01a_weightp_lbl 36837137 `"36837137"', add
label define ca01a_weightp_lbl 36838666 `"36838666"', add
label define ca01a_weightp_lbl 36841258 `"36841258"', add
label define ca01a_weightp_lbl 36842692 `"36842692"', add
label define ca01a_weightp_lbl 36844776 `"36844776"', add
label define ca01a_weightp_lbl 36848237 `"36848237"', add
label define ca01a_weightp_lbl 36850575 `"36850575"', add
label define ca01a_weightp_lbl 36854096 `"36854096"', add
label define ca01a_weightp_lbl 36857250 `"36857250"', add
label define ca01a_weightp_lbl 36858906 `"36858906"', add
label define ca01a_weightp_lbl 36860088 `"36860088"', add
label define ca01a_weightp_lbl 36860173 `"36860173"', add
label define ca01a_weightp_lbl 36860857 `"36860857"', add
label define ca01a_weightp_lbl 36861952 `"36861952"', add
label define ca01a_weightp_lbl 36863508 `"36863508"', add
label define ca01a_weightp_lbl 36863971 `"36863971"', add
label define ca01a_weightp_lbl 36864241 `"36864241"', add
label define ca01a_weightp_lbl 36866381 `"36866381"', add
label define ca01a_weightp_lbl 36868136 `"36868136"', add
label define ca01a_weightp_lbl 36868799 `"36868799"', add
label define ca01a_weightp_lbl 36872817 `"36872817"', add
label define ca01a_weightp_lbl 36874387 `"36874387"', add
label define ca01a_weightp_lbl 36877546 `"36877546"', add
label define ca01a_weightp_lbl 36878410 `"36878410"', add
label define ca01a_weightp_lbl 36886440 `"36886440"', add
label define ca01a_weightp_lbl 36887405 `"36887405"', add
label define ca01a_weightp_lbl 36889895 `"36889895"', add
label define ca01a_weightp_lbl 36892709 `"36892709"', add
label define ca01a_weightp_lbl 36894294 `"36894294"', add
label define ca01a_weightp_lbl 36894968 `"36894968"', add
label define ca01a_weightp_lbl 36900298 `"36900298"', add
label define ca01a_weightp_lbl 36901706 `"36901706"', add
label define ca01a_weightp_lbl 36904162 `"36904162"', add
label define ca01a_weightp_lbl 36907129 `"36907129"', add
label define ca01a_weightp_lbl 36907663 `"36907663"', add
label define ca01a_weightp_lbl 36909114 `"36909114"', add
label define ca01a_weightp_lbl 36911815 `"36911815"', add
label define ca01a_weightp_lbl 36912066 `"36912066"', add
label define ca01a_weightp_lbl 36912450 `"36912450"', add
label define ca01a_weightp_lbl 36912818 `"36912818"', add
label define ca01a_weightp_lbl 36913284 `"36913284"', add
label define ca01a_weightp_lbl 36913805 `"36913805"', add
label define ca01a_weightp_lbl 36914320 `"36914320"', add
label define ca01a_weightp_lbl 36914398 `"36914398"', add
label define ca01a_weightp_lbl 36914419 `"36914419"', add
label define ca01a_weightp_lbl 36914764 `"36914764"', add
label define ca01a_weightp_lbl 36915470 `"36915470"', add
label define ca01a_weightp_lbl 36918465 `"36918465"', add
label define ca01a_weightp_lbl 36919142 `"36919142"', add
label define ca01a_weightp_lbl 36919360 `"36919360"', add
label define ca01a_weightp_lbl 36919583 `"36919583"', add
label define ca01a_weightp_lbl 36920677 `"36920677"', add
label define ca01a_weightp_lbl 36921910 `"36921910"', add
label define ca01a_weightp_lbl 36922053 `"36922053"', add
label define ca01a_weightp_lbl 36923057 `"36923057"', add
label define ca01a_weightp_lbl 36923721 `"36923721"', add
label define ca01a_weightp_lbl 36923935 `"36923935"', add
label define ca01a_weightp_lbl 36924079 `"36924079"', add
label define ca01a_weightp_lbl 36925123 `"36925123"', add
label define ca01a_weightp_lbl 36926649 `"36926649"', add
label define ca01a_weightp_lbl 36926936 `"36926936"', add
label define ca01a_weightp_lbl 36927802 `"36927802"', add
label define ca01a_weightp_lbl 36928642 `"36928642"', add
label define ca01a_weightp_lbl 36929696 `"36929696"', add
label define ca01a_weightp_lbl 36930112 `"36930112"', add
label define ca01a_weightp_lbl 36930237 `"36930237"', add
label define ca01a_weightp_lbl 36932832 `"36932832"', add
label define ca01a_weightp_lbl 36933045 `"36933045"', add
label define ca01a_weightp_lbl 36933280 `"36933280"', add
label define ca01a_weightp_lbl 36933317 `"36933317"', add
label define ca01a_weightp_lbl 36933363 `"36933363"', add
label define ca01a_weightp_lbl 36933402 `"36933402"', add
label define ca01a_weightp_lbl 36934831 `"36934831"', add
label define ca01a_weightp_lbl 36935725 `"36935725"', add
label define ca01a_weightp_lbl 36935920 `"36935920"', add
label define ca01a_weightp_lbl 36936098 `"36936098"', add
label define ca01a_weightp_lbl 36939635 `"36939635"', add
label define ca01a_weightp_lbl 36940003 `"36940003"', add
label define ca01a_weightp_lbl 36941079 `"36941079"', add
label define ca01a_weightp_lbl 36941652 `"36941652"', add
label define ca01a_weightp_lbl 36942667 `"36942667"', add
label define ca01a_weightp_lbl 36943002 `"36943002"', add
label define ca01a_weightp_lbl 36945256 `"36945256"', add
label define ca01a_weightp_lbl 36945260 `"36945260"', add
label define ca01a_weightp_lbl 36946423 `"36946423"', add
label define ca01a_weightp_lbl 36947220 `"36947220"', add
label define ca01a_weightp_lbl 36949152 `"36949152"', add
label define ca01a_weightp_lbl 36950547 `"36950547"', add
label define ca01a_weightp_lbl 36951286 `"36951286"', add
label define ca01a_weightp_lbl 36953542 `"36953542"', add
label define ca01a_weightp_lbl 36953847 `"36953847"', add
label define ca01a_weightp_lbl 36954454 `"36954454"', add
label define ca01a_weightp_lbl 36954476 `"36954476"', add
label define ca01a_weightp_lbl 36955781 `"36955781"', add
label define ca01a_weightp_lbl 36958897 `"36958897"', add
label define ca01a_weightp_lbl 36960373 `"36960373"', add
label define ca01a_weightp_lbl 36960974 `"36960974"', add
label define ca01a_weightp_lbl 36961562 `"36961562"', add
label define ca01a_weightp_lbl 36963854 `"36963854"', add
label define ca01a_weightp_lbl 36966144 `"36966144"', add
label define ca01a_weightp_lbl 36966288 `"36966288"', add
label define ca01a_weightp_lbl 36967653 `"36967653"', add
label define ca01a_weightp_lbl 36968243 `"36968243"', add
label define ca01a_weightp_lbl 36968278 `"36968278"', add
label define ca01a_weightp_lbl 36968384 `"36968384"', add
label define ca01a_weightp_lbl 36969472 `"36969472"', add
label define ca01a_weightp_lbl 36969696 `"36969696"', add
label define ca01a_weightp_lbl 36971325 `"36971325"', add
label define ca01a_weightp_lbl 36972522 `"36972522"', add
label define ca01a_weightp_lbl 36975908 `"36975908"', add
label define ca01a_weightp_lbl 36976099 `"36976099"', add
label define ca01a_weightp_lbl 36979193 `"36979193"', add
label define ca01a_weightp_lbl 36979433 `"36979433"', add
label define ca01a_weightp_lbl 36983072 `"36983072"', add
label define ca01a_weightp_lbl 36985528 `"36985528"', add
label define ca01a_weightp_lbl 36986489 `"36986489"', add
label define ca01a_weightp_lbl 36986595 `"36986595"', add
label define ca01a_weightp_lbl 36987260 `"36987260"', add
label define ca01a_weightp_lbl 36987355 `"36987355"', add
label define ca01a_weightp_lbl 36989989 `"36989989"', add
label define ca01a_weightp_lbl 36990295 `"36990295"', add
label define ca01a_weightp_lbl 36990324 `"36990324"', add
label define ca01a_weightp_lbl 36991284 `"36991284"', add
label define ca01a_weightp_lbl 36992209 `"36992209"', add
label define ca01a_weightp_lbl 36993988 `"36993988"', add
label define ca01a_weightp_lbl 36993993 `"36993993"', add
label define ca01a_weightp_lbl 36995142 `"36995142"', add
label define ca01a_weightp_lbl 36995575 `"36995575"', add
label define ca01a_weightp_lbl 36996292 `"36996292"', add
label define ca01a_weightp_lbl 36997002 `"36997002"', add
label define ca01a_weightp_lbl 37003256 `"37003256"', add
label define ca01a_weightp_lbl 37003764 `"37003764"', add
label define ca01a_weightp_lbl 37004043 `"37004043"', add
label define ca01a_weightp_lbl 37005606 `"37005606"', add
label define ca01a_weightp_lbl 37006683 `"37006683"', add
label define ca01a_weightp_lbl 37007911 `"37007911"', add
label define ca01a_weightp_lbl 37008191 `"37008191"', add
label define ca01a_weightp_lbl 37009917 `"37009917"', add
label define ca01a_weightp_lbl 37011009 `"37011009"', add
label define ca01a_weightp_lbl 37012094 `"37012094"', add
label define ca01a_weightp_lbl 37015151 `"37015151"', add
label define ca01a_weightp_lbl 37015300 `"37015300"', add
label define ca01a_weightp_lbl 37016812 `"37016812"', add
label define ca01a_weightp_lbl 37018774 `"37018774"', add
label define ca01a_weightp_lbl 37019398 `"37019398"', add
label define ca01a_weightp_lbl 37019517 `"37019517"', add
label define ca01a_weightp_lbl 37020702 `"37020702"', add
label define ca01a_weightp_lbl 37021720 `"37021720"', add
label define ca01a_weightp_lbl 37024107 `"37024107"', add
label define ca01a_weightp_lbl 37027326 `"37027326"', add
label define ca01a_weightp_lbl 37031365 `"37031365"', add
label define ca01a_weightp_lbl 37036845 `"37036845"', add
label define ca01a_weightp_lbl 37037726 `"37037726"', add
label define ca01a_weightp_lbl 37039457 `"37039457"', add
label define ca01a_weightp_lbl 37039796 `"37039796"', add
label define ca01a_weightp_lbl 37040366 `"37040366"', add
label define ca01a_weightp_lbl 37040640 `"37040640"', add
label define ca01a_weightp_lbl 37043343 `"37043343"', add
label define ca01a_weightp_lbl 37047531 `"37047531"', add
label define ca01a_weightp_lbl 37047875 `"37047875"', add
label define ca01a_weightp_lbl 37048786 `"37048786"', add
label define ca01a_weightp_lbl 37048991 `"37048991"', add
label define ca01a_weightp_lbl 37049786 `"37049786"', add
label define ca01a_weightp_lbl 37050256 `"37050256"', add
label define ca01a_weightp_lbl 37050456 `"37050456"', add
label define ca01a_weightp_lbl 37053999 `"37053999"', add
label define ca01a_weightp_lbl 37055310 `"37055310"', add
label define ca01a_weightp_lbl 37055621 `"37055621"', add
label define ca01a_weightp_lbl 37057475 `"37057475"', add
label define ca01a_weightp_lbl 37059159 `"37059159"', add
label define ca01a_weightp_lbl 37060340 `"37060340"', add
label define ca01a_weightp_lbl 37060932 `"37060932"', add
label define ca01a_weightp_lbl 37060954 `"37060954"', add
label define ca01a_weightp_lbl 37063782 `"37063782"', add
label define ca01a_weightp_lbl 37070031 `"37070031"', add
label define ca01a_weightp_lbl 37070529 `"37070529"', add
label define ca01a_weightp_lbl 37071347 `"37071347"', add
label define ca01a_weightp_lbl 37071750 `"37071750"', add
label define ca01a_weightp_lbl 37073725 `"37073725"', add
label define ca01a_weightp_lbl 37075224 `"37075224"', add
label define ca01a_weightp_lbl 37076751 `"37076751"', add
label define ca01a_weightp_lbl 37077701 `"37077701"', add
label define ca01a_weightp_lbl 37080734 `"37080734"', add
label define ca01a_weightp_lbl 37081149 `"37081149"', add
label define ca01a_weightp_lbl 37081383 `"37081383"', add
label define ca01a_weightp_lbl 37084375 `"37084375"', add
label define ca01a_weightp_lbl 37087530 `"37087530"', add
label define ca01a_weightp_lbl 37088709 `"37088709"', add
label define ca01a_weightp_lbl 37089328 `"37089328"', add
label define ca01a_weightp_lbl 37091791 `"37091791"', add
label define ca01a_weightp_lbl 37094001 `"37094001"', add
label define ca01a_weightp_lbl 37096974 `"37096974"', add
label define ca01a_weightp_lbl 37099727 `"37099727"', add
label define ca01a_weightp_lbl 37101513 `"37101513"', add
label define ca01a_weightp_lbl 37101710 `"37101710"', add
label define ca01a_weightp_lbl 37101949 `"37101949"', add
label define ca01a_weightp_lbl 37102193 `"37102193"', add
label define ca01a_weightp_lbl 37102569 `"37102569"', add
label define ca01a_weightp_lbl 37103803 `"37103803"', add
label define ca01a_weightp_lbl 37106732 `"37106732"', add
label define ca01a_weightp_lbl 37107349 `"37107349"', add
label define ca01a_weightp_lbl 37109675 `"37109675"', add
label define ca01a_weightp_lbl 37113440 `"37113440"', add
label define ca01a_weightp_lbl 37113733 `"37113733"', add
label define ca01a_weightp_lbl 37122748 `"37122748"', add
label define ca01a_weightp_lbl 37129571 `"37129571"', add
label define ca01a_weightp_lbl 37129732 `"37129732"', add
label define ca01a_weightp_lbl 37130547 `"37130547"', add
label define ca01a_weightp_lbl 37131135 `"37131135"', add
label define ca01a_weightp_lbl 37139803 `"37139803"', add
label define ca01a_weightp_lbl 37150307 `"37150307"', add
label define ca01a_weightp_lbl 37151731 `"37151731"', add
label define ca01a_weightp_lbl 37152012 `"37152012"', add
label define ca01a_weightp_lbl 37155019 `"37155019"', add
label define ca01a_weightp_lbl 37158017 `"37158017"', add
label define ca01a_weightp_lbl 37159013 `"37159013"', add
label define ca01a_weightp_lbl 37161492 `"37161492"', add
label define ca01a_weightp_lbl 37161910 `"37161910"', add
label define ca01a_weightp_lbl 37164061 `"37164061"', add
label define ca01a_weightp_lbl 37164322 `"37164322"', add
label define ca01a_weightp_lbl 37187745 `"37187745"', add
label define ca01a_weightp_lbl 37190354 `"37190354"', add
label define ca01a_weightp_lbl 37194545 `"37194545"', add
label define ca01a_weightp_lbl 37203682 `"37203682"', add
label define ca01a_weightp_lbl 37222828 `"37222828"', add
label define ca01a_weightp_lbl 37222937 `"37222937"', add
label define ca01a_weightp_lbl 37223376 `"37223376"', add
label define ca01a_weightp_lbl 37241230 `"37241230"', add
label define ca01a_weightp_lbl 37243169 `"37243169"', add
label define ca01a_weightp_lbl 37245386 `"37245386"', add
label define ca01a_weightp_lbl 37250622 `"37250622"', add
label define ca01a_weightp_lbl 37269274 `"37269274"', add
label define ca01a_weightp_lbl 37271087 `"37271087"', add
label define ca01a_weightp_lbl 37272555 `"37272555"', add
label define ca01a_weightp_lbl 37292232 `"37292232"', add
label define ca01a_weightp_lbl 37292579 `"37292579"', add
label define ca01a_weightp_lbl 37293206 `"37293206"', add
label define ca01a_weightp_lbl 37293260 `"37293260"', add
label define ca01a_weightp_lbl 37306759 `"37306759"', add
label define ca01a_weightp_lbl 37318585 `"37318585"', add
label define ca01a_weightp_lbl 37325876 `"37325876"', add
label define ca01a_weightp_lbl 37331764 `"37331764"', add
label define ca01a_weightp_lbl 37335246 `"37335246"', add
label define ca01a_weightp_lbl 37338639 `"37338639"', add
label define ca01a_weightp_lbl 37343024 `"37343024"', add
label define ca01a_weightp_lbl 37367836 `"37367836"', add
label define ca01a_weightp_lbl 37372020 `"37372020"', add
label define ca01a_weightp_lbl 37389091 `"37389091"', add
label define ca01a_weightp_lbl 37396320 `"37396320"', add
label define ca01a_weightp_lbl 37400830 `"37400830"', add
label define ca01a_weightp_lbl 37402618 `"37402618"', add
label define ca01a_weightp_lbl 37402942 `"37402942"', add
label define ca01a_weightp_lbl 37419335 `"37419335"', add
label define ca01a_weightp_lbl 37474306 `"37474306"', add
label define ca01a_weightp_lbl 37479881 `"37479881"', add
label define ca01a_weightp_lbl 37496900 `"37496900"', add
label define ca01a_weightp_lbl 37502257 `"37502257"', add
label define ca01a_weightp_lbl 37551659 `"37551659"', add
label define ca01a_weightp_lbl 37563887 `"37563887"', add
label define ca01a_weightp_lbl 37573856 `"37573856"', add
label define ca01a_weightp_lbl 37580881 `"37580881"', add
label define ca01a_weightp_lbl 37592251 `"37592251"', add
label define ca01a_weightp_lbl 37645745 `"37645745"', add
label define ca01a_weightp_lbl 37655832 `"37655832"', add
label define ca01a_weightp_lbl 37671692 `"37671692"', add
label define ca01a_weightp_lbl 37760517 `"37760517"', add
label define ca01a_weightp_lbl 37774641 `"37774641"', add
label define ca01a_weightp_lbl 37779976 `"37779976"', add
label define ca01a_weightp_lbl 37792466 `"37792466"', add
label define ca01a_weightp_lbl 37939098 `"37939098"', add
label define ca01a_weightp_lbl 37966592 `"37966592"', add
label define ca01a_weightp_lbl 37997570 `"37997570"', add
label define ca01a_weightp_lbl 38052584 `"38052584"', add
label define ca01a_weightp_lbl 38198483 `"38198483"', add
label define ca01a_weightp_lbl 38316091 `"38316091"', add
label define ca01a_weightp_lbl 38406415 `"38406415"', add
label define ca01a_weightp_lbl 38416976 `"38416976"', add
label define ca01a_weightp_lbl 38838651 `"38838651"', add
label define ca01a_weightp_lbl 38878146 `"38878146"', add
label define ca01a_weightp_lbl 38971508 `"38971508"', add
label define ca01a_weightp_lbl 39083233 `"39083233"', add
label define ca01a_weightp_lbl 39180162 `"39180162"', add
label define ca01a_weightp_lbl 39239136 `"39239136"', add
label define ca01a_weightp_lbl 39464996 `"39464996"', add
label values ca01a_weightp ca01a_weightp_lbl


