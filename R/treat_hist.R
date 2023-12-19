#' Histogram of different variables with respect to different treatments
#'
#' @param data the data to create histogram for
#' @param count_var the variables to count group treatments for
#' @param facet_var the variables to facet group treatments for
#' @return histograms of number of subjects for different treatment
#' @importFrom ggplot2 ggplot geom_bar facet_wrap labs theme_minimal aes
#' @importFrom stats as.formula
#' @export
#'


treat_hist <- function(data, count_var, facet_var){
  ggplot(data, aes(x = !!as.symbol(count_var))) +
    geom_bar(position = "dodge") +
    facet_wrap(as.formula(paste0("~ ", facet_var))) +
    labs(x = count_var, y = "Count", fill = count_var) +
    theme_minimal()
}
