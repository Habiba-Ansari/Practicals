data<-c(1,2,3,3,4,5,6)

#mean of ungrouped data
mean(data)

#median of ungrouped data
median(data)

#mode of ungrouped data
mode1<-function(x){
  unique_x<-unique(x)
  unique_x[which.max(tabulate(match(x, unique_x)))]
}
mode1(data)


#grouped data
class<-list(c(0,10), c(10,20), c(20,30), c(30,40), c(40,50))
fi<-c(4, 7, 9, 6, 4)
xi<-sapply(class, function(c)(c[1]+c[2])/2)
sumfi<-sum(fi)

#mean of grouped data
mean<-sum(xi*fi)/sumfi
print(mean)

#median of grouped data
cfi<-cumsum(fi)
N<-sum(fi)/2
mediancli<-which(cfi>=N)[1]
medianclass<-class[[mediancli]]
cf<-ifelse(medianclass>1, cfi[mediancli-1])
f<-fi[mediancli]
l<-medianclass[1]
h<-medianclass[2]-medianclass[1]
print(median1<-l+((N-cf)/f)*h)

#mode of grouped data
modalcli<-which.max(fi)
modalclass<-class[[modalcli]]
l<-modalclass[1]
f1<-fi[modalcli]
f0<-fi[modalcli-1]
f2<-fi[modalcli+1]
h<-modalclass[2]-modalclass[1]
mode2<-l+((f1-f0)/(2*f1-f0-f2))*h
print(mode2)