employee.data=data.frame(
  emp_id=c(1:3),
  emp_name=c("A","B","C"),
  salary=c(1000,2000,2500),
  stringsAsFactors = FALSE
)
print(employee.data)

str(employee.data)# str is structure

summary(employee.data)

#adding new column
employee.data$deptt<-c("Network","Software","Mobile")#include new attribute
print(employee.data)
employee.data$deptt<-NULL
print(employee.data)

#updating
employee.data$emp_name<-c("Network","Software","Mobile")
print(employee.data)
df = data.frame( c1= c(1:3),c2 = c("A","B","C"))
df
rownames(df) = c("R1","R2","R3")
colnames(df) = c("Rollno","Name")
df
rownames(df)
colnames(df)