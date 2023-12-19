#' Linear model for significance between variables
#'
#' @param data the data used for the model
#' @param expression expression of the linear model
#' @return a linear regression model
#' @importFrom stats lm
#' @export
#'



lm_model<-function(data,expression){

  fit <- lm(expression, data = data)
}
