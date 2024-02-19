
A = matrix(1:100, nrow=10)
B = matrix(1:1000, nrow=10)

#Transpose A and B  given a matrix or data.frame x, t returns the transpose of x. 
t(A)
t(B)

#create two vectors (a and b)
a = 1:10
b = 1:10

#multiply matrices by vectors
A * a
B * b

#re-assign the vectors a and b to equal the number of rows of the column for the corresponding matrix
a = nrow(A)
b = nrow(B)

#Multiply the matrix by a matrix
A %*% B

#Inverse a matrix
S=matrix(2:5, nrow=2)
solve(S)

#check det()
det(S)


