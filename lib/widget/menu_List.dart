import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MenuList extends StatelessWidget {
  const MenuList(
      {super.key,
      required this.name,
      required this.imagePath,
      required this.price,
      required this.rating,
      required this.ontap});
  final String name;
  final String imagePath;
  final String price;
  final String rating;

  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () =>
      onTap: ontap,

      child: Container(
          width: MediaQuery.of(context).size.width / 2 - 12,
          margin: EdgeInsets.only(left: 12, right: 12, top: 12),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imagePath,
                  height: 120,
                ),
              ),
              Text(name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$" + price,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Text(rating,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600)),
                    ],
                  ),
                ],
              )
            ]),
          )),
    );
  }
}
