import 'package:flutter/material.dart';
import 'package:sample_app/customwidgets/questionformat.dart';
import 'package:sample_app/screens/veg.dart';

import '../constants/imagespath.dart';
import '../constants/questiontitle.dart';

class Root extends StatefulWidget {
  List givendetails;
  Root({super.key, required this.givendetails});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return QFormat(
      keyvalue: 'Roots',
      givendetails: [],
      imagepath: carrotImage,
      qtitle: roottitle,
      indexNo: 5,
      nxtPage: Vegie(
        givendetails: widget.givendetails,
      ),
    );
  }
}
