//void main() {
//final String pokemon = 'Ditto';
//final int hp = 100;
//final bool isAlive = true;
//final List<String> abilidades = ['matar'];
//final debilidades = <String>['agua', 'aceite'];

/*

  print("""
  
  $pokemon
  $hp
  $isAlive
  $abilidades
  $debilidades
  
  """);
}*/

void main() {
  //Podemos poner claves key:value definiendo sus
  //valores, también dart puede inferirlos

  const Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilidades': <String>['matar', 'garra', 'etc...'],
    'debilidades': {1: 'Muere', 2: 'sonreir'}
  };

//Puedo acceder a los valores del diccionario utilizando su key⬇️

  print('La debilidad 1 es que: ${pokemon['debilidades'][1]}');
  print('La debilidad 2 es: ${pokemon['debilidades'][2]}');
  print('Su nombre es: ${pokemon['name']}');
}
