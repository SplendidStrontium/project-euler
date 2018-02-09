# problem 12
# find the first triangle number with over 500 divisors

#HELPERS
factorize <- function(num) {
	if (num==1){
		return(c(1))
	}
	if (num==2){
		return(c(1,2))
	}
	arr <- c(1,num)
	n <- 1
	while (n^2 <= num){
		n <- n+1
		if (num%%n == 0){
			if (any(arr==n)){
				next
			}
			oth <- num/n
			if (oth == n) {
				arr <- c(arr,n)
			} else {
				arr <- c(arr,n,oth)
			}
		}
	}
	return(arr)
}

#MAIN
i <- 0
divisors <- 0
while (divisors<500) {
	i <- i+1
	triang <- (i*(i+1))/2
	factrs <- factorize(triang)
	myd <- length(factrs)
	if (myd > divisors) {
		divisors <- myd
	}
}

print(sort(factrs))