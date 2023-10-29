void main() {
  int c = 1;
  while (c <= 10) {
    // print('El valor es $c');
    c++;
    if (c == 5) {
      print('Esquivamos el numero 5');
      continue;
    }
    print('Value = $c');
  }
  print('Estas fuera del loop');
}


//  String continuar = 'y';
//   int contador = 0;
//   List<String> condiciones = [
//     "condición numero 1",
//     "condición numero 2",
//     "condición numero 3"
//   ];

//   while (continuar == 'y') {
//     if (contador < condiciones.length) {
//       stdout.writeln('Contador: $contador    ' + '${condiciones[contador]}');
//       contador++;
//       if (contador < condiciones.length) {
//         stdout.writeln('desea continuar? (y/n)');
//         continuar = stdin.readLineSync().toString();
//       }
//     } else {
//       break;
//     }
//   }