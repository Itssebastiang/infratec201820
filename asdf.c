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
{}