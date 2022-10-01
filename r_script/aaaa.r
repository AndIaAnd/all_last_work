a <-sample(1:10)
# вычисляем интеграл E(1-2)x^2dx
a <- 1; b <- 2 # границы промежуточного интегрирования
n <- 1000 # число узлов интегрирования
x <- seq(a, b, length.out=n) # координаты узлов сетки
h <- x[2]-x[1] # шаг сетки
y <- x^2 # значение подинтегральной функции
sd <- h*sum(y[-length(y)]) # нижняя интегральная сумма
su <- h*sum(y[-1]) # верхняя интегральная сумма
sd
su
(su+sd) / 2 # метод трапеций

M <- matrix(1:16, 4, 4)
M
apply(M, 1, min)
apply(M, 2, mean)
apply(M, 2, is.vector)
# apply good from matrix 
x <- list(a = 1, b= 1:3, c = 10:50)
x
lapply(x, sum)
lapply(c(1,2,4), function(x) x^2 )
lapply(c(1,2,4), function(x, y) 
  x^2+y,
  3
  )
#число 3 будет y)
findruns <- function(x,k){
  n <- length(x)
  runs <- NULL
  for (i in 1:(n-k+1)){
    if (all(x[i:(i+k-1)]==1)) runs <- c(runs,i)
  }
  return(runs)
}
y <- c(1, 0, 0, 1, 1, 1, 0, 1, 1)
findruns(y, 6)
x <- 1:10
y <- ifelse(x %% 2 == 0, 5, 12) # здесь мы создаем фактически вектор 5/12
y
x <- c(5, 2, 9, 12)
ifelse(x > 6,2*x,3*x) #  если х больше то 2 в степень, иначе 3 умножь на икс
makecov <- function(rho,n) {
  m <- matrix(nrow=n,ncol=n)
  m <- ifelse(row(m) == col(m),1,rho)
  return(m)
}
