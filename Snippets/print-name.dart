import 'dart:io';

void main() {
  String? name;
  int edad;

  stdout.write("Introduce el nombre: ");
  name = stdin.readLineSync();

  if (name != null) {
    name = name.trim();
    if (name.isEmpty) {
      print("Por favor, introduce tu nombre.");
      name = stdin.readLineSync();
    } else {
      stdout.write("Introduce tu edad: ");
      try {
        var edadString = stdin.readLineSync();
        if (edadString != null) {
          edad = int.parse(edadString);
          print("Hola $name, tienes $edad años.");
        } else {
          print("Edad no válida.");
        }
      } catch (e) {
        print("Edad no válida. Debe ser un número.");
      }
    }
  } else {
    print("Introduce un nombre.");
  }
}
