library(twitteR)
library(tidyverse)
library(tidytext)
library(rtweet)

appname <- "Theweeknd"
key <- "t7eNmMU0g2bOCflhpnbDstfPl"
secret <- "RyJx9C7LrmzNDkiSGAvyvsOzxEiSU5DosyLkIy4rPhGXOR8bNO"
access<-"1511278666449551363-VgZe3OcRUkYgbTZ87rZyubemJ5QZMK"
access_secret="iY9S4deq62ApzsqeQ8KZ9KSNAWQawrayZuUVP4pyQF2VY"
setup_twitter_oauth(key, secret, access, access_secret)
########## GDP
fn_twitter <- searchTwitter("#GT650 + #section",n=100)
fn_twitter_df <- twListToDF(fn_twitter) # Convert to data frame
write.csv(fn_twitter_df,file="gdp.csv")
getwd
############ China+ Coronavirus
virus <- searchTwitter('#china + #corona', n = 100, since = '2021-01-01')
#since: is the time frame you want the tweets
virus_df = twListToDF(virus)
virus_df
a <- searchTwitter("covid",n=3)
a
b<-searchTwitter("#RProgramming",n=10,lang="en")
b
tdf<- twListToDF(a)#data frame 
write.csv(tdf,file='gdp.csv',row.names = F)
#write.cse(tdf,file='~/Desktop/T3.csv',row.names=F)
#head(T3)
#Trends
trend<- availableTrendLocations()
head(trend)#woeid: where on earth ID
trend
# getting trends
world<-getTrends(1)
world
head(world)
tr<-getTrends(2295420)
head(tr,n=3)
#user timeline
t<-getUser('MSDhoni')
t
a<-userTimeline(t,n=4)# retreive recent trends(n=2)
a


## authenticate via web browser
#The create_token() function should automatically save your token as an environment 
#variable for you. So next time you start an R session [on the same machine], 
#rtweet should automatically find your token.
token <- create_token(
  app = appname,
  consumer_key = key,
  consumer_secret = secret,
  access_token = access,
  access_secret = access_secret)

## check to see if the token is loaded
#library(rtweet)
get_token()


# post a tweet from R
post_tweet("km023 section learning r")
library(rtweet)

## search for 500 tweets using the #rstats hashtag
rstats_tweets <- search_tweets(q = "#rstats",
                               n = 500)
rstats_tweets
#1) q: the query word that you want to look for
#2) n: the number of tweets that you want returned. 
#             user can request up to a maximum of 18,000 tweets.

# view the first 3 rows of the dataframe
head(rstats_tweets, n = 3)
rstats_tweets$text


# find recent tweets with #rstats but ignore retweets
rstats_tweets <- search_tweets("#rstats", n = 500,
                               include_rts = FALSE)
# view top 2 rows of data
head(rstats_tweets, n = 2)

# view column with screen names - top 6
head(rstats_tweets$screen_name)

# get a list of unique usernames
unique(rstats_tweets$screen_name)


# what users are tweeting with #rstats
users <- search_users("#rstats",n = 50)
# just view the first 2 users - the data frame is large!
head(users, n = 2)


# how many locations are represented
length(unique(users$location))



######  "Twitter users - unique locations "
users %>%
  ggplot(aes(location)) +
  geom_bar() + coord_flip() +
  labs(x = "Count",
       y = "Location",
       title = "Twitter users - unique locations ")
