import 'package:flutter/material.dart';
import 'package:sushi/views/cart_view.dart';
import 'package:sushi/views/home_page.dart';
import 'package:sushi/views/item.details.dart';

import 'package:sushi/views/menu.dart';

import '../models/food_model.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Menu.routeName:
      return MaterialPageRoute(builder: (context) => const Menu());
    case HomePage.routeName:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case ItemDetails.routeName:
      final FoodModel food = settings.arguments as FoodModel;
      return MaterialPageRoute(builder: (context) => ItemDetails(food: food));
    case CartView.routeName:
      return MaterialPageRoute(builder: (context) => const CartView());

    default:
      return MaterialPageRoute(builder: (context) => const Menu());
  }
}
