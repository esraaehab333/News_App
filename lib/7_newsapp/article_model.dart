class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String Url;
  ArticleModel(
      {required this.Url,
      required this.image,
      required this.title,
      required this.subTitle});
  factory ArticleModel.fromjson(json) {
    return ArticleModel(
      image: json["urlToImage"],
      title: json['title'],
      subTitle: json['description'],
      Url: json["url"],
    );
  }
}
