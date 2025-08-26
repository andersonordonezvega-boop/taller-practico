Algoritmo Red_Sensores_Termicos
	Definir n, i, opcion Como Entero
	Definir temperatura, sumaC, sumaF Como Real
	Definir bajos, altos, normales Como Entero
	Dimension sensores[100]
	
	n <- 0
	sumaC <- 0
	sumaF <- 0
	bajos <- 0
	altos <- 0
	normales <- 0
	
	Repetir
		Escribir "============================================"
		Escribir "     SISTEMA DE MONITOREO DE TEMPERATURA"
		Escribir "============================================"
		Escribir "1. Ingresar n�mero de sensores y registrar lecturas"
		Escribir "2. Mostrar resumen de lecturas"
		Escribir "3. Reiniciar lecturas"
		Escribir "4. Salir"
		Escribir "Seleccione una opci�n: "
		Leer opcion
		
		Segun opcion Hacer
			1:
				Escribir "Ingrese la cantidad de sensores a monitorear: "
				Leer n
				
				// Reiniciar contadores
				sumaC <- 0
				bajos <- 0
				altos <- 0
				normales <- 0
				
				Para i <- 1 Hasta n Con Paso 1 Hacer
					Repetir
						Escribir "Ingrese la temperatura del sensor ", i, " (0 a 100 �C): "
						Leer temperatura
						Si temperatura < 0 O temperatura > 100 Entonces
							Escribir "Error: Temperatura fuera de rango. Intente de nuevo."
						FinSi
					Hasta Que temperatura >= 0 Y temperatura <= 100
					
					sensores[i] <- temperatura
					sumaC <- sumaC + temperatura
					
					// Clasificaci�n
					Si temperatura < 20 Entonces
						bajos <- bajos + 1
					Sino
						Si temperatura > 80 Entonces
							altos <- altos + 1
						Sino
							normales <- normales + 1
						FinSi
					FinSi
				FinPara
				
				// Conversi�n a Fahrenheit (F = C * 1.8 + 32)
				sumaF <- (sumaC * 1.8) + 32
				Escribir "Lecturas registradas correctamente."
				
			2:
				Si n = 0 Entonces
					Escribir "No hay datos registrados a�n."
				Sino
					Escribir "============================================"
					Escribir "          RESUMEN DE LECTURAS"
					Escribir "============================================"
					Escribir "Total sensores: ", n
					Escribir "Suma de temperaturas en �C: ", sumaC
					Escribir "Suma de temperaturas en �F: ", sumaF
					Escribir "Sensores en condici�n baja (<20�C): ", bajos
					Escribir "Sensores en condici�n alta (>80�C): ", altos
					Escribir "Sensores en condici�n normal (20�C - 80�C): ", normales
					Escribir "============================================"
				FinSi
				
			3:
				n <- 0
				sumaC <- 0
				sumaF <- 0
				bajos <- 0
				altos <- 0
				normales <- 0
				Escribir "Todas las lecturas han sido reiniciadas."
				
			4:
				Escribir "Saliendo del sistema... �Hasta luego!"
				
			De Otro Modo:
				Escribir "Opci�n inv�lida. Intente de nuevo."
		FinSegun
		
	Hasta Que opcion = 4
	
FinAlgoritmo
