#常见的偏差

#（A）中心化偏差（CD）

CD<-function(P)
{

 n<-nrow(P)
 s<-ncol(P)

 a<-(13/12)^s

 B<-array(dim=n)

 for(i in 1:n)
 {
  B[i]<-prob(1+0.5*abs(P[i,]-0.5)-0.5*(P[i,]-0.5)^2)
  }

 b=-（2/n）*sum(B)

 C<-array(dim=c(n,n))
 for(i in 1:n)
 {
  for(k in 1:n)
  {
   B[i,k]<-prob(-1+0.5*(P[i,]-0.5)+0.5*(P[k,]-0.5)-0.5*abs(P[i,]-P[k,]))
   } 
  }
  c<-(1/n^2)sum(C)

  CD<-sqrt(a+b+c)
  return(CD)
}

#(B)可卷偏差（WD）

WD<-function(P){
n<-nrow(P)
s<-ncol(P)

a<--(4/3)^s

b<-（1/n）*（3/2)^s

C<-array(dim=c(n,n))
for(i in 1:n){
for(k in 1:n){
B[i,k]<-prob(3/2-abs(P[i,]-P[k,])+(P[i,]-P[k,])^2))}}
c<-(1/n^2)sum(C)

WD<-sqrt(a+b+c)
return(WD)}

#（D）离散偏差（DD）

MD<-function(P){
n<-nrow(P)
s<-ncol(P)

a<-(4/3)^s

B<-array(dim=n)
for(i in 1:n){
B[i]<-prob(3-P[i,]^2)}
b<--（2^(1-s)/n）*sum(B)

C<-array(dim=c(n,n))
for(i in 1:n){
for(l in 1:n){
d<-array(dim=s)
for(j in 1:s){
d[j]<-2-max(P[i,j],P[l,j])
B[i,k]<-prob(d)}}
c<-(1/n^2)sum(C)

MD<-sqrt(a+b+c)
return(MD)}


























