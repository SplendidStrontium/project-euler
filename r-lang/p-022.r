#problem 22
#given a text file of names
#alphabetize the names
#and compute a score based on present letters
#and position in the list


#BEGIN function to return letter value
lettervalue <- function(char) {
	if (char == "A") {return(1)}
	if (char == "B") {return(2)}
	if (char == "C") {return(3)}
	if (char == "D") {return(4)}
	if (char == "E") {return(5)}
	if (char == "F") {return(6)}
	if (char == "G") {return(7)}
	if (char == "H") {return(8)}
	if (char == "I") {return(9)}
	if (char == "J") {return(10)}
	if (char == "K") {return(11)}
	if (char == "L") {return(12)}
	if (char == "M") {return(13)}
	if (char == "N") {return(14)}
	if (char == "O") {return(15)}
	if (char == "P") {return(16)}
	if (char == "Q") {return(17)}
	if (char == "R") {return(18)}
	if (char == "S") {return(19)}
	if (char == "T") {return(20)}
	if (char == "U") {return(21)}
	if (char == "V") {return(22)}
	if (char == "W") {return(23)}
	if (char == "X") {return(24)}
	if (char == "Y") {return(25)}
	if (char == "Z") {return(26)}
}
#END function to return letter value


#BEGIN function to return name value
namevalue <- function(name) {
	name.char <- unlist(strsplit(name, split = ""))
	mysum <- 0
	for (place in 1:length(name.char)) {
		mysum <- mysum + lettervalue(name.char[place])
	}
	return(mysum)
}
#END function to return name value


#BEGIN main logic

#first, proper file i/o must be addressed
#namelist <- read.delim("p022_names.txt", header = FALSE, sep = ",", dec = ".")
namelist <- scan("p022_names.txt", what= "", sep=",", na.strings="")
namelist <- sort(namelist)

totalsum <- 0
for (i in 1:length(namelist)){
	totalsum <- totalsum + (i * namevalue(namelist[i]))
}

print(totalsum)
#END main logic

#solved sep 3 2021
#sum of namevalues is 871198282
