
# Possible variables for us, state, and county-level datasets

library(tidyverse)
library(rvest)

url = "http://api.census.gov/data/timeseries/poverty/saipe/variables.html"

read_html(url) -> raw

raw %>%
        html_nodes("table") %>%
        html_table() %>%
        purrr::pluck(1) %>%
        as_tibble() %>%
        dplyr::slice(-1) %>%
        filter(Name != "for" & Name != "in" & Name != "time") %>%
        print() -> saipe_vars
usethis::use_data(saipe_vars, overwrite = TRUE)

saipe_years = c(1989, 1993, 1995:2017)
usethis::use_data(saipe_years, overwrite = TRUE)
