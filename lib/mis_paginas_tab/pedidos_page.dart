import 'package:flutter/material.dart';

class PedidosPage extends StatelessWidget {
  const PedidosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tus Pedidos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.delivery_dining, size: 50, color: Colors.orange),
            const Text('Estado de tu pedido actual'),
            Image.network(
              'https://raw.githubusercontent.com/SantiagoCarrasco-Dev/assets/main/delivery.png',
              height: 200,
              errorBuilder: (context, error, stackTrace) => const CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}