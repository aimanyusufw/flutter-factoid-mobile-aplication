class Category {
  final String name;
  final String slug;
  final Banner banner;

  Category({
    required this.name,
    required this.slug,
    required this.banner,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      name: json['name'],
      slug: json['slug'],
      banner: Banner.fromJson(json['banner']),
    );
  }
}

class Banner {
  final String path;
  final String url;

  Banner({
    required this.path,
    required this.url,
  });

  factory Banner.fromJson(Map<String, dynamic> json) {
    return Banner(
      path: json['path'],
      url: json['url'],
    );
  }
}