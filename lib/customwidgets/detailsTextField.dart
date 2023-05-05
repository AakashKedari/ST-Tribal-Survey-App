import 'package:flutter/material.dart';

Padding newMethod(String labelText, TextEditingController passedcontroller) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 16,
      right: 16,
    ),
    child: TextField(
      style: const TextStyle(color: Colors.black),
      controller: passedcontroller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(fontSize: 15),
        filled: true,
        fillColor: Colors.white,
        floatingLabelBehavior: FloatingLabelBehavior.never,

        // floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    ),
  );
}
