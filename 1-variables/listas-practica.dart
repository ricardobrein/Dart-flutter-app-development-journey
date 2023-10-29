void main() {
  /*Vamos a aprender a crear listas dentro de dart
  */

  List<String> palabras = ['Hola', 'como', 'Estas'];

  // print(palabras);

  palabras.add('Yo');
  palabras.add('Yo');
  palabras.add('Yo');
  palabras.add('Yo');
  palabras.add('Yo');

  print(palabras);

  Set<String> palabras2 = palabras.toSet();

  print(palabras2);
  print(palabras2.toList());

  List<int> numeros = [3, 4, 6, 7];

  // Reemplazo de numeros

  numeros.first = 4;
  numeros.last = 10;
  print(numeros);

  String num = 'Hellow';
  print(num);
}
