import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobile_news_portal/constant/const.dart';
import 'package:flutter_mobile_news_portal/models/Post.dart';
import 'package:flutter_mobile_news_portal/widget/custom_tag.dart';
import 'package:flutter_mobile_news_portal/widget/image_container.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroNews extends StatefulWidget {
  @override
  _HeroNewsState createState() => _HeroNewsState();
}

class _HeroNewsState extends State<HeroNews> {
  late Future<Post> _futureArticles;

  @override
  void initState() {
    super.initState();
    _futureArticles = fetchArticles();
  }

  Future<Post> fetchArticles() async {
    try {
      final response = await Dio().get(
        "${baseUrl}top/posts",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $apiToken",
          },
        ),
      );

      final rawData = response.data['data'];

      return Post.fromJson(rawData);
    } catch (e) {
      throw Exception('Failed to fetch articles: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Post>(
      future: _futureArticles,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasError) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            child: Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: TextStyle(color: Colors.red),
              ),
            ),
          );
        } else if (snapshot.hasData) {
          final post = snapshot.data!;

          return Container(
              width: double.infinity,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    "",
                    arguments: post,
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.horizontal(),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Background image
                      Image.network(
                        post.banner.url,
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),

                      // Dark overlay
                      Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        width: double.infinity,
                        color: Colors.black.withOpacity(0.4),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                post.title,
                                style: GoogleFonts.playfairDisplay(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26,
                                    color: Colors.white),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      "/detail", // Ganti dengan route yang sesuai
                                      arguments:
                                          "", // Pass post ID atau post object
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Read More",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(color: Colors.white),
                                      ),
                                      const SizedBox(width: 10.0),
                                      Icon(
                                        Icons.arrow_right_alt,
                                        color: Colors.white,
                                      )
                                    ],
                                  )),
                            ]),
                      )
                      // Text
                    ],
                  ),
                ),
              ));

          // return imageContainer(
          //   height: MediaQuery.of(context).size.height * 0.45,
          //   width: double.infinity,
          //   padding: const EdgeInsets.all(20.0),
          //   ImageUrl: post.banner?.url ?? '', // Handle null banner
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       const SizedBox(height: 10),
          //       Text(
          //         post.title ?? 'No title', // Handle null title
          //         style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.white),
          //       ),
          //       TextButton(
          //           onPressed: () {
          //             Navigator.pushNamed(
          //               context,
          //               "/detail", // Ganti dengan route yang sesuai
          //               arguments: "", // Pass post ID atau post object
          //             );
          //           },
          //           style: TextButton.styleFrom(padding: EdgeInsets.zero),
          //           child: Row(
          //             children: [
          //               Text(
          //                 "Read More",
          //                 style: Theme.of(context)
          //                     .textTheme
          //                     .bodySmall!
          //                     .copyWith(color: Colors.white),
          //               ),
          //               const SizedBox(width: 10.0),
          //               Icon(
          //                 Icons.arrow_right_alt,
          //                 color: Colors.white,
          //               )
          //             ],
          //           )),
          //     ],
          //   ),
          // );
        } else {
          return Container(
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            child: Center(
              child: Text('No data available'),
            ),
          );
        }
      },
    );
  }
}
