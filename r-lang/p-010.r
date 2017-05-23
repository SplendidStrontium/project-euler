# problem 10
# sum early prime numbers

isPrime <- function(x) {
	#adjust as needed
	if (x==1) {return(TRUE)}

	#this could catch known primes
	primes <- c(2,3,5,7,11,13,17,19,23,29,31,37,41,43)
	for (p in primes) {
		if (x==p) {return(TRUE)}
	}
	for (p in primes) {
		if (x%%p == 0) {return(FALSE)}
	}

	#still unsure, start iteration
	a <- 47
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

sum <- 0
for (i in 2:20) {
	if (isPrime(i)) {
		sum <- sum+i } 
}
print(sum)
