library(FSelector);
data <- read.csv("permission_train.csv");
results <- chi.squared(type ~,  data);
subset <- cutoff.k(results,5); #5 here means the first 5 features
f <- as.simple.formula(subset, "type")