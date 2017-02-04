setwd("/Users/rb-mac/Coding Projects/R_intro")

prices <- read.csv("stock_price.csv")

prices
head(prices)

# Create frequency table
table(prices$Date)

min(prices$Low)
max(prices$Low)
mean(prices$Low)
min(prices$High)
max(prices$High)
mean(prices$High)

quantile(prices$Low)
quantile(prices$High)

sd(prices$Low)
sd(prices$High)
     
cor(
  x = prices$Low,
  y = prices$High
)

cor(
  x = prices$Close,
  y = prices$Volume
)

summary(prices)
