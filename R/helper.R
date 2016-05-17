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
library(dplyr, warn.conflict = FALSE)
library(rvest)
read_html("http://api.census.gov/data/timeseries/poverty/saipe/variables.html") %>%
        html_nodes("table") %>%
        html_table() %>%
        as.data.frame() %>%
        readr::write_csv(path = tempfile(fileext = ".csv")) %>%
        readr::read_csv() %>%
        dplyr::slice(-1) -> saipe_vars
devtools::use_data(saipe_vars, overwrite = TRUE)

#' Possible variables for us, state, and county-level datasets
#' @description A data frame contains possible variables and variable labels.
#' @source \url{http://api.census.gov/data/timeseries/poverty/saipe/variables.html}
"saipe_vars"
