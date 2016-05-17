#' Set the Census API key
#' @export
set_api_key = function(api_key) Sys.setenv(saipe_key = api_key)

#' State level SAIPE data
#' @import dplyr
#' @import httr
#' @importFrom readr write_csv read_csv
#' @importFrom jsonlite fromJSON
#' @examples
#' set_api_key("<Your api here>")
#' # Get state level median household income and poverty rate in 2014
#' saipe_state(var = c("SAEMHI_PT", "SAEPOVRTALL_PT"), year = 2014)
#' @export
saipe_state = function(var = c("SAEMHI_PT", "SAEPOVRTALL_PT"), year = 2010, api_key = NULL) {

        if (length(var) > 1) var_str = paste(var, sep = '', collapse = ',')
        api_key = Sys.getenv("saipe_key")

        url = paste0("http://api.census.gov/data/timeseries/poverty/saipe?get=NAME,",
                     var_str,
                     "&for=",
                     "state:*",
                     "&time=",
                     year,
                     "&key=",
                     api_key)

        resp = GET(url)
        parsed = jsonlite::fromJSON(content(resp, "text"), simplifyVector = TRUE)
        parsed = as.data.frame(parsed, stringAsFactors = FALSE)
        tf_csv = tempfile(fileext = ".csv")
        readr::write_csv(parsed, tf_csv)
        readr::read_csv(tf_csv, skip = 1)
}


