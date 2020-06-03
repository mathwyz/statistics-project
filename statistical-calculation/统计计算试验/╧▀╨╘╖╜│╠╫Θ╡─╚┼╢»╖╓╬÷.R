#线性方程组的扰动分析

#系数扰动对最小二乘解的影响

A<-matrix(c(1,-1,1,1),nrow=2)
b<-c(0,2)
x<-solve(A,b)
A<-A+matrix(c(0,0,0,1.0005),nrow=2)
x2<-solve(A,b)

B<-matrix(c(10,-10,-1,1.0015),nrow=2)
b<-c(0,0.001)
x3<-solve(B,b)
B<-B+matrix(c(0,0,0,1.0005),nrow=2)
x4<-solve(B,b)

#Hilbert矩阵

hilbert<-function(n){
n <- as.integer(n)
i <- seq_len(n)
new("dpoMatrix", x = c(1/outer(i - 1L, i, "+")), Dim = c(n, n))}

cond<-function(A){
cond<-fanshu(jiahaoni(A))*fanshu(A)
}

#广义逆算法与正规方程算法的比较
