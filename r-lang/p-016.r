#problem 16
#calc 2^1000 and sum its digits

arr <- c(2)
len <- 1
for (pow in 2:1000){
	if (arr[len] >= 5 ) {
		len <- len+1
		arr[len] <- 0
	}

	print(len)
	rem <-0
	for (pos in 1:len){
		tres <- rem + (arr[pos] *2) %% 10
		rem <- (rem + (arr[pos] *2)-tres)/10
		arr[pos] <- tres
	}
}
print(rev(arr))
res <- 0
for (digit in arr){
	res <- res + digit
}
print(res)