import 'package:flutter/material.dart';
import 'package:news_app_3/models/article_model.dart';

import '../services/api_service.dart';
import 'news_list.dart';

class NewsListVeiwBuilder extends StatefulWidget {
  const NewsListVeiwBuilder({
    super.key, required this.categoryName,
  });
  final String categoryName;
  @override
  State<NewsListVeiwBuilder> createState() => _NewsListVeiwBuilderState();
}

class _NewsListVeiwBuilderState extends State<NewsListVeiwBuilder> {
  late Future<List<ArticalModel>> future;
  @override
  void initState() {
    future=NewsService().getNews(category:widget.categoryName);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsList(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Text('an error has occer: ${snapshot.error}'),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
