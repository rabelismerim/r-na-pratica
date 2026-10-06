set.seed(42)
x <- rnorm(5)
x
#R-specific programing loop
for (i in x){
  print(i)
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

#convencional progaming loop
for(j in 1:5){
  print(x[j])
}

#---------------------- SEGUNDA PARTE




N <- 100
a <- rnorm(N)
b <- rnorm(N)

#Vectorized approach

c <- a * b

#De-vectorized approach

d <- rep(NA,N)
for (i in 1:N){
  d[i] <- a[i] * b[i]
}


stopifnot(isTRUE(all.equal(c, d)))
