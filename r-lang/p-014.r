#problem 14
#find longest collatz sequence starting under 1million

ginit <- 2
glen <- 1
for (init in 2:1000000){
	len <- 1
	n <- init
	while (n > 1){
		if (n%%2 == 0){
			n <- n/2
			len <- len+1
		} else {
			n <- 3*n + 1
			len <- len+1
		}
	}
	if (len > glen){
		glen <- len
		ginit <- init
	}
}

print(ginit)
print(glen)