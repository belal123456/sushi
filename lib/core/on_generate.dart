import 'package:flutter/material.dart';

import 'package:sushi/views/menu.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Menu.routeName:
      return MaterialPageRoute(builder: (context) => const Menu());

    default:
      return MaterialPageRoute(builder: (context) => const Menu());
  }
}
