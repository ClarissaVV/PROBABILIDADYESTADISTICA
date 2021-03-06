
# 3er Examen Parcial. (parte I) Distribuci�n Binomial y Poisson

# Distribuci�n de probabilidad / Datos discretos / Binomial

# EJEMPLO: 
# Suponga que hay doce preguntas de opci�n m�ltiple en un examen de matem�ticas.
# Cada pregunta tiene cinco posibles respuestas, y s�lo una de ellas es correcta. 
# Encuentre la probabilidad de tener cuatro o menos respuestas correctas si un 
# estudiante intenta responder a cada pregunta al azar.

# Probabilidad de escoger una respuesta de 5 posibles: p=1/5=0.2

# Espacio muestral (12 preguntas en total): n=12

# Probabilidad de tener 4 respuestas correctas elegidas aleatoriamente: k=4

# Soluci�n 1:
dbinom(4, 12, prob = 0.2)

# Soluci�n 2:
sum(dbinom(4, 12, prob = 0.2))

# EJERCICIO 1:
# �Cu�l es la probabilidad de que 2 o 3 preguntas sean respondidas correctamente?
# (Continuaci�n del ejercicio anterior)

# Probabilidad de escoger una respuesta de 5 posibles: p=0.2

# Espacio muestral (12 preguntas en total): n=12

# Probabilidad de tener 2 o 3 respuestas correctas elegidas aleatoriamente: k=3

# Soluci�n:
(dbinom(3, 12, prob = 0.2))

# EJERCICIO 2:
# Supongamos que la empresa Apple fabric� el Iphone 11S con una probabilidad 
# de 0.005 de ser defectuoso. El producto se env�a en una caja que contiene 25 
# art�culos. �Cu�l es la probabilidad de que una caja elegida al azar contenga un 
# Iphone 11S defectuoso?

# Probabilidad de que el Iphone 11S sea defectuoso: p=0.005

# Espacio muestral (25 art�culos): n=25

# Probabilidad de que una caja contenga 1 Iphone 11S defectuoso: k=1

# Soluci�n:
sum(dbinom(1, 25, prob = 0.005))



# Distribuci�n de probabilidad / Datos discretos / Poisson

#EJEMPLO:
# Suponga que se desea saber el n�mero de llegadas de los estudiantes de una
# Escuela Primaria en un lapso de 15 minutos a la entrada de la escuela. Se puede 
# suponer que la probabilidad de llegada de los estudiantes es la misma que 
# cualquiera de los dos lapsos con la misma direcci�n siendo estas independientes
# a que llegue o no el estudiante. El n�mero promedio de alumnos que llegan en 
# un lapso de 15 minutos son 35.Para optimizar la llegada de los estudiantes 
# evitando las aglomeraciones se requiere saber la probabilidad de que lleguen 
# 50 alumnos en 15 minutos.

# x= n�mero de alumnos
# lamda= tiempo de llegada.

# Probabilidad de que 35 alumnos lleguen en 15 minutos a la entrada de la escuela
# Soluci�n:
dpois(35,15)

# Probabilidad de que 50 alumnos lleguen en 15 minutos a la entrada de la escuela
# Soluci�n: 
dpois(50,15)

# EJERCICIO:
# 1.- �Cu�l es la probabilidad de que a la escuela lleguen 34 alumnos en 5 minutos?
dpois(34,5)

# 2.-�Cu�l es la probabilidad de que a la salida de la escuela, se encuentren 60
# alumnos en 5 minutos?
dpois(60,5)
  
# 3.- �Cu�l es la probabilidad de que a la salida de la escuela, se encuentren 
# 120 alumnos en 5 minutos?
dpois(120,5)
