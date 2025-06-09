import 'package:flutter/material.dart';
import 'package:flutter_mobile_news_portal/views/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skanifo.com',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        Home.routeName: (context) => const Home(),
        discover.routeName: (context) => const discover(),
        article.routeName: (context) => const article(),
        nasional_article.routeName: (context) => const nasional_article(),
        game.routeName: (context) => const game()
      },
    );
  }
}