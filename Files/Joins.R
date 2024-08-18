install.packages("dplyr")
library("dplyr")
df1 = data.frame(id=c(1:5),
                 a = c('a','b','c','d','e'),
                 b = c(1,1,0,0,1),
                 c = rnorm(5),
                 d = letters[1:5]
                 )
df1
df2 = data.frame(id=c(1,7,3,6,8),
                 a = c('x','b','k','d','z'),
                 b = c(1,3,2,0,4),
                 c = rnorm(5),
                 d = letters[2:6]
)
df2
df3 = inner_join(df1,df2,by="id")
df3
df3 = left_join(df1,df2,by="id")
df3
df3 = right_join(df1,df2,by = "id")
df3
