## INTRODUCCIÓN A DART y conceptos clave del lenguaje.

## Null SAFETY

SE REFIERE A QUE LAS VARIABLES EN DART NO SE PUEDEN ANULAR, PARA DECLARA QUE UNA VARIABLE SI ES POSIBLE QUE SE ANULE DEBEMOS DECIRLE AL TIPO DE VARIABLE QUE SE PUEDE HACER CON (?) 

int? a = 8 > anulable

int a = 8 > no anulable

## Q: 

Por qué es importante saber si una variable es nula o no,  por que debemos tener en cuenta para poderla hacer anulable o no-null

## Programacion Orientada a Objetos, MUY IMPORTANTE,

Dart es un lenguaje fuertemente tipado, por lo que las variables deben declararse con su tipo, como int, double, String, etc.

La función principal es main(), ahí inicia la ejecución del programa.

Las llaves { } delimitan bloques de código, como en C.

**;** se usa para terminar instrucciones.

Los comentarios son con // para una línea y /* */ para múltiples líneas.

**if, else if**, else para condicionales.

**for, while** para loops.

Las funciones se declaran con tipoRetorno nombreFuncion(params) { }

Las clases se declaran con class NombreClase { }

Los tipos básicos incluyen int, double, bool, String, List, Map.

Se usa var para variables mutables, y final para inmutables.

Los operadores aritméticos son +, -, *, /, %.

Los operadores lógicos son &&, ||, !.

## Tipos de Datos en Dart

Conceptos Básicos
Dart es un lenguaje de programación orientado a objetos desarrollado por Google.

Sintaxis similar a Java y JavaScript pero con tipado estático.

Funciona para crear apps móviles, de escritorio y web.

El archivo principal es main.dart y la función de entrada es main().

## Tipos de Datos

Los tipos básicos en Dart son:

int edad = 35; 

double precio = 29.99;

bool terminado = false; 

String nombre = "Juan";


También están las listas y mapas:

List<int> lista = [1, 2, 3];

Map<String, dynamic> persona = {
  "nombre": "Maria",
  "edad": 25
};

## Variables

En Dart puedes declarar la mayoría de las variables sin especificar explícitamente su tipo usando var. Gracias a la inferencia de tipos, los tipos de estas variables están determinados por sus valores iniciales:

### Se declaran con: tipo > nombre y se termina cada sentencia de código con ;

int edad = 20;


Usa var cuando el tipo se infiere:

var nombre = 'Maria';

Y final para variables que no se modificarán (inmutables):

final precio = 19.99;


Funciones

Se declaran con:

tipo nombreFuncion(Parametros) {
  //código
}


Ejemplo:

int sumar(int a, int b) {
  return a + b;
}

Condicionales
Usa if, else if y else:

if(condicion) {
  //código
} else if {
  //código 
} else {
  //código
}

Bucles
Los bucles básicos son for y while:

for(int i = 0; i < 5; i++) {
  print(i); 
}

while(condicion) {  
    
    //código
}

Clases y Objetos

Las clases se declaran con:

class Persona { 
    String nombre; 
    int edad;

Persona(this.nombre, this.edad);

void imprimir() { 
    print('Nombre: $nombre, Edad $edad');