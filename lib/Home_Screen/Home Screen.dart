import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int i=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$i"),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              i++;
            });
          },
          child: Container(
            width: 100,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.black),
            ),
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
