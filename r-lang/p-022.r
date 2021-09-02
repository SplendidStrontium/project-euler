#problem 22
#given a text file of names
#alphabetize the names
#and compute a score based on present letters
#and position in the list


#BEGIN function to return letter value
lettervalue <- function(char) {
	if (char == "a") {return(1)}
	if (char == "b") {return(2)}
	if (char == "c") {return(3)}
	if (char == "d") {return(4)}
	if (char == "e") {return(5)}
	if (char == "f") {return(6)}
	if (char == "g") {return(7)}
	if (char == "h") {return(8)}
	if (char == "i") {return(9)}
	if (char == "j") {return(10)}
	if (char == "k") {return(11)}
	if (char == "l") {return(12)}
	if (char == "m") {return(13)}
	if (char == "n") {return(14)}
	if (char == "o") {return(15)}
	if (char == "p") {return(16)}
	if (char == "q") {return(17)}
	if (char == "r") {return(18)}
	if (char == "s") {return(19)}
	if (char == "t") {return(20)}
	if (char == "u") {return(21)}
	if (char == "v") {return(22)}
	if (char == "w") {return(23)}
	if (char == "x") {return(24)}
	if (char == "y") {return(25)}
	if (char == "z") {return(26)}
}
#END function to return letter value


#BEGIN function to return vector from input name
characterize <- function(x) {
	namearray <- NULL
	strsplit(x)
	for (place in 1:length(x)) {
		namearray[place]
	}
}
#END function to return vector from input name


#BEGIN main logic

#first, proper file i/o must be addressed
#namelist <- read.delim("p022_names.txt", header = FALSE, sep = ",", dec = ".")
namelist <- scan("p022_names.txt", what= "", sep=",", na.strings="")
print(namelist)

#split the string into single characters

#grab the last element and delete it from the array
namestr <- namelist[length(namelist)]
namelist[length(namelist)] <- NULL

print(nchar(namestr))
namestr <- strsplit(namestr, split = "")
#END main logic
