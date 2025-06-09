import 'package:flutter_mobile_news_portal/models/article.dart';
import 'package:flutter_mobile_news_portal/views/article.dart';
import 'package:flutter_mobile_news_portal/widget/image_container.dart';
import 'package:flutter/material.dart';
import '../widget/button_nav_bar.dart';

class discover extends StatelessWidget {
  const discover({super.key});
  static const routeName = '/discover';

  @override
  Widget build(BuildContext context) {
    List<String> tabs = [
      "Local",
      "kesehatan",
      "Pendidikan",
      "Makanan",
      "Politic"
    ];

    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
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
          bottomNavigationBar: const BottomNavbar(index: 1),
          body: ListView(
            padding: const EdgeInsets.all(20.0),
            children: [const _discover_banner(), _kategori_berita(tabs: tabs)],
          )),
    );
  }
}

class _kategori_berita extends StatelessWidget {
  const _kategori_berita({super.key, required this.tabs});

  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    final articles = Article.articles;
    return Column(
      children: [
        TabBar(
            isScrollable: true,
            indicatorColor: Colors.black,
            tabs: tabs
                .map((tab) => Tab(
                        icon: Text(
                      tab,
                      style: Theme.of(context).textTheme.bodyMedium,
                    )))
                .toList()),
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(
              children: tabs
                  .map((tab) => ListView.builder(
                        shrinkWrap: true,
                        itemCount: articles.length,
                        itemBuilder: ((context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, article.routeName,
                                  arguments: articles[index]);
                            },
                            child: Row(
                              children: [
                                imageContainer(
                                    margin: EdgeInsets.all(10.0),
                                    borderRadius: 5,
                                    width: 80,
                                    height: 80,
                                    ImageUrl: articles[index].ImageUrl),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        articles[index].title,
                                        maxLines: 2,
                                        overflow: TextOverflow.clip,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.schedule_rounded,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '${DateTime.now().difference(articles[index].createdAt).inHours} Hours ago',
                                            style:
                                                const TextStyle(fontSize: 12),
                                          ),
                                          const SizedBox(
                                            width: 30,
                                          ),
                                          const Icon(
                                            Icons.visibility_rounded,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '${articles[index].views} views',
                                            style:
                                                const TextStyle(fontSize: 12),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ))
                  .toList(),
            ))
      ],
    );
  }
}

class _discover_banner extends StatelessWidget {
  const _discover_banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Pencarian",
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Berita Terbaru Dan Terpercaya",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Apa yang anda cari ?",
                fillColor: Colors.grey.shade200,
                filled: true,
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  color: Colors.grey,
                ),
                suffixIcon: const RotatedBox(
                  quarterTurns: 1,
                  child: const Icon(
                    Icons.tune_rounded,
                    color: Colors.grey,
                  ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none)),
          )
        ],
      ),
    );
  }
}
