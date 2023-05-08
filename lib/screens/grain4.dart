import 'package:flutter/material.dart';
import 'package:sample_app/customwidgets/questionformat.dart';
import 'package:sample_app/screens/leaf.dart';

import '../constants/imagespath.dart';
import '../constants/questiontitle.dart';

class Grain4 extends StatefulWidget {
  List givendetails;
  Grain4({super.key, required this.givendetails});

  @override
  State<Grain4> createState() => _Grain4State();
}

class _Grain4State extends State<Grain4> {
  @override
  Widget build(BuildContext context) {
    return QFormat(
      keyvalue: 'Grain4',
      givendetails: [],
      imagepath: rajmaImage,
      qtitle: grain4title,
      indexNo: 3,
      nxtPage: Leafy(
        givendetails: widget.givendetails,
      ),
    );
  }
}
