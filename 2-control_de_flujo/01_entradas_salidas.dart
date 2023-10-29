import 'dart:io';

main() {
  // imprimir en el terminal o cmd

  stdout.writeln('Cúal es tu nombre?');

  // Leer la información
  String? nombre = stdin.readLineSync();

  stdout.writeln('Tú Nombre es: ' + nombre!);
}
