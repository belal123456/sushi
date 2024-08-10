import 'package:flutter/material.dart';
import 'package:sushi/models/food_model.dart';

import '../widget/custom_btn.dart';
import '../widget/menu_List.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});
  static const String routeName = 'menu';

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List foodModel = [
    FoodModel(
        name: "Nigiri",
        imagePath:
            "assets/menu-imgs/closeup-shot-delicious-sushi-roll-with-seasonings-white-background.jpg",
        price: "30",
        rating: "4.5"),
    FoodModel(
        name: "Maki",
        imagePath:
            "assets/menu-imgs/closeup-shot-sushi-roll-black-stone-plate.jpg",
        price: "50",
        rating: "4.4"),
    FoodModel(
        name: "Sashimi",
        imagePath: "assets/menu-imgs/delicious-sushi-rolls.jpg",
        price: "30",
        rating: "4.7"),
    FoodModel(
        name: "Temaki",
        imagePath:
            "assets/menu-imgs/flat-lay-plate-sushi-rolls-with-nigiri.jpg",
        price: "93",
        rating: "4.8"),
    FoodModel(
        name: "Uramaki",
        imagePath: "assets/menu-imgs/maki-sushi-isolated-white.jpg",
        price: "23",
        rating: "4.9"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
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
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              padding: EdgeInsets.all(18),
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
                        Text(
                          "Get 30% promo ",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(
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
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: const Icon(Icons.arrow_forward,
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
          SizedBox(
            height: 25,
          ),

          //search abr
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                filled: true,
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 138, 60, 55)),
                ),
              ),
            ),
          ),

          //categories
          //category
          SizedBox(
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
          SizedBox(
            height: 10,
          ),

          Expanded(
            child: ListView.builder(
              itemCount: foodModel.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return MenuList(
                  name: foodModel[index].name,
                  imagePath: foodModel[index].imagePath,
                  price: foodModel[index].price,
                  rating: foodModel[index].rating,
                );
              },
            ),
          ),

          //popularfood
        ],
      ),
    );
  }
}
