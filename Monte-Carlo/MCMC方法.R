#MCMC方法

#markov链的收敛

require(ggplot2)

x0<-rnorm(1,mean=10,sd=5)
x<-array(dim=40)
x[1]<-rnorm(1,mean=x0,sd=5)
for(i in 2:40){
x[i]<-rnorm(1,mean=x[i-1],sd=5)}

y<-1:40

data<-data.frame(x,y)
p<-ggplot(data,aes(x,y))+geom_point()+geom_line()

x0<-rnorm(1,mean=10,sd=5)
x<-array(dim=40)
x[1]<-rnorm(1,mean=x0,sd=5)
for(i in 2:40){
x[i]<-rnorm(1,mean=x[i-1],sd=5)}

data<-data.frame(x,y)
p<-ggplot(data,aes(x,y))+geom_point()+geom_line()+p

x0<-rnorm(1,mean=10,sd=5)
x<-array(dim=40)
x[1]<-rnorm(1,mean=x0,sd=5)
for(i in 2:40){
x[i]<-rnorm(1,mean=x[i-1],sd=5)}

data<-data.frame(x,y)
p<-ggplot(data,aes(x,y))+geom_point()+geom_line()+p

#Markov chain

N?=?10000??
signal?=?vector(length?=?N)??
signal[1]?=?0??
for?(i?in?2:N){??????
signal[i]?=?signal[i-1]?+?sample(c(-1,1),1)
}
plot(?signal,type?=?'l',col?=?'red')

#Gibbs抽样

Gibbs<-function(N,K,m1,m2,s1,s2)
{
p_y_x<-function(x,m1,m2,s1,s2){
return?(rnorm(1,m2+rho*s2/s1*(x-m1),sqrt(1-rho^2)*s2?))}
p_x_y<-function(y,m1,m2,s1,s2){
return??(rnorm(1,m1+rho*s1/s2*(y-m2),sqrt(1-rho^2)*s1?))}
x_res?=?vector(length?=?N)
y_res?=?vector(length?=?N)
rho=0.5
y=m2
for?(i in 1:N)
{
for(i in 1:K)
{
x=p_x_y(y,m1,m2,s1,s2)
y=p_y_x(x,m1,m2,s1,s2)
x_res[i]=x
y_res[i]=y
}
}
return(x)
return(y)}

#Metropolis-Hastings方法

MH<-function(N){
x<-vector(length=n)
x[1]=0

u<-runif(N)
m_sd<-5
freedom<-5

for(i in 2:N){
y<-rnorm(1,mean=x[i-1],sd<-m_sd)

P_accept<-dnorm(x[i-1],mean=y,sd=abs(2*y+1)/dnorm(y,mean=x[i-1],sd=abs(2*x[i-1]+1))
}
if((u[i]<-p_accept)){
x[i]=y}
else{
x[i]=x[i-1]
}
return(x)}