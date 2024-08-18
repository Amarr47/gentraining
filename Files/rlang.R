View(mtcars)
mtcars$model <- rownames(mtcars)
f = mtcars[1:20,]
s = mtcars[10:32,]
f
s
intersect(f,s)
x=data.frame(ID = 1:6, ID1= 1:6)
y=data.frame(ID = 1:7, ID1 = 1:7)
union(x,y)
union_all(x,y)
df = c(-10,2, NA)
df
setdiff(y,x)
install.packages("tidyr")
library("tidyr")
n = 10
df = data.frame(id = c(1:10),
  g1 = c(11:20),
  g2 = c(30:39),
  g3 = c(40:49))
df
long<-tidy_dataframe%>%gather(Group,Frequency,Group1:Group3)
long
long <- tidy_dataframe %>% gather(Group, Frequency,Group.1:Group.3)
separate_data <- long %>% separate(Group, c("Allotment","Number"))
separate_data