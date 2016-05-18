
<!-- README.md is generated from README.Rmd. Please edit that file -->
About
=====

The goal of `saipeAPI` is to provide an R client for Census Bureau's API for Small Area Income and Poverty Estimates (SAIPE). Here is a short introduction for the SAIPE program from [Census](http://www.census.gov/data/developers/data-sets/Poverty-Statistics.html):

> The Small Area Income and Poverty Estimates (SAIPE) program produces single-year estimates of median household income and poverty for states and all counties, as well as population and poverty estimates for school districts. Since SAIPE estimates combine ACS data with administrative and other data, SAIPE estimates generally have lower variance than ACS estimates but are released later because they incorporate ACS data in the models. For counties and school districts, particularly those with populations below 65,000, the SAIPE program provides the most accurate subnational estimates of poverty. For counties, SAIPE generally provides the best single-year estimates of median household income.

Feature
-------

So far `saipeAPI` have three functions that return SAIPE data at different geographic level:

``` r
saipeAPI::saipe_us()
saipeAPI::saipe_state()
saipeAPI::saipe_county()
```

Available Geographies
---------------------

Census's SAIPE has four levels of income and poverty estimates: us, state, county, and school district.

Available Years
---------------

-   State and County: 1989, 1993, 1995--2014
-   School Districts: 1995, 1997, 1999--2014

Available Variables ([Source](http://api.census.gov/data/timeseries/poverty/saipe/variables.html))
--------------------------------------------------------------------------------------------------

| Name                 | Label                                                                           |
|:---------------------|:--------------------------------------------------------------------------------|
| COUNTY               | County FIPS Code                                                                |
| for                  | Census API FIPS 'for' clause                                                    |
| GEOID                | State+County FIPS Code                                                          |
| in                   | Census API FIPS 'in' clause                                                     |
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
| time                 | ISO-8601 Date/Time value                                                        |
| YEAR                 | Estimate Year                                                                   |

Installation
============

``` r
# install.packages("devtools")
devtools::install_github("jjchern/saipeAPI")
```

Usage
=====

Obtain an API key from the U.S. Census Bureau at <http://api.census.gov/data/key_signup.html>. After that, set your API key with the function `saipeAPI::set_api_key()`.

National level estimates of median household income and poverty rate in 2010--2014
----------------------------------------------------------------------------------

``` r
# saipe::set_api_key("<Your API Key Here>")
saipeAPI::saipe_us(year = 2010:2014, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#> Source: local data frame [5 x 5]
#> 
#>            NAME SAEMHI_PT SAEPOVRTALL_PT  time    us
#>           (chr)     (int)          (dbl) (int) (chr)
#> 1 United States     50046           15.3  2010    00
#> 2 United States     50502           15.9  2011    00
#> 3 United States     51371           15.9  2012    00
#> 4 United States     52250           15.8  2013    00
#> 5 United States     53657           15.5  2014    00
```

State-level estimates of median household income and poverty rate in 2010--2014
-------------------------------------------------------------------------------

``` r
# saipe::set_api_key("<Your API Key Here>")
saipeAPI::saipe_state(year = 2010:2014, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#> Source: local data frame [255 x 5]
#> 
#>                    NAME SAEMHI_PT SAEPOVRTALL_PT  time state
#>                   (chr)     (int)          (dbl) (int) (chr)
#> 1               Alabama     40538           18.9  2010    01
#> 2                Alaska     63456           11.0  2010    02
#> 3               Arizona     46787           17.6  2010    04
#> 4              Arkansas     38413           18.7  2010    05
#> 5            California     57664           15.8  2010    06
#> 6              Colorado     54411           13.2  2010    08
#> 7           Connecticut     64321           10.1  2010    09
#> 8              Delaware     56172           11.9  2010    10
#> 9  District of Columbia     60729           18.8  2010    11
#> 10              Florida     44390           16.5  2010    12
#> ..                  ...       ...            ...   ...   ...
```

County-level data estimates of median household income and poverty rate in 2010--2014
-------------------------------------------------------------------------------------

``` r
# saipe::set_api_key("<Your API Key Here>")
saipeAPI::saipe_county(year = 2010:2014, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#> Source: local data frame [15,714 x 6]
#> 
#>               NAME SAEMHI_PT SAEPOVRTALL_PT  time state county
#>              (chr)     (int)          (dbl) (int) (chr)  (chr)
#> 1   Autauga County     53049           11.9  2010    01    001
#> 2   Baldwin County     47618           13.3  2010    01    003
#> 3   Barbour County     33074           25.3  2010    01    005
#> 4      Bibb County     35472           20.9  2010    01    007
#> 5    Blount County     42906           16.5  2010    01    009
#> 6   Bullock County     25969           31.1  2010    01    011
#> 7    Butler County     29500           28.1  2010    01    013
#> 8   Calhoun County     37916           23.5  2010    01    015
#> 9  Chambers County     30061           28.5  2010    01    017
#> 10 Cherokee County     34410           21.2  2010    01    019
#> ..             ...       ...            ...   ...   ...    ...
```

Future Work
===========

-   Add school district functions
-   Provide basic usages of all the functions
