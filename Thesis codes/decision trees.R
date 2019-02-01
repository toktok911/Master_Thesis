set.seed(911)
train <- read.csv("permission_train.csv")
test <- read.csv("permission_test.csv")
train$type <- as.factor(train$type);
test$type <- as.factor(test$type);
library(C50);
permission_model <- C5.0(train[-331], train$type);
permission_predictions <- predict(permission_model, test);
library(gmodels); 
CrossTable(test$type, permission_predictions, prop.chisq=False, prop.c=False, prop.r=False, dnn=c('actual','predicted'));
permission_model;
summary(permission_model);
plot(permission_model)