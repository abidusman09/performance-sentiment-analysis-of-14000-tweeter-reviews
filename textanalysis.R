library(tidytext)
library(dplyr)
library(tidyr)

lexicon <- get_sentiments("afinn")

sentiment_scores <- corpus %>%
  unnest_tokens(word, text) %>%
  inner_join(lexicon) %>%
  group_by(doc_id) %>%
  summarise(sentiment_score = sum(value))