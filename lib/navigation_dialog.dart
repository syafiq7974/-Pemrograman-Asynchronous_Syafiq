import 'package:flutter/material.dart';

class NavigationDialog extends StatefulWidget {
  const NavigationDialog({Key? key}) : super(key: key);

  @override
  _NavigationDialogState createState() => _NavigationDialogState();
}

class _NavigationDialogState extends State<NavigationDialog> {
  Color _backgroundColor = Colors.white; // Warna default

  // Method async untuk menampilkan dialog
  Future<void> _showColorDialog(BuildContext context) async {
    final selectedColor = await showDialog<Color>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Pilih Warna Favorit Anda"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.circle, color: Colors.red),
              title: const Text("Red"),
              onTap: () => Navigator.pop(context, Colors.red),
            ),
            ListTile(
              leading: const Icon(Icons.circle, color: Colors.green),
              title: const Text("Green"),
              onTap: () => Navigator.pop(context, Colors.green),
            ),
            ListTile(
              leading: const Icon(Icons.circle, color: Colors.blue),
              title: const Text("Blue"),
              onTap: () => Navigator.pop(context, Colors.blue),
            ),
          ],
        ),
      ),
    );

    // Jika warna dipilih, perbarui state
    if (selectedColor != null) {
      setState(() {
        _backgroundColor = selectedColor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Dialog - Syafiq"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: _backgroundColor,
        child: Center(
          child: ElevatedButton(
            onPressed: () => _showColorDialog(context),
            child: const Text("Pilih Warna"),
          ),
        ),
      ),
    );
  }
}
