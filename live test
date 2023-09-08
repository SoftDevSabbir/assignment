import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Profile'),
              centerTitle: true,
              titleTextStyle: TextStyle(color: Colors.white,fontSize: 25,),
            ),



            body:Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle,size: 65,color: Colors.green,),
                  Text("Jhon Doe",style: TextStyle(fontSize: 30,color: Colors.green,fontWeight: FontWeight.w400)),
                  Text("Flutter Batch 4",style: TextStyle(fontSize: 25,color: Colors.blue)),
                ],
              ),
            )
        )
    );
  }
}
