#--------------------MOMENT OF ORDER------------------
mom_ord <- function(r, c, arr) { # r = orden del momento (r = 1 -> momento de orden 1, ....)
  final_sum <- 0                 # c = punto respecto el que calculamos el momento
                                 # c = 0 -> momento ordinario, c = mean_value -> momento central
  for (i in seq_along(arr)) {
    final_sum <- final_sum + (arr[i] - c)^r
  }
  return(final_sum/length(arr))
}
#-----------------------------------------------------
