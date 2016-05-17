# Parse one year's data, and return a tibble
saipe_parse = function(url){

        resp = httr::GET(url, progress())
        if (resp$status_code != 200) stop("HTTP failure: ", resp$status_code, call. = FALSE)

        text = httr::content(resp, "text")
        if (identical(text, "")) stop("No output to parse", call. = FALSE)

        parsed = jsonlite::fromJSON(text, simplifyVector = TRUE)
        parsed = as.data.frame(parsed, stringAsFactors = FALSE)

        tf_csv = tempfile(fileext = ".csv")
        readr::write_csv(parsed, tf_csv)
        readr::read_csv(tf_csv, skip = 1)
}
