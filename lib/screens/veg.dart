import 'package:flutter/material.dart';
import 'package:sample_app/questionformat.dart';
import 'package:sample_app/screens/fruit.dart';

import '../constants/imagespath.dart';
import '../constants/questiontitle.dart';

class Vegie extends StatefulWidget {
  List givendetails;
  Vegie({super.key, required this.givendetails});

  @override
  State<Vegie> createState() => _VegieState();
}

class _VegieState extends State<Vegie> {
  @override
  Widget build(BuildContext context) {
    return QFormat(
      keyvalue: 'Vegetables',
      givendetails: [],
      imagepath: brinjalImage,
      qtitle: vegtitle,
      indexNo: 6,
      nxtPage: Fruit(
        givendetails: widget.givendetails,
      ),
    );
  }
}
