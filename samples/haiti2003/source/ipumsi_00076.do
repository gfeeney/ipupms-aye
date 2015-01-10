* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                       ///
  int     cntry            1-3      ///
  int     year             4-7      ///
  int     sample           8-11     ///
  double  serial           12-21    ///
  long    ht03a_dwnum      22-28    ///
  byte    ht03a_pern       29-30    ///
  byte    ht03a_donated    31-31    ///
  byte    ht03a_d_num      32-32    ///
  byte    ht03a_dept       33-34    ///
  int     ht03a_arrondis   35-37    ///
  byte    ht03a_urban      38-38    ///
  byte    ht03a_buildtyp   39-39    ///
  byte    ht03a_wall       40-40    ///
  byte    ht03a_roof       41-41    ///
  byte    ht03a_floor      42-42    ///
  byte    ht03a_bldstate   43-43    ///
  byte    ht03a_occup      44-44    ///
  byte    ht03a_npremis    45-46    ///
  byte    ht03a_collect    47-48    ///
  byte    ht03a_individ    49-50    ///
  byte    ht03a_colprisn   51-51    ///
  byte    ht03a_occhh      52-52    ///
  byte    ht03a_nrooms     53-54    ///
  byte    ht03a_water      55-55    ///
  byte    ht03a_watdrink   56-57    ///
  byte    ht03a_watuse     58-59    ///
  byte    ht03a_elect      60-60    ///
  byte    ht03a_lightgen   61-61    ///
  byte    ht03a_lightsol   62-62    ///
  byte    ht03a_lightker   63-63    ///
  byte    ht03a_lightfla   64-64    ///
  byte    ht03a_lightcan   65-65    ///
  byte    ht03a_lightoth   66-66    ///
  byte    ht03a_waste      67-67    ///
  byte    ht03a_nrgwood    68-68    ///
  byte    ht03a_nrgprop    69-69    ///
  byte    ht03a_nrgelect   70-70    ///
  byte    ht03a_nrgchar    71-71    ///
  byte    ht03a_nrgkero    72-72    ///
  byte    ht03a_nrgsol     73-73    ///
  byte    ht03a_nrgother   74-74    ///
  byte    ht03a_toilet     75-75    ///
  byte    ht03a_phone      76-77    ///
  byte    ht03a_radiorec   78-79    ///
  byte    ht03a_radiocom   80-81    ///
  byte    ht03a_tv         82-83    ///
  byte    ht03a_fridge     84-85    ///
  byte    ht03a_oven       86-87    ///
  byte    ht03a_sewmach    88-89    ///
  byte    ht03a_invert     90-91    ///
  byte    ht03a_washer     92-93    ///
  byte    ht03a_computr    94-95    ///
  byte    ht03a_fan        96-97    ///
  byte    ht03a_machete    98-99    ///
  byte    ht03a_shovel     100-101  ///
  byte    ht03a_whlbrw     102-103  ///
  byte    ht03a_motocyc    104-105  ///
  byte    ht03a_bicycle    106-107  ///
  byte    ht03a_auto       108-109  ///
  byte    ht03a_hoes       110-111  ///
  byte    ht03a_plow       112-113  ///
  byte    ht03a_wkanimal   114-115  ///
  byte    ht03a_ownrshp    116-116  ///
  byte    ht03a_hhtype     117-117  ///
  byte    ht03a_deathshh   118-118  ///
  byte    ht03a_nhhdeath   119-119  ///
  byte    ht03a_dthsex1    120-120  ///
  int     ht03a_dthage1    121-123  ///
  byte    ht03a_dthsex2    124-124  ///
  byte    ht03a_dthsex3    125-125  ///
  int     ht03a_sizehh     126-128  ///
  byte    ht03a_npersons   129-129  ///
  byte    ht03a_collectv   130-130  ///
  int     pernum           131-133  ///
  float   wtper            134-141  ///
  byte    ht03a_pernum     142-143  ///
  int     ht03a_seqnum     144-146  ///
  byte    ht03a_ordernum   147-148  ///
  byte    ht03a_relate     149-150  ///
  byte    ht03a_sex        151-151  ///
  int     ht03a_age        152-154  ///
  byte    ht03a_bthcert    155-155  ///
  byte    ht03a_mothaliv   156-156  ///
  byte    ht03a_oldchdrs   157-157  ///
  byte    ht03a_relig      158-159  ///
  byte    ht03a_disab      160-160  ///
  byte    ht03a_blind      161-161  ///
  byte    ht03a_deaf       162-162  ///
  byte    ht03a_mute       163-163  ///
  byte    ht03a_uplimb     164-164  ///
  byte    ht03a_lowlimb    165-165  ///
  byte    ht03a_mentald    166-166  ///
  byte    ht03a_mentalill  167-167  ///
  byte    ht03a_othdisab   168-168  ///
  byte    ht03a_bpl2       169-170  ///
  byte    ht03a_resbpl     171-171  ///
  byte    ht03a_prevres2   172-173  ///
  byte    ht03a_read       174-174  ///
  byte    ht03a_educ       175-176  ///
  byte    ht03a_yreduc     177-178  ///
  byte    ht03a_fieldunv   179-180  ///
  int     ht03a_fieldvoc   181-183  ///
  byte    ht03a_school     184-184  ///
  byte    ht03a_attprof    185-185  ///
  byte    ht03a_attlitctr  186-186  ///
  byte    ht03a_attnoctr   187-187  ///
  byte    ht03a_tyuniv     188-188  ///
  byte    ht03a_typtrain   189-189  ///
  byte    ht03a_tylitcent  190-190  ///
  byte    ht03a_marst      191-191  ///
  byte    ht03a_emplstat   192-193  ///
  byte    ht03a_econact    194-195  ///
  int     ht03a_ind2       196-198  ///
  byte    ht03a_occ        199-200  ///
  int     ht03a_occ2       201-203  ///
  byte    ht03a_typempl    204-204  ///
  byte    ht03a_employm    205-205  ///
  byte    ht03a_workplac   206-207  ///
  byte    ht03a_chlive     208-208  ///
  int     ht03a_chborn     209-211  ///
  byte    ht03a_chsurv     212-213  ///
  byte    ht03a_lstbmo     214-215  ///
  int     ht03a_lstbyr     216-219  ///
  byte    ht03a_lstblive   220-221  ///
  byte    ht03a_mthdeath   222-223  ///
  int     ht03a_yrdeath    224-227  ///
  using `"ipumsi_00076.dat"'

replace wtper           = wtper           / 100

format serial          %10.0f
format wtper           %8.2f

label var cntry           `"Country"'
label var year            `"Year"'
label var sample          `"IPUMS sample identifier"'
label var serial          `"Household serial number"'
label var ht03a_dwnum     `"Dwelling number"'
label var ht03a_pern      `"Number of persons in household"'
label var ht03a_donated   `"Donated dwelling"'
label var ht03a_d_num     `"Donation strata: strata number"'
label var ht03a_dept      `"Department where household is located"'
label var ht03a_arrondis  `"Arrondissement where household is located"'
label var ht03a_urban     `"Place of residence (urban or rural)"'
label var ht03a_buildtyp  `"Type of building"'
label var ht03a_wall      `"Main material of the walls"'
label var ht03a_roof      `"Main material of the roof"'
label var ht03a_floor     `"Main material of the floor"'
label var ht03a_bldstate  `"State of the building"'
label var ht03a_occup     `"Occupancy status"'
label var ht03a_npremis   `"Number of premises in the dwelling not intended for habitation"'
label var ht03a_collect   `"Number of premises in the dwelling intended for collective housing"'
label var ht03a_individ   `"Number of premises in the dwelling intended for individual housing"'
label var ht03a_colprisn  `"Prison (collective)"'
label var ht03a_occhh     `"State of occupation of housing unit"'
label var ht03a_nrooms    `"Number of rooms in housing unit"'
label var ht03a_water     `"Water supply"'
label var ht03a_watdrink  `"Source of drinking water"'
label var ht03a_watuse    `"Source of water for general use"'
label var ht03a_elect     `"Type of lighting, electricity"'
label var ht03a_lightgen  `"Type of lighting, generator"'
label var ht03a_lightsol  `"Type of lighting, solar panel"'
label var ht03a_lightker  `"Type of lighting, kerosene lamp"'
label var ht03a_lightfla  `"Type of lighting, flashlight"'
label var ht03a_lightcan  `"Type of lighting, candles"'
label var ht03a_lightoth  `"Type of lighting, other"'
label var ht03a_waste     `"Solid waste disposal system"'
label var ht03a_nrgwood   `"Energy source, wood/straw"'
label var ht03a_nrgprop   `"Energy source, propane gas"'
label var ht03a_nrgelect  `"Energy source, electricity"'
label var ht03a_nrgchar   `"Energy source, wood coal"'
label var ht03a_nrgkero   `"Energy source, kerosene"'
label var ht03a_nrgsol    `"Energy source, solar oven"'
label var ht03a_nrgother  `"Energy source, other"'
label var ht03a_toilet    `"Toilet facilities"'
label var ht03a_phone     `"Number of telephones"'
label var ht03a_radiorec  `"Number of radios (receivers)"'
label var ht03a_radiocom  `"Number of radios (communications)"'
label var ht03a_tv        `"Number of televisions"'
label var ht03a_fridge    `"Number of refrigerators"'
label var ht03a_oven      `"Number of electric/gas ovens"'
label var ht03a_sewmach   `"Number of sewing machines"'
label var ht03a_invert    `"Number of inverters"'
label var ht03a_washer    `"Number of washing machines"'
label var ht03a_computr   `"Number of computers"'
label var ht03a_fan       `"Number of electric fans"'
label var ht03a_machete   `"Number of machetes"'
label var ht03a_shovel    `"Number of shovels"'
label var ht03a_whlbrw    `"Number of wheelbarrows"'
label var ht03a_motocyc   `"Number of motorcycles"'
label var ht03a_bicycle   `"Number of bicycles"'
label var ht03a_auto      `"Number of automobiles"'
label var ht03a_hoes      `"Number of hoes"'
label var ht03a_plow      `"Number of plows"'
label var ht03a_wkanimal  `"Number of work animals"'
label var ht03a_ownrshp   `"Ownership of the dwelling"'
label var ht03a_hhtype    `"Type of household"'
label var ht03a_deathshh  `"Deaths in the household during the last 12 months"'
label var ht03a_nhhdeath  `"Number of deaths in the household during the past 12 months"'
label var ht03a_dthsex1   `"Sex (first household death)"'
label var ht03a_dthage1   `"Age (first household death)"'
label var ht03a_dthsex2   `"Sex (second household death)"'
label var ht03a_dthsex3   `"Sex (third household death)"'
label var ht03a_sizehh    `"Size of the household"'
label var ht03a_npersons  `"Number of persons"'
label var ht03a_collectv  `"Summary variable for collective households"'
label var pernum          `"Person number"'
label var wtper           `"Person weight"'
label var ht03a_pernum    `"Person number (within household)"'
label var ht03a_seqnum    `"Sequence number"'
label var ht03a_ordernum  `"Order number"'
label var ht03a_relate    `"Relationship to head of household"'
label var ht03a_sex       `"Sex"'
label var ht03a_age       `"Age"'
label var ht03a_bthcert   `"Birth certificate"'
label var ht03a_mothaliv  `"Mother alive"'
label var ht03a_oldchdrs  `"Older child currently residing in Haiti"'
label var ht03a_relig     `"Professed religion"'
label var ht03a_disab     `"Any disability"'
label var ht03a_blind     `"Diability, blindness"'
label var ht03a_deaf      `"Disability, deafness"'
label var ht03a_mute      `"Disability, mute"'
label var ht03a_uplimb    `"Disability, upper limbs"'
label var ht03a_lowlimb   `"Disability, lower limbs"'
label var ht03a_mentald   `"Disability, mental development"'
label var ht03a_mentalill `"Disability, mental illness"'
label var ht03a_othdisab  `"Disability, other"'
label var ht03a_bpl2      `"Country or arrondissement of birth"'
label var ht03a_resbpl    `"Length of residence in the city, district, or communal section"'
label var ht03a_prevres2  `"Country or arrondissement of residence in December 1997"'
label var ht03a_read      `"Knows how to read and write"'
label var ht03a_educ      `"Education level completed"'
label var ht03a_yreduc    `"Year completed or class for completed level of education"'
label var ht03a_fieldunv  `"Field of study at university"'
label var ht03a_fieldvoc  `"Field of study at technical or professional training center"'
label var ht03a_school    `"School or university attended during 2001-2002"'
label var ht03a_attprof   `"Professional or technical training center attended during 2001-2002"'
label var ht03a_attlitctr `"Literacy center attended during 2001-2002"'
label var ht03a_attnoctr  `"Attended a school or training center during 2001-2002"'
label var ht03a_tyuniv    `"Type of school/university establishment attended during 2001-2002"'
label var ht03a_typtrain  `"Type of professional or technical training center attended during 2001-2002"'
label var ht03a_tylitcent `"Type of literacy center attended during 2001-2002"'
label var ht03a_marst     `"Marital Status"'
label var ht03a_emplstat  `"Terms of occupation"'
label var ht03a_econact   `"Engaged in economic activity"'
label var ht03a_ind2      `"Industry, 3 digits"'
label var ht03a_occ       `"Occupation, 2 digits"'
label var ht03a_occ2      `"Occupation, 3 digits"'
label var ht03a_typempl   `"Type of employer"'
label var ht03a_employm   `"Type of employment"'
label var ht03a_workplac  `"Main place of work"'
label var ht03a_chlive    `"Had a child born alive"'
label var ht03a_chborn    `"Number of children born alive"'
label var ht03a_chsurv    `"Number of children born alive currently alive"'
label var ht03a_lstbmo    `"Month of last live birth"'
label var ht03a_lstbyr    `"Year of last live birth"'
label var ht03a_lstblive  `"Last born still alive"'
label var ht03a_mthdeath  `"Month of death of last-born child"'
label var ht03a_yrdeath   `"Year of death of last-born child"'

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

label define ht03a_pern_lbl 00 `"0"'
label define ht03a_pern_lbl 01 `"1"', add
label define ht03a_pern_lbl 02 `"2"', add
label define ht03a_pern_lbl 03 `"3"', add
label define ht03a_pern_lbl 04 `"4"', add
label define ht03a_pern_lbl 05 `"5"', add
label define ht03a_pern_lbl 06 `"6"', add
label define ht03a_pern_lbl 07 `"7"', add
label define ht03a_pern_lbl 08 `"8"', add
label define ht03a_pern_lbl 09 `"9"', add
label define ht03a_pern_lbl 10 `"10"', add
label define ht03a_pern_lbl 11 `"11"', add
label define ht03a_pern_lbl 12 `"12"', add
label define ht03a_pern_lbl 13 `"13"', add
label define ht03a_pern_lbl 14 `"14"', add
label define ht03a_pern_lbl 15 `"15"', add
label define ht03a_pern_lbl 16 `"16"', add
label define ht03a_pern_lbl 17 `"17"', add
label define ht03a_pern_lbl 18 `"18"', add
label define ht03a_pern_lbl 19 `"19"', add
label define ht03a_pern_lbl 20 `"20"', add
label define ht03a_pern_lbl 21 `"21"', add
label define ht03a_pern_lbl 22 `"22"', add
label define ht03a_pern_lbl 23 `"23"', add
label define ht03a_pern_lbl 24 `"24"', add
label define ht03a_pern_lbl 25 `"25"', add
label define ht03a_pern_lbl 26 `"26"', add
label define ht03a_pern_lbl 27 `"27"', add
label define ht03a_pern_lbl 29 `"29"', add
label define ht03a_pern_lbl 30 `"30"', add
label values ht03a_pern ht03a_pern_lbl

label define ht03a_donated_lbl 0 `"No problem"'
label define ht03a_donated_lbl 1 `"Donated"', add
label values ht03a_donated ht03a_donated_lbl

label define ht03a_d_num_lbl 1 `"1"'
label define ht03a_d_num_lbl 2 `"2"', add
label define ht03a_d_num_lbl 3 `"3"', add
label define ht03a_d_num_lbl 4 `"4"', add
label values ht03a_d_num ht03a_d_num_lbl

label define ht03a_dept_lbl 01 `"Ouest (West)"'
label define ht03a_dept_lbl 02 `"Sud'Est (South East)"', add
label define ht03a_dept_lbl 03 `"Nord (North)"', add
label define ht03a_dept_lbl 04 `"Nord'est (North East)"', add
label define ht03a_dept_lbl 05 `"L'Artibonite"', add
label define ht03a_dept_lbl 06 `"Centre (Central)"', add
label define ht03a_dept_lbl 07 `"Sud (South)"', add
label define ht03a_dept_lbl 08 `"Grand'Anse"', add
label define ht03a_dept_lbl 09 `"Nord'Ouest (North West)"', add
label define ht03a_dept_lbl 10 `"Nippes"', add
label values ht03a_dept ht03a_dept_lbl

label define ht03a_arrondis_lbl 011 `"Port-au-Prince"'
label define ht03a_arrondis_lbl 012 `"Léogâne"', add
label define ht03a_arrondis_lbl 013 `"Croix-des-Bouquets"', add
label define ht03a_arrondis_lbl 014 `"L'Arcahaie"', add
label define ht03a_arrondis_lbl 015 `"La Gonâve"', add
label define ht03a_arrondis_lbl 021 `"Jacmel"', add
label define ht03a_arrondis_lbl 022 `"Bainet"', add
label define ht03a_arrondis_lbl 023 `"Belle-Anse"', add
label define ht03a_arrondis_lbl 031 `"Le Cap-Haïtien"', add
label define ht03a_arrondis_lbl 032 `"L'Acul-du-Nord"', add
label define ht03a_arrondis_lbl 033 `"Grande-Rivière du Nord"', add
label define ht03a_arrondis_lbl 034 `"Saint-Raphaël"', add
label define ht03a_arrondis_lbl 035 `"Borgne"', add
label define ht03a_arrondis_lbl 036 `"Le Limbé"', add
label define ht03a_arrondis_lbl 037 `"Plaisance"', add
label define ht03a_arrondis_lbl 041 `"Fort-Liberté"', add
label define ht03a_arrondis_lbl 042 `"Ouanaminthe"', add
label define ht03a_arrondis_lbl 043 `"Le Trou-du-Nord"', add
label define ht03a_arrondis_lbl 044 `"Vallières"', add
label define ht03a_arrondis_lbl 051 `"Les Gonaïves"', add
label define ht03a_arrondis_lbl 052 `"Gros-Morne"', add
label define ht03a_arrondis_lbl 053 `"Saint-Marc"', add
label define ht03a_arrondis_lbl 054 `"Dessalines"', add
label define ht03a_arrondis_lbl 055 `"Marmelade"', add
label define ht03a_arrondis_lbl 061 `"Hinche"', add
label define ht03a_arrondis_lbl 062 `"Mirebalais"', add
label define ht03a_arrondis_lbl 063 `"Lascahobas"', add
label define ht03a_arrondis_lbl 064 `"Cerca la Source"', add
label define ht03a_arrondis_lbl 071 `"Les Cayes"', add
label define ht03a_arrondis_lbl 072 `"Port-Salut"', add
label define ht03a_arrondis_lbl 073 `"Aquin"', add
label define ht03a_arrondis_lbl 074 `"Les Côteaux"', add
label define ht03a_arrondis_lbl 075 `"Les Chardonnières"', add
label define ht03a_arrondis_lbl 081 `"Jérémie"', add
label define ht03a_arrondis_lbl 082 `"Anse d'Hainault"', add
label define ht03a_arrondis_lbl 083 `"Corail"', add
label define ht03a_arrondis_lbl 091 `"Port-de-Paix"', add
label define ht03a_arrondis_lbl 092 `"Saint-Louis du Nord"', add
label define ht03a_arrondis_lbl 093 `"Môle Saint-Nicolas"', add
label define ht03a_arrondis_lbl 101 `"Miragoâne"', add
label define ht03a_arrondis_lbl 102 `"L'Anse-à-Veau"', add
label define ht03a_arrondis_lbl 103 `"Baradères"', add
label values ht03a_arrondis ht03a_arrondis_lbl

label define ht03a_urban_lbl 1 `"Metropolitan area"'
label define ht03a_urban_lbl 2 `"Urban"', add
label define ht03a_urban_lbl 3 `"Rural"', add
label values ht03a_urban ht03a_urban_lbl

label define ht03a_buildtyp_lbl 1 `"Mud hut or mud-floored hut (Kay atè, where roof and walls are the same)"'
label define ht03a_buildtyp_lbl 2 `"Hut / Hovel (house built with waste of construction materials)"', add
label define ht03a_buildtyp_lbl 3 `"Traditional circular dwelling / hut (ajoupas)"', add
label define ht03a_buildtyp_lbl 4 `"Single-story house"', add
label define ht03a_buildtyp_lbl 5 `"Multi-story house"', add
label define ht03a_buildtyp_lbl 6 `"Apartment building"', add
label define ht03a_buildtyp_lbl 7 `"Colonial-type building (gingerbread)"', add
label define ht03a_buildtyp_lbl 8 `"Villa"', add
label define ht03a_buildtyp_lbl 9 `"Other"', add
label values ht03a_buildtyp ht03a_buildtyp_lbl

label define ht03a_wall_lbl 1 `"Wood / planks"'
label define ht03a_wall_lbl 2 `"Dirt"', add
label define ht03a_wall_lbl 3 `"Cement / cement blocks"', add
label define ht03a_wall_lbl 4 `"Sheet metal"', add
label define ht03a_wall_lbl 5 `"Cardboard / plastic"', add
label define ht03a_wall_lbl 6 `"Brick / stone / rock"', add
label define ht03a_wall_lbl 7 `"Wood slats (clisse)"', add
label define ht03a_wall_lbl 8 `"Other"', add
label values ht03a_wall ht03a_wall_lbl

label define ht03a_roof_lbl 1 `"Slate"'
label define ht03a_roof_lbl 2 `"Thatch / straw"', add
label define ht03a_roof_lbl 3 `"Cement / concrete"', add
label define ht03a_roof_lbl 4 `"Sheet metal"', add
label define ht03a_roof_lbl 5 `"Plastic"', add
label define ht03a_roof_lbl 6 `"Tile"', add
label define ht03a_roof_lbl 7 `"Other"', add
label values ht03a_roof ht03a_roof_lbl

label define ht03a_floor_lbl 1 `"Wood / boards"'
label define ht03a_floor_lbl 2 `"Beaten earth"', add
label define ht03a_floor_lbl 3 `"Cement"', add
label define ht03a_floor_lbl 4 `"Mosaics"', add
label define ht03a_floor_lbl 5 `"Ceramic / tile (terrazzo)"', add
label define ht03a_floor_lbl 6 `"Marble"', add
label define ht03a_floor_lbl 7 `"Other"', add
label values ht03a_floor ht03a_floor_lbl

label define ht03a_bldstate_lbl 1 `"Completed"'
label define ht03a_bldstate_lbl 2 `"Under construction"', add
label define ht03a_bldstate_lbl 3 `"In ruins"', add
label values ht03a_bldstate ht03a_bldstate_lbl

label define ht03a_occup_lbl 1 `"Permanently occupied"'
label define ht03a_occup_lbl 2 `"Occasionally occupied"', add
label define ht03a_occup_lbl 3 `"Vacant"', add
label values ht03a_occup ht03a_occup_lbl

label define ht03a_npremis_lbl 00 `"0"'
label define ht03a_npremis_lbl 01 `"1"', add
label define ht03a_npremis_lbl 02 `"2"', add
label define ht03a_npremis_lbl 03 `"3"', add
label define ht03a_npremis_lbl 04 `"4"', add
label define ht03a_npremis_lbl 05 `"5"', add
label define ht03a_npremis_lbl 06 `"6"', add
label define ht03a_npremis_lbl 07 `"7"', add
label define ht03a_npremis_lbl 08 `"8"', add
label define ht03a_npremis_lbl 09 `"9"', add
label define ht03a_npremis_lbl 10 `"10+"', add
label define ht03a_npremis_lbl 98 `"Unknown"', add
label define ht03a_npremis_lbl 99 `"NIU (not in universe)"', add
label values ht03a_npremis ht03a_npremis_lbl

label define ht03a_collect_lbl 00 `"0"'
label define ht03a_collect_lbl 01 `"1"', add
label define ht03a_collect_lbl 02 `"2"', add
label define ht03a_collect_lbl 03 `"3"', add
label define ht03a_collect_lbl 04 `"4+"', add
label define ht03a_collect_lbl 98 `"Unknown"', add
label define ht03a_collect_lbl 99 `"NIU (not in universe)"', add
label values ht03a_collect ht03a_collect_lbl

label define ht03a_individ_lbl 00 `"0"'
label define ht03a_individ_lbl 01 `"1"', add
label define ht03a_individ_lbl 02 `"2"', add
label define ht03a_individ_lbl 03 `"3"', add
label define ht03a_individ_lbl 04 `"4"', add
label define ht03a_individ_lbl 05 `"5"', add
label define ht03a_individ_lbl 06 `"6"', add
label define ht03a_individ_lbl 07 `"7+"', add
label define ht03a_individ_lbl 99 `"NIU (not in universe)"', add
label values ht03a_individ ht03a_individ_lbl

label define ht03a_colprisn_lbl 1 `"Yes (prison)"'
label define ht03a_colprisn_lbl 0 `"No"', add
label values ht03a_colprisn ht03a_colprisn_lbl

label define ht03a_occhh_lbl 1 `"Occupied by a household"'
label define ht03a_occhh_lbl 2 `"Vacant"', add
label define ht03a_occhh_lbl 8 `"Unknown"', add
label define ht03a_occhh_lbl 9 `"NIU (not in universe)"', add
label values ht03a_occhh ht03a_occhh_lbl

label define ht03a_nrooms_lbl 01 `"1"'
label define ht03a_nrooms_lbl 02 `"2"', add
label define ht03a_nrooms_lbl 03 `"3"', add
label define ht03a_nrooms_lbl 04 `"4"', add
label define ht03a_nrooms_lbl 05 `"5"', add
label define ht03a_nrooms_lbl 06 `"6"', add
label define ht03a_nrooms_lbl 07 `"7"', add
label define ht03a_nrooms_lbl 08 `"8"', add
label define ht03a_nrooms_lbl 09 `"9"', add
label define ht03a_nrooms_lbl 10 `"10"', add
label define ht03a_nrooms_lbl 11 `"11"', add
label define ht03a_nrooms_lbl 12 `"12"', add
label define ht03a_nrooms_lbl 13 `"13"', add
label define ht03a_nrooms_lbl 14 `"14"', add
label define ht03a_nrooms_lbl 15 `"15"', add
label define ht03a_nrooms_lbl 16 `"16+"', add
label define ht03a_nrooms_lbl 99 `"NIU (not in universe)"', add
label values ht03a_nrooms ht03a_nrooms_lbl

label define ht03a_water_lbl 1 `"Yes, within the dwelling"'
label define ht03a_water_lbl 2 `"Yes, in the courtyard"', add
label define ht03a_water_lbl 3 `"Not connected to a water supply system"', add
label define ht03a_water_lbl 9 `"NIU (not in universe)"', add
label values ht03a_water ht03a_water_lbl

label define ht03a_watdrink_lbl 01 `"Faucet (distribution service)"'
label define ht03a_watdrink_lbl 02 `"Public fountain"', add
label define ht03a_watdrink_lbl 03 `"Brought from truck"', add
label define ht03a_watdrink_lbl 04 `"Treated water"', add
label define ht03a_watdrink_lbl 05 `"Bought in large 5-gallon containers [boquite]"', add
label define ht03a_watdrink_lbl 06 `"River"', add
label define ht03a_watdrink_lbl 07 `"Spring"', add
label define ht03a_watdrink_lbl 08 `"Rain"', add
label define ht03a_watdrink_lbl 09 `"Dug well"', add
label define ht03a_watdrink_lbl 10 `"Artesian well"', add
label define ht03a_watdrink_lbl 11 `"Other"', add
label define ht03a_watdrink_lbl 99 `"NIU (not in universe)"', add
label values ht03a_watdrink ht03a_watdrink_lbl

label define ht03a_watuse_lbl 01 `"Faucet (distribution service)"'
label define ht03a_watuse_lbl 02 `"Public fountain"', add
label define ht03a_watuse_lbl 03 `"Brought from truck"', add
label define ht03a_watuse_lbl 04 `"Treated water"', add
label define ht03a_watuse_lbl 05 `"Bought in large 5-gallon containers [boquite]"', add
label define ht03a_watuse_lbl 06 `"River"', add
label define ht03a_watuse_lbl 07 `"Spring"', add
label define ht03a_watuse_lbl 08 `"Rain"', add
label define ht03a_watuse_lbl 09 `"Dug well"', add
label define ht03a_watuse_lbl 10 `"Artesian well"', add
label define ht03a_watuse_lbl 11 `"Other"', add
label define ht03a_watuse_lbl 99 `"NIU (not in universe)"', add
label values ht03a_watuse ht03a_watuse_lbl

label define ht03a_elect_lbl 1 `"Electricity"'
label define ht03a_elect_lbl 0 `"No electricity (for lighting)"', add
label values ht03a_elect ht03a_elect_lbl

label define ht03a_lightgen_lbl 1 `"Generator"'
label define ht03a_lightgen_lbl 0 `"No generator (for lighting)"', add
label values ht03a_lightgen ht03a_lightgen_lbl

label define ht03a_lightsol_lbl 1 `"Solar panel"'
label define ht03a_lightsol_lbl 0 `"No solar (for lighting)"', add
label values ht03a_lightsol ht03a_lightsol_lbl

label define ht03a_lightker_lbl 1 `"Kerosene"'
label define ht03a_lightker_lbl 0 `"No kerosene (for lighting)"', add
label values ht03a_lightker ht03a_lightker_lbl

label define ht03a_lightfla_lbl 1 `"Flashlight"'
label define ht03a_lightfla_lbl 0 `"No flashlight (lighting)"', add
label values ht03a_lightfla ht03a_lightfla_lbl

label define ht03a_lightcan_lbl 1 `"Candles"'
label define ht03a_lightcan_lbl 0 `"No candles (lighting)"', add
label values ht03a_lightcan ht03a_lightcan_lbl

label define ht03a_lightoth_lbl 1 `"Other type of lighting"'
label define ht03a_lightoth_lbl 0 `"No, does not use other type of lighting"', add
label values ht03a_lightoth ht03a_lightoth_lbl

label define ht03a_waste_lbl 0 `"NIU (not in universe)"'
label define ht03a_waste_lbl 1 `"City truck collection"', add
label define ht03a_waste_lbl 2 `"Private waste collection"', add
label define ht03a_waste_lbl 3 `"Thrown onto empty lot"', add
label define ht03a_waste_lbl 4 `"Discharge in a ravine"', add
label define ht03a_waste_lbl 5 `"Discharge in sewers"', add
label define ht03a_waste_lbl 6 `"Discharge in the street"', add
label define ht03a_waste_lbl 7 `"Discharge to the sea"', add
label define ht03a_waste_lbl 8 `"Periodic burning"', add
label define ht03a_waste_lbl 9 `"Other"', add
label values ht03a_waste ht03a_waste_lbl

label define ht03a_nrgwood_lbl 1 `"Wood/straw"'
label define ht03a_nrgwood_lbl 0 `"Does not use"', add
label values ht03a_nrgwood ht03a_nrgwood_lbl

label define ht03a_nrgprop_lbl 1 `"Propane gas"'
label define ht03a_nrgprop_lbl 0 `"Does not use"', add
label values ht03a_nrgprop ht03a_nrgprop_lbl

label define ht03a_nrgelect_lbl 1 `"Electricity"'
label define ht03a_nrgelect_lbl 0 `"Does not use"', add
label values ht03a_nrgelect ht03a_nrgelect_lbl

label define ht03a_nrgchar_lbl 1 `"Wood coal"'
label define ht03a_nrgchar_lbl 0 `"Does not use"', add
label values ht03a_nrgchar ht03a_nrgchar_lbl

label define ht03a_nrgkero_lbl 1 `"Kerosene"'
label define ht03a_nrgkero_lbl 0 `"Does not use"', add
label values ht03a_nrgkero ht03a_nrgkero_lbl

label define ht03a_nrgsol_lbl 1 `"Solar oven"'
label define ht03a_nrgsol_lbl 0 `"Does not use"', add
label values ht03a_nrgsol ht03a_nrgsol_lbl

label define ht03a_nrgother_lbl 1 `"Other type of energy source"'
label define ht03a_nrgother_lbl 0 `"Does not use"', add
label values ht03a_nrgother ht03a_nrgother_lbl

label define ht03a_toilet_lbl 1 `"Flush toilet"'
label define ht03a_toilet_lbl 2 `"Individual latrines"', add
label define ht03a_toilet_lbl 3 `"Shared latrines"', add
label define ht03a_toilet_lbl 4 `"Hole in plot of land"', add
label define ht03a_toilet_lbl 5 `"None"', add
label define ht03a_toilet_lbl 9 `"NIU (not in universe)"', add
label values ht03a_toilet ht03a_toilet_lbl

label define ht03a_phone_lbl 00 `"0"'
label define ht03a_phone_lbl 01 `"1"', add
label define ht03a_phone_lbl 02 `"2"', add
label define ht03a_phone_lbl 03 `"3"', add
label define ht03a_phone_lbl 04 `"4"', add
label define ht03a_phone_lbl 05 `"5+"', add
label define ht03a_phone_lbl 99 `"NIU (not in universe)"', add
label values ht03a_phone ht03a_phone_lbl

label define ht03a_radiorec_lbl 00 `"0"'
label define ht03a_radiorec_lbl 01 `"1"', add
label define ht03a_radiorec_lbl 02 `"2"', add
label define ht03a_radiorec_lbl 03 `"3"', add
label define ht03a_radiorec_lbl 04 `"4"', add
label define ht03a_radiorec_lbl 05 `"5"', add
label define ht03a_radiorec_lbl 06 `"6+"', add
label define ht03a_radiorec_lbl 99 `"NIU (not in universe)"', add
label values ht03a_radiorec ht03a_radiorec_lbl

label define ht03a_radiocom_lbl 00 `"0"'
label define ht03a_radiocom_lbl 01 `"1"', add
label define ht03a_radiocom_lbl 02 `"2"', add
label define ht03a_radiocom_lbl 03 `"3+"', add
label define ht03a_radiocom_lbl 99 `"NIU (not in universe)"', add
label values ht03a_radiocom ht03a_radiocom_lbl

label define ht03a_tv_lbl 00 `"0"'
label define ht03a_tv_lbl 01 `"1"', add
label define ht03a_tv_lbl 02 `"2"', add
label define ht03a_tv_lbl 03 `"3"', add
label define ht03a_tv_lbl 04 `"4+"', add
label define ht03a_tv_lbl 99 `"NIU (not in universe)"', add
label values ht03a_tv ht03a_tv_lbl

label define ht03a_fridge_lbl 00 `"0"'
label define ht03a_fridge_lbl 01 `"1"', add
label define ht03a_fridge_lbl 02 `"2"', add
label define ht03a_fridge_lbl 03 `"3"', add
label define ht03a_fridge_lbl 04 `"4+"', add
label define ht03a_fridge_lbl 99 `"NIU (not in universe)"', add
label values ht03a_fridge ht03a_fridge_lbl

label define ht03a_oven_lbl 00 `"0"'
label define ht03a_oven_lbl 01 `"1"', add
label define ht03a_oven_lbl 02 `"2"', add
label define ht03a_oven_lbl 03 `"3+"', add
label define ht03a_oven_lbl 99 `"NIU (not in universe)"', add
label values ht03a_oven ht03a_oven_lbl

label define ht03a_sewmach_lbl 00 `"0"'
label define ht03a_sewmach_lbl 01 `"1"', add
label define ht03a_sewmach_lbl 02 `"2"', add
label define ht03a_sewmach_lbl 03 `"3"', add
label define ht03a_sewmach_lbl 04 `"4+"', add
label define ht03a_sewmach_lbl 99 `"NIU (not in universe)"', add
label values ht03a_sewmach ht03a_sewmach_lbl

label define ht03a_invert_lbl 00 `"0"'
label define ht03a_invert_lbl 01 `"1"', add
label define ht03a_invert_lbl 02 `"2+"', add
label define ht03a_invert_lbl 99 `"NIU (not in universe)"', add
label values ht03a_invert ht03a_invert_lbl

label define ht03a_washer_lbl 00 `"0"'
label define ht03a_washer_lbl 01 `"1 or more"', add
label define ht03a_washer_lbl 99 `"NIU (not in universe)"', add
label values ht03a_washer ht03a_washer_lbl

label define ht03a_computr_lbl 00 `"0"'
label define ht03a_computr_lbl 01 `"1"', add
label define ht03a_computr_lbl 02 `"2"', add
label define ht03a_computr_lbl 03 `"3+"', add
label define ht03a_computr_lbl 99 `"NIU (not in universe)"', add
label values ht03a_computr ht03a_computr_lbl

label define ht03a_fan_lbl 00 `"0"'
label define ht03a_fan_lbl 01 `"1"', add
label define ht03a_fan_lbl 02 `"2"', add
label define ht03a_fan_lbl 03 `"3"', add
label define ht03a_fan_lbl 04 `"4"', add
label define ht03a_fan_lbl 05 `"5"', add
label define ht03a_fan_lbl 06 `"6+"', add
label define ht03a_fan_lbl 99 `"NIU (not in universe)"', add
label values ht03a_fan ht03a_fan_lbl

label define ht03a_machete_lbl 00 `"0"'
label define ht03a_machete_lbl 01 `"1"', add
label define ht03a_machete_lbl 02 `"2"', add
label define ht03a_machete_lbl 03 `"3"', add
label define ht03a_machete_lbl 04 `"4"', add
label define ht03a_machete_lbl 05 `"5"', add
label define ht03a_machete_lbl 06 `"6"', add
label define ht03a_machete_lbl 07 `"7"', add
label define ht03a_machete_lbl 08 `"8"', add
label define ht03a_machete_lbl 09 `"9 or more"', add
label define ht03a_machete_lbl 99 `"NIU (not in universe)"', add
label values ht03a_machete ht03a_machete_lbl

label define ht03a_shovel_lbl 00 `"0"'
label define ht03a_shovel_lbl 01 `"1"', add
label define ht03a_shovel_lbl 02 `"2"', add
label define ht03a_shovel_lbl 03 `"3"', add
label define ht03a_shovel_lbl 04 `"4"', add
label define ht03a_shovel_lbl 05 `"5+"', add
label define ht03a_shovel_lbl 99 `"NIU (not in universe)"', add
label values ht03a_shovel ht03a_shovel_lbl

label define ht03a_whlbrw_lbl 00 `"0"'
label define ht03a_whlbrw_lbl 01 `"1"', add
label define ht03a_whlbrw_lbl 02 `"2"', add
label define ht03a_whlbrw_lbl 03 `"3+"', add
label define ht03a_whlbrw_lbl 99 `"NIU (not in universe)"', add
label values ht03a_whlbrw ht03a_whlbrw_lbl

label define ht03a_motocyc_lbl 00 `"0"'
label define ht03a_motocyc_lbl 01 `"1"', add
label define ht03a_motocyc_lbl 02 `"2"', add
label define ht03a_motocyc_lbl 03 `"3+"', add
label define ht03a_motocyc_lbl 99 `"NIU (not in universe)"', add
label values ht03a_motocyc ht03a_motocyc_lbl

label define ht03a_bicycle_lbl 00 `"0"'
label define ht03a_bicycle_lbl 01 `"1"', add
label define ht03a_bicycle_lbl 02 `"2"', add
label define ht03a_bicycle_lbl 03 `"3"', add
label define ht03a_bicycle_lbl 04 `"4"', add
label define ht03a_bicycle_lbl 05 `"5+"', add
label define ht03a_bicycle_lbl 99 `"NIU (not in universe)"', add
label values ht03a_bicycle ht03a_bicycle_lbl

label define ht03a_auto_lbl 00 `"0"'
label define ht03a_auto_lbl 01 `"1"', add
label define ht03a_auto_lbl 02 `"2"', add
label define ht03a_auto_lbl 03 `"3"', add
label define ht03a_auto_lbl 04 `"4+"', add
label define ht03a_auto_lbl 99 `"NIU (not in universe)"', add
label values ht03a_auto ht03a_auto_lbl

label define ht03a_hoes_lbl 00 `"0"'
label define ht03a_hoes_lbl 01 `"1"', add
label define ht03a_hoes_lbl 02 `"2"', add
label define ht03a_hoes_lbl 03 `"3"', add
label define ht03a_hoes_lbl 04 `"4"', add
label define ht03a_hoes_lbl 05 `"5"', add
label define ht03a_hoes_lbl 06 `"6"', add
label define ht03a_hoes_lbl 07 `"7"', add
label define ht03a_hoes_lbl 08 `"8"', add
label define ht03a_hoes_lbl 09 `"9 or more"', add
label define ht03a_hoes_lbl 99 `"NIU (not in universe)"', add
label values ht03a_hoes ht03a_hoes_lbl

label define ht03a_plow_lbl 00 `"0"'
label define ht03a_plow_lbl 01 `"1"', add
label define ht03a_plow_lbl 02 `"2"', add
label define ht03a_plow_lbl 03 `"3"', add
label define ht03a_plow_lbl 04 `"4+"', add
label define ht03a_plow_lbl 99 `"NIU (not in universe)"', add
label values ht03a_plow ht03a_plow_lbl

label define ht03a_wkanimal_lbl 00 `"0"'
label define ht03a_wkanimal_lbl 01 `"1"', add
label define ht03a_wkanimal_lbl 02 `"2"', add
label define ht03a_wkanimal_lbl 03 `"3"', add
label define ht03a_wkanimal_lbl 04 `"4"', add
label define ht03a_wkanimal_lbl 05 `"5"', add
label define ht03a_wkanimal_lbl 06 `"6"', add
label define ht03a_wkanimal_lbl 07 `"7"', add
label define ht03a_wkanimal_lbl 08 `"8"', add
label define ht03a_wkanimal_lbl 09 `"9 or more"', add
label define ht03a_wkanimal_lbl 99 `"NIU (not in universe)"', add
label values ht03a_wkanimal ht03a_wkanimal_lbl

label define ht03a_ownrshp_lbl 1 `"Land and house owner"'
label define ht03a_ownrshp_lbl 2 `"Proprietor of the house only"', add
label define ht03a_ownrshp_lbl 3 `"Tenant paying rent on a regular weekly/monthly/yearly basis"', add
label define ht03a_ownrshp_lbl 4 `"Tenant paying rent for another specific time period"', add
label define ht03a_ownrshp_lbl 5 `"Lodged for free"', add
label define ht03a_ownrshp_lbl 6 `"Squatter"', add
label define ht03a_ownrshp_lbl 7 `"Other"', add
label define ht03a_ownrshp_lbl 9 `"NIU (not in universe)"', add
label values ht03a_ownrshp ht03a_ownrshp_lbl

label define ht03a_hhtype_lbl 1 `"Simple household"'
label define ht03a_hhtype_lbl 2 `"Communal household (persons living in community)"', add
label define ht03a_hhtype_lbl 9 `"NIU (not in universe)"', add
label values ht03a_hhtype ht03a_hhtype_lbl

label define ht03a_deathshh_lbl 1 `"Yes"'
label define ht03a_deathshh_lbl 2 `"No"', add
label define ht03a_deathshh_lbl 8 `"Unknown"', add
label define ht03a_deathshh_lbl 9 `"NIU (not in universe)"', add
label values ht03a_deathshh ht03a_deathshh_lbl

label define ht03a_nhhdeath_lbl 0 `"NIU (not in universe)"'
label define ht03a_nhhdeath_lbl 1 `"1"', add
label define ht03a_nhhdeath_lbl 2 `"2"', add
label define ht03a_nhhdeath_lbl 3 `"3"', add
label define ht03a_nhhdeath_lbl 4 `"4"', add
label define ht03a_nhhdeath_lbl 5 `"5+"', add
label define ht03a_nhhdeath_lbl 9 `"Unknown"', add
label values ht03a_nhhdeath ht03a_nhhdeath_lbl

label define ht03a_dthsex1_lbl 1 `"Male"'
label define ht03a_dthsex1_lbl 2 `"Female"', add
label define ht03a_dthsex1_lbl 8 `"Unknown"', add
label define ht03a_dthsex1_lbl 9 `"NIU (not in universe)"', add
label values ht03a_dthsex1 ht03a_dthsex1_lbl

label define ht03a_dthage1_lbl 000 `"0"'
label define ht03a_dthage1_lbl 001 `"1"', add
label define ht03a_dthage1_lbl 002 `"2"', add
label define ht03a_dthage1_lbl 003 `"3"', add
label define ht03a_dthage1_lbl 004 `"4"', add
label define ht03a_dthage1_lbl 005 `"5"', add
label define ht03a_dthage1_lbl 006 `"6"', add
label define ht03a_dthage1_lbl 007 `"7"', add
label define ht03a_dthage1_lbl 008 `"8"', add
label define ht03a_dthage1_lbl 009 `"9"', add
label define ht03a_dthage1_lbl 010 `"10"', add
label define ht03a_dthage1_lbl 011 `"11"', add
label define ht03a_dthage1_lbl 012 `"12"', add
label define ht03a_dthage1_lbl 013 `"13"', add
label define ht03a_dthage1_lbl 014 `"14"', add
label define ht03a_dthage1_lbl 015 `"15"', add
label define ht03a_dthage1_lbl 016 `"16"', add
label define ht03a_dthage1_lbl 017 `"17"', add
label define ht03a_dthage1_lbl 018 `"18"', add
label define ht03a_dthage1_lbl 019 `"19"', add
label define ht03a_dthage1_lbl 020 `"20"', add
label define ht03a_dthage1_lbl 021 `"21"', add
label define ht03a_dthage1_lbl 022 `"22"', add
label define ht03a_dthage1_lbl 023 `"23"', add
label define ht03a_dthage1_lbl 024 `"24"', add
label define ht03a_dthage1_lbl 025 `"25"', add
label define ht03a_dthage1_lbl 026 `"26"', add
label define ht03a_dthage1_lbl 027 `"27"', add
label define ht03a_dthage1_lbl 028 `"28"', add
label define ht03a_dthage1_lbl 029 `"29"', add
label define ht03a_dthage1_lbl 030 `"30"', add
label define ht03a_dthage1_lbl 031 `"31"', add
label define ht03a_dthage1_lbl 032 `"32"', add
label define ht03a_dthage1_lbl 033 `"33"', add
label define ht03a_dthage1_lbl 034 `"34"', add
label define ht03a_dthage1_lbl 035 `"35"', add
label define ht03a_dthage1_lbl 036 `"36"', add
label define ht03a_dthage1_lbl 037 `"37"', add
label define ht03a_dthage1_lbl 038 `"38"', add
label define ht03a_dthage1_lbl 039 `"39"', add
label define ht03a_dthage1_lbl 040 `"40"', add
label define ht03a_dthage1_lbl 041 `"41"', add
label define ht03a_dthage1_lbl 042 `"42"', add
label define ht03a_dthage1_lbl 043 `"43"', add
label define ht03a_dthage1_lbl 044 `"44"', add
label define ht03a_dthage1_lbl 045 `"45"', add
label define ht03a_dthage1_lbl 046 `"46"', add
label define ht03a_dthage1_lbl 047 `"47"', add
label define ht03a_dthage1_lbl 048 `"48"', add
label define ht03a_dthage1_lbl 049 `"49"', add
label define ht03a_dthage1_lbl 050 `"50"', add
label define ht03a_dthage1_lbl 051 `"51"', add
label define ht03a_dthage1_lbl 052 `"52"', add
label define ht03a_dthage1_lbl 053 `"53"', add
label define ht03a_dthage1_lbl 054 `"54"', add
label define ht03a_dthage1_lbl 055 `"55"', add
label define ht03a_dthage1_lbl 056 `"56"', add
label define ht03a_dthage1_lbl 057 `"57"', add
label define ht03a_dthage1_lbl 058 `"58"', add
label define ht03a_dthage1_lbl 059 `"59"', add
label define ht03a_dthage1_lbl 060 `"60"', add
label define ht03a_dthage1_lbl 061 `"61"', add
label define ht03a_dthage1_lbl 062 `"62"', add
label define ht03a_dthage1_lbl 063 `"63"', add
label define ht03a_dthage1_lbl 064 `"64"', add
label define ht03a_dthage1_lbl 065 `"65"', add
label define ht03a_dthage1_lbl 066 `"66"', add
label define ht03a_dthage1_lbl 067 `"67"', add
label define ht03a_dthage1_lbl 068 `"68"', add
label define ht03a_dthage1_lbl 069 `"69"', add
label define ht03a_dthage1_lbl 070 `"70"', add
label define ht03a_dthage1_lbl 071 `"71"', add
label define ht03a_dthage1_lbl 072 `"72"', add
label define ht03a_dthage1_lbl 073 `"73"', add
label define ht03a_dthage1_lbl 074 `"74"', add
label define ht03a_dthage1_lbl 075 `"75"', add
label define ht03a_dthage1_lbl 076 `"76"', add
label define ht03a_dthage1_lbl 077 `"77"', add
label define ht03a_dthage1_lbl 078 `"78"', add
label define ht03a_dthage1_lbl 079 `"79"', add
label define ht03a_dthage1_lbl 080 `"80"', add
label define ht03a_dthage1_lbl 081 `"81"', add
label define ht03a_dthage1_lbl 082 `"82"', add
label define ht03a_dthage1_lbl 083 `"83"', add
label define ht03a_dthage1_lbl 084 `"84"', add
label define ht03a_dthage1_lbl 085 `"85"', add
label define ht03a_dthage1_lbl 086 `"86"', add
label define ht03a_dthage1_lbl 087 `"87"', add
label define ht03a_dthage1_lbl 088 `"88"', add
label define ht03a_dthage1_lbl 089 `"89"', add
label define ht03a_dthage1_lbl 090 `"90"', add
label define ht03a_dthage1_lbl 091 `"91"', add
label define ht03a_dthage1_lbl 092 `"92"', add
label define ht03a_dthage1_lbl 093 `"93"', add
label define ht03a_dthage1_lbl 094 `"94"', add
label define ht03a_dthage1_lbl 095 `"95"', add
label define ht03a_dthage1_lbl 096 `"96"', add
label define ht03a_dthage1_lbl 097 `"97"', add
label define ht03a_dthage1_lbl 098 `"98"', add
label define ht03a_dthage1_lbl 099 `"99"', add
label define ht03a_dthage1_lbl 100 `"100+"', add
label define ht03a_dthage1_lbl 998 `"Unknown"', add
label define ht03a_dthage1_lbl 999 `"NIU (not in universe)"', add
label values ht03a_dthage1 ht03a_dthage1_lbl

label define ht03a_dthsex2_lbl 1 `"Male"'
label define ht03a_dthsex2_lbl 2 `"Female"', add
label define ht03a_dthsex2_lbl 8 `"Unknown"', add
label define ht03a_dthsex2_lbl 9 `"NIU (not in universe)"', add
label values ht03a_dthsex2 ht03a_dthsex2_lbl

label define ht03a_dthsex3_lbl 1 `"Male"'
label define ht03a_dthsex3_lbl 2 `"Female"', add
label define ht03a_dthsex3_lbl 8 `"Unknown"', add
label define ht03a_dthsex3_lbl 9 `"NIU (not in universe)"', add
label values ht03a_dthsex3 ht03a_dthsex3_lbl

label define ht03a_sizehh_lbl 000 `"0"'
label define ht03a_sizehh_lbl 001 `"1"', add
label define ht03a_sizehh_lbl 002 `"2"', add
label define ht03a_sizehh_lbl 003 `"3"', add
label define ht03a_sizehh_lbl 004 `"4"', add
label define ht03a_sizehh_lbl 005 `"5"', add
label define ht03a_sizehh_lbl 006 `"6"', add
label define ht03a_sizehh_lbl 007 `"7"', add
label define ht03a_sizehh_lbl 008 `"8"', add
label define ht03a_sizehh_lbl 009 `"9"', add
label define ht03a_sizehh_lbl 010 `"10"', add
label define ht03a_sizehh_lbl 011 `"11"', add
label define ht03a_sizehh_lbl 012 `"12"', add
label define ht03a_sizehh_lbl 013 `"13"', add
label define ht03a_sizehh_lbl 014 `"14"', add
label define ht03a_sizehh_lbl 015 `"15"', add
label define ht03a_sizehh_lbl 016 `"16"', add
label define ht03a_sizehh_lbl 017 `"17"', add
label define ht03a_sizehh_lbl 018 `"18"', add
label define ht03a_sizehh_lbl 019 `"19"', add
label define ht03a_sizehh_lbl 020 `"20"', add
label define ht03a_sizehh_lbl 021 `"21"', add
label define ht03a_sizehh_lbl 022 `"22"', add
label define ht03a_sizehh_lbl 023 `"23"', add
label define ht03a_sizehh_lbl 024 `"24"', add
label define ht03a_sizehh_lbl 025 `"25"', add
label define ht03a_sizehh_lbl 026 `"26"', add
label define ht03a_sizehh_lbl 027 `"27"', add
label define ht03a_sizehh_lbl 029 `"29"', add
label define ht03a_sizehh_lbl 030 `"30"', add
label define ht03a_sizehh_lbl 031 `"31"', add
label define ht03a_sizehh_lbl 032 `"32"', add
label define ht03a_sizehh_lbl 033 `"33"', add
label define ht03a_sizehh_lbl 034 `"34"', add
label define ht03a_sizehh_lbl 035 `"35"', add
label define ht03a_sizehh_lbl 036 `"36"', add
label define ht03a_sizehh_lbl 038 `"38"', add
label define ht03a_sizehh_lbl 039 `"39"', add
label define ht03a_sizehh_lbl 040 `"40"', add
label define ht03a_sizehh_lbl 041 `"41"', add
label define ht03a_sizehh_lbl 042 `"42"', add
label define ht03a_sizehh_lbl 044 `"44"', add
label define ht03a_sizehh_lbl 045 `"45"', add
label define ht03a_sizehh_lbl 049 `"49"', add
label define ht03a_sizehh_lbl 051 `"51"', add
label define ht03a_sizehh_lbl 055 `"55"', add
label define ht03a_sizehh_lbl 057 `"57"', add
label define ht03a_sizehh_lbl 058 `"58"', add
label define ht03a_sizehh_lbl 059 `"59"', add
label define ht03a_sizehh_lbl 062 `"62"', add
label define ht03a_sizehh_lbl 064 `"64"', add
label define ht03a_sizehh_lbl 066 `"66"', add
label define ht03a_sizehh_lbl 069 `"69"', add
label define ht03a_sizehh_lbl 076 `"76"', add
label define ht03a_sizehh_lbl 087 `"87"', add
label define ht03a_sizehh_lbl 096 `"96"', add
label define ht03a_sizehh_lbl 099 `"99"', add
label define ht03a_sizehh_lbl 999 `"Unknown"', add
label values ht03a_sizehh ht03a_sizehh_lbl

label define ht03a_npersons_lbl 0 `"Household with 30 or fewer persons"'
label define ht03a_npersons_lbl 1 `"Household with more than 30 persons"', add
label values ht03a_npersons ht03a_npersons_lbl

label define ht03a_collectv_lbl 0 `"Not collective"'
label define ht03a_collectv_lbl 1 `"Collective household"', add
label values ht03a_collectv ht03a_collectv_lbl

label define ht03a_pernum_lbl 00 `"Household record"'
label define ht03a_pernum_lbl 01 `"1"', add
label define ht03a_pernum_lbl 02 `"2"', add
label define ht03a_pernum_lbl 03 `"3"', add
label define ht03a_pernum_lbl 04 `"4"', add
label define ht03a_pernum_lbl 05 `"5"', add
label define ht03a_pernum_lbl 06 `"6"', add
label define ht03a_pernum_lbl 07 `"7"', add
label define ht03a_pernum_lbl 08 `"8"', add
label define ht03a_pernum_lbl 09 `"9"', add
label define ht03a_pernum_lbl 10 `"10"', add
label define ht03a_pernum_lbl 11 `"11"', add
label define ht03a_pernum_lbl 12 `"12"', add
label define ht03a_pernum_lbl 13 `"13"', add
label define ht03a_pernum_lbl 14 `"14"', add
label define ht03a_pernum_lbl 15 `"15"', add
label define ht03a_pernum_lbl 16 `"16"', add
label define ht03a_pernum_lbl 17 `"17"', add
label define ht03a_pernum_lbl 18 `"18"', add
label define ht03a_pernum_lbl 19 `"19"', add
label define ht03a_pernum_lbl 20 `"20"', add
label define ht03a_pernum_lbl 21 `"21"', add
label define ht03a_pernum_lbl 22 `"22"', add
label define ht03a_pernum_lbl 23 `"23"', add
label define ht03a_pernum_lbl 24 `"24"', add
label define ht03a_pernum_lbl 25 `"25"', add
label define ht03a_pernum_lbl 26 `"26"', add
label define ht03a_pernum_lbl 27 `"27"', add
label define ht03a_pernum_lbl 28 `"28"', add
label define ht03a_pernum_lbl 29 `"29"', add
label define ht03a_pernum_lbl 30 `"30"', add
label values ht03a_pernum ht03a_pernum_lbl

label define ht03a_seqnum_lbl 000 `"0"'
label define ht03a_seqnum_lbl 001 `"1"', add
label define ht03a_seqnum_lbl 002 `"2"', add
label define ht03a_seqnum_lbl 003 `"3"', add
label define ht03a_seqnum_lbl 004 `"4"', add
label define ht03a_seqnum_lbl 005 `"5"', add
label define ht03a_seqnum_lbl 006 `"6"', add
label define ht03a_seqnum_lbl 007 `"7"', add
label define ht03a_seqnum_lbl 008 `"8"', add
label define ht03a_seqnum_lbl 009 `"9"', add
label define ht03a_seqnum_lbl 010 `"10"', add
label define ht03a_seqnum_lbl 011 `"11"', add
label define ht03a_seqnum_lbl 012 `"12"', add
label define ht03a_seqnum_lbl 013 `"13"', add
label define ht03a_seqnum_lbl 014 `"14"', add
label define ht03a_seqnum_lbl 015 `"15"', add
label define ht03a_seqnum_lbl 016 `"16"', add
label define ht03a_seqnum_lbl 017 `"17"', add
label define ht03a_seqnum_lbl 018 `"18"', add
label define ht03a_seqnum_lbl 019 `"19"', add
label define ht03a_seqnum_lbl 020 `"20"', add
label define ht03a_seqnum_lbl 021 `"21"', add
label define ht03a_seqnum_lbl 022 `"22"', add
label define ht03a_seqnum_lbl 023 `"23"', add
label define ht03a_seqnum_lbl 024 `"24"', add
label define ht03a_seqnum_lbl 025 `"25"', add
label define ht03a_seqnum_lbl 026 `"26"', add
label define ht03a_seqnum_lbl 027 `"27"', add
label define ht03a_seqnum_lbl 028 `"28"', add
label define ht03a_seqnum_lbl 029 `"29"', add
label define ht03a_seqnum_lbl 030 `"30"', add
label define ht03a_seqnum_lbl 031 `"31"', add
label define ht03a_seqnum_lbl 032 `"32"', add
label define ht03a_seqnum_lbl 040 `"40"', add
label define ht03a_seqnum_lbl 041 `"41"', add
label define ht03a_seqnum_lbl 042 `"42"', add
label define ht03a_seqnum_lbl 050 `"50"', add
label define ht03a_seqnum_lbl 051 `"51"', add
label define ht03a_seqnum_lbl 052 `"52"', add
label define ht03a_seqnum_lbl 060 `"60"', add
label define ht03a_seqnum_lbl 062 `"62"', add
label define ht03a_seqnum_lbl 070 `"70"', add
label define ht03a_seqnum_lbl 071 `"71"', add
label define ht03a_seqnum_lbl 072 `"72"', add
label define ht03a_seqnum_lbl 080 `"80"', add
label define ht03a_seqnum_lbl 081 `"81"', add
label define ht03a_seqnum_lbl 082 `"82"', add
label define ht03a_seqnum_lbl 090 `"90"', add
label define ht03a_seqnum_lbl 100 `"Unknown"', add
label values ht03a_seqnum ht03a_seqnum_lbl

label define ht03a_ordernum_lbl 01 `"1"'
label define ht03a_ordernum_lbl 02 `"2"', add
label define ht03a_ordernum_lbl 03 `"3"', add
label define ht03a_ordernum_lbl 04 `"4"', add
label define ht03a_ordernum_lbl 05 `"5"', add
label define ht03a_ordernum_lbl 06 `"6"', add
label define ht03a_ordernum_lbl 07 `"7"', add
label define ht03a_ordernum_lbl 08 `"8"', add
label define ht03a_ordernum_lbl 09 `"9"', add
label define ht03a_ordernum_lbl 10 `"10"', add
label define ht03a_ordernum_lbl 11 `"11"', add
label define ht03a_ordernum_lbl 12 `"12"', add
label define ht03a_ordernum_lbl 13 `"13"', add
label define ht03a_ordernum_lbl 14 `"14"', add
label define ht03a_ordernum_lbl 15 `"15"', add
label define ht03a_ordernum_lbl 16 `"16"', add
label define ht03a_ordernum_lbl 17 `"17"', add
label define ht03a_ordernum_lbl 18 `"18"', add
label define ht03a_ordernum_lbl 19 `"19"', add
label define ht03a_ordernum_lbl 20 `"20"', add
label define ht03a_ordernum_lbl 21 `"21"', add
label define ht03a_ordernum_lbl 22 `"22"', add
label define ht03a_ordernum_lbl 23 `"23"', add
label define ht03a_ordernum_lbl 24 `"24"', add
label define ht03a_ordernum_lbl 25 `"25"', add
label define ht03a_ordernum_lbl 26 `"26"', add
label define ht03a_ordernum_lbl 27 `"27"', add
label define ht03a_ordernum_lbl 28 `"28"', add
label define ht03a_ordernum_lbl 29 `"29"', add
label define ht03a_ordernum_lbl 30 `"30"', add
label define ht03a_ordernum_lbl 40 `"40"', add
label define ht03a_ordernum_lbl 50 `"50"', add
label define ht03a_ordernum_lbl 60 `"60"', add
label define ht03a_ordernum_lbl 70 `"70"', add
label define ht03a_ordernum_lbl 80 `"80"', add
label define ht03a_ordernum_lbl 90 `"90"', add
label values ht03a_ordernum ht03a_ordernum_lbl

label define ht03a_relate_lbl 01 `"Head of household"'
label define ht03a_relate_lbl 02 `"Spouse or long-term partner"', add
label define ht03a_relate_lbl 03 `"Son or daughter"', add
label define ht03a_relate_lbl 04 `"Parent"', add
label define ht03a_relate_lbl 05 `"Grandchild"', add
label define ht03a_relate_lbl 06 `"Parent-in-Law"', add
label define ht03a_relate_lbl 07 `"Stepchild"', add
label define ht03a_relate_lbl 08 `"Other relative"', add
label define ht03a_relate_lbl 09 `"Employee (domestic)"', add
label define ht03a_relate_lbl 10 `"Child taken in as a domestic employee"', add
label define ht03a_relate_lbl 11 `"Other"', add
label values ht03a_relate ht03a_relate_lbl

label define ht03a_sex_lbl 1 `"Male"'
label define ht03a_sex_lbl 2 `"Female"', add
label values ht03a_sex ht03a_sex_lbl

label define ht03a_age_lbl 000 `"Less than one year"'
label define ht03a_age_lbl 001 `"1"', add
label define ht03a_age_lbl 002 `"2"', add
label define ht03a_age_lbl 003 `"3"', add
label define ht03a_age_lbl 004 `"4"', add
label define ht03a_age_lbl 005 `"5"', add
label define ht03a_age_lbl 006 `"6"', add
label define ht03a_age_lbl 007 `"7"', add
label define ht03a_age_lbl 008 `"8"', add
label define ht03a_age_lbl 009 `"9"', add
label define ht03a_age_lbl 010 `"10"', add
label define ht03a_age_lbl 011 `"11"', add
label define ht03a_age_lbl 012 `"12"', add
label define ht03a_age_lbl 013 `"13"', add
label define ht03a_age_lbl 014 `"14"', add
label define ht03a_age_lbl 015 `"15"', add
label define ht03a_age_lbl 016 `"16"', add
label define ht03a_age_lbl 017 `"17"', add
label define ht03a_age_lbl 018 `"18"', add
label define ht03a_age_lbl 019 `"19"', add
label define ht03a_age_lbl 020 `"20"', add
label define ht03a_age_lbl 021 `"21"', add
label define ht03a_age_lbl 022 `"22"', add
label define ht03a_age_lbl 023 `"23"', add
label define ht03a_age_lbl 024 `"24"', add
label define ht03a_age_lbl 025 `"25"', add
label define ht03a_age_lbl 026 `"26"', add
label define ht03a_age_lbl 027 `"27"', add
label define ht03a_age_lbl 028 `"28"', add
label define ht03a_age_lbl 029 `"29"', add
label define ht03a_age_lbl 030 `"30"', add
label define ht03a_age_lbl 031 `"31"', add
label define ht03a_age_lbl 032 `"32"', add
label define ht03a_age_lbl 033 `"33"', add
label define ht03a_age_lbl 034 `"34"', add
label define ht03a_age_lbl 035 `"35"', add
label define ht03a_age_lbl 036 `"36"', add
label define ht03a_age_lbl 037 `"37"', add
label define ht03a_age_lbl 038 `"38"', add
label define ht03a_age_lbl 039 `"39"', add
label define ht03a_age_lbl 040 `"40"', add
label define ht03a_age_lbl 041 `"41"', add
label define ht03a_age_lbl 042 `"42"', add
label define ht03a_age_lbl 043 `"43"', add
label define ht03a_age_lbl 044 `"44"', add
label define ht03a_age_lbl 045 `"45"', add
label define ht03a_age_lbl 046 `"46"', add
label define ht03a_age_lbl 047 `"47"', add
label define ht03a_age_lbl 048 `"48"', add
label define ht03a_age_lbl 049 `"49"', add
label define ht03a_age_lbl 050 `"50"', add
label define ht03a_age_lbl 051 `"51"', add
label define ht03a_age_lbl 052 `"52"', add
label define ht03a_age_lbl 053 `"53"', add
label define ht03a_age_lbl 054 `"54"', add
label define ht03a_age_lbl 055 `"55"', add
label define ht03a_age_lbl 056 `"56"', add
label define ht03a_age_lbl 057 `"57"', add
label define ht03a_age_lbl 058 `"58"', add
label define ht03a_age_lbl 059 `"59"', add
label define ht03a_age_lbl 060 `"60"', add
label define ht03a_age_lbl 061 `"61"', add
label define ht03a_age_lbl 062 `"62"', add
label define ht03a_age_lbl 063 `"63"', add
label define ht03a_age_lbl 064 `"64"', add
label define ht03a_age_lbl 065 `"65"', add
label define ht03a_age_lbl 066 `"66"', add
label define ht03a_age_lbl 067 `"67"', add
label define ht03a_age_lbl 068 `"68"', add
label define ht03a_age_lbl 069 `"69"', add
label define ht03a_age_lbl 070 `"70"', add
label define ht03a_age_lbl 071 `"71"', add
label define ht03a_age_lbl 072 `"72"', add
label define ht03a_age_lbl 073 `"73"', add
label define ht03a_age_lbl 074 `"74"', add
label define ht03a_age_lbl 075 `"75"', add
label define ht03a_age_lbl 076 `"76"', add
label define ht03a_age_lbl 077 `"77"', add
label define ht03a_age_lbl 078 `"78"', add
label define ht03a_age_lbl 079 `"79"', add
label define ht03a_age_lbl 080 `"80"', add
label define ht03a_age_lbl 081 `"81"', add
label define ht03a_age_lbl 082 `"82"', add
label define ht03a_age_lbl 083 `"83"', add
label define ht03a_age_lbl 084 `"84"', add
label define ht03a_age_lbl 085 `"85"', add
label define ht03a_age_lbl 086 `"86"', add
label define ht03a_age_lbl 087 `"87"', add
label define ht03a_age_lbl 088 `"88"', add
label define ht03a_age_lbl 089 `"89"', add
label define ht03a_age_lbl 090 `"90"', add
label define ht03a_age_lbl 091 `"91"', add
label define ht03a_age_lbl 092 `"92"', add
label define ht03a_age_lbl 093 `"93"', add
label define ht03a_age_lbl 094 `"94"', add
label define ht03a_age_lbl 095 `"95"', add
label define ht03a_age_lbl 096 `"96"', add
label define ht03a_age_lbl 097 `"97"', add
label define ht03a_age_lbl 098 `"98"', add
label define ht03a_age_lbl 099 `"99"', add
label define ht03a_age_lbl 100 `"100+"', add
label values ht03a_age ht03a_age_lbl

label define ht03a_bthcert_lbl 1 `"Yes"'
label define ht03a_bthcert_lbl 2 `"No"', add
label define ht03a_bthcert_lbl 3 `"Do not know"', add
label values ht03a_bthcert ht03a_bthcert_lbl

label define ht03a_mothaliv_lbl 1 `"Yes"'
label define ht03a_mothaliv_lbl 2 `"No"', add
label define ht03a_mothaliv_lbl 3 `"Do not know"', add
label values ht03a_mothaliv ht03a_mothaliv_lbl

label define ht03a_oldchdrs_lbl 1 `"Yes"'
label define ht03a_oldchdrs_lbl 2 `"No"', add
label define ht03a_oldchdrs_lbl 3 `"Do not know"', add
label values ht03a_oldchdrs ht03a_oldchdrs_lbl

label define ht03a_relig_lbl 01 `"None"'
label define ht03a_relig_lbl 02 `"Catholic"', add
label define ht03a_relig_lbl 03 `"Adventist"', add
label define ht03a_relig_lbl 04 `"Jehovah's witness"', add
label define ht03a_relig_lbl 05 `"Baptist"', add
label define ht03a_relig_lbl 06 `"Methodist"', add
label define ht03a_relig_lbl 07 `"Episcopal"', add
label define ht03a_relig_lbl 08 `"Pentecostal"', add
label define ht03a_relig_lbl 09 `"Voodoo"', add
label define ht03a_relig_lbl 10 `"Muslim"', add
label define ht03a_relig_lbl 11 `"Mormon"', add
label define ht03a_relig_lbl 12 `"Other"', add
label values ht03a_relig ht03a_relig_lbl

label define ht03a_disab_lbl 0 `"No disability"'
label define ht03a_disab_lbl 1 `"Yes"', add
label values ht03a_disab ht03a_disab_lbl

label define ht03a_blind_lbl 0 `"Other disabilities, excluding blindness"'
label define ht03a_blind_lbl 1 `"Blindness"', add
label define ht03a_blind_lbl 8 `"Unknown"', add
label define ht03a_blind_lbl 9 `"NIU (not in universe)"', add
label values ht03a_blind ht03a_blind_lbl

label define ht03a_deaf_lbl 0 `"Other disabilities, excluding deafness"'
label define ht03a_deaf_lbl 1 `"Deafness"', add
label define ht03a_deaf_lbl 8 `"Unknown"', add
label define ht03a_deaf_lbl 9 `"NIU (not in universe)"', add
label values ht03a_deaf ht03a_deaf_lbl

label define ht03a_mute_lbl 0 `"Other disabilities, excluding mute"'
label define ht03a_mute_lbl 1 `"Mute"', add
label define ht03a_mute_lbl 8 `"Unknown"', add
label define ht03a_mute_lbl 9 `"NIU (not in universe)"', add
label values ht03a_mute ht03a_mute_lbl

label define ht03a_uplimb_lbl 0 `"Other disabilities, excluding upper limbs"'
label define ht03a_uplimb_lbl 1 `"Disability of the upper limbs"', add
label define ht03a_uplimb_lbl 8 `"Unknown"', add
label define ht03a_uplimb_lbl 9 `"NIU (not in universe)"', add
label values ht03a_uplimb ht03a_uplimb_lbl

label define ht03a_lowlimb_lbl 0 `"Other disabilities, excluding lower limbs"'
label define ht03a_lowlimb_lbl 1 `"Disability of the lower limbs"', add
label define ht03a_lowlimb_lbl 8 `"Unknown"', add
label define ht03a_lowlimb_lbl 9 `"NIU (not in universe)"', add
label values ht03a_lowlimb ht03a_lowlimb_lbl

label define ht03a_mentald_lbl 1 `"Developmental disability"'
label define ht03a_mentald_lbl 0 `"Other disabilities, excluding mental development"', add
label define ht03a_mentald_lbl 8 `"Unknown"', add
label define ht03a_mentald_lbl 9 `"NIU (not in universe)"', add
label values ht03a_mentald ht03a_mentald_lbl

label define ht03a_mentalill_lbl 0 `"Other disabilities, excluding mental illness"'
label define ht03a_mentalill_lbl 1 `"Mental illness"', add
label define ht03a_mentalill_lbl 8 `"Unknown"', add
label define ht03a_mentalill_lbl 9 `"NIU (not in universe)"', add
label values ht03a_mentalill ht03a_mentalill_lbl

label define ht03a_othdisab_lbl 0 `"Other disabilities, excluding those in <other disabilities>"'
label define ht03a_othdisab_lbl 1 `"Other"', add
label define ht03a_othdisab_lbl 8 `"Unknown"', add
label define ht03a_othdisab_lbl 9 `"NIU (not in universe)"', add
label values ht03a_othdisab ht03a_othdisab_lbl

label define ht03a_bpl2_lbl 01 `"Foreign country"'
label define ht03a_bpl2_lbl 11 `"Port-au-Prince"', add
label define ht03a_bpl2_lbl 12 `"Léogâne"', add
label define ht03a_bpl2_lbl 13 `"Croix-des-Bouquets"', add
label define ht03a_bpl2_lbl 14 `"L'Arcahaie"', add
label define ht03a_bpl2_lbl 15 `"La Gonâve"', add
label define ht03a_bpl2_lbl 21 `"Jacmel"', add
label define ht03a_bpl2_lbl 22 `"Bainet"', add
label define ht03a_bpl2_lbl 23 `"Belle-Anse"', add
label define ht03a_bpl2_lbl 31 `"Le Cap-Haïtien"', add
label define ht03a_bpl2_lbl 32 `"L'Acul-du-Nord"', add
label define ht03a_bpl2_lbl 33 `"Grande-Rivière du Nord"', add
label define ht03a_bpl2_lbl 34 `"Saint-Raphaël"', add
label define ht03a_bpl2_lbl 35 `"Borgne"', add
label define ht03a_bpl2_lbl 36 `"Le Limbé"', add
label define ht03a_bpl2_lbl 37 `"Plaisance"', add
label define ht03a_bpl2_lbl 41 `"Fort-Liberté"', add
label define ht03a_bpl2_lbl 42 `"Ouanaminthe"', add
label define ht03a_bpl2_lbl 43 `"Le Trou-du-Nord"', add
label define ht03a_bpl2_lbl 44 `"Vallières"', add
label define ht03a_bpl2_lbl 51 `"Les Gonaïves"', add
label define ht03a_bpl2_lbl 52 `"Gros-Morne"', add
label define ht03a_bpl2_lbl 53 `"Saint-Marc"', add
label define ht03a_bpl2_lbl 54 `"Dessalines"', add
label define ht03a_bpl2_lbl 55 `"Marmelade"', add
label define ht03a_bpl2_lbl 61 `"Hinche"', add
label define ht03a_bpl2_lbl 62 `"Mirebalais"', add
label define ht03a_bpl2_lbl 63 `"Lascahobas"', add
label define ht03a_bpl2_lbl 64 `"Cerca la Source"', add
label define ht03a_bpl2_lbl 71 `"Les Cayes"', add
label define ht03a_bpl2_lbl 72 `"Port-Salut"', add
label define ht03a_bpl2_lbl 73 `"Aquin"', add
label define ht03a_bpl2_lbl 74 `"Les Côteaux"', add
label define ht03a_bpl2_lbl 75 `"Les Chardonnières"', add
label define ht03a_bpl2_lbl 81 `"Jérémie"', add
label define ht03a_bpl2_lbl 82 `"Anse d'Hainault"', add
label define ht03a_bpl2_lbl 83 `"Corail"', add
label define ht03a_bpl2_lbl 84 `"Miragoâne"', add
label define ht03a_bpl2_lbl 85 `"Anse-à-Veau"', add
label define ht03a_bpl2_lbl 91 `"Port-de-Paix"', add
label define ht03a_bpl2_lbl 92 `"Saint-Louis du Nord"', add
label define ht03a_bpl2_lbl 93 `"Môle Saint-Nicolas"', add
label values ht03a_bpl2 ht03a_bpl2_lbl

label define ht03a_resbpl_lbl 1 `"Since birth"'
label define ht03a_resbpl_lbl 2 `"Less than 1 year"', add
label define ht03a_resbpl_lbl 3 `"1 to 4 years"', add
label define ht03a_resbpl_lbl 4 `"5 to 9 years"', add
label define ht03a_resbpl_lbl 5 `"10 years or more"', add
label define ht03a_resbpl_lbl 6 `"Unknown"', add
label values ht03a_resbpl ht03a_resbpl_lbl

label define ht03a_prevres2_lbl 01 `"Foreign country"'
label define ht03a_prevres2_lbl 11 `"Port-au-Prince"', add
label define ht03a_prevres2_lbl 12 `"Léogâne"', add
label define ht03a_prevres2_lbl 13 `"Croix-des-Bouquets"', add
label define ht03a_prevres2_lbl 14 `"L'Arcahaie"', add
label define ht03a_prevres2_lbl 15 `"La Gonâve"', add
label define ht03a_prevres2_lbl 21 `"Jacmel"', add
label define ht03a_prevres2_lbl 22 `"Bainet"', add
label define ht03a_prevres2_lbl 23 `"Belle-Anse"', add
label define ht03a_prevres2_lbl 31 `"Le Cap-Haïtien"', add
label define ht03a_prevres2_lbl 32 `"L'Acul-du-Nord"', add
label define ht03a_prevres2_lbl 33 `"Grande-Rivière du Nord"', add
label define ht03a_prevres2_lbl 34 `"Saint-Raphaël"', add
label define ht03a_prevres2_lbl 35 `"Borgne"', add
label define ht03a_prevres2_lbl 36 `"Le Limbé"', add
label define ht03a_prevres2_lbl 37 `"Plaisance"', add
label define ht03a_prevres2_lbl 41 `"Fort-Liberté"', add
label define ht03a_prevres2_lbl 42 `"Ouanaminthe"', add
label define ht03a_prevres2_lbl 43 `"Le Trou-du-Nord"', add
label define ht03a_prevres2_lbl 44 `"Vallières"', add
label define ht03a_prevres2_lbl 51 `"Les Gonaïves"', add
label define ht03a_prevres2_lbl 52 `"Gros-Morne"', add
label define ht03a_prevres2_lbl 53 `"Saint-Marc"', add
label define ht03a_prevres2_lbl 54 `"Dessalines"', add
label define ht03a_prevres2_lbl 55 `"Marmelade"', add
label define ht03a_prevres2_lbl 61 `"Hinche"', add
label define ht03a_prevres2_lbl 62 `"Mirebalais"', add
label define ht03a_prevres2_lbl 63 `"Lascahobas"', add
label define ht03a_prevres2_lbl 64 `"Cerca la Source"', add
label define ht03a_prevres2_lbl 71 `"Les Cayes"', add
label define ht03a_prevres2_lbl 72 `"Port-Salut"', add
label define ht03a_prevres2_lbl 73 `"Aquin"', add
label define ht03a_prevres2_lbl 74 `"Les Côteaux"', add
label define ht03a_prevres2_lbl 75 `"Les Chardonnières"', add
label define ht03a_prevres2_lbl 81 `"Jérémie"', add
label define ht03a_prevres2_lbl 82 `"Anse d'Hainault"', add
label define ht03a_prevres2_lbl 83 `"Corail"', add
label define ht03a_prevres2_lbl 84 `"Miragoâne"', add
label define ht03a_prevres2_lbl 85 `"Anse-à-Veau"', add
label define ht03a_prevres2_lbl 91 `"Port-de-Paix"', add
label define ht03a_prevres2_lbl 92 `"Saint-Louis du Nord"', add
label define ht03a_prevres2_lbl 93 `"Môle Saint-Nicolas"', add
label define ht03a_prevres2_lbl 98 `"Unknown"', add
label define ht03a_prevres2_lbl 99 `"NIU (not in universe)"', add
label values ht03a_prevres2 ht03a_prevres2_lbl

label define ht03a_read_lbl 1 `"Yes"'
label define ht03a_read_lbl 2 `"No"', add
label define ht03a_read_lbl 9 `"NIU (not in universe)"', add
label values ht03a_read ht03a_read_lbl

label define ht03a_educ_lbl 01 `"None"'
label define ht03a_educ_lbl 02 `"Pre-school"', add
label define ht03a_educ_lbl 03 `"Primary / first and second cycle in basic"', add
label define ht03a_educ_lbl 04 `"Secondary (4th to 6th) /  third cycle in basic"', add
label define ht03a_educ_lbl 05 `"Secondary (3rd to philo)"', add
label define ht03a_educ_lbl 06 `"University, first cycle"', add
label define ht03a_educ_lbl 07 `"University, second cycle"', add
label define ht03a_educ_lbl 08 `"University, third cycle"', add
label define ht03a_educ_lbl 99 `"NIU (not in universe)"', add
label values ht03a_educ ht03a_educ_lbl

label define ht03a_yreduc_lbl 01 `"Pre-school, section for younger children"'
label define ht03a_yreduc_lbl 02 `"Pre-school, section for middle-age children"', add
label define ht03a_yreduc_lbl 03 `"Pre-school, section for big children"', add
label define ht03a_yreduc_lbl 11 `"Preparatory 1 or 1st in basic (année fondamental)"', add
label define ht03a_yreduc_lbl 12 `"Preparatory 2 or 2nd in basic (année fondamental)"', add
label define ht03a_yreduc_lbl 13 `"Elementary 1 or 3th in basic (année fondamental)"', add
label define ht03a_yreduc_lbl 14 `"Elementary 2 or 4th in basic (année fondamental)"', add
label define ht03a_yreduc_lbl 15 `"Intermediate 1 or 5th in basic (année fondamental)"', add
label define ht03a_yreduc_lbl 16 `"Intermediate 2 or 6th in basic (année fondamental)"', add
label define ht03a_yreduc_lbl 21 `"6th in traditional secondary or 7th in basic (année fondamental)"', add
label define ht03a_yreduc_lbl 22 `"5th in traditional secondary or 8th in basic (année fondamental)"', add
label define ht03a_yreduc_lbl 23 `"4th in traditional secondary or 9th in basic (année fondamental)"', add
label define ht03a_yreduc_lbl 24 `"3rd in traditional secondary (troisième)"', add
label define ht03a_yreduc_lbl 25 `"2nd in traditional secondary (seconde)"', add
label define ht03a_yreduc_lbl 26 `"1st in traditional secondary (rhéto)"', add
label define ht03a_yreduc_lbl 27 `"Terminal year in traditional secondary (philo)"', add
label define ht03a_yreduc_lbl 31 `"1st year, first cycle at university"', add
label define ht03a_yreduc_lbl 32 `"2nd year, first cycle at university"', add
label define ht03a_yreduc_lbl 33 `"3rd year, first cycle at university"', add
label define ht03a_yreduc_lbl 34 `"4th year, first cycle at university"', add
label define ht03a_yreduc_lbl 35 `"5th year, first cycle at university"', add
label define ht03a_yreduc_lbl 36 `"6th year, first cycle at university"', add
label define ht03a_yreduc_lbl 37 `"7th year, first cycle at university"', add
label define ht03a_yreduc_lbl 41 `"1st year, 2nd cycle at university"', add
label define ht03a_yreduc_lbl 42 `"2nd year, 2nd cycle at university"', add
label define ht03a_yreduc_lbl 43 `"3th year, 2nd cycle at university"', add
label define ht03a_yreduc_lbl 51 `"1st year, 3rd cycle at university"', add
label define ht03a_yreduc_lbl 52 `"2nd year, 3rd cycle at university"', add
label define ht03a_yreduc_lbl 53 `"3th year, 3rd cycle at university"', add
label define ht03a_yreduc_lbl 54 `"4th year, 3rd cycle at university"', add
label define ht03a_yreduc_lbl 99 `"NIU (not in universe)"', add
label values ht03a_yreduc ht03a_yreduc_lbl

label define ht03a_fieldunv_lbl 11 `"Teacher training and educational sciences"'
label define ht03a_fieldunv_lbl 22 `"Letters"', add
label define ht03a_fieldunv_lbl 31 `"Social and behavioral sciences"', add
label define ht03a_fieldunv_lbl 32 `"Journalism and information"', add
label define ht03a_fieldunv_lbl 33 `"Commerce and administration"', add
label define ht03a_fieldunv_lbl 34 `"Law"', add
label define ht03a_fieldunv_lbl 42 `"Physics"', add
label define ht03a_fieldunv_lbl 44 `"Computer science"', add
label define ht03a_fieldunv_lbl 51 `"Engineering and related technologies"', add
label define ht03a_fieldunv_lbl 53 `"Architecture and building"', add
label define ht03a_fieldunv_lbl 61 `"Agriculture, forestry and fisheries"', add
label define ht03a_fieldunv_lbl 72 `"Health"', add
label define ht03a_fieldunv_lbl 90 `"Other field, response suppressed"', add
label define ht03a_fieldunv_lbl 98 `"Unknown"', add
label define ht03a_fieldunv_lbl 99 `"NIU (not in universe)"', add
label values ht03a_fieldunv ht03a_fieldunv_lbl

label define ht03a_fieldvoc_lbl 011 `"Teacher training and educational sciences"'
label define ht03a_fieldvoc_lbl 021 `"Arts"', add
label define ht03a_fieldvoc_lbl 022 `"Letters"', add
label define ht03a_fieldvoc_lbl 031 `"Social and behavioral sciences"', add
label define ht03a_fieldvoc_lbl 032 `"Journalism and information"', add
label define ht03a_fieldvoc_lbl 033 `"Commerce and administration"', add
label define ht03a_fieldvoc_lbl 034 `"Law"', add
label define ht03a_fieldvoc_lbl 044 `"Computer science"', add
label define ht03a_fieldvoc_lbl 051 `"Engineering and related technologies"', add
label define ht03a_fieldvoc_lbl 052 `"Processing industries and treatment"', add
label define ht03a_fieldvoc_lbl 053 `"Architecture and building"', add
label define ht03a_fieldvoc_lbl 061 `"Agriculture, forestry and fisheries"', add
label define ht03a_fieldvoc_lbl 062 `"Veterinary sciences"', add
label define ht03a_fieldvoc_lbl 072 `"Health"', add
label define ht03a_fieldvoc_lbl 081 `"Services for individuals"', add
label define ht03a_fieldvoc_lbl 082 `"Transportation services"', add
label define ht03a_fieldvoc_lbl 090 `"Other field, response suppressed"', add
label define ht03a_fieldvoc_lbl 998 `"Unknown"', add
label define ht03a_fieldvoc_lbl 999 `"NIU (not in universe)"', add
label values ht03a_fieldvoc ht03a_fieldvoc_lbl

label define ht03a_school_lbl 1 `"Yes"'
label define ht03a_school_lbl 2 `"No"', add
label define ht03a_school_lbl 9 `"NIU (not in universe)"', add
label values ht03a_school ht03a_school_lbl

label define ht03a_attprof_lbl 1 `"Yes"'
label define ht03a_attprof_lbl 2 `"No"', add
label define ht03a_attprof_lbl 7 `"Attended another type of educational institution, but unknown if attended a training center"', add
label define ht03a_attprof_lbl 9 `"NIU (not in universe)"', add
label values ht03a_attprof ht03a_attprof_lbl

label define ht03a_attlitctr_lbl 1 `"Yes"'
label define ht03a_attlitctr_lbl 2 `"No"', add
label define ht03a_attlitctr_lbl 9 `"NIU (not in universe)"', add
label values ht03a_attlitctr ht03a_attlitctr_lbl

label define ht03a_attnoctr_lbl 1 `"No, did not attend"'
label define ht03a_attnoctr_lbl 2 `"Yes, attended"', add
label define ht03a_attnoctr_lbl 9 `"NIU (not in universe)"', add
label values ht03a_attnoctr ht03a_attnoctr_lbl

label define ht03a_tyuniv_lbl 1 `"Private"'
label define ht03a_tyuniv_lbl 2 `"Public"', add
label define ht03a_tyuniv_lbl 8 `"Unknown"', add
label define ht03a_tyuniv_lbl 9 `"NIU (not in universe)"', add
label values ht03a_tyuniv ht03a_tyuniv_lbl

label define ht03a_typtrain_lbl 1 `"Private"'
label define ht03a_typtrain_lbl 2 `"Public"', add
label define ht03a_typtrain_lbl 9 `"NIU (not in universe)"', add
label values ht03a_typtrain ht03a_typtrain_lbl

label define ht03a_tylitcent_lbl 1 `"Private"'
label define ht03a_tylitcent_lbl 2 `"Public"', add
label define ht03a_tylitcent_lbl 9 `"NIU (not in universe)"', add
label values ht03a_tylitcent ht03a_tylitcent_lbl

label define ht03a_marst_lbl 1 `"Single"'
label define ht03a_marst_lbl 2 `"Married"', add
label define ht03a_marst_lbl 3 `"Placed"', add
label define ht03a_marst_lbl 4 `"In <visiting> union (viv avek)"', add
label define ht03a_marst_lbl 5 `"Divorced"', add
label define ht03a_marst_lbl 6 `"Widowed"', add
label define ht03a_marst_lbl 7 `"Separated from marriage"', add
label define ht03a_marst_lbl 8 `"Separated from union"', add
label define ht03a_marst_lbl 9 `"NIU (not in universe)"', add
label values ht03a_marst ht03a_marst_lbl

label define ht03a_emplstat_lbl 01 `"Working"'
label define ht03a_emplstat_lbl 02 `"Not working but has a job"', add
label define ht03a_emplstat_lbl 03 `"Looking for work and has worked before"', add
label define ht03a_emplstat_lbl 04 `"Looking for work and has not worked before"', add
label define ht03a_emplstat_lbl 05 `"Not seeking work because discouraged"', add
label define ht03a_emplstat_lbl 06 `"Studying only"', add
label define ht03a_emplstat_lbl 07 `"Retired, pensioner or annuitant"', add
label define ht03a_emplstat_lbl 08 `"Only working in the home"', add
label define ht03a_emplstat_lbl 09 `"Disabled"', add
label define ht03a_emplstat_lbl 10 `"Other"', add
label define ht03a_emplstat_lbl 98 `"Unknown"', add
label define ht03a_emplstat_lbl 99 `"NIU (not in universe)"', add
label values ht03a_emplstat ht03a_emplstat_lbl

label define ht03a_econact_lbl 01 `"Yes"'
label define ht03a_econact_lbl 02 `"No"', add
label define ht03a_econact_lbl 98 `"Unknown"', add
label define ht03a_econact_lbl 99 `"NIU (not in universe)"', add
label values ht03a_econact ht03a_econact_lbl

label define ht03a_ind2_lbl 011 `"Farming"'
label define ht03a_ind2_lbl 012 `"Breeding"', add
label define ht03a_ind2_lbl 014 `"Services related to agriculture and landscape management"', add
label define ht03a_ind2_lbl 020 `"Forestry, logging and related services"', add
label define ht03a_ind2_lbl 050 `"Fisheries, aquaculture and related services"', add
label define ht03a_ind2_lbl 141 `"Quarrying of stone"', add
label define ht03a_ind2_lbl 142 `"Quarrying of sand and clay"', add
label define ht03a_ind2_lbl 151 `"Meat Industry"', add
label define ht03a_ind2_lbl 153 `"Fruit and vegetable industry"', add
label define ht03a_ind2_lbl 154 `"Fats industry"', add
label define ht03a_ind2_lbl 155 `"Dairy industry"', add
label define ht03a_ind2_lbl 171 `"Filature"', add
label define ht03a_ind2_lbl 172 `"Weaving"', add
label define ht03a_ind2_lbl 181 `"Manufacture of leather clothes"', add
label define ht03a_ind2_lbl 182 `"Manufacture of textile clothes"', add
label define ht03a_ind2_lbl 191 `"Tanning and dressing of leather"', add
label define ht03a_ind2_lbl 192 `"Manufacture of luggage and leather items"', add
label define ht03a_ind2_lbl 201 `"Sawing, planing and impregnation of wood"', add
label define ht03a_ind2_lbl 202 `"Manufacture of wood panels"', add
label define ht03a_ind2_lbl 210 `"Manufacture of paper and paperboard; unknown specific industry"', add
label define ht03a_ind2_lbl 221 `"Edition"', add
label define ht03a_ind2_lbl 222 `"Printing"', add
label define ht03a_ind2_lbl 242 `"Manufacture of agrochemicals"', add
label define ht03a_ind2_lbl 252 `"Plastics processing"', add
label define ht03a_ind2_lbl 269 `"Other non-metallic mineral products; unknown specific industry"', add
label define ht03a_ind2_lbl 273 `"Other activities for first processing of steel"', add
label define ht03a_ind2_lbl 281 `"Manufacture of metal products"', add
label define ht03a_ind2_lbl 289 `"Metalworking; unknown specific industry"', add
label define ht03a_ind2_lbl 361 `"Furniture"', add
label define ht03a_ind2_lbl 369 `"Furniture and products of various industries; unknown specific industry"', add
label define ht03a_ind2_lbl 401 `"Production and distribution of electricity"', add
label define ht03a_ind2_lbl 410 `"Collection, purification and distribution of water"', add
label define ht03a_ind2_lbl 451 `"Site preparation"', add
label define ht03a_ind2_lbl 452 `"Construction of building or civil engineering"', add
label define ht03a_ind2_lbl 453 `"Installation work"', add
label define ht03a_ind2_lbl 454 `"Finishing"', add
label define ht03a_ind2_lbl 501 `"Sale of motor vehicles"', add
label define ht03a_ind2_lbl 502 `"Maintenance and repair of motor vehicles"', add
label define ht03a_ind2_lbl 503 `"Sale of motor vehicle"', add
label define ht03a_ind2_lbl 505 `"Retail sale of fuels"', add
label define ht03a_ind2_lbl 512 `"Wholesale of agricultural raw materials"', add
label define ht03a_ind2_lbl 513 `"Wholesale of food products"', add
label define ht03a_ind2_lbl 514 `"Wholesale of non-food consumer goods"', add
label define ht03a_ind2_lbl 519 `"Other wholesale"', add
label define ht03a_ind2_lbl 521 `"Retail sale in non-specialized stores"', add
label define ht03a_ind2_lbl 522 `"Retail sale of food in specialized stores"', add
label define ht03a_ind2_lbl 523 `"Retail sale of pharmaceutical and perfumery"', add
label define ht03a_ind2_lbl 524 `"Other retail sale in specialized stores"', add
label define ht03a_ind2_lbl 525 `"Retail sale of second-hand goods"', add
label define ht03a_ind2_lbl 526 `"Retail trade not in stores"', add
label define ht03a_ind2_lbl 551 `"Hotels"', add
label define ht03a_ind2_lbl 552 `"Other means of short-stay accommodation"', add
label define ht03a_ind2_lbl 602 `"Urban transport and road"', add
label define ht03a_ind2_lbl 603 `"Transport via pipelines"', add
label define ht03a_ind2_lbl 611 `"Sea and coastal"', add
label define ht03a_ind2_lbl 612 `"river transport"', add
label define ht03a_ind2_lbl 621 `"Scheduled air transport"', add
label define ht03a_ind2_lbl 630 `"Supporting transport services; unknown specific industry"', add
label define ht03a_ind2_lbl 641 `"Activities Post and courier"', add
label define ht03a_ind2_lbl 642 `"Telecommunications"', add
label define ht03a_ind2_lbl 651 `"Monetary intermediation"', add
label define ht03a_ind2_lbl 659 `"Financial intermediation; unknown specific industry"', add
label define ht03a_ind2_lbl 671 `"Financial auxiliaries"', add
label define ht03a_ind2_lbl 723 `"Data processing"', add
label define ht03a_ind2_lbl 724 `"Activities of databases"', add
label define ht03a_ind2_lbl 725 `"Maintenance and repair of office machinery and computers"', add
label define ht03a_ind2_lbl 729 `"Computer services; unknown specific industry"', add
label define ht03a_ind2_lbl 741 `"Legal, accounting and management consulting"', add
label define ht03a_ind2_lbl 742 `"Activities architecture and engineering"', add
label define ht03a_ind2_lbl 749 `"Services primarily provided to businesses; unknown specific industry"', add
label define ht03a_ind2_lbl 751 `"General administration, economic and social"', add
label define ht03a_ind2_lbl 752 `"Prerogative public services"', add
label define ht03a_ind2_lbl 753 `"Compulsory social security services"', add
label define ht03a_ind2_lbl 801 `"Primary education"', add
label define ht03a_ind2_lbl 802 `"Secondary education"', add
label define ht03a_ind2_lbl 803 `"Higher Education"', add
label define ht03a_ind2_lbl 809 `"Education; unknown specific industry"', add
label define ht03a_ind2_lbl 851 `"Activities for human health"', add
label define ht03a_ind2_lbl 852 `"Veterinary activities"', add
label define ht03a_ind2_lbl 853 `"Social work"', add
label define ht03a_ind2_lbl 900 `"Sanitation, roads and waste management"', add
label define ht03a_ind2_lbl 911 `"Economic organizations"', add
label define ht03a_ind2_lbl 919 `"Services provided by associative organizations; unknown specific industry"', add
label define ht03a_ind2_lbl 921 `"Motion picture and video activities"', add
label define ht03a_ind2_lbl 922 `"Activities of radio and television"', add
label define ht03a_ind2_lbl 923 `"Other arts and entertainment activities"', add
label define ht03a_ind2_lbl 924 `"News agencies"', add
label define ht03a_ind2_lbl 930 `"Personal services"', add
label define ht03a_ind2_lbl 950 `"Activities of households as employers of domestic personnel"', add
label define ht03a_ind2_lbl 990 `"Extra-territorial services"', add
label define ht03a_ind2_lbl 995 `"Other industry, response suppressed"', add
label define ht03a_ind2_lbl 998 `"Unknown"', add
label define ht03a_ind2_lbl 999 `"NIU (not in universe)"', add
label values ht03a_ind2 ht03a_ind2_lbl

label define ht03a_occ_lbl 01 `"Armed forces"'
label define ht03a_occ_lbl 11 `"Legislators and senior officials"', add
label define ht03a_occ_lbl 12 `"Corporate managers"', add
label define ht03a_occ_lbl 13 `"General managers"', add
label define ht03a_occ_lbl 21 `"Physical, mathematical and engineering science professionals"', add
label define ht03a_occ_lbl 22 `"Life science and health professionals"', add
label define ht03a_occ_lbl 23 `"Teaching professionals"', add
label define ht03a_occ_lbl 24 `"Other professionals"', add
label define ht03a_occ_lbl 31 `"Physical and engineering science associate professionals"', add
label define ht03a_occ_lbl 32 `"Life science and health associate professionals"', add
label define ht03a_occ_lbl 33 `"Teaching associate professionals"', add
label define ht03a_occ_lbl 34 `"Other associate professionals"', add
label define ht03a_occ_lbl 41 `"Office clerks"', add
label define ht03a_occ_lbl 42 `"Customer services clerks"', add
label define ht03a_occ_lbl 51 `"Personal and protective services workers"', add
label define ht03a_occ_lbl 52 `"Models, salespersons and demonstrators"', add
label define ht03a_occ_lbl 61 `"Market-oriented skilled agricultural and fishery workers"', add
label define ht03a_occ_lbl 62 `"Subsistence agricultural and fishery workers"', add
label define ht03a_occ_lbl 71 `"Extraction and building trades workers"', add
label define ht03a_occ_lbl 72 `"Metal, machinery and related trades workers"', add
label define ht03a_occ_lbl 73 `"Precision, handicraft, printing and related trades workers"', add
label define ht03a_occ_lbl 74 `"Other craft and related trades workers"', add
label define ht03a_occ_lbl 81 `"Stationary-plant and related operators"', add
label define ht03a_occ_lbl 82 `"Machine operators and assemblers"', add
label define ht03a_occ_lbl 83 `"Drivers and mobile-plant operators"', add
label define ht03a_occ_lbl 91 `"Sales and services elementary occupations"', add
label define ht03a_occ_lbl 92 `"Agricultural, fishery and related laborers"', add
label define ht03a_occ_lbl 93 `"Laborers in mining, construction, manufacturing and transport"', add
label define ht03a_occ_lbl 98 `"Unknown"', add
label define ht03a_occ_lbl 99 `"NIU (not in universe)"', add
label values ht03a_occ ht03a_occ_lbl

label define ht03a_occ2_lbl 011 `"Armed forces"'
label define ht03a_occ2_lbl 113 `"Traditional chiefs and heads of villages"', add
label define ht03a_occ2_lbl 121 `"Directors and chief executives"', add
label define ht03a_occ2_lbl 122 `"Production and operations department managers"', add
label define ht03a_occ2_lbl 123 `"Other department managers"', add
label define ht03a_occ2_lbl 131 `"General managers"', add
label define ht03a_occ2_lbl 199 `"Other officials"', add
label define ht03a_occ2_lbl 213 `"Computing professionals"', add
label define ht03a_occ2_lbl 214 `"Architects, engineers and related professionals"', add
label define ht03a_occ2_lbl 221 `"Life science professionals"', add
label define ht03a_occ2_lbl 222 `"Health professionals (except nursing)"', add
label define ht03a_occ2_lbl 223 `"Nursing and midwifery professionals"', add
label define ht03a_occ2_lbl 231 `"College, university and higher education teaching professionals"', add
label define ht03a_occ2_lbl 232 `"Secondary education teaching professionals"', add
label define ht03a_occ2_lbl 233 `"Primary and pre-primary education teaching professionals"', add
label define ht03a_occ2_lbl 234 `"Special education teaching professionals"', add
label define ht03a_occ2_lbl 235 `"Other teaching professionals"', add
label define ht03a_occ2_lbl 241 `"Business professionals"', add
label define ht03a_occ2_lbl 242 `"Legal professionals"', add
label define ht03a_occ2_lbl 243 `"Archivists, librarians and related information professionals"', add
label define ht03a_occ2_lbl 244 `"Social science and related professionals"', add
label define ht03a_occ2_lbl 245 `"Writers and creative or performing artists"', add
label define ht03a_occ2_lbl 299 `"Other professionals"', add
label define ht03a_occ2_lbl 311 `"Physical and engineering science technicians"', add
label define ht03a_occ2_lbl 312 `"Computer associate professionals"', add
label define ht03a_occ2_lbl 313 `"Optical and electronic equipment operators"', add
label define ht03a_occ2_lbl 314 `"Ship and aircraft controllers and technicians"', add
label define ht03a_occ2_lbl 315 `"Safety and quality inspectors"', add
label define ht03a_occ2_lbl 321 `"Life science technicians and related associate professionals"', add
label define ht03a_occ2_lbl 322 `"Modern health associate professionals (exept nursing)"', add
label define ht03a_occ2_lbl 323 `"Nursing and midwifery associate professionals"', add
label define ht03a_occ2_lbl 324 `"Traditional medicine practitioners and faith healers"', add
label define ht03a_occ2_lbl 331 `"Primary education teaching associate professionals"', add
label define ht03a_occ2_lbl 332 `"Pre-primary education teaching associate professionals"', add
label define ht03a_occ2_lbl 334 `"Other teaching associate professionals"', add
label define ht03a_occ2_lbl 341 `"Finance and sales associate professionals"', add
label define ht03a_occ2_lbl 342 `"Business services agents and trade brokers"', add
label define ht03a_occ2_lbl 343 `"Administrative associate professionals"', add
label define ht03a_occ2_lbl 344 `"Customs, tax and related government associate professionals"', add
label define ht03a_occ2_lbl 347 `"Artistic, entertainment and sports associate professionals"', add
label define ht03a_occ2_lbl 348 `"Religious associate professionals"', add
label define ht03a_occ2_lbl 399 `"Other associate professionals"', add
label define ht03a_occ2_lbl 411 `"Secretaries and keyboard-operating clerks"', add
label define ht03a_occ2_lbl 412 `"Numerical clerks"', add
label define ht03a_occ2_lbl 413 `"Material-recording and transport clerks"', add
label define ht03a_occ2_lbl 414 `"Library, mail and related clerks"', add
label define ht03a_occ2_lbl 419 `"Other office clerks"', add
label define ht03a_occ2_lbl 421 `"Cashiers, tellers and related clerks"', add
label define ht03a_occ2_lbl 422 `"Client information clerks"', add
label define ht03a_occ2_lbl 511 `"Travel attendants and related workers"', add
label define ht03a_occ2_lbl 512 `"Housekeeping and restaurant services workers"', add
label define ht03a_occ2_lbl 513 `"Personal care and related workers"', add
label define ht03a_occ2_lbl 514 `"Other personal services workers"', add
label define ht03a_occ2_lbl 516 `"Protective services workers"', add
label define ht03a_occ2_lbl 521 `"Fashion and other models"', add
label define ht03a_occ2_lbl 522 `"Shop salespersons and demonstrators"', add
label define ht03a_occ2_lbl 523 `"Stall and market salespersons"', add
label define ht03a_occ2_lbl 611 `"Market gardeners and crop growers"', add
label define ht03a_occ2_lbl 612 `"Market-oriented animal producers and related workers"', add
label define ht03a_occ2_lbl 614 `"Forestry and related workers"', add
label define ht03a_occ2_lbl 615 `"Fishery workers, hunters and trappers"', add
label define ht03a_occ2_lbl 621 `"Subsistence agricultural and fishery workers"', add
label define ht03a_occ2_lbl 711 `"Miners, shotfirers, stone cutters and carvers"', add
label define ht03a_occ2_lbl 712 `"Building frame and related trades workers"', add
label define ht03a_occ2_lbl 713 `"Building finishers and related trades workers"', add
label define ht03a_occ2_lbl 714 `"Painters, building structure cleaners and related trades workers"', add
label define ht03a_occ2_lbl 721 `"Metal molders, welders, sheet-metal workers, structural- metal preparers, and related trades workers"', add
label define ht03a_occ2_lbl 722 `"Blacksmiths, tool-makers and related trades workers"', add
label define ht03a_occ2_lbl 723 `"Machinery mechanics and fitters"', add
label define ht03a_occ2_lbl 724 `"Electrical and electronic equipment mechanics and fitters"', add
label define ht03a_occ2_lbl 731 `"Precision workers in metal and related materials"', add
label define ht03a_occ2_lbl 732 `"Potters, glass-makers and related trades workers"', add
label define ht03a_occ2_lbl 733 `"Handicraft workers in wood, textile, leather and related materials"', add
label define ht03a_occ2_lbl 734 `"Printing and related trades workers"', add
label define ht03a_occ2_lbl 741 `"Food processing and related trades workers"', add
label define ht03a_occ2_lbl 742 `"Wood treaters, cabinet-makers and related trades workers"', add
label define ht03a_occ2_lbl 743 `"Textile, garment and related trades workers"', add
label define ht03a_occ2_lbl 744 `"Pelt, leather and shoemaking trades workers"', add
label define ht03a_occ2_lbl 815 `"Chemical-processing-plant operators"', add
label define ht03a_occ2_lbl 819 `"Other stationary-plant and related operators"', add
label define ht03a_occ2_lbl 827 `"Food and related products machine operators"', add
label define ht03a_occ2_lbl 828 `"Assemblers"', add
label define ht03a_occ2_lbl 829 `"Other machine operators and assemblers"', add
label define ht03a_occ2_lbl 832 `"Motor-vehicle drivers"', add
label define ht03a_occ2_lbl 834 `"Ships' deck crews and related workers"', add
label define ht03a_occ2_lbl 839 `"Other drivers and mobile plant operators"', add
label define ht03a_occ2_lbl 911 `"Street vendors and related workers"', add
label define ht03a_occ2_lbl 912 `"Shoe cleaning and other street services elementary occupations"', add
label define ht03a_occ2_lbl 913 `"Domestic and related helpers, cleaners and launderers"', add
label define ht03a_occ2_lbl 914 `"Building caretakers, window and related cleaners"', add
label define ht03a_occ2_lbl 915 `"Messengers, porters, doorkeepers and related workers"', add
label define ht03a_occ2_lbl 916 `"Garbage collectors and related laborers"', add
label define ht03a_occ2_lbl 921 `"Agricultural, fishery and related laborers"', add
label define ht03a_occ2_lbl 931 `"Mining and construction laborers"', add
label define ht03a_occ2_lbl 932 `"Manufacturing laborers"', add
label define ht03a_occ2_lbl 933 `"Transport laborers and freight handlers"', add
label define ht03a_occ2_lbl 998 `"Unknown"', add
label define ht03a_occ2_lbl 999 `"NIU (not in universe)"', add
label values ht03a_occ2 ht03a_occ2_lbl

label define ht03a_typempl_lbl 1 `"Public sector"'
label define ht03a_typempl_lbl 2 `"Household"', add
label define ht03a_typempl_lbl 3 `"Cooperative"', add
label define ht03a_typempl_lbl 4 `"NGO"', add
label define ht03a_typempl_lbl 5 `"Self-employed"', add
label define ht03a_typempl_lbl 6 `"Other"', add
label define ht03a_typempl_lbl 8 `"Unknown"', add
label define ht03a_typempl_lbl 9 `"NIU (not in universe)"', add
label values ht03a_typempl ht03a_typempl_lbl

label define ht03a_employm_lbl 1 `"Boss"'
label define ht03a_employm_lbl 2 `"Employee"', add
label define ht03a_employm_lbl 3 `"Independent"', add
label define ht03a_employm_lbl 4 `"Family help"', add
label define ht03a_employm_lbl 5 `"Apprentice"', add
label define ht03a_employm_lbl 6 `"Other"', add
label define ht03a_employm_lbl 8 `"Unknown"', add
label define ht03a_employm_lbl 9 `"NIU (not in universe)"', add
label values ht03a_employm ht03a_employm_lbl

label define ht03a_workplac_lbl 01 `"Farm"'
label define ht03a_workplac_lbl 02 `"Factory/workshop/construction site"', add
label define ht03a_workplac_lbl 03 `"Store, office"', add
label define ht03a_workplac_lbl 04 `"At home"', add
label define ht03a_workplac_lbl 05 `"At home of the employer"', add
label define ht03a_workplac_lbl 06 `"In the street/ arcade(galerie) / sidewalk"', add
label define ht03a_workplac_lbl 07 `"Garage"', add
label define ht03a_workplac_lbl 08 `"Market"', add
label define ht03a_workplac_lbl 09 `"Taxi, transport vehicle"', add
label define ht03a_workplac_lbl 10 `"Other"', add
label define ht03a_workplac_lbl 98 `"Unknown"', add
label define ht03a_workplac_lbl 99 `"NIU (not in universe)"', add
label values ht03a_workplac ht03a_workplac_lbl

label define ht03a_chlive_lbl 1 `"Yes"'
label define ht03a_chlive_lbl 2 `"No"', add
label define ht03a_chlive_lbl 8 `"Unknown"', add
label define ht03a_chlive_lbl 9 `"NIU (not in universe)"', add
label values ht03a_chlive ht03a_chlive_lbl

label define ht03a_chborn_lbl 000 `"No children born alive"'
label define ht03a_chborn_lbl 001 `"1"', add
label define ht03a_chborn_lbl 002 `"2"', add
label define ht03a_chborn_lbl 003 `"3"', add
label define ht03a_chborn_lbl 004 `"4"', add
label define ht03a_chborn_lbl 005 `"5"', add
label define ht03a_chborn_lbl 006 `"6"', add
label define ht03a_chborn_lbl 007 `"7"', add
label define ht03a_chborn_lbl 008 `"8"', add
label define ht03a_chborn_lbl 009 `"9"', add
label define ht03a_chborn_lbl 010 `"10"', add
label define ht03a_chborn_lbl 011 `"11"', add
label define ht03a_chborn_lbl 012 `"12"', add
label define ht03a_chborn_lbl 013 `"13"', add
label define ht03a_chborn_lbl 014 `"14"', add
label define ht03a_chborn_lbl 015 `"15"', add
label define ht03a_chborn_lbl 016 `"16"', add
label define ht03a_chborn_lbl 017 `"17"', add
label define ht03a_chborn_lbl 018 `"18+"', add
label define ht03a_chborn_lbl 999 `"NIU (not in universe)"', add
label define ht03a_chborn_lbl 998 `"Unknown"', add
label values ht03a_chborn ht03a_chborn_lbl

label define ht03a_chsurv_lbl 00 `"No children born alive or children born alive currently dead"'
label define ht03a_chsurv_lbl 01 `"1"', add
label define ht03a_chsurv_lbl 02 `"2"', add
label define ht03a_chsurv_lbl 03 `"3"', add
label define ht03a_chsurv_lbl 04 `"4"', add
label define ht03a_chsurv_lbl 05 `"5"', add
label define ht03a_chsurv_lbl 06 `"6"', add
label define ht03a_chsurv_lbl 07 `"7"', add
label define ht03a_chsurv_lbl 08 `"8"', add
label define ht03a_chsurv_lbl 09 `"9"', add
label define ht03a_chsurv_lbl 10 `"10"', add
label define ht03a_chsurv_lbl 11 `"11"', add
label define ht03a_chsurv_lbl 12 `"12"', add
label define ht03a_chsurv_lbl 13 `"13"', add
label define ht03a_chsurv_lbl 14 `"14+"', add
label define ht03a_chsurv_lbl 98 `"Unknown"', add
label define ht03a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values ht03a_chsurv ht03a_chsurv_lbl

label define ht03a_lstbmo_lbl 01 `"January"'
label define ht03a_lstbmo_lbl 02 `"February"', add
label define ht03a_lstbmo_lbl 03 `"March"', add
label define ht03a_lstbmo_lbl 04 `"April"', add
label define ht03a_lstbmo_lbl 05 `"May"', add
label define ht03a_lstbmo_lbl 06 `"June"', add
label define ht03a_lstbmo_lbl 07 `"July"', add
label define ht03a_lstbmo_lbl 08 `"August"', add
label define ht03a_lstbmo_lbl 09 `"September"', add
label define ht03a_lstbmo_lbl 10 `"October"', add
label define ht03a_lstbmo_lbl 11 `"November"', add
label define ht03a_lstbmo_lbl 12 `"December"', add
label define ht03a_lstbmo_lbl 98 `"Unknown"', add
label define ht03a_lstbmo_lbl 99 `"NIU (not in universe)"', add
label values ht03a_lstbmo ht03a_lstbmo_lbl

label define ht03a_lstbyr_lbl 1924 `"1924 or earlier"'
label define ht03a_lstbyr_lbl 1925 `"1925"', add
label define ht03a_lstbyr_lbl 1926 `"1926"', add
label define ht03a_lstbyr_lbl 1927 `"1927"', add
label define ht03a_lstbyr_lbl 1928 `"1928"', add
label define ht03a_lstbyr_lbl 1929 `"1929"', add
label define ht03a_lstbyr_lbl 1930 `"1930"', add
label define ht03a_lstbyr_lbl 1931 `"1931"', add
label define ht03a_lstbyr_lbl 1932 `"1932"', add
label define ht03a_lstbyr_lbl 1933 `"1933"', add
label define ht03a_lstbyr_lbl 1934 `"1934"', add
label define ht03a_lstbyr_lbl 1935 `"1935"', add
label define ht03a_lstbyr_lbl 1936 `"1936"', add
label define ht03a_lstbyr_lbl 1937 `"1937"', add
label define ht03a_lstbyr_lbl 1938 `"1938"', add
label define ht03a_lstbyr_lbl 1939 `"1939"', add
label define ht03a_lstbyr_lbl 1940 `"1940"', add
label define ht03a_lstbyr_lbl 1941 `"1941"', add
label define ht03a_lstbyr_lbl 1942 `"1942"', add
label define ht03a_lstbyr_lbl 1943 `"1943"', add
label define ht03a_lstbyr_lbl 1944 `"1944"', add
label define ht03a_lstbyr_lbl 1945 `"1945"', add
label define ht03a_lstbyr_lbl 1946 `"1946"', add
label define ht03a_lstbyr_lbl 1947 `"1947"', add
label define ht03a_lstbyr_lbl 1948 `"1948"', add
label define ht03a_lstbyr_lbl 1949 `"1949"', add
label define ht03a_lstbyr_lbl 1950 `"1950"', add
label define ht03a_lstbyr_lbl 1951 `"1951"', add
label define ht03a_lstbyr_lbl 1952 `"1952"', add
label define ht03a_lstbyr_lbl 1953 `"1953"', add
label define ht03a_lstbyr_lbl 1954 `"1954"', add
label define ht03a_lstbyr_lbl 1955 `"1955"', add
label define ht03a_lstbyr_lbl 1956 `"1956"', add
label define ht03a_lstbyr_lbl 1957 `"1957"', add
label define ht03a_lstbyr_lbl 1958 `"1958"', add
label define ht03a_lstbyr_lbl 1959 `"1959"', add
label define ht03a_lstbyr_lbl 1960 `"1960"', add
label define ht03a_lstbyr_lbl 1961 `"1961"', add
label define ht03a_lstbyr_lbl 1962 `"1962"', add
label define ht03a_lstbyr_lbl 1963 `"1963"', add
label define ht03a_lstbyr_lbl 1964 `"1964"', add
label define ht03a_lstbyr_lbl 1965 `"1965"', add
label define ht03a_lstbyr_lbl 1966 `"1966"', add
label define ht03a_lstbyr_lbl 1967 `"1967"', add
label define ht03a_lstbyr_lbl 1968 `"1968"', add
label define ht03a_lstbyr_lbl 1969 `"1969"', add
label define ht03a_lstbyr_lbl 1970 `"1970"', add
label define ht03a_lstbyr_lbl 1971 `"1971"', add
label define ht03a_lstbyr_lbl 1972 `"1972"', add
label define ht03a_lstbyr_lbl 1973 `"1973"', add
label define ht03a_lstbyr_lbl 1974 `"1974"', add
label define ht03a_lstbyr_lbl 1975 `"1975"', add
label define ht03a_lstbyr_lbl 1976 `"1976"', add
label define ht03a_lstbyr_lbl 1977 `"1977"', add
label define ht03a_lstbyr_lbl 1978 `"1978"', add
label define ht03a_lstbyr_lbl 1979 `"1979"', add
label define ht03a_lstbyr_lbl 1980 `"1980"', add
label define ht03a_lstbyr_lbl 1981 `"1981"', add
label define ht03a_lstbyr_lbl 1982 `"1982"', add
label define ht03a_lstbyr_lbl 1983 `"1983"', add
label define ht03a_lstbyr_lbl 1984 `"1984"', add
label define ht03a_lstbyr_lbl 1985 `"1985"', add
label define ht03a_lstbyr_lbl 1986 `"1986"', add
label define ht03a_lstbyr_lbl 1987 `"1987"', add
label define ht03a_lstbyr_lbl 1988 `"1988"', add
label define ht03a_lstbyr_lbl 1989 `"1989"', add
label define ht03a_lstbyr_lbl 1990 `"1990"', add
label define ht03a_lstbyr_lbl 1991 `"1991"', add
label define ht03a_lstbyr_lbl 1992 `"1992"', add
label define ht03a_lstbyr_lbl 1993 `"1993"', add
label define ht03a_lstbyr_lbl 1994 `"1994"', add
label define ht03a_lstbyr_lbl 1995 `"1995"', add
label define ht03a_lstbyr_lbl 1996 `"1996"', add
label define ht03a_lstbyr_lbl 1997 `"1997"', add
label define ht03a_lstbyr_lbl 1998 `"1998"', add
label define ht03a_lstbyr_lbl 1999 `"1999"', add
label define ht03a_lstbyr_lbl 2000 `"2000"', add
label define ht03a_lstbyr_lbl 2001 `"2001"', add
label define ht03a_lstbyr_lbl 2002 `"2002"', add
label define ht03a_lstbyr_lbl 2003 `"2003"', add
label define ht03a_lstbyr_lbl 9998 `"Unknown"', add
label define ht03a_lstbyr_lbl 9999 `"NIU (not in universe)"', add
label values ht03a_lstbyr ht03a_lstbyr_lbl

label define ht03a_lstblive_lbl 01 `"Yes"'
label define ht03a_lstblive_lbl 02 `"No"', add
label define ht03a_lstblive_lbl 98 `"Unknown"', add
label define ht03a_lstblive_lbl 99 `"NIU (not in universe)"', add
label values ht03a_lstblive ht03a_lstblive_lbl

label define ht03a_mthdeath_lbl 01 `"January"'
label define ht03a_mthdeath_lbl 02 `"February"', add
label define ht03a_mthdeath_lbl 03 `"March"', add
label define ht03a_mthdeath_lbl 04 `"April"', add
label define ht03a_mthdeath_lbl 05 `"May"', add
label define ht03a_mthdeath_lbl 06 `"June"', add
label define ht03a_mthdeath_lbl 07 `"July"', add
label define ht03a_mthdeath_lbl 08 `"August"', add
label define ht03a_mthdeath_lbl 09 `"September"', add
label define ht03a_mthdeath_lbl 10 `"October"', add
label define ht03a_mthdeath_lbl 11 `"November"', add
label define ht03a_mthdeath_lbl 12 `"December"', add
label define ht03a_mthdeath_lbl 98 `"Unknown"', add
label define ht03a_mthdeath_lbl 99 `"NIU (not in universe)"', add
label values ht03a_mthdeath ht03a_mthdeath_lbl

label define ht03a_yrdeath_lbl 1915 `"1915"'
label define ht03a_yrdeath_lbl 1930 `"1930"', add
label define ht03a_yrdeath_lbl 1931 `"1931"', add
label define ht03a_yrdeath_lbl 1935 `"1935"', add
label define ht03a_yrdeath_lbl 1936 `"1936"', add
label define ht03a_yrdeath_lbl 1939 `"1939"', add
label define ht03a_yrdeath_lbl 1940 `"1940"', add
label define ht03a_yrdeath_lbl 1943 `"1943"', add
label define ht03a_yrdeath_lbl 1944 `"1944"', add
label define ht03a_yrdeath_lbl 1945 `"1945"', add
label define ht03a_yrdeath_lbl 1946 `"1946"', add
label define ht03a_yrdeath_lbl 1948 `"1948"', add
label define ht03a_yrdeath_lbl 1950 `"1950"', add
label define ht03a_yrdeath_lbl 1951 `"1951"', add
label define ht03a_yrdeath_lbl 1952 `"1952"', add
label define ht03a_yrdeath_lbl 1953 `"1953"', add
label define ht03a_yrdeath_lbl 1954 `"1954"', add
label define ht03a_yrdeath_lbl 1955 `"1955"', add
label define ht03a_yrdeath_lbl 1956 `"1956"', add
label define ht03a_yrdeath_lbl 1957 `"1957"', add
label define ht03a_yrdeath_lbl 1958 `"1958"', add
label define ht03a_yrdeath_lbl 1959 `"1959"', add
label define ht03a_yrdeath_lbl 1960 `"1960"', add
label define ht03a_yrdeath_lbl 1961 `"1961"', add
label define ht03a_yrdeath_lbl 1962 `"1962"', add
label define ht03a_yrdeath_lbl 1963 `"1963"', add
label define ht03a_yrdeath_lbl 1964 `"1964"', add
label define ht03a_yrdeath_lbl 1965 `"1965"', add
label define ht03a_yrdeath_lbl 1966 `"1966"', add
label define ht03a_yrdeath_lbl 1967 `"1967"', add
label define ht03a_yrdeath_lbl 1968 `"1968"', add
label define ht03a_yrdeath_lbl 1969 `"1969"', add
label define ht03a_yrdeath_lbl 1970 `"1970"', add
label define ht03a_yrdeath_lbl 1971 `"1971"', add
label define ht03a_yrdeath_lbl 1972 `"1972"', add
label define ht03a_yrdeath_lbl 1973 `"1973"', add
label define ht03a_yrdeath_lbl 1974 `"1974"', add
label define ht03a_yrdeath_lbl 1975 `"1975"', add
label define ht03a_yrdeath_lbl 1976 `"1976"', add
label define ht03a_yrdeath_lbl 1977 `"1977"', add
label define ht03a_yrdeath_lbl 1978 `"1978"', add
label define ht03a_yrdeath_lbl 1979 `"1979"', add
label define ht03a_yrdeath_lbl 1980 `"1980"', add
label define ht03a_yrdeath_lbl 1981 `"1981"', add
label define ht03a_yrdeath_lbl 1982 `"1982"', add
label define ht03a_yrdeath_lbl 1983 `"1983"', add
label define ht03a_yrdeath_lbl 1984 `"1984"', add
label define ht03a_yrdeath_lbl 1985 `"1985"', add
label define ht03a_yrdeath_lbl 1986 `"1986"', add
label define ht03a_yrdeath_lbl 1987 `"1987"', add
label define ht03a_yrdeath_lbl 1988 `"1988"', add
label define ht03a_yrdeath_lbl 1989 `"1989"', add
label define ht03a_yrdeath_lbl 1990 `"1990"', add
label define ht03a_yrdeath_lbl 1991 `"1991"', add
label define ht03a_yrdeath_lbl 1992 `"1992"', add
label define ht03a_yrdeath_lbl 1993 `"1993"', add
label define ht03a_yrdeath_lbl 1994 `"1994"', add
label define ht03a_yrdeath_lbl 1995 `"1995"', add
label define ht03a_yrdeath_lbl 1996 `"1996"', add
label define ht03a_yrdeath_lbl 1997 `"1997"', add
label define ht03a_yrdeath_lbl 1998 `"1998"', add
label define ht03a_yrdeath_lbl 1999 `"1999"', add
label define ht03a_yrdeath_lbl 2000 `"2000"', add
label define ht03a_yrdeath_lbl 2001 `"2001"', add
label define ht03a_yrdeath_lbl 2002 `"2002"', add
label define ht03a_yrdeath_lbl 2003 `"2003"', add
label define ht03a_yrdeath_lbl 9998 `"Unknown"', add
label define ht03a_yrdeath_lbl 9999 `"NIU (not in universe)"', add
label values ht03a_yrdeath ht03a_yrdeath_lbl


