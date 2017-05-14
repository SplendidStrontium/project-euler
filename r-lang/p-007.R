# problem 7
# find the 10001st prime no, where 2 is the first

#
# helper functions
#

isPrime <- function(x) {
	#adjust as needed
	if (x==1) {return(TRUE)}

	#this could catch known primes
	primes <- c(2,3,5,7,11,13)
	for (p in primes) {
		if (x==p) {return(TRUE)}
	}
	for (p in primes) {
		if (x%%p == 0) {return(FALSE)}
	}

	#still unsure, start iteration
	a <- 17
	ceil <- ceiling(sqrt(x))+1
	while( a<ceil ) {
		if (isPrime(a)) {
			if (x%%a == 0) {return(FALSE)}
		}
		a <- a+1
	}
	return(TRUE)

}

#
# MAIN	
#

print(isPrime(5))
print('working')

init <- c(6,13)
i <- init[1]+1
res <- init

for (i in 7:10001) {
	test <- res[2]+2
	while (!isPrime(test)) {
		test <- test+2
	}
	res <- c(i,test)
	i <- i+1
}

print(res)
