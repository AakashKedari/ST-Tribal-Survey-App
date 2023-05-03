import 'package:flutter/material.dart';
import 'package:sample_app/screens/details.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PersonalInfo(),
    ),
  );
}
