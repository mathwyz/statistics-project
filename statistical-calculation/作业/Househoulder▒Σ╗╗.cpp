#include<stdio.h>
#include<stdlib.h>
main()
{
	int n,m,i,j,k,nu=0;
	//输入矩阵A
	printf("请输入你要分解的矩阵的阶数:\n");
	scanf("%d",&n);
	scanf("%d",&m);
	float A[m][n];
	printf("请输入矩阵A:\n");
	for(i=0;i<=m-1;i++)
	for(j=0;j<=n-1;j++)
	   scanf("%f",&A[i][j]);
	printf("你所输入的矩阵是:\n");
	for(i=0;i<=m-1;i++)
	for(j=0;j<=n-1;j++)
	{
		nu++;
	    printf("%f\t",A[i][j]);
	    if(nu%n==0)printf("\n");
    }
	for(k=0;i<=n;)
	
	} 
