#COEFFICIENT OF VARIATION
standard_deviation <- function(arr) {
  n <- length(arr)
  std_dev <- sqrt(var(arr) * (n - 1) / n)
  return(std_dev)
}

cv <- standard_deviation(arr)/abs(mean(arr))
