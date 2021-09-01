#problem 20
#sum digits of 100 factorial
#eg 10! is 3628800
#3+6+2+8+8+0+0 = 27

#my instinct here is to write a multiplier calculator
#summing the digits will then be incidental at the end

#1 factorial sums to 6
fact <- c(6)
sum <- 0
rem <- 0
line1 <- c(0)
line2 <- c(0)

#factorial number determines iterations
for (n in 4:99) {
	if (n < 10) {
		for (place in length(fact):1) {
			res <- rem + fact[place]*n
			resones <- res %% 10
			rem <- (res-resones)/10
			fact[place] <- resones
			
		}
		
		if (rem != 0) {
			fact <- c(rem,fact)
		}
	} else {
		multones <- n %% 10
		multtens <- (n-multones)/10
		print(multtens)
		print(multones)
		print(fact)
		rem <- 0
		for (place in length(fact):1) {
			res <- rem + fact[place]*multones
			resones <- res %% 10
			rem <- (res-resones)/10
			line1[place] <- resones
		}
		if (rem != 0) {
			line1 <- c(rem,line1)
		} 
		line1 <- c(0,line1)
		rem <- 0
		for (place in length(fact):1) {
			res <- rem + fact[place]*multtens
			resones <- res %% 10
			rem <- (res-resones)/10
			line2[place] <- resones
		}
		if (rem != 0) {
			line2 <- c(rem,line2)
		}
		line2 <- c(line2,0)
		if (length(line1) < length(line2)) {
			line1 <- c(0,line1)
		} 
		if (length(line1) > length(line2)) {
			line2 <- c(0,line2)
		}

		rem <- 0
		for (place in length(line1):1) {
			res <- rem + line1[place] + line2[place]
			resones <- res %% 10
			rem <- (res-resones)/10
			fact[place] <- resones
		}
		if (rem != 0) {
			fact <- c(rem,fact)
		}
		rem <- 0
		print(fact)
		
	}
	rem <- 0
}

for (sumplace in 1:length(fact)) {
	sum <- sum+fact[sumplace]
}

print(paste0(sum))
#solved answer sep 1 2021
#sum of 100 factorial digits is 648