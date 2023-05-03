import 'package:flutter/material.dart';
import 'package:sample_app/questionformat.dart';
import 'package:sample_app/screens/medical1.dart';

import '../constants/imagespath.dart';
import '../constants/questiontitle.dart';

class Dairy extends StatefulWidget {
  List givendetails;
  Dairy({super.key, required this.givendetails});

  @override
  State<Dairy> createState() => _DairyState();
}

class _DairyState extends State<Dairy> {
  @override
  Widget build(BuildContext context) {
    return QFormat(
      keyvalue: 'Dairy',
      givendetails: widget.givendetails,
      imagepath: carrotImage,
      qtitle: dairytitle,
      indexNo: 10,
      nxtPage: const Medical1(),
    );
  }
}
