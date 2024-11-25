import 'package:flutter/material.dart';
import 'navigation_second.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({Key? key}) : super(key: key);

  @override
  _NavigationFirstState createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color _backgroundColor = Colors.blue; // Warna default

  Future<void> _navigateAndGetColor(BuildContext context) async {
    // Navigasi ke screen kedua dan tunggu hasil
    final selectedColor = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const NavigationSecond(),
      ),
    );

    // Jika ada warna yang dikembalikan, perbarui state
    if (selectedColor != null && selectedColor is Color) {
      setState(() {
        _backgroundColor = selectedColor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation First - Syafiq"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: _backgroundColor,
        child: Center(
          child: ElevatedButton(
            onPressed: () => _navigateAndGetColor(context),
            child: const Text("Change Color"),
          ),
        ),
      ),
    );
  }
}
