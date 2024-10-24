Algoritmo sin_titulo

	Para j<-1 Hasta 8 Con Paso 1 Hacer
		Escribir " DIGITE EL NOMBRE DE LA PRIVINCIA"
		Leer provincia
		Mayor <- 0
		ciudadm <- " "
	Para x<-1 Hasta 5 Con Paso 1 Hacer
		Escribir " Digite el nombre de la ciudad"
		Leer ciudad
		Escribir "Digite el numero de habitantes"
		Leer poblacion
		Si (poblacion > mayor) Entonces
			Mayor <- poblacion
		FinSi
	FinPara
	Escribir "provincia:" , provincia
	Escribir "ciudad:" , ciudadm
	Escribir "poblacion:" , mayor
	FinPara

FinAlgoritmo


