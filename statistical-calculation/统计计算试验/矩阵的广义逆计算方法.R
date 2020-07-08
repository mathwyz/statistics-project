#矩阵的广义逆计算方法

#利用A的奇异值分解式

jiahaoni<-function(A){
A<-as.matrix(A)

n=nrow(A)
m=ncol(A)

SVD<-svd(A)
d<-SVD$d
u<-SVD$u
V<-SVD$v
D<-array(dim=c(m,n),1)

for(i in 1:length(d))
D[i,i]<-1/d[i]
Ajia<=V%*%D%*%t(U)

return(Ajia)}

#利用A的正交-三角分解

jiahaoni<-function(A){
A<-as.matrix(A)

n<-nrow(A)
m<-ncol(A)
QR<-qr(A)
Q<-QR$qr
rank<-QR$rank

#满秩分解方法


#Greville阶级递推算法












