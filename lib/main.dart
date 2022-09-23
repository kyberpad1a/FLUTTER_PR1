import 'package:flutter/material.dart';
import 'package:prak1/MindDeepRelax.dart';
import 'package:prak1/Medihow.dart';
import 'package:prak1/Meditate.dart';

void main() {
  runApp(const prak1());
}

class prak1 extends StatelessWidget {
  const prak1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const //Medihow() 
      Meditate() 
      //MindDeepRelax(),
    );
  }
}

