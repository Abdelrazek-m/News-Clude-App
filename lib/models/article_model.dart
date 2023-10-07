class ArticalModel {
  final String? imgUrl;
  final String title;
  final String? subTitle;
  final String? url;

  ArticalModel({
    required this.imgUrl,
    required this.title,
    required this.subTitle,
    required this.url
  });
  factory ArticalModel.fromJson(json) {
    return ArticalModel(
      imgUrl: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
      url:json['url']
    );
  }
}
