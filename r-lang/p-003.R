# problem 3
# find largest prime factor of the number 600851475143

# helper functions
is.prime <- function(x) {
	if (x == 1 || x == 2 || x == 3) {
		return(TRUE)
	} else {
		testceil <- floor(sqrt(x))
		for (n in 2:testceil) {
			if (x %% n == 0) {
				return(FALSE)
			}
		}
	}
	return(TRUE)
}

rtrn.prme.arry <- function(myarray) {
	mynum <- tail(myarray, n=1)
	testceil <- floor(sqrt(mynum))
	testflr <- myarray[length(myarray)-1]
	for (n in testflr:testceil) {
		if (n != 1 && is.prime(n) && (mynum %% n == 0)) {
			remain <- (mynum/n)
			newarray <- c(myarray[1:(length(myarray)-1)],n,remain)
			print(newarray)
			if (is.prime(remain)) {
				print('hi')
				return(newarray)
			} else {
				return(rtrn.prme.arry(newarray))
			}
		}
	}
}


# MAIN
a <- c(1,13195)
b <- c(1,600851475143)
print(rtrn.prme.arry(b))