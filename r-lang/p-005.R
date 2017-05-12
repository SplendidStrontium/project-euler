# problem 5
# find smallest num evenly divisible by nums1-20


# helper fcns
findFactors <- function(numb) {
	ceil <- floor(numb/2)
	factors <- 1
	for (n in 2:ceil) {
		if ( numb %% n == 0 ) { factors <- c(factors, n) }
	}
	return(factors)
}

# MAIN
max <- prod(11,12,13,14,16,17,18,19,20)
divisors <- c(20,19,18,17,16,14,13,12,11)
result <- 1

while (result < max){
	if (result %% divisors[1] == 0) {
		for (n in 2:length(divisors)) {
			if (result %% divisors[n] != 0) {
				break
			} else {
				if (n == 9) { 
					print(result)
					break				
				}
			}
		}
	}
	result <- result+1
}



print('working...')
print(result)
