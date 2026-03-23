import 'package:flutter/material.dart';
import 'mis_paginas_tab/home_page.dart';
import 'mis_paginas_tab/menu_page.dart';
import 'mis_paginas_tab/pedidos_page.dart';
import 'mis_paginas_tab/ubicacion_page.dart';
import 'mis_paginas_tab/perfil_page.dart';

void main() => runApp(const AlaBurgerApp());

class AlaBurgerApp extends StatelessWidget {
  const AlaBurgerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlaBurger',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      // Definimos la ruta inicial
      initialRoute: '/',
      routes: {
        '/': (context) => const MainNavigation(),
      },
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  // Lista de las 5 pantallas de AlaBurger
  final List<Widget> _paginas = [
    const HomePage(),
    const MenuPage(),
    const PedidosPage(),
    const UbicacionPage(),
    const PerfilPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Necesario para más de 3 iconos
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange[800],
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant_menu), label: 'Menú'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Pedidos'),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: 'Local'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Santiago'),
        ],
      ),
    );
  }
}