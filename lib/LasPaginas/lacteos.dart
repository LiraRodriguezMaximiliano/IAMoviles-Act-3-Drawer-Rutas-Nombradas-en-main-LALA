import 'package:flutter/material.dart';

class LacteosPage extends StatelessWidget {
  const LacteosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos Lácteos', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Image.network(
          'https://raw.githubusercontent.com/LiraRodriguezMaximiliano/imagenes-para-flutter-6I-11-02-26/refs/heads/main/L1.png',
          width: 200,
          height: 200,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}