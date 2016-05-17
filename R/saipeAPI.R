#' Set the Census API key
#' @export
set_api_key = function(api_key) Sys.setenv(saipe_key = api_key)

#' National level SAIPE data
#' @export
#'
#' @import dplyr
#' @import httr
#' @importFrom readr write_csv read_csv
#' @importFrom jsonlite fromJSON
#' @importFrom purrr map_df
#'
#' @param year (numeric) A four-digits value or vector of values. Possible values: 1989, 1993, 1995--2014.
#' @param var (character) A string or vector of strings. Possible fields: \url{http://api.census.gov/data/timeseries/poverty/saipe/variables.html}
#'
#' @return Return a tibble. If multiple years are specified, it gives a national level panel dataset.
#'
#' @examples \dontrun{
#' saipeAPI::set_api_key("<Your api here>")
#'
#' # Get national level median household income and poverty rate in 2014
#' saipeAPI::saipe_us(year = 2014, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#'
#' # Get 2010--2014 data
#' saipeAPI::saipe_us(year = 2010:2014, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#' }

saipe_us = function(year = 2010, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"), api_key = Sys.getenv("saipe_key")) {
        if (identical(api_key, "")) stop("Missing API key. Did you forget to call saipeAPI::set_api_key()?", call. = FALSE)
        var = paste(var, sep = '', collapse = ',')
        url = paste0("http://api.census.gov/data/timeseries/poverty/saipe?",
                     "get=", var,
                     "&for=", "us:*",
                     "&time=", year,
                     "&key=", api_key)
        purrr::map_df(url, saipe_parse) # `saipe_parse()` is in helper.R
}

#' State-level SAIPE data
#' @export
#'
#' @import dplyr
#' @import httr
#' @importFrom readr write_csv read_csv
#' @importFrom jsonlite fromJSON
#' @importFrom purrr map_df
#'
#' @param year (numeric) A four-digits value or vector of values. Possible values: 1989, 1993, 1995--2014.
#' @param var (character) A string or vector of strings. Possible fields: \url{http://api.census.gov/data/timeseries/poverty/saipe/variables.html}
#'
#' @return Return a tibble. If multiple years are specified, it gives a state-level panel dataset.
#'
#' @examples \dontrun{
#' saipeAPI::set_api_key("<Your api here>")
#'
#' # Get state-level median household income and poverty rate in 2014
#' saipeAPI::saipe_state(year = 2014, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#'
#' # Get 2010--2014 data
#' saipeAPI::saipe_state(year = 2010:2014, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#' }

saipe_state = function(year = 2010, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"), api_key = Sys.getenv("saipe_key")) {
        if (identical(api_key, "")) stop("Missing API key. Did you forget to call saipeAPI::set_api_key()?", call. = FALSE)
        var = paste(var, sep = '', collapse = ',')
        url = paste0("http://api.census.gov/data/timeseries/poverty/saipe?",
                     "get=", var,
                     "&for=", "state:*",
                     "&time=", year,
                     "&key=", api_key)
        purrr::map_df(url, saipe_parse) # `saipe_parse()` is in helper.R
}

#' County-level SAIPE data
#' @export
#'
#' @import dplyr
#' @import httr
#' @importFrom readr write_csv read_csv
#' @importFrom jsonlite fromJSON
#' @importFrom purrr map_df
#'
#' @param year (numeric) A four-digits value or vector of values. Possible values: 1989, 1993, 1995--2014.
#' @param var (character) A string or vector of strings. Possible fields: \url{http://api.census.gov/data/timeseries/poverty/saipe/variables.html}
#'
#' @return Return a tibble. If multiple years are specified, it gives a county-level panel dataset.
#'
#' @examples \dontrun{
#' saipeAPI::set_api_key("<Your api here>")
#'
#' # Get county-level median household income and poverty rate in 2014
#' saipeAPI::saipe_county(year = 2014, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#'
#' # Get 2010--2014 data
#' saipeAPI::saipe_county(year = 2010:2014, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#' }

saipe_county = function(year = 2010, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"), api_key = Sys.getenv("saipe_key")) {
        if (identical(api_key, "")) stop("Missing API key. Did you forget to call saipeAPI::set_api_key()?", call. = FALSE)
        var = paste(var, sep = '', collapse = ',')
        url = paste0("http://api.census.gov/data/timeseries/poverty/saipe?",
                     "get=", var,
                     "&for=", "county:*",
                     "&time=", year,
                     "&key=", api_key)
        purrr::map_df(url, saipe_parse) # `saipe_parse()` is in helper.R
}
