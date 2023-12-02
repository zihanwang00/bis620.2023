#' Get outcome pie chart conditioned on intervention
#'
#' @param interventionType the type of interventions.
#' @return a pie chart of number of outcomes on specific intervention type
#' @importFrom dplyr filter left_join count arrange
#' @importFrom ggplot2 ggplot aes geom_bar coord_polar theme_void labs
#' @export


get_outcome_pie_for_intervention <- function(interventionType) {


  num_outcomes <- interventions |>
    filter(intervention_type %in% interventionType) |>
    left_join(outcomes, by = "nct_id") |>
    count(outcome_type) |>
    arrange(desc(n))

  # Generate pie chart
  ggplot(num_outcomes, aes(x = "", y = n, fill = outcome_type)) +
    geom_bar(stat = "identity", width = 1) +
    coord_polar("y", start = 0) +
    theme_void() +
    labs(fill = "Outcome Type")
}
