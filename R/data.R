#' Accelerometry Data Resampled from UK Biobank
#'
#' Toy accelerometry data for BIS620
#'
#' @format ## `accel`
#' A data frame with 1,080,000 rows and 4 columns:
#' \describe{
#'   \item{time}{the time of the measurement}
#'   \item{X, Y, Z}{Accelerometry measurement (in milligravities).}
#' }
"accel"

#' Country trials data
#'
#' A subset of data from the trails and countries
#'
#' @format ## `countries`
#' A data frame with 655,026 rows and 4 columns:
#' \describe{
#'   \item{id}{trial id}
#'   \item{nct_id}{nct_id}
#'   \item{name}{ciuntry name}
#'   \item{removed}{trial removed or not}
#' }
#'
"countries"
