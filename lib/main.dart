import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi/core/on_generate.dart';
import 'package:sushi/models/shop_modal.dart';

import 'views/home_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ShopModal(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: HomePage.routeName,
    );
  }
}
