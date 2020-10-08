#Tema: Tablas de frecuencias

#1.- Leer la matriz de datos
cars<-data(mtcars)

#2.- Explorar la matriz de datos
names(mtcars)

#3.- Explorar la dimensión de la matriz
dim(mtcars)

#4.- Identificar los tipos de variables
str(mtcars)

#5.- Detectar valores perdidos
anyNA(mtcars)

#6.- Explorar una variable
mtcars$carb

#7.- Revisar el tipo de matriz de datos
typeof(mtcars)

#7.- Agrupar los valores para la variable carb
tabla_PL<-as.data.frame(table(PL = mtcars$carb))

#8.- Mostrar la tabla de contingencia para la variable PL
#con su respectiva frecuencia absoluta
tabla_PL

#9.- Construir la tabla de frecuencias completas redondeando
#las frecuencias absolutas a 3 decimales
transform(tabla_PL,
          freqAc=cumsum(Freq),
          Rel= round(prop.table(Freq), 3),
          RelAc=round(cumsum(prop.table(Freq)),3))

#10.- Agrupar las variables en 5 clases y se
#calcula la frecuencia absoluta
tabla_clases<-as.data.frame (table
                             (carb = factor
                               (cut(mtcars$carb,
                                    breaks = 4))))

#11.-Visualizar la tabla de clases
tabla_clases

#12.- Construir la tabla de frecuencias completa redondeando las frecuencias
#relativas a 3 decimales
transform(tabla_clases,
          freqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))
