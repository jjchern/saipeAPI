
<!-- README.md is generated from README.Rmd. Please edit that file -->
About
=====

The goal of `saipeAPI` is to provide an R client for Census Bureau's API for Small Area Income and Poverty Estimates (SAIPE). Here is a short introduction for the SAIPE program from [Census](http://www.census.gov/data/developers/data-sets/Poverty-Statistics.html):

> The Small Area Income and Poverty Estimates (SAIPE) program produces single-year estimates of median household income and poverty for states and all counties, as well as population and poverty estimates for school districts. Since SAIPE estimates combine ACS data with administrative and other data, SAIPE estimates generally have lower variance than ACS estimates but are released later because they incorporate ACS data in the models. For counties and school districts, particularly those with populations below 65,000, the SAIPE program provides the most accurate subnational estimates of poverty. For counties, SAIPE generally provides the best single-year estimates of median household income.

Available Geographies
---------------------

SAIPE has four levels of income and poverty estimates: us, state, county, and school district.

Available Years
---------------

-   State and County: 1989, 1993, 1995--2014
-   School Districts: 1995, 1997, 1999--2014

Installation
============

``` r
# install.packages("devtools")
devtools::install_github("jjchern/saipeAPI")
```

Usage
=====

Obtain an API key from the U.S. Census Bureau at <http://api.census.gov/data/key_signup.html>. After that, set your API key with the function `saipeAPI::set_api_key()`.

``` r
# saipe::set_api_key("<Your API Key Here>")
# Get state level estimates of median household income and poverty rate in 2014
saipeAPI::saipe_state(year = 2014, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#> 
#> Source: local data frame [51 x 5]
#> 
#>                    NAME SAEMHI_PT SAEPOVRTALL_PT  time state
#>                   (chr)     (int)          (dbl) (int) (chr)
#> 1               Alabama     42917           19.2  2014    01
#> 2                Alaska     70898           11.4  2014    02
#> 3               Arizona     50036           18.2  2014    04
#> 4              Arkansas     41335           18.7  2014    05
#> 5            California     61927           16.4  2014    06
#> 6              Colorado     61324           12.1  2014    08
#> 7           Connecticut     70007           10.8  2014    09
#> 8              Delaware     59853           13.0  2014    10
#> 9  District of Columbia     69992           18.4  2014    11
#> 10              Florida     47439           16.6  2014    12
#> ..                  ...       ...            ...   ...   ...
```

Future Work
===========

-   Add school district functions
-   Provide basic usages of all the functions
