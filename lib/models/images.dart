class ImgurImage {
  final String id;
  final String title;
  final String link;

  ImgurImage({required this.id, required this.title, required this.link});

  factory ImgurImage.fromJson(Map<String, dynamic> json) {
    return ImgurImage(
      id: json['id'],
      title: json['title'],
      link: json['link'],
    );
  }
}
