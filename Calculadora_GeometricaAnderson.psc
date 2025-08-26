Algoritmo Calculadora_Geometrica
	Definir opcionPrincipal, opcionSubmenu Como Entero
	Definir base, altura, radio, longitu, ancho, resultado Como Real
	Definir continuar Como Logico
	
	continuar <- Verdadero
	
	Mientras continuar = Verdadero Hacer
		// ================= MENÚ PRINCIPAL =================
		Escribir "======================================="
		Escribir "      CALCULADORA GEOMÉTRICA"
		Escribir "======================================="
		Escribir "1. Calcular Áreas"
		Escribir "2. Calcular Volúmenes"
		Escribir "3. Salir"
		Escribir "---------------------------------------"
		Escribir "Seleccione una opción:"
		Leer opcionPrincipal
		
		Segun opcionPrincipal Hacer
			1:
				// ================= SUBMENÚ ÁREAS =================
				Escribir "==== CÁLCULO DE ÁREAS ===="
				Escribir "1. Triángulo"
				Escribir "2. Rectángulo"
				Escribir "3. Círculo"
				Escribir "4. Volver al menú principal"
				Leer opcionSubmenu
				
				Segun opcionSubmenu Hacer
					1: // Triángulo
						Escribir "Ingrese la base:"
						Leer base
						Escribir "Ingrese la altura:"
						Leer altura
						resultado <- (base * altura) / 2
						Escribir "Área del triángulo = ", resultado
					2: // Rectángulo
						Escribir "Ingrese la longitud:"
						Leer longitu
						Escribir "Ingrese el ancho:"
						Leer ancho
						resultado <- longitu * ancho
						Escribir "Área del rectángulo = ", resultado
					3: // Círculo
						Escribir "Ingrese el radio:"
						Leer radio
						resultado <- PI * radio^2
						Escribir "Área del círculo = ", resultado
					4: 
						// Volver al menú principal
					De Otro Modo:
						Escribir "Opción inválida en el submenú."
				FinSegun
				
			2:
				// ================= SUBMENÚ VOLÚMENES =================
				Escribir "==== CÁLCULO DE VOLÚMENES ===="
				Escribir "1. Esfera"
				Escribir "2. Cilindro"
				Escribir "3. Cono"
				Escribir "4. Volver al menú principal"
				Leer opcionSubmenu
				
				Segun opcionSubmenu Hacer
					1: // Esfera
						Escribir "Ingrese el radio:"
						Leer radio
						resultado <- (4/3) * PI * radio^3
						Escribir "Volumen de la esfera = ", resultado
					2: // Cilindro
						Escribir "Ingrese el radio de la base:"
						Leer radio
						Escribir "Ingrese la altura:"
						Leer altura
						resultado <- PI * radio^2 * altura
						Escribir "Volumen del cilindro = ", resultado
					3: // Cono
						Escribir "Ingrese el radio de la base:"
						Leer radio
						Escribir "Ingrese la altura:"
						Leer altura
						resultado <- (PI * radio^2 * altura) / 3
						Escribir "Volumen del cono = ", resultado
					4: 
						// Volver al menú principal
					De Otro Modo:
						Escribir "Opción inválida en el submenú."
				FinSegun
				
			3:
				Escribir "Saliendo de la calculadora... ¡Hasta pronto!"
				continuar <- Falso
				
			De Otro Modo:
				Escribir "Opción inválida en el menú principal."
		FinSegun
		
	FinMientras
FinAlgoritmo