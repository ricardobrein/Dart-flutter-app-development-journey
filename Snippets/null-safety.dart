// Todas las variables son
// no-anulables por defecto

void main() {
  String? hello = sayHello('Ricardo', true);
  print(hello);
}

String sayHello(String name, bool isMorning) {
  String hello;
  if (isMorning) {
    hello = 'Good Morning';
  } else {
    hello = 'Good evening';
  }
  hello += ' $name';
  return hello;
}
