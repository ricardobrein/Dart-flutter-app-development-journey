//Como todo lenguaje de POO, Dcd oopart aplica el concepto de HERENCIA
/* En donde una clase hijo hereda atributos y metodos derivados de la clase
padre o SuperClase...


La sintaxis para heredar una clase hija a la clase padre es la palabra "EXTENDS

> Class NombreClaseHija extends NombreClasePadre"*/

/*void main() {
  final carro = new Car(); // clase hija creada automáticamente 
  carro.printCarName(); // este es un llamado al metodo de la clase de abajo
}

class Vehiculos {
  //metodo para imprimir el nombre de los coches
  void printCarName() {
    print('Llamando el metodo definido en la clase Vehiculos');
  }
}

class Car extends Vehiculos {}*/

/*void main() {
  final profesores = new Personal();
  profesores.id = 25;
  profesores.printId();
  profesores.id = 30;
  profesores.printId();
}

class ColegioMayor {
  int? id;
  void printId() {
    print('El ID del profesor es $id');
  }
}

class Personal extends ColegioMayor {
  int? id;
}*/

// Herencia multiples niveles.

void main() {
  var obj = new Hijo();
  obj.str = 'Hola Soy el metodo del hijo a través de la clase "Abuelos"';
  print(obj.str);
}

class Abuelos {
  String? str;
}

class Papa extends Abuelos {}

class Hijo extends Papa {} // La clase hijo hereda del abuelo indirectamente.