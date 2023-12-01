import 'package:flutter/cupertino.dart';

import 'Category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> category =const[
    CategoryModel(image: "assets/images/news/be.jpeg", categoryName:"Business"),
    CategoryModel(image: "assets/images/news/en.jpeg", categoryName:"Entertainment"),
    CategoryModel(image: "assets/images/news/he.jpeg", categoryName:"Health"),
    CategoryModel(image: "assets/images/news/sc.jpeg", categoryName:"Science"),
    CategoryModel(image: "assets/images/news/spo.jpeg", categoryName:"Sport"),
    CategoryModel(image: "assets/images/news/tec.jpeg", categoryName:"Technology"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          // scroll horizentally
          itemCount: category.length,
          itemBuilder:(context,index){
            return  CategoryCard(
              category: category[index],
            );
          }
      ),
    );
  }
}
