
Algoritmo Calculadora_Interactiva
	Definir opcion Como Entero
	Definir cantidad, resultado Como Real
	Definir continuar Como Caracter
	
	continuar <- "S"
	
	Repetir
		Escribir "======================================="
		Escribir "   CALCULADORA INTERACTIVA DE UNIDADES"
		Escribir "======================================="
		Escribir "1. Convertir Kil�metros a Millas"
		Escribir "2. Convertir Pulgadas a Cent�metros"
		Escribir "3. Convertir Libras a Kilogramos"
		Escribir "4. Convertir Litros a Galones"
		Escribir "Seleccione una opci�n (1-4): "
		Leer opcion
		
		Segun opcion Hacer
			1:
				Escribir "Ingrese la cantidad en kil�metros: "
				Leer cantidad
				resultado <- cantidad * 0.621371
				Escribir cantidad, " kil�metros equivalen a ", resultado, " millas."
				
			2:
				Escribir "Ingrese la cantidad en pulgadas: "
				Leer cantidad
				resultado <- cantidad * 2.54
				Escribir cantidad, " pulgadas equivalen a ", resultado, " cent�metros."
				
			3:
				Escribir "Ingrese la cantidad en libras: "
				Leer cantidad
				resultado <- cantidad * 0.453592
				Escribir cantidad, " libras equivalen a ", resultado, " kilogramos."
				
			4:
				Escribir "Ingrese la cantidad en litros: "
				Leer cantidad
				resultado <- cantidad * 0.264172
				Escribir cantidad, " litros equivalen a ", resultado, " galones."
				
			De Otro Modo:
				Escribir "Opci�n inv�lida, por favor intente nuevamente."
		FinSegun
		
		Escribir "======================================="
		Escribir "�Desea realizar otra operaci�n? (S/N): "
		Leer continuar
		
	Hasta Que continuar = "N" O continuar = "n"
	
	Escribir "Gracias por usar la calculadora interactiva."
FinAlgoritmo