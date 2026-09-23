# Ask the user to enter the first variable
print("Enter the values of X:")
X <- scan()

# Ask the user to enter the second variable
print("Enter the values of Y:")
Y <- scan()

# Joint absolute frequencies
ni <- table(X, Y)

# Joint relative frequencies
fi <- ni / length(X)

# Show the frequency tables with marginal frequencies
print(addmargins(ni))
print(addmargins(fi))
