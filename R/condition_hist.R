# Get top 8 frequent number of conditions by a brief title keyword search and sponsor type

#' @param study the studies to get the number of studies trials for.
#' @param condition the condition table of the trials.
#' @return values of top 8 frequent number of conditions
#' @importFrom dplyr inner_join select group_by summarize arrange head
#' @export

get_condition_histogram = function(study, condition) {

  num_con = study |>
    inner_join(condition, by="nct_id") |>
    select(name)|>
    group_by(name)|>
    summarize(n=n(), .groups = "drop") |>
    arrange(desc(n))|>
    head(8)

  return(num_con)
}
