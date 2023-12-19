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

#' ADSL table of Panitumumab
#'
#' ADSL Panitumumab data for BIS620
#'
#' @format ## `adsl`
#' A data frame with 935 rows and 7 columns:
#' \describe{
#'   \item{SUBJID}{Subject ID}
#'   \item{TRT}{Assigned Treatment}
#'   \item{ATRT}{Actual Treatment}
#'   \item{AGE}{Age in Years at Screening}
#'   \item{SEX}{Sex}
#' }
"adsl"

#' ADAE table of Panitumumab
#'
#' ADAE Panitumumab data for BIS620
#'
#' @format ## `adae`
#' A data frame with 3,211 rows and 19 columns:
#' \describe{
#'   \item{SUBJID}{Subject ID}
#'   \item{AESEVCD}{Grade/Severity Code}
#' }
"adae"

#' Biomark table of Panitumumab
#'
#' Biomark Panitumumab data for BIS620
#'
#' @format ## `biomark`
#' A data frame with 935 rows and 19 columns:
#' \describe{
#'   \item{SUBJID}{Subject ID}
#'   \item{TRT}{Assigned Treatment}
#'   \item{BMMTR1, BMMTR2}{exon Result 1}
#' }
"biomark"
