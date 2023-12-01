import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/7_newsapp/NewsListViewBuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            category,
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.blueGrey,
          elevation: 2,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 6, right: 6, top: 2),
          child: CustomScrollView(
            slivers: [
              NewsListViewBuilder(category: category),
            ],
          ),
        ));
  }
}
