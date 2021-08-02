install.packages('caret')
library(caret)

install.packages('hydroGOF')
library(hydroGOF)

setwd('/Users/rahulsagi/Downloads')
house <- read.csv('HousePrice.csv')

sample_size <- floor(0.8 * nrow(house))
sample_size

train_ind <- sample(seq_len(nrow(house)), size = sample_size)

train <- house[train_ind, ]
test <- house[-train_ind, ]

head(train)
head(test)

model <- lm(Price~Sqft_Area + Age + Lot_Area + Crime, data = train)
summary(model)

layout(matrix(c(1, 2, 3, 4), 2, 2))
plot(model)

prediction <- predict(model, newdata = test)
summary(prediction)

rmse(prediction, test$Price, na.rm = TRUE)
cor.test(prediction, test$Price, use = "complete")

install.packages('caret')
install.packages('prodlim')
library(prodlim)
library(caret)

train <- train[complete.cases(train), ]
fitControl <- trainControl(method = 'repeatedcv', number = 5, repeats = 2)
glmFit1 <- train(Price~Sqft_Area + Age + Lot_Area + Crime, data = train,
                 method = 'penalized', trControl = fitControl)

glmFit1

test <- test[complete.cases(test), ]
prediction <- predict(glmFit1, newdata = test)

rmse(prediction,test$Price)
cor.test(prediction,test$Price)
