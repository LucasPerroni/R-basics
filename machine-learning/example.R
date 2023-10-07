library(rstudioapi)
setwd(dirname(getActiveDocumentContext()$path))

df <-
  read.csv(
    "FipePrevAjustada.csv",
    header = TRUE,
    encoding = "UTF-8",
    stringsAsFactors = TRUE
  )

set.seed(100)

# Randomly separate data between test and train
lines <- sample(1:length(df$Marca), length(df$Marca) * 0.7)

# Train data - 70%
train <- df[lines, ]

# Test data - 30%
test <- df[-lines, ]

# Create model
library(rpart)
model <-
  rpart(Preço ~ ., data = train, control = rpart.control(cp = 0))

# Make predictions
test$Predictions <- predict(model, test)

# Data analysis
test$P <- abs(round(test$Predictions / test$Preço, 4) - 1)
R_1 <- summary(test$P)
R_1

# Analyse price distribution excluding the 10% most expensive
hist(df$Preço[df$Preço < quantile(df$Preço, 0.9)], breaks = 10, labels = T)

R_final_1 <-
  summary(test$P[test$Preço > 10000 & test$Preço < 70000])
R_1
R_final_1

# Original data set
df_real <- read.csv(
  "fipe_Jun2018.csv",
  header = TRUE,
  encoding = "UTF-8",
  stringsAsFactors = TRUE
)
View(df)
View(df_real)
