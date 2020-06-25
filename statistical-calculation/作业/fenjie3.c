#include<stdio.h>
#include<stdlib.h>
#include<math.h> 
main()
{
	int n,i,j,k,nu=0;
	//输入矩阵A
	printf("请输入你要分解的矩阵的阶数:\n");
	scanf("%d",&n);
	float A[n*(n+1)/2];
	printf("请输入矩阵A:\n");
	for(i=0;i<=n*(n+1)/2-1;i++)
	   scanf("%f",&A[i]);
	printf("你所输入的矩阵是:\n");
	for(i=0;i<=n-1;i++)
	for(j=0;j<=n-1;j++)
	{
		nu++;
	    if(i>=j)printf("%f\t",A[(i*i+i)/2+j]);
	    else printf("%f\t",A[(j*j+j)/2+i]);
	    if(nu%n==0)printf("\n");
    }
     //矩阵A的Colesky分解及存在性检验
   for(k=1;k<=n;k++)
    for(j=k;j<=n;j++)
    for(i=k+1;k<=n;k++)
    {   if(j=k)A[j*(j+1)+k]=A[k*(k+1)+j]/sqrt(A[k*(k+1)+k]);
        else
		{
           A[j*(j+1)+k]=A[k*(k+1)+j]/sqrt(A[k*(k+1)+k]);
            A[i*(i+1)+j]=A[i*(i+1)+j]-A[i*(i+1)+k]*A[k*(k+1)+j]/A[k*(k+1)+k];
    
	 } 
}
	 printf("根据计算矩阵T为：\n");
   	for(i=0;i<=n-1;i++)
	for(j=0;j<=n-1;j++)
	{
		if(i>j)printf("%f\t",A[i*(i+1)+j]);  
     	else printf("0.000000\t");
     	nu--;
     	if(nu%n==0)printf("\n");
    }
}
