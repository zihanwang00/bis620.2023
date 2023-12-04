## code to prepare `DATASET` dataset goes here

accel = readRDS("accel.RDS")
countries = readRDS("filtered_countries.RDS")
usethis::use_data(accel, overwrite = TRUE)
usethis::use_data(countries, overwrite = TRUE)
