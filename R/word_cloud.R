#' Get Word Cloud of Conditions
#'
#' @param study the study table with the number of studies
#' @param condition the condition table with the conditions
#' @return a word cloud of key words shown in the name of study
#' @importFrom dplyr inner_join
#' @importFrom tm Corpus tm_map VectorSource content_transformer removePunctuation
#' removeNumbers removeWords stopwords stripWhitespace
#' @importFrom wordcloud wordcloud
#' @importFrom RColorBrewer brewer.pal
#' @export


word_cloud <- function(study, condition){
  num_con = study |>
    inner_join(condition, by="nct_id")

  corpus <- Corpus(VectorSource(num_con$name))
  corpus <- tm_map(corpus, content_transformer(tolower))
  corpus <- tm_map(corpus, removePunctuation)
  corpus <- tm_map(corpus, removeNumbers)
  corpus <- tm_map(corpus, removeWords, stopwords("en"))
  corpus <- tm_map(corpus, stripWhitespace)

  wordcloud(words = corpus, scale=c(5,0.5), max.words=100, random.order=FALSE, colors=brewer.pal(8, "Dark2"))
}
