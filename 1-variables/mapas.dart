void main() {
  // List<String> aficiones = ["crossfit", "natación"];
  // Map<dynamic, dynamic> personas = {
  //   1: "Pedro",
  //   2: "Juan",
  //   3: "Lucas",
  //   "nombre": "David",
  //   10: "Felix",
  //   "is@dmin": true,
  // };

  // Map<int, int> personas2 = {2: 10000, 12: 50000};

  // personas.addAll(personas2);

  // print(personas);

  Map<String, dynamic> aficiones = {
    "deportes": ["crossfit", "piraguismo"],
    "pintar": true,
    "series": ['House of cards', 'La casa de Papel', 'Otros']
  };

  Map<String, dynamic> manuel = {
    'Nombre': 'Manuel',
    'Apodo': 'Manu',
    'Aficiones': aficiones
  };

  Map<String, dynamic> jose = {"nombre": "jose", "aficiones": aficiones};

  print(jose["aficiones"]["deportes"]);

  print(manuel['Aficiones']['series']);
}
