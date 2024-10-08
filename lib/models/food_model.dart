class FoodModel {
  final String name;
  final String imagePath;
  final String price;
  final String rating;
  final String description;
  int quantity = 1;

  FoodModel({
    required this.description,
    required this.name,
    required this.imagePath,
    required this.price,
    required this.rating,
    this.quantity = 1,
  });
  // String get _imagePathUrl => imagePath;
  // String get _price => price;
  // String get _rating => rating;
  // String get _name => name;
  // String get _description => description;
}
