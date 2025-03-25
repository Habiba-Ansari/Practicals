f2 <- expression(x^3 - 3*x^2 + 2*x) 
d2f <- D(D(f2, 'x'), 'x')
d2f

zeropoint<- polyroot(c(2, -6, 3))
zeropoint

x = -1
eval(6*x - 6)

x = 2
eval(6*x - 6)

x = 0.5
eval(6*x - 6)

# Plot function
fun2 <- function(x) (x^3 - 3*x^2 + 2*x)
curve(fun2, xlim=c(-3, 4), ylim=c(-10, 10))
