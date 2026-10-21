#-------------------------FISHER SKEWNESS OR COEFFICIENT OF ASSYMETRY------------------------- 
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

g1 <- mom_ord(3,mean(data),data)/(standard_deviation(data))^3 ; g1
# g1 > 0  -> Positive skewness
# g1 = 0  -> Symmetric distribution
# g1 < 0  -> Negative skewness
#---------------------------------------------------------------------------------------------
