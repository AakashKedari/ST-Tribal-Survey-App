import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'edu4.dart';

class Edu3Page extends StatefulWidget {
  Edu3Page({Key? key}) : super(key: key);

  @override
  State<Edu3Page> createState() => _Edu3PageState();
}

class _Edu3PageState extends State<Edu3Page> {
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
        child: Stack(
          children: [
            ListView(
              children: [
                const SizedBox(
                  height: 100,
                  width: 100,
                )
              ],
            ),
            Align(
              alignment: Alignment(-1.0, -0.8),
              child: ListTile(
                title: const Text("तुम्हाला समजत असलेल्या भाषा",
                    style: TextStyle(fontSize: 35, color: Colors.red)),
                contentPadding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(160, 0, 0, 0),
              child: Align(
                  alignment: const Alignment(-1.0, -0.4),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      "इंग्रजी",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    onPressed: () {},
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(280, 0, 0, 0),
              child: Align(
                  alignment: const Alignment(-1.0, -0.4),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text(
                      "मराठी",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    onPressed: () {},
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(160, 0, 0, 0),
              child: Align(
                  alignment: const Alignment(-1.0, -0.1),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      "हिंदी",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    onPressed: () {},
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(280, 0, 0, 0),
              child: Align(
                  alignment: const Alignment(-1.0, -0.1),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text(
                      "वऱ्हाडी",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    onPressed: () {},
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
              child: Align(
                  alignment: const Alignment(-1.0, 0.2),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      "कोकणी",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    onPressed: () {},
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(280, 0, 0, 0),
              child: Align(
                  alignment: const Alignment(-1.0, 0.2),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text(
                      "डांगी भाषा",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    onPressed: () {},
                  )),
            ),
            Align(
              alignment: Alignment(0.0, 0.6),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => Edu4Page()));
                },
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
