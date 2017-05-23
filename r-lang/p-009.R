# problem 9
# find a pythagorean triplet that sums to 1000


for (a in 1:1000) {
	for (b in 1:(1000-a)) {
		for (c in 1:(1000-a-b)) {
			if ( (a+b+c)==1000 ) {
				vec <- sort(c(a,b,c))
				if ((vec[1]*vec[1] + vec[2]*vec[2]) == (vec[3]*vec[3])) 
					{print(vec)
					print(vec[1]*vec[2]*vec[3])
					return() }
			}
		}
	}
}