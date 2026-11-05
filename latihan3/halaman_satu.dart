import 'package:flutter/material.dart';

class HalamanSatu extends StatelessWidget {
  const HalamanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman 1 (Named)')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/lat3_hal2',
              arguments: 'Ini pesan dari Halaman Satu ke Halaman Dua',
            );
          },
          child: const Text('Ke Halaman 2 (Kirim Argumen)'),
        ),
      ),
    );
  }
}