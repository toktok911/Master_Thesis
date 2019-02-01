train <- read.csv("permission_train.csv")
test <- read.csv("permission_test.csv")
train$type <- as.factor(train$type);
test$type <- as.factor(test$type);
library(e1071);
permission_model <- naiveBayes(train[-331], train$type, laplace=0);
perdict_permission <- predict(permission_model, test[-331]);
library(gmodels); 
CrossTable(test$type, perdict_permission, test$type)