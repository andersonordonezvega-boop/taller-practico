Algoritmo Calculadora_Interactiva
	Definir opcion Como Entero
	Definir num1, num2, resultado Como real
	Definir continuar Como Logico
	
	continuar <- Verdadero
	
	Mientras continuar = Verdadero Hacer
		Escribir "===================================="
		Escribir "        CALCULADORA INTERACTIVA     "
		Escribir "===================================="
		Escribir "1. Sumar"
		Escribir "2. Restar"
		Escribir "3. Multiplicar"
		Escribir "4. Dividir"
		Escribir "5. Salir"
		Escribir "------------------------------------"
		Escribir "Seleccione una opción: "
		Leer opcion
		
		Segun opcion Hacer
			1:
				Escribir "Ingrese el primer número: "
				Leer num1
				Escribir "Ingrese el segundo número: "
				Leer num2
				resultado <- num1 + num2
				Escribir "Resultado: ", resultado
			2:
				Escribir "Ingrese el primer número: "
				Leer num1
				Escribir "Ingrese el segundo número: "
				Leer num2
				resultado <- num1 - num2
				Escribir "Resultado: ", resultado
			3:
				Escribir "Ingrese el primer número: "
				Leer num1
				Escribir "Ingrese el segundo número: "
				Leer num2
				resultado <- num1 * num2
				Escribir "Resultado: ", resultado
			4:
				Escribir "Ingrese el primer número: "
				Leer num1
				Escribir "Ingrese el segundo número: "
				Leer num2
				Si num2 = 0 Entonces
					Escribir "Error: No se puede dividir entre cero."
				SiNo
					resultado <- num1 / num2
					Escribir "Resultado: ", resultado
				FinSi
			5:
				Escribir "Saliendo de la calculadora... ¡Hasta pronto!"
				continuar <- Falso
			De Otro Modo:
				Escribir "Opción no válida. Intente nuevamente."
		FinSegun
		
		// Validar par o impar solo si hay un resultado calculado
		Si opcion >=1 Y opcion <=4 Y (opcion <> 4 O num2 <> 0) Entonces
			Si resultado % 2 = 0 Entonces
				Escribir "El resultado es un número PAR."
			SiNo
				Escribir "El resultado es un número IMPAR."
			FinSi
		FinSi
		
	FinMientras
FinAlgoritmo
