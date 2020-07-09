function [y,x]=F1a( A )
%2.1第一问所需要的函数
%                                                   Designed by Yizhou Wang
%                                                       Sichuana University
%                                                            31.03.2017
[m,n]=size(A);
a=sum(A)/m;
b=1/n*sum(A,2);
c=1/n*sum(a);
for i=1:n
    y(1,i)=a(1,i)-c;
end
x=0;
for i=1:n
    for j=1:m
       x=x+[A(j,i)-a(1,i)]^2;
    end
end
x=1/(m*n-m)*x;
end

