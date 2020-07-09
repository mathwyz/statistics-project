function [ cancha] = F7(A,X,Y)
%回归模型拟合
%2.7所需要的函数
%                                                   Designed by Yizhou Wang
%                                                       Sichuana University
%                                                            31.03.2017
[I,J,R]=size(A);
Z=zeros(I*J*R,1);
G=zeros(I*J*R,3);
B=zeros(3,1);
for i=1:I
    for r=1:R
        for j=1:J
            Z(((i-1)*R*J+(r-1)*J+j),1)=A(i,j,r);
            G(((i-1)*R*J+(r-1)*J+j),1)=1;
            G(((i-1)*R*J+(r-1)*J+j),2)=X(1,i);
            G(((i-1)*R*J+(r-1)*J+j),3)=Y(1,r);           
        end
    end
end

%预测
B=inv(G'*G)*G'*Z;
for i=1:I
    for j=1:J
        Zgu(i,j)=B(1,1)+B(2,1)*X(1,i)+B(3,1)*Y(1,j);
    end
end

%估计误差方差
sigma=0;
for i=1:I
    for r=1:R
        sigma=sigma+(Zgu(i,r)-1/J*sum(A(i,:,r)))^2;
        cancha(i,r)=Zgu(i,r)-1/J*sum(A(i,:,r));
    end
end

sigma=1/(I*J)*sigma;

        
        



            
    




end
