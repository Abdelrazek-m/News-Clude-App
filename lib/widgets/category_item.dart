import 'package:flutter/material.dart';
import 'package:news_app_3/pages/category_page.dart';

import '../models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.data,
  });
  final CategoryModel data;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (ctx) => CategoryPAge(
                    categoryName: data.categoryName,
                  ))),
      child: Container(
        height: 90,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage(data.image), fit: BoxFit.cover)),
        child: Center(
            child: Text(
          data.categoryName,
          style: const TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
