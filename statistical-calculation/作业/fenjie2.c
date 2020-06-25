#include<math.h> 
#include<stdio.h> 
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
    //矩阵A的Colesky分解及存在性检验
    for(k=1;k<=n;k++)
    for(j=k;j<=n;j++)
    for(i=k+1;k<=n;k++)
    {   if(j=k)A[j][k]=A[k][j]/sqrt(A[k][k]);
        else
		{
            A[j][k]=A[k][j]/sqrt(A[k][k]);
            A[i][j]=A[i][j]-A[i][k]*A[k][j]/A[k][k];
    
	 } 
}
	 printf("根据计算矩阵T为：\n");
   for(i=0;i<=n-1;i++)
   for(j=0;j<=n-1;j++)
   {
   	  if(i>=j)printf("%f\t",A[i][j]);  
     	else printf("0.000000\t");
     	nu--;
     	if(nu%n==0)printf("\n");
   } 
}
