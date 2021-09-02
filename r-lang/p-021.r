#problem 21
#given a number as x
#find the sum of its proper divisors as y
#if the sum of the proper divisors of y
#is equal to x
#then the pair are called amicable numbers
#find the sum of all amicable numbers under 10000

#the smallest pair of amicable numbers is 220,284

#first step is to write an algorithm to find proper divisors
#once a sum is found, find the proper divisors for it


#BEGIN function to return an array of proper divisors
createdivarray <- function(dividend) {
	if (dividend == 1) {
		return(c(1))
	}
	divisormax <- floor(dividend/2)
	divisorarray <- NULL
	for (divisor in 1:divisormax) {
		res <- dividend %% divisor
		if (res != 0) {
			next
		}
		if (res == 0 && isFALSE(divisor %in% divisorarray)) {
			divisorarray <- c(divisorarray,divisor)
		} else {next}
	}
	return(divisorarray)
}
#END function to return array of proper divisors

#BEGIN function to test if amicable number
isamicableno <- function(x) {	
	#find first number sum
	myarray1 <- createdivarray(x)
	arraysum1 <- sum(myarray1)

	#find second number sum
	myarray2 <- createdivarray(arraysum1)
	arraysum2 <- sum(myarray2)

	#test for equality
	if (arraysum2 == x && arraysum1 != arraysum2) {
		skipdiv <<- c(skipdiv,x,arraysum1)
		mysum <<- sum(mysum,x,arraysum1)
		return(TRUE)
	}
	
	return(FALSE)
}
#END function to test if amicable number

#BEGIN global variables
skipdiv <- NULL
mysum <- 0
#END global variables


#BEGIN main logic

for (y in 220:10000) {
	#do not test pairs a second time
	if (y %in% skipdiv) {
		next
	}
	isamicableno(y)
}

#print total sum
print(skipdiv)
mysum <- sum(skipdiv)
print(paste0("final sum ",mysum))

#END main logic

#solved answer sep 2 2021
#sum of amicable numbers under 10000 is 31626
#runtime is a bit high but solved
