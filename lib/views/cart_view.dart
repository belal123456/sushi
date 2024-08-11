import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi/models/shop_modal.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  static const routeName = 'cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 138, 60, 55),
        foregroundColor: Colors.white,
        title: const Text(
          'Review Your Order',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer<ShopModal>(builder: (context, value, child) {
              return ListView.builder(
                  itemCount: value.customerCart.length,
                  itemBuilder: (context, index) {
                    final food = value.customerCart[index];
                    return InkWell(
                      onLongPress: () {
                        value.removeFromCart(food);
                      },
                      splashColor: Colors.red.withOpacity(0.3),
                      highlightColor: Colors.red.withOpacity(0.1),
                      child: ListTile(
                        leading: Image.asset(food.imagePath),
                        title: Text(food.name),
                        subtitle: Text('Quantity: ${food.quantity}'),
                        trailing: Text(
                          '\$${(int.parse(food.price) * food.quantity)}',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 138, 60, 55),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    );
                  });
            }),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Navigate to payment screen
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 15),
                textStyle: const TextStyle(fontSize: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Go to Payment',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
