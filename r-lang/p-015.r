#problem 15
#construct a tree to find paths through a grid

#binomial coeff
print(choose(40,20))

#construct pascals triangle
mym <- matrix(, nrow = 21, ncol = 21)

for (row in 1:21){
	mym[row,1] <- 1
}
for (col in 1:21){
	mym[1,col] <- 1
}
for (row in 2:21){
	for (col in 2:21){
		mym[row,col] <- mym[row-1,col] + mym[row,col-1]
	}
}

print(mym[21,21])
#trees and recursion take too much time?