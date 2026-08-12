import 'package:flutter/material.dart';

void main() {
  // Punto de entrada de la aplicación
  runApp(const MiReproductorApp());
}

// Widget Raíz: Define el tema y la navegación principal
class MiReproductorApp extends StatelessWidget {
  const MiReproductorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reproductor de Música',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PantallaInicio(),
    );
  }
}

// Pantalla principal (StatelessWidget por ahora)
class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold proporciona la estructura básica con AppBar, Body, etc.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Música'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.music_note,
              size: 80,
              color: Colors.deepPurple,
            ),
            SizedBox(height: 16), // Espaciador
            Text(
              '¡Listos para agrupar tu música por géneros!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}