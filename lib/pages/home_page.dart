
import 'package:flutter/material.dart';

import '../widgets/category_list.dart';
import '../widgets/appbar_title.dart';
import '../widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const AppBarTitle(),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoryList(),
            ),
            SliverToBoxAdapter(
                child: SizedBox(
              height: 20,
            )),
            NewsListVeiwBuilder(categoryName: 'General',),
            SliverToBoxAdapter(
                child: SizedBox(
              height: 20,
            )),

          ],
        ),
      ),
    );
  }
}

