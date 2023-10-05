# ----------------------------------------
# Function "c"
# Used to combine values into a list

# Help
? c

a <- "Lucas"
b <- "Luana"
c <- c(a, b)
c

c <- c("Luana", "Pamela", a)
c

a <- c(10, 5, 2.5, 1.25)
a
a[2]

# Function "summary"
# Used to display info about an object 

? summary()

summary(a)
summary(c)

# ----------------------------------------
# Unknown package function
? str_c
# Use "R Documentation" to find package
# https://www.rdocumentation.org/

install.packages("stringr")
library(stringr)

name <- "Lucas"
surname <- "Perroni"
completeName <- str_c(name, surname, sep = " ")
completeName
