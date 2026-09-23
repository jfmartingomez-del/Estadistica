# Enter the values of X and Y
print("Enter X:")
X <- scan()

print("Enter Y:")
Y <- scan()

# Enter the absolute frequencies by rows
print("Enter the frequencies:")
ni <- matrix(scan(), nrow = length(X), byrow = TRUE)

# Calculate relative frequencies
fi <- ni / sum(ni)

# Calculate the means
mean_X <- sum(X * rowSums(fi))
mean_Y <- sum(Y * colSums(fi))

# Calculate the covariance
covariance <- 0

for (i in 1:length(X)) {
  for (j in 1:length(Y)) {
    covariance <- covariance + (X[i] - mean_X) *
      (Y[j] - mean_Y) * fi[i,j]
  }
}

# Show the result
print(covariance)