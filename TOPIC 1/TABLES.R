#-----------------------------TABLES-----------------------------
# Absolute frequency (Tabla normal)
abs_freq <- table(data) ; abs_freq

# Relative frequency
rel_freq <- abs_freq / length(grades) ; rel_freq

# Cumulative absolute frequency
cum_abs <- cumsum(abs_freq) ; cum_abs

# Cumulative relative frequency
cum_rel <- cumsum(rel_freq) ; cum_rel
#------------------------------------------------------------------
