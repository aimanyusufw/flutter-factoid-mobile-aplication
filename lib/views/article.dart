import 'package:flutter_mobile_news_portal/models/article.dart';
import 'package:flutter_mobile_news_portal/widget/image_container.dart';
import 'package:flutter/material.dart';

import '../widget/custom_tag.dart';

class article extends StatelessWidget {
  const article({super.key});
  static const routeName = '/article';

  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;
    return imageContainer(
      width: double.infinity,
      ImageUrl: article.ImageUrl,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            _news_headline(
              article: article,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white),
              child: Column(
                children: [
                  Row(children: [
                    customTag(backgroundColor: Colors.black, children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: NetworkImage(article.authorImageUrl),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        article.author,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.white),
                      )
                    ]),
                    const SizedBox(
                      width: 10,
                    ),
                    customTag(backgroundColor: Colors.grey.shade200, children: [
                      const Icon(
                        Icons.timer_rounded,
                        color: Colors.grey,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${DateTime.now().difference(article.createdAt).inHours} h',
                        style: Theme.of(context).textTheme.bodySmall!,
                      )
                    ]),
                    const SizedBox(
                      width: 10,
                    ),
                    customTag(backgroundColor: Colors.grey.shade200, children: [
                      const Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${article.views}',
                        style: Theme.of(context).textTheme.bodyMedium!,
                      )
                    ]),
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    article.title,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(article.body,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(height: 1.5))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _news_headline extends StatelessWidget {
  const _news_headline({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          customTag(backgroundColor: Colors.grey.withAlpha(200), children: [
            Text(
              article.category,
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
            article.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold, height: 1.25),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            article.subtitle,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
