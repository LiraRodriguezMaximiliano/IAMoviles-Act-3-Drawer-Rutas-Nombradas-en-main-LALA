import 'package:flutter/material.dart';

class RecetasPage extends StatelessWidget {
  const RecetasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recetas LALA', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Image.network(
          'https://cdn-icons-png.flaticon.com/512/3565/3565407.png',
          width: 200,
          height: 200,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}