#include<stdio.h>
#include<stdlib.h>
main()
{
	int n,i,j,k,nu=0;
	//输入矩阵A
	printf("请输入你要分解的矩阵的阶数:\n");
	scanf("%d",&n);
	float A[n][n];
	printf("请输入矩阵A:\n");
	for(i=0;i<=n-1;i++)
	for(j=0;j<=n-1;j++)
	   scanf("%f",&A[i][j]);
	printf("你所输入的矩阵是:\n");
	for(i=0;i<=n-1;i++)
	for(j=0;j<=n-1;j++)
	{
		nu++;
	    printf("%f\t",A[i][j]);
	    if(nu%n==0)printf("\n");
    }
    //矩阵A的LR分解和验证 
	for(i=0;i<=n-1;i++)
	for(j=i;j<=n-1;j++)
	{
		for(k=0;k<=i-1;k++)
	    {
		   A[i][j]=A[i][j]-A[i][k]*A[k][j];
		   A[j][i]=A[j][i]-A[j][k]*A[k][i];
	    } 
	 if(A[i][i]==0)
	 {
	 	printf("矩阵A不存在LR分解");
		exit (0); 
	 }
	 else A[j][i]=A[j][i]/A[i][i];
   }
   //输出矩阵R和L 
    printf("根据计算矩阵L为：\n");
for(i=0;i<=n-1;i++)
  for(j=0;j<=n-1;j++)
   {
   	  if(i>=j)printf("%f\t",A[i][j]);
      else printf("0.000000\t");
     	nu++;
     	if(nu%n==0)printf("\n");
   } 
   printf("根据计算矩阵D为：\n");
   for(i=0;i<=n-1;i++)
   for(j=0;j<=n-1;j++)
   {
   	if(i>j) printf("0.000000\t");
    else if(i<j)
	printf("0.000000\t");
	else printf("%f\t",A[i][i]);
    nu--;
    if(nu%n==0)printf("\n");
   }  
   printf("根据计算矩阵R*为：\n");
   for(i=0;i<=n-1;i++)
   for(j=0;j<=n-1;j++)
  { A[i][j]=A[i][j]/A[i][i];
   	    if(i<=j)printf("%f\t",A[i][j]);
        else printf("0.000000\t");
        nu++;
        if(nu%n==0)printf("\n");
   }
  
   return 0;
}

