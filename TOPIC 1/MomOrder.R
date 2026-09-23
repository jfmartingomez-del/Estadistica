mom_ord <- function(r, c, arr) {
  final_sum <- 0
  for (i in seq_along(arr)) {
    final_sum <- final_sum + (arr[i] - c)^r
  }
  return(final_sum/length(arr))
}
