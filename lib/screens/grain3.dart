import 'package:flutter/material.dart';
import 'package:sample_app/questionformat.dart';

import '../constants/imagespath.dart';
import '../constants/questiontitle.dart';
import 'grain4.dart';

class Grain3 extends StatefulWidget {
  List givendetails;
  Grain3({super.key, required this.givendetails});

  @override
  State<Grain3> createState() => _Grain3State();
}

class _Grain3State extends State<Grain3> {
  @override
  Widget build(BuildContext context) {
    return QFormat(
      keyvalue: 'Grain3',
      givendetails: [],
      imagepath: grainImage,
      qtitle: grain3title,
      indexNo: 2,
      nxtPage: Grain4(
        givendetails: widget.givendetails,
      ),
    );
  }
}
