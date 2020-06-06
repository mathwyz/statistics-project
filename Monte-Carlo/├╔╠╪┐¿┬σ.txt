#Example1.9
LogLik<-function(theta){
log10(1/(pi*(1+(0-theta)^2))*1/(pi*(1+(5-theta)^2))*1/(pi*(1+(9-theta)^2)))}

plot(LogLik,-5,15,col="red")

#Example6.43
AR<-function(con,b1,n=1000){
#AR自回归型时间序列的模拟
x<-rnorm(n,0,1)#模拟白噪声
y<-0
y[1]<-con+x[1]
for(t in 2:n){ 
y[t]<-con+b1*y[t-1]+x[t]
}#构造一个ar型时间序列
plot.ts(y)
y
}
par(mfrow=c(2,2))
y<-AR(1,0.4)
y<-AR(1,0.8)
y<-AR(1,0.95)
y<-AR(1,1.01)