Proceso calculadora_resistencias
	Definir color1,color2,color3,tolerancia, resistencia como Entero;
	Definir respuesta Como Caracter;
	respuesta='S';
	Mientras Mayusculas(respuesta)=='S' Hacer
		Escribir '--------------------------------------';
		Escribir 'COLORES DE RESISTENCIAS';
		Escribir '--------------------------------------';
		Escribir 'Opcion 0: Negro',' - ','Opcion 5: Verde';
		Escribir 'Opcion 1: Cafe',' - ','Opcion 6: Azul';
		Escribir 'Opcion 2: Rojo',' - ','Opcion 7: Violeta';
		Escribir 'Opcion 3: Naranja',' - ','Opcion 8: Gris';
		Escribir 'Opcion 4: Amarillo',' - ','Opcion 9: Blanco';
		Escribir '--------------------------------------';
		Escribir 'ELIJA SU PRIMER COLOR';
		Leer color1;
		Mientras (color1<0 o color1>=10) Hacer
			Escribir 'OPCION ERRONEA';
			Escribir 'ELIJA NUEVAMENTE SU PRIMER COLOR';
			Leer color1;
		FinMientras
		Escribir 'ELIJA SU SEGUNDO COLOR';
		leer color2;
		Mientras (color2<0 o color2>=10) Hacer
			Escribir 'OPCION ERRONEA';
			Escribir 'ELIJA NUEVAMENTE SU SEGUNDO COLOR';
			Leer color2;
		FinMientras
		Escribir 'ELIJA SU TERCER COLOR';
		leer color3;
		Mientras (color3<0 o color3>=10) Hacer
			Escribir 'OPCION ERRONEA';
			Escribir 'ELIJA NUEVAMENTE SU TERCER COLOR';
			Leer color3;
		FinMientras
		Escribir '------------------------------';
		Escribir 'TOLERANCIA DE RESISTENCIAS';
		Escribir '------------------------------';
		Escribir 'Opcion 10: Toletancia cafe';
		Escribir 'Opcion 11: Tolerancia roja';
		Escribir 'Opcion 12: Tolerancia dorado';
		Escribir 'Opcion 13: Tolerancia plata';
		Escribir '------------------------------';
		Escribir 'ELIJA COLOR DE TOLERANCIA';
		leer tolerancia;
		Mientras (tolerancia<=9 o tolerancia>=14) Hacer
			Escribir 'OPCION ERRONEA';
			Escribir 'ELIJA NUEVAMENTE SU COLOR DE TOLERANCIA';
			Leer tolerancia;
		FinMientras
		
		si tolerancia==10 Entonces
			tolerancia=1;
		sino
			si tolerancia==11 Entonces
				tolerancia=2;
			sino
				si tolerancia==12 Entonces
					tolerancia=5;
				sino
					si tolerancia==13 Entonces
						tolerancia=10;
					FinSi
				FinSi
			FinSi
		FinSi
		resistencia=((color1*10)+color2)*(10^color3);
		Escribir 'El valor de la resistencia es de: ',resistencia,' Ohms con una tolerancia del ',tolerancia,'%';
		Escribir 'Desea realizar otro calculo? (s/n)';
		leer respuesta;
		Limpiar Pantalla;
	FinMientras
FinProceso
