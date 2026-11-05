import 'package:flutter/material.dart';

class TentangLatihan1 extends StatelessWidget {
  const TentangLatihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang - Latihan 1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Kembali ke Beranda'),
        ),
      ),
    );
  }
}