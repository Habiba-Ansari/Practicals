f1<- expression(3*x^4-4*x^3)
f1
dif<-D(f1, 'x')
dif
polyroot(c(0, 12, -12))
x<--1
eval(12*x^3-12*x^2)
x<-1/2
eval(12*x^3-12*x^2)
x<- 2
eval(12*x^3-12*x^2)
fun= function(x)(3*x^4-4*x^3)
curve(fun, xlim=c(-3, 3), ylim=c(-10, 20))