import 'package:flutter/material.dart';

Padding newMethod(String labelText, TextEditingController passedcontroller) {
  return Padding(
    padding: const EdgeInsets.only(left: 16, right: 16),
    child: TextField(
      style: const TextStyle(color: Colors.black),
      controller: passedcontroller,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(fontSize: 15),
        // floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    ),
  );
}
