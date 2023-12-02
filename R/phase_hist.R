#' Create a histogram of the phases returned by a brief title keyword search
#' and sponsor type
#'
#' @param x the database table.
#' @return a histogram of phases with brief title keyword search
#' @importFrom ggplot2 ggplot geom_col theme_bw xlab ylab
#' @importFrom dplyr select group_by summarize left_join
#' @export
#'
plot_phase_histogram = function(x) {

  x$phase[is.na(x$phase)] = "NA"

  x_summarized = x |>
    select(phase) |>
    group_by(phase) |>
    summarize(n = n(), .groups = "drop")

  x_complete = left_join(phase_levels, x_summarized, by = "phase")
  x_complete$n[is.na(x_complete$n)] = 0

  ggplot(x_complete, aes(x = phase, y = n)) +
    geom_col() +
    theme_bw() +
    xlab("Phase") +
    ylab("Count")
}
