#Analisis de datos en scala likert

install.packages("likert")
install.packages("ggplot2")
library(likert)
library(ggplot2)

#para este ejercicio se va a utilizar la matriz de datos
#de los resultados de la prueba PISA 2009
#que se encuentra precargada en el paquete likert
#mediante el comando data 
data("pisaitems")

#le damos un nuevo nombre a la matriz de datos 
#para su mejor uso
pisa<-pisaitems

#exporar la matriz de datos
names(pisa)
typeof(pisa)
str(pisa)

#se visualizaran los valores que componen una variable
head(pisa$CNT)
head(pisa$ST24Q01)
head(pisa$ST24Q02)

#buscar los valores perdidos
anyNA(pisa)

#numero total de datos perdidos en la matriz de datos
sum(is.na(pisa))

#eliminar las filas con los datos perdidos 
#y crear una nueva matriz
pisa2<-na.omit(pisa)

#verificar que la nueva matriz no tenga valores perdidos
anyNA(pisa2)

head(pisa2)

#trabajar sobre la matriz de datos

#VARIABLE 24
#primero se agrupan los items
names(pisa2)
items24<-pisa2[,2:12]
head(items24[1:6,1:6])

#Renombrar las etiquetas de respuesta
levels(items24)<-c("Completamente en desacuerdo",
                   "En desacuerdo",
                   "De acuerdo",
                   "Completamente de acuerdo")

#colocar los nombres a los indicadores
names(items24)<-c("Leo si es necesario",
                  "Leer es de mis pasatiempos favoritos",
                  "Me gusta hablar de libros con otras personas",
                  "Encuentro dificil terminar un libro",
                  "Me siento felíz sí recibo un libro como regalo",
                  "Para mí, leer es una pérdida de tiempo",
                  "Disfruto ir a una librería o biblioteca",
                  "Leo sólo para obtener la información que necesito",
                  "No puedo estar sentado leyendo por más de 5 minutos",
                  "Me gusta expresar mi opinión sobre un libro cuando lo he leído",
                  "Me gusta intercambiar libros con mis amigas-os")

l24<-likert(items24)

#generar el grafico de barras
plot(l24,type = "bar",centered=FALSE)

#generar grafico de barras con porcentajes
install.packages("plyr")
library(plyr)

plot(l24,type="bar",centered=TRUE, plot.percents=TRUE)

#Grafico de barras ordenado
plot(l24,group.order = colnames(items24))

#grafico de densidad 
likert.density.plot(l24,facet=TRUE,bw=0.5, 
                    legend = "Gráfico de densidad")

#grafico de calor 
plot(l24, type="heat")

#VARIABLE 25

#agrupamiento de items
items25<-pisa2[,substr(names(pisa2),1,5)=='ST25Q']

#identificar las respuestas de agrupamiento
#y generamos una nueva variable.
names(items25)<-c("Magazines","Comics books","Fiction",
                  "Non-Fiction books","Newspapers")
l25<-likert(items25)

#visualizar los niveles en los que se agrupan los
#indicadores
head(l25)

#Generar el gráfico de barras de las respuestas el conjunto.
plot(l25, type="bar", centered=FALSE)

#Grafico de barras con porcentajes
install.packages("plyr")
library(plyr)

plot(l25,type="bar",centered=TRUE, plot.percents=TRUE)

#Grafico de media y sd
#Activar la funcion plot.likert
#se encuentra en un script alterno


plot.likert(as.numeric(pisa2$ST24Q01),
            left="Completamente en desacuerdo",
            right="Completamente de acuerdo",
            plot.median=TRUE,
            plot.sd=TRUE,)
