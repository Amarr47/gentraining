d=data.frame(
  num=c(1:5),
  name=c("Amar","John","Mark","Kim","Ross"),
  cgpa=c(7.0,7.5,8.0,8.5,9.0))
print(d)
d[1:2,]
d[1:2,2]
d[2,]
d[,2]
a=data.frame(
  percentage = c(86:90),
  grade = c("C","B","B","A","A"),
  stream = c("CSE","EEE","CSE","MECH","ECE")
)
print(a)
d=cbind(d,a)
print(d)
m = data.frame(marks1=c(11:15),marks2=c(16:20))
m
n =data.frame(marks1=c(21:25),marks2=c(26:30))
n
print(m+n)
m = rbind(m,n)
m
m = cbind(m,n)
m