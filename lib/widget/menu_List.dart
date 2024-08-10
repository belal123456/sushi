import 'package:flutter/widgets.dart';

class MenuList extends StatelessWidget {
  const MenuList(
      {super.key,
      required this.name,
      required this.imagePath,
      required this.price,
      required this.rating});
  final String name;
  final String imagePath;
  final String price;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
