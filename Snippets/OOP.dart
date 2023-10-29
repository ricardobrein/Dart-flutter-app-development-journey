// Un objeto en dart puede ser cualquier cosa desde una persona hasta un banco
// cada objeto tiene sus atributos o propiedades = Variables 
// Y tambien tiene sus metodos que son funciones dentro de la clase
// Los metodos son los comportamientos que tendrá la clase y lo que heredaran
// A sus instancias.
// Por ejemplo una persona puede tener atributos: nombre, edad, altura
// y metodos o funciones: Caminar, hablar, comer.


/* Conceptos en OOP:  Clases, objetos, encapsulacion, herencia, polimorfismo
y abstraccion */
/* La Programación Orientada a Objetos (OOP) es un paradigma de programación
 que utiliza objetos y sus interacciones para diseñar y programar aplicaciones.
La programación orientada a objetos se basa en objetos, que son estructuras
 de datos que contienen datos y métodos.
La programación orientada a objetos es una forma de pensar en la programación
 que difiere de la programación procesal tradicional.
La programación orientada a objetos puede hacer que el código sea más modular,
 flexible y extensible.
La programación orientada a objetos puede ayudarle a comprender
 mejor y resolver problemas. */


/* class RPGCharacter {

  String name = '';
  int fuerza = 0;
  int habilidad = 0;
  int id = 0;

  void rollStats() {

    fuerza = Random().nextInt(16) + 2;
    habilidad = Random().nextInt(17) +2;
  }

RPGCharacter Char1 = RPGCharacter();
Char1.name = 'ditto';
Char1.habilidad = 200;
Char1.fuerza = 200;

print(Char1);

}
*/

class Boys {
  String? name;
  int ?  edad;
  
  
  void mostrar(){

    print('Hola yo soy $name y tengo $edad años de edad');
    }
}



void main (){

  //Los nombres de los objetos
  // de la clase son creados en minusculas


  var Maria = Boys();
  Maria.name = 'Mario';
  Maria.edad = 50;

  print(Maria.name);

  var Pedro = new Boys();
  Pedro.name = 'Pedro';
  Pedro.edad = 465;

  Pedro.mostrar();
  
  var Ricardo = Boys();
  Ricardo.name = 'Ricardo';
  Ricardo.edad = 28;
  
  Ricardo.mostrar();
  
  var Manuel = Boys();
  Manuel.name = 'manuel';
  Manuel.edad = 28;
  
  Manuel.mostrar();
}


