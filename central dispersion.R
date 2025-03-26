data <- c(10, 20, 30, 40, 50)

sd(data)      
var(data)     
range(data)   
diff(range(data))

xi <- c(10, 20, 30, 40, 50)  # Class midpoints
fi <- c(5, 8, 15, 10, 7) 

mean <- sum(xi * fi) / sum(fi)
variance<- sum(fi * (xi - mean)^2) / sum(fi)
sd<- sqrt(variance)