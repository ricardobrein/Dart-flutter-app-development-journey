void main() {
  // Se declara una variable booleana y se inicializa en false
  bool encendido = false;

  // Se declara la varibale encendido que niega a encendido por lo tanto es True
  bool apagado = !encendido;

  // varaible booleana que declara que si isAdmin que es True
  bool isAdmin = true;
  //print (apagado);

// Una sentencia if que evalua si encendido es true imprimir Esta encendido
// en caso contrario debería de inprimir "Está apagado" como es el caso
  if (encendido == true) {
    print('Está encendido');
  } else {
    print('Está apagado');
  }
}
