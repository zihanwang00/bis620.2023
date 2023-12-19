#' A function to clean biomark data
#'
#' @param data the biomark data
#' @return a cleaned biomark data indicating number of mutant, wild type, and failure
#' @importFrom dplyr select mutate rowwise ungroup across case_when
#' @export
#'

clean_biomark <- function(data){
  cleaned_data <- data %>%
    select(SUBJID, BMMTR1, BMMTR2, BMMTR3, BMMTR15) %>%
    mutate(across(everything(), ~ifelse(. == "", "Unknown", as.character(.)))) %>%
    rowwise() %>%
    mutate(
      Mutant = sum(dplyr::across(everything(), ~ .x == "Mutant")),
      Wild_type = sum(dplyr::across(everything(), ~ .x == "Wild-type")),
      Unknown = sum(dplyr::across(everything(), ~ .x == "Unknown")),
      Failure = sum(dplyr::across(everything(), ~ .x == "Failure"))
    ) %>%
    ungroup() %>%
    mutate(
      patient_type = case_when(
        Mutant >= 1 ~ "Mutant",
        Wild_type > (Unknown + Failure) ~ "Wild-type",
        TRUE ~ "Failure"
      )
    )
}
