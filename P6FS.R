n<-10
p<-0.7
k<-7
dbinom(k, n, p)
x<-0:n
ans1<-dbinom(x, n, p)
barplot(ans1, names.arg = x, col = ifelse(x == k, "red", "lightblue"),
        xlab = "Number of Successes (k)", ylab = "Probability", 
        main = "Binomial Distribution (n=10, p=0.7)")

lambda<-5
k<-3
t<-dpois(k, lambda)
print(t)
x<-0:15
prob<-dpois(x, lambda)
barplot(prob, names.arg = x, col = ifelse(x == k, "red", "lightblue"),
        xlab = "Number of Successes (k)", ylab = "Probability", 
        main = "Poisson Distribution", border = "white")

lambda<-1/5
x<-3
#pdf
dexp(x, rate=lambda)


#cdf
pexp(x, rate=lambda)
curve(dexp(x, rate = lambda), from = 0, to = 20, col = "blue", lwd = 2, 
      xlab = "x", ylab = "Density", main = "Exponential Distribution PDF & CDF")

curve(pexp(x, rate = lambda), from = 0, to = 20, col = "red", lwd = 2, add = TRUE)

legend("topright", legend = c("PDF", "CDF"), col = c("blue", "red"), lwd = 2)








lambda<-1/10
x<-4
dexp(x, rate=lambda)
#cdf
pexp(x, rate=lambda)
curve(dexp(x, rate = lambda), from = 0, to = 20, col = "blue", lwd = 2, 
      xlab = "x", ylab = "Density", main = "Exponential Distribution PDF & CDF")

curve(pexp(x, rate = lambda), from = 0, to = 20, col = "red", lwd = 2, add = TRUE)

legend("topright", legend = c("PDF", "CDF"), col = c("blue", "red"), lwd = 2)



#normal
x<-160
mean<-170
sd<-10
#cdf
prob1<-pnorm(x, mean=mean, sd=sd)
print(prob1)
curve(dnorm(x, mean = mean, sd = sd), from = 130, to =
        210, col = "green", lwd = 2,
      xlab = "Height (cm)", ylab = "Density", main = "Normal
Distribution")



#normal
x1<-4.8
x2<-5.2
mean<-5
sd<-0.2

#cdf
probability <- pnorm(x2, mean = mean, sd = sd) -
  pnorm(x1, mean = mean, sd = sd)
print(probability)
curve(dnorm(x, mean = mean, sd = sd), from = 4.8, to =
        5.2, col = "green", lwd = 2,
      xlab = "Height (cm)", ylab = "Density", main = "Normal
Distribution")



#uniform
n<-6
probability<-1/n
rolls<-sample(1:n, size=1000, replace= TRUE)
print(rolls)
frequencytable<-table(rolls)/ length(rolls)
print(frequencytable)

barplot(frequencytable, col="lightblue", 
        main="Relative Frequencies of Rolling Die", 
        xlab="Outcome", ylab="Relative Frequency")

abline(h=probability, col="red", lwd=2, lty=2)