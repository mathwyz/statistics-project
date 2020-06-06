function [ygu,zhu,sigma ] = F2a( A,X )
%二次回归模型
%2.2第一问所需要的函数
%                                                   Designed by Yizhou Wang
%                                                       Sichuana University
%                                                            31.03.2017
[m,n]=size(A);
a=1/m*sum(A);
b=1/n*sum(a);
G=zeros(m*n,3);
y=zeros(m*n,1);
for i=1:m*n
    G(i,1)=1;
end
for i=1:n
    for j=1:m
    y((i-1)*m+j,1)=A(j,i);
    G((i-1)*m+j,2)=X(i,1);
    G((i-1)*m+j,3)=X(i,1)^2;
    end
    
end
B=zeros(3,1);
B=inv(G'*G)*G'*y;
for i=1:n
    ygu(1,i)=B(1,1)+B(2,1)*X(i,1)+B(3,1)*X(i,1)^2;
end
zhu=ygu-a;
sigma=0;
for i=1:n
    for j=1:m
        sigma=(A(j,i)-ygu(1,i))^2;
    end
end
sigma=1/(m*n-n)*sigma;
end

