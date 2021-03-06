
# 3er Examen parcial. (parte II) Distribuci� Normal

# EJEMPLO 1:
# X es una variable normalmente distribuida con una media de 30 y una desviaci�n
# est�ndar de 4.

# Conocemos:
#    Media = 30
#    Desviaci�n est�ndar = 4

# Encontrar:

# a) P(x<40)
# Para X=40
pnorm(2.5)
pnorm(40,mean = 30, sd=4, lower.tail = TRUE)

# b) P(x>21)
# Para X=21
pnorm(-2.25)
pnorm(21,mean = 30, sd=4, lower.tail = TRUE)

# c) P(30<x<35)
# Para X1=35 y X2=30
pnorm(35,mean = 30, sd=4, lower.tail = TRUE) - 
  pnorm(30,mean = 30, sd=4, lower.tail = TRUE)

# EJERCICIO 1:
# X es una variable normalmente distribuida con una media de 45 y una desviaci�n
# est�ndar de 2.

# Conocemos:
#    Media = 45
#    Desviaci�n est�ndar = 2

# Encontrar: 

# a) P( x < 75)
pnorm(15)
pnorm(75, mean = 45, sd=2, lower.tail = TRUE)

# b) P( x > 13)
pnorm(-16)
pnorm(13, mean = 45, sd=2, lower.tail = TRUE)

# c) P(60 < x < 82).
pnorm(82, mean = 45, sd=2, lower.tail = TRUE) - 
  pnorm(60, mean = 45, sd=2, lower.tail = TRUE)

# EJEMPLO 2:
# El ingreso a una determinada universidad se determina mediante un examen nacional. 
# Los resultados de esta prueba se distribuyen normalmente con una media de 500 y 
# una desviaci�n est�ndar de 100. Timmy quiere ser admitido en esta universidad y 
# sabe que debe obtener mejores resultados que al menos el 70% de los estudiantes 
# que tomaron el examen.

# Timmy presenta el examen y obtuvo 585 puntos. �Ser� admitido en esta universidad?

# a) Genera el siguiente gr�fico:
n=1000
hist(rnorm(n,500,100),20, col = "blue")
abline(v=585, col= 2)

# b) Soluci�n:
pnorm(585,mean=500, sd=100)
0.8023375*100

# EJERCICIO 2:
# El ingreso a la BENV se determina mediante la prueba estandarizada EXANII-II. 
# Los resultados de esta prueba se distribuyen normalmente con una media de 1000 
# y una desviaci�n est�ndar de 100. T� quieres ser admitido en esta instituci�n 
# y sabes que debes obtener mejores resultados que al menos el 90% de los 
# estudiantes que tomaron el examen.

# Presentas el examen y obtuviste 1185 puntos.
# �Ser�s admitida/o en la BENV?

# Generar gr�fico
n=2600
hist(rnorm(n,1000,100),50, col = "red")
abline(v=1185, col=2)

# Soluci�n: 
pnorm(1185,mean = 1000, sd=100)
0.9678432*100


# Prueba de hip�tesis / T-test / Ejercicio (Replica)
set.seed(10)
x <- rnorm(100,10) # Creaci�n de una variable aleatoria de media 10
Media <- 10
test <- t.test(x, mu=Media) # Comparaci�n de la media muestral con la media
print(test)