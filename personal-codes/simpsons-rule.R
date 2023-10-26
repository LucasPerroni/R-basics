simpsonsI <- function(func, ini, fin, div) {
  if (div < 2 | div %% 2 != 0) {
    stop("Number of divisions must be greater than 1 and an even number")
  }
  
  vec <- c()
  
  h = (fin - ini) / div
  for (i in 0:div) {
    vec <- append(vec, func(ini + i * h))
  }
  
  if (div >= 4) {
    sol <-
      h / 3 * (vec[1] + 4 * sum(vec[seq(2, length(vec) - 1, 2)]) + 2 * sum(vec[seq(3, length(vec) - 2, 2)]) + vec[length(vec)])
  } else {
    sol <- h / 3 * (vec[1] + 4 * vec[2] + vec[3])
  }
  
  return(sol)
}

func <- function(x) {
  exp(x) - x
}

simpsonsI(func, 1, 3, 8)
