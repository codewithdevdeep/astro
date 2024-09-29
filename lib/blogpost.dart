class NewsItem {
  final String title;
  final List<String> tags;
  final String imageUrl;
  final String description;
  final String summary;
  final int views;
  final String author;
  final String publishDate;

  NewsItem({
    required this.title,
    required this.tags,
    required this.imageUrl,
    required this.description,
    required this.summary,
    required this.views,
    required this.author,
    required this.publishDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'image': imageUrl,
      'summary': summary,
      'author': author,
      'date': publishDate,
      'category': tags.isNotEmpty ? tags[0] : '',
    };
  }
}