# problem 12
# find the first triangle number with over 500 divisors

#HELPERS
#sieve of eratosthenes
esieve <- function(num) {
	if (n==1) return(NULL)
	if (n==2) return(num)
    l <- 2:num
    i <- 1
    # Select p as the first prime number in the list, p=2.
    p <- 2
    while (p^2<=num) {
        # Remove all multiples of p from the l.
        l <- l[l == p | l %% p!= 0]
        # set p equal to the next integer in l which has not been removed.
        i <- i + 1 # Repeat steps 3 and 4 until p2 > n, all the remaining numbers in the list are primes
        p <- l[i]
    }
    return(l)
}

#find prime factors
factorize <- function(num) {
	primes <- esieve(num)
	pfactors <- primes[num %% primes == 0]
	factors <- c(1,pfactors)
	print(num)
	print(factors)
}

#MAIN
i <- 0
divisors <- 0
while (divisors<5) {
	i <- i+1
	triang <- (i*(i+1))/2
	pfactrs <- factorize(triang)
	myd <- length(pfactrs)
	if (myd > divisors) {
		divisors <- myd
	}
}