
class Article {

  final String title;
  final String byline;
  final String url;
  final String publishedDate;
  final String summary;
  List<Multimedia> imageUrl;

  Article({
    this.title,
    this.byline,
    this.url,
    this.publishedDate,
    this.summary,
    this.imageUrl,
  });

  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
      title: map['title'],
      byline: map['byline'],
      url: map['url'],
      imageUrl:map["multimedia"] == null ? null : List<Multimedia>.from(map["multimedia"].map((x) => Multimedia.fromJson(x))),
      publishedDate: map['published_date'],
      summary: map['abstract'],
    );
  }
}
class Multimedia {
  Multimedia({
    this.url,
    this.height,
    this.width,
    this.type,
    this.caption,
    this.copyright,
  });

  String url;
  int height;
  int width;
  Type type;
  String caption;
  String copyright;

  factory Multimedia.fromJson(Map<String, dynamic> json) => Multimedia(
    url: json["url"],
    height: json["height"],
    width: json["width"],
    caption: json["caption"],
    copyright: json["copyright"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "height": height,
    "width": width,
    "caption": caption,
    "copyright": copyright,
  };
}