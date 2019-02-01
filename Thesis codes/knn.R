per_train <- read.csv("permission_train.csv");
per_test <- read.csv(""permission_test.csv)
train_label <- per_train[,331];
test_label <- per_test[,331]
library(class);
predict <- knn(train=per_train, test=per_test, cl=train_label, k=20);
library(gmodels);
crossTable(x=test_label, y=perdict, prop.chisq=False)