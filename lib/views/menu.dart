import 'package:flutter/material.dart';
import 'package:sushi/main.dart';
import 'package:sushi/models/food_model.dart';
import 'package:sushi/models/shop_modal.dart';
import 'package:sushi/views/item.details.dart';
import 'package:provider/provider.dart';

import '../widget/menu_list.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});
  static const String routeName = 'menu';

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    //menu list
    final shop = context.read<ShopModal>();
    final foodList = shop.foodModel;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          size: 30,
        ),
        title: Text(
          'Tokyo sushi',
          style: TextStyle(color: Colors.grey[900], fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //promo banner
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 138, 60, 55),
                borderRadius: BorderRadius.circular(26),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Column(
                      children: [
                        const Text(
                          "Get 30% promo ",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(212, 135, 81, 77),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "redeem",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Icon(Icons.arrow_forward,
                                    color: Colors.white, size: 24),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
                  Image.asset(
                    "assets/images/sushi (4).png",
                    height: 150,
                    width: 150,
                  )
                ],
              )),
          const SizedBox(
            height: 25,
          ),

          //search abr
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                filled: true,
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      const BorderSide(color: Color.fromARGB(255, 138, 60, 55)),
                ),
              ),
            ),
          ),

          //categories
          //category
          const SizedBox(
            height: 20,
          ),
          //menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Text(
              "Sushi Menu",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          Expanded(
            child: ListView.builder(
              itemCount: foodList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return MenuList(
                  name: foodList[index].name,
                  imagePath: foodList[index].imagePath,
                  price: foodList[index].price,
                  rating: foodList[index].rating,
                  ontap: () {
                    Navigator.pushNamed(
                      context,
                      ItemDetails.routeName,
                      arguments: foodList[index],
                    );
                  },
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          //popularfood
          Container(
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 138, 60, 55),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Image.asset(
                    "assets/images/sushi (1).png",
                    height: 60,
                  ),
                  const SizedBox(width: 5),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "salamon Eggs",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$23",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ]),
                const SizedBox(
                  width: 20,
                ),
                const Icon(Icons.favorite, color: Colors.white, size: 30),
              ],
            ),
          )
        ],
      ),
    );
  }
}
