import 'package:flutter/material.dart';

class HalamanTiga extends StatelessWidget {
  const HalamanTiga({super.key});

  @override
  Widget build(BuildContext context) {
    final argumen = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(title: const Text('Halaman 3 (Named)')),
      body: Center(
        child: Text('Argumen diterima: $argumen', textAlign: TextAlign.center),
      ),
    );
  }
}