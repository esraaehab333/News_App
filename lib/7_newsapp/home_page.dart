import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/7_newsapp/list_category_card.dart';

import 'NewsListViewBuilder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News ",
                //textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Cloud ",
                //textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blueAccent),
              ),
            ],
          ),
          elevation: 1,
          backgroundColor: Colors.white // Colors.transparent,
          ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            //  like a chirdlen
            // العجيب فيها انها بتاخد ويدجيد و لكن من نوع
            // sliver
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            // الويديجت اللي فوق دي بتخلي كل حاجه اسكرول عادي
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            // not support expanded
            // SliverToBoxAdapter(child:NewsListViews() ,),
            NewsListViewBuilder(category: "general"),
          ],
        ),
      ),
    );
  }
}
