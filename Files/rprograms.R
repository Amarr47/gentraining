k = 7
f =1
if(k==0|k==1)
{
  cat("Factorial of ",k," is ",f,"\n")
} else {
  for(i in k:1)
  {
    f=i*f
  }
  cat("Factorial of ",k," is ",f,"\n")
}
for( i in 1:10)
{
  cat(k,"x",i,"=",k*i,"\n")
  i = i+1
}
c=0
if(k>1)
{
  c=1
for(i in 2:k%/%2)
{
  if((k%%i)==0){ 
    c=0
  break
}
}
}
if(k==2)
{
 c=1  
}
if(c==1)
{
  cat(k," is a Prime Number")
} else {
  cat(k," is not a Prime Number")
}
