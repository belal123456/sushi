import 'package:flutter/material.dart';
import 'package:sushi/views/home_page.dart';

import 'package:sushi/views/menu.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Menu.routeName:
      return MaterialPageRoute(builder: (context) => const Menu());
    case HomePage.routeName:
      return MaterialPageRoute(builder: (context) => const HomePage());

    default:
      return MaterialPageRoute(builder: (context) => const Menu());
  }
}
