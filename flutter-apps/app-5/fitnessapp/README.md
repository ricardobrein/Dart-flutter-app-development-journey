# fitnessapp

A new Flutter project.

## Getting Started

Creando una app De fitness con flutter apra practicar y aprender a desarrollar appas en Dart haciendo proyectos.

Existen dos paquetes de iconos o el estilo que le quieres dar a tu app..

Material Design para android

o Cupertino para iOS

## Widgets

Existen dos tipos de widgets principales:

**Stateless**: Widgets sin estados que son digamos, estáticos, es decir no se redibuja cunado la app esta siendo utilizada.

    Para crear un Stateless Widget empezamos a escribir un shortcut `stl`

- El retorno por defecto de un Steteless es un widget, en este caso usamos un scaffold, es decir una interfaz inicial que a su vez contiene widgets tipicamente usados en una app como un `AppBar`, o unos iconos iniciales. es un layout basico de la apliacion

### Fuentes

- Para agregar fuentes a nuestra app creamos una carpeta llamada fonts y guardamos las fuentes en fotmato .ttf y las definimos en el `pubspec.yml`

- Para que la app empiece a reconocer las feuntes, desde el terminal escribimos el comando `flutter pub get` (Nota: tener cuidado con la indentacion de pubspec)

### Paquetes en flutter

Buscamos el paquete en `pub.dev` y copiamos su nombre y lo ponemos en dependencias en el `pubspec.yml` y actualizamos otra vez con `flutter pub get`

Para iconos en formato svg buscamos el paquete svg flutter lo importamos en nuestro codigo y lo utilizamos, recordar agregarlo a dependencies en pubspec.yml y la ruta en `assets/icons` en la raiz del proyecot

**Stateful**: Que esta compuesto por el widget y un estado asociado. un Estado es una modificacion de ese widget al interpretar un dato, un cambio, una interaccion, etc.



