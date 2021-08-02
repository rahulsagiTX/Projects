library(caret)
setwd('/Users/rahulsagi/Downloads')
house2 <- read.csv('HousePrice.csv')

house2$Price <- factor(with(house, ifelse(house2$Price < 800000, 'low', 'high')))
table(house2$Price)

sample_size <- floor(0.8*nrow(house))
sample_size

train_ind <- sample(seq_len(nrow(house2)), size = sample_size)

train <- house2[train_ind, ]
test <- house2[-train_ind, ]

train <- train[complete.cases(train), ]
test <- test[complete.cases(test), ]

fitControl <- trainControl(method = 'repeatedcv', number = 5, repeats = 2)

polySVM <- train(Price ~ Sqft_Area+Age+Lot_Area+Crime, data = train, 
                 method = "svmPoly", trControl= fitControl)

polySVM

prediction_svmpoly <- predict(polySVM, newdata = test)

confusionMatrix(prediction_svmpoly, test$Price)

svmlinear <- train(Price ~ Sqft_Area+Age+Lot_Area+Crime, data = train, 
                   method = "svmLinear", trControl = fitControl)
svmlinear

svmradial <- train(Price ~ Sqft_Area+Age+Lot_Area+Crime, data = train, 
                 method = "svmRadial", trControl= fitControl)
svmradial
