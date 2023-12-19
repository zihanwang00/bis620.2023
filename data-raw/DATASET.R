## code to prepare `DATASET` dataset goes here

accel = readRDS("accel.RDS")
adae = readRDS("adae.RDS")
adsl = readRDS("adsl.RDS")
biomark = readRDS("biomark.RDS")


usethis::use_data(accel, overwrite = TRUE)
usethis::use_data(adae, overwrite = TRUE)
usethis::use_data(adsl, overwrite = TRUE)
usethis::use_data(biomark, overwrite = TRUE)


