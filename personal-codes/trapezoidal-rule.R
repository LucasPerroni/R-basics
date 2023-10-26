trapezoidalI <- function(func, ini, fin, div) {
  if (div < 1) {
    stop("Number of divisions must be greater than 0")
  }
  
  vec <- c()
  
  h = (fin - ini) / div
  for (i in 0:div) {
    vec <- append(vec, func(ini + i * h))
  }
  
  if (length(vec) >= 3) {
    sol <-
      h / 2 * (vec[1] + 2 * (sum(vec[2:(length(vec) - 1)])) + vec[length(vec)])
  } else {
    sol <- h / 2 * (vec[1] + vec[length(vec)])
  }
  
  return(sol)
}

func <- function(x) {
  exp(x) - x
}

trapezoidalI(func, 1, 3, 8)
