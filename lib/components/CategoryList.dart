import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_mobile_news_portal/constant/const.dart';
import 'package:dio/dio.dart';
import 'package:flutter_mobile_news_portal/models/Post.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({
    super.key,
    required this.titleSection,
    required this.apiUrl,
  });

  final String titleSection;
  final String apiUrl;

  @override
  State<CategoryList> createState() => _NewsListState();
}

class _NewsListState extends State<CategoryList> {
  late Future<List<Category>> _futureCategories;

  @override
  void initState() {
    super.initState();
    _futureCategories = fetchArticles(widget.apiUrl);
  }

  Future<List<Category>> fetchArticles(String url) async {
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
      final rawData = response.data['data'] as List;
      final categories = rawData.map((item) => Category.fromJson(item)).toList();
      return categories;
    } catch (e) {
      log("Fetch Error: $e");
      throw Exception('Failed to fetch categories');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Category>>(
      future: _futureCategories,
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

        final categories = snapshot.data!;

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
                height: 225,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            "",
                            arguments: category,
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              // Background image
                              Image.network(
                                category.banner?.url ?? 'Tidak ada banner',
                                height: 500,
                                width: 180,
                                fit: BoxFit.cover,
                              ),

                              // Dark overlay
                              Container(
                                height: 500,
                                width: 180,
                                color: Colors.black.withOpacity(0.4),
                              ),

                              // Text
                              Text(
                                category.name,
                                style: GoogleFonts.playfairDisplay(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ],
                          ),
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
