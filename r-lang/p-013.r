#problem 13
#given a list of 100 numbers, find the first ten digits of the sum

mylist <- scan("p-013d.txt", what=" ")

#MAIN
print(mylist[1])

mymatr <- matrix(, nrow = 100, ncol = 50)

for (row in 1:100){
	trow <- strsplit(mylist[row], "")

	for (col in 1:50){
		mymatr[row,col] <- as.numeric(trow[[1]][col])
	}
}

tsum <- 0
rem <- 0
bigsum <- c()
for (col in 50:2){
	tsum <- rem
	for (row in 1:100){
		tsum <- tsum + mymatr[row,col]
	}
	dig <- tsum %% 10
	bigsum <- c(bigsum,dig)
	rem <- (tsum - dig)/10
}
tsum <- rem
for (row in 1:100){
	tsum <- tsum + mymatr[row,1]
}
print(tsum)
print(rev(bigsum))
