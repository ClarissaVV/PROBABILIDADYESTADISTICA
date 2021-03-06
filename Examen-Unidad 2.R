
#Abrir paquetes
library(likert)
library(ggplot2)

# Matriz de datos de los resultados de la prueba PISA en 2009
data("pisaitems")

# Nuevo nombre a la matriz de datos
pisa<-pisaitems

# Explorar la matriz de datos
names(pisa)
typeof(pisa)
str(pisa)

# Buscar los valores perdidos
anyNA(pisa)

# Numero total de datos perdidos en la matriz de datos
sum(is.na(pisa))

# Eliminacion de filas con datos perdidos y crear una nueva matriz
pisa2<-na.omit(pisa)

# Verificar que la nueva matriz no tenga valores perdidos
anyNA(pisa2)

head(pisa2)

# Agrupamiento de items
names(pisa2)
items27<-pisa2[,25:37]
head(items27[1:13,1:13])

# Renombrar las etiquetas de respuestas
levels(items27)<-c("Casi nunca","Algunas veces","A menudo", "Casi siempre")

# Colocar los nombres a los indicadores
names(items27)<-c("Cuando estudio, trato de memorizar todo lo que se cubre en el texto",
                  "Cuando estudio, empiezo por averiguar qu� es exactamente lo que necesito aprender",
                  "Cuando estudio, trato de memorizar tantos detalles como sea posible",
                  "Cuando estudio, trato de relacionar nueva informaci�n con conocimientos previos adquiridos en otras materias",
                  "Cuando estudio, leo el texto tantas veces que puedo recitarlo",
                  "Cuando estudio, verifico si entiendo lo que he le�do",
                  "Cuando estudio, leo el texto una y otra vez",
                  "Cuando estudio, descubro c�mo la informaci�n podr�a ser �til fuera de la escuela",
                  "Cuando estudio, trato de averiguar qu� conceptos todav�a no he entendido realmente",
                  "Cuando estudio, trato de comprender mejor el material relacion�ndolo con mis propias experiencias",
                  "Cuando estudio, me aseguro de recordar los puntos m�s importantes del texto",
                  "Cuando estudio, descubro c�mo la informaci�n del texto encaja con lo que sucede en la vida real",
                  "Cuando estudio y no entiendo algo, busco informaci�n adicional para aclarar esto")

l27<-likert(items27)

# Grafico de barras con porcentajes (gr�fica elegida) 
library(plyr)

plot(l27,type="bar",centered=TRUE,plot.percents=TRUE)


# Grafico de densidad
likert.density.plot(l27,facet=TRUE,bw=0.5,
                    legend="Gr�fico de densidad")

# gr�fico de calor
plot(l27,type="heat")
