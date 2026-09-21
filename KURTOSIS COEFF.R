#Kurtosis or coefficient of peakedness.
mom_ord <- function(r, c, arr) {
  final_sum <- 0
  for (i in seq_along(arr)) {
    final_sum <- final_sum + (arr[i] - c)^r
  }
  return(final_sum/length(arr))
}

standard_deviation <- function(arr) {
  n <- length(arr)
  std_dev <- sqrt(var(arr) * (n - 1) / n)
  return(std_dev)
}

Kurtosis_coeff <- mom_ord(4,mean(arr),arr)/(standard_deviation(arr)^4) - 3