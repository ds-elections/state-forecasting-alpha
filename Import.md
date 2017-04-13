Import
================
EJ Arce
4/2/2017

### Import

``` r
LegResults6814 <- read.dta("032_StateLegForecast_CAcopy/SLERs1967to2015_20160912b_CA.dta")

LegResults16 <- read_excel("032_StateLegForecast_CAcopy/001_CA2016GenOfficecopy.xls")

threeoffices9008 <- read_excel("032_StateLegForecast_CAcopy/aaa_All_States_1968_2010_2013_03_22_CAonly.xlsx")

threeoffices6688 <- read_excel("032_StateLegForecast_CAcopy/033_CA_1966to1988_20160715_FromNicole.xlsx")
```

### Wrangle and Tidy

``` r
# Selecting and renaming variables of interest; Filtering the dataset to only include democratic and republican candidates
LegResults6814 <- LegResults6814 %>%
  select(v05, v07, v09z, v21, v22, v23, v44, v45) %>%
  rename(year = v05,
         chamber = v07,
         District = v09z,
         party = v21,
         incumbency = v22,
         votes = v23,
         cand_last = v44,
         cand_first = v45) %>%
  filter(party == c(100, 200)) %>%
  unite(candidate, cand_first, cand_last, sep = " ")
LegResults6814$chamber <- ifelse(LegResults6814$chamber == 8, "SEN", "HS")
LegResults6814$party <- ifelse(LegResults6814$party == 100, "Dem", "Repub")
LegResults6814 <- aggregate(x = LegResults6814["votes"], by = LegResults6814[c("year", "chamber", "District", "party", "incumbency", "candidate")], sum)

LegResults16 <- LegResults16 %>%
  select(v05, v07, v09, name_original, partyoriginal, v23) %>%
  rename(year = v05,
         chamber = v07,
         District = v09,
         candidate = name_original,
         party = partyoriginal,
         votes = v23) %>%
  filter(party == c("Democratic", "Republican"))
LegResults16$chamber <- ifelse(LegResults16$chamber == 8, "SEN", "HS")
LegResults16$party <- ifelse(LegResults16$party == "Democratic", "Dem", "Repub")
LegResults16 <- aggregate(x = LegResults16["votes"], by = LegResults16[c("year", "chamber", "District", "party","candidate")], sum)

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

### Join

``` r
# Joining threeoffices6688 and threeoffices9008 into threeoffices
threeoffices6608 <- full_join(threeoffices6688, threeoffices9008, key = "year")

# Create threeoffices1016 and recode chamber entries
threeoffices1016 <- read_excel("032_StateLegForecast_CAcopy/California_2010_2016.xlsx")
threeoffices1016$chamber <- ifelse(threeoffices1016$chamber == "S", "SEN", "HS")

# Join threeoffices6608 and threeoffices1016
threeoffices6616 <- full_join(threeoffices6608, threeoffices1016, key = "year")
```

### Viewing Clean Data

``` r
head(threeoffices6616)
```

    ## # A tibble: 6 × 12
    ##    year chamber District Prez_Dem Prez_Repub Gub_Dem Gub_Repub US_Sen_Dem
    ##   <dbl>   <chr>    <dbl>    <dbl>      <dbl>   <dbl>     <dbl>      <dbl>
    ## 1  1966     SEN        1       NA         NA   60438     88902         NA
    ## 2  1966     SEN        2       NA         NA   55047     85659         NA
    ## 3  1966     SEN        3       NA         NA   62458     82931         NA
    ## 4  1966     SEN        4       NA         NA   64516     79947         NA
    ## 5  1966     SEN        5       NA         NA   79428     73945         NA
    ## 6  1966     SEN        6       NA         NA   61714     90503         NA
    ## # ... with 4 more variables: US_Sen_Repub <dbl>, US_Sen2_Dem <dbl>,
    ## #   US_Sen2_Repub <dbl>, Dummy1 <dbl>

``` r
head(LegResults16)
```

    ##   year chamber District party          candidate  votes
    ## 1 2016      HS       40   Dem     Abigail Medina  74589
    ## 2 2016      HS       21   Dem          Adam Gray 134810
    ## 3 2016      HS       63 Repub Adam Joshua Miller  25680
    ## 4 2016      HS       46   Dem     Adrin Nazarian 155174
    ## 5 2016      HS       66   Dem      Al Muratsuchi 105336
    ## 6 2016     SEN        5 Repub     Alan Nakanishi 225317

``` r
head(LegResults6814)
```

    ##   year chamber District party incumbency      candidate  votes
    ## 1 1982      HS       66 Repub          0         MILLER  38741
    ## 2 1982      HS       27 Repub          0       NYEGAARD  26064
    ## 3 1982      HS       22   Dem          0         SUTTON  41587
    ## 4 1992      HS       63   Dem          0     A WESTWOOD  42860
    ## 5 1998      HS       33 Repub          0 ABEL MALDONADO  76596
    ## 6 2000      HS       33 Repub          1 ABEL MALDONADO 101200
