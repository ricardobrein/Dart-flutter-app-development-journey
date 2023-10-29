/*
La seguridad nula de sonido convierte los posibles errores de 
tiempo de ejecución en errores de análisis en tiempo de edición. 
Con seguridad nula, el analizador y los compiladores Dart marcan
si una variable que no acepta valores NULL tiene:

No se ha inicializado con un valor no nulo
Se le ha asignado un valor nulo. 
Estas comprobaciones le permiten corregir estos errores antes de implementar su aplicación.

*/
// With null safety, none of these can ever be null.

void main() {
  var i = 42; // Declarada como un entero.
  String name = getFileName();
  final b = Foo();

  int getLength(String? str) {
    // Add null check here

    return str!.length;
  }

  void main() {
    print(getLength('This is a string!'));
  }
}
