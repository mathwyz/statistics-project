function [ results1,means1,results2,means2] = F3( A )
%2.3所需要的函数
%                                                   Designed by Yizhou Wang
%                                                       Sichuana University
%                                                            31.03.2017
%bonferroni  tukey法多重检验
[p,~,stats] = anova1(A);
%bonferronifa法
[results1,means1] = multcompare(stats,'CType','bonferroni');
%tukey法
[results2,means2] = multcompare(stats, 'CType','hsd');
p=p;
end

