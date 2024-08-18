v1<- c(1:5)
v2 <- c(6:8)
arr = array(c(v,v4),dim=c(3,3,2))
arr
arr[2,,2]
arr[1,3,1]
v1 <- c(1,2,3)
v2 <- c(10:15)
rows <- c("R1","R2","R3")
cols <- c("C1","C2","C3")
Mname <- c("M1","M2")
arr1 = array(c(v1,v2),dim=c(3,3,2),dimnames=list(rows,cols,Mname))
arr1[,,1]
v3 <- c(4,5,6)
v4 <- c(15:20)
arr2 <- array(c(v3,v4),dim=c(3,3,2),dimnames=list(rows,cols,Mname))
arr2[,,1]
matrix1 = arr1[,,1]
matrix2 = arr2[,,1]
res = matrix1+matrix2
res
arr1[,,1]
newarr = apply(arr1,c(1),sum)
newarr
newarr = apply(arr1,c(2),sum)
newarr
newarr = apply(arr1,c(3),sum)
newarr
