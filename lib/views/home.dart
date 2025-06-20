import 'package:flutter_mobile_news_portal/components/CategoryList.dart';
import 'package:flutter_mobile_news_portal/components/HeroNews.dart';
import 'package:flutter_mobile_news_portal/components/NewsList.dart';
import 'package:flutter_mobile_news_portal/models/article.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobile_news_portal/views/screens.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const routeName = '/';
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    Article article = Article.articles[4];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          actions:  [
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () {
                Navigator.pushNamed(context, discover.routeName);
              },
            ),
          ],
          title: Text(
            "Factoid",
            style: GoogleFonts.playfairDisplay(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            HeroNews(),
            NewsList(
              titleSection: "Popular News",
              apiUrl: "posts?sort=score&per_page=10",
            ),
            NewsList(
              titleSection: "Recent News",
              apiUrl: "posts?sort=-published_at&per_page=10",
            ),
            CategoryList(titleSection: "Discover", apiUrl: "categories"),
            NewsList(
              titleSection: "Posts You Might Like",
              apiUrl: "random/posts",
            ),
          ],
        ));
  }
}
