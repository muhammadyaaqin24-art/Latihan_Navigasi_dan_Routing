import 'package:flutter/material.dart';
import 'latihan1/beranda.dart';
import 'latihan2/produk_list.dart';
import 'latihan3/halaman_satu.dart';
import 'latihan3/halaman_dua.dart';
import 'latihan3/halaman_tiga.dart';
import 'bonus/bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Navigasi',
      // Mendaftarkan Named Routes untuk Latihan 3
      routes: {
        '/lat3_hal1': (context) => const HalamanSatu(),
        '/lat3_hal2': (context) => const HalamanDua(),
        '/lat3_hal3': (context) => const HalamanTiga(),
      },
      home: const MenuUtama(),
    );
  }
}

class MenuUtama extends StatelessWidget {
  const MenuUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Tugas')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => const BerandaLatihan1()),
              ),
              child: const Text('Latihan 1: Push & Pop'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => const ProdukList()),
              ),
              child: const Text('Latihan 2: Kirim Data'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/lat3_hal1'),
              child: const Text('Latihan 3: Named Routes'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => const BottomNavBonus()),
              ),
              child: const Text('Bonus: Bottom Navigation'),
            ),
          ],
        ),
      ),
    );
  }
}