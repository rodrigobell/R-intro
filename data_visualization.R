setwd("/Users/rb-mac/Coding Projects/R_intro")

iris <- read.csv("iris.csv")

head(iris)
iris

library(ggplot2)

# Box plot
ggplot(
  data = iris, 
  aes(x = Species)) + 
  geom_bar()

# Histogram
ggplot(
  data = iris, 
  aes(x = Petal.Length)) + 
  geom_histogram(bins = 20)

# Density plot
ggplot(
  data = iris, 
  aes(x = Petal.Length)) + 
  geom_density()

# Scatter plot
ggplot(
  data = iris, 
  aes(x = Petal.Length,
      y = Petal.Width)) + 
  geom_point()
