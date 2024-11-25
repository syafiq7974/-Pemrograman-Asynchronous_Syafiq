import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({Key? key}) : super(key: key);

  @override
  _NavigationSecondState createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Second - Syafiq"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, Colors.red); // Mengembalikan warna merah
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text("Red"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, Colors.green); // Mengembalikan warna hijau
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: const Text("Green"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, Colors.blue); // Mengembalikan warna biru
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: const Text("Blue"),
          ),
        ],
      ),
    );
  }
}
