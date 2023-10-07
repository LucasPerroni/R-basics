# --------------------------------------------------------
# Conditionals
if (5 == 5) "Condition attended"
if (5 != 5) "Condition attender" else "Condition not attended"

if (12 > 4) {
  12
  cat("True \nCondition attended")
} else {
  cat("False \nCondition not attended")
}

# Example
age <- c(19, 22)
name <- c("Luana", "Lucas")
df <- data.frame(age, name)

if (df$age[df$name == "Lucas"] > df$age[df$name == "Luana"]) {
  "Lucas is older"
} else {
  "Luana is older"
}

# --------------------------------------------------------
# Loops
# for
name <- c("Lucas", "Luana", "Pamela", "Maria", "João", "Lucia")
age <- c(22, 19, 19, 20, 23, 22)
df <- data.frame(name, age)

for (a in age) {
  print(a)
}

# Example - get the older person
older <- 0

for (i in df$age) {
  if (i > older) {
    older <- i
  }
}

print(df[df$age == older, ])

# while
x <- 0

while (x < 10) {
  print(x)
  x <- x + 1
}

# Example - sum ages till they reach 100
sumAges <- 0
cont <- 1
age100 <- 0

while (sumAges + age[cont] <= 100) {
  sumAges <- sumAges + age[cont]
  age100[cont] <- age[cont]
  cont <- cont + 1
  
  if (cont > nrow(df)) {
    break
  }
}

age
age100
sum(age100)
