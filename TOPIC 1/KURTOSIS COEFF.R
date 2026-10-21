#-------------------------KURTOSIS OR COEFFICIENT OF PEAKEDNESS--------------------
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

g2 <- mom_ord(4,mean(data),data)/(standard_deviation(data)^4) - 3 ; g2
# g2 > 0  -> Leptokurtic
# g2 = 0  -> Mesokurtic
# g2 < 0  -> Platykurtic
#----------------------------------------------------------------------------------
