
#generar numero aleatorios para una muestra de 35 personas en una 
#población de 73 alumnas/os del 5to semestre de la LEP BENV

sample(x, side, replace=True/FALSE)

#Ejemplo
sample(1:73,35, replace = FALSE)
sample(1:70,34, replace=FALSE)


#Ejercicios

#1.1- Calcula el tamaño de muestra para una poblacion de 
#83 alumnas y alumnos que se encuentran en primer grado
#de la Licenciatura en Educación Primaria de la BENV.
LEP1<-c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
       11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
       21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
       31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
       41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
       51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
       61, 62, 63, 64, 65, 66, 67, 68, 69, 70,
       71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
       81, 82, 83)

coefint1=c(LEP1)

t.test(coefint1)

#1.2.- Una vez que obtengas el tamaño de la muestra, 
#selecciona el número de lista de las personas que formaran
#parte de la muestra.
sample(1:83,42, replace=FALSE)

#1.3.- Crea un vector llamado muestra con los números de 
#lista de las personas que forman parte de la muestra.
LEP1_muestra<-c(26, 10, 11, 37, 38, 14, 75, 48, 15, 63, 64, 53, 51,  9, 13, 
                29, 35, 55, 68, 46, 39, 65, 73, 83, 52, 28, 66, 42, 12, 74,
                30, 59,  5, 32, 31, 81, 56, 44, 54, 19, 70,  8)

#2.- Repite el ejercicio anterios ahora para una poblacion
# de 90 alumnas y alumnos de integran el segundo año de la
#licenciatura en Educación Primaria de la BENV.
LEP2<-c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
        11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
        21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
        31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
        41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
        51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
        61, 62, 63, 64, 65, 66, 67, 68, 69, 70,
        71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
        81, 82, 83, 84, 85, 86, 87, 88, 89, 90)

coefint2=c(LEP2)

t.test(coefint2)

sample(1:90,46, replace=FALSE)

LEP2_muestra<-c(53, 24, 88, 16, 18, 12, 15, 79, 34, 10, 50, 57, 41, 72, 38, 
                17, 85, 14, 22, 70, 63, 71, 90,  4, 58, 29, 13, 65, 46, 26,
                28, 36, 51, 86, 35,  3, 66, 25, 75, 43, 55, 20, 69, 52, 83,
                30)

#3.- Determina el número e identifíca a las personas que participarán
#en un estudio de seguimiento de egresados de la generación
#2015-2019 de las 5 licenciaturas de la BENV.

#Primaria: 78 personas egresadas.
Primaria<-c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
            11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
            21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
            31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
            41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
            51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
            61, 62, 63, 64, 65, 66, 67, 68, 69, 70,
            71, 72, 73, 74, 75, 76, 77, 78)

coefint3=c(Primaria)

t.test(coefint3)

sample(1:78,40, replace=FALSE)

Primaria_muestra<-c(50, 69, 60, 53, 52, 65, 48, 68, 49,  9, 13, 32, 78, 17, 77, 54,
                    11, 47, 74, 24, 14, 34, 31, 43, 76, 22, 26, 39, 29, 42, 15, 56,
                    37, 41, 75, 36, 18, 30, 23, 16)

#Preescolar: 84 personas egresadas.
Preescolar<-c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
            11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
            21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
            31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
            41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
            51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
            61, 62, 63, 64, 65, 66, 67, 68, 69, 70,
            71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
            81, 82, 83, 84)

coefint4=c(Preescolar)

t.test(coefint4)

sample(1:84,43, replace=FALSE)

Preescolar_muestra<-c(28, 81, 25, 62,  4, 52, 34, 47, 48, 59, 64, 63, 39, 40, 83,
                      51, 31, 43, 33, 66,  7, 70, 21, 22, 19, 42, 53, 45, 68, 24,
                      27, 30, 82,  2, 57, 84, 41, 44, 78, 29, 74, 77, 76)

#Física: 35 personas egresadas.
Fisica<-c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
              11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
              21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
              31, 32, 33, 34, 35)

coefint5=c(Fisica)

t.test(coefint5)

sample(1:35,18, replace=FALSE)

Fisica_muestra<-c(29, 24, 18, 23, 14, 15, 33, 31, 12,  8, 21,  5, 32, 27, 30,
                  10, 28,  2)

#Telesecundaria: 83 personas egresadas.
Telesecundaria<-c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
              11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
              21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
              31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
              41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
              51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
              61, 62, 63, 64, 65, 66, 67, 68, 69, 70,
              71, 72, 73, 74, 75, 76, 77, 78, 79, 80,
              81, 82, 83)

coefint6=c(Telesecundaria)

t.test(coefint6)

sample(1:83,42, replace=FALSE)

Telesecundaria_muestra<-c(  3,  5, 45, 77, 70, 19, 75, 74, 39, 50, 
                           82, 48, 80, 58,  9, 59, 17, 33, 73, 66,
                           46,  6, 35,  1, 55, 23, 24, 26, 44, 10,
                           69, 81, 20, 41, 60,  2, 52, 28, 43, 12,
                           71, 68)
#Especial: 25 personas.
Especial<-c( 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
            11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
            21, 22, 23, 24, 25)

coefint7=c(Especial)

t.test(coefint7)

sample(1:25,13, replace=FALSE)

Especial_muestra<-c(14,  3, 12, 21, 24,  2,  5, 16,  4,  7, 15, 13, 10)
