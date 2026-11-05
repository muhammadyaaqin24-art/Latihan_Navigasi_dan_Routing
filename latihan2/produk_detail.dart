import 'package:flutter/material.dart';

class ProdukDetail extends StatelessWidget {
  final String nama;
  final int harga;

  const ProdukDetail({super.key, required this.nama, required this.harga});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Produk')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(nama, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text('Harga: Rp $harga', style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}