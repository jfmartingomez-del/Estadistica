#To unify modalities and freq 
#xi = data
xi <- c()
#ni = array with frequencies
ni <- c()
data <- rep(xi,ni)

#Quartiles
q1 <- quantile(data, 0.25, type = 1) ; q1
q2 <- quantile(data, 0.50, type = 1) ; q2
q3 <- quantile(data, 0.75, type = 1) ; q3

#InterQuartil Range
IQR <- q3 - q1 ; IQR

#Decil x
Dx <- quantile(data, x/100, type = 1) ; Dx

#mean
mean_value <- sum(data)/sum(ni) ; mean_value

#median
median_value <- median(data) ; median_value

#mode
max_frequency <- max(ni)
for(i in 1:length(ni)){
  if(ni[i] == max_frequency){
    mode_value <- xi[i]
  }
  
}
print(mode_value)

