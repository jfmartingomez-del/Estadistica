# Enter the data
X <- scan()
Y <- scan()

# Enter the frequency table
ni <- matrix(scan(), nrow = length(X), byrow = TRUE)

# Relative frequencies
fi <- ni / sum(ni)

# Enter the moment orders
r <- as.numeric(readline("Enter r: "))
s <- as.numeric(readline("Enter s: "))

# Enter the reference point
a <- as.numeric(readline("Enter a: "))
b <- as.numeric(readline("Enter b: "))

# Calculate the moment
moment <- 0

for (i in 1:length(X)) {
  for (j in 1:length(Y)) {
    moment <- moment + (X[i]-a)^r * (Y[j]-b)^s * fi[i,j]
  }
}

print(moment)

