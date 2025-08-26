Algoritmo Calculadora_Geometrica
	Definir opcionPrincipal, opcionSubmenu Como Entero
	Definir base, altura, radio, longitu, ancho, resultado Como Real
	Definir continuar Como Logico
	
	continuar <- Verdadero
	
	Mientras continuar = Verdadero Hacer
		// ================= MEN� PRINCIPAL =================
		Escribir "======================================="
		Escribir "      CALCULADORA GEOM�TRICA"
		Escribir "======================================="
		Escribir "1. Calcular �reas"
		Escribir "2. Calcular Vol�menes"
		Escribir "3. Salir"
		Escribir "---------------------------------------"
		Escribir "Seleccione una opci�n:"
		Leer opcionPrincipal
		
		Segun opcionPrincipal Hacer
			1:
				// ================= SUBMEN� �REAS =================
				Escribir "==== C�LCULO DE �REAS ===="
				Escribir "1. Tri�ngulo"
				Escribir "2. Rect�ngulo"
				Escribir "3. C�rculo"
				Escribir "4. Volver al men� principal"
				Leer opcionSubmenu
				
				Segun opcionSubmenu Hacer
					1: // Tri�ngulo
						Escribir "Ingrese la base:"
						Leer base
						Escribir "Ingrese la altura:"
						Leer altura
						resultado <- (base * altura) / 2
						Escribir "�rea del tri�ngulo = ", resultado
					2: // Rect�ngulo
						Escribir "Ingrese la longitud:"
						Leer longitu
						Escribir "Ingrese el ancho:"
						Leer ancho
						resultado <- longitu * ancho
						Escribir "�rea del rect�ngulo = ", resultado
					3: // C�rculo
						Escribir "Ingrese el radio:"
						Leer radio
						resultado <- PI * radio^2
						Escribir "�rea del c�rculo = ", resultado
					4: 
						// Volver al men� principal
					De Otro Modo:
						Escribir "Opci�n inv�lida en el submen�."
				FinSegun
				
			2:
				// ================= SUBMEN� VOL�MENES =================
				Escribir "==== C�LCULO DE VOL�MENES ===="
				Escribir "1. Esfera"
				Escribir "2. Cilindro"
				Escribir "3. Cono"
				Escribir "4. Volver al men� principal"
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
						// Volver al men� principal
					De Otro Modo:
						Escribir "Opci�n inv�lida en el submen�."
				FinSegun
				
			3:
				Escribir "Saliendo de la calculadora... �Hasta pronto!"
				continuar <- Falso
				
			De Otro Modo:
				Escribir "Opci�n inv�lida en el men� principal."
		FinSegun
		
	FinMientras
FinAlgoritmo