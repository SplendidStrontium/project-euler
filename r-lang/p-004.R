# problem 4
# find the largest palindromic product of two 3-digit numbers


# helper fcns
letterize <- function(num) {
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
		return(TRUE)
	} else {
		return(FALSE)
	}
}


# MAIN

tflr <- 2
tceil <- 999
tprod <- 2
for (x in tflr:tceil){
	for (y in tflr:tceil){
		z <- x*y
		zlet <- letterize(z)
		if (verif_palin(zlet) && (z > tprod)) {
			tprod <- z
			print(zlet)
		}
	}
}
