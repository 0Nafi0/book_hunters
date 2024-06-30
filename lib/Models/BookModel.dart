class BookModel {
  String id;
  String title;
  String description;
  double rating;
  int pages;
  String language;
  String audioLen;
  String author;
  String aboutAuthor;
  String bookurl;
  String audiourl;
  String category;
  double price;
  int numberOfRating;

  BookModel({
    required this.id,
    required this.title,
    required this.description,
    required this.rating,
    required this.pages,
    required this.language,
    required this.audioLen,
    required this.author,
    required this.aboutAuthor,
    required this.bookurl,
    required this.audiourl,
    required this.category,
    required this.price,
    required this.numberOfRating,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      rating: json['rating']?.toDouble() ?? 0.0,
      pages: json['pages']?.toInt() ?? 0,
      language: json['language'] ?? '',
      audioLen: json['audioLen'] ?? '',
      author: json['author'] ?? '',
      aboutAuthor: json['aboutAuthor'] ?? '',
      bookurl: json['bookurl'] ?? '',
      audiourl: json['audiourl'] ?? '',
      category: json['category'] ?? '',
      price: json['price']?.toDouble() ?? 0.0,
      numberOfRating: json['numberOfRating']?.toInt() ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'rating': rating,
      'pages': pages,
      'language': language,
      'audioLen': audioLen,
      'author': author,
      'aboutAuthor': aboutAuthor,
      'bookurl': bookurl,
      'audiourl': audiourl,
      'category': category,
      'price': price,
      'numberOfRating': numberOfRating,
    };
  }
}
