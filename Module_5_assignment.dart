import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style:
          TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 30,
              )),
        ],
        elevation: 70,
        toolbarHeight: 100,
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.add_home_work_sharp),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is mod 5 assignment",
              style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                  text: "My",
                  style: TextStyle(fontSize: 35,
                      color: Colors.pink),
                  children: [
                    TextSpan(
                        text: " phone",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: Colors.green)),
                    TextSpan(
                        text: " name",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.purpleAccent,
                        )),
                    TextSpan(
                        text: " Realme C21",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w400,
                          color: Colors.amber.shade600,
                        ))
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
