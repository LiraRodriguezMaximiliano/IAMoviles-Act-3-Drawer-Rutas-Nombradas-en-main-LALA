import 'package:flutter/material.dart';

class ResenasPage extends StatelessWidget {
  const ResenasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reseñas', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Image.network(
          'https://cdn-icons-png.flaticon.com/512/7653/7653930.png',
          width: 200,
          height: 200,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}