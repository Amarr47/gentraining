output : flash_dashboard = flash_dashboard
library(ggplot2)
#scatterplot
ggplot(mtcars,aes(x=drat,y=mpg))+geom_point()
#barplot
ggplot(mpg,aes(x=class))+geom_bar()
#lineplot
val = data.frame(course=c('DSA','C++','R','Python'),marks=c(77,55,80,60))
ggplot(val,aes(x=course,y=marks,group=77))+geom_point()+geom_line()
#piechart
data = data.frame(value=c(10,12,23,29),
                  group = paste0("G",1:4))
data
ggplot(data,aes(x="",y=value,fill=group))+
  geom_col(color = "black")+coord_polar(theta="y")
#### Donut Chart ###
library(ggplot2)
library(dplyr)
df <- data.frame(value = c(10, 30, 32, 28),
                 group = paste0("G", 1:4))#The paste0() is a built-in R function used to concatenate all elements without a separator
# Increase the value to make the hole bigger
# Decrease the value to make the hole smaller
hsize <- 4
df <- df %>% 
  mutate(x = hsize)
ggplot(df, aes(x = hsize, y = value, fill = group))+geom_col() +
  coord_polar(theta = "y") +
  xlim(c(0.2, hsize + 0.5))
# Small hole
hsize <- 1
df <- df %>% 
  mutate(x = hsize)

ggplot(df, aes(x = hsize, y = value, fill = group)) +
  geom_col(color = "black") +
  coord_polar(theta = "y") +
  xlim(c(0.2, hsize + 0.5))
## Heat map #####
#Set seed for reproducibility
set.seed(110)
# Create example data
data <- matrix(rnorm(100, 0, 5), nrow = 10, ncol = 10)
data
# Column names
colnames(data) <- paste0("col", 1:10)
rownames(data) <- paste0("row", 1:10)
# Draw a heatmap
heatmap(data)  
data <- matrix(rnorm(100, 0, 5), nrow = 10, ncol = 10)
# Column names   
colnames(data) <- paste0("col", 1:10)
rownames(data) <- paste0("row", 1:10)
# Remove dendogram
# Manual color range
my_colors <- colorRampPalette(c("cyan", "darkgreen"))
# Heatmap with manual colors
heatmap(data, col = my_colors(100))