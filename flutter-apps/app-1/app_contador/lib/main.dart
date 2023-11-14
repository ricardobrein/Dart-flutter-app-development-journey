import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este widget es la principal de la aplicación.
  @override // SOBREESCRIBIR LA CLASE PADRE
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Que pasa mamaguevo',
      theme: ThemeData(
        // Este es el tema de la aplicación.

// PROBAR ESTO: Podemos ejecutar la aplicación con "flutter run main.dart".

// Tip: En la esquina inferior derecha de vscode podemos seleccionar
// la pantalla que deseamos usar

// la aplicación tiene una barra de herramientas azul. Luego, sin salir de la aplicación,
// cambiaremos el color en el esquema de colores a continuación a Colors.green
// y luego invocar "hot reload" (guarde sus cambios o presione el botón "hot reload"
// o Ctrl+S" en un VSCODE compatible con Flutter, o "r" si usamos comandos
// para iniciar la aplicación).

// El contador no se restableció a cero; la aplicación
// el estado no se pierde durante la recarga.
// Para restablecer el estado, usamos hot restart
// en su lugar.

// Esto también funciona para el código, no sólo para los valores:
// la mayoría de los cambios en el código se pueden ver directamente
// despues de un Hot Reload.
//

        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 44, 198, 200)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Hola'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

/* Un widget stateful es un widget que puede mutar es decir las cosas dentro
de el puenden cambiar su estado */

// Este widget es la pagina de inicio de la app y tiene objetos que cambian
// de estado (definido a continuación) y estos a su vez afectan
// como se ve o lo que hace la app

// Esta clase es la configuración del estado. Mantiene los valores (en este
// caso el título) proporcionado por el padre (en este caso el statefulWidget
// de la app) y utilizado por el método de construcción del Estado.
// Los campos en una subclase de widget son
// siempre definidos como "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // El metodo build debemos llamarlo cada vez que setState es llamado.
    // Por ejemplo arriba fue llamado setState por _incrementCounter.
    // Flutter esta optimizado para re-ejecutar muy rápido los metodos build
    // Cuando algo en la interfaz de usuario necesita actualizarse,
    // como el contenido de un widget o su aspecto,
    // se vuelve a construir ese elemento en lugar de modificarlo directamente.

    return Scaffold(
      appBar: AppBar(
/*
Creando un widget Scaffold, que es un elemento fundamental
para la estructura de las aplicaciones en Flutter. 
Un Scaffold proporciona una estructura básica para la interfaz de usuario
de la aplicación, que generalmente incluye una barra de aplicación
en la parte superior y un área de contenido en el centro.

*/

// Practica: Cambiar el color de la barra por un color especifico.

// Colors.amber, por ejemplo? y disparamos un hot reload
// Esto cambiara el color de AppBar y los otros se mantendran.

        backgroundColor: Color.fromARGB(255, 78, 225, 85),

// Aqui tomamos el valor del Objeto MyHomePage que fue creado por
// el metodo App.build, y lo usamos para cambiar el titulo de la app.

        title: Text('Contador XD'),
      ),
      body: Center(
// Center es un widget de posicion toma un solo child y lo posiciona
// en el centro de manera vertical.

        child: Column(
// Column es tambien un widget de posicion en la UI.
// Este toma una lista de childrens y los ubica verticalmente
// Por defecto se autoescala para adapatar el tamaño
// de los children horizontalmente y puede ser tan alto como los widgets padres.
// Column puede escalarse a si mismo de varias maneras
// y podemos definir como posicionar sus children.

// Aqui usamos mainAxisAlignment.center
// para centrar el children verticalmente; the main axis here is the vertical
// axis because Columns are vertical (the cross axis would be
// horizontal).

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'hAS PRESIONADO DEMASIADAS VECES:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: const Text('Decrement'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _resetCounter,
                  child: const Text('Reset'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Text('Incrementar'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}

/*class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFCF05),
        title: Text('Contador de Ricardo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: Text('Decrement'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _resetCounter,
                  child: Text('Reset'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Incrementar'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}*/
