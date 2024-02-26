

A = matrix(c(2,0,1,3), ncol=2) 
B = matrix(c(5,2,4,-1), ncol=2)

A + B
A - B

mat = diag(4)
diag(mat) <- c(4,1,3,2)
mat

mat2 = diag(5)
mat2[1,] = rep(1,5)
mat2[,1] = rep(2,5)
diag(mat2) = 3
mat2