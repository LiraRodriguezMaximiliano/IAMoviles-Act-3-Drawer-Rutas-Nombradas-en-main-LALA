import 'package:flutter/material.dart';
// Importamos las páginas desde la subcarpeta
import 'LasPaginas/lacteos.dart';
import 'LasPaginas/no_lacteos.dart';
import 'LasPaginas/recetas.dart';
import 'LasPaginas/resenas.dart';

void main() => runApp(const MyAppLala());

class MyAppLala extends StatelessWidget {
  const MyAppLala({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LALA App',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      
      // CONFIGURACIÓN DE RUTAS NOMBRADAS
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/lacteos': (context) => const LacteosPage(),
        '/no-lacteos': (context) => const NoLacteosPage(),
        '/recetas': (context) => const RecetasPage(),
        '/resenas': (context) => const ResenasPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio LALA', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const CustomDrawer(),
      body: const Center(child: Text('Bienvenido a LALA\nAbre el menú para navegar')),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50, left: 20, bottom: 20),
            decoration: const BoxDecoration(color: Colors.blueAccent),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(backgroundColor: Colors.white, child: Text('LALA')),
                SizedBox(height: 10),
                Text('LALA México Maximiliano Lira.', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                Text('📍 Calle 13', style: TextStyle(color: Colors.white, fontSize: 12)),
                Text('📞 656-429-2001', style: TextStyle(color: Colors.white, fontSize: 12)),
                Text('✉️ contacto@lala.com.mx', style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.water_drop, color: Colors.blue),
            title: const Text('Productos Lácteos'),
            onTap: () => Navigator.pushNamed(context, '/lacteos'),
          ),
          ListTile(
            leading: const Icon(Icons.eco, color: Colors.green),
            title: const Text('Productos NO Lácteos'),
            onTap: () => Navigator.pushNamed(context, '/no-lacteos'),
          ),
          ListTile(
            leading: const Icon(Icons.restaurant_menu, color: Colors.orange),
            title: const Text('Recetas'),
            onTap: () => Navigator.pushNamed(context, '/recetas'),
          ),
          ListTile(
            leading: const Icon(Icons.star_rate, color: Colors.amber),
            title: const Text('Reseñas'),
            onTap: () => Navigator.pushNamed(context, '/resenas'),
          ),
        ],
      ),
    );
  }
}