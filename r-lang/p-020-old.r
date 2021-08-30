#problem 20
#sum digits of 100 factorial

#start at 3 fact
fact <- c(6)

for (n in 4:9) {
	rem <- 0
	for (digit in 1:length(fact)) {
		if (digit == length(fact)){
			ans <- fact[digit]*n + rem
			ones <- ans %% 10
			tens <- (ans-ones)/10
			fact[digit] <- ones
			if (tens!=0) {
				fact[digit+1] <- tens
			} else {}
		} else {
			ans <- fact[digit]*n + rem
			ones <- ans %% 10
			tens <- (ans-ones)/10
			fact[digit] <- ones
			rem <- tens
		}
	}
}

print(fact)
print(sum(fact))