#' Chi-squared test for significance between variables
#'
#' @param var1 the first categorical variable to test
#' @param var2 the second categorical variable to test
#' @return a text indicating whether the correlation is significant
#' @importFrom stats chisq.test
#' @export
#'

chi_sq <- function(var1, var2){
  result <- chisq.test(var1, var2,simulate.p.value = TRUE)
  p_val <- result$p.value

  if (p_val < 0.05){
    paste0("There is a significant correlation between two variables, p-value is ", p_val, ".")
  } else {
    paste0("p-value is greater than 0.05, there is no significant correlation between two variables.")
  }
}
