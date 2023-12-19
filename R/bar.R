#' A bar plot with the number of counts per group
#'
#' @param data the data to create bar plot for
#' @param x_var the x variable with different groups
#' @param y_var the number of counts per group
#' @return bar plot of number of subjects for different group
#' @importFrom ggplot2 ggplot geom_bar labs theme_minimal aes
#' @export
#'


bar_plot <- function(data, x_var, y_var){
  ggplot(data, aes(x = !!as.symbol(x_var), y = !!as.symbol(y_var))) +
    geom_bar(stat = "identity") +
    labs(title = paste0("Total Counts per ", x_var), x = x_var, y = y_var) +
    theme_minimal()
}
