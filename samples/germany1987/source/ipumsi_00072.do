* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    de87a_dwnum     22-28    ///
  byte    de87a_pern      29-30    ///
  byte    de87a_fbig      31-31    ///
  int     de87a_fbig_nh   32-34    ///
  byte    de87a_state     35-36    ///
  byte    de87a_bldseq    37-38    ///
  byte    de87a_dwseq     39-40    ///
  byte    de87a_seqhh     41-41    ///
  byte    de87a_placsiz   42-42    ///
  byte    de87a_dwowner   43-43    ///
  byte    de87a_leisure   44-44    ///
  byte    de87a_yrmoved   45-45    ///
  byte    de87a_kitchen   46-46    ///
  byte    de87a_kitchnet  47-47    ///
  byte    de87a_shower    48-48    ///
  byte    de87a_toilet    49-49    ///
  byte    de87a_heating   50-50    ///
  byte    de87a_heatgas   51-51    ///
  byte    de87a_heatoil   52-52    ///
  byte    de87a_heatelec  53-53    ///
  byte    de87a_heatcoal  54-54    ///
  byte    de87a_heattele  55-55    ///
  byte    de87a_heatsolr  56-56    ///
  byte    de87a_rooms     57-57    ///
  byte    de87a_subrooms  58-58    ///
  byte    de87a_commrms   59-59    ///
  int     de87a_area      60-62    ///
  byte    de87a_pubasst   63-63    ///
  int     de87a_rent      64-67    ///
  byte    de87a_empdwell  68-68    ///
  byte    de87a_subrent   69-69    ///
  byte    de87a_bldtype1  70-70    ///
  byte    de87a_dorms     71-71    ///
  byte    de87a_bldowner  72-72    ///
  int     de87a_yrbuilt   73-76    ///
  byte    de87a_subsidiz  77-77    ///
  byte    de87a_bldtype2  78-78    ///
  byte    de87a_dwtype    79-80    ///
  byte    de87a_ndwells   81-82    ///
  byte    de87a_nothdw    83-84    ///
  byte    de87a_nleisdw   85-85    ///
  byte    de87a_leisbld   86-86    ///
  long    de87a_bldarea   87-91    ///
  byte    de87a_bldheat   92-92    ///
  byte    de87a_bldenerg  93-93    ///
  byte    de87a_bldsolar  94-94    ///
  byte    de87a_bldfac    95-95    ///
  byte    de87a_rooms2    96-97    ///
  byte    de87a_rentarea  98-99    ///
  byte    de87a_dwhhs     100-100  ///
  byte    de87a_dwpers    101-102  ///
  byte    de87a_nlegres   103-104  ///
  byte    de87a_nprinres  105-106  ///
  byte    de87a_pophh     107-108  ///
  byte    de87a_legres2   109-110  ///
  byte    de87a_under3    111-111  ///
  byte    de87a_under6    112-112  ///
  byte    de87a_under10   113-113  ///
  byte    de87a_under15   114-114  ///
  byte    de87a_under18   115-115  ///
  byte    de87a_nmarrs    116-116  ///
  byte    de87a_ncouples  117-117  ///
  byte    de87a_ninc      118-119  ///
  byte    de87a_nincemp   120-120  ///
  byte    de87a_empref    121-121  ///
  byte    de87a_classref  122-122  ///
  byte    de87a_trainref  123-123  ///
  byte    de87a_educref   124-124  ///
  byte    de87a_univref   125-125  ///
  byte    de87a_ecacthh   126-126  ///
  byte    de87a_emphh     127-127  ///
  byte    de87a_nage1565  128-128  ///
  byte    de87a_nage66    129-129  ///
  byte    de87a_nage65    130-130  ///
  byte    de87a_nstudent  131-131  ///
  byte    de87a_typehh    132-133  ///
  byte    de87a_citizhh   134-134  ///
  byte    de87a_relighh   135-135  ///
  byte    de87a_nopartnr  136-136  ///
  byte    de87a_nopartnr  137-137  ///
  byte    de87a_stud1528  138-138  ///
  int     pernum          139-141  ///
  float   wtper           142-149  ///
  byte    de87a_pernum    150-151  ///
  byte    de87a_head      152-152  ///
  byte    de87a_sex       153-153  ///
  byte    de87a_marst     154-154  ///
  byte    de87a_relig     155-155  ///
  byte    de87a_citiz     156-156  ///
  byte    de87a_secdwell  157-157  ///
  byte    de87a_maincoup  158-158  ///
  byte    de87a_mainothr  159-159  ///
  byte    de87a_travel    160-160  ///
  byte    de87a_fulltime  161-161  ///
  byte    de87a_parttime  162-162  ///
  byte    de87a_unemp     163-163  ///
  byte    de87a_inactiv   164-164  ///
  byte    de87a_housep    165-165  ///
  byte    de87a_student   166-166  ///
  byte    de87a_livehood  167-167  ///
  byte    de87a_educlev   168-168  ///
  byte    de87a_edhigher  169-169  ///
  byte    de87a_edfield   170-171  ///
  byte    de87a_voctrain  172-173  ///
  byte    de87a_lengtrai  174-174  ///
  byte    de87a_stattrai  175-176  ///
  byte    de87a_travmode  177-177  ///
  byte    de87a_travtime  178-178  ///
  byte    de87a_classwk   179-179  ///
  int     de87a_ind       180-182  ///
  int     de87a_occ       183-185  ///
  byte    de87a_secemp    186-186  ///
  byte    de87a_prinres   187-187  ///
  byte    de87a_legres    188-188  ///
  byte    de87a_resident  189-189  ///
  byte    de87a_empstat   190-190  ///
  byte    de87a_age       191-192  ///
  byte    de87a_married   193-193  ///
  byte    de87a_socecun   194-195  ///
  byte    de87a_sector    196-197  ///
  byte    de87a_socecon2  198-199  ///
  byte    de87a_commtype  200-201  ///
  using `"ipumsi_00072.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var de87a_dwnum    `"Dwelling number"'
label var de87a_pern     `"Number of persons in household"'
label var de87a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var de87a_fbig_nh  `"Number of persons in large household before it was split"'
label var de87a_state    `"Federal state"'
label var de87a_bldseq   `"Sequence number of the building in regional list (new numbered)"'
label var de87a_dwseq    `"Sequence number of the dwelling in building (new numbered)"'
label var de87a_seqhh    `"Sequence number of the household in dwelling (new numbered)"'
label var de87a_placsiz  `"Population size of community of residence"'
label var de87a_dwowner  `"Dwelling ownership"'
label var de87a_leisure  `"Dwelling is leisure-time accommodation"'
label var de87a_yrmoved  `"Year of occupying dwelling"'
label var de87a_kitchen  `"Kitchen"'
label var de87a_kitchnet `"Kitchenette"'
label var de87a_shower   `"Bath / shower"'
label var de87a_toilet   `"Toilet (furnishing w.c.)"'
label var de87a_heating  `"Main heating"'
label var de87a_heatgas  `"Gas is used as heating source"'
label var de87a_heatoil  `"Fuel oil is used as heating source"'
label var de87a_heatelec `"Electricity is used as heating source"'
label var de87a_heatcoal `"Coal, wood, etc. is used as heating source"'
label var de87a_heattele `"Remote heating is used as heating source"'
label var de87a_heatsolr `"Solarenergy/geothermal is used as heating source"'
label var de87a_rooms    `"Number of rooms with at least 6 square meters"'
label var de87a_subrooms `"Number of sublet rooms"'
label var de87a_commrms  `"Number of commercially used rooms"'
label var de87a_area     `"Size of dwelling in square meters"'
label var de87a_pubasst  `"Dwelling subsidized with funds for publicly assisted housing"'
label var de87a_rent     `"Monthly rent (in Deutsche Marks)"'
label var de87a_empdwell `"Employer provided dwelling"'
label var de87a_subrent  `"Subsidized rent"'
label var de87a_bldtype1 `"Type of building 1"'
label var de87a_dorms    `"Degree of residential use"'
label var de87a_bldowner `"Ownership of building"'
label var de87a_yrbuilt  `"Year of construction of building"'
label var de87a_subsidiz `"Degree of subsidization of dwellings in building with funds for publicly assiste"'
label var de87a_bldtype2 `"Type of building 2"'
label var de87a_dwtype   `"Type of dwelling"'
label var de87a_ndwells  `"Number of dwellings in building"'
label var de87a_nothdw   `"Number of other dwelling units in building"'
label var de87a_nleisdw  `"Number of leisure-time dwellings in building"'
label var de87a_leisbld  `"Leisure-time dwellings in building"'
label var de87a_bldarea  `"Living space of the building in square metres"'
label var de87a_bldheat  `"Main type of heating for building"'
label var de87a_bldenerg `"Main type of energy"'
label var de87a_bldsolar `"Use solar energy"'
label var de87a_bldfac   `"Facilities in dwelling"'
label var de87a_rooms2   `"Statistical number of rooms"'
label var de87a_rentarea `"Rent in Deutsche Marks (DM) per square meter"'
label var de87a_dwhhs    `"Number of households in dwelling unit"'
label var de87a_dwpers   `"Number of persons in dwelling unit"'
label var de87a_nlegres  `"Number of persons in household belonging to legally residing population with mai"'
label var de87a_nprinres `"Number of persons in household at principal residence"'
label var de87a_pophh    `"Number of persons in household belonging to population in private households"'
label var de87a_legres2  `"Number of persons in household belonging to legally residing population in their"'
label var de87a_under3   `"Number of single persons under age 3 in household"'
label var de87a_under6   `"Number of single persons under age 6 in household"'
label var de87a_under10  `"Number of single persons under age 10 in household"'
label var de87a_under15  `"Number of single persons under age 15 in household"'
label var de87a_under18  `"Number of single persons under age 18 in household"'
label var de87a_nmarrs   `"Number of all married persons in household"'
label var de87a_ncouples `"Number of married couples in household"'
label var de87a_ninc     `"Number of persons with income in household (age 15 or older)"'
label var de87a_nincemp  `"Number of persons with income from employment in household (age 15 or older)"'
label var de87a_empref   `"Employment of reference person in household"'
label var de87a_classref `"Present employment of reference person of household"'
label var de87a_trainref `"Indicator for reference person in household being in training/apprenticeship"'
label var de87a_educref  `"Highest level of general education completed of reference person in household"'
label var de87a_univref  `"Highest level of vocational or university education of reference person in house"'
label var de87a_ecacthh  `"Number of economically active persons in household contributing to the livelihoo"'
label var de87a_emphh    `"Number of employed persons in household"'
label var de87a_nage1565 `"Number of persons age 15 to under 65 in household"'
label var de87a_nage66   `"Number of persons age 66 or older in household"'
label var de87a_nage65   `"Number of persons age 65 or older in household"'
label var de87a_nstudent `"Number of single pupils/students age under 18 in household"'
label var de87a_typehh   `"Type of household"'
label var de87a_citizhh  `"Indicator for citizenship of persons in household"'
label var de87a_relighh  `"Legal religious affiliation of spouse of reference person"'
label var de87a_nopartnr `"Number of persons widowed, divorced, or spouse-absent in household"'
label var de87a_nopartnr `"Number of persons widowed, divorced, or spouse-absent in household"'
label var de87a_stud1528 `"Single students age 15-28 living in household"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var de87a_pernum   `"Person number (within household)"'
label var de87a_head     `"Indicator for reference person in household"'
label var de87a_sex      `"Sex"'
label var de87a_marst    `"Marital status"'
label var de87a_relig    `"Legal affiliation with a religious community"'
label var de87a_citiz    `"Citizenship"'
label var de87a_secdwell `"Occupancy of other dwelling (accommodation/room) in FRG including Berlin (West)"'
label var de87a_maincoup `"Occupancy of other dwelling predominantly used by the family, for non-separated "'
label var de87a_mainothr `"Occupancy of other dwelling predominantly used, for non-married persons"'
label var de87a_travel   `"Predominantly go to work or school from this dwelling"'
label var de87a_fulltime `"Economically active full time (over 36 hours per week)"'
label var de87a_parttime `"Economically active part-time (up to 36 hours per week)"'
label var de87a_unemp    `"Unemployed, looking for work"'
label var de87a_inactiv  `"Not economically active"'
label var de87a_housep   `"Housewife/houseman"'
label var de87a_student  `"Pupil / student"'
label var de87a_livehood `"Main source of living"'
label var de87a_educlev  `"Highest level of general education completed"'
label var de87a_edhigher `"Highest level of vocational or university education completed"'
label var de87a_edfield  `"Main field of completed vocational or university education/training"'
label var de87a_voctrain `"Field of completed practical vocational training"'
label var de87a_lengtrai `"Length of training, completed practical vocational training"'
label var de87a_stattrai `"Federal state in which that training took place"'
label var de87a_travmode `"Main mode of transportation to work or school"'
label var de87a_travtime `"Length of time needed to commute to work or school"'
label var de87a_classwk  `"Present type of employment"'
label var de87a_ind      `"Industry"'
label var de87a_occ      `"Occupation"'
label var de87a_secemp   `"Secondary employment"'
label var de87a_prinres  `"Indicator of principal residence at place of enumeration"'
label var de87a_legres   `"Indicator whether person belongs to legally residing population"'
label var de87a_resident `"Resides at place of residence of the family"'
label var de87a_empstat  `"Employment indicator"'
label var de87a_age      `"Age"'
label var de87a_married  `"Marriage indicator"'
label var de87a_socecun  `"Socio-economic indicator according to UN"'
label var de87a_sector   `"Sector of economy"'
label var de87a_socecon2 `"Socio-economic indicator for economically active persons"'
label var de87a_commtype `"Type of commuter"'

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

label define de87a_pern_lbl 01 `"1"'
label define de87a_pern_lbl 02 `"2"', add
label define de87a_pern_lbl 03 `"3"', add
label define de87a_pern_lbl 04 `"4"', add
label define de87a_pern_lbl 05 `"5"', add
label define de87a_pern_lbl 06 `"6"', add
label define de87a_pern_lbl 07 `"7"', add
label define de87a_pern_lbl 08 `"8"', add
label define de87a_pern_lbl 09 `"9"', add
label define de87a_pern_lbl 10 `"10"', add
label define de87a_pern_lbl 11 `"11"', add
label define de87a_pern_lbl 12 `"12"', add
label define de87a_pern_lbl 13 `"13"', add
label define de87a_pern_lbl 14 `"14"', add
label define de87a_pern_lbl 15 `"15"', add
label define de87a_pern_lbl 16 `"16"', add
label define de87a_pern_lbl 17 `"17"', add
label define de87a_pern_lbl 18 `"18"', add
label define de87a_pern_lbl 19 `"19"', add
label define de87a_pern_lbl 20 `"20"', add
label define de87a_pern_lbl 21 `"21"', add
label define de87a_pern_lbl 22 `"22"', add
label define de87a_pern_lbl 23 `"23"', add
label define de87a_pern_lbl 24 `"24"', add
label define de87a_pern_lbl 25 `"25"', add
label define de87a_pern_lbl 26 `"26"', add
label define de87a_pern_lbl 27 `"27"', add
label define de87a_pern_lbl 28 `"28"', add
label define de87a_pern_lbl 29 `"29"', add
label define de87a_pern_lbl 30 `"30"', add
label values de87a_pern de87a_pern_lbl

label define de87a_fbig_lbl 0 `"No problem"'
label define de87a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define de87a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values de87a_fbig de87a_fbig_lbl

label define de87a_fbig_nh_lbl 000 `"Not split"'
label define de87a_fbig_nh_lbl 031 `"31"', add
label define de87a_fbig_nh_lbl 032 `"32"', add
label define de87a_fbig_nh_lbl 033 `"33"', add
label define de87a_fbig_nh_lbl 034 `"34"', add
label define de87a_fbig_nh_lbl 035 `"35"', add
label define de87a_fbig_nh_lbl 036 `"36"', add
label define de87a_fbig_nh_lbl 037 `"37"', add
label define de87a_fbig_nh_lbl 038 `"38"', add
label define de87a_fbig_nh_lbl 039 `"39"', add
label define de87a_fbig_nh_lbl 040 `"40"', add
label define de87a_fbig_nh_lbl 041 `"41"', add
label define de87a_fbig_nh_lbl 042 `"42"', add
label define de87a_fbig_nh_lbl 043 `"43"', add
label define de87a_fbig_nh_lbl 044 `"44"', add
label define de87a_fbig_nh_lbl 045 `"45"', add
label define de87a_fbig_nh_lbl 047 `"47"', add
label define de87a_fbig_nh_lbl 048 `"48"', add
label define de87a_fbig_nh_lbl 049 `"49"', add
label define de87a_fbig_nh_lbl 050 `"50"', add
label define de87a_fbig_nh_lbl 053 `"53"', add
label define de87a_fbig_nh_lbl 056 `"56"', add
label define de87a_fbig_nh_lbl 059 `"59"', add
label define de87a_fbig_nh_lbl 062 `"62"', add
label define de87a_fbig_nh_lbl 063 `"63"', add
label define de87a_fbig_nh_lbl 065 `"65"', add
label define de87a_fbig_nh_lbl 067 `"67"', add
label define de87a_fbig_nh_lbl 080 `"80"', add
label define de87a_fbig_nh_lbl 116 `"116"', add
label values de87a_fbig_nh de87a_fbig_nh_lbl

label define de87a_state_lbl 01 `"Schleswig-Holstein"'
label define de87a_state_lbl 02 `"Hamburg"', add
label define de87a_state_lbl 03 `"Lower Saxony"', add
label define de87a_state_lbl 04 `"Bremen"', add
label define de87a_state_lbl 05 `"North Rhine-Westphalia"', add
label define de87a_state_lbl 06 `"Hesse"', add
label define de87a_state_lbl 07 `"Rhineland-Palatinate"', add
label define de87a_state_lbl 08 `"Baden-Württemberg"', add
label define de87a_state_lbl 09 `"Bavaria"', add
label define de87a_state_lbl 10 `"Saarland"', add
label define de87a_state_lbl 11 `"Berlin (West)"', add
label values de87a_state de87a_state_lbl

label define de87a_bldseq_lbl 01 `"1"'
label define de87a_bldseq_lbl 02 `"2"', add
label define de87a_bldseq_lbl 03 `"3"', add
label define de87a_bldseq_lbl 04 `"4"', add
label define de87a_bldseq_lbl 05 `"5"', add
label define de87a_bldseq_lbl 06 `"6"', add
label define de87a_bldseq_lbl 07 `"7"', add
label define de87a_bldseq_lbl 08 `"8"', add
label define de87a_bldseq_lbl 09 `"9"', add
label define de87a_bldseq_lbl 10 `"10"', add
label define de87a_bldseq_lbl 11 `"11"', add
label define de87a_bldseq_lbl 12 `"12"', add
label define de87a_bldseq_lbl 13 `"13"', add
label define de87a_bldseq_lbl 14 `"14"', add
label define de87a_bldseq_lbl 15 `"15"', add
label define de87a_bldseq_lbl 16 `"16"', add
label define de87a_bldseq_lbl 17 `"17"', add
label define de87a_bldseq_lbl 18 `"18"', add
label define de87a_bldseq_lbl 19 `"19"', add
label define de87a_bldseq_lbl 20 `"20"', add
label define de87a_bldseq_lbl 21 `"21"', add
label define de87a_bldseq_lbl 22 `"22"', add
label define de87a_bldseq_lbl 23 `"23"', add
label define de87a_bldseq_lbl 24 `"24"', add
label values de87a_bldseq de87a_bldseq_lbl

label define de87a_dwseq_lbl 01 `"1"'
label define de87a_dwseq_lbl 02 `"2"', add
label define de87a_dwseq_lbl 03 `"3"', add
label define de87a_dwseq_lbl 04 `"4"', add
label define de87a_dwseq_lbl 05 `"5"', add
label define de87a_dwseq_lbl 06 `"6"', add
label define de87a_dwseq_lbl 07 `"7"', add
label define de87a_dwseq_lbl 08 `"8"', add
label define de87a_dwseq_lbl 09 `"9"', add
label define de87a_dwseq_lbl 10 `"10"', add
label define de87a_dwseq_lbl 11 `"11"', add
label define de87a_dwseq_lbl 12 `"12"', add
label define de87a_dwseq_lbl 13 `"13"', add
label define de87a_dwseq_lbl 14 `"14"', add
label define de87a_dwseq_lbl 15 `"15"', add
label define de87a_dwseq_lbl 16 `"16"', add
label define de87a_dwseq_lbl 17 `"17"', add
label define de87a_dwseq_lbl 18 `"18"', add
label define de87a_dwseq_lbl 19 `"19"', add
label define de87a_dwseq_lbl 20 `"20"', add
label define de87a_dwseq_lbl 21 `"21"', add
label define de87a_dwseq_lbl 22 `"22"', add
label define de87a_dwseq_lbl 23 `"23"', add
label define de87a_dwseq_lbl 24 `"24"', add
label define de87a_dwseq_lbl 25 `"25"', add
label define de87a_dwseq_lbl 26 `"26"', add
label define de87a_dwseq_lbl 27 `"27"', add
label define de87a_dwseq_lbl 28 `"28"', add
label define de87a_dwseq_lbl 29 `"29"', add
label define de87a_dwseq_lbl 30 `"30"', add
label define de87a_dwseq_lbl 31 `"31"', add
label define de87a_dwseq_lbl 32 `"32"', add
label define de87a_dwseq_lbl 33 `"33"', add
label define de87a_dwseq_lbl 34 `"34"', add
label define de87a_dwseq_lbl 35 `"35"', add
label define de87a_dwseq_lbl 36 `"36"', add
label define de87a_dwseq_lbl 37 `"37"', add
label define de87a_dwseq_lbl 38 `"38"', add
label define de87a_dwseq_lbl 39 `"39"', add
label define de87a_dwseq_lbl 40 `"40"', add
label define de87a_dwseq_lbl 41 `"41"', add
label define de87a_dwseq_lbl 42 `"42"', add
label define de87a_dwseq_lbl 43 `"43"', add
label define de87a_dwseq_lbl 44 `"44"', add
label values de87a_dwseq de87a_dwseq_lbl

label define de87a_seqhh_lbl 1 `"1"'
label define de87a_seqhh_lbl 2 `"2"', add
label define de87a_seqhh_lbl 3 `"3"', add
label define de87a_seqhh_lbl 4 `"4"', add
label values de87a_seqhh de87a_seqhh_lbl

label define de87a_placsiz_lbl 1 `"Fewer than 5,000 residents"'
label define de87a_placsiz_lbl 2 `"5,000 to fewer than 20,000 residents"', add
label define de87a_placsiz_lbl 3 `"20,000 to fewer than 100,000 residents"', add
label define de87a_placsiz_lbl 4 `"100,000 to fewer than 500,000 residents"', add
label define de87a_placsiz_lbl 5 `"500,000 residents or more"', add
label define de87a_placsiz_lbl 6 `"For North Rhine-Westphalia and Saarland: fewer than 20,000 residents"', add
label define de87a_placsiz_lbl 7 `"For Saarland: 20,000 residents and more"', add
label define de87a_placsiz_lbl 8 `"For Berlin (West): 100,000 residents or more"', add
label define de87a_placsiz_lbl 9 `"For Bremen: 100,000 residents or more"', add
label values de87a_placsiz de87a_placsiz_lbl

label define de87a_dwowner_lbl 1 `"Owner, co-owner or prospective buyer"'
label define de87a_dwowner_lbl 2 `"Main tenant, including annuitant"', add
label define de87a_dwowner_lbl 3 `"Sub-tenant"', add
label define de87a_dwowner_lbl 9 `"NIU (Not in universe)"', add
label values de87a_dwowner de87a_dwowner_lbl

label define de87a_leisure_lbl 1 `"No"'
label define de87a_leisure_lbl 2 `"Yes"', add
label define de87a_leisure_lbl 9 `"NIU (Not in universe)"', add
label values de87a_leisure de87a_leisure_lbl

label define de87a_yrmoved_lbl 1 `"Prior to 1970"'
label define de87a_yrmoved_lbl 2 `"1970 - 1974"', add
label define de87a_yrmoved_lbl 3 `"1975 - 1979"', add
label define de87a_yrmoved_lbl 4 `"1980 - 1984"', add
label define de87a_yrmoved_lbl 5 `"1985"', add
label define de87a_yrmoved_lbl 6 `"1986"', add
label define de87a_yrmoved_lbl 7 `"1987"', add
label define de87a_yrmoved_lbl 9 `"NIU (Not in universe)"', add
label values de87a_yrmoved de87a_yrmoved_lbl

label define de87a_kitchen_lbl 1 `"No, has no kitchen"'
label define de87a_kitchen_lbl 2 `"Yes, has kitchen"', add
label values de87a_kitchen de87a_kitchen_lbl

label define de87a_kitchnet_lbl 1 `"No kitchenette"'
label define de87a_kitchnet_lbl 2 `"Yes, has kitchenette"', add
label values de87a_kitchnet de87a_kitchnet_lbl

label define de87a_shower_lbl 1 `"No, has no bath/shower"'
label define de87a_shower_lbl 2 `"Yes, has bath/shower"', add
label values de87a_shower de87a_shower_lbl

label define de87a_toilet_lbl 1 `"No, has no W.C."'
label define de87a_toilet_lbl 2 `"Yes, has W.C."', add
label values de87a_toilet de87a_toilet_lbl

label define de87a_heating_lbl 1 `"Remote/block heating"'
label define de87a_heating_lbl 2 `"Central heating"', add
label define de87a_heating_lbl 3 `"Floor heating"', add
label define de87a_heating_lbl 4 `"Single/multi-room stoves (also electric storage)"', add
label define de87a_heating_lbl 9 `"NIU (Not in universe)"', add
label values de87a_heating de87a_heating_lbl

label define de87a_heatgas_lbl 1 `"No"'
label define de87a_heatgas_lbl 2 `"Yes"', add
label values de87a_heatgas de87a_heatgas_lbl

label define de87a_heatoil_lbl 1 `"No"'
label define de87a_heatoil_lbl 2 `"Yes"', add
label values de87a_heatoil de87a_heatoil_lbl

label define de87a_heatelec_lbl 1 `"No"'
label define de87a_heatelec_lbl 2 `"Yes"', add
label values de87a_heatelec de87a_heatelec_lbl

label define de87a_heatcoal_lbl 1 `"No"'
label define de87a_heatcoal_lbl 2 `"Yes"', add
label values de87a_heatcoal de87a_heatcoal_lbl

label define de87a_heattele_lbl 1 `"No"'
label define de87a_heattele_lbl 2 `"Yes"', add
label values de87a_heattele de87a_heattele_lbl

label define de87a_heatsolr_lbl 1 `"No"'
label define de87a_heatsolr_lbl 2 `"Yes"', add
label values de87a_heatsolr de87a_heatsolr_lbl

label define de87a_rooms_lbl 0 `"NIU (Not in universe)"'
label define de87a_rooms_lbl 1 `"1 room"', add
label define de87a_rooms_lbl 2 `"2 rooms"', add
label define de87a_rooms_lbl 3 `"3 rooms"', add
label define de87a_rooms_lbl 4 `"4 rooms"', add
label define de87a_rooms_lbl 5 `"5 rooms"', add
label define de87a_rooms_lbl 6 `"6 rooms"', add
label define de87a_rooms_lbl 7 `"7 rooms"', add
label define de87a_rooms_lbl 8 `"8 rooms"', add
label define de87a_rooms_lbl 9 `"9 or more rooms"', add
label values de87a_rooms de87a_rooms_lbl

label define de87a_subrooms_lbl 0 `"0"'
label define de87a_subrooms_lbl 1 `"1 room"', add
label define de87a_subrooms_lbl 2 `"2 rooms"', add
label define de87a_subrooms_lbl 3 `"3 or more rooms"', add
label define de87a_subrooms_lbl 9 `"NIU (Not in universe)"', add
label values de87a_subrooms de87a_subrooms_lbl

label define de87a_commrms_lbl 0 `"0"'
label define de87a_commrms_lbl 1 `"1 room"', add
label define de87a_commrms_lbl 2 `"2 rooms"', add
label define de87a_commrms_lbl 3 `"3 or more rooms"', add
label define de87a_commrms_lbl 9 `"NIU (Not in universe)"', add
label values de87a_commrms de87a_commrms_lbl

label define de87a_area_lbl 010 `"10"'
label define de87a_area_lbl 011 `"11"', add
label define de87a_area_lbl 012 `"12"', add
label define de87a_area_lbl 013 `"13"', add
label define de87a_area_lbl 014 `"14"', add
label define de87a_area_lbl 015 `"15"', add
label define de87a_area_lbl 016 `"16"', add
label define de87a_area_lbl 017 `"17"', add
label define de87a_area_lbl 018 `"18"', add
label define de87a_area_lbl 019 `"19"', add
label define de87a_area_lbl 020 `"20"', add
label define de87a_area_lbl 021 `"21"', add
label define de87a_area_lbl 022 `"22"', add
label define de87a_area_lbl 023 `"23"', add
label define de87a_area_lbl 024 `"24"', add
label define de87a_area_lbl 025 `"25"', add
label define de87a_area_lbl 026 `"26"', add
label define de87a_area_lbl 027 `"27"', add
label define de87a_area_lbl 028 `"28"', add
label define de87a_area_lbl 029 `"29"', add
label define de87a_area_lbl 030 `"30"', add
label define de87a_area_lbl 031 `"31"', add
label define de87a_area_lbl 032 `"32"', add
label define de87a_area_lbl 033 `"33"', add
label define de87a_area_lbl 034 `"34"', add
label define de87a_area_lbl 035 `"35"', add
label define de87a_area_lbl 036 `"36"', add
label define de87a_area_lbl 037 `"37"', add
label define de87a_area_lbl 038 `"38"', add
label define de87a_area_lbl 039 `"39"', add
label define de87a_area_lbl 040 `"40"', add
label define de87a_area_lbl 041 `"41"', add
label define de87a_area_lbl 042 `"42"', add
label define de87a_area_lbl 043 `"43"', add
label define de87a_area_lbl 044 `"44"', add
label define de87a_area_lbl 045 `"45"', add
label define de87a_area_lbl 046 `"46"', add
label define de87a_area_lbl 047 `"47"', add
label define de87a_area_lbl 048 `"48"', add
label define de87a_area_lbl 049 `"49"', add
label define de87a_area_lbl 050 `"50"', add
label define de87a_area_lbl 051 `"51"', add
label define de87a_area_lbl 052 `"52"', add
label define de87a_area_lbl 053 `"53"', add
label define de87a_area_lbl 054 `"54"', add
label define de87a_area_lbl 055 `"55"', add
label define de87a_area_lbl 056 `"56"', add
label define de87a_area_lbl 057 `"57"', add
label define de87a_area_lbl 058 `"58"', add
label define de87a_area_lbl 059 `"59"', add
label define de87a_area_lbl 060 `"60"', add
label define de87a_area_lbl 061 `"61"', add
label define de87a_area_lbl 062 `"62"', add
label define de87a_area_lbl 063 `"63"', add
label define de87a_area_lbl 064 `"64"', add
label define de87a_area_lbl 065 `"65"', add
label define de87a_area_lbl 066 `"66"', add
label define de87a_area_lbl 067 `"67"', add
label define de87a_area_lbl 068 `"68"', add
label define de87a_area_lbl 069 `"69"', add
label define de87a_area_lbl 070 `"70"', add
label define de87a_area_lbl 071 `"71"', add
label define de87a_area_lbl 072 `"72"', add
label define de87a_area_lbl 073 `"73"', add
label define de87a_area_lbl 074 `"74"', add
label define de87a_area_lbl 075 `"75"', add
label define de87a_area_lbl 076 `"76"', add
label define de87a_area_lbl 077 `"77"', add
label define de87a_area_lbl 078 `"78"', add
label define de87a_area_lbl 079 `"79"', add
label define de87a_area_lbl 080 `"80"', add
label define de87a_area_lbl 081 `"81"', add
label define de87a_area_lbl 082 `"82"', add
label define de87a_area_lbl 083 `"83"', add
label define de87a_area_lbl 084 `"84"', add
label define de87a_area_lbl 085 `"85"', add
label define de87a_area_lbl 086 `"86"', add
label define de87a_area_lbl 087 `"87"', add
label define de87a_area_lbl 088 `"88"', add
label define de87a_area_lbl 089 `"89"', add
label define de87a_area_lbl 090 `"90"', add
label define de87a_area_lbl 091 `"91"', add
label define de87a_area_lbl 092 `"92"', add
label define de87a_area_lbl 093 `"93"', add
label define de87a_area_lbl 094 `"94"', add
label define de87a_area_lbl 095 `"95"', add
label define de87a_area_lbl 096 `"96"', add
label define de87a_area_lbl 097 `"97"', add
label define de87a_area_lbl 098 `"98"', add
label define de87a_area_lbl 099 `"99"', add
label define de87a_area_lbl 100 `"100"', add
label define de87a_area_lbl 101 `"101"', add
label define de87a_area_lbl 102 `"102"', add
label define de87a_area_lbl 103 `"103"', add
label define de87a_area_lbl 104 `"104"', add
label define de87a_area_lbl 105 `"105"', add
label define de87a_area_lbl 106 `"106"', add
label define de87a_area_lbl 107 `"107"', add
label define de87a_area_lbl 108 `"108"', add
label define de87a_area_lbl 109 `"109"', add
label define de87a_area_lbl 110 `"110"', add
label define de87a_area_lbl 111 `"111"', add
label define de87a_area_lbl 112 `"112"', add
label define de87a_area_lbl 113 `"113"', add
label define de87a_area_lbl 114 `"114"', add
label define de87a_area_lbl 115 `"115"', add
label define de87a_area_lbl 116 `"116"', add
label define de87a_area_lbl 117 `"117"', add
label define de87a_area_lbl 118 `"118"', add
label define de87a_area_lbl 119 `"119"', add
label define de87a_area_lbl 120 `"120"', add
label define de87a_area_lbl 121 `"121"', add
label define de87a_area_lbl 122 `"122"', add
label define de87a_area_lbl 123 `"123"', add
label define de87a_area_lbl 124 `"124"', add
label define de87a_area_lbl 125 `"125"', add
label define de87a_area_lbl 126 `"126"', add
label define de87a_area_lbl 127 `"127"', add
label define de87a_area_lbl 128 `"128"', add
label define de87a_area_lbl 129 `"129"', add
label define de87a_area_lbl 130 `"130"', add
label define de87a_area_lbl 131 `"131"', add
label define de87a_area_lbl 132 `"132"', add
label define de87a_area_lbl 133 `"133"', add
label define de87a_area_lbl 134 `"134"', add
label define de87a_area_lbl 135 `"135"', add
label define de87a_area_lbl 136 `"136"', add
label define de87a_area_lbl 137 `"137"', add
label define de87a_area_lbl 138 `"138"', add
label define de87a_area_lbl 139 `"139"', add
label define de87a_area_lbl 140 `"140"', add
label define de87a_area_lbl 141 `"141"', add
label define de87a_area_lbl 142 `"142"', add
label define de87a_area_lbl 143 `"143"', add
label define de87a_area_lbl 144 `"144"', add
label define de87a_area_lbl 145 `"145"', add
label define de87a_area_lbl 146 `"146"', add
label define de87a_area_lbl 147 `"147"', add
label define de87a_area_lbl 148 `"148"', add
label define de87a_area_lbl 149 `"149"', add
label define de87a_area_lbl 150 `"150"', add
label define de87a_area_lbl 151 `"151"', add
label define de87a_area_lbl 152 `"152"', add
label define de87a_area_lbl 153 `"153"', add
label define de87a_area_lbl 154 `"154"', add
label define de87a_area_lbl 155 `"155"', add
label define de87a_area_lbl 156 `"156"', add
label define de87a_area_lbl 157 `"157"', add
label define de87a_area_lbl 158 `"158"', add
label define de87a_area_lbl 159 `"159"', add
label define de87a_area_lbl 160 `"160"', add
label define de87a_area_lbl 161 `"161"', add
label define de87a_area_lbl 162 `"162"', add
label define de87a_area_lbl 163 `"163"', add
label define de87a_area_lbl 164 `"164"', add
label define de87a_area_lbl 165 `"165"', add
label define de87a_area_lbl 166 `"166"', add
label define de87a_area_lbl 167 `"167"', add
label define de87a_area_lbl 168 `"168"', add
label define de87a_area_lbl 169 `"169"', add
label define de87a_area_lbl 170 `"170"', add
label define de87a_area_lbl 171 `"171"', add
label define de87a_area_lbl 172 `"172"', add
label define de87a_area_lbl 173 `"173"', add
label define de87a_area_lbl 174 `"174"', add
label define de87a_area_lbl 175 `"175"', add
label define de87a_area_lbl 176 `"176"', add
label define de87a_area_lbl 177 `"177"', add
label define de87a_area_lbl 178 `"178"', add
label define de87a_area_lbl 179 `"179"', add
label define de87a_area_lbl 180 `"180"', add
label define de87a_area_lbl 181 `"181"', add
label define de87a_area_lbl 182 `"182"', add
label define de87a_area_lbl 183 `"183"', add
label define de87a_area_lbl 184 `"184"', add
label define de87a_area_lbl 185 `"185"', add
label define de87a_area_lbl 186 `"186"', add
label define de87a_area_lbl 187 `"187"', add
label define de87a_area_lbl 188 `"188"', add
label define de87a_area_lbl 189 `"189"', add
label define de87a_area_lbl 190 `"190"', add
label define de87a_area_lbl 200 `"200"', add
label define de87a_area_lbl 210 `"210"', add
label define de87a_area_lbl 220 `"220"', add
label define de87a_area_lbl 230 `"230"', add
label define de87a_area_lbl 240 `"240"', add
label define de87a_area_lbl 250 `"250"', add
label define de87a_area_lbl 260 `"260"', add
label define de87a_area_lbl 270 `"270"', add
label define de87a_area_lbl 280 `"280"', add
label define de87a_area_lbl 290 `"290"', add
label define de87a_area_lbl 300 `"300"', add
label define de87a_area_lbl 310 `"310"', add
label define de87a_area_lbl 320 `"320"', add
label define de87a_area_lbl 330 `"330"', add
label define de87a_area_lbl 340 `"340"', add
label define de87a_area_lbl 350 `"350"', add
label define de87a_area_lbl 360 `"360"', add
label define de87a_area_lbl 361 `"361+ square metres"', add
label define de87a_area_lbl 999 `"NIU (Not in universe)"', add
label values de87a_area de87a_area_lbl

label define de87a_pubasst_lbl 1 `"No"'
label define de87a_pubasst_lbl 2 `"Yes"', add
label define de87a_pubasst_lbl 9 `"NIU (Not in universe)"', add
label values de87a_pubasst de87a_pubasst_lbl

label define de87a_rent_lbl 0000 `"0"'
label define de87a_rent_lbl 0020 `"20"', add
label define de87a_rent_lbl 0030 `"30"', add
label define de87a_rent_lbl 0040 `"40"', add
label define de87a_rent_lbl 0050 `"50"', add
label define de87a_rent_lbl 0060 `"60"', add
label define de87a_rent_lbl 0070 `"70"', add
label define de87a_rent_lbl 0080 `"80"', add
label define de87a_rent_lbl 0090 `"90"', add
label define de87a_rent_lbl 0100 `"100"', add
label define de87a_rent_lbl 0110 `"110"', add
label define de87a_rent_lbl 0120 `"120"', add
label define de87a_rent_lbl 0130 `"130"', add
label define de87a_rent_lbl 0140 `"140"', add
label define de87a_rent_lbl 0150 `"150"', add
label define de87a_rent_lbl 0160 `"160"', add
label define de87a_rent_lbl 0170 `"170"', add
label define de87a_rent_lbl 0180 `"180"', add
label define de87a_rent_lbl 0190 `"190"', add
label define de87a_rent_lbl 0200 `"200"', add
label define de87a_rent_lbl 0210 `"210"', add
label define de87a_rent_lbl 0211 `"211"', add
label define de87a_rent_lbl 0212 `"212"', add
label define de87a_rent_lbl 0213 `"213"', add
label define de87a_rent_lbl 0214 `"214"', add
label define de87a_rent_lbl 0215 `"215"', add
label define de87a_rent_lbl 0216 `"216"', add
label define de87a_rent_lbl 0217 `"217"', add
label define de87a_rent_lbl 0218 `"218"', add
label define de87a_rent_lbl 0219 `"219"', add
label define de87a_rent_lbl 0220 `"220"', add
label define de87a_rent_lbl 0221 `"221"', add
label define de87a_rent_lbl 0222 `"222"', add
label define de87a_rent_lbl 0223 `"223"', add
label define de87a_rent_lbl 0224 `"224"', add
label define de87a_rent_lbl 0225 `"225"', add
label define de87a_rent_lbl 0226 `"226"', add
label define de87a_rent_lbl 0227 `"227"', add
label define de87a_rent_lbl 0228 `"228"', add
label define de87a_rent_lbl 0229 `"229"', add
label define de87a_rent_lbl 0230 `"230"', add
label define de87a_rent_lbl 0231 `"231"', add
label define de87a_rent_lbl 0232 `"232"', add
label define de87a_rent_lbl 0233 `"233"', add
label define de87a_rent_lbl 0234 `"234"', add
label define de87a_rent_lbl 0235 `"235"', add
label define de87a_rent_lbl 0236 `"236"', add
label define de87a_rent_lbl 0237 `"237"', add
label define de87a_rent_lbl 0238 `"238"', add
label define de87a_rent_lbl 0239 `"239"', add
label define de87a_rent_lbl 0240 `"240"', add
label define de87a_rent_lbl 0241 `"241"', add
label define de87a_rent_lbl 0242 `"242"', add
label define de87a_rent_lbl 0243 `"243"', add
label define de87a_rent_lbl 0244 `"244"', add
label define de87a_rent_lbl 0245 `"245"', add
label define de87a_rent_lbl 0246 `"246"', add
label define de87a_rent_lbl 0247 `"247"', add
label define de87a_rent_lbl 0248 `"248"', add
label define de87a_rent_lbl 0249 `"249"', add
label define de87a_rent_lbl 0250 `"250"', add
label define de87a_rent_lbl 0251 `"251"', add
label define de87a_rent_lbl 0252 `"252"', add
label define de87a_rent_lbl 0253 `"253"', add
label define de87a_rent_lbl 0254 `"254"', add
label define de87a_rent_lbl 0255 `"255"', add
label define de87a_rent_lbl 0256 `"256"', add
label define de87a_rent_lbl 0257 `"257"', add
label define de87a_rent_lbl 0258 `"258"', add
label define de87a_rent_lbl 0259 `"259"', add
label define de87a_rent_lbl 0260 `"260"', add
label define de87a_rent_lbl 0261 `"261"', add
label define de87a_rent_lbl 0262 `"262"', add
label define de87a_rent_lbl 0263 `"263"', add
label define de87a_rent_lbl 0264 `"264"', add
label define de87a_rent_lbl 0265 `"265"', add
label define de87a_rent_lbl 0266 `"266"', add
label define de87a_rent_lbl 0267 `"267"', add
label define de87a_rent_lbl 0268 `"268"', add
label define de87a_rent_lbl 0269 `"269"', add
label define de87a_rent_lbl 0270 `"270"', add
label define de87a_rent_lbl 0271 `"271"', add
label define de87a_rent_lbl 0272 `"272"', add
label define de87a_rent_lbl 0273 `"273"', add
label define de87a_rent_lbl 0274 `"274"', add
label define de87a_rent_lbl 0275 `"275"', add
label define de87a_rent_lbl 0276 `"276"', add
label define de87a_rent_lbl 0277 `"277"', add
label define de87a_rent_lbl 0278 `"278"', add
label define de87a_rent_lbl 0279 `"279"', add
label define de87a_rent_lbl 0280 `"280"', add
label define de87a_rent_lbl 0281 `"281"', add
label define de87a_rent_lbl 0282 `"282"', add
label define de87a_rent_lbl 0283 `"283"', add
label define de87a_rent_lbl 0284 `"284"', add
label define de87a_rent_lbl 0285 `"285"', add
label define de87a_rent_lbl 0286 `"286"', add
label define de87a_rent_lbl 0287 `"287"', add
label define de87a_rent_lbl 0288 `"288"', add
label define de87a_rent_lbl 0289 `"289"', add
label define de87a_rent_lbl 0290 `"290"', add
label define de87a_rent_lbl 0291 `"291"', add
label define de87a_rent_lbl 0292 `"292"', add
label define de87a_rent_lbl 0293 `"293"', add
label define de87a_rent_lbl 0294 `"294"', add
label define de87a_rent_lbl 0295 `"295"', add
label define de87a_rent_lbl 0296 `"296"', add
label define de87a_rent_lbl 0297 `"297"', add
label define de87a_rent_lbl 0298 `"298"', add
label define de87a_rent_lbl 0299 `"299"', add
label define de87a_rent_lbl 0300 `"300"', add
label define de87a_rent_lbl 0301 `"301"', add
label define de87a_rent_lbl 0302 `"302"', add
label define de87a_rent_lbl 0303 `"303"', add
label define de87a_rent_lbl 0304 `"304"', add
label define de87a_rent_lbl 0305 `"305"', add
label define de87a_rent_lbl 0306 `"306"', add
label define de87a_rent_lbl 0307 `"307"', add
label define de87a_rent_lbl 0308 `"308"', add
label define de87a_rent_lbl 0309 `"309"', add
label define de87a_rent_lbl 0310 `"310"', add
label define de87a_rent_lbl 0311 `"311"', add
label define de87a_rent_lbl 0312 `"312"', add
label define de87a_rent_lbl 0313 `"313"', add
label define de87a_rent_lbl 0314 `"314"', add
label define de87a_rent_lbl 0315 `"315"', add
label define de87a_rent_lbl 0316 `"316"', add
label define de87a_rent_lbl 0317 `"317"', add
label define de87a_rent_lbl 0318 `"318"', add
label define de87a_rent_lbl 0319 `"319"', add
label define de87a_rent_lbl 0320 `"320"', add
label define de87a_rent_lbl 0321 `"321"', add
label define de87a_rent_lbl 0322 `"322"', add
label define de87a_rent_lbl 0323 `"323"', add
label define de87a_rent_lbl 0324 `"324"', add
label define de87a_rent_lbl 0325 `"325"', add
label define de87a_rent_lbl 0326 `"326"', add
label define de87a_rent_lbl 0327 `"327"', add
label define de87a_rent_lbl 0328 `"328"', add
label define de87a_rent_lbl 0329 `"329"', add
label define de87a_rent_lbl 0330 `"330"', add
label define de87a_rent_lbl 0331 `"331"', add
label define de87a_rent_lbl 0332 `"332"', add
label define de87a_rent_lbl 0333 `"333"', add
label define de87a_rent_lbl 0334 `"334"', add
label define de87a_rent_lbl 0335 `"335"', add
label define de87a_rent_lbl 0336 `"336"', add
label define de87a_rent_lbl 0337 `"337"', add
label define de87a_rent_lbl 0338 `"338"', add
label define de87a_rent_lbl 0339 `"339"', add
label define de87a_rent_lbl 0340 `"340"', add
label define de87a_rent_lbl 0341 `"341"', add
label define de87a_rent_lbl 0342 `"342"', add
label define de87a_rent_lbl 0343 `"343"', add
label define de87a_rent_lbl 0344 `"344"', add
label define de87a_rent_lbl 0345 `"345"', add
label define de87a_rent_lbl 0346 `"346"', add
label define de87a_rent_lbl 0347 `"347"', add
label define de87a_rent_lbl 0348 `"348"', add
label define de87a_rent_lbl 0349 `"349"', add
label define de87a_rent_lbl 0350 `"350"', add
label define de87a_rent_lbl 0351 `"351"', add
label define de87a_rent_lbl 0352 `"352"', add
label define de87a_rent_lbl 0353 `"353"', add
label define de87a_rent_lbl 0354 `"354"', add
label define de87a_rent_lbl 0355 `"355"', add
label define de87a_rent_lbl 0356 `"356"', add
label define de87a_rent_lbl 0357 `"357"', add
label define de87a_rent_lbl 0358 `"358"', add
label define de87a_rent_lbl 0359 `"359"', add
label define de87a_rent_lbl 0360 `"360"', add
label define de87a_rent_lbl 0361 `"361"', add
label define de87a_rent_lbl 0362 `"362"', add
label define de87a_rent_lbl 0363 `"363"', add
label define de87a_rent_lbl 0364 `"364"', add
label define de87a_rent_lbl 0365 `"365"', add
label define de87a_rent_lbl 0366 `"366"', add
label define de87a_rent_lbl 0367 `"367"', add
label define de87a_rent_lbl 0368 `"368"', add
label define de87a_rent_lbl 0369 `"369"', add
label define de87a_rent_lbl 0370 `"370"', add
label define de87a_rent_lbl 0371 `"371"', add
label define de87a_rent_lbl 0372 `"372"', add
label define de87a_rent_lbl 0373 `"373"', add
label define de87a_rent_lbl 0374 `"374"', add
label define de87a_rent_lbl 0375 `"375"', add
label define de87a_rent_lbl 0376 `"376"', add
label define de87a_rent_lbl 0377 `"377"', add
label define de87a_rent_lbl 0378 `"378"', add
label define de87a_rent_lbl 0379 `"379"', add
label define de87a_rent_lbl 0380 `"380"', add
label define de87a_rent_lbl 0381 `"381"', add
label define de87a_rent_lbl 0382 `"382"', add
label define de87a_rent_lbl 0383 `"383"', add
label define de87a_rent_lbl 0384 `"384"', add
label define de87a_rent_lbl 0385 `"385"', add
label define de87a_rent_lbl 0386 `"386"', add
label define de87a_rent_lbl 0387 `"387"', add
label define de87a_rent_lbl 0388 `"388"', add
label define de87a_rent_lbl 0389 `"389"', add
label define de87a_rent_lbl 0390 `"390"', add
label define de87a_rent_lbl 0391 `"391"', add
label define de87a_rent_lbl 0392 `"392"', add
label define de87a_rent_lbl 0393 `"393"', add
label define de87a_rent_lbl 0394 `"394"', add
label define de87a_rent_lbl 0395 `"395"', add
label define de87a_rent_lbl 0396 `"396"', add
label define de87a_rent_lbl 0397 `"397"', add
label define de87a_rent_lbl 0398 `"398"', add
label define de87a_rent_lbl 0399 `"399"', add
label define de87a_rent_lbl 0400 `"400"', add
label define de87a_rent_lbl 0401 `"401"', add
label define de87a_rent_lbl 0402 `"402"', add
label define de87a_rent_lbl 0403 `"403"', add
label define de87a_rent_lbl 0404 `"404"', add
label define de87a_rent_lbl 0405 `"405"', add
label define de87a_rent_lbl 0406 `"406"', add
label define de87a_rent_lbl 0407 `"407"', add
label define de87a_rent_lbl 0408 `"408"', add
label define de87a_rent_lbl 0409 `"409"', add
label define de87a_rent_lbl 0410 `"410"', add
label define de87a_rent_lbl 0411 `"411"', add
label define de87a_rent_lbl 0412 `"412"', add
label define de87a_rent_lbl 0413 `"413"', add
label define de87a_rent_lbl 0414 `"414"', add
label define de87a_rent_lbl 0415 `"415"', add
label define de87a_rent_lbl 0416 `"416"', add
label define de87a_rent_lbl 0417 `"417"', add
label define de87a_rent_lbl 0418 `"418"', add
label define de87a_rent_lbl 0419 `"419"', add
label define de87a_rent_lbl 0420 `"420"', add
label define de87a_rent_lbl 0421 `"421"', add
label define de87a_rent_lbl 0422 `"422"', add
label define de87a_rent_lbl 0423 `"423"', add
label define de87a_rent_lbl 0424 `"424"', add
label define de87a_rent_lbl 0425 `"425"', add
label define de87a_rent_lbl 0426 `"426"', add
label define de87a_rent_lbl 0427 `"427"', add
label define de87a_rent_lbl 0428 `"428"', add
label define de87a_rent_lbl 0429 `"429"', add
label define de87a_rent_lbl 0430 `"430"', add
label define de87a_rent_lbl 0431 `"431"', add
label define de87a_rent_lbl 0432 `"432"', add
label define de87a_rent_lbl 0433 `"433"', add
label define de87a_rent_lbl 0434 `"434"', add
label define de87a_rent_lbl 0435 `"435"', add
label define de87a_rent_lbl 0436 `"436"', add
label define de87a_rent_lbl 0437 `"437"', add
label define de87a_rent_lbl 0438 `"438"', add
label define de87a_rent_lbl 0439 `"439"', add
label define de87a_rent_lbl 0440 `"440"', add
label define de87a_rent_lbl 0441 `"441"', add
label define de87a_rent_lbl 0442 `"442"', add
label define de87a_rent_lbl 0443 `"443"', add
label define de87a_rent_lbl 0444 `"444"', add
label define de87a_rent_lbl 0445 `"445"', add
label define de87a_rent_lbl 0446 `"446"', add
label define de87a_rent_lbl 0447 `"447"', add
label define de87a_rent_lbl 0448 `"448"', add
label define de87a_rent_lbl 0449 `"449"', add
label define de87a_rent_lbl 0450 `"450"', add
label define de87a_rent_lbl 0451 `"451"', add
label define de87a_rent_lbl 0452 `"452"', add
label define de87a_rent_lbl 0453 `"453"', add
label define de87a_rent_lbl 0454 `"454"', add
label define de87a_rent_lbl 0455 `"455"', add
label define de87a_rent_lbl 0456 `"456"', add
label define de87a_rent_lbl 0457 `"457"', add
label define de87a_rent_lbl 0458 `"458"', add
label define de87a_rent_lbl 0459 `"459"', add
label define de87a_rent_lbl 0460 `"460"', add
label define de87a_rent_lbl 0461 `"461"', add
label define de87a_rent_lbl 0462 `"462"', add
label define de87a_rent_lbl 0463 `"463"', add
label define de87a_rent_lbl 0464 `"464"', add
label define de87a_rent_lbl 0465 `"465"', add
label define de87a_rent_lbl 0466 `"466"', add
label define de87a_rent_lbl 0467 `"467"', add
label define de87a_rent_lbl 0468 `"468"', add
label define de87a_rent_lbl 0469 `"469"', add
label define de87a_rent_lbl 0470 `"470"', add
label define de87a_rent_lbl 0471 `"471"', add
label define de87a_rent_lbl 0472 `"472"', add
label define de87a_rent_lbl 0473 `"473"', add
label define de87a_rent_lbl 0474 `"474"', add
label define de87a_rent_lbl 0475 `"475"', add
label define de87a_rent_lbl 0476 `"476"', add
label define de87a_rent_lbl 0477 `"477"', add
label define de87a_rent_lbl 0478 `"478"', add
label define de87a_rent_lbl 0479 `"479"', add
label define de87a_rent_lbl 0480 `"480"', add
label define de87a_rent_lbl 0481 `"481"', add
label define de87a_rent_lbl 0482 `"482"', add
label define de87a_rent_lbl 0483 `"483"', add
label define de87a_rent_lbl 0484 `"484"', add
label define de87a_rent_lbl 0485 `"485"', add
label define de87a_rent_lbl 0486 `"486"', add
label define de87a_rent_lbl 0487 `"487"', add
label define de87a_rent_lbl 0488 `"488"', add
label define de87a_rent_lbl 0489 `"489"', add
label define de87a_rent_lbl 0490 `"490"', add
label define de87a_rent_lbl 0491 `"491"', add
label define de87a_rent_lbl 0492 `"492"', add
label define de87a_rent_lbl 0493 `"493"', add
label define de87a_rent_lbl 0494 `"494"', add
label define de87a_rent_lbl 0495 `"495"', add
label define de87a_rent_lbl 0496 `"496"', add
label define de87a_rent_lbl 0497 `"497"', add
label define de87a_rent_lbl 0498 `"498"', add
label define de87a_rent_lbl 0499 `"499"', add
label define de87a_rent_lbl 0500 `"500"', add
label define de87a_rent_lbl 0501 `"501"', add
label define de87a_rent_lbl 0502 `"502"', add
label define de87a_rent_lbl 0503 `"503"', add
label define de87a_rent_lbl 0504 `"504"', add
label define de87a_rent_lbl 0505 `"505"', add
label define de87a_rent_lbl 0506 `"506"', add
label define de87a_rent_lbl 0507 `"507"', add
label define de87a_rent_lbl 0508 `"508"', add
label define de87a_rent_lbl 0509 `"509"', add
label define de87a_rent_lbl 0510 `"510"', add
label define de87a_rent_lbl 0511 `"511"', add
label define de87a_rent_lbl 0512 `"512"', add
label define de87a_rent_lbl 0513 `"513"', add
label define de87a_rent_lbl 0514 `"514"', add
label define de87a_rent_lbl 0515 `"515"', add
label define de87a_rent_lbl 0516 `"516"', add
label define de87a_rent_lbl 0517 `"517"', add
label define de87a_rent_lbl 0518 `"518"', add
label define de87a_rent_lbl 0519 `"519"', add
label define de87a_rent_lbl 0520 `"520"', add
label define de87a_rent_lbl 0521 `"521"', add
label define de87a_rent_lbl 0522 `"522"', add
label define de87a_rent_lbl 0523 `"523"', add
label define de87a_rent_lbl 0524 `"524"', add
label define de87a_rent_lbl 0525 `"525"', add
label define de87a_rent_lbl 0526 `"526"', add
label define de87a_rent_lbl 0527 `"527"', add
label define de87a_rent_lbl 0528 `"528"', add
label define de87a_rent_lbl 0529 `"529"', add
label define de87a_rent_lbl 0530 `"530"', add
label define de87a_rent_lbl 0531 `"531"', add
label define de87a_rent_lbl 0532 `"532"', add
label define de87a_rent_lbl 0533 `"533"', add
label define de87a_rent_lbl 0534 `"534"', add
label define de87a_rent_lbl 0535 `"535"', add
label define de87a_rent_lbl 0536 `"536"', add
label define de87a_rent_lbl 0537 `"537"', add
label define de87a_rent_lbl 0538 `"538"', add
label define de87a_rent_lbl 0539 `"539"', add
label define de87a_rent_lbl 0540 `"540"', add
label define de87a_rent_lbl 0541 `"541"', add
label define de87a_rent_lbl 0542 `"542"', add
label define de87a_rent_lbl 0543 `"543"', add
label define de87a_rent_lbl 0544 `"544"', add
label define de87a_rent_lbl 0545 `"545"', add
label define de87a_rent_lbl 0546 `"546"', add
label define de87a_rent_lbl 0547 `"547"', add
label define de87a_rent_lbl 0548 `"548"', add
label define de87a_rent_lbl 0549 `"549"', add
label define de87a_rent_lbl 0550 `"550"', add
label define de87a_rent_lbl 0551 `"551"', add
label define de87a_rent_lbl 0552 `"552"', add
label define de87a_rent_lbl 0553 `"553"', add
label define de87a_rent_lbl 0554 `"554"', add
label define de87a_rent_lbl 0555 `"555"', add
label define de87a_rent_lbl 0556 `"556"', add
label define de87a_rent_lbl 0557 `"557"', add
label define de87a_rent_lbl 0558 `"558"', add
label define de87a_rent_lbl 0559 `"559"', add
label define de87a_rent_lbl 0560 `"560"', add
label define de87a_rent_lbl 0561 `"561"', add
label define de87a_rent_lbl 0562 `"562"', add
label define de87a_rent_lbl 0563 `"563"', add
label define de87a_rent_lbl 0564 `"564"', add
label define de87a_rent_lbl 0565 `"565"', add
label define de87a_rent_lbl 0566 `"566"', add
label define de87a_rent_lbl 0567 `"567"', add
label define de87a_rent_lbl 0568 `"568"', add
label define de87a_rent_lbl 0569 `"569"', add
label define de87a_rent_lbl 0570 `"570"', add
label define de87a_rent_lbl 0571 `"571"', add
label define de87a_rent_lbl 0572 `"572"', add
label define de87a_rent_lbl 0573 `"573"', add
label define de87a_rent_lbl 0574 `"574"', add
label define de87a_rent_lbl 0575 `"575"', add
label define de87a_rent_lbl 0576 `"576"', add
label define de87a_rent_lbl 0577 `"577"', add
label define de87a_rent_lbl 0578 `"578"', add
label define de87a_rent_lbl 0579 `"579"', add
label define de87a_rent_lbl 0580 `"580"', add
label define de87a_rent_lbl 0581 `"581"', add
label define de87a_rent_lbl 0582 `"582"', add
label define de87a_rent_lbl 0583 `"583"', add
label define de87a_rent_lbl 0584 `"584"', add
label define de87a_rent_lbl 0585 `"585"', add
label define de87a_rent_lbl 0586 `"586"', add
label define de87a_rent_lbl 0587 `"587"', add
label define de87a_rent_lbl 0588 `"588"', add
label define de87a_rent_lbl 0589 `"589"', add
label define de87a_rent_lbl 0590 `"590"', add
label define de87a_rent_lbl 0591 `"591"', add
label define de87a_rent_lbl 0592 `"592"', add
label define de87a_rent_lbl 0593 `"593"', add
label define de87a_rent_lbl 0594 `"594"', add
label define de87a_rent_lbl 0595 `"595"', add
label define de87a_rent_lbl 0596 `"596"', add
label define de87a_rent_lbl 0597 `"597"', add
label define de87a_rent_lbl 0598 `"598"', add
label define de87a_rent_lbl 0599 `"599"', add
label define de87a_rent_lbl 0600 `"600"', add
label define de87a_rent_lbl 0601 `"601"', add
label define de87a_rent_lbl 0602 `"602"', add
label define de87a_rent_lbl 0603 `"603"', add
label define de87a_rent_lbl 0604 `"604"', add
label define de87a_rent_lbl 0605 `"605"', add
label define de87a_rent_lbl 0606 `"606"', add
label define de87a_rent_lbl 0607 `"607"', add
label define de87a_rent_lbl 0608 `"608"', add
label define de87a_rent_lbl 0609 `"609"', add
label define de87a_rent_lbl 0610 `"610"', add
label define de87a_rent_lbl 0620 `"620"', add
label define de87a_rent_lbl 0630 `"630"', add
label define de87a_rent_lbl 0640 `"640"', add
label define de87a_rent_lbl 0650 `"650"', add
label define de87a_rent_lbl 0660 `"660"', add
label define de87a_rent_lbl 0670 `"670"', add
label define de87a_rent_lbl 0680 `"680"', add
label define de87a_rent_lbl 0690 `"690"', add
label define de87a_rent_lbl 0700 `"700"', add
label define de87a_rent_lbl 0710 `"710"', add
label define de87a_rent_lbl 0720 `"720"', add
label define de87a_rent_lbl 0730 `"730"', add
label define de87a_rent_lbl 0740 `"740"', add
label define de87a_rent_lbl 0750 `"750"', add
label define de87a_rent_lbl 0760 `"760"', add
label define de87a_rent_lbl 0770 `"770"', add
label define de87a_rent_lbl 0780 `"780"', add
label define de87a_rent_lbl 0790 `"790"', add
label define de87a_rent_lbl 0800 `"800"', add
label define de87a_rent_lbl 0810 `"810"', add
label define de87a_rent_lbl 0820 `"820"', add
label define de87a_rent_lbl 0830 `"830"', add
label define de87a_rent_lbl 0840 `"840"', add
label define de87a_rent_lbl 0850 `"850"', add
label define de87a_rent_lbl 0860 `"860"', add
label define de87a_rent_lbl 0870 `"870"', add
label define de87a_rent_lbl 0880 `"880"', add
label define de87a_rent_lbl 0890 `"890"', add
label define de87a_rent_lbl 0900 `"900"', add
label define de87a_rent_lbl 0910 `"910"', add
label define de87a_rent_lbl 0920 `"920"', add
label define de87a_rent_lbl 0930 `"930"', add
label define de87a_rent_lbl 0940 `"940"', add
label define de87a_rent_lbl 0950 `"950"', add
label define de87a_rent_lbl 0960 `"960"', add
label define de87a_rent_lbl 0970 `"970"', add
label define de87a_rent_lbl 0980 `"980"', add
label define de87a_rent_lbl 0990 `"990"', add
label define de87a_rent_lbl 1000 `"1000"', add
label define de87a_rent_lbl 1010 `"1010"', add
label define de87a_rent_lbl 1020 `"1020"', add
label define de87a_rent_lbl 1030 `"1030"', add
label define de87a_rent_lbl 1040 `"1040"', add
label define de87a_rent_lbl 1050 `"1050"', add
label define de87a_rent_lbl 1060 `"1060"', add
label define de87a_rent_lbl 1070 `"1070"', add
label define de87a_rent_lbl 1080 `"1080"', add
label define de87a_rent_lbl 1090 `"1090"', add
label define de87a_rent_lbl 1100 `"1100"', add
label define de87a_rent_lbl 1101 `"1101+ Deutsche Marks"', add
label define de87a_rent_lbl 9999 `"NIU (Not in universe)"', add
label values de87a_rent de87a_rent_lbl

label define de87a_empdwell_lbl 1 `"No"'
label define de87a_empdwell_lbl 2 `"Yes"', add
label define de87a_empdwell_lbl 9 `"NIU (not in universe)"', add
label values de87a_empdwell de87a_empdwell_lbl

label define de87a_subrent_lbl 1 `"No"'
label define de87a_subrent_lbl 2 `"Yes"', add
label define de87a_subrent_lbl 9 `"NIU (not in universe)"', add
label values de87a_subrent de87a_subrent_lbl

label define de87a_bldtype1_lbl 1 `"Residential building (used at least 50% for residential purposes)"'
label define de87a_bldtype1_lbl 2 `"Other building with space used for residential purposes"', add
label define de87a_bldtype1_lbl 3 `"Other types of accommodation"', add
label define de87a_bldtype1_lbl 9 `"NIU (not in universe)"', add
label values de87a_bldtype1 de87a_bldtype1_lbl

label define de87a_dorms_lbl 1 `"Completely"'
label define de87a_dorms_lbl 2 `"Partly"', add
label define de87a_dorms_lbl 8 `"Unknown"', add
label define de87a_dorms_lbl 9 `"NIU (not in universe)"', add
label values de87a_dorms de87a_dorms_lbl

label define de87a_bldowner_lbl 1 `"Individual person, couple, association of heirs"'
label define de87a_bldowner_lbl 2 `"Association of dwelling owners"', add
label define de87a_bldowner_lbl 3 `"Housing for public benefit, housing cooperation"', add
label define de87a_bldowner_lbl 4 `"Independent housing company"', add
label define de87a_bldowner_lbl 5 `"Other ownership"', add
label define de87a_bldowner_lbl 9 `"NIU (not in universe)"', add
label values de87a_bldowner de87a_bldowner_lbl

label define de87a_yrbuilt_lbl 1900 `"1900 or earlier"'
label define de87a_yrbuilt_lbl 1918 `"1901 to 1918"', add
label define de87a_yrbuilt_lbl 1948 `"1919 to 1948"', add
label define de87a_yrbuilt_lbl 1957 `"1949 to 1957"', add
label define de87a_yrbuilt_lbl 1962 `"1958 to 1962"', add
label define de87a_yrbuilt_lbl 1963 `"1963"', add
label define de87a_yrbuilt_lbl 1964 `"1964"', add
label define de87a_yrbuilt_lbl 1965 `"1965"', add
label define de87a_yrbuilt_lbl 1966 `"1966"', add
label define de87a_yrbuilt_lbl 1967 `"1967"', add
label define de87a_yrbuilt_lbl 1968 `"1968"', add
label define de87a_yrbuilt_lbl 1969 `"1969"', add
label define de87a_yrbuilt_lbl 1970 `"1970"', add
label define de87a_yrbuilt_lbl 1971 `"1971"', add
label define de87a_yrbuilt_lbl 1972 `"1972"', add
label define de87a_yrbuilt_lbl 1973 `"1973"', add
label define de87a_yrbuilt_lbl 1974 `"1974"', add
label define de87a_yrbuilt_lbl 1975 `"1975"', add
label define de87a_yrbuilt_lbl 1976 `"1976"', add
label define de87a_yrbuilt_lbl 1977 `"1977"', add
label define de87a_yrbuilt_lbl 1978 `"1978"', add
label define de87a_yrbuilt_lbl 1979 `"1979"', add
label define de87a_yrbuilt_lbl 1980 `"1980"', add
label define de87a_yrbuilt_lbl 1981 `"1981"', add
label define de87a_yrbuilt_lbl 1982 `"1982"', add
label define de87a_yrbuilt_lbl 1983 `"1983"', add
label define de87a_yrbuilt_lbl 1984 `"1984"', add
label define de87a_yrbuilt_lbl 1985 `"1985"', add
label define de87a_yrbuilt_lbl 1986 `"1986"', add
label define de87a_yrbuilt_lbl 1987 `"1987"', add
label define de87a_yrbuilt_lbl 9999 `"NIU (not in universe)"', add
label values de87a_yrbuilt de87a_yrbuilt_lbl

label define de87a_subsidiz_lbl 1 `"None"'
label define de87a_subsidiz_lbl 2 `"All"', add
label define de87a_subsidiz_lbl 3 `"Partly"', add
label define de87a_subsidiz_lbl 9 `"NIU (not in universe)"', add
label values de87a_subsidiz de87a_subsidiz_lbl

label define de87a_bldtype2_lbl 1 `"Normal building, person(s) having own household"'
label define de87a_bldtype2_lbl 2 `"Community use with at least one person with own household"', add
label define de87a_bldtype2_lbl 9 `"Community use and vacant dwellings and community use without any household"', add
label values de87a_bldtype2 de87a_bldtype2_lbl

label define de87a_dwtype_lbl 01 `"Owner in principal residence"'
label define de87a_dwtype_lbl 02 `"Owner in secondary residence"', add
label define de87a_dwtype_lbl 03 `"Leisure-time dwelling with persons"', add
label define de87a_dwtype_lbl 04 `"Tenant in principal residence"', add
label define de87a_dwtype_lbl 05 `"Tenant in secondary residence"', add
label define de87a_dwtype_lbl 06 `"Completely sublet with and without dwelling characteristics"', add
label define de87a_dwtype_lbl 07 `"Subtenant with dwelling owner present"', add
label define de87a_dwtype_lbl 08 `"Dormitory with dwelling characteristics"', add
label define de87a_dwtype_lbl 09 `"Dormitory without dwelling characteristics"', add
label define de87a_dwtype_lbl 98 `"Unknown"', add
label define de87a_dwtype_lbl 99 `"NIU (not in universe)"', add
label values de87a_dwtype de87a_dwtype_lbl

label define de87a_ndwells_lbl 00 `"0"'
label define de87a_ndwells_lbl 01 `"1"', add
label define de87a_ndwells_lbl 02 `"2"', add
label define de87a_ndwells_lbl 03 `"3"', add
label define de87a_ndwells_lbl 04 `"4"', add
label define de87a_ndwells_lbl 05 `"5"', add
label define de87a_ndwells_lbl 06 `"6"', add
label define de87a_ndwells_lbl 07 `"7"', add
label define de87a_ndwells_lbl 08 `"8"', add
label define de87a_ndwells_lbl 09 `"9"', add
label define de87a_ndwells_lbl 10 `"10"', add
label define de87a_ndwells_lbl 11 `"11"', add
label define de87a_ndwells_lbl 12 `"12"', add
label define de87a_ndwells_lbl 13 `"13"', add
label define de87a_ndwells_lbl 14 `"14"', add
label define de87a_ndwells_lbl 15 `"15"', add
label define de87a_ndwells_lbl 16 `"16"', add
label define de87a_ndwells_lbl 17 `"17"', add
label define de87a_ndwells_lbl 18 `"18"', add
label define de87a_ndwells_lbl 19 `"19"', add
label define de87a_ndwells_lbl 20 `"20"', add
label define de87a_ndwells_lbl 21 `"21"', add
label define de87a_ndwells_lbl 22 `"22"', add
label define de87a_ndwells_lbl 23 `"23"', add
label define de87a_ndwells_lbl 24 `"24"', add
label define de87a_ndwells_lbl 25 `"25"', add
label define de87a_ndwells_lbl 26 `"26"', add
label define de87a_ndwells_lbl 27 `"27"', add
label define de87a_ndwells_lbl 28 `"28"', add
label define de87a_ndwells_lbl 29 `"29"', add
label define de87a_ndwells_lbl 30 `"30"', add
label define de87a_ndwells_lbl 31 `"31"', add
label define de87a_ndwells_lbl 32 `"32"', add
label define de87a_ndwells_lbl 33 `"33"', add
label define de87a_ndwells_lbl 34 `"34"', add
label define de87a_ndwells_lbl 35 `"35"', add
label define de87a_ndwells_lbl 36 `"36"', add
label define de87a_ndwells_lbl 37 `"37"', add
label define de87a_ndwells_lbl 38 `"38"', add
label define de87a_ndwells_lbl 39 `"39"', add
label define de87a_ndwells_lbl 40 `"40"', add
label define de87a_ndwells_lbl 41 `"41"', add
label define de87a_ndwells_lbl 42 `"42"', add
label define de87a_ndwells_lbl 43 `"43"', add
label define de87a_ndwells_lbl 44 `"44"', add
label define de87a_ndwells_lbl 45 `"45"', add
label define de87a_ndwells_lbl 46 `"46"', add
label define de87a_ndwells_lbl 47 `"47"', add
label define de87a_ndwells_lbl 48 `"48"', add
label define de87a_ndwells_lbl 49 `"49"', add
label define de87a_ndwells_lbl 50 `"50"', add
label define de87a_ndwells_lbl 51 `"51"', add
label define de87a_ndwells_lbl 52 `"52"', add
label define de87a_ndwells_lbl 53 `"53"', add
label define de87a_ndwells_lbl 54 `"54"', add
label define de87a_ndwells_lbl 55 `"55"', add
label define de87a_ndwells_lbl 56 `"56"', add
label define de87a_ndwells_lbl 57 `"57"', add
label define de87a_ndwells_lbl 58 `"58"', add
label define de87a_ndwells_lbl 59 `"59"', add
label define de87a_ndwells_lbl 60 `"60"', add
label define de87a_ndwells_lbl 61 `"61"', add
label define de87a_ndwells_lbl 62 `"62"', add
label define de87a_ndwells_lbl 63 `"63"', add
label define de87a_ndwells_lbl 64 `"64"', add
label define de87a_ndwells_lbl 65 `"65"', add
label define de87a_ndwells_lbl 66 `"66"', add
label define de87a_ndwells_lbl 67 `"67"', add
label define de87a_ndwells_lbl 68 `"68"', add
label define de87a_ndwells_lbl 69 `"69"', add
label define de87a_ndwells_lbl 70 `"70"', add
label define de87a_ndwells_lbl 71 `"71"', add
label define de87a_ndwells_lbl 72 `"72"', add
label define de87a_ndwells_lbl 73 `"73"', add
label define de87a_ndwells_lbl 74 `"74 and more dwellings"', add
label define de87a_ndwells_lbl 99 `"NIU (not in universe)"', add
label values de87a_ndwells de87a_ndwells_lbl

label define de87a_nothdw_lbl 00 `"0"'
label define de87a_nothdw_lbl 01 `"1"', add
label define de87a_nothdw_lbl 02 `"2"', add
label define de87a_nothdw_lbl 03 `"3"', add
label define de87a_nothdw_lbl 04 `"4"', add
label define de87a_nothdw_lbl 05 `"5"', add
label define de87a_nothdw_lbl 06 `"6"', add
label define de87a_nothdw_lbl 07 `"7"', add
label define de87a_nothdw_lbl 08 `"8"', add
label define de87a_nothdw_lbl 09 `"9"', add
label define de87a_nothdw_lbl 10 `"10+ dwelling units"', add
label define de87a_nothdw_lbl 99 `"NIU (not in universe)"', add
label values de87a_nothdw de87a_nothdw_lbl

label define de87a_nleisdw_lbl 0 `"0"'
label define de87a_nleisdw_lbl 1 `"1"', add
label define de87a_nleisdw_lbl 2 `"2"', add
label define de87a_nleisdw_lbl 3 `"3"', add
label define de87a_nleisdw_lbl 4 `"4"', add
label define de87a_nleisdw_lbl 5 `"5"', add
label define de87a_nleisdw_lbl 6 `"6"', add
label define de87a_nleisdw_lbl 7 `"7+"', add
label define de87a_nleisdw_lbl 9 `"NIU (not in universe)"', add
label values de87a_nleisdw de87a_nleisdw_lbl

label define de87a_leisbld_lbl 1 `"Yes"'
label define de87a_leisbld_lbl 2 `"No"', add
label define de87a_leisbld_lbl 9 `"NIU (not in universe)"', add
label values de87a_leisbld de87a_leisbld_lbl

label define de87a_bldarea_lbl 04161 `"4161 or more square metres"'
label define de87a_bldarea_lbl 09999 `"NIU (Not in universe)"', add
label values de87a_bldarea de87a_bldarea_lbl

label define de87a_bldheat_lbl 1 `"Remote/district heating"'
label define de87a_bldheat_lbl 2 `"Block heating"', add
label define de87a_bldheat_lbl 3 `"Central heating"', add
label define de87a_bldheat_lbl 4 `"Floor heating for all units (without solar energy)"', add
label define de87a_bldheat_lbl 5 `"Floor heating for all units (with solar energy)"', add
label define de87a_bldheat_lbl 6 `"Floor heating not for all units (without solar energy)"', add
label define de87a_bldheat_lbl 7 `"Floor heating not for all units (with solar energy)"', add
label define de87a_bldheat_lbl 8 `"Only single or multiple room stoves"', add
label define de87a_bldheat_lbl 9 `"NIU (Not in universe)"', add
label values de87a_bldheat de87a_bldheat_lbl

label define de87a_bldenerg_lbl 1 `"Gas"'
label define de87a_bldenerg_lbl 2 `"Heating oil"', add
label define de87a_bldenerg_lbl 3 `"Electricity"', add
label define de87a_bldenerg_lbl 4 `"Coal, wood, etc"', add
label define de87a_bldenerg_lbl 5 `"Tele/district heating"', add
label define de87a_bldenerg_lbl 9 `"NIU (Not in universe)"', add
label values de87a_bldenerg de87a_bldenerg_lbl

label define de87a_bldsolar_lbl 1 `"No"'
label define de87a_bldsolar_lbl 2 `"Yes"', add
label values de87a_bldsolar de87a_bldsolar_lbl

label define de87a_bldfac_lbl 1 `"With bath, WC, central heating"'
label define de87a_bldfac_lbl 2 `"With bath, WC, without central heating"', add
label define de87a_bldfac_lbl 3 `"Without bath, with WC"', add
label define de87a_bldfac_lbl 4 `"With bath, without WC"', add
label define de87a_bldfac_lbl 5 `"Without bath, WC"', add
label define de87a_bldfac_lbl 9 `"NIU (Not in universe)"', add
label values de87a_bldfac de87a_bldfac_lbl

label define de87a_rooms2_lbl 01 `"1"'
label define de87a_rooms2_lbl 02 `"2"', add
label define de87a_rooms2_lbl 03 `"3"', add
label define de87a_rooms2_lbl 04 `"4"', add
label define de87a_rooms2_lbl 05 `"5"', add
label define de87a_rooms2_lbl 06 `"6"', add
label define de87a_rooms2_lbl 07 `"7"', add
label define de87a_rooms2_lbl 08 `"8"', add
label define de87a_rooms2_lbl 09 `"9"', add
label define de87a_rooms2_lbl 10 `"10"', add
label define de87a_rooms2_lbl 99 `"NIU (Not in universe)"', add
label values de87a_rooms2 de87a_rooms2_lbl

label define de87a_rentarea_lbl 00 `"Not stated"'
label define de87a_rentarea_lbl 01 `"Under  DM 2.00"', add
label define de87a_rentarea_lbl 02 `"DM 2.00 to under DM 2.50"', add
label define de87a_rentarea_lbl 03 `"DM 2.50 to under DM 3.00"', add
label define de87a_rentarea_lbl 04 `"DM 3.00 to under DM 3.50"', add
label define de87a_rentarea_lbl 05 `"DM 3.50 to under DM 4.00"', add
label define de87a_rentarea_lbl 06 `"DM 4.00 to under DM 4.50"', add
label define de87a_rentarea_lbl 07 `"DM 4.50 to under DM 5.00"', add
label define de87a_rentarea_lbl 08 `"DM 5.00 to under DM 5.50"', add
label define de87a_rentarea_lbl 09 `"DM 5.50 to under DM 6.00"', add
label define de87a_rentarea_lbl 10 `"DM 6.00 to under DM 6.50"', add
label define de87a_rentarea_lbl 11 `"DM 6.50 to under DM 7.00"', add
label define de87a_rentarea_lbl 12 `"DM 7.00 to under DM 7.50"', add
label define de87a_rentarea_lbl 13 `"DM 7.50 to under DM 8.00"', add
label define de87a_rentarea_lbl 14 `"DM 8.00 to under DM 8.50"', add
label define de87a_rentarea_lbl 15 `"DM 8.50 to under DM 9.00"', add
label define de87a_rentarea_lbl 16 `"DM 9.00 to under DM 9.50"', add
label define de87a_rentarea_lbl 17 `"DM 9.50 to under DM 10.00"', add
label define de87a_rentarea_lbl 18 `"DM 10.00 to under DM 11.00"', add
label define de87a_rentarea_lbl 19 `"DM 11.00 to under DM 12.00"', add
label define de87a_rentarea_lbl 20 `"DM 12.00 to under DM 13.00"', add
label define de87a_rentarea_lbl 21 `"DM 13.00 to under DM 14.00"', add
label define de87a_rentarea_lbl 22 `"DM 14.00 to under DM 15.00"', add
label define de87a_rentarea_lbl 23 `"DM 15.00 to under DM 16.00"', add
label define de87a_rentarea_lbl 24 `"DM 16.00 and more"', add
label define de87a_rentarea_lbl 99 `"NIU (Not in universe)"', add
label values de87a_rentarea de87a_rentarea_lbl

label define de87a_dwhhs_lbl 1 `"1"'
label define de87a_dwhhs_lbl 2 `"2"', add
label define de87a_dwhhs_lbl 3 `"3"', add
label define de87a_dwhhs_lbl 4 `"4"', add
label define de87a_dwhhs_lbl 5 `"5"', add
label define de87a_dwhhs_lbl 6 `"6"', add
label define de87a_dwhhs_lbl 7 `"7 or more"', add
label define de87a_dwhhs_lbl 9 `"NIU (Not in universe)"', add
label values de87a_dwhhs de87a_dwhhs_lbl

label define de87a_dwpers_lbl 01 `"1"'
label define de87a_dwpers_lbl 02 `"2"', add
label define de87a_dwpers_lbl 03 `"3"', add
label define de87a_dwpers_lbl 04 `"4"', add
label define de87a_dwpers_lbl 05 `"5"', add
label define de87a_dwpers_lbl 06 `"6"', add
label define de87a_dwpers_lbl 07 `"7"', add
label define de87a_dwpers_lbl 08 `"8"', add
label define de87a_dwpers_lbl 09 `"9"', add
label define de87a_dwpers_lbl 10 `"10"', add
label define de87a_dwpers_lbl 11 `"11"', add
label define de87a_dwpers_lbl 12 `"12"', add
label define de87a_dwpers_lbl 13 `"13 or more"', add
label define de87a_dwpers_lbl 99 `"NIU (Not in universe)"', add
label values de87a_dwpers de87a_dwpers_lbl

label define de87a_nlegres_lbl 01 `"1"'
label define de87a_nlegres_lbl 02 `"2"', add
label define de87a_nlegres_lbl 03 `"3"', add
label define de87a_nlegres_lbl 04 `"4"', add
label define de87a_nlegres_lbl 05 `"5"', add
label define de87a_nlegres_lbl 06 `"6"', add
label define de87a_nlegres_lbl 07 `"7"', add
label define de87a_nlegres_lbl 08 `"8"', add
label define de87a_nlegres_lbl 09 `"9"', add
label define de87a_nlegres_lbl 10 `"10"', add
label define de87a_nlegres_lbl 11 `"11"', add
label define de87a_nlegres_lbl 12 `"12 or more"', add
label define de87a_nlegres_lbl 99 `"NIU (Not in universe)"', add
label values de87a_nlegres de87a_nlegres_lbl

label define de87a_nprinres_lbl 00 `"0"'
label define de87a_nprinres_lbl 01 `"1"', add
label define de87a_nprinres_lbl 02 `"2"', add
label define de87a_nprinres_lbl 03 `"3"', add
label define de87a_nprinres_lbl 04 `"4"', add
label define de87a_nprinres_lbl 05 `"5"', add
label define de87a_nprinres_lbl 06 `"6"', add
label define de87a_nprinres_lbl 07 `"7"', add
label define de87a_nprinres_lbl 08 `"8"', add
label define de87a_nprinres_lbl 09 `"9"', add
label define de87a_nprinres_lbl 10 `"10"', add
label define de87a_nprinres_lbl 11 `"11"', add
label define de87a_nprinres_lbl 12 `"12 or more"', add
label define de87a_nprinres_lbl 99 `"NIU (Not in universe)"', add
label values de87a_nprinres de87a_nprinres_lbl

label define de87a_pophh_lbl 00 `"0"'
label define de87a_pophh_lbl 01 `"1"', add
label define de87a_pophh_lbl 02 `"2"', add
label define de87a_pophh_lbl 03 `"3"', add
label define de87a_pophh_lbl 04 `"4"', add
label define de87a_pophh_lbl 05 `"5"', add
label define de87a_pophh_lbl 06 `"6"', add
label define de87a_pophh_lbl 07 `"7"', add
label define de87a_pophh_lbl 08 `"8"', add
label define de87a_pophh_lbl 09 `"9"', add
label define de87a_pophh_lbl 10 `"10"', add
label define de87a_pophh_lbl 11 `"11"', add
label define de87a_pophh_lbl 12 `"12 or more"', add
label define de87a_pophh_lbl 99 `"NIU (Not in universe)"', add
label values de87a_pophh de87a_pophh_lbl

label define de87a_legres2_lbl 00 `"0"'
label define de87a_legres2_lbl 01 `"1"', add
label define de87a_legres2_lbl 02 `"2"', add
label define de87a_legres2_lbl 03 `"3"', add
label define de87a_legres2_lbl 04 `"4"', add
label define de87a_legres2_lbl 05 `"5"', add
label define de87a_legres2_lbl 06 `"6"', add
label define de87a_legres2_lbl 07 `"7"', add
label define de87a_legres2_lbl 08 `"8"', add
label define de87a_legres2_lbl 09 `"9"', add
label define de87a_legres2_lbl 10 `"10"', add
label define de87a_legres2_lbl 11 `"11"', add
label define de87a_legres2_lbl 12 `"12 or more"', add
label define de87a_legres2_lbl 99 `"NIU (Not in universe)"', add
label values de87a_legres2 de87a_legres2_lbl

label define de87a_under3_lbl 0 `"0"'
label define de87a_under3_lbl 1 `"1"', add
label define de87a_under3_lbl 2 `"2"', add
label define de87a_under3_lbl 3 `"3 or more"', add
label define de87a_under3_lbl 9 `"NIU (Not in universe)"', add
label values de87a_under3 de87a_under3_lbl

label define de87a_under6_lbl 0 `"0"'
label define de87a_under6_lbl 1 `"1"', add
label define de87a_under6_lbl 2 `"2"', add
label define de87a_under6_lbl 3 `"3"', add
label define de87a_under6_lbl 4 `"4 or more"', add
label define de87a_under6_lbl 9 `"NIU (Not in universe)"', add
label values de87a_under6 de87a_under6_lbl

label define de87a_under10_lbl 0 `"0"'
label define de87a_under10_lbl 1 `"1"', add
label define de87a_under10_lbl 2 `"2"', add
label define de87a_under10_lbl 3 `"3"', add
label define de87a_under10_lbl 4 `"4"', add
label define de87a_under10_lbl 5 `"5"', add
label define de87a_under10_lbl 6 `"6 or more"', add
label define de87a_under10_lbl 9 `"NIU (Not in universe)"', add
label values de87a_under10 de87a_under10_lbl

label define de87a_under15_lbl 0 `"0"'
label define de87a_under15_lbl 1 `"1"', add
label define de87a_under15_lbl 2 `"2"', add
label define de87a_under15_lbl 3 `"3"', add
label define de87a_under15_lbl 4 `"4"', add
label define de87a_under15_lbl 5 `"5"', add
label define de87a_under15_lbl 6 `"6"', add
label define de87a_under15_lbl 7 `"7 or more"', add
label define de87a_under15_lbl 9 `"NIU (Not in universe)"', add
label values de87a_under15 de87a_under15_lbl

label define de87a_under18_lbl 0 `"0"'
label define de87a_under18_lbl 1 `"1"', add
label define de87a_under18_lbl 2 `"2"', add
label define de87a_under18_lbl 3 `"3"', add
label define de87a_under18_lbl 4 `"4"', add
label define de87a_under18_lbl 5 `"5"', add
label define de87a_under18_lbl 6 `"6"', add
label define de87a_under18_lbl 7 `"7"', add
label define de87a_under18_lbl 8 `"8 or more"', add
label define de87a_under18_lbl 9 `"NIU (Not in universe)"', add
label values de87a_under18 de87a_under18_lbl

label define de87a_nmarrs_lbl 0 `"0"'
label define de87a_nmarrs_lbl 1 `"1"', add
label define de87a_nmarrs_lbl 2 `"2"', add
label define de87a_nmarrs_lbl 3 `"3"', add
label define de87a_nmarrs_lbl 4 `"4"', add
label define de87a_nmarrs_lbl 5 `"5"', add
label define de87a_nmarrs_lbl 6 `"6 or more"', add
label define de87a_nmarrs_lbl 9 `"NIU (Not in universe)"', add
label values de87a_nmarrs de87a_nmarrs_lbl

label define de87a_ncouples_lbl 0 `"0"'
label define de87a_ncouples_lbl 1 `"1"', add
label define de87a_ncouples_lbl 2 `"2"', add
label define de87a_ncouples_lbl 3 `"3 or more"', add
label define de87a_ncouples_lbl 9 `"NIU (Not in universe)"', add
label values de87a_ncouples de87a_ncouples_lbl

label define de87a_ninc_lbl 00 `"0"'
label define de87a_ninc_lbl 01 `"1"', add
label define de87a_ninc_lbl 02 `"2"', add
label define de87a_ninc_lbl 03 `"3"', add
label define de87a_ninc_lbl 04 `"4"', add
label define de87a_ninc_lbl 05 `"5"', add
label define de87a_ninc_lbl 06 `"6"', add
label define de87a_ninc_lbl 07 `"7"', add
label define de87a_ninc_lbl 08 `"8"', add
label define de87a_ninc_lbl 09 `"9 or more"', add
label define de87a_ninc_lbl 99 `"NIU (Not in universe)"', add
label values de87a_ninc de87a_ninc_lbl

label define de87a_nincemp_lbl 0 `"0"'
label define de87a_nincemp_lbl 1 `"1"', add
label define de87a_nincemp_lbl 2 `"2"', add
label define de87a_nincemp_lbl 3 `"3"', add
label define de87a_nincemp_lbl 4 `"4"', add
label define de87a_nincemp_lbl 5 `"5"', add
label define de87a_nincemp_lbl 6 `"6"', add
label define de87a_nincemp_lbl 7 `"7"', add
label define de87a_nincemp_lbl 8 `"8 or more"', add
label define de87a_nincemp_lbl 9 `"NIU (Not in universe)"', add
label values de87a_nincemp de87a_nincemp_lbl

label define de87a_empref_lbl 1 `"Full time and pupil/student"'
label define de87a_empref_lbl 2 `"Full time and not student"', add
label define de87a_empref_lbl 3 `"Part time (to 36 hours) and student"', add
label define de87a_empref_lbl 4 `"Part time (to 36 hours) and not student"', add
label define de87a_empref_lbl 5 `"Unemployed  or seeking employment and student"', add
label define de87a_empref_lbl 6 `"Unemployed  or seeking employment and not student"', add
label define de87a_empref_lbl 7 `"Not economically active and student"', add
label define de87a_empref_lbl 8 `"Not economically active and not student"', add
label define de87a_empref_lbl 9 `"NIU (Not in universe)"', add
label values de87a_empref de87a_empref_lbl

label define de87a_classref_lbl 1 `"Skilled worker"'
label define de87a_classref_lbl 2 `"Other wage earner"', add
label define de87a_classref_lbl 3 `"Salaried employee"', add
label define de87a_classref_lbl 4 `"Apprentice"', add
label define de87a_classref_lbl 5 `"Public servant, judge, soldier, alternative to military service"', add
label define de87a_classref_lbl 6 `"Self-employed with employees"', add
label define de87a_classref_lbl 7 `"Self-employed without employees"', add
label define de87a_classref_lbl 8 `"Assistant family member"', add
label define de87a_classref_lbl 9 `"NIU (Not in universe)"', add
label values de87a_classref de87a_classref_lbl

label define de87a_trainref_lbl 1 `"Industrial"'
label define de87a_trainref_lbl 2 `"Merchant / technical"', add
label define de87a_trainref_lbl 9 `"NIU (Not in universe)"', add
label values de87a_trainref de87a_trainref_lbl

label define de87a_educref_lbl 1 `"Elementary/primary school"'
label define de87a_educref_lbl 2 `"Intermediate high school"', add
label define de87a_educref_lbl 3 `"High school with final examination qualifying for university or vocational college"', add
label define de87a_educref_lbl 8 `"Unknown"', add
label define de87a_educref_lbl 9 `"NIU (Not in universe)"', add
label values de87a_educref de87a_educref_lbl

label define de87a_univref_lbl 1 `"Fulltime vocational school (without apprenticeship schools)"'
label define de87a_univref_lbl 2 `"Vocational college"', add
label define de87a_univref_lbl 3 `"Technical/engineering college"', add
label define de87a_univref_lbl 4 `"University (including teacher college)"', add
label define de87a_univref_lbl 9 `"NIU (Not in universe)"', add
label values de87a_univref de87a_univref_lbl

label define de87a_ecacthh_lbl 0 `"0"'
label define de87a_ecacthh_lbl 1 `"1"', add
label define de87a_ecacthh_lbl 2 `"2"', add
label define de87a_ecacthh_lbl 3 `"3"', add
label define de87a_ecacthh_lbl 4 `"4"', add
label define de87a_ecacthh_lbl 5 `"5"', add
label define de87a_ecacthh_lbl 6 `"6 or more"', add
label define de87a_ecacthh_lbl 9 `"NIU (Not in universe)"', add
label values de87a_ecacthh de87a_ecacthh_lbl

label define de87a_emphh_lbl 0 `"0"'
label define de87a_emphh_lbl 1 `"1"', add
label define de87a_emphh_lbl 2 `"2"', add
label define de87a_emphh_lbl 3 `"3"', add
label define de87a_emphh_lbl 4 `"4"', add
label define de87a_emphh_lbl 5 `"5"', add
label define de87a_emphh_lbl 6 `"6 or more"', add
label define de87a_emphh_lbl 9 `"NIU (Not in universe)"', add
label values de87a_emphh de87a_emphh_lbl

label define de87a_nage1565_lbl 0 `"0"'
label define de87a_nage1565_lbl 1 `"1"', add
label define de87a_nage1565_lbl 2 `"2"', add
label define de87a_nage1565_lbl 3 `"3"', add
label define de87a_nage1565_lbl 4 `"4"', add
label define de87a_nage1565_lbl 5 `"5"', add
label define de87a_nage1565_lbl 6 `"6"', add
label define de87a_nage1565_lbl 7 `"7 or more"', add
label define de87a_nage1565_lbl 9 `"NIU (Not in universe)"', add
label values de87a_nage1565 de87a_nage1565_lbl

label define de87a_nage66_lbl 0 `"0"'
label define de87a_nage66_lbl 1 `"1"', add
label define de87a_nage66_lbl 2 `"2"', add
label define de87a_nage66_lbl 3 `"3 or more"', add
label define de87a_nage66_lbl 9 `"NIU (Not in universe)"', add
label values de87a_nage66 de87a_nage66_lbl

label define de87a_nage65_lbl 0 `"0"'
label define de87a_nage65_lbl 1 `"1"', add
label define de87a_nage65_lbl 2 `"2"', add
label define de87a_nage65_lbl 3 `"3 or more"', add
label define de87a_nage65_lbl 9 `"NIU (Not in universe)"', add
label values de87a_nage65 de87a_nage65_lbl

label define de87a_nstudent_lbl 0 `"0"'
label define de87a_nstudent_lbl 1 `"1"', add
label define de87a_nstudent_lbl 2 `"2"', add
label define de87a_nstudent_lbl 3 `"3"', add
label define de87a_nstudent_lbl 4 `"4"', add
label define de87a_nstudent_lbl 5 `"5 or more"', add
label define de87a_nstudent_lbl 9 `"NIU (Not in universe)"', add
label values de87a_nstudent de87a_nstudent_lbl

label define de87a_typehh_lbl 01 `"1 adult, age 15 to 64, male"'
label define de87a_typehh_lbl 02 `"1 adult, age 15 to 64, female"', add
label define de87a_typehh_lbl 03 `"1 adult, age 65 or older, male"', add
label define de87a_typehh_lbl 04 `"1 adult, age 65 or older, female"', add
label define de87a_typehh_lbl 05 `"2 adults, both age 15 to 64"', add
label define de87a_typehh_lbl 06 `"2 adults, both age 65 or older"', add
label define de87a_typehh_lbl 07 `"2 adults, one age 15 to 64, one age 65 or older"', add
label define de87a_typehh_lbl 08 `"1 male adult with at least one child"', add
label define de87a_typehh_lbl 09 `"1 female adult with at least 1 child"', add
label define de87a_typehh_lbl 10 `"2 adults with 1 child"', add
label define de87a_typehh_lbl 11 `"2 adults with 2 children"', add
label define de87a_typehh_lbl 12 `"2 adults with 3 children"', add
label define de87a_typehh_lbl 13 `"2 adults with 4 or more children"', add
label define de87a_typehh_lbl 14 `"3 adults or more with at least 1 child"', add
label define de87a_typehh_lbl 15 `"3 adults or more without children"', add
label define de87a_typehh_lbl 98 `"Unknown"', add
label define de87a_typehh_lbl 99 `"NIU (Not in universe)"', add
label values de87a_typehh de87a_typehh_lbl

label define de87a_citizhh_lbl 1 `"All persons in household are German"'
label define de87a_citizhh_lbl 2 `"All persons in household are foreigners"', add
label define de87a_citizhh_lbl 3 `"Household has both Germans and foreigners"', add
label define de87a_citizhh_lbl 9 `"NIU (Not in universe)"', add
label values de87a_citizhh de87a_citizhh_lbl

label define de87a_relighh_lbl 1 `"Roman-Catholic church"'
label define de87a_relighh_lbl 2 `"Protestant church"', add
label define de87a_relighh_lbl 3 `"Free Protestant church"', add
label define de87a_relighh_lbl 4 `"Jewish religious community"', add
label define de87a_relighh_lbl 5 `"Islamic religious community"', add
label define de87a_relighh_lbl 7 `"No legal affiliation with a religious community"', add
label define de87a_relighh_lbl 9 `"NIU (Not in universe)"', add
label values de87a_relighh de87a_relighh_lbl

label define de87a_nopartnr_lbl 0 `"None"'
label define de87a_nopartnr_lbl 1 `"1 person, male"', add
label define de87a_nopartnr_lbl 2 `"1 person, female"', add
label define de87a_nopartnr_lbl 3 `"2 persons, one male, one female"', add
label define de87a_nopartnr_lbl 4 `"2 persons, other"', add
label define de87a_nopartnr_lbl 5 `"3 persons"', add
label define de87a_nopartnr_lbl 6 `"4 persons or more"', add
label define de87a_nopartnr_lbl 9 `"NIU (Not in universe)"', add
label values de87a_nopartnr de87a_nopartnr_lbl

label define de87a_nopartnr_lbl 0 `"None"'
label define de87a_nopartnr_lbl 1 `"1 person, male"', add
label define de87a_nopartnr_lbl 2 `"1 person, female"', add
label define de87a_nopartnr_lbl 3 `"2 persons, one male, one female"', add
label define de87a_nopartnr_lbl 4 `"2 persons, other"', add
label define de87a_nopartnr_lbl 5 `"3 persons"', add
label define de87a_nopartnr_lbl 6 `"4 persons or more"', add
label define de87a_nopartnr_lbl 9 `"NIU (Not in universe)"', add
label values de87a_nopartnr de87a_nopartnr_lbl

label define de87a_stud1528_lbl 1 `"Yes"'
label define de87a_stud1528_lbl 2 `"No"', add
label define de87a_stud1528_lbl 9 `"NIU (Not in universe)"', add
label values de87a_stud1528 de87a_stud1528_lbl

label define de87a_pernum_lbl 00 `"Household record"'
label define de87a_pernum_lbl 01 `"1"', add
label define de87a_pernum_lbl 02 `"2"', add
label define de87a_pernum_lbl 03 `"3"', add
label define de87a_pernum_lbl 04 `"4"', add
label define de87a_pernum_lbl 05 `"5"', add
label define de87a_pernum_lbl 06 `"6"', add
label define de87a_pernum_lbl 07 `"7"', add
label define de87a_pernum_lbl 08 `"8"', add
label define de87a_pernum_lbl 09 `"9"', add
label define de87a_pernum_lbl 10 `"10"', add
label define de87a_pernum_lbl 11 `"11"', add
label define de87a_pernum_lbl 12 `"12"', add
label define de87a_pernum_lbl 13 `"13"', add
label define de87a_pernum_lbl 14 `"14"', add
label define de87a_pernum_lbl 15 `"15"', add
label define de87a_pernum_lbl 16 `"16"', add
label define de87a_pernum_lbl 17 `"17"', add
label define de87a_pernum_lbl 18 `"18"', add
label define de87a_pernum_lbl 19 `"19"', add
label define de87a_pernum_lbl 20 `"20"', add
label define de87a_pernum_lbl 21 `"21"', add
label define de87a_pernum_lbl 22 `"22"', add
label define de87a_pernum_lbl 23 `"23"', add
label define de87a_pernum_lbl 24 `"24"', add
label define de87a_pernum_lbl 25 `"25"', add
label define de87a_pernum_lbl 26 `"26"', add
label define de87a_pernum_lbl 27 `"27"', add
label define de87a_pernum_lbl 28 `"28"', add
label define de87a_pernum_lbl 29 `"29"', add
label define de87a_pernum_lbl 30 `"30"', add
label values de87a_pernum de87a_pernum_lbl

label define de87a_head_lbl 1 `"No"'
label define de87a_head_lbl 2 `"Reference person in household (contributes predominantly to the livelihood of the household)"', add
label values de87a_head de87a_head_lbl

label define de87a_sex_lbl 1 `"Male"'
label define de87a_sex_lbl 2 `"Female"', add
label values de87a_sex de87a_sex_lbl

label define de87a_marst_lbl 1 `"Single"'
label define de87a_marst_lbl 2 `"Married"', add
label define de87a_marst_lbl 3 `"Widowed"', add
label define de87a_marst_lbl 4 `"Divorced"', add
label values de87a_marst de87a_marst_lbl

label define de87a_relig_lbl 1 `"Roman Catholic church"'
label define de87a_relig_lbl 2 `"Protestant church"', add
label define de87a_relig_lbl 3 `"Free Protestant church"', add
label define de87a_relig_lbl 4 `"Jewish religious community"', add
label define de87a_relig_lbl 5 `"Islamic religious community"', add
label define de87a_relig_lbl 6 `"Other religious communities"', add
label define de87a_relig_lbl 7 `"No legal affiliation with a religious community"', add
label define de87a_relig_lbl 9 `"Unknown"', add
label values de87a_relig de87a_relig_lbl

label define de87a_citiz_lbl 1 `"German"'
label define de87a_citiz_lbl 2 `"Greek"', add
label define de87a_citiz_lbl 3 `"Italian"', add
label define de87a_citiz_lbl 4 `"Other European Community countries"', add
label define de87a_citiz_lbl 5 `"Yugoslav"', add
label define de87a_citiz_lbl 6 `"Turkish"', add
label define de87a_citiz_lbl 7 `"Others/none"', add
label values de87a_citiz de87a_citiz_lbl

label define de87a_secdwell_lbl 1 `"No"'
label define de87a_secdwell_lbl 2 `"Yes"', add
label values de87a_secdwell de87a_secdwell_lbl

label define de87a_maincoup_lbl 1 `"No"'
label define de87a_maincoup_lbl 2 `"Yes"', add
label define de87a_maincoup_lbl 8 `"Unknown"', add
label define de87a_maincoup_lbl 9 `"NIU (Not in universe)"', add
label values de87a_maincoup de87a_maincoup_lbl

label define de87a_mainothr_lbl 1 `"No"'
label define de87a_mainothr_lbl 2 `"Yes"', add
label define de87a_mainothr_lbl 8 `"Unknown"', add
label define de87a_mainothr_lbl 9 `"NIU (Not in universe)"', add
label values de87a_mainothr de87a_mainothr_lbl

label define de87a_travel_lbl 1 `"No"'
label define de87a_travel_lbl 2 `"Yes"', add
label define de87a_travel_lbl 8 `"Unknown"', add
label define de87a_travel_lbl 9 `"NIU (Not in universe)"', add
label values de87a_travel de87a_travel_lbl

label define de87a_fulltime_lbl 0 `"No"'
label define de87a_fulltime_lbl 1 `"Yes"', add
label values de87a_fulltime de87a_fulltime_lbl

label define de87a_parttime_lbl 0 `"No"'
label define de87a_parttime_lbl 1 `"Yes"', add
label values de87a_parttime de87a_parttime_lbl

label define de87a_unemp_lbl 0 `"No"'
label define de87a_unemp_lbl 1 `"Yes"', add
label values de87a_unemp de87a_unemp_lbl

label define de87a_inactiv_lbl 0 `"No"'
label define de87a_inactiv_lbl 1 `"Yes"', add
label values de87a_inactiv de87a_inactiv_lbl

label define de87a_housep_lbl 0 `"No"'
label define de87a_housep_lbl 1 `"Yes"', add
label values de87a_housep de87a_housep_lbl

label define de87a_student_lbl 0 `"No"'
label define de87a_student_lbl 1 `"Yes"', add
label values de87a_student de87a_student_lbl

label define de87a_livehood_lbl 1 `"Economic/occupational activity"'
label define de87a_livehood_lbl 2 `"Unemployment benefits or relief"', add
label define de87a_livehood_lbl 3 `"Pension, etc."', add
label define de87a_livehood_lbl 4 `"Own property, letting, leasing, provision for aged persons"', add
label define de87a_livehood_lbl 5 `"Support from spouses, parents, etc"', add
label define de87a_livehood_lbl 6 `"Other benefits (e.g. social assistance)"', add
label values de87a_livehood de87a_livehood_lbl

label define de87a_educlev_lbl 1 `"Elementary/primary school"'
label define de87a_educlev_lbl 2 `"Intermediate high school"', add
label define de87a_educlev_lbl 3 `"High school with final examination qualifying for university or vocational college"', add
label define de87a_educlev_lbl 8 `"Unknown"', add
label define de87a_educlev_lbl 9 `"NIU (Not in universe)"', add
label values de87a_educlev de87a_educlev_lbl

label define de87a_edhigher_lbl 1 `"Full-time vocational school (without apprenticeship schools)"'
label define de87a_edhigher_lbl 2 `"Vocational college"', add
label define de87a_edhigher_lbl 3 `"Technical/engineering college"', add
label define de87a_edhigher_lbl 4 `"University (including teacher college)"', add
label define de87a_edhigher_lbl 9 `"NIU (Not in universe)"', add
label values de87a_edhigher de87a_edhigher_lbl

label define de87a_edfield_lbl 01 `"Agriculture"'
label define de87a_edfield_lbl 02 `"Horticulture and viniculture"', add
label define de87a_edfield_lbl 03 `"Forestry and fishery"', add
label define de87a_edfield_lbl 04 `"Food industry and luxury foods"', add
label define de87a_edfield_lbl 05 `"Nutrition, home economics"', add
label define de87a_edfield_lbl 07 `"Mining and metallurgy"', add
label define de87a_edfield_lbl 08 `"Stone, earth, ceramic, glass"', add
label define de87a_edfield_lbl 09 `"Architecture"', add
label define de87a_edfield_lbl 10 `"Interior design"', add
label define de87a_edfield_lbl 11 `"Civil engineering"', add
label define de87a_edfield_lbl 12 `"Construction provisions"', add
label define de87a_edfield_lbl 13 `"Building industry general"', add
label define de87a_edfield_lbl 14 `"Metalworking and plastic manufacturing"', add
label define de87a_edfield_lbl 16 `"Optic-mechanics"', add
label define de87a_edfield_lbl 17 `"Mechanical engineering general"', add
label define de87a_edfield_lbl 18 `"Vehicle construction"', add
label define de87a_edfield_lbl 19 `"Electro technology"', add
label define de87a_edfield_lbl 20 `"Wood processing"', add
label define de87a_edfield_lbl 21 `"Paper manufacturing and processing and printing, photography, graphics"', add
label define de87a_edfield_lbl 23 `"Technical drawing"', add
label define de87a_edfield_lbl 24 `"Textile/leather manufacturing and processing"', add
label define de87a_edfield_lbl 26 `"Mathematics"', add
label define de87a_edfield_lbl 27 `"Data processing"', add
label define de87a_edfield_lbl 28 `"Biology and bioengineering"', add
label define de87a_edfield_lbl 29 `"Chemistry and chemical engineering"', add
label define de87a_edfield_lbl 30 `"Physics and physic engineering"', add
label define de87a_edfield_lbl 31 `"Business economics"', add
label define de87a_edfield_lbl 32 `"Other natural sciences and science-technical fields"', add
label define de87a_edfield_lbl 34 `"Business administration"', add
label define de87a_edfield_lbl 35 `"Commercial administration"', add
label define de87a_edfield_lbl 36 `"Commodity trade"', add
label define de87a_edfield_lbl 37 `"Banking and insurance"', add
label define de87a_edfield_lbl 38 `"Traffic"', add
label define de87a_edfield_lbl 40 `"Public administration"', add
label define de87a_edfield_lbl 41 `"Public security, defense"', add
label define de87a_edfield_lbl 42 `"Law"', add
label define de87a_edfield_lbl 43 `"Economics and statistics"', add
label define de87a_edfield_lbl 45 `"Political and social sciences"', add
label define de87a_edfield_lbl 46 `"Regional planning"', add
label define de87a_edfield_lbl 48 `"Hotel, catering and tourism"', add
label define de87a_edfield_lbl 50 `"Cleaning (buildings, textiles), personal hygiene and other services"', add
label define de87a_edfield_lbl 53 `"Medicine"', add
label define de87a_edfield_lbl 54 `"Dentistry"', add
label define de87a_edfield_lbl 55 `"Veterinary medicine"', add
label define de87a_edfield_lbl 56 `"Pharmacy"', add
label define de87a_edfield_lbl 57 `"Nursing"', add
label define de87a_edfield_lbl 58 `"Medical-technical assistance"', add
label define de87a_edfield_lbl 59 `"Alternative medical treatment"', add
label define de87a_edfield_lbl 60 `"Social worker and educational sociology"', add
label define de87a_edfield_lbl 61 `"Social, senior, home and family care and other in health and social services"', add
label define de87a_edfield_lbl 64 `"Educational system"', add
label define de87a_edfield_lbl 65 `"Teaching primary school"', add
label define de87a_edfield_lbl 66 `"Teaching secondary school"', add
label define de87a_edfield_lbl 67 `"Teaching high school"', add
label define de87a_edfield_lbl 68 `"Teaching special schools"', add
label define de87a_edfield_lbl 69 `"Teaching trade schools"', add
label define de87a_edfield_lbl 70 `"Teaching music and technical subjects"', add
label define de87a_edfield_lbl 71 `"Teaching other certificates"', add
label define de87a_edfield_lbl 72 `"Protestant theology"', add
label define de87a_edfield_lbl 73 `"Catholic theology and other theology"', add
label define de87a_edfield_lbl 75 `"Philosophy"', add
label define de87a_edfield_lbl 76 `"History"', add
label define de87a_edfield_lbl 77 `"Library, documentation, publishing"', add
label define de87a_edfield_lbl 78 `"Humanities, romanic languages and literatures, Slavic studies and non-European languages and cultures"', add
label define de87a_edfield_lbl 79 `"German studies"', add
label define de87a_edfield_lbl 80 `"English studies"', add
label define de87a_edfield_lbl 84 `"Languages and cultures general"', add
label define de87a_edfield_lbl 85 `"Translation"', add
label define de87a_edfield_lbl 86 `"Psychology"', add
label define de87a_edfield_lbl 87 `"Art studies general"', add
label define de87a_edfield_lbl 88 `"Fine arts"', add
label define de87a_edfield_lbl 89 `"Visual arts"', add
label define de87a_edfield_lbl 90 `"Performing arts"', add
label define de87a_edfield_lbl 91 `"Music"', add
label define de87a_edfield_lbl 98 `"General education"', add
label define de87a_edfield_lbl 99 `"NIU (Not in universe)"', add
label values de87a_edfield de87a_edfield_lbl

label define de87a_voctrain_lbl 01 `"Farmer"'
label define de87a_voctrain_lbl 02 `"Animal breeder, fisherman"', add
label define de87a_voctrain_lbl 04 `"Agricultural worker, keeper"', add
label define de87a_voctrain_lbl 05 `"Horticulturist"', add
label define de87a_voctrain_lbl 06 `"Forester, game keeper"', add
label define de87a_voctrain_lbl 07 `"Mining mecanics; mineral, natural gas, petroleum winning; mining processor"', add
label define de87a_voctrain_lbl 10 `"Stonemason and material worker"', add
label define de87a_voctrain_lbl 12 `"Ceramicist"', add
label define de87a_voctrain_lbl 13 `"Glassmaker"', add
label define de87a_voctrain_lbl 14 `"Chemical worker and rubber and plastic former"', add
label define de87a_voctrain_lbl 16 `"Paper maker"', add
label define de87a_voctrain_lbl 17 `"Printer"', add
label define de87a_voctrain_lbl 18 `"Wood processing mechanic and similar"', add
label define de87a_voctrain_lbl 19 `"Wire-processing mechanic"', add
label define de87a_voctrain_lbl 20 `"Molder, founder"', add
label define de87a_voctrain_lbl 21 `"Metal presser (non-machining and machining)"', add
label define de87a_voctrain_lbl 23 `"Metal surface editor"', add
label define de87a_voctrain_lbl 24 `"Metal binder"', add
label define de87a_voctrain_lbl 25 `"Smithy"', add
label define de87a_voctrain_lbl 26 `"Tin smith, installer"', add
label define de87a_voctrain_lbl 27 `"Metal fitter"', add
label define de87a_voctrain_lbl 28 `"Mechanic"', add
label define de87a_voctrain_lbl 29 `"Tool maker"', add
label define de87a_voctrain_lbl 30 `"Fine structure metal worker"', add
label define de87a_voctrain_lbl 31 `"Electrician"', add
label define de87a_voctrain_lbl 33 `"Weaving jobs"', add
label define de87a_voctrain_lbl 34 `"Textile manufacturer"', add
label define de87a_voctrain_lbl 35 `"Textile fabricator and textile refiner"', add
label define de87a_voctrain_lbl 37 `"Tanner"', add
label define de87a_voctrain_lbl 39 `"Baker (baked goods and pastry maker)"', add
label define de87a_voctrain_lbl 40 `"Butcher, fish preparer"', add
label define de87a_voctrain_lbl 41 `"Cook"', add
label define de87a_voctrain_lbl 42 `"Drink and tobacoo producer"', add
label define de87a_voctrain_lbl 43 `"Other food professions"', add
label define de87a_voctrain_lbl 44 `"Mason, concrete mason"', add
label define de87a_voctrain_lbl 45 `"Carpenter, roofer"', add
label define de87a_voctrain_lbl 46 `"Asphalt layer"', add
label define de87a_voctrain_lbl 48 `"Construction fitter/designer"', add
label define de87a_voctrain_lbl 49 `"Room-and interior designer, upholsterer"', add
label define de87a_voctrain_lbl 50 `"Cabinet maker, pattern maker"', add
label define de87a_voctrain_lbl 51 `"Painter (house painter, decorator and similar professions)"', add
label define de87a_voctrain_lbl 52 `"Commercial packer (merchandise inspector, pre-shipping handler) and machinist (and affiliated )"', add
label define de87a_voctrain_lbl 62 `"Technician"', add
label define de87a_voctrain_lbl 63 `"Technical specialist"', add
label define de87a_voctrain_lbl 68 `"Merchants"', add
label define de87a_voctrain_lbl 69 `"Banker (bank clerks, insurance brokers)"', add
label define de87a_voctrain_lbl 70 `"Other service traders and affiliated professions"', add
label define de87a_voctrain_lbl 71 `"Transportation (professions of land transportation)"', add
label define de87a_voctrain_lbl 72 `"Water- and air transportation professions and warehouseman"', add
label define de87a_voctrain_lbl 73 `"Communication traffic"', add
label define de87a_voctrain_lbl 75 `"Entrepreneurs, accountants (entrepreneurs, organizers, certified public accountants)"', add
label define de87a_voctrain_lbl 77 `"Data processing agent (accountancy specialists, data processing specialists)"', add
label define de87a_voctrain_lbl 78 `"Office clerk"', add
label define de87a_voctrain_lbl 80 `"Security"', add
label define de87a_voctrain_lbl 82 `"Librarian (publicists, interpretors, librarians) and artists"', add
label define de87a_voctrain_lbl 85 `"Health service"', add
label define de87a_voctrain_lbl 86 `"Social care"', add
label define de87a_voctrain_lbl 87 `"Teacher"', add
label define de87a_voctrain_lbl 90 `"Personal hygiene"', add
label define de87a_voctrain_lbl 91 `"Hospitality industry workers"', add
label define de87a_voctrain_lbl 92 `"Home economics"', add
label define de87a_voctrain_lbl 93 `"Cleaning job"', add
label define de87a_voctrain_lbl 99 `"NIU (Not in universe)"', add
label values de87a_voctrain de87a_voctrain_lbl

label define de87a_lengtrai_lbl 1 `"1 year"'
label define de87a_lengtrai_lbl 2 `"2 years"', add
label define de87a_lengtrai_lbl 3 `"3 years"', add
label define de87a_lengtrai_lbl 4 `"4 or more years"', add
label define de87a_lengtrai_lbl 9 `"NIU (Not in universe)"', add
label values de87a_lengtrai de87a_lengtrai_lbl

label define de87a_stattrai_lbl 00 `"Saarland"'
label define de87a_stattrai_lbl 01 `"Schleswig-Holstein"', add
label define de87a_stattrai_lbl 02 `"Hamburg"', add
label define de87a_stattrai_lbl 03 `"Lower Saxony"', add
label define de87a_stattrai_lbl 04 `"Bremen"', add
label define de87a_stattrai_lbl 05 `"North Rhine-Westphalia"', add
label define de87a_stattrai_lbl 06 `"Hesse"', add
label define de87a_stattrai_lbl 07 `"Rhineland-Palatinate"', add
label define de87a_stattrai_lbl 08 `"Baden-Württemberg"', add
label define de87a_stattrai_lbl 09 `"Bavaria"', add
label define de87a_stattrai_lbl 98 `"Unknown"', add
label define de87a_stattrai_lbl 99 `"NIU (Not in universe)"', add
label values de87a_stattrai de87a_stattrai_lbl

label define de87a_travmode_lbl 1 `"Walking"'
label define de87a_travmode_lbl 2 `"Bicycle"', add
label define de87a_travmode_lbl 3 `"Car"', add
label define de87a_travmode_lbl 4 `"Underground, metro, tramway"', add
label define de87a_travmode_lbl 5 `"Railway"', add
label define de87a_travmode_lbl 6 `"Bus or other public transportation"', add
label define de87a_travmode_lbl 7 `"Other (motorcycle, scooter, moped)"', add
label define de87a_travmode_lbl 8 `"Unknown"', add
label define de87a_travmode_lbl 9 `"NIU (Not in universe)"', add
label values de87a_travmode de87a_travmode_lbl

label define de87a_travtime_lbl 1 `"None, same location"'
label define de87a_travtime_lbl 2 `"Under 15 minutes"', add
label define de87a_travtime_lbl 3 `"15 to under 30 minutes"', add
label define de87a_travtime_lbl 4 `"30 to under 45 minutes"', add
label define de87a_travtime_lbl 5 `"45 to under 60 minutes"', add
label define de87a_travtime_lbl 6 `"60 minutes or more"', add
label define de87a_travtime_lbl 8 `"Unknown"', add
label define de87a_travtime_lbl 9 `"NIU (Not in universe)"', add
label values de87a_travtime de87a_travtime_lbl

label define de87a_classwk_lbl 1 `"Skilled worker"'
label define de87a_classwk_lbl 2 `"Other wage earner"', add
label define de87a_classwk_lbl 3 `"Salaried employee"', add
label define de87a_classwk_lbl 4 `"Apprentice"', add
label define de87a_classwk_lbl 5 `"Public servant, judge, soldier, alternative to military service"', add
label define de87a_classwk_lbl 6 `"Self-employed with employees"', add
label define de87a_classwk_lbl 7 `"Self-employed without employees"', add
label define de87a_classwk_lbl 8 `"Assistant family member"', add
label define de87a_classwk_lbl 9 `"NIU (Not in universe)"', add
label values de87a_classwk de87a_classwk_lbl

label define de87a_ind_lbl 001 `"Agriculture (excluding general horticulture)"'
label define de87a_ind_lbl 002 `"General horticulture"', add
label define de87a_ind_lbl 003 `"Commercial market gardens and animal husbandry, breeding and keeping"', add
label define de87a_ind_lbl 004 `"Forestry, fishery and fish farming"', add
label define de87a_ind_lbl 006 `"Electricity, gas, district heating and water supply"', add
label define de87a_ind_lbl 007 `"Coal mining"', add
label define de87a_ind_lbl 008 `"Ore mining, other mining and peat extraction"', add
label define de87a_ind_lbl 009 `"Extraction of petroleum, natural gas"', add
label define de87a_ind_lbl 011 `"Manufacture of chemicals and chemical products (excluding synthetic fibers)"', add
label define de87a_ind_lbl 012 `"Manufacture of synthetic fibers"', add
label define de87a_ind_lbl 013 `"Refined petroleum processing"', add
label define de87a_ind_lbl 014 `"Manufacture of plastic and rubber products"', add
label define de87a_ind_lbl 015 `"Mining and quarrying"', add
label define de87a_ind_lbl 016 `"Processing of other non-metallic mineral products"', add
label define de87a_ind_lbl 017 `"China, manufacture of abrasives, manufacture and processing of glass"', add
label define de87a_ind_lbl 018 `"Blast furnaces and hot rolling mills"', add
label define de87a_ind_lbl 019 `"Metal casting"', add
label define de87a_ind_lbl 020 `"Drawing plant, cold flat mills"', add
label define de87a_ind_lbl 021 `"Steel forming, metal surface finishing, tempering, mechanics not elsewhere named"', add
label define de87a_ind_lbl 022 `"Manufacture of structural metal products"', add
label define de87a_ind_lbl 023 `"Manufacture of machinery and equipment"', add
label define de87a_ind_lbl 024 `"Manufacture of office, accounting and computing machinery"', add
label define de87a_ind_lbl 025 `"Manufacture of motor vehicles, trailers and semi-trailers"', add
label define de87a_ind_lbl 026 `"Manufacture of road vehicles (excluding automobiles)"', add
label define de87a_ind_lbl 027 `"Building and repair of ships, manufacture of aircraft and spacecraft"', add
label define de87a_ind_lbl 028 `"Manufacture of railway trains"', add
label define de87a_ind_lbl 029 `"Repair of motor vehicles, trailers and semi-trailers, bicycles, painting of road vehicles"', add
label define de87a_ind_lbl 030 `"Electrical engineering, repair of electrical appliances for the household"', add
label define de87a_ind_lbl 031 `"Precision engineering, optics, manufacture of watches"', add
label define de87a_ind_lbl 032 `"Manufacture of iron and metal products"', add
label define de87a_ind_lbl 033 `"Musical instruments manufacture, toys, jewelry; photo labs"', add
label define de87a_ind_lbl 034 `"Wood processing (without upholstery, mattresses)"', add
label define de87a_ind_lbl 035 `"Upholstery, mattresses"', add
label define de87a_ind_lbl 036 `"Paper manufacture and processing"', add
label define de87a_ind_lbl 037 `"Printers, reproduction"', add
label define de87a_ind_lbl 038 `"Leather production and processing (excluding manufacture of footwear)"', add
label define de87a_ind_lbl 039 `"Foot wear"', add
label define de87a_ind_lbl 040 `"Textiles"', add
label define de87a_ind_lbl 041 `"Apparel industry"', add
label define de87a_ind_lbl 042 `"Slaughter houses, meat product industry"', add
label define de87a_ind_lbl 043 `"Manufacture of beverages"', add
label define de87a_ind_lbl 044 `"Food processing (other than meat and beverages)"', add
label define de87a_ind_lbl 045 `"Manufacture of tobacco products"', add
label define de87a_ind_lbl 046 `"Construction (without roofing)"', add
label define de87a_ind_lbl 047 `"Roof construction and roofing"', add
label define de87a_ind_lbl 048 `"Finishing trades (without installation of heating, venting, air conditioning)"', add
label define de87a_ind_lbl 049 `"Installation of heating, venting, air conditioning"', add
label define de87a_ind_lbl 050 `"Wholesale trade of primary and half finished products"', add
label define de87a_ind_lbl 051 `"Wholesale trade of waste, scrap"', add
label define de87a_ind_lbl 052 `"Wholesale trade of food, beverages, tobacco products"', add
label define de87a_ind_lbl 053 `"Wholesale trade of textiles, apparel clothing, foot wear, leather products"', add
label define de87a_ind_lbl 054 `"Wholesale trade of iron and metal products, furniture, furnishing and household objects, precision mechanical and optical products, jewelry, toys, sporting goods"', add
label define de87a_ind_lbl 055 `"Wholesale trade of vehicles, machines, technical supplies"', add
label define de87a_ind_lbl 056 `"Wholesale trade of pharmaceutical and cosmetic products, laboratory supply, medical products, cleaning materials"', add
label define de87a_ind_lbl 057 `"Wholesale trade of paper, stationary, printed materials"', add
label define de87a_ind_lbl 058 `"Wholesale trade on a fee or contract basis"', add
label define de87a_ind_lbl 059 `"Retail trade of food, beverages, tobacco products as well as non-specialized products, with food products dominating"', add
label define de87a_ind_lbl 060 `"Retail trade of textiles, apparel, foot wear, leather goods"', add
label define de87a_ind_lbl 061 `"Retail trade of furniture, electronic products, large household appliances, musical instruments"', add
label define de87a_ind_lbl 062 `"Retail trade of paper goods, printed materials, office equipment"', add
label define de87a_ind_lbl 063 `"Retail trade of pharmaceutical and cosmetic products, medical products, cleaning materials, paint supplies"', add
label define de87a_ind_lbl 064 `"Retail trade of non-specialized products (excluding with food products dominating)"', add
label define de87a_ind_lbl 065 `"Remaining retail trade"', add
label define de87a_ind_lbl 066 `"Railroads"', add
label define de87a_ind_lbl 067 `"German federal post office"', add
label define de87a_ind_lbl 068 `"Traffic, parking lots and buildings"', add
label define de87a_ind_lbl 069 `"Inland water transport, operations of inland waterways, ports and ports facilities"', add
label define de87a_ind_lbl 070 `"Sea and costal water transport, harbors"', add
label define de87a_ind_lbl 071 `"Air transport, activities auxiliary to air transport (air fields)"', add
label define de87a_ind_lbl 072 `"Transport, storage, and communication"', add
label define de87a_ind_lbl 073 `"Credit institutions"', add
label define de87a_ind_lbl 074 `"Insurance industry"', add
label define de87a_ind_lbl 075 `"Activities auxiliary to credit institutions and insurance industry"', add
label define de87a_ind_lbl 076 `"Hotels and restaurants"', add
label define de87a_ind_lbl 077 `"Homes (excluding boarding houses, recreation and vacation homes)"', add
label define de87a_ind_lbl 078 `"Laundry, cleaning"', add
label define de87a_ind_lbl 079 `"Hair stylist and other personal care industries"', add
label define de87a_ind_lbl 080 `"Other personal services, not elsewhere mentioned"', add
label define de87a_ind_lbl 081 `"Industrial cleaning, collection and treatment of waste and other hygienic facilities"', add
label define de87a_ind_lbl 082 `"Science, research, education"', add
label define de87a_ind_lbl 083 `"Culture, arts, sports, entertainment"', add
label define de87a_ind_lbl 084 `"Publishing and printing"', add
label define de87a_ind_lbl 085 `"Health and veterinary activities"', add
label define de87a_ind_lbl 086 `"Legal activities, auditing, accounting and business consulting, technical consulting and planning, advertising, business services not elsewhere mentioned"', add
label define de87a_ind_lbl 087 `"Technical consulting and planning"', add
label define de87a_ind_lbl 088 `"Advertising"', add
label define de87a_ind_lbl 089 `"Asset management (excluding companies with limited liability), other services for business"', add
label define de87a_ind_lbl 090 `"Remaining services for business not mentioned elsewhere"', add
label define de87a_ind_lbl 091 `"Rental of chattels (excluding book, magazine and video rentals, vehicles, containers)"', add
label define de87a_ind_lbl 092 `"Housing, real estate management and rental"', add
label define de87a_ind_lbl 093 `"Other services"', add
label define de87a_ind_lbl 094 `"Non-profit organizations, not engaged in business"', add
label define de87a_ind_lbl 095 `"Non-profit organizations, engaged in business"', add
label define de87a_ind_lbl 096 `"Private households"', add
label define de87a_ind_lbl 097 `"Regional administrative bodies"', add
label define de87a_ind_lbl 098 `"Social security, employment promotion"', add
label define de87a_ind_lbl 099 `"Representations of foreign countries, foreign armed forces, international and supranational organizations of administrative character"', add
label define de87a_ind_lbl 999 `"NIU (Not in universe)"', add
label values de87a_ind de87a_ind_lbl

label define de87a_occ_lbl 011 `"Farmer"'
label define de87a_occ_lbl 012 `"Wine grower"', add
label define de87a_occ_lbl 021 `"Animal breeder"', add
label define de87a_occ_lbl 032 `"Agrarian engineer, consultant for agriculture"', add
label define de87a_occ_lbl 041 `"Farmhand"', add
label define de87a_occ_lbl 043 `"Family farmhand"', add
label define de87a_occ_lbl 044 `"Keeper"', add
label define de87a_occ_lbl 051 `"Horticulturist"', add
label define de87a_occ_lbl 052 `"Landscape gardener, garden manager"', add
label define de87a_occ_lbl 061 `"Game keeper (forest administrator, forester, game keeper)"', add
label define de87a_occ_lbl 062 `"Forester (forest worker, forest beneficiary/user)"', add
label define de87a_occ_lbl 071 `"Mining mechanic"', add
label define de87a_occ_lbl 072 `"Drilling machine, electrical, blaster miner"', add
label define de87a_occ_lbl 101 `"Stonemason"', add
label define de87a_occ_lbl 102 `"Diamond grinder"', add
label define de87a_occ_lbl 121 `"Ceramicist"', add
label define de87a_occ_lbl 131 `"Glass batch maker"', add
label define de87a_occ_lbl 141 `"Chemical processing worker"', add
label define de87a_occ_lbl 142 `"Chemical laboratory worker"', add
label define de87a_occ_lbl 143 `"Rubber processing worker"', add
label define de87a_occ_lbl 151 `"Rubber and plastic former"', add
label define de87a_occ_lbl 161 `"Paper maker"', add
label define de87a_occ_lbl 162 `"Packaging worker"', add
label define de87a_occ_lbl 163 `"Book binder"', add
label define de87a_occ_lbl 171 `"Type setter"', add
label define de87a_occ_lbl 172 `"Print form maker"', add
label define de87a_occ_lbl 173 `"Printer"', add
label define de87a_occ_lbl 174 `"Litho printer"', add
label define de87a_occ_lbl 175 `"Screen printer"', add
label define de87a_occ_lbl 177 `"Printing processor"', add
label define de87a_occ_lbl 181 `"Wood processing mechanic"', add
label define de87a_occ_lbl 191 `"Mining processing mechanic (iron, metal production worker, smelter)"', add
label define de87a_occ_lbl 192 `"Rolling mill worker"', add
label define de87a_occ_lbl 201 `"Molder (in foundry)"', add
label define de87a_occ_lbl 202 `"Founder (in foundry)"', add
label define de87a_occ_lbl 211 `"Fine stamper (sheet metal presser, drawer, puncher)"', add
label define de87a_occ_lbl 212 `"Wire maker"', add
label define de87a_occ_lbl 221 `"Metal turner"', add
label define de87a_occ_lbl 222 `"Metal cutter"', add
label define de87a_occ_lbl 223 `"Metal planer"', add
label define de87a_occ_lbl 225 `"Metal grinder"', add
label define de87a_occ_lbl 231 `"Metal polisher"', add
label define de87a_occ_lbl 234 `"Metal galvanizer"', add
label define de87a_occ_lbl 241 `"Welder"', add
label define de87a_occ_lbl 242 `"Sheet metal worker"', add
label define de87a_occ_lbl 251 `"Smith"', add
label define de87a_occ_lbl 261 `"Tin smith"', add
label define de87a_occ_lbl 262 `"Pipe installer"', add
label define de87a_occ_lbl 263 `"Pipeline installer"', add
label define de87a_occ_lbl 270 `"Metal fitter"', add
label define de87a_occ_lbl 271 `"Building fitter"', add
label define de87a_occ_lbl 272 `"Sheet metal, and synthetic material fitter"', add
label define de87a_occ_lbl 273 `"Engine fitter"', add
label define de87a_occ_lbl 274 `"Manufacturing plant fitter, repair fitter"', add
label define de87a_occ_lbl 275 `"Steel construction fitter, iron ship builder"', add
label define de87a_occ_lbl 281 `"Auto mechanic"', add
label define de87a_occ_lbl 282 `"Farm machinery mechanic"', add
label define de87a_occ_lbl 283 `"Aero plane mechanic"', add
label define de87a_occ_lbl 284 `"Precision mechanic"', add
label define de87a_occ_lbl 285 `"Mechanic (other mechanics)"', add
label define de87a_occ_lbl 291 `"Tool and die maker"', add
label define de87a_occ_lbl 301 `"Knife and jewelry stamper (fine structure metal worker)"', add
label define de87a_occ_lbl 302 `"Gold jeweler (precious metal smiths)"', add
label define de87a_occ_lbl 303 `"Dentist technician"', add
label define de87a_occ_lbl 304 `"Optician"', add
label define de87a_occ_lbl 311 `"Electro installer"', add
label define de87a_occ_lbl 312 `"Telecommunication mechanic"', add
label define de87a_occ_lbl 313 `"Electric motor mechanic"', add
label define de87a_occ_lbl 314 `"Electro mechanic"', add
label define de87a_occ_lbl 315 `"Radio and television mechanic (broadcast and sound equipment mechanic)"', add
label define de87a_occ_lbl 321 `"Electric appliance assemby worker, electric parts assembly worker"', add
label define de87a_occ_lbl 322 `"Other assembly workers"', add
label define de87a_occ_lbl 323 `"Metalworker"', add
label define de87a_occ_lbl 331 `"Weaving machine mechanic"', add
label define de87a_occ_lbl 341 `"Spinning machine programmer"', add
label define de87a_occ_lbl 342 `"Weaving machine mechanic"', add
label define de87a_occ_lbl 351 `"Tailor"', add
label define de87a_occ_lbl 352 `"Clothing seamstress"', add
label define de87a_occ_lbl 353 `"Bed sheets seamstress"', add
label define de87a_occ_lbl 356 `"Sail maker (sewing worker)"', add
label define de87a_occ_lbl 357 `"Artificial flower maker (other textile processor)"', add
label define de87a_occ_lbl 361 `"Textile dye worker"', add
label define de87a_occ_lbl 371 `"Tanner"', add
label define de87a_occ_lbl 372 `"Shoemaker"', add
label define de87a_occ_lbl 373 `"Shoe sole worker"', add
label define de87a_occ_lbl 376 `"Leather cutter (leather-clothes maker and other leather processors)"', add
label define de87a_occ_lbl 377 `"Glove maker"', add
label define de87a_occ_lbl 391 `"Baker"', add
label define de87a_occ_lbl 392 `"Pastry cook"', add
label define de87a_occ_lbl 401 `"Butcher"', add
label define de87a_occ_lbl 411 `"Cook"', add
label define de87a_occ_lbl 421 `"Wine cooper"', add
label define de87a_occ_lbl 431 `"Dairy worker"', add
label define de87a_occ_lbl 441 `"Mason"', add
label define de87a_occ_lbl 442 `"Concrete mason"', add
label define de87a_occ_lbl 451 `"Carpenter"', add
label define de87a_occ_lbl 452 `"Roofer"', add
label define de87a_occ_lbl 461 `"Cobble-stone layer"', add
label define de87a_occ_lbl 462 `"Asphalt layer"', add
label define de87a_occ_lbl 463 `"Railroad builder"', add
label define de87a_occ_lbl 466 `"Well digger (other civil engineers)"', add
label define de87a_occ_lbl 470 `"Unskilled construction worker"', add
label define de87a_occ_lbl 481 `"Stuccoer (stuccoer, gypsum plasterer, wall-plasterer)"', add
label define de87a_occ_lbl 482 `"Insulation fitter"', add
label define de87a_occ_lbl 483 `"Tile layer"', add
label define de87a_occ_lbl 484 `"Stove fitter"', add
label define de87a_occ_lbl 485 `"Glazier"', add
label define de87a_occ_lbl 491 `"Parquet layer (room fitter/designer)"', add
label define de87a_occ_lbl 492 `"Upholsterer"', add
label define de87a_occ_lbl 501 `"Cabinet maker"', add
label define de87a_occ_lbl 502 `"Pattern maker"', add
label define de87a_occ_lbl 511 `"Painter (house painter, varnish decorator)"', add
label define de87a_occ_lbl 512 `"Varnisher"', add
label define de87a_occ_lbl 521 `"Merchandise inspector"', add
label define de87a_occ_lbl 522 `"Commercial packer"', add
label define de87a_occ_lbl 531 `"Unskilled worker without specified function"', add
label define de87a_occ_lbl 541 `"Energy machinist"', add
label define de87a_occ_lbl 542 `"Bulk material-handling machinst, cable car machinist"', add
label define de87a_occ_lbl 544 `"Crane operator"', add
label define de87a_occ_lbl 545 `"Earthworks engine operator"', add
label define de87a_occ_lbl 546 `"Building machines operator"', add
label define de87a_occ_lbl 547 `"Machine maintenance worker, machinist-assistant"', add
label define de87a_occ_lbl 548 `"Stoker"', add
label define de87a_occ_lbl 549 `"Automats fitter"', add
label define de87a_occ_lbl 601 `"Bachelor of mechanical- and vehicle construction engineering"', add
label define de87a_occ_lbl 602 `"Bachelor of electrical engineering"', add
label define de87a_occ_lbl 603 `"Architect, civil engineer"', add
label define de87a_occ_lbl 604 `"Bachelor of survey engineering"', add
label define de87a_occ_lbl 605 `"Bachelor of mining engineering, metallurgy, foundry-engineering"', add
label define de87a_occ_lbl 607 `"Other bachelors of engineering"', add
label define de87a_occ_lbl 611 `"Chemists, bachelors of chemistry"', add
label define de87a_occ_lbl 612 `"Physicists, bachelors of physics, mathematicians"', add
label define de87a_occ_lbl 621 `"Mechanical engineering technician"', add
label define de87a_occ_lbl 622 `"Electricity technician"', add
label define de87a_occ_lbl 623 `"Road construction technician (construction technician)"', add
label define de87a_occ_lbl 624 `"Surveyor"', add
label define de87a_occ_lbl 625 `"Mining, metallurgy, foundry technician"', add
label define de87a_occ_lbl 626 `"Chemistry, physics technician"', add
label define de87a_occ_lbl 627 `"Other production technicians"', add
label define de87a_occ_lbl 628 `"Other technicians"', add
label define de87a_occ_lbl 629 `"Industrial production foreman, foreman"', add
label define de87a_occ_lbl 631 `"Agricultural lab technician (skilled special workers for biology and technics)"', add
label define de87a_occ_lbl 632 `"Mathematics-physics assistant (skilled special workers for physics and mathematical-technics)"', add
label define de87a_occ_lbl 633 `"Chemistry lab technician"', add
label define de87a_occ_lbl 634 `"Photo lab technician"', add
label define de87a_occ_lbl 635 `"Technical drawer"', add
label define de87a_occ_lbl 681 `"Merchant (whole sale-, retail merchant, purchasing agent)"', add
label define de87a_occ_lbl 682 `"Shop assistant"', add
label define de87a_occ_lbl 683 `"Book seller (publishing agent, bookseller)"', add
label define de87a_occ_lbl 684 `"Pharmacist chemist (skilled drugstore worker)"', add
label define de87a_occ_lbl 685 `"Pharmacy assistant"', add
label define de87a_occ_lbl 686 `"Gas station attendant"', add
label define de87a_occ_lbl 687 `"Sales representative, travelling sales representative"', add
label define de87a_occ_lbl 691 `"Bank assistant"', add
label define de87a_occ_lbl 692 `"Home loan/morgage broker"', add
label define de87a_occ_lbl 701 `"Freight agent"', add
label define de87a_occ_lbl 702 `"Travel agent"', add
label define de87a_occ_lbl 703 `"Advertising agent"', add
label define de87a_occ_lbl 704 `"Broking agent, real-estate administrator"', add
label define de87a_occ_lbl 705 `"Landlord, negotiator, auctioneer"', add
label define de87a_occ_lbl 706 `"Money collector, disburser, ticket vendor, inspector"', add
label define de87a_occ_lbl 711 `"Railroad engine driver"', add
label define de87a_occ_lbl 712 `"Railroad agent"', add
label define de87a_occ_lbl 713 `"Other railroad schedules managers, -conductors"', add
label define de87a_occ_lbl 714 `"Trucker"', add
label define de87a_occ_lbl 716 `"Road keeper"', add
label define de87a_occ_lbl 721 `"Nautical navigator"', add
label define de87a_occ_lbl 724 `"Inland boatman"', add
label define de87a_occ_lbl 726 `"Air transportation professions"', add
label define de87a_occ_lbl 731 `"Post and mail contractor"', add
label define de87a_occ_lbl 733 `"Radio operator"', add
label define de87a_occ_lbl 741 `"Dental supply agent (warehouse supervisor, stockroom staff)"', add
label define de87a_occ_lbl 742 `"Transport equipment operator"', add
label define de87a_occ_lbl 744 `"Freight assistant"', add
label define de87a_occ_lbl 751 `"Entrepreneur, managing director, division manager"', add
label define de87a_occ_lbl 752 `"Management consultant, organizer"', add
label define de87a_occ_lbl 753 `"Book keeper (certified public accountant, tax advisor)"', add
label define de87a_occ_lbl 761 `"Members of the parliament, ministers, elected public servants"', add
label define de87a_occ_lbl 762 `"Directing and acting administration specialists"', add
label define de87a_occ_lbl 771 `"Financial assessment specialist, computation specialist"', add
label define de87a_occ_lbl 772 `"Book keeper"', add
label define de87a_occ_lbl 773 `"Cashier, treasurer"', add
label define de87a_occ_lbl 774 `"Data processing agent"', add
label define de87a_occ_lbl 781 `"Office clerk"', add
label define de87a_occ_lbl 782 `"Office assistant (shorthand, machine shorthand, typing machine specialist)"', add
label define de87a_occ_lbl 783 `"Data entry specialist"', add
label define de87a_occ_lbl 784 `"Office assistants"', add
label define de87a_occ_lbl 791 `"Manufacturing plant security personnel, detectives"', add
label define de87a_occ_lbl 792 `"Guard, warden"', add
label define de87a_occ_lbl 793 `"Doorman / front desk person, building maintenance supervisor"', add
label define de87a_occ_lbl 794 `"Building janitor, company janitor"', add
label define de87a_occ_lbl 801 `"Soldiers, border police force, police"', add
label define de87a_occ_lbl 802 `"Fire fighters"', add
label define de87a_occ_lbl 803 `"Diver (safety inspector)"', add
label define de87a_occ_lbl 804 `"Chimney sweeper"', add
label define de87a_occ_lbl 811 `"Judicial officer"', add
label define de87a_occ_lbl 812 `"Judicial registrar / legal guardian"', add
label define de87a_occ_lbl 813 `"Lawyer, legal advisor"', add
label define de87a_occ_lbl 814 `"Law enforcer"', add
label define de87a_occ_lbl 821 `"Publicists"', add
label define de87a_occ_lbl 822 `"Interpretors, translators"', add
label define de87a_occ_lbl 823 `"Librarian (librarians, archivists, museum specialists)"', add
label define de87a_occ_lbl 831 `"Musician"', add
label define de87a_occ_lbl 832 `"Performer"', add
label define de87a_occ_lbl 833 `"Graphic drawer (visual artist, graphic artist)"', add
label define de87a_occ_lbl 834 `"Sign painter (stage painter, sign painter)"', add
label define de87a_occ_lbl 835 `"Artistic and affiliated professions for stage, visual, and sound technology"', add
label define de87a_occ_lbl 836 `"Shopping window decorator (showroom, commercial display decorator)"', add
label define de87a_occ_lbl 837 `"Photographer"', add
label define de87a_occ_lbl 841 `"Mecial doctors"', add
label define de87a_occ_lbl 842 `"Dentists"', add
label define de87a_occ_lbl 843 `"Veterinarians"', add
label define de87a_occ_lbl 844 `"Pharmacists"', add
label define de87a_occ_lbl 851 `"Natural health professional (non-medical practicioner)"', add
label define de87a_occ_lbl 852 `"Physiotherapist (massage therapist, physical therapist and similar professions)"', add
label define de87a_occ_lbl 853 `"Nurse (male and female nurses, orderly, midwife)"', add
label define de87a_occ_lbl 854 `"Nursing assistant"', add
label define de87a_occ_lbl 856 `"Doctor office assistant"', add
label define de87a_occ_lbl 857 `"Veterinary lab technician"', add
label define de87a_occ_lbl 861 `"Geriatric nurse (social worker, visiting nurse)"', add
label define de87a_occ_lbl 862 `"Child care worker (orphanage and foster institutions principals, special needs teachers)"', add
label define de87a_occ_lbl 863 `"Occupational guidance counselors"', add
label define de87a_occ_lbl 864 `"Nursery school teacher (nursery school teachers, nannies)"', add
label define de87a_occ_lbl 871 `"University teachers, college, and art college teachers"', add
label define de87a_occ_lbl 872 `"High school teachers"', add
label define de87a_occ_lbl 873 `"Middle school, elementary, special needs school teachers"', add
label define de87a_occ_lbl 874 `"Vocational college teachers, artisan instructors"', add
label define de87a_occ_lbl 875 `"Art and music teachers"', add
label define de87a_occ_lbl 876 `"Swimming instructor (physical education teacher)"', add
label define de87a_occ_lbl 877 `"Other teachers"', add
label define de87a_occ_lbl 881 `"Economist, social scientist, statistician"', add
label define de87a_occ_lbl 882 `"Humanities and arts scholar"', add
label define de87a_occ_lbl 883 `"Scientist"', add
label define de87a_occ_lbl 891 `"Pastor, chaplain, religous community leaders"', add
label define de87a_occ_lbl 892 `"Members of monastic orders without specified occupation"', add
label define de87a_occ_lbl 901 `"Hair dresser"', add
label define de87a_occ_lbl 902 `"Pedicurist (other personal care workers)"', add
label define de87a_occ_lbl 911 `"Hotel trade assistant (restaurateurs, hoteliers, hospitaility industry agents)"', add
label define de87a_occ_lbl 912 `"Waiter (waiters, stewards)"', add
label define de87a_occ_lbl 913 `"Restaurant trade assistant (other hospitality industry workers)"', add
label define de87a_occ_lbl 921 `"Housekeeper"', add
label define de87a_occ_lbl 922 `"Consumer counselor"', add
label define de87a_occ_lbl 931 `"Launderer (launderer, clothes presser)"', add
label define de87a_occ_lbl 933 `"Room, household items cleaner"', add
label define de87a_occ_lbl 934 `"Building cleaner (window, building cleaner )"', add
label define de87a_occ_lbl 935 `"Disposer (road cleaner, scavanger)"', add
label define de87a_occ_lbl 936 `"Automotive vehicle washer, care specialist"', add
label define de87a_occ_lbl 937 `"Machine, container cleaners and related professions)"', add
label define de87a_occ_lbl 971 `"Assisting family members  other than agriculture"', add
label define de87a_occ_lbl 981 `"Apprentices with yet undetermined profession"', add
label define de87a_occ_lbl 982 `"Interns, trainees with yet undetermined profession"', add
label define de87a_occ_lbl 991 `"Employees without specified occupation"', add
label define de87a_occ_lbl 999 `"NIU (Not in universe)"', add
label values de87a_occ de87a_occ_lbl

label define de87a_secemp_lbl 1 `"In agriculture"'
label define de87a_secemp_lbl 2 `"In non-agriculture"', add
label define de87a_secemp_lbl 9 `"NIU (Not in universe)"', add
label values de87a_secemp de87a_secemp_lbl

label define de87a_prinres_lbl 1 `"Persons with only one dwelling in FRG (including West Berlin)"'
label define de87a_prinres_lbl 2 `"Persons with other dwellings in addition to principal dwelling at place of enumeration"', add
label define de87a_prinres_lbl 3 `"Persons with other dwellings in addition to secondary dwelling at place of enumeration"', add
label values de87a_prinres de87a_prinres_lbl

label define de87a_legres_lbl 1 `"Persons with only one dwelling in FRG (including West Berlin)"'
label define de87a_legres_lbl 2 `"Persons with additional dwellings, belong to population at place of enumeration"', add
label define de87a_legres_lbl 3 `"Persons with additional dwellings, do not belong to population at place of enumeration"', add
label values de87a_legres de87a_legres_lbl

label define de87a_resident_lbl 1 `"Population at family place of residence"'
label define de87a_resident_lbl 2 `"Population not at family place of residence"', add
label define de87a_resident_lbl 3 `"Persons without own household"', add
label values de87a_resident de87a_resident_lbl

label define de87a_empstat_lbl 1 `"Employed"'
label define de87a_empstat_lbl 2 `"Not-employed"', add
label define de87a_empstat_lbl 3 `"Not economically active"', add
label values de87a_empstat de87a_empstat_lbl

label define de87a_age_lbl 00 `"0"'
label define de87a_age_lbl 01 `"1"', add
label define de87a_age_lbl 02 `"2"', add
label define de87a_age_lbl 03 `"3"', add
label define de87a_age_lbl 04 `"4"', add
label define de87a_age_lbl 05 `"5"', add
label define de87a_age_lbl 06 `"6"', add
label define de87a_age_lbl 07 `"7"', add
label define de87a_age_lbl 08 `"8"', add
label define de87a_age_lbl 09 `"9"', add
label define de87a_age_lbl 10 `"10"', add
label define de87a_age_lbl 11 `"11"', add
label define de87a_age_lbl 12 `"12"', add
label define de87a_age_lbl 13 `"13"', add
label define de87a_age_lbl 14 `"14"', add
label define de87a_age_lbl 15 `"15"', add
label define de87a_age_lbl 16 `"16"', add
label define de87a_age_lbl 17 `"17"', add
label define de87a_age_lbl 18 `"18"', add
label define de87a_age_lbl 19 `"19"', add
label define de87a_age_lbl 20 `"20"', add
label define de87a_age_lbl 21 `"21"', add
label define de87a_age_lbl 22 `"22"', add
label define de87a_age_lbl 23 `"23"', add
label define de87a_age_lbl 24 `"24"', add
label define de87a_age_lbl 25 `"25"', add
label define de87a_age_lbl 26 `"26"', add
label define de87a_age_lbl 27 `"27"', add
label define de87a_age_lbl 28 `"28"', add
label define de87a_age_lbl 29 `"29"', add
label define de87a_age_lbl 30 `"30"', add
label define de87a_age_lbl 31 `"31"', add
label define de87a_age_lbl 32 `"32"', add
label define de87a_age_lbl 33 `"33"', add
label define de87a_age_lbl 34 `"34"', add
label define de87a_age_lbl 35 `"35"', add
label define de87a_age_lbl 36 `"36"', add
label define de87a_age_lbl 37 `"37"', add
label define de87a_age_lbl 38 `"38"', add
label define de87a_age_lbl 39 `"39"', add
label define de87a_age_lbl 40 `"40"', add
label define de87a_age_lbl 41 `"41"', add
label define de87a_age_lbl 42 `"42"', add
label define de87a_age_lbl 43 `"43"', add
label define de87a_age_lbl 44 `"44"', add
label define de87a_age_lbl 45 `"45"', add
label define de87a_age_lbl 46 `"46"', add
label define de87a_age_lbl 47 `"47"', add
label define de87a_age_lbl 48 `"48"', add
label define de87a_age_lbl 49 `"49"', add
label define de87a_age_lbl 50 `"50"', add
label define de87a_age_lbl 51 `"51"', add
label define de87a_age_lbl 52 `"52"', add
label define de87a_age_lbl 53 `"53"', add
label define de87a_age_lbl 54 `"54"', add
label define de87a_age_lbl 55 `"55"', add
label define de87a_age_lbl 56 `"56"', add
label define de87a_age_lbl 57 `"57"', add
label define de87a_age_lbl 58 `"58"', add
label define de87a_age_lbl 59 `"59"', add
label define de87a_age_lbl 60 `"60"', add
label define de87a_age_lbl 61 `"61"', add
label define de87a_age_lbl 62 `"62"', add
label define de87a_age_lbl 63 `"63"', add
label define de87a_age_lbl 64 `"64"', add
label define de87a_age_lbl 65 `"65"', add
label define de87a_age_lbl 66 `"66"', add
label define de87a_age_lbl 67 `"67"', add
label define de87a_age_lbl 68 `"68"', add
label define de87a_age_lbl 69 `"69"', add
label define de87a_age_lbl 70 `"70"', add
label define de87a_age_lbl 71 `"71"', add
label define de87a_age_lbl 72 `"72"', add
label define de87a_age_lbl 73 `"73"', add
label define de87a_age_lbl 74 `"74"', add
label define de87a_age_lbl 75 `"75"', add
label define de87a_age_lbl 76 `"76"', add
label define de87a_age_lbl 77 `"77"', add
label define de87a_age_lbl 78 `"78"', add
label define de87a_age_lbl 79 `"79"', add
label define de87a_age_lbl 80 `"80"', add
label define de87a_age_lbl 81 `"81"', add
label define de87a_age_lbl 82 `"82"', add
label define de87a_age_lbl 83 `"83"', add
label define de87a_age_lbl 84 `"84"', add
label define de87a_age_lbl 85 `"85"', add
label define de87a_age_lbl 86 `"86"', add
label define de87a_age_lbl 87 `"87"', add
label define de87a_age_lbl 88 `"88"', add
label define de87a_age_lbl 89 `"89"', add
label define de87a_age_lbl 90 `"90"', add
label define de87a_age_lbl 91 `"91"', add
label define de87a_age_lbl 92 `"92"', add
label define de87a_age_lbl 93 `"93"', add
label define de87a_age_lbl 94 `"94"', add
label define de87a_age_lbl 95 `"95 years and older"', add
label values de87a_age de87a_age_lbl

label define de87a_married_lbl 1 `"Married with partner in same household"'
label define de87a_married_lbl 2 `"Married with partner not in same household"', add
label define de87a_married_lbl 3 `"Not married"', add
label define de87a_married_lbl 9 `"NIU (Not in universe)"', add
label values de87a_married de87a_married_lbl

label define de87a_socecun_lbl 01 `"Employers with agricultural occupations and their unpaid family workers"'
label define de87a_socecun_lbl 02 `"Own-account workers with agricultural occupations and their unpaid family workers"', add
label define de87a_socecun_lbl 03 `"Employers with agricultural occupations"', add
label define de87a_socecun_lbl 04 `"Self-employed persons in free and related professions and their unpaid family workers"', add
label define de87a_socecun_lbl 05 `"Employers and their unpaid family workers"', add
label define de87a_socecun_lbl 06 `"Own account workers and their unpaid family workers"', add
label define de87a_socecun_lbl 07 `"Employees with free and related professions"', add
label define de87a_socecun_lbl 08 `"Managers, legislative officials and government administrators; other non-manual employees; members of the armed forces"', add
label define de87a_socecun_lbl 09 `"Foremen and supervisors of manual workers; skilled and semi-skilled manual workers"', add
label define de87a_socecun_lbl 10 `"Laborers"', add
label define de87a_socecun_lbl 11 `"Persons seeking their first job / others"', add
label define de87a_socecun_lbl 12 `"Not economically active persons"', add
label define de87a_socecun_lbl 99 `"NIU (Not in universe)"', add
label values de87a_socecun de87a_socecun_lbl

label define de87a_sector_lbl 00 `"Agriculture, forestry, fishery"'
label define de87a_sector_lbl 01 `"Energy and water provision, mining"', add
label define de87a_sector_lbl 02 `"Manufacturing"', add
label define de87a_sector_lbl 03 `"Construction"', add
label define de87a_sector_lbl 04 `"Wholesale, retail"', add
label define de87a_sector_lbl 05 `"Traffic, communications"', add
label define de87a_sector_lbl 06 `"Banks, insurance"', add
label define de87a_sector_lbl 07 `"Services provided by business and self-employed persons"', add
label define de87a_sector_lbl 08 `"Non-profit organizations and private households"', add
label define de87a_sector_lbl 09 `"Regional administrative bodies and social insurance"', add
label define de87a_sector_lbl 99 `"NIU (Not in universe)"', add
label values de87a_sector de87a_sector_lbl

label define de87a_socecon2_lbl 01 `"Farmer with employees"'
label define de87a_socecon2_lbl 02 `"Farmer without employees"', add
label define de87a_socecon2_lbl 03 `"Other workers in agriculture"', add
label define de87a_socecon2_lbl 04 `"Employer or self-employed person in independent professions"', add
label define de87a_socecon2_lbl 05 `"Employer in industry, construction, trade, transport, services"', add
label define de87a_socecon2_lbl 06 `"Self-employed person in industry, construction, trade, transport, services"', add
label define de87a_socecon2_lbl 07 `"Employee in independent and related professions"', add
label define de87a_socecon2_lbl 08 `"Member of boards, member of governments, higher public servant, office supervisor or manager, office and trade clerks, member of armed forces"', add
label define de87a_socecon2_lbl 09 `"Supervisor in manual trades, skilled worker, laborer"', add
label define de87a_socecon2_lbl 10 `"Other employed or unemployed persons"', add
label define de87a_socecon2_lbl 99 `"NIU (Not in universe)"', add
label values de87a_socecon2 de87a_socecon2_lbl

label define de87a_commtype_lbl 10 `"Works, but does not commute to work"'
label define de87a_commtype_lbl 11 `"Commutes to work within community"', add
label define de87a_commtype_lbl 12 `"Commutes to work within county"', add
label define de87a_commtype_lbl 13 `"Commutes to work within federal state"', add
label define de87a_commtype_lbl 14 `"Commutes to work within FRG"', add
label define de87a_commtype_lbl 15 `"Commutes to work in foreign country (daily)"', add
label define de87a_commtype_lbl 16 `"Commutes to work in foreign country (long distance)"', add
label define de87a_commtype_lbl 20 `"In education/training, but does not commute"', add
label define de87a_commtype_lbl 21 `"Commutes to education/training within community"', add
label define de87a_commtype_lbl 22 `"Commutes to education/training within county"', add
label define de87a_commtype_lbl 23 `"Commutes to education/training within federal state"', add
label define de87a_commtype_lbl 24 `"Commutes to education/training within FRG"', add
label define de87a_commtype_lbl 25 `"Commutes to education/training in foreign country (daily or long distance)"', add
label define de87a_commtype_lbl 30 `"Commutes to work (long distance)"', add
label define de87a_commtype_lbl 40 `"Commutes to education/training (long distance)"', add
label define de87a_commtype_lbl 50 `"Commutes to work to unknown destination"', add
label define de87a_commtype_lbl 60 `"Commutes to education/training long and short distance to unknown destination"', add
label define de87a_commtype_lbl 70 `"Commutes to work long distance to unknown location"', add
label define de87a_commtype_lbl 98 `"Unknown"', add
label define de87a_commtype_lbl 99 `"NIU (Not in universe)"', add
label values de87a_commtype de87a_commtype_lbl


