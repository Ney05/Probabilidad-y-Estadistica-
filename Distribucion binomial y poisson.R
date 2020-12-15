#DISTRIBUCION BINOMIAL

# Probabilidad de escoger una respuesta de 5 posibles
p= 1/5

# Espacio muestral (12 preguntas en total)
n=12

#Probabilidad de tener 4 respuestas correctas elegidas aleatoriamente
k= 4

#Función en R
dbinom(k, size=n, prob=0.2)

sum(dbinom(0:4, 12, 0.2))

#1.- ¿Cuál es la probabilidad de que 2 o 3 preguntas sean 
#respondidas correctamente?
sum(dbinom(0:3, 12, 1/3))
sum(dbinom(0:2, 12, 1/2))


#2.-Supongamos que la empresa Apple fabricó el Iphone 11S con una probabilidad 
#de 0.005 de ser defectuoso. El producto se envía en una caja que 
#contiene 25 artículos.
#¿Cuál es la probabilidad de que una caja elegida al azar contenga 
#un Iphone 11S defectuoso?

#probabilidad de escoger uno que salga defectuoso 
P=0.005
#espacio muestral
n=25 
#probabilidad de elegir una caja que contenga iphone 11S
k=1

dbinom(1, size=25, prob=0.005)

#DISTRIBUCION DE POISSON
# Probabilidad de que 35 alumnos lleguen en
#15 minutos a la entrada de la escuela

# x= número de alumnos
# lamda= tiempo de llegada.

x=35
lamda=15

dpois(35,15)

# Probabilidad de que 50 alumnos lleguen en
#15 minutos a la entrada de la escuela

# x= número de alumnos
# lamda= tiempo de llegada.

x=50
lamda=15

dpois(50,15)

#EJERCICIOS
#1.- ¿Cuál es la probabilidad de que a la escuela lleguen 34 alumnos 
#en 5 minutos?

x=34
lamda=5
  
dpois(34,5)

#2.-¿Cuál es la probabilidad de que a la salida de la escuela, 
#se encuentren 60 alumnos en 5 minutos?

x=60
lamda=5

dpois(60,5)
  
#3.- ¿Cuál es la probabilidad de que a la salida de la escuela, 
#se encuentren 120 alumnos en 5 minutos?

x=120
lamda=5

dpois(120,5)
