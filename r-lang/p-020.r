#problem 20
#sum digits of 100 factorial
#eg 10! is 3628800
#3+6+8+8+0+0 = 27

#my instinct here is to write a multiplier calculator
#summing the digits will then be incidental at the end

#1 factorial sums to 1
fact <- c(1)
sum <- 1

#factorial number determines iterations
for (n in 2:2) {
	#each digit creates a new column or place
	for (place in 1:length(fact)) {
		res <- fact[place]*n
		fact[place] <- res
	}
}

for (sumplace in 1:length(fact)) {
	sum <- fact[sumplace]
}

print(sum)