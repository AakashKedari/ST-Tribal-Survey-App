import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'edu3.dart';

class Edu2Page extends StatefulWidget {
  Edu2Page({Key? key}) : super(key: key);

  @override
  State<Edu2Page> createState() => _Edu2PageState();
}

class _Edu2PageState extends State<Edu2Page> {
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
              Align(
                alignment: Alignment(-1.0, -0.7),
                child: ListTile(
                  title: const Text("व्यवसाय/काम",
                      style: TextStyle(fontSize: 50, color: Colors.red)),
                  contentPadding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                ),
              ),
              Align(
                alignment: Alignment(-1.0, -0.4),
                child: ListTile(
                  title: const Text("बेरोजगार",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 204, 56, 115))),
                  contentPadding: EdgeInsets.fromLTRB(200, 0, 100, 0),
                  onTap: () {},
                  onLongPress: () {},
                ),
              ),
              Align(
                alignment: Alignment(-1.0, -0.2),
                child: ListTile(
                  title: const Text("शेती",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 204, 56, 115))),
                  contentPadding: EdgeInsets.fromLTRB(222, 0, 100, 0),
                  onTap: () {},
                  onLongPress: () {},
                ),
              ),
              Align(
                alignment: Alignment(-1.0, 0.0),
                child: ListTile(
                  title: const Text("जमीन कामगार",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 204, 56, 115))),
                  contentPadding: EdgeInsets.fromLTRB(175, 0, 100, 0),
                  onTap: () {},
                  onLongPress: () {},
                ),
              ),
              Align(
                alignment: Alignment(-1.0, 0.2),
                child: ListTile(
                  title: const Text("कामगार",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 204, 56, 115))),
                  contentPadding: EdgeInsets.fromLTRB(205, 0, 100, 0),
                  onTap: () {},
                  onLongPress: () {},
                ),
              ),
              Align(
                alignment: Alignment(-1.0, 0.4),
                child: ListTile(
                  title: const Text("रोजची मजुरी",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 204, 56, 115))),
                  contentPadding: EdgeInsets.fromLTRB(183, 0, 100, 0),
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
