# problem 11
# given a matrix, find a value

mymatr <- read.table("GitHub/project-euler/r-lang/p-011d.txt", header = FALSE)

bigprod <- 1

#left to right
for (row in 1:20) {
	for (col in 1:17) {
		val1 <- mymatr[row,col]
		val2 <- mymatr[row,col+1]
		val3 <- mymatr[row,col+2]
		val4 <- mymatr[row,col+3]
		res <- val1*val2*val3*val4
		if (res > bigprod) {
			bigprod <- res
		}
	}
}
# 48477312

#up and down
for (row in 1:17) {
	for (col in 1:20) {
		val1 <- mymatr[row,col]
		val2 <- mymatr[row+1,col]
		val3 <- mymatr[row+2,col]
		val4 <- mymatr[row+3,col]
		res <- val1*val2*val3*val4
		if (res > bigprod) {
			bigprod <- res
		}
	}
}
# 51267216

#diagonally up to down
for (row in 1:17) {
	for (col in 1:17) {
		val1 <- mymatr[row,col]
		val2 <- mymatr[row+1,col+1]
		val3 <- mymatr[row+2,col+2]
		val4 <- mymatr[row+3,col+3]
		res <- val1*val2*val3*val4
		if (res > bigprod) {
			bigprod <- res
		}
	}
}
# 51267216

#diagonally down to up
for (row in 1:17) {
	for (col in 1:17) {
		val1 <- mymatr[row+3,col]
		val2 <- mymatr[row+2,col+1]
		val3 <- mymatr[row+1,col+2]
		val4 <- mymatr[row,col+3]
		res <- val1*val2*val3*val4
		if (res > bigprod) {
			bigprod <- res
		}
	}
}
# 70600674

print(bigprod)