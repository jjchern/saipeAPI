
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Travis-CI Build
Status](https://travis-ci.org/jjchern/saipeAPI.svg?branch=master)](https://travis-ci.org/jjchern/saipeAPI)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/jjchern/saipeAPI?branch=master&svg=true)](https://ci.appveyor.com/project/jjchern/saipeAPI)

# About

The package `saipeAPI` provides an R client for Census Bureau’s API for
**S**mall **A**rea **I**ncome and **P**overty **E**stimates (SAIPE).
Here is a short introduction for the SAIPE program from
[Census](http://www.census.gov/data/developers/data-sets/Poverty-Statistics.html):

> The Small Area Income and Poverty Estimates (SAIPE) program produces
> single-year estimates of median household income and poverty for
> states and all counties, as well as population and poverty estimates
> for school districts. Since SAIPE estimates combine ACS data with
> administrative and other data, SAIPE estimates generally have lower
> variance than ACS estimates but are released later because they
> incorporate ACS data in the models. For counties and school districts,
> particularly those with populations below 65,000, the SAIPE program
> provides the most accurate subnational estimates of poverty. For
> counties, SAIPE generally provides the best single-year estimates of
> median household income.

## Features

`saipeAPI` have three functions that return SAIPE data at different
geographic level:

``` r
saipeAPI::saipe_us()
saipeAPI::saipe_state()
saipeAPI::saipe_county()
```

## Available Geographies

Census’s SAIPE has four levels of income and poverty estimates: us,
state, county, and school
district.

## Available Years ([Source](http://www.census.gov/data/developers/data-sets/Poverty-Statistics.html))

  - State and County: 1989, 1993, 1995–2017
  - School Districts: 1995, 1997,
1999–2017

## Available Variables ([Source](http://api.census.gov/data/timeseries/poverty/saipe/variables.html))

    #> Warning: package 'dplyr' was built under R version 3.4.4

| Name                 | Label                                                                           |
| :------------------- | :------------------------------------------------------------------------------ |
| COUNTY               | County FIPS Code                                                                |
| GEOID                | State+County FIPS Code                                                          |
| NAME                 | State or County Name                                                            |
| SAEMHI\_LB90         | Median Household Income Lower Bound for 90% Confidence Interval                 |
| SAEMHI\_MOE          | Median Household Income Margin of Error                                         |
| SAEMHI\_PT           | Median Household Income Estimate                                                |
| SAEMHI\_UB90         | Median Household Income Upper Bound for 90% Confidence Interval                 |
| SAEPOV0\_17\_LB90    | Ages 0-17 in Poverty, Count Lower Bound 90% Confidence Interval                 |
| SAEPOV0\_17\_MOE     | Ages 0-17 in Poverty, Count Margin of Error                                     |
| SAEPOV0\_17\_PT      | Ages 0-17 in Poverty, Count Estimate                                            |
| SAEPOV0\_17\_UB90    | Ages 0-17 in Poverty, Count Upper Bound for 90% Confidence Interval             |
| SAEPOV0\_4\_LB90     | Ages 0-4 in Poverty, Count Lower Bound for 90% Confidence Interval              |
| SAEPOV0\_4\_MOE      | Ages 0-4 in Poverty, Count Margin of Error                                      |
| SAEPOV0\_4\_PT       | Ages 0-4 in Poverty, Count Estimate                                             |
| SAEPOV0\_4\_UB90     | Ages 0-4 in Poverty, Count Upper Bound for 90% Confidence Interval              |
| SAEPOV5\_17R\_LB90   | Ages 5-17 in Families in Poverty, Count Lower Bound for 90% Confidence Interval |
| SAEPOV5\_17R\_MOE    | Ages 5-17 in Families in Poverty, Count Margin of Error                         |
| SAEPOV5\_17R\_PT     | Ages 5-17 in Families in Poverty, Count Estimate                                |
| SAEPOV5\_17R\_UB90   | Ages 5-17 in Families in Poverty, Count Upper Bound for 90% Confidence Interval |
| SAEPOVALL\_LB90      | All ages in Poverty, Count Lower Bound for 90% Confidence Interval              |
| SAEPOVALL\_MOE       | All ages in Poverty, Count Margin of Error                                      |
| SAEPOVALL\_PT        | All ages in Poverty, Count Estimate                                             |
| SAEPOVALL\_UB90      | All ages in Poverty, Count Upper Bound for 90% Confidence Interval              |
| SAEPOVRT0\_17\_LB90  | Ages 0-17 in Poverty, Rate Lower Bound for 90% Confidence Interval              |
| SAEPOVRT0\_17\_MOE   | Ages 0-17 in Poverty, Rate Margin of Error                                      |
| SAEPOVRT0\_17\_PT    | Ages 0-17 in Poverty, Rate Estimate                                             |
| SAEPOVRT0\_17\_UB90  | Ages 0-17 in Poverty, Rate Upper Bound for 90% Confidence Interval              |
| SAEPOVRT0\_4\_LB90   | Ages 0-4 in Poverty, Rate Lower Bound for 90% Confidence Interval               |
| SAEPOVRT0\_4\_MOE    | Ages 0-4 in Poverty, Rate Margin of Error                                       |
| SAEPOVRT0\_4\_PT     | Ages 0-4 in Poverty, Rate Estimate                                              |
| SAEPOVRT0\_4\_UB90   | Ages 0-4 in Poverty, Rate Upper Bound for 90% Confidence Interval               |
| SAEPOVRT5\_17R\_LB90 | Ages 5-17 in Families in Poverty, Rate Lower Bound for 90% Confidence Interval  |
| SAEPOVRT5\_17R\_MOE  | Ages 5-17 in Families in Poverty, Rate Margin of Error                          |
| SAEPOVRT5\_17R\_PT   | Ages 5-17 in Families in Poverty, Rate Estimate                                 |
| SAEPOVRT5\_17R\_UB90 | Ages 5-17 in Families in Poverty, Rate Upper Bound for 90% Confidence Interval  |
| SAEPOVRTALL\_LB90    | All ages in Poverty, Rate Lower Bound for 90% Confidence Interval               |
| SAEPOVRTALL\_MOE     | All ages in Poverty, Rate Margin of Error                                       |
| SAEPOVRTALL\_PT      | All ages in Poverty, Rate Estimate                                              |
| SAEPOVRTALL\_UB90    | All ages in Poverty, Rate Upper Bound for 90% Confidence Interval               |
| SAEPOVU\_0\_17       | Ages 0-17 in Poverty Universe                                                   |
| SAEPOVU\_0\_4        | Ages 0-4 in Poverty Universe                                                    |
| SAEPOVU\_5\_17R      | Ages 5-17r in Poverty Universe                                                  |
| SAEPOVU\_ALL         | All Ages in Poverty Universe                                                    |
| STABREV              | Two-letter State Postal abbreviation                                            |
| STATE                | FIPS State Code                                                                 |
| SUMLEV               | Summary Level                                                                   |
| YEAR                 | Estimate Year                                                                   |

# Installation

``` r
# install.packages("remotes")
remotes::install_github("jjchern/saipeAPI@v0.0.3")
```

# Usage

Obtain an API key from the U.S. Census Bureau at
<http://api.census.gov/data/key_signup.html>. After that, set your API
key with the function `saipeAPI::set_api_key()`, and then start calling
the data retrieval functions.

You can also save your API key in the `.Renviron` file for future usage.
First, open the `.Renviron` file by

``` r
# install.packages("usethis")
usethis::edit_r_environ()
```

Save your key in the file in the format of

``` r
saipe_key='<Your API Key Here>'
```

Reload the `.Renviron` file and check if the key can be assessed:

``` r
readRenviron("~/.Renviron")
Sys.getenv("saipe_key")
```

## National level estimates of median household income and poverty rate in 2010–2017

``` r
# saipe::set_api_key("<Your API Key Here>")
saipeAPI::saipe_us(year = 2010:2017, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#> # A tibble: 8 x 5
#>   NAME          SAEMHI_PT SAEPOVRTALL_PT  time us   
#>   <chr>             <dbl>          <dbl> <dbl> <chr>
#> 1 United States     50046           15.3  2010 00   
#> 2 United States     50502           15.9  2011 00   
#> 3 United States     51371           15.9  2012 00   
#> 4 United States     52250           15.8  2013 00   
#> 5 United States     53657           15.5  2014 00   
#> 6 United States     55775           14.7  2015 00   
#> 7 United States     57617           14    2016 00   
#> 8 United States     60336           13.4  2017 00
```

## State-level estimates of median household income and poverty rate in 2010–2017

``` r
# saipe::set_api_key("<Your API Key Here>")
saipeAPI::saipe_state(year = 2010:2017, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#> # A tibble: 408 x 5
#>    NAME                 SAEMHI_PT SAEPOVRTALL_PT  time state
#>    <chr>                    <dbl>          <dbl> <dbl> <chr>
#>  1 Georgia                  46252           18    2010 13   
#>  2 Alabama                  40538           18.9  2010 01   
#>  3 Alaska                   63456           11    2010 02   
#>  4 Arizona                  46787           17.6  2010 04   
#>  5 Arkansas                 38413           18.7  2010 05   
#>  6 California               57664           15.8  2010 06   
#>  7 Colorado                 54411           13.2  2010 08   
#>  8 Connecticut              64321           10.1  2010 09   
#>  9 Delaware                 56172           11.9  2010 10   
#> 10 District of Columbia     60729           18.8  2010 11   
#> # … with 398 more rows
```

## County-level data estimates of median household income and poverty rate in 2017

``` r
# saipe::set_api_key("<Your API Key Here>")
saipeAPI::saipe_county(year = 2017, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#> # A tibble: 3,142 x 6
#>    NAME                      SAEMHI_PT SAEPOVRTALL_PT  time state county
#>    <chr>                         <dbl>          <dbl> <dbl> <chr> <chr> 
#>  1 Yukon-Koyukuk Census Area     37907           23.2  2017 02    290   
#>  2 Apache County                 33053           33.1  2017 04    001   
#>  3 Cochise County                48966           16.1  2017 04    003   
#>  4 Coconino County               54399           18.4  2017 04    005   
#>  5 Gila County                   38897           24.1  2017 04    007   
#>  6 Graham County                 46378           20.9  2017 04    009   
#>  7 Greenlee County               63557           10.1  2017 04    011   
#>  8 La Paz County                 36389           20.9  2017 04    012   
#>  9 Maricopa County               62221           13.5  2017 04    013   
#> 10 Mohave County                 42210           17.3  2017 04    015   
#> # … with 3,132 more rows
```

## Possible Variables and Years

``` r
# The pacakge contains a data frame that shows possible variables and variable labels
saipeAPI::saipe_vars
#> # A tibble: 47 x 5
#>    Name      Label                   Concept       Required  Predicate.Type
#>    <chr>     <chr>                   <chr>         <chr>     <chr>         
#>  1 COUNTY    County FIPS Code        Selectable G… not requ… (not a predic…
#>  2 GEOID     State+County FIPS Code  Geographic C… not requ… (not a predic…
#>  3 NAME      State or County Name    Geographic C… not requ… (not a predic…
#>  4 SAEMHI_L… Median Household Incom… Uncertainty … not requ… int           
#>  5 SAEMHI_M… Median Household Incom… Uncertainty … not requ… int           
#>  6 SAEMHI_PT Median Household Incom… Estimate      not requ… int           
#>  7 SAEMHI_U… Median Household Incom… Uncertainty … not requ… int           
#>  8 SAEPOV0_… Ages 0-17 in Poverty, … Uncertainty … not requ… int           
#>  9 SAEPOV0_… Ages 0-17 in Poverty, … Uncertainty … not requ… int           
#> 10 SAEPOV0_… Ages 0-17 in Poverty, … Estimate      not requ… int           
#> # … with 37 more rows

# To get a vector of all possible variables
saipeAPI::saipe_vars$Name
#>  [1] "COUNTY"             "GEOID"              "NAME"              
#>  [4] "SAEMHI_LB90"        "SAEMHI_MOE"         "SAEMHI_PT"         
#>  [7] "SAEMHI_UB90"        "SAEPOV0_17_LB90"    "SAEPOV0_17_MOE"    
#> [10] "SAEPOV0_17_PT"      "SAEPOV0_17_UB90"    "SAEPOV0_4_LB90"    
#> [13] "SAEPOV0_4_MOE"      "SAEPOV0_4_PT"       "SAEPOV0_4_UB90"    
#> [16] "SAEPOV5_17R_LB90"   "SAEPOV5_17R_MOE"    "SAEPOV5_17R_PT"    
#> [19] "SAEPOV5_17R_UB90"   "SAEPOVALL_LB90"     "SAEPOVALL_MOE"     
#> [22] "SAEPOVALL_PT"       "SAEPOVALL_UB90"     "SAEPOVRT0_17_LB90" 
#> [25] "SAEPOVRT0_17_MOE"   "SAEPOVRT0_17_PT"    "SAEPOVRT0_17_UB90" 
#> [28] "SAEPOVRT0_4_LB90"   "SAEPOVRT0_4_MOE"    "SAEPOVRT0_4_PT"    
#> [31] "SAEPOVRT0_4_UB90"   "SAEPOVRT5_17R_LB90" "SAEPOVRT5_17R_MOE" 
#> [34] "SAEPOVRT5_17R_PT"   "SAEPOVRT5_17R_UB90" "SAEPOVRTALL_LB90"  
#> [37] "SAEPOVRTALL_MOE"    "SAEPOVRTALL_PT"     "SAEPOVRTALL_UB90"  
#> [40] "SAEPOVU_0_17"       "SAEPOVU_0_4"        "SAEPOVU_5_17R"     
#> [43] "SAEPOVU_ALL"        "STABREV"            "STATE"             
#> [46] "SUMLEV"             "YEAR"

# To get a vector of all possible years
saipeAPI::saipe_years
#>  [1] 1989 1993 1995 1996 1997 1998 1999 2000 2001 2002 2003 2004 2005 2006
#> [15] 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016

# Use the above two vectors to download all the US-level data
saipeAPI::saipe_us(year = saipeAPI::saipe_years, var = saipeAPI::saipe_vars$Name)
#> # A tibble: 24 x 49
#>    COUNTY GEOID NAME  SAEMHI_LB90 SAEMHI_MOE SAEMHI_PT SAEMHI_UB90
#>    <chr>  <chr> <chr>       <dbl>      <dbl>     <dbl>       <dbl>
#>  1 000    00000 Unit…       28644        262     28906       29168
#>  2 000    00000 Unit…       31001        240     31241       31481
#>  3 000    00000 Unit…       33752        324     34076       34400
#>  4 000    00000 Unit…       35198        294     35492       35786
#>  5 000    00000 Unit…       36724        281     37005       37286
#>  6 000    00000 Unit…       38507        378     38885       39263
#>  7 000    00000 Unit…       40383        313     40696       41009
#>  8 000    00000 Unit…       41773        217     41990       42207
#>  9 000    00000 Unit…       42016        212     42228       42440
#> 10 000    00000 Unit…       42180        229     42409       42638
#> # … with 14 more rows, and 42 more variables: SAEPOV0_17_LB90 <dbl>,
#> #   SAEPOV0_17_MOE <dbl>, SAEPOV0_17_PT <dbl>, SAEPOV0_17_UB90 <dbl>,
#> #   SAEPOV0_4_LB90 <dbl>, SAEPOV0_4_MOE <dbl>, SAEPOV0_4_PT <dbl>,
#> #   SAEPOV0_4_UB90 <dbl>, SAEPOV5_17R_LB90 <dbl>, SAEPOV5_17R_MOE <dbl>,
#> #   SAEPOV5_17R_PT <dbl>, SAEPOV5_17R_UB90 <dbl>, SAEPOVALL_LB90 <dbl>,
#> #   SAEPOVALL_MOE <dbl>, SAEPOVALL_PT <dbl>, SAEPOVALL_UB90 <dbl>,
#> #   SAEPOVRT0_17_LB90 <dbl>, SAEPOVRT0_17_MOE <dbl>,
#> #   SAEPOVRT0_17_PT <dbl>, SAEPOVRT0_17_UB90 <dbl>,
#> #   SAEPOVRT0_4_LB90 <dbl>, SAEPOVRT0_4_MOE <dbl>, SAEPOVRT0_4_PT <dbl>,
#> #   SAEPOVRT0_4_UB90 <dbl>, SAEPOVRT5_17R_LB90 <dbl>,
#> #   SAEPOVRT5_17R_MOE <dbl>, SAEPOVRT5_17R_PT <dbl>,
#> #   SAEPOVRT5_17R_UB90 <dbl>, SAEPOVRTALL_LB90 <dbl>,
#> #   SAEPOVRTALL_MOE <dbl>, SAEPOVRTALL_PT <dbl>, SAEPOVRTALL_UB90 <dbl>,
#> #   SAEPOVU_0_17 <dbl>, SAEPOVU_0_4 <dbl>, SAEPOVU_5_17R <dbl>,
#> #   SAEPOVU_ALL <dbl>, STABREV <chr>, STATE <chr>, SUMLEV <chr>,
#> #   YEAR <dbl>, time <dbl>, us <chr>
```

# Future Work

  - Add school district functions
