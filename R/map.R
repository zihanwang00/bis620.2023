#'
#' Get a country map showing the number of clinical trials per country
#'
#'
#' @param d data of the studies to get the number of studies trials for.
#' @return a world map with colors showing number of studies trials
#' @importFrom rnaturalearth ne_countries
#' @importFrom countrycode countrycode
#' @importFrom dplyr inner_join group_by summarize ungroup left_join collect
#' @importFrom ggplot2 ggplot geom_sf scale_fill_continuous labs theme_void
#' @export
#'
plot_country_map <- function(d){
  countries$name[is.na(countries$name)] = "NA"

  aggregated_data = d |>
    inner_join(countries|> collect(), by="nct_id") |>
    group_by(name) |>
    summarize(n = n()) |>
    ungroup()
  aggregated_data$name <- countrycode(aggregated_data$name, "country.name", "iso3c")

  world <- ne_countries(scale = "medium", returnclass = "sf")
  map_data <- world |>
    left_join(aggregated_data, by = c("iso_a3" = "name"))

  ggplot(map_data) +
    geom_sf(aes(fill = n), color = "white", size = 0.2) +
    scale_fill_continuous(
      low = "lightblue", high = "darkblue",
      na.value = "grey50",  # Color for countries with no data
      name = "Number of Trials"
    ) +
    labs(title = "Number of Clinical Trials per Country") +
    theme_void()
}
