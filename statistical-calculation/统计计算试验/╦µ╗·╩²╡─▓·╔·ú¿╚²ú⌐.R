#多维正太分布

rmnorm<-function(n){
x<-rnorm(n)
x<-as.matrix(x)
return(x)}

#Markov链
rmarkov<-function(n,g){
x<-array(c(n,n,n,n),1)
for(i in 2:n)
r<-round(2*runif(3)-1)
x[,,,i]<-g(x[,,,i-1])+r
print(x[,,,i])
}

#Brown运动
rbrown<-function(n){
x<-array(c(n,n,n,n),1)
for(i in 2:n)
r<-round(2*runif(3)-1)
x[,,,i]<-x[,,,i-1]+r
print(x[,,,i])
}

