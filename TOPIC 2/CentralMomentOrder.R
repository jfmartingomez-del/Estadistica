# Enter the values of X and Y
print("Enter X:")
X <- scan()

print("Enter Y:")
Y <- scan()

# Enter the absolute frequency table
print("Enter the frequencies by rows:")
ni <- matrix(scan(), nrow = length(X), byrow = TRUE)

# Calculate relative frequencies
fi <- ni / sum(ni)

# Calculate the means
mean_X <- sum(X * rowSums(fi))
mean_Y <- sum(Y * colSums(fi))

# Enter the moment orders
r <- as.numeric(readline("Enter r: "))
s <- as.numeric(readline("Enter s: "))

# Calculate the central moment
moment <- 0

for (i in 1:length(X)) {
  for (j in 1:length(Y)) {
    moment <- moment + (X[i] - mean_X)^r *
      (Y[j] - mean_Y)^s * fi[i,j]
  }
}

# Show the result
print(moment)