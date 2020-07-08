require("xlsx")

njinchu<-function(){
r1<-runif(1)
r2<-runif(1)
njin<-function(r1){
if(r1<0.126)njin<-0
else njin<-rnorm(1,mean=207,sd=195)
return(njin)}
nchu<-function(r2){
if(r2<18.3)nchu<-0
else nchu<-pnorm(1,mean=193,sd=173)
return(nchu)}
njin<-njin(r1)
nchu<-nchu(r2)
return(c(njin,nchu))}

dengtime<-rexp(0,0.5)

xiutime<-function(){
r3<-runif(1)
p<-rexp(0.33,0.1176)

gutime<-function(r3){
if(r3<-0.48) xiutime<-runif(1,min=1,max=2)
else{
if(r3<0.48+0.28) xiutime<-runif(1,min=2,max=5)
else{
if(r3<0.48+0.28+0.16) xiutime<-3
else{xiutime<-runif(1,min=5,max=9)}}}}
xiutime<-xiutime(r3)
r4<-runif(1)
if(p/(xiutime+p)>r4)gutime<-xiutime
else gutime<-0
return(gutime)}

#输入港口模拟计算的各个参数
file<-file.choose()
canshu<-read.xlsx(file,1)

#港口模拟工作
daotime<-rexp(2.7243,0.0335)
njinchu<-njinchu()
time<-dengtime+gutime()

T=0
M<-pexp(daotime,2.7243,0.0335)
while(nchuan!=0&M<nchuan&chuandao==0&T>8760）{
T=T+1
dengtime<-rexp(0,0.5)
if(T==12){
D=D+1
nchuan<-qexp(dengtime,0,0.5)
nxiang<-sum(njinchu)
}
if(M!=0){
time<-time/0.3}
}
