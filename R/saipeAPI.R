#' Set the Census API key
#' @export
#' @param api_key (character) Get Census's API key at <http://api.census.gov/data/key_signup.html>.
set_api_key = function(api_key) Sys.setenv(saipe_key = api_key)

#' @title Get SAIPE data
#'
#' @description Get SAIPE data at various geographic levels.
#' @export
#'
#' @import tibble
#' @importFrom httr GET content
#' @importFrom readr write_csv read_csv
#' @importFrom jsonlite fromJSON
#' @importFrom plyr ldply
#'
#' @param geo (character) One of "us", "state", and "county".
#' @param year (numeric) A four-digits value or vector of values. Possible values: 1989, 1993, 1995--2014.
#' @param var (character) A string or vector of strings. Possible fields: <http://api.census.gov/data/timeseries/poverty/saipe/variables.html>
#' @param api_key Use `saipeAPI::set_api_key("<Your api here>")` to set api_key.
#' @param ... Pass parameter `year` or `var` for function `saipe_us()`, `saipe_state()`, and `saipe_county()`. Also see Example section.
#'
#' @return Return a tibble, i.e., modern data frame.
#' If multiple years are specified, it gives a panel dataset.
#'
#' @examples \dontrun{
#' saipeAPI::set_api_key("<Your api here>")
#'
#' # Get national level median household income and poverty rate in 2014
#' saipeAPI::saipe(geo = "us", year = 2014, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#'
#' # Or
#' saipeAPI::saipe_us(year = 2014, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#'
#' # Get 2010--2014 data for natinal level, state-level, and county-level
#' saipeAPI::saipe_us(year = 2010:2014, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#' saipeAPI::saipe_state(year = 2010:2014, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#' saipeAPI::saipe_county(year = 2010:2014, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"))
#' }
saipe = function(geo, year = 2010, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"), api_key = Sys.getenv("saipe_key")) {

        if (identical(api_key, ""))
                stop("Missing API key. Did you forget to call saipeAPI::set_api_key()?", call. = FALSE)
        var = paste(var, sep = '', collapse = ',')
        url = paste0("https://api.census.gov/data/timeseries/poverty/saipe?",
                     "get=", var,
                     "&for=", geo, ":", "*",
                     "&time=", year,
                     "&key=", api_key)

        # `saipe_parse()` is in helper.R
        # Previously I use purrr::map_df(), but hit a bug with incompatible types
        plyr::ldply(url, saipe_parse) -> parsed

        # With purrr::map_df(), the next part won't be necessary
        tf_csv = tempfile(fileext = ".csv")
        readr::write_csv(parsed, tf_csv)
        readr::read_csv(tf_csv)
}

#' @export
#' @rdname saipe
saipe_us = function(...) saipe(geo = "us", ...)

#' @export
#' @rdname saipe
saipe_state = function(...) saipe(geo = "state", ...)

#' @export
#' @rdname saipe
saipe_county = function(...) saipe(geo = "county", ...)
