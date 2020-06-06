#好格子点法及其推广

#好格子点法
glpm<-function(n,s){

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

H<-prime(n)
if(length(H)>=s){
M<-choose(length(H)-1,s-1)
h<-combn(H,s)
h<-h[,which(h[1,]==1)]
h<-t(h)
U<-array(1,dim<-c(n,s,M))
cd<-array(dim=M)

for(k in 1:M){
for(i in 1:n){
for(j in 1:s){
if((i*h[k,j])%%n==0){U[i,j,k]<-n}
else{
U[i,j,k]<-(i*h[k,j])%%n}}}}

for(k in 1:M)
{
u<-as.matrix(U[,,k])
cd[k]<-CD(u)}
best.U<-U[,,which(cd[]==min(cd))]
}
else {print("不能用好格子点法")}
return(best.U)}

#修正好格子点法

cplgm<-function(n,s){
r<-length(prime(n))/n
if(r>0.5){
best.U<-glpm(n,s)}
else{
U<-glpm(n+1,s)
best.U<-u[1:n,]}
return(best.U)}

#方幂好格子点法

fglpm<-function(n,s){

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

A<-function(n){
H<-prime(n)
l<-length(prime(n)) 

for(i in 1:l){ 

a<-array(dim=s)
for(j in 1:s){
a[j]<-H[i]%%(a^j)}

for(j in 1:s){
for(k in 1:j){
if(a[k]==a[j]){
H<-H[-i]}
break}}
}
return(H)}

A<-A(n)
if(length(A)>=s){
M<-choose(length(H)-1,s-1)
h<-combn(A,s)
h<-h[,which(h[1,]==1)]
h<-t(h)
U<-array(1,dim<-c(n,s,M))
cd<-array(dim=M)

for(k in 1:M){
for(i in 1:n){
for(j in 1:s){
if((i*h[k,j]^j-1)%%n==0){U[i,j,k]<-n}
else{
U[i,j,k]<-(i*h[k,j]^j-1)%%n}}}}

for(k in 1:M)
{
u<-as.matrix(U[,,k])
cd[k]<-CD(u)}
best.U<-U[,,which(cd[]==min(cd))]
}
else {print("不能用好格子点法")}
return(best.U)}

#修正的方幂好格子点法

cfplgm<-function(n,s,a){
p<-prime(n)
if(p>a){
best.U<-fglpm(n,s)}
else{
U<-fglpm(n+1,s)
best.U<-u[1:n,]}
return(best.U)}

#切割法(不会做了)

qiege<-function(n,s){

  #求比n大且最接近n的素数
p<-function(n){

prime<-function(n){
x<-n-1
for(i in c(1:n-2)){
if(gcd(n,i)==1) x<-c(x,i)}
x<-sort(x)
return(x)
}

while(lengh(prime(i)=i)){
i=n
i=i+1}
p<=i
return(p)}

  #初始设计

U<-fplgm(p,s)

  #行排列

Ul<-array(dim=c(n,s,s))
Ulm<-array(dim=c(p,s,s,p))
for(l in 1:s){
Ul[,,l]<-order(U[,l])
for(m in 1:p){
for(i in 1:p){
for(j in 1:s){
if(m>n){Ulm[i,j,l,m]<-Ul[k+m-n-1,j,l]}
if(m<=n&k<m){Ulm[i,j,k,m]<-Ul[k,j,l]} 
if(m<=n&k>m){Ulm[i,j,k,m]<-Ul[k+p-n,j,l]}
}

U<-array(dim=(n,s,s,p))

for(l in 1:s){
for(m in 1:p){
U[,,l,m]<-order(U[,,l,m][,j])}}}



















