
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Travis-CI Build Status](https://travis-ci.org/jjchern/saipeAPI.svg?branch=master)](https://travis-ci.org/jjchern/saipeAPI) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/jjchern/saipeAPI?branch=master&svg=true)](https://ci.appveyor.com/project/jjchern/saipeAPI)

About
=====

The package `saipeAPI` provides an R client for Census Bureau's API for **S**mall **A**rea **I**ncome and **P**overty **E**stimates (SAIPE). Here is a short introduction for the SAIPE program from [Census](http://www.census.gov/data/developers/data-sets/Poverty-Statistics.html):

> The Small Area Income and Poverty Estimates (SAIPE) program produces single-year estimates of median household income and poverty for states and all counties, as well as population and poverty estimates for school districts. Since SAIPE estimates combine ACS data with administrative and other data, SAIPE estimates generally have lower variance than ACS estimates but are released later because they incorporate ACS data in the models. For counties and school districts, particularly those with populations below 65,000, the SAIPE program provides the most accurate subnational estimates of poverty. For counties, SAIPE generally provides the best single-year estimates of median household income.

Feature
-------

`saipeAPI` have three functions that return SAIPE data at different geographic level:

``` r
saipeAPI::saipe_us()
saipeAPI::saipe_state()
saipeAPI::saipe_county()
```

Available Geographies
---------------------

Census's SAIPE has four levels of income and poverty estimates: us, state, county, and school district.

Available Years ([Source](http://www.census.gov/data/developers/data-sets/Poverty-Statistics.html))
---------------------------------------------------------------------------------------------------

-   State and County: 1989, 1993, 1995--2016
-   School Districts: 1995, 1997, 1999--2016

Available Variables ([Source](http://api.census.gov/data/timeseries/poverty/saipe/variables.html))
--------------------------------------------------------------------------------------------------

| Name                 | Label                                                                           |
|:---------------------|:--------------------------------------------------------------------------------|
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

Installation
============

``` r
# install.packages("devtools")
devtools::install_github("jjchern/saipeAPI@v0.0.2")
```

Usage
=====

Obtain an API key from the U.S. Census Bureau at <http://api.census.gov/data/key_signup.html>. After that, set your API key with the function `saipeAPI::set_api_key()`.

National level estimates of median household income and poverty rate in 2010--2016
----------------------------------------------------------------------------------

``` r
# saipe::set_api_key("<Your API Key Here>")
saipeAPI::saipe_us(year = 2010:2016, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#> # A tibble: 7 x 5
#>            NAME SAEMHI_PT SAEPOVRTALL_PT  time    us
#>           <chr>     <dbl>          <dbl> <dbl> <chr>
#> 1 United States     50046           15.3  2010    00
#> 2 United States     50502           15.9  2011    00
#> 3 United States     51371           15.9  2012    00
#> 4 United States     52250           15.8  2013    00
#> 5 United States     53657           15.5  2014    00
#> 6 United States     55775           14.7  2015    00
#> 7 United States     57617           14.0  2016    00
```

State-level estimates of median household income and poverty rate in 2010--2016
-------------------------------------------------------------------------------

``` r
# saipe::set_api_key("<Your API Key Here>")
saipeAPI::saipe_state(year = 2010:2016, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#> # A tibble: 357 x 5
#>                    NAME SAEMHI_PT SAEPOVRTALL_PT  time state
#>                   <chr>     <dbl>          <dbl> <dbl> <chr>
#>  1              Alabama     40538           18.9  2010    01
#>  2               Alaska     63456           11.0  2010    02
#>  3              Arizona     46787           17.6  2010    04
#>  4             Arkansas     38413           18.7  2010    05
#>  5           California     57664           15.8  2010    06
#>  6             Colorado     54411           13.2  2010    08
#>  7          Connecticut     64321           10.1  2010    09
#>  8             Delaware     56172           11.9  2010    10
#>  9 District of Columbia     60729           18.8  2010    11
#> 10              Florida     44390           16.5  2010    12
#> # ... with 347 more rows
```

County-level data estimates of median household income and poverty rate in 2016
-------------------------------------------------------------------------------

``` r
# saipe::set_api_key("<Your API Key Here>")
saipeAPI::saipe_county(year = 2016, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#> # A tibble: 3,142 x 6
#>               NAME SAEMHI_PT SAEPOVRTALL_PT  time state county
#>              <chr>     <dbl>          <dbl> <dbl> <chr>  <chr>
#>  1  Autauga County     54487           13.5  2016    01    001
#>  2  Baldwin County     56460           11.7  2016    01    003
#>  3  Barbour County     32884           29.9  2016    01    005
#>  4     Bibb County     43079           20.1  2016    01    007
#>  5   Blount County     47213           14.1  2016    01    009
#>  6  Bullock County     34278           32.6  2016    01    011
#>  7   Butler County     35409           24.8  2016    01    013
#>  8  Calhoun County     41778           17.1  2016    01    015
#>  9 Chambers County     39530           19.9  2016    01    017
#> 10 Cherokee County     41456           16.8  2016    01    019
#> # ... with 3,132 more rows
```

Possible Variables and Years
----------------------------

``` r
# The pacakge contains a data frame that shows possible variables and variable labels
saipeAPI::saipe_vars
#> # A tibble: 47 x 5
#>               Name
#>              <chr>
#>  1          COUNTY
#>  2           GEOID
#>  3            NAME
#>  4     SAEMHI_LB90
#>  5      SAEMHI_MOE
#>  6       SAEMHI_PT
#>  7     SAEMHI_UB90
#>  8 SAEPOV0_17_LB90
#>  9  SAEPOV0_17_MOE
#> 10   SAEPOV0_17_PT
#> # ... with 37 more rows, and 4 more variables: Label <chr>, Concept <chr>,
#> #   Required <chr>, Predicate.Type <chr>

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
#>    COUNTY GEOID          NAME SAEMHI_LB90 SAEMHI_MOE SAEMHI_PT SAEMHI_UB90
#>     <chr> <chr>         <chr>       <dbl>      <dbl>     <dbl>       <dbl>
#>  1    000 00000 United States       28644        262     28906       29168
#>  2    000 00000 United States       31001        240     31241       31481
#>  3    000 00000 United States       33752        324     34076       34400
#>  4    000 00000 United States       35198        294     35492       35786
#>  5    000 00000 United States       36724        281     37005       37286
#>  6    000 00000 United States       38507        378     38885       39263
#>  7    000 00000 United States       40383        313     40696       41009
#>  8    000 00000 United States       41773        217     41990       42207
#>  9    000 00000 United States       42016        212     42228       42440
#> 10    000 00000 United States       42180        229     42409       42638
#> # ... with 14 more rows, and 42 more variables: SAEPOV0_17_LB90 <dbl>,
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

Future Work
===========

-   Add school district functions
