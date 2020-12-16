#DISTRIBUCIONES CONTINUAS.

#1.-X es una variable normalmente 
#distribuida con una media de 30 y una desviación estándar de 4.

#a)Para X= 40
#Conocemos: 
#µ=30
#σ = 4

pnorm(2.5)
pnorm(40,mean=30, sd=4, lower.tail=TRUE)

#b)Para X= 21
#Conocemos:
#µ=30
#σ = 4

pnorm(-2.25)
pnorm(21,mean=30, sd=4, lower.tail=TRUE)

#c)P(30 < x < 35)
#Conocemos:
#μ = 30
#σ = 4

pnorm(35,mean=30, sd=4, lower.tail=TRUE) - pnorm(30,mean=30, sd=4, lower.tail=TRUE)

#2.-X es una variable normalmente distribuida con una media 
#de 45 y una desviación estándar de 2.
#Conocemos: 
#µ=45
#σ=2

#a)Para X=75
pnorm(15)
pnorm(75,mean=45, sd=2, lower.tail=TRUE)

#b)Para X=13
pnorm(-16)
pnorm(13,mean=45, sd=2, lower.tail=TRUE)

#c)Para X=60 y X=82
pnorm(82,mean=45, sd=2, lower.tail=TRUE) - pnorm(60,mean=45, sd=2, lower.tail=TRUE)

#3.- El ingreso a una determinada universidad se determina mediante 
#un examen nacional.
#Los resultados de esta prueba se distribuyen normalmente con una
#media de 500 y una desviación estándar de 100. Timmy quiere ser 
#admitido en esta universidad y sabe que debe obtener mejores 
#resultados que al menos el 70% de los estudiantes que tomaron el examen. 
#Timmy presenta el examen y obtuvo 585 puntos.
#¿Será admitido en esta universidad?

#a) Genera el siguiente gráfico:
n=1000
hist(pnorm(n,500,100),20, col = "blue")
abline(v=585, col=2)

pnorm(585,mean=500, sd=100)
  
#4.- El ingreso a la BENV se determina mediante la prueba estandarizada 
#EXANII-II.
#Los resultados de esta prueba se distribuyen normalmente con una media 
#de 1000 y una desviación estándar de 100. Tú quieres ser admitido en 
#esta institución y sabes que debes obtener mejores resultados que al 
#menos el 90% de los estudiantes que tomaron el examen.
#Presentas el examen y obtuviste 1185 puntos.
#¿Serás admitida/o en la BENV?

#a)Generar el gráfico
n=2600
hist(pnorm(2600,1000,100),20, col = "blue")
abline(v=1185, col=50)  
  
pnorm(1185,mean=1000, sd=100)  
  
#5.-T-test
set.seed(10)
x <- rnorm(100,10) # Creación de una variable aleatoria de media 10
Media <- 10
test <- t.test(x, mu=Media) # Comparación de la media muestral con la media
print(test)




  