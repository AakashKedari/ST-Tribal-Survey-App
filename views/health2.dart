import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'health3.dart';

class Health2Page extends StatefulWidget {
  Health2Page({Key? key}) : super(key: key);

  @override
  State<Health2Page> createState() => _Health2PageState();
}

class _Health2PageState extends State<Health2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('ST Tribal data survey')),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/health.jpeg'),
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
              alignment: Alignment(-1.0, -0.5),
              child: ListTile(
                title: const Text("तुम्हाला काही आजार आहे का?",
                    style: TextStyle(fontSize: 30, color: Colors.red)),
                contentPadding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
              child: Align(
                  alignment: const Alignment(-1.0, -0.2),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      "होय",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(220, 0, 0, 0),
              child: Align(
                  alignment: const Alignment(-1.0, -0.2),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text(
                      "नाही",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(340, 0, 0, 0),
              child: Align(
                  alignment: Alignment(-1.0, -0.2),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      "माहित नाही",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
            ),
            Align(
              alignment: const Alignment(-1.0, 0.1),
              child: ListTile(
                title: const Text("तुम्ही लस घेतली आहे का?",
                    style: TextStyle(fontSize: 30, color: Colors.red)),
                contentPadding: EdgeInsets.fromLTRB(120, 0, 0, 0),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
              child: Align(
                  alignment: const Alignment(-1.0, 0.3),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      "होय",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(220, 0, 0, 0),
              child: Align(
                  alignment: const Alignment(-1.0, 0.3),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text(
                      "नाही",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(340, 0, 0, 0),
              child: Align(
                  alignment: const Alignment(-1.0, 0.3),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text(
                      "माहित नाही",
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
            ),
            Align(
              alignment: Alignment(0.0, 0.6),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => Health3Page()));
                },
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 30),
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
