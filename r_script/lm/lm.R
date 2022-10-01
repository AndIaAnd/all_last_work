library(MASS)
library(ISLR)

fix(Boston)
names(Boston)

?Boston
lm.fit <- lm(medv ~ . , data = Boston)
plot(lm.fit)
names(summary(lm.fi1))

summary(lm.fit)
lm.fi1 <- lm(medv ~ + chas:crim:medv + nox + rm + dis + rad + tax + ptratio + black + lstat , data = Boston)
summary(lm.fi1)
plot(lm.fi1)
names(lm.fi1) # здесь я хочу выяснить недостающие имена 
coef(lm.fi1)
# короче смысл иследования добиться максимально минимального наличия отрицательных чисел
# и чисел отличных от нуля
# т.е цель - зануление по всем ключевым параметрам 
lma <- lm(examsquiz[,2] ~ examsquiz[,1])

lma <- lm(examsquiz$V2 ~ examsquiz$V1)
attributes(lm.fi1)
lm.fi1$coefficients
example(persp)
help.search("multivariate normal")
??"summary coef"
