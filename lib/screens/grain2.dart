import 'package:flutter/material.dart';

import '../constants/imagespath.dart';
import '../constants/questiontitle.dart';

import '../customwidgets/questionformat.dart';
import 'grain3.dart';

class Grain2 extends StatefulWidget {
  List givendetails;
  Grain2({super.key, required this.givendetails});

  @override
  State<Grain2> createState() => _Grain2State();
}

class _Grain2State extends State<Grain2> {
  @override
  Widget build(BuildContext context) {
    return QFormat(
      keyvalue: 'Grain2',
      givendetails: [],
      indexNo: 1,
      qtitle: grain2title,
      imagepath: grainImage,
      nxtPage: Grain3(
        givendetails: widget.givendetails,
      ),
    );
  }
}
