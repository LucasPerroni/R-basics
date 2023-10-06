# --------------------------------------------------------
# Basics
vogals <- c("a", "e", "i", "o", "u")

# Get index 3 content
vogals[3]

# Get everything but index 3
vogals[-3]

# Get data between index 3 and 5
vogals[3:5]

# Filter using variable length
length(vogals)
vogals[length(vogals)]
vogals[(length(vogals) - 2):length(vogals)]

# Filter using other variables
a <- 3
b <- 5
vogals[a:b]

# Filter using conditions
vogals[vogals == "e"]
vogals[vogals != "i"]

numbers <- c(1, 2, 3, 4, 5)
numbers[numbers >= 3]
numbers[numbers < 4]

# --------------------------------------------------------
# Data Frames
library(rstudioapi)
setwd(dirname(getActiveDocumentContext()$path))
df <- read.csv("DataFrame.csv")

# [column] or [line, column]
df
df[1]
df[1, ]
df[1:5, "UPS"]

df[1:6]
df[1, 5:8]
df[-3:-1, -4]

df[(nrow(df) - 2):nrow(df), "REGIAO"]
df[seq(1, nrow(df), 2), c("NOITE_DIA", "REGIAO")]
df[5:8,][-9:-4]

# Modifying data frame
df <- df[c(-4:-7)]

# Filtering the variables
df[1, 5]
df$REGIAO[length(df$REGIAO) - 1]
df[df$FX_HORA > 5,]

df <- df[(df$REGIAO == "NORTE" | df$REGIAO == "SUL" ), ]

# df x original_df
original_df <- read.csv("DataFrame.csv")

View(df)
View(original_df)
