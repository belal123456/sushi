// ItemDetails Screen
import 'package:flutter/material.dart';

import 'package:sushi/models/food_model.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({super.key, required this.food});
  static const routeName = "item-details";
  final FoodModel food;

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    // Retrieve the passed FoodModel object

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.food.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(widget.food.imagePath),
            const SizedBox(height: 16),
            Text(
              widget.food.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'Rating: ${widget.food.rating}',
              style: const TextStyle(fontSize: 20, color: Colors.amber),
            ),
            const SizedBox(height: 16),
            const Text("Details:-", style: TextStyle(fontSize: 24)),
            const SizedBox(height: 8),
            Text(
              widget.food.description,
            ),
            const SizedBox(height: 20),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 138, 60, 55),
                  border: Border.all(color: Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price: \$${widget.food.price}',
                      style: const TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.shopping_cart,
                              size: 30,
                              weight: 23,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                x++;
                              });
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 30,
                            )),
                        Text(" $x",
                            style: const TextStyle(
                                fontSize: 24, color: Colors.white)),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                x--;
                                if (x < 0) {
                                  x = 0;
                                }
                              });
                            },
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 30,
                            )),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

// Menu List Item
