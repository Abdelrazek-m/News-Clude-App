import 'package:flutter/material.dart';
import 'package:news_app_3/widgets/news_list_view_builder.dart';

class CategoryPAge extends StatelessWidget {
  const CategoryPAge({super.key, this.categoryName = 'General'});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(categoryName,style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: CustomScrollView(
          slivers: [
            NewsListVeiwBuilder(categoryName: categoryName,),
          ],
        ),
      ),
    );
  }
}
