x <- switch(1,"first","second","third","fourth")
print(x)
y = "18"
a =10
b = 2
x = switch(y,
           "9"=cat("Addition =",a+b),
           "14"=cat("Subtraction =",a-b),
           "18"=cat("Multiplication =",a*b),
           "21"=cat("Division =",a/b)
)
val1 = 6
val2 = 7
val3 = "s"
result = switch(
  val3,
  "a"= cat("Addition =", val1 + val2),
  "d"= cat("Subtraction =", val1 - val2),
  "r"= cat("Division = ", val1 / val2),
  "s"= cat("Multiplication =", val1 * val2),
  "m"= cat("Modulus =", val1 %% val2),
  "p"= cat("Power =", val1 ^ val2)
)
rollno = "4"
x <- switch(rollno,
            "1"=cat("Rollno",rollno,"is John"),
            "2"=cat("Rollno",rollno,"is James"),
            "3"=cat("Rollno",rollno,"is Mark"),
            "4"=cat("Rollno",rollno,"is Ross"),
)
