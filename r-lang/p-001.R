# -problem 1
# find the sum of all multiples of 3 or 5 below 1000

# start with example vectors
multthree <- c(3,6,9)
multfive <- c(5)

mysum <- sum(multthree, multfive, na.rm=T)
print(mysum)
# 23

for (n in 10:999) {
	if (n %% 3 == 0) {
		mysum <- sum(n, mysum, na.rm=T) 
	} else { 
		if (n %% 5 == 0) {
			mysum <- sum(n, mysum, na.rm=T) 
		} else { next }	
	}
}

print(mysum)
#233168
