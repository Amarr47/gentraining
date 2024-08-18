library(twitteR)
library(ggplot2)
library(syuzhet)
library(tm)


###  API access, secret
appname <- "Theweeknd"
key <- "t7eNmMU0g2bOCflhpnbDstfPl"
secret <- "RyJx9C7LrmzNDkiSGAvyvsOzxEiSU5DosyLkIy4rPhGXOR8bNO"
access<-"1511278666449551363-VgZe3OcRUkYgbTZ87rZyubemJ5QZMK"
access_secret="iY9S4deq62ApzsqeQ8KZ9KSNAWQawrayZuUVP4pyQF2VY"


### Authentication
setup_twitter_oauth(key, secret, access, access_secret)


# extract the data
tweets_tech <- searchTwitter("#gdp", n=100,lang = "en")


## data cleaning
tech_tweets <- twListToDF(tweets_tech)
tech_text<- tech_tweets$text
tech_text<- tolower(tech_text)
tech_text <- gsub("rt", "", tech_text)
tech_text <- gsub("@\\w+", "", tech_text)
tech_text <- gsub("[[:punct:]]", "", tech_text)


#getting emotions using in-built function
mysentiment_tech<-get_nrc_sentiment((tech_text))

View(mysentiment_tech)
#calculating total score for each sentiment

Sentimentscores_tech<-data.frame(colSums(mysentiment_tech[,]))
names(Sentimentscores_tech)<-"Score"
Sentimentscores_tech<-cbind("sentiment"=rownames(Sentimentscores_tech),Sentimentscores_tech)
rownames(Sentimentscores_tech)<-NULL


#*************************************************************************************

## Visualization 
ggplot(data=Sentimentscores_tech,aes(x=sentiment,y=Score))+geom_bar(aes(fill=sentiment),stat = "identity")+
  theme(legend.position="none")+
  xlab("Sentiments")+ylab("scores")+ggtitle("GDP")