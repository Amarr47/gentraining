c=matrix(c(1:6),2,3,TRUE)
c
d = matrix(c(1:6),2,3)
d
apply(c,2,sum)
apply(d,2,mean)
lis = list(x=1:5,y=6:11,z=12:16)
lis
lapply(lis,FUN = mean)
sapply(lis,FUN = median)
library(datasets)
tapply(mtcars$wt,mtcars$cyl,mean)
x = c(1:5)
y = c(1:5)
mapply(sum,x,y)
finance.data=data.frame(
  Name=c("A","B","C"),
  Price=c(1000,2000,2500),
  Volume =c(233,333,433),
  Cap=c(1,2,3)
)
print(finance.data)
apply(finance.data[-1],2,mean)