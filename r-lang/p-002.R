# problem 2
# find sum of even-valued fibonacci where fib < 4e+06

# example set
a <- 2
b <- 3
c <- a+b # =5
fibon <- c(a,b,c)
mysum <- 2


# helper functions
advFibFcn <- function(myset) {
	var1 <- myset[1]
	var2 <- myset[2]
	var3 <- myset[3]
	if (var3 %% 2 == 0) {
		mysum <<- sum(var3, mysum, na.rm=F)
	}
	fibon <<- c(var2, var3, var2+var3)
}


# MAIN


while (fibon[3] < 4e+06) {
	advFibFcn(fibon)
}
print(fibon)
print(mysum)
# [1] 2178309 3524578 5702887
# [1] 4613732




