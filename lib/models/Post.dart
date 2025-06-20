class Post {
  final String title;
  final String slug;
  final String excerpt;
  final int score;
  final PublishedAt publishedAt;
  final String readTime;
  final Banner banner;
  final Author author;
  final Category category;

  Post({
    required this.title,
    required this.slug,
    required this.excerpt,
    required this.score,
    required this.publishedAt,
    required this.readTime,
    required this.banner,
    required this.author,
    required this.category,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      title: json['title'],
      slug: json['slug'],
      excerpt: json['excerpt'],
      score: json['score'],
      publishedAt: PublishedAt.fromJson(json['published_at']),
      readTime: json['read_time'],
      banner: Banner.fromJson(json['banner']),
      author: Author.fromJson(json['author']),
      category: Category.fromJson(json['category']),
    );
  }
}

class PublishedAt {
  final String dateTime;
  final String date;
  final String relative;

  PublishedAt({
    required this.dateTime,
    required this.date,
    required this.relative,
  });

  factory PublishedAt.fromJson(Map<String, dynamic> json) {
    return PublishedAt(
      dateTime: json['date_time'],
      date: json['date'],
      relative: json['relative'],
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

class Author {
  final String name;
  final String email;
  final String position;

  Author({
    required this.name,
    required this.email,
    required this.position,
  });

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
      name: json['name'],
      email: json['email'],
      position: json['position'],
    );
  }
}

class Category {
  final String name;
  final String slug;

  Category({
    required this.name,
    required this.slug,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      name: json['name'],
      slug: json['slug'],
    );
  }
}
