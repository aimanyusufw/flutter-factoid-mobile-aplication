import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_mobile_news_portal/constant/const.dart';
import 'package:flutter_mobile_news_portal/models/Post.dart';
import 'package:flutter_mobile_news_portal/widget/image_container.dart';
import 'package:dio/dio.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsList extends StatefulWidget {
  const NewsList({
    super.key,
    required this.titleSection,
    required this.apiUrl,
  });

  final String titleSection;
  final String apiUrl;

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  late Future<List<Post>> _futureArticles;

  @override
  void initState() {
    super.initState();
    _futureArticles = fetchArticles(widget.apiUrl);
  }

  Future<List<Post>> fetchArticles(String url) async {
    try {
      final response = await Dio().get(
        "$baseUrl$url",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $apiToken",
          },
        ),
      );
      log(response.toString());
      final rawData = response.data['data'] as List;
      final articles = rawData.map((item) => Post.fromJson(item)).toList();
      return articles;
    } catch (e) {
      log("Fetch Error: $e");
      throw Exception('Failed to fetch articles');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Post>>(
      future: _futureArticles,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Padding(
            padding: EdgeInsets.all(50.0),
            child: Center(child: CircularProgressIndicator()),
          );
        }

        if (snapshot.hasError) {
          return Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(child: Text('Failed fetch data')),
          );
        }

        final articles = snapshot.data!;

        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.titleSection,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "Show All",
                    style: Theme.of(context).textTheme.bodySmall!,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 270,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: articles.length,
                  itemBuilder: (context, index) {
                    final article = articles[index];
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      margin: const EdgeInsets.only(right: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            "",
                            arguments: article,
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            imageContainer(
                              width: MediaQuery.of(context).size.width * 0.6,
                              height: 150,
                              ImageUrl: article.banner.url,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '${article.author.name} · ${article.publishedAt.relative}',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              article.title,
                              maxLines: 2,
                              style: GoogleFonts.playfairDisplay(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '${article.category.name} - ${article.readTime}',
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
