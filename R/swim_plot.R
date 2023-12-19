
#' A survival plot of death date and actual treatment
#'
#' @param data the data to create survival plot for
#' @return  survival plot of death date and actual treatment
#' @importFrom survminer ggsurvplot
#' @importFrom survival survfit Surv
#' @export
#'

swim_plot <- function(data) {
  ggsurvplot(survfit(Surv(DTHDY, DTH) ~ ATRT, data = data),
             data = data, conf.int = TRUE)
}

