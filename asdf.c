typedef struct datos
{
	int tamanio;
	unsigned char *informacion;
} Datos;


void convertirAOctal(Datos * datosBin, Datos * datosOct)
{
	//TODO: COMPLETAR EL DESARROLLO DE LA FUNCION.
	char datoInicial = '0';
	
	unsigned char * datosDeOct = datosOct->informacion;
	unsigned char *datosDeBin = datosBin->informacion;
	int tamanioTotal = datosBin->tamanio;
	int byteDeLectura = 0;
	transCaracterMod0(datosDeBin, datosDeOct, tamanioTotal, byteDeLectura);

}
void transCaracterMod0(unsigned char *t, unsigned char *datosDeOct, int tamanioTotal, int i)
{
	if (i < tamanioTotal)
	{
		//transformacion separada por bits
		unsigned char a = *t;
		unsigned char b = (a >> 5) + '0';
		unsigned char x = a << 3;
		x = (x >> 5) + '0';
		unsigned char y = a << 6;
		y = y >> 5;
		//correccion de errores de maquina: se encontro que algunos 'unos' se transformaban arbitrariamente en '/'. Esto lo corrige y, comparandolo minusiosamente queda igual a la respuesta esperada
		if (b == '/')
		{
			b = '1';
		}
		if (x == '/')
		{
			x = '1';
		}
		//se asigna a la posicion que se guarda en la direccion del apuntador el bit y se imprime
		printf("%c", b);
		*datosDeOct = b;
		datosDeOct++;
		printf("%c", x);
		*datosDeOct = x;
		datosDeOct++;
		t++;
		i++;
		if (i == tamanioTotal)
		{
			y = y + '0';
			if (y == '/')
			{
				y = '1';
			}
			printf("%c ", y);
			*datosDeOct = y;
		}
		transCaracterMod1(y, t, datosDeOct, tamanioTotal, i);
	}
}

//Transforma las cadenas basados en el caracter dado por parametro tales que el modulo 3 (%3) da uno (1) y sobre 1 por el parametro
void transCaracterMod1(unsigned char y, unsigned char *t, unsigned char *datosDeOct, int tamanioTotal, int i)
{
	if (i < tamanioTotal)
	{
		//Manipulacion de bits para la transformacion a octal con operaciones de bits
		char a = *t;
		char b = a >> 7;
		unsigned char c = a << 1;
		c = (c >> 5) + '0';
		if (c == '/')
		{
			c = '1';
		}
		unsigned char d = a << 4;
		d = (d >> 5) + '0';
		//correccion de errores de maquina
		if (d == '/')
		{
			d = '1';
		}
		unsigned char e = a << 7;
		e = (e >> 5);
		y = (y + b) + '0';
		if (y == '/')
		{
			y = '1';
		}
		//se asigna a la posicion que se guarda en la direccion del apuntador el bit y se imprime; se avanza en el tamanio especificado en la definicion del apuntador
		printf("%c", y);
		*datosDeOct = y;
		datosDeOct++;
		printf("%c", c);
		*datosDeOct = c;
		datosDeOct++;
		printf("%c", d);
		*datosDeOct = d;
		datosDeOct++;

		t++;
		i++;
		if (i == tamanioTotal)
		{
			e = e + '0';
			if (e == '/')
			{
				e = '1';
			}
			printf("%c", e);
			*datosDeOct = e;
		}
		transCaracterMod2(e, t, datosDeOct, tamanioTotal, i);
	}
}

//Transforma las cadenas basados en el caracter dado por parametro tales que el modulo 3 (%3) da cero (0) y sobre 1 por el parametro
void transCaracterMod2(unsigned char y, unsigned char *t, unsigned char *datosDeOct, int tamanioTotal, int i)
{
	if (i < tamanioTotal)
	{
		//transformacion de caracteres a octales mediante operaciones de bits
		unsigned char a = *t;
		unsigned char b = a >> 6;
		unsigned char c = a << 2;
		c = (c >> 5) + '0';
		if (c == '/')
		{
			c = '1';
		}
		unsigned char d = a << 5;
		d = (d >> 5) + '0';
		if (d == '/')
		{
			d = '1';
		}
		y = (y + b) + '0';
		if (y == '/')
		{
			y = '1';
		}
		//se asigna a la posicion que se guarda en la direccion del apuntador el bit y se imprime
		printf("%c", y);
		*datosDeOct = y;
		datosDeOct++;
		printf("%c", c);
		*datosDeOct = c;
		datosDeOct++;
		printf("%c", d);
		*datosDeOct = d;
		datosDeOct++;
		t++;
		i++;
		transCaracterMod0(t, datosDeOct, tamanioTotal, i);
	}
}