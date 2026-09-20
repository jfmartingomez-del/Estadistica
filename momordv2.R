print("Introduce the data here: ")
data <- sort(scan())

print("Introduce the order r")
r <- scan()

c <- median(data)

xi <- unique(data)
ni <- c()

for(x in xi) {
  ni <- c(ni, sum(data == x)) 
}

mr <- 0

for(i in 1:length(ni)) {
  mr <- mr + (ni[i] * (xi[i] - c)^r)
}

mr <- mr / length(data)

