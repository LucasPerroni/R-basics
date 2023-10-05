# ----------------------------------------------------
# Vectors
# A sequence of a single type of data
hours <- c(8, 14, 22)
names <- c("Lucas", "Luana", "Pamela")
is.vector(hours)
is.vector(names)

logic <- TRUE
random <- c(12, "Hello world", FALSE)
is.vector(logic)
is.vector(random)
mode(logic)
mode(random)

# ----------------------------------------------------
# Lists
# Vectors with more than one type of variable
a <- c(1, 2, 3, 4)
b <- c(1, "2", 3, 4)
a
b

is.vector(a)
is.vector(b)
is.list(a)
is.list(b)

b <- list(1, "Hello", TRUE, 2)
is.list(b)
mode(b)
str(b)

c <- list(c(1, 2, 3), "Hello again", 100)
str(c)
c[[1]][2]

d <- list(c(2, 4, 6), list(c(1, 3, 5), "hehe"))
str(d)
d[[1]][2]
d[[2]][[1]][length(d[[2]][[1]])]

# ----------------------------------------------------
# Matrices
# Vector with multiple dimensions
m <- matrix(1:9, nrow = 3)
m
mode(m)
class(m)

# line, column
m[1, 3]

m[2, 1] <- "word"
m
