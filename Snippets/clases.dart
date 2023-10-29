// Ejemplo de clase persona

class Persona {
  String? nombre;
  int? edad;
  String? bio;
  String? direccion;

  // Metodos (funciones dentro de la clase)

  void mostrar() {
    print('Mi nombre es $nombre');
    print('Mi edad es: $edad');
    print('Mi Biografia es: $bio');
    print('Ahora mismo vivo en: $direccion');
  }
}

/* void main() {
  Persona p1 = Persona();
  //Le damos los atributos llamandolos
  p1.nombre = 'Ricardo';
  p1.edad = 28;
  p1.bio = 'Soy del Jarillo';
  p1.direccion = 'Segovia';

  p1.mostrar();

}*/

class Estudiantes {
  //campos
  String name = 'Mickel';
  //Funciones o metodos
  void mostrar() {
    print(name);
  }
  // Constructores
}

// Para crear un nuevo objeto de la clase instanciamos con
// la palabra "new" + nombre de la clase dentro de una funcion main

void main() {
  Jugadores a = Jugadores('John'); // instancia de Jugadores and pass a name.
  a.printName();
}

class Jugadores {
  String? name;

  Jugadores(this.name);

  void printName() {
    print(name);
  }
}
