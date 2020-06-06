#超拉丁方抽样

#抽拉丁方抽样

LHS<-function(n,s){
lhd<-sample(1:n)
for(j in 2:s){
lhd<-cbind(lhd,sample(1:n))}
for(k in 1:n){
for(j in 1:s){
lhd[k,j]<-(lhd[k,j]-runif(1))/n}}
return(lhd)}

#随机化正交阵列

require(lhs)
P<-randomLDS

#正交超拉丁方设计
