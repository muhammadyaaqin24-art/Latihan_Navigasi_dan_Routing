import 'package:flutter/material.dart';

class HalamanDua extends StatelessWidget {
  const HalamanDua({super.key});

  @override
  Widget build(BuildContext context) {
    final argumen = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(title: const Text('Halaman 2 (Named)')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Argumen diterima: $argumen', textAlign: TextAlign.center),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/lat3_hal3',
                  arguments: 'Ini pesan dari Halaman Dua ke Halaman Tiga',
                );
              },
              child: const Text('Ke Halaman 3 (Kirim Argumen)'),
            ),
          ],
        ),
      ),
    );
  }
}