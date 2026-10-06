# ---- -2 ---- -1 ---- 0 ---- 1 ---- 2 ----

set.seed(42)
x <- rnorm(1)

if(x>1){
  answer <- "Greater than 1"
} else{
  #  answer <-"Less than 1"
  if(x >= -1){
    answer <- "Between -1 and 1"
  }else{
    answer <- "Less than -1"
  }
}
print(x)
print(answer)
