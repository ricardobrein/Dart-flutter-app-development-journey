import 'package:flutter/material.dart';
import 'data.dart';

void main() {
  runApp(const DocumentApp());
}

class DocumentApp extends StatelessWidget {
  const DocumentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: DocumentScreen(
        document: Document(),
      ),
    );
  }
}

class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({
    required this.document,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var metadata = document.getMetadata();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(metadata.$1),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Ultima modificacion',
            ),
          ),
        ],
      ),
    );
  }
}
