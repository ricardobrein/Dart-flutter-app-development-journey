import 'Camera.dart';

void main() {
  Camera c1 = Camera();
  c1.model = 'Sony';
  c1.id = 1;
  c1.model = 'Cybershot';
  c1.price = 25800.00;
  c1.mp = 50;
  c1.year = 1995;

  // c1.mostrar();
  // c1.PrecioAlto();

  Camera c2 = Camera();
  c2.id = 2;
  c2.model = 'Canon';
  c2.mp = 80;
  c2.price = 2500;
  c2.year = 2007;

  c2.mostrar();

  if (c1.CualEsElPrecio()) {
    print('El precio de la camara de ${c1.model} es alto');
  }
  if (c2.CualEsElPrecio()) {
    print('El precio de la ${c2.model} es alto');
  }
}
