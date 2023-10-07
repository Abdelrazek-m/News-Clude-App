import 'package:flutter/material.dart';
import 'package:news_app_3/models/article_model.dart';
import 'package:news_app_3/pages/artcil_page.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
    required this.article,
  });
  final ArticalModel article;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (ctx) => ArtcialPage(url: article.url),
        ),
      ),
      child: Column(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              article.imgUrl != null
                  ? "${article.imgUrl}"
                  : 'https://sportshub.cbsistatic.com/i/r/2023/10/02/e7638c49-46e3-48f7-ba32-d8621c4194c9/thumbnail/1200x675/073e15534c46755d925603462c262908/trea-turner-getty.png',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 10,
        ),
        Text(
          article.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          "${article.subTitle}",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ]),
    );
  }
}
