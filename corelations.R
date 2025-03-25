#data
x<-c(10, 20, 30, 40, 50)
y<-c(5, 10, 15, 20, 25)

#Karl pearson correlation
correlation<-cor(x, y, method = "pearson")
if (correlation>0){
  cat("positive correlation")
} else if(correlation<0){
  cat("negetative correlation")
} else{
  cat("no correlation")
}
cat("correlation of the data is", correlation)


#graph plot
plot(x, y, xlim = c(0, 55), ylim = c(0, 30), 
     main = "Karl Pearson Correlation", 
     xlab = "Indepent variable", 
     ylab = "Dependent variable", 
     pch=19, col="blue", cex=1.5)


#csv file reading
data1<-csv.read("path")
head(data1)
correlation1<-cor(data$Hieght, data$Wieght, 
                  method = "pearson")