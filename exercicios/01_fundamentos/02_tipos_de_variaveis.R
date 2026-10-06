#INTEIRO
#a seta em R atribui o valor a uma variavel
#se colocar o valor atribuido a um inteiro sem o L ele se torna um double, pois ele identifica que terá operaçoes aritimeticas futuras
#ao colocar o L apos o numero voce indicara ao R que quer armazená-lo como um numero inteiro
x <- 2L
#informa o tipo de variavel apresentada, nesse caso: tipo inteiro
typeof(x)

#DOUBLE
y <-2.5
typeof(y)

#COMPLEXOS
z <- 3 + 2i
typeof(z)

#Caracter
#ao criar uma variavel é necessario executar a linha onde a variavel foi atribuida antes de executar todo o codigo restante, se nao ira dar erro de que a variavel nao existe
a <- "H"
typeof(a)

#LOGICO
q1 <- T
typeof(q1)
q2 <- FALSE
typeof(q2)
