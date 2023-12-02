#' Get the number of concurrent trials for each date in a set of studies
#'
#' @param d the studies to get the number of concurrent trials for.
#' @return A tibble with a `date` column and a `count` of the number of
#' concurrent trials at that date.
#' @importFrom purrr map_dbl
#' @importFrom stats na.omit
#' @importFrom dplyr select distinct arrange rename mutate %>%
#' @importFrom tidyselect everything
#' @importFrom tidyr pivot_longer
#' @export
get_concurrent_trials = function(d) {

  # Get all of the unique dates.
  all_dates = d |>
    pivot_longer(cols = everything()) |> # make start_date, completion_date in one column
    select(-name) |>
    distinct() |> # distinct value (date)
    arrange(value) |>
    na.omit() |>
    rename(date = value)
  # find the unique dates, see if trials are active on those dates
  within_date = function(date, starts, ends) {
    date >= starts & date <= ends
  }

  # Get the number of concurrent trials at each of the unique dates.
  all_dates$count =
    map_dbl(

      all_dates$date,
      ~ .x |>
        within_date(d$start_date, d$completion_date) |>
        sum(na.rm = TRUE)
    )
  return(all_dates)
}
