#矩阵的三角分解和算法

#LR分解

LR<-function(A){
if(nrow(A)==ncol(A)){
n<-nrow(A)
L<-diag(n)
R<-array(dim=c(n,n),0)
for(i in 2:n){
for(j in i:n){
for(k in 1:i-1){
R[i,j]=A[i,j]-L[i,k]*R[k,j]
L[j,i]=A[j,i]-L[j,k]*R[k,j]}
L[j,i]=L[j,i]/R[i,i]}}
return(c(L,R))}
else print("矩阵不是方阵")}

#LR分解（节约空间）

LR<-function(A){
if(nrow(A)==ncol(A)){
n<-nrow(A)
for(i in 2:n){
for(j in i:n){
for(k in 1:i-1){
A[i,j]=A[i,j]-A[i,k]*A[k,j]
A[j,i]=A[j,i]-A[j,k]*A[k,j]}
A[j,i]=A[j,i]/A[i,i]}}
L<-diag(n)
R<-array(dim=c(n,n),0)
for(i in 1:n){
for(j in 1:n){
if(i>j)L[i,j]<-A[i,j]
if(i<j)R[i,j]<-A[i,j]}}
return(c(L,R))}}

#回代法解方程

#下三角矩阵

B<-function(T,b){
n=length(b)
B=array[n]
B[1]=b[1]/T[1,1]
for(i in 2:n){
Bk=b[1:i-1]
tik=T[i,1:i-1]
B[i]=（b[i]-Bk%*%tik)/T[i,i]}

#上三角矩阵

x<-function(R,B){
n<-length(B)
x[n]<-B[n]/R[n,n]
for(i in n-1:1){
xk<-x[i+1:n]
rik<-R[i,i+1:n]
x[i]<-(B[i]-xk%*%t(rik))/R[i,i]}
return(x)}

#矩阵求逆

Xni<-function(X){
c(L,R)<-LR(X)
n<-nrow(X)
b<-array(dim=n,0)
b[i]=1
B<-B(L,b)
Xni<-b(R,B)
for(i in 2:n)
b<-array(dim=n,0)
b[i]=1
B<-B(L,b)
x<-b(R,B)
Xni<-rbind(Xni,x)}

#LDR分解

LDR<-function(A){
c(L,R)<-LR(A)
D<-diag(n)
for(i in 1:n)
D[i,i]=R[i,i]
R<-solve(D)%*%R
return(c(L,D,R))}

#Cholesky分解

#直接推算法

Cholesky<-function(A){
if(nrow(A)==ncol(A)){
T<-matrix(o,nrow=n,ncol=n)
for(i in 1:n){
for(j in i+1:n){
ti<-T[i,1:i-1]
tj<-T[j,1:i-1]
T[i,i]=sqrt(A[i,i]-sum(t^2))
T[j,i]=(A[i,j]-ti%*%t(tj))/T[i,i]}}}
return(T)}

#顺序Cholesky分解算法或称平方根算法

Cholesky<-function(A){
if(nrow(A)==ncol(A)){
for(k in 1:n){
for(j in k:n)
A[j,k]<-A[k,j]/sqrt(A[k,k])
for(i in k:n){
for(j in k:n){
A[i,j]<-A[i,j]-A[i,k]*A[k,j]/A[k,k]}}}
return(A)}
else print("A不是方阵")}
