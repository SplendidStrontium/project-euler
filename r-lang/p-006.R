# problem 6
# find diff between the sum of the squares of 1-100 and the sq of sum



# MAIN

a <- 1
for ( n in 2:100) {
	a <- a+n }
a <- a*a

b <- 1
for (n in 2:100) {
	b <- b + n*n }

print(a-b)
