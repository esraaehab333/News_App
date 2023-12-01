import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Newstile.dart';
import 'article_model.dart';

class NewsListViews extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewsListViews({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
