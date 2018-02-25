#problem 18
#traverse a triangle to find path with greatest sum

tril <- read.table("p-018d.txt", header = FALSE, fill = TRUE, nrows = 15, sep = "\r")

#HELPERS



#MAIN
mat <- matrix(, nrow = 15, ncol = 15)
for (row in 1:15) {
	line <- as.character(tril[row,1])
	line <- strsplit(line, " ")
	for (col in 1:15){
		mat[row,col] <- as.numeric(line[[1]][col])
	}
}

print(mat)

bestrow <- mat[15,]

for (row in 14:1){
	for (col in 1:15){
		if (is.na(mat[row,col])){
			bestrow[col] <- 0
			break
		}
		suml <- bestrow[col] + mat[row,col]
		sumr <- bestrow[col+1] + mat[row,col]
		if (suml > sumr){
			bestrow[col] <- suml
		} else {
			bestrow[col] <- sumr
		}
			
		
			
	}
}

print(bestrow)