#矩阵的谱分解与奇异值分解算法

#Jacobi算法

Jacobi<-function(A,N,yipusino){
n<-nrow(A)
m<-ncol(A)
a<-array(dim=c(m,n,N),1)
u<-array(dim=c(m,n.N),1)
J<-array(dim=c(m,m,N),1)
a[,,0]<-A
u[,,0]<-diag(n)

while(max(!(a[i,j,k]<yipisino)||k<N)){
k=k+1

for(i in 1:n){
for(j in 1:m){
if(n>=i&i>j&j>=1){
if(a[i,j,k-1]>aijk-1)
aijk-1<-a[i,j,k-1]}}}

theta<-0.5*actan(aijk-1/(a[i,i,k-1]-a[j,j,k-1]))

c<-cos(theta)
d<-sin(theta)
J[,,k-1]<-diag(m)
J[i,i,k-1]<-c
J[j,j,k-1]<-c
J[i,j,k-1]<-d
J[j,i,k-1]=-d

A[,,k]<-J[,,k-1]%*%A[,,k-1]%*%t(J[,,k-1])
U[,,k]<-U[,,k-1]%*%t(J[,,k-1])
}
return(c(U[,,k],a[,,k]))}

#变限值循环循环Jacobi算法
Jacobi<-function(A，N){
n<-nrow(A)
m<-ncol(A)
a<-array(dim=c(m,n,N),1)
u<-array(dim=c(m,n.N),1)
J<-array(dim=c(m,m,N),1)
a[,,0]<-A
u[,,0]<-diag(n)

while(max(!(a[i,j,k]<yipisino)||k<N)){
k=k+1

yipusino<-sqrt(mean(A[,,k-1]))/(n*(n-1))

for(i in 1:n){
for(j in 1:m){
if(n>=i&i>j&j>=1){
if(a[i,j,k-1]>aijk-1)
aijk-1<-a[i,j,k-1]}}}

theta<-0.5*actan(aijk-1/(a[i,i,k-1]-a[j,j,k-1]))

c<-cos(theta)
d<-sin(theta)
J[,,k-1]<-diag(m)
J[i,i,k-1]<-c
J[j,j,k-1]<-c
J[i,j,k-1]<-d
J[j,i,k-1]=-d

A[,,k]<-J[,,k-1]%*%A[,,k-1]%*%t(J[,,k-1])
U[,,k]<-U[,,k-1]%*%t(J[,,k-1])
}
return(c(U[,,k],a[,,k]))}

#矩阵的奇异值分解

UVD<-function(A){
A<-as.matrix(A)
c(V,D)<-eigen(t(A)%*%A)
D<-sqrt(D)
V1<-V[,1:r]
U1<-A%*%V1%*%solve(D)
U<-rbind(U1,U2)
return(c(U,D,V))}


