import 'dart:convert';

class Document {
  var title = 'My Documento';
  final Map<String, dynamic> _json;

  Document.fromJson(String json) : _json = jsonDecode(json);

  //El tipo de dato para esta funcion
  // es un registro de dos datos, String y datetime

  void getMetadata({DateTime? modified}) {
    var title = 'Mi Documento';
    var now = DateTime.now();
    return (title, modified: now);
  }
}

const documentJson = '''
{
  "metadata": {
    "title": "My Document",
    "modified": "2023-05-10"
  },
  "blocks": [
    {
      "type": "h1",
      "text": "Chapter 1"
    },
    {
      "type": "p",
      "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
      "type": "checkbox",
      "checked": false,
      "text": "Learn Dart 3"
    }
  ]
}
''';
