# problem 3
# find largest prime factor of the number 600851475143

# helper functions
is.prime <- function(x) {
	prm <- TRUE
	# quickly get rid of multiples of 2,3
	if (x %% 2 == 0 || x == 2) { 
		print('gotta2')		
		print(prm)
		return(!prm) }
	else if (x %% 3 == 0 || x == 3) { !prm }
	else { 
		testceil <- ceiling(sqrt(x))	 
		print(testceil)
		for (n in 5:testceil) {
			if (x %% n == 0) { 
				break }
		}
	print('yeep')	
	return(prm)
	}
	return(prm)
} 

# this returns an array, in desc order, of prime factors
rtrn.prme.arry <- function(x) {
	if (is.prime(x)) {
		print('im prime')
		x
	} else {
		myarray <- c()
		myd <- x
		while (!is.prime(myd)) {
			testceil <- ceiling(sqrt(myd))
			for (n in 2:testceil) {
				if (is.prime(n) && (myd %% n == 0)) {
					while (myd %% n == 0) {
						myd <- myd/n
						myarray <- c(n, myarray) 
					} } } }
	sort(myarray, decreasing = TRUE) }
}

# MAIN

#print(rtrn.prme.arry(7000))
#[1] 7 5 5 5 2 2 2
print(rtrn.prme.arry(38))
