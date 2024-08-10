class FoodModel {
  final String name;
  final String imagePath;
  final String price;
  final String rating;

  FoodModel({
    required this.name,
    required this.imagePath,
    required this.price,
    required this.rating,
  });
  String get _imagePathUrl => imagePath;
  String get _price => price;
  String get _rating => rating;
  String get _name => name;
}
