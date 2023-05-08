import 'package:flutter/material.dart';
import 'package:sample_app/customwidgets/questionformat.dart';
import 'package:sample_app/screens/fish.dart';

import '../constants/imagespath.dart';
import '../constants/questiontitle.dart';

class Meat extends StatefulWidget {
  List givendetails;
  Meat({super.key, required this.givendetails});

  @override
  State<Meat> createState() => _MeatState();
}

class _MeatState extends State<Meat> {
  @override
  Widget build(BuildContext context) {
    return QFormat(
      keyvalue: 'Non-Veg',
      givendetails: [],
      imagepath: meatIMg,
      qtitle: meattitle,
      indexNo: 8,
      nxtPage: Fish(
        givendetails: widget.givendetails,
      ),
    );
  }
}
