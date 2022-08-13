import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'edu2.dart';

class Edu1Page extends StatefulWidget {
  Edu1Page({Key? key}) : super(key: key);

  @override
  State<Edu1Page> createState() => _Edu1PageState();
}

class _Edu1PageState extends State<Edu1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('ST Tribal data survey')),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/yLOOp.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(children: [
              ListView(
                children: [
                  const SizedBox(
                    height: 100,
                    width: 100,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(140, 0, 0, 0),
                child: Align(
                  alignment: const Alignment(-1.0, -0.8),
                  child: Text("शैक्षणिक अहवाल",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Align(
                alignment: Alignment(-1.0, -0.5),
                child: ListTile(
                  title: const Text("शैक्षणिक पातळी?",
                      style: TextStyle(fontSize: 30, color: Colors.red)),
                  contentPadding: EdgeInsets.fromLTRB(160, 0, 0, 0),
                ),
              ),
              Align(
                alignment: Alignment(-1.0, -0.3),
                child: ListTile(
                  title: const Text("प्राथमिक खाली",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 204, 56, 115))),
                  contentPadding: EdgeInsets.fromLTRB(180, 0, 100, 0),
                  onTap: () {},
                  onLongPress: () {},
                ),
              ),
              Align(
                alignment: Alignment(-1.0, -0.1),
                child: ListTile(
                  title: const Text("प्राथमिक",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 204, 56, 115))),
                  contentPadding: EdgeInsets.fromLTRB(210, 0, 100, 0),
                  onTap: () {},
                  onLongPress: () {},
                ),
              ),
              Align(
                alignment: Alignment(-1.0, 0.1),
                child: ListTile(
                  title: const Text("माध्यमिक",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 204, 56, 115))),
                  contentPadding: EdgeInsets.fromLTRB(205, 0, 100, 0),
                  onTap: () {},
                  onLongPress: () {},
                ),
              ),
              Align(
                alignment: Alignment(-1.0, 0.3),
                child: ListTile(
                  title: const Text("हायस्कूल",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 204, 56, 115))),
                  contentPadding: EdgeInsets.fromLTRB(205, 0, 100, 0),
                  onTap: () {},
                  onLongPress: () {},
                ),
              ),
              Align(
                alignment: Alignment(-1.0, 0.5),
                child: ListTile(
                  title: const Text("निरक्षर",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 204, 56, 115))),
                  contentPadding: EdgeInsets.fromLTRB(217, 0, 100, 0),
                  onTap: () {},
                  onLongPress: () {},
                ),
              ),
              Align(
                alignment: Alignment(0.0, 0.7),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => Edu2Page()));
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              )
            ])));
  }
}
