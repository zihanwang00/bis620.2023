#' A function to get pivoted biomark data
#'
#' @param data the cleaned biomark data
#' @return a pivoted biomark data indicating number of mutant, wild type, and failure
#' @importFrom dplyr group_by summarize
#' @importFrom tidyr pivot_longer
#' @export
#'

bio_long <- function(data){
  long_data <- data %>%
    pivot_longer(cols = c("Mutant", "Wild_type", "Unknown"),
                 names_to = "Type", values_to = "Count") %>%
    group_by(Type) %>%
    summarize(Total = sum(Count))

}
