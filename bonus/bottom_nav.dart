import 'package:flutter/material.dart';

class BottomNavBonus extends StatefulWidget {
  const BottomNavBonus({super.key});

  @override
  State<BottomNavBonus> createState() => _BottomNavBonusState();
}

class _BottomNavBonusState extends State<BottomNavBonus> {
  int _selectedIndex = 0;

  final List<Widget> _halaman = [
    const Center(child: Text('Ini Konten Tab Beranda', style: TextStyle(fontSize: 20))),
    const Center(child: Text('Ini Konten Tab Cari', style: TextStyle(fontSize: 20))),
    const Center(child: Text('Ini Konten Tab Profil', style: TextStyle(fontSize: 20))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bonus Bottom Nav')),
      body: _halaman[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Cari'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}