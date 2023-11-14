// Las clases se pueden crear dentro de la funcion main y llamarlas posteriormente
// Las clases hacen cosas que despues podemos llamar desde la funcion Principal.

class Camera {
  //Propiedades

  int? id;
  String? model;
  int? year;
  int? mp;
  double? price;

  void mostrar() {
    print(
        'La camara es id: $id y el modelo es $model fabricada en el año $year');
    print('Es de $mp Megapixeles, ademas cuesta $price dolares');
  }

  bool CualEsElPrecio() {
    if (price! > 2000) {
      return true;
    } else {
      return false;
    }
  }
}

class Area {
  double? length;
  double? breadth;
  String? name;

  double calcularArea() {
    if (length != null && breadth != null) {
      return length! * breadth!;
    } else {
      return 0.0; // Devolvemos 0 si faltan valores
    }
  }

  void mostrarArea() {
    double areaCalculada = calcularArea();
    print('El área calculada de de $name es $areaCalculada');
  }
}

void main() {
  Area a1 = Area();
  a1.breadth = 25.2;
  a1.length = 80.1;
  a1.name = 'Area 1';

  Area a2 = Area();
  a2.breadth = 546.52;
  a2.length = 2535.5;
  a2.name = 'Area 2';

  a2.mostrarArea();
  a1.mostrarArea();
}
