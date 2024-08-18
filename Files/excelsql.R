library("readxl")
library("sqldf")
Q2 = read_excel(file.choose())
View(Q2)
sqldf("select * from Q2 limit 10")# display 10 rows
sqldf("select count(*) from Q2")
sqldf("select Quantity,Profit as 'P' from Q2 limit 10")
sqldf("select Quantity,Discount from Q2 where region=='Central' limit 20")
#Sorting
sqldf("select * from Q2 order by City desc limit 20")
sqldf("select City,State,Profit from Q2 order by City,State desc limit 20")
sqldf("select City,State,Profit from Q2 order by City desc,State limit 20")
#like
sqldf("select city,profit from Q2 where City like 'H%' ")
sqldf("select city,profit from Q2 where City like 'He%' ")
sqldf("select city,profit from Q2 where City like '%H' ")
sqldf("select city,profit from Q2 where City like '%H%' ")
#aggregrate functions
sqldf("select sum(Profit) from Q2 ")

#Nested select
sqldf("select region from Q2 where Profit== (Select max(Profit) from Q2)")
sqldf("select region from Q2 where Profit== (Select min(Profit) from Q2)")

sqldf("select city from Q2 where Profit== (Select max(Profit) from Q2)")
sqldf("select city from Q2 where Profit== (Select min(Profit) from Q2)")

a=sqldf("select Segment from Q2 ")
head(a)
b=sqldf("select Segment from Q2 order by Profit")
head(b)
#group by
sqldf("Select sum(Sales) from Q2 ")
sqldf("Select sum(Sales) from Q2 where Region in ('Central','West') group by Region")
sqldf("Select region,sum(Sales) from Q2 group by Region")
sqldf("select profit,region from Q2 group by region having sum(profit)>0")
sqldf("select profit,region from Q2 group by region ")
sqldf("select sales,profit,region from Q2 group by region ")
sqldf("select region,sales,profit,sales-profit as cost from Q2 group by region ")