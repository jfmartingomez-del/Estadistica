# Enter the values of X
print("Enter the values of X:")
X <- scan()

# Enter the values of Y
print("Enter the values of Y:")
Y <- scan()

# Enter the frequency table by rows
print("Enter the frequencies:")
ni <- matrix(scan(), nrow = length(Y), byrow = TRUE)

# Relative frequencies
fi <- ni / sum(ni)

# Marginal frequencies
fi_X <- colSums(fi)
fi_Y <- rowSums(fi)

# Means
mean_X <- sum(X * fi_X)
mean_Y <- sum(Y * fi_Y)

# Variances
var_X <- sum((X - mean_X)^2 * fi_X)
var_Y <- sum((Y - mean_Y)^2 * fi_Y)

# Standard deviations
sn_X <- sqrt(var_X)
sn_Y <- sqrt(var_Y)

# Covariance
covariance <- 0

for (i in 1:length(Y)) {
  for (j in 1:length(X)) {
    covariance <- covariance +
      (X[j] - mean_X) *
      (Y[i] - mean_Y) *
      fi[i,j]
  }
}

# Linear correlation coefficient
r <- covariance / (sn_X * sn_Y)

# Show result
print("Linear correlation coefficient:")
print(r)