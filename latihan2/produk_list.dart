
import 'package:flutter/material.dart';
import 'produk_detail.dart';

class ProdukList extends StatelessWidget {
  const ProdukList({super.key});

  // Daftar data produk
  final List<Map<String, dynamic>> produk = const [
    {
      'nama': 'Kopi Susu Gula Aren',
      'harga': 18000,
    },
    {
      'nama': 'Mie Goreng Spesial',
      'harga': 25000,
    },
    {
      'nama': 'Ayam Geprek Nasi',
      'harga': 20000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk'),
      ),

      body: ListView.builder(
        itemCount: produk.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.fastfood),

            title: Text(
              produk[index]['nama'],
            ),

            subtitle: const Text('Ketuk untuk detail'),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProdukDetail(
                    nama: produk[index]['nama'],
                    harga: produk[index]['harga'],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
