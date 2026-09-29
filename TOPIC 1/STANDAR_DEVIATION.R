#STANDARD DEVIATION
standard_deviation <- function(arr) {
  n <- length(arr)
  std_dev <- sqrt(var(arr) * (n - 1) / n)
  return(std_dev)
}

standard_deviation(arr)

#VARIANCE
var_population <- var(arr) * (length(arr) - 1) / length(arr)

#QUASI VARIANCE
var(arr)

#QUASI DEVIATION
sd(arr)
