import 'package:flutter/material.dart';
import 'package:sample_app/customwidgets/questionformat.dart';
import 'package:sample_app/screens/meatt.dart';

import '../constants/imagespath.dart';
import '../constants/questiontitle.dart';

class Fruit extends StatefulWidget {
  List givendetails;
  Fruit({super.key, required this.givendetails});

  @override
  State<Fruit> createState() => _FruitState();
}

class _FruitState extends State<Fruit> {
  @override
  Widget build(BuildContext context) {
    return QFormat(
      keyvalue: 'Fruits',
      givendetails: [],
      imagepath: appleIMage,
      qtitle: frttitle,
      indexNo: 7,
      nxtPage: Meat(givendetails: widget.givendetails),
    );
  }
}
