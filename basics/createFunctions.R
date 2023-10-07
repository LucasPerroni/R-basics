a <- c(1, 4, 7, 8, 12, 24, 132)
b <- c(412, 1, 23, 13, 123, 623)

# Sum all numbers in a vector
sumFunction <- function(vector) {
  sum <- 0
  for (i in vector) {
    sum <- sum + i
  }
  return(sum)
}

sumFunction(a)
sumFunction(b)

# Sum two vectors, value per value
sumTwoVectors <- function(vec_1, vec_2) {
  vec <- 0
  cont <- 1
  for (i in vec_1) {
    vec[cont] <- vec_1[cont] + vec_2[cont]
    cont <- cont + 1
  }
  return(vec)
}

sumTwoVectors(a, b)
sumTwoVectors(b, a)

# R native functions
sum(a)
sum(b)

a + b
