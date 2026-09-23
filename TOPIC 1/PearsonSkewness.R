# Ask the user to enter the data
data <- scan()

# Calculate the mean
mean_value <- mean(data)

# Calculate the mode
mode_value <- data[1]
max_frequency <- 0

for (value in data) {
  frequency <- 0
  for (number in data) {
    if (number == value) {
      frequency <- frequency + 1
    }
  }
  
  if (frequency > max_frequency) {
    max_frequency <- frequency
    mode_value <- value
  }
}

# Calculate the standard deviation
standard_deviation <- sd(data)

# Calculate Pearson's skewness coefficient
pearson_skewness <- (mean_value - mode_value) / standard_deviation
print(pearson_skewness)
