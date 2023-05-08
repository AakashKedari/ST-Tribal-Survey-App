import 'package:flutter/material.dart';
import 'package:sample_app/customwidgets/questionformat.dart';
import 'package:sample_app/screens/dairy.dart';

import '../constants/imagespath.dart';
import '../constants/questiontitle.dart';

class Fish extends StatefulWidget {
  List givendetails;
  Fish({super.key, required this.givendetails});

  @override
  State<Fish> createState() => _FishState();
}

class _FishState extends State<Fish> {
  @override
  Widget build(BuildContext context) {
    return QFormat(
      keyvalue: 'Fish',
      givendetails: [],
      imagepath: fishImg,
      qtitle: fishtitle,
      indexNo: 9,
      nxtPage: Dairy(
        givendetails: widget.givendetails,
      ),
    );
  }
}
