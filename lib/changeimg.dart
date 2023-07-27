// ignore_for_file: camel_case_types, prefer_const_constructors

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class changeimg extends StatefulWidget {
  @override
  State<changeimg> createState() {
    // TODO: implement createState
    return _changeimgState();
  }
}

class _changeimgState extends State<changeimg> {
  var activedice = "assets/dice-2.png";
  var text = "Hey, you got 2";
  int i = 0;

  var move = "Number of move played = 0";
  void reset() {
    setState(() {
      i = 0;
      move = "Number of move played = $i";
    });
  }

  void rolldice() {
    var diceRoll = Random().nextInt(6) + 1;
    i = i + 1;
    setState(() {
      activedice = "assets/dice-$diceRoll.png";
      text = "Hey, you got $diceRoll !";
      move = "Number of move played = $i";
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 50,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 2),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 205, 220, 183),
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Text(
                move,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.topLeft,
          child: ElevatedButton(
              onPressed: reset,
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 12, 4, 23),
                  side: const BorderSide(color: Colors.white)),
              child: Text(
                "Reset",
                style: TextStyle(fontSize: 25),
              )),
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 50,
              width: 250,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.amber[200],
                  border: Border.all(width: 4, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Image.asset(
              activedice,
              height: 300,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: rolldice,
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[900],
                  side: const BorderSide(color: Colors.white)),
              child: const Text(
                "Roll Dice!",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            )
          ],
        ),
      ],
    );
  }
}
