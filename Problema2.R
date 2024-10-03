#Codigo para problema 2

mis_dades <- iris
mis_dades

x <- mis_dades$Petal.Length
x

y <- mis_dades$Sepal.Length
y

#Calcular la recta de regrsion per minims quadrats entre Sepal.Lenth i Petal.Lenth

plot(x,y)

#escribimos el codigo de la pendiente (m)

x_barra <- mean(x)
x_barra
y_barra <- mean(y)
y_barra

m <- sum((x-x_barra)*(y-y_barra))/sum((x-x_barra)^2)
m

b <- y_barra - m*x_barra
b
#prediccio de petal.length 1.5

m*1.5+b

#prediccion sobre mis observaciones

y_pred <- m*x+b

plot(x,y)
lines(x,y_pred)
plot(x,y_pred)

#calcula el coeficiente de correlacion^2

R_sq <- sum((y_pred-y_barra)^2)/sum((y-y_barra)^2)
R_sq

##### Usando las funciones de R

#Te da la b y la m de la linea de regresion lineal

mod <- lm(y~x)
mod
summary(mod)


cor.test(x,y)

