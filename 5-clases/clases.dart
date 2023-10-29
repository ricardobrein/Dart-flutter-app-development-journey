import persona.dart';

main() {
  // final persona = {'nombre': 'Ricardo', 'edad': 33};

  // Cuando trabajamos con informacion, creamos una clase
  // para que podamos asignarselo a muchas instancias
  // cuando tenemos una estructura de datos
  // que es fija deberiamos hacer una clase

  final persona = new Persona();

  persona..nombre = 'Ricardo';
         ..edad = 33;
         ..bio = 'Nacio por ahi';

  print(persona);

  // Las clases heredan metodos por defecto por ejemplo toString

  print(persona.toString());

}