import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(212, 135, 81, 77),
        borderRadius: BorderRadius.circular(30),
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: onPressed,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "start",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          const Icon(Icons.arrow_forward, color: Colors.white, size: 40),
        ],
      ),
    );
  }
}
