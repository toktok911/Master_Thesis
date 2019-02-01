set.seed(911);
training_per <- read.csv("permission_train.csv");
testting_per <- read.csv("permission_test.csv");
n <- names(training_per)
f <- as.formula(paste("type ~"), paste(n[!n %in% "type"],collapse=" + "));
library(neuralnet);
nn_model <- neuralnet(f, data=training_per); 
nn_model_result <- compute(nn_model, testting_per[-331]);
preidcted_type <- nn_model
rounded_predicted_type <- round(preidcted_type);
library(gmodels);
CrossTable(testing_per$type, rounded_predicted_type, dnn = c("actual", predicted))