install.packages("tree")
install.packages("RColorBrewer")
install.packages("caret")

data(iris)

set.seed(42)

indexes <- sample(
  x = 1:150,
  size = 100
)

print(indexes)

# Create training set
train <- iris[indexes,]

# Create test set
test <- iris[-indexes,]

library(tree)

# Train a decision model
model <- tree(
  formula = Species ~ .,
  data = train
)

summary(model)

plot(model)
text(model)

library(RColorBrewer)

# Create color palette
palette <- brewer.pal(3, "Set2")

plot(
  x = iris$Petal.Length,
  y = iris$Petal.Width,
  pch = 19,
  col = palette[as.numeric(iris$Species)]
)

partition.tree(
  tree = model,
  add = TRUE
)

predictions <- predict(
  object = model,
  newdata = test,
  type = "class"
)

table(
  x = predictions,
  y = test$Species
)

library(caret)

confusionMatrix(
  data = predictions,
  reference = test$Species
)

save(model, file = "tree.RData")
save(train, file = "train.RData")
