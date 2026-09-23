#To unify modalities and freq 

data4 <- rep(xi,ni)

#Quartiles

q1 <- quantile(data4, 0.25, type = 1)

#mean
mean_value <- sum(data4)/sum(ni)
print(mean_value)

#median
median(data4)

#mode
max_frequency <- max(ni)
for(i in 1:length(ni)){
  if(ni[i] == max_frequency){
    mode_value <- xi[i]
  }
  
}
print(mode_value)

