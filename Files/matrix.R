m = matrix(c(1,2,3,4,5,6),nrow=2,ncol=3)
m
m = matrix(c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=FALSE)
m
a = c(10:15)#inbuilt C function
m2 = matrix(a,2,3)#by default it is FALSE
m2
m2= matrix(a,2,3,TRUE)
m2
m+m2
m2-m
m*m2
tm = t(m2)#transpose t function
tm
m1 = matrix(c(20:28),3,3,TRUE)
m1
m1 =  matrix(c(20:28),3,3,FALSE)
m1
m2 = t(m1)
m2
m1*m2
m1%*%m2
rnames = c("R1","R2","R3")
cnames = c("C1","C2","C3")
m1 = matrix(c(20:28),3,3,TRUE,dimnames=list(rnames,cnames))
m1
