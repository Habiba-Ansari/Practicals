x<-c(10, 20, 30, 40, 50)
y<-c(20, 40, 60, 80, 100)

model<-lm(y~x)
summary(model)

plot(x, y, xlab = "x values", 
     ylab = "y values", 
     main = "Regression", 
     pch = 16, col = "blue")
abline(model, col = "red")

#prediction code
newx<-data.frame(x=c(150, 170, 120))
newy<-predict(model, newx)
print(newy)

#plot prediction
points(newx$x, newy, col = "green", pch = 16, cex=1.5)
text(newx$x, newy, labels=round(newy, 2), pos=3, col="green")


#csv data
data<-read.csv("path")
x1<-data$Hieght
y1<-data$Wieght
model1<-lm(y~x)
summary(model1)