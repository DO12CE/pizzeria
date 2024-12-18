class Pizza {
  final int id;
  final String title;
  final String garniture;
  final String image;
  final double price;

  Pizza({required this.id, required this.title, required this.garniture, required this.image, required this.price});

  factory Pizza.fromJson(Map<String, dynamic> json) {
    return Pizza(
      id: json['id'],
      title: json['title'],
      garniture: json['garniture'],
      image: json['image'],
      price: json['price'].toDouble(),
    );
  }
}
