#Codigo para problema 1

R2 <- 0.1923

R <- sqrt(R2)
R

m <- 0.06576
b <- 11.78755
x <- 647.1
m*x+b
x <- 1:700
y_pred <- m*x+b
plot(x,y_pred, type="l", ylim=c(0,120))
