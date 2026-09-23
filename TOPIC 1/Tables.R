#TABLES
# Absolute frequency
abs_freq <- table(grades)

# Relative frequency
rel_freq <- abs_freq / length(grades)

# Cumulative absolute frequency
cum_abs <- cumsum(abs_freq)

# Cumulative relative frequency
cum_rel <- cumsum(rel_freq)

# Show results
abs_freq
rel_freq
cum_abs
cum_rel
