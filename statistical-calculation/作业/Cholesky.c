#include<stdio.h>
#include<stdlib.h>
#include<math.h> 
main()
{
	int n,i,j,k,nu=0;
	//输入矩阵A
	printf("请输入你要分解的矩阵的阶数:\n");
	scanf("%d",&n);
	float A[n][n];
	float T[n][n]; 
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
    //矩阵A的Colesky分解及存在性检验
	for(i=0;i<=n-1;i++)
	for(j=i;j<=n-1;j++)
	{
		for(k=0;k<=i-1;k++)
		A[i][i]=A[i][i]-T[i][k]*T[i][k];
		T[i][i]=sqrt(A[i][i]);
		for(k=0;k<=i-1;k++)
		A[j][i]=A[i][j]-T[i][k]*T[j][k]; 
		T[j][i]=A[j][i]/T[i][i];
	} 
	 printf("根据计算矩阵T为：\n");
   for(i=0;i<=n-1;i++)
   for(j=0;j<=n-1;j++)
   {
   	  if(i>=j)printf("%f\t",T[i][j]);  
     	else printf("0.000000\t");
     	nu--;
     	if(nu%n==0)printf("\n");
   } 
}
