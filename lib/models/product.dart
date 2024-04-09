enum Category { womenStyle, dagaduJacket }

class Product {
  final String title;
  final double price;
  final String imageUrl;
  final String? description;
  final Category? category;

  Product({
    required this.title,
    this.description,
    this.category,
    required this.price,
    required this.imageUrl,
  });
}
