import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Shopping List'),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Handle cart icon click event here
              },
            ),
          ],
        ),
        body: ShoppingList(),
      ),
    );
  }
}

class ShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ShoppingItem("Apples", Icons.shopping_bag),
        ShoppingItem("Bananas", Icons.shopping_bag),
        ShoppingItem("Bread", Icons.shopping_bag),
        ShoppingItem("Milk", Icons.shopping_bag),
        ShoppingItem("Eggs", Icons.shopping_bag),
      ],
    );
  }
}

class ShoppingItem extends StatelessWidget {
  final String itemName;
  final IconData icon;

  ShoppingItem(this.itemName, this.icon);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(itemName),
    );
  }
}
