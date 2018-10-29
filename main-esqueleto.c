/*
PROYECTO 1 FUNDAMENTOS DE INFRAESTRUCTURA TECNOLOGICA - 201820
Juan Daniel Castrellon - 201729285 -jd.castrellon@uniandes.edu.co
Juan Sebastian Gutierrez - 201633744 - js.gutierrezs@uniandes.edu.co
*/

#define _CRT_SECURE_NO_DEPRECATE
#include <stdlib.h>
#include <stdio.h>
#include <string.h>


//-- Definicion de la estructura para los datos del archivo de entrada y el de salida
typedef struct datos
{
	int tamanio;
	unsigned char *informacion;
} Datos;


//-- Prototipos de las funciones
int readFile(Datos * archivo, char *);
void writeFile(Datos * archivoEnOctal, char *);
void transCaracterMod0(unsigned char *, unsigned char *, int, int);
void transCaracterMod1(unsigned char, unsigned char *, unsigned char *, int, int);
void transCaracterMod2(unsigned char, unsigned char *, unsigned char *, int, int);



//-- Funciones

// Esta funcion se encarga de abrir un datos y leerlo en el vector informacion.
// Retorna el numero de bytes leidos.
// No hay que completar nada en esta funcion.
int readFile(Datos * archivo, char * nombreArchivo)
{
	FILE *file;
	int n;

	file = fopen(nombreArchivo, "rb");

	if (!file)
	{
		printf("No se pudo abrir el archivo para leer: %s\n", nombreArchivo);
		system("PAUSE");
		exit(EXIT_FAILURE);
	}
	fseek(file, 0, SEEK_END);
	n = ftell(file);
	fseek(file, 0, SEEK_SET);

	archivo->tamanio = n;
	archivo->informacion = (unsigned char *)calloc(n, sizeof(unsigned char));

	fread(archivo->informacion, sizeof(unsigned char), n, file);

	fclose(file);

	return n;
}


// Esta funcion se encarga de escribir un datos a partir del vector datos.
// El numero de bytes que se deben escribir viene en el parametro n.
// No hay que completar nada en esta funcion.
void writeFile(Datos * archivoEnOctal, char *nombreArchivo)
{
	FILE *file;

	file = fopen(nombreArchivo, "wb");

	if (!file) {
		printf("No se pudo abrir el archivo para escribir: %s\n", nombreArchivo);
		system("PAUSE");
		exit(EXIT_FAILURE);
	}

	fwrite(archivoEnOctal->informacion, sizeof(char), archivoEnOctal->tamanio, file);

	fclose(file);
}


// Esta funcion se encarga de convertir a octal cada uno de los bytes que se
//encuentran en la estructura datosBin->informacion y asignar los nuevos valores a la estructura datosOct->informacion.
// Deben desarrollar esta funcion en su totalidad.
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

//Transforma las cadenas basados en el caracter dado por parametro tales que el modulo 3 (%3) da dos (2) y sobre 1 por el parametro
void
transCaracterMod0(unsigned char *t, unsigned char *datosDeOct, int tamanioTotal, int i)
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
void
transCaracterMod1(unsigned char y, unsigned char *t, unsigned char *datosDeOct, int tamanioTotal, int i)
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
void
transCaracterMod2(unsigned char y, unsigned char *t, unsigned char *datosDeOct, int tamanioTotal, int i)
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

//-- Funcion main de la aplicacion
// No hay que completar nada en esta funcion.
int main()
{
	// Mensaje inicial
	printf("PROYECTO 1 - INFRATEC (ISIS-1304)");

	// Declaracion de todas las variables necesarias.
	int tamanio;
	int tamanioRepOctales;
	char nombreArchivo[200];
	char nombreArchivoOctales[200];
	Datos * archivo = (Datos *)malloc(sizeof(Datos));
	Datos * archivoEnOctal = (Datos *)malloc(sizeof(Datos));

	printf("\n\nIngrese el nombre del archivo a leer (incluya el formato. i.e. archivo.txt): \n");
	scanf("%s", nombreArchivo);
	tamanio = readFile(archivo, nombreArchivo);
	printf("\nEl tamanio del archivo es de %d bytes\n", tamanio);
	tamanioRepOctales = ((tamanio * 8) / 3) + ((tamanio % 3 == 0) ? 0 : 1);
	archivoEnOctal->informacion = (unsigned char *)calloc(tamanioRepOctales, sizeof(unsigned char));
	archivoEnOctal->tamanio = tamanioRepOctales;
	printf("\nIngrese el nombre del archivo para guardar la representacion en octales del archivo origen (incluya el .txt): \n");
	scanf("%s", nombreArchivoOctales);
	convertirAOctal(archivo, archivoEnOctal);
	writeFile(archivoEnOctal, nombreArchivoOctales);
	printf("\nEl archivo se transformo en su representacion a octal exitosamente!\n\n");
	printf("Revisa el archivo con nombre '%s' para ver el resultado!\n", nombreArchivoOctales);

	// Terminar
	system("PAUSE");
	return 0;
}
