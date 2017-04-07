Import
================
EJ Arce
4/2/2017

### Import

``` r
LegResults <- read.dta("032_StateLegForecast_CAcopy/SLERs1967to2015_20160912b_CA.dta")
threeoffices9008 <- read_excel("032_StateLegForecast_CAcopy/aaa_All_States_1968_2010_2013_03_22_CAonly.xlsx")
threeoffices6688 <- read_excel("032_StateLegForecast_CAcopy/033_CA_1966to1988_20160715_FromNicole.xlsx")
```

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [124, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [125, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [126, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [127, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [128, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [129, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [130, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [131, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [132, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [133, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [134, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [135, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [136, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [137, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [138, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [139, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [140, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [141, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [142, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [143, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [144, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [145, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [146, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [147, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [148, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [149, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [150, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [151, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [152, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [153, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [154, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [155, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [156, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [157, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [158, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [159, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [160, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [161, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [162, 5]: expecting numeric: got '5 6'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [163, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [164, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [165, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [166, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [167, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [168, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [169, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [170, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [171, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [172, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [173, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [174, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [175, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [176, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [177, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [178, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [179, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [180, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [181, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [182, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [183, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [184, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [185, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [186, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [187, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [188, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [189, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [190, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [191, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [192, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [193, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [194, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [195, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [196, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [197, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [198, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [199, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [200, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [201, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [202, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [203, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [204, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [205, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [206, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [207, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [208, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [209, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [210, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [211, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [212, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [213, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [214, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [215, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [216, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [217, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [218, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [219, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [220, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [221, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [222, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [223, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [224, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [225, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [226, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [227, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [228, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [229, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [230, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [231, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [232, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [233, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [234, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [235, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [236, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [237, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [238, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [239, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [240, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [241, 5]: expecting numeric: got '5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [242, 5]: expecting numeric: got ' 5 6 7'

    ## Warning in read_xlsx_(path, sheet, col_names = col_names, col_types =
    ## col_types, : [243, 5]: expecting numeric: got '5 6 7'

### Tidy

``` r
# Selecting variables of interest (only old variables)
LegResults <- LegResults %>%
  select(caseid, v05, v07, v09z, 23:28, 30:33) %>%
  rename(year = v05,
         chamber = v07,
         District = v09z,
         termlength = v15,
         electiontype = v16)

# Selecting variables of interest for the database of results for 3 offices, recoding v07 to return SEN or HS, and renaming v07 as "chamber" for 9008

threeoffices9008$v07 <- ifelse(threeoffices9008$v07 == 8, "SEN", "HS")

threeoffices9008 <- threeoffices9008 %>%
  select(2:4, 6:9, 11, 12, 15, 16) %>%
  rename(year = v05, District = v09, chamber = v07)

threeoffices6688 <- threeoffices6688 %>%
  select(1, 3, 4, (17:25)) %>%
  rename(District = dist) %>%
  filter(Dummy1 == 1)
  
threeoffices6688$chamber <- ifelse(threeoffices6688$chamber == "S", "SEN", "HS")
```

``` r
# Joining threeoffices6688 and threeoffices9008 into threeoffices
threeoffices6608 <- full_join(threeoffices6688, threeoffices9008, key = "year")
```

    ## Joining, by = c("year", "chamber", "District", "Prez_Dem", "Prez_Repub", "Gub_Dem", "Gub_Repub", "US_Sen_Dem", "US_Sen_Repub", "US_Sen2_Dem", "US_Sen2_Repub")

``` r
threeoffices1016 <- read_excel("032_StateLegForecast_CAcopy/California_2010_2016.xlsx")
threeoffices6616 <- full_join(threeoffices6608, threeoffices1016, key = "year")
```

    ## Joining, by = c("year", "chamber", "District", "Prez_Dem", "Prez_Repub", "Gub_Dem", "Gub_Repub", "US_Sen_Dem", "US_Sen_Repub", "US_Sen2_Dem", "US_Sen2_Repub")

### Load the Data for 2016 Results:

``` r
LegResults2016 <- read_excel("032_StateLegForecast_CAcopy/CA2016GenOffice.xls")
```

### Join the Datasets
