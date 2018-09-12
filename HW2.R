t=c(0.0, 0.67, 0.84, 1.28, 1.65, 2.32, 2.58, 3.09, 3.72)

x=rnorm(100, 0, 1)
for (i in 1:length(t)){
  approximation[i]<- sum(x<=t[i])/100
}
true_value<- pnorm(t, 0, 1)
dat1<- cbind(true_value,approximation)

x=rnorm(1000, 0, 1)
for (i in 1:length(t)){
  approximation[i]<- sum(x<=t[i])/1000
}
true_value<- pnorm(t, 0, 1)
dat2<-cbind(true_value,approximation)


x=rnorm(10000, 0, 1)
for (i in 1:length(t)){
  approximation[i]<- sum(x<=t[i])/10000
}
true_value<- pnorm(t, 0, 1)
dat3<-cbind(true_value,approximation)
