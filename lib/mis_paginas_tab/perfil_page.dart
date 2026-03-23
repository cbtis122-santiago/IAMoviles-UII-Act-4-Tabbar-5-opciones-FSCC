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
              'data:image/jpeg;base64,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',
              height: 150,
              errorBuilder: (context, error, stackTrace) => const Text('Foto de perfil'),
            ),
          ],
        ),
      ),
    );
  }
}