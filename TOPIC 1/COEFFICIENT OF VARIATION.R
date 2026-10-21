#--------------------------COEFFICIENT OF VARIATION------------------------
standard_deviation <- function(data) {
  n <- length(data)
  std_dev <- sqrt(var(data) * (n - 1) / n)
  return(std_dev)
}

cv <- standard_deviation(data)/abs(mean(data)) ; cv
#--------------------------------------------------------------------------
