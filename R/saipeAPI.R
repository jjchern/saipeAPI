#' Set the Census API key
#' @export
set_api_key = function(api_key) Sys.setenv(saipe_key = api_key)

#' State level SAIPE data
#' @import dplyr
#' @import httr
#' @importFrom readr write_csv read_csv
#' @importFrom jsonlite fromJSON
#' @param year a numeric value. Possible values: 1989, 1993, 1995-2014.
#' @param var a string or vector of string. Possible fields: \url{http://api.census.gov/data/timeseries/poverty/saipe/variables.html}
#' @examples
#' set_api_key("<Your api here>")
#' # Get state level median household income and poverty rate in 2014
#' \dontrun{saipe_state(year = 2014, var = c("SAEMHI_PT", "SAEPOVRTALL_PT"))}
#' @export
saipe_state = function(year = 2010, var = c("NAME", "SAEMHI_PT", "SAEPOVRTALL_PT"), api_key = Sys.getenv("saipe_key")) {
        if (identical(api_key, "")) stop("Missing API key. Did you forget to call saipeAPI::set_api_key()?", call. = FALSE)
        var = paste(var, sep = '', collapse = ',')
        url = paste0("http://api.census.gov/data/timeseries/poverty/saipe?",
                     "get=", var,
                     "&for=", "state:*",
                     "&time=", year,
                     "&key=", api_key)
        df = saipe_parse(url) # This function is in helper.R
        df
}
