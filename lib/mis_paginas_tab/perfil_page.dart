import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(title: const Text('Dueño de AlaBurger')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.orange,
              child: Icon(Icons.person, size: 80, color: Colors.white),
            ),
            const SizedBox(height: 20),
            const Text(
              'Santiago Carrasco',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text('CEO & Founder', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 20),
            Image.network(
              'https://raw.githubusercontent.com/SantiagoCarrasco-Dev/assets/main/santiago_profile.png',
              height: 150,
              errorBuilder: (context, error, stackTrace) => const Text('Foto de perfil'),
            ),
          ],
        ),
      ),
    );
  }
}