getwd()
data <- read.csv('Cardiotocographic.csv',stringsAsFactors = FALSE)
str(data)
data$NSPF<-factor(data$NSP)
str(data)
set.seed(1234)
pd <- sample(2,nrow(data),replace=TRUE,prob=c(0.8,0.2))
train <- data[pd==1,]
library(party)
test <- data[pd==2,]
tree <- ctree(NSPF~LB+AC+FM,data=train,controls = ctree_control(mincriterion = 0.90,minsplit=200))
tree
plot(tree)
predict(tree,test,type="prob")
predict(tree,test)
library(rpart)
treel <- rpart(NSPF~LB+AC+FM,train)
library(rpart.plot)
rpart.plot(treel)
predict(treel,test)
table <- table(predict(tree),train$NSPF)
table
1-sum(diag(table)/sum(table))
predtest <- predict(tree,test)
table <- table(predtest,test$NSPF)
table
1-sum(diag(table)/sum(table))   
