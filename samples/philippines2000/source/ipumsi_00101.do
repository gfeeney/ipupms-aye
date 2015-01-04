* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    ph00a_dwnum     22-28    ///
  byte    ph00a_pern      29-30    ///
  byte    ph00a_fbig      31-31    ///
  byte    ph00a_fmphd     32-32    ///
  byte    ph00a_region    33-34    ///
  byte    ph00a_prov      35-36    ///
  int     ph00a_provrec   37-39    ///
  byte    ph00a_bldtype   40-40    ///
  byte    ph00a_walls     41-42    ///
  byte    ph00a_bldrep    43-43    ///
  byte    ph00a_yrblt     44-45    ///
  byte    ph00a_space     46-47    ///
  byte    ph00a_fuell     48-48    ///
  byte    ph00a_fuelc     49-49    ///
  byte    ph00a_watdrink  50-51    ///
  byte    ph00a_watbath   52-52    ///
  byte    ph00a_ownershp  53-53    ///
  byte    ph00a_acquire   54-54    ///
  byte    ph00a_finown    55-55    ///
  byte    ph00a_fingov    56-56    ///
  byte    ph00a_finbank   57-57    ///
  byte    ph00a_finemp    58-58    ///
  byte    ph00a_finpriv   59-59    ///
  byte    ph00a_finoth    60-60    ///
  byte    ph00a_ownlot    61-61    ///
  byte    ph00a_rent      62-62    ///
  byte    ph00a_garbage   63-63    ///
  byte    ph00a_toilet    64-64    ///
  byte    ph00a_radio     65-65    ///
  byte    ph00a_tv        66-66    ///
  byte    ph00a_refrig    67-67    ///
  byte    ph00a_vcr       68-68    ///
  byte    ph00a_phone     69-69    ///
  byte    ph00a_washer    70-70    ///
  byte    ph00a_vehicle   71-71    ///
  byte    ph00a_landres   72-72    ///
  byte    ph00a_landag    73-73    ///
  byte    ph00a_landref   74-74    ///
  byte    ph00a_landoth   75-75    ///
  int     ph00a_lang      76-78    ///
  byte    ph00a_provint   79-80    ///
  int     ph00a_resintnd  81-84    ///
  byte    ph00a_wthh      85-86    ///
  int     pernum          87-89    ///
  float   wtper           90-97    ///
  byte    ph00a_pernum    98-99    ///
  byte    ph00a_linenumo  100-101  ///
  byte    ph00a_relate    102-103  ///
  byte    ph00a_regist    104-104  ///
  int     ph00a_age       105-107  ///
  byte    ph00a_sex       108-108  ///
  byte    ph00a_overseas  109-109  ///
  byte    ph00a_marst     110-110  ///
  byte    ph00a_relig     111-112  ///
  int     ph00a_bplcntry  113-115  ///
  byte    ph00a_disab     116-116  ///
  byte    ph00a_disabtyp  117-118  ///
  int     ph00a_ethnic    119-121  ///
  byte    ph00a_lit       122-122  ///
  byte    ph00a_langfil   123-123  ///
  byte    ph00a_lange     124-124  ///
  byte    ph00a_school    125-125  ///
  byte    ph00a_schtype   126-126  ///
  byte    ph00a_edattan   127-128  ///
  byte    ph00a_prov5yr   129-130  ///
  byte    ph00a_prov10yr  131-132  ///
  int     ph00a_mun10yr   133-136  ///
  byte    ph00a_occ2      137-138  ///
  int     ph00a_occ       139-141  ///
  byte    ph00a_ind       142-143  ///
  byte    ph00a_classwk   144-144  ///
  byte    ph00a_wtper     145-146  ///
  using `"ipumsi_00101.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var ph00a_dwnum    `"Dwelling number"'
label var ph00a_pern     `"Number of persons in household"'
label var ph00a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var ph00a_fmphd    `"Misplaced head was moved to first position (dwelling-wide)"'
label var ph00a_region   `"Region"'
label var ph00a_prov     `"Province"'
label var ph00a_provrec  `"Province recode/key city"'
label var ph00a_bldtype  `"Type of building"'
label var ph00a_walls    `"Construction materials of the outer walls"'
label var ph00a_bldrep   `"State of repair"'
label var ph00a_yrblt    `"Year building/house was built"'
label var ph00a_space    `"Floor area of the housing unit"'
label var ph00a_fuell    `"Fuel for lighting"'
label var ph00a_fuelc    `"Fuel for cooking"'
label var ph00a_watdrink `"Source of water supply for cooking/drinking"'
label var ph00a_watbath  `"Source of water supply for laundry/bathing"'
label var ph00a_ownershp `"Tenure of the housing unit"'
label var ph00a_acquire  `"Acquisition of housing unit"'
label var ph00a_finown   `"Home financing, own resources"'
label var ph00a_fingov   `"Home financing, government assistance"'
label var ph00a_finbank  `"Home financing, private banks"'
label var ph00a_finemp   `"Home financing, employer's assistance"'
label var ph00a_finpriv  `"Home financing, private persons"'
label var ph00a_finoth   `"Home financing, other sources"'
label var ph00a_ownlot   `"Tenure status of the lot"'
label var ph00a_rent     `"Monthly rental of the housing unit/lot"'
label var ph00a_garbage  `"Usual manner of garbage disposal"'
label var ph00a_toilet   `"Kind of toilet facility"'
label var ph00a_radio    `"Has radio"'
label var ph00a_tv       `"Has television set"'
label var ph00a_refrig   `"Has refrigerator/freezer"'
label var ph00a_vcr      `"Has video cassette recorder"'
label var ph00a_phone    `"Has telephone/cellphone"'
label var ph00a_washer   `"Has washing machine"'
label var ph00a_vehicle  `"Has motorized vehicle"'
label var ph00a_landres  `"Owns other residential land"'
label var ph00a_landag   `"Owns agricultural land"'
label var ph00a_landref  `"Owns agricultural land acquired through carp, agrarian reform beneficiary"'
label var ph00a_landoth  `"Owns other land"'
label var ph00a_lang     `"Language/dialect generally spoken"'
label var ph00a_provint  `"Intended province of residence five years from now"'
label var ph00a_resintnd `"Intended residence five years from now"'
label var ph00a_wthh     `"Household weight"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var ph00a_pernum   `"Person number (within household)"'
label var ph00a_linenumo `"Line number, original"'
label var ph00a_relate   `"Relationship to household head"'
label var ph00a_regist   `"Birth registered with Local Civil Register"'
label var ph00a_age      `"Age"'
label var ph00a_sex      `"Sex"'
label var ph00a_overseas `"Overseas worker"'
label var ph00a_marst    `"Marital status"'
label var ph00a_relig    `"Religion"'
label var ph00a_bplcntry `"Country of birth"'
label var ph00a_disab    `"Disabled"'
label var ph00a_disabtyp `"Type of disability"'
label var ph00a_ethnic   `"Ethnicity"'
label var ph00a_lit      `"Literacy"'
label var ph00a_langfil  `"Able to speak Filipino"'
label var ph00a_lange    `"Able to speak English"'
label var ph00a_school   `"School attendance"'
label var ph00a_schtype  `"Type of school"'
label var ph00a_edattan  `"Highest grade completed"'
label var ph00a_prov5yr  `"Province of residence 5 years ago"'
label var ph00a_prov10yr `"Province of residence 10 years ago"'
label var ph00a_mun10yr  `"Municipality of residence 10 years ago"'
label var ph00a_occ2     `"Occupation, 2 digits"'
label var ph00a_occ      `"Occupation"'
label var ph00a_ind      `"Industry"'
label var ph00a_classwk  `"Class of worker"'
label var ph00a_wtper    `"Person weight"'

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

label define ph00a_pern_lbl 01 `"1"'
label define ph00a_pern_lbl 02 `"2"', add
label define ph00a_pern_lbl 03 `"3"', add
label define ph00a_pern_lbl 04 `"4"', add
label define ph00a_pern_lbl 05 `"5"', add
label define ph00a_pern_lbl 06 `"6"', add
label define ph00a_pern_lbl 07 `"7"', add
label define ph00a_pern_lbl 08 `"8"', add
label define ph00a_pern_lbl 09 `"9"', add
label define ph00a_pern_lbl 10 `"10"', add
label define ph00a_pern_lbl 11 `"11"', add
label define ph00a_pern_lbl 12 `"12"', add
label define ph00a_pern_lbl 13 `"13"', add
label define ph00a_pern_lbl 14 `"14"', add
label define ph00a_pern_lbl 15 `"15"', add
label define ph00a_pern_lbl 16 `"16"', add
label define ph00a_pern_lbl 17 `"17"', add
label define ph00a_pern_lbl 18 `"18"', add
label define ph00a_pern_lbl 19 `"19"', add
label define ph00a_pern_lbl 20 `"20"', add
label define ph00a_pern_lbl 21 `"21"', add
label define ph00a_pern_lbl 22 `"22"', add
label define ph00a_pern_lbl 23 `"23"', add
label define ph00a_pern_lbl 24 `"24"', add
label define ph00a_pern_lbl 25 `"25"', add
label define ph00a_pern_lbl 26 `"26"', add
label define ph00a_pern_lbl 27 `"27"', add
label define ph00a_pern_lbl 28 `"28"', add
label define ph00a_pern_lbl 29 `"29"', add
label define ph00a_pern_lbl 30 `"30"', add
label values ph00a_pern ph00a_pern_lbl

label define ph00a_fbig_lbl 0 `"No problem"'
label define ph00a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define ph00a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values ph00a_fbig ph00a_fbig_lbl

label define ph00a_fmphd_lbl 0 `"No"'
label define ph00a_fmphd_lbl 1 `"Yes (for one or more households in the dwelling)"', add
label values ph00a_fmphd ph00a_fmphd_lbl

label define ph00a_region_lbl 01 `"Ilocos"'
label define ph00a_region_lbl 02 `"Cagayan Valley"', add
label define ph00a_region_lbl 03 `"Central Luzon"', add
label define ph00a_region_lbl 04 `"Southern Tagalog"', add
label define ph00a_region_lbl 05 `"Bicol"', add
label define ph00a_region_lbl 06 `"Western Visayas"', add
label define ph00a_region_lbl 07 `"Central Visayas"', add
label define ph00a_region_lbl 08 `"Eastern Visayas"', add
label define ph00a_region_lbl 09 `"Western Mindanao"', add
label define ph00a_region_lbl 10 `"Northern Mindanao"', add
label define ph00a_region_lbl 11 `"Southern Mindanao"', add
label define ph00a_region_lbl 12 `"Central Mindanao"', add
label define ph00a_region_lbl 13 `"National Capital Region"', add
label define ph00a_region_lbl 14 `"Cordillera Administrative Region"', add
label define ph00a_region_lbl 15 `"Autonomous Region of Muslim Mindanao"', add
label define ph00a_region_lbl 16 `"Caraga"', add
label values ph00a_region ph00a_region_lbl

label define ph00a_prov_lbl 01 `"Abra"'
label define ph00a_prov_lbl 02 `"Agusan Del Norte"', add
label define ph00a_prov_lbl 03 `"Agusan Del Sur"', add
label define ph00a_prov_lbl 04 `"Aklan"', add
label define ph00a_prov_lbl 05 `"Albay"', add
label define ph00a_prov_lbl 06 `"Antique"', add
label define ph00a_prov_lbl 07 `"Basilan"', add
label define ph00a_prov_lbl 08 `"Bataan"', add
label define ph00a_prov_lbl 09 `"Batanes"', add
label define ph00a_prov_lbl 10 `"Batangas"', add
label define ph00a_prov_lbl 11 `"Benguet"', add
label define ph00a_prov_lbl 12 `"Bohol"', add
label define ph00a_prov_lbl 13 `"Bukidnon"', add
label define ph00a_prov_lbl 14 `"Bulacan"', add
label define ph00a_prov_lbl 15 `"Cagayan"', add
label define ph00a_prov_lbl 16 `"Camarines Norte"', add
label define ph00a_prov_lbl 17 `"Camarines Sur"', add
label define ph00a_prov_lbl 18 `"Camiguin"', add
label define ph00a_prov_lbl 19 `"Capiz"', add
label define ph00a_prov_lbl 20 `"Catanduanes"', add
label define ph00a_prov_lbl 21 `"Cavite"', add
label define ph00a_prov_lbl 22 `"Cebu"', add
label define ph00a_prov_lbl 23 `"Davao (Davao Del Norte)"', add
label define ph00a_prov_lbl 24 `"Davao Del Sur"', add
label define ph00a_prov_lbl 25 `"Davao Oriental"', add
label define ph00a_prov_lbl 26 `"Eastern Samar"', add
label define ph00a_prov_lbl 27 `"Ifugao"', add
label define ph00a_prov_lbl 28 `"Ilocos Norte"', add
label define ph00a_prov_lbl 29 `"Ilocos Sur"', add
label define ph00a_prov_lbl 30 `"Iloilo"', add
label define ph00a_prov_lbl 31 `"Isabela"', add
label define ph00a_prov_lbl 32 `"Kalinga"', add
label define ph00a_prov_lbl 33 `"La Union"', add
label define ph00a_prov_lbl 34 `"Laguna"', add
label define ph00a_prov_lbl 35 `"Lanao Del Norte"', add
label define ph00a_prov_lbl 36 `"Lanao Del Sur"', add
label define ph00a_prov_lbl 37 `"Leyte"', add
label define ph00a_prov_lbl 38 `"Maguindanao"', add
label define ph00a_prov_lbl 39 `"Manila, Metro First District"', add
label define ph00a_prov_lbl 40 `"Marinduque"', add
label define ph00a_prov_lbl 41 `"Masbate"', add
label define ph00a_prov_lbl 42 `"Misamis Occidental"', add
label define ph00a_prov_lbl 43 `"Misamis Oriental"', add
label define ph00a_prov_lbl 44 `"Mountain Province"', add
label define ph00a_prov_lbl 45 `"Negros Occidental"', add
label define ph00a_prov_lbl 46 `"Negros Oriental"', add
label define ph00a_prov_lbl 47 `"Cotabato (North Cotabato)"', add
label define ph00a_prov_lbl 48 `"Northern Samar"', add
label define ph00a_prov_lbl 49 `"Nueva Ecija"', add
label define ph00a_prov_lbl 50 `"Nueva Vizcaya"', add
label define ph00a_prov_lbl 51 `"Occidental Mindoro"', add
label define ph00a_prov_lbl 52 `"Oriental Mindoro"', add
label define ph00a_prov_lbl 53 `"Palawan"', add
label define ph00a_prov_lbl 54 `"Pampanga"', add
label define ph00a_prov_lbl 55 `"Pangasinan"', add
label define ph00a_prov_lbl 56 `"Quezon"', add
label define ph00a_prov_lbl 57 `"Quirino"', add
label define ph00a_prov_lbl 58 `"Rizal"', add
label define ph00a_prov_lbl 59 `"Romblon"', add
label define ph00a_prov_lbl 60 `"Samar (Western Samar)"', add
label define ph00a_prov_lbl 61 `"Siquijor"', add
label define ph00a_prov_lbl 62 `"Sorsogon"', add
label define ph00a_prov_lbl 63 `"South Cotabato"', add
label define ph00a_prov_lbl 64 `"Southern Leyte"', add
label define ph00a_prov_lbl 65 `"Sultan Kudarat"', add
label define ph00a_prov_lbl 66 `"Sulu"', add
label define ph00a_prov_lbl 67 `"Surigao Del Norte"', add
label define ph00a_prov_lbl 68 `"Surigao Del Sur"', add
label define ph00a_prov_lbl 69 `"Tarlac"', add
label define ph00a_prov_lbl 70 `"Tawi-Tawi"', add
label define ph00a_prov_lbl 71 `"Zambales"', add
label define ph00a_prov_lbl 72 `"Zamboanga Del Norte"', add
label define ph00a_prov_lbl 73 `"Zamboanga Del Sur"', add
label define ph00a_prov_lbl 74 `"Metro Manila, Second District"', add
label define ph00a_prov_lbl 75 `"Metro Manila, Third District"', add
label define ph00a_prov_lbl 76 `"Metro Manila, Fourth District"', add
label define ph00a_prov_lbl 77 `"Aurora"', add
label define ph00a_prov_lbl 78 `"Biliran"', add
label define ph00a_prov_lbl 79 `"Guimaras"', add
label define ph00a_prov_lbl 80 `"Sarangani"', add
label define ph00a_prov_lbl 81 `"Apayao"', add
label define ph00a_prov_lbl 82 `"Compostela Valley"', add
label define ph00a_prov_lbl 98 `"Cotabato and Marawi"', add
label values ph00a_prov ph00a_prov_lbl

label define ph00a_provrec_lbl 010 `"Abra"'
label define ph00a_provrec_lbl 020 `"Agusan Del Norte (Excluding Butuan City)"', add
label define ph00a_provrec_lbl 021 `"Butuan City (Capital)"', add
label define ph00a_provrec_lbl 030 `"Agusan Del Sur"', add
label define ph00a_provrec_lbl 040 `"Aklan"', add
label define ph00a_provrec_lbl 050 `"Albay"', add
label define ph00a_provrec_lbl 060 `"Antique"', add
label define ph00a_provrec_lbl 070 `"Basilan"', add
label define ph00a_provrec_lbl 080 `"Bataan"', add
label define ph00a_provrec_lbl 090 `"Batanes"', add
label define ph00a_provrec_lbl 100 `"Batangas"', add
label define ph00a_provrec_lbl 110 `"Benguet (Excluding Baguio City)"', add
label define ph00a_provrec_lbl 111 `"Baguio City"', add
label define ph00a_provrec_lbl 120 `"Bohol"', add
label define ph00a_provrec_lbl 130 `"Bukidnon"', add
label define ph00a_provrec_lbl 140 `"Bulacan"', add
label define ph00a_provrec_lbl 150 `"Cagayan"', add
label define ph00a_provrec_lbl 160 `"Camarines Norte"', add
label define ph00a_provrec_lbl 170 `"Camarines Sur"', add
label define ph00a_provrec_lbl 180 `"Camiguin"', add
label define ph00a_provrec_lbl 190 `"Capiz"', add
label define ph00a_provrec_lbl 200 `"Catanduanes"', add
label define ph00a_provrec_lbl 210 `"Cavite"', add
label define ph00a_provrec_lbl 220 `"Cebu (Excluding Cebu City And Mandaue City)"', add
label define ph00a_provrec_lbl 221 `"Cebu City (Capital)"', add
label define ph00a_provrec_lbl 222 `"Mandaue City"', add
label define ph00a_provrec_lbl 230 `"Davao (Davao Del Norte)"', add
label define ph00a_provrec_lbl 240 `"Davao Del Sur (Excluding Davao City)"', add
label define ph00a_provrec_lbl 241 `"Davao City"', add
label define ph00a_provrec_lbl 250 `"Davao Oriental"', add
label define ph00a_provrec_lbl 260 `"Eastern Samar"', add
label define ph00a_provrec_lbl 270 `"Ifugao"', add
label define ph00a_provrec_lbl 280 `"Ilocos Norte"', add
label define ph00a_provrec_lbl 290 `"Ilocos Sur"', add
label define ph00a_provrec_lbl 300 `"Iloilo (Excluding Iloilo City)"', add
label define ph00a_provrec_lbl 301 `"Iloilo City (Capital)"', add
label define ph00a_provrec_lbl 310 `"Isabela"', add
label define ph00a_provrec_lbl 320 `"Kalinga"', add
label define ph00a_provrec_lbl 330 `"La Union"', add
label define ph00a_provrec_lbl 340 `"Laguna"', add
label define ph00a_provrec_lbl 350 `"Lanao Del Norte (Excluding Iligan City)"', add
label define ph00a_provrec_lbl 351 `"Iligan City"', add
label define ph00a_provrec_lbl 360 `"Lanao Del Sur"', add
label define ph00a_provrec_lbl 370 `"Leyte"', add
label define ph00a_provrec_lbl 380 `"Maguindanao"', add
label define ph00a_provrec_lbl 390 `"Manila"', add
label define ph00a_provrec_lbl 400 `"Marinduque"', add
label define ph00a_provrec_lbl 410 `"Masbate"', add
label define ph00a_provrec_lbl 420 `"Misamis Occidental"', add
label define ph00a_provrec_lbl 430 `"Misamis Oriental (Excluding Cagayan De Oro Cit"', add
label define ph00a_provrec_lbl 431 `"Cagayan De Oro City (Capital)"', add
label define ph00a_provrec_lbl 440 `"Mountain Province"', add
label define ph00a_provrec_lbl 450 `"Negros Occidental (Excluding Bacolod City)"', add
label define ph00a_provrec_lbl 451 `"Bacolod City (Capital)"', add
label define ph00a_provrec_lbl 460 `"Negros Oriental"', add
label define ph00a_provrec_lbl 470 `"Cotabato (North Cotabato)"', add
label define ph00a_provrec_lbl 480 `"Northern Samar"', add
label define ph00a_provrec_lbl 490 `"Nueva Ecija"', add
label define ph00a_provrec_lbl 500 `"Nueva Vizcaya"', add
label define ph00a_provrec_lbl 510 `"Occidental Mindoro"', add
label define ph00a_provrec_lbl 520 `"Oriental Mindoro"', add
label define ph00a_provrec_lbl 530 `"Palawan"', add
label define ph00a_provrec_lbl 540 `"Pampanga (Excluding Angeles City)"', add
label define ph00a_provrec_lbl 541 `"Angeles City"', add
label define ph00a_provrec_lbl 550 `"Pangasinan"', add
label define ph00a_provrec_lbl 560 `"Quezon (Excluding Lucena City)"', add
label define ph00a_provrec_lbl 561 `"Lucena City (Capital)"', add
label define ph00a_provrec_lbl 570 `"Quirino"', add
label define ph00a_provrec_lbl 580 `"Rizal"', add
label define ph00a_provrec_lbl 590 `"Romblon"', add
label define ph00a_provrec_lbl 600 `"Samar (Western Samar)"', add
label define ph00a_provrec_lbl 610 `"Siquijor"', add
label define ph00a_provrec_lbl 620 `"Sorsogon"', add
label define ph00a_provrec_lbl 630 `"South Cotabato (Excluding General Santos City)"', add
label define ph00a_provrec_lbl 631 `"General Santos City (Dadiangas)"', add
label define ph00a_provrec_lbl 640 `"Southern Leyte"', add
label define ph00a_provrec_lbl 650 `"Sultan Kudarat"', add
label define ph00a_provrec_lbl 660 `"Sulu"', add
label define ph00a_provrec_lbl 670 `"Surigao Del Norte"', add
label define ph00a_provrec_lbl 680 `"Surigao Del Sur"', add
label define ph00a_provrec_lbl 690 `"Tarlac"', add
label define ph00a_provrec_lbl 700 `"Tawi-Tawi"', add
label define ph00a_provrec_lbl 710 `"Zambales (Excluding Olongapo City)"', add
label define ph00a_provrec_lbl 711 `"Olongapo City"', add
label define ph00a_provrec_lbl 720 `"Zamboanga Del Norte"', add
label define ph00a_provrec_lbl 730 `"Zamboanga Del Sur (Excluding Zamboanga City)"', add
label define ph00a_provrec_lbl 731 `"Zamboanga City"', add
label define ph00a_provrec_lbl 741 `"City Of Mandaluyong"', add
label define ph00a_provrec_lbl 742 `"City Of Marikina"', add
label define ph00a_provrec_lbl 743 `"City Of Pasig"', add
label define ph00a_provrec_lbl 744 `"Quezon City"', add
label define ph00a_provrec_lbl 745 `"San Juan"', add
label define ph00a_provrec_lbl 751 `"City Of Valenzuela"', add
label define ph00a_provrec_lbl 752 `"Kalookan City"', add
label define ph00a_provrec_lbl 753 `"Malabon"', add
label define ph00a_provrec_lbl 754 `"Navotas"', add
label define ph00a_provrec_lbl 761 `"City Of Las Piñas"', add
label define ph00a_provrec_lbl 762 `"City Of Makati"', add
label define ph00a_provrec_lbl 763 `"City Of Muntinlupa"', add
label define ph00a_provrec_lbl 764 `"City Of Parañaque"', add
label define ph00a_provrec_lbl 765 `"Pasay City"', add
label define ph00a_provrec_lbl 766 `"Pateros"', add
label define ph00a_provrec_lbl 767 `"Taguig"', add
label define ph00a_provrec_lbl 770 `"Aurora"', add
label define ph00a_provrec_lbl 780 `"Biliran"', add
label define ph00a_provrec_lbl 790 `"Guimaras"', add
label define ph00a_provrec_lbl 800 `"Sarangani"', add
label define ph00a_provrec_lbl 810 `"Apayao"', add
label define ph00a_provrec_lbl 820 `"Compostela Valley"', add
label define ph00a_provrec_lbl 981 `"Cotabato City"', add
label define ph00a_provrec_lbl 982 `"Marawi City"', add
label values ph00a_provrec ph00a_provrec_lbl

label define ph00a_bldtype_lbl 1 `"Single house"'
label define ph00a_bldtype_lbl 2 `"Duplex"', add
label define ph00a_bldtype_lbl 3 `"Multi-unit residential"', add
label define ph00a_bldtype_lbl 4 `"Commercial/industrial/agricultural"', add
label define ph00a_bldtype_lbl 5 `"Institutional living quarters"', add
label define ph00a_bldtype_lbl 6 `"Other housing unit"', add
label define ph00a_bldtype_lbl 9 `"Unknown"', add
label values ph00a_bldtype ph00a_bldtype_lbl

label define ph00a_walls_lbl 01 `"Concrete/brick/stone"'
label define ph00a_walls_lbl 02 `"Wood"', add
label define ph00a_walls_lbl 03 `"Half concrete/brick/Stone/and half Wood"', add
label define ph00a_walls_lbl 04 `"Galvanized iron/aluminum"', add
label define ph00a_walls_lbl 05 `"Bamboo/sawali/cogon/nipa"', add
label define ph00a_walls_lbl 06 `"Asbestos"', add
label define ph00a_walls_lbl 07 `"Glass"', add
label define ph00a_walls_lbl 08 `"Makeshift/salvaged/improvised materials"', add
label define ph00a_walls_lbl 09 `"Others"', add
label define ph00a_walls_lbl 10 `"No walls"', add
label define ph00a_walls_lbl 99 `"Unknown"', add
label values ph00a_walls ph00a_walls_lbl

label define ph00a_bldrep_lbl 1 `"Needs no repair/needs minor repair"'
label define ph00a_bldrep_lbl 2 `"Needs major repair"', add
label define ph00a_bldrep_lbl 3 `"Dilapidated/condemned"', add
label define ph00a_bldrep_lbl 4 `"Under renovation/being repaired"', add
label define ph00a_bldrep_lbl 5 `"Under construction"', add
label define ph00a_bldrep_lbl 6 `"Unfinished construction"', add
label define ph00a_bldrep_lbl 9 `"Unknown"', add
label values ph00a_bldrep ph00a_bldrep_lbl

label define ph00a_yrblt_lbl 01 `"2000"'
label define ph00a_yrblt_lbl 02 `"1999"', add
label define ph00a_yrblt_lbl 03 `"1998"', add
label define ph00a_yrblt_lbl 04 `"1997"', add
label define ph00a_yrblt_lbl 05 `"1996"', add
label define ph00a_yrblt_lbl 06 `"1991-1995"', add
label define ph00a_yrblt_lbl 07 `"1981-1990"', add
label define ph00a_yrblt_lbl 08 `"1971-1980"', add
label define ph00a_yrblt_lbl 09 `"1961-1970"', add
label define ph00a_yrblt_lbl 10 `"1960 or earlier"', add
label define ph00a_yrblt_lbl 11 `"Still under construction and vacant"', add
label define ph00a_yrblt_lbl 98 `"Respondent did not know"', add
label define ph00a_yrblt_lbl 99 `"Unknown"', add
label values ph00a_yrblt ph00a_yrblt_lbl

label define ph00a_space_lbl 01 `"Less than 10 square meters"'
label define ph00a_space_lbl 02 `"10  - 19 sq. m."', add
label define ph00a_space_lbl 03 `"20  - 29 sq. m."', add
label define ph00a_space_lbl 04 `"30  - 49 sq. m."', add
label define ph00a_space_lbl 05 `"50  - 69 sq. m."', add
label define ph00a_space_lbl 06 `"70  - 89 sq. m."', add
label define ph00a_space_lbl 07 `"90  - 119 sq.m."', add
label define ph00a_space_lbl 08 `"120 - 149 sq.m."', add
label define ph00a_space_lbl 09 `"150 - 199 sq.m."', add
label define ph00a_space_lbl 10 `"200 sq. m. and over"', add
label define ph00a_space_lbl 99 `"Unknown"', add
label values ph00a_space ph00a_space_lbl

label define ph00a_fuell_lbl 1 `"Electricity"'
label define ph00a_fuell_lbl 2 `"Kerosene (gaas)"', add
label define ph00a_fuell_lbl 3 `"Liquefied petroleum gas (LPG)"', add
label define ph00a_fuell_lbl 4 `"Oil (vegetable, animal, etc)"', add
label define ph00a_fuell_lbl 5 `"Others"', add
label values ph00a_fuell ph00a_fuell_lbl

label define ph00a_fuelc_lbl 1 `"Electricity"'
label define ph00a_fuelc_lbl 2 `"Kerosene (gaas)"', add
label define ph00a_fuelc_lbl 3 `"Liquefied petroleum gas (LPG)"', add
label define ph00a_fuelc_lbl 4 `"Charcoal"', add
label define ph00a_fuelc_lbl 5 `"Wood"', add
label define ph00a_fuelc_lbl 6 `"Other"', add
label define ph00a_fuelc_lbl 7 `"None"', add
label define ph00a_fuelc_lbl 9 `"Unknown"', add
label values ph00a_fuelc ph00a_fuelc_lbl

label define ph00a_watdrink_lbl 01 `"Own use, faucet, community water system"'
label define ph00a_watdrink_lbl 02 `"Shared, faucet, community water system"', add
label define ph00a_watdrink_lbl 03 `"Own use, tubed/piped deep well"', add
label define ph00a_watdrink_lbl 04 `"Shared, tubed/piped deep well"', add
label define ph00a_watdrink_lbl 05 `"Tubed/piped shallow well"', add
label define ph00a_watdrink_lbl 06 `"Dug well"', add
label define ph00a_watdrink_lbl 07 `"Spring, lake, river, rain, etc."', add
label define ph00a_watdrink_lbl 08 `"Peddler"', add
label define ph00a_watdrink_lbl 09 `"Bottled water"', add
label define ph00a_watdrink_lbl 10 `"Others"', add
label define ph00a_watdrink_lbl 99 `"Unknown"', add
label values ph00a_watdrink ph00a_watdrink_lbl

label define ph00a_watbath_lbl 1 `"Own use, faucet, community water system"'
label define ph00a_watbath_lbl 2 `"Shared, faucet, community water system"', add
label define ph00a_watbath_lbl 3 `"Own use, tubed/piped deep well"', add
label define ph00a_watbath_lbl 4 `"Shared, tubed/piped deep well"', add
label define ph00a_watbath_lbl 5 `"Tubed/piped shallow well"', add
label define ph00a_watbath_lbl 6 `"Dug well"', add
label define ph00a_watbath_lbl 7 `"Spring, lake, river, rain etc."', add
label define ph00a_watbath_lbl 8 `"Peddler"', add
label define ph00a_watbath_lbl 9 `"Others"', add
label values ph00a_watbath ph00a_watbath_lbl

label define ph00a_ownershp_lbl 1 `"Owned/being amortized"'
label define ph00a_ownershp_lbl 2 `"Rented"', add
label define ph00a_ownershp_lbl 3 `"Rent-free with consent of owner"', add
label define ph00a_ownershp_lbl 4 `"Rent-free without consent of owner"', add
label define ph00a_ownershp_lbl 9 `"Unknown"', add
label values ph00a_ownershp ph00a_ownershp_lbl

label define ph00a_acquire_lbl 0 `"NIU (not in universe)"'
label define ph00a_acquire_lbl 1 `"Purchased"', add
label define ph00a_acquire_lbl 2 `"Constructed by the owner/occupants"', add
label define ph00a_acquire_lbl 3 `"Constructed by hired/skilled workers"', add
label define ph00a_acquire_lbl 4 `"Constructed by an organized contractor"', add
label define ph00a_acquire_lbl 5 `"Inherited"', add
label define ph00a_acquire_lbl 6 `"Others (lottery, gift)"', add
label define ph00a_acquire_lbl 9 `"Unknown"', add
label values ph00a_acquire ph00a_acquire_lbl

label define ph00a_finown_lbl 1 `"Own resources/interest free loans from relatives/friends"'
label define ph00a_finown_lbl 2 `"Not own resources/interest free loans from relatives/friends"', add
label define ph00a_finown_lbl 8 `"Unknown"', add
label define ph00a_finown_lbl 9 `"NIU (not in universe)"', add
label values ph00a_finown ph00a_finown_lbl

label define ph00a_fingov_lbl 1 `"Government assistance (PAG-IBIG, GSIS, SSS, DBP, etc)"'
label define ph00a_fingov_lbl 2 `"Not government assitance (PAG-IBIG, GSIS, SSS, DBP, etc)"', add
label define ph00a_fingov_lbl 8 `"Unknown"', add
label define ph00a_fingov_lbl 9 `"NIU (not in universe)"', add
label values ph00a_fingov ph00a_fingov_lbl

label define ph00a_finbank_lbl 1 `"Private banks/foundations/cooperatives"'
label define ph00a_finbank_lbl 2 `"Not private banks/foundations/cooperatives"', add
label define ph00a_finbank_lbl 8 `"Unknown"', add
label define ph00a_finbank_lbl 9 `"NIU (not in universe)"', add
label values ph00a_finbank ph00a_finbank_lbl

label define ph00a_finemp_lbl 1 `"Employer's assistance"'
label define ph00a_finemp_lbl 2 `"Not employer's assistance"', add
label define ph00a_finemp_lbl 8 `"Unknown"', add
label define ph00a_finemp_lbl 9 `"NIU (not in universe)"', add
label values ph00a_finemp ph00a_finemp_lbl

label define ph00a_finpriv_lbl 1 `"Private persons"'
label define ph00a_finpriv_lbl 2 `"Not private persons"', add
label define ph00a_finpriv_lbl 8 `"Unknown"', add
label define ph00a_finpriv_lbl 9 `"NIU (not in universe)"', add
label values ph00a_finpriv ph00a_finpriv_lbl

label define ph00a_finoth_lbl 1 `"Others"'
label define ph00a_finoth_lbl 2 `"Not others"', add
label define ph00a_finoth_lbl 8 `"Unknown"', add
label define ph00a_finoth_lbl 9 `"NIU (not in universe)"', add
label values ph00a_finoth ph00a_finoth_lbl

label define ph00a_ownlot_lbl 1 `"Owned/being amortized"'
label define ph00a_ownlot_lbl 2 `"Rented"', add
label define ph00a_ownlot_lbl 3 `"Rent-free with consent of owner"', add
label define ph00a_ownlot_lbl 4 `"Rent-free without consent of owner"', add
label define ph00a_ownlot_lbl 8 `"""', add
label define ph00a_ownlot_lbl 9 `"NIU (not in universe)"', add
label values ph00a_ownlot ph00a_ownlot_lbl

label define ph00a_rent_lbl 0 `"NIU (not in universe)"'
label define ph00a_rent_lbl 1 `"Below 100"', add
label define ph00a_rent_lbl 2 `"100 to 199"', add
label define ph00a_rent_lbl 3 `"200 to 499"', add
label define ph00a_rent_lbl 4 `"500 to 999"', add
label define ph00a_rent_lbl 5 `"1000 to 1999"', add
label define ph00a_rent_lbl 6 `"2000 to 4999"', add
label define ph00a_rent_lbl 7 `"5000 to 9999"', add
label define ph00a_rent_lbl 8 `"10000 and over"', add
label define ph00a_rent_lbl 9 `"Unknown"', add
label values ph00a_rent ph00a_rent_lbl

label define ph00a_garbage_lbl 1 `"Picked up by garbage truck"'
label define ph00a_garbage_lbl 2 `"Dumping in individual pit (not burned)"', add
label define ph00a_garbage_lbl 3 `"Burning"', add
label define ph00a_garbage_lbl 4 `"Composting (later used as fertilizer)"', add
label define ph00a_garbage_lbl 5 `"Burying"', add
label define ph00a_garbage_lbl 6 `"Feeding to animals"', add
label define ph00a_garbage_lbl 7 `"Others"', add
label values ph00a_garbage ph00a_garbage_lbl

label define ph00a_toilet_lbl 1 `"Water-sealed, sewer septic tank, used exclusively by household"'
label define ph00a_toilet_lbl 2 `"Water-sealed, sewer septic tank, shared"', add
label define ph00a_toilet_lbl 3 `"Water-sealed, other depository used exclusively by household"', add
label define ph00a_toilet_lbl 4 `"Water-sealed, other depository, shared"', add
label define ph00a_toilet_lbl 5 `"Closed pit"', add
label define ph00a_toilet_lbl 6 `"Open pit"', add
label define ph00a_toilet_lbl 7 `"Others (pail system etc.)"', add
label define ph00a_toilet_lbl 8 `"None"', add
label values ph00a_toilet ph00a_toilet_lbl

label define ph00a_radio_lbl 1 `"With radio/radio cassette"'
label define ph00a_radio_lbl 2 `"Without radio/radio cassette"', add
label values ph00a_radio ph00a_radio_lbl

label define ph00a_tv_lbl 1 `"With television set"'
label define ph00a_tv_lbl 2 `"Without television set"', add
label values ph00a_tv ph00a_tv_lbl

label define ph00a_refrig_lbl 1 `"With refrigerator/freezer"'
label define ph00a_refrig_lbl 2 `"Without refrigerator/freezer"', add
label values ph00a_refrig ph00a_refrig_lbl

label define ph00a_vcr_lbl 1 `"With video cassette recorder"'
label define ph00a_vcr_lbl 2 `"Without video cassette recorder"', add
label values ph00a_vcr ph00a_vcr_lbl

label define ph00a_phone_lbl 1 `"With telephone/cellphone"'
label define ph00a_phone_lbl 2 `"Without telephone/cellphone"', add
label values ph00a_phone ph00a_phone_lbl

label define ph00a_washer_lbl 1 `"With washing machine"'
label define ph00a_washer_lbl 2 `"Without washing machine"', add
label values ph00a_washer ph00a_washer_lbl

label define ph00a_vehicle_lbl 1 `"With motorized vehicle"'
label define ph00a_vehicle_lbl 2 `"Without motorized vehicle"', add
label values ph00a_vehicle ph00a_vehicle_lbl

label define ph00a_landres_lbl 1 `"Owns other residential land"'
label define ph00a_landres_lbl 2 `"Doesnot own other residential land"', add
label values ph00a_landres ph00a_landres_lbl

label define ph00a_landag_lbl 1 `"Owns agricultural land"'
label define ph00a_landag_lbl 2 `"Does not own agricultural land"', add
label values ph00a_landag ph00a_landag_lbl

label define ph00a_landref_lbl 1 `"With agricultural land acquired through CARP,agrarian reform beneficiary"'
label define ph00a_landref_lbl 2 `"Without agricultural land acquired through CARP,agrarian reform beneficiary"', add
label values ph00a_landref ph00a_landref_lbl

label define ph00a_landoth_lbl 1 `"Owns other land"'
label define ph00a_landoth_lbl 2 `"Does not own other land"', add
label values ph00a_landoth ph00a_landoth_lbl

label define ph00a_lang_lbl 001 `"Akeanon/Alanon"'
label define ph00a_lang_lbl 002 `"Bikol/Bicol"', add
label define ph00a_lang_lbl 003 `"Cebuano"', add
label define ph00a_lang_lbl 004 `"Hiligaynon, Ilongo"', add
label define ph00a_lang_lbl 005 `"Ibanag"', add
label define ph00a_lang_lbl 006 `"Ifugao"', add
label define ph00a_lang_lbl 007 `"Ilocano"', add
label define ph00a_lang_lbl 008 `"Kankanai/Kankaney"', add
label define ph00a_lang_lbl 009 `"Kapampangan"', add
label define ph00a_lang_lbl 010 `"Karay-a"', add
label define ph00a_lang_lbl 011 `"Manobo/Ata-Manobo"', add
label define ph00a_lang_lbl 012 `"Maranao"', add
label define ph00a_lang_lbl 013 `"Masbateno/Masbatenon"', add
label define ph00a_lang_lbl 014 `"Pangasinan/Panggalato"', add
label define ph00a_lang_lbl 015 `"Sama (Samal)/Abaknon"', add
label define ph00a_lang_lbl 016 `"Surigaonon"', add
label define ph00a_lang_lbl 017 `"Tagalog"', add
label define ph00a_lang_lbl 018 `"Tausog"', add
label define ph00a_lang_lbl 019 `"Waray"', add
label define ph00a_lang_lbl 020 `"Zambageno-Chavacano"', add
label define ph00a_lang_lbl 021 `"Abelling"', add
label define ph00a_lang_lbl 022 `"Abiyan"', add
label define ph00a_lang_lbl 023 `"Aburin"', add
label define ph00a_lang_lbl 024 `"Aeta/Ayta"', add
label define ph00a_lang_lbl 025 `"Aggay"', add
label define ph00a_lang_lbl 026 `"Agta"', add
label define ph00a_lang_lbl 027 `"Agutaynon/Agutayanon"', add
label define ph00a_lang_lbl 028 `"Alangan"', add
label define ph00a_lang_lbl 029 `"Apayao/Yapayao"', add
label define ph00a_lang_lbl 030 `"Applai"', add
label define ph00a_lang_lbl 031 `"Atta/Ata/Ati"', add
label define ph00a_lang_lbl 032 `"Ayangan"', add
label define ph00a_lang_lbl 033 `"Badjao, Sama Dilaut"', add
label define ph00a_lang_lbl 034 `"Bagobo/Guinga"', add
label define ph00a_lang_lbl 035 `"Balangao/Baliwon"', add
label define ph00a_lang_lbl 036 `"Bantoanon"', add
label define ph00a_lang_lbl 037 `"Banwaon"', add
label define ph00a_lang_lbl 038 `"Batak/Binatak"', add
label define ph00a_lang_lbl 039 `"Batangan"', add
label define ph00a_lang_lbl 040 `"Bilaan/B'laan"', add
label define ph00a_lang_lbl 041 `"Binukid/Bukidnon"', add
label define ph00a_lang_lbl 042 `"Bisaya/Binisaya"', add
label define ph00a_lang_lbl 043 `"Boholano"', add
label define ph00a_lang_lbl 044 `"Bolinao"', add
label define ph00a_lang_lbl 045 `"Bugkalot"', add
label define ph00a_lang_lbl 046 `"Bontok/Binontok"', add
label define ph00a_lang_lbl 047 `"Buhid"', add
label define ph00a_lang_lbl 048 `"Butuanon"', add
label define ph00a_lang_lbl 049 `"Caviteno"', add
label define ph00a_lang_lbl 050 `"Caviteno-Chavacano"', add
label define ph00a_lang_lbl 052 `"Cotabateno"', add
label define ph00a_lang_lbl 053 `"Cotabateno-Chavacano"', add
label define ph00a_lang_lbl 054 `"Cuyunon/Cuyunan"', add
label define ph00a_lang_lbl 055 `"Dava-Chavacano"', add
label define ph00a_lang_lbl 056 `"Davaweno"', add
label define ph00a_lang_lbl 057 `"Dibabawon"', add
label define ph00a_lang_lbl 058 `"Dumagat/Dumagat(Umiray)"', add
label define ph00a_lang_lbl 059 `"Gaddang"', add
label define ph00a_lang_lbl 061 `"Hamtikanon"', add
label define ph00a_lang_lbl 062 `"Hanunuo"', add
label define ph00a_lang_lbl 063 `"Higaonon"', add
label define ph00a_lang_lbl 064 `"Ibaloi/Inibaloi"', add
label define ph00a_lang_lbl 065 `"Ibontoc"', add
label define ph00a_lang_lbl 066 `"Ikalahan/Kalanguya"', add
label define ph00a_lang_lbl 067 `"Ilanun/Llanuan"', add
label define ph00a_lang_lbl 068 `"Ilongot"', add
label define ph00a_lang_lbl 069 `"Iranon"', add
label define ph00a_lang_lbl 070 `"Iraya"', add
label define ph00a_lang_lbl 071 `"Isamal Kanlaw"', add
label define ph00a_lang_lbl 073 `"Isinay"', add
label define ph00a_lang_lbl 074 `"Isnag"', add
label define ph00a_lang_lbl 075 `"Isneg"', add
label define ph00a_lang_lbl 076 `"Itawis"', add
label define ph00a_lang_lbl 077 `"Itawit"', add
label define ph00a_lang_lbl 078 `"Itneg"', add
label define ph00a_lang_lbl 079 `"Ivatan/Itbayat"', add
label define ph00a_lang_lbl 080 `"Iwak/I'wa/Owak"', add
label define ph00a_lang_lbl 083 `"Jama Mapun"', add
label define ph00a_lang_lbl 086 `"Kagayanen"', add
label define ph00a_lang_lbl 087 `"Kalagan"', add
label define ph00a_lang_lbl 088 `"Kalamianen"', add
label define ph00a_lang_lbl 089 `"Kalinga"', add
label define ph00a_lang_lbl 090 `"Kamayo"', add
label define ph00a_lang_lbl 091 `"Kamigin/Kinamiging"', add
label define ph00a_lang_lbl 092 `"Kapul"', add
label define ph00a_lang_lbl 094 `"Karao"', add
label define ph00a_lang_lbl 097 `"Kasigurahin"', add
label define ph00a_lang_lbl 098 `"Kinalinga"', add
label define ph00a_lang_lbl 099 `"Kiniray-a"', add
label define ph00a_lang_lbl 100 `"Kolibugan/Kalibugan"', add
label define ph00a_lang_lbl 102 `"Maguindanao"', add
label define ph00a_lang_lbl 103 `"Malaueg"', add
label define ph00a_lang_lbl 105 `"Mamanwa"', add
label define ph00a_lang_lbl 106 `"Mandaya"', add
label define ph00a_lang_lbl 107 `"Mangyan"', add
label define ph00a_lang_lbl 108 `"Mansaka"', add
label define ph00a_lang_lbl 109 `"Matigsalog"', add
label define ph00a_lang_lbl 110 `"Molbog"', add
label define ph00a_lang_lbl 113 `"Palawan/Pinalawan/Palawanon"', add
label define ph00a_lang_lbl 114 `"Paranan"', add
label define ph00a_lang_lbl 118 `"Romblon/Rombloanon"', add
label define ph00a_lang_lbl 119 `"Sambal, Zambal"', add
label define ph00a_lang_lbl 120 `"Sangil, Sangir"', add
label define ph00a_lang_lbl 121 `"Subanen (Sicon,Zambo. Norte)/Subaben (Zambo. Norte and Sur)"', add
label define ph00a_lang_lbl 124 `"Tadyawan"', add
label define ph00a_lang_lbl 125 `"Tagabawa"', add
label define ph00a_lang_lbl 127 `"Tagakaolo"', add
label define ph00a_lang_lbl 128 `"Tagbanwa"', add
label define ph00a_lang_lbl 130 `"Talaandig"', add
label define ph00a_lang_lbl 131 `"T'boli"', add
label define ph00a_lang_lbl 132 `"Teduray"', add
label define ph00a_lang_lbl 133 `"Ternateño-Chavacano"', add
label define ph00a_lang_lbl 135 `"Tinggian"', add
label define ph00a_lang_lbl 136 `"Tiruray"', add
label define ph00a_lang_lbl 137 `"Tuwali"', add
label define ph00a_lang_lbl 138 `"Ubo"', add
label define ph00a_lang_lbl 139 `"Umayamnon"', add
label define ph00a_lang_lbl 140 `"Yakan"', add
label define ph00a_lang_lbl 141 `"Yogad"', add
label define ph00a_lang_lbl 142 `"Other Local Dialects/Ethnicity"', add
label define ph00a_lang_lbl 143 `"Chinese"', add
label define ph00a_lang_lbl 144 `"American/English"', add
label define ph00a_lang_lbl 145 `"Other Foreign Languages/Ethnicity"', add
label define ph00a_lang_lbl 146 `"Sama (Sama Bangengeh)"', add
label define ph00a_lang_lbl 149 `"Sama Dilaya"', add
label define ph00a_lang_lbl 152 `"Capizeno"', add
label define ph00a_lang_lbl 998 `"Response suppressed"', add
label define ph00a_lang_lbl 999 `"Unknown"', add
label values ph00a_lang ph00a_lang_lbl

label define ph00a_provint_lbl 00 `"Same city/municipality"'
label define ph00a_provint_lbl 01 `"Abra"', add
label define ph00a_provint_lbl 02 `"Agusan Del Norte"', add
label define ph00a_provint_lbl 03 `"Agusan Del Sur"', add
label define ph00a_provint_lbl 04 `"Aklan"', add
label define ph00a_provint_lbl 05 `"Albay"', add
label define ph00a_provint_lbl 06 `"Antique"', add
label define ph00a_provint_lbl 07 `"Basilan"', add
label define ph00a_provint_lbl 08 `"Bataan"', add
label define ph00a_provint_lbl 09 `"Batanes"', add
label define ph00a_provint_lbl 10 `"Batangas"', add
label define ph00a_provint_lbl 11 `"Benguet"', add
label define ph00a_provint_lbl 12 `"Bohol"', add
label define ph00a_provint_lbl 13 `"Bukidnon"', add
label define ph00a_provint_lbl 14 `"Bulacan"', add
label define ph00a_provint_lbl 15 `"Cagayan"', add
label define ph00a_provint_lbl 16 `"Camarines Norte"', add
label define ph00a_provint_lbl 17 `"Camarines Sur"', add
label define ph00a_provint_lbl 18 `"Camiguin"', add
label define ph00a_provint_lbl 19 `"Capiz"', add
label define ph00a_provint_lbl 20 `"Catanduanes"', add
label define ph00a_provint_lbl 21 `"Cavite"', add
label define ph00a_provint_lbl 22 `"Cebu"', add
label define ph00a_provint_lbl 23 `"Davao (Davao Del Norte)"', add
label define ph00a_provint_lbl 24 `"Davao Del Sur"', add
label define ph00a_provint_lbl 25 `"Davao Oriental"', add
label define ph00a_provint_lbl 26 `"Eastern Samar"', add
label define ph00a_provint_lbl 27 `"Ifugao"', add
label define ph00a_provint_lbl 28 `"Ilocos Norte"', add
label define ph00a_provint_lbl 29 `"Ilocos Sur"', add
label define ph00a_provint_lbl 30 `"Iloilo"', add
label define ph00a_provint_lbl 31 `"Isabela"', add
label define ph00a_provint_lbl 32 `"Kalinga"', add
label define ph00a_provint_lbl 33 `"La Union"', add
label define ph00a_provint_lbl 34 `"Laguna"', add
label define ph00a_provint_lbl 35 `"Lanao Del Norte"', add
label define ph00a_provint_lbl 36 `"Lanao Del Sur"', add
label define ph00a_provint_lbl 37 `"Leyte"', add
label define ph00a_provint_lbl 38 `"Maguindanao"', add
label define ph00a_provint_lbl 39 `"Manila, Metro First District"', add
label define ph00a_provint_lbl 40 `"Marinduque"', add
label define ph00a_provint_lbl 41 `"Masbate"', add
label define ph00a_provint_lbl 42 `"Misamis Occidental"', add
label define ph00a_provint_lbl 43 `"Misamis Oriental"', add
label define ph00a_provint_lbl 44 `"Mountain Province"', add
label define ph00a_provint_lbl 45 `"Negros Occidental"', add
label define ph00a_provint_lbl 46 `"Negros Oriental"', add
label define ph00a_provint_lbl 47 `"Cotabato (North Cotabato)"', add
label define ph00a_provint_lbl 48 `"Northern Samar"', add
label define ph00a_provint_lbl 49 `"Nueva Ecija"', add
label define ph00a_provint_lbl 50 `"Nueva Vizcaya"', add
label define ph00a_provint_lbl 51 `"Occidental Mindoro"', add
label define ph00a_provint_lbl 52 `"Oriental Mindoro"', add
label define ph00a_provint_lbl 53 `"Palawan"', add
label define ph00a_provint_lbl 54 `"Pampanga"', add
label define ph00a_provint_lbl 55 `"Pangasinan"', add
label define ph00a_provint_lbl 56 `"Quezon"', add
label define ph00a_provint_lbl 57 `"Quirino"', add
label define ph00a_provint_lbl 58 `"Rizal"', add
label define ph00a_provint_lbl 59 `"Romblon"', add
label define ph00a_provint_lbl 60 `"Samar (Western Samar)"', add
label define ph00a_provint_lbl 61 `"Siquijor"', add
label define ph00a_provint_lbl 62 `"Sorsogon"', add
label define ph00a_provint_lbl 63 `"South Cotabato"', add
label define ph00a_provint_lbl 64 `"Southern Leyte"', add
label define ph00a_provint_lbl 65 `"Sultan Kudarat"', add
label define ph00a_provint_lbl 66 `"Sulu"', add
label define ph00a_provint_lbl 67 `"Surigao Del Norte"', add
label define ph00a_provint_lbl 68 `"Surigao Del Sur"', add
label define ph00a_provint_lbl 69 `"Tarlac"', add
label define ph00a_provint_lbl 70 `"Tawi-Tawi"', add
label define ph00a_provint_lbl 71 `"Zambales"', add
label define ph00a_provint_lbl 72 `"Zamboanga Del Norte"', add
label define ph00a_provint_lbl 73 `"Zamboanga Del Sur"', add
label define ph00a_provint_lbl 74 `"Metro Manila, Second District"', add
label define ph00a_provint_lbl 75 `"Metro Manila, Third District"', add
label define ph00a_provint_lbl 76 `"Metro Manila, Fourth District"', add
label define ph00a_provint_lbl 77 `"Aurora"', add
label define ph00a_provint_lbl 78 `"Biliran"', add
label define ph00a_provint_lbl 79 `"Guimaras"', add
label define ph00a_provint_lbl 80 `"Sarangani"', add
label define ph00a_provint_lbl 81 `"Apayao"', add
label define ph00a_provint_lbl 82 `"Compostela Valley"', add
label define ph00a_provint_lbl 98 `"Cotabato and Marawi"', add
label define ph00a_provint_lbl 90 `"Foreign country"', add
label define ph00a_provint_lbl 99 `"No response/unknown"', add
label values ph00a_provint ph00a_provint_lbl

label define ph00a_resintnd_lbl 0007 `"Foreign country"'
label define ph00a_resintnd_lbl 0008 `"Same city/municipality"', add
label define ph00a_resintnd_lbl 0009 `"Unknown"', add
label values ph00a_resintnd ph00a_resintnd_lbl

label define ph00a_wthh_lbl 01 `"1"'
label define ph00a_wthh_lbl 02 `"2"', add
label define ph00a_wthh_lbl 03 `"3"', add
label define ph00a_wthh_lbl 04 `"4"', add
label define ph00a_wthh_lbl 05 `"5"', add
label define ph00a_wthh_lbl 06 `"6"', add
label define ph00a_wthh_lbl 07 `"7"', add
label define ph00a_wthh_lbl 08 `"8"', add
label define ph00a_wthh_lbl 09 `"9"', add
label define ph00a_wthh_lbl 10 `"10"', add
label define ph00a_wthh_lbl 11 `"11"', add
label define ph00a_wthh_lbl 12 `"12"', add
label define ph00a_wthh_lbl 13 `"13"', add
label define ph00a_wthh_lbl 14 `"14"', add
label define ph00a_wthh_lbl 15 `"15"', add
label define ph00a_wthh_lbl 16 `"16"', add
label define ph00a_wthh_lbl 17 `"17"', add
label define ph00a_wthh_lbl 18 `"18"', add
label define ph00a_wthh_lbl 19 `"19"', add
label define ph00a_wthh_lbl 20 `"20"', add
label define ph00a_wthh_lbl 21 `"21"', add
label define ph00a_wthh_lbl 22 `"22"', add
label define ph00a_wthh_lbl 23 `"23"', add
label define ph00a_wthh_lbl 24 `"24"', add
label define ph00a_wthh_lbl 25 `"25"', add
label define ph00a_wthh_lbl 26 `"26"', add
label define ph00a_wthh_lbl 27 `"27"', add
label define ph00a_wthh_lbl 28 `"28"', add
label define ph00a_wthh_lbl 29 `"29"', add
label define ph00a_wthh_lbl 30 `"30"', add
label define ph00a_wthh_lbl 31 `"31"', add
label define ph00a_wthh_lbl 32 `"32"', add
label define ph00a_wthh_lbl 33 `"33"', add
label define ph00a_wthh_lbl 34 `"34"', add
label define ph00a_wthh_lbl 35 `"35"', add
label define ph00a_wthh_lbl 36 `"36"', add
label define ph00a_wthh_lbl 38 `"38"', add
label define ph00a_wthh_lbl 39 `"39"', add
label define ph00a_wthh_lbl 42 `"42"', add
label define ph00a_wthh_lbl 46 `"46"', add
label define ph00a_wthh_lbl 67 `"67"', add
label define ph00a_wthh_lbl 70 `"70"', add
label values ph00a_wthh ph00a_wthh_lbl

label define ph00a_pernum_lbl 00 `"Household record"'
label define ph00a_pernum_lbl 01 `"1"', add
label define ph00a_pernum_lbl 02 `"2"', add
label define ph00a_pernum_lbl 03 `"3"', add
label define ph00a_pernum_lbl 04 `"4"', add
label define ph00a_pernum_lbl 05 `"5"', add
label define ph00a_pernum_lbl 06 `"6"', add
label define ph00a_pernum_lbl 07 `"7"', add
label define ph00a_pernum_lbl 08 `"8"', add
label define ph00a_pernum_lbl 09 `"9"', add
label define ph00a_pernum_lbl 10 `"10"', add
label define ph00a_pernum_lbl 11 `"11"', add
label define ph00a_pernum_lbl 12 `"12"', add
label define ph00a_pernum_lbl 13 `"13"', add
label define ph00a_pernum_lbl 14 `"14"', add
label define ph00a_pernum_lbl 15 `"15"', add
label define ph00a_pernum_lbl 16 `"16"', add
label define ph00a_pernum_lbl 17 `"17"', add
label define ph00a_pernum_lbl 18 `"18"', add
label define ph00a_pernum_lbl 19 `"19"', add
label define ph00a_pernum_lbl 20 `"20"', add
label define ph00a_pernum_lbl 21 `"21"', add
label define ph00a_pernum_lbl 22 `"22"', add
label define ph00a_pernum_lbl 23 `"23"', add
label define ph00a_pernum_lbl 24 `"24"', add
label define ph00a_pernum_lbl 25 `"25"', add
label define ph00a_pernum_lbl 26 `"26"', add
label define ph00a_pernum_lbl 27 `"27"', add
label define ph00a_pernum_lbl 28 `"28"', add
label define ph00a_pernum_lbl 29 `"29"', add
label define ph00a_pernum_lbl 30 `"30"', add
label values ph00a_pernum ph00a_pernum_lbl

label define ph00a_linenumo_lbl 01 `"1"'
label define ph00a_linenumo_lbl 02 `"2"', add
label define ph00a_linenumo_lbl 03 `"3"', add
label define ph00a_linenumo_lbl 04 `"4"', add
label define ph00a_linenumo_lbl 05 `"5"', add
label define ph00a_linenumo_lbl 06 `"6"', add
label define ph00a_linenumo_lbl 07 `"7"', add
label define ph00a_linenumo_lbl 08 `"8"', add
label define ph00a_linenumo_lbl 09 `"9"', add
label define ph00a_linenumo_lbl 10 `"10"', add
label define ph00a_linenumo_lbl 11 `"11"', add
label define ph00a_linenumo_lbl 12 `"12"', add
label define ph00a_linenumo_lbl 13 `"13"', add
label define ph00a_linenumo_lbl 14 `"14"', add
label define ph00a_linenumo_lbl 15 `"15"', add
label define ph00a_linenumo_lbl 16 `"16"', add
label define ph00a_linenumo_lbl 17 `"17"', add
label define ph00a_linenumo_lbl 18 `"18"', add
label define ph00a_linenumo_lbl 19 `"19"', add
label define ph00a_linenumo_lbl 20 `"20"', add
label define ph00a_linenumo_lbl 21 `"21"', add
label define ph00a_linenumo_lbl 22 `"22"', add
label define ph00a_linenumo_lbl 23 `"23"', add
label define ph00a_linenumo_lbl 24 `"24"', add
label define ph00a_linenumo_lbl 25 `"25"', add
label define ph00a_linenumo_lbl 26 `"26"', add
label define ph00a_linenumo_lbl 27 `"27"', add
label define ph00a_linenumo_lbl 28 `"28"', add
label define ph00a_linenumo_lbl 29 `"29"', add
label define ph00a_linenumo_lbl 30 `"30+"', add
label values ph00a_linenumo ph00a_linenumo_lbl

label define ph00a_relate_lbl 01 `"Head"'
label define ph00a_relate_lbl 02 `"Spouse"', add
label define ph00a_relate_lbl 03 `"Son"', add
label define ph00a_relate_lbl 04 `"Daughter"', add
label define ph00a_relate_lbl 05 `"Stepson"', add
label define ph00a_relate_lbl 06 `"Stepdaughter"', add
label define ph00a_relate_lbl 07 `"Son-in-law"', add
label define ph00a_relate_lbl 08 `"Daughter-in-law"', add
label define ph00a_relate_lbl 09 `"Grandson"', add
label define ph00a_relate_lbl 10 `"Granddaughter"', add
label define ph00a_relate_lbl 11 `"Father"', add
label define ph00a_relate_lbl 12 `"Mother"', add
label define ph00a_relate_lbl 13 `"Brother"', add
label define ph00a_relate_lbl 14 `"Sister"', add
label define ph00a_relate_lbl 15 `"Uncle"', add
label define ph00a_relate_lbl 16 `"Aunt"', add
label define ph00a_relate_lbl 17 `"Nephew"', add
label define ph00a_relate_lbl 18 `"Niece"', add
label define ph00a_relate_lbl 19 `"Other relative"', add
label define ph00a_relate_lbl 20 `"Non-relative"', add
label define ph00a_relate_lbl 21 `"Boarder"', add
label define ph00a_relate_lbl 22 `"Domestic helper"', add
label values ph00a_relate ph00a_relate_lbl

label define ph00a_regist_lbl 1 `"Yes"'
label define ph00a_regist_lbl 2 `"No"', add
label define ph00a_regist_lbl 3 `"Respondent did not know"', add
label define ph00a_regist_lbl 9 `"Unknown"', add
label values ph00a_regist ph00a_regist_lbl

label define ph00a_age_lbl 000 `"0"'
label define ph00a_age_lbl 001 `"1"', add
label define ph00a_age_lbl 002 `"2"', add
label define ph00a_age_lbl 003 `"3"', add
label define ph00a_age_lbl 004 `"4"', add
label define ph00a_age_lbl 005 `"5"', add
label define ph00a_age_lbl 006 `"6"', add
label define ph00a_age_lbl 007 `"7"', add
label define ph00a_age_lbl 008 `"8"', add
label define ph00a_age_lbl 009 `"9"', add
label define ph00a_age_lbl 010 `"10"', add
label define ph00a_age_lbl 011 `"11"', add
label define ph00a_age_lbl 012 `"12"', add
label define ph00a_age_lbl 013 `"13"', add
label define ph00a_age_lbl 014 `"14"', add
label define ph00a_age_lbl 015 `"15"', add
label define ph00a_age_lbl 016 `"16"', add
label define ph00a_age_lbl 017 `"17"', add
label define ph00a_age_lbl 018 `"18"', add
label define ph00a_age_lbl 019 `"19"', add
label define ph00a_age_lbl 020 `"20"', add
label define ph00a_age_lbl 021 `"21"', add
label define ph00a_age_lbl 022 `"22"', add
label define ph00a_age_lbl 023 `"23"', add
label define ph00a_age_lbl 024 `"24"', add
label define ph00a_age_lbl 025 `"25"', add
label define ph00a_age_lbl 026 `"26"', add
label define ph00a_age_lbl 027 `"27"', add
label define ph00a_age_lbl 028 `"28"', add
label define ph00a_age_lbl 029 `"29"', add
label define ph00a_age_lbl 030 `"30"', add
label define ph00a_age_lbl 031 `"31"', add
label define ph00a_age_lbl 032 `"32"', add
label define ph00a_age_lbl 033 `"33"', add
label define ph00a_age_lbl 034 `"34"', add
label define ph00a_age_lbl 035 `"35"', add
label define ph00a_age_lbl 036 `"36"', add
label define ph00a_age_lbl 037 `"37"', add
label define ph00a_age_lbl 038 `"38"', add
label define ph00a_age_lbl 039 `"39"', add
label define ph00a_age_lbl 040 `"40"', add
label define ph00a_age_lbl 041 `"41"', add
label define ph00a_age_lbl 042 `"42"', add
label define ph00a_age_lbl 043 `"43"', add
label define ph00a_age_lbl 044 `"44"', add
label define ph00a_age_lbl 045 `"45"', add
label define ph00a_age_lbl 046 `"46"', add
label define ph00a_age_lbl 047 `"47"', add
label define ph00a_age_lbl 048 `"48"', add
label define ph00a_age_lbl 049 `"49"', add
label define ph00a_age_lbl 050 `"50"', add
label define ph00a_age_lbl 051 `"51"', add
label define ph00a_age_lbl 052 `"52"', add
label define ph00a_age_lbl 053 `"53"', add
label define ph00a_age_lbl 054 `"54"', add
label define ph00a_age_lbl 055 `"55"', add
label define ph00a_age_lbl 056 `"56"', add
label define ph00a_age_lbl 057 `"57"', add
label define ph00a_age_lbl 058 `"58"', add
label define ph00a_age_lbl 059 `"59"', add
label define ph00a_age_lbl 060 `"60"', add
label define ph00a_age_lbl 061 `"61"', add
label define ph00a_age_lbl 062 `"62"', add
label define ph00a_age_lbl 063 `"63"', add
label define ph00a_age_lbl 064 `"64"', add
label define ph00a_age_lbl 065 `"65"', add
label define ph00a_age_lbl 066 `"66"', add
label define ph00a_age_lbl 067 `"67"', add
label define ph00a_age_lbl 068 `"68"', add
label define ph00a_age_lbl 069 `"69"', add
label define ph00a_age_lbl 070 `"70"', add
label define ph00a_age_lbl 071 `"71"', add
label define ph00a_age_lbl 072 `"72"', add
label define ph00a_age_lbl 073 `"73"', add
label define ph00a_age_lbl 074 `"74"', add
label define ph00a_age_lbl 075 `"75"', add
label define ph00a_age_lbl 076 `"76"', add
label define ph00a_age_lbl 077 `"77"', add
label define ph00a_age_lbl 078 `"78"', add
label define ph00a_age_lbl 079 `"79"', add
label define ph00a_age_lbl 080 `"80"', add
label define ph00a_age_lbl 081 `"81"', add
label define ph00a_age_lbl 082 `"82"', add
label define ph00a_age_lbl 083 `"83"', add
label define ph00a_age_lbl 084 `"84"', add
label define ph00a_age_lbl 085 `"85"', add
label define ph00a_age_lbl 086 `"86"', add
label define ph00a_age_lbl 087 `"87"', add
label define ph00a_age_lbl 088 `"88"', add
label define ph00a_age_lbl 089 `"89"', add
label define ph00a_age_lbl 090 `"90"', add
label define ph00a_age_lbl 091 `"91"', add
label define ph00a_age_lbl 092 `"92"', add
label define ph00a_age_lbl 093 `"93"', add
label define ph00a_age_lbl 094 `"94"', add
label define ph00a_age_lbl 095 `"95"', add
label define ph00a_age_lbl 096 `"96"', add
label define ph00a_age_lbl 097 `"97"', add
label define ph00a_age_lbl 098 `"98"', add
label define ph00a_age_lbl 099 `"99"', add
label define ph00a_age_lbl 100 `"100+"', add
label values ph00a_age ph00a_age_lbl

label define ph00a_sex_lbl 1 `"Male"'
label define ph00a_sex_lbl 2 `"Female"', add
label values ph00a_sex ph00a_sex_lbl

label define ph00a_overseas_lbl 1 `"Overseas worker"'
label define ph00a_overseas_lbl 2 `"Not overseas worker"', add
label values ph00a_overseas ph00a_overseas_lbl

label define ph00a_marst_lbl 1 `"Single"'
label define ph00a_marst_lbl 2 `"Legally married"', add
label define ph00a_marst_lbl 3 `"Widowed"', add
label define ph00a_marst_lbl 4 `"Divorced/separated"', add
label define ph00a_marst_lbl 5 `"Common-law/live-in"', add
label define ph00a_marst_lbl 6 `"Respondent did not know"', add
label define ph00a_marst_lbl 9 `"Unknown"', add
label values ph00a_marst ph00a_marst_lbl

label define ph00a_relig_lbl 01 `"Aglipay"'
label define ph00a_relig_lbl 02 `"Buddhist"', add
label define ph00a_relig_lbl 03 `"Church of Jesus Christ of the Latter Day Saints"', add
label define ph00a_relig_lbl 04 `"Iglesia ni Cristo"', add
label define ph00a_relig_lbl 05 `"Islam"', add
label define ph00a_relig_lbl 06 `"Jehovah's Witness"', add
label define ph00a_relig_lbl 07 `"Philippine Benevolent"', add
label define ph00a_relig_lbl 08 `"Roman Catholic (includes Catholic Charismatic)"', add
label define ph00a_relig_lbl 09 `"Seventh Day Adventist"', add
label define ph00a_relig_lbl 11 `"Convention of the Philippine Baptist Church"', add
label define ph00a_relig_lbl 12 `"Iglesia Evangelista Methodista en Las Filipinas"', add
label define ph00a_relig_lbl 13 `"Lutheran Church in the Philippines"', add
label define ph00a_relig_lbl 14 `"Philippine Episcopal Church"', add
label define ph00a_relig_lbl 15 `"Salvation Army"', add
label define ph00a_relig_lbl 16 `"United Church of Christ"', add
label define ph00a_relig_lbl 17 `"United Methodist Church"', add
label define ph00a_relig_lbl 19 `"Other Methodists"', add
label define ph00a_relig_lbl 21 `"Association of Baptist Churches"', add
label define ph00a_relig_lbl 22 `"Association of Fundamental Baptist Church"', add
label define ph00a_relig_lbl 23 `"Baptist Conference"', add
label define ph00a_relig_lbl 24 `"Bible Baptist Church"', add
label define ph00a_relig_lbl 25 `"Southern Baptist Church"', add
label define ph00a_relig_lbl 29 `"Other Baptists"', add
label define ph00a_relig_lbl 31 `"Alliance of Bible Christian Communities"', add
label define ph00a_relig_lbl 32 `"Assemblies of God"', add
label define ph00a_relig_lbl 33 `"Bread of Life Ministries"', add
label define ph00a_relig_lbl 34 `"Charismatic Full Gospel Ministries"', add
label define ph00a_relig_lbl 35 `"Christian and Missionary Alliance Church"', add
label define ph00a_relig_lbl 36 `"Christians Missions"', add
label define ph00a_relig_lbl 37 `"Christ the Living Stone Fellowship"', add
label define ph00a_relig_lbl 38 `"Church of Christ"', add
label define ph00a_relig_lbl 39 `"Church of God World Mission"', add
label define ph00a_relig_lbl 40 `"Church of the Nazarene"', add
label define ph00a_relig_lbl 41 `"Conservative Baptist Association"', add
label define ph00a_relig_lbl 42 `"Door of Faith"', add
label define ph00a_relig_lbl 43 `"Evangelical Christian Outreach Foundation"', add
label define ph00a_relig_lbl 44 `"Evangelical Free Church"', add
label define ph00a_relig_lbl 45 `"Evangelical Presbyterian Church"', add
label define ph00a_relig_lbl 46 `"Faith Tabernacle Church (Living Rock Ministries)"', add
label define ph00a_relig_lbl 47 `"Filipino Assemblies of the First Born Inc."', add
label define ph00a_relig_lbl 48 `"Foursquare Gospel Church"', add
label define ph00a_relig_lbl 49 `"Free Believers in Christ Fellowship"', add
label define ph00a_relig_lbl 50 `"Free Methodist Church"', add
label define ph00a_relig_lbl 51 `"Free Mission in the Philippines Inc."', add
label define ph00a_relig_lbl 52 `"General Baptist Churches"', add
label define ph00a_relig_lbl 53 `"Good News Christian Churches"', add
label define ph00a_relig_lbl 54 `"Higher round Baptist Mission"', add
label define ph00a_relig_lbl 55 `"IEMELIF Reform Movement"', add
label define ph00a_relig_lbl 56 `"Independent Baptist Churches of the Philippines"', add
label define ph00a_relig_lbl 57 `"International Baptist Missionary Fellowship"', add
label define ph00a_relig_lbl 58 `"International One Way Outreach"', add
label define ph00a_relig_lbl 59 `"Jesus Christ Saves Global Outreach"', add
label define ph00a_relig_lbl 60 `"Jesus is Lord Church"', add
label define ph00a_relig_lbl 61 `"Jesus Reigns Ministries"', add
label define ph00a_relig_lbl 62 `"Love of Christ International Ministries"', add
label define ph00a_relig_lbl 63 `"Miracle Life Fellowship International"', add
label define ph00a_relig_lbl 64 `"Miracle Revival Church of the Philippines"', add
label define ph00a_relig_lbl 65 `"Missionary Baptist Churches of the Philippines"', add
label define ph00a_relig_lbl 66 `"Pentecostal Church of God Asia Mission"', add
label define ph00a_relig_lbl 67 `"Philippine Evangelical Mission"', add
label define ph00a_relig_lbl 68 `"Philippine Good News Ministries"', add
label define ph00a_relig_lbl 69 `"Philippine Grace Gospel Fellowship"', add
label define ph00a_relig_lbl 70 `"Philippine Missionary fellowship"', add
label define ph00a_relig_lbl 71 `"Philippine Pentecostal Holiness Church"', add
label define ph00a_relig_lbl 72 `"Potter's House Christian Center"', add
label define ph00a_relig_lbl 73 `"Presbyterian Church in the Philippines"', add
label define ph00a_relig_lbl 74 `"Take the Nation for Jesus Global Ministries (Corpus Christi)"', add
label define ph00a_relig_lbl 75 `"The Wesleyan Church"', add
label define ph00a_relig_lbl 76 `"Things to Come"', add
label define ph00a_relig_lbl 77 `"UNIDA Evangelical Church"', add
label define ph00a_relig_lbl 78 `"United Evangelical Church of the Philippines (Chinese)"', add
label define ph00a_relig_lbl 79 `"Universal Pentecostal Church"', add
label define ph00a_relig_lbl 80 `"Victory Chapel Christian Fellowship"', add
label define ph00a_relig_lbl 81 `"Way of Salvation"', add
label define ph00a_relig_lbl 82 `"Word of the World"', add
label define ph00a_relig_lbl 83 `"World Missionary Evangelism"', add
label define ph00a_relig_lbl 84 `"Worldwide Church of God"', add
label define ph00a_relig_lbl 85 `"Zion Christian Community Church"', add
label define ph00a_relig_lbl 89 `"Other Evangelical Church"', add
label define ph00a_relig_lbl 91 `"Other Protestants"', add
label define ph00a_relig_lbl 92 `"Tribal Religions"', add
label define ph00a_relig_lbl 93 `"Others"', add
label define ph00a_relig_lbl 94 `"None"', add
label define ph00a_relig_lbl 99 `"Unknown"', add
label values ph00a_relig ph00a_relig_lbl

label define ph00a_bplcntry_lbl 001 `"China, People's Republic of (including Hongkong)"'
label define ph00a_bplcntry_lbl 002 `"United States of America"', add
label define ph00a_bplcntry_lbl 003 `"Indonesia (includes West Irian)"', add
label define ph00a_bplcntry_lbl 004 `"India"', add
label define ph00a_bplcntry_lbl 005 `"Japan"', add
label define ph00a_bplcntry_lbl 006 `"Iran, Islamic Republic of"', add
label define ph00a_bplcntry_lbl 007 `"Australia"', add
label define ph00a_bplcntry_lbl 008 `"United Kingdom"', add
label define ph00a_bplcntry_lbl 009 `"Afghanistan"', add
label define ph00a_bplcntry_lbl 010 `"Albania"', add
label define ph00a_bplcntry_lbl 011 `"Algeria"', add
label define ph00a_bplcntry_lbl 012 `"Angola"', add
label define ph00a_bplcntry_lbl 013 `"Antigua"', add
label define ph00a_bplcntry_lbl 014 `"Argentina"', add
label define ph00a_bplcntry_lbl 015 `"Aruba"', add
label define ph00a_bplcntry_lbl 016 `"Austria"', add
label define ph00a_bplcntry_lbl 017 `"Bahrain"', add
label define ph00a_bplcntry_lbl 018 `"Bangladesh"', add
label define ph00a_bplcntry_lbl 019 `"Belgium"', add
label define ph00a_bplcntry_lbl 020 `"Bolivia"', add
label define ph00a_bplcntry_lbl 021 `"Brazil"', add
label define ph00a_bplcntry_lbl 022 `"Brunei Darussalam"', add
label define ph00a_bplcntry_lbl 023 `"Bulgaria"', add
label define ph00a_bplcntry_lbl 024 `"Burma, Socialist Republic of the Union of"', add
label define ph00a_bplcntry_lbl 025 `"Canada"', add
label define ph00a_bplcntry_lbl 030 `"Cuba"', add
label define ph00a_bplcntry_lbl 031 `"Czechoslovakia"', add
label define ph00a_bplcntry_lbl 032 `"Denmark"', add
label define ph00a_bplcntry_lbl 033 `"Dominican Republic"', add
label define ph00a_bplcntry_lbl 034 `"Egypt Arab Republic"', add
label define ph00a_bplcntry_lbl 035 `"El Salvador"', add
label define ph00a_bplcntry_lbl 036 `"Finland"', add
label define ph00a_bplcntry_lbl 037 `"Fiji"', add
label define ph00a_bplcntry_lbl 038 `"France"', add
label define ph00a_bplcntry_lbl 039 `"Germany, Federal Republic of"', add
label define ph00a_bplcntry_lbl 041 `"Greece"', add
label define ph00a_bplcntry_lbl 042 `"Guam"', add
label define ph00a_bplcntry_lbl 043 `"Guatemala"', add
label define ph00a_bplcntry_lbl 047 `"Ireland"', add
label define ph00a_bplcntry_lbl 049 `"Israel"', add
label define ph00a_bplcntry_lbl 050 `"Italy"', add
label define ph00a_bplcntry_lbl 052 `"Kenya"', add
label define ph00a_bplcntry_lbl 053 `"Korea, Republic of"', add
label define ph00a_bplcntry_lbl 054 `"Kuwait"', add
label define ph00a_bplcntry_lbl 056 `"Liberia"', add
label define ph00a_bplcntry_lbl 058 `"Malaya, Federation of (Comprise Malaysia)"', add
label define ph00a_bplcntry_lbl 061 `"Monaco"', add
label define ph00a_bplcntry_lbl 062 `"Morocco"', add
label define ph00a_bplcntry_lbl 063 `"Nepal"', add
label define ph00a_bplcntry_lbl 064 `"Netherlands"', add
label define ph00a_bplcntry_lbl 066 `"Nigeria"', add
label define ph00a_bplcntry_lbl 067 `"Norway"', add
label define ph00a_bplcntry_lbl 068 `"Pakistan, Islamic Republic"', add
label define ph00a_bplcntry_lbl 069 `"Palau, Republic of"', add
label define ph00a_bplcntry_lbl 071 `"Papua New Guinea"', add
label define ph00a_bplcntry_lbl 072 `"Paraguay"', add
label define ph00a_bplcntry_lbl 073 `"Peru"', add
label define ph00a_bplcntry_lbl 074 `"Poland"', add
label define ph00a_bplcntry_lbl 075 `"Portugal"', add
label define ph00a_bplcntry_lbl 076 `"Portuguese Timor and Dependencies"', add
label define ph00a_bplcntry_lbl 078 `"Romania"', add
label define ph00a_bplcntry_lbl 079 `"Russia"', add
label define ph00a_bplcntry_lbl 080 `"Saudi Arabia"', add
label define ph00a_bplcntry_lbl 081 `"Singapore"', add
label define ph00a_bplcntry_lbl 082 `"Spain"', add
label define ph00a_bplcntry_lbl 086 `"Switzerland"', add
label define ph00a_bplcntry_lbl 088 `"Taiwan (Republic of China)"', add
label define ph00a_bplcntry_lbl 089 `"Thailand"', add
label define ph00a_bplcntry_lbl 090 `"Trust Territory of Pacific Islands (excludes Marshall Island and Palau Republic of)"', add
label define ph00a_bplcntry_lbl 091 `"Tunisia"', add
label define ph00a_bplcntry_lbl 092 `"Uruguay"', add
label define ph00a_bplcntry_lbl 094 `"Vietnam"', add
label define ph00a_bplcntry_lbl 097 `"Zimbabwe (Rhodesia)"', add
label define ph00a_bplcntry_lbl 098 `"Undocumented"', add
label define ph00a_bplcntry_lbl 099 `"Others"', add
label define ph00a_bplcntry_lbl 100 `"Philippines"', add
label define ph00a_bplcntry_lbl 998 `"Response suppressed"', add
label define ph00a_bplcntry_lbl 999 `"Unknown"', add
label values ph00a_bplcntry ph00a_bplcntry_lbl

label define ph00a_disab_lbl 1 `"Yes"'
label define ph00a_disab_lbl 2 `"No"', add
label values ph00a_disab ph00a_disab_lbl

label define ph00a_disabtyp_lbl 01 `"Total blindness"'
label define ph00a_disabtyp_lbl 02 `"Partial blindness"', add
label define ph00a_disabtyp_lbl 03 `"Low vision"', add
label define ph00a_disabtyp_lbl 04 `"Total deafness"', add
label define ph00a_disabtyp_lbl 05 `"Partial deafness"', add
label define ph00a_disabtyp_lbl 06 `"Hard of Hearing"', add
label define ph00a_disabtyp_lbl 07 `"Oral defect"', add
label define ph00a_disabtyp_lbl 08 `"Loss of one hand"', add
label define ph00a_disabtyp_lbl 09 `"Loss of both hands"', add
label define ph00a_disabtyp_lbl 10 `"Loss of one leg"', add
label define ph00a_disabtyp_lbl 11 `"Loss of both legs"', add
label define ph00a_disabtyp_lbl 12 `"Quadriplegic - regular or mild"', add
label define ph00a_disabtyp_lbl 13 `"Quadriplegic severe"', add
label define ph00a_disabtyp_lbl 14 `"Mentally retarded- regular or mild"', add
label define ph00a_disabtyp_lbl 15 `"Mentally retarded - severe"', add
label define ph00a_disabtyp_lbl 16 `"Mentally ill - regular or mild"', add
label define ph00a_disabtyp_lbl 17 `"Mentally ill -severe"', add
label define ph00a_disabtyp_lbl 18 `"Multiple impairment"', add
label define ph00a_disabtyp_lbl 19 `"Undocumented"', add
label define ph00a_disabtyp_lbl 99 `"Not disabled"', add
label values ph00a_disabtyp ph00a_disabtyp_lbl

label define ph00a_ethnic_lbl 001 `"Akeanon/Alanon"'
label define ph00a_ethnic_lbl 002 `"Bikol/Bicol"', add
label define ph00a_ethnic_lbl 003 `"Cebuano"', add
label define ph00a_ethnic_lbl 004 `"Hiligaynon, Ilongo"', add
label define ph00a_ethnic_lbl 005 `"Ibanag"', add
label define ph00a_ethnic_lbl 006 `"Ifugao"', add
label define ph00a_ethnic_lbl 007 `"Ilocano"', add
label define ph00a_ethnic_lbl 008 `"Kankanai/Kankaney"', add
label define ph00a_ethnic_lbl 009 `"Kapampangan"', add
label define ph00a_ethnic_lbl 010 `"Karay-a"', add
label define ph00a_ethnic_lbl 011 `"Manobo/Ata-Manobo"', add
label define ph00a_ethnic_lbl 012 `"Maranao"', add
label define ph00a_ethnic_lbl 013 `"Masbateno/Masbatenon"', add
label define ph00a_ethnic_lbl 014 `"Pangasinan/Panggalato"', add
label define ph00a_ethnic_lbl 015 `"Sama (Samal)/Abaknon"', add
label define ph00a_ethnic_lbl 016 `"Surigaonon"', add
label define ph00a_ethnic_lbl 017 `"Tagalog"', add
label define ph00a_ethnic_lbl 018 `"Tausog"', add
label define ph00a_ethnic_lbl 019 `"Waray"', add
label define ph00a_ethnic_lbl 020 `"Zambageno-Chavacano"', add
label define ph00a_ethnic_lbl 021 `"Abelling"', add
label define ph00a_ethnic_lbl 022 `"Abiyan"', add
label define ph00a_ethnic_lbl 023 `"Aburin"', add
label define ph00a_ethnic_lbl 024 `"Aeta/Ayta"', add
label define ph00a_ethnic_lbl 025 `"Aggay"', add
label define ph00a_ethnic_lbl 026 `"Agta"', add
label define ph00a_ethnic_lbl 027 `"Agutaynon/Agutayanon"', add
label define ph00a_ethnic_lbl 028 `"Alangan"', add
label define ph00a_ethnic_lbl 029 `"Apayao/Yapayao"', add
label define ph00a_ethnic_lbl 030 `"Applai"', add
label define ph00a_ethnic_lbl 031 `"Atta/Ata/Ati"', add
label define ph00a_ethnic_lbl 032 `"Ayangan"', add
label define ph00a_ethnic_lbl 033 `"Badjao, Sama Dilaut"', add
label define ph00a_ethnic_lbl 034 `"Bagobo/Guinga"', add
label define ph00a_ethnic_lbl 035 `"Balangao/Baliwon"', add
label define ph00a_ethnic_lbl 036 `"Bantoanon"', add
label define ph00a_ethnic_lbl 037 `"Banwaon"', add
label define ph00a_ethnic_lbl 038 `"Batak/Binatak"', add
label define ph00a_ethnic_lbl 039 `"Batangan"', add
label define ph00a_ethnic_lbl 040 `"Bilaan/B'laan"', add
label define ph00a_ethnic_lbl 041 `"Binukid/Bukidnon"', add
label define ph00a_ethnic_lbl 042 `"Bisaya/Binisaya"', add
label define ph00a_ethnic_lbl 043 `"Boholano"', add
label define ph00a_ethnic_lbl 044 `"Bolinao"', add
label define ph00a_ethnic_lbl 045 `"Bugkalot"', add
label define ph00a_ethnic_lbl 046 `"Bontok/Binontok"', add
label define ph00a_ethnic_lbl 047 `"Buhid"', add
label define ph00a_ethnic_lbl 048 `"Butuanon"', add
label define ph00a_ethnic_lbl 049 `"Caviteno"', add
label define ph00a_ethnic_lbl 050 `"Caviteno-Chavacano"', add
label define ph00a_ethnic_lbl 051 `"Cimaron"', add
label define ph00a_ethnic_lbl 052 `"Cotabateno"', add
label define ph00a_ethnic_lbl 053 `"Cotabateno-Chavacano"', add
label define ph00a_ethnic_lbl 054 `"Cuyunon/Cuyunan"', add
label define ph00a_ethnic_lbl 055 `"Dava-Chavacano"', add
label define ph00a_ethnic_lbl 056 `"Davaweno"', add
label define ph00a_ethnic_lbl 057 `"Dibabawon"', add
label define ph00a_ethnic_lbl 058 `"Dumagat/Dumagat(Umiray)"', add
label define ph00a_ethnic_lbl 059 `"Gaddang"', add
label define ph00a_ethnic_lbl 060 `"Gubatnon"', add
label define ph00a_ethnic_lbl 061 `"Hamtikanon"', add
label define ph00a_ethnic_lbl 062 `"Hanunuo"', add
label define ph00a_ethnic_lbl 063 `"Higaonon"', add
label define ph00a_ethnic_lbl 064 `"Ibaloi/Inibaloi"', add
label define ph00a_ethnic_lbl 065 `"Ibontoc"', add
label define ph00a_ethnic_lbl 066 `"Ikalahan/Kalanguya"', add
label define ph00a_ethnic_lbl 067 `"Ilanun/Llanuan"', add
label define ph00a_ethnic_lbl 068 `"Ilongot"', add
label define ph00a_ethnic_lbl 069 `"Iranon"', add
label define ph00a_ethnic_lbl 070 `"Iraya"', add
label define ph00a_ethnic_lbl 071 `"Isamal Kanlaw"', add
label define ph00a_ethnic_lbl 072 `"Isarog"', add
label define ph00a_ethnic_lbl 073 `"Isinay"', add
label define ph00a_ethnic_lbl 074 `"Isnag"', add
label define ph00a_ethnic_lbl 075 `"Isneg"', add
label define ph00a_ethnic_lbl 076 `"Itawis"', add
label define ph00a_ethnic_lbl 077 `"Itawit"', add
label define ph00a_ethnic_lbl 078 `"Itneg"', add
label define ph00a_ethnic_lbl 079 `"Ivatan/Itbayat"', add
label define ph00a_ethnic_lbl 080 `"Iwak/I'wa/Owak"', add
label define ph00a_ethnic_lbl 081 `"Iyapplai"', add
label define ph00a_ethnic_lbl 082 `"iyiwaks"', add
label define ph00a_ethnic_lbl 083 `"Jama Mapun"', add
label define ph00a_ethnic_lbl 084 `"Kaagan"', add
label define ph00a_ethnic_lbl 085 `"Kabihug"', add
label define ph00a_ethnic_lbl 086 `"Kagayanen"', add
label define ph00a_ethnic_lbl 087 `"Kalagan"', add
label define ph00a_ethnic_lbl 088 `"Kalamianen"', add
label define ph00a_ethnic_lbl 089 `"Kalinga"', add
label define ph00a_ethnic_lbl 090 `"Kamayo"', add
label define ph00a_ethnic_lbl 091 `"Kamigin/Kinamiging"', add
label define ph00a_ethnic_lbl 092 `"Kapul"', add
label define ph00a_ethnic_lbl 093 `"Karaga"', add
label define ph00a_ethnic_lbl 094 `"Karao"', add
label define ph00a_ethnic_lbl 097 `"Kasigurahin"', add
label define ph00a_ethnic_lbl 098 `"Kinalinga"', add
label define ph00a_ethnic_lbl 099 `"Kiniray-a"', add
label define ph00a_ethnic_lbl 100 `"Kolibugan/Kalibugan"', add
label define ph00a_ethnic_lbl 101 `"Ligbuk/Lugbok"', add
label define ph00a_ethnic_lbl 102 `"Maguindanao"', add
label define ph00a_ethnic_lbl 103 `"Malaueg"', add
label define ph00a_ethnic_lbl 105 `"Mamanwa"', add
label define ph00a_ethnic_lbl 106 `"Mandaya"', add
label define ph00a_ethnic_lbl 107 `"Mangyan"', add
label define ph00a_ethnic_lbl 108 `"Mansaka"', add
label define ph00a_ethnic_lbl 109 `"Matigsalog"', add
label define ph00a_ethnic_lbl 110 `"Molbog"', add
label define ph00a_ethnic_lbl 111 `"Negrito"', add
label define ph00a_ethnic_lbl 113 `"Palawan/Pinalawan/Palawanon"', add
label define ph00a_ethnic_lbl 114 `"Paranan"', add
label define ph00a_ethnic_lbl 116 `"Ratagnon"', add
label define ph00a_ethnic_lbl 117 `"Remontado"', add
label define ph00a_ethnic_lbl 118 `"Romblon/Rombloanon"', add
label define ph00a_ethnic_lbl 119 `"Sambal, Zambal"', add
label define ph00a_ethnic_lbl 120 `"Sangil, Sangir"', add
label define ph00a_ethnic_lbl 121 `"Subanen (Sicon,Zambo. Norte)/Subaben (Zambo. Norte and Sur)"', add
label define ph00a_ethnic_lbl 122 `"Sulod"', add
label define ph00a_ethnic_lbl 123 `"Tabangnon"', add
label define ph00a_ethnic_lbl 124 `"Tadyawan"', add
label define ph00a_ethnic_lbl 125 `"Tagabawa"', add
label define ph00a_ethnic_lbl 127 `"Tagakaolo"', add
label define ph00a_ethnic_lbl 128 `"Tagbanwa"', add
label define ph00a_ethnic_lbl 130 `"Talaandig"', add
label define ph00a_ethnic_lbl 131 `"T'boli"', add
label define ph00a_ethnic_lbl 132 `"Teduray"', add
label define ph00a_ethnic_lbl 133 `"Ternateño-Chavacano"', add
label define ph00a_ethnic_lbl 134 `"Tigwahon/Tigwahanon"', add
label define ph00a_ethnic_lbl 135 `"Tinggian"', add
label define ph00a_ethnic_lbl 136 `"Tiruray"', add
label define ph00a_ethnic_lbl 137 `"Tuwali"', add
label define ph00a_ethnic_lbl 138 `"Ubo"', add
label define ph00a_ethnic_lbl 139 `"Umayamnon"', add
label define ph00a_ethnic_lbl 140 `"Yakan"', add
label define ph00a_ethnic_lbl 141 `"Yogad"', add
label define ph00a_ethnic_lbl 142 `"Other Local Dialects/Ethnicity"', add
label define ph00a_ethnic_lbl 143 `"Chinese"', add
label define ph00a_ethnic_lbl 144 `"American/English"', add
label define ph00a_ethnic_lbl 145 `"Other Foreign Languages/Ethnicity"', add
label define ph00a_ethnic_lbl 146 `"Sama (Sama Bangengeh"', add
label define ph00a_ethnic_lbl 149 `"Sama Dilaya"', add
label define ph00a_ethnic_lbl 152 `"Capizeno"', add
label define ph00a_ethnic_lbl 998 `"Response suppressed"', add
label define ph00a_ethnic_lbl 999 `"Unknown"', add
label values ph00a_ethnic ph00a_ethnic_lbl

label define ph00a_lit_lbl 1 `"Literate"'
label define ph00a_lit_lbl 2 `"Illiterate"', add
label define ph00a_lit_lbl 9 `"NIU (not in universe)"', add
label values ph00a_lit ph00a_lit_lbl

label define ph00a_langfil_lbl 1 `"Yes"'
label define ph00a_langfil_lbl 2 `"No"', add
label define ph00a_langfil_lbl 9 `"NIU (not in universe)"', add
label values ph00a_langfil ph00a_langfil_lbl

label define ph00a_lange_lbl 1 `"Yes"'
label define ph00a_lange_lbl 2 `"No"', add
label define ph00a_lange_lbl 8 `"Unknown"', add
label define ph00a_lange_lbl 9 `"NIU (not in universe)"', add
label values ph00a_lange ph00a_lange_lbl

label define ph00a_school_lbl 1 `"Attended school"'
label define ph00a_school_lbl 2 `"Did not attend school"', add
label define ph00a_school_lbl 9 `"NIU (not in universe)"', add
label values ph00a_school ph00a_school_lbl

label define ph00a_schtype_lbl 1 `"Government/public school"'
label define ph00a_schtype_lbl 2 `"Private school"', add
label define ph00a_schtype_lbl 3 `"Madrasah"', add
label define ph00a_schtype_lbl 4 `"Others"', add
label define ph00a_schtype_lbl 8 `"Unknown"', add
label define ph00a_schtype_lbl 9 `"NIU (not in universe)"', add
label values ph00a_schtype ph00a_schtype_lbl

label define ph00a_edattan_lbl 00 `"No grade completed"'
label define ph00a_edattan_lbl 01 `"Pre-school"', add
label define ph00a_edattan_lbl 11 `"Elementary grade 1"', add
label define ph00a_edattan_lbl 12 `"Elementary grade 2"', add
label define ph00a_edattan_lbl 13 `"Elementary grade 3"', add
label define ph00a_edattan_lbl 14 `"Elementary grade 4"', add
label define ph00a_edattan_lbl 15 `"Elementary grade 5"', add
label define ph00a_edattan_lbl 16 `"Elementary grade 6"', add
label define ph00a_edattan_lbl 17 `"Elementary grade 7"', add
label define ph00a_edattan_lbl 21 `"1st year highschool"', add
label define ph00a_edattan_lbl 22 `"2nd year highschool"', add
label define ph00a_edattan_lbl 23 `"3rd year highschool"', add
label define ph00a_edattan_lbl 24 `"4th year highschool"', add
label define ph00a_edattan_lbl 25 `"Highschool graduate"', add
label define ph00a_edattan_lbl 31 `"Post secondary 1 year"', add
label define ph00a_edattan_lbl 32 `"Post secondary 2 year"', add
label define ph00a_edattan_lbl 50 `"Post secondary graduate"', add
label define ph00a_edattan_lbl 51 `"Post secondary graduate"', add
label define ph00a_edattan_lbl 52 `"Post secondary graduate"', add
label define ph00a_edattan_lbl 53 `"Post secondary graduate"', add
label define ph00a_edattan_lbl 54 `"Post secondary graduate"', add
label define ph00a_edattan_lbl 55 `"Post secondary graduate"', add
label define ph00a_edattan_lbl 56 `"Post secondary graduate"', add
label define ph00a_edattan_lbl 57 `"Post secondary graduate"', add
label define ph00a_edattan_lbl 58 `"Post secondary graduate"', add
label define ph00a_edattan_lbl 59 `"Post secondary graduate"', add
label define ph00a_edattan_lbl 41 `"1st year college"', add
label define ph00a_edattan_lbl 42 `"2nd year college"', add
label define ph00a_edattan_lbl 43 `"3rd year college"', add
label define ph00a_edattan_lbl 44 `"4th year college"', add
label define ph00a_edattan_lbl 45 `"5th year college"', add
label define ph00a_edattan_lbl 46 `"6th year college"', add
label define ph00a_edattan_lbl 60 `"Academic degree holder"', add
label define ph00a_edattan_lbl 61 `"Academic degree holder"', add
label define ph00a_edattan_lbl 62 `"Academic degree holder"', add
label define ph00a_edattan_lbl 63 `"Academic degree holder"', add
label define ph00a_edattan_lbl 64 `"Academic degree holder"', add
label define ph00a_edattan_lbl 65 `"Academic degree holder"', add
label define ph00a_edattan_lbl 66 `"Academic degree holder"', add
label define ph00a_edattan_lbl 67 `"Academic degree holder"', add
label define ph00a_edattan_lbl 68 `"Academic degree holder"', add
label define ph00a_edattan_lbl 71 `"Post baccalaurete"', add
label define ph00a_edattan_lbl 98 `"Unknown"', add
label define ph00a_edattan_lbl 99 `"NIU (not in universe)"', add
label values ph00a_edattan ph00a_edattan_lbl

label define ph00a_prov5yr_lbl 00 `"Same city/municipality"'
label define ph00a_prov5yr_lbl 01 `"Abra"', add
label define ph00a_prov5yr_lbl 02 `"Agusan Del Norte"', add
label define ph00a_prov5yr_lbl 03 `"Agusan Del Sur"', add
label define ph00a_prov5yr_lbl 04 `"Aklan"', add
label define ph00a_prov5yr_lbl 05 `"Albay"', add
label define ph00a_prov5yr_lbl 06 `"Antique"', add
label define ph00a_prov5yr_lbl 07 `"Basilan"', add
label define ph00a_prov5yr_lbl 08 `"Bataan"', add
label define ph00a_prov5yr_lbl 09 `"Batanes"', add
label define ph00a_prov5yr_lbl 10 `"Batangas"', add
label define ph00a_prov5yr_lbl 11 `"Benguet"', add
label define ph00a_prov5yr_lbl 12 `"Bohol"', add
label define ph00a_prov5yr_lbl 13 `"Bukidnon"', add
label define ph00a_prov5yr_lbl 14 `"Bulacan"', add
label define ph00a_prov5yr_lbl 15 `"Cagayan"', add
label define ph00a_prov5yr_lbl 16 `"Camarines Norte"', add
label define ph00a_prov5yr_lbl 17 `"Camarines Sur"', add
label define ph00a_prov5yr_lbl 18 `"Camiguin"', add
label define ph00a_prov5yr_lbl 19 `"Capiz"', add
label define ph00a_prov5yr_lbl 20 `"Catanduanes"', add
label define ph00a_prov5yr_lbl 21 `"Cavite"', add
label define ph00a_prov5yr_lbl 22 `"Cebu"', add
label define ph00a_prov5yr_lbl 23 `"Davao (Davao Del Norte)"', add
label define ph00a_prov5yr_lbl 24 `"Davao Del Sur"', add
label define ph00a_prov5yr_lbl 25 `"Davao Oriental"', add
label define ph00a_prov5yr_lbl 26 `"Eastern Samar"', add
label define ph00a_prov5yr_lbl 27 `"Ifugao"', add
label define ph00a_prov5yr_lbl 28 `"Ilocos Norte"', add
label define ph00a_prov5yr_lbl 29 `"Ilocos Sur"', add
label define ph00a_prov5yr_lbl 30 `"Iloilo"', add
label define ph00a_prov5yr_lbl 31 `"Isabela"', add
label define ph00a_prov5yr_lbl 32 `"Kalinga"', add
label define ph00a_prov5yr_lbl 33 `"La Union"', add
label define ph00a_prov5yr_lbl 34 `"Laguna"', add
label define ph00a_prov5yr_lbl 35 `"Lanao Del Norte"', add
label define ph00a_prov5yr_lbl 36 `"Lanao Del Sur"', add
label define ph00a_prov5yr_lbl 37 `"Leyte"', add
label define ph00a_prov5yr_lbl 38 `"Maguindanao"', add
label define ph00a_prov5yr_lbl 39 `"Manila, Metro First District"', add
label define ph00a_prov5yr_lbl 40 `"Marinduque"', add
label define ph00a_prov5yr_lbl 41 `"Masbate"', add
label define ph00a_prov5yr_lbl 42 `"Misamis Occidental"', add
label define ph00a_prov5yr_lbl 43 `"Misamis Oriental"', add
label define ph00a_prov5yr_lbl 44 `"Mountain Province"', add
label define ph00a_prov5yr_lbl 45 `"Negros Occidental"', add
label define ph00a_prov5yr_lbl 46 `"Negros Oriental"', add
label define ph00a_prov5yr_lbl 47 `"Cotabato (North Cotabato)"', add
label define ph00a_prov5yr_lbl 48 `"Northern Samar"', add
label define ph00a_prov5yr_lbl 49 `"Nueva Ecija"', add
label define ph00a_prov5yr_lbl 50 `"Nueva Vizcaya"', add
label define ph00a_prov5yr_lbl 51 `"Occidental Mindoro"', add
label define ph00a_prov5yr_lbl 52 `"Oriental Mindoro"', add
label define ph00a_prov5yr_lbl 53 `"Palawan"', add
label define ph00a_prov5yr_lbl 54 `"Pampanga"', add
label define ph00a_prov5yr_lbl 55 `"Pangasinan"', add
label define ph00a_prov5yr_lbl 56 `"Quezon"', add
label define ph00a_prov5yr_lbl 57 `"Quirino"', add
label define ph00a_prov5yr_lbl 58 `"Rizal"', add
label define ph00a_prov5yr_lbl 59 `"Romblon"', add
label define ph00a_prov5yr_lbl 60 `"Samar (Western Samar)"', add
label define ph00a_prov5yr_lbl 61 `"Siquijor"', add
label define ph00a_prov5yr_lbl 62 `"Sorsogon"', add
label define ph00a_prov5yr_lbl 63 `"South Cotabato"', add
label define ph00a_prov5yr_lbl 64 `"Southern Leyte"', add
label define ph00a_prov5yr_lbl 65 `"Sultan Kudarat"', add
label define ph00a_prov5yr_lbl 66 `"Sulu"', add
label define ph00a_prov5yr_lbl 67 `"Surigao Del Norte"', add
label define ph00a_prov5yr_lbl 68 `"Surigao Del Sur"', add
label define ph00a_prov5yr_lbl 69 `"Tarlac"', add
label define ph00a_prov5yr_lbl 70 `"Tawi-Tawi"', add
label define ph00a_prov5yr_lbl 71 `"Zambales"', add
label define ph00a_prov5yr_lbl 72 `"Zamboanga Del Norte"', add
label define ph00a_prov5yr_lbl 73 `"Zamboanga Del Sur"', add
label define ph00a_prov5yr_lbl 74 `"Metro Manila, Second District"', add
label define ph00a_prov5yr_lbl 75 `"Metro Manila, Third District"', add
label define ph00a_prov5yr_lbl 76 `"Metro Manila, Fourth District"', add
label define ph00a_prov5yr_lbl 77 `"Aurora"', add
label define ph00a_prov5yr_lbl 78 `"Biliran"', add
label define ph00a_prov5yr_lbl 79 `"Guimaras"', add
label define ph00a_prov5yr_lbl 80 `"Sarangani"', add
label define ph00a_prov5yr_lbl 81 `"Apayao"', add
label define ph00a_prov5yr_lbl 82 `"Compostela Valley"', add
label define ph00a_prov5yr_lbl 98 `"Cotabato and Marawi"', add
label define ph00a_prov5yr_lbl 90 `"Foreign country"', add
label define ph00a_prov5yr_lbl 99 `"NIU (not in universe)"', add
label values ph00a_prov5yr ph00a_prov5yr_lbl

label define ph00a_prov10yr_lbl 00 `"Same city/municipality"'
label define ph00a_prov10yr_lbl 01 `"Abra"', add
label define ph00a_prov10yr_lbl 02 `"Agusan Del Norte"', add
label define ph00a_prov10yr_lbl 03 `"Agusan Del Sur"', add
label define ph00a_prov10yr_lbl 04 `"Aklan"', add
label define ph00a_prov10yr_lbl 05 `"Albay"', add
label define ph00a_prov10yr_lbl 06 `"Antique"', add
label define ph00a_prov10yr_lbl 07 `"Basilan"', add
label define ph00a_prov10yr_lbl 08 `"Bataan"', add
label define ph00a_prov10yr_lbl 09 `"Batanes"', add
label define ph00a_prov10yr_lbl 10 `"Batangas"', add
label define ph00a_prov10yr_lbl 11 `"Benguet"', add
label define ph00a_prov10yr_lbl 12 `"Bohol"', add
label define ph00a_prov10yr_lbl 13 `"Bukidnon"', add
label define ph00a_prov10yr_lbl 14 `"Bulacan"', add
label define ph00a_prov10yr_lbl 15 `"Cagayan"', add
label define ph00a_prov10yr_lbl 16 `"Camarines Norte"', add
label define ph00a_prov10yr_lbl 17 `"Camarines Sur"', add
label define ph00a_prov10yr_lbl 18 `"Camiguin"', add
label define ph00a_prov10yr_lbl 19 `"Capiz"', add
label define ph00a_prov10yr_lbl 20 `"Catanduanes"', add
label define ph00a_prov10yr_lbl 21 `"Cavite"', add
label define ph00a_prov10yr_lbl 22 `"Cebu"', add
label define ph00a_prov10yr_lbl 23 `"Davao (Davao Del Norte)"', add
label define ph00a_prov10yr_lbl 24 `"Davao Del Sur"', add
label define ph00a_prov10yr_lbl 25 `"Davao Oriental"', add
label define ph00a_prov10yr_lbl 26 `"Eastern Samar"', add
label define ph00a_prov10yr_lbl 27 `"Ifugao"', add
label define ph00a_prov10yr_lbl 28 `"Ilocos Norte"', add
label define ph00a_prov10yr_lbl 29 `"Ilocos Sur"', add
label define ph00a_prov10yr_lbl 30 `"Iloilo"', add
label define ph00a_prov10yr_lbl 31 `"Isabela"', add
label define ph00a_prov10yr_lbl 32 `"Kalinga"', add
label define ph00a_prov10yr_lbl 33 `"La Union"', add
label define ph00a_prov10yr_lbl 34 `"Laguna"', add
label define ph00a_prov10yr_lbl 35 `"Lanao Del Norte"', add
label define ph00a_prov10yr_lbl 36 `"Lanao Del Sur"', add
label define ph00a_prov10yr_lbl 37 `"Leyte"', add
label define ph00a_prov10yr_lbl 38 `"Maguindanao"', add
label define ph00a_prov10yr_lbl 39 `"Manila, Metro First District"', add
label define ph00a_prov10yr_lbl 40 `"Marinduque"', add
label define ph00a_prov10yr_lbl 41 `"Masbate"', add
label define ph00a_prov10yr_lbl 42 `"Misamis Occidental"', add
label define ph00a_prov10yr_lbl 43 `"Misamis Oriental"', add
label define ph00a_prov10yr_lbl 44 `"Mountain Province"', add
label define ph00a_prov10yr_lbl 45 `"Negros Occidental"', add
label define ph00a_prov10yr_lbl 46 `"Negros Oriental"', add
label define ph00a_prov10yr_lbl 47 `"Cotabato (North Cotabato)"', add
label define ph00a_prov10yr_lbl 48 `"Northern Samar"', add
label define ph00a_prov10yr_lbl 49 `"Nueva Ecija"', add
label define ph00a_prov10yr_lbl 50 `"Nueva Vizcaya"', add
label define ph00a_prov10yr_lbl 51 `"Occidental Mindoro"', add
label define ph00a_prov10yr_lbl 52 `"Oriental Mindoro"', add
label define ph00a_prov10yr_lbl 53 `"Palawan"', add
label define ph00a_prov10yr_lbl 54 `"Pampanga"', add
label define ph00a_prov10yr_lbl 55 `"Pangasinan"', add
label define ph00a_prov10yr_lbl 56 `"Quezon"', add
label define ph00a_prov10yr_lbl 57 `"Quirino"', add
label define ph00a_prov10yr_lbl 58 `"Rizal"', add
label define ph00a_prov10yr_lbl 59 `"Romblon"', add
label define ph00a_prov10yr_lbl 60 `"Samar (Western Samar)"', add
label define ph00a_prov10yr_lbl 61 `"Siquijor"', add
label define ph00a_prov10yr_lbl 62 `"Sorsogon"', add
label define ph00a_prov10yr_lbl 63 `"South Cotabato"', add
label define ph00a_prov10yr_lbl 64 `"Southern Leyte"', add
label define ph00a_prov10yr_lbl 65 `"Sultan Kudarat"', add
label define ph00a_prov10yr_lbl 66 `"Sulu"', add
label define ph00a_prov10yr_lbl 67 `"Surigao Del Norte"', add
label define ph00a_prov10yr_lbl 68 `"Surigao Del Sur"', add
label define ph00a_prov10yr_lbl 69 `"Tarlac"', add
label define ph00a_prov10yr_lbl 70 `"Tawi-Tawi"', add
label define ph00a_prov10yr_lbl 71 `"Zambales"', add
label define ph00a_prov10yr_lbl 72 `"Zamboanga Del Norte"', add
label define ph00a_prov10yr_lbl 73 `"Zamboanga Del Sur"', add
label define ph00a_prov10yr_lbl 74 `"Metro Manila, Second District"', add
label define ph00a_prov10yr_lbl 75 `"Metro Manila, Third District"', add
label define ph00a_prov10yr_lbl 76 `"Metro Manila, Fourth District"', add
label define ph00a_prov10yr_lbl 77 `"Aurora"', add
label define ph00a_prov10yr_lbl 78 `"Biliran"', add
label define ph00a_prov10yr_lbl 79 `"Guimaras"', add
label define ph00a_prov10yr_lbl 80 `"Sarangani"', add
label define ph00a_prov10yr_lbl 81 `"Apayao"', add
label define ph00a_prov10yr_lbl 82 `"Compostela Valley"', add
label define ph00a_prov10yr_lbl 98 `"Cotabato and Marawi"', add
label define ph00a_prov10yr_lbl 90 `"Foreign country"', add
label define ph00a_prov10yr_lbl 99 `"NIU (not in universe)"', add
label values ph00a_prov10yr ph00a_prov10yr_lbl

label define ph00a_mun10yr_lbl 0007 `"Foreign country"'
label define ph00a_mun10yr_lbl 0008 `"Same city/municipality"', add
label define ph00a_mun10yr_lbl 0009 `"Unknown"', add
label define ph00a_mun10yr_lbl 9998 `"Not reported"', add
label define ph00a_mun10yr_lbl 9999 `"NIU (not in universe)"', add
label values ph00a_mun10yr ph00a_mun10yr_lbl

label define ph00a_occ2_lbl 01 `"Armed forces"'
label define ph00a_occ2_lbl 11 `"Officials of government and special-interest organizations"', add
label define ph00a_occ2_lbl 12 `"Corporate executives and specialized managers"', add
label define ph00a_occ2_lbl 13 `"General managers/managing-proprietors"', add
label define ph00a_occ2_lbl 14 `"Supervisors"', add
label define ph00a_occ2_lbl 21 `"Physical, mathematical and engineering science professionals"', add
label define ph00a_occ2_lbl 22 `"Life science and health professionals"', add
label define ph00a_occ2_lbl 23 `"Teaching professionals"', add
label define ph00a_occ2_lbl 24 `"Other professionals"', add
label define ph00a_occ2_lbl 31 `"Physical science and engineering associate professionals"', add
label define ph00a_occ2_lbl 32 `"Life science and health asociate professionals"', add
label define ph00a_occ2_lbl 33 `"Teaching associate professionals"', add
label define ph00a_occ2_lbl 34 `"Related associate professionals"', add
label define ph00a_occ2_lbl 41 `"Office clerks"', add
label define ph00a_occ2_lbl 42 `"Customer service clerks"', add
label define ph00a_occ2_lbl 51 `"Personal and protective service workers"', add
label define ph00a_occ2_lbl 52 `"Models, salespersons and demonstrators"', add
label define ph00a_occ2_lbl 61 `"Farmers and other plant growers"', add
label define ph00a_occ2_lbl 62 `"Animal producers"', add
label define ph00a_occ2_lbl 63 `"Forestry and related workers"', add
label define ph00a_occ2_lbl 64 `"Fishermen"', add
label define ph00a_occ2_lbl 65 `"Hunters and trappers"', add
label define ph00a_occ2_lbl 71 `"Mining, construction and related trades workers"', add
label define ph00a_occ2_lbl 72 `"Metal, machinery and related trades workers"', add
label define ph00a_occ2_lbl 73 `"Precision, handicraft, printing and related trades workers"', add
label define ph00a_occ2_lbl 74 `"Other craft and related trades workers"', add
label define ph00a_occ2_lbl 81 `"Stationary, plant and related operators"', add
label define ph00a_occ2_lbl 82 `"Machine operators and assemblers"', add
label define ph00a_occ2_lbl 83 `"Drivers and mobile-plant operators"', add
label define ph00a_occ2_lbl 91 `"Sales and services elementary occupations"', add
label define ph00a_occ2_lbl 92 `"Agricultural, forestry, fishery and related laborers"', add
label define ph00a_occ2_lbl 93 `"Laborers in mining, construction, manufacturing and transport"', add
label define ph00a_occ2_lbl 95 `"Other occupation not classifiable"', add
label define ph00a_occ2_lbl 97 `"No occupation"', add
label define ph00a_occ2_lbl 98 `"Unknown"', add
label define ph00a_occ2_lbl 99 `"NIU (not in universe)"', add
label values ph00a_occ2 ph00a_occ2_lbl

label define ph00a_occ_lbl 011 `"Officers"'
label define ph00a_occ_lbl 012 `"Enlisted personnel"', add
label define ph00a_occ_lbl 111 `"Government administrators (including career executive service off.)"', add
label define ph00a_occ_lbl 112 `"Legislative officials"', add
label define ph00a_occ_lbl 113 `"Traditional chiefs and heads of villages"', add
label define ph00a_occ_lbl 114 `"Senior officials of special-interest organization"', add
label define ph00a_occ_lbl 121 `"Directors and chief executives of corporations"', add
label define ph00a_occ_lbl 122 `"Production and operations managers"', add
label define ph00a_occ_lbl 123 `"Specialized managers"', add
label define ph00a_occ_lbl 131 `"General managers/managing-proprietors"', add
label define ph00a_occ_lbl 141 `"School supervisors and principals"', add
label define ph00a_occ_lbl 142 `"Transport and communications service supervisors"', add
label define ph00a_occ_lbl 143 `"Production supervisors and general foremen"', add
label define ph00a_occ_lbl 144 `"Sales supervisors in wholesale and retail trade"', add
label define ph00a_occ_lbl 149 `"Other supervisors not elsewhere classified"', add
label define ph00a_occ_lbl 211 `"Physicists, chemists and related professionals"', add
label define ph00a_occ_lbl 212 `"Mathematicians, statisticians and related professionals"', add
label define ph00a_occ_lbl 213 `"Computer professionals"', add
label define ph00a_occ_lbl 214 `"Architects and related professionals"', add
label define ph00a_occ_lbl 215 `"Engineers and related professionals"', add
label define ph00a_occ_lbl 221 `"Life science professionals"', add
label define ph00a_occ_lbl 222 `"Health professionals (except nursing)"', add
label define ph00a_occ_lbl 223 `"Nursing and midwifery professionals"', add
label define ph00a_occ_lbl 231 `"College, university and higher education teaching professionals"', add
label define ph00a_occ_lbl 232 `"Technical, vocational and related instructors"', add
label define ph00a_occ_lbl 233 `"Secondary education teaching professionals"', add
label define ph00a_occ_lbl 234 `"Elementary education teaching professionals"', add
label define ph00a_occ_lbl 235 `"Special education teaching professionals"', add
label define ph00a_occ_lbl 239 `"Teaching professionals not elsewhere classified"', add
label define ph00a_occ_lbl 241 `"Business professionals"', add
label define ph00a_occ_lbl 242 `"Legal professionals"', add
label define ph00a_occ_lbl 243 `"Librarians, archivists and curators"', add
label define ph00a_occ_lbl 244 `"Social and related science professionals"', add
label define ph00a_occ_lbl 245 `"Writers and creative or performing artists"', add
label define ph00a_occ_lbl 246 `"Religious Professionals"', add
label define ph00a_occ_lbl 311 `"Physical science and engineering technicians"', add
label define ph00a_occ_lbl 312 `"Computer assistants and computer equipment controllers"', add
label define ph00a_occ_lbl 313 `"Optical and electronic equipment controllers"', add
label define ph00a_occ_lbl 314 `"Ship and aircraft controllers and technicians"', add
label define ph00a_occ_lbl 315 `"Building, safety, health and quality inspectors"', add
label define ph00a_occ_lbl 321 `"Life science technicians and related associated professionals"', add
label define ph00a_occ_lbl 322 `"Health associate professionals (except nursing)"', add
label define ph00a_occ_lbl 323 `"Nursing and midwifery associate professionals"', add
label define ph00a_occ_lbl 324 `"Traditional medicine practitioners"', add
label define ph00a_occ_lbl 330 `"Teaching associate professionals"', add
label define ph00a_occ_lbl 341 `"Finance and sales associate professionals"', add
label define ph00a_occ_lbl 342 `"Business services agents and trade brokers"', add
label define ph00a_occ_lbl 343 `"Administrative associate professionals"', add
label define ph00a_occ_lbl 344 `"Customs, taxation, licensing, welfare and related professionals"', add
label define ph00a_occ_lbl 345 `"Police inspectors and detectives"', add
label define ph00a_occ_lbl 346 `"Social work associate professionals"', add
label define ph00a_occ_lbl 347 `"Artistic, entertainment and sports associate professionals"', add
label define ph00a_occ_lbl 348 `"Religious associate professionals"', add
label define ph00a_occ_lbl 411 `"Secretaries and keyboard-operating clerks"', add
label define ph00a_occ_lbl 412 `"Numerical clerks"', add
label define ph00a_occ_lbl 413 `"Material recording and transport clerks"', add
label define ph00a_occ_lbl 414 `"Library, mail and related clerks"', add
label define ph00a_occ_lbl 419 `"Other Office Clerks"', add
label define ph00a_occ_lbl 421 `"Cashiers, tellers and related clerks"', add
label define ph00a_occ_lbl 422 `"Client information clerks"', add
label define ph00a_occ_lbl 511 `"Travel attendants and related workers"', add
label define ph00a_occ_lbl 512 `"Housekeeping and restaurant services workers"', add
label define ph00a_occ_lbl 513 `"Personal care and related workers"', add
label define ph00a_occ_lbl 514 `"Astrologers, fortune-tellers and related worker"', add
label define ph00a_occ_lbl 515 `"Other personal services workers"', add
label define ph00a_occ_lbl 516 `"Protective services workers"', add
label define ph00a_occ_lbl 521 `"Fashion and other models"', add
label define ph00a_occ_lbl 522 `"Shop salespersons and demonstrators"', add
label define ph00a_occ_lbl 523 `"Stall and market salespersons"', add
label define ph00a_occ_lbl 611 `"Field crop farmers"', add
label define ph00a_occ_lbl 612 `"Orchard farmers"', add
label define ph00a_occ_lbl 613 `"Ornamental and other plant growers"', add
label define ph00a_occ_lbl 621 `"Livestock and dairy farmers"', add
label define ph00a_occ_lbl 622 `"Poultry farmers"', add
label define ph00a_occ_lbl 629 `"Other animal raisers"', add
label define ph00a_occ_lbl 631 `"Forest tree planters"', add
label define ph00a_occ_lbl 632 `"Concessionaires and loggers"', add
label define ph00a_occ_lbl 633 `"Charcoal makers and related workers"', add
label define ph00a_occ_lbl 634 `"Minor forest products gatherers"', add
label define ph00a_occ_lbl 641 `"Aqua-farm cultivators"', add
label define ph00a_occ_lbl 642 `"Inland and coastal waters fishermen"', add
label define ph00a_occ_lbl 643 `"Deep-sea fishermen"', add
label define ph00a_occ_lbl 649 `"Fishermen not elsewhere classified"', add
label define ph00a_occ_lbl 651 `"Hunters and trappers"', add
label define ph00a_occ_lbl 659 `"Hunters and trappers not elsewhere classified"', add
label define ph00a_occ_lbl 711 `"Miners, shotfirers, stone cutters and carvers"', add
label define ph00a_occ_lbl 712 `"Building frame construction and related trades"', add
label define ph00a_occ_lbl 713 `"Building construction finishers and related trades workers"', add
label define ph00a_occ_lbl 714 `"Painters and related trades workers"', add
label define ph00a_occ_lbl 721 `"Metal molders, welders,  and sheet-metal workers"', add
label define ph00a_occ_lbl 722 `"Blacksmiths, tool-makers and related trades workers"', add
label define ph00a_occ_lbl 723 `"Machinery mechanics, fitters and related trades workers"', add
label define ph00a_occ_lbl 724 `"Electricians, electrical and electronic equipment workers"', add
label define ph00a_occ_lbl 731 `"Precision workers in metal and related material"', add
label define ph00a_occ_lbl 732 `"Potters, glass-makers and related trades workers"', add
label define ph00a_occ_lbl 733 `"Handicraft workers in wood, textile, leather and related material"', add
label define ph00a_occ_lbl 734 `"Printing, binding and related trades workers"', add
label define ph00a_occ_lbl 741 `"Food processing and related trades workers"', add
label define ph00a_occ_lbl 742 `"Wood treaters, cabinet-makers and related trades workers"', add
label define ph00a_occ_lbl 743 `"Textile, garment and related trades workers"', add
label define ph00a_occ_lbl 744 `"Leather and shoemaking trades workers"', add
label define ph00a_occ_lbl 811 `"Mining-and mineral-processing plant operators"', add
label define ph00a_occ_lbl 812 `"Metal processing plant operators"', add
label define ph00a_occ_lbl 813 `"Glass, ceramics and related plant operators"', add
label define ph00a_occ_lbl 814 `"Wood-processing and papermaking plant operators"', add
label define ph00a_occ_lbl 815 `"Chemical-processing plant operators"', add
label define ph00a_occ_lbl 816 `"Power-production and related plant operators"', add
label define ph00a_occ_lbl 817 `"Automated assembly-line and industrial robot operators"', add
label define ph00a_occ_lbl 821 `"Metal and mineral products machine operators"', add
label define ph00a_occ_lbl 822 `"Chemical products machine operators"', add
label define ph00a_occ_lbl 823 `"Rubber and plastic products machine operators"', add
label define ph00a_occ_lbl 824 `"Wood products machine operators"', add
label define ph00a_occ_lbl 825 `"Textile and leather products machine operators"', add
label define ph00a_occ_lbl 826 `"Food and related products machine operators"', add
label define ph00a_occ_lbl 827 `"Assemblers"', add
label define ph00a_occ_lbl 829 `"Other machine operators and assemblers"', add
label define ph00a_occ_lbl 831 `"Locomotive-engine drivers and related workers"', add
label define ph00a_occ_lbl 832 `"Motor vehicle drivers"', add
label define ph00a_occ_lbl 833 `"Agricultural and other mobile-plant operators"', add
label define ph00a_occ_lbl 834 `"Ship's deck crews and related workers"', add
label define ph00a_occ_lbl 911 `"Market stall vendors, street vendors and related workers"', add
label define ph00a_occ_lbl 912 `"Shoe cleaning and other street services elementary workers"', add
label define ph00a_occ_lbl 913 `"Domestic helpers and cleaners and related workers"', add
label define ph00a_occ_lbl 914 `"Building caretakers, window and related cleaners"', add
label define ph00a_occ_lbl 915 `"Messengers, porters, doorkeepers and related workers"', add
label define ph00a_occ_lbl 916 `"Garbage collectors and related laborers"', add
label define ph00a_occ_lbl 921 `"Agricultural, forestry and fishery laborers"', add
label define ph00a_occ_lbl 931 `"Mining and construction laborers"', add
label define ph00a_occ_lbl 932 `"Manufacturing laborers"', add
label define ph00a_occ_lbl 933 `"Transport laborers and freight handlers"', add
label define ph00a_occ_lbl 950 `"New workers seeking employment"', add
label define ph00a_occ_lbl 951 `"Experienced workers seeking reemployment"', add
label define ph00a_occ_lbl 952 `"Workers reporting occupations unidentifiable"', add
label define ph00a_occ_lbl 953 `"Workers not reporting any occupation"', add
label define ph00a_occ_lbl 970 `"No occupation"', add
label define ph00a_occ_lbl 998 `"Unknown"', add
label define ph00a_occ_lbl 999 `"NIU (not in universe)"', add
label values ph00a_occ ph00a_occ_lbl

label define ph00a_ind_lbl 00 `"NIU (not in universe)"'
label define ph00a_ind_lbl 01 `"Growing of crops"', add
label define ph00a_ind_lbl 02 `"Farming of animals"', add
label define ph00a_ind_lbl 03 `"Agricultural and animal husbandry service activities, except veterinary activities"', add
label define ph00a_ind_lbl 04 `"Hunting, trapping and game propagation including related service activities"', add
label define ph00a_ind_lbl 05 `"Forestry, logging and related service activities"', add
label define ph00a_ind_lbl 06 `"Fishing: fishing"', add
label define ph00a_ind_lbl 10 `"Metallic ore mining"', add
label define ph00a_ind_lbl 11 `"Non-metallic mining and quarrying"', add
label define ph00a_ind_lbl 15 `"Food products and beverages"', add
label define ph00a_ind_lbl 16 `"Tobacco products"', add
label define ph00a_ind_lbl 17 `"Textiles"', add
label define ph00a_ind_lbl 18 `"Wearing apparel"', add
label define ph00a_ind_lbl 19 `"Tanning and dressing of leather, manufacture of luggage and handbags and footwear"', add
label define ph00a_ind_lbl 20 `"Wood, wood products and cork, except furniture"', add
label define ph00a_ind_lbl 21 `"Paper and paper products"', add
label define ph00a_ind_lbl 22 `"Publishing, printing and reproduction of recorded media"', add
label define ph00a_ind_lbl 23 `"Coke, refined petroleum and other fuel products"', add
label define ph00a_ind_lbl 24 `"Chemicals and chemical products"', add
label define ph00a_ind_lbl 25 `"Rubber and plastic products"', add
label define ph00a_ind_lbl 26 `"Other  non-metallic mineral products"', add
label define ph00a_ind_lbl 27 `"Basic metal"', add
label define ph00a_ind_lbl 28 `"Fabricated metal products, except machinery and equipment"', add
label define ph00a_ind_lbl 29 `"Machinery equipment, n.e.c."', add
label define ph00a_ind_lbl 30 `"Office, accounting and computing machinery"', add
label define ph00a_ind_lbl 31 `"Electrical machinery and apparatus n.e.c."', add
label define ph00a_ind_lbl 32 `"Radio, television and communication equipment and apparatus"', add
label define ph00a_ind_lbl 33 `"Medical, precision and optical instruments, watches and clocks"', add
label define ph00a_ind_lbl 34 `"Motor vehicles, trailers and semi-trailers"', add
label define ph00a_ind_lbl 35 `"Other transport equipment"', add
label define ph00a_ind_lbl 36 `"Repair of furniture"', add
label define ph00a_ind_lbl 37 `"Recycling"', add
label define ph00a_ind_lbl 39 `"Manufacturing n.e.c."', add
label define ph00a_ind_lbl 40 `"Electricity and gas"', add
label define ph00a_ind_lbl 41 `"Collection, purification and distribution of water"', add
label define ph00a_ind_lbl 45 `"Construction"', add
label define ph00a_ind_lbl 50 `"Sale, maintenance and repair of motor vehicles, retail sale of automotive fuel"', add
label define ph00a_ind_lbl 51 `"Wholesale trade and commission trade, except motor vehicles"', add
label define ph00a_ind_lbl 52 `"Retail trade, except motor vehicles, repair of personal and household goods"', add
label define ph00a_ind_lbl 55 `"Hotels and restaurants"', add
label define ph00a_ind_lbl 60 `"Land transport"', add
label define ph00a_ind_lbl 61 `"Water transport"', add
label define ph00a_ind_lbl 62 `"Air transport"', add
label define ph00a_ind_lbl 63 `"Supporting and auxiliary transport activities"', add
label define ph00a_ind_lbl 64 `"Postal and telecommunications services"', add
label define ph00a_ind_lbl 65 `"Banking institutions"', add
label define ph00a_ind_lbl 66 `"Non-bank financial intermediation"', add
label define ph00a_ind_lbl 67 `"Insurance and pension funding, except compulsory social security"', add
label define ph00a_ind_lbl 68 `"Activities auxiliary to financial intermediation"', add
label define ph00a_ind_lbl 70 `"Real estate activities"', add
label define ph00a_ind_lbl 71 `"Renting of machinery and equipment without operator"', add
label define ph00a_ind_lbl 72 `"Computer and related activities"', add
label define ph00a_ind_lbl 73 `"Research and development"', add
label define ph00a_ind_lbl 74 `"Miscellaneous business activities"', add
label define ph00a_ind_lbl 75 `"Public administration and defense"', add
label define ph00a_ind_lbl 80 `"Public education services"', add
label define ph00a_ind_lbl 81 `"Private education services"', add
label define ph00a_ind_lbl 85 `"Health and social work"', add
label define ph00a_ind_lbl 90 `"Sewage and refuse disposal, sanitation and similar activities"', add
label define ph00a_ind_lbl 91 `"Activities of membership organizations n.e.c."', add
label define ph00a_ind_lbl 92 `"Recreational, cultural and sporting activities"', add
label define ph00a_ind_lbl 93 `"Other service activities"', add
label define ph00a_ind_lbl 95 `"Private households with employed persons"', add
label define ph00a_ind_lbl 98 `"Extra-territorial organizations and bodies"', add
label define ph00a_ind_lbl 99 `"Not stated"', add
label values ph00a_ind ph00a_ind_lbl

label define ph00a_classwk_lbl 1 `"Worked for private household (domestic services)"'
label define ph00a_classwk_lbl 2 `"Worked for private business/enterprise/farm"', add
label define ph00a_classwk_lbl 3 `"Worked for government/government corporation"', add
label define ph00a_classwk_lbl 4 `"Self-employed without any paid workers"', add
label define ph00a_classwk_lbl 5 `"Employer in own farm or business"', add
label define ph00a_classwk_lbl 6 `"Worked with pay in own-family operated farm/business"', add
label define ph00a_classwk_lbl 7 `"Worked without pay in own-family operated farm/business"', add
label define ph00a_classwk_lbl 8 `"Unknown"', add
label define ph00a_classwk_lbl 9 `"NIU (not in universe)"', add
label values ph00a_classwk ph00a_classwk_lbl

label define ph00a_wtper_lbl 01 `"1"'
label define ph00a_wtper_lbl 02 `"2"', add
label define ph00a_wtper_lbl 03 `"3"', add
label define ph00a_wtper_lbl 04 `"4"', add
label define ph00a_wtper_lbl 05 `"5"', add
label define ph00a_wtper_lbl 06 `"6"', add
label define ph00a_wtper_lbl 07 `"7"', add
label define ph00a_wtper_lbl 08 `"8"', add
label define ph00a_wtper_lbl 09 `"9"', add
label define ph00a_wtper_lbl 10 `"10"', add
label define ph00a_wtper_lbl 11 `"11"', add
label define ph00a_wtper_lbl 12 `"12"', add
label define ph00a_wtper_lbl 13 `"13"', add
label define ph00a_wtper_lbl 14 `"14"', add
label define ph00a_wtper_lbl 15 `"15"', add
label define ph00a_wtper_lbl 16 `"16"', add
label define ph00a_wtper_lbl 17 `"17"', add
label define ph00a_wtper_lbl 18 `"18"', add
label define ph00a_wtper_lbl 19 `"19"', add
label define ph00a_wtper_lbl 20 `"20"', add
label define ph00a_wtper_lbl 21 `"21"', add
label define ph00a_wtper_lbl 22 `"22"', add
label define ph00a_wtper_lbl 23 `"23"', add
label define ph00a_wtper_lbl 24 `"24"', add
label define ph00a_wtper_lbl 25 `"25"', add
label define ph00a_wtper_lbl 26 `"26"', add
label define ph00a_wtper_lbl 27 `"27"', add
label define ph00a_wtper_lbl 28 `"28"', add
label define ph00a_wtper_lbl 29 `"29"', add
label define ph00a_wtper_lbl 30 `"30"', add
label define ph00a_wtper_lbl 31 `"31"', add
label define ph00a_wtper_lbl 32 `"32"', add
label define ph00a_wtper_lbl 33 `"33"', add
label define ph00a_wtper_lbl 34 `"34"', add
label define ph00a_wtper_lbl 35 `"35"', add
label define ph00a_wtper_lbl 36 `"36"', add
label define ph00a_wtper_lbl 37 `"37"', add
label define ph00a_wtper_lbl 38 `"38"', add
label define ph00a_wtper_lbl 39 `"39"', add
label define ph00a_wtper_lbl 40 `"40"', add
label define ph00a_wtper_lbl 41 `"41"', add
label define ph00a_wtper_lbl 42 `"42"', add
label define ph00a_wtper_lbl 43 `"43"', add
label define ph00a_wtper_lbl 44 `"44"', add
label define ph00a_wtper_lbl 45 `"45"', add
label define ph00a_wtper_lbl 46 `"46"', add
label define ph00a_wtper_lbl 47 `"47"', add
label define ph00a_wtper_lbl 48 `"48"', add
label define ph00a_wtper_lbl 49 `"49"', add
label define ph00a_wtper_lbl 51 `"51"', add
label define ph00a_wtper_lbl 52 `"52"', add
label define ph00a_wtper_lbl 53 `"53"', add
label define ph00a_wtper_lbl 54 `"54"', add
label define ph00a_wtper_lbl 55 `"55"', add
label define ph00a_wtper_lbl 56 `"56"', add
label define ph00a_wtper_lbl 57 `"57"', add
label define ph00a_wtper_lbl 58 `"58"', add
label define ph00a_wtper_lbl 60 `"60"', add
label define ph00a_wtper_lbl 61 `"61"', add
label define ph00a_wtper_lbl 62 `"62"', add
label define ph00a_wtper_lbl 63 `"63"', add
label define ph00a_wtper_lbl 64 `"64"', add
label define ph00a_wtper_lbl 65 `"65"', add
label define ph00a_wtper_lbl 67 `"67"', add
label define ph00a_wtper_lbl 83 `"83"', add
label define ph00a_wtper_lbl 84 `"84"', add
label define ph00a_wtper_lbl 88 `"88"', add
label define ph00a_wtper_lbl 89 `"89"', add
label define ph00a_wtper_lbl 94 `"94"', add
label define ph00a_wtper_lbl 96 `"96"', add
label values ph00a_wtper ph00a_wtper_lbl


