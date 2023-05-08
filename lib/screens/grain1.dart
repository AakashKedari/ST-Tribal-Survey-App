import 'package:flutter/material.dart';

import 'package:sample_app/constants/questiontitle.dart';
import '../constants/imagespath.dart';

import '../customwidgets/questionformat.dart';
import 'grain2.dart';

class Grain1 extends StatefulWidget {
  List<dynamic> givendetails;
  Grain1({super.key, required this.givendetails});

  @override
  State<Grain1> createState() => _Grain1State();
}

class _Grain1State extends State<Grain1> {
  @override
  Widget build(BuildContext context) {
    return QFormat(
      keyvalue: 'Grain1',
      indexNo: 0,
      imagepath: grainImage,
      qtitle: grain1title,
      nxtPage: Grain2(
        givendetails: widget.givendetails,
      ),
      givendetails: [],
    );
  }
}
