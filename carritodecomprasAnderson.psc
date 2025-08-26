Algoritmo carritodecompras
	Definir opcion_, tipoPago, continuar Como Caracter
	Definir cantidad Como Entero
	Definir stockManzana, stockBanano, stockSandia, stockFresa Como Entero
	Definir precioManzana, precioBanano, precioSandia, precioFresa Como Real
	Definir subtotal, totalConIVA, descuento, totalFinal Como Real
	Definir IVA Como Real
	
	// Inicializar stock
	stockManzana <- 10
	stockBanano <- 15
	stockSandia <- 5
	stockFresa <- 20
	
	// Precios de los productos
	precioManzana <- 3000
	precioBanano <- 2000
	precioSandia <- 8000
	precioFresa <- 6000
	
	// IVA = 19%
	IVA <- 0.19
	
	continuar <- "si"
	
	Mientras continuar = "si" Hacer
		Escribir "==========================================="
		Escribir "                 MENU"
		Escribir "1: MANZANA - $", precioManzana, " (Stock: ", stockManzana, ")"
		Escribir "2: BANANO  - $", precioBanano, " (Stock: ", stockBanano, ")"
		Escribir "3: SANDIA  - $", precioSandia, " (Stock: ", stockSandia, ")"
		Escribir "4: FRESA   - $", precioFresa, " (Stock: ", stockFresa, ")"
		Escribir "==========================================="
		Escribir "Seleccione una opción: "
		Leer opcion_
		
		subtotal <- 0
		
		Segun opcion_ Hacer
			"1":
				Escribir "Ingrese la cantidad de Manzanas que desea comprar:"
				Leer cantidad
				Si cantidad <= stockManzana Entonces
					stockManzana <- stockManzana - cantidad
					subtotal <- precioManzana * cantidad
				SiNo
					Escribir "Error: No hay suficiente stock de Manzanas."
				FinSi
			"2":
				Escribir "Ingrese la cantidad de Bananos que desea comprar:"
				Leer cantidad
				Si cantidad <= stockBanano Entonces
					stockBanano <- stockBanano - cantidad
					subtotal <- precioBanano * cantidad
				SiNo
					Escribir "Error: No hay suficiente stock de Bananos."
				FinSi
			"3":
				Escribir "Ingrese la cantidad de Sandías que desea comprar:"
				Leer cantidad
				Si cantidad <= stockSandia Entonces
					stockSandia <- stockSandia - cantidad
					subtotal <- precioSandia * cantidad
				SiNo
					Escribir "Error: No hay suficiente stock de Sandías."
				FinSi
			"4":
				Escribir "Ingrese la cantidad de Fresas que desea comprar:"
				Leer cantidad
				Si cantidad <= stockFresa Entonces
					stockFresa <- stockFresa - cantidad
					subtotal <- precioFresa * cantidad
				SiNo
					Escribir "Error: No hay suficiente stock de Fresas."
				FinSi
			De Otro Modo:
				Escribir "Opción inválida"
		FinSegun
		
		// Calcular IVA y total
		totalConIVA <- subtotal + (subtotal * IVA)
		
		// Selección de método de pago
		Escribir "==========================================="
		Escribir "Seleccione su método de pago:"
		Escribir "1: Efectivo (10% de descuento)"
		Escribir "2: Tarjeta de crédito (5% de descuento)"
		Escribir "3: Transferencia (sin descuento)"
		Leer tipoPago
		
		descuento <- 0
		
		Segun tipoPago Hacer
			"1":
				descuento <- totalConIVA * 0.10
			"2":
				descuento <- totalConIVA * 0.05
			"3":
				descuento <- 0
			De Otro Modo:
				Escribir "Método de pago inválido, no se aplicará descuento."
				descuento <- 0
		FinSegun
		
		// Total final
		totalFinal <- totalConIVA - descuento
		
		Escribir "==========================================="
		Escribir "Subtotal: $", subtotal
		Escribir "IVA (19%): $", subtotal * IVA
		Escribir "Total con IVA: $", totalConIVA
		Escribir "Descuento aplicado: $", descuento
		Escribir "Monto final a pagar: $", totalFinal
		Escribir "==========================================="
		
		// Preguntar si desea continuar
		Escribir "¿Desea realizar otra compra? (si/no)"
		Leer continuar
	FinMientras
	
	Escribir "Gracias por su compra. ¡Vuelva pronto!"
FinAlgoritmo