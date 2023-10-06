library(rstudioapi)

# Define working directory as current file directory
setwd(dirname(getActiveDocumentContext()$path))

# Import database
df <- read.csv("DataFrame.csv", sep = ",", stringsAsFactors = TRUE)

# View data frame
View(df)
str(df)
summary(df)

df
df[1]
df$DIA_SEM

col_1 <- df[7]
col_2 <- df$NOITE_DIA

# Modifying a data frame

# Excluding a column
df$ONIBUS <- NULL
df

# Modifying a column
df$UPS
summary(df$UPS)
df$UPS <- as.factor(df$UPS)
df$UPS
summary(df$UPS)

# Creating a new column
df$NEW <- "a"
class(df$NEW)
df$NEW <- c(2, 5, 10)
df$NEW <- c(2, 5, 10, NA, NA, NA, NA, NA, NA)
df$NEW <- NULL
df$NEW <- NA
df$NEW[4:6] <- c(2, 5, 10)
summary(df$NEW)
