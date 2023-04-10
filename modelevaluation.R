library(Metrics)

predictions <- predict(model, testing_set)

confusionMatrix(predictions, testing_set$sentiment_score)

accuracy(predictions, testing_set$sentiment_score)

lift(predictions, testing_set$sentiment_score)
