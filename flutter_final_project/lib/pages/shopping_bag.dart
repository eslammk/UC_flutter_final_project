import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ShoppingBdag extends StatefulWidget {
  const ShoppingBdag({super.key});

  @override
  State<ShoppingBdag> createState() => _ShoppingBdagState();
}

class _ShoppingBdagState extends State<ShoppingBdag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          ShoppingBdag();
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 118, 91, 118),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home Page",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: "Shopping Bag",
          ),
        ],
        selectedItemColor: Color.fromARGB(255, 48, 37, 48),
      ),
      appBar: AppBar(
        title: Text(" Shopping bag "),
        backgroundColor: Color.fromARGB(255, 118, 91, 118),
      ),
    );
  }
}
