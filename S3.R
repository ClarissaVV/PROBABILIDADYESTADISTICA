
#Práctica: trabajo con la matriz de datos "flores"
#que es la traducción de la matriz "iris".
#Revisar los códigos para:
   #1.- Explorar una matriz de datos.
   #2.- Obtener las estadísticas descriptivas y de dispersión.
   #3.- Generar algunos gráficos.
   #4.- Prueba de Normalidad.

install.packages("datos") #Este comando descarga el paquete.
library(datos) #Este comando abre el paquete.

#Abrir la matriz de datos flores y ponerlo dentro de un
#objeto de igual nombre.
flores<-(datos::flores)

atm<-(datos::flores)

#Explorar la matriz de datos con los siguientes comandos.
?flores # Ayuda
dim(flores) #Dimensión
names(flores) #Nombre de las variables
str(flores) #Tipo de variable
anyNA(flores) #Indica datos perdidos
typeof(flores) #Tipo de matriz de datos
View(flores) #Visualización de la tabla (data frame)

#Convertimos la matriz de datos en un "marco de datos"
flores_1<-as.data.frame(flores)

#Iniciar calculando los estadísticos descriptivos.
summary(flores_1) # (resumen) similar comando

#Instalar el paquete modeest y abrir la librería.
install.packages("modeest")
library(modeest)

#Calcular la moda con la función mfv()
mfv(flores_1$Largo.Sepalo)
mfv(flores_1$Ancho.Sepalo)
mfv(flores_1$Largo.Petalo)
mfv(flores_1$Ancho.Petalo)
mfv(flores_1$Especies)

#Calcular la varianza de cada una de las variables 
#cuantitativas.
var(flores_1$Largo.Sepalo)
var(flores_1$Ancho.Sepalo)
var(flores_1$Largo.Petalo)
var(flores_1$Ancho.Petalo)

#Calcular la desviación standar para cada una de las
#variables cuantitativas.
sd(flores_1$Largo.Sepalo)
sd(flores_1$Ancho.Sepalo)
sd(flores_1$Largo.Petalo)
sd(flores_1$Ancho.Petalo)

#Calcular el error para la variable largo del sépalo.
mean_1<-mean(flores_1$Largo.Sepalo)
error_1<-(flores_1$Largo.Sepalo-(mean_1))

#Visualizar el objeto error_1.
error_1

#Instalar el paquete FinCal y abrir librería.
install.packages("FinCal")
library(FinCal)

#Calcular el coeficiente de variación.
coefficient.variation(sd=sd(flores_1$Largo.Sepalo),
                      avg=mean(flores_1$Largo.Sepalo))

#Interpretación: El largo del sépalo de las 3 especies tiene
#un coeficiente de variación del 0.14, lo multiplicamos por 100 y obtenemos
#el 14%, es decir, la variable largo del sépalo tiene un coeficiente de
#variación del 14% con respecto a la media.

#----------Construcción de gráficos.

#Instalar los paquetes tidyverse y RColorBrewer.
install.packages("tidyverse")
install.packages("RColorBrewer")

#Abrir las librerías.
library(tidyverse)
library(RColorBrewer)

#Gráfico de Barras.

#Construcción de la tabla.
attach(flores_1)
tabla_especies<-table(flores_1$Especies)

#Visualizar la variable x que contiene la columna de Especies.
tabla_especies

#Especificar la paleta de colores a utilizar.
color=c("light green", "light pink", "lavender")

#Construir el gráfico de la variable x.
barplot(tabla_especies, xlab = "Especies", ylab = "Frecuencias",
        main = "Gráfico de barras de Especies", col = color)

#BOXPLOT
boxplot<-ggplot(flores_1, aes(factor(Especies),
                              Largo.Sepalo, fill=Especies))+
  geom_boxplot()+
  ggtitle("Boxplot del Largo del sepalo")+
  xlab("Especies")+
  ylab("Largo.Sepalo")

#Visualizar el gráfico.
boxplot

#Diagrama de dispersión 1
dispersion_1 <- ggplot ( flores_1, aes ( x = Largo.Petalo , y = Largo.Sepalo , color = Especies )) +
  geom_point ()

#Visualizar el gráfico.
dispersion_1

#Diagrama de dispesión 2
attach(flores)
par(mfrow=c(1,1)) #Volver a definir una ventana normal
dispersion_2<-plot(flores$Largo.Petalo,flores$Ancho.Petalo,pch=19,
                   col="dark blue",
                   xlab = "Largo del pétalo",
                   ylab = "Ancho del pétalo")

#Diagrama de dispesión 3
dispersion_3 <- ggplot ( flores , aes ( x = flores $ Largo.Sepalo , y = flores $ Ancho.Sepalo ,
                                        color = Especies )) +
  geom_point ( alfa = .9 ) +
  xlab ( " Largo del sépalo " ) +
  ylab ( " Ancho del sépalo " )

#Visualizar el gráfico.
dispersion_3

#Diagrama de dispersión múltiple
pairs ( flores [, 1 : 4 ], pch = 19 ,
        col = c ( " blue " , " green " , " orange " ) [ flores [, 5 ]])

#Histograma 1, visualizando la variable largo del pétalo

ggplot ( flores , aes ( x = Largo.Petalo )) +
  geom_histogram ( binwidth  =  0.1 , col = " black " , fill = " green " , alpha = 0.4 ) +
  xlab ( " Largo del pétalo " ) +
  ylab ( " Frecuencia " ) +
  ggtitle ( " Histograma del largo del pétalo " )

#Histograma 2
par ( mfrow = c ( 1 , 3 ))

hist(flores[1:50,3], main = "Largo del Pétalo (setosa)",
     xlab = "", ylab = "Frecuencias", col = "red", breaks = "Sturges")+
  hist(flores[51:100,3], main = "Largo del Pétalo (versicolor)",
       xlab = "", ylab = "Frecuencias", col = "blue", breaks = "Sturges")+
  hist(flores[101:150,3], main = "Largo del Pétalo (virginica)",
       xlab = "", ylab = "Frecuencias", col = "green", breaks = "Sturges")

# Prueba de Normalidad de Shapiro-Wilk
shapiro.test(flores$Largo.Sepalo)

# Ejemplo:

# arg1 = 1000 números aleatorio
# arg2 = media igual a 5
# arg3 = desviación estándar igual a 0.005
prueba <- rnorm ( 1000 , 5 , 0.05 )
hist ( prueba )

shapiro.test ( prueba )