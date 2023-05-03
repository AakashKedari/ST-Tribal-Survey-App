import 'package:flutter/material.dart';
import 'package:sample_app/questionformat.dart';
import 'package:sample_app/screens/root.dart';

import '../constants/imagespath.dart';
import '../constants/questiontitle.dart';

class Leafy extends StatefulWidget {
  List givendetails;
  Leafy({super.key, required this.givendetails});

  @override
  State<Leafy> createState() => _LeafyState();
}

class _LeafyState extends State<Leafy> {
  @override
  Widget build(BuildContext context) {
    return QFormat(
      keyvalue: 'Leafy Vegetables',
      givendetails: [],
      imagepath: leafyImage,
      qtitle: leafytitle,
      indexNo: 4,
      nxtPage: Root(
        givendetails: widget.givendetails,
      ),
    );
  }
}
