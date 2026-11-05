import 'package:flutter/material.dart';
import 'tentang.dart';

class BerandaLatihan1 extends StatelessWidget {
  const BerandaLatihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beranda - Latihan 1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TentangLatihan1()),
            );
          },
          child: const Text('Pergi ke Halaman Tentang'),
        ),
      ),
    );
  }
}