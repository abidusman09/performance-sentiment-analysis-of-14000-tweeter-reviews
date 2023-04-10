library(caret)

training_set <- sentiment_scores %>%
  mutate(airline = as.factor(airline),
         time_of_day = as.factor(time_of_day))

model <- train(sentiment_score ~ airline + time_of_day + tweet_length, data = training_set, method = "lm")