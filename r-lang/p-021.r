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
	divisormax <- floor(dividend/2)
	divisorarray <<- NULL
	for (divisor in 1:divisormax) {
		res <- dividend %% divisor
		if (res == 0 && isFALSE(divisor %in% divisorarray)) {
			divisorarray <- c(divisorarray,divisor)
		}
	}
	return(divisorarray)
}
#END function to return array of proper divisors

#BEGIN function to test if amicable number
isuniqueamicableno <- function(x) {
	#do not test pairs a second time
	if (x %in% skipdiv) {
		return(FALSE)
	}
	
	#find first number sum
	myarray1 <- createdivarray(x)
	arraysum1 <- sum(myarray1)
	print(paste0("divisorsum ",arraysum1))

	#find second number sum
	myarray2 <- createdivarray(arraysum1)
	arraysum2 <- sum(myarray2)
	print(paste0("divisorsum ",arraysum2))

	#test for equality
	if (arraysum2 == x) {
		skipdiv <- c(skipdiv,x,arraysum1)
		print(x)
		print(arraysum1)
		mysum <- sum(mysum,x,arraysum1)
		print(mysum)
		return(TRUE)
	}
	
	return(FALSE)
}
#END function to test if amicable number

#BEGIN global variables
skipdiv <<- NULL
mysum <- 0
#END global variables


#BEGIN main logic

for (y in 220:220) {
	if (isuniqueamicableno(y)) {
		mysum <- sum(skipdiv)
	}
}

#print total sum
print(skipdiv)
print(mysum)

#END main logic
