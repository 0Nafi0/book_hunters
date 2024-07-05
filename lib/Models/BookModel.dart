class BookModel {
  String id;
  String title;
  String description;
  String audioLen;
  String author;
  String aboutAuthor;
  String coverUrl;
  String rating;
  String category;
  int price;
  int numberOfRating;

  BookModel({
    required this.id,
    required this.title,
    required this.description,
    required this.audioLen,
    required this.author,
    required this.aboutAuthor,
    required this.coverUrl,
    required this.rating,
    required this.category,
    required this.price,
    required this.numberOfRating,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      audioLen: json['audioLen'] ?? '',
      author: json['author'] ?? '',
      aboutAuthor: json['aboutAuthor'] ?? '',
      coverUrl: json['coverUrl'] ?? '',
      rating: json['rating']?.toInt() ?? 0,
      category: json['category'] ?? '',
      price: json['price']?.toInt() ?? 0,
      numberOfRating: json['numberOfRating']?.toInt() ?? 0, // New field added
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'audioLen': audioLen,
      'author': author,
      'aboutAuthor': aboutAuthor,
      'coverUrl': coverUrl,
      'rating': rating,
      'category': category,
      'price': price,
      'numberOfRating': numberOfRating,
    };
  }
}
