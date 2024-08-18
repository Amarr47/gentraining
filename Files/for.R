x = c(1,2,3,4,5,6)
r = 0
for(i in x)
{
  if(i%%2==0)
  {
    print(i)
    r=r+1
  }
}
print(r)
t=1
a = 5
if(a==0|a==1)
{
  print(t)
}else{
  while(a>0)
  {
    t = a*t
    a=a-1
  }
  print(t)
}
