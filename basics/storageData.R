# Understand how R organizes it's variables

# Numeric storage
salary <- 749.90
hours <- 400

sh <- salary / hours
shi <- as.integer(sh)
shi * 5
shr <- round(sh)

variables <- c(salary, hours)

# Character storage
name_1 <- "Lucas Perroni"
name_2 <- "Luana Siqueira"
age <- "22"

age + 5
names <- name_1 + name_2
names <- c(name_1, name_2)

names[1]
names[2]

name_1 == name_2
name_1 == "Lucas Perroni"
names[1] == name_1
names == c(name_1, name_2)

# Factor storage
workload <- c(220, 220, 150, 100, 100)
summary(workload)

workload <- as.factor(workload)
summary(workload)

workload <- as.factor(c(100, 220, 100, 150, 220))
summary(workload)
mode(workload)
class(workload)

# Logic storage
l1 <- salary > hours
l1

l2 <- salary < hours
l2

logic_1 <- TRUE
logic_2 <- "TRUE"
logic_3 <- c(1, TRUE, FALSE)
