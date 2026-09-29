# Enter the values of X (COLUMNAS)
print("Enter the values of X:") 
X <- scan()

# Enter the values of Y (FILAS)
print("Enter the values of Y:")
Y <- scan()

# Enter the frequency table by rows
print("Enter the frequencies:")
ni <- matrix(scan(), nrow = length(Y), byrow = TRUE)

# Enter the first column
print("Enter the first column:")
first_column <- scan()

# Enter the last column
print("Enter the last column:")
last_column <- scan()

# Select the columns
conditional_data <- ni[, first_column:last_column]

# Add the frequencies by rows
conditional_abs <- rowSums(conditional_data)

# Calculate relative frequencies
conditional_rel <- conditional_abs / sum(conditional_abs)

# Show results
print(conditional_abs) #MARGINAL OF EACH ROW
print(conditional_rel) #MARGINAL / TOTAL MARGINAL