import 'package:flutter_mobile_news_portal/views/screens.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black.withAlpha(100),
      items: [
        BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(left: 30),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Home.routeName);
                },
                icon: const Icon(Icons.home_rounded),
              ),
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, discover.routeName);
              },
              icon: const Icon(Icons.search_rounded),
            ),
            label: 'Search'),
        BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(right: 30),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, game.routeName);
                },
                icon: const Icon(Icons.image_outlined),
              ),
            ),
            label: 'game')
      ],
    );
  }
}
