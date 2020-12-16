
# 3er Examen Parcial. (parte I) Distribución Binomial y Poisson

# Distribución de probabilidad / Datos discretos / Binomial

# EJEMPLO: 
# Suponga que hay doce preguntas de opción múltiple en un examen de matemáticas.
# Cada pregunta tiene cinco posibles respuestas, y sólo una de ellas es correcta. 
# Encuentre la probabilidad de tener cuatro o menos respuestas correctas si un 
# estudiante intenta responder a cada pregunta al azar.

# Probabilidad de escoger una respuesta de 5 posibles: p=1/5=0.2

# Espacio muestral (12 preguntas en total): n=12

# Probabilidad de tener 4 respuestas correctas elegidas aleatoriamente: k=4

# Solución 1:
dbinom(4, 12, prob = 0.2)

# Solución 2:
sum(dbinom(4, 12, prob = 0.2))

# EJERCICIO 1:
# ¿Cuál es la probabilidad de que 2 o 3 preguntas sean respondidas correctamente?
# (Continuación del ejercicio anterior)

# Probabilidad de escoger una respuesta de 5 posibles: p=0.2

# Espacio muestral (12 preguntas en total): n=12

# Probabilidad de tener 2 o 3 respuestas correctas elegidas aleatoriamente: k=3

# Solución:
(dbinom(3, 12, prob = 0.2))

# EJERCICIO 2:
# Supongamos que la empresa Apple fabricó el Iphone 11S con una probabilidad 
# de 0.005 de ser defectuoso. El producto se envía en una caja que contiene 25 
# artículos. ¿Cuál es la probabilidad de que una caja elegida al azar contenga un 
# Iphone 11S defectuoso?

# Probabilidad de que el Iphone 11S sea defectuoso: p=0.005

# Espacio muestral (25 artículos): n=25

# Probabilidad de que una caja contenga 1 Iphone 11S defectuoso: k=1

# Solución:
sum(dbinom(1, 25, prob = 0.005))



# Distribución de probabilidad / Datos discretos / Poisson

#EJEMPLO:
# Suponga que se desea saber el número de llegadas de los estudiantes de una
# Escuela Primaria en un lapso de 15 minutos a la entrada de la escuela. Se puede 
# suponer que la probabilidad de llegada de los estudiantes es la misma que 
# cualquiera de los dos lapsos con la misma dirección siendo estas independientes
# a que llegue o no el estudiante. El número promedio de alumnos que llegan en 
# un lapso de 15 minutos son 35.Para optimizar la llegada de los estudiantes 
# evitando las aglomeraciones se requiere saber la probabilidad de que lleguen 
# 50 alumnos en 15 minutos.

# x= número de alumnos
# lamda= tiempo de llegada.

# Probabilidad de que 35 alumnos lleguen en 15 minutos a la entrada de la escuela
# Solución:
dpois(35,15)

# Probabilidad de que 50 alumnos lleguen en 15 minutos a la entrada de la escuela
# Solución: 
dpois(50,15)

# EJERCICIO:
# 1.- ¿Cuál es la probabilidad de que a la escuela lleguen 34 alumnos en 5 minutos?
dpois(34,5)

# 2.-¿Cuál es la probabilidad de que a la salida de la escuela, se encuentren 60
# alumnos en 5 minutos?
dpois(60,5)
  
# 3.- ¿Cuál es la probabilidad de que a la salida de la escuela, se encuentren 
# 120 alumnos en 5 minutos?
dpois(120,5)
