import 'package:flutter/material.dart';
import 'package:sushi/models/food_model.dart';

class ShopModal extends ChangeNotifier {
  List _foodModel = [
    FoodModel(
        name: "Nigiri",
        imagePath: "assets/images/sushi (3).png",
        price: "30",
        rating: "4.5",
        description:
            "Maki sushi is a classic Japanese dish that consists of vinegared rice and various fillings like fish, vegetables, or seafood, all rolled in a sheet of seaweed (nori) and sliced into bite-sized pieces."),
    FoodModel(
        name: "Maki",
        imagePath: "assets/images/sushi (4).png",
        price: "50",
        rating: "4.4",
        description:
            "Sashimi is a traditional Japanese delicacy consisting of thinly sliced raw fish or seafood, served without rice. It's prized for its fresh, delicate flavor and often accompanied by soy sauce, wasabi, "),
    FoodModel(
        name: "Sashimi",
        imagePath: "assets/images/sushi (1).png",
        price: "30",
        rating: "4.7",
        description:
            "Sashimi is a traditional Japanese delicacy consisting of thinly sliced raw fish or seafood, served without rice. It's prized for its fresh, delicate flavor and often accompanied by soy sauce, wasabi, "),
    FoodModel(
        name: "Temaki",
        imagePath: "assets/images/sushi.png",
        price: "93",
        rating: "4.8",
        description:
            "Sashimi is a traditional Japanese delicacy consisting of thinly sliced raw fish or seafood, served without rice. It's prized for its fresh, delicate flavor and often accompanied by soy sauce, wasabi, "),
    FoodModel(
        name: "Uramaki",
        imagePath: "assets/images/sushi1.png",
        price: "23",
        rating: "4.9",
        description:
            "Sashimi is a traditional Japanese delicacy consisting of thinly sliced raw fish or seafood, served without rice. It's prized for its fresh, delicate flavor and often accompanied by soy sauce, wasabi, "),
  ];

// customer cart
  List<FoodModel> _customerCart = [];

  //getter method
  List get foodModel => _foodModel;
  List get customerCart => _customerCart;

  //add to cart
  void addToCart(FoodModel food, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _customerCart.add(food);
    }

    notifyListeners();
  }

  //remove from cart
  void removeFromCart(FoodModel food) {
    _customerCart.remove(food);

    notifyListeners();
  }
}
