#STANDARD DEVIATION
standard_deviation <- function(arr) {
  n <- length(arr)
  std_dev <- sqrt(var(arr) * (n - 1) / n)
  return(std_dev)
}

standard_deviation(arr)

#QUASI VARIANCE
var(arr)

#QUASI DEVIATION
sd(arr)