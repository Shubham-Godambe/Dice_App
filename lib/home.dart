// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

import 'changeimg.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.gamepad, color: Colors.black),
              SizedBox(
                width: 3,
              ),
              Text(
                "The Dice",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                tileMode: TileMode.mirror,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: const [
              Color.fromARGB(255, 86, 9, 158),
              Color.fromARGB(255, 5, 14, 65)
            ])),
        child: changeimg(),
      ),
    );
  }
}
