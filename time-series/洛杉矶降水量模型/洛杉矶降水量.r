library(TSA)
# win.graph(width=4.875, height=2.5,pointsize=8)  #这里可以独立弹出窗口
# window下用win.graph
dev.new(width=4.875, height=2.5,pointsize=8)  #这里可以独立弹出窗口
data(larain)  #TSA包中的数据集，洛杉矶年降水量
plot(larain,ylab='Inches',xlab='Year',type = 'o')   #type规定了在每个点处标记一下

# win.graph(width = 3,height = 3,pointsize = 8)
dev.new(width = 3,height = 3,pointsize = 8)
plot(y = larain,x = zlag(larain),ylab = 'Inches',xlab = 'Previous Year Inches')#zlag函数(TSA包)用来计算一个向量的延迟，默认为1,首项为NA