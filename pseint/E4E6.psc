Algoritmo E4E6
	Dimensionar planilla(50,5)
	sw <- 1
	bloqueo <- 1
	//Ciclo para asignar el código del estudiante
	
	Para f<-1 Hasta 3 Con Paso 1 Hacer
		Escribir '', 'Escriba el codigo del estudiante ', f, ' : '
		Para c<-1 Hasta 1 Con Paso 1 Hacer
			Leer codEstudiante
			planilla[f,c]<-codEstudiante
		FinPara
	FinPara
	
	//Ciclo para asignar las calificaciones, máximo 3 notas por estudiante
	
	Para f<-1 Hasta 3 Con Paso 1 Hacer
		Para c<-2 Hasta 4 Con Paso 1 Hacer
			
			Mientras sw = 1 Hacer
				Escribir '', 'Escriba la nota del estudiante del estudiante ', f, ' (entre 10 y 50) : '
				
				
				Mientras bloqueo = 1 Hacer
					Leer notaEstudiante
					Si notaEstudiante > 50 o notaEstudiante < 10 Entonces
						Escribir "La nota no es válida, escriba de nuevo "
						
					SiNo
						planilla[f,c]<-notaEstudiante
						c <- c+1
						bloqueo <- 2
					Fin Si
					
				Fin Mientras
				bloqueo <- 1
				
				
				
				Escribir "Añadir más notas del estudiante ",f," ? "
				Escribir "1.SI 2.NO"
				Leer sw
				
			Fin Mientras
			
		FinPara
		c <- 2
		sw <- 1
	FinPara
	
	//Ciclo para calcular la nota Final
	
	Para f <-1 Hasta 3 Con Paso 1 Hacer
		Para c <- 2 Hasta 5 Con Paso 1 Hacer
			
			Mientras c < 5 Hacer
				
				suma <- suma + planilla[f,c]
				c <- c+1
				
			Fin Mientras
			promedio <- suma/3
			
			planilla[f,5] <- promedio
		FinPara
		c <- 2
		promedio <- 0
		suma <- 0
	FinPara
	
	
	
	//Ciclo para imprimir la información de cada estudiante
	
	Para i <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "________________________________________"
		Escribir "Información estudiante ",i," : " Sin Saltar
		Para j <- 1 Hasta 5 Con Paso 1 Hacer
			Escribir ""
			Si j = 1 Entonces
				Escribir "Código: "
				Escribir planilla[i,j]," " Sin Saltar
			FinSi
			Si j > 1 y j <5 Entonces
				Escribir "Nota: ",j-1
				Escribir planilla[i,j]," " Sin Saltar
			Fin Si
			
			Si j = 5 Entonces
				Escribir "NOTA FINAL "
				Escribir planilla[i,j]," " Sin Saltar
			Fin Si
			
			
		Fin Para
		Escribir ""
	Fin Para
	
	//Condicionales de clasificación
	
	Para f <- 1 Hasta 3 Con Paso 1 Hacer
		Si planilla[f,5] >= 20 y planilla[f,5] < 29 Entonces
			recuperacion <- recuperacion + 1
		Fin Si
		
		Si planilla[f,5] >= 30 y planilla[f,5] <= 50 Entonces
			aprobados <- aprobados + 1
		Fin Si
		
		Si planilla[f,5] = 50 Entonces
			notaMax <- notaMax + 1
		Fin Si
		
		
	Fin Para
	
	Escribir "La cantidad de estudiantes que pueden recuperar, es: ",recuperacion
	Escribir "La cantidad de estudiantes que fueron aprobados, es: ",aprobados
	Escribir "La cantidad de estudiantes que tuvieron una nota máxima, es: ",notaMax
FinAlgoritmo
