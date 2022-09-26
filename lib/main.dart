import 'package:flutter/material.dart';
import 'package:googlemaps/simple_map.dart';

void main() {
  runApp(
    MaterialApp(),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShowSimpleMap(),
    );
  } 
}
