#' A function for selecting ID count of individual countries
#'
#' @param country the country selected to count number of ID
#' @param countries the data frame with all countries and IDs
#' @return the number of ID counts given a specific country
#' @importFrom dplyr filter group_by summarise rename %>%
#' @export


count_country_id <- function(country, countries) {
  countries_df <- data.frame(countries)
  filtered_countries <- countries_df %>%
    filter(!removed) %>%
    group_by(name) %>%
    summarise(n = n()) %>%
    rename(ID_count = n)

  # Find the row matching the specified country
  country_row <- filtered_countries %>%
    filter(name == country)

  # Print the row (if found)
  if (nrow(country_row) > 0) {
    print(country_row)
  } else {
    cat("Country not found.")
  }
}
