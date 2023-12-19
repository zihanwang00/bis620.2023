#' Correlation plot of the variables in data
#'
#' @param data the data to create correlation plot for
#' @return a correlation plot with numeric variables in data
#' @importFrom corrplot corrplot cor.mtest corrplot.mixed
#' @importFrom stats cor
#' @export
#'

cor_plot <- function(data){
  numeric_data <- data[sapply(data, is.numeric)]
  sigcorr <- cor.mtest(numeric_data, conf.level = .95)

  corr_matrix <- cor(numeric_data, use = "complete.obs")
  corrplot.mixed(corr_matrix, lower.col = "black", upper = "ellipse", tl.col = "black", number.cex = .7,
                 order = "hclust", tl.pos = "lt", tl.cex=.7, p.mat = sigcorr$p, sig.level = .05)
}
