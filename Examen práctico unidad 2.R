#Analisis de datos

install.packages("likert")
install.packages("ggplot2")
library(likert)
library(ggplot2)

#utilizar matriz de datos
data("pisaitems")

#Cambiar nombre
pisa<-pisaitems

#Explorar la matriz
names(pisa)
typeof(pisa)
str(pisa)

#Visualizar los valores que componen una variable
head(pisa$ST24Q01)
head(pisa$ST42Q04)

#buscar los valores perdidos
anyNA(pisa)

#numero total de valores perdidos 
sum(is.na(pisa))

#eliminacion de filas con datos perdidos
#crear nueva matriz
pisa2<-na.omit(pisa)

#verificar que la nueva matriz no tenga valores perdidos
anyNA(pisa2)

head(pisa2)


#TRABAJAR CON LA MATRIZ DE DATOS
#agrupar items

names(pisa2)

items39ney<-pisa2[,64:70]
head(items39ney[1:5,1:5])


#Renombrar etiquetas
levels(items39ney)<-c("Nunca",
                   "Pocas veces al año",
                   "Cerca de una vez al mes",
                   "Varias veces en un mes",
                   "Varias veces en una semana")

#colocar nombres a los indicadores
names(items39ney)<-c("Pedir prestados libros para leer por placer",
                  "Pedir prestados libros para el trabajo escolar",
                  "Trabajar en la tarea, curso, trabajo, o trabajos de investigación",
                  "Leer revistas o periodicos",
                  "Leer libros por diversión",
                  "Aprender sobre cosas que no son relacionados con el curso, como
                  deportes, pasatiempos, gente o música",
                  "Utilizar internet")

l39<-likert(items39ney)

#grafico de barras
plot(l39,type = "bar", centered=FALSE)

library(plyr)
plot(l39,type = "bar",centered=TRUE, plot.percents=TRUE)

plot(l39,group.order = colnames(items39ney))

likert.density.plot(l39,facet = TRUE,Bw=0.5,
                    legend = "Grafico de Densidad")

plot(l39,type = "heat")
