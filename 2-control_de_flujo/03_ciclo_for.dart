import 'dart:io';

// Syntax del bucle for

// for (valores_iniciales_counts; condicion_para_terminar, pasos){
//
// declaraciones del bucle
//
// }
void main() {
  var num = 4;
  var num2 = 1;
  for (var i = num; i >= 1; i--) {
    num2 *= i;
  }
  print(num2);
}
//   print('index i:  ${2 * 10}');
// }

/*
    Dato de entrada: La base de la tabla de multiplicar
    (este dato debe de ser capturado por el usuario)
    ej: 2      2, 4, 6, 8, 10
    La salida esperada sería
    2 * 1 = 2
    2 * 2 = 4
    2 * 3 = 6
    ..
    2 * 10 = 20
  */

/* stdout.writeln('¿Cuál es la base de la tabla?');
  int base = int.parse(stdin.readLineSync() ?? '5');

  for (int i = 1; i <= 10; i++) {
    stdout.writeln('$base * $i = ${i * base}');
  }*/
