## code to prepare `DATASET` dataset goes here

accel = readRDS("accel.RDS")
usethis::use_data(accel, overwrite = TRUE)
