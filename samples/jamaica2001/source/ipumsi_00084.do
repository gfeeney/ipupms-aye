* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    jm01a_dwnum     22-27    ///
  byte    jm01a_hhnum     28-28    ///
  byte    jm01a_hhn       29-29    ///
  byte    jm01a_pernd     30-31    ///
  byte    jm01a_pern      32-33    ///
  byte    jm01a_fbig      34-34    ///
  byte    jm01a_parish    35-36    ///
  int     jm01a_inst      37-40    ///
  byte    jm01a_sector    41-41    ///
  byte    jm01a_typhous   42-42    ///
  byte    jm01a_wall      43-43    ///
  byte    jm01a_roof      44-44    ///
  byte    jm01a_ownershp  45-45    ///
  byte    jm01a_ownland   46-46    ///
  byte    jm01a_rooms     47-48    ///
  byte    jm01a_bedrooms  49-50    ///
  byte    jm01a_kitchen   51-51    ///
  byte    jm01a_sink      52-52    ///
  byte    jm01a_bathroom  53-53    ///
  byte    jm01a_shower    54-54    ///
  byte    jm01a_garbage   55-56    ///
  byte    jm01a_toilet    57-57    ///
  byte    jm01a_toiletex  58-58    ///
  byte    jm01a_lighting  59-59    ///
  byte    jm01a_fuelcook  60-60    ///
  byte    jm01a_watsup    61-61    ///
  byte    jm01a_pc        62-62    ///
  byte    jm01a_internet  63-63    ///
  byte    jm01a_phone     64-64    ///
  byte    jm01a_murder    65-65    ///
  byte    jm01a_shooting  66-66    ///
  byte    jm01a_rape      67-67    ///
  byte    jm01a_robbery   68-68    ///
  byte    jm01a_wound     69-69    ///
  byte    jm01a_larceny   70-70    ///
  byte    jm01a_crime     71-71    ///
  byte    jm01a_noreprea  72-72    ///
  byte    jm01a_anymig    73-73    ///
  byte    jm01a_migrants  74-75    ///
  byte    jm01a_mig1sex   76-76    ///
  byte    jm01a_mig2sex   77-77    ///
  byte    jm01a_mig3sex   78-78    ///
  byte    jm01a_mig4sex   79-79    ///
  byte    jm01a_mig1age   80-81    ///
  byte    jm01a_anydeath  82-82    ///
  byte    jm01a_deaths    83-84    ///
  byte    jm01a_dth1sex   85-85    ///
  byte    jm01a_business  86-86    ///
  byte    jm01a_form1     87-87    ///
  float   jm01a_hhwt      88-93    ///
  int     pernum          94-96    ///
  float   wtper           97-104   ///
  byte    jm01a_pernum    105-106  ///
  byte    jm01a_sex       107-107  ///
  int     jm01a_birthyr   108-111  ///
  byte    jm01a_birthmo   112-113  ///
  byte    jm01a_age       114-115  ///
  byte    jm01a_relate    116-117  ///
  byte    jm01a_race      118-118  ///
  byte    jm01a_relig     119-120  ///
  byte    jm01a_marst     121-121  ///
  byte    jm01a_spouse    122-122  ///
  byte    jm01a_partner   123-123  ///
  byte    jm01a_illness   124-124  ///
  byte    jm01a_illtype   125-126  ///
  byte    jm01a_disab     127-127  ///
  byte    jm01a_limit     128-128  ///
  byte    jm01a_distype   129-130  ///
  byte    jm01a_school    131-131  ///
  byte    jm01a_reassch   132-132  ///
  byte    jm01a_bplpar    133-134  ///
  int     jm01a_yrimmig   135-138  ///
  int     jm01a_yrpar     139-142  ///
  byte    jm01a_prevpar   143-144  ///
  byte    jm01a_away5yr   145-145  ///
  byte    jm01a_prevctry  146-146  ///
  int     jm01a_yrreturn  147-150  ///
  byte    jm01a_reasret   151-151  ///
  byte    jm01a_exam      152-153  ///
  byte    jm01a_yrschool  154-155  ///
  byte    jm01a_intrain   156-156  ///
  byte    jm01a_occt2     157-158  ///
  byte    jm01a_methtrai  159-160  ///
  byte    jm01a_lengtrai  161-161  ///
  byte    jm01a_qualtrai  162-162  ///
  byte    jm01a_pasttrai  163-163  ///
  byte    jm01a_occpt2    164-165  ///
  byte    jm01a_occpt1    166-167  ///
  byte    jm01a_methptra  168-169  ///
  byte    jm01a_qualptra  170-170  ///
  byte    jm01a_worktrai  171-171  ///
  byte    jm01a_work1hr   172-172  ///
  byte    jm01a_farming   173-173  ///
  byte    jm01a_oddjob    174-174  ///
  byte    jm01a_activity  175-176  ///
  int     jm01a_hrswork   177-179  ///
  byte    jm01a_classwk   180-180  ///
  byte    jm01a_occ2      181-182  ///
  byte    jm01a_occ1      183-184  ///
  int     jm01a_ind3      185-187  ///
  byte    jm01a_ind2      188-189  ///
  byte    jm01a_ind1      190-191  ///
  byte    jm01a_workloc   192-192  ///
  byte    jm01a_workpar   193-194  ///
  byte    jm01a_empsize   195-195  ///
  byte    jm01a_incwork   196-197  ///
  int     jm01a_yrlastwk  198-201  ///
  byte    jm01a_molastwk  202-203  ///
  byte    jm01a_activyr   204-205  ///
  byte    jm01a_wkmonths  206-207  ///
  byte    jm01a_layoff    208-208  ///
  byte    jm01a_layoffi1  209-210  ///
  byte    jm01a_typpen    211-211  ///
  byte    jm01a_everborn  212-212  ///
  byte    jm01a_chborn    213-214  ///
  byte    jm01a_chbornm   215-216  ///
  byte    jm01a_chbornf   217-218  ///
  byte    jm01a_chsurv    219-220  ///
  byte    jm01a_chsurvm   221-222  ///
  byte    jm01a_chsurvf   223-224  ///
  byte    jm01a_age1stb   225-226  ///
  byte    jm01a_agelstb   227-228  ///
  byte    jm01a_births    229-229  ///
  byte    jm01a_birthsn   230-230  ///
  byte    jm01a_parity    231-231  ///
  byte    jm01a_bth1sex   232-232  ///
  byte    jm01a_bth1reg   233-233  ///
  byte    jm01a_bth2reg   234-234  ///
  byte    jm01a_chdeath   235-235  ///
  byte    jm01a_dth1sex   236-236  ///
  byte    jm01a_deth1age  237-238  ///
  byte    jm01a_deth1reg  239-239  ///
  float   jm01a_perwt     240-244  ///
  using `"ipumsi_00084.dat"'

replace jm01a_hhwt     = jm01a_hhwt     / 10000
replace wtper          = wtper          / 100
replace jm01a_perwt    = jm01a_perwt    / 100

format serial         %10.0f
format jm01a_hhwt     %6.4f
format wtper          %8.2f
format jm01a_perwt    %5.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var jm01a_dwnum    `"Dwelling number"'
label var jm01a_hhnum    `"Household number (within dwelling)"'
label var jm01a_hhn      `"Number of households in dwelling"'
label var jm01a_pernd    `"Number of persons in dwelling"'
label var jm01a_pern     `"Number of persons in household"'
label var jm01a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var jm01a_parish   `"Parish"'
label var jm01a_inst     `"Group housing unit"'
label var jm01a_sector   `"Sector"'
label var jm01a_typhous  `"Type of housing unit"'
label var jm01a_wall     `"Material of the walls"'
label var jm01a_roof     `"Material of the roof"'
label var jm01a_ownershp `"Ownership of the dwelling"'
label var jm01a_ownland  `"Ownership of the land"'
label var jm01a_rooms    `"Number of rooms"'
label var jm01a_bedrooms `"Number of rooms used for sleeping"'
label var jm01a_kitchen  `"Kitchen or kitchenette"'
label var jm01a_sink     `"Sink connected to a water supply and waste pipe"'
label var jm01a_bathroom `"Bathroom"'
label var jm01a_shower   `"Fixed bath or shower"'
label var jm01a_garbage  `"Method of garbage disposal"'
label var jm01a_toilet   `"Type of toilet facilities"'
label var jm01a_toiletex `"Toilet use"'
label var jm01a_lighting `"Source of lighting"'
label var jm01a_fuelcook `"Fuel used most for cooking"'
label var jm01a_watsup   `"Source of domestic water supply"'
label var jm01a_pc       `"Personal computer"'
label var jm01a_internet `"Internet connection"'
label var jm01a_phone    `"Telephone"'
label var jm01a_murder   `"Victim of murder"'
label var jm01a_shooting `"Victim of shooting"'
label var jm01a_rape     `"Victim of rape or abuse"'
label var jm01a_robbery  `"Victim of robbery"'
label var jm01a_wound    `"Victim of wounding"'
label var jm01a_larceny  `"Victim of larceny"'
label var jm01a_crime    `"Crime reported to police"'
label var jm01a_noreprea `"Reason for not reporting"'
label var jm01a_anymig   `"Anyone gone to live abroad during the year 2000"'
label var jm01a_migrants `"Number of persons lived abroad in 2000"'
label var jm01a_mig1sex  `"Sex of the first person who lived abroad"'
label var jm01a_mig2sex  `"Sex of the second person who lived abroad"'
label var jm01a_mig3sex  `"Sex of the third person who lived abroad"'
label var jm01a_mig4sex  `"Sex of the fourth person who lived abroad"'
label var jm01a_mig1age  `"Age of the first person who lived abroad"'
label var jm01a_anydeath `"Death in the household past 12 months"'
label var jm01a_deaths   `"Number of persons who died"'
label var jm01a_dth1sex  `"Sex of the first person who died"'
label var jm01a_business `"Business in the household"'
label var jm01a_form1    `"Type of form"'
label var jm01a_hhwt     `"Household weight"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var jm01a_pernum   `"Person number (within household)"'
label var jm01a_sex      `"Sex"'
label var jm01a_birthyr  `"Year of birth"'
label var jm01a_birthmo  `"Month of birth"'
label var jm01a_age      `"Age"'
label var jm01a_relate   `"Relationship to the head of the household"'
label var jm01a_race     `"Race/ethnicity"'
label var jm01a_relig    `"Religion"'
label var jm01a_marst    `"Marital status"'
label var jm01a_spouse   `"Currently living with spouse"'
label var jm01a_partner  `"Currently living with common law partner"'
label var jm01a_illness  `"Long standing illness"'
label var jm01a_illtype  `"Main illness"'
label var jm01a_disab    `"Disability"'
label var jm01a_limit    `"Limitation of daily activities"'
label var jm01a_distype  `"Type of disability"'
label var jm01a_school   `"School attendance"'
label var jm01a_reassch  `"Reasons for not attending school"'
label var jm01a_bplpar   `"Parish or country of birth"'
label var jm01a_yrimmig  `"Year migrated to Jamaica"'
label var jm01a_yrpar    `"Year moved to live in  parish of residence"'
label var jm01a_prevpar  `"Parish of last residence"'
label var jm01a_away5yr  `"Residence outside of Jamaica for 5 years or more"'
label var jm01a_prevctry `"Country of last residence"'
label var jm01a_yrreturn `"Year returned to Jamaica"'
label var jm01a_reasret  `"Reason for returning to Jamaica"'
label var jm01a_exam     `"Highest exam passed"'
label var jm01a_yrschool `"Years of schooling"'
label var jm01a_intrain  `"Currently in training for job/occupation"'
label var jm01a_occt2    `"Occupation of training 2-digit"'
label var jm01a_methtrai `"Place of training"'
label var jm01a_lengtrai `"Length of training"'
label var jm01a_qualtrai `"Qualification post-training completion"'
label var jm01a_pasttrai `"Past training"'
label var jm01a_occpt2   `"Occupation of past training 2-digit"'
label var jm01a_occpt1   `"Occupation of past training"'
label var jm01a_methptra `"Place of past training"'
label var jm01a_qualptra `"Qualification received from past training"'
label var jm01a_worktrai `"Working in occupation of training"'
label var jm01a_work1hr  `"Worked for at least an hour last week"'
label var jm01a_farming  `"Farming, buying or selling last week"'
label var jm01a_oddjob   `"Odd job/hustling last week"'
label var jm01a_activity `"Activity last week"'
label var jm01a_hrswork  `"Number of hours worked last week"'
label var jm01a_classwk  `"Type of economic activity"'
label var jm01a_occ2     `"Occupation 2-digit"'
label var jm01a_occ1     `"Occupation, 1 digit"'
label var jm01a_ind3     `"Industry 3-digit"'
label var jm01a_ind2     `"Industry-2 digit"'
label var jm01a_ind1     `"Industry, 1 digit"'
label var jm01a_workloc  `"Location of place of work"'
label var jm01a_workpar  `"Parish of work"'
label var jm01a_empsize  `"Number of persons at workplace (including respondent)"'
label var jm01a_incwork  `"Gross income from all employment ($JA)"'
label var jm01a_yrlastwk `"Last year worked"'
label var jm01a_molastwk `"Last month worked"'
label var jm01a_activyr  `"Activity last 12 months"'
label var jm01a_wkmonths `"Number of months worked"'
label var jm01a_layoff   `"Ever laid off in the past 5 years"'
label var jm01a_layoffi1 `"Industry laid off from, 1-digit"'
label var jm01a_typpen   `"Type of benefits or pension"'
label var jm01a_everborn `"Ever had liveborn children"'
label var jm01a_chborn   `"Total number of children ever born"'
label var jm01a_chbornm  `"Number of male children ever born"'
label var jm01a_chbornf  `"Number of female children even born"'
label var jm01a_chsurv   `"Total number of chidren surviving"'
label var jm01a_chsurvm  `"Total number of male children surviving"'
label var jm01a_chsurvf  `"Number of female children surviving"'
label var jm01a_age1stb  `"Age at first live birth"'
label var jm01a_agelstb  `"Age at last live birth"'
label var jm01a_births   `"Live births past 12 months"'
label var jm01a_birthsn  `"Number of live births past 12 months"'
label var jm01a_parity   `"Parity past 12 months"'
label var jm01a_bth1sex  `"Sex of first child born in the past 12 months"'
label var jm01a_bth1reg  `"Birth of first child registered"'
label var jm01a_bth2reg  `"Birth of secondchild registered"'
label var jm01a_chdeath  `"Death of a child born in the past 12 months"'
label var jm01a_dth1sex  `"Sex of the first child who died"'
label var jm01a_deth1age `"Age (in months) of the first child who died"'
label var jm01a_deth1reg `"Death of first child registered"'
label var jm01a_perwt    `"Person weight"'

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

label define jm01a_hhnum_lbl 1 `"1"'
label define jm01a_hhnum_lbl 2 `"2"', add
label define jm01a_hhnum_lbl 3 `"3"', add
label define jm01a_hhnum_lbl 4 `"4"', add
label define jm01a_hhnum_lbl 5 `"5"', add
label define jm01a_hhnum_lbl 6 `"6"', add
label define jm01a_hhnum_lbl 7 `"7"', add
label define jm01a_hhnum_lbl 8 `"8"', add
label values jm01a_hhnum jm01a_hhnum_lbl

label define jm01a_hhn_lbl 1 `"1"'
label define jm01a_hhn_lbl 2 `"2"', add
label define jm01a_hhn_lbl 3 `"3"', add
label define jm01a_hhn_lbl 4 `"4"', add
label define jm01a_hhn_lbl 5 `"5"', add
label define jm01a_hhn_lbl 6 `"6"', add
label define jm01a_hhn_lbl 7 `"7"', add
label define jm01a_hhn_lbl 8 `"8"', add
label values jm01a_hhn jm01a_hhn_lbl

label define jm01a_pernd_lbl 01 `"1"'
label define jm01a_pernd_lbl 02 `"2"', add
label define jm01a_pernd_lbl 03 `"3"', add
label define jm01a_pernd_lbl 04 `"4"', add
label define jm01a_pernd_lbl 05 `"5"', add
label define jm01a_pernd_lbl 06 `"6"', add
label define jm01a_pernd_lbl 07 `"7"', add
label define jm01a_pernd_lbl 08 `"8"', add
label define jm01a_pernd_lbl 09 `"9"', add
label define jm01a_pernd_lbl 10 `"10"', add
label define jm01a_pernd_lbl 11 `"11"', add
label define jm01a_pernd_lbl 12 `"12"', add
label define jm01a_pernd_lbl 13 `"13"', add
label define jm01a_pernd_lbl 14 `"14"', add
label define jm01a_pernd_lbl 15 `"15"', add
label define jm01a_pernd_lbl 16 `"16"', add
label define jm01a_pernd_lbl 17 `"17"', add
label define jm01a_pernd_lbl 18 `"18"', add
label define jm01a_pernd_lbl 19 `"19"', add
label define jm01a_pernd_lbl 20 `"20"', add
label define jm01a_pernd_lbl 21 `"21"', add
label define jm01a_pernd_lbl 22 `"22"', add
label define jm01a_pernd_lbl 23 `"23"', add
label define jm01a_pernd_lbl 24 `"24"', add
label define jm01a_pernd_lbl 25 `"25"', add
label define jm01a_pernd_lbl 26 `"26"', add
label define jm01a_pernd_lbl 27 `"27"', add
label define jm01a_pernd_lbl 28 `"28"', add
label define jm01a_pernd_lbl 29 `"29"', add
label define jm01a_pernd_lbl 30 `"30"', add
label values jm01a_pernd jm01a_pernd_lbl

label define jm01a_pern_lbl 01 `"1"'
label define jm01a_pern_lbl 02 `"2"', add
label define jm01a_pern_lbl 03 `"3"', add
label define jm01a_pern_lbl 04 `"4"', add
label define jm01a_pern_lbl 05 `"5"', add
label define jm01a_pern_lbl 06 `"6"', add
label define jm01a_pern_lbl 07 `"7"', add
label define jm01a_pern_lbl 08 `"8"', add
label define jm01a_pern_lbl 09 `"9"', add
label define jm01a_pern_lbl 10 `"10"', add
label define jm01a_pern_lbl 11 `"11"', add
label define jm01a_pern_lbl 12 `"12"', add
label define jm01a_pern_lbl 13 `"13"', add
label define jm01a_pern_lbl 14 `"14"', add
label define jm01a_pern_lbl 15 `"15"', add
label define jm01a_pern_lbl 16 `"16"', add
label define jm01a_pern_lbl 17 `"17"', add
label define jm01a_pern_lbl 18 `"18"', add
label define jm01a_pern_lbl 19 `"19"', add
label define jm01a_pern_lbl 20 `"20"', add
label define jm01a_pern_lbl 21 `"21"', add
label define jm01a_pern_lbl 22 `"22"', add
label define jm01a_pern_lbl 23 `"23"', add
label define jm01a_pern_lbl 24 `"24"', add
label define jm01a_pern_lbl 25 `"25"', add
label define jm01a_pern_lbl 26 `"26"', add
label define jm01a_pern_lbl 27 `"27"', add
label define jm01a_pern_lbl 28 `"28"', add
label define jm01a_pern_lbl 29 `"29"', add
label define jm01a_pern_lbl 30 `"30"', add
label values jm01a_pern jm01a_pern_lbl

label define jm01a_fbig_lbl 0 `"No problem"'
label define jm01a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define jm01a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values jm01a_fbig jm01a_fbig_lbl

label define jm01a_parish_lbl 01 `"Kingston"'
label define jm01a_parish_lbl 02 `"St. Andrew"', add
label define jm01a_parish_lbl 03 `"St. Thomas"', add
label define jm01a_parish_lbl 04 `"Portland"', add
label define jm01a_parish_lbl 05 `"St. Mary"', add
label define jm01a_parish_lbl 06 `"St. Ann"', add
label define jm01a_parish_lbl 07 `"Trelawny"', add
label define jm01a_parish_lbl 08 `"St. James"', add
label define jm01a_parish_lbl 09 `"Hanover"', add
label define jm01a_parish_lbl 10 `"Westmoreland"', add
label define jm01a_parish_lbl 11 `"St. Elizabeth"', add
label define jm01a_parish_lbl 12 `"Manchester"', add
label define jm01a_parish_lbl 13 `"Clarendon"', add
label define jm01a_parish_lbl 14 `"St. Catherine"', add
label values jm01a_parish jm01a_parish_lbl

label define jm01a_inst_lbl 0000 `"Private household"'
label define jm01a_inst_lbl 0001 `"University and college residences"', add
label define jm01a_inst_lbl 0002 `"Boarding schools and other residential schools"', add
label define jm01a_inst_lbl 0003 `"Other non-private dwelling"', add
label values jm01a_inst jm01a_inst_lbl

label define jm01a_sector_lbl 1 `"Urban"'
label define jm01a_sector_lbl 2 `"Rural"', add
label define jm01a_sector_lbl 9 `"NIU (not in universe)"', add
label values jm01a_sector jm01a_sector_lbl

label define jm01a_typhous_lbl 1 `"Separate house-detached"'
label define jm01a_typhous_lbl 2 `"Attached"', add
label define jm01a_typhous_lbl 3 `"Part of commercial building"', add
label define jm01a_typhous_lbl 4 `"Improvised housing unit"', add
label define jm01a_typhous_lbl 5 `"Other"', add
label define jm01a_typhous_lbl 8 `"Unknown"', add
label define jm01a_typhous_lbl 9 `"NIU (not in universe)"', add
label values jm01a_typhous jm01a_typhous_lbl

label define jm01a_wall_lbl 0 `"Concrete and blocks"'
label define jm01a_wall_lbl 1 `"Stone and brick"', add
label define jm01a_wall_lbl 2 `"Nog"', add
label define jm01a_wall_lbl 3 `"Wattle/adobe"', add
label define jm01a_wall_lbl 4 `"Wood"', add
label define jm01a_wall_lbl 5 `"Wood and concrete"', add
label define jm01a_wall_lbl 6 `"Wood and brick"', add
label define jm01a_wall_lbl 7 `"Other"', add
label define jm01a_wall_lbl 8 `"Unknown"', add
label define jm01a_wall_lbl 9 `"NIU (not in universe)"', add
label values jm01a_wall jm01a_wall_lbl

label define jm01a_roof_lbl 1 `"Metal sheeting"'
label define jm01a_roof_lbl 2 `"Shingle, wood"', add
label define jm01a_roof_lbl 3 `"Shingle, other"', add
label define jm01a_roof_lbl 4 `"Tile"', add
label define jm01a_roof_lbl 5 `"Concrete"', add
label define jm01a_roof_lbl 6 `"Other"', add
label define jm01a_roof_lbl 8 `"Unknown"', add
label define jm01a_roof_lbl 9 `"NIU (not in universe)"', add
label values jm01a_roof jm01a_roof_lbl

label define jm01a_ownershp_lbl 1 `"Owned"'
label define jm01a_ownershp_lbl 2 `"Leased"', add
label define jm01a_ownershp_lbl 3 `"Rented"', add
label define jm01a_ownershp_lbl 4 `"Rent free"', add
label define jm01a_ownershp_lbl 5 `"Squatted"', add
label define jm01a_ownershp_lbl 6 `"Other"', add
label define jm01a_ownershp_lbl 8 `"Unknown"', add
label define jm01a_ownershp_lbl 9 `"NIU (not in universe)"', add
label values jm01a_ownershp jm01a_ownershp_lbl

label define jm01a_ownland_lbl 1 `"Owned"'
label define jm01a_ownland_lbl 2 `"Leased"', add
label define jm01a_ownland_lbl 3 `"Rented"', add
label define jm01a_ownland_lbl 4 `"Rent free"', add
label define jm01a_ownland_lbl 5 `"Squatted"', add
label define jm01a_ownland_lbl 6 `"Other"', add
label define jm01a_ownland_lbl 8 `"Unknown"', add
label define jm01a_ownland_lbl 9 `"NIU (not in universe)"', add
label values jm01a_ownland jm01a_ownland_lbl

label define jm01a_rooms_lbl 00 `"0"'
label define jm01a_rooms_lbl 01 `"1"', add
label define jm01a_rooms_lbl 02 `"2"', add
label define jm01a_rooms_lbl 03 `"3"', add
label define jm01a_rooms_lbl 04 `"4"', add
label define jm01a_rooms_lbl 05 `"5"', add
label define jm01a_rooms_lbl 06 `"6"', add
label define jm01a_rooms_lbl 07 `"7"', add
label define jm01a_rooms_lbl 08 `"8"', add
label define jm01a_rooms_lbl 09 `"9"', add
label define jm01a_rooms_lbl 10 `"10"', add
label define jm01a_rooms_lbl 11 `"11"', add
label define jm01a_rooms_lbl 12 `"12+"', add
label define jm01a_rooms_lbl 98 `"Unknown"', add
label define jm01a_rooms_lbl 99 `"NIU (not in universe)"', add
label values jm01a_rooms jm01a_rooms_lbl

label define jm01a_bedrooms_lbl 00 `"0"'
label define jm01a_bedrooms_lbl 01 `"1"', add
label define jm01a_bedrooms_lbl 02 `"2"', add
label define jm01a_bedrooms_lbl 03 `"3"', add
label define jm01a_bedrooms_lbl 04 `"4"', add
label define jm01a_bedrooms_lbl 05 `"5"', add
label define jm01a_bedrooms_lbl 06 `"6"', add
label define jm01a_bedrooms_lbl 07 `"7"', add
label define jm01a_bedrooms_lbl 08 `"8"', add
label define jm01a_bedrooms_lbl 09 `"9"', add
label define jm01a_bedrooms_lbl 10 `"10+"', add
label define jm01a_bedrooms_lbl 98 `"Unknown"', add
label define jm01a_bedrooms_lbl 99 `"NIU (not in universe)"', add
label values jm01a_bedrooms jm01a_bedrooms_lbl

label define jm01a_kitchen_lbl 1 `"Yes, for exclusive use of this household"'
label define jm01a_kitchen_lbl 2 `"Yes, shared with another household"', add
label define jm01a_kitchen_lbl 3 `"No"', add
label define jm01a_kitchen_lbl 8 `"Unknown"', add
label define jm01a_kitchen_lbl 9 `"NIU (not in universe)"', add
label values jm01a_kitchen jm01a_kitchen_lbl

label define jm01a_sink_lbl 1 `"Yes"'
label define jm01a_sink_lbl 2 `"No"', add
label define jm01a_sink_lbl 8 `"Unknown"', add
label define jm01a_sink_lbl 9 `"No kitchen or kitchenette"', add
label values jm01a_sink jm01a_sink_lbl

label define jm01a_bathroom_lbl 1 `"Yes, for exclusive use of this household"'
label define jm01a_bathroom_lbl 2 `"Yes, shared with another household"', add
label define jm01a_bathroom_lbl 3 `"No"', add
label define jm01a_bathroom_lbl 8 `"Unknown"', add
label define jm01a_bathroom_lbl 9 `"NIU (not in universe)"', add
label values jm01a_bathroom jm01a_bathroom_lbl

label define jm01a_shower_lbl 1 `"Yes"'
label define jm01a_shower_lbl 2 `"No"', add
label define jm01a_shower_lbl 8 `"Unknown"', add
label define jm01a_shower_lbl 9 `"NIU (not in universe)"', add
label values jm01a_shower jm01a_shower_lbl

label define jm01a_garbage_lbl 01 `"Regular public collection system"'
label define jm01a_garbage_lbl 02 `"Irregular public collection system"', add
label define jm01a_garbage_lbl 03 `"Private collection system"', add
label define jm01a_garbage_lbl 04 `"Burn"', add
label define jm01a_garbage_lbl 05 `"Bury"', add
label define jm01a_garbage_lbl 06 `"Dumping in sea/river/pond/gully"', add
label define jm01a_garbage_lbl 07 `"Dumping in own yard"', add
label define jm01a_garbage_lbl 08 `"Dumping at municipal site"', add
label define jm01a_garbage_lbl 09 `"Other dumping"', add
label define jm01a_garbage_lbl 10 `"Other method of disposal"', add
label define jm01a_garbage_lbl 98 `"Unknown"', add
label define jm01a_garbage_lbl 99 `"NIU (not in universe)"', add
label values jm01a_garbage jm01a_garbage_lbl

label define jm01a_toilet_lbl 1 `"WC linked to sewer"'
label define jm01a_toilet_lbl 2 `"WC not linked to sewer"', add
label define jm01a_toilet_lbl 3 `"Pit"', add
label define jm01a_toilet_lbl 4 `"None"', add
label define jm01a_toilet_lbl 8 `"Unknown"', add
label define jm01a_toilet_lbl 9 `"NIU (not in universe)"', add
label values jm01a_toilet jm01a_toilet_lbl

label define jm01a_toiletex_lbl 1 `"Shared"'
label define jm01a_toiletex_lbl 2 `"Not shared"', add
label define jm01a_toiletex_lbl 8 `"Unknown"', add
label define jm01a_toiletex_lbl 9 `"NIU (not in universe)"', add
label values jm01a_toiletex jm01a_toiletex_lbl

label define jm01a_lighting_lbl 1 `"Electricity"'
label define jm01a_lighting_lbl 2 `"Kerosene"', add
label define jm01a_lighting_lbl 3 `"Other"', add
label define jm01a_lighting_lbl 4 `"No lighting"', add
label define jm01a_lighting_lbl 8 `"Unknown"', add
label define jm01a_lighting_lbl 9 `"NIU (not in universe)"', add
label values jm01a_lighting jm01a_lighting_lbl

label define jm01a_fuelcook_lbl 0 `"Gas"'
label define jm01a_fuelcook_lbl 1 `"Electric"', add
label define jm01a_fuelcook_lbl 2 `"Wood"', add
label define jm01a_fuelcook_lbl 3 `"Charcoal"', add
label define jm01a_fuelcook_lbl 4 `"No cooking done"', add
label define jm01a_fuelcook_lbl 5 `"Kerosene"', add
label define jm01a_fuelcook_lbl 6 `"Other"', add
label define jm01a_fuelcook_lbl 8 `"Unknown"', add
label define jm01a_fuelcook_lbl 9 `"NIU (not in universe)"', add
label values jm01a_fuelcook jm01a_fuelcook_lbl

label define jm01a_watsup_lbl 0 `"Public piped into dwelling"'
label define jm01a_watsup_lbl 1 `"Public piped into yard"', add
label define jm01a_watsup_lbl 2 `"Private piped into dwelling"', add
label define jm01a_watsup_lbl 3 `"Private catchment, not piped"', add
label define jm01a_watsup_lbl 4 `"Public standpipe"', add
label define jm01a_watsup_lbl 5 `"Public catchment"', add
label define jm01a_watsup_lbl 6 `"Spring/river"', add
label define jm01a_watsup_lbl 7 `"Other"', add
label define jm01a_watsup_lbl 8 `"Unknown"', add
label define jm01a_watsup_lbl 9 `"NIU (not in universe)"', add
label values jm01a_watsup jm01a_watsup_lbl

label define jm01a_pc_lbl 1 `"Yes"'
label define jm01a_pc_lbl 2 `"No"', add
label define jm01a_pc_lbl 8 `"Unknown"', add
label define jm01a_pc_lbl 9 `"NIU (not in universe)"', add
label values jm01a_pc jm01a_pc_lbl

label define jm01a_internet_lbl 1 `"Yes"'
label define jm01a_internet_lbl 2 `"No"', add
label define jm01a_internet_lbl 8 `"Unknown"', add
label define jm01a_internet_lbl 9 `"NIU (not in universe)"', add
label values jm01a_internet jm01a_internet_lbl

label define jm01a_phone_lbl 1 `"Yes in dwelling (not cellular)"'
label define jm01a_phone_lbl 2 `"Yes cellular"', add
label define jm01a_phone_lbl 3 `"Yes neighbor's facility"', add
label define jm01a_phone_lbl 4 `"No"', add
label define jm01a_phone_lbl 8 `"Unknown"', add
label define jm01a_phone_lbl 9 `"NIU (not in universe)"', add
label values jm01a_phone jm01a_phone_lbl

label define jm01a_murder_lbl 1 `"Yes"'
label define jm01a_murder_lbl 2 `"No"', add
label define jm01a_murder_lbl 3 `"Doesn't know"', add
label define jm01a_murder_lbl 8 `"Unknown"', add
label define jm01a_murder_lbl 9 `"NIU (not in universe)"', add
label values jm01a_murder jm01a_murder_lbl

label define jm01a_shooting_lbl 1 `"Yes"'
label define jm01a_shooting_lbl 2 `"No"', add
label define jm01a_shooting_lbl 3 `"Doesn't know"', add
label define jm01a_shooting_lbl 8 `"Unknown"', add
label define jm01a_shooting_lbl 9 `"NIU (not in universe)"', add
label values jm01a_shooting jm01a_shooting_lbl

label define jm01a_rape_lbl 1 `"Yes"'
label define jm01a_rape_lbl 2 `"No"', add
label define jm01a_rape_lbl 3 `"Doesn't know"', add
label define jm01a_rape_lbl 8 `"Unknown"', add
label define jm01a_rape_lbl 9 `"NIU (not in universe)"', add
label values jm01a_rape jm01a_rape_lbl

label define jm01a_robbery_lbl 1 `"Yes"'
label define jm01a_robbery_lbl 2 `"No"', add
label define jm01a_robbery_lbl 3 `"Doesn't know"', add
label define jm01a_robbery_lbl 8 `"Unknown"', add
label define jm01a_robbery_lbl 9 `"NIU (not in universe)"', add
label values jm01a_robbery jm01a_robbery_lbl

label define jm01a_wound_lbl 1 `"Yes"'
label define jm01a_wound_lbl 2 `"No"', add
label define jm01a_wound_lbl 3 `"Doesn't know"', add
label define jm01a_wound_lbl 8 `"Unknown"', add
label define jm01a_wound_lbl 9 `"NIU (not in universe)"', add
label values jm01a_wound jm01a_wound_lbl

label define jm01a_larceny_lbl 1 `"Yes"'
label define jm01a_larceny_lbl 2 `"No"', add
label define jm01a_larceny_lbl 3 `"Doesn't know"', add
label define jm01a_larceny_lbl 8 `"Unknown"', add
label define jm01a_larceny_lbl 9 `"NIU (not in universe)"', add
label values jm01a_larceny jm01a_larceny_lbl

label define jm01a_crime_lbl 1 `"Yes"'
label define jm01a_crime_lbl 2 `"No"', add
label define jm01a_crime_lbl 3 `"Doesn't know"', add
label define jm01a_crime_lbl 8 `"Unknown"', add
label define jm01a_crime_lbl 9 `"NIU (not in universe)"', add
label values jm01a_crime jm01a_crime_lbl

label define jm01a_noreprea_lbl 1 `"No confidence in the administration of justice"'
label define jm01a_noreprea_lbl 2 `"Afraid of perpetrator"', add
label define jm01a_noreprea_lbl 3 `"Perpetrator was household member/friend"', add
label define jm01a_noreprea_lbl 4 `"Not serious enough"', add
label define jm01a_noreprea_lbl 5 `"Other"', add
label define jm01a_noreprea_lbl 8 `"Unknown"', add
label define jm01a_noreprea_lbl 9 `"NIU (not in universe)"', add
label values jm01a_noreprea jm01a_noreprea_lbl

label define jm01a_anymig_lbl 1 `"Yes"'
label define jm01a_anymig_lbl 2 `"No"', add
label define jm01a_anymig_lbl 8 `"Unknown"', add
label define jm01a_anymig_lbl 9 `"NIU (not in universe)"', add
label values jm01a_anymig jm01a_anymig_lbl

label define jm01a_migrants_lbl 01 `"1"'
label define jm01a_migrants_lbl 02 `"2"', add
label define jm01a_migrants_lbl 03 `"3"', add
label define jm01a_migrants_lbl 04 `"4"', add
label define jm01a_migrants_lbl 05 `"5+"', add
label define jm01a_migrants_lbl 98 `"Unknown"', add
label define jm01a_migrants_lbl 99 `"NIU (not in universe)"', add
label values jm01a_migrants jm01a_migrants_lbl

label define jm01a_mig1sex_lbl 1 `"Male"'
label define jm01a_mig1sex_lbl 2 `"Female"', add
label define jm01a_mig1sex_lbl 8 `"Unknown"', add
label define jm01a_mig1sex_lbl 9 `"NIU (not in universe)"', add
label values jm01a_mig1sex jm01a_mig1sex_lbl

label define jm01a_mig2sex_lbl 1 `"Male"'
label define jm01a_mig2sex_lbl 2 `"Female"', add
label define jm01a_mig2sex_lbl 8 `"Unknown"', add
label define jm01a_mig2sex_lbl 9 `"NIU (not in universe)"', add
label values jm01a_mig2sex jm01a_mig2sex_lbl

label define jm01a_mig3sex_lbl 1 `"Male"'
label define jm01a_mig3sex_lbl 2 `"Female"', add
label define jm01a_mig3sex_lbl 8 `"Unknown"', add
label define jm01a_mig3sex_lbl 9 `"NIU (not in universe)"', add
label values jm01a_mig3sex jm01a_mig3sex_lbl

label define jm01a_mig4sex_lbl 1 `"Male"'
label define jm01a_mig4sex_lbl 2 `"Female"', add
label define jm01a_mig4sex_lbl 8 `"Unknown"', add
label define jm01a_mig4sex_lbl 9 `"NIU (not in universe)"', add
label values jm01a_mig4sex jm01a_mig4sex_lbl

label define jm01a_mig1age_lbl 16 `"16 or younger"'
label define jm01a_mig1age_lbl 17 `"17"', add
label define jm01a_mig1age_lbl 18 `"18"', add
label define jm01a_mig1age_lbl 19 `"19"', add
label define jm01a_mig1age_lbl 20 `"20"', add
label define jm01a_mig1age_lbl 21 `"21"', add
label define jm01a_mig1age_lbl 22 `"22"', add
label define jm01a_mig1age_lbl 23 `"23"', add
label define jm01a_mig1age_lbl 24 `"24"', add
label define jm01a_mig1age_lbl 25 `"25"', add
label define jm01a_mig1age_lbl 26 `"26"', add
label define jm01a_mig1age_lbl 27 `"27"', add
label define jm01a_mig1age_lbl 28 `"28"', add
label define jm01a_mig1age_lbl 29 `"29"', add
label define jm01a_mig1age_lbl 30 `"30"', add
label define jm01a_mig1age_lbl 31 `"31"', add
label define jm01a_mig1age_lbl 32 `"32"', add
label define jm01a_mig1age_lbl 33 `"33"', add
label define jm01a_mig1age_lbl 34 `"34"', add
label define jm01a_mig1age_lbl 35 `"35"', add
label define jm01a_mig1age_lbl 36 `"36"', add
label define jm01a_mig1age_lbl 37 `"37"', add
label define jm01a_mig1age_lbl 38 `"38"', add
label define jm01a_mig1age_lbl 39 `"39"', add
label define jm01a_mig1age_lbl 40 `"40+"', add
label define jm01a_mig1age_lbl 98 `"Unknown"', add
label define jm01a_mig1age_lbl 99 `"NIU (not in universe)"', add
label values jm01a_mig1age jm01a_mig1age_lbl

label define jm01a_anydeath_lbl 1 `"Yes"'
label define jm01a_anydeath_lbl 2 `"No"', add
label define jm01a_anydeath_lbl 8 `"Unknown"', add
label define jm01a_anydeath_lbl 9 `"NIU (not in universe)"', add
label values jm01a_anydeath jm01a_anydeath_lbl

label define jm01a_deaths_lbl 01 `"1"'
label define jm01a_deaths_lbl 02 `"2 or more"', add
label define jm01a_deaths_lbl 98 `"Unknown"', add
label define jm01a_deaths_lbl 99 `"NIU (not in universe)"', add
label values jm01a_deaths jm01a_deaths_lbl

label define jm01a_dth1sex_lbl 1 `"Male"'
label define jm01a_dth1sex_lbl 2 `"Female"', add
label define jm01a_dth1sex_lbl 8 `"Unknown"', add
label define jm01a_dth1sex_lbl 9 `"NIU (not in universe)"', add
label values jm01a_dth1sex jm01a_dth1sex_lbl

label define jm01a_business_lbl 1 `"Yes"'
label define jm01a_business_lbl 2 `"No"', add
label define jm01a_business_lbl 8 `"Unknown"', add
label define jm01a_business_lbl 9 `"NIU (not in universe)"', add
label values jm01a_business jm01a_business_lbl

label define jm01a_form1_lbl 1 `"Long form"'
label define jm01a_form1_lbl 2 `"Group housing"', add
label values jm01a_form1 jm01a_form1_lbl

label define jm01a_hhwt_lbl 000000 `"NIU (collective household)"'
label define jm01a_hhwt_lbl 106740 `"106740"', add
label define jm01a_hhwt_lbl 109230 `"109230"', add
label define jm01a_hhwt_lbl 111070 `"111070"', add
label define jm01a_hhwt_lbl 114590 `"114590"', add
label define jm01a_hhwt_lbl 117260 `"117260"', add
label define jm01a_hhwt_lbl 120090 `"120090"', add
label define jm01a_hhwt_lbl 121410 `"121410"', add
label define jm01a_hhwt_lbl 121580 `"121580"', add
label define jm01a_hhwt_lbl 125270 `"125270"', add
label define jm01a_hhwt_lbl 126220 `"126220"', add
label define jm01a_hhwt_lbl 126930 `"126930"', add
label define jm01a_hhwt_lbl 127870 `"127870"', add
label define jm01a_hhwt_lbl 136940 `"136940"', add
label define jm01a_hhwt_lbl 148370 `"148370"', add
label values jm01a_hhwt jm01a_hhwt_lbl

label define jm01a_pernum_lbl 00 `"Household record"'
label define jm01a_pernum_lbl 01 `"1"', add
label define jm01a_pernum_lbl 02 `"2"', add
label define jm01a_pernum_lbl 03 `"3"', add
label define jm01a_pernum_lbl 04 `"4"', add
label define jm01a_pernum_lbl 05 `"5"', add
label define jm01a_pernum_lbl 06 `"6"', add
label define jm01a_pernum_lbl 07 `"7"', add
label define jm01a_pernum_lbl 08 `"8"', add
label define jm01a_pernum_lbl 09 `"9"', add
label define jm01a_pernum_lbl 10 `"10"', add
label define jm01a_pernum_lbl 11 `"11"', add
label define jm01a_pernum_lbl 12 `"12"', add
label define jm01a_pernum_lbl 13 `"13"', add
label define jm01a_pernum_lbl 14 `"14"', add
label define jm01a_pernum_lbl 15 `"15"', add
label define jm01a_pernum_lbl 16 `"16"', add
label define jm01a_pernum_lbl 17 `"17"', add
label define jm01a_pernum_lbl 18 `"18"', add
label define jm01a_pernum_lbl 19 `"19"', add
label define jm01a_pernum_lbl 20 `"20"', add
label define jm01a_pernum_lbl 21 `"21"', add
label define jm01a_pernum_lbl 22 `"22"', add
label define jm01a_pernum_lbl 23 `"23"', add
label define jm01a_pernum_lbl 24 `"24"', add
label define jm01a_pernum_lbl 25 `"25"', add
label define jm01a_pernum_lbl 26 `"26"', add
label define jm01a_pernum_lbl 27 `"27"', add
label define jm01a_pernum_lbl 28 `"28"', add
label define jm01a_pernum_lbl 29 `"29"', add
label define jm01a_pernum_lbl 30 `"30"', add
label values jm01a_pernum jm01a_pernum_lbl

label define jm01a_sex_lbl 1 `"Male"'
label define jm01a_sex_lbl 2 `"Female"', add
label values jm01a_sex jm01a_sex_lbl

label define jm01a_birthyr_lbl 1900 `"1900 or earlier"'
label define jm01a_birthyr_lbl 1901 `"1901"', add
label define jm01a_birthyr_lbl 1902 `"1902"', add
label define jm01a_birthyr_lbl 1903 `"1903"', add
label define jm01a_birthyr_lbl 1904 `"1904"', add
label define jm01a_birthyr_lbl 1905 `"1905"', add
label define jm01a_birthyr_lbl 1906 `"1906"', add
label define jm01a_birthyr_lbl 1907 `"1907"', add
label define jm01a_birthyr_lbl 1908 `"1908"', add
label define jm01a_birthyr_lbl 1909 `"1909"', add
label define jm01a_birthyr_lbl 1910 `"1910"', add
label define jm01a_birthyr_lbl 1911 `"1911"', add
label define jm01a_birthyr_lbl 1912 `"1912"', add
label define jm01a_birthyr_lbl 1913 `"1913"', add
label define jm01a_birthyr_lbl 1914 `"1914"', add
label define jm01a_birthyr_lbl 1915 `"1915"', add
label define jm01a_birthyr_lbl 1916 `"1916"', add
label define jm01a_birthyr_lbl 1917 `"1917"', add
label define jm01a_birthyr_lbl 1918 `"1918"', add
label define jm01a_birthyr_lbl 1919 `"1919"', add
label define jm01a_birthyr_lbl 1920 `"1920"', add
label define jm01a_birthyr_lbl 1921 `"1921"', add
label define jm01a_birthyr_lbl 1922 `"1922"', add
label define jm01a_birthyr_lbl 1923 `"1923"', add
label define jm01a_birthyr_lbl 1924 `"1924"', add
label define jm01a_birthyr_lbl 1925 `"1925"', add
label define jm01a_birthyr_lbl 1926 `"1926"', add
label define jm01a_birthyr_lbl 1927 `"1927"', add
label define jm01a_birthyr_lbl 1928 `"1928"', add
label define jm01a_birthyr_lbl 1929 `"1929"', add
label define jm01a_birthyr_lbl 1930 `"1930"', add
label define jm01a_birthyr_lbl 1931 `"1931"', add
label define jm01a_birthyr_lbl 1932 `"1932"', add
label define jm01a_birthyr_lbl 1933 `"1933"', add
label define jm01a_birthyr_lbl 1934 `"1934"', add
label define jm01a_birthyr_lbl 1935 `"1935"', add
label define jm01a_birthyr_lbl 1936 `"1936"', add
label define jm01a_birthyr_lbl 1937 `"1937"', add
label define jm01a_birthyr_lbl 1938 `"1938"', add
label define jm01a_birthyr_lbl 1939 `"1939"', add
label define jm01a_birthyr_lbl 1940 `"1940"', add
label define jm01a_birthyr_lbl 1941 `"1941"', add
label define jm01a_birthyr_lbl 1942 `"1942"', add
label define jm01a_birthyr_lbl 1943 `"1943"', add
label define jm01a_birthyr_lbl 1944 `"1944"', add
label define jm01a_birthyr_lbl 1945 `"1945"', add
label define jm01a_birthyr_lbl 1946 `"1946"', add
label define jm01a_birthyr_lbl 1947 `"1947"', add
label define jm01a_birthyr_lbl 1948 `"1948"', add
label define jm01a_birthyr_lbl 1949 `"1949"', add
label define jm01a_birthyr_lbl 1950 `"1950"', add
label define jm01a_birthyr_lbl 1951 `"1951"', add
label define jm01a_birthyr_lbl 1952 `"1952"', add
label define jm01a_birthyr_lbl 1953 `"1953"', add
label define jm01a_birthyr_lbl 1954 `"1954"', add
label define jm01a_birthyr_lbl 1955 `"1955"', add
label define jm01a_birthyr_lbl 1956 `"1956"', add
label define jm01a_birthyr_lbl 1957 `"1957"', add
label define jm01a_birthyr_lbl 1958 `"1958"', add
label define jm01a_birthyr_lbl 1959 `"1959"', add
label define jm01a_birthyr_lbl 1960 `"1960"', add
label define jm01a_birthyr_lbl 1961 `"1961"', add
label define jm01a_birthyr_lbl 1962 `"1962"', add
label define jm01a_birthyr_lbl 1963 `"1963"', add
label define jm01a_birthyr_lbl 1964 `"1964"', add
label define jm01a_birthyr_lbl 1965 `"1965"', add
label define jm01a_birthyr_lbl 1966 `"1966"', add
label define jm01a_birthyr_lbl 1967 `"1967"', add
label define jm01a_birthyr_lbl 1968 `"1968"', add
label define jm01a_birthyr_lbl 1969 `"1969"', add
label define jm01a_birthyr_lbl 1970 `"1970"', add
label define jm01a_birthyr_lbl 1971 `"1971"', add
label define jm01a_birthyr_lbl 1972 `"1972"', add
label define jm01a_birthyr_lbl 1973 `"1973"', add
label define jm01a_birthyr_lbl 1974 `"1974"', add
label define jm01a_birthyr_lbl 1975 `"1975"', add
label define jm01a_birthyr_lbl 1976 `"1976"', add
label define jm01a_birthyr_lbl 1977 `"1977"', add
label define jm01a_birthyr_lbl 1978 `"1978"', add
label define jm01a_birthyr_lbl 1979 `"1979"', add
label define jm01a_birthyr_lbl 1980 `"1980"', add
label define jm01a_birthyr_lbl 1981 `"1981"', add
label define jm01a_birthyr_lbl 1982 `"1982"', add
label define jm01a_birthyr_lbl 1983 `"1983"', add
label define jm01a_birthyr_lbl 1984 `"1984"', add
label define jm01a_birthyr_lbl 1985 `"1985"', add
label define jm01a_birthyr_lbl 1986 `"1986"', add
label define jm01a_birthyr_lbl 1987 `"1987"', add
label define jm01a_birthyr_lbl 1988 `"1988"', add
label define jm01a_birthyr_lbl 1989 `"1989"', add
label define jm01a_birthyr_lbl 1990 `"1990"', add
label define jm01a_birthyr_lbl 1991 `"1991"', add
label define jm01a_birthyr_lbl 1992 `"1992"', add
label define jm01a_birthyr_lbl 1993 `"1993"', add
label define jm01a_birthyr_lbl 1994 `"1994"', add
label define jm01a_birthyr_lbl 1995 `"1995"', add
label define jm01a_birthyr_lbl 1996 `"1996"', add
label define jm01a_birthyr_lbl 1997 `"1997"', add
label define jm01a_birthyr_lbl 1998 `"1998"', add
label define jm01a_birthyr_lbl 1999 `"1999"', add
label define jm01a_birthyr_lbl 2000 `"2000"', add
label define jm01a_birthyr_lbl 2001 `"2001"', add
label values jm01a_birthyr jm01a_birthyr_lbl

label define jm01a_birthmo_lbl 01 `"January"'
label define jm01a_birthmo_lbl 02 `"February"', add
label define jm01a_birthmo_lbl 03 `"March"', add
label define jm01a_birthmo_lbl 04 `"April"', add
label define jm01a_birthmo_lbl 05 `"May"', add
label define jm01a_birthmo_lbl 06 `"June"', add
label define jm01a_birthmo_lbl 07 `"July"', add
label define jm01a_birthmo_lbl 08 `"August"', add
label define jm01a_birthmo_lbl 09 `"September"', add
label define jm01a_birthmo_lbl 10 `"October"', add
label define jm01a_birthmo_lbl 11 `"November"', add
label define jm01a_birthmo_lbl 12 `"December"', add
label define jm01a_birthmo_lbl 99 `"Unknown"', add
label values jm01a_birthmo jm01a_birthmo_lbl

label define jm01a_age_lbl 00 `"Less than a year"'
label define jm01a_age_lbl 01 `"1"', add
label define jm01a_age_lbl 02 `"2"', add
label define jm01a_age_lbl 03 `"3"', add
label define jm01a_age_lbl 04 `"4"', add
label define jm01a_age_lbl 05 `"5"', add
label define jm01a_age_lbl 06 `"6"', add
label define jm01a_age_lbl 07 `"7"', add
label define jm01a_age_lbl 08 `"8"', add
label define jm01a_age_lbl 09 `"9"', add
label define jm01a_age_lbl 10 `"10"', add
label define jm01a_age_lbl 11 `"11"', add
label define jm01a_age_lbl 12 `"12"', add
label define jm01a_age_lbl 13 `"13"', add
label define jm01a_age_lbl 14 `"14"', add
label define jm01a_age_lbl 15 `"15"', add
label define jm01a_age_lbl 16 `"16"', add
label define jm01a_age_lbl 17 `"17"', add
label define jm01a_age_lbl 18 `"18"', add
label define jm01a_age_lbl 19 `"19"', add
label define jm01a_age_lbl 20 `"20"', add
label define jm01a_age_lbl 21 `"21"', add
label define jm01a_age_lbl 22 `"22"', add
label define jm01a_age_lbl 23 `"23"', add
label define jm01a_age_lbl 24 `"24"', add
label define jm01a_age_lbl 25 `"25"', add
label define jm01a_age_lbl 26 `"26"', add
label define jm01a_age_lbl 27 `"27"', add
label define jm01a_age_lbl 28 `"28"', add
label define jm01a_age_lbl 29 `"29"', add
label define jm01a_age_lbl 30 `"30"', add
label define jm01a_age_lbl 31 `"31"', add
label define jm01a_age_lbl 32 `"32"', add
label define jm01a_age_lbl 33 `"33"', add
label define jm01a_age_lbl 34 `"34"', add
label define jm01a_age_lbl 35 `"35"', add
label define jm01a_age_lbl 36 `"36"', add
label define jm01a_age_lbl 37 `"37"', add
label define jm01a_age_lbl 38 `"38"', add
label define jm01a_age_lbl 39 `"39"', add
label define jm01a_age_lbl 40 `"40"', add
label define jm01a_age_lbl 41 `"41"', add
label define jm01a_age_lbl 42 `"42"', add
label define jm01a_age_lbl 43 `"43"', add
label define jm01a_age_lbl 44 `"44"', add
label define jm01a_age_lbl 45 `"45"', add
label define jm01a_age_lbl 46 `"46"', add
label define jm01a_age_lbl 47 `"47"', add
label define jm01a_age_lbl 48 `"48"', add
label define jm01a_age_lbl 49 `"49"', add
label define jm01a_age_lbl 50 `"50"', add
label define jm01a_age_lbl 51 `"51"', add
label define jm01a_age_lbl 52 `"52"', add
label define jm01a_age_lbl 53 `"53"', add
label define jm01a_age_lbl 54 `"54"', add
label define jm01a_age_lbl 55 `"55"', add
label define jm01a_age_lbl 56 `"56"', add
label define jm01a_age_lbl 57 `"57"', add
label define jm01a_age_lbl 58 `"58"', add
label define jm01a_age_lbl 59 `"59"', add
label define jm01a_age_lbl 60 `"60"', add
label define jm01a_age_lbl 61 `"61"', add
label define jm01a_age_lbl 62 `"62"', add
label define jm01a_age_lbl 63 `"63"', add
label define jm01a_age_lbl 64 `"64"', add
label define jm01a_age_lbl 65 `"65"', add
label define jm01a_age_lbl 66 `"66"', add
label define jm01a_age_lbl 67 `"67"', add
label define jm01a_age_lbl 68 `"68"', add
label define jm01a_age_lbl 69 `"69"', add
label define jm01a_age_lbl 70 `"70"', add
label define jm01a_age_lbl 71 `"71"', add
label define jm01a_age_lbl 72 `"72"', add
label define jm01a_age_lbl 73 `"73"', add
label define jm01a_age_lbl 74 `"74"', add
label define jm01a_age_lbl 75 `"75"', add
label define jm01a_age_lbl 76 `"76"', add
label define jm01a_age_lbl 77 `"77"', add
label define jm01a_age_lbl 78 `"78"', add
label define jm01a_age_lbl 79 `"79"', add
label define jm01a_age_lbl 80 `"80"', add
label define jm01a_age_lbl 81 `"81"', add
label define jm01a_age_lbl 82 `"82"', add
label define jm01a_age_lbl 83 `"83"', add
label define jm01a_age_lbl 84 `"84"', add
label define jm01a_age_lbl 85 `"85"', add
label define jm01a_age_lbl 86 `"86"', add
label define jm01a_age_lbl 87 `"87"', add
label define jm01a_age_lbl 88 `"88"', add
label define jm01a_age_lbl 89 `"89"', add
label define jm01a_age_lbl 90 `"90"', add
label define jm01a_age_lbl 91 `"91"', add
label define jm01a_age_lbl 92 `"92"', add
label define jm01a_age_lbl 93 `"93"', add
label define jm01a_age_lbl 94 `"94"', add
label define jm01a_age_lbl 95 `"95"', add
label define jm01a_age_lbl 96 `"96"', add
label define jm01a_age_lbl 97 `"97"', add
label define jm01a_age_lbl 98 `"98+"', add
label values jm01a_age jm01a_age_lbl

label define jm01a_relate_lbl 01 `"Head"'
label define jm01a_relate_lbl 02 `"Wife/husband"', add
label define jm01a_relate_lbl 03 `"Common law partner"', add
label define jm01a_relate_lbl 04 `"Child of head and spouse/partner"', add
label define jm01a_relate_lbl 05 `"Child of head only"', add
label define jm01a_relate_lbl 06 `"Child of spouse/partner only"', add
label define jm01a_relate_lbl 07 `"Spouse/partner of child"', add
label define jm01a_relate_lbl 08 `"Grandchild of head/spouse/partner"', add
label define jm01a_relate_lbl 09 `"Parent of head/spouse/partner"', add
label define jm01a_relate_lbl 10 `"Brother or sister of head/spouse/partner"', add
label define jm01a_relate_lbl 11 `"Other relative of head/spouse/partner"', add
label define jm01a_relate_lbl 12 `"Domestic employee"', add
label define jm01a_relate_lbl 13 `"Other non-relative"', add
label values jm01a_relate jm01a_relate_lbl

label define jm01a_race_lbl 1 `"Black"'
label define jm01a_race_lbl 2 `"Chinese"', add
label define jm01a_race_lbl 3 `"Mixed"', add
label define jm01a_race_lbl 4 `"East Indian"', add
label define jm01a_race_lbl 5 `"White"', add
label define jm01a_race_lbl 6 `"Other"', add
label define jm01a_race_lbl 9 `"Unknown"', add
label values jm01a_race jm01a_race_lbl

label define jm01a_relig_lbl 01 `"Anglican"'
label define jm01a_relig_lbl 02 `"Baptist"', add
label define jm01a_relig_lbl 03 `"Brethren"', add
label define jm01a_relig_lbl 04 `"Church of God in Jamaica"', add
label define jm01a_relig_lbl 05 `"Church of God of Prophecy"', add
label define jm01a_relig_lbl 06 `"Jehova's witness"', add
label define jm01a_relig_lbl 07 `"Judaism"', add
label define jm01a_relig_lbl 08 `"Methodist"', add
label define jm01a_relig_lbl 09 `"Moravian"', add
label define jm01a_relig_lbl 10 `"New testament"', add
label define jm01a_relig_lbl 11 `"Other churchof God"', add
label define jm01a_relig_lbl 12 `"Pentecostal"', add
label define jm01a_relig_lbl 13 `"Roman Catholic"', add
label define jm01a_relig_lbl 14 `"Sevent Day Adventist"', add
label define jm01a_relig_lbl 15 `"United church"', add
label define jm01a_relig_lbl 16 `"Baha'i"', add
label define jm01a_relig_lbl 17 `"Hinduism"', add
label define jm01a_relig_lbl 18 `"Islam"', add
label define jm01a_relig_lbl 19 `"Rastafarian"', add
label define jm01a_relig_lbl 20 `"Other"', add
label define jm01a_relig_lbl 21 `"None"', add
label define jm01a_relig_lbl 98 `"Unknown"', add
label values jm01a_relig jm01a_relig_lbl

label define jm01a_marst_lbl 1 `"Married"'
label define jm01a_marst_lbl 2 `"Divorced"', add
label define jm01a_marst_lbl 3 `"Widowed"', add
label define jm01a_marst_lbl 4 `"Legally separated"', add
label define jm01a_marst_lbl 5 `"Never married"', add
label define jm01a_marst_lbl 8 `"Unknown"', add
label define jm01a_marst_lbl 9 `"NIU (not in universe)"', add
label values jm01a_marst jm01a_marst_lbl

label define jm01a_spouse_lbl 1 `"Yes"'
label define jm01a_spouse_lbl 2 `"No"', add
label define jm01a_spouse_lbl 8 `"Unknown"', add
label define jm01a_spouse_lbl 9 `"NIU (not in universe)"', add
label values jm01a_spouse jm01a_spouse_lbl

label define jm01a_partner_lbl 1 `"Yes"'
label define jm01a_partner_lbl 2 `"No"', add
label define jm01a_partner_lbl 8 `"Unknown"', add
label define jm01a_partner_lbl 9 `"NIU (not in universe)"', add
label values jm01a_partner jm01a_partner_lbl

label define jm01a_illness_lbl 1 `"Yes"'
label define jm01a_illness_lbl 2 `"No"', add
label define jm01a_illness_lbl 9 `"Unknown"', add
label values jm01a_illness jm01a_illness_lbl

label define jm01a_illtype_lbl 00 `"Arthritis"'
label define jm01a_illtype_lbl 01 `"Asthma"', add
label define jm01a_illtype_lbl 02 `"Diabetes"', add
label define jm01a_illtype_lbl 03 `"Hypertension"', add
label define jm01a_illtype_lbl 04 `"Heart"', add
label define jm01a_illtype_lbl 05 `"Kidney"', add
label define jm01a_illtype_lbl 06 `"Glaucoma"', add
label define jm01a_illtype_lbl 07 `"Sickle cell"', add
label define jm01a_illtype_lbl 08 `"None of the above, other"', add
label define jm01a_illtype_lbl 98 `"Unknown"', add
label define jm01a_illtype_lbl 99 `"NIU (not in universe)"', add
label values jm01a_illtype jm01a_illtype_lbl

label define jm01a_disab_lbl 1 `"Yes"'
label define jm01a_disab_lbl 2 `"No"', add
label define jm01a_disab_lbl 9 `"Unknown"', add
label values jm01a_disab jm01a_disab_lbl

label define jm01a_limit_lbl 1 `"Yes"'
label define jm01a_limit_lbl 2 `"No"', add
label define jm01a_limit_lbl 8 `"Unknown"', add
label define jm01a_limit_lbl 9 `"NIU (not in universe)"', add
label values jm01a_limit jm01a_limit_lbl

label define jm01a_distype_lbl 00 `"Sight only"'
label define jm01a_distype_lbl 01 `"Hearing only"', add
label define jm01a_distype_lbl 02 `"Speech only"', add
label define jm01a_distype_lbl 03 `"Physical only"', add
label define jm01a_distype_lbl 04 `"Multiple disabilities"', add
label define jm01a_distype_lbl 05 `"Slowness of learning"', add
label define jm01a_distype_lbl 06 `"Mental retardation"', add
label define jm01a_distype_lbl 07 `"Mental illness"', add
label define jm01a_distype_lbl 08 `"Other"', add
label define jm01a_distype_lbl 98 `"Unknown"', add
label define jm01a_distype_lbl 99 `"NIU (not in universe)"', add
label values jm01a_distype jm01a_distype_lbl

label define jm01a_school_lbl 1 `"Yes at school or other institution/HEART"'
label define jm01a_school_lbl 2 `"Yes private study"', add
label define jm01a_school_lbl 3 `"No"', add
label define jm01a_school_lbl 8 `"Unknown"', add
label define jm01a_school_lbl 9 `"NIU (not in universe)"', add
label values jm01a_school jm01a_school_lbl

label define jm01a_reassch_lbl 1 `"Parent(s) cannot afford"'
label define jm01a_reassch_lbl 2 `"Poor in studies/not interested"', add
label define jm01a_reassch_lbl 3 `"Illness/disability"', add
label define jm01a_reassch_lbl 7 `"Other"', add
label define jm01a_reassch_lbl 8 `"Unknown"', add
label define jm01a_reassch_lbl 9 `"NIU (not in universe)"', add
label values jm01a_reassch jm01a_reassch_lbl

label define jm01a_bplpar_lbl 01 `"Kingston"'
label define jm01a_bplpar_lbl 02 `"St. Andrew"', add
label define jm01a_bplpar_lbl 03 `"St. Thomas"', add
label define jm01a_bplpar_lbl 04 `"Portland"', add
label define jm01a_bplpar_lbl 05 `"St. Mary"', add
label define jm01a_bplpar_lbl 06 `"St. Ann"', add
label define jm01a_bplpar_lbl 07 `"Trelawny"', add
label define jm01a_bplpar_lbl 08 `"St. James"', add
label define jm01a_bplpar_lbl 09 `"Hanover"', add
label define jm01a_bplpar_lbl 10 `"Westmoreland"', add
label define jm01a_bplpar_lbl 11 `"St. Elizabeth"', add
label define jm01a_bplpar_lbl 12 `"Manchester"', add
label define jm01a_bplpar_lbl 13 `"Clarendon"', add
label define jm01a_bplpar_lbl 14 `"St. Catherine"', add
label define jm01a_bplpar_lbl 15 `"United States"', add
label define jm01a_bplpar_lbl 16 `"United Kingdom"', add
label define jm01a_bplpar_lbl 17 `"Canada"', add
label define jm01a_bplpar_lbl 18 `"Caribbean country"', add
label define jm01a_bplpar_lbl 19 `"India"', add
label define jm01a_bplpar_lbl 20 `"Southeast Asia"', add
label define jm01a_bplpar_lbl 21 `"Other foreign country"', add
label define jm01a_bplpar_lbl 98 `"Unknown"', add
label values jm01a_bplpar jm01a_bplpar_lbl

label define jm01a_yrimmig_lbl 1981 `"1981 or earlier"'
label define jm01a_yrimmig_lbl 1982 `"1982"', add
label define jm01a_yrimmig_lbl 1983 `"1983"', add
label define jm01a_yrimmig_lbl 1984 `"1984"', add
label define jm01a_yrimmig_lbl 1985 `"1985"', add
label define jm01a_yrimmig_lbl 1986 `"1986"', add
label define jm01a_yrimmig_lbl 1987 `"1987"', add
label define jm01a_yrimmig_lbl 1988 `"1988"', add
label define jm01a_yrimmig_lbl 1989 `"1989"', add
label define jm01a_yrimmig_lbl 1990 `"1990"', add
label define jm01a_yrimmig_lbl 1991 `"1991"', add
label define jm01a_yrimmig_lbl 1992 `"1992"', add
label define jm01a_yrimmig_lbl 1993 `"1993"', add
label define jm01a_yrimmig_lbl 1994 `"1994"', add
label define jm01a_yrimmig_lbl 1995 `"1995"', add
label define jm01a_yrimmig_lbl 1996 `"1996"', add
label define jm01a_yrimmig_lbl 1997 `"1997"', add
label define jm01a_yrimmig_lbl 1998 `"1998"', add
label define jm01a_yrimmig_lbl 1999 `"1999"', add
label define jm01a_yrimmig_lbl 2000 `"2000"', add
label define jm01a_yrimmig_lbl 2001 `"2001"', add
label define jm01a_yrimmig_lbl 9998 `"Unknown"', add
label define jm01a_yrimmig_lbl 9999 `"NIU (not in universe)"', add
label values jm01a_yrimmig jm01a_yrimmig_lbl

label define jm01a_yrpar_lbl 1905 `"1905 or earlier"'
label define jm01a_yrpar_lbl 1906 `"1906"', add
label define jm01a_yrpar_lbl 1907 `"1907"', add
label define jm01a_yrpar_lbl 1908 `"1908"', add
label define jm01a_yrpar_lbl 1909 `"1909"', add
label define jm01a_yrpar_lbl 1910 `"1910"', add
label define jm01a_yrpar_lbl 1911 `"1911"', add
label define jm01a_yrpar_lbl 1912 `"1912"', add
label define jm01a_yrpar_lbl 1913 `"1913"', add
label define jm01a_yrpar_lbl 1914 `"1914"', add
label define jm01a_yrpar_lbl 1915 `"1915"', add
label define jm01a_yrpar_lbl 1916 `"1916"', add
label define jm01a_yrpar_lbl 1917 `"1917"', add
label define jm01a_yrpar_lbl 1918 `"1918"', add
label define jm01a_yrpar_lbl 1919 `"1919"', add
label define jm01a_yrpar_lbl 1920 `"1920"', add
label define jm01a_yrpar_lbl 1921 `"1921"', add
label define jm01a_yrpar_lbl 1922 `"1922"', add
label define jm01a_yrpar_lbl 1923 `"1923"', add
label define jm01a_yrpar_lbl 1924 `"1924"', add
label define jm01a_yrpar_lbl 1925 `"1925"', add
label define jm01a_yrpar_lbl 1926 `"1926"', add
label define jm01a_yrpar_lbl 1927 `"1927"', add
label define jm01a_yrpar_lbl 1928 `"1928"', add
label define jm01a_yrpar_lbl 1929 `"1929"', add
label define jm01a_yrpar_lbl 1930 `"1930"', add
label define jm01a_yrpar_lbl 1931 `"1931"', add
label define jm01a_yrpar_lbl 1932 `"1932"', add
label define jm01a_yrpar_lbl 1933 `"1933"', add
label define jm01a_yrpar_lbl 1934 `"1934"', add
label define jm01a_yrpar_lbl 1935 `"1935"', add
label define jm01a_yrpar_lbl 1936 `"1936"', add
label define jm01a_yrpar_lbl 1937 `"1937"', add
label define jm01a_yrpar_lbl 1938 `"1938"', add
label define jm01a_yrpar_lbl 1939 `"1939"', add
label define jm01a_yrpar_lbl 1940 `"1940"', add
label define jm01a_yrpar_lbl 1941 `"1941"', add
label define jm01a_yrpar_lbl 1942 `"1942"', add
label define jm01a_yrpar_lbl 1943 `"1943"', add
label define jm01a_yrpar_lbl 1944 `"1944"', add
label define jm01a_yrpar_lbl 1945 `"1945"', add
label define jm01a_yrpar_lbl 1946 `"1946"', add
label define jm01a_yrpar_lbl 1947 `"1947"', add
label define jm01a_yrpar_lbl 1948 `"1948"', add
label define jm01a_yrpar_lbl 1949 `"1949"', add
label define jm01a_yrpar_lbl 1950 `"1950"', add
label define jm01a_yrpar_lbl 1951 `"1951"', add
label define jm01a_yrpar_lbl 1952 `"1952"', add
label define jm01a_yrpar_lbl 1953 `"1953"', add
label define jm01a_yrpar_lbl 1954 `"1954"', add
label define jm01a_yrpar_lbl 1955 `"1955"', add
label define jm01a_yrpar_lbl 1956 `"1956"', add
label define jm01a_yrpar_lbl 1957 `"1957"', add
label define jm01a_yrpar_lbl 1958 `"1958"', add
label define jm01a_yrpar_lbl 1959 `"1959"', add
label define jm01a_yrpar_lbl 1960 `"1960"', add
label define jm01a_yrpar_lbl 1961 `"1961"', add
label define jm01a_yrpar_lbl 1962 `"1962"', add
label define jm01a_yrpar_lbl 1963 `"1963"', add
label define jm01a_yrpar_lbl 1964 `"1964"', add
label define jm01a_yrpar_lbl 1965 `"1965"', add
label define jm01a_yrpar_lbl 1966 `"1966"', add
label define jm01a_yrpar_lbl 1967 `"1967"', add
label define jm01a_yrpar_lbl 1968 `"1968"', add
label define jm01a_yrpar_lbl 1969 `"1969"', add
label define jm01a_yrpar_lbl 1970 `"1970"', add
label define jm01a_yrpar_lbl 1971 `"1971"', add
label define jm01a_yrpar_lbl 1972 `"1972"', add
label define jm01a_yrpar_lbl 1973 `"1973"', add
label define jm01a_yrpar_lbl 1974 `"1974"', add
label define jm01a_yrpar_lbl 1975 `"1975"', add
label define jm01a_yrpar_lbl 1976 `"1976"', add
label define jm01a_yrpar_lbl 1977 `"1977"', add
label define jm01a_yrpar_lbl 1978 `"1978"', add
label define jm01a_yrpar_lbl 1979 `"1979"', add
label define jm01a_yrpar_lbl 1980 `"1980"', add
label define jm01a_yrpar_lbl 1981 `"1981"', add
label define jm01a_yrpar_lbl 1982 `"1982"', add
label define jm01a_yrpar_lbl 1983 `"1983"', add
label define jm01a_yrpar_lbl 1984 `"1984"', add
label define jm01a_yrpar_lbl 1985 `"1985"', add
label define jm01a_yrpar_lbl 1986 `"1986"', add
label define jm01a_yrpar_lbl 1987 `"1987"', add
label define jm01a_yrpar_lbl 1988 `"1988"', add
label define jm01a_yrpar_lbl 1989 `"1989"', add
label define jm01a_yrpar_lbl 1990 `"1990"', add
label define jm01a_yrpar_lbl 1991 `"1991"', add
label define jm01a_yrpar_lbl 1992 `"1992"', add
label define jm01a_yrpar_lbl 1993 `"1993"', add
label define jm01a_yrpar_lbl 1994 `"1994"', add
label define jm01a_yrpar_lbl 1995 `"1995"', add
label define jm01a_yrpar_lbl 1996 `"1996"', add
label define jm01a_yrpar_lbl 1997 `"1997"', add
label define jm01a_yrpar_lbl 1998 `"1998"', add
label define jm01a_yrpar_lbl 1999 `"1999"', add
label define jm01a_yrpar_lbl 2000 `"2000"', add
label define jm01a_yrpar_lbl 2001 `"2001 or 2002"', add
label define jm01a_yrpar_lbl 9998 `"Unknown"', add
label values jm01a_yrpar jm01a_yrpar_lbl

label define jm01a_prevpar_lbl 01 `"Kingston"'
label define jm01a_prevpar_lbl 02 `"St. Andrew"', add
label define jm01a_prevpar_lbl 03 `"St. Thomas"', add
label define jm01a_prevpar_lbl 04 `"Portland"', add
label define jm01a_prevpar_lbl 05 `"St. Mary"', add
label define jm01a_prevpar_lbl 06 `"St. Ann"', add
label define jm01a_prevpar_lbl 07 `"Trelawny"', add
label define jm01a_prevpar_lbl 08 `"St. James"', add
label define jm01a_prevpar_lbl 09 `"Hanover"', add
label define jm01a_prevpar_lbl 10 `"Westmoreland"', add
label define jm01a_prevpar_lbl 11 `"St. Elizabeth"', add
label define jm01a_prevpar_lbl 12 `"Manchester"', add
label define jm01a_prevpar_lbl 13 `"Clarendon"', add
label define jm01a_prevpar_lbl 14 `"St. Catherine"', add
label define jm01a_prevpar_lbl 98 `"Unknown"', add
label define jm01a_prevpar_lbl 99 `"NIU (not in universe)"', add
label values jm01a_prevpar jm01a_prevpar_lbl

label define jm01a_away5yr_lbl 1 `"Yes"'
label define jm01a_away5yr_lbl 2 `"No"', add
label define jm01a_away5yr_lbl 8 `"Unknown"', add
label define jm01a_away5yr_lbl 9 `"NIU (not in universe)"', add
label values jm01a_away5yr jm01a_away5yr_lbl

label define jm01a_prevctry_lbl 1 `"USA"'
label define jm01a_prevctry_lbl 2 `"UK"', add
label define jm01a_prevctry_lbl 3 `"Canada"', add
label define jm01a_prevctry_lbl 4 `"Caribbean country"', add
label define jm01a_prevctry_lbl 5 `"Other"', add
label define jm01a_prevctry_lbl 8 `"Unknown"', add
label define jm01a_prevctry_lbl 9 `"NIU (not in universe)"', add
label values jm01a_prevctry jm01a_prevctry_lbl

label define jm01a_yrreturn_lbl 1960 `"1960 or earlier"'
label define jm01a_yrreturn_lbl 1961 `"1961"', add
label define jm01a_yrreturn_lbl 1962 `"1962"', add
label define jm01a_yrreturn_lbl 1963 `"1963"', add
label define jm01a_yrreturn_lbl 1964 `"1964"', add
label define jm01a_yrreturn_lbl 1965 `"1965"', add
label define jm01a_yrreturn_lbl 1966 `"1966"', add
label define jm01a_yrreturn_lbl 1967 `"1967"', add
label define jm01a_yrreturn_lbl 1968 `"1968"', add
label define jm01a_yrreturn_lbl 1969 `"1969"', add
label define jm01a_yrreturn_lbl 1970 `"1970"', add
label define jm01a_yrreturn_lbl 1971 `"1971"', add
label define jm01a_yrreturn_lbl 1972 `"1972"', add
label define jm01a_yrreturn_lbl 1973 `"1973"', add
label define jm01a_yrreturn_lbl 1974 `"1974"', add
label define jm01a_yrreturn_lbl 1975 `"1975"', add
label define jm01a_yrreturn_lbl 1976 `"1976"', add
label define jm01a_yrreturn_lbl 1977 `"1977"', add
label define jm01a_yrreturn_lbl 1978 `"1978"', add
label define jm01a_yrreturn_lbl 1979 `"1979"', add
label define jm01a_yrreturn_lbl 1980 `"1980"', add
label define jm01a_yrreturn_lbl 1981 `"1981"', add
label define jm01a_yrreturn_lbl 1982 `"1982"', add
label define jm01a_yrreturn_lbl 1983 `"1983"', add
label define jm01a_yrreturn_lbl 1984 `"1984"', add
label define jm01a_yrreturn_lbl 1985 `"1985"', add
label define jm01a_yrreturn_lbl 1986 `"1986"', add
label define jm01a_yrreturn_lbl 1987 `"1987"', add
label define jm01a_yrreturn_lbl 1988 `"1988"', add
label define jm01a_yrreturn_lbl 1989 `"1989"', add
label define jm01a_yrreturn_lbl 1990 `"1990"', add
label define jm01a_yrreturn_lbl 1991 `"1991"', add
label define jm01a_yrreturn_lbl 1992 `"1992"', add
label define jm01a_yrreturn_lbl 1993 `"1993"', add
label define jm01a_yrreturn_lbl 1994 `"1994"', add
label define jm01a_yrreturn_lbl 1995 `"1995"', add
label define jm01a_yrreturn_lbl 1996 `"1996"', add
label define jm01a_yrreturn_lbl 1997 `"1997"', add
label define jm01a_yrreturn_lbl 1998 `"1998"', add
label define jm01a_yrreturn_lbl 1999 `"1999"', add
label define jm01a_yrreturn_lbl 2000 `"2000"', add
label define jm01a_yrreturn_lbl 2001 `"2001"', add
label define jm01a_yrreturn_lbl 9998 `"Unknown"', add
label define jm01a_yrreturn_lbl 9999 `"NIU (not in universe)"', add
label values jm01a_yrreturn jm01a_yrreturn_lbl

label define jm01a_reasret_lbl 0 `"Retirement"'
label define jm01a_reasret_lbl 1 `"Home"', add
label define jm01a_reasret_lbl 2 `"Health"', add
label define jm01a_reasret_lbl 3 `"Achieved objective abroad"', add
label define jm01a_reasret_lbl 4 `"Involuntary return"', add
label define jm01a_reasret_lbl 5 `"Employment"', add
label define jm01a_reasret_lbl 6 `"Weather"', add
label define jm01a_reasret_lbl 7 `"Other"', add
label define jm01a_reasret_lbl 8 `"Unknown"', add
label define jm01a_reasret_lbl 9 `"NIU (not in universe)"', add
label values jm01a_reasret jm01a_reasret_lbl

label define jm01a_exam_lbl 00 `"None"'
label define jm01a_exam_lbl 01 `"CXC basic, JHSC, JSC or JSCE or 3rd JLCL, SSC, JC"', add
label define jm01a_exam_lbl 02 `"GCE O level 1-3, CXC General 1-3, AEB, 1-3"', add
label define jm01a_exam_lbl 03 `"GCE O level 4+, CXC General 4+, AEB 4+, SC"', add
label define jm01a_exam_lbl 04 `"GCE A level 1+, HSC, CAPE 1+"', add
label define jm01a_exam_lbl 05 `"College certificate/diploma"', add
label define jm01a_exam_lbl 06 `"Associate degree/other certificates and diplomas"', add
label define jm01a_exam_lbl 07 `"Degrees and professional qualifications"', add
label define jm01a_exam_lbl 08 `"Other"', add
label define jm01a_exam_lbl 09 `"Unknown"', add
label define jm01a_exam_lbl 99 `"NIU (not in universe)"', add
label values jm01a_exam jm01a_exam_lbl

label define jm01a_yrschool_lbl 00 `"0"'
label define jm01a_yrschool_lbl 01 `"1"', add
label define jm01a_yrschool_lbl 02 `"2"', add
label define jm01a_yrschool_lbl 03 `"3"', add
label define jm01a_yrschool_lbl 04 `"4"', add
label define jm01a_yrschool_lbl 05 `"5"', add
label define jm01a_yrschool_lbl 06 `"6"', add
label define jm01a_yrschool_lbl 07 `"7"', add
label define jm01a_yrschool_lbl 08 `"8"', add
label define jm01a_yrschool_lbl 09 `"9"', add
label define jm01a_yrschool_lbl 10 `"10"', add
label define jm01a_yrschool_lbl 11 `"11"', add
label define jm01a_yrschool_lbl 12 `"12"', add
label define jm01a_yrschool_lbl 13 `"13"', add
label define jm01a_yrschool_lbl 14 `"14"', add
label define jm01a_yrschool_lbl 15 `"15"', add
label define jm01a_yrschool_lbl 16 `"16"', add
label define jm01a_yrschool_lbl 17 `"17"', add
label define jm01a_yrschool_lbl 18 `"18"', add
label define jm01a_yrschool_lbl 19 `"19"', add
label define jm01a_yrschool_lbl 20 `"20"', add
label define jm01a_yrschool_lbl 21 `"21"', add
label define jm01a_yrschool_lbl 22 `"22"', add
label define jm01a_yrschool_lbl 23 `"23"', add
label define jm01a_yrschool_lbl 24 `"24"', add
label define jm01a_yrschool_lbl 25 `"25"', add
label define jm01a_yrschool_lbl 26 `"26"', add
label define jm01a_yrschool_lbl 27 `"27"', add
label define jm01a_yrschool_lbl 28 `"28"', add
label define jm01a_yrschool_lbl 29 `"29"', add
label define jm01a_yrschool_lbl 30 `"30"', add
label define jm01a_yrschool_lbl 98 `"Unknown"', add
label define jm01a_yrschool_lbl 99 `"NIU (not in universe)"', add
label values jm01a_yrschool jm01a_yrschool_lbl

label define jm01a_intrain_lbl 1 `"Yes"'
label define jm01a_intrain_lbl 2 `"No"', add
label define jm01a_intrain_lbl 8 `"Unknown"', add
label define jm01a_intrain_lbl 9 `"NIU (not in universe)"', add
label values jm01a_intrain jm01a_intrain_lbl

label define jm01a_occt2_lbl 11 `"Legislators and senior officials"'
label define jm01a_occt2_lbl 12 `"Corporate managers"', add
label define jm01a_occt2_lbl 13 `"General managers"', add
label define jm01a_occt2_lbl 21 `"Physical, mathematical and engineering science professionals"', add
label define jm01a_occt2_lbl 22 `"Life science and health professionals"', add
label define jm01a_occt2_lbl 23 `"Teaching professionals"', add
label define jm01a_occt2_lbl 24 `"Other professionals"', add
label define jm01a_occt2_lbl 31 `"Physical and engineering science associate professionals"', add
label define jm01a_occt2_lbl 32 `"Life science and health associate professionals"', add
label define jm01a_occt2_lbl 33 `"Teaching associate professionals"', add
label define jm01a_occt2_lbl 34 `"Other associate professionals"', add
label define jm01a_occt2_lbl 41 `"Office clerks"', add
label define jm01a_occt2_lbl 42 `"Customer services clerks"', add
label define jm01a_occt2_lbl 51 `"Personal and protective services workers"', add
label define jm01a_occt2_lbl 52 `"Models, salespersons and demonstrators"', add
label define jm01a_occt2_lbl 61 `"Market-oriented skilled agricultural and fishery workers"', add
label define jm01a_occt2_lbl 71 `"Extraction and building trades workers"', add
label define jm01a_occt2_lbl 72 `"Metal, machinery and related trades workers"', add
label define jm01a_occt2_lbl 74 `"Other craft and related trades workers"', add
label define jm01a_occt2_lbl 82 `"Machine operators and assemblers"', add
label define jm01a_occt2_lbl 83 `"Drivers and mobile-plant operators"', add
label define jm01a_occt2_lbl 91 `"Sales and services elementary occupations"', add
label define jm01a_occt2_lbl 93 `"Labourers in mining, construction, manufacturing and transport"', add
label define jm01a_occt2_lbl 95 `"Other occupation, response suppressed"', add
label define jm01a_occt2_lbl 98 `"Unknown"', add
label define jm01a_occt2_lbl 99 `"NIU (not in universe)"', add
label values jm01a_occt2 jm01a_occt2_lbl

label define jm01a_methtrai_lbl 01 `"Vocational training centre / academy"'
label define jm01a_methtrai_lbl 02 `"VTDI"', add
label define jm01a_methtrai_lbl 03 `"Other HEART program"', add
label define jm01a_methtrai_lbl 04 `"UWI"', add
label define jm01a_methtrai_lbl 05 `"Northern Caribbean University"', add
label define jm01a_methtrai_lbl 06 `"Community college"', add
label define jm01a_methtrai_lbl 07 `"Teacher's college, CASE"', add
label define jm01a_methtrai_lbl 08 `"Other tertiary"', add
label define jm01a_methtrai_lbl 09 `"Technical school"', add
label define jm01a_methtrai_lbl 10 `"Secretarial/commercial college"', add
label define jm01a_methtrai_lbl 11 `"Police Training School/Jamaica Police Academy"', add
label define jm01a_methtrai_lbl 12 `"UTECH"', add
label define jm01a_methtrai_lbl 13 `"Nursing school"', add
label define jm01a_methtrai_lbl 14 `"Apprenticeship"', add
label define jm01a_methtrai_lbl 15 `"On the job training"', add
label define jm01a_methtrai_lbl 16 `"Other"', add
label define jm01a_methtrai_lbl 19 `"Not stated"', add
label define jm01a_methtrai_lbl 98 `"Unknown"', add
label define jm01a_methtrai_lbl 99 `"NIU (not in universe)"', add
label values jm01a_methtrai jm01a_methtrai_lbl

label define jm01a_lengtrai_lbl 1 `"Under 6 months"'
label define jm01a_lengtrai_lbl 2 `"6 months-under 1 year"', add
label define jm01a_lengtrai_lbl 3 `"1 year-under 2 years"', add
label define jm01a_lengtrai_lbl 4 `"2 years-under 3 years"', add
label define jm01a_lengtrai_lbl 5 `"3 years and over"', add
label define jm01a_lengtrai_lbl 8 `"Unknown"', add
label define jm01a_lengtrai_lbl 9 `"NIU (not in universe)"', add
label values jm01a_lengtrai jm01a_lengtrai_lbl

label define jm01a_qualtrai_lbl 0 `"None"'
label define jm01a_qualtrai_lbl 1 `"Certificate"', add
label define jm01a_qualtrai_lbl 2 `"Associate degree"', add
label define jm01a_qualtrai_lbl 3 `"Diploma"', add
label define jm01a_qualtrai_lbl 4 `"Undergraduate degree"', add
label define jm01a_qualtrai_lbl 5 `"Professional qualification"', add
label define jm01a_qualtrai_lbl 6 `"Graduate degree"', add
label define jm01a_qualtrai_lbl 7 `"Other"', add
label define jm01a_qualtrai_lbl 8 `"Unknown"', add
label define jm01a_qualtrai_lbl 9 `"NIU (not in universe)"', add
label values jm01a_qualtrai jm01a_qualtrai_lbl

label define jm01a_pasttrai_lbl 1 `"Yes"'
label define jm01a_pasttrai_lbl 2 `"No"', add
label define jm01a_pasttrai_lbl 8 `"Unknown"', add
label define jm01a_pasttrai_lbl 9 `"NIU (not in universe)"', add
label values jm01a_pasttrai jm01a_pasttrai_lbl

label define jm01a_occpt2_lbl 01 `"Armed forces"'
label define jm01a_occpt2_lbl 11 `"Legislators and senior officials"', add
label define jm01a_occpt2_lbl 12 `"Corporate managers"', add
label define jm01a_occpt2_lbl 13 `"General managers"', add
label define jm01a_occpt2_lbl 21 `"Physical, mathematical and engineering science professionals"', add
label define jm01a_occpt2_lbl 22 `"Life science and health professionals"', add
label define jm01a_occpt2_lbl 23 `"Teaching professionals"', add
label define jm01a_occpt2_lbl 24 `"Other professionals"', add
label define jm01a_occpt2_lbl 31 `"Physical and engineering science associate professionals"', add
label define jm01a_occpt2_lbl 32 `"Life science and health associate professionals"', add
label define jm01a_occpt2_lbl 33 `"Teaching associate professionals"', add
label define jm01a_occpt2_lbl 34 `"Other associate professionals"', add
label define jm01a_occpt2_lbl 41 `"Office clerks"', add
label define jm01a_occpt2_lbl 42 `"Customer services clerks"', add
label define jm01a_occpt2_lbl 51 `"Personal and protective services workers"', add
label define jm01a_occpt2_lbl 52 `"Models, salespersons and demonstrators"', add
label define jm01a_occpt2_lbl 61 `"Market-oriented skilled agricultural and fishery workers"', add
label define jm01a_occpt2_lbl 71 `"Extraction and building trades workers"', add
label define jm01a_occpt2_lbl 72 `"Metal, machinery and related trades workers"', add
label define jm01a_occpt2_lbl 73 `"Precision, handicraft, printing and related trades workers"', add
label define jm01a_occpt2_lbl 74 `"Other craft and related trades workers"', add
label define jm01a_occpt2_lbl 81 `"Stationary-plant and related operators"', add
label define jm01a_occpt2_lbl 82 `"Machine operators and assemblers"', add
label define jm01a_occpt2_lbl 83 `"Drivers and mobile-plant operators"', add
label define jm01a_occpt2_lbl 91 `"Sales and services elementary occupations"', add
label define jm01a_occpt2_lbl 92 `"Agricultural, fishery and related labourers"', add
label define jm01a_occpt2_lbl 93 `"Labourers in mining, construction, manufacturing and transport"', add
label define jm01a_occpt2_lbl 98 `"Unknown"', add
label define jm01a_occpt2_lbl 99 `"NIU (not in universe)"', add
label values jm01a_occpt2 jm01a_occpt2_lbl

label define jm01a_occpt1_lbl 00 `"Armed forces"'
label define jm01a_occpt1_lbl 01 `"Legislators, senior officials and managers"', add
label define jm01a_occpt1_lbl 02 `"Professionals"', add
label define jm01a_occpt1_lbl 03 `"Technicians and associate professionals"', add
label define jm01a_occpt1_lbl 04 `"Clerks"', add
label define jm01a_occpt1_lbl 05 `"Service workers and shop and market sales workers"', add
label define jm01a_occpt1_lbl 06 `"Skilled agricultural and fishery workers"', add
label define jm01a_occpt1_lbl 07 `"Craft and related trades workers"', add
label define jm01a_occpt1_lbl 08 `"Plant and machine operators and assemblers"', add
label define jm01a_occpt1_lbl 09 `"Elementary occupations"', add
label define jm01a_occpt1_lbl 98 `"Unknown"', add
label define jm01a_occpt1_lbl 99 `"NIU (not in universe)"', add
label values jm01a_occpt1 jm01a_occpt1_lbl

label define jm01a_methptra_lbl 01 `"Vocational Training Centre / Academy"'
label define jm01a_methptra_lbl 02 `"VTDI (Vocational Training Development Institute)"', add
label define jm01a_methptra_lbl 03 `"Other HEART program"', add
label define jm01a_methptra_lbl 04 `"UWI (University of West Indies)"', add
label define jm01a_methptra_lbl 05 `"West Indies college/NCU"', add
label define jm01a_methptra_lbl 06 `"Community college"', add
label define jm01a_methptra_lbl 07 `"Teacher's college, CASE"', add
label define jm01a_methptra_lbl 08 `"Other tertiary"', add
label define jm01a_methptra_lbl 09 `"Technical school"', add
label define jm01a_methptra_lbl 10 `"Secretarial/commercial college"', add
label define jm01a_methptra_lbl 11 `"Police Training School/Jamaica Police Academy"', add
label define jm01a_methptra_lbl 12 `"CAST/UTECH"', add
label define jm01a_methptra_lbl 13 `"Nursing school"', add
label define jm01a_methptra_lbl 14 `"Apprenticeship"', add
label define jm01a_methptra_lbl 15 `"On the job training"', add
label define jm01a_methptra_lbl 16 `"Other"', add
label define jm01a_methptra_lbl 98 `"Unknown"', add
label define jm01a_methptra_lbl 99 `"NIU (not in universe)"', add
label values jm01a_methptra jm01a_methptra_lbl

label define jm01a_qualptra_lbl 0 `"None"'
label define jm01a_qualptra_lbl 1 `"Certificate"', add
label define jm01a_qualptra_lbl 2 `"Associate degree"', add
label define jm01a_qualptra_lbl 3 `"Diploma"', add
label define jm01a_qualptra_lbl 4 `"Undergraduate degree"', add
label define jm01a_qualptra_lbl 5 `"Professional qualification"', add
label define jm01a_qualptra_lbl 6 `"Graduate degree"', add
label define jm01a_qualptra_lbl 7 `"Other"', add
label define jm01a_qualptra_lbl 8 `"Unknown"', add
label define jm01a_qualptra_lbl 9 `"NIU (not in universe)"', add
label values jm01a_qualptra jm01a_qualptra_lbl

label define jm01a_worktrai_lbl 1 `"Yes"'
label define jm01a_worktrai_lbl 2 `"No"', add
label define jm01a_worktrai_lbl 8 `"Unknown"', add
label define jm01a_worktrai_lbl 9 `"NIU (not in universe)"', add
label values jm01a_worktrai jm01a_worktrai_lbl

label define jm01a_work1hr_lbl 1 `"Yes"'
label define jm01a_work1hr_lbl 2 `"No"', add
label define jm01a_work1hr_lbl 8 `"Unknown"', add
label define jm01a_work1hr_lbl 9 `"NIU (not in universe)"', add
label values jm01a_work1hr jm01a_work1hr_lbl

label define jm01a_farming_lbl 1 `"Yes"'
label define jm01a_farming_lbl 2 `"No"', add
label define jm01a_farming_lbl 8 `"Unknown"', add
label define jm01a_farming_lbl 9 `"NIU (not in universe)"', add
label values jm01a_farming jm01a_farming_lbl

label define jm01a_oddjob_lbl 1 `"Yes"'
label define jm01a_oddjob_lbl 2 `"No"', add
label define jm01a_oddjob_lbl 8 `"Unknown"', add
label define jm01a_oddjob_lbl 9 `"NIU (not in universe)"', add
label values jm01a_oddjob jm01a_oddjob_lbl

label define jm01a_activity_lbl 01 `"Working without pay"'
label define jm01a_activity_lbl 02 `"With job but not working"', add
label define jm01a_activity_lbl 03 `"Seeking first job"', add
label define jm01a_activity_lbl 04 `"Seeking a job which was not the first"', add
label define jm01a_activity_lbl 05 `"Did not seek work but wanted work and was available"', add
label define jm01a_activity_lbl 06 `"Student"', add
label define jm01a_activity_lbl 07 `"Home duties"', add
label define jm01a_activity_lbl 08 `"Retired"', add
label define jm01a_activity_lbl 09 `"Disabled"', add
label define jm01a_activity_lbl 10 `"Not interested in work"', add
label define jm01a_activity_lbl 11 `"Other"', add
label define jm01a_activity_lbl 98 `"Unknown"', add
label define jm01a_activity_lbl 99 `"NIU (not in universe)"', add
label values jm01a_activity jm01a_activity_lbl

label define jm01a_hrswork_lbl 000 `"0"'
label define jm01a_hrswork_lbl 001 `"1"', add
label define jm01a_hrswork_lbl 002 `"2"', add
label define jm01a_hrswork_lbl 003 `"3"', add
label define jm01a_hrswork_lbl 004 `"4"', add
label define jm01a_hrswork_lbl 005 `"5"', add
label define jm01a_hrswork_lbl 006 `"6"', add
label define jm01a_hrswork_lbl 007 `"7"', add
label define jm01a_hrswork_lbl 008 `"8"', add
label define jm01a_hrswork_lbl 009 `"9"', add
label define jm01a_hrswork_lbl 010 `"10"', add
label define jm01a_hrswork_lbl 011 `"11"', add
label define jm01a_hrswork_lbl 012 `"12"', add
label define jm01a_hrswork_lbl 013 `"13"', add
label define jm01a_hrswork_lbl 014 `"14"', add
label define jm01a_hrswork_lbl 015 `"15"', add
label define jm01a_hrswork_lbl 016 `"16"', add
label define jm01a_hrswork_lbl 017 `"17"', add
label define jm01a_hrswork_lbl 018 `"18"', add
label define jm01a_hrswork_lbl 019 `"19"', add
label define jm01a_hrswork_lbl 020 `"20"', add
label define jm01a_hrswork_lbl 021 `"21"', add
label define jm01a_hrswork_lbl 022 `"22"', add
label define jm01a_hrswork_lbl 023 `"23"', add
label define jm01a_hrswork_lbl 024 `"24"', add
label define jm01a_hrswork_lbl 025 `"25"', add
label define jm01a_hrswork_lbl 026 `"26"', add
label define jm01a_hrswork_lbl 027 `"27"', add
label define jm01a_hrswork_lbl 028 `"28"', add
label define jm01a_hrswork_lbl 029 `"29"', add
label define jm01a_hrswork_lbl 030 `"30"', add
label define jm01a_hrswork_lbl 031 `"31"', add
label define jm01a_hrswork_lbl 032 `"32"', add
label define jm01a_hrswork_lbl 033 `"33"', add
label define jm01a_hrswork_lbl 034 `"34"', add
label define jm01a_hrswork_lbl 035 `"35"', add
label define jm01a_hrswork_lbl 036 `"36"', add
label define jm01a_hrswork_lbl 037 `"37"', add
label define jm01a_hrswork_lbl 038 `"38"', add
label define jm01a_hrswork_lbl 039 `"39"', add
label define jm01a_hrswork_lbl 040 `"40"', add
label define jm01a_hrswork_lbl 041 `"41"', add
label define jm01a_hrswork_lbl 042 `"42"', add
label define jm01a_hrswork_lbl 043 `"43"', add
label define jm01a_hrswork_lbl 044 `"44"', add
label define jm01a_hrswork_lbl 045 `"45"', add
label define jm01a_hrswork_lbl 046 `"46"', add
label define jm01a_hrswork_lbl 047 `"47"', add
label define jm01a_hrswork_lbl 048 `"48"', add
label define jm01a_hrswork_lbl 049 `"49"', add
label define jm01a_hrswork_lbl 050 `"50"', add
label define jm01a_hrswork_lbl 051 `"51"', add
label define jm01a_hrswork_lbl 052 `"52"', add
label define jm01a_hrswork_lbl 053 `"53"', add
label define jm01a_hrswork_lbl 054 `"54"', add
label define jm01a_hrswork_lbl 055 `"55"', add
label define jm01a_hrswork_lbl 056 `"56"', add
label define jm01a_hrswork_lbl 057 `"57"', add
label define jm01a_hrswork_lbl 058 `"58"', add
label define jm01a_hrswork_lbl 059 `"59"', add
label define jm01a_hrswork_lbl 060 `"60"', add
label define jm01a_hrswork_lbl 061 `"61"', add
label define jm01a_hrswork_lbl 062 `"62"', add
label define jm01a_hrswork_lbl 063 `"63"', add
label define jm01a_hrswork_lbl 064 `"64"', add
label define jm01a_hrswork_lbl 065 `"65"', add
label define jm01a_hrswork_lbl 066 `"66"', add
label define jm01a_hrswork_lbl 067 `"67"', add
label define jm01a_hrswork_lbl 068 `"68"', add
label define jm01a_hrswork_lbl 069 `"69"', add
label define jm01a_hrswork_lbl 070 `"70"', add
label define jm01a_hrswork_lbl 072 `"72"', add
label define jm01a_hrswork_lbl 073 `"73"', add
label define jm01a_hrswork_lbl 074 `"74"', add
label define jm01a_hrswork_lbl 075 `"75"', add
label define jm01a_hrswork_lbl 076 `"76"', add
label define jm01a_hrswork_lbl 077 `"77"', add
label define jm01a_hrswork_lbl 078 `"78"', add
label define jm01a_hrswork_lbl 079 `"79"', add
label define jm01a_hrswork_lbl 080 `"80"', add
label define jm01a_hrswork_lbl 081 `"81"', add
label define jm01a_hrswork_lbl 082 `"82"', add
label define jm01a_hrswork_lbl 083 `"83"', add
label define jm01a_hrswork_lbl 084 `"84"', add
label define jm01a_hrswork_lbl 085 `"85"', add
label define jm01a_hrswork_lbl 086 `"86"', add
label define jm01a_hrswork_lbl 087 `"87"', add
label define jm01a_hrswork_lbl 088 `"88"', add
label define jm01a_hrswork_lbl 089 `"89"', add
label define jm01a_hrswork_lbl 090 `"90"', add
label define jm01a_hrswork_lbl 091 `"91"', add
label define jm01a_hrswork_lbl 092 `"92"', add
label define jm01a_hrswork_lbl 093 `"93"', add
label define jm01a_hrswork_lbl 094 `"94"', add
label define jm01a_hrswork_lbl 095 `"95"', add
label define jm01a_hrswork_lbl 096 `"96"', add
label define jm01a_hrswork_lbl 097 `"97"', add
label define jm01a_hrswork_lbl 098 `"98"', add
label define jm01a_hrswork_lbl 998 `"Unknown"', add
label define jm01a_hrswork_lbl 999 `"NIU (not in universe)"', add
label values jm01a_hrswork jm01a_hrswork_lbl

label define jm01a_classwk_lbl 1 `"Paid government employee"'
label define jm01a_classwk_lbl 2 `"Paid employee in private enterprise"', add
label define jm01a_classwk_lbl 3 `"Paid employee in private home"', add
label define jm01a_classwk_lbl 4 `"Unpaid employee"', add
label define jm01a_classwk_lbl 5 `"Self-employed with employees"', add
label define jm01a_classwk_lbl 6 `"Self-employed without employees"', add
label define jm01a_classwk_lbl 7 `"Other"', add
label define jm01a_classwk_lbl 8 `"Unknown"', add
label define jm01a_classwk_lbl 9 `"NIU (not in universe)"', add
label values jm01a_classwk jm01a_classwk_lbl

label define jm01a_occ2_lbl 01 `"Armed forces"'
label define jm01a_occ2_lbl 11 `"Legislators and senior officials"', add
label define jm01a_occ2_lbl 12 `"Corporate managers"', add
label define jm01a_occ2_lbl 13 `"General managers"', add
label define jm01a_occ2_lbl 21 `"Physical, mathematical and engineering science professionals"', add
label define jm01a_occ2_lbl 22 `"Life science and health professionals"', add
label define jm01a_occ2_lbl 23 `"Teaching professionals"', add
label define jm01a_occ2_lbl 24 `"Other professionals"', add
label define jm01a_occ2_lbl 31 `"Physical and engineering science associate professionals"', add
label define jm01a_occ2_lbl 32 `"Life science and health associate professionals"', add
label define jm01a_occ2_lbl 33 `"Teaching associate professionals"', add
label define jm01a_occ2_lbl 34 `"Other associate professionals"', add
label define jm01a_occ2_lbl 41 `"Office clerks"', add
label define jm01a_occ2_lbl 42 `"Customer services clerks"', add
label define jm01a_occ2_lbl 51 `"Personal and protective services workers"', add
label define jm01a_occ2_lbl 52 `"Models, salespersons and demonstrators"', add
label define jm01a_occ2_lbl 61 `"Market-oriented skilled agricultural and fishery workers"', add
label define jm01a_occ2_lbl 62 `"Subsistence agricultural and fishery workers"', add
label define jm01a_occ2_lbl 71 `"Extraction and building trades workers"', add
label define jm01a_occ2_lbl 72 `"Metal, machinery and related trades workers"', add
label define jm01a_occ2_lbl 73 `"Precision, handicraft, printing and related trades workers"', add
label define jm01a_occ2_lbl 74 `"Other craft and related trades workers"', add
label define jm01a_occ2_lbl 81 `"Stationary-plant and related operators"', add
label define jm01a_occ2_lbl 82 `"Machine operators and assemblers"', add
label define jm01a_occ2_lbl 83 `"Drivers and mobile-plant operators"', add
label define jm01a_occ2_lbl 91 `"Sales and services elementary occupations"', add
label define jm01a_occ2_lbl 92 `"Agricultural, fishery and related labourers"', add
label define jm01a_occ2_lbl 93 `"Labourers in mining, construction, manufacturing and transport"', add
label define jm01a_occ2_lbl 95 `"Other occupation, not specified"', add
label define jm01a_occ2_lbl 98 `"Unknown"', add
label define jm01a_occ2_lbl 99 `"NIU (not in universe)"', add
label values jm01a_occ2 jm01a_occ2_lbl

label define jm01a_occ1_lbl 00 `"Armed forces"'
label define jm01a_occ1_lbl 01 `"Legislators, senior officials and managers"', add
label define jm01a_occ1_lbl 02 `"Professionals"', add
label define jm01a_occ1_lbl 03 `"Technicians and associate professionals"', add
label define jm01a_occ1_lbl 04 `"Clerks"', add
label define jm01a_occ1_lbl 05 `"Service workers and shop and market sales workers"', add
label define jm01a_occ1_lbl 06 `"Skilled agricultural and fishery workers"', add
label define jm01a_occ1_lbl 07 `"Craft and related trades workers"', add
label define jm01a_occ1_lbl 08 `"Plant and machine operators and assemblers"', add
label define jm01a_occ1_lbl 09 `"Elementary occupations"', add
label define jm01a_occ1_lbl 98 `"Unknown"', add
label define jm01a_occ1_lbl 99 `"NIU (not in universe)"', add
label values jm01a_occ1 jm01a_occ1_lbl

label define jm01a_ind3_lbl 011 `"Growing of temporary and permanent crops, market gardening, horticulture"'
label define jm01a_ind3_lbl 012 `"Livestock production, hunting and trapping"', add
label define jm01a_ind3_lbl 013 `"Growing of agricultural crops and rearing of livestock"', add
label define jm01a_ind3_lbl 014 `"Agricultural, animal husbandry and horticultural services"', add
label define jm01a_ind3_lbl 021 `"Forestry and logging (including forestry services)"', add
label define jm01a_ind3_lbl 031 `"Fishing, fish hatcheries and services to fishing"', add
label define jm01a_ind3_lbl 162 `"Mining of non-ferrous metal ores"', add
label define jm01a_ind3_lbl 171 `"Quarrying of stones, sand, clay and gravel"', add
label define jm01a_ind3_lbl 172 `"Other mining and quarrying"', add
label define jm01a_ind3_lbl 211 `"Production, processing and preservation of meat, fish, fruits, vegetable oils and fats"', add
label define jm01a_ind3_lbl 212 `"Manufacture of dairy products"', add
label define jm01a_ind3_lbl 213 `"Manufacture of grain mill products, starches, and starch products"', add
label define jm01a_ind3_lbl 214 `"Manufacture of other food products"', add
label define jm01a_ind3_lbl 215 `"Manufacture of beverages"', add
label define jm01a_ind3_lbl 216 `"Manufacture of tobacco products"', add
label define jm01a_ind3_lbl 222 `"Manufacture of other textiles"', add
label define jm01a_ind3_lbl 223 `"Manufacture of wearing apparel and crocheted  goods"', add
label define jm01a_ind3_lbl 225 `"Manufacture of footwear"', add
label define jm01a_ind3_lbl 231 `"Manufacture of wood and products of wood and cork except furniture"', add
label define jm01a_ind3_lbl 232 `"Manufacture of furniture"', add
label define jm01a_ind3_lbl 241 `"Manufacture of paper and paper products"', add
label define jm01a_ind3_lbl 242 `"Printing , publishing and services to printing"', add
label define jm01a_ind3_lbl 251 `"Manufacture of basic chemicals"', add
label define jm01a_ind3_lbl 253 `"Manufacture of other chemical products"', add
label define jm01a_ind3_lbl 261 `"Manufacture of refined petroleum products"', add
label define jm01a_ind3_lbl 272 `"Manufacture of plastic products"', add
label define jm01a_ind3_lbl 289 `"Manufacture of non-metallic mineral products not elsewhere classified"', add
label define jm01a_ind3_lbl 290 `"Manufacturing (excluding metal products, machinery and equipment) not elsewhere classified"', add
label define jm01a_ind3_lbl 316 `"Manufacture of basic non ferrous base metals"', add
label define jm01a_ind3_lbl 325 `"Manufacture of structural metal products, tanks, reservoirs and steam generators"', add
label define jm01a_ind3_lbl 329 `"Manufacture of other fabricated metal products, services to producers of fabricated metal products"', add
label define jm01a_ind3_lbl 336 `"Manufacture of domestic appliances and electrical machinery and apparatus"', add
label define jm01a_ind3_lbl 399 `"Other manufacturing"', add
label define jm01a_ind3_lbl 411 `"Production and distribution of electricity"', add
label define jm01a_ind3_lbl 420 `"Collection, purification and distributionof water"', add
label define jm01a_ind3_lbl 511 `"Construction, repairs and alterations of residential building"', add
label define jm01a_ind3_lbl 512 `"Construction, repairs and alterations of non-residential buildings"', add
label define jm01a_ind3_lbl 513 `"Construction, repairs and alterations of buildings (general)"', add
label define jm01a_ind3_lbl 521 `"Construction of roads, bridges and ports"', add
label define jm01a_ind3_lbl 523 `"Construction, installation and maintenance of irrigation systems and reservoirs"', add
label define jm01a_ind3_lbl 531 `"Electrical installation"', add
label define jm01a_ind3_lbl 532 `"Electrical repair and maintenance"', add
label define jm01a_ind3_lbl 533 `"Electrical engineering"', add
label define jm01a_ind3_lbl 543 `"Concrete mixing and preparation (except ready mix)"', add
label define jm01a_ind3_lbl 545 `"Printing, decorating and landscaping"', add
label define jm01a_ind3_lbl 551 `"Plumbing activities"', add
label define jm01a_ind3_lbl 553 `"Joinery and installation activities"', add
label define jm01a_ind3_lbl 599 `"Other construction and allied activities"', add
label define jm01a_ind3_lbl 610 `"Wholesalers of food, beverages and tobacco"', add
label define jm01a_ind3_lbl 611 `"Wholesalers of minerals fuels, lubricants and related products"', add
label define jm01a_ind3_lbl 612 `"Wholesalers of lumber and building materials"', add
label define jm01a_ind3_lbl 613 `"Wholesalers of industrial and agricultural machinery and equipment and motor vehicles"', add
label define jm01a_ind3_lbl 614 `"Wholesale trade in general hardware, electrical and electronic goods and equipment"', add
label define jm01a_ind3_lbl 615 `"Wholesale trade in chemicals, drugs, pramaceuticals and cosmetics"', add
label define jm01a_ind3_lbl 616 `"Wholesalers of textiles, wearing apparel, footwear and other personal effects"', add
label define jm01a_ind3_lbl 619 `"Wholesale merchants and distributors not elsewhere classified"', add
label define jm01a_ind3_lbl 621 `"Retailers of food, beverages and tobacco"', add
label define jm01a_ind3_lbl 622 `"Retailers of household furnishings, household equipment and jewellery"', add
label define jm01a_ind3_lbl 623 `"Retailers of textiles, clothing and footwear"', add
label define jm01a_ind3_lbl 624 `"Retailers of chemicals, pharmaceuticals, drugs and cosmetics"', add
label define jm01a_ind3_lbl 625 `"Retailers of electronics, musical and photographic equipment (including parts and accessories)"', add
label define jm01a_ind3_lbl 626 `"Retailers of industrial, commerical and agricultural machinery and transport and equipment (including parts and accessories)"', add
label define jm01a_ind3_lbl 627 `"Retailers of petroleum products"', add
label define jm01a_ind3_lbl 628 `"Retailers of hardware building materials and electrical goods"', add
label define jm01a_ind3_lbl 629 `"Other retailers not elsewhere classified"', add
label define jm01a_ind3_lbl 631 `"Restaurants, cafeterias and other eating and drinking places"', add
label define jm01a_ind3_lbl 632 `"Hotels, rooming houses, camps and other lodging places"', add
label define jm01a_ind3_lbl 711 `"Land transport"', add
label define jm01a_ind3_lbl 712 `"Water transport"', add
label define jm01a_ind3_lbl 713 `"Air transport"', add
label define jm01a_ind3_lbl 719 `"Services allied to transport"', add
label define jm01a_ind3_lbl 720 `"Communication"', add
label define jm01a_ind3_lbl 811 `"Banking institutions"', add
label define jm01a_ind3_lbl 812 `"Other financial institutions and financial intermedaries"', add
label define jm01a_ind3_lbl 813 `"Financial services"', add
label define jm01a_ind3_lbl 821 `"Insurance"', add
label define jm01a_ind3_lbl 831 `"Real estate activities"', add
label define jm01a_ind3_lbl 832 `"Business services (except machinery and equipment, rental and leasing)"', add
label define jm01a_ind3_lbl 911 `"Public administration"', add
label define jm01a_ind3_lbl 912 `"Public security"', add
label define jm01a_ind3_lbl 921 `"Sanitary and similar services"', add
label define jm01a_ind3_lbl 931 `"Education services (government and private educational institutions of all types)"', add
label define jm01a_ind3_lbl 932 `"Research and scientific institutions"', add
label define jm01a_ind3_lbl 933 `"Medical, dental and other health services"', add
label define jm01a_ind3_lbl 934 `"Welfare institutions"', add
label define jm01a_ind3_lbl 935 `"Business, professional and labor organizations"', add
label define jm01a_ind3_lbl 939 `"Other social and related community services"', add
label define jm01a_ind3_lbl 941 `"Motion picture and other entertainment services"', add
label define jm01a_ind3_lbl 942 `"Libraries, museums, botanical gardens, etc. and other cultural services"', add
label define jm01a_ind3_lbl 943 `"Tourism-oriented services"', add
label define jm01a_ind3_lbl 949 `"Amusement and recreational services"', add
label define jm01a_ind3_lbl 952 `"Laundry, laundry services and dry cleaning establishments"', add
label define jm01a_ind3_lbl 953 `"Domestic services"', add
label define jm01a_ind3_lbl 954 `"Motor vehicle repair services"', add
label define jm01a_ind3_lbl 955 `"Other repair services"', add
label define jm01a_ind3_lbl 956 `"Miscellaneous personal services"', add
label define jm01a_ind3_lbl 961 `"International and other extra-territorial bodies"', add
label define jm01a_ind3_lbl 990 `"Other industry, response suppressed"', add
label define jm01a_ind3_lbl 998 `"Unknown"', add
label define jm01a_ind3_lbl 999 `"NIU (not in universe)"', add
label values jm01a_ind3 jm01a_ind3_lbl

label define jm01a_ind2_lbl 01 `"Agriculture (including hunting) and agricultural services"'
label define jm01a_ind2_lbl 02 `"Forestry, logging (including forestry services)"', add
label define jm01a_ind2_lbl 03 `"Fishing, fish hatcheries and services to fishing"', add
label define jm01a_ind2_lbl 16 `"Mining of metal ores"', add
label define jm01a_ind2_lbl 17 `"Other mining and quarrying"', add
label define jm01a_ind2_lbl 21 `"Manufacturing excluding metal products, machinery and equipment"', add
label define jm01a_ind2_lbl 22 `"Manufacture of textile wearing apparel and leather products"', add
label define jm01a_ind2_lbl 23 `"Manufacture of wood, wood products and furniture"', add
label define jm01a_ind2_lbl 24 `"Manufacture of paper and paper products; printing and publishing"', add
label define jm01a_ind2_lbl 25 `"Manufacture of chemicals and chemical products"', add
label define jm01a_ind2_lbl 26 `"Manufacture of petroleum products"', add
label define jm01a_ind2_lbl 27 `"Manufacture of rubber and plastic products (except rubber and plastic shoes)"', add
label define jm01a_ind2_lbl 28 `"Manufacture of other non-metallic mineral products"', add
label define jm01a_ind2_lbl 29 `"Manufacturing (excluding metal products, machinery and equipment) not elsewhere classified"', add
label define jm01a_ind2_lbl 31 `"Basic metal industries"', add
label define jm01a_ind2_lbl 32 `"Manufacture of fabricated metal products, except machinery and equipment"', add
label define jm01a_ind2_lbl 33 `"Manufacture of machinery and equipment, except transport equipment"', add
label define jm01a_ind2_lbl 41 `"Electricity, gas and steam"', add
label define jm01a_ind2_lbl 42 `"Collection, purification and distribution of water"', add
label define jm01a_ind2_lbl 51 `"Building construction"', add
label define jm01a_ind2_lbl 52 `"Civil and structural engineering construction"', add
label define jm01a_ind2_lbl 53 `"Electrical engineering"', add
label define jm01a_ind2_lbl 54 `"Other construction activities not elsewhere classified"', add
label define jm01a_ind2_lbl 55 `"Activities allied to construction"', add
label define jm01a_ind2_lbl 61 `"Wholesale trade"', add
label define jm01a_ind2_lbl 62 `"Retailers"', add
label define jm01a_ind2_lbl 63 `"Restaurants and hotels"', add
label define jm01a_ind2_lbl 71 `"Transport and storage"', add
label define jm01a_ind2_lbl 72 `"Communication"', add
label define jm01a_ind2_lbl 81 `"Financial institutions"', add
label define jm01a_ind2_lbl 82 `"Insurance"', add
label define jm01a_ind2_lbl 83 `"Real estate and business services"', add
label define jm01a_ind2_lbl 91 `"Public administration and defense"', add
label define jm01a_ind2_lbl 92 `"Sanitary and similar services"', add
label define jm01a_ind2_lbl 93 `"Social and related community services"', add
label define jm01a_ind2_lbl 94 `"Recreation and cultural services"', add
label define jm01a_ind2_lbl 95 `"Personal and household services"', add
label define jm01a_ind2_lbl 96 `"International and other extra-territorial bodies"', add
label define jm01a_ind2_lbl 97 `"Other industry, response suppressed"', add
label define jm01a_ind2_lbl 98 `"Unknown"', add
label define jm01a_ind2_lbl 99 `"NIU (not in universe)"', add
label values jm01a_ind2 jm01a_ind2_lbl

label define jm01a_ind1_lbl 00 `"Agriculture (including hunting, forestry and fishing)"'
label define jm01a_ind1_lbl 01 `"Mining"', add
label define jm01a_ind1_lbl 02 `"Manufacturing excluding metal products, machinery and equipment"', add
label define jm01a_ind1_lbl 03 `"Manufacture of metal products, machinery and equipment"', add
label define jm01a_ind1_lbl 04 `"Electricity, gas and water"', add
label define jm01a_ind1_lbl 05 `"Construction"', add
label define jm01a_ind1_lbl 06 `"Wholesale and retail trade, hotels and restaurants"', add
label define jm01a_ind1_lbl 07 `"Transport, storage and communication"', add
label define jm01a_ind1_lbl 08 `"Financing, insurance, real estate and business services"', add
label define jm01a_ind1_lbl 09 `"Community, social and personal services"', add
label define jm01a_ind1_lbl 98 `"Unknown"', add
label define jm01a_ind1_lbl 99 `"NIU (not in universe)"', add
label values jm01a_ind1 jm01a_ind1_lbl

label define jm01a_workloc_lbl 1 `"In own home or yard"'
label define jm01a_workloc_lbl 2 `"In another home or yard"', add
label define jm01a_workloc_lbl 3 `"Not in private home"', add
label define jm01a_workloc_lbl 4 `"On a farm"', add
label define jm01a_workloc_lbl 8 `"Unknown"', add
label define jm01a_workloc_lbl 9 `"NIU (not in universe)"', add
label values jm01a_workloc jm01a_workloc_lbl

label define jm01a_workpar_lbl 01 `"Kingston"'
label define jm01a_workpar_lbl 02 `"St. Andrew"', add
label define jm01a_workpar_lbl 03 `"St. Thomas"', add
label define jm01a_workpar_lbl 04 `"Portland"', add
label define jm01a_workpar_lbl 05 `"St. Mary"', add
label define jm01a_workpar_lbl 06 `"St. Ann"', add
label define jm01a_workpar_lbl 07 `"Trelawny"', add
label define jm01a_workpar_lbl 08 `"St. James"', add
label define jm01a_workpar_lbl 09 `"Hanover"', add
label define jm01a_workpar_lbl 10 `"Westmoreland"', add
label define jm01a_workpar_lbl 11 `"St. Elizabeth"', add
label define jm01a_workpar_lbl 12 `"Manchester"', add
label define jm01a_workpar_lbl 13 `"Clarendon"', add
label define jm01a_workpar_lbl 14 `"St. Catherine"', add
label define jm01a_workpar_lbl 15 `"More than one parish"', add
label define jm01a_workpar_lbl 98 `"Unknown"', add
label define jm01a_workpar_lbl 99 `"NIU (not in universe)"', add
label values jm01a_workpar jm01a_workpar_lbl

label define jm01a_empsize_lbl 1 `"1 person"'
label define jm01a_empsize_lbl 2 `"2-4 persons"', add
label define jm01a_empsize_lbl 3 `"5-9 persons"', add
label define jm01a_empsize_lbl 4 `"10-19 person"', add
label define jm01a_empsize_lbl 5 `"20 + persons"', add
label define jm01a_empsize_lbl 8 `"Unknown"', add
label define jm01a_empsize_lbl 9 `"NIU (not in universe)"', add
label values jm01a_empsize jm01a_empsize_lbl

label define jm01a_incwork_lbl 01 `"Less than 1,000 per week"'
label define jm01a_incwork_lbl 02 `"1,000-1,499 per week"', add
label define jm01a_incwork_lbl 03 `"1,500-5,999 per week"', add
label define jm01a_incwork_lbl 04 `"6,000-9,999 per week"', add
label define jm01a_incwork_lbl 05 `"10,000-9,999 per week"', add
label define jm01a_incwork_lbl 06 `"20,000-29,999 per week"', add
label define jm01a_incwork_lbl 07 `"30,000-59,999 per week"', add
label define jm01a_incwork_lbl 08 `"60,000 and over per week"', add
label define jm01a_incwork_lbl 09 `"Less than 3,500 per month"', add
label define jm01a_incwork_lbl 10 `"3,500-5,999 per month"', add
label define jm01a_incwork_lbl 11 `"6,000-24,999 per month"', add
label define jm01a_incwork_lbl 12 `"25,000-39,000 per month"', add
label define jm01a_incwork_lbl 13 `"40,000-79,999 per month"', add
label define jm01a_incwork_lbl 14 `"80,000-129,999 per month"', add
label define jm01a_incwork_lbl 15 `"130,000-249,999 per month"', add
label define jm01a_incwork_lbl 16 `"250,000 and over per month"', add
label define jm01a_incwork_lbl 17 `"Less than 40,000 annually"', add
label define jm01a_incwork_lbl 18 `"40,000-70,999 annually"', add
label define jm01a_incwork_lbl 19 `"80,000-299,999 annually"', add
label define jm01a_incwork_lbl 20 `"300,000-499,999 annually"', add
label define jm01a_incwork_lbl 21 `"500,000-999,999 annually"', add
label define jm01a_incwork_lbl 22 `"1,000,000-1,499,999 annually"', add
label define jm01a_incwork_lbl 23 `"1.5 million-2,999,999 annually"', add
label define jm01a_incwork_lbl 24 `"3 million and over annually"', add
label define jm01a_incwork_lbl 98 `"Unknown"', add
label define jm01a_incwork_lbl 99 `"NIU (not in universe)"', add
label values jm01a_incwork jm01a_incwork_lbl

label define jm01a_yrlastwk_lbl 1960 `"1960 or earlier"'
label define jm01a_yrlastwk_lbl 1961 `"1961"', add
label define jm01a_yrlastwk_lbl 1962 `"1962"', add
label define jm01a_yrlastwk_lbl 1963 `"1963"', add
label define jm01a_yrlastwk_lbl 1964 `"1964"', add
label define jm01a_yrlastwk_lbl 1965 `"1965"', add
label define jm01a_yrlastwk_lbl 1966 `"1966"', add
label define jm01a_yrlastwk_lbl 1967 `"1967"', add
label define jm01a_yrlastwk_lbl 1968 `"1968"', add
label define jm01a_yrlastwk_lbl 1969 `"1969"', add
label define jm01a_yrlastwk_lbl 1970 `"1970"', add
label define jm01a_yrlastwk_lbl 1971 `"1971"', add
label define jm01a_yrlastwk_lbl 1972 `"1972"', add
label define jm01a_yrlastwk_lbl 1973 `"1973"', add
label define jm01a_yrlastwk_lbl 1974 `"1974"', add
label define jm01a_yrlastwk_lbl 1975 `"1975"', add
label define jm01a_yrlastwk_lbl 1976 `"1976"', add
label define jm01a_yrlastwk_lbl 1977 `"1977"', add
label define jm01a_yrlastwk_lbl 1978 `"1978"', add
label define jm01a_yrlastwk_lbl 1979 `"1979"', add
label define jm01a_yrlastwk_lbl 1980 `"1980"', add
label define jm01a_yrlastwk_lbl 1981 `"1981"', add
label define jm01a_yrlastwk_lbl 1982 `"1982"', add
label define jm01a_yrlastwk_lbl 1983 `"1983"', add
label define jm01a_yrlastwk_lbl 1984 `"1984"', add
label define jm01a_yrlastwk_lbl 1985 `"1985"', add
label define jm01a_yrlastwk_lbl 1986 `"1986"', add
label define jm01a_yrlastwk_lbl 1987 `"1987"', add
label define jm01a_yrlastwk_lbl 1988 `"1988"', add
label define jm01a_yrlastwk_lbl 1989 `"1989"', add
label define jm01a_yrlastwk_lbl 1990 `"1990"', add
label define jm01a_yrlastwk_lbl 1991 `"1991"', add
label define jm01a_yrlastwk_lbl 1992 `"1992"', add
label define jm01a_yrlastwk_lbl 1993 `"1993"', add
label define jm01a_yrlastwk_lbl 1994 `"1994"', add
label define jm01a_yrlastwk_lbl 1995 `"1995"', add
label define jm01a_yrlastwk_lbl 1996 `"1996"', add
label define jm01a_yrlastwk_lbl 1997 `"1997"', add
label define jm01a_yrlastwk_lbl 1998 `"1998"', add
label define jm01a_yrlastwk_lbl 1999 `"1999"', add
label define jm01a_yrlastwk_lbl 2000 `"2000"', add
label define jm01a_yrlastwk_lbl 2001 `"2001"', add
label define jm01a_yrlastwk_lbl 9997 `"Never worked"', add
label define jm01a_yrlastwk_lbl 9998 `"Unknown"', add
label define jm01a_yrlastwk_lbl 9999 `"NIU (not in universe)"', add
label values jm01a_yrlastwk jm01a_yrlastwk_lbl

label define jm01a_molastwk_lbl 01 `"January"'
label define jm01a_molastwk_lbl 02 `"February"', add
label define jm01a_molastwk_lbl 03 `"March"', add
label define jm01a_molastwk_lbl 04 `"April"', add
label define jm01a_molastwk_lbl 05 `"May"', add
label define jm01a_molastwk_lbl 06 `"June"', add
label define jm01a_molastwk_lbl 07 `"July"', add
label define jm01a_molastwk_lbl 08 `"August"', add
label define jm01a_molastwk_lbl 09 `"September"', add
label define jm01a_molastwk_lbl 10 `"October"', add
label define jm01a_molastwk_lbl 11 `"November"', add
label define jm01a_molastwk_lbl 12 `"December"', add
label define jm01a_molastwk_lbl 98 `"Unknown"', add
label define jm01a_molastwk_lbl 99 `"NIU (not in universe)"', add
label values jm01a_molastwk jm01a_molastwk_lbl

label define jm01a_activyr_lbl 00 `"Worked or had a job"'
label define jm01a_activyr_lbl 01 `"Looked for first job"', add
label define jm01a_activyr_lbl 02 `"Looked for work which was not the first"', add
label define jm01a_activyr_lbl 03 `"Student"', add
label define jm01a_activyr_lbl 04 `"Home duties"', add
label define jm01a_activyr_lbl 05 `"Retired"', add
label define jm01a_activyr_lbl 06 `"Disabled"', add
label define jm01a_activyr_lbl 07 `"Not interested in work"', add
label define jm01a_activyr_lbl 08 `"Other"', add
label define jm01a_activyr_lbl 98 `"Unknown"', add
label define jm01a_activyr_lbl 99 `"NIU (not in universe)"', add
label values jm01a_activyr jm01a_activyr_lbl

label define jm01a_wkmonths_lbl 00 `"0"'
label define jm01a_wkmonths_lbl 01 `"1"', add
label define jm01a_wkmonths_lbl 02 `"2"', add
label define jm01a_wkmonths_lbl 03 `"3"', add
label define jm01a_wkmonths_lbl 04 `"4"', add
label define jm01a_wkmonths_lbl 05 `"5"', add
label define jm01a_wkmonths_lbl 06 `"6"', add
label define jm01a_wkmonths_lbl 07 `"7"', add
label define jm01a_wkmonths_lbl 08 `"8"', add
label define jm01a_wkmonths_lbl 09 `"9"', add
label define jm01a_wkmonths_lbl 10 `"10"', add
label define jm01a_wkmonths_lbl 11 `"11"', add
label define jm01a_wkmonths_lbl 12 `"12"', add
label define jm01a_wkmonths_lbl 98 `"Unknown"', add
label define jm01a_wkmonths_lbl 99 `"NIU (not in universe)"', add
label values jm01a_wkmonths jm01a_wkmonths_lbl

label define jm01a_layoff_lbl 1 `"Yes"'
label define jm01a_layoff_lbl 2 `"No"', add
label define jm01a_layoff_lbl 8 `"Unknown"', add
label define jm01a_layoff_lbl 9 `"NIU (not in universe)"', add
label values jm01a_layoff jm01a_layoff_lbl

label define jm01a_layoffi1_lbl 00 `"Agriculture (including hunting, forestry and fishing)"'
label define jm01a_layoffi1_lbl 01 `"Mining"', add
label define jm01a_layoffi1_lbl 02 `"Manufacturing excluding metal products, machinery and equipment"', add
label define jm01a_layoffi1_lbl 03 `"Manufacture of metal products, machinery and equipment"', add
label define jm01a_layoffi1_lbl 04 `"Electricity, gas and water"', add
label define jm01a_layoffi1_lbl 05 `"Construction"', add
label define jm01a_layoffi1_lbl 06 `"Wholesale and retail trade, hotels and restaurants"', add
label define jm01a_layoffi1_lbl 07 `"Transport, storage and communication"', add
label define jm01a_layoffi1_lbl 08 `"Financing, insurance, real estate and business services"', add
label define jm01a_layoffi1_lbl 09 `"Community, social and personal services"', add
label define jm01a_layoffi1_lbl 98 `"Unknown"', add
label define jm01a_layoffi1_lbl 99 `"NIU (not in universe)"', add
label values jm01a_layoffi1 jm01a_layoffi1_lbl

label define jm01a_typpen_lbl 1 `"Food stamps"'
label define jm01a_typpen_lbl 2 `"Other"', add
label define jm01a_typpen_lbl 8 `"Unknown"', add
label define jm01a_typpen_lbl 9 `"NIU (not in universe)"', add
label values jm01a_typpen jm01a_typpen_lbl

label define jm01a_everborn_lbl 1 `"Yes"'
label define jm01a_everborn_lbl 2 `"No"', add
label define jm01a_everborn_lbl 8 `"Unknown"', add
label define jm01a_everborn_lbl 9 `"NIU (not in universe)"', add
label values jm01a_everborn jm01a_everborn_lbl

label define jm01a_chborn_lbl 01 `"1"'
label define jm01a_chborn_lbl 02 `"2"', add
label define jm01a_chborn_lbl 03 `"3"', add
label define jm01a_chborn_lbl 04 `"4"', add
label define jm01a_chborn_lbl 05 `"5"', add
label define jm01a_chborn_lbl 06 `"6"', add
label define jm01a_chborn_lbl 07 `"7"', add
label define jm01a_chborn_lbl 08 `"8"', add
label define jm01a_chborn_lbl 09 `"9"', add
label define jm01a_chborn_lbl 10 `"10"', add
label define jm01a_chborn_lbl 11 `"11"', add
label define jm01a_chborn_lbl 12 `"12"', add
label define jm01a_chborn_lbl 13 `"13+"', add
label define jm01a_chborn_lbl 98 `"Unknown"', add
label define jm01a_chborn_lbl 99 `"NIU (not in universe)"', add
label values jm01a_chborn jm01a_chborn_lbl

label define jm01a_chbornm_lbl 00 `"0"'
label define jm01a_chbornm_lbl 01 `"1"', add
label define jm01a_chbornm_lbl 02 `"2"', add
label define jm01a_chbornm_lbl 03 `"3"', add
label define jm01a_chbornm_lbl 04 `"4"', add
label define jm01a_chbornm_lbl 05 `"5"', add
label define jm01a_chbornm_lbl 06 `"6"', add
label define jm01a_chbornm_lbl 07 `"7"', add
label define jm01a_chbornm_lbl 08 `"8+"', add
label define jm01a_chbornm_lbl 98 `"Unknown"', add
label define jm01a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values jm01a_chbornm jm01a_chbornm_lbl

label define jm01a_chbornf_lbl 00 `"0"'
label define jm01a_chbornf_lbl 01 `"1"', add
label define jm01a_chbornf_lbl 02 `"2"', add
label define jm01a_chbornf_lbl 03 `"3"', add
label define jm01a_chbornf_lbl 04 `"4"', add
label define jm01a_chbornf_lbl 05 `"5"', add
label define jm01a_chbornf_lbl 06 `"6"', add
label define jm01a_chbornf_lbl 07 `"7"', add
label define jm01a_chbornf_lbl 08 `"8+"', add
label define jm01a_chbornf_lbl 98 `"Unknown"', add
label define jm01a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values jm01a_chbornf jm01a_chbornf_lbl

label define jm01a_chsurv_lbl 00 `"0"'
label define jm01a_chsurv_lbl 01 `"1"', add
label define jm01a_chsurv_lbl 02 `"2"', add
label define jm01a_chsurv_lbl 03 `"3"', add
label define jm01a_chsurv_lbl 04 `"4"', add
label define jm01a_chsurv_lbl 05 `"5"', add
label define jm01a_chsurv_lbl 06 `"6"', add
label define jm01a_chsurv_lbl 07 `"7"', add
label define jm01a_chsurv_lbl 08 `"8"', add
label define jm01a_chsurv_lbl 09 `"9"', add
label define jm01a_chsurv_lbl 10 `"10"', add
label define jm01a_chsurv_lbl 11 `"11"', add
label define jm01a_chsurv_lbl 12 `"12+"', add
label define jm01a_chsurv_lbl 98 `"Unknown"', add
label define jm01a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values jm01a_chsurv jm01a_chsurv_lbl

label define jm01a_chsurvm_lbl 00 `"0"'
label define jm01a_chsurvm_lbl 01 `"1"', add
label define jm01a_chsurvm_lbl 02 `"2"', add
label define jm01a_chsurvm_lbl 03 `"3"', add
label define jm01a_chsurvm_lbl 04 `"4"', add
label define jm01a_chsurvm_lbl 05 `"5"', add
label define jm01a_chsurvm_lbl 06 `"6"', add
label define jm01a_chsurvm_lbl 07 `"7"', add
label define jm01a_chsurvm_lbl 08 `"8+"', add
label define jm01a_chsurvm_lbl 98 `"Unknown"', add
label define jm01a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values jm01a_chsurvm jm01a_chsurvm_lbl

label define jm01a_chsurvf_lbl 00 `"0"'
label define jm01a_chsurvf_lbl 01 `"1"', add
label define jm01a_chsurvf_lbl 02 `"2"', add
label define jm01a_chsurvf_lbl 03 `"3"', add
label define jm01a_chsurvf_lbl 04 `"4"', add
label define jm01a_chsurvf_lbl 05 `"5"', add
label define jm01a_chsurvf_lbl 06 `"6"', add
label define jm01a_chsurvf_lbl 07 `"7"', add
label define jm01a_chsurvf_lbl 08 `"8+"', add
label define jm01a_chsurvf_lbl 98 `"Unknown"', add
label define jm01a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values jm01a_chsurvf jm01a_chsurvf_lbl

label define jm01a_age1stb_lbl 11 `"10 or 11"'
label define jm01a_age1stb_lbl 12 `"12"', add
label define jm01a_age1stb_lbl 13 `"13"', add
label define jm01a_age1stb_lbl 14 `"14"', add
label define jm01a_age1stb_lbl 15 `"15"', add
label define jm01a_age1stb_lbl 16 `"16"', add
label define jm01a_age1stb_lbl 17 `"17"', add
label define jm01a_age1stb_lbl 18 `"18"', add
label define jm01a_age1stb_lbl 19 `"19"', add
label define jm01a_age1stb_lbl 20 `"20"', add
label define jm01a_age1stb_lbl 21 `"21"', add
label define jm01a_age1stb_lbl 22 `"22"', add
label define jm01a_age1stb_lbl 23 `"23"', add
label define jm01a_age1stb_lbl 24 `"24"', add
label define jm01a_age1stb_lbl 25 `"25"', add
label define jm01a_age1stb_lbl 26 `"26"', add
label define jm01a_age1stb_lbl 27 `"27"', add
label define jm01a_age1stb_lbl 28 `"28"', add
label define jm01a_age1stb_lbl 29 `"29"', add
label define jm01a_age1stb_lbl 30 `"30"', add
label define jm01a_age1stb_lbl 31 `"31"', add
label define jm01a_age1stb_lbl 32 `"32"', add
label define jm01a_age1stb_lbl 33 `"33"', add
label define jm01a_age1stb_lbl 34 `"34"', add
label define jm01a_age1stb_lbl 35 `"35"', add
label define jm01a_age1stb_lbl 36 `"36"', add
label define jm01a_age1stb_lbl 37 `"37"', add
label define jm01a_age1stb_lbl 38 `"38"', add
label define jm01a_age1stb_lbl 39 `"39"', add
label define jm01a_age1stb_lbl 40 `"40+"', add
label define jm01a_age1stb_lbl 98 `"Unknown"', add
label define jm01a_age1stb_lbl 99 `"NIU (not in universe)"', add
label values jm01a_age1stb jm01a_age1stb_lbl

label define jm01a_agelstb_lbl 13 `"13 or younger"'
label define jm01a_agelstb_lbl 14 `"14"', add
label define jm01a_agelstb_lbl 15 `"15"', add
label define jm01a_agelstb_lbl 16 `"16"', add
label define jm01a_agelstb_lbl 17 `"17"', add
label define jm01a_agelstb_lbl 18 `"18"', add
label define jm01a_agelstb_lbl 19 `"19"', add
label define jm01a_agelstb_lbl 20 `"20"', add
label define jm01a_agelstb_lbl 21 `"21"', add
label define jm01a_agelstb_lbl 22 `"22"', add
label define jm01a_agelstb_lbl 23 `"23"', add
label define jm01a_agelstb_lbl 24 `"24"', add
label define jm01a_agelstb_lbl 25 `"25"', add
label define jm01a_agelstb_lbl 26 `"26"', add
label define jm01a_agelstb_lbl 27 `"27"', add
label define jm01a_agelstb_lbl 28 `"28"', add
label define jm01a_agelstb_lbl 29 `"29"', add
label define jm01a_agelstb_lbl 30 `"30"', add
label define jm01a_agelstb_lbl 31 `"31"', add
label define jm01a_agelstb_lbl 32 `"32"', add
label define jm01a_agelstb_lbl 33 `"33"', add
label define jm01a_agelstb_lbl 34 `"34"', add
label define jm01a_agelstb_lbl 35 `"35"', add
label define jm01a_agelstb_lbl 36 `"36"', add
label define jm01a_agelstb_lbl 37 `"37"', add
label define jm01a_agelstb_lbl 38 `"38"', add
label define jm01a_agelstb_lbl 39 `"39"', add
label define jm01a_agelstb_lbl 40 `"40"', add
label define jm01a_agelstb_lbl 41 `"41"', add
label define jm01a_agelstb_lbl 42 `"42"', add
label define jm01a_agelstb_lbl 43 `"43"', add
label define jm01a_agelstb_lbl 44 `"44"', add
label define jm01a_agelstb_lbl 45 `"45+"', add
label define jm01a_agelstb_lbl 98 `"Unknown"', add
label define jm01a_agelstb_lbl 99 `"NIU (not in universe)"', add
label values jm01a_agelstb jm01a_agelstb_lbl

label define jm01a_births_lbl 1 `"Yes"'
label define jm01a_births_lbl 2 `"No"', add
label define jm01a_births_lbl 8 `"Unknown"', add
label define jm01a_births_lbl 9 `"NIU (not in universe)"', add
label values jm01a_births jm01a_births_lbl

label define jm01a_birthsn_lbl 1 `"1"'
label define jm01a_birthsn_lbl 2 `"2"', add
label define jm01a_birthsn_lbl 8 `"Unknown"', add
label define jm01a_birthsn_lbl 9 `"NIU (not in universe)"', add
label values jm01a_birthsn jm01a_birthsn_lbl

label define jm01a_parity_lbl 1 `"1 birth"'
label define jm01a_parity_lbl 2 `"2 or more"', add
label define jm01a_parity_lbl 8 `"Unknown"', add
label define jm01a_parity_lbl 9 `"NIU (not in universe)"', add
label values jm01a_parity jm01a_parity_lbl

label define jm01a_bth1sex_lbl 1 `"Male"'
label define jm01a_bth1sex_lbl 2 `"Female"', add
label define jm01a_bth1sex_lbl 8 `"Unknown"', add
label define jm01a_bth1sex_lbl 9 `"NIU (not in universe)"', add
label values jm01a_bth1sex jm01a_bth1sex_lbl

label define jm01a_bth1reg_lbl 1 `"Yes"'
label define jm01a_bth1reg_lbl 2 `"No"', add
label define jm01a_bth1reg_lbl 8 `"Unknown"', add
label define jm01a_bth1reg_lbl 9 `"NIU (not in universe)"', add
label values jm01a_bth1reg jm01a_bth1reg_lbl

label define jm01a_bth2reg_lbl 1 `"Yes"'
label define jm01a_bth2reg_lbl 2 `"No"', add
label define jm01a_bth2reg_lbl 8 `"Unknown"', add
label define jm01a_bth2reg_lbl 9 `"NIU (not in universe)"', add
label values jm01a_bth2reg jm01a_bth2reg_lbl

label define jm01a_chdeath_lbl 1 `"Yes"'
label define jm01a_chdeath_lbl 2 `"No"', add
label define jm01a_chdeath_lbl 8 `"Unknown"', add
label define jm01a_chdeath_lbl 9 `"NIU (not in universe)"', add
label values jm01a_chdeath jm01a_chdeath_lbl

label define jm01a_dth1sex_lbl 1 `"Male"'
label define jm01a_dth1sex_lbl 2 `"Female"', add
label define jm01a_dth1sex_lbl 8 `"Unknown"', add
label define jm01a_dth1sex_lbl 9 `"NIU (not in universe)"', add
label values jm01a_dth1sex jm01a_dth1sex_lbl

label define jm01a_deth1age_lbl 00 `"Less than 1 month"'
label define jm01a_deth1age_lbl 01 `"1 or more"', add
label define jm01a_deth1age_lbl 98 `"Unknown"', add
label define jm01a_deth1age_lbl 99 `"NIU (not in universe)"', add
label values jm01a_deth1age jm01a_deth1age_lbl

label define jm01a_deth1reg_lbl 1 `"Yes"'
label define jm01a_deth1reg_lbl 2 `"No"', add
label define jm01a_deth1reg_lbl 7 `"Doesn't know"', add
label define jm01a_deth1reg_lbl 9 `"NIU (not in universe)"', add
label values jm01a_deth1reg jm01a_deth1reg_lbl


