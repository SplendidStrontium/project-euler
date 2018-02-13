#problem 17
#count letters used counting 1 to 1000

count.letts <- function(num){
	if (num==1) return(3)
	if (num==2) return(3)
	if (num==3) return(5)
	if (num==4) return(4)
	if (num==5) return(4)
	if (num==6) return(3)
	if (num==7) return(5)
	if (num==8) return(5)
	if (num==9) return(4)
	if (num==10) return(3)
	if (num==11) return(6)
	if (num==12) return(6)
	if (num==13) return(8)
	if (num==14) return(8)
	if (num==15) return(7)
	if (num==18) return(8)
	if (num>15 && num<20){
		ones <- num %% 10
		return(count.letts(ones) + 4)
	}
	if (num==20) return(6)
	if (num==30) return(6)
	if (num==40) return(5)
	if (num==50) return(5)
	if (num==60) return(5)
	if (num==70) return(7)
	if (num==80) return(6)
	if (num==90) return(6)
	if (num>20 && num<100){
		ones <- num %% 10
		tens <- num - ones
		return(count.letts(ones) + count.letts(tens))
	}
	if (num==1000) return(11)
	if (num%%100 == 0){
		hundreds <- num/100
		return(count.letts(hundreds) + 7)
	}
	else {
		tens <- num %% 100
		hundreds <- num - tens
		return(count.letts(hundreds) + 3 + count.letts(tens))
	}
}

res <- 0
for (i in 1:1000){
	res <- res + count.letts(i)
}

print(count.letts(18))
print(res)