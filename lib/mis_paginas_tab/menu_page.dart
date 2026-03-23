import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nuestro Menú')),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('La Especial de la Casa', style: TextStyle(fontSize: 18)),
            ),
            Image.network(
              'https://raw.githubusercontent.com/SantiagoCarrasco-Dev/assets/main/menu_item.png',
              height: 300,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const Text('Cargando imagen de GitHub...'),
            ),
          ],
        ),
      ),
    );
  }
}