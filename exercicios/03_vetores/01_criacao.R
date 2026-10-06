Vector <- c(3,45,56,732)
Vector
is.numeric(Vector)
is.integer(Vector)
is.double(Vector)

V2 <- c(31,12L,243L,0L)
is.numeric(V2)
is.integer(V2)
is.double(V2)

V3 <- c("a","823","Hello",7)
V3
is.character(V3)
is.numeric(V3)

# seq() cria sequências.
# rep() repete valores.

seq(1,15)
1:15

seq(1,15,2)
z <- seq(1,15,4)
z

rep(3,50)
d <- rep(3,50)
rep("a",50)

x <- c(80,20)
y <- rep(x,10)
y
