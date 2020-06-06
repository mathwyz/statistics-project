#同余与线性同余法

LCG<-function(n,a,c,M,x1){
x<-array(n)
r<-array(n)
x[1]<-x1
r[1]<-x1/M
for(i in 2:n){
x[i]<-(a*x[i-1]+c)%%M
r[i]<-x[i]/M}
return(x)}

#混合同余法（混合式LGC）

hLCG1<-function(n,alpha,beita,L,x1){
a<-4*alpha+1
b<-2*beita+1
M<-2^L
x<-LCG(n,a,M,x1)
return(x)}

hLCG2<-function(n,L,x1){
M<-2^L
a<-8*(M/64*pi)+5
c<-2*(M/2*0.211324865)+1
x<-LCG(n,a,c,M,x1)
return(x)}

hLGC3<-function(n,x1){
return(hLCG2(n,31,x1),hLCG2(n,35,x1))}

#乘同余法（积式发生器）

cLCG1<-function(n,x1){
L<-31
return(hLCG(n,L,x1))}

#素数模乘同余法

PMMLCG1<-function(n,L,a,x1){             #利用溢出原理的素数模乘同余法

gcd<-function(a,b){
m<-a
n<-b
while(b!=0){
c=a%%b
a=b
b=c}
return(a)}

prime<-function(n){
x<-n-1
for(i in c(1:n-2)){
if(gcd(n,i)==1) x<-c(x,i)}
x<-sort(x)
return(x)
}

M<-max(prime(2^l))
c<-0
return(LCG(n,a,c,M,x1))}

PMMLCG2<-function(n,a,c,M,x1){                #利用溢出原理的素数模乘同余法
x<-array(n)
b<-round(M/a)
c<-M%%a
for(i in 1:n){
k0<-round(a*x[n-1]/M)
k1<-round(x[n-1]/b)
if(k1==k0){
x[n]<-a*(x[n-1]%%b)-k1*c}
else{
x[n]<-a*(x[n-1]%%b)-k1*c+M}}}

#参数检验

ctest<-function(x,lamba){
u1<-sqrt(12*length(x))*(mean(x)-1/2)
u2<-1/2*sqrt(45*length(x))*(mean(x)^2-1/3)
s^2<-1/length(x)*sum((x-1/2)^2)
u3<-sqrt(180*length(x))*(s^2-1/12)
if(abs(u1)<lamba&abs(u2)<lamba&abs(u3)<lamba){
print("产生的随机数的特征量与均匀总体的特征量没有显著差异")}
else{
print("产生的随机数的特征量与均匀总体的特征量有明显差异，不能认为它是均匀总体的简单样本")}}

#独立性检验

dtest<-function(x,m){
n<-length(x)
b<-1/n*sum((x-mean(x))^2)
for(j in 1:m){
a<-sum((x-mean(x))[1:n-j]*(x-mean(x))[j+1:n])
p[j]<-a/b}
u<-p*sqrt(n-j)
print(p)
print(u)
for(i in 1:m){
ks.test(u[i],"pnorm",0,1)}}

#组合规律检验

