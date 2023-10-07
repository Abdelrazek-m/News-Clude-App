// ignore_for_file: dead_code

import 'package:flutter/material.dart';

import '../models/article_model.dart';
import 'news_item.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key, required this.articles});
  
  final List<ArticalModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: articles.length,
      itemBuilder: (ctx, index) {
        return NewsItem(article: articles[index]);
      },
      separatorBuilder: (ctx, index) => const SizedBox(
        height: 18,
      ),
    );
  }
}
