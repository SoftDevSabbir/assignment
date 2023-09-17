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
          title: Text(
            'My Shopping List',
            style: TextStyle(fontSize: 26),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Padding(
                padding: const EdgeInsets.only(right: 50.0),
                child: Icon(
                  Icons.shopping_cart,
                  size: 40,
                ),
              ),
              onPressed: () {
                // Handle cart icon click event here
              },
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 15),
            ListTile(
              title: Text(
                'Apples',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
              ),
              leading: Icon(
                Icons.shopping_basket,
                size: 35,
              ),
            ),
            SizedBox(height: 15),
            ListTile(
              title: Text(
                'Bananas',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
              ),
              leading: Icon(
                Icons.shopping_basket,
                size: 35,
              ),
            ),
            SizedBox(height: 15),
            ListTile(
              title: Text(
                'Bread',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
              ),
              leading: Icon(Icons.shopping_basket, size: 35),
            ),
            SizedBox(height: 15),
            ListTile(
              title: Text(
                'Milk',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
              ),
              leading: Icon(Icons.shopping_basket, size: 35),
            ),
            SizedBox(height: 15),
            ListTile(
              title: Text(
                'Eggs',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
              ),
              leading: Icon(Icons.shopping_basket, size: 35),
            ),
          ],
        ),
      ),
    );
  }
}
