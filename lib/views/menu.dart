import 'package:flutter/material.dart';

import '../widget/custom_btn.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});
  static const String routeName = 'menu';
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

          //popularfood
        ],
      ),
    );
  }
}
