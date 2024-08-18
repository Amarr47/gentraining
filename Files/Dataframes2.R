df = data.frame(city = c("HYD","CHE","DEL","PUN","BAN"),
                tmax = c(48,46,47,44,48),
                tmin = c(17,15,8,6,19),
                rainfall = c(29.3,28.5,26.4,29.1,26.5)
                )
print(df)
a = sum(df$tmax)
b = sum(df$tmin)
c = sum(df$rainfall)
m1 = mean(df$tmax)
m2 = median(df$rainfall)
e = c("SumofmaxT","SumofMinT","SumofRainfall","MeanofMaxT","Median of rainfall")
f = 1
d1 = matrix(c(a,b,c,m1,m2),1,5,dimnames=list(f,e))
d1
str(df)
summary(df)
df$pop<-c("100","400","200","600","500")
df
str(df)
summary(df)