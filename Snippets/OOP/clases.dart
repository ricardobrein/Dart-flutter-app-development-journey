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

class Estudiante {
  // Campos
  String? name;
  int? age;

  // Constructor
  Estudiante(this.name, this.age);

  // Propiedades
  String get studentName {
    return name ?? "Nombre no proporcionado";
  }

  set studentName(String name) {
    this.name = name;
  }

  int? get studentAge {
    return age;
  }

  set studentAge(int? age) {
    if (age != null && age > 3) {
      this.age = age;
    } else {
      print('La edad debe ser mayor de 3');
    }
  }

  // Métodos
  void mostrar() {
    print(studentName);
  }
}

void main() {
  Estudiante estudiante = Estudiante('John', 20);
  estudiante.studentName = 'Mickel';
  estudiante.studentAge = 1;
  estudiante.mostrar();
}
