# problem 3
# find largest prime factor of the number 600851475143

# helper functions
is.prime <- function(x) {
	# quickly get rid of multiples of 2,3
	if (x %% 2 == 0 && x != 2) { FALSE }
	else if (x %% 3 == 0 && x != 3) { FALSE }
	else { 
		testceil <- ceiling(sqrt(x))	 
		for (n in 5:testceil) {
			if (x %% n == 0) { FALSE }		
		}
		TRUE
	}
}

# this returns an array, in desc order, of prime factors
rtrn.prme.arry <- function(x) {
	if (is.prime(x)) {
		x
	} else {
		myarray <- c()
		myd <- x
		while (!is.prime(myd)) {
			testceil <- ceiling(sqrt(myd))
			for (n in 2:testceil) {
				if (is.prime(n) && (myd %% n == 0)) {
					# fix this, it needs to check for powers of its divisor
					myarray <- c(n, myarray)
					myd <- (myd/n)
					next } } }
	myarray <- c(myd, myarray)
	sort(myarray, decreasing = TRUE) }
}



# MAIN

print(rtrn.prme.arry(7000))
