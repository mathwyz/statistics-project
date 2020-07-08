#变换抽样法
rbinom<-function(n,p){
x<-runif(n)
rbinom<-qbinom(x,1,p)
return(rbinom)}

rmultinom<-function(n,p,q){
x<-runif(n)
rmultinom<-qbinom(x,q,p)
return(rmultinom)}

rpisson<-function(n,k){
x<-runif(n)
rpisson<-qpois(x,k)
return(rpisson)}

rnorm<-function(n,a,sigma){
x<-runif(n)
rnorm<-qnorm(x,mean=a,sd=sigma)
return(rnorm)}

rexp<-function(n,lamda){
x<-runif(n)
rexp<-q(x,rate=lamda)
return(rexp)}

#舍选抽样法
rbeita<-function(a,b){
D<-1/beta(a,b)*((a-1)/(a+b-2))^(a-1)*((b-1)/(a+b-2))^(b-1)
x<-runif(1)
r<-runif(1)
while(r<=dbeta(x)/d)
z<-x
return(z)}

rbnorm<-function(){
r<-runif(1)
r1<-runif(1)
x=-log(r1)
y=-log(r)
while((x-1)^2/2<=y)
z<-x
return(z)}

rp<-function(){
r1<-runif(1)
r2<-runif(2)
u<-r1
v<-2*r2-1
while(u^2+v^2<=1)
z<-u^2-v^2
y<-u^2+v^2
x<-z/y
return(x)}

#复合舍选抽样法

rfhsx<-function(){
p<-runif(1)
if(p<=0.8638){
x<-2*(sum(runif(3))-1.5)}
else{
if(p<=0.8638+0.1107){
x<-1.5*(sum(runif(2))-1)}
else{
if(p<=0.8638+0.1107+0.0228002039){
v=1
u=0
while(v<g(u)){
r1<-runif(1)
r2<-runif(2)
u<-6*r1-3
v<-0.358*r2
g<-function(u){
u<-abs(u)
if(u<1){
g=17.49731196*exp(-u^2/2)+2.15787544(u-1.5)+4.73570326(u^2-3)}
else{
if(u<1.5){
g=17.49731196*exp(-u^2/2)+2.15787544(u-1.5)-2.36785163(3-u^2)^2}
else{
if(u<3){
g=17.49731196*exp(-u^2/2)-2.36785163(3-u^2)^2}
else{g=0}
return(g)}}}}}
else{
s=0
t=0
while(s>3&t>3){
r<-runif(100)
v<-2*r-1
w<-v[1:99]^2+v[2:100]^2
for(i in 1:99)
if(w[i]<=1){
w<-w[i]
v1<-v[i]
v2<-v[i+1] 
break}
s<-v1*sqrt((9-2*log(w))/w)
t<-v2*sqrt((9-2*log(w))/w)
if(sqrt(s)>=3)x<-s
else x<-t}}}}}








