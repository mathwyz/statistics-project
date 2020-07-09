function [fa,fb,fab] = F6( A )
%双因素方差分析
%2.6所需要的函数
%                                                   Designed by Yizhou Wang
%                                                       Sichuana University
%                                                            31.03.2017
[I,J,K]=size(A);
c=1/(I*J*K)*sum(sum(sum(A)));
a=1/(J*K)*[sum(A(:,:,1),2)+sum(A(:,:,2),2)+sum(A(:,:,3),2)];
b=1/(I*K)*[sum(sum(A(:,:,1)));sum(sum(A(:,:,2)));sum(sum(A(:,:,3)))];
d=1/K*[sum(A(:,:,1));sum(A(:,:,2));sum(A(:,:,3))];
sst=0;
for i=1:I
    for j=1:J
        for k=1:K
            sst=sst+(A(i,j,k)-c)^2;
        end
    end
end
%A
ssa=0;
for i=1:3
    ssa=ssa+J*K*(a(i,1)-c)^2;
end
%B
ssb=0;
for j=1:3
    ssb=ssb+I*K*(b(j,1)-c)^2;
end
%AXB
ssab=0;
for i=1:I
    for j=1:J
        ssab=ssab+K*(d(i,j)-a(i,1)-b(j,1)+c)^2;
    end
end

sse=0;
for i=1:I
    for j=1:J
        for k=1:K
            sse=(A(i,k,j)-d(i,j))^2;
        end
    end
end
fa=(ssa/(I-1))/(sse/I*J*(K-1));
fb=(ssb/(J-1))/(sse/I*J*(K-1));
fab=(ssab/(I-1)*(K-1))/(sse/I*J*(K-1));
end

