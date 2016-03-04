# problem 4
# find the largest palindromic product of two 3-digit numbers

# example set
a <- 91
b <- 99
c <- a*b
d <- 100001
e <- 100002


# helper fcns
gimmearray <- function(num) {
	digits <- nchar(num, type = "chars")
	arr <- 0
	for (i in 1:digits) {
		res <- num %% 10
		arr[i] <- res
		num <- floor(num/10)
	}
	return(arr)
}

verif_palin <- function(array) {
	if (identical(array,rev(array))) {
		return('TRUE')
	} else {
		return('FALSE')
	}
}


# MAIN
arr1 <- gimmearray(d)
arr2 <- gimmearray(e)
if (verif_palin(arr1)) {
	print(arr1)
}
