#problem 15
#construct a tree to find paths through a grid

#binomial coeff
print(choose(40,20))

mym <- matrix(, nrow = 21, ncol = 21)

for (row in 1:21){
	mym[row,1] <- 1
}
for (col in 1:21){
	mym[1,col] <- 1
}

#one may construct a pascals triangle from here but Im concerned about length of the answer

print(mym)