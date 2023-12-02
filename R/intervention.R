#' Get interventions on condition mapping
#'
#' @param interventionType the type of interventions.
#' @return a plot of top 10 conditions on specific intervention type
#' @importFrom dplyr filter distinct inner_join select count collect slice_max
#' @importFrom ggplot2 ggplot aes geom_bar coord_flip labs theme_minimal theme element_text
#' @export


get_conditions_for_intervention_type <- function(interventionType) {

  intervention_studies <- interventions |>
    filter(intervention_type == interventionType) |>
    select(nct_id) |>
    distinct()

  conditions_for_intervention <- conditions |>
    inner_join(intervention_studies, by = "nct_id") |>
    select(name) |>
    count(name, sort = TRUE) |>
    collect()

  top_conditions <- conditions_for_intervention %>%
    slice_max(n, n = 10)

  ggplot(top_conditions, aes(x = reorder(name, n), y = n)) +
    geom_bar(stat = "identity", fill = 'steelblue') +
    coord_flip() +
    labs(y = "Condition", x = "Count",
         title = paste("Top 10 Conditions for", interventionType)) +
    theme_minimal() +
    theme(axis.text.y = element_text(angle = 0))

}
