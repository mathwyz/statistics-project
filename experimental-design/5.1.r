x=seq(from=0,to=2,by=2);x1=c(x,x,x,x,x,x)
x=seq(from=0,to=2,by=1);x2=c(x,x,x,x)
x=seq(from=0,to=2,by=2/3);x3=c(x,x,x)
x=seq(from=0,to=2,by=2/5);x4=c(x,x)
x5=seq(from=0,to=2,by=2/11)

y1=1-exp(-2*x1^2)+rnorm(12,sd=0.15)
y2=1-exp(-2*x2^2)+rnorm(12,sd=0.15)
y3=1-exp(-2*x3^2)+rnorm(12,sd=0.15)
y4=1-exp(-2*x4^2)+rnorm(12,sd=0.15)
y5=1-exp(-2*x5^2)+rnorm(12,sd=0.15)

split.screen(c(3,2))
screen(1)
plot(x1,y1)
screen(2)
plot(x2,y2)
screen(3)
plot(x3,y3)
screen(4)
plot(x4,y4)
screen(5)
plot(x5,y5)

lm11=lm(y1~x1);
lm21=lm(y2~x2);lm22=lm(y2~poly(x2,2));
lm31=lm(y3~x3);lm32=lm(y3~poly(x3,2));lm33=lm(y3~poly(x3,3));
lm41=lm(y4~x4);lm42=lm(y4~poly(x4,2));lm43=lm(y4~poly(x4,3));lm44=lm(y4~poly(x4,4))
lm51=lm(y5~x5);lm52=lm(y5~poly(x5,2));lm53=lm(y5~poly(x5,3));lm54=lm(y5~poly(x5,4))

plot(x1,y1,main='第一种设计')
lines(x1,predict(lm11),col='red')
plot(x2,y2,main='第二种设计')
lines(x2,predict(lm21),col='1')
lines(x2,predict(lm22),col='2')
plot(x3,y3,main='第三种设计')
lines(x3,predict(lm31),col='1')
lines(x3,predict(lm32),col='2')
lines(x3,predict(lm33),col='3')
plot(x4,y4,main='第四种设计')
lines(x4,predict(lm41),col='1')
lines(x4,predict(lm42),col='2')
lines(x4,predict(lm43),col='3')
lines(x4,predict(lm44),col='4')
plot(x5,y5,main='第五种设计')
lines(x5,predict(lm51),col='1')
lines(x5,predict(lm52),col='2')
lines(x5,predict(lm53),col='3')
lines(x5,predict(lm54),col='4')

x=seq(0,2,length.out=1000)
noise=rnorm(1000,mean=0,sd=0.15)
y.noise=predict(lm11,interval="x")+noise
mse11=sqrt(sum((y.noise-average(y.noise))^2)/1000)
