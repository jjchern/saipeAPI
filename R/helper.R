# Helper function 1: Parse one year's data, and return a tibble
saipe_parse = function(url){

        resp = httr::GET(url)
        if (resp$status_code != 200) stop("HTTP failure: ", resp$status_code, call. = FALSE)

        text = httr::content(resp, "text")
        if (identical(text, "")) stop("No output to parse", call. = FALSE)

        parsed = jsonlite::fromJSON(text, simplifyVector = TRUE)
        parsed = as.data.frame(parsed, stringAsFactors = FALSE)

        tf_csv = tempfile(fileext = ".csv")
        readr::write_csv(parsed, tf_csv)
        readr::read_csv(tf_csv, skip = 1)
}

# Possible variables for us, state, and county-level datasets
# library(dplyr, warn.conflict = FALSE)
# library(rvest)
# read_html("http://api.census.gov/data/timeseries/poverty/saipe/variables.html") %>%
#         html_nodes("table") %>%
#         html_table() %>%
#         as.data.frame() %>%
#         readr::write_csv(path = tempfile(fileext = ".csv")) %>%
#         readr::read_csv() %>%
#         dplyr::slice(-1) %>%
#         filter(Name != "for" & Name != "in" & Name != "time") -> saipe_vars
# devtools::use_data(saipe_vars, overwrite = TRUE)

#' Possible variables for us, state, and county-level datasets
#' @description A data frame contains possible variables and variable labels.
#' @examples
#' # To get a vector of possible variables:
#' saipeAPI::saipe_vars$Name
#' @source <http://api.census.gov/data/timeseries/poverty/saipe/variables.html>
"saipe_vars"

# saipe_years = c(1989, 1993, 1995:2016)
# devtools::use_data(saipe_years, overwrite = TRUE)

#' Possible years for us, state, and county-level datasets
#' @description A vector contains all possible years to retrieve
#' @examples
#' # To get a vector of possible years:
#' saipeAPI::saipe_years
#' @source <http://www.census.gov/data/developers/data-sets/Poverty-Statistics.html>
"saipe_years"
