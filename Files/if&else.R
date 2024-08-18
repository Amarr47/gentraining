x <- 2L
if(is.integer(x))
{
  print("X is an Integer")
} else
{
  print("X is Not an Integer")
}
l <- c("what","is","truth")
if("Truth" %in% l)
{
  print("Truth is Found")
} else
{
  print("Truth is not Found")
}
quantity = 18
if(quantity>30)
{
  print("What a Great Day")
} else if(quantity<30 & quantity>20)
{
  print("Average Day")
} else
{
  print("Not enough for today")
}
x = 4
if(x>0)
{
  print("X is Positive Number")
} else if(x<0)
{
  print("X is Negative Number")
} else
{
  print("X is Zero")
}
#If medium is LinkedIn, print "Showing LinkedIn information", 
#otherwise, print "Unknown medium".
#If num_views exceeds 15 views, print "You're popular!". 
#If the if condition is not met, print "Try to be more visible!".
medium = "LinkedIn"
num_views = 16
if(medium=="LinkedIn")
{
  print("Showing LinkedIn information")
  if(num_views>15)
  {
    print("Your'e popular!")
  } else
  {
    print("Try to be more visible!")
  }
} else
{
  print("Unknown medium")
}