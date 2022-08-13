import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'health4.dart';

class Health3Page extends StatefulWidget {
  Health3Page({Key? key}) : super(key: key);

  @override
  State<Health3Page> createState() => _Health3PageState();
}

class _Health3PageState extends State<Health3Page> {
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
                title: const Text("तुम्हाला शौचालयाची सुविधा आहे का?",
                    style: TextStyle(fontSize: 30, color: Colors.red)),
                contentPadding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(160, 0, 0, 0),
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
              padding: const EdgeInsets.fromLTRB(280, 0, 0, 0),
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
            Align(
              alignment: const Alignment(-1.0, 0.1),
              child: ListTile(
                title: const Text("तुम्हाला पिण्याचे पाणी उपलब्ध आहे का?",
                    style: TextStyle(fontSize: 30, color: Colors.red)),
                contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(160, 0, 0, 0),
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
              padding: const EdgeInsets.fromLTRB(280, 0, 0, 0),
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
            Align(
              alignment: Alignment(0.0, 0.6),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => Health4Page()));
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
