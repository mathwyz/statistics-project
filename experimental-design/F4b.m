function [ F ] = F4b( A )
%随机效应线性可加模型
%2.4第二问所需要的函数
%                                                   Designed by Yizhou Wang
%                                                       Sichuana University
%                                                            31.03.2017[m,n]=size(A);
b=1/n*sum(A,2);
c=1/m*sum(b);
SSE=0;SSA=0;
for i=1:m
    for j=1:n
        SSE=SSE+(A(i,j)-b(i,1))^2;
        SSA=SSA+(b(i,1)-c)^2;
    end
end
F=(SSE*(m-1))/(SSA*(m*n-m));

end
