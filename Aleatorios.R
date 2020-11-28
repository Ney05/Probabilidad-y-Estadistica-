#EJERCICIOS
#Calcula el tamaño de una muestra ´para una población de 
#83 alumnos  de primer grado LEP BENV

#Una vez que se obtiene el tamaño, seleccionar el número de la lista de personas
#que formaran parte de la muestra

#Crear un vector llamado muestra con los numeros de lista de las personas
#que forman parte de la muestra.

#N=83 alumnos
#n=53 alumnos (68*0.81=55)

sample(1:83,55,replace = FALSE)
sample<-c(68,54,15,18,72,57,31,35,53,16,30,19,62,71,24,75,8,64,14,5,51,4,33,74,50,
          34,82,67,12,58,52,76,21,28,55,17,44,59,80,26,1,10,70,23,11,13,38,77,56,
          39,73,43,6146,47)

#Repetir el ejercicio anterior para una población
#de 90 alumnas y alumnos que integran el segundo año de LEP de la BENV.

#N=90 alumnos
#n=59 alumnos (73*0.81=59)
sample(1:90,59,replace = FALSE)
sample<-c(14,54,43,82,32,62,7,12,49,10,60,54,34,70,78,52,88,41,55,83,75,
          90,66,11,17,3,16,45,64,73,67,5,63,13,50,68,2,62,77,80,44,4,26,87,84,
          72,81,39,58,27,28,37,40,31,59,36,6,79,1)

#Determina el número e identifica a las personas que participaran
#en un estudio de seguimiento de egresados de la generación 
#2015-2019 de las 5 licenciaturas de la BENV

#PRIMARIA: 78 PERSONAS EGRESADAS
#PREESCOLAR: 84 PERSONAS EGRESADAS
#FISICA: 35 PERSONAS EGRESADAS
#TELESECUNDARIA: 83 PERSONAS EGRESADAS
#ESPECIAL: 25 PERSONAS EGRESADAS

#N=805 egresados de la generacion 2015-2019
#n=260
#primaria
#coeficiente de estrato = 0.32
#estrato de primaria =78 personas 
#N=78 personas
#n=65 personas (65*0.32=21)

sample(1:78,21,replace = FALSE )
sample<-c(12,34,57,78,67,47,33,62,69,60,20,30,28,48,4,16,
          13,38,17,58,19)



