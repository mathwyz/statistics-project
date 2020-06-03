#矩阵的QR分解

#GS算法

fanshu<-function(x){
fanshu<-sqrt(t(x)%*%x)}

GS<-function(A){
n<-nrow(A)
m<-ncol(A)
Q<-array(dim=c(m,m),0)
R<-array(dim=c(m,n),0)
R[1,1]=fanshu(A[,1])
Q[,1]<-A[,1]/R[1,1]
for(k in 2:m){
R[i,k]<-t(Q[i,])%*%A[,k]
rik<-R[1:k-1,k]
R[k,k]<-fanshu(A[,k]-t(rik)%*%q[i])
Q[,k]<-(A[,k]-t(rik)%*%q[i])/R[k,k]}
return(c(Q,R))}

#MGS算法

MGS<-function(A){
n<-nrow(A)
m<-ncol(A)
a<-array(dim=c(n,m,m),1)
Q<-array(dim=c(m,m),0)
R<-array(dim=c(m,n),0)
a[,,1]<-A
for(k in 1:m-1){
R[k,k]<-fanshu(a[,k,k])
Q[,k]<-a[,k,k]/R[k,k]
for(j in k+1:m){
R[k,j]<-t(Q[,k])%*%a[,j,k]
a[,j,k+1]<-a[,j,k]-R[k,j]%*%Q[,k]}}
R[m,m]=fanshu(a[,m,m])
Q[,m]<-a[,m,m]/R[m,m]
return(c(R,Q))}

#利用Householder变换的QR分解

Householder<-function(A){
n<-nrow(A)
m<-ncol(A)
r<-rank(A)
a<-array(dim=c(m,n,m),1)
H<-array(dim=c(m,m,m),1)

sk2<-sum((a[,k]*a[,k])[k:n])
baitak<-sk2+sqrt(sk2)*abs(a[k,k])
hk<-a[k,k]-sqrt(sk2)*sign(a[k,k])
for(i in k+1:n){
hk<-rbind(uk,a[i,k])}
uk<-t(hk)
H[,,k]<-diag(k)-uk%*%t(uk)/baitak

for(k in 2:m){
sk2<-sum((a[,k,m]*a[,k,m])[k:n])
baitak<-sk2+sqrt(sk2)*abs(a[k,k,k-1])
hk<-a[k,k,k-1]-sqrt(sk2)*sign(a[k,k,k-1])
for(i in k+1:n){
hk<-rbind(uk,a[i,k,k-1])}
uk<-t(hk)
H[,,k]<-diag(k)-uk%*%t(uk)/baitak
A[,,k]<-H[,,k]%*%A[,,k-1]}
retutn(A[,,k])}

#Givens变换

Givens<-function(A){
n<-nrow(A)
m<-ncol(A)
r<-rank(A)
a<-array(dim=c(n,m,m),1)

a[,,1]<-A
for(k in 2:m){
for(i in k+1:n){
s<-sqrt(a[k,k,k-1]^2+a[i,k,k-1]^2)
if(s!=0){
c<-a[k,k,k-1]/s
d<-a[i,k,k-1]/s}
else{
c=1
d=0}
for(j in k+1：m){
a[k,j,k]<-c*(a[k,j,k-1])+d*(a[i,j,k-1])
a[i,j,k]<-d*(a[k,j,k-1])+c*(a[i,j,k-1])}
return(A[,,k])}












