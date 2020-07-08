#Buffon试验

Buffon<-function(N,a,l){
x<-runif(N,min=0,max=a/2)
phi<-runif(N,min=0,max=pi)
for(i in 1:N){
if(X[i]<=l/2*sin(phi[i]))
M=M+1}
mpi<-2*l*N/(a*M)
return(mpi)}

#随机投点法

rsjtd<-function(N,f,a,b,c,d){
m<-0
s0<-(b-a)*(d-c)
for(n in 0:N){
kesi<-runif(1)
ita<-runif(1)
phi<-1/(d-c)*(f(a+(b-a)*kesi)-c)
if(ita<=phi)m=m+1}
theta<-m/N
theta<-s0*theta+c*(b-a)
return(theta)}

#蒙特卡洛方法

pjzhgj<-function(N,f){
x<-runif(N)
y<-f(x)
return(mean(y))}

zhychy<-function(N,f,g){
r<-runif(N)
x<-sqrt(3*r+1)-1
theta<-f(x)/g(x)
return(mean(theta))}
