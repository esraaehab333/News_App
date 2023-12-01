import 'package:flutter/material.dart';
import 'package:news_app/7_newsapp/Web_View.dart';
import 'package:news_app/7_newsapp/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return WebView(articleModel: articleModel);
        }));
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleModel.image ??
                  "https://bitcoinexchangeguide.com/wp-content/uploads/2018/09/NEWS-RECAP-Sept-10.jpg",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 20),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleModel.subTitle ?? " ",
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          )
        ],
      ),
    );
  }
}
