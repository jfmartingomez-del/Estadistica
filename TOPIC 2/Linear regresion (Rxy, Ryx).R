# Create the complete vectors X and Y
arr_X <- rep(X, rowSums(ni))
arr_Y <- rep(Y, colSums(ni))

# Calculate the means
mean_X <- mean(arr_X)
mean_Y <- mean(arr_Y)

# Calculate the variances
var_X <- var(arr_X) * (length(arr_X) - 1) / length(arr_X)
var_Y <- var(arr_Y) * (length(arr_Y) - 1) / length(arr_Y)

# Calculate the covariance
covariance <- 0

for (i in 1:length(X)) {
  for (j in 1:length(Y)) {
    covariance <- covariance + (X[i] - mean_X) *
      (Y[j] - mean_Y) * fi[i,j]
  }
}

print(covariance)

# Regression X / Y
b_XY <- covariance / var_Y
a_XY <- mean_X - b_XY * mean_Y

# Regression Y / X
b_YX <- covariance / var_X
a_YX <- mean_Y - b_YX * mean_X

#Print
print(paste("R_X/Y: X =", a_XY, "+", b_XY, "* Y"))
print(paste("R_Y/X: Y =", a_YX, "+", b_YX, "* X"))