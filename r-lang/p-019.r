#problem 19
#count Sundays on the first of the month in the twentieth century

adv.day <- function(dayarr){
	dayofweek   <- dayarr[1]
	dayofmonth  <- dayarr[2]
	month       <- dayarr[3]
	year        <- dayarr[4]

	# sunday is the 7th day of the week
	# adv day of week	
	if (dayofweek == 7) {
		dayofweek <- 1
	} else {
		dayofweek <- dayofweek + 1
	}
	
	# adv day of month
	if (dayofmonth == 31 && month == 1) {
		dayofmonth <- 1
		month      <- 2
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth < 31 && month == 1) {
		dayofmonth <- dayofmonth+1
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth == 29 && month == 2) {
		dayofmonth <- 1
		month      <- 3
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth == 28 && month == 2) {
		if (year %% 400 == 0){
			dayofmonth <- 29
			return(c(dayofweek,dayofmonth,month,year))
		} else {
			if (year %% 100 == 0){
				dayofmonth <- 1
				month      <- 3
				return(c(dayofweek,dayofmonth,month,year))
			} else {
				if (year %% 4 == 0) {
					dayofmonth <- 29
					return(c(dayofweek,dayofmonth,month,year))
				} else {
					dayofmonth <- 1
					month      <- 3
					return(c(dayofweek,dayofmonth,month,year))
				}
			}
		}
	}
	if (dayofmonth < 28 && month == 2) {
		dayofmonth <- dayofmonth+1
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth == 31 && month == 3) {
		dayofmonth <- 1
		month      <- 4
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth < 31 && month == 3) {
		dayofmonth <- dayofmonth+1
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth == 30 && month == 4) {
		dayofmonth <- 1
		month      <- 5
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth < 30 && month == 4) {
		dayofmonth <- dayofmonth+1
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth == 31 && month == 5) {
		dayofmonth <- 1
		month      <- 6
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth < 31 && month == 5) {
		dayofmonth <- dayofmonth+1
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth == 30 && month == 6) {
		dayofmonth <- 1
		month      <- 7
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth < 30 && month == 6) {
		dayofmonth <- dayofmonth+1
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth == 31 && month == 7) {
		dayofmonth <- 1
		month      <- 8
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth < 31 && month == 7) {
		dayofmonth <- dayofmonth+1
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth == 31 && month == 8) {
		dayofmonth <- 1
		month      <- 9
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth < 31 && month == 8) {
		dayofmonth <- dayofmonth+1
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth == 30 && month == 9) {
		dayofmonth <- 1
		month      <- 10
		return(c(dayofweek,dayofmonth,month,year))
	}	
	if (dayofmonth < 30 && month == 9) {
		dayofmonth <- dayofmonth+1
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth == 31 && month == 10) {
		dayofmonth <- 1
		month      <- 11
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth < 31 && month == 10) {
		dayofmonth <- dayofmonth+1
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth == 30 && month == 11) {
		dayofmonth <- 1
		month      <- 12
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth < 30 && month == 11) {
		dayofmonth <- dayofmonth+1
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth == 31 && month == 12) {
		dayofmonth <- 1
		month      <- 1
		year       <- year + 1
		return(c(dayofweek,dayofmonth,month,year))
	}
	if (dayofmonth < 31 && month == 12) {
		dayofmonth <- dayofmonth+1
		return(c(dayofweek,dayofmonth,month,year))
	}
	
	
	return(c(dayofweek,dayofmonth,month,year))
}

# Mon, 1 Jan 1900
idayarr <- c(1,1,1,1900)
count	   <- 0

while (idayarr[4] < 2001){
	idayarr <- adv.day(idayarr)
	if (idayarr[1] == 7 && idayarr[2] == 1){
		if (idayarr[4] > 1900){
			count <- count+1
		}
	}
}

print(idayarr)
print(count)