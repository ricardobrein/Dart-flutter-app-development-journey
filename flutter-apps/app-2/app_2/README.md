# app_2

A new Flutter project, esre lo he llamado App2


## Getting Started

## Extrae un widget

La línea responsable de mostrar el par actual de palabras tiene el siguiente aspecto: 

    Text(appState.current.asLowerCase). 

Para cambiarlo por algo más complejo, **es una buena idea extraer esta línea en un widget independiente**. Tener distintos widgets para partes lógicas e independientes de tu IU es una manera importante de administrar la complejidad en Flutter.

Nota: Debemos asegurar que el código que extraigamos acceda solo a lo que necesitemos en este caso de appState, para conocer el par de palabras actuales.

Con el **Refactor de vscode** podemos convertir una linea de codigo en un widget por separado, solo debemos ubicarnos en la linea de código que deseaamos convertir en widget y seleccionar ->Refactor->Extract widget 

> Esto creará automáticamente una clase nueva, BigCard, al final del archivo actual. La clase tendrá un aspecto similar al siguiente:
    
    class BigCard extends StatelessWidget {
        const BigCard({
            super.key,
            required this.appState,
        });

        final MyAppState appState;

        @override
        Widget build(BuildContext context) {
            return Text(appState.current.asSnakeCase);
        }
    }

Busca la clase `BigCard` y dentro de ella el método `build()` [Que contruye el widget] dentro de ella. Desplegamos Refactor en el widget de Text. Sin embargo, esta vez , seleccionamos `Wrap with Padding.` Esto creará un nuevo widget superior alrededor del widget de Text llamado Padding. Luego de ctrl+s, verás que la palabra aleatoria ya tiene más espacio(padding) a su alrededor.

NOTA: Podemos cambiar el valor de padding, por ejemplo a 20 lo cual creara mas espacio.

#

Sio vamos a un nivel superior. Coloca el cursor en el widget de Padding, despliega el menú Refactor y selecciona Wrap with widget…

Esto te permitirá especificar el widget superior. Ingresa "Card" y presiona Intro. Esto une el widget ``pading` y por lo tanto `text` en un widget 

#

## Colores y textTheme:

Para cambiar este color, y el esquema de colores de la app completa, si te desplazas hacia arriba hasta `MyApp` y cambias el color de origen del ColorScheme que figura allí.

    Nota: La clase Colors de Flutter te permite acceder fácilmente a una paleta de colores escogidos a mano, como Colors.deepOrange o Colors.red. Pero, por supuesto, puedes elegir cualquier color que desees. Para definir el verde puro con plena opacidad, por ejemplo, usa Color.fromRGBO(0, 255, 0, 1.0). Si te encantan los números hexadecimales, siempre puedes usar Color(0xFF00FF00).

    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blueAccent),



Observa cómo se anima el color sin problemas. Esto se conoce como **animación implícita**

**TextTheme**
La tarjeta aún no esta bien: el texto es demasiado pequeño y su color dificulta la lectura. Para arreglar esto, debemos hacer cambios en el metodo `build()` de `BigCard`.

#  Accesibilidad

NOta: Flutter tiene varias herramientas para lograr la accesibilidad, incluidas las pruebas automáticas y el widget de Semantics. Obtén más información en la Página de accesibilidad de la documentación de Flutter.

Es recomendable que mantengas la simplicidad visual de pair.asLowerCase. Usa la propiedad semanticsLabel de Text para anular el contenido visual del widget de texto con un contenido semántico que es más apropiado para los lectores de pantalla:
``` @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20),

        // ↓ Make the following change.
        child: Text(
          pair.asLowerCase,
          style: style,
          semanticsLabel: "${pair.first} ${pair.second}",
        ),
      ),
    );
  }
```
Ahora, los lectores de pantalla pronuncian correctamente cada par de palabras generado, pero la IU sigue siendo igual. Observa esto en acción usando un lector de pantalla en tu dispositivo.

# Widget Inspector

En principio nos servira para saber que parte de nuestra pantalla ocupa la UI de neustra app, al ejecutar f5 y presionar sobre la interfaz nos dira que nuestra app solo ocupa una parte de la aplicación.

    Podemos ver que, cuando la Column está destacada, no ocupa el ancho entero de la app. Solo ocupa tanto espacio horizontal como sus elementos secundarios necesiten.

## Centrar la UI y ocupar toda la pantalla:

Para centrar la columna. Colocamos el cursor sobre Column en el `Scaffold`, despliega el menú Refactor y selecciona `Wrap with Center.`

## Más ajustes:

Si lo deseas, puedes hacer algunos ajustes más.

Puedes quitar el widget de Text que se encuentra sobre BigCard. Podría decirse que el texto descriptivo ("A random AWESOME idea:") ya no se necesita, ya que la IU tiene sentido sin él. Y se ve más limpia de esa manera.

También puedes agregar un widget de `SizedBox(height: 10)` entre `BigCard` y `ElevatedButton`. De esta forma, habrá un poco más de espacio de separación entre los dos widgets. *El widget de SizedBox solamente ocupa espacio y no renderiza nada por sí solo. En general, se usa para crear "espacios visuales".*

# Lógica empresarial

La lógica de la aplicacion la manejará MyAppState
Que a su vez es una extension de `ChangeNotifier`.

1. Agregamos una nueva propiedad o variable a MyAppState llamada favoritos que se inicia como una lista vacia

2. Le especificamos que la lsita solo puede tener cierto tipos de palabras de WordPair[] Usando **Parametros Genéricos** Por lo que dart no ejecutara ni siquiera la app si intentamos añadir algo distinto de `WordPair

3. El metodo `toggleFavorite` crea un condicional de quitar el par de palabras de favoritos si ya la tiene sy agregarla si no, y luego el codigo llama a `notifyListeners();`

### Agregar el botón de favoritos a la Interaz

Ya que hemos creado lógica de empresa pues tendremos que agrearlo a la UI, por lo que ubicar el botón `Like` a la izquierda del botón `Next` requiere un widget de `Row` una row es un elemento en la horizontal de la interfaz en contraparte de `Column`. y se agregara en el `build()` de **`MyHomePage`**

Nota: La manera bonita de hacerlo es con un Refacto de `ElevatedButton` y seleccionar **Wrap with row**

Row actúa de manera similar a Column: de forma predeterminada, agrupa sus elementos secundarios a la izquierda. Por motivos didácticos (y de aprendizaje), usa `mainAxisSize`. Esto le indica a el Row que no debe ocupar todo el espacio horizontal disponible.

# 7 Borramos myhomePage para agregar StatefulWidgets 

 Para alternar entre las dos pantallas, implementarás tu primer StatefulWidget.


 El código declara una nueva variable, page, de tipo Widget.
Luego, una sentencia switch asigna una pantalla a page, según el valor actual de selectedIndex.
Dado que FavoritesPage todavía no existe, usa Placeholder, un widget útil que dibuja un rectángulo tachado en el lugar en el que lo coloques, lo que indica que esa parte de la IU no está terminada.

### Nota: 

Nota: Flutter funciona con píxeles lógicos como unidad de medida. A veces, se los llama píxeles independientes del dispositivo. Un padding de 8 píxeles es visualmente el mismo sin importar si la app está en ejecución en un teléfono de baja resolución o en un dispositivo "Retina" nuevo. Hay cerca de 38 píxeles lógicos por centímetro, o 96 por pulgada, de la pantalla física.

`LayoutBuilder`. Te permitirá cambiar tu árbol de widgets en función del espacio disponible que haya.

Una vez más, usa el menú Refactor de Flutter en VS Code para realizar los cambios deseados. Sin embargo, esta vez, es un poco más complicado:

Dentro del método build de _MyHomePageState, coloca el cursor en Scaffold.
Despliega el menú Refactor con Ctrl+. (Windows/Linux) o Cmd+. (Mac).
Selecciona Wrap with Builder y presiona Intro.
Modifica el nombre del Builder agregado recientemente por LayoutBuilder.
Cambia la lista de parámetros de devolución de llamada de (context) a (context, constraints).

Cada vez que las restricciones cambian, se llama a la devolución de llamada builder de LayoutBuilder. Esto ocurre, por ejemplo, en las siguientes situaciones:

El usuario cambia el tamaño de la ventana de la app.
El usuario rota el teléfono de modo vertical a modo horizontal, o viceversa.
Algún widget junto a MyHomePage aumenta de tamaño, lo que hace que las restricciones de MyHomePage resulten más pequeñas.
Etcétera.
Ahora, tu código podrá decidir si mostrar la etiqueta consultando las constraints actuales. Haz el siguiente cambio de una línea en el método build de _MyHomePageState:

```
class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = GeneratorPage();
        break;
      case 1:
        page = Placeholder();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Row(
          children: [
            SafeArea(
              child: NavigationRail(
                extended: constraints.maxWidth >= 600,  // ← Here.
                destinations: [
                  NavigationRailDestination(
                    icon: Icon(Icons.home),
                    label: Text('Home'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.favorite),
                    label: Text('Favorites'),
                  ),
                ],
                selectedIndex: selectedIndex,
                onDestinationSelected: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
              ),
            ),
            Expanded(
              child: Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: page,
              ),
            ),
          ],
        ),
      );
    });
  }
}


```


Ahora, tu app responde a su entorno, como el tamaño de la pantalla, la orientación y la plataforma. En otras palabras, es responsiva. Lo unico que faltaría por hacer es cambiar el Placeholder por la pantalla real de favoritos.

Esta es la clase FavoritesPage nueva:

lib/main.dart

// ...

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return Center(
        child: Text('No favorites yet.'),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${appState.favorites.length} favorites:'),
        ),
        for (var pair in appState.favorites)
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(pair.asLowerCase),
          ),
      ],
    );
  }
}
Esto es lo que hace el widget:

Obtiene el estado actual de la app.
Si la lista de favoritos está vacía, muestra un mensaje centrado que indica No favorites yet*.*
De lo contrario, muestra una lista (por la que el usuario se puede desplazar).
La lista comienza con un resumen (por ejemplo, Tienes 5 favoritos*.*).
Luego, el código itera por todos los favoritos y construye un widget de ListTile para cada uno.

## Felicidades!

### Temas abordados

Hemos hecho nuestra primera pequeña app responsiva y abordamos los siguientes conceptos de flutter:

Cuáles son los conceptos básicos del funcionamiento de Flutter
Cómo crear diseños en Flutter
Cómo conectar las interacciones del usuario (como la presión de un botón) con el comportamiento de la app
Cómo mantener organizado tu código de Flutter
Cómo hacer que tu app sea responsiva
Cómo lograr que tu app tenga un aspecto y una experiencia coherentes



