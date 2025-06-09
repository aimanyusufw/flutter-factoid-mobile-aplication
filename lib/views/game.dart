import 'package:flutter/material.dart';

import '../widget/button_nav_bar.dart';

class game extends StatelessWidget {
  const game({super.key});

  static const routeName = '/game';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavbar(index: 2),
        body: _gallery());
  }
}

class _gallery extends StatelessWidget {
  _gallery({
    super.key,
  });

  final List<String> images = [
    'https://images.unsplash.com/photo-1662793762129-6a14c55bb0ee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8d2F5YW5nfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1662793216135-6e4d51fa54eb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8d2F5YW5nfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    'https://www.kendalkab.go.id/images/konten/berita/20230530002.jpg',
    "https://www.kendalkab.go.id/images/konten/berita/20230522002.JPG",
    "https://asset.kompas.com/crops/L4bFdurirQKueq65aNb8mnYZkLw=/0x0:0x0/750x500/data/photo/2023/05/28/6472cb9cd2b35.jpg",
    "https://asset.kompas.com/crops/8S55Ec3Fr4xXD3zvCaKKOiSEHbY=/0x0:0x0/750x500/data/photo/2023/05/17/64645e2abb6fc.jpg"

    // Tambahkan URL gambar lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(20.0),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(10.0), // Radius sudut gambar
              ),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(10.0), // Radius sudut gambar
                child: AspectRatio(
                  aspectRatio: 16 / 8, // Rasio lebar-tinggi gambar
                  child: Image.network(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0), // Jarak antara gambar secara vertikal
          ],
        );
      },
    );
  }
}
