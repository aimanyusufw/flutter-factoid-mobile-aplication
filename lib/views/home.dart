import 'package:flutter_mobile_news_portal/models/article.dart';
import 'package:flutter_mobile_news_portal/views/screens.dart';
import 'package:flutter_mobile_news_portal/widget/custom_tag.dart';
import 'package:flutter/material.dart';
import '../models/article_2.dart';
import '../widget/button_nav_bar.dart';
import '../widget/image_container.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const routeName = '/';
  @override
  State<Home> createState() => _HomeState();
}

// Struktur tampilan halama home
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Article article = Article.articles[4];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavbar(index: 0),
        extendBodyBehindAppBar: true,
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            _NewsOfTheDay(articles: article),
            _BreakingNews(articles: Article.articles),
            article_nasional(articles: Nasional.articles),
          ],
        ));
  }
}

// Tampilan Breaking News
class _BreakingNews extends StatelessWidget {
  const _BreakingNews({
    super.key,
    required this.articles,
  });

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Berita Terbaru",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              "Selengkapnya",
              style: Theme.of(context).textTheme.bodyLarge!,
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 225,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    margin: const EdgeInsets.only(right: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          article.routeName,
                          arguments: articles[index],
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          imageContainer(
                              width: MediaQuery.of(context).size.width * 0.5,
                              ImageUrl: articles[index].ImageUrl),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            articles[index].title,
                            maxLines: 2,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontWeight: FontWeight.bold, height: 1.5),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${DateTime.now().difference(articles[index].createdAt).inHours} hours ago',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            'By ${articles[index].author}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

// Section article nasional
class article_nasional extends StatelessWidget {
  const article_nasional({
    super.key,
    required this.articles,
  });

  final List<Nasional> articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Berita Nasional",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              "Selengkapnya",
              style: Theme.of(context).textTheme.bodyLarge!,
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 225,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    margin: const EdgeInsets.only(right: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          nasional_article.routeName,
                          arguments: articles[index],
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          imageContainer(
                              width: MediaQuery.of(context).size.width * 0.5,
                              ImageUrl: articles[index].ImageUrl),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            articles[index].title,
                            maxLines: 2,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontWeight: FontWeight.bold, height: 1.5),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${DateTime.now().difference(articles[index].createdAt).inHours} hours ago',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            'By ${articles[index].author}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

// Tampilan Banner atau hero section pada halaman home
class _NewsOfTheDay extends StatelessWidget {
  // Inisialisasi argument atau paramater
  const _NewsOfTheDay({
    super.key,
    required this.articles,
  });

  final Article articles;

  // Build dan struktur dari banner
  @override
  Widget build(BuildContext context) {
    return imageContainer(
      height: MediaQuery.of(context).size.height * 0.45,
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      ImageUrl: articles.ImageUrl,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customTag(backgroundColor: Colors.grey.withAlpha(150), children: [
            Text(
              "Berita terbaru",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            )
          ]),
          const SizedBox(
            height: 10,
          ),
          Text(
            articles.title,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold, height: 1.25),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  article.routeName,
                  arguments: articles,
                );
              },
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              child: Row(
                children: [
                  Text(
                    "Lihat Selengkapnya",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(width: 10.0),
                  Icon(
                    Icons.arrow_right_alt,
                    color: Colors.white,
                  )
                ],
              )),
        ],
      ),
    );
  }
}
