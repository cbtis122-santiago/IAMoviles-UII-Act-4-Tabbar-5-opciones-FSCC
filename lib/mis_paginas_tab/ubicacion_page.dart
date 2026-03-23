import 'package:flutter/material.dart';

class UbicacionPage extends StatelessWidget {
  const UbicacionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Visítanos')),
      body: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.pin_drop),
            title: Text('Calle Principal #123'),
            subtitle: Text('Ciudad AlaBurger'),
          ),
          Expanded(
            child: Image.network(
              'https://raw.githubusercontent.com/SantiagoCarrasco-Dev/assets/main/mapa.png',
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const Center(child: Text('Mapa no disponible')),
            ),
          ),
        ],
      ),
    );
  }
}