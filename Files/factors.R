dir <- c("Amar","Alluri","LPU","Amar","Alluri","LPU","Amar","Alluri","LPU")
print(dir)
print(is.factor(dir))
f_dir <- factor(dir)
is.factor((f_dir))
f_dir
a = c(1:7)
b = c("CSE","EEE","ECE","CSE","EEE","ECE","CSE")
b = factor(b)
c = c(15:21)
d = data.frame(a,b,c)
d
is.factor(d$b)
d$b
v <- gl(3,4,labels=c("EEE","MEC","CSE"))
v
is.factor(v)