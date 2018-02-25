#problem 18
#traverse a triangle to find path with greatest sum

tril <- read.table("p-018d.txt", header = FALSE, fill = TRUE, nrows = 15, sep = "\r")

#HELPERS
highest.dn <- function(mymatrix,mrow,mcol){
	mrow <- mrow+1
	if (mymatrix[mrow,mcol] > mymatrix[mrow,mcol+1]){
		return(c(mymatrix[mrow,mcol],mrow,mcol))
	} else {
		return(c(mymatrix[mrow,mcol+1],mrow,mcol+1))
	}
}

highest.up <- function(mymatrix,mrow,mcol){
	mrow <- mrow-1
	print(mcol)
	if (is.na(mymatrix[mrow,mcol])){
		return(c(mymatrix[mrow,mcol-1],mrow,mcol-1))
	}
	if (mymatrix[mrow,mcol] > mymatrix[mrow,mcol-1]){
		return(c(mymatrix[mrow,mcol],mrow,mcol))
	} else {
		return(c(mymatrix[mrow,mcol-1],mrow,mcol-1))
	}
}

sum.down <- function(mymatrix,rows){
	initrow <- 1
	initcol <- 1
	initsum <- mymatrix[initrow,initcol]
}


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

row <- 1
col <- 1
sum <- mat[row,col]
bestroute <- matrix(, nrow=15, ncol=2)
bestroute[1,1] <- 1
bestroute[1,2] <- mat[row,col]

for (i in 1:2) {
	tres <- highest.dn(mat,row,col)
	row <- tres[2]
	col <- tres[3]
	sum <- sum+tres[1]
	bestroute[row,1] <- col
	bestroute[row,2] <- tres[1]
	for (itemno in 1:row){
		if (mat[row,itemno] > bestroute[row,2]){
			thisroute <- matrix(, nrow=15, ncol=2)
			while (row > 1) {
				thisroute[row,1] <- itemno
				thisroute[row,2] <- mat[row,itemno]
				tres <- highest.up(mat,row,itemno)
				row <- tres[2]
				col <- tres[3]
				thisroute[row,1] <- col
				thisroute[row,2] <- tres[1]
			}
			print(thisroute)
		}
	}
}
print(sum)
print(bestroute)